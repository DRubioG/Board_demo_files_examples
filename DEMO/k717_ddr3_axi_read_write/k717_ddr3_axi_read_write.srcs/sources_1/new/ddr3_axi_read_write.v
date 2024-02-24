module ddr3_read_write
       (
        input wire sys_clk,
        output wire calib_done,
        input wire rstn,
        output wire  locked,
        inout [31:0]       ddr3_dq,
        inout [3:0]        ddr3_dqs_n,
        inout [3:0]        ddr3_dqs_p,
        output [14:0]      ddr3_addr,
        output [2:0]       ddr3_ba,
        output             ddr3_ras_n,
        output             ddr3_cas_n,
        output             ddr3_we_n,
        output             ddr3_reset_n,
        output [0:0]       ddr3_ck_p,
        output [0:0]       ddr3_ck_n,
        output [0:0]       ddr3_cke,
        output [0:0]       ddr3_cs_n,
        output [3:0]       ddr3_dm,
        output [0:0]       ddr3_odt
        );
    (*mark_debug="true"*)wire ui_clk;
    (*mark_debug="true"*)wire ui_rst;
    wire ddr3_clk;
clk_wiz_0 clk_wiz_0_inst
    (
    .clk_out1(ddr3_clk),
    .clk_out2(),
    .resetn(rstn),
    .locked(locked),
    .clk_in1(sys_clk)
    );
    
(*mark_debug="true"*)wire [31:0]S00_AXI_RD_araddr;
(*mark_debug="true"*)wire [1:0]S00_AXI_RD_arburst;
wire [3:0]S00_AXI_RD_arcache;
(*mark_debug="true"*)wire [5:0]S00_AXI_RD_arid;
(*mark_debug="true"*)wire [3:0]S00_AXI_RD_arlen;
wire [1:0]S00_AXI_RD_arlock;
wire [2:0]S00_AXI_RD_arprot;
wire [3:0]S00_AXI_RD_arqos;
(*mark_debug="true"*)wire S00_AXI_RD_arready;
(*mark_debug="true"*)wire [2:0]S00_AXI_RD_arsize;
(*mark_debug="true"*)wire S00_AXI_RD_arvalid;
wire [31:0]S00_AXI_RD_awaddr;
wire [1:0]S00_AXI_RD_awburst;
wire [3:0]S00_AXI_RD_awcache;
wire [5:0]S00_AXI_RD_awid;
wire [3:0]S00_AXI_RD_awlen;
wire [1:0]S00_AXI_RD_awlock;
wire [2:0]S00_AXI_RD_awprot;
wire [3:0]S00_AXI_RD_awqos;
wire S00_AXI_RD_awready;
wire [2:0]S00_AXI_RD_awsize;
wire S00_AXI_RD_awvalid;
wire [5:0]S00_AXI_RD_bid;
(*mark_debug="true"*)wire S00_AXI_RD_bready;
wire [1:0]S00_AXI_RD_bresp;
(*mark_debug="true"*)wire S00_AXI_RD_bvalid;
(*mark_debug="true"*)wire [63:0]S00_AXI_RD_rdata;
wire [5:0]S00_AXI_RD_rid;
(*mark_debug="true"*)wire S00_AXI_RD_rlast;
(*mark_debug="true"*)wire S00_AXI_RD_rready;
wire [1:0]S00_AXI_RD_rresp;
(*mark_debug="true"*)wire S00_AXI_RD_rvalid;
wire [63:0]S00_AXI_RD_wdata;
wire [5:0]S00_AXI_RD_wid;
wire S00_AXI_RD_wlast;
wire S00_AXI_RD_wready;
wire [7:0]S00_AXI_RD_wstrb;
wire S00_AXI_RD_wvalid;

(*mark_debug="true"*)wire [31:0]S00_AXI_WR_awaddr;
(*mark_debug="true"*)wire [1:0]S00_AXI_WR_awburst;
wire [3:0]S00_AXI_WR_awcache;
wire [5:0]S00_AXI_WR_awid;
(*mark_debug="true"*)wire [7:0]S00_AXI_WR_awlen;
wire [0:0]S00_AXI_WR_awlock;
wire [2:0]S00_AXI_WR_awprot;
wire [3:0]S00_AXI_WR_awqos;
(*mark_debug="true"*)wire S00_AXI_WR_awready;
wire [3:0]S00_AXI_WR_awregion;
wire [2:0]S00_AXI_WR_awsize;
(*mark_debug="true"*)wire S00_AXI_WR_awvalid;
wire [5:0]S00_AXI_WR_bid;
(*mark_debug="true"*)wire S00_AXI_WR_bready;
wire [1:0]S00_AXI_WR_bresp;
(*mark_debug="true"*)wire S00_AXI_WR_bvalid;
(*mark_debug="true"*)wire [63:0]S00_AXI_WR_wdata;
(*mark_debug="true"*)wire S00_AXI_WR_wlast;
(*mark_debug="true"*)wire S00_AXI_WR_wready;
wire [7:0]S00_AXI_WR_wstrb;
(*mark_debug="true"*)wire S00_AXI_WR_wvalid;
(*mark_debug="true"*) wire axi_hp_clk;

(*mark_debug="true"*)wire wr_burst_finish;
(*mark_debug="true"*)wire wr_burst_req;
(*mark_debug="true"*)wire[9:0] wr_burst_len;
(*mark_debug="true"*)wire[31:0] wr_burst_addr;
(*mark_debug="true"*)wire[63 : 0] wr_burst_data;
(*mark_debug="true"*)wire write_en;
(*mark_debug="true"*)wire wr_ready;
reg [31:0]triger_write_cnt_reg;
reg triger_write_req_reg;
reg [31:0]addr_write_reg;
reg [63:0]write_data_reg;
reg [7:0]write_len_reg;

(*mark_debug="true"*)wire rd_burst_finish;
(*mark_debug="true"*)wire rd_burst_req;
(*mark_debug="true"*)wire[9:0] rd_burst_len;
(*mark_debug="true"*)wire[31:0] rd_burst_addr;
(*mark_debug="true"*)wire[63 : 0] rd_burst_data;
(*mark_debug="true"*)wire read_en;
reg [31:0]triger_read_cnt_reg;
reg triger_read_req_reg;
reg [31:0]addr_read_reg;
reg [7:0]read_len_reg;

assign wr_burst_len=write_len_reg;
assign wr_burst_req=triger_write_req_reg;
assign wr_burst_addr=addr_write_reg;
assign wr_burst_data=write_data_reg;

assign rd_burst_len=read_len_reg;
assign rd_burst_req=triger_read_req_reg;
assign rd_burst_addr=addr_read_reg;

parameter WRITE_ADDR_OFFSET=0;
parameter READ_ADDR_OFFSET=0;
parameter ADDR_MAX=WRITE_ADDR_OFFSET+128*4096;
parameter WRITE_COUNTER_MAX=512-1;
parameter READ_COUNTER_MAX=512-1;
parameter TRIGER_OFFSET=WRITE_COUNTER_MAX/2;
//实现512个时钟周期触发一次写操作。计数0的时候触发
always@(posedge ui_clk or posedge ui_rst)
begin
    if(ui_rst==1'b1)begin
        triger_write_cnt_reg<='b0;
    end
    else begin
        if(triger_write_cnt_reg<WRITE_COUNTER_MAX)triger_write_cnt_reg<=triger_write_cnt_reg+'d1;
        else triger_write_cnt_reg<='b0;
    end
end
//以下代码简单的实现写地址递增，收到读取数据使能1的时候数据自加
 reg [28:0]write_addr_offset_reg;
always@(posedge ui_clk or posedge ui_rst)
begin
    if(ui_rst==1'b1)begin
        triger_write_req_reg<=1'b0;
        addr_write_reg<=WRITE_ADDR_OFFSET+'b0;
        write_data_reg<='b0;
        write_addr_offset_reg<='b0;
        write_len_reg<='d16;
    end
    else begin
        if(triger_write_cnt_reg=='b0)begin
             triger_write_req_reg<=1'b0;
             addr_write_reg<=WRITE_ADDR_OFFSET+write_addr_offset_reg;
             if(write_addr_offset_reg<ADDR_MAX)write_addr_offset_reg<=write_addr_offset_reg+'d128;
             else write_addr_offset_reg=WRITE_ADDR_OFFSET;
        end
        else if(triger_write_cnt_reg==TRIGER_OFFSET)begin
            triger_write_req_reg<='b1;
        end
        else if(triger_write_cnt_reg>TRIGER_OFFSET)triger_write_req_reg<='b0;
        if(write_en==1'b1)   write_data_reg<=write_data_reg+'d1;
        else if(write_addr_offset_reg==ADDR_MAX)write_data_reg<=0;
    end
end
//实现512个时钟周期触发一次读操作。计数0的时候触发
always@(posedge ui_clk or posedge ui_rst)
begin
    if(ui_rst==1'b1)begin
        triger_read_cnt_reg<='b0;
    end
    else begin
        if(triger_read_cnt_reg<READ_COUNTER_MAX)triger_read_cnt_reg<=triger_read_cnt_reg+'d1;
        else triger_read_cnt_reg<='b0;
    end
end

 reg [28:0]read_addr_offset_reg;
always@(posedge ui_clk or posedge ui_rst)
begin
    if(ui_rst==1'b1)begin
        triger_read_req_reg<=1'b0;
        addr_read_reg<=READ_ADDR_OFFSET+'b0;
        read_addr_offset_reg<='b0;
        read_len_reg<='d16;
    end
    else begin
        if(triger_read_cnt_reg=='b0)begin
             addr_read_reg<=READ_ADDR_OFFSET+read_addr_offset_reg;
             triger_read_req_reg<=1'b0;
             if(read_addr_offset_reg<ADDR_MAX)read_addr_offset_reg<=read_addr_offset_reg+'d128;
             else read_addr_offset_reg=READ_ADDR_OFFSET;
        end
        else if(triger_read_cnt_reg==TRIGER_OFFSET)begin
            triger_read_req_reg<='b1;
        end
        else if(triger_read_cnt_reg>TRIGER_OFFSET)triger_read_req_reg<='b0;
    end
end

  axi_master_write axi_master_write_inst
    (
      .ARESETN(~ui_rst),
      .ACLK(ui_clk),
      .M_AXI_AWID(S00_AXI_WR_awid),
      .M_AXI_AWADDR(S00_AXI_WR_awaddr), 
      .M_AXI_AWLEN(S00_AXI_WR_awlen),
      .M_AXI_AWSIZE(S00_AXI_WR_awsize),
      .M_AXI_AWBURST(S00_AXI_WR_awburst),
      .M_AXI_AWLOCK(S00_AXI_WR_awlock),
      .M_AXI_AWCACHE(S00_AXI_WR_awcache),
      .M_AXI_AWPROT(S00_AXI_WR_awprot),
      .M_AXI_AWQOS(S00_AXI_WR_awqos),
      .M_AXI_AWUSER(),
      .M_AXI_AWVALID(S00_AXI_WR_awvalid),
      .M_AXI_AWREADY(S00_AXI_WR_awready),
     
      .M_AXI_WDATA(S00_AXI_WR_wdata),
      .M_AXI_WSTRB(S00_AXI_WR_wstrb),
      .M_AXI_WLAST(S00_AXI_WR_wlast),
      .M_AXI_WUSER(),
      .M_AXI_WVALID(S00_AXI_WR_wvalid),
      .M_AXI_WREADY(S00_AXI_WR_wready),
      .M_AXI_BID(S00_AXI_WR_bid),
      .M_AXI_BRESP(S00_AXI_WR_bresp),
      .M_AXI_BUSER(),
      .M_AXI_BVALID(S00_AXI_WR_bvalid),
      .M_AXI_BREADY(S00_AXI_WR_bready),
      .WR_START(wr_burst_req),
      .WR_ADRS(wr_burst_addr),
      .WR_LEN(wr_burst_len), 
      .WR_READY(wr_ready),
      .WR_FIFO_RE(write_en),
      .WR_FIFO_EMPTY(1'b0),
      .WR_FIFO_AEMPTY(1'b0),
      .WR_FIFO_DATA(wr_burst_data),
	  .WR_DONE(wr_burst_finish)                       
    );
    axi_master_read axi_master_read_inst
    (
      . ARESETN(~ui_rst),
      . ACLK(ui_clk),
      . M_AXI_ARID(S00_AXI_RD_arid),
      . M_AXI_ARADDR(S00_AXI_RD_araddr),
      . M_AXI_ARLEN(S00_AXI_RD_arlen),
      . M_AXI_ARSIZE(S00_AXI_RD_arsize),
      . M_AXI_ARBURST(S00_AXI_RD_arburst),
      . M_AXI_ARLOCK(S00_AXI_RD_arlock),
      . M_AXI_ARCACHE(S00_AXI_RD_arcache),
      . M_AXI_ARPROT(S00_AXI_RD_arprot),
      . M_AXI_ARQOS(S00_AXI_RD_arqos),
      . M_AXI_ARUSER(),
      . M_AXI_ARVALID(S00_AXI_RD_arvalid),
      . M_AXI_ARREADY(S00_AXI_RD_arready),
      . M_AXI_RID(S00_AXI_RD_rid),
      . M_AXI_RDATA(S00_AXI_RD_rdata),
      . M_AXI_RRESP(S00_AXI_RD_rresp),
      . M_AXI_RLAST(S00_AXI_RD_rlast),
      . M_AXI_RUSER(),
      . M_AXI_RVALID(S00_AXI_RD_rvalid),
      . M_AXI_RREADY(S00_AXI_RD_rready),

      . RD_START(rd_burst_req),
      . RD_ADRS(rd_burst_addr),
      . RD_LEN(rd_burst_len), 
      . RD_READY(),
      . RD_FIFO_WE(read_en),
      . RD_FIFO_DATA(rd_burst_data),
      . RD_DONE(rd_burst_finish)
    );
   mig_7series_0  mig_7series_0_inst
             (
                .ddr3_dq(ddr3_dq),
                .ddr3_dqs_n(ddr3_dqs_n),
                .ddr3_dqs_p(ddr3_dqs_p),
                .ddr3_addr(ddr3_addr),
                .ddr3_ba(ddr3_ba),
                .ddr3_ras_n(ddr3_ras_n),
                .ddr3_cas_n(ddr3_cas_n),
                .ddr3_we_n(ddr3_we_n),
                .ddr3_reset_n(ddr3_reset_n),
                .ddr3_ck_p(ddr3_ck_p),
                .ddr3_ck_n(ddr3_ck_n),
                .ddr3_cke(ddr3_cke),
                .ddr3_cs_n(ddr3_cs_n),
                .ddr3_dm(ddr3_dm),
                .ddr3_odt(ddr3_odt),
                
                .sys_clk_i(ddr3_clk),
                .clk_ref_i(ddr3_clk),
                .ui_clk(ui_clk),
                .ui_clk_sync_rst(ui_rst),
                .mmcm_locked(),
                .aresetn(rstn),
                .app_sr_req('b0),
                .app_ref_req('b0),
                .app_zq_req('b0),
                .app_sr_active(),
                .app_ref_ack(),
                .app_zq_ack(),
                
                .s_axi_awid(S00_AXI_WR_awid),
                .s_axi_awaddr(S00_AXI_WR_awaddr),
                .s_axi_awlen(S00_AXI_WR_awlen),
                .s_axi_awsize(S00_AXI_WR_awsize),
                .s_axi_awburst(S00_AXI_WR_awburst),
                .s_axi_awlock(S00_AXI_WR_awlock),
                .s_axi_awcache(S00_AXI_WR_awcache),
                .s_axi_awprot(S00_AXI_WR_awprot),
                .s_axi_awqos(S00_AXI_WR_awqos),
                .s_axi_awvalid(S00_AXI_WR_awvalid),
                .s_axi_awready(S00_AXI_WR_awready),
                
                .s_axi_wdata(S00_AXI_WR_wdata),
                .s_axi_wstrb(S00_AXI_WR_wstrb),
                .s_axi_wlast(S00_AXI_WR_wlast),
                .s_axi_wvalid(S00_AXI_WR_wvalid),
                .s_axi_wready(S00_AXI_WR_wready),
                .s_axi_bready(S00_AXI_WR_bready),
                .s_axi_bid(S00_AXI_WR_bid),
                .s_axi_bresp(S00_AXI_WR_bresp),
                .s_axi_bvalid(S00_AXI_WR_bvalid),
                
                .s_axi_arid(S00_AXI_RD_arid),
                .s_axi_araddr(S00_AXI_RD_araddr),
                .s_axi_arlen(S00_AXI_RD_arlen),
                .s_axi_arsize(S00_AXI_RD_arsize),
                .s_axi_arburst(S00_AXI_RD_arburst),
                .s_axi_arlock(S00_AXI_RD_arlock),
                .s_axi_arcache(S00_AXI_RD_arcache),
                .s_axi_arprot(S00_AXI_RD_arprot),
                .s_axi_arqos(S00_AXI_RD_arqos),
                .s_axi_arvalid(S00_AXI_RD_arvalid),
                .s_axi_arready(S00_AXI_RD_arready),
            
                .s_axi_rready(S00_AXI_RD_rready),
                .s_axi_rid(S00_AXI_RD_rid),
                .s_axi_rdata(S00_AXI_RD_rdata),
                .s_axi_rresp(S00_AXI_RD_rresp),
                .s_axi_rlast(S00_AXI_RD_rlast),
                .s_axi_rvalid(S00_AXI_RD_rvalid),
                
                .init_calib_complete(calib_done),
                .device_temp_i(),
                .device_temp(),
                .sys_rst(rstn)
    );

endmodule
