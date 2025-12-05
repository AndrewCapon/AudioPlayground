// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Dec  2 07:52:52 2025
// Host        : UB22FPGA running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/andrewcapon/fpga/ArtixA7/AudioPlayground/VivadoProject/VivadoProject.gen/sources_1/bd/AudioPlatform/ip/AudioPlatform_MultiSine_0_0/AudioPlatform_MultiSine_0_0_sim_netlist.v
// Design      : AudioPlatform_MultiSine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AudioPlatform_MultiSine_0_0,MultiSine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "MultiSine,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module AudioPlatform_MultiSine_0_0
   (s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_ARREADY,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_AWADDR,
    s_axi_BUS_A_AWREADY,
    s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_BREADY,
    s_axi_BUS_A_BRESP,
    s_axi_BUS_A_BVALID,
    s_axi_BUS_A_RDATA,
    s_axi_BUS_A_RREADY,
    s_axi_BUS_A_RRESP,
    s_axi_BUS_A_RVALID,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WREADY,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 12, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN DmaTestInterconnect_sys_clock, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [11:0]s_axi_BUS_A_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY" *) output s_axi_BUS_A_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID" *) input s_axi_BUS_A_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR" *) input [11:0]s_axi_BUS_A_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY" *) output s_axi_BUS_A_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID" *) input s_axi_BUS_A_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY" *) input s_axi_BUS_A_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP" *) output [1:0]s_axi_BUS_A_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID" *) output s_axi_BUS_A_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA" *) output [31:0]s_axi_BUS_A_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY" *) input s_axi_BUS_A_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP" *) output [1:0]s_axi_BUS_A_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID" *) output s_axi_BUS_A_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA" *) input [31:0]s_axi_BUS_A_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY" *) output s_axi_BUS_A_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB" *) input [3:0]s_axi_BUS_A_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID" *) input s_axi_BUS_A_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DmaTestInterconnect_sys_clock, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [11:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARREADY;
  wire s_axi_BUS_A_ARVALID;
  wire [11:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWREADY;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [31:0]s_axi_BUS_A_RDATA;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire s_axi_BUS_A_WREADY;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire [1:0]NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED;

  assign s_axi_BUS_A_BRESP[1] = \<const0> ;
  assign s_axi_BUS_A_BRESP[0] = \<const0> ;
  assign s_axi_BUS_A_RRESP[1] = \<const0> ;
  assign s_axi_BUS_A_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_BUS_A_ADDR_WIDTH = "12" *) 
  (* C_S_AXI_BUS_A_DATA_WIDTH = "32" *) 
  (* C_S_AXI_BUS_A_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  AudioPlatform_MultiSine_0_0_MultiSine inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR),
        .s_axi_BUS_A_ARREADY(s_axi_BUS_A_ARREADY),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID),
        .s_axi_BUS_A_AWADDR({s_axi_BUS_A_AWADDR[11:2],1'b0,1'b0}),
        .s_axi_BUS_A_AWREADY(s_axi_BUS_A_AWREADY),
        .s_axi_BUS_A_AWVALID(s_axi_BUS_A_AWVALID),
        .s_axi_BUS_A_BREADY(s_axi_BUS_A_BREADY),
        .s_axi_BUS_A_BRESP(NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED[1:0]),
        .s_axi_BUS_A_BVALID(s_axi_BUS_A_BVALID),
        .s_axi_BUS_A_RDATA(s_axi_BUS_A_RDATA),
        .s_axi_BUS_A_RREADY(s_axi_BUS_A_RREADY),
        .s_axi_BUS_A_RRESP(NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED[1:0]),
        .s_axi_BUS_A_RVALID(s_axi_BUS_A_RVALID),
        .s_axi_BUS_A_WDATA(s_axi_BUS_A_WDATA),
        .s_axi_BUS_A_WREADY(s_axi_BUS_A_WREADY),
        .s_axi_BUS_A_WSTRB(s_axi_BUS_A_WSTRB),
        .s_axi_BUS_A_WVALID(s_axi_BUS_A_WVALID));
endmodule

(* C_S_AXI_BUS_A_ADDR_WIDTH = "12" *) (* C_S_AXI_BUS_A_DATA_WIDTH = "32" *) (* C_S_AXI_BUS_A_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "MultiSine" *) 
(* ap_ST_fsm_pp0_stage0 = "1'b1" *) (* hls_module = "yes" *) 
module AudioPlatform_MultiSine_0_0_MultiSine
   (ap_clk,
    ap_rst_n,
    s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_AWREADY,
    s_axi_BUS_A_AWADDR,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_WREADY,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_ARREADY,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_RVALID,
    s_axi_BUS_A_RREADY,
    s_axi_BUS_A_RDATA,
    s_axi_BUS_A_RRESP,
    s_axi_BUS_A_BVALID,
    s_axi_BUS_A_BREADY,
    s_axi_BUS_A_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_BUS_A_AWVALID;
  output s_axi_BUS_A_AWREADY;
  input [11:0]s_axi_BUS_A_AWADDR;
  input s_axi_BUS_A_WVALID;
  output s_axi_BUS_A_WREADY;
  input [31:0]s_axi_BUS_A_WDATA;
  input [3:0]s_axi_BUS_A_WSTRB;
  input s_axi_BUS_A_ARVALID;
  output s_axi_BUS_A_ARREADY;
  input [11:0]s_axi_BUS_A_ARADDR;
  output s_axi_BUS_A_RVALID;
  input s_axi_BUS_A_RREADY;
  output [31:0]s_axi_BUS_A_RDATA;
  output [1:0]s_axi_BUS_A_RRESP;
  output s_axi_BUS_A_BVALID;
  input s_axi_BUS_A_BREADY;
  output [1:0]s_axi_BUS_A_BRESP;
  output interrupt;

  wire \<const0> ;
  wire accumulators_U_n_0;
  wire accumulators_U_n_1;
  wire accumulators_U_n_10;
  wire accumulators_U_n_11;
  wire accumulators_U_n_12;
  wire accumulators_U_n_13;
  wire accumulators_U_n_14;
  wire accumulators_U_n_15;
  wire accumulators_U_n_16;
  wire accumulators_U_n_17;
  wire accumulators_U_n_18;
  wire accumulators_U_n_19;
  wire accumulators_U_n_2;
  wire accumulators_U_n_20;
  wire accumulators_U_n_21;
  wire accumulators_U_n_22;
  wire accumulators_U_n_23;
  wire accumulators_U_n_24;
  wire accumulators_U_n_25;
  wire accumulators_U_n_26;
  wire accumulators_U_n_27;
  wire accumulators_U_n_28;
  wire accumulators_U_n_29;
  wire accumulators_U_n_3;
  wire accumulators_U_n_30;
  wire accumulators_U_n_31;
  wire accumulators_U_n_4;
  wire accumulators_U_n_5;
  wire accumulators_U_n_6;
  wire accumulators_U_n_7;
  wire accumulators_U_n_8;
  wire accumulators_U_n_9;
  wire [2:0]accumulators_addr_reg_366;
  wire \add_ln468_fu_92[5]_i_2_n_0 ;
  wire [5:0]add_ln468_fu_92_reg;
  wire [8:0]add_ln46_1_fu_208_p2;
  wire [5:0]add_ln46_fu_292_p2;
  wire address_reg_386_reg_0_n_28;
  wire address_reg_386_reg_0_n_29;
  wire address_reg_386_reg_0_n_30;
  wire address_reg_386_reg_0_n_31;
  wire address_reg_386_reg_0_n_32;
  wire address_reg_386_reg_0_n_33;
  wire address_reg_386_reg_0_n_34;
  wire address_reg_386_reg_0_n_35;
  wire address_reg_386_reg_1_n_28;
  wire address_reg_386_reg_1_n_29;
  wire address_reg_386_reg_1_n_30;
  wire address_reg_386_reg_1_n_31;
  wire address_reg_386_reg_1_n_32;
  wire address_reg_386_reg_1_n_33;
  wire address_reg_386_reg_1_n_34;
  wire address_reg_386_reg_1_n_35;
  wire address_reg_386_reg_2_n_28;
  wire address_reg_386_reg_2_n_29;
  wire address_reg_386_reg_2_n_30;
  wire address_reg_386_reg_2_n_31;
  wire address_reg_386_reg_2_n_32;
  wire address_reg_386_reg_2_n_33;
  wire address_reg_386_reg_2_n_34;
  wire address_reg_386_reg_2_n_35;
  wire ap_clk;
  wire ap_condition_194;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_exit_ready_pp0_iter4_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [31:0]d0;
  wire first_iter_0_reg_362_pp0_iter1_reg;
  wire \first_iter_0_reg_362_reg_n_0_[0] ;
  wire flow_control_loop_delay_pipe_U_n_1;
  wire flow_control_loop_delay_pipe_U_n_2;
  wire flow_control_loop_delay_pipe_U_n_20;
  wire [3:0]i6_fu_88;
  wire [3:0]i_fu_220_p2;
  wire icmp_ln46_fu_232_p2;
  wire icmp_ln46_reg_382;
  wire icmp_ln497_reg_157_pp0_iter1_reg;
  wire \icmp_ln497_reg_157_reg_n_0_[0] ;
  wire icmp_ln49_fu_226_p2;
  wire icmp_ln49_reg_377;
  wire [8:0]indvar_flatten3_fu_80;
  wire [5:0]indvars_iv44_fu_84;
  wire interrupt;
  wire [7:0]p_2_in;
  wire rewind_ap_ready_reg;
  wire [11:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARREADY;
  wire s_axi_BUS_A_ARVALID;
  wire [11:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWREADY;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [31:0]s_axi_BUS_A_RDATA;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire s_axi_BUS_A_WREADY;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire [2:0]select_ln49_fu_194_p3;
  wire [8:0]sineIdx5_fu_96;
  wire sineIdx5_fu_961;
  wire \sineIdx5_fu_96[6]_i_1_n_0 ;
  wire \sineIdx5_fu_96[8]_i_2_n_0 ;
  wire \sineIdx5_fu_96[8]_i_3_n_0 ;
  wire [5:0]zext_ln46_fu_279_p1;
  wire NLW_address_reg_386_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_address_reg_386_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_address_reg_386_reg_0_DBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_address_reg_386_reg_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_address_reg_386_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_address_reg_386_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_address_reg_386_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_address_reg_386_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_address_reg_386_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_address_reg_386_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_address_reg_386_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_address_reg_386_reg_1_DBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_1_SBITERR_UNCONNECTED;
  wire [31:8]NLW_address_reg_386_reg_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_address_reg_386_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_address_reg_386_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_address_reg_386_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_address_reg_386_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_address_reg_386_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_address_reg_386_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_address_reg_386_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_address_reg_386_reg_2_DBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_address_reg_386_reg_2_SBITERR_UNCONNECTED;
  wire [31:8]NLW_address_reg_386_reg_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_address_reg_386_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_address_reg_386_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_address_reg_386_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_address_reg_386_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_address_reg_386_reg_2_RDADDRECC_UNCONNECTED;

  assign s_axi_BUS_A_BRESP[1] = \<const0> ;
  assign s_axi_BUS_A_BRESP[0] = \<const0> ;
  assign s_axi_BUS_A_RRESP[1] = \<const0> ;
  assign s_axi_BUS_A_RRESP[0] = \<const0> ;
  AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi BUS_A_s_axi_U
       (.E(ap_enable_reg_pp0_iter0),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_BUS_A_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_BUS_A_AWREADY),
        .Q(sineIdx5_fu_96),
        .address_reg_386_reg_0({accumulators_U_n_0,accumulators_U_n_1,accumulators_U_n_2,accumulators_U_n_3,accumulators_U_n_4,accumulators_U_n_5,accumulators_U_n_6,accumulators_U_n_7,accumulators_U_n_8,accumulators_U_n_9,accumulators_U_n_10,accumulators_U_n_11,accumulators_U_n_12,accumulators_U_n_13,accumulators_U_n_14,accumulators_U_n_15,accumulators_U_n_16,accumulators_U_n_17,accumulators_U_n_18,accumulators_U_n_19,accumulators_U_n_20,accumulators_U_n_21,accumulators_U_n_22,accumulators_U_n_23,accumulators_U_n_24,accumulators_U_n_25,accumulators_U_n_26,accumulators_U_n_27,accumulators_U_n_28,accumulators_U_n_29,accumulators_U_n_30,accumulators_U_n_31}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_loop_exit_ready_pp0_iter2_reg(ap_loop_exit_ready_pp0_iter2_reg),
        .ap_loop_exit_ready_pp0_iter4_reg(ap_loop_exit_ready_pp0_iter4_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .d0(d0),
        .interrupt(interrupt),
        .out({address_reg_386_reg_2_n_28,address_reg_386_reg_2_n_29,address_reg_386_reg_2_n_30,address_reg_386_reg_2_n_31,address_reg_386_reg_2_n_32,address_reg_386_reg_2_n_33,address_reg_386_reg_2_n_34,address_reg_386_reg_2_n_35,address_reg_386_reg_1_n_28,address_reg_386_reg_1_n_29,address_reg_386_reg_1_n_30,address_reg_386_reg_1_n_31,address_reg_386_reg_1_n_32,address_reg_386_reg_1_n_33,address_reg_386_reg_1_n_34,address_reg_386_reg_1_n_35,address_reg_386_reg_0_n_28,address_reg_386_reg_0_n_29,address_reg_386_reg_0_n_30,address_reg_386_reg_0_n_31,address_reg_386_reg_0_n_32,address_reg_386_reg_0_n_33,address_reg_386_reg_0_n_34,address_reg_386_reg_0_n_35}),
        .rewind_ap_ready_reg(rewind_ap_ready_reg),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID),
        .s_axi_BUS_A_AWADDR(s_axi_BUS_A_AWADDR[11:2]),
        .s_axi_BUS_A_AWVALID(s_axi_BUS_A_AWVALID),
        .s_axi_BUS_A_BREADY(s_axi_BUS_A_BREADY),
        .s_axi_BUS_A_BVALID(s_axi_BUS_A_BVALID),
        .s_axi_BUS_A_RDATA(s_axi_BUS_A_RDATA),
        .s_axi_BUS_A_RREADY(s_axi_BUS_A_RREADY),
        .s_axi_BUS_A_RVALID(s_axi_BUS_A_RVALID),
        .s_axi_BUS_A_WDATA(s_axi_BUS_A_WDATA),
        .s_axi_BUS_A_WREADY(s_axi_BUS_A_WREADY),
        .s_axi_BUS_A_WSTRB(s_axi_BUS_A_WSTRB),
        .s_axi_BUS_A_WVALID(s_axi_BUS_A_WVALID),
        .select_ln49_fu_194_p3(select_ln49_fu_194_p3));
  GND GND
       (.G(\<const0> ));
  AudioPlatform_MultiSine_0_0_MultiSine_accumulators_RAM_AUTO_1R1W accumulators_U
       (.ADDRD(accumulators_addr_reg_366),
        .E(ap_enable_reg_pp0_iter0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .d0(d0),
        .q1({accumulators_U_n_0,accumulators_U_n_1,accumulators_U_n_2,accumulators_U_n_3,accumulators_U_n_4,accumulators_U_n_5,accumulators_U_n_6,accumulators_U_n_7,accumulators_U_n_8,accumulators_U_n_9,accumulators_U_n_10,accumulators_U_n_11,accumulators_U_n_12,accumulators_U_n_13,accumulators_U_n_14,accumulators_U_n_15,accumulators_U_n_16,accumulators_U_n_17,accumulators_U_n_18,accumulators_U_n_19,accumulators_U_n_20,accumulators_U_n_21,accumulators_U_n_22,accumulators_U_n_23,accumulators_U_n_24,accumulators_U_n_25,accumulators_U_n_26,accumulators_U_n_27,accumulators_U_n_28,accumulators_U_n_29,accumulators_U_n_30,accumulators_U_n_31}),
        .select_ln49_fu_194_p3(select_ln49_fu_194_p3));
  FDRE \accumulators_addr_reg_366_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln49_fu_194_p3[0]),
        .Q(accumulators_addr_reg_366[0]),
        .R(1'b0));
  FDRE \accumulators_addr_reg_366_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln49_fu_194_p3[1]),
        .Q(accumulators_addr_reg_366[1]),
        .R(1'b0));
  FDRE \accumulators_addr_reg_366_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln49_fu_194_p3[2]),
        .Q(accumulators_addr_reg_366[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h1D)) 
    \add_ln468_fu_92[0]_i_1 
       (.I0(indvars_iv44_fu_84[0]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(add_ln468_fu_92_reg[0]),
        .O(add_ln46_fu_292_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \add_ln468_fu_92[1]_i_1 
       (.I0(indvars_iv44_fu_84[0]),
        .I1(add_ln468_fu_92_reg[0]),
        .I2(indvars_iv44_fu_84[1]),
        .I3(icmp_ln497_reg_157_pp0_iter1_reg),
        .I4(add_ln468_fu_92_reg[1]),
        .O(add_ln46_fu_292_p2[1]));
  LUT6 #(
    .INIT(64'h57F7A70758F8A808)) 
    \add_ln468_fu_92[2]_i_1 
       (.I0(zext_ln46_fu_279_p1[0]),
        .I1(indvars_iv44_fu_84[1]),
        .I2(icmp_ln497_reg_157_pp0_iter1_reg),
        .I3(add_ln468_fu_92_reg[1]),
        .I4(add_ln468_fu_92_reg[2]),
        .I5(indvars_iv44_fu_84[2]),
        .O(add_ln46_fu_292_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \add_ln468_fu_92[3]_i_1 
       (.I0(\add_ln468_fu_92[5]_i_2_n_0 ),
        .I1(indvars_iv44_fu_84[3]),
        .I2(icmp_ln497_reg_157_pp0_iter1_reg),
        .I3(add_ln468_fu_92_reg[3]),
        .O(add_ln46_fu_292_p2[3]));
  LUT6 #(
    .INIT(64'h57F7A70758F8A808)) 
    \add_ln468_fu_92[4]_i_1 
       (.I0(\add_ln468_fu_92[5]_i_2_n_0 ),
        .I1(indvars_iv44_fu_84[3]),
        .I2(icmp_ln497_reg_157_pp0_iter1_reg),
        .I3(add_ln468_fu_92_reg[3]),
        .I4(add_ln468_fu_92_reg[4]),
        .I5(indvars_iv44_fu_84[4]),
        .O(add_ln46_fu_292_p2[4]));
  LUT6 #(
    .INIT(64'h7F7F7F8080807F80)) 
    \add_ln468_fu_92[5]_i_1 
       (.I0(\add_ln468_fu_92[5]_i_2_n_0 ),
        .I1(zext_ln46_fu_279_p1[3]),
        .I2(zext_ln46_fu_279_p1[4]),
        .I3(indvars_iv44_fu_84[5]),
        .I4(icmp_ln497_reg_157_pp0_iter1_reg),
        .I5(add_ln468_fu_92_reg[5]),
        .O(add_ln46_fu_292_p2[5]));
  LUT6 #(
    .INIT(64'hC0AAC00000000000)) 
    \add_ln468_fu_92[5]_i_2 
       (.I0(indvars_iv44_fu_84[2]),
        .I1(add_ln468_fu_92_reg[2]),
        .I2(add_ln468_fu_92_reg[1]),
        .I3(icmp_ln497_reg_157_pp0_iter1_reg),
        .I4(indvars_iv44_fu_84[1]),
        .I5(zext_ln46_fu_279_p1[0]),
        .O(\add_ln468_fu_92[5]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \add_ln468_fu_92_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(add_ln46_fu_292_p2[0]),
        .Q(add_ln468_fu_92_reg[0]),
        .S(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \add_ln468_fu_92_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(add_ln46_fu_292_p2[1]),
        .Q(add_ln468_fu_92_reg[1]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \add_ln468_fu_92_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(add_ln46_fu_292_p2[2]),
        .Q(add_ln468_fu_92_reg[2]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \add_ln468_fu_92_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(add_ln46_fu_292_p2[3]),
        .Q(add_ln468_fu_92_reg[3]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \add_ln468_fu_92_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(add_ln46_fu_292_p2[4]),
        .Q(add_ln468_fu_92_reg[4]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \add_ln468_fu_92_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(add_ln46_fu_292_p2[5]),
        .Q(add_ln468_fu_92_reg[5]),
        .R(ap_condition_194));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "MultiSine/address_reg_386_reg_0" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA56F3800C88E5419DEA26527E9AA6B2BEAAA6827E5A3601DDA975310CC884400),
    .INIT_01(256'hCCC3B8AC9D8D7B68523B2309EDCFB1906E4B2701D9B1875C2F02D3A373410EDA),
    .INIT_02(256'h5699D9165189BEF0204D78A0C5E80826425B728799A9B7C2CCD3D8DBDCDBD8D3),
    .INIT_03(256'h6A18C2680AA843DA6EFE8A13991B99158C0172E04AB21677D52F87DC2D7CC710),
    .INIT_04(256'h376D9FCCF41837526879868E92928D8476654E3416F3CCA1723F08CD8E4B04B9),
    .INIT_05(256'hF3D0A87A470ECF8B42F39E44E58016A733B93AB62D9E0B72D5328BDE2D77BBFB),
    .INIT_06(256'hE28420B544CC4DC83DAB1375D02574BDFF3B71A1CBEF0D25374349494338260F),
    .INIT_07(256'h56DA57CC3AA10057A8F1326DA0CCF10F26353E3F3A2E1A00DFB7885316D38939),
    .INIT_08(256'hB134AF218BEC4596DF1F5888B0D0E8F80000F8E8D0B1895A23E49E50FA9C37CA),
    .INIT_09(256'h68069A25A71F8FF553A7F2346E9EC5E4F9060A05F7E1C29A6930EFA452F69226),
    .INIT_0A(256'h04D7A16016C162FA870B84F45AB6085190C5F1122B393E3A2C14F3C9955811C1),
    .INIT_0B(256'h25496271746D5B3E16E4A75F0DB048D659D13FA3FC4B8FC9F91E394A504C3E26),
    .INIT_0C(256'h8412950D78D82D76B3E50B263539311E00D6A16115BE5CEF77F365CB2676BBF5),
    .INIT_0D(256'hF5070D06F3D3A76F2AD97C129D1B8DF24C99DA103956676C6553340AD39143E9),
    .INIT_0E(256'h6A18B84BD14AB61466ABE20D2A3B3E351FFCCC8F46EF8C1CA01781DE2F73ABD6),
    .INIT_0F(256'hF252A4E91F48626F6E604319E19C49E879FD74DD3886C6F91F37423F2F12E7AF),
    .INIT_10(256'hBFE7010C09F7D7A86B20C55DE661CD2C7CBDF0162C35301CFACA8C40E67E0884),
    .INIT_11(256'h22281E05DEA7610BA733B11F7FCF1143677B8178603903BE6B0998198AED4287),
    .INIT_12(256'h938A71480FC76F078F0871CB144F7994A09C886532F09F3ECD4DBE2072B5E80D),
    .INIT_13(256'hAEA9936C36EF972FB82F97EE356C93AAB0A68D6329DF851BA1177DD3194F768C),
    .INIT_14(256'h384745330FDB9640D961D94096DC1034484A3C1EEFAF5EFD8C0A77D4215D88A4),
    .INIT_15(256'h1C50728483724F1BD67F179E1478CB0D3E5E6C6A5631FBB45CF379EE52A5E718),
    .INIT_16(256'h6FD72C70A2C3D1CEB9925A10B447C83794E01B445B60553708C876129E177FD6),
    .INIT_17(256'h731CB236A707548FB8CFD4C7A87633DD75FC70D223618DA8B0A78B5E1FCE6BF6),
    .INIT_18(256'h948A6C3CF9A43DC23697E5214A6166583805C068FF82F453A0DA02181C0DECB9),
    .INIT_19(256'h6CB9F2192D2E1CF7BF7518A8258FE72C5E7E8A856C4002B24ED850B40646738D),
    .INIT_1A(256'hC36F098F0363B0EA11242513EDB56A0B9A157DD31545616B614516D37E169B0D),
    .INIT_1B(256'h8DA2A3916B33E687148EF54888B5CFD5C8A8742ED467E653ACF22544514A3003),
    .INIT_1C(256'hF173E33E86BBDCEAE4CA9D5D09A22799F8427A9EAFAC966C2FDF7B0479DB2A65),
    .INIT_1D(256'h43381AE8A249DC5CC7206496B3BDB3966520C85DDD4AA4EA1D3B473F23F4B15B),
    .INIT_1E(256'h0873CB0E3E5A63583906C066F877E2397DADC9D1C6A8752FD568E652A9ED1D3A),
    .INIT_1F(256'hF6D9A8630A9D1D89E12657747D735423DD84179601599DCDEAF3E8C99751F789),
    .INIT_20(256'hF44E94C6E5F0E7CB9B57FF941582DB2153717C725525E0881C9D0962A7D9F6FF),
    .INIT_21(256'h17E7A34BE062CF296FA2C1CCC4A87834DD72F462BC0235545F573A0BC7700586),
    .INIT_22(256'hA7EA19353E3213E19B42D554C0185D8EABB5AB8E5D18C054D5429BE113313C33),
    .INIT_23(256'h1DCE6CF76ED223608AA0A3926E37EC8E1C97FE5293BFD9DFD1B07C34D869E751),
    .INIT_24(256'h203A413415E29C43D757C51F6599B9C6C0A77A3AE7800679D9255E8396948058),
    .INIT_25(256'h88036BC003324F584F3203C16B0388F958A3DC01141300D99F52F27FF85FB2F3),
    .INIT_26(256'h5C2FF09E3AC2399CED2B566F75694917D27B10930360ABE3081A1905DFA559FA),
    .INIT_27(256'hD2F402FFE9C1873ADB6AE650A8ED20404E493309CD7F1EAB258DE22555737E76),
    .INIT_28(256'h4EB102426F8B948C724507B755E05AC2185B8DACBAB59E753AED8D1C98025A9F),
    .INIT_29(256'h60F87EF357A9E91836423C25FDC27619AA2996F23C759CB1B4A6855310BA53D9),
    .INIT_2A(256'hC58330CC57D13B93DA1035494B3D1DECAB57F37EF75FB6FB2F5264645330FCB7),
    .INIT_2B(256'h6338FCB053E567D93A8BCAFA18262411EDB8731DB63EB61D73B8ED10232516F6),
    .INIT_2C(256'h4E28F2AB55F07AF45EB8023C66808A836D460FC87109920A71C910476D83897F),
    .INIT_2D(256'hBE8B48F69424A31475C7093B5F72776B5026ECA249E067DF469FE72049626B64),
    .INIT_2E(256'h15C15EEC6CDD3F92D70D344C55503B18E5A453F486087CE0367CB3DBF4FDF7E2),
    .INIT_2F(256'hD94FB7125E9CCCED0107FEE7C28F4DFEA033B82F98F23E7BAACADCDFD4BA925B),
    .INIT_30(256'hB6E0FE0E1106EEC8965507AC43CD49B7186CB1E913303E3F3318EFB97523C355),
    .INIT_31(256'h7840FCAB4EE36DE959BC135C99C9EC020C08F8DAB07834E284189F1986E6387E),
    .INIT_32(256'h0D5B9ED4FF1D3037322104DBA66417BE58E668DE48A5F63B739FBFD2D9D3C1A3),
    .INIT_33(256'h843FEF942DBC40B82587DE2A6A9FC9E8FB02FEEFD5AE7D40F7A242D760DD4EB4),
    .INIT_34(256'h0513171100E5C0905712C46A0799209D0F77D4276FACDE0623353C392B11EDBE),
    .INIT_35(256'hD61D5A8EB9DAF1FF04FFF0D8B68B5617CE7C20BA4AD14DC02987DC27689ECBED),
    .INIT_36(256'h56BA1568B3F42D5E86A5BBC9CECABEA88A6232F9B76C17BA54E46CEA5FCB2D86),
    .INIT_37(256'hF95FBC1260A7E61D4C7493ABBBC3C3BBAB93734B1BE3A25909AF4EE472F875EA),
    .INIT_38(256'h4B94D8144A78A0C1DCEFFC01FFF7E7D1B38E622FF4B36A19C263FC8F199D188D),
    .INIT_39(256'hE7F803090903F7E5CDB08C6232FCC07D35E69136D46CFE890E8D0576E145A3FA),
    .INIT_3A(256'h7B36EC9D4AF29432CA5EEC76FA79F267D640A5045EB2024B8FCE073A6890B3D0),
    .INIT_3B(256'hC2094C8BC7FE31608BB2D4F30D2335434C51514D45382611F6D7B38B5E2CF6BB),
    .INIT_3C(256'h853AEB9945ED9235D470089E30BF4AD358D957D249BC2C990267C82680D62978),
    .INIT_3D(256'h949899989590897F746656442F19FFE4C6A6835D350BDEAE7C470FD4975714CE),
    .INIT_3E(256'hC8FB2D5E8EBDEA16426C94BCE2062A4C6C8BA8C4DEF70E2437495A68757F888F),
    .INIT_3F(256'hFD4185C90D5094D71A5C9FE12263A4E52564A3E11F5C98D40E4982BBF2295F94),
    .INIT_40(256'h144A80B8F12A649FDB175492D00F4E8ECE0F5092D416599CDF2266AAED3175B9),
    .INIT_41(256'hEBF4FF0B1A2A3C50657C95AFCBE80727496D91B7DF07315C89B6E5154678ABDF),
    .INIT_42(256'h601DDDA0652DF8C696693F17F1CEAE90745B44301D0D00F4EBE4DFDCDBDCDFE4),
    .INIT_43(256'h4D9FF54FAD0E74DC49B92CA31E9C1DA22AB645D76C05A140E2872FDB893BEFA6),
    .INIT_44(256'h814B19ECC3A08066503F322925262A3441536983A2C4EB164578AFEA296CB3FE),
    .INIT_45(256'hC6E9113E72ABE92D77C61A74D338A21185FF7E028B1AAD46E3862DDA8B41FCBC),
    .INIT_46(256'hD8369A0576EE6CF17D0EA644E99445FDBA7E4818EECAAC9482767070768192A9),
    .INIT_47(256'h65E164EF811ABB6413CA884E1BEEC9AC95857D7B808DA0BADB033267A4E73081),
    .INIT_48(256'h0B880E9C32D07726DD9D64340CECD4C4BCBCC4D4EB0B326198D71E6CC21F84F1),
    .INIT_49(256'h56B92499179F2FC96B17CC895020F8DAC4B7B4B8C6DCFB23548DCE186BC72A97),
    .INIT_4A(256'hBCE91F60AAFF5EC639B53BCB6509B76E2FFACFAD9486818593AACBF62967ADFD),
    .INIT_4B(256'h9E7960514E556784ABDE1B63B5127AEC69F0821EC57632F8C8A388777074829A),
    .INIT_4C(256'h41B22FB74CEC974E11DFB99E8F8B92A5C4ED2262AE0567D44CD05EF89D4C07CD),
    .INIT_4D(256'hD2BFBAC0D3F31F579CED4AB329AB39D37A2CEBB68D6F5E59607291BBF23482DB),
    .INIT_4E(256'h5FB1117EF87F13B4621EE6BC9E8D8A93A9CCFC3982D83BAB27B146E998531CF0),
    .INIT_4F(256'hD97927E3AC84695C5D6B88B2E92F82E351CD56ED924403D0AB93888A9AB8E21A),
    .INIT_50(256'h10E7CDC2C5D7F72562AE0870E76C00A15110DCB7A0979DB0D202408CE54DC347),
    .INIT_51(256'hAFA9B3CBF32A70C5299D1FB15101BF8D69544E587096CC1164C637B644E18D47),
    .INIT_52(256'h414A638CC40D65CC44CB6208BE84593E33374A6DA0E23394048413B25F1CE9C4),
    .INIT_53(256'h282E446AA1E83FA71FA73FE8A069432C252F4972ACF650BA34BE5801BB855E48),
    .INIT_54(256'hA29394A7CAFE44990078009943FDC8A4918E9CBAE92979DA4CCE6003B67A4F33),
    .INIT_55(256'hC28D6B59596B8DC1075DC53EC86410CE9D7E6F7285AAE0277EE761EC8835F3C2),
    .INIT_56(256'h710AB4703E1D0F12274D85CF2B9817A84AFEC49B847E8AA7D61668CB40C65E07),
    .INIT_57(256'h71C832AE3CDC8F542A130E1C3B6CB0056DE6720FBF81543A313B5683C21376EB),
    .INIT_58(256'h535E7BABED42AA24B15001C59C85808EAEE0257DE763F192450BE2CCC9D7F82B),
    .INIT_59(256'h7E32F8D2BEBDCEF32B75D242C45A02BD8B6B5E647DA8E6369A109833E1A2755B),
    .INIT_5A(256'h2C7FE55FEB8B3E04DDC9C8DAFF3883E253D76F19D7A78B818AA6D6186DD550DE),
    .INIT_5B(256'h65504F6186BF0B6ADD62FCA8683B211B28487BC21C89099D43FDCAAB9EA5BFEB),
    .INIT_5C(256'h058213B76F3A190B112A5797EB52CD5BFCB1795544475D87C41478EF7917C88D),
    .INIT_5D(256'hB6C1DF1156B01C9D31D89362453B446292D72F9A1AAC530CDABBAFB7D302459B),
    .INIT_5E(256'hF58932EEBEA299A4C3F53C95038419C27E4E3229345385CB259213A8500CDCBF),
    .INIT_5F(256'h0A27599EF663E3771EDAA98B828CAADC227BE868FDA56131140B163466AC0673),
    .INIT_60(256'h10B6703E1F141C3969AC046FEE8127E1AF91868FACDD2179E565F89F5A280A00),
    .INIT_61(256'hF12165BC27A538DE9765463A435F8ED2299312A44A03D0B1A6AECAFA3D95FF7E),
    .INIT_62(256'h6421F2D6CDD8F7296FC936B64AF2AD7C5F555E7BACF149B434C76D27F5D7CCD5),
    .INIT_63(256'hF241A218A03CECAE846E6B7B9FD72180F1760FBB7A4D342D3B5C90D833A225BB),
    .INIT_64(256'hF3D9D2DEFD3076CF3BBA4DF3AC78584A506A96D629900A9737EBB28C7A7B8FB7),
    .INIT_65(256'h8E13AB5513E3C7BDC6E31254A9128D1BBC7138130001143B75C121941BB46020),
    .INIT_66(256'hBDEA297BE057E07D2CEEC2A9A3B0CF01469D078414B76C340FFDFE123871BD1C),
    .INIT_67(256'h4B291A1E335B96E241B236CC742FFCDBCDD2E8124D9CFC6FF58D38F5C5A79CA3),
    .INIT_68(256'hD26F1EDEB1958B94AEDA1868CA3FC55D07C39272656980A9E4319002861BC47E),
    .INIT_69(256'hC42CA530CC7A3A0AEDE1E6FD2660AC0978F98B2FE5AD86716D7C9CCE1167CE47),
    .INIT_6A(256'h62A4F75ACF55EC934C16F1DDDAE908397BCE32A72EC66F2AF5D2C1C0D1F4286D),
    .INIT_6B(256'hC6F22E7AD744C250EF9F5F2F100205183C70B50B72EA720BB56F3B1704021131),
    .INIT_6C(256'hDF053B81D73DB339CE742AF0C6ACA2A8BFE51C63BA229921B9621AE4BDA7A1AB),
    .INIT_6D(256'h72A5E83A9B0C8C1BBA6826F3D0BCB8C3DE09438CE54EC74FE78F460EE5CBC2C9),
    .INIT_6E(256'h1E72D546C655F3A05B25FEE6DCE2F61A4C8DDE3DAB28B550FBB57D553D33394E),
    .INIT_6F(256'h5CE67E23D7996947332E364D72A5E73694017B049C42F6B88A6957545F79A1D8),
    .INIT_70(256'h82573A2A2732496FA2E2308BF46AEE7F1ECB854D2306F8F7031E467CC11372E0),
    .INIT_71(256'hC3FA3E8FEC56CD50E07D27DDA0704D372D31415E89C00556B520991FB25200BA),
    .INIT_72(256'h2FE19F683D1F0C050A1B386196D7247EE355D35DF3964500C89B7C6861677997),
    .INIT_73(256'hBB0050AB1182FF8619B76014D39E7556433B3F4E698FC0FD469AFA66DD60EF89),
    .INIT_74(256'h3B2D2930405B80B0EA2E7CD539A71FA230C86B19D19361391C0A0306142D5281),
    .INIT_75(256'h6C25E8B4896851423E4351698BB6EC2A73C52187F770F48118B9651AD9A37654),
    .INIT_76(256'hEE8A2EDB914F16E5BE9E887A7579859BB9E1114A8CD72B88EF5ED758E37815BC),
    .INIT_77(256'h4CE78933E59E5F28F9D1B29A8A82828A99B1D1F92962A2EB3C95F660D24CCF5A),
    .INIT_78(256'hFCB26F33FDCEA6856B574B45474F5F7593B8E4175293DC2C84E349B72CA92DB9),
    .INIT_79(256'h6150443F3F4551627A98BCE5154B88CA1261B61173DB49BE39BA42D16601A44C),
    .INIT_7A(256'hCE135CABFF57B4177EEB5CD34FD056E17208A344EA9647FDB97A410EE0B89578),
    .INIT_7B(256'h8740FDBE834C18E9BE9875563C261406FDF8F8FC04112238537295BEEB1C538E),
    .INIT_7C(256'hC5105FB1055DB71576DA42AC1A8BFF77F271F378018D1DB148E38124C97321D2),
    .INIT_7D(256'hB6B3B2B3B6BBC2CBD7E4F4061B324B6684A5C8ED153F6D9CCF043B76B3F3367C),
    .INIT_7E(256'h83501EEDBD8E613409DFB68F694421FFDFC0A2866C533C271301F1E2D6CBC2BB),
    .INIT_7F(256'h4D0AC6823EFBB77431EFAC6A29E7A66626E7A86A2CEFB3773C02C9905822ECB7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    address_reg_386_reg_0
       (.ADDRARDADDR({1'b1,d0[31:20],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_address_reg_386_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_address_reg_386_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_address_reg_386_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_address_reg_386_reg_0_DOADO_UNCONNECTED[31:8],address_reg_386_reg_0_n_28,address_reg_386_reg_0_n_29,address_reg_386_reg_0_n_30,address_reg_386_reg_0_n_31,address_reg_386_reg_0_n_32,address_reg_386_reg_0_n_33,address_reg_386_reg_0_n_34,address_reg_386_reg_0_n_35}),
        .DOBDO(NLW_address_reg_386_reg_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_address_reg_386_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_address_reg_386_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_address_reg_386_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_address_reg_386_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_address_reg_386_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_address_reg_386_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(ap_enable_reg_pp0_iter2),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_address_reg_386_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "MultiSine/address_reg_386_reg_1" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h15E3B17F4C1AE8B683511FEDBA885624F1BF8D5B28F6C4925F2DFBC996643200),
    .INIT_01(256'h5927F5C3915F2DFBC997653300CE9C6A3806D4A26F3D0BD9A7754210DEAC7A47),
    .INIT_02(256'h96643201CF9D6B3908D6A472400EDDAB794715E3B17F4D1BE9B7855321EFBD8B),
    .INIT_03(256'hC796643302D09F6D3C0AD9A8764513E2B07F4D1BEAB8875523F2C08E5D2BF9C8),
    .INIT_04(256'hE9B8875625F5C493623100CF9E6D3C0BDAA9784716E4B3825120EFBD8C5B2AF8),
    .INIT_05(256'hF7C797673707D6A6764515E5B4845423F3C292613100D09F6E3E0DDCAC7B4A19),
    .INIT_06(256'hEFC091613202D3A3744415E5B5865626F6C797673707D8A8784818E8B8885828),
    .INIT_07(256'hCD9E704113E4B6875829FBCC9D6E3F11E2B3845526F7C899693A0BDCAD7D4E1F),
    .INIT_08(256'h8C5F3104D6A87B4D1FF2C496683A0CDEB1835426F8CA9C6E4011E3B586582AFB),
    .INIT_09(256'h2AFED1A5784C1FF2C6996C4013E6B98C5F3306D9AB7E5124F7CA9C6F4214E7BA),
    .INIT_0A(256'hA3774C21F6CA9F73481DF1C59A6E4317EBBF93683C10E4B88C603307DBAF8356),
    .INIT_0B(256'hF3C99F754B21F7CDA3784E24FACFA57A5025FBD0A57B5025FAD0A57A4F24F9CE),
    .INIT_0C(256'h17EFC69E754C24FBD2A981582F06DDB48B61380FE6BC93694016EDC39A70461C),
    .INIT_0D(256'h0CE6BF98704922FBD4AC855E360FE7BF98704821F9D1A981593109E1B890683F),
    .INIT_0E(256'hD0AB85603A15EFCAA47E58330DE7C19B754E2802DCB58F69421CF5CEA8815A33),
    .INIT_0F(256'h5E3B17F3D0AC8864401CF8D4AF8B67421EF9D5B08C67421DF9D4AF8A65401AF5),
    .INIT_10(256'hB59372502E0BE9C7A583603E1BF9D6B4916E4B2906E3C09D79563310ECC9A682),
    .INIT_11(256'hD2B29272513111F1D0B08F6F4E2D0DECCBAA8968472605E3C2A17F5E3C1AF9D7),
    .INIT_12(256'hB1937557391AFCDEBFA18263452607E8C9AA8B6C4D2D0EEFCFB09071513111F2),
    .INIT_13(256'h513519FDE1C4A88C6F533619FDE0C3A6896C4F3215F7DABD9F826446290BEDCF),
    .INIT_14(256'hB0967C62482D13F9DEC4A98F74593F2409EED3B89C81664A2F14F8DCC1A5896D),
    .INIT_15(256'hCBB39B836B533B230AF2DAC1A990775F462D14FBE2C9AF967D634A3017FDE3CA),
    .INIT_16(256'hA08A755F49331D07F1DBC5AF98826B553E2711FAE3CCB59E876F58412912FAE2),
    .INIT_17(256'h2E1B07F4E0CDB9A5917D6955412D1904F0DBC7B29E89745F4A35200BF6E0CBB5),
    .INIT_18(256'h736251402E1D0CFAE9D7C5B4A2907E6C5A48352310FEEBD9C6B3A18E7B685441),
    .INIT_19(256'h6E5F504233241505F6E7D8C8B9A9998A7A6A5A4A3A2A1A09F9E8D8C7B7A69584),
    .INIT_1A(256'h1D1105F8ECDFD2C5B9AC9F9284776A5D4F423426190BFDEFE1D3C5B6A89A8B7D),
    .INIT_1B(256'h80766C62584E43392F24190F04F9EEE3D8CDC2B7ABA094897D71665A4E42362A),
    .INIT_1C(256'h958E867F776F675F574F473F372E261D140C03FAF1E8DFD6CDC3BAB1A79D948A),
    .INIT_1D(256'h5D58534D48433D38322D27211B150F0903FDF6F0E9E3DCD5CFC8C1BAB3ABA49D),
    .INIT_1E(256'hD6D3D0CECBC8C5C2BFBCB8B5B1AEAAA7A39F9B97938F8B87827E7975706B6762),
    .INIT_1F(256'hFFFFFFFFFFFEFEFDFCFCFBFAF9F8F7F6F4F3F2F0EFEDEBE9E7E5E3E1DFDDDAD8),
    .INIT_20(256'hDADDDFE1E3E5E7E9EBEDEEF0F2F3F4F6F7F8F9FAFBFCFCFDFEFEFFFFFFFFFFFF),
    .INIT_21(256'h676B7075797E82878B8F93979B9FA3A7AAAEB1B5B8BCBFC2C5C8CBCED0D3D6D8),
    .INIT_22(256'hA4ABB3BAC1C8CFD5DCE3E9F0F6FD03090F151B21272D32383D43484D53585D62),
    .INIT_23(256'h949DA7B0BAC3CDD6DFE8F1FA030C141D262E363F474F575F676F777F868E959D),
    .INIT_24(256'h36424E5A66717D8994A0ABB7C2CDD8E3EEF9040F19242F39434E58626C76808A),
    .INIT_25(256'h8B9AA8B6C5D3E1EFFD0B192634424F5C6A7784929FACB9C5D2DFEBF804111D29),
    .INIT_26(256'h95A6B6C7D8E8F909192A3A4A5A6A7A8A99A9B9C8D8E7F60515243342505F6E7C),
    .INIT_27(256'h54677B8DA0B3C6D9EBFE102335475A6C7E90A2B4C5D7E9FA0C1D2E4051627384),
    .INIT_28(256'hCBE0F60B20354A5F74899EB2C7DBF004192D4155697D91A5B9CCE0F4071B2E41),
    .INIT_29(256'hFA112940586F869EB5CCE3FA10273E556B8298AEC5DBF1071D33495F758AA0B5),
    .INIT_2A(256'hE3FD17304A637D96AFC9E2FB142D465E7790A8C1D9F20A223B536B839BB3CAE2),
    .INIT_2B(256'h89A5C0DCF8132F4A66819CB7D3EE09243E59748FA9C4DEF9132D47627C96B0C9),
    .INIT_2C(256'hED0B284664819FBCDAF715324F6C89A6C3E0FD1936536F8CA8C4E1FD1935516D),
    .INIT_2D(256'h1131517090B0CFEF0E2D4D6C8BAAC9E80726446382A0BFDDFC1A38577593B1CF),
    .INIT_2E(256'hF91A3C5D7FA0C2E30426476889AACBEC0C2D4E6E8FB0D0F01131517191B1D1F1),
    .INIT_2F(256'hA5C9EC103356799CC0E305284B6E91B3D6F91B3E6082A5C7E90B2D4F7193B5D7),
    .INIT_30(256'h1A3F648AAFD4F81D42678CB0D5F91E42678BAFD3F81C406488ACCFF3173B5E82),
    .INIT_31(256'h5A81A7CEF51B42688FB5DC02284E749BC1E70C32587EA4C9EF153A6085AAD0F5),
    .INIT_32(256'h6890B8E008315981A9D1F920487098BFE70E365D85ACD3FB22497097BEE50C33),
    .INIT_33(256'h467099C3ED16406993BCE50F38618AB3DC062E5780A9D2FB234C759DC6EE173F),
    .INIT_34(256'hF9244F7AA5CFFA25507BA5D0FB25507AA5CFF9244E78A2CDF7214B759FC9F21C),
    .INIT_35(256'h82AFDB07335F8BB7E40F3B6793BFEB17426E9AC5F11C48739FCAF5214C77A2CD),
    .INIT_36(256'hE714426F9CC9F724517EABD805325F8CB9E6133F6C99C6F21F4B78A4D1FD2A56),
    .INIT_37(256'h295886B5E3113F6E9CCAF8265482B0DE0C3A6896C4F11F4D7BA8D603315E8CB9),
    .INIT_38(256'h4E7DACDC0B3A6998C7F6255583B2E1103F6E9DCCFA295887B5E41241709ECDFB),
    .INIT_39(256'h5787B8E8184877A7D707376797C6F6265685B5E5144473A3D302326190C0EF1E),
    .INIT_3A(256'h4A7BABDC0D3D6E9FCF00306191C2F2235384B4E5154576A6D606376797C7F727),
    .INIT_3B(256'h295B8CBDEE1F5182B3E4154678A9DA0B3C6D9ECF00316293C3F4255687B8E819),
    .INIT_3C(256'hF92B5C8EC0F1235586B8EA1B4D7EB0E1134476A7D90A3C6D9FD001336495C7F8),
    .INIT_3D(256'hBDEF215385B7E91B4D7FB1E3154778AADC0E4072A4D607396B9DCF00326496C7),
    .INIT_3E(256'h79ABDE104274A6D90B3D6FA1D306386A9CCE00326496C9FB2D5F91C3F527598B),
    .INIT_3F(256'h316496C8FB2D5F91C4F6285A8DBFF1235688BAEC1F5183B5E81A4C7EB0E31547),
    .INIT_40(256'hEA1C4E80B2E517497BAEE0124477A9DB0D4072A4D6093B6D9FD20436689BCDFF),
    .INIT_41(256'hA5D7093C6EA0D20436689ACCFE306395C7F92B5D8FC2F426588ABCEF215385B7),
    .INIT_42(256'h699BCCFE306293C5F7295B8DBEF0225486B8EA1C4E80B2E3154779ABDD0F4173),
    .INIT_43(256'h38699ACCFD2F6091C3F4265789BAEC1D4F80B2E3154778AADB0D3F70A2D40537),
    .INIT_44(256'h164778A8D90A3B6C9DCEFF306192C3F4255687B8E91A4B7DAEDF104173A4D506),
    .INIT_45(256'h07376898C8F8285989B9EA1A4A7BABDC0C3C6D9ECEFF2F6090C1F2225384B4E5),
    .INIT_46(256'h0F3F6E9ECDFC2C5B8BBBEA1A4979A9D808386898C7F7275787B7E7174777A7D7),
    .INIT_47(256'h32608FBDEC1B4978A7D504336290BFEE1D4C7BAAD908376695C5F4235281B1E0),
    .INIT_48(256'h73A0CEFB295684B2DF0D3B6997C4F2204E7CAAD806356391BFED1C4A78A7D503),
    .INIT_49(256'hD5012E5A87B3E00C396692BFEC1945729FCCF9265380ADDB08356290BDEA1845),
    .INIT_4A(256'h5C87B3DE0934608BB7E20E396591BCE8143F6B97C3EF1B47739FCBF724507CA8),
    .INIT_4B(256'h0C36608AB4DE08325C86B1DB05305A84AFD9042F5984AFD9042F5A85B0DB0631),
    .INIT_4C(256'hE81039618AB2DB042D557EA7D0F9224B749DC7F019436C95BFE8123B658FB9E2),
    .INIT_4D(256'hF21940678EB5DD042B527AA1C9F0183F678FB6DE062E567EA6CEF61E466F97BF),
    .INIT_4E(256'h2F547A9FC4EA10355B81A6CCF2183E648AB0D6FD23497096BDE30A30577EA5CB),
    .INIT_4F(256'hA0C4E80B2F53779BBFE3072B4F7498BCE1052A4E7398BDE1062B50759ABFE40A),
    .INIT_50(256'h4A6B8DAFD1F315385A7C9FC1E306294B6E91B3D6F91C3F6285A9CCEF1236597D),
    .INIT_51(256'h2D4D6D8DADCEEE0E2F4F7090B1D2F21334557697B8D9FA1C3D5E80A1C3E40628),
    .INIT_52(256'h4E6C8AA8C6E50321405E7D9CBAD9F81736557493B2D1F110304F6F8EAECEED0D),
    .INIT_53(256'hAECAE6021E3A577390ACC9E5021F3C597693B0CDEA072542607D9BB9D6F41230),
    .INIT_54(256'h4F69839DB7D1EC06213B56708BA5C0DBF6112C47627E99B4D0EB07233E5A7692),
    .INIT_55(256'h344C647C94ACC4DCF50D253E566F88A0B9D2EB041D364F69829BB5CEE8021B35),
    .INIT_56(256'h5F758AA0B6CCE2F80E243A50677D94AAC1D7EE051C334A617890A7BED6ED051D),
    .INIT_57(256'hD1E4F80B1F32465A6E8296AABED2E6FB0F23384D61768BA0B5CADFF4091F3449),
    .INIT_58(256'h8C9DAEBFD0E2F30516283A4B5D6F8193A5B7CADCEE011326394C5E718497AABE),
    .INIT_59(256'h91A0AEBDCCDBEAF909182737465666758595A5B5C5D5E5F60617273848596A7B),
    .INIT_5A(256'hE2EEFA0713202D3A4653606D7A8895A2B0BDCBD9E6F402101E2C3A4957657482),
    .INIT_5B(256'h7F89939DA7B1BCC6D0DBE5F0FB06111C27323D48545F6B76828D99A5B1BDC9D5),
    .INIT_5C(256'h6A717980889098A0A8B0B8C0C8D1D9E2EAF3FC050E172029323C454E58626B75),
    .INIT_5D(256'hA2A7ACB2B7BCC2C7CDD2D8DEE4EAF0F6FC02090F161C232A30373E454C545B62),
    .INIT_5E(256'h292C2F3134373A3D4043474A4E5155585C6064686C7074787D81868A8F94989D),
    .INIT_5F(256'h000000000001010203030405060708090B0C0D0F10121416181A1C1E20222527),
    .INIT_60(256'h2522201E1C1A18161412110F0D0C0B0908070605040303020101000000000000),
    .INIT_61(256'h98948F8A86817D7874706C6864605C5855514E4A4744403D3A3734312F2C2927),
    .INIT_62(256'h5B544C453E37302A231C160F0902FCF6F0EAE4DED8D2CDC7C2BCB7B2ACA7A29D),
    .INIT_63(256'h6B62584F453C322920170E05FCF3EBE2D9D1C9C0B8B0A8A09890888079716A62),
    .INIT_64(256'hC9BDB1A5998E82766B5F54483D32271C1106FBF0E6DBD1C6BCB1A79D93897F75),
    .INIT_65(256'h746657493B2C1E1002F4E7D9CBBEB0A395887B6E6154473A2D201407FBEEE2D6),
    .INIT_66(256'h6A594938271706F6E6D5C5B5A595857666564737281809FAEBDBCCBEAFA09183),
    .INIT_67(256'hAB9885725F4C39261401EFDCCAB8A593816F5D4C3A281605F3E2D1BFAE9D8C7B),
    .INIT_68(256'h341F0AF4DFCAB5A08B76624D38240FFBE7D2BEAA96826E5A46331F0CF8E5D1BE),
    .INIT_69(256'h05EED6BFA79079624A331C05EFD8C1AB947D67513A240EF8E2CCB6A08B755F4A),
    .INIT_6A(256'h1C02E8CFB59C826950371D04EBD2BAA1886F573E260DF5DDC4AC947C644C351D),
    .INIT_6B(256'h765A3F2307ECD0B5997E63482D12F7DCC1A68B71563B2107ECD2B89E846A5036),
    .INIT_6C(256'h12F5D7B99B7E60432508EBCDB09376593C1F03E6C9AD9074573B1F02E6CAAE92),
    .INIT_6D(256'hEECEAE8F6F503011F1D2B39374553617F8DABB9C7D5F402203E5C7A98A6C4E30),
    .INIT_6E(256'h07E5C3A2805F3D1CFBDAB89776553414F3D2B19170502F0FEECEAE8E6E4E2E0E),
    .INIT_6F(256'h5A3613F0CCA98663401DFAD7B4916E4C2907E4C29F7D5A3816F4D2B08E6C4A28),
    .INIT_70(256'hE5C09B76512C07E2BD98744F2A06E1BD9974502C08E4BF9B7854300CE8C5A17D),
    .INIT_71(256'hA57E58310AE4BD97704A24FDD7B18B653F19F3CDA7815C3610EBC5A07A55300A),
    .INIT_72(256'h986F471FF7CFA77F572F07DFB78F684018F1C9A27A532C05DDB68F68411AF3CC),
    .INIT_73(256'hB990663C13E9BF966D431AF1C79E754C23FAD1A87F562D04DCB38A623911E8C0),
    .INIT_74(256'h07DCB1865B3005DAAF855A2F05DAB0855B3006DCB1875D3309DFB58B61370DE3),
    .INIT_75(256'h7D5124F8CCA074481CF0C4986C4014E9BD91663A0EE3B78C61350ADFB3885D32),
    .INIT_76(256'h18EBBE90633609DBAE815427FACDA0734619EDC093663A0DE0B4875B2E02D6A9),
    .INIT_77(256'hD6A7794B1CEEC092633507D9AB7D4F21F3C597693C0EE0B2855729FCCEA17346),
    .INIT_78(256'hB1825324F4C596673809DAAB7C4D1EEFC091623405D6A7794A1BEDBE90613304),
    .INIT_79(256'hA8784818E8B8885828F8C898693909D9AA7A4A1BEBBB8C5C2DFDCE9E6F4010E1),
    .INIT_7A(256'hB5855423F2C2916130FFCF9E6E3D0DDCAC7C4B1BEABA8A5929F9C999683808D8),
    .INIT_7B(256'hD6A5734211E0AF7D4C1BEAB9885726F5C392613000CF9E6D3C0BDAA9784817E6),
    .INIT_7C(256'h06D5A371400EDCAB794716E4B3814F1EECBB895827F5C492612FFECD9B6A3907),
    .INIT_7D(256'h4210DEAC7A4816E4B2804E1DEBB9875523F1BF8D5C2AF8C6946331FFCD9B6A38),
    .INIT_7E(256'h865422EFBD8B5927F5C2905E2CFAC8956331FFCD9B693705D3A16E3C0AD8A674),
    .INIT_7F(256'hCE9C693705D2A06E3C09D7A573400EDCAA774513E1AE7C4A18E6B3814F1DEAB8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    address_reg_386_reg_1
       (.ADDRARDADDR({1'b1,d0[31:20],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_address_reg_386_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_address_reg_386_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_address_reg_386_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_address_reg_386_reg_1_DOADO_UNCONNECTED[31:8],address_reg_386_reg_1_n_28,address_reg_386_reg_1_n_29,address_reg_386_reg_1_n_30,address_reg_386_reg_1_n_31,address_reg_386_reg_1_n_32,address_reg_386_reg_1_n_33,address_reg_386_reg_1_n_34,address_reg_386_reg_1_n_35}),
        .DOBDO(NLW_address_reg_386_reg_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_address_reg_386_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_address_reg_386_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_address_reg_386_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_address_reg_386_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_address_reg_386_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_address_reg_386_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(ap_enable_reg_pp0_iter2),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_address_reg_386_reg_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "MultiSine/address_reg_386_reg_2" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0605050505050404040404030303030302020202020101010101000000000000),
    .INIT_01(256'h0C0C0B0B0B0B0B0A0A0A0A0A0A09090909090808080808070707070706060606),
    .INIT_02(256'h12121212111111111110101010100F0F0F0F0F0E0E0E0E0E0D0D0D0D0D0C0C0C),
    .INIT_03(256'h1818181818171717171716161616161515151515141414141413131313131212),
    .INIT_04(256'h1E1E1E1E1E1D1D1D1D1D1D1C1C1C1C1C1B1B1B1B1B1A1A1A1A1A191919191918),
    .INIT_05(256'h2424242424242323232323222222222221212121212120202020201F1F1F1F1F),
    .INIT_06(256'h2A2A2A2A2A2A2929292929282828282827272727272726262626262525252525),
    .INIT_07(256'h30303030302F2F2F2F2F2E2E2E2E2E2E2D2D2D2D2D2C2C2C2C2C2C2B2B2B2B2B),
    .INIT_08(256'h3636363635353535353434343434343333333333323232323232313131313130),
    .INIT_09(256'h3C3B3B3B3B3B3B3A3A3A3A3A3A39393939393938383838383737373737373636),
    .INIT_0A(256'h414141414040404040403F3F3F3F3F3F3E3E3E3E3E3E3D3D3D3D3D3D3C3C3C3C),
    .INIT_0B(256'h4646464646464545454545454444444444444343434343434242424242424141),
    .INIT_0C(256'h4C4B4B4B4B4B4B4A4A4A4A4A4A4A494949494949484848484848474747474747),
    .INIT_0D(256'h515050505050504F4F4F4F4F4F4F4E4E4E4E4E4E4D4D4D4D4D4D4D4C4C4C4C4C),
    .INIT_0E(256'h5555555555555454545454545453535353535353525252525252515151515151),
    .INIT_0F(256'h5A5A5A5959595959595958585858585858575757575757575656565656565655),
    .INIT_10(256'h5E5E5E5E5E5E5D5D5D5D5D5D5D5C5C5C5C5C5C5C5C5B5B5B5B5B5B5B5A5A5A5A),
    .INIT_11(256'h62626262626262616161616161616160606060606060605F5F5F5F5F5F5F5E5E),
    .INIT_12(256'h6666666666666565656565656565656464646464646464636363636363636362),
    .INIT_13(256'h6A6A6A6969696969696969696868686868686868686767676767676767676666),
    .INIT_14(256'h6D6D6D6D6D6D6D6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6A6A6A6A6A6A),
    .INIT_15(256'h7070707070707070706F6F6F6F6F6F6F6F6F6F6E6E6E6E6E6E6E6E6E6E6D6D6D),
    .INIT_16(256'h7373737373737373727272727272727272727271717171717171717171717070),
    .INIT_17(256'h7676767575757575757575757575757574747474747474747474747473737373),
    .INIT_18(256'h7878787878787877777777777777777777777777777676767676767676767676),
    .INIT_19(256'h7A7A7A7A7A7A7A7A797979797979797979797979797979797878787878787878),
    .INIT_1A(256'h7C7C7C7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7A7A7A7A7A7A7A7A7A7A),
    .INIT_1B(256'h7D7D7D7D7D7D7D7D7D7D7D7D7D7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C),
    .INIT_1C(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7D7D7D7D7D7D7D7D7D7D7D7D7D),
    .INIT_1D(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_1E(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_1F(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_20(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_21(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_22(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_23(256'h7D7D7D7D7D7D7D7D7D7D7D7D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_24(256'h7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7D7D7D7D7D7D7D7D7D7D7D7D7D7D),
    .INIT_25(256'h7A7A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7C7C7C7C),
    .INIT_26(256'h78787878787878797979797979797979797979797979797A7A7A7A7A7A7A7A7A),
    .INIT_27(256'h7676767676767676767677777777777777777777777777777878787878787878),
    .INIT_28(256'h7373737474747474747474747474747575757575757575757575757576767676),
    .INIT_29(256'h7071717171717171717171717272727272727272727272737373737373737373),
    .INIT_2A(256'h6D6D6E6E6E6E6E6E6E6E6E6E6F6F6F6F6F6F6F6F6F6F70707070707070707070),
    .INIT_2B(256'h6A6A6A6A6A6B6B6B6B6B6B6B6B6B6C6C6C6C6C6C6C6C6C6C6D6D6D6D6D6D6D6D),
    .INIT_2C(256'h666767676767676767676868686868686868686969696969696969696A6A6A6A),
    .INIT_2D(256'h6363636363636363646464646464646465656565656565656566666666666666),
    .INIT_2E(256'h5E5F5F5F5F5F5F5F606060606060606061616161616161616262626262626262),
    .INIT_2F(256'h5A5A5A5B5B5B5B5B5B5B5C5C5C5C5C5C5C5C5D5D5D5D5D5D5D5E5E5E5E5E5E5E),
    .INIT_30(256'h565656565656565757575757575758585858585858595959595959595A5A5A5A),
    .INIT_31(256'h5151515151525252525252535353535353535454545454545455555555555555),
    .INIT_32(256'h4C4C4C4C4D4D4D4D4D4D4D4E4E4E4E4E4E4F4F4F4F4F4F4F5050505050505151),
    .INIT_33(256'h47474747474848484848484949494949494A4A4A4A4A4A4A4B4B4B4B4B4B4C4C),
    .INIT_34(256'h4142424242424243434343434344444444444445454545454546464646464647),
    .INIT_35(256'h3C3C3C3D3D3D3D3D3D3E3E3E3E3E3E3F3F3F3F3F3F4040404040404141414141),
    .INIT_36(256'h3637373737373738383838383939393939393A3A3A3A3A3A3B3B3B3B3B3B3C3C),
    .INIT_37(256'h3131313131323232323232333333333334343434343435353535353636363636),
    .INIT_38(256'h2B2B2B2B2C2C2C2C2C2C2D2D2D2D2D2E2E2E2E2E2E2F2F2F2F2F303030303030),
    .INIT_39(256'h252525252626262626272727272727282828282829292929292A2A2A2A2A2A2B),
    .INIT_3A(256'h1F1F1F1F20202020202121212121212222222222232323232324242424242425),
    .INIT_3B(256'h19191919191A1A1A1A1A1B1B1B1B1B1C1C1C1C1C1D1D1D1D1D1D1E1E1E1E1E1F),
    .INIT_3C(256'h1213131313131414141414151515151516161616161717171717181818181818),
    .INIT_3D(256'h0C0C0D0D0D0D0D0E0E0E0E0E0F0F0F0F0F101010101011111111111212121212),
    .INIT_3E(256'h0606060707070707080808080809090909090A0A0A0A0A0A0B0B0B0B0B0C0C0C),
    .INIT_3F(256'h0000000000010101010102020202020303030303040404040405050505050606),
    .INIT_40(256'hF9FAFAFAFAFAFBFBFBFBFBFCFCFCFCFCFDFDFDFDFDFEFEFEFEFEFFFFFFFFFFFF),
    .INIT_41(256'hF3F3F4F4F4F4F4F5F5F5F5F5F5F6F6F6F6F6F7F7F7F7F7F8F8F8F8F8F9F9F9F9),
    .INIT_42(256'hEDEDEDEDEEEEEEEEEEEFEFEFEFEFF0F0F0F0F0F1F1F1F1F1F2F2F2F2F2F3F3F3),
    .INIT_43(256'hE7E7E7E7E7E8E8E8E8E8E9E9E9E9E9EAEAEAEAEAEBEBEBEBEBECECECECECEDED),
    .INIT_44(256'hE1E1E1E1E1E2E2E2E2E2E2E3E3E3E3E3E4E4E4E4E4E5E5E5E5E5E6E6E6E6E6E7),
    .INIT_45(256'hDBDBDBDBDBDBDCDCDCDCDCDDDDDDDDDDDEDEDEDEDEDEDFDFDFDFDFE0E0E0E0E0),
    .INIT_46(256'hD5D5D5D5D5D5D6D6D6D6D6D7D7D7D7D7D8D8D8D8D8D8D9D9D9D9D9DADADADADA),
    .INIT_47(256'hCFCFCFCFCFD0D0D0D0D0D1D1D1D1D1D1D2D2D2D2D2D3D3D3D3D3D3D4D4D4D4D4),
    .INIT_48(256'hC9C9C9C9CACACACACACBCBCBCBCBCBCCCCCCCCCCCDCDCDCDCDCDCECECECECECF),
    .INIT_49(256'hC3C4C4C4C4C4C4C5C5C5C5C5C5C6C6C6C6C6C6C7C7C7C7C7C8C8C8C8C8C8C9C9),
    .INIT_4A(256'hBEBEBEBEBFBFBFBFBFBFC0C0C0C0C0C0C1C1C1C1C1C1C2C2C2C2C2C2C3C3C3C3),
    .INIT_4B(256'hB9B9B9B9B9B9BABABABABABABBBBBBBBBBBBBCBCBCBCBCBCBDBDBDBDBDBDBEBE),
    .INIT_4C(256'hB3B4B4B4B4B4B4B5B5B5B5B5B5B5B6B6B6B6B6B6B7B7B7B7B7B7B8B8B8B8B8B8),
    .INIT_4D(256'hAEAFAFAFAFAFAFB0B0B0B0B0B0B0B1B1B1B1B1B1B2B2B2B2B2B2B2B3B3B3B3B3),
    .INIT_4E(256'hAAAAAAAAAAAAABABABABABABABACACACACACACACADADADADADADAEAEAEAEAEAE),
    .INIT_4F(256'hA5A5A5A6A6A6A6A6A6A6A7A7A7A7A7A7A7A8A8A8A8A8A8A8A9A9A9A9A9A9A9AA),
    .INIT_50(256'hA1A1A1A1A1A1A2A2A2A2A2A2A2A3A3A3A3A3A3A3A3A4A4A4A4A4A4A4A5A5A5A5),
    .INIT_51(256'h9D9D9D9D9D9D9D9E9E9E9E9E9E9E9E9F9F9F9F9F9F9F9FA0A0A0A0A0A0A0A1A1),
    .INIT_52(256'h9999999999999A9A9A9A9A9A9A9A9A9B9B9B9B9B9B9B9B9C9C9C9C9C9C9C9C9D),
    .INIT_53(256'h9595959696969696969696969797979797979797979898989898989898989999),
    .INIT_54(256'h9292929292929293939393939393939393949494949494949494959595959595),
    .INIT_55(256'h8F8F8F8F8F8F8F8F8F9090909090909090909091919191919191919191929292),
    .INIT_56(256'h8C8C8C8C8C8C8C8C8D8D8D8D8D8D8D8D8D8D8D8E8E8E8E8E8E8E8E8E8E8E8F8F),
    .INIT_57(256'h8989898A8A8A8A8A8A8A8A8A8A8A8A8A8B8B8B8B8B8B8B8B8B8B8B8B8C8C8C8C),
    .INIT_58(256'h8787878787878788888888888888888888888888888989898989898989898989),
    .INIT_59(256'h8585858585858585868686868686868686868686868686868787878787878787),
    .INIT_5A(256'h8383838484848484848484848484848484848484848485858585858585858585),
    .INIT_5B(256'h8282828282828282828282828283838383838383838383838383838383838383),
    .INIT_5C(256'h8181818181818181818181818181818181818182828282828282828282828282),
    .INIT_5D(256'h8080808080808080808080808080808080818181818181818181818181818181),
    .INIT_5E(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_5F(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_60(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_61(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_62(256'h8181818181818181818181818181808080808080808080808080808080808080),
    .INIT_63(256'h8282828282828282828282828181818181818181818181818181818181818181),
    .INIT_64(256'h8383838383838383838383838383838383838282828282828282828282828282),
    .INIT_65(256'h8585858585858585858484848484848484848484848484848484848483838383),
    .INIT_66(256'h8787878787878786868686868686868686868686868686858585858585858585),
    .INIT_67(256'h8989898989898989898988888888888888888888888888888787878787878787),
    .INIT_68(256'h8C8C8C8B8B8B8B8B8B8B8B8B8B8B8B8A8A8A8A8A8A8A8A8A8A8A8A8A89898989),
    .INIT_69(256'h8F8E8E8E8E8E8E8E8E8E8E8E8D8D8D8D8D8D8D8D8D8D8D8C8C8C8C8C8C8C8C8C),
    .INIT_6A(256'h929291919191919191919191909090909090909090908F8F8F8F8F8F8F8F8F8F),
    .INIT_6B(256'h9595959595949494949494949494939393939393939393939292929292929292),
    .INIT_6C(256'h9998989898989898989897979797979797979796969696969696969695959595),
    .INIT_6D(256'h9C9C9C9C9C9C9C9C9B9B9B9B9B9B9B9B9A9A9A9A9A9A9A9A9A99999999999999),
    .INIT_6E(256'hA1A0A0A0A0A0A0A09F9F9F9F9F9F9F9F9E9E9E9E9E9E9E9E9D9D9D9D9D9D9D9D),
    .INIT_6F(256'hA5A5A5A4A4A4A4A4A4A4A3A3A3A3A3A3A3A3A2A2A2A2A2A2A2A1A1A1A1A1A1A1),
    .INIT_70(256'hA9A9A9A9A9A9A9A8A8A8A8A8A8A8A7A7A7A7A7A7A7A6A6A6A6A6A6A6A5A5A5A5),
    .INIT_71(256'hAEAEAEAEAEADADADADADADACACACACACACACABABABABABABABAAAAAAAAAAAAAA),
    .INIT_72(256'hB3B3B3B3B2B2B2B2B2B2B2B1B1B1B1B1B1B0B0B0B0B0B0B0AFAFAFAFAFAFAEAE),
    .INIT_73(256'hB8B8B8B8B8B7B7B7B7B7B7B6B6B6B6B6B6B5B5B5B5B5B5B5B4B4B4B4B4B4B3B3),
    .INIT_74(256'hBEBDBDBDBDBDBDBCBCBCBCBCBCBBBBBBBBBBBBBABABABABABAB9B9B9B9B9B9B8),
    .INIT_75(256'hC3C3C3C2C2C2C2C2C2C1C1C1C1C1C1C0C0C0C0C0C0BFBFBFBFBFBFBEBEBEBEBE),
    .INIT_76(256'hC9C8C8C8C8C8C8C7C7C7C7C7C6C6C6C6C6C6C5C5C5C5C5C5C4C4C4C4C4C4C3C3),
    .INIT_77(256'hCECECECECECDCDCDCDCDCDCCCCCCCCCCCBCBCBCBCBCBCACACACACAC9C9C9C9C9),
    .INIT_78(256'hD4D4D4D4D3D3D3D3D3D3D2D2D2D2D2D1D1D1D1D1D1D0D0D0D0D0CFCFCFCFCFCF),
    .INIT_79(256'hDADADADAD9D9D9D9D9D8D8D8D8D8D8D7D7D7D7D7D6D6D6D6D6D5D5D5D5D5D5D4),
    .INIT_7A(256'hE0E0E0E0DFDFDFDFDFDEDEDEDEDEDEDDDDDDDDDDDCDCDCDCDCDBDBDBDBDBDBDA),
    .INIT_7B(256'hE6E6E6E6E6E5E5E5E5E5E4E4E4E4E4E3E3E3E3E3E3E2E2E2E2E2E1E1E1E1E1E0),
    .INIT_7C(256'hEDECECECECECEBEBEBEBEBEAEAEAEAEAE9E9E9E9E9E8E8E8E8E8E7E7E7E7E7E7),
    .INIT_7D(256'hF3F3F2F2F2F2F2F1F1F1F1F1F0F0F0F0F0EFEFEFEFEFEEEEEEEEEEEDEDEDEDED),
    .INIT_7E(256'hF9F9F9F8F8F8F8F8F7F7F7F7F7F6F6F6F6F6F5F5F5F5F5F5F4F4F4F4F4F3F3F3),
    .INIT_7F(256'hFFFFFFFFFFFEFEFEFEFEFDFDFDFDFDFCFCFCFCFCFBFBFBFBFBFAFAFAFAFAF9F9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    address_reg_386_reg_2
       (.ADDRARDADDR({1'b1,d0[31:20],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_address_reg_386_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_address_reg_386_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_address_reg_386_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_address_reg_386_reg_2_DOADO_UNCONNECTED[31:8],address_reg_386_reg_2_n_28,address_reg_386_reg_2_n_29,address_reg_386_reg_2_n_30,address_reg_386_reg_2_n_31,address_reg_386_reg_2_n_32,address_reg_386_reg_2_n_33,address_reg_386_reg_2_n_34,address_reg_386_reg_2_n_35}),
        .DOBDO(NLW_address_reg_386_reg_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_address_reg_386_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_address_reg_386_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_address_reg_386_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_address_reg_386_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_address_reg_386_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_address_reg_386_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(ap_enable_reg_pp0_iter2),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_address_reg_386_reg_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  FDRE ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter1_reg),
        .Q(ap_loop_exit_ready_pp0_iter2_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  FDRE ap_loop_exit_ready_pp0_iter4_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter3_reg),
        .Q(ap_loop_exit_ready_pp0_iter4_reg),
        .R(1'b0));
  FDRE \first_iter_0_reg_362_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\first_iter_0_reg_362_reg_n_0_[0] ),
        .Q(first_iter_0_reg_362_pp0_iter1_reg),
        .R(1'b0));
  FDRE \first_iter_0_reg_362_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_delay_pipe_U_n_2),
        .Q(\first_iter_0_reg_362_reg_n_0_[0] ),
        .R(1'b0));
  AudioPlatform_MultiSine_0_0_MultiSine_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U
       (.D(add_ln46_1_fu_208_p2),
        .Q(i6_fu_88),
        .ap_clk(ap_clk),
        .ap_condition_194(ap_condition_194),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready(ap_loop_exit_ready),
        .ap_loop_exit_ready_pp0_iter2_reg(ap_loop_exit_ready_pp0_iter2_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\i6_fu_88_reg[1] (flow_control_loop_delay_pipe_U_n_2),
        .\i6_fu_88_reg[3] ({i_fu_220_p2[3:2],flow_control_loop_delay_pipe_U_n_20,i_fu_220_p2[0]}),
        .icmp_ln46_fu_232_p2(icmp_ln46_fu_232_p2),
        .icmp_ln46_reg_382(icmp_ln46_reg_382),
        .\icmp_ln497_reg_157_reg[0] (flow_control_loop_delay_pipe_U_n_1),
        .\icmp_ln497_reg_157_reg[0]_0 (\icmp_ln497_reg_157_reg_n_0_[0] ),
        .icmp_ln49_fu_226_p2(icmp_ln49_fu_226_p2),
        .icmp_ln49_reg_377(icmp_ln49_reg_377),
        .\indvar_flatten3_fu_80_reg[8] (indvar_flatten3_fu_80),
        .rewind_ap_ready_reg(rewind_ap_ready_reg),
        .select_ln49_fu_194_p3(select_ln49_fu_194_p3));
  FDRE #(
    .INIT(1'b0)) 
    \i6_fu_88_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(i_fu_220_p2[0]),
        .Q(i6_fu_88[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i6_fu_88_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(flow_control_loop_delay_pipe_U_n_20),
        .Q(i6_fu_88[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i6_fu_88_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(i_fu_220_p2[2]),
        .Q(i6_fu_88[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i6_fu_88_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(i_fu_220_p2[3]),
        .Q(i6_fu_88[3]),
        .R(1'b0));
  FDRE \icmp_ln46_reg_382_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(icmp_ln46_fu_232_p2),
        .Q(icmp_ln46_reg_382),
        .R(1'b0));
  FDRE \icmp_ln497_reg_157_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln497_reg_157_reg_n_0_[0] ),
        .Q(icmp_ln497_reg_157_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln497_reg_157_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_delay_pipe_U_n_1),
        .Q(\icmp_ln497_reg_157_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \icmp_ln49_reg_377_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(icmp_ln49_fu_226_p2),
        .Q(icmp_ln49_reg_377),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[0]),
        .Q(indvar_flatten3_fu_80[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[1]),
        .Q(indvar_flatten3_fu_80[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[2]),
        .Q(indvar_flatten3_fu_80[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[3]),
        .Q(indvar_flatten3_fu_80[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[4]),
        .Q(indvar_flatten3_fu_80[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[5]),
        .Q(indvar_flatten3_fu_80[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[6]),
        .Q(indvar_flatten3_fu_80[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[7]),
        .Q(indvar_flatten3_fu_80[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten3_fu_80_reg[8] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter0),
        .D(add_ln46_1_fu_208_p2[8]),
        .Q(indvar_flatten3_fu_80[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \indvars_iv44_fu_84[0]_i_1 
       (.I0(add_ln468_fu_92_reg[0]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[0]),
        .O(zext_ln46_fu_279_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \indvars_iv44_fu_84[1]_i_1 
       (.I0(add_ln468_fu_92_reg[1]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[1]),
        .O(zext_ln46_fu_279_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \indvars_iv44_fu_84[2]_i_1 
       (.I0(add_ln468_fu_92_reg[2]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[2]),
        .O(zext_ln46_fu_279_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \indvars_iv44_fu_84[3]_i_1 
       (.I0(add_ln468_fu_92_reg[3]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[3]),
        .O(zext_ln46_fu_279_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \indvars_iv44_fu_84[4]_i_1 
       (.I0(add_ln468_fu_92_reg[4]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[4]),
        .O(zext_ln46_fu_279_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \indvars_iv44_fu_84[5]_i_2 
       (.I0(add_ln468_fu_92_reg[5]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[5]),
        .O(zext_ln46_fu_279_p1[5]));
  FDRE #(
    .INIT(1'b0)) 
    \indvars_iv44_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(zext_ln46_fu_279_p1[0]),
        .Q(indvars_iv44_fu_84[0]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \indvars_iv44_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(zext_ln46_fu_279_p1[1]),
        .Q(indvars_iv44_fu_84[1]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \indvars_iv44_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(zext_ln46_fu_279_p1[2]),
        .Q(indvars_iv44_fu_84[2]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \indvars_iv44_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(zext_ln46_fu_279_p1[3]),
        .Q(indvars_iv44_fu_84[3]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \indvars_iv44_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(zext_ln46_fu_279_p1[4]),
        .Q(indvars_iv44_fu_84[4]),
        .R(ap_condition_194));
  FDRE #(
    .INIT(1'b0)) 
    \indvars_iv44_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp0_iter2),
        .D(zext_ln46_fu_279_p1[5]),
        .Q(indvars_iv44_fu_84[5]),
        .R(ap_condition_194));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \sineIdx5_fu_96[0]_i_1 
       (.I0(add_ln468_fu_92_reg[0]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[0]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(first_iter_0_reg_362_pp0_iter1_reg),
        .I5(sineIdx5_fu_96[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \sineIdx5_fu_96[1]_i_1 
       (.I0(add_ln468_fu_92_reg[1]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[1]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(first_iter_0_reg_362_pp0_iter1_reg),
        .I5(sineIdx5_fu_96[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \sineIdx5_fu_96[2]_i_1 
       (.I0(add_ln468_fu_92_reg[2]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[2]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(first_iter_0_reg_362_pp0_iter1_reg),
        .I5(sineIdx5_fu_96[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \sineIdx5_fu_96[3]_i_1 
       (.I0(add_ln468_fu_92_reg[3]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[3]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(first_iter_0_reg_362_pp0_iter1_reg),
        .I5(sineIdx5_fu_96[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hB8000000B8FFFFFF)) 
    \sineIdx5_fu_96[4]_i_1 
       (.I0(add_ln468_fu_92_reg[4]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[4]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(first_iter_0_reg_362_pp0_iter1_reg),
        .I5(sineIdx5_fu_96[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \sineIdx5_fu_96[5]_i_1 
       (.I0(add_ln468_fu_92_reg[5]),
        .I1(icmp_ln497_reg_157_pp0_iter1_reg),
        .I2(indvars_iv44_fu_84[5]),
        .I3(sineIdx5_fu_961),
        .I4(sineIdx5_fu_96[4]),
        .I5(sineIdx5_fu_96[5]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'h00077770)) 
    \sineIdx5_fu_96[6]_i_1 
       (.I0(first_iter_0_reg_362_pp0_iter1_reg),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(sineIdx5_fu_96[4]),
        .I3(sineIdx5_fu_96[5]),
        .I4(sineIdx5_fu_96[6]),
        .O(\sineIdx5_fu_96[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000057A857A857A8)) 
    \sineIdx5_fu_96[7]_i_1 
       (.I0(sineIdx5_fu_96[6]),
        .I1(sineIdx5_fu_96[5]),
        .I2(sineIdx5_fu_96[4]),
        .I3(sineIdx5_fu_96[7]),
        .I4(first_iter_0_reg_362_pp0_iter1_reg),
        .I5(ap_enable_reg_pp0_iter2),
        .O(p_2_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sineIdx5_fu_96[8]_i_1 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(first_iter_0_reg_362_pp0_iter1_reg),
        .O(sineIdx5_fu_961));
  LUT3 #(
    .INIT(8'hEA)) 
    \sineIdx5_fu_96[8]_i_2 
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(first_iter_0_reg_362_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2),
        .O(\sineIdx5_fu_96[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h57FFA800)) 
    \sineIdx5_fu_96[8]_i_3 
       (.I0(sineIdx5_fu_96[7]),
        .I1(sineIdx5_fu_96[4]),
        .I2(sineIdx5_fu_96[5]),
        .I3(sineIdx5_fu_96[6]),
        .I4(sineIdx5_fu_96[8]),
        .O(\sineIdx5_fu_96[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[0] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(sineIdx5_fu_96[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[1] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(sineIdx5_fu_96[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[2] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(sineIdx5_fu_96[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[3] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(sineIdx5_fu_96[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[4] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(sineIdx5_fu_96[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[5] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(sineIdx5_fu_96[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[6] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(\sineIdx5_fu_96[6]_i_1_n_0 ),
        .Q(sineIdx5_fu_96[6]),
        .R(sineIdx5_fu_961));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[7] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(sineIdx5_fu_96[7]),
        .R(sineIdx5_fu_961));
  FDRE #(
    .INIT(1'b0)) 
    \sineIdx5_fu_96_reg[8] 
       (.C(ap_clk),
        .CE(\sineIdx5_fu_96[8]_i_2_n_0 ),
        .D(\sineIdx5_fu_96[8]_i_3_n_0 ),
        .Q(sineIdx5_fu_96[8]),
        .R(sineIdx5_fu_961));
endmodule

(* ORIG_REF_NAME = "MultiSine_BUS_A_s_axi" *) 
module AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi
   (ap_rst_n_inv,
    interrupt,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_BUS_A_BVALID,
    s_axi_BUS_A_WREADY,
    s_axi_BUS_A_RVALID,
    ap_start,
    E,
    s_axi_BUS_A_RDATA,
    d0,
    ap_clk,
    Q,
    out,
    ap_enable_reg_pp0_iter3,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_RREADY,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_BREADY,
    rewind_ap_ready_reg,
    ap_enable_reg_pp0_iter1,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter4,
    s_axi_BUS_A_AWADDR,
    ap_rst_n,
    ap_loop_exit_ready_pp0_iter4_reg,
    ap_loop_exit_ready_pp0_iter2_reg,
    address_reg_386_reg_0,
    select_ln49_fu_194_p3);
  output ap_rst_n_inv;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_BUS_A_BVALID;
  output s_axi_BUS_A_WREADY;
  output s_axi_BUS_A_RVALID;
  output ap_start;
  output [0:0]E;
  output [31:0]s_axi_BUS_A_RDATA;
  output [31:0]d0;
  input ap_clk;
  input [8:0]Q;
  input [23:0]out;
  input ap_enable_reg_pp0_iter3;
  input s_axi_BUS_A_ARVALID;
  input s_axi_BUS_A_RREADY;
  input [11:0]s_axi_BUS_A_ARADDR;
  input [3:0]s_axi_BUS_A_WSTRB;
  input s_axi_BUS_A_WVALID;
  input [31:0]s_axi_BUS_A_WDATA;
  input s_axi_BUS_A_AWVALID;
  input s_axi_BUS_A_BREADY;
  input rewind_ap_ready_reg;
  input ap_enable_reg_pp0_iter1;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter4;
  input [9:0]s_axi_BUS_A_AWADDR;
  input ap_rst_n;
  input ap_loop_exit_ready_pp0_iter4_reg;
  input ap_loop_exit_ready_pp0_iter2_reg;
  input [31:0]address_reg_386_reg_0;
  input [2:0]select_ln49_fu_194_p3;

  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_rstate_reg_n_0_[2] ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[2] ;
  wire [8:0]Q;
  wire [31:0]address_reg_386_reg_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter4_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire [31:0]d0;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start1;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_ap_start_i_4_n_0;
  wire int_ap_start_i_5_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_phaseInc_n_1;
  wire int_phaseInc_n_11;
  wire int_phaseInc_n_12;
  wire int_phaseInc_n_13;
  wire int_phaseInc_n_14;
  wire int_phaseInc_n_15;
  wire int_phaseInc_n_16;
  wire int_phaseInc_n_17;
  wire int_phaseInc_n_18;
  wire int_phaseInc_n_19;
  wire int_phaseInc_n_2;
  wire int_phaseInc_n_20;
  wire int_phaseInc_n_21;
  wire int_phaseInc_n_22;
  wire int_phaseInc_n_23;
  wire int_phaseInc_n_24;
  wire int_phaseInc_n_25;
  wire int_phaseInc_n_26;
  wire int_phaseInc_n_27;
  wire int_phaseInc_n_28;
  wire int_phaseInc_n_29;
  wire int_phaseInc_n_3;
  wire int_phaseInc_n_30;
  wire int_phaseInc_n_31;
  wire int_phaseInc_n_32;
  wire int_phaseInc_n_33;
  wire int_phaseInc_n_34;
  wire int_phaseInc_n_35;
  wire int_phaseInc_n_36;
  wire int_phaseInc_n_4;
  wire int_phaseInc_n_5;
  wire int_phaseInc_n_6;
  wire int_phaseInc_read;
  wire int_phaseInc_read0;
  wire int_phaseInc_read_i_2_n_0;
  wire int_phaseInc_write0;
  wire int_phaseInc_write_i_1_n_0;
  wire int_phaseInc_write_i_3_n_0;
  wire int_phaseInc_write_reg_n_0;
  wire [2:0]int_samples_address1;
  wire int_samples_ce1;
  wire [31:0]int_samples_q1;
  wire int_samples_read;
  wire int_samples_read0;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire interrupt;
  wire [23:0]out;
  wire [7:2]p_0_in;
  wire [2:0]p_0_in__0;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire rewind_ap_ready_reg;
  wire [11:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARVALID;
  wire [9:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [31:0]s_axi_BUS_A_RDATA;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire s_axi_BUS_A_WREADY;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire [2:0]select_ln49_fu_194_p3;
  wire \waddr_reg_n_0_[10] ;
  wire \waddr_reg_n_0_[11] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire \waddr_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'h474747F747474747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_BUS_A_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I3(int_samples_read),
        .I4(int_phaseInc_read),
        .I5(s_axi_BUS_A_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8F88888888)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(s_axi_BUS_A_RREADY),
        .I3(int_phaseInc_read),
        .I4(int_samples_read),
        .I5(\FSM_onehot_rstate_reg_n_0_[2] ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBA30BA3F)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_BUS_A_BREADY),
        .I1(s_axi_BUS_A_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_BUS_A_BVALID),
        .I4(\FSM_onehot_wstate_reg_n_0_[2] ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF888F888F888F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_AWVALID),
        .I2(s_axi_BUS_A_WVALID),
        .I3(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I4(s_axi_BUS_A_ARVALID),
        .I5(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7000FFFF70007000)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I3(s_axi_BUS_A_WVALID),
        .I4(s_axi_BUS_A_BREADY),
        .I5(s_axi_BUS_A_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_BUS_A_BVALID),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hBA)) 
    auto_restart_status_i_1
       (.I0(p_0_in[7]),
        .I1(ap_idle),
        .I2(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h000000000000000D)) 
    int_ap_idle_i_1
       (.I0(ap_start),
        .I1(rewind_ap_ready_reg),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(ap_enable_reg_pp0_iter3),
        .I5(ap_enable_reg_pp0_iter4),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_0_in[2]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h7530)) 
    int_ap_ready_i_1
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(p_0_in[7]),
        .I2(ap_loop_exit_ready_pp0_iter2_reg),
        .I3(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFBBBF888)) 
    int_ap_start_i_1
       (.I0(p_0_in[7]),
        .I1(ap_loop_exit_ready_pp0_iter2_reg),
        .I2(int_ap_start1),
        .I3(s_axi_BUS_A_WDATA[0]),
        .I4(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    int_ap_start_i_2
       (.I0(int_ap_start_i_3_n_0),
        .I1(int_ap_start_i_4_n_0),
        .I2(int_ap_start_i_5_n_0),
        .I3(p_0_in__0[1]),
        .I4(s_axi_BUS_A_WSTRB[0]),
        .I5(p_0_in__0[0]),
        .O(int_ap_start1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    int_ap_start_i_3
       (.I0(s_axi_BUS_A_WVALID),
        .I1(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I2(s_axi_BUS_A_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_ap_start_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_start_i_4
       (.I0(\waddr_reg_n_0_[8] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\waddr_reg_n_0_[6] ),
        .I3(p_0_in__0[2]),
        .O(int_ap_start_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_start_i_5
       (.I0(\waddr_reg_n_0_[10] ),
        .I1(\waddr_reg_n_0_[7] ),
        .I2(\waddr_reg_n_0_[11] ),
        .I3(\waddr_reg_n_0_[9] ),
        .O(int_ap_start_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    int_auto_restart_i_1
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(s_axi_BUS_A_WSTRB[0]),
        .I4(p_0_in__0[0]),
        .I5(p_0_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_0_in[7]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    int_gie_i_1
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[0]),
        .I4(s_axi_BUS_A_WSTRB[0]),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \int_ier[1]_i_2 
       (.I0(int_ap_start_i_3_n_0),
        .I1(int_ap_start_i_4_n_0),
        .I2(\waddr_reg_n_0_[10] ),
        .I3(\waddr_reg_n_0_[7] ),
        .I4(\waddr_reg_n_0_[11] ),
        .I5(\waddr_reg_n_0_[9] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hA8)) 
    int_interrupt_i_1
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_loop_exit_ready_pp0_iter4_reg),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \int_isr[0]_i_2 
       (.I0(p_0_in__0[0]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(p_0_in__0[1]),
        .I3(int_ap_start_i_3_n_0),
        .I4(int_ap_start_i_4_n_0),
        .I5(int_ap_start_i_5_n_0),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(ap_loop_exit_ready_pp0_iter2_reg),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram int_phaseInc
       (.D({int_phaseInc_n_1,int_phaseInc_n_2,int_phaseInc_n_3,int_phaseInc_n_4,int_phaseInc_n_5,int_phaseInc_n_6}),
        .E(E),
        .Q(p_0_in__0),
        .address_reg_386_reg_0(address_reg_386_reg_0),
        .ap_clk(ap_clk),
        .d0(d0),
        .int_ap_ready(int_ap_ready),
        .int_phaseInc_read(int_phaseInc_read),
        .int_samples_address1(int_samples_address1),
        .int_samples_ce1(int_samples_ce1),
        .int_samples_q1(int_samples_q1),
        .interrupt(interrupt),
        .mem_reg(\FSM_onehot_rstate_reg[1]_0 ),
        .p_0_in({p_0_in[7],p_0_in[2]}),
        .\q0_reg[0]_0 (\FSM_onehot_wstate_reg_n_0_[2] ),
        .\q0_reg[0]_1 (ap_start),
        .\q1_reg[0]_0 (int_phaseInc_write_reg_n_0),
        .\q1_reg[10]_0 (int_phaseInc_n_32),
        .\q1_reg[11]_0 (int_phaseInc_n_31),
        .\q1_reg[12]_0 (int_phaseInc_n_30),
        .\q1_reg[13]_0 (int_phaseInc_n_29),
        .\q1_reg[14]_0 (int_phaseInc_n_28),
        .\q1_reg[15]_0 (int_phaseInc_n_27),
        .\q1_reg[16]_0 (int_phaseInc_n_26),
        .\q1_reg[17]_0 (int_phaseInc_n_25),
        .\q1_reg[18]_0 (int_phaseInc_n_24),
        .\q1_reg[19]_0 (int_phaseInc_n_23),
        .\q1_reg[20]_0 (int_phaseInc_n_22),
        .\q1_reg[21]_0 (int_phaseInc_n_21),
        .\q1_reg[22]_0 (int_phaseInc_n_20),
        .\q1_reg[23]_0 (int_phaseInc_n_19),
        .\q1_reg[24]_0 (int_phaseInc_n_18),
        .\q1_reg[25]_0 (int_phaseInc_n_17),
        .\q1_reg[26]_0 (int_phaseInc_n_16),
        .\q1_reg[27]_0 (int_phaseInc_n_15),
        .\q1_reg[28]_0 (int_phaseInc_n_14),
        .\q1_reg[29]_0 (int_phaseInc_n_13),
        .\q1_reg[30]_0 (int_phaseInc_n_12),
        .\q1_reg[31]_0 (int_phaseInc_n_11),
        .\q1_reg[4]_0 (int_phaseInc_n_36),
        .\q1_reg[5]_0 (int_phaseInc_n_35),
        .\q1_reg[6]_0 (int_phaseInc_n_34),
        .\q1_reg[8]_0 (int_phaseInc_n_33),
        .\rdata_reg[0] (\rdata[0]_i_2_n_0 ),
        .\rdata_reg[0]_0 (\rdata[0]_i_3_n_0 ),
        .\rdata_reg[1] (\rdata[1]_i_2_n_0 ),
        .\rdata_reg[1]_0 (\rdata[1]_i_3_n_0 ),
        .\rdata_reg[9] (\rdata[9]_i_2_n_0 ),
        .rewind_ap_ready_reg(rewind_ap_ready_reg),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR[4:2]),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID),
        .s_axi_BUS_A_WDATA(s_axi_BUS_A_WDATA),
        .s_axi_BUS_A_WSTRB(s_axi_BUS_A_WSTRB),
        .s_axi_BUS_A_WVALID(s_axi_BUS_A_WVALID),
        .select_ln49_fu_194_p3(select_ln49_fu_194_p3));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    int_phaseInc_read_i_1
       (.I0(int_phaseInc_read_i_2_n_0),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[7]),
        .I3(s_axi_BUS_A_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(s_axi_BUS_A_ARADDR[5]),
        .O(int_phaseInc_read0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_phaseInc_read_i_2
       (.I0(s_axi_BUS_A_ARADDR[9]),
        .I1(s_axi_BUS_A_ARADDR[8]),
        .I2(s_axi_BUS_A_ARADDR[10]),
        .I3(s_axi_BUS_A_ARADDR[11]),
        .O(int_phaseInc_read_i_2_n_0));
  FDRE int_phaseInc_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_phaseInc_read0),
        .Q(int_phaseInc_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF8FFFFFFF0000)) 
    int_phaseInc_write_i_1
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I3(s_axi_BUS_A_WVALID),
        .I4(int_phaseInc_write0),
        .I5(int_phaseInc_write_reg_n_0),
        .O(int_phaseInc_write_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    int_phaseInc_write_i_2
       (.I0(s_axi_BUS_A_AWADDR[7]),
        .I1(s_axi_BUS_A_AWADDR[3]),
        .I2(s_axi_BUS_A_AWADDR[5]),
        .I3(int_phaseInc_write_i_3_n_0),
        .O(int_phaseInc_write0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    int_phaseInc_write_i_3
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_AWVALID),
        .I2(s_axi_BUS_A_AWADDR[9]),
        .I3(s_axi_BUS_A_AWADDR[8]),
        .I4(s_axi_BUS_A_AWADDR[6]),
        .I5(s_axi_BUS_A_AWADDR[4]),
        .O(int_phaseInc_write_i_3_n_0));
  FDRE int_phaseInc_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_phaseInc_write_i_1_n_0),
        .Q(int_phaseInc_write_reg_n_0),
        .R(ap_rst_n_inv));
  AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram__parameterized0 int_samples
       (.Q(Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .int_samples_ce1(int_samples_ce1),
        .int_samples_q1(int_samples_q1),
        .mem_reg_0(int_samples_address1),
        .mem_reg_1(\FSM_onehot_rstate_reg[1]_0 ),
        .mem_reg_2({\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] ,\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] }),
        .out(out),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR[10:5]),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    int_samples_read_i_1
       (.I0(s_axi_BUS_A_ARADDR[11]),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_BUS_A_ARVALID),
        .O(int_samples_read0));
  FDRE int_samples_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_samples_read0),
        .Q(int_samples_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h22E2FFFF22E222E2)) 
    int_task_ap_done_i_1
       (.I0(ap_loop_exit_ready_pp0_iter4_reg),
        .I1(auto_restart_status_reg_n_0),
        .I2(ap_idle),
        .I3(p_0_in[2]),
        .I4(\rdata[9]_i_2_n_0 ),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \rdata[0]_i_2 
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(s_axi_BUS_A_ARADDR[7]),
        .I3(s_axi_BUS_A_ARADDR[6]),
        .I4(int_phaseInc_read_i_2_n_0),
        .I5(\rdata[1]_i_4_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_3 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(int_gie_reg_n_0),
        .I2(s_axi_BUS_A_ARADDR[2]),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(ap_start),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F57F7FFFF57F7)) 
    \rdata[1]_i_2 
       (.I0(\rdata[1]_i_4_n_0 ),
        .I1(int_task_ap_done),
        .I2(s_axi_BUS_A_ARADDR[3]),
        .I3(\int_ier_reg_n_0_[1] ),
        .I4(s_axi_BUS_A_ARADDR[2]),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata[1]_i_3 
       (.I0(int_phaseInc_read_i_2_n_0),
        .I1(s_axi_BUS_A_ARADDR[6]),
        .I2(s_axi_BUS_A_ARADDR[7]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .O(\rdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rdata[1]_i_4 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[0]),
        .O(\rdata[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_1 
       (.I0(s_axi_BUS_A_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \rdata[31]_i_2 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(int_samples_read),
        .I3(int_phaseInc_read),
        .O(\rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rdata[9]_i_2 
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(s_axi_BUS_A_ARADDR[7]),
        .I3(s_axi_BUS_A_ARADDR[6]),
        .I4(int_phaseInc_read_i_2_n_0),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \rdata[9]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[2]),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_BUS_A_ARVALID),
        .I3(s_axi_BUS_A_ARADDR[1]),
        .I4(s_axi_BUS_A_ARADDR[0]),
        .I5(s_axi_BUS_A_ARADDR[3]),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_6),
        .Q(s_axi_BUS_A_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_32),
        .Q(s_axi_BUS_A_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_31),
        .Q(s_axi_BUS_A_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_30),
        .Q(s_axi_BUS_A_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_29),
        .Q(s_axi_BUS_A_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_28),
        .Q(s_axi_BUS_A_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_27),
        .Q(s_axi_BUS_A_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_26),
        .Q(s_axi_BUS_A_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_25),
        .Q(s_axi_BUS_A_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_24),
        .Q(s_axi_BUS_A_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_23),
        .Q(s_axi_BUS_A_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_5),
        .Q(s_axi_BUS_A_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_22),
        .Q(s_axi_BUS_A_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_21),
        .Q(s_axi_BUS_A_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_20),
        .Q(s_axi_BUS_A_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_19),
        .Q(s_axi_BUS_A_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_18),
        .Q(s_axi_BUS_A_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_17),
        .Q(s_axi_BUS_A_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_16),
        .Q(s_axi_BUS_A_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_15),
        .Q(s_axi_BUS_A_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_14),
        .Q(s_axi_BUS_A_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_13),
        .Q(s_axi_BUS_A_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_4),
        .Q(s_axi_BUS_A_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_12),
        .Q(s_axi_BUS_A_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_11),
        .Q(s_axi_BUS_A_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_3),
        .Q(s_axi_BUS_A_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_36),
        .Q(s_axi_BUS_A_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_35),
        .Q(s_axi_BUS_A_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_34),
        .Q(s_axi_BUS_A_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_2),
        .Q(s_axi_BUS_A_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_33),
        .Q(s_axi_BUS_A_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_phaseInc_n_1),
        .Q(s_axi_BUS_A_RDATA[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    s_axi_BUS_A_RVALID_INST_0
       (.I0(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I1(int_samples_read),
        .I2(int_phaseInc_read),
        .O(s_axi_BUS_A_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    s_axi_BUS_A_WREADY_INST_0
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .O(s_axi_BUS_A_WREADY));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[11]_i_1 
       (.I0(s_axi_BUS_A_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(aw_hs));
  FDRE \waddr_reg[10] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[8]),
        .Q(\waddr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \waddr_reg[11] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[9]),
        .Q(\waddr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[0]),
        .Q(p_0_in__0[0]),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[1]),
        .Q(p_0_in__0[1]),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[2]),
        .Q(p_0_in__0[2]),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[3]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[4]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[5]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \waddr_reg[8] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[6]),
        .Q(\waddr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \waddr_reg[9] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_BUS_A_AWADDR[7]),
        .Q(\waddr_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "MultiSine_BUS_A_s_axi_ram" *) 
module AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram
   (int_samples_ce1,
    D,
    int_samples_address1,
    E,
    \q1_reg[31]_0 ,
    \q1_reg[30]_0 ,
    \q1_reg[29]_0 ,
    \q1_reg[28]_0 ,
    \q1_reg[27]_0 ,
    \q1_reg[26]_0 ,
    \q1_reg[25]_0 ,
    \q1_reg[24]_0 ,
    \q1_reg[23]_0 ,
    \q1_reg[22]_0 ,
    \q1_reg[21]_0 ,
    \q1_reg[20]_0 ,
    \q1_reg[19]_0 ,
    \q1_reg[18]_0 ,
    \q1_reg[17]_0 ,
    \q1_reg[16]_0 ,
    \q1_reg[15]_0 ,
    \q1_reg[14]_0 ,
    \q1_reg[13]_0 ,
    \q1_reg[12]_0 ,
    \q1_reg[11]_0 ,
    \q1_reg[10]_0 ,
    \q1_reg[8]_0 ,
    \q1_reg[6]_0 ,
    \q1_reg[5]_0 ,
    \q1_reg[4]_0 ,
    d0,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_WVALID,
    \q1_reg[0]_0 ,
    mem_reg,
    s_axi_BUS_A_ARVALID,
    \q0_reg[0]_0 ,
    s_axi_BUS_A_WDATA,
    int_phaseInc_read,
    int_samples_q1,
    \rdata_reg[0] ,
    \rdata_reg[0]_0 ,
    \rdata_reg[1] ,
    \rdata_reg[1]_0 ,
    \rdata_reg[9] ,
    interrupt,
    p_0_in,
    int_ap_ready,
    s_axi_BUS_A_ARADDR,
    Q,
    \q0_reg[0]_1 ,
    rewind_ap_ready_reg,
    address_reg_386_reg_0,
    ap_clk,
    select_ln49_fu_194_p3);
  output int_samples_ce1;
  output [5:0]D;
  output [2:0]int_samples_address1;
  output [0:0]E;
  output \q1_reg[31]_0 ;
  output \q1_reg[30]_0 ;
  output \q1_reg[29]_0 ;
  output \q1_reg[28]_0 ;
  output \q1_reg[27]_0 ;
  output \q1_reg[26]_0 ;
  output \q1_reg[25]_0 ;
  output \q1_reg[24]_0 ;
  output \q1_reg[23]_0 ;
  output \q1_reg[22]_0 ;
  output \q1_reg[21]_0 ;
  output \q1_reg[20]_0 ;
  output \q1_reg[19]_0 ;
  output \q1_reg[18]_0 ;
  output \q1_reg[17]_0 ;
  output \q1_reg[16]_0 ;
  output \q1_reg[15]_0 ;
  output \q1_reg[14]_0 ;
  output \q1_reg[13]_0 ;
  output \q1_reg[12]_0 ;
  output \q1_reg[11]_0 ;
  output \q1_reg[10]_0 ;
  output \q1_reg[8]_0 ;
  output \q1_reg[6]_0 ;
  output \q1_reg[5]_0 ;
  output \q1_reg[4]_0 ;
  output [31:0]d0;
  input [3:0]s_axi_BUS_A_WSTRB;
  input s_axi_BUS_A_WVALID;
  input \q1_reg[0]_0 ;
  input mem_reg;
  input s_axi_BUS_A_ARVALID;
  input \q0_reg[0]_0 ;
  input [31:0]s_axi_BUS_A_WDATA;
  input int_phaseInc_read;
  input [31:0]int_samples_q1;
  input \rdata_reg[0] ;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[1] ;
  input \rdata_reg[1]_0 ;
  input \rdata_reg[9] ;
  input interrupt;
  input [1:0]p_0_in;
  input int_ap_ready;
  input [2:0]s_axi_BUS_A_ARADDR;
  input [2:0]Q;
  input \q0_reg[0]_1 ;
  input rewind_ap_ready_reg;
  input [31:0]address_reg_386_reg_0;
  input ap_clk;
  input [2:0]select_ln49_fu_194_p3;

  wire [5:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [31:0]address_reg_386_reg_0;
  wire ap_clk;
  wire [31:0]d0;
  wire int_ap_ready;
  wire int_phaseInc_ce1;
  wire int_phaseInc_read;
  wire [2:0]int_samples_address1;
  wire int_samples_ce1;
  wire [31:0]int_samples_q1;
  wire interrupt;
  wire mem_reg;
  wire [1:0]p_0_in;
  wire [24:0]p_0_in0_out;
  wire [31:24]p_1_in;
  wire [31:0]q0;
  wire [31:0]q00;
  wire \q0_reg[0]_0 ;
  wire \q0_reg[0]_1 ;
  wire [31:0]q10;
  wire \q1_reg[0]_0 ;
  wire \q1_reg[10]_0 ;
  wire \q1_reg[11]_0 ;
  wire \q1_reg[12]_0 ;
  wire \q1_reg[13]_0 ;
  wire \q1_reg[14]_0 ;
  wire \q1_reg[15]_0 ;
  wire \q1_reg[16]_0 ;
  wire \q1_reg[17]_0 ;
  wire \q1_reg[18]_0 ;
  wire \q1_reg[19]_0 ;
  wire \q1_reg[20]_0 ;
  wire \q1_reg[21]_0 ;
  wire \q1_reg[22]_0 ;
  wire \q1_reg[23]_0 ;
  wire \q1_reg[24]_0 ;
  wire \q1_reg[25]_0 ;
  wire \q1_reg[26]_0 ;
  wire \q1_reg[27]_0 ;
  wire \q1_reg[28]_0 ;
  wire \q1_reg[29]_0 ;
  wire \q1_reg[30]_0 ;
  wire \q1_reg[31]_0 ;
  wire \q1_reg[4]_0 ;
  wire \q1_reg[5]_0 ;
  wire \q1_reg[6]_0 ;
  wire \q1_reg[8]_0 ;
  wire \q1_reg_n_0_[0] ;
  wire \q1_reg_n_0_[10] ;
  wire \q1_reg_n_0_[11] ;
  wire \q1_reg_n_0_[12] ;
  wire \q1_reg_n_0_[13] ;
  wire \q1_reg_n_0_[14] ;
  wire \q1_reg_n_0_[15] ;
  wire \q1_reg_n_0_[16] ;
  wire \q1_reg_n_0_[17] ;
  wire \q1_reg_n_0_[18] ;
  wire \q1_reg_n_0_[19] ;
  wire \q1_reg_n_0_[1] ;
  wire \q1_reg_n_0_[20] ;
  wire \q1_reg_n_0_[21] ;
  wire \q1_reg_n_0_[22] ;
  wire \q1_reg_n_0_[23] ;
  wire \q1_reg_n_0_[24] ;
  wire \q1_reg_n_0_[25] ;
  wire \q1_reg_n_0_[26] ;
  wire \q1_reg_n_0_[27] ;
  wire \q1_reg_n_0_[28] ;
  wire \q1_reg_n_0_[29] ;
  wire \q1_reg_n_0_[2] ;
  wire \q1_reg_n_0_[30] ;
  wire \q1_reg_n_0_[31] ;
  wire \q1_reg_n_0_[3] ;
  wire \q1_reg_n_0_[4] ;
  wire \q1_reg_n_0_[5] ;
  wire \q1_reg_n_0_[6] ;
  wire \q1_reg_n_0_[7] ;
  wire \q1_reg_n_0_[8] ;
  wire \q1_reg_n_0_[9] ;
  wire ram_reg_0_7_0_5_i_10_n_0;
  wire ram_reg_0_7_0_5_i_1_n_0;
  wire ram_reg_0_7_0_5_i_1_n_1;
  wire ram_reg_0_7_0_5_i_1_n_2;
  wire ram_reg_0_7_0_5_i_1_n_3;
  wire ram_reg_0_7_0_5_i_2_n_0;
  wire ram_reg_0_7_0_5_i_2_n_1;
  wire ram_reg_0_7_0_5_i_2_n_2;
  wire ram_reg_0_7_0_5_i_2_n_3;
  wire ram_reg_0_7_0_5_i_3_n_0;
  wire ram_reg_0_7_0_5_i_4_n_0;
  wire ram_reg_0_7_0_5_i_5_n_0;
  wire ram_reg_0_7_0_5_i_6_n_0;
  wire ram_reg_0_7_0_5_i_7_n_0;
  wire ram_reg_0_7_0_5_i_8_n_0;
  wire ram_reg_0_7_0_5_i_9_n_0;
  wire ram_reg_0_7_12_17_i_10_n_0;
  wire ram_reg_0_7_12_17_i_1_n_0;
  wire ram_reg_0_7_12_17_i_1_n_1;
  wire ram_reg_0_7_12_17_i_1_n_2;
  wire ram_reg_0_7_12_17_i_1_n_3;
  wire ram_reg_0_7_12_17_i_2_n_0;
  wire ram_reg_0_7_12_17_i_2_n_1;
  wire ram_reg_0_7_12_17_i_2_n_2;
  wire ram_reg_0_7_12_17_i_2_n_3;
  wire ram_reg_0_7_12_17_i_3_n_0;
  wire ram_reg_0_7_12_17_i_4_n_0;
  wire ram_reg_0_7_12_17_i_5_n_0;
  wire ram_reg_0_7_12_17_i_6_n_0;
  wire ram_reg_0_7_12_17_i_7_n_0;
  wire ram_reg_0_7_12_17_i_8_n_0;
  wire ram_reg_0_7_12_17_i_9_n_0;
  wire ram_reg_0_7_18_23_i_1_n_0;
  wire ram_reg_0_7_18_23_i_1_n_1;
  wire ram_reg_0_7_18_23_i_1_n_2;
  wire ram_reg_0_7_18_23_i_1_n_3;
  wire ram_reg_0_7_18_23_i_2_n_0;
  wire ram_reg_0_7_18_23_i_3_n_0;
  wire ram_reg_0_7_18_23_i_4_n_0;
  wire ram_reg_0_7_18_23_i_5_n_0;
  wire ram_reg_0_7_24_29_i_10_n_0;
  wire ram_reg_0_7_24_29_i_1_n_0;
  wire ram_reg_0_7_24_29_i_1_n_1;
  wire ram_reg_0_7_24_29_i_1_n_2;
  wire ram_reg_0_7_24_29_i_1_n_3;
  wire ram_reg_0_7_24_29_i_2_n_1;
  wire ram_reg_0_7_24_29_i_2_n_2;
  wire ram_reg_0_7_24_29_i_2_n_3;
  wire ram_reg_0_7_24_29_i_3_n_0;
  wire ram_reg_0_7_24_29_i_4_n_0;
  wire ram_reg_0_7_24_29_i_5_n_0;
  wire ram_reg_0_7_24_29_i_6_n_0;
  wire ram_reg_0_7_24_29_i_7_n_0;
  wire ram_reg_0_7_24_29_i_8_n_0;
  wire ram_reg_0_7_24_29_i_9_n_0;
  wire ram_reg_0_7_6_11_i_1_n_0;
  wire ram_reg_0_7_6_11_i_1_n_1;
  wire ram_reg_0_7_6_11_i_1_n_2;
  wire ram_reg_0_7_6_11_i_1_n_3;
  wire ram_reg_0_7_6_11_i_2_n_0;
  wire ram_reg_0_7_6_11_i_3_n_0;
  wire ram_reg_0_7_6_11_i_4_n_0;
  wire ram_reg_0_7_6_11_i_5_n_0;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[1]_0 ;
  wire \rdata_reg[9] ;
  wire rewind_ap_ready_reg;
  wire [2:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire [2:0]select_ln49_fu_194_p3;
  wire [3:3]NLW_ram_reg_0_7_24_29_i_2_CO_UNCONNECTED;

  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_0_0
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[0]),
        .DPO(q00[0]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[0]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_7_0_0_i_1
       (.I0(s_axi_BUS_A_WSTRB[0]),
        .I1(s_axi_BUS_A_WVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(mem_reg),
        .I4(s_axi_BUS_A_ARVALID),
        .I5(\q0_reg[0]_0 ),
        .O(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_10_10
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[10]),
        .DPO(q00[10]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[10]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_11_11
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[11]),
        .DPO(q00[11]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[11]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_12_12
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[12]),
        .DPO(q00[12]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[12]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_13_13
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[13]),
        .DPO(q00[13]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[13]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_14_14
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[14]),
        .DPO(q00[14]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[14]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_15_15
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[15]),
        .DPO(q00[15]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[15]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_16_16
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[16]),
        .DPO(q00[16]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[16]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_7_16_16_i_1
       (.I0(s_axi_BUS_A_WSTRB[2]),
        .I1(s_axi_BUS_A_WVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(mem_reg),
        .I4(s_axi_BUS_A_ARVALID),
        .I5(\q0_reg[0]_0 ),
        .O(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_17_17
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[17]),
        .DPO(q00[17]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[17]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_18_18
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[18]),
        .DPO(q00[18]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[18]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_19_19
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[19]),
        .DPO(q00[19]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[19]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_1_1
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[1]),
        .DPO(q00[1]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[1]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_20_20
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[20]),
        .DPO(q00[20]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[20]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_21_21
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[21]),
        .DPO(q00[21]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[21]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_22_22
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[22]),
        .DPO(q00[22]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[22]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_23_23
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[23]),
        .DPO(q00[23]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[23]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_24_24
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[24]),
        .DPO(q00[24]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[24]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_24_24_i_1
       (.I0(s_axi_BUS_A_WDATA[24]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_7_24_24_i_2
       (.I0(s_axi_BUS_A_WSTRB[3]),
        .I1(s_axi_BUS_A_WVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(mem_reg),
        .I4(s_axi_BUS_A_ARVALID),
        .I5(\q0_reg[0]_0 ),
        .O(p_0_in0_out[24]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_25_25
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[25]),
        .DPO(q00[25]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[25]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_25_25_i_1
       (.I0(s_axi_BUS_A_WDATA[25]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[25]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_26_26
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[26]),
        .DPO(q00[26]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[26]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_26_26_i_1
       (.I0(s_axi_BUS_A_WDATA[26]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[26]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_27_27
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[27]),
        .DPO(q00[27]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[27]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_27_27_i_1
       (.I0(s_axi_BUS_A_WDATA[27]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[27]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_28_28
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[28]),
        .DPO(q00[28]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[28]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_28_28_i_1
       (.I0(s_axi_BUS_A_WDATA[28]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[28]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_29_29
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[29]),
        .DPO(q00[29]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[29]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_29_29_i_1
       (.I0(s_axi_BUS_A_WDATA[29]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[29]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_2_2
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[2]),
        .DPO(q00[2]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[2]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_30_30
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[30]),
        .DPO(q00[30]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[30]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_30_30_i_1
       (.I0(s_axi_BUS_A_WDATA[30]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[30]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_31_31
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[31]),
        .DPO(q00[31]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[31]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    mem_reg_0_7_31_31_i_1
       (.I0(s_axi_BUS_A_WDATA[31]),
        .I1(\q0_reg[0]_0 ),
        .I2(int_samples_ce1),
        .I3(\q1_reg[0]_0 ),
        .I4(s_axi_BUS_A_WVALID),
        .I5(s_axi_BUS_A_WSTRB[3]),
        .O(p_1_in[31]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_3_3
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[3]),
        .DPO(q00[3]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[3]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_4_4
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[4]),
        .DPO(q00[4]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[4]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_5_5
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[5]),
        .DPO(q00[5]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[5]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_6
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[6]),
        .DPO(q00[6]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[6]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_7_7
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[7]),
        .DPO(q00[7]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[7]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_8_8
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[8]),
        .DPO(q00[8]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[8]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_7_8_8_i_1
       (.I0(s_axi_BUS_A_WSTRB[1]),
        .I1(s_axi_BUS_A_WVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(mem_reg),
        .I4(s_axi_BUS_A_ARVALID),
        .I5(\q0_reg[0]_0 ),
        .O(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_9_9
       (.A0(int_samples_address1[0]),
        .A1(int_samples_address1[1]),
        .A2(int_samples_address1[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi_BUS_A_WDATA[9]),
        .DPO(q00[9]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(q10[9]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_1
       (.I0(s_axi_BUS_A_ARVALID),
        .I1(mem_reg),
        .O(int_samples_ce1));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_10
       (.I0(s_axi_BUS_A_ARADDR[1]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg),
        .I3(Q[1]),
        .O(int_samples_address1[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_11
       (.I0(s_axi_BUS_A_ARADDR[0]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg),
        .I3(Q[0]),
        .O(int_samples_address1[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_9
       (.I0(s_axi_BUS_A_ARADDR[2]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg),
        .I3(Q[2]),
        .O(int_samples_address1[2]));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[0]),
        .Q(q0[0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[10]),
        .Q(q0[10]),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[11]),
        .Q(q0[11]),
        .R(1'b0));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[12]),
        .Q(q0[12]),
        .R(1'b0));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[13]),
        .Q(q0[13]),
        .R(1'b0));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[14]),
        .Q(q0[14]),
        .R(1'b0));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[15]),
        .Q(q0[15]),
        .R(1'b0));
  FDRE \q0_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[16]),
        .Q(q0[16]),
        .R(1'b0));
  FDRE \q0_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[17]),
        .Q(q0[17]),
        .R(1'b0));
  FDRE \q0_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[18]),
        .Q(q0[18]),
        .R(1'b0));
  FDRE \q0_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[19]),
        .Q(q0[19]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[1]),
        .Q(q0[1]),
        .R(1'b0));
  FDRE \q0_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[20]),
        .Q(q0[20]),
        .R(1'b0));
  FDRE \q0_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[21]),
        .Q(q0[21]),
        .R(1'b0));
  FDRE \q0_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[22]),
        .Q(q0[22]),
        .R(1'b0));
  FDRE \q0_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[23]),
        .Q(q0[23]),
        .R(1'b0));
  FDRE \q0_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[24]),
        .Q(q0[24]),
        .R(1'b0));
  FDRE \q0_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[25]),
        .Q(q0[25]),
        .R(1'b0));
  FDRE \q0_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[26]),
        .Q(q0[26]),
        .R(1'b0));
  FDRE \q0_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[27]),
        .Q(q0[27]),
        .R(1'b0));
  FDRE \q0_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[28]),
        .Q(q0[28]),
        .R(1'b0));
  FDRE \q0_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[29]),
        .Q(q0[29]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[2]),
        .Q(q0[2]),
        .R(1'b0));
  FDRE \q0_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[30]),
        .Q(q0[30]),
        .R(1'b0));
  FDRE \q0_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[31]),
        .Q(q0[31]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[3]),
        .Q(q0[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[4]),
        .Q(q0[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[5]),
        .Q(q0[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[6]),
        .Q(q0[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[7]),
        .Q(q0[7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[8]),
        .Q(q0[8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(q00[9]),
        .Q(q0[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \q1[31]_i_1 
       (.I0(mem_reg),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(s_axi_BUS_A_WVALID),
        .O(int_phaseInc_ce1));
  LUT2 #(
    .INIT(4'h2)) 
    \q1[31]_i_1__0 
       (.I0(\q0_reg[0]_1 ),
        .I1(rewind_ap_ready_reg),
        .O(E));
  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[0]),
        .Q(\q1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[10]),
        .Q(\q1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[11]),
        .Q(\q1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[12]),
        .Q(\q1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[13]),
        .Q(\q1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[14]),
        .Q(\q1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[15]),
        .Q(\q1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[16]),
        .Q(\q1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[17]),
        .Q(\q1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[18]),
        .Q(\q1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[19]),
        .Q(\q1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[1]),
        .Q(\q1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[20]),
        .Q(\q1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[21]),
        .Q(\q1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[22]),
        .Q(\q1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[23]),
        .Q(\q1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[24]),
        .Q(\q1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[25]),
        .Q(\q1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[26]),
        .Q(\q1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[27]),
        .Q(\q1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[28]),
        .Q(\q1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[29]),
        .Q(\q1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[2]),
        .Q(\q1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[30]),
        .Q(\q1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[31]),
        .Q(\q1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[3]),
        .Q(\q1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[4]),
        .Q(\q1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[5]),
        .Q(\q1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[6]),
        .Q(\q1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[7]),
        .Q(\q1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[8]),
        .Q(\q1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(int_phaseInc_ce1),
        .D(q10[9]),
        .Q(\q1_reg_n_0_[9] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_0_5_i_1
       (.CI(1'b0),
        .CO({ram_reg_0_7_0_5_i_1_n_0,ram_reg_0_7_0_5_i_1_n_1,ram_reg_0_7_0_5_i_1_n_2,ram_reg_0_7_0_5_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(q0[3:0]),
        .O(d0[3:0]),
        .S({ram_reg_0_7_0_5_i_3_n_0,ram_reg_0_7_0_5_i_4_n_0,ram_reg_0_7_0_5_i_5_n_0,ram_reg_0_7_0_5_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_10
       (.I0(q0[4]),
        .I1(address_reg_386_reg_0[4]),
        .O(ram_reg_0_7_0_5_i_10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_0_5_i_2
       (.CI(ram_reg_0_7_0_5_i_1_n_0),
        .CO({ram_reg_0_7_0_5_i_2_n_0,ram_reg_0_7_0_5_i_2_n_1,ram_reg_0_7_0_5_i_2_n_2,ram_reg_0_7_0_5_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(q0[7:4]),
        .O(d0[7:4]),
        .S({ram_reg_0_7_0_5_i_7_n_0,ram_reg_0_7_0_5_i_8_n_0,ram_reg_0_7_0_5_i_9_n_0,ram_reg_0_7_0_5_i_10_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_3
       (.I0(q0[3]),
        .I1(address_reg_386_reg_0[3]),
        .O(ram_reg_0_7_0_5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_4
       (.I0(q0[2]),
        .I1(address_reg_386_reg_0[2]),
        .O(ram_reg_0_7_0_5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_5
       (.I0(q0[1]),
        .I1(address_reg_386_reg_0[1]),
        .O(ram_reg_0_7_0_5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_6
       (.I0(q0[0]),
        .I1(address_reg_386_reg_0[0]),
        .O(ram_reg_0_7_0_5_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_7
       (.I0(q0[7]),
        .I1(address_reg_386_reg_0[7]),
        .O(ram_reg_0_7_0_5_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_8
       (.I0(q0[6]),
        .I1(address_reg_386_reg_0[6]),
        .O(ram_reg_0_7_0_5_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_0_5_i_9
       (.I0(q0[5]),
        .I1(address_reg_386_reg_0[5]),
        .O(ram_reg_0_7_0_5_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_12_17_i_1
       (.CI(ram_reg_0_7_6_11_i_1_n_0),
        .CO({ram_reg_0_7_12_17_i_1_n_0,ram_reg_0_7_12_17_i_1_n_1,ram_reg_0_7_12_17_i_1_n_2,ram_reg_0_7_12_17_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(q0[15:12]),
        .O(d0[15:12]),
        .S({ram_reg_0_7_12_17_i_3_n_0,ram_reg_0_7_12_17_i_4_n_0,ram_reg_0_7_12_17_i_5_n_0,ram_reg_0_7_12_17_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_10
       (.I0(q0[16]),
        .I1(address_reg_386_reg_0[16]),
        .O(ram_reg_0_7_12_17_i_10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_12_17_i_2
       (.CI(ram_reg_0_7_12_17_i_1_n_0),
        .CO({ram_reg_0_7_12_17_i_2_n_0,ram_reg_0_7_12_17_i_2_n_1,ram_reg_0_7_12_17_i_2_n_2,ram_reg_0_7_12_17_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(q0[19:16]),
        .O(d0[19:16]),
        .S({ram_reg_0_7_12_17_i_7_n_0,ram_reg_0_7_12_17_i_8_n_0,ram_reg_0_7_12_17_i_9_n_0,ram_reg_0_7_12_17_i_10_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_3
       (.I0(q0[15]),
        .I1(address_reg_386_reg_0[15]),
        .O(ram_reg_0_7_12_17_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_4
       (.I0(q0[14]),
        .I1(address_reg_386_reg_0[14]),
        .O(ram_reg_0_7_12_17_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_5
       (.I0(q0[13]),
        .I1(address_reg_386_reg_0[13]),
        .O(ram_reg_0_7_12_17_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_6
       (.I0(q0[12]),
        .I1(address_reg_386_reg_0[12]),
        .O(ram_reg_0_7_12_17_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_7
       (.I0(q0[19]),
        .I1(address_reg_386_reg_0[19]),
        .O(ram_reg_0_7_12_17_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_8
       (.I0(q0[18]),
        .I1(address_reg_386_reg_0[18]),
        .O(ram_reg_0_7_12_17_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_12_17_i_9
       (.I0(q0[17]),
        .I1(address_reg_386_reg_0[17]),
        .O(ram_reg_0_7_12_17_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_18_23_i_1
       (.CI(ram_reg_0_7_12_17_i_2_n_0),
        .CO({ram_reg_0_7_18_23_i_1_n_0,ram_reg_0_7_18_23_i_1_n_1,ram_reg_0_7_18_23_i_1_n_2,ram_reg_0_7_18_23_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(q0[23:20]),
        .O(d0[23:20]),
        .S({ram_reg_0_7_18_23_i_2_n_0,ram_reg_0_7_18_23_i_3_n_0,ram_reg_0_7_18_23_i_4_n_0,ram_reg_0_7_18_23_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_18_23_i_2
       (.I0(q0[23]),
        .I1(address_reg_386_reg_0[23]),
        .O(ram_reg_0_7_18_23_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_18_23_i_3
       (.I0(q0[22]),
        .I1(address_reg_386_reg_0[22]),
        .O(ram_reg_0_7_18_23_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_18_23_i_4
       (.I0(q0[21]),
        .I1(address_reg_386_reg_0[21]),
        .O(ram_reg_0_7_18_23_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_18_23_i_5
       (.I0(q0[20]),
        .I1(address_reg_386_reg_0[20]),
        .O(ram_reg_0_7_18_23_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_24_29_i_1
       (.CI(ram_reg_0_7_18_23_i_1_n_0),
        .CO({ram_reg_0_7_24_29_i_1_n_0,ram_reg_0_7_24_29_i_1_n_1,ram_reg_0_7_24_29_i_1_n_2,ram_reg_0_7_24_29_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(q0[27:24]),
        .O(d0[27:24]),
        .S({ram_reg_0_7_24_29_i_3_n_0,ram_reg_0_7_24_29_i_4_n_0,ram_reg_0_7_24_29_i_5_n_0,ram_reg_0_7_24_29_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_10
       (.I0(q0[28]),
        .I1(address_reg_386_reg_0[28]),
        .O(ram_reg_0_7_24_29_i_10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_24_29_i_2
       (.CI(ram_reg_0_7_24_29_i_1_n_0),
        .CO({NLW_ram_reg_0_7_24_29_i_2_CO_UNCONNECTED[3],ram_reg_0_7_24_29_i_2_n_1,ram_reg_0_7_24_29_i_2_n_2,ram_reg_0_7_24_29_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,q0[30:28]}),
        .O(d0[31:28]),
        .S({ram_reg_0_7_24_29_i_7_n_0,ram_reg_0_7_24_29_i_8_n_0,ram_reg_0_7_24_29_i_9_n_0,ram_reg_0_7_24_29_i_10_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_3
       (.I0(q0[27]),
        .I1(address_reg_386_reg_0[27]),
        .O(ram_reg_0_7_24_29_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_4
       (.I0(q0[26]),
        .I1(address_reg_386_reg_0[26]),
        .O(ram_reg_0_7_24_29_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_5
       (.I0(q0[25]),
        .I1(address_reg_386_reg_0[25]),
        .O(ram_reg_0_7_24_29_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_6
       (.I0(q0[24]),
        .I1(address_reg_386_reg_0[24]),
        .O(ram_reg_0_7_24_29_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_7
       (.I0(q0[31]),
        .I1(address_reg_386_reg_0[31]),
        .O(ram_reg_0_7_24_29_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_8
       (.I0(q0[30]),
        .I1(address_reg_386_reg_0[30]),
        .O(ram_reg_0_7_24_29_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_24_29_i_9
       (.I0(q0[29]),
        .I1(address_reg_386_reg_0[29]),
        .O(ram_reg_0_7_24_29_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ram_reg_0_7_6_11_i_1
       (.CI(ram_reg_0_7_0_5_i_2_n_0),
        .CO({ram_reg_0_7_6_11_i_1_n_0,ram_reg_0_7_6_11_i_1_n_1,ram_reg_0_7_6_11_i_1_n_2,ram_reg_0_7_6_11_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(q0[11:8]),
        .O(d0[11:8]),
        .S({ram_reg_0_7_6_11_i_2_n_0,ram_reg_0_7_6_11_i_3_n_0,ram_reg_0_7_6_11_i_4_n_0,ram_reg_0_7_6_11_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_6_11_i_2
       (.I0(q0[11]),
        .I1(address_reg_386_reg_0[11]),
        .O(ram_reg_0_7_6_11_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_6_11_i_3
       (.I0(q0[10]),
        .I1(address_reg_386_reg_0[10]),
        .O(ram_reg_0_7_6_11_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_6_11_i_4
       (.I0(q0[9]),
        .I1(address_reg_386_reg_0[9]),
        .O(ram_reg_0_7_6_11_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_0_7_6_11_i_5
       (.I0(q0[8]),
        .I1(address_reg_386_reg_0[8]),
        .O(ram_reg_0_7_6_11_i_5_n_0));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \rdata[0]_i_1 
       (.I0(int_samples_ce1),
        .I1(\q1_reg_n_0_[0] ),
        .I2(int_phaseInc_read),
        .I3(int_samples_q1[0]),
        .I4(\rdata_reg[0] ),
        .I5(\rdata_reg[0]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[10]_i_1 
       (.I0(\q1_reg_n_0_[10] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[10]),
        .O(\q1_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[11]_i_1 
       (.I0(\q1_reg_n_0_[11] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[11]),
        .O(\q1_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[12]_i_1 
       (.I0(\q1_reg_n_0_[12] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[12]),
        .O(\q1_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[13]_i_1 
       (.I0(\q1_reg_n_0_[13] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[13]),
        .O(\q1_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[14]_i_1 
       (.I0(\q1_reg_n_0_[14] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[14]),
        .O(\q1_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[15]_i_1 
       (.I0(\q1_reg_n_0_[15] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[15]),
        .O(\q1_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[16]_i_1 
       (.I0(\q1_reg_n_0_[16] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[16]),
        .O(\q1_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[17]_i_1 
       (.I0(\q1_reg_n_0_[17] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[17]),
        .O(\q1_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[18]_i_1 
       (.I0(\q1_reg_n_0_[18] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[18]),
        .O(\q1_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[19]_i_1 
       (.I0(\q1_reg_n_0_[19] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[19]),
        .O(\q1_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h454045404540FFFF)) 
    \rdata[1]_i_1 
       (.I0(int_samples_ce1),
        .I1(\q1_reg_n_0_[1] ),
        .I2(int_phaseInc_read),
        .I3(int_samples_q1[1]),
        .I4(\rdata_reg[1] ),
        .I5(\rdata_reg[1]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[20]_i_1 
       (.I0(\q1_reg_n_0_[20] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[20]),
        .O(\q1_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[21]_i_1 
       (.I0(\q1_reg_n_0_[21] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[21]),
        .O(\q1_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[22]_i_1 
       (.I0(\q1_reg_n_0_[22] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[22]),
        .O(\q1_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[23]_i_1 
       (.I0(\q1_reg_n_0_[23] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[23]),
        .O(\q1_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[24]_i_1 
       (.I0(\q1_reg_n_0_[24] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[24]),
        .O(\q1_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[25]_i_1 
       (.I0(\q1_reg_n_0_[25] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[25]),
        .O(\q1_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[26]_i_1 
       (.I0(\q1_reg_n_0_[26] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[26]),
        .O(\q1_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[27]_i_1 
       (.I0(\q1_reg_n_0_[27] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[27]),
        .O(\q1_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[28]_i_1 
       (.I0(\q1_reg_n_0_[28] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[28]),
        .O(\q1_reg[28]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[29]_i_1 
       (.I0(\q1_reg_n_0_[29] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[29]),
        .O(\q1_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hFFFF454045404540)) 
    \rdata[2]_i_1 
       (.I0(int_samples_ce1),
        .I1(\q1_reg_n_0_[2] ),
        .I2(int_phaseInc_read),
        .I3(int_samples_q1[2]),
        .I4(\rdata_reg[9] ),
        .I5(p_0_in[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[30]_i_1 
       (.I0(\q1_reg_n_0_[30] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[30]),
        .O(\q1_reg[30]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[31]_i_3 
       (.I0(\q1_reg_n_0_[31] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[31]),
        .O(\q1_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFF454045404540)) 
    \rdata[3]_i_1 
       (.I0(int_samples_ce1),
        .I1(\q1_reg_n_0_[3] ),
        .I2(int_phaseInc_read),
        .I3(int_samples_q1[3]),
        .I4(\rdata_reg[9] ),
        .I5(int_ap_ready),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[4]_i_1 
       (.I0(\q1_reg_n_0_[4] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[4]),
        .O(\q1_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[5]_i_1 
       (.I0(\q1_reg_n_0_[5] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[5]),
        .O(\q1_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[6]_i_1 
       (.I0(\q1_reg_n_0_[6] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[6]),
        .O(\q1_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFF454045404540)) 
    \rdata[7]_i_1 
       (.I0(int_samples_ce1),
        .I1(\q1_reg_n_0_[7] ),
        .I2(int_phaseInc_read),
        .I3(int_samples_q1[7]),
        .I4(\rdata_reg[9] ),
        .I5(p_0_in[1]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rdata[8]_i_1 
       (.I0(\q1_reg_n_0_[8] ),
        .I1(int_phaseInc_read),
        .I2(int_samples_q1[8]),
        .O(\q1_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFF454045404540)) 
    \rdata[9]_i_1 
       (.I0(int_samples_ce1),
        .I1(\q1_reg_n_0_[9] ),
        .I2(int_phaseInc_read),
        .I3(int_samples_q1[9]),
        .I4(\rdata_reg[9] ),
        .I5(interrupt),
        .O(D[5]));
endmodule

(* ORIG_REF_NAME = "MultiSine_BUS_A_s_axi_ram" *) 
module AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram__parameterized0
   (int_samples_q1,
    ap_clk,
    int_samples_ce1,
    mem_reg_0,
    Q,
    out,
    ap_enable_reg_pp0_iter3,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_ARVALID,
    mem_reg_1,
    mem_reg_2,
    ap_enable_reg_pp0_iter4);
  output [31:0]int_samples_q1;
  input ap_clk;
  input int_samples_ce1;
  input [2:0]mem_reg_0;
  input [8:0]Q;
  input [23:0]out;
  input ap_enable_reg_pp0_iter3;
  input [5:0]s_axi_BUS_A_ARADDR;
  input s_axi_BUS_A_ARVALID;
  input mem_reg_1;
  input [5:0]mem_reg_2;
  input ap_enable_reg_pp0_iter4;

  wire [8:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire [8:3]int_samples_address1;
  wire int_samples_ce1;
  wire [31:0]int_samples_q1;
  wire [2:0]mem_reg_0;
  wire mem_reg_1;
  wire [5:0]mem_reg_2;
  wire [23:0]out;
  wire [5:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARVALID;
  wire samples_ce0_local;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "12288" *) 
  (* RTL_RAM_NAME = "MultiSine/BUS_A_s_axi_U/int_samples/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({int_samples_address1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI(out[15:0]),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,out[23:16]}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(int_samples_q1[15:0]),
        .DOBDO(int_samples_q1[31:16]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(int_samples_ce1),
        .ENBWREN(samples_ce0_local),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({ap_enable_reg_pp0_iter3,ap_enable_reg_pp0_iter3,ap_enable_reg_pp0_iter3,ap_enable_reg_pp0_iter3}));
  LUT2 #(
    .INIT(4'hE)) 
    mem_reg_i_2
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_enable_reg_pp0_iter4),
        .O(samples_ce0_local));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_3
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg_1),
        .I3(mem_reg_2[5]),
        .O(int_samples_address1[8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_4
       (.I0(s_axi_BUS_A_ARADDR[4]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg_1),
        .I3(mem_reg_2[4]),
        .O(int_samples_address1[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_5
       (.I0(s_axi_BUS_A_ARADDR[3]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg_1),
        .I3(mem_reg_2[3]),
        .O(int_samples_address1[6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_6
       (.I0(s_axi_BUS_A_ARADDR[2]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg_1),
        .I3(mem_reg_2[2]),
        .O(int_samples_address1[5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_7
       (.I0(s_axi_BUS_A_ARADDR[1]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg_1),
        .I3(mem_reg_2[1]),
        .O(int_samples_address1[4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_i_8
       (.I0(s_axi_BUS_A_ARADDR[0]),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(mem_reg_1),
        .I3(mem_reg_2[0]),
        .O(int_samples_address1[3]));
endmodule

(* ORIG_REF_NAME = "MultiSine_accumulators_RAM_AUTO_1R1W" *) 
module AudioPlatform_MultiSine_0_0_MultiSine_accumulators_RAM_AUTO_1R1W
   (q1,
    ap_clk,
    d0,
    ap_enable_reg_pp0_iter1,
    ADDRD,
    select_ln49_fu_194_p3,
    E);
  output [31:0]q1;
  input ap_clk;
  input [31:0]d0;
  input ap_enable_reg_pp0_iter1;
  input [2:0]ADDRD;
  input [2:0]select_ln49_fu_194_p3;
  input [0:0]E;

  wire [2:0]ADDRD;
  wire [0:0]E;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire [31:0]d0;
  wire [31:0]q1;
  wire [31:0]q10;
  wire [2:0]select_ln49_fu_194_p3;
  wire [1:0]NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_24_29_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_7_30_31_SPO_UNCONNECTED;
  wire NLW_ram_reg_0_7_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_6_11_DOD_UNCONNECTED;

  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[0]),
        .Q(q1[0]),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[10]),
        .Q(q1[10]),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[11]),
        .Q(q1[11]),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[12]),
        .Q(q1[12]),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[13]),
        .Q(q1[13]),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[14]),
        .Q(q1[14]),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[15]),
        .Q(q1[15]),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[16]),
        .Q(q1[16]),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[17]),
        .Q(q1[17]),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[18]),
        .Q(q1[18]),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[19]),
        .Q(q1[19]),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[1]),
        .Q(q1[1]),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[20]),
        .Q(q1[20]),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[21]),
        .Q(q1[21]),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[22]),
        .Q(q1[22]),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[23]),
        .Q(q1[23]),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[24]),
        .Q(q1[24]),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[25]),
        .Q(q1[25]),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[26]),
        .Q(q1[26]),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[27]),
        .Q(q1[27]),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[28]),
        .Q(q1[28]),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[29]),
        .Q(q1[29]),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[2]),
        .Q(q1[2]),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[30]),
        .Q(q1[30]),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[31]),
        .Q(q1[31]),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[3]),
        .Q(q1[3]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[4]),
        .Q(q1[4]),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[5]),
        .Q(q1[5]),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[6]),
        .Q(q1[6]),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[7]),
        .Q(q1[7]),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[8]),
        .Q(q1[8]),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(q10[9]),
        .Q(q1[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/accumulators_U/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRB({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRC({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRD({1'b0,1'b0,ADDRD}),
        .DIA(d0[1:0]),
        .DIB(d0[3:2]),
        .DIC(d0[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(q10[1:0]),
        .DOB(q10[3:2]),
        .DOC(q10[5:4]),
        .DOD(NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(ap_clk),
        .WE(ap_enable_reg_pp0_iter1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/accumulators_U/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_12_17
       (.ADDRA({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRB({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRC({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRD({1'b0,1'b0,ADDRD}),
        .DIA(d0[13:12]),
        .DIB(d0[15:14]),
        .DIC(d0[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(q10[13:12]),
        .DOB(q10[15:14]),
        .DOC(q10[17:16]),
        .DOD(NLW_ram_reg_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(ap_clk),
        .WE(ap_enable_reg_pp0_iter1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/accumulators_U/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_18_23
       (.ADDRA({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRB({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRC({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRD({1'b0,1'b0,ADDRD}),
        .DIA(d0[19:18]),
        .DIB(d0[21:20]),
        .DIC(d0[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(q10[19:18]),
        .DOB(q10[21:20]),
        .DOC(q10[23:22]),
        .DOD(NLW_ram_reg_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(ap_clk),
        .WE(ap_enable_reg_pp0_iter1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/accumulators_U/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_24_29
       (.ADDRA({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRB({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRC({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRD({1'b0,1'b0,ADDRD}),
        .DIA(d0[25:24]),
        .DIB(d0[27:26]),
        .DIC(d0[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(q10[25:24]),
        .DOB(q10[27:26]),
        .DOC(q10[29:28]),
        .DOD(NLW_ram_reg_0_7_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(ap_clk),
        .WE(ap_enable_reg_pp0_iter1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/accumulators_U/ram_reg_0_7_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_7_30_31
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(d0[30]),
        .DPO(q10[30]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_ram_reg_0_7_30_31_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(ap_enable_reg_pp0_iter1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/accumulators_U/ram_reg_0_7_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_7_30_31__0
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(d0[31]),
        .DPO(q10[31]),
        .DPRA0(select_ln49_fu_194_p3[0]),
        .DPRA1(select_ln49_fu_194_p3[1]),
        .DPRA2(select_ln49_fu_194_p3[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_ram_reg_0_7_30_31__0_SPO_UNCONNECTED),
        .WCLK(ap_clk),
        .WE(ap_enable_reg_pp0_iter1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "MultiSine/accumulators_U/ram_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRB({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRC({1'b0,1'b0,select_ln49_fu_194_p3}),
        .ADDRD({1'b0,1'b0,ADDRD}),
        .DIA(d0[7:6]),
        .DIB(d0[9:8]),
        .DIC(d0[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(q10[7:6]),
        .DOB(q10[9:8]),
        .DOC(q10[11:10]),
        .DOD(NLW_ram_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(ap_clk),
        .WE(ap_enable_reg_pp0_iter1));
endmodule

(* ORIG_REF_NAME = "MultiSine_flow_control_loop_delay_pipe" *) 
module AudioPlatform_MultiSine_0_0_MultiSine_flow_control_loop_delay_pipe
   (rewind_ap_ready_reg,
    \icmp_ln497_reg_157_reg[0] ,
    \i6_fu_88_reg[1] ,
    ap_condition_194,
    select_ln49_fu_194_p3,
    D,
    ap_loop_exit_ready,
    icmp_ln46_fu_232_p2,
    \i6_fu_88_reg[3] ,
    icmp_ln49_fu_226_p2,
    ap_rst_n_inv,
    ap_clk,
    \icmp_ln497_reg_157_reg[0]_0 ,
    icmp_ln49_reg_377,
    ap_enable_reg_pp0_iter1,
    icmp_ln46_reg_382,
    Q,
    \indvar_flatten3_fu_80_reg[8] ,
    ap_rst_n,
    ap_start,
    ap_loop_exit_ready_pp0_iter2_reg);
  output rewind_ap_ready_reg;
  output \icmp_ln497_reg_157_reg[0] ;
  output \i6_fu_88_reg[1] ;
  output ap_condition_194;
  output [2:0]select_ln49_fu_194_p3;
  output [8:0]D;
  output ap_loop_exit_ready;
  output icmp_ln46_fu_232_p2;
  output [3:0]\i6_fu_88_reg[3] ;
  output icmp_ln49_fu_226_p2;
  input ap_rst_n_inv;
  input ap_clk;
  input \icmp_ln497_reg_157_reg[0]_0 ;
  input icmp_ln49_reg_377;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln46_reg_382;
  input [3:0]Q;
  input [8:0]\indvar_flatten3_fu_80_reg[8] ;
  input ap_rst_n;
  input ap_start;
  input ap_loop_exit_ready_pp0_iter2_reg;

  wire [8:0]D;
  wire [3:0]Q;
  wire ap_clk;
  wire ap_condition_194;
  wire ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2_n_0;
  wire ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire \i6_fu_88_reg[1] ;
  wire [3:0]\i6_fu_88_reg[3] ;
  wire icmp_ln46_fu_232_p2;
  wire icmp_ln46_reg_382;
  wire \icmp_ln46_reg_382[0]_i_2_n_0 ;
  wire \icmp_ln46_reg_382[0]_i_3_n_0 ;
  wire \icmp_ln497_reg_157_reg[0] ;
  wire \icmp_ln497_reg_157_reg[0]_0 ;
  wire icmp_ln49_fu_226_p2;
  wire icmp_ln49_reg_377;
  wire \icmp_ln49_reg_377[0]_i_2_n_0 ;
  wire \indvar_flatten3_fu_80[5]_i_2_n_0 ;
  wire \indvar_flatten3_fu_80[8]_i_2_n_0 ;
  wire [8:0]\indvar_flatten3_fu_80_reg[8] ;
  wire rewind_ap_ready_reg;
  wire rewind_ap_ready_reg_i_1_n_0;
  wire [2:0]select_ln49_fu_194_p3;

  LUT6 #(
    .INIT(64'h0000D0FF00000000)) 
    \accumulators_addr_reg_366[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln46_reg_382),
        .I2(ap_loop_init),
        .I3(icmp_ln49_reg_377),
        .I4(ap_condition_194),
        .I5(Q[0]),
        .O(select_ln49_fu_194_p3[0]));
  LUT6 #(
    .INIT(64'h00000000D5DD0000)) 
    \accumulators_addr_reg_366[1]_i_1 
       (.I0(icmp_ln49_reg_377),
        .I1(ap_loop_init),
        .I2(icmp_ln46_reg_382),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q[1]),
        .I5(ap_condition_194),
        .O(select_ln49_fu_194_p3[1]));
  LUT6 #(
    .INIT(64'h00000000D5DD0000)) 
    \accumulators_addr_reg_366[2]_i_1 
       (.I0(icmp_ln49_reg_377),
        .I1(ap_loop_init),
        .I2(icmp_ln46_reg_382),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q[2]),
        .I5(ap_condition_194),
        .O(select_ln49_fu_194_p3[2]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_1
       (.I0(\icmp_ln46_reg_382[0]_i_3_n_0 ),
        .I1(\indvar_flatten3_fu_80[5]_i_2_n_0 ),
        .I2(\icmp_ln46_reg_382[0]_i_2_n_0 ),
        .I3(\indvar_flatten3_fu_80_reg[8] [4]),
        .I4(ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2_n_0),
        .I5(ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3_n_0),
        .O(ap_loop_exit_ready));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2
       (.I0(rewind_ap_ready_reg),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(\indvar_flatten3_fu_80_reg[8] [5]),
        .O(ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3
       (.I0(rewind_ap_ready_reg),
        .I1(ap_start),
        .O(ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFBFBBBB)) 
    ap_loop_init_i_1
       (.I0(ap_loop_exit_ready),
        .I1(ap_rst_n),
        .I2(ap_start),
        .I3(rewind_ap_ready_reg),
        .I4(ap_loop_init),
        .O(ap_loop_init_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0F0FFFFF0F1F)) 
    \first_iter_0_reg_362[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\icmp_ln49_reg_377[0]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(ap_condition_194),
        .I5(Q[2]),
        .O(\i6_fu_88_reg[1] ));
  LUT6 #(
    .INIT(64'hDDFDFDFDDDFDDDFD)) 
    \i6_fu_88[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_condition_194),
        .I2(icmp_ln49_reg_377),
        .I3(ap_loop_init),
        .I4(icmp_ln46_reg_382),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\i6_fu_88_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \i6_fu_88[1]_i_1 
       (.I0(select_ln49_fu_194_p3[1]),
        .I1(\i6_fu_88_reg[3] [0]),
        .O(\i6_fu_88_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \i6_fu_88[2]_i_1 
       (.I0(select_ln49_fu_194_p3[2]),
        .I1(\i6_fu_88_reg[3] [0]),
        .I2(Q[1]),
        .O(\i6_fu_88_reg[3] [2]));
  LUT6 #(
    .INIT(64'h006000A000A000A0)) 
    \i6_fu_88[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\icmp_ln49_reg_377[0]_i_2_n_0 ),
        .I3(ap_condition_194),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\i6_fu_88_reg[3] [3]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \icmp_ln46_reg_382[0]_i_1 
       (.I0(ap_condition_194),
        .I1(\indvar_flatten3_fu_80_reg[8] [5]),
        .I2(\indvar_flatten3_fu_80_reg[8] [4]),
        .I3(\icmp_ln46_reg_382[0]_i_2_n_0 ),
        .I4(\indvar_flatten3_fu_80[5]_i_2_n_0 ),
        .I5(\icmp_ln46_reg_382[0]_i_3_n_0 ),
        .O(icmp_ln46_fu_232_p2));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h55D5FFFF)) 
    \icmp_ln46_reg_382[0]_i_2 
       (.I0(\indvar_flatten3_fu_80_reg[8] [2]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .I3(rewind_ap_ready_reg),
        .I4(\indvar_flatten3_fu_80_reg[8] [3]),
        .O(\icmp_ln46_reg_382[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \icmp_ln46_reg_382[0]_i_3 
       (.I0(\indvar_flatten3_fu_80_reg[8] [7]),
        .I1(\indvar_flatten3_fu_80_reg[8] [6]),
        .I2(\indvar_flatten3_fu_80_reg[8] [8]),
        .O(\icmp_ln46_reg_382[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00C0AACA)) 
    \icmp_ln497_reg_157[0]_i_1 
       (.I0(\icmp_ln497_reg_157_reg[0]_0 ),
        .I1(icmp_ln49_reg_377),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(icmp_ln46_reg_382),
        .I4(ap_loop_init),
        .O(\icmp_ln497_reg_157_reg[0] ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \icmp_ln49_reg_377[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(ap_condition_194),
        .I4(Q[3]),
        .I5(\icmp_ln49_reg_377[0]_i_2_n_0 ),
        .O(icmp_ln49_fu_226_p2));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \icmp_ln49_reg_377[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln46_reg_382),
        .I2(ap_loop_init),
        .I3(icmp_ln49_reg_377),
        .O(\icmp_ln49_reg_377[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten3_fu_80[0]_i_1 
       (.I0(ap_loop_init),
        .I1(\indvar_flatten3_fu_80_reg[8] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \indvar_flatten3_fu_80[1]_i_1 
       (.I0(\indvar_flatten3_fu_80_reg[8] [0]),
        .I1(\indvar_flatten3_fu_80_reg[8] [1]),
        .I2(ap_loop_init),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0078)) 
    \indvar_flatten3_fu_80[2]_i_1 
       (.I0(\indvar_flatten3_fu_80_reg[8] [1]),
        .I1(\indvar_flatten3_fu_80_reg[8] [0]),
        .I2(\indvar_flatten3_fu_80_reg[8] [2]),
        .I3(ap_loop_init),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \indvar_flatten3_fu_80[3]_i_1 
       (.I0(\indvar_flatten3_fu_80_reg[8] [3]),
        .I1(\indvar_flatten3_fu_80_reg[8] [0]),
        .I2(ap_condition_194),
        .I3(\indvar_flatten3_fu_80_reg[8] [1]),
        .I4(\indvar_flatten3_fu_80_reg[8] [2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \indvar_flatten3_fu_80[4]_i_1 
       (.I0(\indvar_flatten3_fu_80_reg[8] [2]),
        .I1(\indvar_flatten3_fu_80_reg[8] [3]),
        .I2(\indvar_flatten3_fu_80_reg[8] [0]),
        .I3(\indvar_flatten3_fu_80_reg[8] [1]),
        .I4(ap_condition_194),
        .I5(\indvar_flatten3_fu_80_reg[8] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0F0F070F00000800)) 
    \indvar_flatten3_fu_80[5]_i_1 
       (.I0(\indvar_flatten3_fu_80_reg[8] [4]),
        .I1(\indvar_flatten3_fu_80_reg[8] [2]),
        .I2(ap_condition_194),
        .I3(\indvar_flatten3_fu_80_reg[8] [3]),
        .I4(\indvar_flatten3_fu_80[5]_i_2_n_0 ),
        .I5(\indvar_flatten3_fu_80_reg[8] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h55D5FFFF)) 
    \indvar_flatten3_fu_80[5]_i_2 
       (.I0(\indvar_flatten3_fu_80_reg[8] [0]),
        .I1(ap_loop_init),
        .I2(ap_start),
        .I3(rewind_ap_ready_reg),
        .I4(\indvar_flatten3_fu_80_reg[8] [1]),
        .O(\indvar_flatten3_fu_80[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \indvar_flatten3_fu_80[6]_i_1 
       (.I0(\indvar_flatten3_fu_80[8]_i_2_n_0 ),
        .I1(ap_loop_init),
        .I2(\indvar_flatten3_fu_80_reg[8] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB444)) 
    \indvar_flatten3_fu_80[7]_i_1 
       (.I0(ap_loop_init),
        .I1(\indvar_flatten3_fu_80_reg[8] [7]),
        .I2(\indvar_flatten3_fu_80[8]_i_2_n_0 ),
        .I3(\indvar_flatten3_fu_80_reg[8] [6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \indvar_flatten3_fu_80[8]_i_1 
       (.I0(\indvar_flatten3_fu_80_reg[8] [8]),
        .I1(\indvar_flatten3_fu_80_reg[8] [6]),
        .I2(\indvar_flatten3_fu_80[8]_i_2_n_0 ),
        .I3(\indvar_flatten3_fu_80_reg[8] [7]),
        .I4(ap_condition_194),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \indvar_flatten3_fu_80[8]_i_2 
       (.I0(\indvar_flatten3_fu_80[5]_i_2_n_0 ),
        .I1(\indvar_flatten3_fu_80_reg[8] [3]),
        .I2(\indvar_flatten3_fu_80_reg[8] [2]),
        .I3(\indvar_flatten3_fu_80_reg[8] [4]),
        .I4(\indvar_flatten3_fu_80_reg[8] [5]),
        .I5(ap_condition_194),
        .O(\indvar_flatten3_fu_80[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \indvars_iv44_fu_84[5]_i_1 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .I2(rewind_ap_ready_reg),
        .O(ap_condition_194));
  LUT4 #(
    .INIT(16'h3730)) 
    rewind_ap_ready_reg_i_1
       (.I0(ap_start),
        .I1(ap_loop_exit_ready_pp0_iter2_reg),
        .I2(ap_loop_exit_ready),
        .I3(rewind_ap_ready_reg),
        .O(rewind_ap_ready_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rewind_ap_ready_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(rewind_ap_ready_reg_i_1_n_0),
        .Q(rewind_ap_ready_reg),
        .R(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
