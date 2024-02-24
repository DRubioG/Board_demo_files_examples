module iic_eeprom(
    (*mark_debug="true"*)  output    wire   SCL,          // SCL,OUT
    (*mark_debug="true"*) inout     wire   SDA,          // SDA,INOUT
    output    wire[3:0] led, //STATE INDICATE
    input     wire    clk,          // 时钟50M
    input     wire    rst_n        // 低电平复位
);

parameter CLK_FRQ=50000000;
parameter CNT_3SEC=CLK_FRQ*3-1;//3s周期计数值
parameter CNT_1SEC=CLK_FRQ-1;//1s 周期计数值

(*mark_debug="true"*) reg [4:0] state_reg;
(*mark_debug="true"*) reg [3:0] write_byte_cnt;
(*mark_debug="true"*) reg [7:0] write_byte_reg;
(*mark_debug="true"*) reg [6:0] cnt;

// auto write read state generate
(*mark_debug="true"*) wire read_start_flag_wire;
(*mark_debug="true"*) wire write_start_flag_wire;
reg [31:0]auto_read_write_cnt_reg;

// SCL CNT VALUE
`define SCL_POSEDGE (cnt == 'd0)
`define SCL_NEGEDGE (cnt == 'd50)
`define SCL_HIG_MID (cnt == 'd25)
`define SCL_LOW_MID (cnt == 'd87)
// parameter
parameter           WRITE_CTRL_BYTE = 'b1010_0000;  // first 256 x8 bit 
parameter           READ_CTRL_BYTE   = 'b1010_0001;  // first 256 x8 bit
parameter           WRITE_DATA       = 'd5;  // Write data is 'd5
parameter          WRITE_READ_ADDR = 'b0001_1110;  // Write/Read address 0x1E

//idle
parameter           STATE_IDLE              = 5'd0;
// Write state
parameter          START_WRITE           = 5'd1;
parameter          SEND_CTRL_BYTE_W  = 5'd2;
parameter          RECEIVE_ACK_1_W   = 5'd3;
parameter          SEND_ADDR_BYTE_W  = 5'd4;
parameter         RECEIVE_ACK_2_W   = 5'd5;
parameter         SEND_DATA_BYTE_W  = 5'd6;
parameter          RECEIVE_ACK_3_W   = 5'd7;
parameter          STOP_WRITE            = 5'd8;
// Read state
parameter         START_READ_1           = 5'd9;
parameter         SEND_CTRL_BYTE_1_R  = 5'd10;
parameter         RECEIVE_ACK_1_R     = 5'd11;
parameter        SEND_ADDR_BYTE_R    = 5'd12;
parameter        RECEIVE_ACK_2_R     = 5'd13;
parameter         START_READ_2           = 5'd14;
parameter         SEND_CTRL_BYTE_2_R  = 5'd15;
parameter          RECEIVE_ACK_3_R     = 5'd16;
parameter         RECEIVE_DATA_R      = 5'd17;
parameter         STOP_READ              = 5'd18;
    
     
reg SDAR;  
reg SCLR;
reg SDAEN;
                             
reg [3:0] led_reg;
assign led = led_reg;
assign SDA = SDAEN ? SDAR : 1'bz; 
assign SCL = SCLR;    
assign write_start_flag_wire=(auto_read_write_cnt_reg==CNT_1SEC)?1'b1:1'b0;
assign read_start_flag_wire=(auto_read_write_cnt_reg==CNT_3SEC)?1'b1:1'b0;
//定时出发读写的计数逻辑块
always@(posedge clk or negedge rst_n)begin
    if(rst_n=='b0)begin
        auto_read_write_cnt_reg<='d0;
    end
    else begin
        if(auto_read_write_cnt_reg<CNT_3SEC)begin
            auto_read_write_cnt_reg<=auto_read_write_cnt_reg+'d1;
        end
        else begin
            auto_read_write_cnt_reg<='b0;
        end
    end
end

/*********************************************************
SCL = 400000HZ频率
**********************************************************/
//IIC的参考时钟分频
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) cnt <= 7'd0;
        else if(cnt == 7'd124) cnt <= 7'd0;
        else cnt <= cnt + 1'b1;
    end
    

//IIC的时钟SCL上升和下降沿的计数块
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) SCLR <= 1'b0;
        else begin
            if(cnt == 7'd0) SCLR <= 1'b1;  // SCL posedge
            else if(cnt == 7'd50) SCLR <= 1'b0;  // SCL negedge 
        end
    end
//IIC的读写驱动主状态机。大家可以采用仿真详细学习一下
    always @(posedge clk, negedge rst_n) begin
    if(!rst_n) begin
        state_reg <= STATE_IDLE;
        write_byte_cnt <= 4'd0;
        write_byte_reg <= 8'd0;
        led_reg <= 4'b0000;  //LED ALL OFF
        SDAEN <= 1'b0;
    end
    else begin
        case(state_reg)
            STATE_IDLE: begin
                SDAEN <= 1'b1;
                SDAR <= 1'b1;

                if(write_start_flag_wire == 1'b1) begin
                    state_reg <= START_WRITE;
                end
                else if(read_start_flag_wire == 1'b1) 
                    state_reg <= START_READ_1;
                else
                    state_reg <= STATE_IDLE;
            end
      
            START_WRITE: begin            //BYTE WRITE FSM START     
                if(`SCL_HIG_MID) begin
                    SDAR <= 1'b0;
                    write_byte_cnt <= 4'd0;
                    write_byte_reg <= WRITE_CTRL_BYTE;
                    state_reg <= SEND_CTRL_BYTE_W;
                end
                else
                    state_reg <= START_WRITE;
            end
            SEND_CTRL_BYTE_W: begin
                if(`SCL_LOW_MID) begin
                    case(write_byte_cnt)
                        0: SDAR <= write_byte_reg[7]; 
                        1: SDAR <= write_byte_reg[6]; 
                        2: SDAR <= write_byte_reg[5];
                        3: SDAR <= write_byte_reg[4];
                        4: SDAR <= write_byte_reg[3];
                        5: SDAR <= write_byte_reg[2];
                        6: SDAR <= write_byte_reg[1];
                        7: SDAR <= write_byte_reg[0];
                        default: ;
                    endcase
                    write_byte_cnt <= write_byte_cnt + 1'b1;
                    if(write_byte_cnt == 4'd8) begin
                        write_byte_cnt <= 4'd0;
                        SDAEN <= 1'b0;  // wait ack, sda input
                        state_reg <= RECEIVE_ACK_1_W;
                    end
                    else 
                        state_reg <= SEND_CTRL_BYTE_W;
                end
            end
            RECEIVE_ACK_1_W: begin
                if(`SCL_NEGEDGE) begin
                    write_byte_reg <= WRITE_READ_ADDR;
                    SDAEN <= 1'b1;
                    state_reg <= SEND_ADDR_BYTE_W;
                end
                else
                    state_reg <= RECEIVE_ACK_1_W;
            end
            SEND_ADDR_BYTE_W: begin
                if(`SCL_LOW_MID) begin
                    case(write_byte_cnt)
                        0: SDAR <= write_byte_reg[7];
                        1: SDAR <= write_byte_reg[6];
                        2: SDAR <= write_byte_reg[5];
                        3: SDAR <= write_byte_reg[4];
                        4: SDAR <= write_byte_reg[3];
                        5: SDAR <= write_byte_reg[2];
                        6: SDAR <= write_byte_reg[1];
                        7: SDAR <= write_byte_reg[0];
                        default: ;
                    endcase
                    write_byte_cnt <= write_byte_cnt + 1'b1;
                    if(write_byte_cnt == 4'd8) begin
                        write_byte_cnt <= 4'd0;
                        SDAEN <= 1'b0; // wait ack, sda input
                        state_reg <= RECEIVE_ACK_2_W;
                    end
                    else
                        state_reg <= SEND_ADDR_BYTE_W;
                end
            end
            RECEIVE_ACK_2_W: begin
                if(`SCL_NEGEDGE) begin
                    write_byte_reg <= WRITE_DATA;
                    SDAEN <= 1'b1;
                    state_reg <= SEND_DATA_BYTE_W;
                end
                else
                    state_reg <= RECEIVE_ACK_2_W;
            end
            SEND_DATA_BYTE_W: begin
                if(`SCL_LOW_MID) begin
                    case(write_byte_cnt)
                        0: SDAR <= write_byte_reg[7];
                        1: SDAR <= write_byte_reg[6];
                        2: SDAR <= write_byte_reg[5];
                        3: SDAR <= write_byte_reg[4];
                        4: SDAR <= write_byte_reg[3];
                        5: SDAR <= write_byte_reg[2];
                        6: SDAR <= write_byte_reg[1];
                        7: SDAR <= write_byte_reg[0];
                        default: ;
                    endcase
                    write_byte_cnt <= write_byte_cnt + 1'b1;
                    if(write_byte_cnt == 4'd8) begin
                        write_byte_cnt <= 4'd0;
                        SDAEN <= 1'b0;  // wait ack, sda input
                        state_reg <= RECEIVE_ACK_3_W;
                    end
                    else
                        state_reg <= SEND_DATA_BYTE_W;
                end
            end
            RECEIVE_ACK_3_W: begin
                if(`SCL_NEGEDGE) begin
                    SDAEN <= 1'b1;
                    state_reg <= STOP_WRITE;
                end
                else
                    state_reg <= RECEIVE_ACK_3_W;
            end
            STOP_WRITE: begin            // BYTE WRITE END
                if(`SCL_LOW_MID) 
                    SDAR <= 1'b0;
                else if(`SCL_HIG_MID) begin
                    SDAR <= 1'b1;
                    led_reg <= 4'b1111;  // LED ON
                    state_reg <= STATE_IDLE;
                end
            end


            START_READ_1: begin            // RANDOM READ START
                if(`SCL_HIG_MID) begin
                    SDAR <= 1'b0;
                    write_byte_cnt <= 4'd0;
                    write_byte_reg <= WRITE_CTRL_BYTE;
                    state_reg <= SEND_CTRL_BYTE_1_R;
                end
                else
                    state_reg <= START_READ_1;
            end
            SEND_CTRL_BYTE_1_R: begin
                if(`SCL_LOW_MID) begin
                    case(write_byte_cnt)
                        0: SDAR <= write_byte_reg[7];
                        1: SDAR <= write_byte_reg[6];
                        2: SDAR <= write_byte_reg[5];
                        3: SDAR <= write_byte_reg[4];
                        4: SDAR <= write_byte_reg[3];
                        5: SDAR <= write_byte_reg[2];
                        6: SDAR <= write_byte_reg[1];
                        7: SDAR <= write_byte_reg[0];
                        default: ;
                    endcase
                    write_byte_cnt <= write_byte_cnt + 1'b1;
                    if(write_byte_cnt == 4'd8) begin
                        write_byte_cnt <= 4'd0;
                        SDAEN <= 1'b0;  // wait ack, sda input
                        state_reg <= RECEIVE_ACK_1_R;
                    end
                    else
                        state_reg <= SEND_CTRL_BYTE_1_R;
                end
            end
            RECEIVE_ACK_1_R: begin
                if(`SCL_NEGEDGE) begin
                    SDAEN <= 1'b1;
                    write_byte_reg <= WRITE_READ_ADDR;
                    state_reg <= SEND_ADDR_BYTE_R;
                end
                else
                    state_reg <= RECEIVE_ACK_1_R;
            end
            SEND_ADDR_BYTE_R: begin
                if(`SCL_LOW_MID) begin
                    case(write_byte_cnt)
                        0: SDAR <= write_byte_reg[7];
                        1: SDAR <= write_byte_reg[6];
                        2: SDAR <= write_byte_reg[5];
                        3: SDAR <= write_byte_reg[4];
                        4: SDAR <= write_byte_reg[3];
                        5: SDAR <= write_byte_reg[2];
                        6: SDAR <= write_byte_reg[1];
                        7: SDAR <= write_byte_reg[0];
                        default: ;
                    endcase
                    write_byte_cnt <= write_byte_cnt + 1'b1;
                    if(write_byte_cnt == 4'd8) begin
                        write_byte_cnt <= 4'd0;
                        SDAEN <= 1'b0;  // wait ack, sda input
                        state_reg <= RECEIVE_ACK_2_R;
                    end
                    else
                        state_reg <= SEND_ADDR_BYTE_R;
                end
            end
            RECEIVE_ACK_2_R: begin// for START_R_2
                if(`SCL_NEGEDGE) begin
                    SDAEN <= 1'b1;
                    SDAR <= 1'b1;  
                    state_reg <= START_READ_2;
                end
                else
                    state_reg <= RECEIVE_ACK_2_R;
            end
            START_READ_2: begin
                if(`SCL_HIG_MID) begin
                    SDAR <= 1'b0;
                    write_byte_cnt <= 4'd0;
                    write_byte_reg <= READ_CTRL_BYTE;
                    state_reg <= SEND_CTRL_BYTE_2_R;
                end
                else
                    state_reg <= START_READ_2;
            end
            SEND_CTRL_BYTE_2_R: begin
                if(`SCL_LOW_MID) begin
                    case(write_byte_cnt)
                        0: SDAR <= write_byte_reg[7];
                        1: SDAR <= write_byte_reg[6];
                        2: SDAR <= write_byte_reg[5];
                        3: SDAR <= write_byte_reg[4];
                        4: SDAR <= write_byte_reg[3];
                        5: SDAR <= write_byte_reg[2];
                        6: SDAR <= write_byte_reg[1];
                        7: SDAR <= write_byte_reg[0];
                        default: ;
                    endcase
                    write_byte_cnt <= write_byte_cnt + 1'b1;
                    if(write_byte_cnt == 4'd8) begin
                        write_byte_cnt <= 4'd0;
                        SDAEN <= 1'b0;  // wait ack,  SDA as input
                        state_reg <= RECEIVE_ACK_3_R;
                    end
                    else
                        state_reg <= SEND_CTRL_BYTE_2_R;
                end
            end
            RECEIVE_ACK_3_R: begin
                if(`SCL_NEGEDGE) begin
                    state_reg <= RECEIVE_DATA_R;
                end
                else
                    state_reg <= RECEIVE_ACK_3_R;
            end
            RECEIVE_DATA_R: begin
                if(`SCL_HIG_MID) begin
                    case(write_byte_cnt)
                        0: write_byte_reg[7] <= SDA;
                        1: write_byte_reg[6] <= SDA;
                        2: write_byte_reg[5] <= SDA;
                        3: write_byte_reg[4] <= SDA;
                        4: write_byte_reg[3] <= SDA;
                        5: write_byte_reg[2] <= SDA;
                        6: write_byte_reg[1] <= SDA;
                        7: write_byte_reg[0] <= SDA;
                        default: ;
                    endcase
                    write_byte_cnt <= write_byte_cnt + 1'b1;
                    if(write_byte_cnt == 4'd8) begin
                        write_byte_cnt <= 4'd0;
                        SDAEN <= 1'b1;  // send ack,SDA  output
                        state_reg <= STOP_READ;
                    end
                end
                else
                    state_reg <= RECEIVE_DATA_R;
            end
            STOP_READ: begin
                if(`SCL_LOW_MID)
                    SDAR <= 1'b0;
                else if(`SCL_HIG_MID) begin
                    SDAR <= 1'b1;
                    led_reg <= write_byte_reg[3:0];  //LED指示
                    state_reg <= STATE_IDLE;
                end
            end
        endcase
    end
end

endmodule


