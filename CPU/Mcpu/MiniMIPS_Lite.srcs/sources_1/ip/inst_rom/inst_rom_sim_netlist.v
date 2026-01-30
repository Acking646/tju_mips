// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jan 30 13:25:24 2026
// Host        : LAPTOP-K5F6DAJG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/tju_mips/CPU/Mcpu/MiniMIPS_Lite.srcs/sources_1/ip/inst_rom/inst_rom_sim_netlist.v
// Design      : inst_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_rom,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module inst_rom
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "zynq" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "inst_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  inst_rom_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "14" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16384" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "zynq" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "inst_rom.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module inst_rom_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [13:0]a;
  input [31:0]d;
  input [13:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:0]spo;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  inst_rom_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module inst_rom_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [31:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [31:0]spo;

  inst_rom_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module inst_rom_rom
   (spo,
    a);
  output [31:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [31:0]spo;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_29_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_30_n_0 ;
  wire \spo[0]_INST_0_i_31_n_0 ;
  wire \spo[0]_INST_0_i_32_n_0 ;
  wire \spo[0]_INST_0_i_33_n_0 ;
  wire \spo[0]_INST_0_i_34_n_0 ;
  wire \spo[0]_INST_0_i_35_n_0 ;
  wire \spo[0]_INST_0_i_36_n_0 ;
  wire \spo[0]_INST_0_i_37_n_0 ;
  wire \spo[0]_INST_0_i_38_n_0 ;
  wire \spo[0]_INST_0_i_39_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[10]_INST_0_i_10_n_0 ;
  wire \spo[10]_INST_0_i_11_n_0 ;
  wire \spo[10]_INST_0_i_12_n_0 ;
  wire \spo[10]_INST_0_i_13_n_0 ;
  wire \spo[10]_INST_0_i_14_n_0 ;
  wire \spo[10]_INST_0_i_15_n_0 ;
  wire \spo[10]_INST_0_i_16_n_0 ;
  wire \spo[10]_INST_0_i_17_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_10_n_0 ;
  wire \spo[11]_INST_0_i_11_n_0 ;
  wire \spo[11]_INST_0_i_12_n_0 ;
  wire \spo[11]_INST_0_i_13_n_0 ;
  wire \spo[11]_INST_0_i_14_n_0 ;
  wire \spo[11]_INST_0_i_15_n_0 ;
  wire \spo[11]_INST_0_i_16_n_0 ;
  wire \spo[11]_INST_0_i_17_n_0 ;
  wire \spo[11]_INST_0_i_18_n_0 ;
  wire \spo[11]_INST_0_i_19_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_20_n_0 ;
  wire \spo[11]_INST_0_i_21_n_0 ;
  wire \spo[11]_INST_0_i_22_n_0 ;
  wire \spo[11]_INST_0_i_23_n_0 ;
  wire \spo[11]_INST_0_i_24_n_0 ;
  wire \spo[11]_INST_0_i_25_n_0 ;
  wire \spo[11]_INST_0_i_26_n_0 ;
  wire \spo[11]_INST_0_i_27_n_0 ;
  wire \spo[11]_INST_0_i_28_n_0 ;
  wire \spo[11]_INST_0_i_29_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_30_n_0 ;
  wire \spo[11]_INST_0_i_31_n_0 ;
  wire \spo[11]_INST_0_i_32_n_0 ;
  wire \spo[11]_INST_0_i_33_n_0 ;
  wire \spo[11]_INST_0_i_34_n_0 ;
  wire \spo[11]_INST_0_i_35_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[12]_INST_0_i_10_n_0 ;
  wire \spo[12]_INST_0_i_11_n_0 ;
  wire \spo[12]_INST_0_i_12_n_0 ;
  wire \spo[12]_INST_0_i_13_n_0 ;
  wire \spo[12]_INST_0_i_14_n_0 ;
  wire \spo[12]_INST_0_i_15_n_0 ;
  wire \spo[12]_INST_0_i_16_n_0 ;
  wire \spo[12]_INST_0_i_17_n_0 ;
  wire \spo[12]_INST_0_i_18_n_0 ;
  wire \spo[12]_INST_0_i_19_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_20_n_0 ;
  wire \spo[12]_INST_0_i_21_n_0 ;
  wire \spo[12]_INST_0_i_22_n_0 ;
  wire \spo[12]_INST_0_i_23_n_0 ;
  wire \spo[12]_INST_0_i_24_n_0 ;
  wire \spo[12]_INST_0_i_25_n_0 ;
  wire \spo[12]_INST_0_i_26_n_0 ;
  wire \spo[12]_INST_0_i_27_n_0 ;
  wire \spo[12]_INST_0_i_28_n_0 ;
  wire \spo[12]_INST_0_i_29_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[12]_INST_0_i_8_n_0 ;
  wire \spo[12]_INST_0_i_9_n_0 ;
  wire \spo[13]_INST_0_i_10_n_0 ;
  wire \spo[13]_INST_0_i_11_n_0 ;
  wire \spo[13]_INST_0_i_12_n_0 ;
  wire \spo[13]_INST_0_i_13_n_0 ;
  wire \spo[13]_INST_0_i_14_n_0 ;
  wire \spo[13]_INST_0_i_15_n_0 ;
  wire \spo[13]_INST_0_i_16_n_0 ;
  wire \spo[13]_INST_0_i_17_n_0 ;
  wire \spo[13]_INST_0_i_18_n_0 ;
  wire \spo[13]_INST_0_i_19_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_20_n_0 ;
  wire \spo[13]_INST_0_i_21_n_0 ;
  wire \spo[13]_INST_0_i_22_n_0 ;
  wire \spo[13]_INST_0_i_23_n_0 ;
  wire \spo[13]_INST_0_i_24_n_0 ;
  wire \spo[13]_INST_0_i_25_n_0 ;
  wire \spo[13]_INST_0_i_26_n_0 ;
  wire \spo[13]_INST_0_i_27_n_0 ;
  wire \spo[13]_INST_0_i_28_n_0 ;
  wire \spo[13]_INST_0_i_29_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_30_n_0 ;
  wire \spo[13]_INST_0_i_31_n_0 ;
  wire \spo[13]_INST_0_i_32_n_0 ;
  wire \spo[13]_INST_0_i_33_n_0 ;
  wire \spo[13]_INST_0_i_34_n_0 ;
  wire \spo[13]_INST_0_i_35_n_0 ;
  wire \spo[13]_INST_0_i_36_n_0 ;
  wire \spo[13]_INST_0_i_37_n_0 ;
  wire \spo[13]_INST_0_i_38_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_8_n_0 ;
  wire \spo[13]_INST_0_i_9_n_0 ;
  wire \spo[14]_INST_0_i_10_n_0 ;
  wire \spo[14]_INST_0_i_11_n_0 ;
  wire \spo[14]_INST_0_i_12_n_0 ;
  wire \spo[14]_INST_0_i_13_n_0 ;
  wire \spo[14]_INST_0_i_14_n_0 ;
  wire \spo[14]_INST_0_i_15_n_0 ;
  wire \spo[14]_INST_0_i_16_n_0 ;
  wire \spo[14]_INST_0_i_17_n_0 ;
  wire \spo[14]_INST_0_i_18_n_0 ;
  wire \spo[14]_INST_0_i_19_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_20_n_0 ;
  wire \spo[14]_INST_0_i_21_n_0 ;
  wire \spo[14]_INST_0_i_22_n_0 ;
  wire \spo[14]_INST_0_i_23_n_0 ;
  wire \spo[14]_INST_0_i_24_n_0 ;
  wire \spo[14]_INST_0_i_25_n_0 ;
  wire \spo[14]_INST_0_i_26_n_0 ;
  wire \spo[14]_INST_0_i_27_n_0 ;
  wire \spo[14]_INST_0_i_28_n_0 ;
  wire \spo[14]_INST_0_i_29_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_30_n_0 ;
  wire \spo[14]_INST_0_i_31_n_0 ;
  wire \spo[14]_INST_0_i_32_n_0 ;
  wire \spo[14]_INST_0_i_33_n_0 ;
  wire \spo[14]_INST_0_i_34_n_0 ;
  wire \spo[14]_INST_0_i_35_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[14]_INST_0_i_8_n_0 ;
  wire \spo[14]_INST_0_i_9_n_0 ;
  wire \spo[15]_INST_0_i_10_n_0 ;
  wire \spo[15]_INST_0_i_11_n_0 ;
  wire \spo[15]_INST_0_i_12_n_0 ;
  wire \spo[15]_INST_0_i_13_n_0 ;
  wire \spo[15]_INST_0_i_14_n_0 ;
  wire \spo[15]_INST_0_i_15_n_0 ;
  wire \spo[15]_INST_0_i_16_n_0 ;
  wire \spo[15]_INST_0_i_17_n_0 ;
  wire \spo[15]_INST_0_i_18_n_0 ;
  wire \spo[15]_INST_0_i_19_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_7_n_0 ;
  wire \spo[15]_INST_0_i_8_n_0 ;
  wire \spo[15]_INST_0_i_9_n_0 ;
  wire \spo[16]_INST_0_i_10_n_0 ;
  wire \spo[16]_INST_0_i_11_n_0 ;
  wire \spo[16]_INST_0_i_12_n_0 ;
  wire \spo[16]_INST_0_i_13_n_0 ;
  wire \spo[16]_INST_0_i_14_n_0 ;
  wire \spo[16]_INST_0_i_15_n_0 ;
  wire \spo[16]_INST_0_i_16_n_0 ;
  wire \spo[16]_INST_0_i_17_n_0 ;
  wire \spo[16]_INST_0_i_18_n_0 ;
  wire \spo[16]_INST_0_i_19_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_20_n_0 ;
  wire \spo[16]_INST_0_i_21_n_0 ;
  wire \spo[16]_INST_0_i_22_n_0 ;
  wire \spo[16]_INST_0_i_23_n_0 ;
  wire \spo[16]_INST_0_i_24_n_0 ;
  wire \spo[16]_INST_0_i_25_n_0 ;
  wire \spo[16]_INST_0_i_26_n_0 ;
  wire \spo[16]_INST_0_i_27_n_0 ;
  wire \spo[16]_INST_0_i_28_n_0 ;
  wire \spo[16]_INST_0_i_29_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_30_n_0 ;
  wire \spo[16]_INST_0_i_31_n_0 ;
  wire \spo[16]_INST_0_i_32_n_0 ;
  wire \spo[16]_INST_0_i_33_n_0 ;
  wire \spo[16]_INST_0_i_34_n_0 ;
  wire \spo[16]_INST_0_i_35_n_0 ;
  wire \spo[16]_INST_0_i_36_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_7_n_0 ;
  wire \spo[16]_INST_0_i_8_n_0 ;
  wire \spo[16]_INST_0_i_9_n_0 ;
  wire \spo[17]_INST_0_i_10_n_0 ;
  wire \spo[17]_INST_0_i_11_n_0 ;
  wire \spo[17]_INST_0_i_12_n_0 ;
  wire \spo[17]_INST_0_i_13_n_0 ;
  wire \spo[17]_INST_0_i_14_n_0 ;
  wire \spo[17]_INST_0_i_15_n_0 ;
  wire \spo[17]_INST_0_i_16_n_0 ;
  wire \spo[17]_INST_0_i_17_n_0 ;
  wire \spo[17]_INST_0_i_18_n_0 ;
  wire \spo[17]_INST_0_i_19_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_20_n_0 ;
  wire \spo[17]_INST_0_i_21_n_0 ;
  wire \spo[17]_INST_0_i_22_n_0 ;
  wire \spo[17]_INST_0_i_23_n_0 ;
  wire \spo[17]_INST_0_i_24_n_0 ;
  wire \spo[17]_INST_0_i_25_n_0 ;
  wire \spo[17]_INST_0_i_26_n_0 ;
  wire \spo[17]_INST_0_i_27_n_0 ;
  wire \spo[17]_INST_0_i_28_n_0 ;
  wire \spo[17]_INST_0_i_29_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_30_n_0 ;
  wire \spo[17]_INST_0_i_31_n_0 ;
  wire \spo[17]_INST_0_i_32_n_0 ;
  wire \spo[17]_INST_0_i_33_n_0 ;
  wire \spo[17]_INST_0_i_34_n_0 ;
  wire \spo[17]_INST_0_i_35_n_0 ;
  wire \spo[17]_INST_0_i_36_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_7_n_0 ;
  wire \spo[17]_INST_0_i_8_n_0 ;
  wire \spo[17]_INST_0_i_9_n_0 ;
  wire \spo[18]_INST_0_i_10_n_0 ;
  wire \spo[18]_INST_0_i_11_n_0 ;
  wire \spo[18]_INST_0_i_12_n_0 ;
  wire \spo[18]_INST_0_i_13_n_0 ;
  wire \spo[18]_INST_0_i_14_n_0 ;
  wire \spo[18]_INST_0_i_15_n_0 ;
  wire \spo[18]_INST_0_i_16_n_0 ;
  wire \spo[18]_INST_0_i_17_n_0 ;
  wire \spo[18]_INST_0_i_18_n_0 ;
  wire \spo[18]_INST_0_i_19_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_20_n_0 ;
  wire \spo[18]_INST_0_i_21_n_0 ;
  wire \spo[18]_INST_0_i_22_n_0 ;
  wire \spo[18]_INST_0_i_23_n_0 ;
  wire \spo[18]_INST_0_i_24_n_0 ;
  wire \spo[18]_INST_0_i_25_n_0 ;
  wire \spo[18]_INST_0_i_26_n_0 ;
  wire \spo[18]_INST_0_i_27_n_0 ;
  wire \spo[18]_INST_0_i_28_n_0 ;
  wire \spo[18]_INST_0_i_29_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_30_n_0 ;
  wire \spo[18]_INST_0_i_31_n_0 ;
  wire \spo[18]_INST_0_i_32_n_0 ;
  wire \spo[18]_INST_0_i_33_n_0 ;
  wire \spo[18]_INST_0_i_34_n_0 ;
  wire \spo[18]_INST_0_i_35_n_0 ;
  wire \spo[18]_INST_0_i_36_n_0 ;
  wire \spo[18]_INST_0_i_37_n_0 ;
  wire \spo[18]_INST_0_i_38_n_0 ;
  wire \spo[18]_INST_0_i_39_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_40_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_7_n_0 ;
  wire \spo[18]_INST_0_i_8_n_0 ;
  wire \spo[18]_INST_0_i_9_n_0 ;
  wire \spo[19]_INST_0_i_10_n_0 ;
  wire \spo[19]_INST_0_i_11_n_0 ;
  wire \spo[19]_INST_0_i_12_n_0 ;
  wire \spo[19]_INST_0_i_13_n_0 ;
  wire \spo[19]_INST_0_i_14_n_0 ;
  wire \spo[19]_INST_0_i_15_n_0 ;
  wire \spo[19]_INST_0_i_16_n_0 ;
  wire \spo[19]_INST_0_i_17_n_0 ;
  wire \spo[19]_INST_0_i_18_n_0 ;
  wire \spo[19]_INST_0_i_19_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_20_n_0 ;
  wire \spo[19]_INST_0_i_21_n_0 ;
  wire \spo[19]_INST_0_i_22_n_0 ;
  wire \spo[19]_INST_0_i_23_n_0 ;
  wire \spo[19]_INST_0_i_24_n_0 ;
  wire \spo[19]_INST_0_i_25_n_0 ;
  wire \spo[19]_INST_0_i_26_n_0 ;
  wire \spo[19]_INST_0_i_27_n_0 ;
  wire \spo[19]_INST_0_i_28_n_0 ;
  wire \spo[19]_INST_0_i_29_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_30_n_0 ;
  wire \spo[19]_INST_0_i_31_n_0 ;
  wire \spo[19]_INST_0_i_32_n_0 ;
  wire \spo[19]_INST_0_i_33_n_0 ;
  wire \spo[19]_INST_0_i_34_n_0 ;
  wire \spo[19]_INST_0_i_35_n_0 ;
  wire \spo[19]_INST_0_i_36_n_0 ;
  wire \spo[19]_INST_0_i_37_n_0 ;
  wire \spo[19]_INST_0_i_38_n_0 ;
  wire \spo[19]_INST_0_i_39_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_40_n_0 ;
  wire \spo[19]_INST_0_i_41_n_0 ;
  wire \spo[19]_INST_0_i_42_n_0 ;
  wire \spo[19]_INST_0_i_43_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_7_n_0 ;
  wire \spo[19]_INST_0_i_8_n_0 ;
  wire \spo[19]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[20]_INST_0_i_10_n_0 ;
  wire \spo[20]_INST_0_i_11_n_0 ;
  wire \spo[20]_INST_0_i_12_n_0 ;
  wire \spo[20]_INST_0_i_13_n_0 ;
  wire \spo[20]_INST_0_i_14_n_0 ;
  wire \spo[20]_INST_0_i_15_n_0 ;
  wire \spo[20]_INST_0_i_16_n_0 ;
  wire \spo[20]_INST_0_i_17_n_0 ;
  wire \spo[20]_INST_0_i_18_n_0 ;
  wire \spo[20]_INST_0_i_19_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_20_n_0 ;
  wire \spo[20]_INST_0_i_21_n_0 ;
  wire \spo[20]_INST_0_i_22_n_0 ;
  wire \spo[20]_INST_0_i_23_n_0 ;
  wire \spo[20]_INST_0_i_24_n_0 ;
  wire \spo[20]_INST_0_i_25_n_0 ;
  wire \spo[20]_INST_0_i_26_n_0 ;
  wire \spo[20]_INST_0_i_27_n_0 ;
  wire \spo[20]_INST_0_i_28_n_0 ;
  wire \spo[20]_INST_0_i_29_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_30_n_0 ;
  wire \spo[20]_INST_0_i_31_n_0 ;
  wire \spo[20]_INST_0_i_32_n_0 ;
  wire \spo[20]_INST_0_i_33_n_0 ;
  wire \spo[20]_INST_0_i_34_n_0 ;
  wire \spo[20]_INST_0_i_35_n_0 ;
  wire \spo[20]_INST_0_i_36_n_0 ;
  wire \spo[20]_INST_0_i_37_n_0 ;
  wire \spo[20]_INST_0_i_38_n_0 ;
  wire \spo[20]_INST_0_i_39_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_40_n_0 ;
  wire \spo[20]_INST_0_i_41_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[20]_INST_0_i_7_n_0 ;
  wire \spo[20]_INST_0_i_8_n_0 ;
  wire \spo[20]_INST_0_i_9_n_0 ;
  wire \spo[21]_INST_0_i_10_n_0 ;
  wire \spo[21]_INST_0_i_11_n_0 ;
  wire \spo[21]_INST_0_i_12_n_0 ;
  wire \spo[21]_INST_0_i_13_n_0 ;
  wire \spo[21]_INST_0_i_14_n_0 ;
  wire \spo[21]_INST_0_i_15_n_0 ;
  wire \spo[21]_INST_0_i_16_n_0 ;
  wire \spo[21]_INST_0_i_17_n_0 ;
  wire \spo[21]_INST_0_i_18_n_0 ;
  wire \spo[21]_INST_0_i_19_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_20_n_0 ;
  wire \spo[21]_INST_0_i_21_n_0 ;
  wire \spo[21]_INST_0_i_22_n_0 ;
  wire \spo[21]_INST_0_i_23_n_0 ;
  wire \spo[21]_INST_0_i_24_n_0 ;
  wire \spo[21]_INST_0_i_25_n_0 ;
  wire \spo[21]_INST_0_i_26_n_0 ;
  wire \spo[21]_INST_0_i_27_n_0 ;
  wire \spo[21]_INST_0_i_28_n_0 ;
  wire \spo[21]_INST_0_i_29_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_30_n_0 ;
  wire \spo[21]_INST_0_i_31_n_0 ;
  wire \spo[21]_INST_0_i_32_n_0 ;
  wire \spo[21]_INST_0_i_33_n_0 ;
  wire \spo[21]_INST_0_i_34_n_0 ;
  wire \spo[21]_INST_0_i_35_n_0 ;
  wire \spo[21]_INST_0_i_36_n_0 ;
  wire \spo[21]_INST_0_i_37_n_0 ;
  wire \spo[21]_INST_0_i_38_n_0 ;
  wire \spo[21]_INST_0_i_39_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_40_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_7_n_0 ;
  wire \spo[21]_INST_0_i_8_n_0 ;
  wire \spo[21]_INST_0_i_9_n_0 ;
  wire \spo[22]_INST_0_i_10_n_0 ;
  wire \spo[22]_INST_0_i_11_n_0 ;
  wire \spo[22]_INST_0_i_12_n_0 ;
  wire \spo[22]_INST_0_i_13_n_0 ;
  wire \spo[22]_INST_0_i_14_n_0 ;
  wire \spo[22]_INST_0_i_15_n_0 ;
  wire \spo[22]_INST_0_i_16_n_0 ;
  wire \spo[22]_INST_0_i_17_n_0 ;
  wire \spo[22]_INST_0_i_18_n_0 ;
  wire \spo[22]_INST_0_i_19_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_20_n_0 ;
  wire \spo[22]_INST_0_i_21_n_0 ;
  wire \spo[22]_INST_0_i_22_n_0 ;
  wire \spo[22]_INST_0_i_23_n_0 ;
  wire \spo[22]_INST_0_i_24_n_0 ;
  wire \spo[22]_INST_0_i_25_n_0 ;
  wire \spo[22]_INST_0_i_26_n_0 ;
  wire \spo[22]_INST_0_i_27_n_0 ;
  wire \spo[22]_INST_0_i_28_n_0 ;
  wire \spo[22]_INST_0_i_29_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_30_n_0 ;
  wire \spo[22]_INST_0_i_31_n_0 ;
  wire \spo[22]_INST_0_i_32_n_0 ;
  wire \spo[22]_INST_0_i_33_n_0 ;
  wire \spo[22]_INST_0_i_34_n_0 ;
  wire \spo[22]_INST_0_i_35_n_0 ;
  wire \spo[22]_INST_0_i_36_n_0 ;
  wire \spo[22]_INST_0_i_37_n_0 ;
  wire \spo[22]_INST_0_i_38_n_0 ;
  wire \spo[22]_INST_0_i_39_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_40_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_7_n_0 ;
  wire \spo[22]_INST_0_i_8_n_0 ;
  wire \spo[22]_INST_0_i_9_n_0 ;
  wire \spo[23]_INST_0_i_10_n_0 ;
  wire \spo[23]_INST_0_i_11_n_0 ;
  wire \spo[23]_INST_0_i_12_n_0 ;
  wire \spo[23]_INST_0_i_13_n_0 ;
  wire \spo[23]_INST_0_i_14_n_0 ;
  wire \spo[23]_INST_0_i_15_n_0 ;
  wire \spo[23]_INST_0_i_16_n_0 ;
  wire \spo[23]_INST_0_i_17_n_0 ;
  wire \spo[23]_INST_0_i_18_n_0 ;
  wire \spo[23]_INST_0_i_19_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_20_n_0 ;
  wire \spo[23]_INST_0_i_21_n_0 ;
  wire \spo[23]_INST_0_i_22_n_0 ;
  wire \spo[23]_INST_0_i_23_n_0 ;
  wire \spo[23]_INST_0_i_24_n_0 ;
  wire \spo[23]_INST_0_i_25_n_0 ;
  wire \spo[23]_INST_0_i_26_n_0 ;
  wire \spo[23]_INST_0_i_27_n_0 ;
  wire \spo[23]_INST_0_i_28_n_0 ;
  wire \spo[23]_INST_0_i_29_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_30_n_0 ;
  wire \spo[23]_INST_0_i_31_n_0 ;
  wire \spo[23]_INST_0_i_32_n_0 ;
  wire \spo[23]_INST_0_i_33_n_0 ;
  wire \spo[23]_INST_0_i_34_n_0 ;
  wire \spo[23]_INST_0_i_35_n_0 ;
  wire \spo[23]_INST_0_i_36_n_0 ;
  wire \spo[23]_INST_0_i_37_n_0 ;
  wire \spo[23]_INST_0_i_38_n_0 ;
  wire \spo[23]_INST_0_i_39_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_40_n_0 ;
  wire \spo[23]_INST_0_i_41_n_0 ;
  wire \spo[23]_INST_0_i_42_n_0 ;
  wire \spo[23]_INST_0_i_43_n_0 ;
  wire \spo[23]_INST_0_i_44_n_0 ;
  wire \spo[23]_INST_0_i_45_n_0 ;
  wire \spo[23]_INST_0_i_46_n_0 ;
  wire \spo[23]_INST_0_i_47_n_0 ;
  wire \spo[23]_INST_0_i_48_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[23]_INST_0_i_8_n_0 ;
  wire \spo[23]_INST_0_i_9_n_0 ;
  wire \spo[24]_INST_0_i_10_n_0 ;
  wire \spo[24]_INST_0_i_11_n_0 ;
  wire \spo[24]_INST_0_i_12_n_0 ;
  wire \spo[24]_INST_0_i_13_n_0 ;
  wire \spo[24]_INST_0_i_14_n_0 ;
  wire \spo[24]_INST_0_i_15_n_0 ;
  wire \spo[24]_INST_0_i_16_n_0 ;
  wire \spo[24]_INST_0_i_17_n_0 ;
  wire \spo[24]_INST_0_i_18_n_0 ;
  wire \spo[24]_INST_0_i_19_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_20_n_0 ;
  wire \spo[24]_INST_0_i_21_n_0 ;
  wire \spo[24]_INST_0_i_22_n_0 ;
  wire \spo[24]_INST_0_i_23_n_0 ;
  wire \spo[24]_INST_0_i_24_n_0 ;
  wire \spo[24]_INST_0_i_25_n_0 ;
  wire \spo[24]_INST_0_i_26_n_0 ;
  wire \spo[24]_INST_0_i_27_n_0 ;
  wire \spo[24]_INST_0_i_28_n_0 ;
  wire \spo[24]_INST_0_i_29_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_30_n_0 ;
  wire \spo[24]_INST_0_i_31_n_0 ;
  wire \spo[24]_INST_0_i_32_n_0 ;
  wire \spo[24]_INST_0_i_33_n_0 ;
  wire \spo[24]_INST_0_i_34_n_0 ;
  wire \spo[24]_INST_0_i_35_n_0 ;
  wire \spo[24]_INST_0_i_36_n_0 ;
  wire \spo[24]_INST_0_i_37_n_0 ;
  wire \spo[24]_INST_0_i_38_n_0 ;
  wire \spo[24]_INST_0_i_39_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_40_n_0 ;
  wire \spo[24]_INST_0_i_41_n_0 ;
  wire \spo[24]_INST_0_i_42_n_0 ;
  wire \spo[24]_INST_0_i_43_n_0 ;
  wire \spo[24]_INST_0_i_44_n_0 ;
  wire \spo[24]_INST_0_i_45_n_0 ;
  wire \spo[24]_INST_0_i_46_n_0 ;
  wire \spo[24]_INST_0_i_47_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_7_n_0 ;
  wire \spo[24]_INST_0_i_8_n_0 ;
  wire \spo[24]_INST_0_i_9_n_0 ;
  wire \spo[25]_INST_0_i_10_n_0 ;
  wire \spo[25]_INST_0_i_11_n_0 ;
  wire \spo[25]_INST_0_i_12_n_0 ;
  wire \spo[25]_INST_0_i_13_n_0 ;
  wire \spo[25]_INST_0_i_14_n_0 ;
  wire \spo[25]_INST_0_i_15_n_0 ;
  wire \spo[25]_INST_0_i_16_n_0 ;
  wire \spo[25]_INST_0_i_17_n_0 ;
  wire \spo[25]_INST_0_i_18_n_0 ;
  wire \spo[25]_INST_0_i_19_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_20_n_0 ;
  wire \spo[25]_INST_0_i_21_n_0 ;
  wire \spo[25]_INST_0_i_22_n_0 ;
  wire \spo[25]_INST_0_i_23_n_0 ;
  wire \spo[25]_INST_0_i_24_n_0 ;
  wire \spo[25]_INST_0_i_25_n_0 ;
  wire \spo[25]_INST_0_i_26_n_0 ;
  wire \spo[25]_INST_0_i_27_n_0 ;
  wire \spo[25]_INST_0_i_28_n_0 ;
  wire \spo[25]_INST_0_i_29_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_30_n_0 ;
  wire \spo[25]_INST_0_i_31_n_0 ;
  wire \spo[25]_INST_0_i_32_n_0 ;
  wire \spo[25]_INST_0_i_33_n_0 ;
  wire \spo[25]_INST_0_i_34_n_0 ;
  wire \spo[25]_INST_0_i_35_n_0 ;
  wire \spo[25]_INST_0_i_36_n_0 ;
  wire \spo[25]_INST_0_i_37_n_0 ;
  wire \spo[25]_INST_0_i_38_n_0 ;
  wire \spo[25]_INST_0_i_39_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_40_n_0 ;
  wire \spo[25]_INST_0_i_41_n_0 ;
  wire \spo[25]_INST_0_i_42_n_0 ;
  wire \spo[25]_INST_0_i_43_n_0 ;
  wire \spo[25]_INST_0_i_44_n_0 ;
  wire \spo[25]_INST_0_i_45_n_0 ;
  wire \spo[25]_INST_0_i_46_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_7_n_0 ;
  wire \spo[25]_INST_0_i_8_n_0 ;
  wire \spo[25]_INST_0_i_9_n_0 ;
  wire \spo[26]_INST_0_i_10_n_0 ;
  wire \spo[26]_INST_0_i_11_n_0 ;
  wire \spo[26]_INST_0_i_12_n_0 ;
  wire \spo[26]_INST_0_i_13_n_0 ;
  wire \spo[26]_INST_0_i_14_n_0 ;
  wire \spo[26]_INST_0_i_15_n_0 ;
  wire \spo[26]_INST_0_i_16_n_0 ;
  wire \spo[26]_INST_0_i_17_n_0 ;
  wire \spo[26]_INST_0_i_18_n_0 ;
  wire \spo[26]_INST_0_i_19_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_20_n_0 ;
  wire \spo[26]_INST_0_i_21_n_0 ;
  wire \spo[26]_INST_0_i_22_n_0 ;
  wire \spo[26]_INST_0_i_23_n_0 ;
  wire \spo[26]_INST_0_i_24_n_0 ;
  wire \spo[26]_INST_0_i_25_n_0 ;
  wire \spo[26]_INST_0_i_26_n_0 ;
  wire \spo[26]_INST_0_i_27_n_0 ;
  wire \spo[26]_INST_0_i_28_n_0 ;
  wire \spo[26]_INST_0_i_29_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_30_n_0 ;
  wire \spo[26]_INST_0_i_31_n_0 ;
  wire \spo[26]_INST_0_i_32_n_0 ;
  wire \spo[26]_INST_0_i_33_n_0 ;
  wire \spo[26]_INST_0_i_34_n_0 ;
  wire \spo[26]_INST_0_i_35_n_0 ;
  wire \spo[26]_INST_0_i_36_n_0 ;
  wire \spo[26]_INST_0_i_37_n_0 ;
  wire \spo[26]_INST_0_i_38_n_0 ;
  wire \spo[26]_INST_0_i_39_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_40_n_0 ;
  wire \spo[26]_INST_0_i_41_n_0 ;
  wire \spo[26]_INST_0_i_42_n_0 ;
  wire \spo[26]_INST_0_i_43_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_8_n_0 ;
  wire \spo[26]_INST_0_i_9_n_0 ;
  wire \spo[27]_INST_0_i_10_n_0 ;
  wire \spo[27]_INST_0_i_11_n_0 ;
  wire \spo[27]_INST_0_i_12_n_0 ;
  wire \spo[27]_INST_0_i_13_n_0 ;
  wire \spo[27]_INST_0_i_14_n_0 ;
  wire \spo[27]_INST_0_i_15_n_0 ;
  wire \spo[27]_INST_0_i_16_n_0 ;
  wire \spo[27]_INST_0_i_17_n_0 ;
  wire \spo[27]_INST_0_i_18_n_0 ;
  wire \spo[27]_INST_0_i_19_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_20_n_0 ;
  wire \spo[27]_INST_0_i_21_n_0 ;
  wire \spo[27]_INST_0_i_22_n_0 ;
  wire \spo[27]_INST_0_i_23_n_0 ;
  wire \spo[27]_INST_0_i_24_n_0 ;
  wire \spo[27]_INST_0_i_25_n_0 ;
  wire \spo[27]_INST_0_i_26_n_0 ;
  wire \spo[27]_INST_0_i_27_n_0 ;
  wire \spo[27]_INST_0_i_28_n_0 ;
  wire \spo[27]_INST_0_i_29_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_30_n_0 ;
  wire \spo[27]_INST_0_i_31_n_0 ;
  wire \spo[27]_INST_0_i_32_n_0 ;
  wire \spo[27]_INST_0_i_33_n_0 ;
  wire \spo[27]_INST_0_i_34_n_0 ;
  wire \spo[27]_INST_0_i_35_n_0 ;
  wire \spo[27]_INST_0_i_36_n_0 ;
  wire \spo[27]_INST_0_i_37_n_0 ;
  wire \spo[27]_INST_0_i_38_n_0 ;
  wire \spo[27]_INST_0_i_39_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_40_n_0 ;
  wire \spo[27]_INST_0_i_41_n_0 ;
  wire \spo[27]_INST_0_i_42_n_0 ;
  wire \spo[27]_INST_0_i_43_n_0 ;
  wire \spo[27]_INST_0_i_44_n_0 ;
  wire \spo[27]_INST_0_i_45_n_0 ;
  wire \spo[27]_INST_0_i_46_n_0 ;
  wire \spo[27]_INST_0_i_47_n_0 ;
  wire \spo[27]_INST_0_i_48_n_0 ;
  wire \spo[27]_INST_0_i_49_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_7_n_0 ;
  wire \spo[27]_INST_0_i_8_n_0 ;
  wire \spo[27]_INST_0_i_9_n_0 ;
  wire \spo[28]_INST_0_i_10_n_0 ;
  wire \spo[28]_INST_0_i_11_n_0 ;
  wire \spo[28]_INST_0_i_12_n_0 ;
  wire \spo[28]_INST_0_i_13_n_0 ;
  wire \spo[28]_INST_0_i_14_n_0 ;
  wire \spo[28]_INST_0_i_15_n_0 ;
  wire \spo[28]_INST_0_i_16_n_0 ;
  wire \spo[28]_INST_0_i_17_n_0 ;
  wire \spo[28]_INST_0_i_18_n_0 ;
  wire \spo[28]_INST_0_i_19_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_20_n_0 ;
  wire \spo[28]_INST_0_i_21_n_0 ;
  wire \spo[28]_INST_0_i_22_n_0 ;
  wire \spo[28]_INST_0_i_23_n_0 ;
  wire \spo[28]_INST_0_i_24_n_0 ;
  wire \spo[28]_INST_0_i_25_n_0 ;
  wire \spo[28]_INST_0_i_26_n_0 ;
  wire \spo[28]_INST_0_i_27_n_0 ;
  wire \spo[28]_INST_0_i_28_n_0 ;
  wire \spo[28]_INST_0_i_29_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_30_n_0 ;
  wire \spo[28]_INST_0_i_31_n_0 ;
  wire \spo[28]_INST_0_i_32_n_0 ;
  wire \spo[28]_INST_0_i_33_n_0 ;
  wire \spo[28]_INST_0_i_34_n_0 ;
  wire \spo[28]_INST_0_i_35_n_0 ;
  wire \spo[28]_INST_0_i_36_n_0 ;
  wire \spo[28]_INST_0_i_37_n_0 ;
  wire \spo[28]_INST_0_i_38_n_0 ;
  wire \spo[28]_INST_0_i_39_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_40_n_0 ;
  wire \spo[28]_INST_0_i_41_n_0 ;
  wire \spo[28]_INST_0_i_42_n_0 ;
  wire \spo[28]_INST_0_i_43_n_0 ;
  wire \spo[28]_INST_0_i_44_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_7_n_0 ;
  wire \spo[28]_INST_0_i_8_n_0 ;
  wire \spo[28]_INST_0_i_9_n_0 ;
  wire \spo[29]_INST_0_i_10_n_0 ;
  wire \spo[29]_INST_0_i_11_n_0 ;
  wire \spo[29]_INST_0_i_12_n_0 ;
  wire \spo[29]_INST_0_i_13_n_0 ;
  wire \spo[29]_INST_0_i_14_n_0 ;
  wire \spo[29]_INST_0_i_15_n_0 ;
  wire \spo[29]_INST_0_i_16_n_0 ;
  wire \spo[29]_INST_0_i_17_n_0 ;
  wire \spo[29]_INST_0_i_18_n_0 ;
  wire \spo[29]_INST_0_i_19_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_20_n_0 ;
  wire \spo[29]_INST_0_i_21_n_0 ;
  wire \spo[29]_INST_0_i_22_n_0 ;
  wire \spo[29]_INST_0_i_23_n_0 ;
  wire \spo[29]_INST_0_i_24_n_0 ;
  wire \spo[29]_INST_0_i_25_n_0 ;
  wire \spo[29]_INST_0_i_26_n_0 ;
  wire \spo[29]_INST_0_i_27_n_0 ;
  wire \spo[29]_INST_0_i_28_n_0 ;
  wire \spo[29]_INST_0_i_29_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_30_n_0 ;
  wire \spo[29]_INST_0_i_31_n_0 ;
  wire \spo[29]_INST_0_i_32_n_0 ;
  wire \spo[29]_INST_0_i_33_n_0 ;
  wire \spo[29]_INST_0_i_34_n_0 ;
  wire \spo[29]_INST_0_i_35_n_0 ;
  wire \spo[29]_INST_0_i_36_n_0 ;
  wire \spo[29]_INST_0_i_37_n_0 ;
  wire \spo[29]_INST_0_i_38_n_0 ;
  wire \spo[29]_INST_0_i_39_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_40_n_0 ;
  wire \spo[29]_INST_0_i_41_n_0 ;
  wire \spo[29]_INST_0_i_42_n_0 ;
  wire \spo[29]_INST_0_i_43_n_0 ;
  wire \spo[29]_INST_0_i_44_n_0 ;
  wire \spo[29]_INST_0_i_45_n_0 ;
  wire \spo[29]_INST_0_i_46_n_0 ;
  wire \spo[29]_INST_0_i_47_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_8_n_0 ;
  wire \spo[29]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_25_n_0 ;
  wire \spo[2]_INST_0_i_26_n_0 ;
  wire \spo[2]_INST_0_i_27_n_0 ;
  wire \spo[2]_INST_0_i_28_n_0 ;
  wire \spo[2]_INST_0_i_29_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_30_n_0 ;
  wire \spo[2]_INST_0_i_31_n_0 ;
  wire \spo[2]_INST_0_i_32_n_0 ;
  wire \spo[2]_INST_0_i_33_n_0 ;
  wire \spo[2]_INST_0_i_34_n_0 ;
  wire \spo[2]_INST_0_i_35_n_0 ;
  wire \spo[2]_INST_0_i_36_n_0 ;
  wire \spo[2]_INST_0_i_37_n_0 ;
  wire \spo[2]_INST_0_i_38_n_0 ;
  wire \spo[2]_INST_0_i_39_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_40_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[30]_INST_0_i_10_n_0 ;
  wire \spo[30]_INST_0_i_11_n_0 ;
  wire \spo[30]_INST_0_i_12_n_0 ;
  wire \spo[30]_INST_0_i_13_n_0 ;
  wire \spo[30]_INST_0_i_14_n_0 ;
  wire \spo[30]_INST_0_i_15_n_0 ;
  wire \spo[30]_INST_0_i_16_n_0 ;
  wire \spo[30]_INST_0_i_17_n_0 ;
  wire \spo[30]_INST_0_i_18_n_0 ;
  wire \spo[30]_INST_0_i_19_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_20_n_0 ;
  wire \spo[30]_INST_0_i_21_n_0 ;
  wire \spo[30]_INST_0_i_22_n_0 ;
  wire \spo[30]_INST_0_i_23_n_0 ;
  wire \spo[30]_INST_0_i_24_n_0 ;
  wire \spo[30]_INST_0_i_25_n_0 ;
  wire \spo[30]_INST_0_i_26_n_0 ;
  wire \spo[30]_INST_0_i_27_n_0 ;
  wire \spo[30]_INST_0_i_28_n_0 ;
  wire \spo[30]_INST_0_i_29_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_30_n_0 ;
  wire \spo[30]_INST_0_i_31_n_0 ;
  wire \spo[30]_INST_0_i_32_n_0 ;
  wire \spo[30]_INST_0_i_33_n_0 ;
  wire \spo[30]_INST_0_i_34_n_0 ;
  wire \spo[30]_INST_0_i_35_n_0 ;
  wire \spo[30]_INST_0_i_36_n_0 ;
  wire \spo[30]_INST_0_i_37_n_0 ;
  wire \spo[30]_INST_0_i_38_n_0 ;
  wire \spo[30]_INST_0_i_39_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_40_n_0 ;
  wire \spo[30]_INST_0_i_41_n_0 ;
  wire \spo[30]_INST_0_i_42_n_0 ;
  wire \spo[30]_INST_0_i_43_n_0 ;
  wire \spo[30]_INST_0_i_44_n_0 ;
  wire \spo[30]_INST_0_i_45_n_0 ;
  wire \spo[30]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_5_n_0 ;
  wire \spo[30]_INST_0_i_6_n_0 ;
  wire \spo[30]_INST_0_i_7_n_0 ;
  wire \spo[30]_INST_0_i_8_n_0 ;
  wire \spo[30]_INST_0_i_9_n_0 ;
  wire \spo[31]_INST_0_i_10_n_0 ;
  wire \spo[31]_INST_0_i_11_n_0 ;
  wire \spo[31]_INST_0_i_12_n_0 ;
  wire \spo[31]_INST_0_i_13_n_0 ;
  wire \spo[31]_INST_0_i_14_n_0 ;
  wire \spo[31]_INST_0_i_15_n_0 ;
  wire \spo[31]_INST_0_i_16_n_0 ;
  wire \spo[31]_INST_0_i_17_n_0 ;
  wire \spo[31]_INST_0_i_18_n_0 ;
  wire \spo[31]_INST_0_i_19_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_20_n_0 ;
  wire \spo[31]_INST_0_i_21_n_0 ;
  wire \spo[31]_INST_0_i_22_n_0 ;
  wire \spo[31]_INST_0_i_23_n_0 ;
  wire \spo[31]_INST_0_i_24_n_0 ;
  wire \spo[31]_INST_0_i_25_n_0 ;
  wire \spo[31]_INST_0_i_26_n_0 ;
  wire \spo[31]_INST_0_i_27_n_0 ;
  wire \spo[31]_INST_0_i_28_n_0 ;
  wire \spo[31]_INST_0_i_29_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_30_n_0 ;
  wire \spo[31]_INST_0_i_31_n_0 ;
  wire \spo[31]_INST_0_i_32_n_0 ;
  wire \spo[31]_INST_0_i_33_n_0 ;
  wire \spo[31]_INST_0_i_34_n_0 ;
  wire \spo[31]_INST_0_i_35_n_0 ;
  wire \spo[31]_INST_0_i_36_n_0 ;
  wire \spo[31]_INST_0_i_37_n_0 ;
  wire \spo[31]_INST_0_i_38_n_0 ;
  wire \spo[31]_INST_0_i_39_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_40_n_0 ;
  wire \spo[31]_INST_0_i_41_n_0 ;
  wire \spo[31]_INST_0_i_42_n_0 ;
  wire \spo[31]_INST_0_i_43_n_0 ;
  wire \spo[31]_INST_0_i_44_n_0 ;
  wire \spo[31]_INST_0_i_45_n_0 ;
  wire \spo[31]_INST_0_i_46_n_0 ;
  wire \spo[31]_INST_0_i_47_n_0 ;
  wire \spo[31]_INST_0_i_48_n_0 ;
  wire \spo[31]_INST_0_i_49_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_50_n_0 ;
  wire \spo[31]_INST_0_i_51_n_0 ;
  wire \spo[31]_INST_0_i_52_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[31]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_33_n_0 ;
  wire \spo[3]_INST_0_i_34_n_0 ;
  wire \spo[3]_INST_0_i_35_n_0 ;
  wire \spo[3]_INST_0_i_36_n_0 ;
  wire \spo[3]_INST_0_i_37_n_0 ;
  wire \spo[3]_INST_0_i_38_n_0 ;
  wire \spo[3]_INST_0_i_39_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_29_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_30_n_0 ;
  wire \spo[4]_INST_0_i_31_n_0 ;
  wire \spo[4]_INST_0_i_32_n_0 ;
  wire \spo[4]_INST_0_i_33_n_0 ;
  wire \spo[4]_INST_0_i_34_n_0 ;
  wire \spo[4]_INST_0_i_35_n_0 ;
  wire \spo[4]_INST_0_i_36_n_0 ;
  wire \spo[4]_INST_0_i_37_n_0 ;
  wire \spo[4]_INST_0_i_38_n_0 ;
  wire \spo[4]_INST_0_i_39_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_40_n_0 ;
  wire \spo[4]_INST_0_i_41_n_0 ;
  wire \spo[4]_INST_0_i_42_n_0 ;
  wire \spo[4]_INST_0_i_43_n_0 ;
  wire \spo[4]_INST_0_i_44_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_28_n_0 ;
  wire \spo[5]_INST_0_i_29_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_30_n_0 ;
  wire \spo[5]_INST_0_i_31_n_0 ;
  wire \spo[5]_INST_0_i_32_n_0 ;
  wire \spo[5]_INST_0_i_33_n_0 ;
  wire \spo[5]_INST_0_i_34_n_0 ;
  wire \spo[5]_INST_0_i_35_n_0 ;
  wire \spo[5]_INST_0_i_36_n_0 ;
  wire \spo[5]_INST_0_i_37_n_0 ;
  wire \spo[5]_INST_0_i_38_n_0 ;
  wire \spo[5]_INST_0_i_39_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_40_n_0 ;
  wire \spo[5]_INST_0_i_41_n_0 ;
  wire \spo[5]_INST_0_i_42_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_13_n_0 ;
  wire \spo[8]_INST_0_i_14_n_0 ;
  wire \spo[8]_INST_0_i_15_n_0 ;
  wire \spo[8]_INST_0_i_16_n_0 ;
  wire \spo[8]_INST_0_i_17_n_0 ;
  wire \spo[8]_INST_0_i_18_n_0 ;
  wire \spo[8]_INST_0_i_19_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_20_n_0 ;
  wire \spo[8]_INST_0_i_21_n_0 ;
  wire \spo[8]_INST_0_i_22_n_0 ;
  wire \spo[8]_INST_0_i_23_n_0 ;
  wire \spo[8]_INST_0_i_24_n_0 ;
  wire \spo[8]_INST_0_i_25_n_0 ;
  wire \spo[8]_INST_0_i_26_n_0 ;
  wire \spo[8]_INST_0_i_27_n_0 ;
  wire \spo[8]_INST_0_i_28_n_0 ;
  wire \spo[8]_INST_0_i_29_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_30_n_0 ;
  wire \spo[8]_INST_0_i_31_n_0 ;
  wire \spo[8]_INST_0_i_32_n_0 ;
  wire \spo[8]_INST_0_i_33_n_0 ;
  wire \spo[8]_INST_0_i_34_n_0 ;
  wire \spo[8]_INST_0_i_35_n_0 ;
  wire \spo[8]_INST_0_i_36_n_0 ;
  wire \spo[8]_INST_0_i_37_n_0 ;
  wire \spo[8]_INST_0_i_38_n_0 ;
  wire \spo[8]_INST_0_i_39_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_40_n_0 ;
  wire \spo[8]_INST_0_i_41_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;
  wire \spo[9]_INST_0_i_10_n_0 ;
  wire \spo[9]_INST_0_i_11_n_0 ;
  wire \spo[9]_INST_0_i_12_n_0 ;
  wire \spo[9]_INST_0_i_13_n_0 ;
  wire \spo[9]_INST_0_i_14_n_0 ;
  wire \spo[9]_INST_0_i_15_n_0 ;
  wire \spo[9]_INST_0_i_16_n_0 ;
  wire \spo[9]_INST_0_i_17_n_0 ;
  wire \spo[9]_INST_0_i_18_n_0 ;
  wire \spo[9]_INST_0_i_19_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_20_n_0 ;
  wire \spo[9]_INST_0_i_21_n_0 ;
  wire \spo[9]_INST_0_i_22_n_0 ;
  wire \spo[9]_INST_0_i_23_n_0 ;
  wire \spo[9]_INST_0_i_24_n_0 ;
  wire \spo[9]_INST_0_i_25_n_0 ;
  wire \spo[9]_INST_0_i_26_n_0 ;
  wire \spo[9]_INST_0_i_27_n_0 ;
  wire \spo[9]_INST_0_i_28_n_0 ;
  wire \spo[9]_INST_0_i_29_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_30_n_0 ;
  wire \spo[9]_INST_0_i_31_n_0 ;
  wire \spo[9]_INST_0_i_32_n_0 ;
  wire \spo[9]_INST_0_i_33_n_0 ;
  wire \spo[9]_INST_0_i_34_n_0 ;
  wire \spo[9]_INST_0_i_35_n_0 ;
  wire \spo[9]_INST_0_i_36_n_0 ;
  wire \spo[9]_INST_0_i_37_n_0 ;
  wire \spo[9]_INST_0_i_38_n_0 ;
  wire \spo[9]_INST_0_i_39_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_40_n_0 ;
  wire \spo[9]_INST_0_i_41_n_0 ;
  wire \spo[9]_INST_0_i_42_n_0 ;
  wire \spo[9]_INST_0_i_43_n_0 ;
  wire \spo[9]_INST_0_i_44_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_8_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \spo[0]_INST_0_i_10 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_22_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_24_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4C00800030000700)) 
    \spo[0]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  MUXF7 \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_25_n_0 ),
        .I1(\spo[0]_INST_0_i_26_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h9000FFFF90000000)) 
    \spo[0]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_27_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[0]_INST_0_i_14 
       (.I0(\spo[0]_INST_0_i_28_n_0 ),
        .I1(a[0]),
        .I2(\spo[10]_INST_0_i_15_n_0 ),
        .I3(a[5]),
        .I4(\spo[0]_INST_0_i_29_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \spo[0]_INST_0_i_15 
       (.I0(\spo[24]_INST_0_i_27_n_0 ),
        .I1(a[5]),
        .I2(\spo[28]_INST_0_i_28_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  MUXF7 \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_31_n_0 ),
        .I1(\spo[0]_INST_0_i_32_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_17 
       (.I0(\spo[0]_INST_0_i_33_n_0 ),
        .I1(\spo[0]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_35_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_36_n_0 ),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_18 
       (.I0(\spo[28]_INST_0_i_36_n_0 ),
        .I1(\spo[0]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_38_n_0 ),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_39_n_0 ),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0500080000004400)) 
    \spo[0]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(\spo[0]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_12_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40302000)) 
    \spo[0]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0080202010104010)) 
    \spo[0]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0500000088130000)) 
    \spo[0]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[0]_INST_0_i_23 
       (.I0(a[13]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .I4(a[2]),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h01004800A0000400)) 
    \spo[0]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4015000080000000)) 
    \spo[0]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h010000000400C200)) 
    \spo[0]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h020003004000C000)) 
    \spo[0]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0048)) 
    \spo[0]_INST_0_i_28 
       (.I0(a[9]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h2090)) 
    \spo[0]_INST_0_i_29 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_13_n_0 ),
        .I1(\spo[0]_INST_0_i_14_n_0 ),
        .I2(a[6]),
        .I3(\spo[0]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08003C0000000000)) 
    \spo[0]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1000200048002C00)) 
    \spo[0]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h48000300)) 
    \spo[0]_INST_0_i_32 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00002080)) 
    \spo[0]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .O(\spo[0]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h5204000020190000)) 
    \spo[0]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h8000000090000800)) 
    \spo[0]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h40F0)) 
    \spo[0]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[28]_INST_0_i_32_n_0 ),
        .I3(a[1]),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00005000C00)) 
    \spo[0]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h80C00020)) 
    \spo[0]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h2300100000000C00)) 
    \spo[0]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_39_n_0 ));
  MUXF7 \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_17_n_0 ),
        .I1(\spo[0]_INST_0_i_18_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_5 
       (.I0(\spo[0]_INST_0_i_19_n_0 ),
        .I1(\spo[0]_INST_0_i_20_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0408000003300000)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \spo[0]_INST_0_i_7 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_22_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[0]_INST_0_i_21_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_22_n_0 ),
        .I1(a[8]),
        .I2(\spo[25]_INST_0_i_29_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_26_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A080008)) 
    \spo[0]_INST_0_i_9 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[0]_INST_0_i_23_n_0 ),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[10]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_4_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \spo[10]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_6_n_0 ),
        .I3(a[7]),
        .I4(\spo[10]_INST_0_i_5_n_0 ),
        .I5(a[8]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002AFF2A00)) 
    \spo[10]_INST_0_i_10 
       (.I0(\spo[21]_INST_0_i_39_n_0 ),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[8]),
        .I4(\spo[10]_INST_0_i_16_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB8003333B8000000)) 
    \spo[10]_INST_0_i_11 
       (.I0(\spo[12]_INST_0_i_16_n_0 ),
        .I1(a[7]),
        .I2(\spo[26]_INST_0_i_39_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_17_n_0 ),
        .O(\spo[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8B88888888888888)) 
    \spo[10]_INST_0_i_12 
       (.I0(\spo[12]_INST_0_i_26_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_32_n_0 ),
        .I4(a[1]),
        .I5(a[8]),
        .O(\spo[10]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[10]_INST_0_i_13 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[13]),
        .O(\spo[10]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h1000F700)) 
    \spo[10]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[10]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h2040)) 
    \spo[10]_INST_0_i_15 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .O(\spo[10]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h2040)) 
    \spo[10]_INST_0_i_16 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h45840000DE020000)) 
    \spo[10]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_6_n_0 ),
        .I1(\spo[12]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_10_n_0 ),
        .I4(a[7]),
        .I5(\spo[10]_INST_0_i_7_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_8_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_9_n_0 ),
        .I3(a[7]),
        .I4(\spo[10]_INST_0_i_10_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  MUXF7 \spo[10]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_11_n_0 ),
        .I1(\spo[10]_INST_0_i_12_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h76400000AA010000)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \spo[10]_INST_0_i_6 
       (.I0(\spo[10]_INST_0_i_14_n_0 ),
        .I1(a[8]),
        .I2(\spo[29]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(\spo[12]_INST_0_i_21_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE200E20000FF0000)) 
    \spo[10]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_31_n_0 ),
        .I1(a[0]),
        .I2(\spo[10]_INST_0_i_15_n_0 ),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_28_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B888888888)) 
    \spo[10]_INST_0_i_8 
       (.I0(\spo[12]_INST_0_i_16_n_0 ),
        .I1(a[8]),
        .I2(\spo[30]_INST_0_i_29_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \spo[10]_INST_0_i_9 
       (.I0(\spo[28]_INST_0_i_29_n_0 ),
        .I1(a[8]),
        .I2(\spo[12]_INST_0_i_21_n_0 ),
        .I3(a[0]),
        .I4(\spo[28]_INST_0_i_25_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[11]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_4_n_0 ),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[11]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[11]_INST_0_i_8_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \spo[11]_INST_0_i_10 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_23_n_0 ),
        .I3(a[7]),
        .I4(\spo[11]_INST_0_i_23_n_0 ),
        .I5(a[8]),
        .O(\spo[11]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[11]_INST_0_i_11 
       (.I0(\spo[11]_INST_0_i_24_n_0 ),
        .I1(a[7]),
        .I2(\spo[11]_INST_0_i_25_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_26_n_0 ),
        .O(\spo[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_12 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_27_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_29_n_0 ),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_13 
       (.I0(\spo[11]_INST_0_i_30_n_0 ),
        .I1(\spo[11]_INST_0_i_31_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_32_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_33_n_0 ),
        .O(\spo[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \spo[11]_INST_0_i_14 
       (.I0(\spo[11]_INST_0_i_34_n_0 ),
        .I1(a[7]),
        .I2(\spo[11]_INST_0_i_35_n_0 ),
        .I3(a[5]),
        .I4(\spo[23]_INST_0_i_38_n_0 ),
        .I5(a[8]),
        .O(\spo[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0035000014A40000)) 
    \spo[11]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \spo[11]_INST_0_i_16 
       (.I0(a[1]),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .I2(a[2]),
        .O(\spo[11]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8030)) 
    \spo[11]_INST_0_i_17 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[9]),
        .O(\spo[11]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h2400B800)) 
    \spo[11]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050904050)) 
    \spo[11]_INST_0_i_19 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_19_n_0 ));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_9_n_0 ),
        .I1(\spo[11]_INST_0_i_10_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h03B88B0300000000)) 
    \spo[11]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(\spo[31]_INST_0_i_30_n_0 ),
        .O(\spo[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00000503030)) 
    \spo[11]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h545F0000)) 
    \spo[11]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_30_n_0 ),
        .O(\spo[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4800C00020005C00)) 
    \spo[11]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h02CF000000C00000)) 
    \spo[11]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h62009D00)) 
    \spo[11]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h020008005B002700)) 
    \spo[11]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00B7000020300000)) 
    \spo[11]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \spo[11]_INST_0_i_28 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h005A000001E00000)) 
    \spo[11]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_29_n_0 ));
  MUXF7 \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_11_n_0 ),
        .I1(\spo[11]_INST_0_i_12_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h83003000)) 
    \spo[11]_INST_0_i_30 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h1048000024F90000)) 
    \spo[11]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[11]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h2000360080008600)) 
    \spo[11]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0700B000)) 
    \spo[11]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0C0000000F001C00)) 
    \spo[11]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h07004400)) 
    \spo[11]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .O(\spo[11]_INST_0_i_35_n_0 ));
  MUXF7 \spo[11]_INST_0_i_4 
       (.I0(\spo[11]_INST_0_i_13_n_0 ),
        .I1(\spo[11]_INST_0_i_14_n_0 ),
        .O(\spo[11]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h4020FFFF40200000)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[1]),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_15_n_0 ),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8162000076040000)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCE230E2)) 
    \spo[11]_INST_0_i_7 
       (.I0(\spo[11]_INST_0_i_16_n_0 ),
        .I1(a[0]),
        .I2(\spo[28]_INST_0_i_32_n_0 ),
        .I3(a[5]),
        .I4(\spo[11]_INST_0_i_17_n_0 ),
        .I5(a[8]),
        .O(\spo[11]_INST_0_i_7_n_0 ));
  MUXF7 \spo[11]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_18_n_0 ),
        .I1(\spo[11]_INST_0_i_19_n_0 ),
        .O(\spo[11]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[11]_INST_0_i_9 
       (.I0(\spo[11]_INST_0_i_20_n_0 ),
        .I1(a[7]),
        .I2(\spo[11]_INST_0_i_21_n_0 ),
        .I3(a[8]),
        .I4(\spo[11]_INST_0_i_22_n_0 ),
        .O(\spo[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[12]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[12]_INST_0_i_4_n_0 ),
        .O(spo[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[12]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_6_n_0 ),
        .I3(a[7]),
        .I4(\spo[12]_INST_0_i_7_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC804880)) 
    \spo[12]_INST_0_i_10 
       (.I0(a[1]),
        .I1(\spo[21]_INST_0_i_39_n_0 ),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[8]),
        .O(\spo[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF040404020000000)) 
    \spo[12]_INST_0_i_11 
       (.I0(a[8]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00880088FCBB3088)) 
    \spo[12]_INST_0_i_12 
       (.I0(\spo[12]_INST_0_i_22_n_0 ),
        .I1(a[7]),
        .I2(\spo[12]_INST_0_i_23_n_0 ),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_29_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[12]_INST_0_i_13 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_20_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_16_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_24_n_0 ),
        .O(\spo[12]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \spo[12]_INST_0_i_14 
       (.I0(a[5]),
        .I1(\spo[12]_INST_0_i_16_n_0 ),
        .I2(a[8]),
        .I3(a[7]),
        .I4(\spo[12]_INST_0_i_25_n_0 ),
        .O(\spo[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \spo[12]_INST_0_i_15 
       (.I0(\spo[12]_INST_0_i_26_n_0 ),
        .I1(a[7]),
        .I2(\spo[28]_INST_0_i_29_n_0 ),
        .I3(a[8]),
        .I4(\spo[12]_INST_0_i_27_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \spo[12]_INST_0_i_16 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .O(\spo[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0337000000000000)) 
    \spo[12]_INST_0_i_17 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[9]),
        .O(\spo[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7000A1006000A400)) 
    \spo[12]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000004000C040)) 
    \spo[12]_INST_0_i_19 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_8_n_0 ),
        .I1(\spo[12]_INST_0_i_9_n_0 ),
        .I2(a[6]),
        .I3(\spo[12]_INST_0_i_10_n_0 ),
        .I4(a[7]),
        .I5(\spo[12]_INST_0_i_11_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h3000F700)) 
    \spo[12]_INST_0_i_20 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[12]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \spo[12]_INST_0_i_21 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .O(\spo[12]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h011D0000000C0000)) 
    \spo[12]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[9]),
        .O(\spo[12]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \spo[12]_INST_0_i_23 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[9]),
        .O(\spo[12]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h20000000A0000400)) 
    \spo[12]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h10190000D1DC0000)) 
    \spo[12]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\spo[21]_INST_0_i_39_n_0 ),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_25_n_0 ));
  MUXF7 \spo[12]_INST_0_i_26 
       (.I0(\spo[12]_INST_0_i_28_n_0 ),
        .I1(\spo[12]_INST_0_i_29_n_0 ),
        .O(\spo[12]_INST_0_i_26_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \spo[12]_INST_0_i_27 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[12]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6000A00000008000)) 
    \spo[12]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB0003300)) 
    \spo[12]_INST_0_i_29 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[12]_INST_0_i_29_n_0 ));
  MUXF7 \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_12_n_0 ),
        .I1(\spo[12]_INST_0_i_13_n_0 ),
        .O(\spo[12]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[12]_INST_0_i_4 
       (.I0(\spo[12]_INST_0_i_14_n_0 ),
        .I1(\spo[12]_INST_0_i_15_n_0 ),
        .O(\spo[12]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h3000BB3330008800)) 
    \spo[12]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_33_n_0 ),
        .I1(a[7]),
        .I2(\spo[12]_INST_0_i_16_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_17_n_0 ),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88C400C400000000)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[8]),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  MUXF7 \spo[12]_INST_0_i_7 
       (.I0(\spo[12]_INST_0_i_18_n_0 ),
        .I1(\spo[12]_INST_0_i_19_n_0 ),
        .O(\spo[12]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \spo[12]_INST_0_i_8 
       (.I0(\spo[12]_INST_0_i_20_n_0 ),
        .I1(a[8]),
        .I2(\spo[29]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(\spo[12]_INST_0_i_21_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB00000008A008A00)) 
    \spo[12]_INST_0_i_9 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[13]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[13]_INST_0_i_4_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_5_n_0 ),
        .I1(\spo[13]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[13]_INST_0_i_8_n_0 ),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A00800040000300)) 
    \spo[13]_INST_0_i_10 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_10_n_0 ));
  MUXF7 \spo[13]_INST_0_i_11 
       (.I0(\spo[13]_INST_0_i_24_n_0 ),
        .I1(\spo[13]_INST_0_i_25_n_0 ),
        .O(\spo[13]_INST_0_i_11_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hA0A0A0A0CF00C000)) 
    \spo[13]_INST_0_i_12 
       (.I0(\spo[13]_INST_0_i_26_n_0 ),
        .I1(\spo[13]_INST_0_i_27_n_0 ),
        .I2(a[8]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_26_n_0 ),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_13 
       (.I0(\spo[13]_INST_0_i_28_n_0 ),
        .I1(\spo[13]_INST_0_i_29_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_30_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_31_n_0 ),
        .O(\spo[13]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[13]_INST_0_i_14 
       (.I0(\spo[13]_INST_0_i_32_n_0 ),
        .I1(a[7]),
        .I2(\spo[13]_INST_0_i_33_n_0 ),
        .I3(a[8]),
        .I4(\spo[13]_INST_0_i_34_n_0 ),
        .O(\spo[13]_INST_0_i_14_n_0 ));
  MUXF7 \spo[13]_INST_0_i_15 
       (.I0(\spo[13]_INST_0_i_35_n_0 ),
        .I1(\spo[13]_INST_0_i_36_n_0 ),
        .O(\spo[13]_INST_0_i_15_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \spo[13]_INST_0_i_16 
       (.I0(\spo[13]_INST_0_i_28_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(\spo[13]_INST_0_i_37_n_0 ),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2700000040200000)) 
    \spo[13]_INST_0_i_17 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_30_n_0 ),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[13]_INST_0_i_18 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_27_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_38_n_0 ),
        .O(\spo[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h1000800006000400)) 
    \spo[13]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_9_n_0 ),
        .I1(\spo[13]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[13]_INST_0_i_12_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0D40000020420000)) 
    \spo[13]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1001000001C20000)) 
    \spo[13]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[9]),
        .O(\spo[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000000004100C000)) 
    \spo[13]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h48004100)) 
    \spo[13]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hB00000000C000000)) 
    \spo[13]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h04008100)) 
    \spo[13]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[13]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00202010)) 
    \spo[13]_INST_0_i_26 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[13]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h8400)) 
    \spo[13]_INST_0_i_27 
       (.I0(a[9]),
        .I1(\spo[15]_INST_0_i_19_n_0 ),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[13]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h30400020)) 
    \spo[13]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[13]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000018000C00)) 
    \spo[13]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_29_n_0 ));
  MUXF7 \spo[13]_INST_0_i_3 
       (.I0(\spo[13]_INST_0_i_13_n_0 ),
        .I1(\spo[13]_INST_0_i_14_n_0 ),
        .O(\spo[13]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h1009000004400000)) 
    \spo[13]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8000010008000000)) 
    \spo[13]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000300)) 
    \spo[13]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0090)) 
    \spo[13]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[13]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h4800810000008000)) 
    \spo[13]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h18C00000020F0000)) 
    \spo[13]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h20004100)) 
    \spo[13]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[13]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4030)) 
    \spo[13]_INST_0_i_37 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .O(\spo[13]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4091000085D00000)) 
    \spo[13]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[9]),
        .O(\spo[13]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_4 
       (.I0(\spo[13]_INST_0_i_15_n_0 ),
        .I1(\spo[13]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_17_n_0 ),
        .I4(a[7]),
        .I5(\spo[13]_INST_0_i_18_n_0 ),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[13]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[5]),
        .I2(\spo[30]_INST_0_i_27_n_0 ),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_26_n_0 ),
        .I5(a[8]),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF088FFFFF0880000)) 
    \spo[13]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_26_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_19_n_0 ),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A00840000000300)) 
    \spo[13]_INST_0_i_7 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_7_n_0 ));
  MUXF7 \spo[13]_INST_0_i_8 
       (.I0(\spo[13]_INST_0_i_20_n_0 ),
        .I1(\spo[13]_INST_0_i_21_n_0 ),
        .O(\spo[13]_INST_0_i_8_n_0 ),
        .S(a[8]));
  MUXF7 \spo[13]_INST_0_i_9 
       (.I0(\spo[13]_INST_0_i_22_n_0 ),
        .I1(\spo[13]_INST_0_i_23_n_0 ),
        .O(\spo[13]_INST_0_i_9_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[14]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_4_n_0 ),
        .O(spo[14]));
  MUXF7 \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h88F0FFFF88F00000)) 
    \spo[14]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_23_n_0 ),
        .I1(a[5]),
        .I2(\spo[28]_INST_0_i_28_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_27_n_0 ),
        .O(\spo[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \spo[14]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_28_n_0 ),
        .O(\spo[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0000E200E200)) 
    \spo[14]_INST_0_i_12 
       (.I0(\spo[30]_INST_0_i_29_n_0 ),
        .I1(a[0]),
        .I2(\spo[14]_INST_0_i_29_n_0 ),
        .I3(a[8]),
        .I4(\spo[18]_INST_0_i_26_n_0 ),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hC5C0FFFFC5C00000)) 
    \spo[14]_INST_0_i_13 
       (.I0(a[8]),
        .I1(\spo[31]_INST_0_i_37_n_0 ),
        .I2(a[5]),
        .I3(\spo[23]_INST_0_i_37_n_0 ),
        .I4(a[7]),
        .I5(\spo[14]_INST_0_i_30_n_0 ),
        .O(\spo[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_14 
       (.I0(\spo[14]_INST_0_i_31_n_0 ),
        .I1(\spo[14]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_33_n_0 ),
        .O(\spo[14]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h0D00C000)) 
    \spo[14]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[14]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00400080)) 
    \spo[14]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00008000B0000A00)) 
    \spo[14]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00048000700)) 
    \spo[14]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8580000042700000)) 
    \spo[14]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_19_n_0 ));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_7_n_0 ),
        .I1(\spo[14]_INST_0_i_8_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[14]_INST_0_i_20 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .I3(a[5]),
        .O(\spo[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hB000C03000008080)) 
    \spo[14]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000003C00)) 
    \spo[14]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030008000)) 
    \spo[14]_INST_0_i_23 
       (.I0(a[9]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00A00040)) 
    \spo[14]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0630000050030000)) 
    \spo[14]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0082000010050000)) 
    \spo[14]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h6800840000000100)) 
    \spo[14]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0100000034300000)) 
    \spo[14]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h10A0)) 
    \spo[14]_INST_0_i_29 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .O(\spo[14]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_3 
       (.I0(\spo[14]_INST_0_i_9_n_0 ),
        .I1(\spo[14]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[14]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[14]_INST_0_i_12_n_0 ),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  MUXF7 \spo[14]_INST_0_i_30 
       (.I0(\spo[14]_INST_0_i_34_n_0 ),
        .I1(\spo[14]_INST_0_i_35_n_0 ),
        .O(\spo[14]_INST_0_i_30_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h25004000)) 
    \spo[14]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[14]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h2000800040302030)) 
    \spo[14]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h20800000100F0000)) 
    \spo[14]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h458B000015500000)) 
    \spo[14]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[14]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0400080000001000)) 
    \spo[14]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_35_n_0 ));
  MUXF7 \spo[14]_INST_0_i_4 
       (.I0(\spo[14]_INST_0_i_13_n_0 ),
        .I1(\spo[14]_INST_0_i_14_n_0 ),
        .O(\spo[14]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_5 
       (.I0(\spo[14]_INST_0_i_15_n_0 ),
        .I1(\spo[14]_INST_0_i_16_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_17_n_0 ),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[14]_INST_0_i_18_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_31_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_19_n_0 ),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_7 
       (.I0(\spo[14]_INST_0_i_20_n_0 ),
        .I1(\spo[14]_INST_0_i_21_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_23_n_0 ),
        .O(\spo[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_8 
       (.I0(\spo[14]_INST_0_i_24_n_0 ),
        .I1(\spo[14]_INST_0_i_25_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_26_n_0 ),
        .O(\spo[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4480008050315020)) 
    \spo[14]_INST_0_i_9 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(\spo[30]_INST_0_i_29_n_0 ),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[15]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_4_n_0 ),
        .O(spo[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0_i_1 
       (.I0(\spo[15]_INST_0_i_5_n_0 ),
        .I1(a[6]),
        .I2(\spo[15]_INST_0_i_6_n_0 ),
        .I3(a[7]),
        .I4(\spo[15]_INST_0_i_7_n_0 ),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB833B80000000000)) 
    \spo[15]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_31_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(\spo[15]_INST_0_i_18_n_0 ),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0404448400000000)) 
    \spo[15]_INST_0_i_11 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000080880803000)) 
    \spo[15]_INST_0_i_12 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[8]),
        .I2(a[0]),
        .I3(\spo[29]_INST_0_i_23_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB308830)) 
    \spo[15]_INST_0_i_13 
       (.I0(\spo[29]_INST_0_i_23_n_0 ),
        .I1(a[8]),
        .I2(\spo[25]_INST_0_i_29_n_0 ),
        .I3(a[0]),
        .I4(\spo[28]_INST_0_i_28_n_0 ),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0010602000000000)) 
    \spo[15]_INST_0_i_14 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[15]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h44840000)) 
    \spo[15]_INST_0_i_15 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000002010006000)) 
    \spo[15]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h4080)) 
    \spo[15]_INST_0_i_17 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .O(\spo[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spo[15]_INST_0_i_18 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[15]_INST_0_i_19 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[13]),
        .O(\spo[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_8_n_0 ),
        .I1(\spo[15]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[15]_INST_0_i_9_n_0 ),
        .I4(a[7]),
        .I5(\spo[15]_INST_0_i_10_n_0 ),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_11_n_0 ),
        .I1(a[6]),
        .I2(\spo[15]_INST_0_i_12_n_0 ),
        .I3(a[7]),
        .I4(\spo[15]_INST_0_i_13_n_0 ),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \spo[15]_INST_0_i_4 
       (.I0(\spo[15]_INST_0_i_14_n_0 ),
        .I1(a[6]),
        .I2(\spo[15]_INST_0_i_15_n_0 ),
        .I3(a[7]),
        .I4(\spo[15]_INST_0_i_16_n_0 ),
        .I5(a[8]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC0A0C0A00F000000)) 
    \spo[15]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(\spo[31]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(a[0]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0804000400000000)) 
    \spo[15]_INST_0_i_6 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[8]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3000300088338800)) 
    \spo[15]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[8]),
        .I2(\spo[29]_INST_0_i_23_n_0 ),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_36_n_0 ),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AFC0A0)) 
    \spo[15]_INST_0_i_8 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(\spo[31]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(a[0]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0033000030883088)) 
    \spo[15]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[8]),
        .I2(\spo[15]_INST_0_i_17_n_0 ),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_36_n_0 ),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_9_n_0 ));
  MUXF7 \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[16]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_3_n_0 ),
        .I1(\spo[16]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(\spo[16]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_6_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[16]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[16]_INST_0_i_27_n_0 ),
        .I4(a[7]),
        .I5(\spo[16]_INST_0_i_28_n_0 ),
        .O(\spo[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAA48000007000000)) 
    \spo[16]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00200060)) 
    \spo[16]_INST_0_i_12 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[16]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5A00600004000000)) 
    \spo[16]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000040000100C000)) 
    \spo[16]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_14_n_0 ));
  MUXF7 \spo[16]_INST_0_i_15 
       (.I0(\spo[16]_INST_0_i_29_n_0 ),
        .I1(\spo[16]_INST_0_i_30_n_0 ),
        .O(\spo[16]_INST_0_i_15_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_16 
       (.I0(\spo[18]_INST_0_i_30_n_0 ),
        .I1(\spo[30]_INST_0_i_41_n_0 ),
        .I2(a[8]),
        .I3(\spo[26]_INST_0_i_23_n_0 ),
        .I4(a[5]),
        .I5(\spo[28]_INST_0_i_40_n_0 ),
        .O(\spo[16]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_17 
       (.I0(\spo[28]_INST_0_i_40_n_0 ),
        .I1(\spo[18]_INST_0_i_25_n_0 ),
        .I2(a[8]),
        .I3(\spo[19]_INST_0_i_30_n_0 ),
        .I4(a[5]),
        .I5(\spo[16]_INST_0_i_31_n_0 ),
        .O(\spo[16]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \spo[16]_INST_0_i_18 
       (.I0(\spo[31]_INST_0_i_48_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_47_n_0 ),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[16]_INST_0_i_19 
       (.I0(\spo[28]_INST_0_i_29_n_0 ),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_25_n_0 ),
        .I3(a[5]),
        .I4(\spo[16]_INST_0_i_32_n_0 ),
        .I5(a[8]),
        .O(\spo[16]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_7_n_0 ),
        .I1(\spo[16]_INST_0_i_8_n_0 ),
        .I2(a[4]),
        .I3(\spo[16]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_10_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h004F000054A00000)) 
    \spo[16]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8F00580006000000)) 
    \spo[16]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0084FFFF00840000)) 
    \spo[16]_INST_0_i_22 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_22_n_0 ),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_33_n_0 ),
        .O(\spo[16]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \spo[16]_INST_0_i_23 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_34_n_0 ),
        .O(\spo[16]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3080008000330000)) 
    \spo[16]_INST_0_i_24 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(a[8]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h80002040)) 
    \spo[16]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[16]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4000000080000100)) 
    \spo[16]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h4800000018000000)) 
    \spo[16]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_27_n_0 ));
  MUXF7 \spo[16]_INST_0_i_28 
       (.I0(\spo[16]_INST_0_i_35_n_0 ),
        .I1(\spo[16]_INST_0_i_36_n_0 ),
        .O(\spo[16]_INST_0_i_28_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hB021000008040000)) 
    \spo[16]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_33_n_0 ),
        .I1(\spo[16]_INST_0_i_11_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_13_n_0 ),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0015000020400000)) 
    \spo[16]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h40002100)) 
    \spo[16]_INST_0_i_31 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[2]),
        .O(\spo[16]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h90400000)) 
    \spo[16]_INST_0_i_32 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .O(\spo[16]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h70D07090008020A0)) 
    \spo[16]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h830080000000E000)) 
    \spo[16]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0010602020000000)) 
    \spo[16]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h184200009D000000)) 
    \spo[16]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[16]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[16]_INST_0_i_14_n_0 ),
        .I4(a[7]),
        .I5(\spo[16]_INST_0_i_15_n_0 ),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  MUXF7 \spo[16]_INST_0_i_5 
       (.I0(\spo[16]_INST_0_i_16_n_0 ),
        .I1(\spo[16]_INST_0_i_17_n_0 ),
        .O(\spo[16]_INST_0_i_5_n_0 ),
        .S(a[7]));
  MUXF7 \spo[16]_INST_0_i_6 
       (.I0(\spo[16]_INST_0_i_18_n_0 ),
        .I1(\spo[16]_INST_0_i_19_n_0 ),
        .O(\spo[16]_INST_0_i_6_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_7 
       (.I0(\spo[20]_INST_0_i_22_n_0 ),
        .I1(\spo[16]_INST_0_i_20_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_21_n_0 ),
        .O(\spo[16]_INST_0_i_7_n_0 ));
  MUXF7 \spo[16]_INST_0_i_8 
       (.I0(\spo[16]_INST_0_i_22_n_0 ),
        .I1(\spo[16]_INST_0_i_23_n_0 ),
        .O(\spo[16]_INST_0_i_8_n_0 ),
        .S(a[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[16]_INST_0_i_9 
       (.I0(\spo[16]_INST_0_i_24_n_0 ),
        .I1(a[7]),
        .I2(\spo[16]_INST_0_i_25_n_0 ),
        .I3(a[8]),
        .I4(\spo[16]_INST_0_i_26_n_0 ),
        .O(\spo[16]_INST_0_i_9_n_0 ));
  MUXF7 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_3_n_0 ),
        .I1(\spo[17]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(\spo[17]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  MUXF7 \spo[17]_INST_0_i_10 
       (.I0(\spo[17]_INST_0_i_29_n_0 ),
        .I1(\spo[17]_INST_0_i_30_n_0 ),
        .O(\spo[17]_INST_0_i_10_n_0 ),
        .S(a[7]));
  MUXF7 \spo[17]_INST_0_i_11 
       (.I0(\spo[17]_INST_0_i_31_n_0 ),
        .I1(\spo[17]_INST_0_i_32_n_0 ),
        .O(\spo[17]_INST_0_i_11_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h5A00C0000400A000)) 
    \spo[17]_INST_0_i_12 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1100000070800000)) 
    \spo[17]_INST_0_i_13 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_30_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C088008)) 
    \spo[17]_INST_0_i_14 
       (.I0(a[1]),
        .I1(\spo[15]_INST_0_i_19_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3A19000000840000)) 
    \spo[17]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \spo[17]_INST_0_i_16 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(a[5]),
        .I2(\spo[28]_INST_0_i_32_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_33_n_0 ),
        .O(\spo[17]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8C0FFFFB8C00000)) 
    \spo[17]_INST_0_i_17 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_34_n_0 ),
        .O(\spo[17]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hD449000020000000)) 
    \spo[17]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hA000C00000000000)) 
    \spo[17]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_7_n_0 ),
        .I1(\spo[17]_INST_0_i_8_n_0 ),
        .I2(a[4]),
        .I3(\spo[17]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_10_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0153000099D80000)) 
    \spo[17]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[17]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hD0002900)) 
    \spo[17]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[17]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h10620000008D0000)) 
    \spo[17]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA064000051940000)) 
    \spo[17]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h80004300)) 
    \spo[17]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[0]),
        .O(\spo[17]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8000200000004000)) 
    \spo[17]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h020044005200C600)) 
    \spo[17]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_27 
       (.I0(\spo[23]_INST_0_i_38_n_0 ),
        .I1(\spo[1]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[17]_INST_0_i_35_n_0 ),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_30_n_0 ),
        .O(\spo[17]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3003000008080808)) 
    \spo[17]_INST_0_i_28 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \spo[17]_INST_0_i_29 
       (.I0(\spo[17]_INST_0_i_36_n_0 ),
        .I1(a[8]),
        .I2(\spo[30]_INST_0_i_28_n_0 ),
        .I3(a[5]),
        .I4(\spo[30]_INST_0_i_27_n_0 ),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[17]_INST_0_i_3 
       (.I0(\spo[17]_INST_0_i_11_n_0 ),
        .I1(a[7]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_12_n_0 ),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_30 
       (.I0(\spo[27]_INST_0_i_13_n_0 ),
        .I1(\spo[31]_INST_0_i_37_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_30_n_0 ),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_36_n_0 ),
        .O(\spo[17]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h3A08000027000000)) 
    \spo[17]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h42000100)) 
    \spo[17]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[17]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h07AC000000110000)) 
    \spo[17]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0400040)) 
    \spo[17]_INST_0_i_34 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \spo[17]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[17]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h65400000A0000000)) 
    \spo[17]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[17]_INST_0_i_4 
       (.I0(\spo[17]_INST_0_i_13_n_0 ),
        .I1(a[7]),
        .I2(\spo[17]_INST_0_i_14_n_0 ),
        .I3(a[8]),
        .I4(\spo[17]_INST_0_i_15_n_0 ),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  MUXF7 \spo[17]_INST_0_i_5 
       (.I0(\spo[17]_INST_0_i_16_n_0 ),
        .I1(\spo[17]_INST_0_i_17_n_0 ),
        .O(\spo[17]_INST_0_i_5_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_6 
       (.I0(\spo[18]_INST_0_i_22_n_0 ),
        .I1(\spo[17]_INST_0_i_18_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_20_n_0 ),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spo[17]_INST_0_i_7 
       (.I0(\spo[17]_INST_0_i_21_n_0 ),
        .I1(\spo[17]_INST_0_i_22_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .O(\spo[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_8 
       (.I0(\spo[17]_INST_0_i_24_n_0 ),
        .I1(\spo[17]_INST_0_i_25_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[17]_INST_0_i_26_n_0 ),
        .O(\spo[17]_INST_0_i_8_n_0 ));
  MUXF7 \spo[17]_INST_0_i_9 
       (.I0(\spo[17]_INST_0_i_27_n_0 ),
        .I1(\spo[17]_INST_0_i_28_n_0 ),
        .O(\spo[17]_INST_0_i_9_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[18]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[18]_INST_0_i_4_n_0 ),
        .O(spo[18]));
  MUXF7 \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_5_n_0 ),
        .I1(\spo[18]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \spo[18]_INST_0_i_10 
       (.I0(\spo[18]_INST_0_i_28_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_26_n_0 ),
        .I3(a[0]),
        .I4(\spo[30]_INST_0_i_28_n_0 ),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h30333000B800B800)) 
    \spo[18]_INST_0_i_11 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(a[8]),
        .I2(\spo[30]_INST_0_i_40_n_0 ),
        .I3(a[5]),
        .I4(\spo[28]_INST_0_i_29_n_0 ),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \spo[18]_INST_0_i_12 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_29_n_0 ),
        .O(\spo[18]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_13 
       (.I0(\spo[18]_INST_0_i_30_n_0 ),
        .I1(\spo[31]_INST_0_i_26_n_0 ),
        .I2(a[8]),
        .I3(\spo[18]_INST_0_i_31_n_0 ),
        .I4(a[5]),
        .I5(\spo[18]_INST_0_i_32_n_0 ),
        .O(\spo[18]_INST_0_i_13_n_0 ));
  MUXF7 \spo[18]_INST_0_i_14 
       (.I0(\spo[18]_INST_0_i_33_n_0 ),
        .I1(\spo[18]_INST_0_i_34_n_0 ),
        .O(\spo[18]_INST_0_i_14_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_15 
       (.I0(\spo[18]_INST_0_i_22_n_0 ),
        .I1(\spo[18]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_36_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_37_n_0 ),
        .O(\spo[18]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_16 
       (.I0(\spo[18]_INST_0_i_38_n_0 ),
        .I1(\spo[18]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_39_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_40_n_0 ),
        .O(\spo[18]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h8100A400)) 
    \spo[18]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[18]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8600100000004000)) 
    \spo[18]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000030004000800)) 
    \spo[18]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_7_n_0 ),
        .I1(\spo[18]_INST_0_i_8_n_0 ),
        .I2(a[6]),
        .I3(\spo[18]_INST_0_i_9_n_0 ),
        .I4(a[7]),
        .I5(\spo[18]_INST_0_i_10_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h460080001200E600)) 
    \spo[18]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h04000A000400E100)) 
    \spo[18]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h10402020)) 
    \spo[18]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[18]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8080000010100090)) 
    \spo[18]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[18]_INST_0_i_24 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(a[0]),
        .O(\spo[18]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \spo[18]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .O(\spo[18]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80000010)) 
    \spo[18]_INST_0_i_26 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[18]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80004000)) 
    \spo[18]_INST_0_i_27 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[18]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h2040000095000000)) 
    \spo[18]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h25A0000022400000)) 
    \spo[18]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_3 
       (.I0(\spo[18]_INST_0_i_11_n_0 ),
        .I1(\spo[18]_INST_0_i_12_n_0 ),
        .I2(a[6]),
        .I3(\spo[18]_INST_0_i_13_n_0 ),
        .I4(a[7]),
        .I5(\spo[18]_INST_0_i_14_n_0 ),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \spo[18]_INST_0_i_30 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[18]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \spo[18]_INST_0_i_31 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[18]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00801080)) 
    \spo[18]_INST_0_i_32 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[18]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00A02000C00000C0)) 
    \spo[18]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00004C0004008100)) 
    \spo[18]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC20030000000C000)) 
    \spo[18]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h8000B00000000000)) 
    \spo[18]_INST_0_i_36 
       (.I0(a[9]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h015300000D480000)) 
    \spo[18]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[18]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h20001700)) 
    \spo[18]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[18]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h1000000004000200)) 
    \spo[18]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_39_n_0 ));
  MUXF7 \spo[18]_INST_0_i_4 
       (.I0(\spo[18]_INST_0_i_15_n_0 ),
        .I1(\spo[18]_INST_0_i_16_n_0 ),
        .O(\spo[18]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h027C000004010000)) 
    \spo[18]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_5 
       (.I0(\spo[18]_INST_0_i_17_n_0 ),
        .I1(\spo[18]_INST_0_i_18_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_20_n_0 ),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_6 
       (.I0(\spo[30]_INST_0_i_22_n_0 ),
        .I1(\spo[18]_INST_0_i_21_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_23_n_0 ),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \spo[18]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[8]),
        .I2(\spo[28]_INST_0_i_24_n_0 ),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_8 
       (.I0(\spo[18]_INST_0_i_24_n_0 ),
        .I1(\spo[18]_INST_0_i_25_n_0 ),
        .I2(a[8]),
        .I3(\spo[19]_INST_0_i_29_n_0 ),
        .I4(a[5]),
        .I5(\spo[18]_INST_0_i_26_n_0 ),
        .O(\spo[18]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[18]_INST_0_i_9 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[31]_INST_0_i_31_n_0 ),
        .I4(a[5]),
        .I5(\spo[18]_INST_0_i_27_n_0 ),
        .O(\spo[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[19]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[19]_INST_0_i_4_n_0 ),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(\spo[19]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[19]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[19]_INST_0_i_8_n_0 ),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_10 
       (.I0(\spo[19]_INST_0_i_28_n_0 ),
        .I1(\spo[31]_INST_0_i_37_n_0 ),
        .I2(a[8]),
        .I3(\spo[19]_INST_0_i_29_n_0 ),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_30_n_0 ),
        .O(\spo[19]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3000BBBB30008888)) 
    \spo[19]_INST_0_i_11 
       (.I0(\spo[19]_INST_0_i_31_n_0 ),
        .I1(a[8]),
        .I2(\spo[29]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_32_n_0 ),
        .O(\spo[19]_INST_0_i_11_n_0 ));
  MUXF7 \spo[19]_INST_0_i_12 
       (.I0(\spo[19]_INST_0_i_33_n_0 ),
        .I1(\spo[19]_INST_0_i_34_n_0 ),
        .O(\spo[19]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hBBB8BB8B8B88B888)) 
    \spo[19]_INST_0_i_13 
       (.I0(\spo[21]_INST_0_i_33_n_0 ),
        .I1(a[8]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_47_n_0 ),
        .I4(a[0]),
        .I5(\spo[31]_INST_0_i_26_n_0 ),
        .O(\spo[19]_INST_0_i_13_n_0 ));
  MUXF7 \spo[19]_INST_0_i_14 
       (.I0(\spo[19]_INST_0_i_35_n_0 ),
        .I1(\spo[19]_INST_0_i_36_n_0 ),
        .O(\spo[19]_INST_0_i_14_n_0 ),
        .S(a[8]));
  MUXF7 \spo[19]_INST_0_i_15 
       (.I0(\spo[19]_INST_0_i_37_n_0 ),
        .I1(\spo[19]_INST_0_i_38_n_0 ),
        .O(\spo[19]_INST_0_i_15_n_0 ),
        .S(a[8]));
  MUXF7 \spo[19]_INST_0_i_16 
       (.I0(\spo[19]_INST_0_i_39_n_0 ),
        .I1(\spo[19]_INST_0_i_40_n_0 ),
        .O(\spo[19]_INST_0_i_16_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \spo[19]_INST_0_i_17 
       (.I0(\spo[29]_INST_0_i_35_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_36_n_0 ),
        .I3(a[0]),
        .I4(\spo[28]_INST_0_i_26_n_0 ),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB7A8000070800000)) 
    \spo[19]_INST_0_i_18 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_30_n_0 ),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE5E0454545404040)) 
    \spo[19]_INST_0_i_19 
       (.I0(a[8]),
        .I1(\spo[30]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[19]_INST_0_i_41_n_0 ),
        .I4(a[0]),
        .I5(\spo[28]_INST_0_i_29_n_0 ),
        .O(\spo[19]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_9_n_0 ),
        .I1(\spo[19]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[19]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[19]_INST_0_i_12_n_0 ),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  MUXF7 \spo[19]_INST_0_i_20 
       (.I0(\spo[19]_INST_0_i_42_n_0 ),
        .I1(\spo[19]_INST_0_i_43_n_0 ),
        .O(\spo[19]_INST_0_i_20_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h9020)) 
    \spo[19]_INST_0_i_21 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[19]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h20800040)) 
    \spo[19]_INST_0_i_22 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[19]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA000000050110000)) 
    \spo[19]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8300800008006200)) 
    \spo[19]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hA0808010)) 
    \spo[19]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[19]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h120000004A004600)) 
    \spo[19]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h2030000000650000)) 
    \spo[19]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \spo[19]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .O(\spo[19]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40800000)) 
    \spo[19]_INST_0_i_29 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[19]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_3 
       (.I0(\spo[19]_INST_0_i_13_n_0 ),
        .I1(\spo[19]_INST_0_i_14_n_0 ),
        .I2(a[6]),
        .I3(\spo[19]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[19]_INST_0_i_16_n_0 ),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[19]_INST_0_i_30 
       (.I0(a[1]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[19]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hB020)) 
    \spo[19]_INST_0_i_31 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[19]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB0000000)) 
    \spo[19]_INST_0_i_32 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[2]),
        .O(\spo[19]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h1200000048000800)) 
    \spo[19]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h25C0000080000000)) 
    \spo[19]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h5702000022400000)) 
    \spo[19]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h402000A0)) 
    \spo[19]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[19]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000009000)) 
    \spo[19]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hDC000800)) 
    \spo[19]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[19]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00202080C0800040)) 
    \spo[19]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_4 
       (.I0(\spo[19]_INST_0_i_17_n_0 ),
        .I1(\spo[19]_INST_0_i_18_n_0 ),
        .I2(a[6]),
        .I3(\spo[19]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[19]_INST_0_i_20_n_0 ),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004004404)) 
    \spo[19]_INST_0_i_40 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_50_n_0 ),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \spo[19]_INST_0_i_41 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .O(\spo[19]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h000D000050480000)) 
    \spo[19]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h8B00000000000000)) 
    \spo[19]_INST_0_i_43 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_5 
       (.I0(\spo[19]_INST_0_i_21_n_0 ),
        .I1(\spo[28]_INST_0_i_40_n_0 ),
        .I2(a[8]),
        .I3(\spo[31]_INST_0_i_23_n_0 ),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_22_n_0 ),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \spo[19]_INST_0_i_6 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[19]_INST_0_i_23_n_0 ),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  MUXF7 \spo[19]_INST_0_i_7 
       (.I0(\spo[19]_INST_0_i_24_n_0 ),
        .I1(\spo[19]_INST_0_i_25_n_0 ),
        .O(\spo[19]_INST_0_i_7_n_0 ),
        .S(a[8]));
  MUXF7 \spo[19]_INST_0_i_8 
       (.I0(\spo[19]_INST_0_i_26_n_0 ),
        .I1(\spo[19]_INST_0_i_27_n_0 ),
        .O(\spo[19]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0000000008044004)) 
    \spo[19]_INST_0_i_9 
       (.I0(a[0]),
        .I1(\spo[21]_INST_0_i_39_n_0 ),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[8]),
        .O(\spo[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  MUXF7 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h101A0000153A0000)) 
    \spo[1]_INST_0_i_10 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_22_n_0 ),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2251004050885000)) 
    \spo[1]_INST_0_i_11 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(\spo[1]_INST_0_i_19_n_0 ),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_22_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00BB008830003000)) 
    \spo[1]_INST_0_i_12 
       (.I0(\spo[29]_INST_0_i_23_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(\spo[28]_INST_0_i_29_n_0 ),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[1]_INST_0_i_13 
       (.I0(a[5]),
        .I1(\spo[1]_INST_0_i_15_n_0 ),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_21_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h30003000B833B800)) 
    \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_15_n_0 ),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_22_n_0 ),
        .I3(a[8]),
        .I4(\spo[28]_INST_0_i_25_n_0 ),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[1]_INST_0_i_15 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[0]),
        .O(\spo[1]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[1]_INST_0_i_16 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  MUXF7 \spo[1]_INST_0_i_17 
       (.I0(\spo[1]_INST_0_i_23_n_0 ),
        .I1(\spo[1]_INST_0_i_24_n_0 ),
        .O(\spo[1]_INST_0_i_17_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h02000C0008003000)) 
    \spo[1]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[1]_INST_0_i_19 
       (.I0(a[13]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .I4(a[2]),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(\spo[1]_INST_0_i_8_n_0 ),
        .I2(a[6]),
        .I3(\spo[15]_INST_0_i_9_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0408000000000)) 
    \spo[1]_INST_0_i_20 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h20050000350A0000)) 
    \spo[1]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00400020)) 
    \spo[1]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1040000088510000)) 
    \spo[1]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1400000001020000)) 
    \spo[1]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_10_n_0 ),
        .I1(a[6]),
        .I2(\spo[1]_INST_0_i_11_n_0 ),
        .I3(a[7]),
        .I4(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  MUXF7 \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(\spo[1]_INST_0_i_14_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_15_n_0 ),
        .I1(a[5]),
        .I2(\spo[1]_INST_0_i_16_n_0 ),
        .I3(a[8]),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_17_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A400040)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[5]),
        .I1(\spo[29]_INST_0_i_23_n_0 ),
        .I2(a[0]),
        .I3(a[8]),
        .I4(\spo[31]_INST_0_i_22_n_0 ),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AFC0A0)) 
    \spo[1]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(\spo[28]_INST_0_i_29_n_0 ),
        .I2(a[8]),
        .I3(a[0]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3000800000004400)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B888B888888888)) 
    \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_18_n_0 ),
        .I1(a[8]),
        .I2(\spo[28]_INST_0_i_32_n_0 ),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  MUXF7 \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .O(spo[20]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_3_n_0 ),
        .I1(\spo[20]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(\spo[20]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[20]_INST_0_i_10 
       (.I0(\spo[23]_INST_0_i_44_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[20]_INST_0_i_30_n_0 ),
        .I4(a[7]),
        .I5(\spo[20]_INST_0_i_31_n_0 ),
        .O(\spo[20]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB208000037000000)) 
    \spo[20]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h40200000)) 
    \spo[20]_INST_0_i_12 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4200D8000400A000)) 
    \spo[20]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_13_n_0 ));
  MUXF7 \spo[20]_INST_0_i_14 
       (.I0(\spo[20]_INST_0_i_32_n_0 ),
        .I1(\spo[20]_INST_0_i_33_n_0 ),
        .O(\spo[20]_INST_0_i_14_n_0 ),
        .S(a[8]));
  MUXF7 \spo[20]_INST_0_i_15 
       (.I0(\spo[20]_INST_0_i_34_n_0 ),
        .I1(\spo[20]_INST_0_i_35_n_0 ),
        .O(\spo[20]_INST_0_i_15_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00000060)) 
    \spo[20]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[20]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h10C00000040F0000)) 
    \spo[20]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8780000040900000)) 
    \spo[20]_INST_0_i_18 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_30_n_0 ),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hC240000040A50000)) 
    \spo[20]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_2 
       (.I0(\spo[20]_INST_0_i_7_n_0 ),
        .I1(\spo[20]_INST_0_i_8_n_0 ),
        .I2(a[4]),
        .I3(\spo[20]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_10_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8D00060000000000)) 
    \spo[20]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000220004004000)) 
    \spo[20]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h50002900)) 
    \spo[20]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[20]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h04002A000400E500)) 
    \spo[20]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8058000040970000)) 
    \spo[20]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_24_n_0 ));
  MUXF7 \spo[20]_INST_0_i_25 
       (.I0(\spo[20]_INST_0_i_36_n_0 ),
        .I1(\spo[20]_INST_0_i_37_n_0 ),
        .O(\spo[20]_INST_0_i_25_n_0 ),
        .S(a[8]));
  MUXF7 \spo[20]_INST_0_i_26 
       (.I0(\spo[20]_INST_0_i_38_n_0 ),
        .I1(\spo[20]_INST_0_i_39_n_0 ),
        .O(\spo[20]_INST_0_i_26_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0030000085000000)) 
    \spo[20]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h8000A010)) 
    \spo[20]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[20]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h40004000A0000500)) 
    \spo[20]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_33_n_0 ),
        .I1(\spo[20]_INST_0_i_11_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_13_n_0 ),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h46300000AA030000)) 
    \spo[20]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_30_n_0 ));
  MUXF7 \spo[20]_INST_0_i_31 
       (.I0(\spo[20]_INST_0_i_40_n_0 ),
        .I1(\spo[20]_INST_0_i_41_n_0 ),
        .O(\spo[20]_INST_0_i_31_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h80202000404080C0)) 
    \spo[20]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010A01040)) 
    \spo[20]_INST_0_i_33 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0100300000008000)) 
    \spo[20]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h8C003000)) 
    \spo[20]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[0]),
        .O(\spo[20]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5C0080000A006C00)) 
    \spo[20]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0081000004B00000)) 
    \spo[20]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h807090100000E0A0)) 
    \spo[20]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hC0008300)) 
    \spo[20]_INST_0_i_39 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[20]_INST_0_i_39_n_0 ));
  MUXF8 \spo[20]_INST_0_i_4 
       (.I0(\spo[20]_INST_0_i_14_n_0 ),
        .I1(\spo[20]_INST_0_i_15_n_0 ),
        .O(\spo[20]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000202060000040)) 
    \spo[20]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0880000090530000)) 
    \spo[20]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[20]_INST_0_i_5 
       (.I0(\spo[20]_INST_0_i_16_n_0 ),
        .I1(a[8]),
        .I2(\spo[20]_INST_0_i_17_n_0 ),
        .I3(a[7]),
        .I4(\spo[20]_INST_0_i_18_n_0 ),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_6 
       (.I0(\spo[24]_INST_0_i_17_n_0 ),
        .I1(\spo[20]_INST_0_i_19_n_0 ),
        .I2(a[7]),
        .I3(\spo[20]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_21_n_0 ),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_7 
       (.I0(\spo[20]_INST_0_i_22_n_0 ),
        .I1(\spo[20]_INST_0_i_23_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[20]_INST_0_i_24_n_0 ),
        .O(\spo[20]_INST_0_i_7_n_0 ));
  MUXF8 \spo[20]_INST_0_i_8 
       (.I0(\spo[20]_INST_0_i_25_n_0 ),
        .I1(\spo[20]_INST_0_i_26_n_0 ),
        .O(\spo[20]_INST_0_i_8_n_0 ),
        .S(a[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[20]_INST_0_i_9 
       (.I0(\spo[20]_INST_0_i_27_n_0 ),
        .I1(a[7]),
        .I2(\spo[20]_INST_0_i_28_n_0 ),
        .I3(a[8]),
        .I4(\spo[20]_INST_0_i_29_n_0 ),
        .O(\spo[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[21]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[21]_INST_0_i_4_n_0 ),
        .O(spo[21]));
  MUXF7 \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_10 
       (.I0(\spo[21]_INST_0_i_31_n_0 ),
        .I1(\spo[21]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_33_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_34_n_0 ),
        .O(\spo[21]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \spo[21]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_43_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_35_n_0 ),
        .O(\spo[21]_INST_0_i_11_n_0 ));
  MUXF7 \spo[21]_INST_0_i_12 
       (.I0(\spo[21]_INST_0_i_36_n_0 ),
        .I1(\spo[21]_INST_0_i_37_n_0 ),
        .O(\spo[21]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[21]_INST_0_i_13 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_29_n_0 ),
        .I2(a[8]),
        .I3(\spo[21]_INST_0_i_38_n_0 ),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_25_n_0 ),
        .O(\spo[21]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \spo[21]_INST_0_i_14 
       (.I0(a[0]),
        .I1(\spo[21]_INST_0_i_39_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_40_n_0 ),
        .O(\spo[21]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h28009500)) 
    \spo[21]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[21]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8018000078010000)) 
    \spo[21]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00008E0004000B00)) 
    \spo[21]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0A00000050004400)) 
    \spo[21]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5020108000200080)) 
    \spo[21]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_19_n_0 ));
  MUXF7 \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_7_n_0 ),
        .I1(\spo[21]_INST_0_i_8_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hA000000001510000)) 
    \spo[21]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0000C444)) 
    \spo[21]_INST_0_i_21 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[21]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h47000000AA000000)) 
    \spo[21]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h2080800050001000)) 
    \spo[21]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1000020000000000)) 
    \spo[21]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000043000000)) 
    \spo[21]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h08000000C3000000)) 
    \spo[21]_INST_0_i_26 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hD500CA00)) 
    \spo[21]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[21]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030000040)) 
    \spo[21]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \spo[21]_INST_0_i_29 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_29_n_0 ));
  MUXF7 \spo[21]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_9_n_0 ),
        .I1(\spo[21]_INST_0_i_10_n_0 ),
        .O(\spo[21]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h80202000C0800040)) 
    \spo[21]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \spo[21]_INST_0_i_31 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[21]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hA60060001000A000)) 
    \spo[21]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h40000080)) 
    \spo[21]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[21]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00B0000085000000)) 
    \spo[21]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080408004)) 
    \spo[21]_INST_0_i_35 
       (.I0(a[2]),
        .I1(\spo[15]_INST_0_i_19_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4000700000008000)) 
    \spo[21]_INST_0_i_36 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hD500C200)) 
    \spo[21]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[21]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h90000000)) 
    \spo[21]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[21]_INST_0_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[21]_INST_0_i_39 
       (.I0(a[13]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .I4(a[9]),
        .O(\spo[21]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_4 
       (.I0(\spo[21]_INST_0_i_11_n_0 ),
        .I1(\spo[21]_INST_0_i_12_n_0 ),
        .I2(a[6]),
        .I3(\spo[21]_INST_0_i_13_n_0 ),
        .I4(a[7]),
        .I5(\spo[21]_INST_0_i_14_n_0 ),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000D000012580000)) 
    \spo[21]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_5 
       (.I0(\spo[21]_INST_0_i_15_n_0 ),
        .I1(\spo[21]_INST_0_i_16_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_18_n_0 ),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_6 
       (.I0(\spo[23]_INST_0_i_21_n_0 ),
        .I1(\spo[21]_INST_0_i_19_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_20_n_0 ),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_7 
       (.I0(\spo[21]_INST_0_i_21_n_0 ),
        .I1(\spo[21]_INST_0_i_22_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_23_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_24_n_0 ),
        .O(\spo[21]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[21]_INST_0_i_8 
       (.I0(\spo[21]_INST_0_i_25_n_0 ),
        .I1(a[7]),
        .I2(\spo[21]_INST_0_i_15_n_0 ),
        .I3(a[8]),
        .I4(\spo[21]_INST_0_i_26_n_0 ),
        .O(\spo[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_9 
       (.I0(\spo[21]_INST_0_i_27_n_0 ),
        .I1(\spo[21]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_30_n_0 ),
        .O(\spo[21]_INST_0_i_9_n_0 ));
  MUXF7 \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .O(spo[22]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_3_n_0 ),
        .I1(\spo[22]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(\spo[22]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  MUXF7 \spo[22]_INST_0_i_10 
       (.I0(\spo[22]_INST_0_i_31_n_0 ),
        .I1(\spo[22]_INST_0_i_32_n_0 ),
        .O(\spo[22]_INST_0_i_10_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hB833B800B800B800)) 
    \spo[22]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[8]),
        .I2(\spo[22]_INST_0_i_33_n_0 ),
        .I3(a[5]),
        .I4(\spo[22]_INST_0_i_34_n_0 ),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \spo[22]_INST_0_i_12 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_20_n_0 ),
        .I2(a[5]),
        .I3(a[8]),
        .I4(\spo[22]_INST_0_i_35_n_0 ),
        .O(\spo[22]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h88003000)) 
    \spo[22]_INST_0_i_13 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .O(\spo[22]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010400040)) 
    \spo[22]_INST_0_i_14 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040004004)) 
    \spo[22]_INST_0_i_15 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_50_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00802000400000C0)) 
    \spo[22]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_17 
       (.I0(\spo[19]_INST_0_i_31_n_0 ),
        .I1(\spo[28]_INST_0_i_29_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_27_n_0 ),
        .I4(a[5]),
        .I5(\spo[22]_INST_0_i_36_n_0 ),
        .O(\spo[22]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1060FFFF10600000)) 
    \spo[22]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[1]),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_37_n_0 ),
        .O(\spo[22]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hD425000020000000)) 
    \spo[22]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_7_n_0 ),
        .I1(\spo[22]_INST_0_i_8_n_0 ),
        .I2(a[4]),
        .I3(\spo[22]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_10_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \spo[22]_INST_0_i_20 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[22]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1015000010E00000)) 
    \spo[22]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8030)) 
    \spo[22]_INST_0_i_22 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .O(\spo[22]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h44000A000000E100)) 
    \spo[22]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA0C6000041140000)) 
    \spo[22]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h2010A000)) 
    \spo[22]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[22]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h8300200000008000)) 
    \spo[22]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0180000054880000)) 
    \spo[22]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h540000000000C000)) 
    \spo[22]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \spo[22]_INST_0_i_29 
       (.I0(\spo[22]_INST_0_i_38_n_0 ),
        .I1(a[8]),
        .I2(\spo[30]_INST_0_i_27_n_0 ),
        .I3(a[5]),
        .I4(\spo[28]_INST_0_i_25_n_0 ),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_29_n_0 ));
  MUXF7 \spo[22]_INST_0_i_3 
       (.I0(\spo[22]_INST_0_i_11_n_0 ),
        .I1(\spo[22]_INST_0_i_12_n_0 ),
        .O(\spo[22]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000000040080444)) 
    \spo[22]_INST_0_i_30 
       (.I0(a[2]),
        .I1(\spo[21]_INST_0_i_39_n_0 ),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[22]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \spo[22]_INST_0_i_31 
       (.I0(\spo[22]_INST_0_i_39_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(\spo[22]_INST_0_i_40_n_0 ),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0F008F8F0F008080)) 
    \spo[22]_INST_0_i_32 
       (.I0(a[0]),
        .I1(\spo[15]_INST_0_i_18_n_0 ),
        .I2(a[8]),
        .I3(\spo[31]_INST_0_i_49_n_0 ),
        .I4(a[5]),
        .I5(\spo[30]_INST_0_i_29_n_0 ),
        .O(\spo[22]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \spo[22]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[22]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hA040)) 
    \spo[22]_INST_0_i_34 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .O(\spo[22]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h220060000000D000)) 
    \spo[22]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8090)) 
    \spo[22]_INST_0_i_36 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[22]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h5400000004030000)) 
    \spo[22]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hA200)) 
    \spo[22]_INST_0_i_38 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[22]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h5840000091000000)) 
    \spo[22]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_4 
       (.I0(\spo[22]_INST_0_i_13_n_0 ),
        .I1(\spo[22]_INST_0_i_14_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_16_n_0 ),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    \spo[22]_INST_0_i_40 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .O(\spo[22]_INST_0_i_40_n_0 ));
  MUXF7 \spo[22]_INST_0_i_5 
       (.I0(\spo[22]_INST_0_i_17_n_0 ),
        .I1(\spo[22]_INST_0_i_18_n_0 ),
        .O(\spo[22]_INST_0_i_5_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h3000BBBB30008888)) 
    \spo[22]_INST_0_i_6 
       (.I0(\spo[22]_INST_0_i_19_n_0 ),
        .I1(a[7]),
        .I2(\spo[22]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_21_n_0 ),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88008800F0FFF000)) 
    \spo[22]_INST_0_i_7 
       (.I0(\spo[22]_INST_0_i_22_n_0 ),
        .I1(a[5]),
        .I2(\spo[22]_INST_0_i_23_n_0 ),
        .I3(a[7]),
        .I4(\spo[22]_INST_0_i_24_n_0 ),
        .I5(a[8]),
        .O(\spo[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_8 
       (.I0(\spo[22]_INST_0_i_25_n_0 ),
        .I1(\spo[22]_INST_0_i_26_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_27_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_28_n_0 ),
        .O(\spo[22]_INST_0_i_8_n_0 ));
  MUXF7 \spo[22]_INST_0_i_9 
       (.I0(\spo[22]_INST_0_i_29_n_0 ),
        .I1(\spo[22]_INST_0_i_30_n_0 ),
        .O(\spo[22]_INST_0_i_9_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[23]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[23]_INST_0_i_4_n_0 ),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_5_n_0 ),
        .I1(\spo[23]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[23]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[23]_INST_0_i_8_n_0 ),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  MUXF7 \spo[23]_INST_0_i_10 
       (.I0(\spo[23]_INST_0_i_29_n_0 ),
        .I1(\spo[23]_INST_0_i_30_n_0 ),
        .O(\spo[23]_INST_0_i_10_n_0 ),
        .S(a[8]));
  MUXF7 \spo[23]_INST_0_i_11 
       (.I0(\spo[23]_INST_0_i_31_n_0 ),
        .I1(\spo[23]_INST_0_i_32_n_0 ),
        .O(\spo[23]_INST_0_i_11_n_0 ),
        .S(a[8]));
  MUXF7 \spo[23]_INST_0_i_12 
       (.I0(\spo[23]_INST_0_i_33_n_0 ),
        .I1(\spo[23]_INST_0_i_34_n_0 ),
        .O(\spo[23]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h00B8333300B80000)) 
    \spo[23]_INST_0_i_13 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(a[8]),
        .I2(\spo[23]_INST_0_i_35_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[23]_INST_0_i_36_n_0 ),
        .O(\spo[23]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_14 
       (.I0(\spo[31]_INST_0_i_19_n_0 ),
        .I1(\spo[23]_INST_0_i_37_n_0 ),
        .I2(a[8]),
        .I3(\spo[23]_INST_0_i_38_n_0 ),
        .I4(a[5]),
        .I5(\spo[23]_INST_0_i_39_n_0 ),
        .O(\spo[23]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hC400800074008000)) 
    \spo[23]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_15_n_0 ));
  MUXF7 \spo[23]_INST_0_i_16 
       (.I0(\spo[23]_INST_0_i_40_n_0 ),
        .I1(\spo[23]_INST_0_i_41_n_0 ),
        .O(\spo[23]_INST_0_i_16_n_0 ),
        .S(a[8]));
  MUXF7 \spo[23]_INST_0_i_17 
       (.I0(\spo[23]_INST_0_i_42_n_0 ),
        .I1(\spo[23]_INST_0_i_43_n_0 ),
        .O(\spo[23]_INST_0_i_17_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_18 
       (.I0(\spo[23]_INST_0_i_44_n_0 ),
        .I1(\spo[27]_INST_0_i_24_n_0 ),
        .I2(a[8]),
        .I3(\spo[23]_INST_0_i_45_n_0 ),
        .I4(a[5]),
        .I5(\spo[30]_INST_0_i_39_n_0 ),
        .O(\spo[23]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \spo[23]_INST_0_i_19 
       (.I0(\spo[31]_INST_0_i_43_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_46_n_0 ),
        .O(\spo[23]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_9_n_0 ),
        .I1(\spo[23]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[23]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[23]_INST_0_i_12_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  MUXF7 \spo[23]_INST_0_i_20 
       (.I0(\spo[23]_INST_0_i_47_n_0 ),
        .I1(\spo[23]_INST_0_i_48_n_0 ),
        .O(\spo[23]_INST_0_i_20_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00204080)) 
    \spo[23]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[23]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0090)) 
    \spo[23]_INST_0_i_22 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .O(\spo[23]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h1080)) 
    \spo[23]_INST_0_i_23 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .O(\spo[23]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h2064000054950000)) 
    \spo[23]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8080008010400090)) 
    \spo[23]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h68001500)) 
    \spo[23]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[23]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h020080005800E600)) 
    \spo[23]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00008C0004000100)) 
    \spo[23]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h4000900000008000)) 
    \spo[23]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_3 
       (.I0(\spo[23]_INST_0_i_13_n_0 ),
        .I1(\spo[23]_INST_0_i_14_n_0 ),
        .I2(a[6]),
        .I3(\spo[23]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[23]_INST_0_i_16_n_0 ),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6100A000)) 
    \spo[23]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[23]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00060002000)) 
    \spo[23]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h47002400)) 
    \spo[23]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[23]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0200090040000800)) 
    \spo[23]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h18C0000095000000)) 
    \spo[23]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h3080)) 
    \spo[23]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .O(\spo[23]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \spo[23]_INST_0_i_36 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .O(\spo[23]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h8400)) 
    \spo[23]_INST_0_i_37 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[23]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[23]_INST_0_i_38 
       (.I0(a[1]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[0]),
        .O(\spo[23]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF0000800)) 
    \spo[23]_INST_0_i_39 
       (.I0(a[9]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[1]),
        .O(\spo[23]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_4 
       (.I0(\spo[23]_INST_0_i_17_n_0 ),
        .I1(\spo[23]_INST_0_i_18_n_0 ),
        .I2(a[6]),
        .I3(\spo[23]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[23]_INST_0_i_20_n_0 ),
        .O(\spo[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3491000008800000)) 
    \spo[23]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0100060004002000)) 
    \spo[23]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h1400000006030000)) 
    \spo[23]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h40000700)) 
    \spo[23]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[23]_INST_0_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \spo[23]_INST_0_i_44 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[23]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \spo[23]_INST_0_i_45 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[23]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hC200600040001000)) 
    \spo[23]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000006000)) 
    \spo[23]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8000C00000002000)) 
    \spo[23]_INST_0_i_48 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \spo[23]_INST_0_i_5 
       (.I0(\spo[23]_INST_0_i_21_n_0 ),
        .I1(a[8]),
        .I2(\spo[23]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(\spo[23]_INST_0_i_23_n_0 ),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \spo[23]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_43_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[23]_INST_0_i_24_n_0 ),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  MUXF7 \spo[23]_INST_0_i_7 
       (.I0(\spo[23]_INST_0_i_25_n_0 ),
        .I1(\spo[23]_INST_0_i_26_n_0 ),
        .O(\spo[23]_INST_0_i_7_n_0 ),
        .S(a[8]));
  MUXF7 \spo[23]_INST_0_i_8 
       (.I0(\spo[23]_INST_0_i_27_n_0 ),
        .I1(\spo[23]_INST_0_i_28_n_0 ),
        .O(\spo[23]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h000000000B083000)) 
    \spo[23]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[8]),
        .I2(a[1]),
        .I3(\spo[29]_INST_0_i_23_n_0 ),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_9_n_0 ));
  MUXF7 \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[24]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_3_n_0 ),
        .I1(\spo[24]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(\spo[24]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[24]_INST_0_i_10 
       (.I0(\spo[24]_INST_0_i_27_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[24]_INST_0_i_28_n_0 ),
        .I4(a[7]),
        .I5(\spo[24]_INST_0_i_29_n_0 ),
        .O(\spo[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \spo[24]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[5]),
        .I2(\spo[28]_INST_0_i_29_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_30_n_0 ),
        .O(\spo[24]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \spo[24]_INST_0_i_12 
       (.I0(\spo[31]_INST_0_i_23_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_43_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_31_n_0 ),
        .O(\spo[24]_INST_0_i_12_n_0 ));
  MUXF7 \spo[24]_INST_0_i_13 
       (.I0(\spo[24]_INST_0_i_32_n_0 ),
        .I1(\spo[24]_INST_0_i_33_n_0 ),
        .O(\spo[24]_INST_0_i_13_n_0 ),
        .S(a[8]));
  MUXF7 \spo[24]_INST_0_i_14 
       (.I0(\spo[24]_INST_0_i_34_n_0 ),
        .I1(\spo[24]_INST_0_i_35_n_0 ),
        .O(\spo[24]_INST_0_i_14_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h60C0D06000000000)) 
    \spo[24]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_15_n_0 ));
  MUXF7 \spo[24]_INST_0_i_16 
       (.I0(\spo[24]_INST_0_i_36_n_0 ),
        .I1(\spo[24]_INST_0_i_37_n_0 ),
        .O(\spo[24]_INST_0_i_16_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \spo[24]_INST_0_i_17 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[24]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h04310000E5200000)) 
    \spo[24]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[24]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hB301000001400000)) 
    \spo[24]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[24]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_7_n_0 ),
        .I1(\spo[24]_INST_0_i_8_n_0 ),
        .I2(a[4]),
        .I3(\spo[24]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[24]_INST_0_i_10_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4518C94100000000)) 
    \spo[24]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_43_n_0 ),
        .O(\spo[24]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \spo[24]_INST_0_i_21 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_38_n_0 ),
        .O(\spo[24]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \spo[24]_INST_0_i_22 
       (.I0(\spo[28]_INST_0_i_29_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_39_n_0 ),
        .O(\spo[24]_INST_0_i_22_n_0 ));
  MUXF7 \spo[24]_INST_0_i_23 
       (.I0(\spo[24]_INST_0_i_40_n_0 ),
        .I1(\spo[24]_INST_0_i_41_n_0 ),
        .O(\spo[24]_INST_0_i_23_n_0 ),
        .S(a[8]));
  MUXF7 \spo[24]_INST_0_i_24 
       (.I0(\spo[24]_INST_0_i_42_n_0 ),
        .I1(\spo[24]_INST_0_i_43_n_0 ),
        .O(\spo[24]_INST_0_i_24_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0060C0C000800000)) 
    \spo[24]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_25_n_0 ));
  MUXF7 \spo[24]_INST_0_i_26 
       (.I0(\spo[24]_INST_0_i_44_n_0 ),
        .I1(\spo[24]_INST_0_i_45_n_0 ),
        .O(\spo[24]_INST_0_i_26_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hA010)) 
    \spo[24]_INST_0_i_27 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[24]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1000200000000000)) 
    \spo[24]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_28_n_0 ));
  MUXF7 \spo[24]_INST_0_i_29 
       (.I0(\spo[24]_INST_0_i_46_n_0 ),
        .I1(\spo[24]_INST_0_i_47_n_0 ),
        .O(\spo[24]_INST_0_i_29_n_0 ),
        .S(a[8]));
  MUXF7 \spo[24]_INST_0_i_3 
       (.I0(\spo[24]_INST_0_i_11_n_0 ),
        .I1(\spo[24]_INST_0_i_12_n_0 ),
        .O(\spo[24]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h6012000001320000)) 
    \spo[24]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h4000F20064002000)) 
    \spo[24]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4840000003F40000)) 
    \spo[24]_INST_0_i_32 
       (.I0(a[9]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C004404)) 
    \spo[24]_INST_0_i_33 
       (.I0(a[2]),
        .I1(\spo[29]_INST_0_i_43_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h81E0000094800000)) 
    \spo[24]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h8500C200)) 
    \spo[24]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[24]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0800000080004200)) 
    \spo[24]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hC500E200)) 
    \spo[24]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[24]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h1142000074C10000)) 
    \spo[24]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[24]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h04002A004000A700)) 
    \spo[24]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_39_n_0 ));
  MUXF8 \spo[24]_INST_0_i_4 
       (.I0(\spo[24]_INST_0_i_13_n_0 ),
        .I1(\spo[24]_INST_0_i_14_n_0 ),
        .O(\spo[24]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0405000022100000)) 
    \spo[24]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h2025000000620000)) 
    \spo[24]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hA800A00002004000)) 
    \spo[24]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00908000)) 
    \spo[24]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[24]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h4100000092000000)) 
    \spo[24]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h8090A000)) 
    \spo[24]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[24]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h40480000091D0000)) 
    \spo[24]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[24]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h19100000C0010000)) 
    \spo[24]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[24]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[24]_INST_0_i_5 
       (.I0(\spo[30]_INST_0_i_41_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[24]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[24]_INST_0_i_16_n_0 ),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0_i_6 
       (.I0(\spo[24]_INST_0_i_17_n_0 ),
        .I1(\spo[24]_INST_0_i_18_n_0 ),
        .I2(a[7]),
        .I3(\spo[24]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[24]_INST_0_i_20_n_0 ),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  MUXF7 \spo[24]_INST_0_i_7 
       (.I0(\spo[24]_INST_0_i_21_n_0 ),
        .I1(\spo[24]_INST_0_i_22_n_0 ),
        .O(\spo[24]_INST_0_i_7_n_0 ),
        .S(a[7]));
  MUXF8 \spo[24]_INST_0_i_8 
       (.I0(\spo[24]_INST_0_i_23_n_0 ),
        .I1(\spo[24]_INST_0_i_24_n_0 ),
        .O(\spo[24]_INST_0_i_8_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[24]_INST_0_i_9 
       (.I0(\spo[28]_INST_0_i_23_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[24]_INST_0_i_25_n_0 ),
        .I4(a[7]),
        .I5(\spo[24]_INST_0_i_26_n_0 ),
        .O(\spo[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[25]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[25]_INST_0_i_4_n_0 ),
        .O(spo[25]));
  MUXF7 \spo[25]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_5_n_0 ),
        .I1(\spo[25]_INST_0_i_6_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \spo[25]_INST_0_i_10 
       (.I0(\spo[25]_INST_0_i_29_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_26_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_30_n_0 ),
        .O(\spo[25]_INST_0_i_10_n_0 ));
  MUXF7 \spo[25]_INST_0_i_11 
       (.I0(\spo[25]_INST_0_i_31_n_0 ),
        .I1(\spo[25]_INST_0_i_32_n_0 ),
        .O(\spo[25]_INST_0_i_11_n_0 ),
        .S(a[8]));
  MUXF7 \spo[25]_INST_0_i_12 
       (.I0(\spo[25]_INST_0_i_33_n_0 ),
        .I1(\spo[25]_INST_0_i_34_n_0 ),
        .O(\spo[25]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[25]_INST_0_i_13 
       (.I0(\spo[30]_INST_0_i_41_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[25]_INST_0_i_35_n_0 ),
        .I4(a[7]),
        .I5(\spo[25]_INST_0_i_36_n_0 ),
        .O(\spo[25]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_14 
       (.I0(\spo[25]_INST_0_i_37_n_0 ),
        .I1(\spo[25]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_39_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_40_n_0 ),
        .O(\spo[25]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h8B000800)) 
    \spo[25]_INST_0_i_15 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .O(\spo[25]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1186000018700000)) 
    \spo[25]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1005000040280000)) 
    \spo[25]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4000100000000000)) 
    \spo[25]_INST_0_i_18 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_18_n_0 ));
  MUXF7 \spo[25]_INST_0_i_19 
       (.I0(\spo[25]_INST_0_i_41_n_0 ),
        .I1(\spo[25]_INST_0_i_42_n_0 ),
        .O(\spo[25]_INST_0_i_19_n_0 ),
        .S(a[8]));
  MUXF7 \spo[25]_INST_0_i_2 
       (.I0(\spo[25]_INST_0_i_7_n_0 ),
        .I1(\spo[25]_INST_0_i_8_n_0 ),
        .O(\spo[25]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h3054000040430000)) 
    \spo[25]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h91880000F0030000)) 
    \spo[25]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[25]_INST_0_i_21_n_0 ));
  MUXF7 \spo[25]_INST_0_i_22 
       (.I0(\spo[25]_INST_0_i_43_n_0 ),
        .I1(\spo[25]_INST_0_i_44_n_0 ),
        .O(\spo[25]_INST_0_i_22_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h10200000)) 
    \spo[25]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[25]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0300100068008000)) 
    \spo[25]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[25]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h92001500)) 
    \spo[25]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[25]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000800010806080)) 
    \spo[25]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h82A3000044100000)) 
    \spo[25]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h20900080)) 
    \spo[25]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[25]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[25]_INST_0_i_29 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[1]),
        .O(\spo[25]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_3 
       (.I0(\spo[25]_INST_0_i_9_n_0 ),
        .I1(\spo[25]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[25]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[25]_INST_0_i_12_n_0 ),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6031A56100000000)) 
    \spo[25]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_43_n_0 ),
        .O(\spo[25]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h80B8000005400000)) 
    \spo[25]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h42001800)) 
    \spo[25]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[25]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h100100000C040000)) 
    \spo[25]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000000040C8444)) 
    \spo[25]_INST_0_i_34 
       (.I0(a[9]),
        .I1(\spo[29]_INST_0_i_43_n_0 ),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC708000032190000)) 
    \spo[25]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_35_n_0 ));
  MUXF7 \spo[25]_INST_0_i_36 
       (.I0(\spo[25]_INST_0_i_45_n_0 ),
        .I1(\spo[25]_INST_0_i_46_n_0 ),
        .O(\spo[25]_INST_0_i_36_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h18001700)) 
    \spo[25]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[25]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5800430088004800)) 
    \spo[25]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[25]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h40005800)) 
    \spo[25]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[25]_INST_0_i_39_n_0 ));
  MUXF7 \spo[25]_INST_0_i_4 
       (.I0(\spo[25]_INST_0_i_13_n_0 ),
        .I1(\spo[25]_INST_0_i_14_n_0 ),
        .O(\spo[25]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h08000000A0004200)) 
    \spo[25]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h4600210044000600)) 
    \spo[25]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[25]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hC6000700)) 
    \spo[25]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[25]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6000A00000000000)) 
    \spo[25]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h090C150F00000000)) 
    \spo[25]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_43_n_0 ),
        .O(\spo[25]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0512590100000000)) 
    \spo[25]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_43_n_0 ),
        .O(\spo[25]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000460001001000)) 
    \spo[25]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[25]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_5 
       (.I0(\spo[25]_INST_0_i_15_n_0 ),
        .I1(\spo[25]_INST_0_i_16_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_18_n_0 ),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[25]_INST_0_i_6 
       (.I0(\spo[25]_INST_0_i_19_n_0 ),
        .I1(a[7]),
        .I2(\spo[30]_INST_0_i_41_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_20_n_0 ),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[25]_INST_0_i_7 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[25]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[25]_INST_0_i_22_n_0 ),
        .O(\spo[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0_i_8 
       (.I0(\spo[25]_INST_0_i_23_n_0 ),
        .I1(\spo[25]_INST_0_i_24_n_0 ),
        .I2(a[7]),
        .I3(\spo[25]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[25]_INST_0_i_26_n_0 ),
        .O(\spo[25]_INST_0_i_8_n_0 ));
  MUXF7 \spo[25]_INST_0_i_9 
       (.I0(\spo[25]_INST_0_i_27_n_0 ),
        .I1(\spo[25]_INST_0_i_28_n_0 ),
        .O(\spo[25]_INST_0_i_9_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[26]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_4_n_0 ),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[26]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[26]_INST_0_i_8_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  MUXF7 \spo[26]_INST_0_i_10 
       (.I0(\spo[26]_INST_0_i_28_n_0 ),
        .I1(\spo[26]_INST_0_i_29_n_0 ),
        .O(\spo[26]_INST_0_i_10_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hB3803303B3803000)) 
    \spo[26]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[8]),
        .I2(a[5]),
        .I3(\spo[30]_INST_0_i_37_n_0 ),
        .I4(a[0]),
        .I5(\spo[30]_INST_0_i_29_n_0 ),
        .O(\spo[26]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h8B888888)) 
    \spo[26]_INST_0_i_12 
       (.I0(\spo[26]_INST_0_i_30_n_0 ),
        .I1(a[8]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_43_n_0 ),
        .I4(a[5]),
        .O(\spo[26]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \spo[26]_INST_0_i_13 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_43_n_0 ),
        .I2(a[5]),
        .I3(a[8]),
        .I4(\spo[26]_INST_0_i_31_n_0 ),
        .O(\spo[26]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCD00FFFFCD000000)) 
    \spo[26]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[26]_INST_0_i_32_n_0 ),
        .O(\spo[26]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \spo[26]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[26]_INST_0_i_33_n_0 ),
        .O(\spo[26]_INST_0_i_15_n_0 ));
  MUXF7 \spo[26]_INST_0_i_16 
       (.I0(\spo[26]_INST_0_i_34_n_0 ),
        .I1(\spo[26]_INST_0_i_35_n_0 ),
        .O(\spo[26]_INST_0_i_16_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h40A0FFFF40A00000)) 
    \spo[26]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[26]_INST_0_i_36_n_0 ),
        .O(\spo[26]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_18 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[26]_INST_0_i_37_n_0 ),
        .I2(a[8]),
        .I3(\spo[26]_INST_0_i_38_n_0 ),
        .I4(a[5]),
        .I5(\spo[26]_INST_0_i_39_n_0 ),
        .O(\spo[26]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[26]_INST_0_i_19 
       (.I0(\spo[26]_INST_0_i_40_n_0 ),
        .I1(a[8]),
        .I2(\spo[26]_INST_0_i_41_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_46_n_0 ),
        .O(\spo[26]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_9_n_0 ),
        .I1(\spo[26]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[26]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[26]_INST_0_i_12_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  MUXF7 \spo[26]_INST_0_i_20 
       (.I0(\spo[26]_INST_0_i_42_n_0 ),
        .I1(\spo[26]_INST_0_i_43_n_0 ),
        .O(\spo[26]_INST_0_i_20_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h06240000C1150000)) 
    \spo[26]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[9]),
        .O(\spo[26]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h34000000)) 
    \spo[26]_INST_0_i_22 
       (.I0(a[9]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[1]),
        .O(\spo[26]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00004010)) 
    \spo[26]_INST_0_i_23 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[26]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0900360006008800)) 
    \spo[26]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4E00040021004200)) 
    \spo[26]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000004048C008)) 
    \spo[26]_INST_0_i_26 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0C0000002D00C000)) 
    \spo[26]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hE000400000000000)) 
    \spo[26]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h83008800)) 
    \spo[26]_INST_0_i_29 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[26]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_13_n_0 ),
        .I1(\spo[26]_INST_0_i_14_n_0 ),
        .I2(a[6]),
        .I3(\spo[26]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[26]_INST_0_i_16_n_0 ),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1844000015020000)) 
    \spo[26]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h2152000004100000)) 
    \spo[26]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h003A000045800000)) 
    \spo[26]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h891500004C840000)) 
    \spo[26]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[9]),
        .O(\spo[26]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hB21900008C800000)) 
    \spo[26]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h011000000D150000)) 
    \spo[26]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[9]),
        .O(\spo[26]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4800C30044000C00)) 
    \spo[26]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[26]_INST_0_i_37 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[0]),
        .O(\spo[26]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \spo[26]_INST_0_i_38 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .O(\spo[26]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \spo[26]_INST_0_i_39 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[26]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_4 
       (.I0(\spo[26]_INST_0_i_17_n_0 ),
        .I1(\spo[26]_INST_0_i_18_n_0 ),
        .I2(a[6]),
        .I3(\spo[26]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[26]_INST_0_i_20_n_0 ),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h108000A0)) 
    \spo[26]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[26]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h40A0)) 
    \spo[26]_INST_0_i_41 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .O(\spo[26]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0200A80000000100)) 
    \spo[26]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hA200000001001A00)) 
    \spo[26]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hC0B8FFFFC0B80000)) 
    \spo[26]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_23_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[26]_INST_0_i_21_n_0 ),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_6 
       (.I0(\spo[28]_INST_0_i_18_n_0 ),
        .I1(\spo[30]_INST_0_i_41_n_0 ),
        .I2(a[8]),
        .I3(\spo[26]_INST_0_i_22_n_0 ),
        .I4(a[5]),
        .I5(\spo[26]_INST_0_i_23_n_0 ),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7000FFFF70000000)) 
    \spo[26]_INST_0_i_7 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[26]_INST_0_i_24_n_0 ),
        .O(\spo[26]_INST_0_i_7_n_0 ));
  MUXF7 \spo[26]_INST_0_i_8 
       (.I0(\spo[26]_INST_0_i_25_n_0 ),
        .I1(\spo[26]_INST_0_i_26_n_0 ),
        .O(\spo[26]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hE500FFFFE5000000)) 
    \spo[26]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[26]_INST_0_i_27_n_0 ),
        .O(\spo[26]_INST_0_i_9_n_0 ));
  MUXF7 \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .O(spo[27]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_3_n_0 ),
        .I1(\spo[27]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(\spo[27]_INST_0_i_5_n_0 ),
        .I4(a[6]),
        .I5(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  MUXF8 \spo[27]_INST_0_i_10 
       (.I0(\spo[27]_INST_0_i_32_n_0 ),
        .I1(\spo[27]_INST_0_i_33_n_0 ),
        .O(\spo[27]_INST_0_i_10_n_0 ),
        .S(a[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h4B000000)) 
    \spo[27]_INST_0_i_11 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[0]),
        .O(\spo[27]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE46B000060300000)) 
    \spo[27]_INST_0_i_12 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h4800)) 
    \spo[27]_INST_0_i_13 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[27]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h20002000F0801040)) 
    \spo[27]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_14_n_0 ));
  MUXF7 \spo[27]_INST_0_i_15 
       (.I0(\spo[27]_INST_0_i_34_n_0 ),
        .I1(\spo[27]_INST_0_i_35_n_0 ),
        .O(\spo[27]_INST_0_i_15_n_0 ),
        .S(a[8]));
  MUXF7 \spo[27]_INST_0_i_16 
       (.I0(\spo[27]_INST_0_i_36_n_0 ),
        .I1(\spo[27]_INST_0_i_37_n_0 ),
        .O(\spo[27]_INST_0_i_16_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h2400C100)) 
    \spo[27]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[27]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4000030000000000)) 
    \spo[27]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hC8009800)) 
    \spo[27]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[27]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_7_n_0 ),
        .I1(\spo[27]_INST_0_i_8_n_0 ),
        .I2(a[4]),
        .I3(\spo[27]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[27]_INST_0_i_10_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000800F000C400)) 
    \spo[27]_INST_0_i_20 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_20_n_0 ));
  MUXF7 \spo[27]_INST_0_i_21 
       (.I0(\spo[27]_INST_0_i_38_n_0 ),
        .I1(\spo[27]_INST_0_i_39_n_0 ),
        .O(\spo[27]_INST_0_i_21_n_0 ),
        .S(a[8]));
  MUXF7 \spo[27]_INST_0_i_22 
       (.I0(\spo[27]_INST_0_i_40_n_0 ),
        .I1(\spo[27]_INST_0_i_41_n_0 ),
        .O(\spo[27]_INST_0_i_22_n_0 ),
        .S(a[8]));
  MUXF7 \spo[27]_INST_0_i_23 
       (.I0(\spo[27]_INST_0_i_42_n_0 ),
        .I1(\spo[27]_INST_0_i_43_n_0 ),
        .O(\spo[27]_INST_0_i_23_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \spo[27]_INST_0_i_24 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .O(\spo[27]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h02F6000016890000)) 
    \spo[27]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h80100000)) 
    \spo[27]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[27]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9A99000081600000)) 
    \spo[27]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[27]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h108C000004F90000)) 
    \spo[27]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h45500000404A0000)) 
    \spo[27]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_11_n_0 ),
        .I1(\spo[27]_INST_0_i_12_n_0 ),
        .I2(a[7]),
        .I3(\spo[27]_INST_0_i_13_n_0 ),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_14_n_0 ),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[27]_INST_0_i_30 
       (.I0(\spo[28]_INST_0_i_29_n_0 ),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_44_n_0 ),
        .O(\spo[27]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \spo[27]_INST_0_i_31 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_45_n_0 ),
        .O(\spo[27]_INST_0_i_31_n_0 ));
  MUXF7 \spo[27]_INST_0_i_32 
       (.I0(\spo[27]_INST_0_i_46_n_0 ),
        .I1(\spo[27]_INST_0_i_47_n_0 ),
        .O(\spo[27]_INST_0_i_32_n_0 ),
        .S(a[8]));
  MUXF7 \spo[27]_INST_0_i_33 
       (.I0(\spo[27]_INST_0_i_48_n_0 ),
        .I1(\spo[27]_INST_0_i_49_n_0 ),
        .O(\spo[27]_INST_0_i_33_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0000C8005400A400)) 
    \spo[27]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0068000041100000)) 
    \spo[27]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h01D4000010D80000)) 
    \spo[27]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hA0A01080)) 
    \spo[27]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[27]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hF0B060A000002000)) 
    \spo[27]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h8020800050004020)) 
    \spo[27]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_39_n_0 ));
  MUXF8 \spo[27]_INST_0_i_4 
       (.I0(\spo[27]_INST_0_i_15_n_0 ),
        .I1(\spo[27]_INST_0_i_16_n_0 ),
        .O(\spo[27]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h901C000011280000)) 
    \spo[27]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h1800C000)) 
    \spo[27]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[27]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0A00180022008800)) 
    \spo[27]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hC4000500)) 
    \spo[27]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[27]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h4100000096100000)) 
    \spo[27]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h80C00000C8070000)) 
    \spo[27]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h5C00800080000800)) 
    \spo[27]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6000A04000000000)) 
    \spo[27]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000830008000200)) 
    \spo[27]_INST_0_i_48 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h50C08000)) 
    \spo[27]_INST_0_i_49 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[27]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_5 
       (.I0(\spo[27]_INST_0_i_17_n_0 ),
        .I1(\spo[27]_INST_0_i_18_n_0 ),
        .I2(a[7]),
        .I3(\spo[27]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_20_n_0 ),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  MUXF8 \spo[27]_INST_0_i_6 
       (.I0(\spo[27]_INST_0_i_21_n_0 ),
        .I1(\spo[27]_INST_0_i_22_n_0 ),
        .O(\spo[27]_INST_0_i_6_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[27]_INST_0_i_7 
       (.I0(\spo[27]_INST_0_i_23_n_0 ),
        .I1(a[7]),
        .I2(\spo[27]_INST_0_i_24_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_25_n_0 ),
        .O(\spo[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_8 
       (.I0(\spo[27]_INST_0_i_26_n_0 ),
        .I1(\spo[27]_INST_0_i_27_n_0 ),
        .I2(a[7]),
        .I3(\spo[27]_INST_0_i_28_n_0 ),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_29_n_0 ),
        .O(\spo[27]_INST_0_i_8_n_0 ));
  MUXF7 \spo[27]_INST_0_i_9 
       (.I0(\spo[27]_INST_0_i_30_n_0 ),
        .I1(\spo[27]_INST_0_i_31_n_0 ),
        .O(\spo[27]_INST_0_i_9_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[28]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_4_n_0 ),
        .O(spo[28]));
  MUXF7 \spo[28]_INST_0_i_1 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(\spo[28]_INST_0_i_6_n_0 ),
        .O(\spo[28]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \spo[28]_INST_0_i_10 
       (.I0(\spo[28]_INST_0_i_27_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[0]),
        .I4(\spo[30]_INST_0_i_28_n_0 ),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \spo[28]_INST_0_i_11 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(a[5]),
        .I2(\spo[28]_INST_0_i_29_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[28]_INST_0_i_30_n_0 ),
        .O(\spo[28]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC5C0FFFFC5C00000)) 
    \spo[28]_INST_0_i_12 
       (.I0(a[5]),
        .I1(\spo[31]_INST_0_i_23_n_0 ),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[28]_INST_0_i_31_n_0 ),
        .O(\spo[28]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0084FFFF00840000)) 
    \spo[28]_INST_0_i_13 
       (.I0(a[1]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[28]_INST_0_i_33_n_0 ),
        .O(\spo[28]_INST_0_i_13_n_0 ));
  MUXF7 \spo[28]_INST_0_i_14 
       (.I0(\spo[28]_INST_0_i_34_n_0 ),
        .I1(\spo[28]_INST_0_i_35_n_0 ),
        .O(\spo[28]_INST_0_i_14_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_15 
       (.I0(\spo[28]_INST_0_i_36_n_0 ),
        .I1(\spo[28]_INST_0_i_37_n_0 ),
        .I2(a[7]),
        .I3(\spo[28]_INST_0_i_38_n_0 ),
        .I4(a[8]),
        .I5(\spo[28]_INST_0_i_39_n_0 ),
        .O(\spo[28]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA000A000C0CFC0C0)) 
    \spo[28]_INST_0_i_16 
       (.I0(\spo[28]_INST_0_i_40_n_0 ),
        .I1(\spo[28]_INST_0_i_41_n_0 ),
        .I2(a[7]),
        .I3(a[5]),
        .I4(\spo[28]_INST_0_i_42_n_0 ),
        .I5(a[8]),
        .O(\spo[28]_INST_0_i_16_n_0 ));
  MUXF7 \spo[28]_INST_0_i_17 
       (.I0(\spo[28]_INST_0_i_43_n_0 ),
        .I1(\spo[28]_INST_0_i_44_n_0 ),
        .O(\spo[28]_INST_0_i_17_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \spo[28]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .O(\spo[28]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000C6001200E600)) 
    \spo[28]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_7_n_0 ),
        .I1(\spo[28]_INST_0_i_8_n_0 ),
        .I2(a[6]),
        .I3(\spo[28]_INST_0_i_9_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_10_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h406F00002A020000)) 
    \spo[28]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h48040000)) 
    \spo[28]_INST_0_i_21 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .O(\spo[28]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h116407C900000000)) 
    \spo[28]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[15]_INST_0_i_19_n_0 ),
        .O(\spo[28]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[28]_INST_0_i_23 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[0]),
        .O(\spo[28]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20004000)) 
    \spo[28]_INST_0_i_24 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[28]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \spo[28]_INST_0_i_25 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .O(\spo[28]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \spo[28]_INST_0_i_26 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .O(\spo[28]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h1804000099000000)) 
    \spo[28]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[28]_INST_0_i_28 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[1]),
        .O(\spo[28]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spo[28]_INST_0_i_29 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(a[1]),
        .O(\spo[28]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_11_n_0 ),
        .I1(\spo[28]_INST_0_i_12_n_0 ),
        .I2(a[6]),
        .I3(\spo[28]_INST_0_i_13_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_14_n_0 ),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h016000006F310000)) 
    \spo[28]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[28]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0807000010800000)) 
    \spo[28]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spo[28]_INST_0_i_32 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h01110000DE800000)) 
    \spo[28]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[28]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h1A11000000840000)) 
    \spo[28]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004C40484)) 
    \spo[28]_INST_0_i_35 
       (.I0(a[2]),
        .I1(\spo[15]_INST_0_i_19_n_0 ),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \spo[28]_INST_0_i_36 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[28]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4200100040004400)) 
    \spo[28]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hA000A00000004000)) 
    \spo[28]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h4D5B000098880000)) 
    \spo[28]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[28]_INST_0_i_39_n_0 ));
  MUXF7 \spo[28]_INST_0_i_4 
       (.I0(\spo[28]_INST_0_i_15_n_0 ),
        .I1(\spo[28]_INST_0_i_16_n_0 ),
        .O(\spo[28]_INST_0_i_4_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0084)) 
    \spo[28]_INST_0_i_40 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[28]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h08000000C7008000)) 
    \spo[28]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hE050)) 
    \spo[28]_INST_0_i_42 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .O(\spo[28]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h8900360006000000)) 
    \spo[28]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00002A00)) 
    \spo[28]_INST_0_i_44 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[5]),
        .O(\spo[28]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[28]_INST_0_i_5 
       (.I0(\spo[28]_INST_0_i_17_n_0 ),
        .I1(a[7]),
        .I2(\spo[28]_INST_0_i_18_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[28]_INST_0_i_19_n_0 ),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_6 
       (.I0(\spo[30]_INST_0_i_22_n_0 ),
        .I1(\spo[28]_INST_0_i_20_n_0 ),
        .I2(a[7]),
        .I3(\spo[28]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[28]_INST_0_i_22_n_0 ),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_7 
       (.I0(\spo[28]_INST_0_i_23_n_0 ),
        .I1(\spo[30]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[28]_INST_0_i_24_n_0 ),
        .I4(a[5]),
        .I5(\spo[28]_INST_0_i_25_n_0 ),
        .O(\spo[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \spo[28]_INST_0_i_8 
       (.I0(\spo[30]_INST_0_i_28_n_0 ),
        .I1(a[0]),
        .I2(\spo[28]_INST_0_i_26_n_0 ),
        .I3(a[5]),
        .I4(\spo[30]_INST_0_i_27_n_0 ),
        .I5(a[8]),
        .O(\spo[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3088308800330000)) 
    \spo[28]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[8]),
        .I2(\spo[28]_INST_0_i_25_n_0 ),
        .I3(a[5]),
        .I4(\spo[30]_INST_0_i_27_n_0 ),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[29]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[29]_INST_0_i_3_n_0 ),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(\spo[29]_INST_0_i_5_n_0 ),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_6_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_7_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[29]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_26_n_0 ),
        .O(\spo[29]_INST_0_i_10_n_0 ));
  MUXF7 \spo[29]_INST_0_i_11 
       (.I0(\spo[29]_INST_0_i_27_n_0 ),
        .I1(\spo[29]_INST_0_i_28_n_0 ),
        .O(\spo[29]_INST_0_i_11_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_12 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[29]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_31_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_32_n_0 ),
        .O(\spo[29]_INST_0_i_12_n_0 ));
  MUXF8 \spo[29]_INST_0_i_13 
       (.I0(\spo[29]_INST_0_i_33_n_0 ),
        .I1(\spo[29]_INST_0_i_34_n_0 ),
        .O(\spo[29]_INST_0_i_13_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_14 
       (.I0(\spo[29]_INST_0_i_35_n_0 ),
        .I1(\spo[29]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_37_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_38_n_0 ),
        .O(\spo[29]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_15 
       (.I0(\spo[29]_INST_0_i_39_n_0 ),
        .I1(\spo[29]_INST_0_i_40_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_41_n_0 ),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_42_n_0 ),
        .O(\spo[29]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0400420004007000)) 
    \spo[29]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00F6000006870000)) 
    \spo[29]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h90000080)) 
    \spo[29]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8600010008000000)) 
    \spo[29]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_8_n_0 ),
        .I1(\spo[29]_INST_0_i_9_n_0 ),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_10_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_11_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAD00C400)) 
    \spo[29]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[29]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4600C4005000E800)) 
    \spo[29]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0047000000620000)) 
    \spo[29]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[29]_INST_0_i_23 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h4000400084000500)) 
    \spo[29]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h4800C300)) 
    \spo[29]_INST_0_i_25 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0520000030030000)) 
    \spo[29]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040001800)) 
    \spo[29]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0900C00088008000)) 
    \spo[29]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[29]_INST_0_i_29 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[29]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_12_n_0 ),
        .I1(\spo[29]_INST_0_i_13_n_0 ),
        .I2(a[4]),
        .I3(\spo[29]_INST_0_i_14_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_15_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A08000037120000)) 
    \spo[29]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h46004900)) 
    \spo[29]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[29]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h40FC0000C3440000)) 
    \spo[29]_INST_0_i_32 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_32_n_0 ));
  MUXF7 \spo[29]_INST_0_i_33 
       (.I0(\spo[29]_INST_0_i_44_n_0 ),
        .I1(\spo[29]_INST_0_i_45_n_0 ),
        .O(\spo[29]_INST_0_i_33_n_0 ),
        .S(a[8]));
  MUXF7 \spo[29]_INST_0_i_34 
       (.I0(\spo[29]_INST_0_i_46_n_0 ),
        .I1(\spo[29]_INST_0_i_47_n_0 ),
        .O(\spo[29]_INST_0_i_34_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h20008060)) 
    \spo[29]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h40C0804000000020)) 
    \spo[29]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h54004200)) 
    \spo[29]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[29]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0054000010070000)) 
    \spo[29]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hA0C00020)) 
    \spo[29]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[29]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_43_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[29]_INST_0_i_16_n_0 ),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5240000020D90000)) 
    \spo[29]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA000000000004000)) 
    \spo[29]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h44008D004600C800)) 
    \spo[29]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[29]_INST_0_i_43 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[13]),
        .O(\spo[29]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h3859000000880000)) 
    \spo[29]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0040000001D00000)) 
    \spo[29]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0800400005004000)) 
    \spo[29]_INST_0_i_46 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h55006200)) 
    \spo[29]_INST_0_i_47 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[2]),
        .O(\spo[29]_INST_0_i_47_n_0 ));
  MUXF7 \spo[29]_INST_0_i_5 
       (.I0(\spo[29]_INST_0_i_17_n_0 ),
        .I1(\spo[29]_INST_0_i_18_n_0 ),
        .O(\spo[29]_INST_0_i_5_n_0 ),
        .S(a[8]));
  MUXF7 \spo[29]_INST_0_i_6 
       (.I0(\spo[29]_INST_0_i_19_n_0 ),
        .I1(\spo[29]_INST_0_i_20_n_0 ),
        .O(\spo[29]_INST_0_i_6_n_0 ),
        .S(a[8]));
  MUXF7 \spo[29]_INST_0_i_7 
       (.I0(\spo[29]_INST_0_i_21_n_0 ),
        .I1(\spo[29]_INST_0_i_22_n_0 ),
        .O(\spo[29]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h3008000800330000)) 
    \spo[29]_INST_0_i_8 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[8]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_8_n_0 ));
  MUXF7 \spo[29]_INST_0_i_9 
       (.I0(\spo[29]_INST_0_i_24_n_0 ),
        .I1(\spo[29]_INST_0_i_25_n_0 ),
        .O(\spo[29]_INST_0_i_9_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .O(spo[2]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_4_n_0 ),
        .I1(\spo[2]_INST_0_i_5_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[2]_INST_0_i_31_n_0 ),
        .I1(\spo[2]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_33_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_18_n_0 ),
        .I1(\spo[2]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_35_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_36_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h9DFF0000)) 
    \spo[2]_INST_0_i_12 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEF6E0000FEF70000)) 
    \spo[2]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h57460000075D0000)) 
    \spo[2]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFBA0000FEB60000)) 
    \spo[2]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hEFF70000)) 
    \spo[2]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFF7F00000000)) 
    \spo[2]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6FFF0000)) 
    \spo[2]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEDFFD00000000)) 
    \spo[2]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_19_n_0 ));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_6_n_0 ),
        .I1(\spo[2]_INST_0_i_7_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hFFFB0000CFFC0000)) 
    \spo[2]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h76700000D7FC0000)) 
    \spo[2]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF7FEBFFF00000000)) 
    \spo[2]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \spo[2]_INST_0_i_23 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h7CDFFFFF00000000)) 
    \spo[2]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h763FED7B00000000)) 
    \spo[2]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  MUXF7 \spo[2]_INST_0_i_26 
       (.I0(\spo[2]_INST_0_i_37_n_0 ),
        .I1(\spo[2]_INST_0_i_38_n_0 ),
        .O(\spo[2]_INST_0_i_26_n_0 ),
        .S(a[8]));
  MUXF7 \spo[2]_INST_0_i_27 
       (.I0(\spo[2]_INST_0_i_39_n_0 ),
        .I1(\spo[2]_INST_0_i_40_n_0 ),
        .O(\spo[2]_INST_0_i_27_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h73F0FFFF00000000)) 
    \spo[2]_INST_0_i_28 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h55DE55FF00000000)) 
    \spo[2]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_8_n_0 ),
        .I1(\spo[2]_INST_0_i_9_n_0 ),
        .I2(a[4]),
        .I3(\spo[2]_INST_0_i_10_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_11_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF6FDFFFD00000000)) 
    \spo[2]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hEFFF0000)) 
    \spo[2]_INST_0_i_31 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFB3CFFFF00000000)) 
    \spo[2]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF0F7EFCF00000000)) 
    \spo[2]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hBFDF0000CFE60000)) 
    \spo[2]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h47DE0000FF9F0000)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF0000270C0000)) 
    \spo[2]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEBBBD00000000)) 
    \spo[2]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \spo[2]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[2]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBF7CDBF300000000)) 
    \spo[2]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_12_n_0 ),
        .I1(\spo[2]_INST_0_i_13_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_15_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF300FA00)) 
    \spo[2]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[2]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_16_n_0 ),
        .I1(\spo[2]_INST_0_i_17_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_19_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_20_n_0 ),
        .I1(\spo[2]_INST_0_i_20_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_22_n_0 ),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_7 
       (.I0(\spo[2]_INST_0_i_23_n_0 ),
        .I1(\spo[2]_INST_0_i_24_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_25_n_0 ),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  MUXF8 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_26_n_0 ),
        .I1(\spo[2]_INST_0_i_27_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_29_n_0 ),
        .I1(\spo[2]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_30_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0 
       (.I0(\spo[30]_INST_0_i_1_n_0 ),
        .I1(\spo[30]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[30]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[30]_INST_0_i_4_n_0 ),
        .O(spo[30]));
  MUXF7 \spo[30]_INST_0_i_1 
       (.I0(\spo[30]_INST_0_i_5_n_0 ),
        .I1(\spo[30]_INST_0_i_6_n_0 ),
        .O(\spo[30]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \spo[30]_INST_0_i_10 
       (.I0(\spo[30]_INST_0_i_30_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .O(\spo[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1080FFFF10800000)) 
    \spo[30]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_22_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[30]_INST_0_i_31_n_0 ),
        .O(\spo[30]_INST_0_i_11_n_0 ));
  MUXF7 \spo[30]_INST_0_i_12 
       (.I0(\spo[30]_INST_0_i_32_n_0 ),
        .I1(\spo[30]_INST_0_i_33_n_0 ),
        .O(\spo[30]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    \spo[30]_INST_0_i_13 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_22_n_0 ),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[30]_INST_0_i_34_n_0 ),
        .O(\spo[30]_INST_0_i_13_n_0 ));
  MUXF7 \spo[30]_INST_0_i_14 
       (.I0(\spo[30]_INST_0_i_35_n_0 ),
        .I1(\spo[30]_INST_0_i_36_n_0 ),
        .O(\spo[30]_INST_0_i_14_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h8380FFFF83800000)) 
    \spo[30]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[8]),
        .I2(a[5]),
        .I3(\spo[30]_INST_0_i_37_n_0 ),
        .I4(a[0]),
        .I5(\spo[31]_INST_0_i_20_n_0 ),
        .O(\spo[30]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_16 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(\spo[30]_INST_0_i_38_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_39_n_0 ),
        .I4(a[5]),
        .I5(\spo[30]_INST_0_i_40_n_0 ),
        .O(\spo[30]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_17 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(\spo[30]_INST_0_i_41_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_42_n_0 ),
        .I4(a[5]),
        .I5(\spo[30]_INST_0_i_43_n_0 ),
        .O(\spo[30]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \spo[30]_INST_0_i_18 
       (.I0(\spo[30]_INST_0_i_44_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_31_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[30]_INST_0_i_45_n_0 ),
        .O(\spo[30]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h90000080)) 
    \spo[30]_INST_0_i_19 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[30]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_2 
       (.I0(\spo[30]_INST_0_i_7_n_0 ),
        .I1(\spo[30]_INST_0_i_8_n_0 ),
        .I2(a[6]),
        .I3(\spo[30]_INST_0_i_9_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_10_n_0 ),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010650000)) 
    \spo[30]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[30]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0A00C40010006600)) 
    \spo[30]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h802000B0)) 
    \spo[30]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[30]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4500020000006000)) 
    \spo[30]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h20800000)) 
    \spo[30]_INST_0_i_24 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[5]),
        .O(\spo[30]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045005000)) 
    \spo[30]_INST_0_i_25 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0C00000065000000)) 
    \spo[30]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \spo[30]_INST_0_i_27 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .O(\spo[30]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[30]_INST_0_i_28 
       (.I0(a[2]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[30]_INST_0_i_29 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[30]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_3 
       (.I0(\spo[30]_INST_0_i_11_n_0 ),
        .I1(\spo[30]_INST_0_i_12_n_0 ),
        .I2(a[6]),
        .I3(\spo[30]_INST_0_i_13_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_14_n_0 ),
        .O(\spo[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h490044008C000000)) 
    \spo[30]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0200600010008800)) 
    \spo[30]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0A00420005008000)) 
    \spo[30]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0E00C300)) 
    \spo[30]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[30]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0034000085000000)) 
    \spo[30]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[30]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h80A02000C00000C0)) 
    \spo[30]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[30]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0400480004000100)) 
    \spo[30]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[30]_INST_0_i_37 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[1]),
        .O(\spo[30]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spo[30]_INST_0_i_38 
       (.I0(a[1]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[0]),
        .O(\spo[30]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[30]_INST_0_i_39 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[30]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_4 
       (.I0(\spo[30]_INST_0_i_15_n_0 ),
        .I1(\spo[30]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .I3(\spo[30]_INST_0_i_17_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_18_n_0 ),
        .O(\spo[30]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30402000)) 
    \spo[30]_INST_0_i_40 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .O(\spo[30]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[30]_INST_0_i_41 
       (.I0(a[1]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[0]),
        .O(\spo[30]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00002080)) 
    \spo[30]_INST_0_i_42 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[0]),
        .O(\spo[30]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80800040)) 
    \spo[30]_INST_0_i_43 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[30]_INST_0_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \spo[30]_INST_0_i_44 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .O(\spo[30]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h051300009C880000)) 
    \spo[30]_INST_0_i_45 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0F008F8F0F008080)) 
    \spo[30]_INST_0_i_5 
       (.I0(a[5]),
        .I1(\spo[30]_INST_0_i_19_n_0 ),
        .I2(a[7]),
        .I3(\spo[30]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[30]_INST_0_i_21_n_0 ),
        .O(\spo[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_6 
       (.I0(\spo[30]_INST_0_i_22_n_0 ),
        .I1(\spo[30]_INST_0_i_23_n_0 ),
        .I2(a[7]),
        .I3(\spo[30]_INST_0_i_24_n_0 ),
        .I4(a[8]),
        .I5(\spo[30]_INST_0_i_25_n_0 ),
        .O(\spo[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2010FFFF20100000)) 
    \spo[30]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[30]_INST_0_i_26_n_0 ),
        .O(\spo[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB800B80030333000)) 
    \spo[30]_INST_0_i_8 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[8]),
        .I2(\spo[30]_INST_0_i_27_n_0 ),
        .I3(a[5]),
        .I4(\spo[30]_INST_0_i_28_n_0 ),
        .I5(a[0]),
        .O(\spo[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h80808080000F0000)) 
    \spo[30]_INST_0_i_9 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(a[1]),
        .I4(\spo[30]_INST_0_i_29_n_0 ),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[31]_INST_0_i_4_n_0 ),
        .O(spo[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_5_n_0 ),
        .I1(\spo[31]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[31]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_8_n_0 ),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \spo[31]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_32_n_0 ),
        .O(\spo[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[31]_INST_0_i_11 
       (.I0(a[0]),
        .I1(\spo[31]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[31]_INST_0_i_33_n_0 ),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_34_n_0 ),
        .O(\spo[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \spo[31]_INST_0_i_12 
       (.I0(\spo[31]_INST_0_i_35_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_36_n_0 ),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \spo[31]_INST_0_i_13 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[31]_INST_0_i_38_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_39_n_0 ),
        .O(\spo[31]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[31]_INST_0_i_14 
       (.I0(\spo[31]_INST_0_i_40_n_0 ),
        .I1(a[7]),
        .I2(\spo[31]_INST_0_i_41_n_0 ),
        .I3(a[8]),
        .I4(\spo[31]_INST_0_i_42_n_0 ),
        .O(\spo[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[31]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_43_n_0 ),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_44_n_0 ),
        .O(\spo[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0450040)) 
    \spo[31]_INST_0_i_16 
       (.I0(a[8]),
        .I1(\spo[31]_INST_0_i_45_n_0 ),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_22_n_0 ),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[31]_INST_0_i_17 
       (.I0(\spo[31]_INST_0_i_46_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_47_n_0 ),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_26_n_0 ),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[31]_INST_0_i_18 
       (.I0(\spo[31]_INST_0_i_48_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[0]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_49_n_0 ),
        .O(\spo[31]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h8070)) 
    \spo[31]_INST_0_i_19 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .O(\spo[31]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_9_n_0 ),
        .I1(\spo[31]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[31]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_12_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \spo[31]_INST_0_i_20 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[1]),
        .O(\spo[31]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h80C0)) 
    \spo[31]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[2]),
        .O(\spo[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[31]_INST_0_i_22 
       (.I0(a[9]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \spo[31]_INST_0_i_23 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .O(\spo[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h2B02000009550000)) 
    \spo[31]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_50_n_0 ),
        .I5(a[2]),
        .O(\spo[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \spo[31]_INST_0_i_25 
       (.I0(a[2]),
        .I1(a[10]),
        .I2(a[12]),
        .I3(a[11]),
        .I4(a[13]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \spo[31]_INST_0_i_26 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(a[1]),
        .O(\spo[31]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0400C100)) 
    \spo[31]_INST_0_i_27 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .O(\spo[31]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5C00C4000000E600)) 
    \spo[31]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004044004)) 
    \spo[31]_INST_0_i_29 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_50_n_0 ),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_29_n_0 ));
  MUXF7 \spo[31]_INST_0_i_3 
       (.I0(\spo[31]_INST_0_i_13_n_0 ),
        .I1(\spo[31]_INST_0_i_14_n_0 ),
        .O(\spo[31]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[31]_INST_0_i_30 
       (.I0(a[13]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .I4(a[9]),
        .O(\spo[31]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \spo[31]_INST_0_i_31 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4000000085000000)) 
    \spo[31]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h17000000)) 
    \spo[31]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .O(\spo[31]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40008000)) 
    \spo[31]_INST_0_i_34 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[9]),
        .I4(a[1]),
        .O(\spo[31]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h5899000049800000)) 
    \spo[31]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \spo[31]_INST_0_i_36 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[31]_INST_0_i_37 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[31]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000030000400C000)) 
    \spo[31]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_38_n_0 ));
  MUXF7 \spo[31]_INST_0_i_39 
       (.I0(\spo[31]_INST_0_i_51_n_0 ),
        .I1(\spo[31]_INST_0_i_52_n_0 ),
        .O(\spo[31]_INST_0_i_39_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_15_n_0 ),
        .I1(\spo[31]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .I3(\spo[31]_INST_0_i_17_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_18_n_0 ),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h820060000000F000)) 
    \spo[31]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00200030)) 
    \spo[31]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[31]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0200780004002000)) 
    \spo[31]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \spo[31]_INST_0_i_43 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[2]),
        .O(\spo[31]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000408040)) 
    \spo[31]_INST_0_i_44 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_50_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000001)) 
    \spo[31]_INST_0_i_45 
       (.I0(a[2]),
        .I1(a[13]),
        .I2(a[11]),
        .I3(a[12]),
        .I4(a[10]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE9000000)) 
    \spo[31]_INST_0_i_46 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .O(\spo[31]_INST_0_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4800)) 
    \spo[31]_INST_0_i_47 
       (.I0(a[9]),
        .I1(\spo[31]_INST_0_i_50_n_0 ),
        .I2(a[2]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8800B00000000000)) 
    \spo[31]_INST_0_i_48 
       (.I0(a[9]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h40003000)) 
    \spo[31]_INST_0_i_49 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[1]),
        .O(\spo[31]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h8888888833300030)) 
    \spo[31]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_19_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_21_n_0 ),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[31]_INST_0_i_50 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[13]),
        .O(\spo[31]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h8020A000404000C0)) 
    \spo[31]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0500480004000000)) 
    \spo[31]_INST_0_i_52 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_50_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \spo[31]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_22_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_24_n_0 ),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F4055554F400000)) 
    \spo[31]_INST_0_i_7 
       (.I0(a[8]),
        .I1(\spo[31]_INST_0_i_25_n_0 ),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_26_n_0 ),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_27_n_0 ),
        .O(\spo[31]_INST_0_i_7_n_0 ));
  MUXF7 \spo[31]_INST_0_i_8 
       (.I0(\spo[31]_INST_0_i_28_n_0 ),
        .I1(\spo[31]_INST_0_i_29_n_0 ),
        .O(\spo[31]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h00000000002F0020)) 
    \spo[31]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_30_n_0 ),
        .I1(a[2]),
        .I2(a[8]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_31_n_0 ),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(spo[3]));
  MUXF7 \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_32_n_0 ),
        .I1(\spo[3]_INST_0_i_33_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_11 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[30]_INST_0_i_38_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_34_n_0 ),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_22_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \spo[3]_INST_0_i_12 
       (.I0(\spo[31]_INST_0_i_43_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_35_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_13 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[3]_INST_0_i_27_n_0 ),
        .I2(a[8]),
        .I3(\spo[30]_INST_0_i_41_n_0 ),
        .I4(a[5]),
        .I5(\spo[18]_INST_0_i_32_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  MUXF7 \spo[3]_INST_0_i_14 
       (.I0(\spo[3]_INST_0_i_36_n_0 ),
        .I1(\spo[3]_INST_0_i_37_n_0 ),
        .O(\spo[3]_INST_0_i_14_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hA000A000CF00C000)) 
    \spo[3]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(\spo[31]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(a[0]),
        .I4(\spo[30]_INST_0_i_29_n_0 ),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88BB8888B888B888)) 
    \spo[3]_INST_0_i_16 
       (.I0(\spo[3]_INST_0_i_38_n_0 ),
        .I1(a[8]),
        .I2(\spo[30]_INST_0_i_29_n_0 ),
        .I3(a[5]),
        .I4(\spo[28]_INST_0_i_32_n_0 ),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \spo[3]_INST_0_i_17 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_23_n_0 ),
        .I3(a[0]),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_39_n_0 ),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h84003800)) 
    \spo[3]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[0]),
        .I3(\spo[29]_INST_0_i_23_n_0 ),
        .I4(a[5]),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hC0100080)) 
    \spo[3]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(\spo[3]_INST_0_i_8_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_9_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8186000018020000)) 
    \spo[3]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000010044000800)) 
    \spo[3]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6040401000802080)) 
    \spo[3]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[15]_INST_0_i_19_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h80004020)) 
    \spo[3]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h4000420004003000)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[15]_INST_0_i_19_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00201040)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h2604000018110000)) 
    \spo[3]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \spo[3]_INST_0_i_27 
       (.I0(a[0]),
        .I1(\spo[28]_INST_0_i_32_n_0 ),
        .I2(a[1]),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80003000)) 
    \spo[3]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[2]),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0048)) 
    \spo[3]_INST_0_i_29 
       (.I0(a[2]),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_11_n_0 ),
        .I1(\spo[3]_INST_0_i_12_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_13_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_14_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \spo[3]_INST_0_i_30 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[0]),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \spo[3]_INST_0_i_31 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[0]),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000E90048000000)) 
    \spo[3]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008008040)) 
    \spo[3]_INST_0_i_33 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008008)) 
    \spo[3]_INST_0_i_34 
       (.I0(a[2]),
        .I1(\spo[10]_INST_0_i_13_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h070A000002400000)) 
    \spo[3]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2020200090004010)) 
    \spo[3]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(\spo[10]_INST_0_i_13_n_0 ),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0042000011300000)) 
    \spo[3]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[10]_INST_0_i_13_n_0 ),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h40001800)) 
    \spo[3]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[3]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hC421000019000000)) 
    \spo[3]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[15]_INST_0_i_19_n_0 ),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_15_n_0 ),
        .I1(\spo[3]_INST_0_i_16_n_0 ),
        .I2(a[6]),
        .I3(\spo[3]_INST_0_i_17_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_18_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_19_n_0 ),
        .I1(\spo[3]_INST_0_i_20_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_22_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_23_n_0 ),
        .I1(\spo[3]_INST_0_i_24_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_26_n_0 ),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h380B080800000000)) 
    \spo[3]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_20_n_0 ),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_23_n_0 ),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_27_n_0 ),
        .I1(\spo[23]_INST_0_i_37_n_0 ),
        .I2(a[8]),
        .I3(\spo[19]_INST_0_i_29_n_0 ),
        .I4(a[5]),
        .I5(\spo[3]_INST_0_i_28_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_29_n_0 ),
        .I1(\spo[29]_INST_0_i_29_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_30_n_0 ),
        .I4(a[5]),
        .I5(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[4]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .I4(\spo[4]_INST_0_i_3_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_4_n_0 ),
        .I1(\spo[4]_INST_0_i_5_n_0 ),
        .I2(a[4]),
        .I3(\spo[4]_INST_0_i_6_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_7_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_10 
       (.I0(\spo[4]_INST_0_i_31_n_0 ),
        .I1(\spo[4]_INST_0_i_32_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_33_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_34_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_15_n_0 ),
        .I1(\spo[4]_INST_0_i_35_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_36_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_37_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_12 
       (.I0(\spo[4]_INST_0_i_38_n_0 ),
        .I1(\spo[4]_INST_0_i_39_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_31_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_40_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFEF70000)) 
    \spo[4]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5CBFFF5B00000000)) 
    \spo[4]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7B009800)) 
    \spo[4]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF5FEFF7D00000000)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h9FFF0000)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF79EFFF300000000)) 
    \spo[4]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h530E000007590000)) 
    \spo[4]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_8_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_9_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_10_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B79A0000)) 
    \spo[4]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hB700F800)) 
    \spo[4]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hB7F0FD0F00000000)) 
    \spo[4]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFF4700000000)) 
    \spo[4]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  MUXF7 \spo[4]_INST_0_i_24 
       (.I0(\spo[4]_INST_0_i_41_n_0 ),
        .I1(\spo[4]_INST_0_i_42_n_0 ),
        .O(\spo[4]_INST_0_i_24_n_0 ),
        .S(a[8]));
  MUXF7 \spo[4]_INST_0_i_25 
       (.I0(\spo[4]_INST_0_i_43_n_0 ),
        .I1(\spo[4]_INST_0_i_44_n_0 ),
        .O(\spo[4]_INST_0_i_25_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hFBD600004FFF0000)) 
    \spo[4]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFE003F00)) 
    \spo[4]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h70C0)) 
    \spo[4]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \spo[4]_INST_0_i_29 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[2]),
        .I3(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  MUXF7 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_11_n_0 ),
        .I1(\spo[4]_INST_0_i_12_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[4]_INST_0_i_30 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(a[11]),
        .I3(a[13]),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h63FD0000)) 
    \spo[4]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[4]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h87FF7FFF00000000)) 
    \spo[4]_INST_0_i_32 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h55F6557100000000)) 
    \spo[4]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hEFF50000BFBE0000)) 
    \spo[4]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFF700007DB40000)) 
    \spo[4]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hF407D78100000000)) 
    \spo[4]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hDF327FBD00000000)) 
    \spo[4]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7EFF0000)) 
    \spo[4]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[4]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h7F00C7CF00000000)) 
    \spo[4]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_13_n_0 ),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_16_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFD980000FF470000)) 
    \spo[4]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hBF166BBF00000000)) 
    \spo[4]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h7FC700007FFC0000)) 
    \spo[4]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hFF009200)) 
    \spo[4]_INST_0_i_43 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(\spo[4]_INST_0_i_30_n_0 ),
        .I4(a[9]),
        .O(\spo[4]_INST_0_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hB7003400)) 
    \spo[4]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[4]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_5 
       (.I0(\spo[4]_INST_0_i_17_n_0 ),
        .I1(\spo[4]_INST_0_i_18_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_19_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_20_n_0 ),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_6 
       (.I0(\spo[4]_INST_0_i_21_n_0 ),
        .I1(\spo[4]_INST_0_i_22_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_23_n_0 ),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  MUXF8 \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_24_n_0 ),
        .I1(\spo[4]_INST_0_i_25_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ),
        .S(a[7]));
  MUXF7 \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_26_n_0 ),
        .I1(\spo[4]_INST_0_i_27_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h5F50CFCF0F00C0C0)) 
    \spo[4]_INST_0_i_9 
       (.I0(a[9]),
        .I1(\spo[4]_INST_0_i_28_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_29_n_0 ),
        .I4(a[5]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[4]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[5]_INST_0_i_3_n_0 ),
        .O(spo[5]));
  MUXF7 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_4_n_0 ),
        .I1(\spo[5]_INST_0_i_5_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(\spo[5]_INST_0_i_34_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_29_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_35_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_18_n_0 ),
        .I1(\spo[5]_INST_0_i_36_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_37_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_38_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hE17F0000)) 
    \spo[5]_INST_0_i_12 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE76E0000F8F70000)) 
    \spo[5]_INST_0_i_13 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h47420000075D0000)) 
    \spo[5]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF7E70000EDDA0000)) 
    \spo[5]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFCB70000)) 
    \spo[5]_INST_0_i_16 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF95E9FF900000000)) 
    \spo[5]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h677F0000)) 
    \spo[5]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFD9D00000000)) 
    \spo[5]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_6_n_0 ),
        .I1(\spo[5]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h9B00BE00)) 
    \spo[5]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h77FB00000FF00000)) 
    \spo[5]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h764F000073F00000)) 
    \spo[5]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB75E3FF700000000)) 
    \spo[5]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h61FF0000)) 
    \spo[5]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h73B70000C3FC0000)) 
    \spo[5]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h76BDEDEB00000000)) 
    \spo[5]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  MUXF7 \spo[5]_INST_0_i_27 
       (.I0(\spo[5]_INST_0_i_39_n_0 ),
        .I1(\spo[5]_INST_0_i_40_n_0 ),
        .O(\spo[5]_INST_0_i_27_n_0 ),
        .S(a[8]));
  MUXF7 \spo[5]_INST_0_i_28 
       (.I0(\spo[5]_INST_0_i_41_n_0 ),
        .I1(\spo[5]_INST_0_i_42_n_0 ),
        .O(\spo[5]_INST_0_i_28_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h63790000)) 
    \spo[5]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_8_n_0 ),
        .I1(\spo[5]_INST_0_i_9_n_0 ),
        .I2(a[4]),
        .I3(\spo[5]_INST_0_i_10_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_11_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7EFF6F3F00000000)) 
    \spo[5]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h4D4A00005F5F0000)) 
    \spo[5]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hE7F30000FFE20000)) 
    \spo[5]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hEBF50000)) 
    \spo[5]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hF33C7BF300000000)) 
    \spo[5]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hC7CCFFFB00000000)) 
    \spo[5]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hBFDF0000CDE20000)) 
    \spo[5]_INST_0_i_36 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h66FE0000DE1F0000)) 
    \spo[5]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h3B77000063240000)) 
    \spo[5]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE7EF0000FFF80000)) 
    \spo[5]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\spo[4]_INST_0_i_30_n_0 ),
        .I5(a[9]),
        .O(\spo[5]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(\spo[5]_INST_0_i_13_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_14_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_15_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h83FF0000)) 
    \spo[5]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hBD7C9BFF00000000)) 
    \spo[5]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(\spo[4]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hB4FF0000)) 
    \spo[5]_INST_0_i_42 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .O(\spo[5]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(\spo[5]_INST_0_i_17_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_18_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_19_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_20_n_0 ),
        .I1(\spo[5]_INST_0_i_21_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_22_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_23_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_24_n_0 ),
        .I1(\spo[5]_INST_0_i_25_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_12_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_26_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  MUXF8 \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_27_n_0 ),
        .I1(\spo[5]_INST_0_i_28_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_29_n_0 ),
        .I1(\spo[5]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_31_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_32_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[6]_INST_0 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_1_n_0 ),
        .I3(a[6]),
        .I4(a[3]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0000000015005000)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[13]),
        .I1(a[11]),
        .I2(a[12]),
        .I3(a[10]),
        .I4(a[9]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  MUXF7 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h00000000002F0020)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(\spo[7]_INST_0_i_4_n_0 ),
        .I5(a[6]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(a[4]),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_6_n_0 ),
        .I4(a[6]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(\spo[31]_INST_0_i_30_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE2FFE20000000000)) 
    \spo[7]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_31_n_0 ),
        .I1(a[0]),
        .I2(\spo[30]_INST_0_i_27_n_0 ),
        .I3(a[8]),
        .I4(\spo[24]_INST_0_i_27_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BB308830)) 
    \spo[7]_INST_0_i_5 
       (.I0(\spo[30]_INST_0_i_27_n_0 ),
        .I1(a[8]),
        .I2(\spo[31]_INST_0_i_20_n_0 ),
        .I3(a[0]),
        .I4(\spo[15]_INST_0_i_18_n_0 ),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h33800080B0008000)) 
    \spo[7]_INST_0_i_6 
       (.I0(\spo[29]_INST_0_i_23_n_0 ),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[28]_INST_0_i_32_n_0 ),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[8]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_4_n_0 ),
        .O(spo[8]));
  MUXF7 \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_10 
       (.I0(\spo[8]_INST_0_i_25_n_0 ),
        .I1(\spo[8]_INST_0_i_26_n_0 ),
        .O(\spo[8]_INST_0_i_10_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \spo[8]_INST_0_i_11 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(a[5]),
        .I2(a[8]),
        .I3(\spo[8]_INST_0_i_27_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_28_n_0 ),
        .O(\spo[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_29_n_0 ),
        .I1(\spo[8]_INST_0_i_30_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_31_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_32_n_0 ),
        .O(\spo[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_13 
       (.I0(\spo[8]_INST_0_i_20_n_0 ),
        .I1(\spo[8]_INST_0_i_33_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_34_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_35_n_0 ),
        .O(\spo[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[8]_INST_0_i_14 
       (.I0(\spo[8]_INST_0_i_36_n_0 ),
        .I1(a[7]),
        .I2(\spo[28]_INST_0_i_32_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_37_n_0 ),
        .O(\spo[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8000031570000)) 
    \spo[8]_INST_0_i_15 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000440C4440)) 
    \spo[8]_INST_0_i_16 
       (.I0(a[2]),
        .I1(\spo[29]_INST_0_i_43_n_0 ),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h17880000623A0000)) 
    \spo[8]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h80100080)) 
    \spo[8]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hC0DA000022130000)) 
    \spo[8]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_7_n_0 ),
        .I1(\spo[8]_INST_0_i_8_n_0 ),
        .I2(a[6]),
        .I3(\spo[8]_INST_0_i_9_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_10_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h8000D600)) 
    \spo[8]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0080E040105080F0)) 
    \spo[8]_INST_0_i_21 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h003343C300000000)) 
    \spo[8]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_43_n_0 ),
        .O(\spo[8]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h60004900)) 
    \spo[8]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3B4C0000FF0F0000)) 
    \spo[8]_INST_0_i_24 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h40D9000090040000)) 
    \spo[8]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h50008C0000000C00)) 
    \spo[8]_INST_0_i_26 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h6100C00008000C00)) 
    \spo[8]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_27_n_0 ));
  MUXF7 \spo[8]_INST_0_i_28 
       (.I0(\spo[8]_INST_0_i_38_n_0 ),
        .I1(\spo[8]_INST_0_i_39_n_0 ),
        .O(\spo[8]_INST_0_i_28_n_0 ),
        .S(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00801000)) 
    \spo[8]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[8]_INST_0_i_29_n_0 ));
  MUXF7 \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_11_n_0 ),
        .I1(\spo[8]_INST_0_i_12_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hA700000000130000)) 
    \spo[8]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hC8004300)) 
    \spo[8]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h72AA0000A0110000)) 
    \spo[8]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h80000000F4BF0000)) 
    \spo[8]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00E10000809A0000)) 
    \spo[8]_INST_0_i_34 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h241000001D500000)) 
    \spo[8]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_35_n_0 ));
  MUXF7 \spo[8]_INST_0_i_36 
       (.I0(\spo[8]_INST_0_i_40_n_0 ),
        .I1(\spo[8]_INST_0_i_41_n_0 ),
        .O(\spo[8]_INST_0_i_36_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0D4C000003970000)) 
    \spo[8]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hB0A8000008050000)) 
    \spo[8]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0015000005EC0000)) 
    \spo[8]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[8]_INST_0_i_39_n_0 ));
  MUXF7 \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_13_n_0 ),
        .I1(\spo[8]_INST_0_i_14_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h543C00008A330000)) 
    \spo[8]_INST_0_i_40 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hE4008300)) 
    \spo[8]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[8]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[8]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_15_n_0 ),
        .I1(a[7]),
        .I2(\spo[8]_INST_0_i_16_n_0 ),
        .I3(a[8]),
        .I4(\spo[8]_INST_0_i_17_n_0 ),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_6 
       (.I0(\spo[8]_INST_0_i_18_n_0 ),
        .I1(\spo[8]_INST_0_i_19_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_20_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_21_n_0 ),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  MUXF7 \spo[8]_INST_0_i_7 
       (.I0(\spo[8]_INST_0_i_22_n_0 ),
        .I1(\spo[8]_INST_0_i_23_n_0 ),
        .O(\spo[8]_INST_0_i_7_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hBD9C000025130000)) 
    \spo[8]_INST_0_i_8 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \spo[8]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_26_n_0 ),
        .I1(a[0]),
        .I2(\spo[25]_INST_0_i_29_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_24_n_0 ),
        .O(\spo[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[9]_INST_0_i_3_n_0 ),
        .I4(a[4]),
        .I5(\spo[9]_INST_0_i_4_n_0 ),
        .O(spo[9]));
  MUXF7 \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_10 
       (.I0(\spo[9]_INST_0_i_32_n_0 ),
        .I1(\spo[9]_INST_0_i_33_n_0 ),
        .O(\spo[9]_INST_0_i_10_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[9]_INST_0_i_11 
       (.I0(\spo[18]_INST_0_i_30_n_0 ),
        .I1(a[5]),
        .I2(\spo[9]_INST_0_i_34_n_0 ),
        .I3(a[8]),
        .I4(\spo[9]_INST_0_i_35_n_0 ),
        .O(\spo[9]_INST_0_i_11_n_0 ));
  MUXF7 \spo[9]_INST_0_i_12 
       (.I0(\spo[9]_INST_0_i_36_n_0 ),
        .I1(\spo[9]_INST_0_i_37_n_0 ),
        .O(\spo[9]_INST_0_i_12_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_13 
       (.I0(\spo[9]_INST_0_i_21_n_0 ),
        .I1(\spo[9]_INST_0_i_38_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_39_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_40_n_0 ),
        .O(\spo[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_14 
       (.I0(\spo[9]_INST_0_i_41_n_0 ),
        .I1(\spo[9]_INST_0_i_42_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_43_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_44_n_0 ),
        .O(\spo[9]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h2100E400)) 
    \spo[9]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0700860008000600)) 
    \spo[9]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1000470004000800)) 
    \spo[9]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6E00820010000200)) 
    \spo[9]_INST_0_i_18 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80000010)) 
    \spo[9]_INST_0_i_19 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(\spo[6]_INST_0_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[9]_INST_0_i_19_n_0 ));
  MUXF7 \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_7_n_0 ),
        .I1(\spo[9]_INST_0_i_8_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hCAE2000020070000)) 
    \spo[9]_INST_0_i_20 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h8C000B00)) 
    \spo[9]_INST_0_i_21 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hB0E00000F25D0000)) 
    \spo[9]_INST_0_i_22 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h01000E00)) 
    \spo[9]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8800C0007200CC00)) 
    \spo[9]_INST_0_i_24 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h5000800000000C00)) 
    \spo[9]_INST_0_i_25 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0788000070000000)) 
    \spo[9]_INST_0_i_26 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h2D008600)) 
    \spo[9]_INST_0_i_27 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4966000030330000)) 
    \spo[9]_INST_0_i_28 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[9]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h010200000B510000)) 
    \spo[9]_INST_0_i_29 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_3 
       (.I0(\spo[9]_INST_0_i_9_n_0 ),
        .I1(\spo[9]_INST_0_i_10_n_0 ),
        .I2(a[6]),
        .I3(\spo[9]_INST_0_i_11_n_0 ),
        .I4(a[7]),
        .I5(\spo[9]_INST_0_i_12_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9848000005000000)) 
    \spo[9]_INST_0_i_30 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h46001800)) 
    \spo[9]_INST_0_i_31 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h58A00000A0010000)) 
    \spo[9]_INST_0_i_32 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h47008C00)) 
    \spo[9]_INST_0_i_33 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_30_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \spo[9]_INST_0_i_34 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(\spo[28]_INST_0_i_32_n_0 ),
        .O(\spo[9]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h7095000000000000)) 
    \spo[9]_INST_0_i_35 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[9]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC000800000000300)) 
    \spo[9]_INST_0_i_36 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h10500050000040A0)) 
    \spo[9]_INST_0_i_37 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(\spo[29]_INST_0_i_43_n_0 ),
        .I3(a[2]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h8000D20000000600)) 
    \spo[9]_INST_0_i_38 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00C1000050980000)) 
    \spo[9]_INST_0_i_39 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_39_n_0 ));
  MUXF7 \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_13_n_0 ),
        .I1(\spo[9]_INST_0_i_14_n_0 ),
        .O(\spo[9]_INST_0_i_4_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h7800000087000000)) 
    \spo[9]_INST_0_i_40 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h2100C400)) 
    \spo[9]_INST_0_i_41 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h9C30000022330000)) 
    \spo[9]_INST_0_i_42 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h15002800)) 
    \spo[9]_INST_0_i_43 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(\spo[6]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .O(\spo[9]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0F0A0000E83B0000)) 
    \spo[9]_INST_0_i_44 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .I5(a[9]),
        .O(\spo[9]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_5 
       (.I0(\spo[9]_INST_0_i_15_n_0 ),
        .I1(\spo[9]_INST_0_i_16_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_17_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_18_n_0 ),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_6 
       (.I0(\spo[9]_INST_0_i_19_n_0 ),
        .I1(\spo[9]_INST_0_i_20_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_21_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_22_n_0 ),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_7 
       (.I0(\spo[9]_INST_0_i_23_n_0 ),
        .I1(\spo[9]_INST_0_i_24_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_25_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_26_n_0 ),
        .O(\spo[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_8 
       (.I0(\spo[9]_INST_0_i_27_n_0 ),
        .I1(\spo[9]_INST_0_i_28_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_15_n_0 ),
        .I4(a[8]),
        .I5(\spo[9]_INST_0_i_29_n_0 ),
        .O(\spo[9]_INST_0_i_8_n_0 ));
  MUXF7 \spo[9]_INST_0_i_9 
       (.I0(\spo[9]_INST_0_i_30_n_0 ),
        .I1(\spo[9]_INST_0_i_31_n_0 ),
        .O(\spo[9]_INST_0_i_9_n_0 ),
        .S(a[8]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
