module axi_master_write
(
  input           ARESETN,
  input           ACLK,

  output [0:0]  M_AXI_AWID,
  output [31:0] M_AXI_AWADDR,
  output [7:0]  M_AXI_AWLEN,    // Burst Length: 0-255
  output [2:0]  M_AXI_AWSIZE,   // Burst Size: Fixed 2'b011
  output [1:0]  M_AXI_AWBURST,  // Burst Type: Fixed 2'b01(Incremental Burst)
  output        M_AXI_AWLOCK,   // Lock: Fixed 2'b00
  output [3:0]  M_AXI_AWCACHE,  // Cache: Fiex 2'b0011
  output [2:0]  M_AXI_AWPROT,   // Protect: Fixed 2'b000
  output [3:0]  M_AXI_AWQOS,    // QoS: Fixed 2'b0000
  output [0:0]  M_AXI_AWUSER,   // User: Fixed 32'd0
  output        M_AXI_AWVALID,
  input         M_AXI_AWREADY,

  // Master Write Data
  output [63:0] M_AXI_WDATA,
  output [7:0]  M_AXI_WSTRB,
  output        M_AXI_WLAST,
  output [0:0]  M_AXI_WUSER,
  output        M_AXI_WVALID,
  input         M_AXI_WREADY,
  
  // Master Write Response
  input [0:0]   M_AXI_BID,
  input [1:0]   M_AXI_BRESP,
  input [0:0]   M_AXI_BUSER,
  input         M_AXI_BVALID,
  output        M_AXI_BREADY,
  
  input         WR_START,
  input [31:0]  WR_ADRS,
  input [31:0]  WR_LEN, 
  output        WR_READY,
  output        WR_FIFO_RE,
  input         WR_FIFO_EMPTY,
  input         WR_FIFO_AEMPTY,
  input [63:0]  WR_FIFO_DATA,
  output        WR_DONE
);

  localparam S_WR_IDLE  = 3'd0;
  localparam S_WA_WAIT  = 3'd1;
  localparam S_WA_START = 3'd2;
  localparam S_WD_WAIT  = 3'd3;
  localparam S_WD_PROC  = 3'd4;
  localparam S_WR_WAIT  = 3'd5;
  localparam S_WR_DONE  = 3'd6;
  
      (*mark_debug="true"*)reg [2:0]   wr_state;
      (*mark_debug="true"*)reg [15:0]test_cnt_reg;
  reg [31:0]  reg_wr_adrs;
  reg         reg_awvalid, reg_wvalid, reg_w_last;
  reg [7:0]   reg_w_len;
  reg [7:0]   reg_w_stb;

assign WR_DONE = (wr_state == S_WR_DONE);
assign WR_FIFO_RE         = (reg_wvalid & M_AXI_WREADY );


  always @(posedge ACLK or negedge ARESETN) begin
    if(!ARESETN) begin
      wr_state            <= S_WR_IDLE;
      reg_wr_adrs[31:0]   <= 32'd0;
      reg_awvalid         <= 1'b0;
      reg_wvalid          <= 1'b0;
      reg_w_last          <= 1'b0;
      reg_w_len[7:0]      <= 8'd0;
      test_cnt_reg<='d0;
  end else begin
      case(wr_state)
        S_WR_IDLE: begin
          if(WR_START) begin
            wr_state          <= S_WA_WAIT;
            reg_wr_adrs[31:0] <= WR_ADRS[31:0];
          end
          reg_awvalid         <= 1'b0;
          reg_wvalid          <= 1'b0;
          reg_w_len[7:0]      <= 8'd0;
        end
        S_WA_WAIT: begin//д��ַ�ȴ�
          wr_state          <= S_WA_START;//�ȴ�һ������
        end
        S_WA_START: begin
          wr_state            <= S_WD_WAIT;//д���ݵȴ�
          reg_awvalid         <= 1'b1;  
          reg_wvalid      <= 1'b1;
        end
        S_WD_WAIT: begin
          if(M_AXI_AWREADY) begin//�ȴ�д��ַ����
            wr_state        <= S_WD_PROC;
            reg_w_len<=WR_LEN-'d1;
            reg_awvalid     <= 1'b0;
          end
        end
        S_WD_PROC: begin//�ȴ�AXIд���ݾ����ź�
          if(M_AXI_WREADY) begin//�����˾Ϳ������fifo��ʹ���źſ�ʼ��
            if(reg_w_len[7:0] == 8'd0) begin
              wr_state        <= S_WR_WAIT;
              reg_wvalid      <= 1'b0;//���źŸ���AXI����������д��������Ч
              reg_w_last<='b1;//�������һ�����ݣ����������־�źŸ���AXI�����������һ������������ߴ��䲻��ɹ���
            end else begin
              reg_w_len[7:0]  <= reg_w_len[7:0] -8'd1;
            end
          end
        end
        S_WR_WAIT: begin//�ȴ�д��AXIӦ���ź�
          reg_w_last<='b0;
          if(M_AXI_BVALID) begin//���߱�ʾд�ɹ���Ȼ��״̬�����һ��ͻ������
              wr_state          <= S_WR_DONE;
          end
        end
        S_WR_DONE: begin
            test_cnt_reg<=test_cnt_reg+'d1;
            wr_state <= S_WR_IDLE;
          end
        
        default: begin
          wr_state <= S_WR_IDLE;
        end
      endcase
      end
  end
   
  assign M_AXI_AWID         = 4'b1111;
  assign M_AXI_AWADDR[31:0] = reg_wr_adrs[31:0];
  assign M_AXI_AWLEN[7:0]   = WR_LEN-'d1;//һ��ͻ������16������
  assign M_AXI_AWSIZE[2:0]  = 2'b011;//��ʾAXI����ÿ�����ݿ����8�ֽ�
  assign M_AXI_AWBURST[1:0] = 2'b01;
  assign M_AXI_AWLOCK       = 1'b0;
  assign M_AXI_AWCACHE[3:0] = 4'b0010;
  assign M_AXI_AWPROT[2:0]  = 3'b000;
  assign M_AXI_AWQOS[3:0]   = 4'b0000;
  assign M_AXI_AWUSER[0]    = 'b1;
  assign M_AXI_AWVALID      = reg_awvalid;
  assign M_AXI_WDATA[63:0]  = WR_FIFO_DATA[63:0];
  assign M_AXI_WSTRB[7:0]   = 8'hFF;
  assign M_AXI_WLAST        =(reg_w_len[7:0] == 8'd0)?'b1:'b0;
  assign M_AXI_WUSER        = 1;
  assign M_AXI_WVALID       = reg_wvalid;
  assign M_AXI_BREADY       = M_AXI_BVALID;//����ź��Ǹ���AXI���յ����Ӧ��
  assign WR_READY           = (wr_state == S_WR_IDLE)?1'b1:1'b0;
 
endmodule

