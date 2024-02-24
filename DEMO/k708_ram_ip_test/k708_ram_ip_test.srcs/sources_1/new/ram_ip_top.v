module ram_ip_top
    (
    input wire clk,
    input wire rstn
    );
    parameter STATE_IDLE='d0;
    parameter STATE_WRITE='d1;
    parameter STATE_READ='d2;
    
    parameter CLK_FREQ=50000000;//input clk 50m
    parameter RAM_SIZE=1024*2;
    
    reg [31:0]counter_reg;
    (*mark_debug="true"*)reg [3:0]system_state_reg;
    reg [31:0]state_timeout_reg;    
    (*mark_debug="true"*)reg [15:0]write_data_reg;
    (*mark_debug="true"*) reg [19:0]read_addr_reg;
    (*mark_debug="true"*) reg [19:0]write_addr_reg;
    
    (*mark_debug="true"*)   wire[7:0] read_data;
    (*mark_debug="true"*)  wire [7:0]write_data;
    (*mark_debug="true"*) reg read_en_reg;
    (*mark_debug="true"*)reg write_en_reg;
    
    wire [3:0]system_state;
    (*mark_debug="true"*) wire is_write_read_flag;
    assign system_state=system_state_reg;
    assign write_data[7:0]=write_data_reg[7:0];
    assign is_write_read_flag=(system_state[3:0]==STATE_IDLE)?'b0:'b1;
    
    //always block ,1s triger onece to read write
    always@(posedge clk or negedge rstn)begin
        if(rstn=='b0)begin
            counter_reg<='b0;
        end
        else begin
            if(counter_reg<(CLK_FREQ-'b1))counter_reg<=counter_reg+'b1;
            else counter_reg<='b0; 
        end
    end
   //state machine
    always@(posedge clk or negedge rstn)begin
        if(rstn=='b0)begin
            system_state_reg<='b0;
            state_timeout_reg<='b0;
        end
        else begin
           if(counter_reg==(CLK_FREQ-'b1))begin
                system_state_reg<=STATE_WRITE;
                state_timeout_reg<='b0;
           end
           else begin
                if(system_state_reg==STATE_WRITE)begin//write fifo state
                    if(state_timeout_reg<RAM_SIZE-1)state_timeout_reg<=state_timeout_reg+'b1;
                    else begin
                         state_timeout_reg<='b0;
                         system_state_reg<=STATE_READ;
                    end
                end
                else  if(system_state_reg==STATE_READ)begin//read fifo state
                    if(state_timeout_reg<RAM_SIZE-1)state_timeout_reg<=state_timeout_reg+'b1;
                    else begin
                         state_timeout_reg<='b0;
                         system_state_reg<=STATE_IDLE;
                    end
                end
           end
        end
    end   
   //write read logic generate
    always@(posedge clk or negedge rstn)begin
        if(rstn=='b0)begin
            write_data_reg<='b0;
            read_addr_reg<='d0;
            write_addr_reg<='d0;
        end
        else begin
            if(system_state_reg==STATE_WRITE)begin
                write_data_reg<=write_data_reg+'b1;
                write_addr_reg<=write_addr_reg+'d1;
                read_en_reg='b0;
                write_en_reg<='b1;
            end
            else  if(system_state_reg==STATE_READ)begin
                read_addr_reg<=read_addr_reg+'d1;
                read_en_reg='b1;
                write_en_reg='b0;
            end
            else if(system_state_reg==STATE_IDLE)begin
                write_data_reg<='b0;
                read_addr_reg<='d0;
                write_addr_reg<='d0;
                read_en_reg='b0;
                write_en_reg='b0;
            end
        end
    end
    
    
    blk_mem_gen_0 blk_mem_gen_0_inst
    (
    .clka(clk),
    .ena('b1),	
    .wea(write_en_reg), 
    .addra(write_addr_reg),
    .dina(write_data), 
    .clkb(clk), 
    .enb(read_en_reg), 
    .addrb(read_addr_reg),
    .doutb(read_data)
    );
    
   
endmodule
