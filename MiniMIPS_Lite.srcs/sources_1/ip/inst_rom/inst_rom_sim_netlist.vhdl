-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jan 30 13:25:24 2026
-- Host        : LAPTOP-K5F6DAJG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/tju_mips/CPU/Mcpu/MiniMIPS_Lite.srcs/sources_1/ip/inst_rom/inst_rom_sim_netlist.vhdl
-- Design      : inst_rom
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity inst_rom_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of inst_rom_rom : entity is "rom";
end inst_rom_rom;

architecture STRUCTURE of inst_rom_rom is
  signal \spo[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_23\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_28\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_29\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_33\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_36\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_38\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_14\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_15\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \spo[10]_INST_0_i_16\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_16\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_17\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_22\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_25\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_28\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_30\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_33\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spo[11]_INST_0_i_35\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_16\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_20\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_21\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_23\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \spo[12]_INST_0_i_27\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_26\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_27\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_28\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_33\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \spo[13]_INST_0_i_37\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_15\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_20\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_24\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_29\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \spo[14]_INST_0_i_31\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \spo[15]_INST_0_i_15\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \spo[15]_INST_0_i_17\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \spo[16]_INST_0_i_12\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \spo[16]_INST_0_i_25\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \spo[16]_INST_0_i_31\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[16]_INST_0_i_32\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[17]_INST_0_i_21\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \spo[17]_INST_0_i_24\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \spo[17]_INST_0_i_35\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_17\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_22\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_24\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_25\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_26\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_27\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_30\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_31\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_32\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[18]_INST_0_i_38\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_21\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_22\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_28\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_29\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_30\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_31\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_32\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_41\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_15\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_16\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_19\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[1]_INST_0_i_22\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \spo[20]_INST_0_i_12\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \spo[20]_INST_0_i_16\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \spo[20]_INST_0_i_22\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \spo[20]_INST_0_i_28\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_15\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_21\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_27\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_31\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_33\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_38\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_13\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_20\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_22\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_25\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_33\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_34\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_36\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_38\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \spo[22]_INST_0_i_40\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_21\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_22\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_23\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_35\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_36\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_37\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_38\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_39\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_44\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \spo[23]_INST_0_i_45\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[24]_INST_0_i_17\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \spo[24]_INST_0_i_27\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_15\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_23\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_25\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_37\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \spo[25]_INST_0_i_39\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_22\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_23\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_37\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_38\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_39\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_40\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \spo[26]_INST_0_i_41\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_11\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_13\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_17\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_19\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_24\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \spo[27]_INST_0_i_26\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_18\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_21\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_23\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_24\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_25\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_26\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_28\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_29\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_36\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_40\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_42\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_29\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_31\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_35\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_37\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_39\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \spo[2]_INST_0_i_12\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[2]_INST_0_i_16\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[2]_INST_0_i_18\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[2]_INST_0_i_23\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[2]_INST_0_i_31\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_19\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_22\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_24\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_27\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_38\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_39\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_40\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_41\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_42\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_43\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_44\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_19\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_21\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_23\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_27\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_31\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_33\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_34\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_36\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_37\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_41\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_43\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_46\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_47\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_49\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_19\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_23\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_25\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_27\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_28\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_29\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_30\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_31\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_34\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_38\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_13\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_15\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_17\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_21\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_28\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_29\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_31\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_38\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_16\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_18\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_20\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_24\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_29\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \spo[5]_INST_0_i_33\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[7]_INST_0_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_18\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_20\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_29\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_31\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_15\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_19\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_21\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_23\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_27\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_34\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_41\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \spo[9]_INST_0_i_43\ : label is "soft_lutpair57";
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => \spo[0]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[0]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[0]_INST_0_i_4_n_0\,
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_5_n_0\,
      I1 => \spo[0]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[0]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_8_n_0\,
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_22_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_24_n_0\,
      O => \spo[0]_INST_0_i_10_n_0\
    );
\spo[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C00800030000700"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      I5 => a(0),
      O => \spo[0]_INST_0_i_11_n_0\
    );
\spo[0]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_25_n_0\,
      I1 => \spo[0]_INST_0_i_26_n_0\,
      O => \spo[0]_INST_0_i_12_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000FFFF90000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_27_n_0\,
      O => \spo[0]_INST_0_i_13_n_0\
    );
\spo[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \spo[0]_INST_0_i_28_n_0\,
      I1 => a(0),
      I2 => \spo[10]_INST_0_i_15_n_0\,
      I3 => a(5),
      I4 => \spo[0]_INST_0_i_29_n_0\,
      I5 => a(8),
      O => \spo[0]_INST_0_i_14_n_0\
    );
\spo[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \spo[24]_INST_0_i_27_n_0\,
      I1 => a(5),
      I2 => \spo[28]_INST_0_i_28_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_30_n_0\,
      O => \spo[0]_INST_0_i_15_n_0\
    );
\spo[0]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_31_n_0\,
      I1 => \spo[0]_INST_0_i_32_n_0\,
      O => \spo[0]_INST_0_i_16_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_33_n_0\,
      I1 => \spo[0]_INST_0_i_34_n_0\,
      I2 => a(7),
      I3 => \spo[0]_INST_0_i_35_n_0\,
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_36_n_0\,
      O => \spo[0]_INST_0_i_17_n_0\
    );
\spo[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_36_n_0\,
      I1 => \spo[0]_INST_0_i_37_n_0\,
      I2 => a(7),
      I3 => \spo[0]_INST_0_i_38_n_0\,
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_39_n_0\,
      O => \spo[0]_INST_0_i_18_n_0\
    );
\spo[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500080000004400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[0]_INST_0_i_19_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_9_n_0\,
      I1 => \spo[0]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[0]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_12_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[0]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40302000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(1),
      I4 => a(0),
      O => \spo[0]_INST_0_i_20_n_0\
    );
\spo[0]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080202010104010"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[0]_INST_0_i_21_n_0\
    );
\spo[0]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500000088130000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[0]_INST_0_i_22_n_0\
    );
\spo[0]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => a(13),
      I1 => a(11),
      I2 => a(12),
      I3 => a(10),
      I4 => a(2),
      O => \spo[0]_INST_0_i_23_n_0\
    );
\spo[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01004800A0000400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[0]_INST_0_i_24_n_0\
    );
\spo[0]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4015000080000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[0]_INST_0_i_25_n_0\
    );
\spo[0]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010000000400C200"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[0]_INST_0_i_26_n_0\
    );
\spo[0]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020003004000C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[0]_INST_0_i_27_n_0\
    );
\spo[0]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0048"
    )
        port map (
      I0 => a(9),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(2),
      I3 => a(1),
      O => \spo[0]_INST_0_i_28_n_0\
    );
\spo[0]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2090"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[0]_INST_0_i_29_n_0\
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_13_n_0\,
      I1 => \spo[0]_INST_0_i_14_n_0\,
      I2 => a(6),
      I3 => \spo[0]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_16_n_0\,
      O => \spo[0]_INST_0_i_3_n_0\
    );
\spo[0]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08003C0000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[0]_INST_0_i_30_n_0\
    );
\spo[0]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000200048002C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[0]_INST_0_i_31_n_0\
    );
\spo[0]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48000300"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(0),
      O => \spo[0]_INST_0_i_32_n_0\
    );
\spo[0]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002080"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(5),
      O => \spo[0]_INST_0_i_33_n_0\
    );
\spo[0]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5204000020190000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[0]_INST_0_i_34_n_0\
    );
\spo[0]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000090000800"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[0]_INST_0_i_35_n_0\
    );
\spo[0]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F0"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => \spo[28]_INST_0_i_32_n_0\,
      I3 => a(1),
      O => \spo[0]_INST_0_i_36_n_0\
    );
\spo[0]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00005000C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[0]_INST_0_i_37_n_0\
    );
\spo[0]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80C00020"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[0]_INST_0_i_38_n_0\
    );
\spo[0]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2300100000000C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[0]_INST_0_i_39_n_0\
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_17_n_0\,
      I1 => \spo[0]_INST_0_i_18_n_0\,
      O => \spo[0]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_19_n_0\,
      I1 => \spo[0]_INST_0_i_20_n_0\,
      O => \spo[0]_INST_0_i_5_n_0\,
      S => a(8)
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0408000003300000"
    )
        port map (
      I0 => a(2),
      I1 => a(8),
      I2 => a(5),
      I3 => a(1),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      I5 => a(0),
      O => \spo[0]_INST_0_i_6_n_0\
    );
\spo[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_22_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[0]_INST_0_i_21_n_0\,
      O => \spo[0]_INST_0_i_7_n_0\
    );
\spo[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \spo[0]_INST_0_i_22_n_0\,
      I1 => a(8),
      I2 => \spo[25]_INST_0_i_29_n_0\,
      I3 => a(0),
      I4 => a(5),
      I5 => \spo[31]_INST_0_i_26_n_0\,
      O => \spo[0]_INST_0_i_8_n_0\
    );
\spo[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A080008"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => \spo[0]_INST_0_i_23_n_0\,
      I5 => a(8),
      O => \spo[0]_INST_0_i_9_n_0\
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_1_n_0\,
      I1 => \spo[10]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[10]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[10]_INST_0_i_4_n_0\,
      O => spo(10)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_5_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_6_n_0\,
      I3 => a(7),
      I4 => \spo[10]_INST_0_i_5_n_0\,
      I5 => a(8),
      O => \spo[10]_INST_0_i_1_n_0\
    );
\spo[10]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AFF2A00"
    )
        port map (
      I0 => \spo[21]_INST_0_i_39_n_0\,
      I1 => a(0),
      I2 => a(2),
      I3 => a(8),
      I4 => \spo[10]_INST_0_i_16_n_0\,
      I5 => a(5),
      O => \spo[10]_INST_0_i_10_n_0\
    );
\spo[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8003333B8000000"
    )
        port map (
      I0 => \spo[12]_INST_0_i_16_n_0\,
      I1 => a(7),
      I2 => \spo[26]_INST_0_i_39_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[10]_INST_0_i_17_n_0\,
      O => \spo[10]_INST_0_i_11_n_0\
    );
\spo[10]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88888888888888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_26_n_0\,
      I1 => a(7),
      I2 => a(5),
      I3 => \spo[28]_INST_0_i_32_n_0\,
      I4 => a(1),
      I5 => a(8),
      O => \spo[10]_INST_0_i_12_n_0\
    );
\spo[10]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => a(10),
      I1 => a(12),
      I2 => a(11),
      I3 => a(13),
      O => \spo[10]_INST_0_i_13_n_0\
    );
\spo[10]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000F700"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[10]_INST_0_i_14_n_0\
    );
\spo[10]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2040"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      O => \spo[10]_INST_0_i_15_n_0\
    );
\spo[10]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2040"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[10]_INST_0_i_16_n_0\
    );
\spo[10]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45840000DE020000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[10]_INST_0_i_17_n_0\
    );
\spo[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[10]_INST_0_i_6_n_0\,
      I1 => \spo[12]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[12]_INST_0_i_10_n_0\,
      I4 => a(7),
      I5 => \spo[10]_INST_0_i_7_n_0\,
      O => \spo[10]_INST_0_i_2_n_0\
    );
\spo[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[10]_INST_0_i_8_n_0\,
      I1 => a(6),
      I2 => \spo[10]_INST_0_i_9_n_0\,
      I3 => a(7),
      I4 => \spo[10]_INST_0_i_10_n_0\,
      O => \spo[10]_INST_0_i_3_n_0\
    );
\spo[10]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_11_n_0\,
      I1 => \spo[10]_INST_0_i_12_n_0\,
      O => \spo[10]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76400000AA010000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[10]_INST_0_i_5_n_0\
    );
\spo[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => \spo[10]_INST_0_i_14_n_0\,
      I1 => a(8),
      I2 => \spo[29]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => \spo[12]_INST_0_i_21_n_0\,
      I5 => a(5),
      O => \spo[10]_INST_0_i_6_n_0\
    );
\spo[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E20000FF0000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_31_n_0\,
      I1 => a(0),
      I2 => \spo[10]_INST_0_i_15_n_0\,
      I3 => a(8),
      I4 => \spo[28]_INST_0_i_28_n_0\,
      I5 => a(5),
      O => \spo[10]_INST_0_i_7_n_0\
    );
\spo[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B8B888888888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_16_n_0\,
      I1 => a(8),
      I2 => \spo[30]_INST_0_i_29_n_0\,
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[10]_INST_0_i_8_n_0\
    );
\spo[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \spo[28]_INST_0_i_29_n_0\,
      I1 => a(8),
      I2 => \spo[12]_INST_0_i_21_n_0\,
      I3 => a(0),
      I4 => \spo[28]_INST_0_i_25_n_0\,
      I5 => a(5),
      O => \spo[10]_INST_0_i_9_n_0\
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => \spo[11]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[11]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[11]_INST_0_i_4_n_0\,
      O => spo(11)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_5_n_0\,
      I1 => \spo[11]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[11]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[11]_INST_0_i_8_n_0\,
      O => \spo[11]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2FFE200"
    )
        port map (
      I0 => \spo[28]_INST_0_i_28_n_0\,
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_23_n_0\,
      I3 => a(7),
      I4 => \spo[11]_INST_0_i_23_n_0\,
      I5 => a(8),
      O => \spo[11]_INST_0_i_10_n_0\
    );
\spo[11]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[11]_INST_0_i_24_n_0\,
      I1 => a(7),
      I2 => \spo[11]_INST_0_i_25_n_0\,
      I3 => a(8),
      I4 => \spo[11]_INST_0_i_26_n_0\,
      O => \spo[11]_INST_0_i_11_n_0\
    );
\spo[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_3_n_0\,
      I1 => \spo[11]_INST_0_i_27_n_0\,
      I2 => a(7),
      I3 => \spo[11]_INST_0_i_28_n_0\,
      I4 => a(8),
      I5 => \spo[11]_INST_0_i_29_n_0\,
      O => \spo[11]_INST_0_i_12_n_0\
    );
\spo[11]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[11]_INST_0_i_30_n_0\,
      I1 => \spo[11]_INST_0_i_31_n_0\,
      I2 => a(7),
      I3 => \spo[11]_INST_0_i_32_n_0\,
      I4 => a(8),
      I5 => \spo[11]_INST_0_i_33_n_0\,
      O => \spo[11]_INST_0_i_13_n_0\
    );
\spo[11]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \spo[11]_INST_0_i_34_n_0\,
      I1 => a(7),
      I2 => \spo[11]_INST_0_i_35_n_0\,
      I3 => a(5),
      I4 => \spo[23]_INST_0_i_38_n_0\,
      I5 => a(8),
      O => \spo[11]_INST_0_i_14_n_0\
    );
\spo[11]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000014A40000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[11]_INST_0_i_15_n_0\
    );
\spo[11]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => a(1),
      I1 => \spo[6]_INST_0_i_2_n_0\,
      I2 => a(2),
      O => \spo[11]_INST_0_i_16_n_0\
    );
\spo[11]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8030"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(9),
      O => \spo[11]_INST_0_i_17_n_0\
    );
\spo[11]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2400B800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[11]_INST_0_i_18_n_0\
    );
\spo[11]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050904050"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(9),
      I4 => a(0),
      I5 => a(5),
      O => \spo[11]_INST_0_i_19_n_0\
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_9_n_0\,
      I1 => \spo[11]_INST_0_i_10_n_0\,
      O => \spo[11]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03B88B0300000000"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => \spo[31]_INST_0_i_30_n_0\,
      O => \spo[11]_INST_0_i_20_n_0\
    );
\spo[11]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00000503030"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      I4 => a(9),
      I5 => a(1),
      O => \spo[11]_INST_0_i_21_n_0\
    );
\spo[11]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"545F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[31]_INST_0_i_30_n_0\,
      O => \spo[11]_INST_0_i_22_n_0\
    );
\spo[11]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4800C00020005C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[11]_INST_0_i_23_n_0\
    );
\spo[11]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02CF000000C00000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[11]_INST_0_i_24_n_0\
    );
\spo[11]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"62009D00"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[11]_INST_0_i_25_n_0\
    );
\spo[11]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020008005B002700"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[11]_INST_0_i_26_n_0\
    );
\spo[11]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B7000020300000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[11]_INST_0_i_27_n_0\
    );
\spo[11]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      I3 => a(5),
      O => \spo[11]_INST_0_i_28_n_0\
    );
\spo[11]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005A000001E00000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[11]_INST_0_i_29_n_0\
    );
\spo[11]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_11_n_0\,
      I1 => \spo[11]_INST_0_i_12_n_0\,
      O => \spo[11]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83003000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[11]_INST_0_i_30_n_0\
    );
\spo[11]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1048000024F90000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[11]_INST_0_i_31_n_0\
    );
\spo[11]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000360080008600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[11]_INST_0_i_32_n_0\
    );
\spo[11]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0700B000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[11]_INST_0_i_33_n_0\
    );
\spo[11]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0000000F001C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[11]_INST_0_i_34_n_0\
    );
\spo[11]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07004400"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      O => \spo[11]_INST_0_i_35_n_0\
    );
\spo[11]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_13_n_0\,
      I1 => \spo[11]_INST_0_i_14_n_0\,
      O => \spo[11]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4020FFFF40200000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(1),
      I4 => a(8),
      I5 => \spo[11]_INST_0_i_15_n_0\,
      O => \spo[11]_INST_0_i_5_n_0\
    );
\spo[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8162000076040000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      I5 => a(1),
      O => \spo[11]_INST_0_i_6_n_0\
    );
\spo[11]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCE230E2"
    )
        port map (
      I0 => \spo[11]_INST_0_i_16_n_0\,
      I1 => a(0),
      I2 => \spo[28]_INST_0_i_32_n_0\,
      I3 => a(5),
      I4 => \spo[11]_INST_0_i_17_n_0\,
      I5 => a(8),
      O => \spo[11]_INST_0_i_7_n_0\
    );
\spo[11]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_18_n_0\,
      I1 => \spo[11]_INST_0_i_19_n_0\,
      O => \spo[11]_INST_0_i_8_n_0\,
      S => a(8)
    );
\spo[11]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[11]_INST_0_i_20_n_0\,
      I1 => a(7),
      I2 => \spo[11]_INST_0_i_21_n_0\,
      I3 => a(8),
      I4 => \spo[11]_INST_0_i_22_n_0\,
      O => \spo[11]_INST_0_i_9_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_1_n_0\,
      I1 => \spo[12]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[12]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[12]_INST_0_i_4_n_0\,
      O => spo(12)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_5_n_0\,
      I1 => a(6),
      I2 => \spo[12]_INST_0_i_6_n_0\,
      I3 => a(7),
      I4 => \spo[12]_INST_0_i_7_n_0\,
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC804880"
    )
        port map (
      I0 => a(1),
      I1 => \spo[21]_INST_0_i_39_n_0\,
      I2 => a(2),
      I3 => a(5),
      I4 => a(0),
      I5 => a(8),
      O => \spo[12]_INST_0_i_10_n_0\
    );
\spo[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F040404020000000"
    )
        port map (
      I0 => a(8),
      I1 => a(2),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[12]_INST_0_i_11_n_0\
    );
\spo[12]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00880088FCBB3088"
    )
        port map (
      I0 => \spo[12]_INST_0_i_22_n_0\,
      I1 => a(7),
      I2 => \spo[12]_INST_0_i_23_n_0\,
      I3 => a(8),
      I4 => \spo[28]_INST_0_i_29_n_0\,
      I5 => a(5),
      O => \spo[12]_INST_0_i_12_n_0\
    );
\spo[12]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_20_n_0\,
      I2 => a(7),
      I3 => \spo[12]_INST_0_i_16_n_0\,
      I4 => a(8),
      I5 => \spo[12]_INST_0_i_24_n_0\,
      O => \spo[12]_INST_0_i_13_n_0\
    );
\spo[12]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => a(5),
      I1 => \spo[12]_INST_0_i_16_n_0\,
      I2 => a(8),
      I3 => a(7),
      I4 => \spo[12]_INST_0_i_25_n_0\,
      O => \spo[12]_INST_0_i_14_n_0\
    );
\spo[12]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \spo[12]_INST_0_i_26_n_0\,
      I1 => a(7),
      I2 => \spo[28]_INST_0_i_29_n_0\,
      I3 => a(8),
      I4 => \spo[12]_INST_0_i_27_n_0\,
      I5 => a(5),
      O => \spo[12]_INST_0_i_15_n_0\
    );
\spo[12]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      O => \spo[12]_INST_0_i_16_n_0\
    );
\spo[12]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0337000000000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(9),
      O => \spo[12]_INST_0_i_17_n_0\
    );
\spo[12]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000A1006000A400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[12]_INST_0_i_18_n_0\
    );
\spo[12]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004000C040"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[12]_INST_0_i_19_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[12]_INST_0_i_8_n_0\,
      I1 => \spo[12]_INST_0_i_9_n_0\,
      I2 => a(6),
      I3 => \spo[12]_INST_0_i_10_n_0\,
      I4 => a(7),
      I5 => \spo[12]_INST_0_i_11_n_0\,
      O => \spo[12]_INST_0_i_2_n_0\
    );
\spo[12]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000F700"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(0),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[12]_INST_0_i_20_n_0\
    );
\spo[12]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      O => \spo[12]_INST_0_i_21_n_0\
    );
\spo[12]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011D0000000C0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(9),
      O => \spo[12]_INST_0_i_22_n_0\
    );
\spo[12]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(9),
      O => \spo[12]_INST_0_i_23_n_0\
    );
\spo[12]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000A0000400"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[12]_INST_0_i_24_n_0\
    );
\spo[12]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10190000D1DC0000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => \spo[21]_INST_0_i_39_n_0\,
      I5 => a(2),
      O => \spo[12]_INST_0_i_25_n_0\
    );
\spo[12]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_28_n_0\,
      I1 => \spo[12]_INST_0_i_29_n_0\,
      O => \spo[12]_INST_0_i_26_n_0\,
      S => a(8)
    );
\spo[12]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[12]_INST_0_i_27_n_0\
    );
\spo[12]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6000A00000008000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[12]_INST_0_i_28_n_0\
    );
\spo[12]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0003300"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[12]_INST_0_i_29_n_0\
    );
\spo[12]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_12_n_0\,
      I1 => \spo[12]_INST_0_i_13_n_0\,
      O => \spo[12]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[12]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_14_n_0\,
      I1 => \spo[12]_INST_0_i_15_n_0\,
      O => \spo[12]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000BB3330008800"
    )
        port map (
      I0 => \spo[31]_INST_0_i_33_n_0\,
      I1 => a(7),
      I2 => \spo[12]_INST_0_i_16_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[12]_INST_0_i_17_n_0\,
      O => \spo[12]_INST_0_i_5_n_0\
    );
\spo[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88C400C400000000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(0),
      I3 => a(5),
      I4 => a(1),
      I5 => a(8),
      O => \spo[12]_INST_0_i_6_n_0\
    );
\spo[12]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_18_n_0\,
      I1 => \spo[12]_INST_0_i_19_n_0\,
      O => \spo[12]_INST_0_i_7_n_0\,
      S => a(8)
    );
\spo[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => \spo[12]_INST_0_i_20_n_0\,
      I1 => a(8),
      I2 => \spo[29]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => \spo[12]_INST_0_i_21_n_0\,
      I5 => a(5),
      O => \spo[12]_INST_0_i_8_n_0\
    );
\spo[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B00000008A008A00"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      I5 => a(5),
      O => \spo[12]_INST_0_i_9_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_1_n_0\,
      I1 => \spo[13]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[13]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[13]_INST_0_i_4_n_0\,
      O => spo(13)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_5_n_0\,
      I1 => \spo[13]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[13]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[13]_INST_0_i_8_n_0\,
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00800040000300"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[13]_INST_0_i_10_n_0\
    );
\spo[13]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_24_n_0\,
      I1 => \spo[13]_INST_0_i_25_n_0\,
      O => \spo[13]_INST_0_i_11_n_0\,
      S => a(8)
    );
\spo[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0CF00C000"
    )
        port map (
      I0 => \spo[13]_INST_0_i_26_n_0\,
      I1 => \spo[13]_INST_0_i_27_n_0\,
      I2 => a(8),
      I3 => a(0),
      I4 => \spo[31]_INST_0_i_26_n_0\,
      I5 => a(5),
      O => \spo[13]_INST_0_i_12_n_0\
    );
\spo[13]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_28_n_0\,
      I1 => \spo[13]_INST_0_i_29_n_0\,
      I2 => a(7),
      I3 => \spo[13]_INST_0_i_30_n_0\,
      I4 => a(8),
      I5 => \spo[13]_INST_0_i_31_n_0\,
      O => \spo[13]_INST_0_i_13_n_0\
    );
\spo[13]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[13]_INST_0_i_32_n_0\,
      I1 => a(7),
      I2 => \spo[13]_INST_0_i_33_n_0\,
      I3 => a(8),
      I4 => \spo[13]_INST_0_i_34_n_0\,
      O => \spo[13]_INST_0_i_14_n_0\
    );
\spo[13]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_35_n_0\,
      I1 => \spo[13]_INST_0_i_36_n_0\,
      O => \spo[13]_INST_0_i_15_n_0\,
      S => a(8)
    );
\spo[13]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \spo[13]_INST_0_i_28_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => \spo[13]_INST_0_i_37_n_0\,
      I5 => a(0),
      O => \spo[13]_INST_0_i_16_n_0\
    );
\spo[13]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2700000040200000"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_30_n_0\,
      I5 => a(0),
      O => \spo[13]_INST_0_i_17_n_0\
    );
\spo[13]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_28_n_0\,
      I1 => a(0),
      I2 => \spo[30]_INST_0_i_27_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[13]_INST_0_i_38_n_0\,
      O => \spo[13]_INST_0_i_18_n_0\
    );
\spo[13]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000800006000400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[13]_INST_0_i_19_n_0\
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_9_n_0\,
      I1 => \spo[13]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[13]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[13]_INST_0_i_12_n_0\,
      O => \spo[13]_INST_0_i_2_n_0\
    );
\spo[13]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D40000020420000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[13]_INST_0_i_20_n_0\
    );
\spo[13]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001000001C20000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(9),
      O => \spo[13]_INST_0_i_21_n_0\
    );
\spo[13]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004100C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[13]_INST_0_i_22_n_0\
    );
\spo[13]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48004100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[13]_INST_0_i_23_n_0\
    );
\spo[13]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B00000000C000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[13]_INST_0_i_24_n_0\
    );
\spo[13]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04008100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[13]_INST_0_i_25_n_0\
    );
\spo[13]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00202010"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[13]_INST_0_i_26_n_0\
    );
\spo[13]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8400"
    )
        port map (
      I0 => a(9),
      I1 => \spo[15]_INST_0_i_19_n_0\,
      I2 => a(2),
      I3 => a(1),
      O => \spo[13]_INST_0_i_27_n_0\
    );
\spo[13]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30400020"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      I4 => a(0),
      O => \spo[13]_INST_0_i_28_n_0\
    );
\spo[13]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000018000C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[13]_INST_0_i_29_n_0\
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_13_n_0\,
      I1 => \spo[13]_INST_0_i_14_n_0\,
      O => \spo[13]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[13]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1009000004400000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[13]_INST_0_i_30_n_0\
    );
\spo[13]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000010008000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[13]_INST_0_i_31_n_0\
    );
\spo[13]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000300"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[13]_INST_0_i_32_n_0\
    );
\spo[13]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[13]_INST_0_i_33_n_0\
    );
\spo[13]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4800810000008000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[13]_INST_0_i_34_n_0\
    );
\spo[13]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18C00000020F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[13]_INST_0_i_35_n_0\
    );
\spo[13]_INST_0_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20004100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[13]_INST_0_i_36_n_0\
    );
\spo[13]_INST_0_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4030"
    )
        port map (
      I0 => a(9),
      I1 => a(1),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      O => \spo[13]_INST_0_i_37_n_0\
    );
\spo[13]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4091000085D00000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(9),
      O => \spo[13]_INST_0_i_38_n_0\
    );
\spo[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[13]_INST_0_i_15_n_0\,
      I1 => \spo[13]_INST_0_i_16_n_0\,
      I2 => a(6),
      I3 => \spo[13]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[13]_INST_0_i_18_n_0\,
      O => \spo[13]_INST_0_i_4_n_0\
    );
\spo[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(5),
      I2 => \spo[30]_INST_0_i_27_n_0\,
      I3 => a(0),
      I4 => \spo[31]_INST_0_i_26_n_0\,
      I5 => a(8),
      O => \spo[13]_INST_0_i_5_n_0\
    );
\spo[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F088FFFFF0880000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_26_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[13]_INST_0_i_19_n_0\,
      O => \spo[13]_INST_0_i_6_n_0\
    );
\spo[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00840000000300"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[13]_INST_0_i_7_n_0\
    );
\spo[13]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_20_n_0\,
      I1 => \spo[13]_INST_0_i_21_n_0\,
      O => \spo[13]_INST_0_i_8_n_0\,
      S => a(8)
    );
\spo[13]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_22_n_0\,
      I1 => \spo[13]_INST_0_i_23_n_0\,
      O => \spo[13]_INST_0_i_9_n_0\,
      S => a(8)
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[14]_INST_0_i_1_n_0\,
      I1 => \spo[14]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[14]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[14]_INST_0_i_4_n_0\,
      O => spo(14)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_5_n_0\,
      I1 => \spo[14]_INST_0_i_6_n_0\,
      O => \spo[14]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0FFFF88F00000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_23_n_0\,
      I1 => a(5),
      I2 => \spo[28]_INST_0_i_28_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[14]_INST_0_i_27_n_0\,
      O => \spo[14]_INST_0_i_10_n_0\
    );
\spo[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088FFFF30880000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[14]_INST_0_i_28_n_0\,
      O => \spo[14]_INST_0_i_11_n_0\
    );
\spo[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0000E200E200"
    )
        port map (
      I0 => \spo[30]_INST_0_i_29_n_0\,
      I1 => a(0),
      I2 => \spo[14]_INST_0_i_29_n_0\,
      I3 => a(8),
      I4 => \spo[18]_INST_0_i_26_n_0\,
      I5 => a(5),
      O => \spo[14]_INST_0_i_12_n_0\
    );
\spo[14]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5C0FFFFC5C00000"
    )
        port map (
      I0 => a(8),
      I1 => \spo[31]_INST_0_i_37_n_0\,
      I2 => a(5),
      I3 => \spo[23]_INST_0_i_37_n_0\,
      I4 => a(7),
      I5 => \spo[14]_INST_0_i_30_n_0\,
      O => \spo[14]_INST_0_i_13_n_0\
    );
\spo[14]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[14]_INST_0_i_31_n_0\,
      I1 => \spo[14]_INST_0_i_32_n_0\,
      I2 => a(7),
      I3 => \spo[18]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[14]_INST_0_i_33_n_0\,
      O => \spo[14]_INST_0_i_14_n_0\
    );
\spo[14]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D00C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[14]_INST_0_i_15_n_0\
    );
\spo[14]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[14]_INST_0_i_16_n_0\
    );
\spo[14]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000B0000A00"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[14]_INST_0_i_17_n_0\
    );
\spo[14]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00048000700"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[14]_INST_0_i_18_n_0\
    );
\spo[14]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8580000042700000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[14]_INST_0_i_19_n_0\
    );
\spo[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_7_n_0\,
      I1 => \spo[14]_INST_0_i_8_n_0\,
      O => \spo[14]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[14]_INST_0_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      I3 => a(5),
      O => \spo[14]_INST_0_i_20_n_0\
    );
\spo[14]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B000C03000008080"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[14]_INST_0_i_21_n_0\
    );
\spo[14]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000003C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[14]_INST_0_i_22_n_0\
    );
\spo[14]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030008000"
    )
        port map (
      I0 => a(9),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[14]_INST_0_i_23_n_0\
    );
\spo[14]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A00040"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[14]_INST_0_i_24_n_0\
    );
\spo[14]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0630000050030000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[14]_INST_0_i_25_n_0\
    );
\spo[14]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082000010050000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[14]_INST_0_i_26_n_0\
    );
\spo[14]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6800840000000100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[14]_INST_0_i_27_n_0\
    );
\spo[14]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000034300000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[14]_INST_0_i_28_n_0\
    );
\spo[14]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10A0"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      O => \spo[14]_INST_0_i_29_n_0\
    );
\spo[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[14]_INST_0_i_9_n_0\,
      I1 => \spo[14]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[14]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[14]_INST_0_i_12_n_0\,
      O => \spo[14]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_34_n_0\,
      I1 => \spo[14]_INST_0_i_35_n_0\,
      O => \spo[14]_INST_0_i_30_n_0\,
      S => a(8)
    );
\spo[14]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"25004000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[14]_INST_0_i_31_n_0\
    );
\spo[14]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000800040302030"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[14]_INST_0_i_32_n_0\
    );
\spo[14]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20800000100F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[14]_INST_0_i_33_n_0\
    );
\spo[14]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"458B000015500000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[14]_INST_0_i_34_n_0\
    );
\spo[14]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400080000001000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[14]_INST_0_i_35_n_0\
    );
\spo[14]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_13_n_0\,
      I1 => \spo[14]_INST_0_i_14_n_0\,
      O => \spo[14]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[14]_INST_0_i_15_n_0\,
      I1 => \spo[14]_INST_0_i_16_n_0\,
      I2 => a(7),
      I3 => \spo[18]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[14]_INST_0_i_17_n_0\,
      O => \spo[14]_INST_0_i_5_n_0\
    );
\spo[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_3_n_0\,
      I1 => \spo[14]_INST_0_i_18_n_0\,
      I2 => a(7),
      I3 => \spo[21]_INST_0_i_31_n_0\,
      I4 => a(8),
      I5 => \spo[14]_INST_0_i_19_n_0\,
      O => \spo[14]_INST_0_i_6_n_0\
    );
\spo[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[14]_INST_0_i_20_n_0\,
      I1 => \spo[14]_INST_0_i_21_n_0\,
      I2 => a(7),
      I3 => \spo[14]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[14]_INST_0_i_23_n_0\,
      O => \spo[14]_INST_0_i_7_n_0\
    );
\spo[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[14]_INST_0_i_24_n_0\,
      I1 => \spo[14]_INST_0_i_25_n_0\,
      I2 => a(7),
      I3 => \spo[14]_INST_0_i_15_n_0\,
      I4 => a(8),
      I5 => \spo[14]_INST_0_i_26_n_0\,
      O => \spo[14]_INST_0_i_8_n_0\
    );
\spo[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4480008050315020"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => \spo[30]_INST_0_i_29_n_0\,
      I5 => a(1),
      O => \spo[14]_INST_0_i_9_n_0\
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[15]_INST_0_i_1_n_0\,
      I1 => \spo[15]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[15]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[15]_INST_0_i_4_n_0\,
      O => spo(15)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[15]_INST_0_i_5_n_0\,
      I1 => a(6),
      I2 => \spo[15]_INST_0_i_6_n_0\,
      I3 => a(7),
      I4 => \spo[15]_INST_0_i_7_n_0\,
      O => \spo[15]_INST_0_i_1_n_0\
    );
\spo[15]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833B80000000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_31_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => \spo[15]_INST_0_i_18_n_0\,
      I5 => a(0),
      O => \spo[15]_INST_0_i_10_n_0\
    );
\spo[15]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404448400000000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(8),
      O => \spo[15]_INST_0_i_11_n_0\
    );
\spo[15]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080880803000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(8),
      I2 => a(0),
      I3 => \spo[29]_INST_0_i_23_n_0\,
      I4 => a(1),
      I5 => a(5),
      O => \spo[15]_INST_0_i_12_n_0\
    );
\spo[15]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB308830"
    )
        port map (
      I0 => \spo[29]_INST_0_i_23_n_0\,
      I1 => a(8),
      I2 => \spo[25]_INST_0_i_29_n_0\,
      I3 => a(0),
      I4 => \spo[28]_INST_0_i_28_n_0\,
      I5 => a(5),
      O => \spo[15]_INST_0_i_13_n_0\
    );
\spo[15]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010602000000000"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(1),
      I4 => a(5),
      I5 => a(8),
      O => \spo[15]_INST_0_i_14_n_0\
    );
\spo[15]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44840000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      O => \spo[15]_INST_0_i_15_n_0\
    );
\spo[15]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002010006000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[15]_INST_0_i_16_n_0\
    );
\spo[15]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4080"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      O => \spo[15]_INST_0_i_17_n_0\
    );
\spo[15]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(1),
      O => \spo[15]_INST_0_i_18_n_0\
    );
\spo[15]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => a(10),
      I1 => a(12),
      I2 => a(11),
      I3 => a(13),
      O => \spo[15]_INST_0_i_19_n_0\
    );
\spo[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[15]_INST_0_i_8_n_0\,
      I1 => \spo[15]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[15]_INST_0_i_9_n_0\,
      I4 => a(7),
      I5 => \spo[15]_INST_0_i_10_n_0\,
      O => \spo[15]_INST_0_i_2_n_0\
    );
\spo[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[15]_INST_0_i_11_n_0\,
      I1 => a(6),
      I2 => \spo[15]_INST_0_i_12_n_0\,
      I3 => a(7),
      I4 => \spo[15]_INST_0_i_13_n_0\,
      O => \spo[15]_INST_0_i_3_n_0\
    );
\spo[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \spo[15]_INST_0_i_14_n_0\,
      I1 => a(6),
      I2 => \spo[15]_INST_0_i_15_n_0\,
      I3 => a(7),
      I4 => \spo[15]_INST_0_i_16_n_0\,
      I5 => a(8),
      O => \spo[15]_INST_0_i_4_n_0\
    );
\spo[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0A0C0A00F000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => \spo[31]_INST_0_i_23_n_0\,
      I2 => a(8),
      I3 => a(0),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(5),
      O => \spo[15]_INST_0_i_5_n_0\
    );
\spo[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0804000400000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      I3 => a(5),
      I4 => a(1),
      I5 => a(8),
      O => \spo[15]_INST_0_i_6_n_0\
    );
\spo[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300088338800"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(8),
      I2 => \spo[29]_INST_0_i_23_n_0\,
      I3 => a(5),
      I4 => \spo[31]_INST_0_i_36_n_0\,
      I5 => a(0),
      O => \spo[15]_INST_0_i_7_n_0\
    );
\spo[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AFC0A0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => \spo[31]_INST_0_i_23_n_0\,
      I2 => a(8),
      I3 => a(0),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(5),
      O => \spo[15]_INST_0_i_8_n_0\
    );
\spo[15]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033000030883088"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(8),
      I2 => \spo[15]_INST_0_i_17_n_0\,
      I3 => a(5),
      I4 => \spo[31]_INST_0_i_36_n_0\,
      I5 => a(0),
      O => \spo[15]_INST_0_i_9_n_0\
    );
\spo[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_1_n_0\,
      I1 => \spo[16]_INST_0_i_2_n_0\,
      O => spo(16),
      S => a(3)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[16]_INST_0_i_3_n_0\,
      I1 => \spo[16]_INST_0_i_4_n_0\,
      I2 => a(4),
      I3 => \spo[16]_INST_0_i_5_n_0\,
      I4 => a(6),
      I5 => \spo[16]_INST_0_i_6_n_0\,
      O => \spo[16]_INST_0_i_1_n_0\
    );
\spo[16]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_37_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[16]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[16]_INST_0_i_28_n_0\,
      O => \spo[16]_INST_0_i_10_n_0\
    );
\spo[16]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA48000007000000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(1),
      O => \spo[16]_INST_0_i_11_n_0\
    );
\spo[16]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200060"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[16]_INST_0_i_12_n_0\
    );
\spo[16]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A00600004000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[16]_INST_0_i_13_n_0\
    );
\spo[16]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000040000100C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[16]_INST_0_i_14_n_0\
    );
\spo[16]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_29_n_0\,
      I1 => \spo[16]_INST_0_i_30_n_0\,
      O => \spo[16]_INST_0_i_15_n_0\,
      S => a(8)
    );
\spo[16]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_30_n_0\,
      I1 => \spo[30]_INST_0_i_41_n_0\,
      I2 => a(8),
      I3 => \spo[26]_INST_0_i_23_n_0\,
      I4 => a(5),
      I5 => \spo[28]_INST_0_i_40_n_0\,
      O => \spo[16]_INST_0_i_16_n_0\
    );
\spo[16]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_40_n_0\,
      I1 => \spo[18]_INST_0_i_25_n_0\,
      I2 => a(8),
      I3 => \spo[19]_INST_0_i_30_n_0\,
      I4 => a(5),
      I5 => \spo[16]_INST_0_i_31_n_0\,
      O => \spo[16]_INST_0_i_17_n_0\
    );
\spo[16]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \spo[31]_INST_0_i_48_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(5),
      I4 => \spo[31]_INST_0_i_47_n_0\,
      I5 => a(0),
      O => \spo[16]_INST_0_i_18_n_0\
    );
\spo[16]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \spo[28]_INST_0_i_29_n_0\,
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_25_n_0\,
      I3 => a(5),
      I4 => \spo[16]_INST_0_i_32_n_0\,
      I5 => a(8),
      O => \spo[16]_INST_0_i_19_n_0\
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[16]_INST_0_i_7_n_0\,
      I1 => \spo[16]_INST_0_i_8_n_0\,
      I2 => a(4),
      I3 => \spo[16]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[16]_INST_0_i_10_n_0\,
      O => \spo[16]_INST_0_i_2_n_0\
    );
\spo[16]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004F000054A00000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[16]_INST_0_i_20_n_0\
    );
\spo[16]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F00580006000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[16]_INST_0_i_21_n_0\
    );
\spo[16]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0084FFFF00840000"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_22_n_0\,
      I2 => a(0),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[16]_INST_0_i_33_n_0\,
      O => \spo[16]_INST_0_i_22_n_0\
    );
\spo[16]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[16]_INST_0_i_34_n_0\,
      O => \spo[16]_INST_0_i_23_n_0\
    );
\spo[16]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3080008000330000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_32_n_0\,
      I1 => a(8),
      I2 => a(1),
      I3 => a(5),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(0),
      O => \spo[16]_INST_0_i_24_n_0\
    );
\spo[16]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80002040"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[16]_INST_0_i_25_n_0\
    );
\spo[16]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000080000100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[16]_INST_0_i_26_n_0\
    );
\spo[16]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4800000018000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[16]_INST_0_i_27_n_0\
    );
\spo[16]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_35_n_0\,
      I1 => \spo[16]_INST_0_i_36_n_0\,
      O => \spo[16]_INST_0_i_28_n_0\,
      S => a(8)
    );
\spo[16]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B021000008040000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[16]_INST_0_i_29_n_0\
    );
\spo[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_33_n_0\,
      I1 => \spo[16]_INST_0_i_11_n_0\,
      I2 => a(7),
      I3 => \spo[16]_INST_0_i_12_n_0\,
      I4 => a(8),
      I5 => \spo[16]_INST_0_i_13_n_0\,
      O => \spo[16]_INST_0_i_3_n_0\
    );
\spo[16]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0015000020400000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(1),
      O => \spo[16]_INST_0_i_30_n_0\
    );
\spo[16]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40002100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(2),
      O => \spo[16]_INST_0_i_31_n_0\
    );
\spo[16]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90400000"
    )
        port map (
      I0 => a(0),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      I4 => a(1),
      O => \spo[16]_INST_0_i_32_n_0\
    );
\spo[16]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70D07090008020A0"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[16]_INST_0_i_33_n_0\
    );
\spo[16]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"830080000000E000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[16]_INST_0_i_34_n_0\
    );
\spo[16]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010602020000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[16]_INST_0_i_35_n_0\
    );
\spo[16]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"184200009D000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[16]_INST_0_i_36_n_0\
    );
\spo[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_37_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[16]_INST_0_i_14_n_0\,
      I4 => a(7),
      I5 => \spo[16]_INST_0_i_15_n_0\,
      O => \spo[16]_INST_0_i_4_n_0\
    );
\spo[16]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_16_n_0\,
      I1 => \spo[16]_INST_0_i_17_n_0\,
      O => \spo[16]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[16]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_18_n_0\,
      I1 => \spo[16]_INST_0_i_19_n_0\,
      O => \spo[16]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[20]_INST_0_i_22_n_0\,
      I1 => \spo[16]_INST_0_i_20_n_0\,
      I2 => a(7),
      I3 => \spo[18]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[16]_INST_0_i_21_n_0\,
      O => \spo[16]_INST_0_i_7_n_0\
    );
\spo[16]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_22_n_0\,
      I1 => \spo[16]_INST_0_i_23_n_0\,
      O => \spo[16]_INST_0_i_8_n_0\,
      S => a(7)
    );
\spo[16]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[16]_INST_0_i_24_n_0\,
      I1 => a(7),
      I2 => \spo[16]_INST_0_i_25_n_0\,
      I3 => a(8),
      I4 => \spo[16]_INST_0_i_26_n_0\,
      O => \spo[16]_INST_0_i_9_n_0\
    );
\spo[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_1_n_0\,
      I1 => \spo[17]_INST_0_i_2_n_0\,
      O => spo(17),
      S => a(3)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[17]_INST_0_i_3_n_0\,
      I1 => \spo[17]_INST_0_i_4_n_0\,
      I2 => a(4),
      I3 => \spo[17]_INST_0_i_5_n_0\,
      I4 => a(6),
      I5 => \spo[17]_INST_0_i_6_n_0\,
      O => \spo[17]_INST_0_i_1_n_0\
    );
\spo[17]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_29_n_0\,
      I1 => \spo[17]_INST_0_i_30_n_0\,
      O => \spo[17]_INST_0_i_10_n_0\,
      S => a(7)
    );
\spo[17]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_31_n_0\,
      I1 => \spo[17]_INST_0_i_32_n_0\,
      O => \spo[17]_INST_0_i_11_n_0\,
      S => a(8)
    );
\spo[17]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A00C0000400A000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[17]_INST_0_i_12_n_0\
    );
\spo[17]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100000070800000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_30_n_0\,
      I5 => a(1),
      O => \spo[17]_INST_0_i_13_n_0\
    );
\spo[17]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C088008"
    )
        port map (
      I0 => a(1),
      I1 => \spo[15]_INST_0_i_19_n_0\,
      I2 => a(2),
      I3 => a(0),
      I4 => a(9),
      I5 => a(5),
      O => \spo[17]_INST_0_i_14_n_0\
    );
\spo[17]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A19000000840000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[17]_INST_0_i_15_n_0\
    );
\spo[17]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088FFFF30880000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_28_n_0\,
      I1 => a(5),
      I2 => \spo[28]_INST_0_i_32_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[17]_INST_0_i_33_n_0\,
      O => \spo[17]_INST_0_i_16_n_0\
    );
\spo[17]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8C0FFFFB8C00000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[17]_INST_0_i_34_n_0\,
      O => \spo[17]_INST_0_i_17_n_0\
    );
\spo[17]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D449000020000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[17]_INST_0_i_18_n_0\
    );
\spo[17]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C00000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[17]_INST_0_i_19_n_0\
    );
\spo[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[17]_INST_0_i_7_n_0\,
      I1 => \spo[17]_INST_0_i_8_n_0\,
      I2 => a(4),
      I3 => \spo[17]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[17]_INST_0_i_10_n_0\,
      O => \spo[17]_INST_0_i_2_n_0\
    );
\spo[17]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0153000099D80000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[17]_INST_0_i_20_n_0\
    );
\spo[17]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0002900"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[17]_INST_0_i_21_n_0\
    );
\spo[17]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10620000008D0000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(1),
      O => \spo[17]_INST_0_i_22_n_0\
    );
\spo[17]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A064000051940000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[17]_INST_0_i_23_n_0\
    );
\spo[17]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80004300"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(0),
      O => \spo[17]_INST_0_i_24_n_0\
    );
\spo[17]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000200000004000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[17]_INST_0_i_25_n_0\
    );
\spo[17]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020044005200C600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[17]_INST_0_i_26_n_0\
    );
\spo[17]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_38_n_0\,
      I1 => \spo[1]_INST_0_i_15_n_0\,
      I2 => a(8),
      I3 => \spo[17]_INST_0_i_35_n_0\,
      I4 => a(5),
      I5 => \spo[19]_INST_0_i_30_n_0\,
      O => \spo[17]_INST_0_i_27_n_0\
    );
\spo[17]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3003000008080808"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(8),
      I2 => a(5),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(0),
      O => \spo[17]_INST_0_i_28_n_0\
    );
\spo[17]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88888888888"
    )
        port map (
      I0 => \spo[17]_INST_0_i_36_n_0\,
      I1 => a(8),
      I2 => \spo[30]_INST_0_i_28_n_0\,
      I3 => a(5),
      I4 => \spo[30]_INST_0_i_27_n_0\,
      I5 => a(0),
      O => \spo[17]_INST_0_i_29_n_0\
    );
\spo[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \spo[17]_INST_0_i_11_n_0\,
      I1 => a(7),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[17]_INST_0_i_12_n_0\,
      O => \spo[17]_INST_0_i_3_n_0\
    );
\spo[17]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_13_n_0\,
      I1 => \spo[31]_INST_0_i_37_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_30_n_0\,
      I4 => a(5),
      I5 => \spo[31]_INST_0_i_36_n_0\,
      O => \spo[17]_INST_0_i_30_n_0\
    );
\spo[17]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A08000027000000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(1),
      O => \spo[17]_INST_0_i_31_n_0\
    );
\spo[17]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42000100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[17]_INST_0_i_32_n_0\
    );
\spo[17]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07AC000000110000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[17]_INST_0_i_33_n_0\
    );
\spo[17]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0400040"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[17]_INST_0_i_34_n_0\
    );
\spo[17]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[17]_INST_0_i_35_n_0\
    );
\spo[17]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65400000A0000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(1),
      O => \spo[17]_INST_0_i_36_n_0\
    );
\spo[17]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[17]_INST_0_i_13_n_0\,
      I1 => a(7),
      I2 => \spo[17]_INST_0_i_14_n_0\,
      I3 => a(8),
      I4 => \spo[17]_INST_0_i_15_n_0\,
      O => \spo[17]_INST_0_i_4_n_0\
    );
\spo[17]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_16_n_0\,
      I1 => \spo[17]_INST_0_i_17_n_0\,
      O => \spo[17]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_22_n_0\,
      I1 => \spo[17]_INST_0_i_18_n_0\,
      I2 => a(7),
      I3 => \spo[17]_INST_0_i_19_n_0\,
      I4 => a(8),
      I5 => \spo[17]_INST_0_i_20_n_0\,
      O => \spo[17]_INST_0_i_6_n_0\
    );
\spo[17]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \spo[17]_INST_0_i_21_n_0\,
      I1 => \spo[17]_INST_0_i_22_n_0\,
      I2 => a(7),
      I3 => \spo[17]_INST_0_i_23_n_0\,
      I4 => a(8),
      O => \spo[17]_INST_0_i_7_n_0\
    );
\spo[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[17]_INST_0_i_24_n_0\,
      I1 => \spo[17]_INST_0_i_25_n_0\,
      I2 => a(7),
      I3 => \spo[18]_INST_0_i_19_n_0\,
      I4 => a(8),
      I5 => \spo[17]_INST_0_i_26_n_0\,
      O => \spo[17]_INST_0_i_8_n_0\
    );
\spo[17]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_27_n_0\,
      I1 => \spo[17]_INST_0_i_28_n_0\,
      O => \spo[17]_INST_0_i_9_n_0\,
      S => a(7)
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_1_n_0\,
      I1 => \spo[18]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[18]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[18]_INST_0_i_4_n_0\,
      O => spo(18)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[18]_INST_0_i_5_n_0\,
      I1 => \spo[18]_INST_0_i_6_n_0\,
      O => \spo[18]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \spo[18]_INST_0_i_28_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_26_n_0\,
      I3 => a(0),
      I4 => \spo[30]_INST_0_i_28_n_0\,
      I5 => a(5),
      O => \spo[18]_INST_0_i_10_n_0\
    );
\spo[18]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30333000B800B800"
    )
        port map (
      I0 => \spo[28]_INST_0_i_28_n_0\,
      I1 => a(8),
      I2 => \spo[30]_INST_0_i_40_n_0\,
      I3 => a(5),
      I4 => \spo[28]_INST_0_i_29_n_0\,
      I5 => a(0),
      O => \spo[18]_INST_0_i_11_n_0\
    );
\spo[18]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[18]_INST_0_i_29_n_0\,
      O => \spo[18]_INST_0_i_12_n_0\
    );
\spo[18]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_30_n_0\,
      I1 => \spo[31]_INST_0_i_26_n_0\,
      I2 => a(8),
      I3 => \spo[18]_INST_0_i_31_n_0\,
      I4 => a(5),
      I5 => \spo[18]_INST_0_i_32_n_0\,
      O => \spo[18]_INST_0_i_13_n_0\
    );
\spo[18]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[18]_INST_0_i_33_n_0\,
      I1 => \spo[18]_INST_0_i_34_n_0\,
      O => \spo[18]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[18]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_22_n_0\,
      I1 => \spo[18]_INST_0_i_35_n_0\,
      I2 => a(7),
      I3 => \spo[18]_INST_0_i_36_n_0\,
      I4 => a(8),
      I5 => \spo[18]_INST_0_i_37_n_0\,
      O => \spo[18]_INST_0_i_15_n_0\
    );
\spo[18]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_38_n_0\,
      I1 => \spo[18]_INST_0_i_39_n_0\,
      I2 => a(7),
      I3 => \spo[25]_INST_0_i_39_n_0\,
      I4 => a(8),
      I5 => \spo[18]_INST_0_i_40_n_0\,
      O => \spo[18]_INST_0_i_16_n_0\
    );
\spo[18]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8100A400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[18]_INST_0_i_17_n_0\
    );
\spo[18]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8600100000004000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[18]_INST_0_i_18_n_0\
    );
\spo[18]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000030004000800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[18]_INST_0_i_19_n_0\
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_7_n_0\,
      I1 => \spo[18]_INST_0_i_8_n_0\,
      I2 => a(6),
      I3 => \spo[18]_INST_0_i_9_n_0\,
      I4 => a(7),
      I5 => \spo[18]_INST_0_i_10_n_0\,
      O => \spo[18]_INST_0_i_2_n_0\
    );
\spo[18]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"460080001200E600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[18]_INST_0_i_20_n_0\
    );
\spo[18]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000A000400E100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[18]_INST_0_i_21_n_0\
    );
\spo[18]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10402020"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      I4 => a(0),
      O => \spo[18]_INST_0_i_22_n_0\
    );
\spo[18]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000010100090"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[18]_INST_0_i_23_n_0\
    );
\spo[18]_INST_0_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \spo[28]_INST_0_i_32_n_0\,
      I1 => a(0),
      O => \spo[18]_INST_0_i_24_n_0\
    );
\spo[18]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      O => \spo[18]_INST_0_i_25_n_0\
    );
\spo[18]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000010"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[18]_INST_0_i_26_n_0\
    );
\spo[18]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80004000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[18]_INST_0_i_27_n_0\
    );
\spo[18]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2040000095000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[18]_INST_0_i_28_n_0\
    );
\spo[18]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25A0000022400000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(1),
      O => \spo[18]_INST_0_i_29_n_0\
    );
\spo[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_11_n_0\,
      I1 => \spo[18]_INST_0_i_12_n_0\,
      I2 => a(6),
      I3 => \spo[18]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[18]_INST_0_i_14_n_0\,
      O => \spo[18]_INST_0_i_3_n_0\
    );
\spo[18]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[18]_INST_0_i_30_n_0\
    );
\spo[18]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[18]_INST_0_i_31_n_0\
    );
\spo[18]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00801080"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[18]_INST_0_i_32_n_0\
    );
\spo[18]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A02000C00000C0"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[18]_INST_0_i_33_n_0\
    );
\spo[18]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004C0004008100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[18]_INST_0_i_34_n_0\
    );
\spo[18]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C20030000000C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[18]_INST_0_i_35_n_0\
    );
\spo[18]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000B00000000000"
    )
        port map (
      I0 => a(9),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[18]_INST_0_i_36_n_0\
    );
\spo[18]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"015300000D480000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[18]_INST_0_i_37_n_0\
    );
\spo[18]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20001700"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[18]_INST_0_i_38_n_0\
    );
\spo[18]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000004000200"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[18]_INST_0_i_39_n_0\
    );
\spo[18]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[18]_INST_0_i_15_n_0\,
      I1 => \spo[18]_INST_0_i_16_n_0\,
      O => \spo[18]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"027C000004010000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[18]_INST_0_i_40_n_0\
    );
\spo[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_17_n_0\,
      I1 => \spo[18]_INST_0_i_18_n_0\,
      I2 => a(7),
      I3 => \spo[18]_INST_0_i_19_n_0\,
      I4 => a(8),
      I5 => \spo[18]_INST_0_i_20_n_0\,
      O => \spo[18]_INST_0_i_5_n_0\
    );
\spo[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_22_n_0\,
      I1 => \spo[18]_INST_0_i_21_n_0\,
      I2 => a(7),
      I3 => \spo[18]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[18]_INST_0_i_23_n_0\,
      O => \spo[18]_INST_0_i_6_n_0\
    );
\spo[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(8),
      I2 => \spo[28]_INST_0_i_24_n_0\,
      I3 => a(5),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(0),
      O => \spo[18]_INST_0_i_7_n_0\
    );
\spo[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[18]_INST_0_i_24_n_0\,
      I1 => \spo[18]_INST_0_i_25_n_0\,
      I2 => a(8),
      I3 => \spo[19]_INST_0_i_29_n_0\,
      I4 => a(5),
      I5 => \spo[18]_INST_0_i_26_n_0\,
      O => \spo[18]_INST_0_i_8_n_0\
    );
\spo[18]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_23_n_0\,
      I2 => a(8),
      I3 => \spo[31]_INST_0_i_31_n_0\,
      I4 => a(5),
      I5 => \spo[18]_INST_0_i_27_n_0\,
      O => \spo[18]_INST_0_i_9_n_0\
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_1_n_0\,
      I1 => \spo[19]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[19]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[19]_INST_0_i_4_n_0\,
      O => spo(19)
    );
\spo[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_5_n_0\,
      I1 => \spo[19]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[19]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[19]_INST_0_i_8_n_0\,
      O => \spo[19]_INST_0_i_1_n_0\
    );
\spo[19]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_28_n_0\,
      I1 => \spo[31]_INST_0_i_37_n_0\,
      I2 => a(8),
      I3 => \spo[19]_INST_0_i_29_n_0\,
      I4 => a(5),
      I5 => \spo[19]_INST_0_i_30_n_0\,
      O => \spo[19]_INST_0_i_10_n_0\
    );
\spo[19]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000BBBB30008888"
    )
        port map (
      I0 => \spo[19]_INST_0_i_31_n_0\,
      I1 => a(8),
      I2 => \spo[29]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => a(5),
      I5 => \spo[19]_INST_0_i_32_n_0\,
      O => \spo[19]_INST_0_i_11_n_0\
    );
\spo[19]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[19]_INST_0_i_33_n_0\,
      I1 => \spo[19]_INST_0_i_34_n_0\,
      O => \spo[19]_INST_0_i_12_n_0\,
      S => a(8)
    );
\spo[19]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BB8B8B88B888"
    )
        port map (
      I0 => \spo[21]_INST_0_i_33_n_0\,
      I1 => a(8),
      I2 => a(5),
      I3 => \spo[31]_INST_0_i_47_n_0\,
      I4 => a(0),
      I5 => \spo[31]_INST_0_i_26_n_0\,
      O => \spo[19]_INST_0_i_13_n_0\
    );
\spo[19]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[19]_INST_0_i_35_n_0\,
      I1 => \spo[19]_INST_0_i_36_n_0\,
      O => \spo[19]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[19]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[19]_INST_0_i_37_n_0\,
      I1 => \spo[19]_INST_0_i_38_n_0\,
      O => \spo[19]_INST_0_i_15_n_0\,
      S => a(8)
    );
\spo[19]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[19]_INST_0_i_39_n_0\,
      I1 => \spo[19]_INST_0_i_40_n_0\,
      O => \spo[19]_INST_0_i_16_n_0\,
      S => a(8)
    );
\spo[19]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => \spo[29]_INST_0_i_35_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_36_n_0\,
      I3 => a(0),
      I4 => \spo[28]_INST_0_i_26_n_0\,
      I5 => a(5),
      O => \spo[19]_INST_0_i_17_n_0\
    );
\spo[19]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7A8000070800000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_30_n_0\,
      I5 => a(1),
      O => \spo[19]_INST_0_i_18_n_0\
    );
\spo[19]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5E0454545404040"
    )
        port map (
      I0 => a(8),
      I1 => \spo[30]_INST_0_i_19_n_0\,
      I2 => a(5),
      I3 => \spo[19]_INST_0_i_41_n_0\,
      I4 => a(0),
      I5 => \spo[28]_INST_0_i_29_n_0\,
      O => \spo[19]_INST_0_i_19_n_0\
    );
\spo[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_9_n_0\,
      I1 => \spo[19]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[19]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[19]_INST_0_i_12_n_0\,
      O => \spo[19]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[19]_INST_0_i_42_n_0\,
      I1 => \spo[19]_INST_0_i_43_n_0\,
      O => \spo[19]_INST_0_i_20_n_0\,
      S => a(8)
    );
\spo[19]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9020"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[19]_INST_0_i_21_n_0\
    );
\spo[19]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20800040"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[19]_INST_0_i_22_n_0\
    );
\spo[19]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000000050110000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[19]_INST_0_i_23_n_0\
    );
\spo[19]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8300800008006200"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[19]_INST_0_i_24_n_0\
    );
\spo[19]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0808010"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[19]_INST_0_i_25_n_0\
    );
\spo[19]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"120000004A004600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[19]_INST_0_i_26_n_0\
    );
\spo[19]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2030000000650000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(1),
      O => \spo[19]_INST_0_i_27_n_0\
    );
\spo[19]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      O => \spo[19]_INST_0_i_28_n_0\
    );
\spo[19]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40800000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      O => \spo[19]_INST_0_i_29_n_0\
    );
\spo[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_13_n_0\,
      I1 => \spo[19]_INST_0_i_14_n_0\,
      I2 => a(6),
      I3 => \spo[19]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[19]_INST_0_i_16_n_0\,
      O => \spo[19]_INST_0_i_3_n_0\
    );
\spo[19]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => a(1),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(2),
      I3 => a(0),
      O => \spo[19]_INST_0_i_30_n_0\
    );
\spo[19]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B020"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[19]_INST_0_i_31_n_0\
    );
\spo[19]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0000000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(2),
      O => \spo[19]_INST_0_i_32_n_0\
    );
\spo[19]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1200000048000800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[19]_INST_0_i_33_n_0\
    );
\spo[19]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25C0000080000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(1),
      O => \spo[19]_INST_0_i_34_n_0\
    );
\spo[19]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5702000022400000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(1),
      O => \spo[19]_INST_0_i_35_n_0\
    );
\spo[19]_INST_0_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"402000A0"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[19]_INST_0_i_36_n_0\
    );
\spo[19]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000009000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[19]_INST_0_i_37_n_0\
    );
\spo[19]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC000800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[19]_INST_0_i_38_n_0\
    );
\spo[19]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00202080C0800040"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[19]_INST_0_i_39_n_0\
    );
\spo[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_17_n_0\,
      I1 => \spo[19]_INST_0_i_18_n_0\,
      I2 => a(6),
      I3 => \spo[19]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[19]_INST_0_i_20_n_0\,
      O => \spo[19]_INST_0_i_4_n_0\
    );
\spo[19]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004004404"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_50_n_0\,
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(5),
      O => \spo[19]_INST_0_i_40_n_0\
    );
\spo[19]_INST_0_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => a(9),
      I1 => a(1),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      O => \spo[19]_INST_0_i_41_n_0\
    );
\spo[19]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D000050480000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[19]_INST_0_i_42_n_0\
    );
\spo[19]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B00000000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[19]_INST_0_i_43_n_0\
    );
\spo[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_21_n_0\,
      I1 => \spo[28]_INST_0_i_40_n_0\,
      I2 => a(8),
      I3 => \spo[31]_INST_0_i_23_n_0\,
      I4 => a(5),
      I5 => \spo[19]_INST_0_i_22_n_0\,
      O => \spo[19]_INST_0_i_5_n_0\
    );
\spo[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[19]_INST_0_i_23_n_0\,
      O => \spo[19]_INST_0_i_6_n_0\
    );
\spo[19]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[19]_INST_0_i_24_n_0\,
      I1 => \spo[19]_INST_0_i_25_n_0\,
      O => \spo[19]_INST_0_i_7_n_0\,
      S => a(8)
    );
\spo[19]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[19]_INST_0_i_26_n_0\,
      I1 => \spo[19]_INST_0_i_27_n_0\,
      O => \spo[19]_INST_0_i_8_n_0\,
      S => a(8)
    );
\spo[19]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008044004"
    )
        port map (
      I0 => a(0),
      I1 => \spo[21]_INST_0_i_39_n_0\,
      I2 => a(2),
      I3 => a(5),
      I4 => a(1),
      I5 => a(8),
      O => \spo[19]_INST_0_i_9_n_0\
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_1_n_0\,
      I1 => \spo[1]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[1]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[1]_INST_0_i_4_n_0\,
      O => spo(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_5_n_0\,
      I1 => \spo[1]_INST_0_i_6_n_0\,
      O => \spo[1]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101A0000153A0000"
    )
        port map (
      I0 => a(7),
      I1 => a(0),
      I2 => a(8),
      I3 => a(1),
      I4 => \spo[31]_INST_0_i_22_n_0\,
      I5 => a(5),
      O => \spo[1]_INST_0_i_10_n_0\
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2251004050885000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => \spo[1]_INST_0_i_19_n_0\,
      I3 => a(0),
      I4 => \spo[31]_INST_0_i_22_n_0\,
      I5 => a(1),
      O => \spo[1]_INST_0_i_11_n_0\
    );
\spo[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB008830003000"
    )
        port map (
      I0 => \spo[29]_INST_0_i_23_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => \spo[28]_INST_0_i_29_n_0\,
      I5 => a(0),
      O => \spo[1]_INST_0_i_12_n_0\
    );
\spo[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => a(5),
      I1 => \spo[1]_INST_0_i_15_n_0\,
      I2 => a(7),
      I3 => \spo[1]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[1]_INST_0_i_21_n_0\,
      O => \spo[1]_INST_0_i_13_n_0\
    );
\spo[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30003000B833B800"
    )
        port map (
      I0 => \spo[1]_INST_0_i_15_n_0\,
      I1 => a(7),
      I2 => \spo[1]_INST_0_i_22_n_0\,
      I3 => a(8),
      I4 => \spo[28]_INST_0_i_25_n_0\,
      I5 => a(5),
      O => \spo[1]_INST_0_i_14_n_0\
    );
\spo[1]_INST_0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(0),
      O => \spo[1]_INST_0_i_15_n_0\
    );
\spo[1]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      I3 => a(0),
      O => \spo[1]_INST_0_i_16_n_0\
    );
\spo[1]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_23_n_0\,
      I1 => \spo[1]_INST_0_i_24_n_0\,
      O => \spo[1]_INST_0_i_17_n_0\,
      S => a(8)
    );
\spo[1]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000C0008003000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[1]_INST_0_i_18_n_0\
    );
\spo[1]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(13),
      I1 => a(11),
      I2 => a(12),
      I3 => a(10),
      I4 => a(2),
      O => \spo[1]_INST_0_i_19_n_0\
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_7_n_0\,
      I1 => \spo[1]_INST_0_i_8_n_0\,
      I2 => a(6),
      I3 => \spo[15]_INST_0_i_9_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_9_n_0\,
      O => \spo[1]_INST_0_i_2_n_0\
    );
\spo[1]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0408000000000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[1]_INST_0_i_20_n_0\
    );
\spo[1]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20050000350A0000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(1),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[1]_INST_0_i_21_n_0\
    );
\spo[1]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400020"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[1]_INST_0_i_22_n_0\
    );
\spo[1]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1040000088510000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[1]_INST_0_i_23_n_0\
    );
\spo[1]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1400000001020000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[1]_INST_0_i_24_n_0\
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[1]_INST_0_i_10_n_0\,
      I1 => a(6),
      I2 => \spo[1]_INST_0_i_11_n_0\,
      I3 => a(7),
      I4 => \spo[1]_INST_0_i_12_n_0\,
      O => \spo[1]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_13_n_0\,
      I1 => \spo[1]_INST_0_i_14_n_0\,
      O => \spo[1]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => \spo[1]_INST_0_i_15_n_0\,
      I1 => a(5),
      I2 => \spo[1]_INST_0_i_16_n_0\,
      I3 => a(8),
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_17_n_0\,
      O => \spo[1]_INST_0_i_5_n_0\
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A400040"
    )
        port map (
      I0 => a(5),
      I1 => \spo[29]_INST_0_i_23_n_0\,
      I2 => a(0),
      I3 => a(8),
      I4 => \spo[31]_INST_0_i_22_n_0\,
      I5 => a(7),
      O => \spo[1]_INST_0_i_6_n_0\
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AFC0A0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => \spo[28]_INST_0_i_29_n_0\,
      I2 => a(8),
      I3 => a(0),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(5),
      O => \spo[1]_INST_0_i_7_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000800000004400"
    )
        port map (
      I0 => a(0),
      I1 => a(8),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      I5 => a(5),
      O => \spo[1]_INST_0_i_8_n_0\
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B888B888888888"
    )
        port map (
      I0 => \spo[1]_INST_0_i_18_n_0\,
      I1 => a(8),
      I2 => \spo[28]_INST_0_i_32_n_0\,
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[1]_INST_0_i_9_n_0\
    );
\spo[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_1_n_0\,
      I1 => \spo[20]_INST_0_i_2_n_0\,
      O => spo(20),
      S => a(3)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[20]_INST_0_i_3_n_0\,
      I1 => \spo[20]_INST_0_i_4_n_0\,
      I2 => a(4),
      I3 => \spo[20]_INST_0_i_5_n_0\,
      I4 => a(6),
      I5 => \spo[20]_INST_0_i_6_n_0\,
      O => \spo[20]_INST_0_i_1_n_0\
    );
\spo[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[23]_INST_0_i_44_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[20]_INST_0_i_30_n_0\,
      I4 => a(7),
      I5 => \spo[20]_INST_0_i_31_n_0\,
      O => \spo[20]_INST_0_i_10_n_0\
    );
\spo[20]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B208000037000000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(1),
      O => \spo[20]_INST_0_i_11_n_0\
    );
\spo[20]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40200000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[20]_INST_0_i_12_n_0\
    );
\spo[20]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4200D8000400A000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[20]_INST_0_i_13_n_0\
    );
\spo[20]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_32_n_0\,
      I1 => \spo[20]_INST_0_i_33_n_0\,
      O => \spo[20]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[20]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_34_n_0\,
      I1 => \spo[20]_INST_0_i_35_n_0\,
      O => \spo[20]_INST_0_i_15_n_0\,
      S => a(8)
    );
\spo[20]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[20]_INST_0_i_16_n_0\
    );
\spo[20]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10C00000040F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[20]_INST_0_i_17_n_0\
    );
\spo[20]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8780000040900000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_30_n_0\,
      I5 => a(1),
      O => \spo[20]_INST_0_i_18_n_0\
    );
\spo[20]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C240000040A50000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(1),
      O => \spo[20]_INST_0_i_19_n_0\
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[20]_INST_0_i_7_n_0\,
      I1 => \spo[20]_INST_0_i_8_n_0\,
      I2 => a(4),
      I3 => \spo[20]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[20]_INST_0_i_10_n_0\,
      O => \spo[20]_INST_0_i_2_n_0\
    );
\spo[20]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8D00060000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[20]_INST_0_i_20_n_0\
    );
\spo[20]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220004004000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[20]_INST_0_i_21_n_0\
    );
\spo[20]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50002900"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[20]_INST_0_i_22_n_0\
    );
\spo[20]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04002A000400E500"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[20]_INST_0_i_23_n_0\
    );
\spo[20]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8058000040970000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[20]_INST_0_i_24_n_0\
    );
\spo[20]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_36_n_0\,
      I1 => \spo[20]_INST_0_i_37_n_0\,
      O => \spo[20]_INST_0_i_25_n_0\,
      S => a(8)
    );
\spo[20]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_38_n_0\,
      I1 => \spo[20]_INST_0_i_39_n_0\,
      O => \spo[20]_INST_0_i_26_n_0\,
      S => a(8)
    );
\spo[20]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000085000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[20]_INST_0_i_27_n_0\
    );
\spo[20]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000A010"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[20]_INST_0_i_28_n_0\
    );
\spo[20]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40004000A0000500"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[20]_INST_0_i_29_n_0\
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_33_n_0\,
      I1 => \spo[20]_INST_0_i_11_n_0\,
      I2 => a(7),
      I3 => \spo[20]_INST_0_i_12_n_0\,
      I4 => a(8),
      I5 => \spo[20]_INST_0_i_13_n_0\,
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[20]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"46300000AA030000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[20]_INST_0_i_30_n_0\
    );
\spo[20]_INST_0_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_40_n_0\,
      I1 => \spo[20]_INST_0_i_41_n_0\,
      O => \spo[20]_INST_0_i_31_n_0\,
      S => a(8)
    );
\spo[20]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80202000404080C0"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(1),
      I4 => a(9),
      I5 => a(0),
      O => \spo[20]_INST_0_i_32_n_0\
    );
\spo[20]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010A01040"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(0),
      I5 => a(5),
      O => \spo[20]_INST_0_i_33_n_0\
    );
\spo[20]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100300000008000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[20]_INST_0_i_34_n_0\
    );
\spo[20]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C003000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(0),
      O => \spo[20]_INST_0_i_35_n_0\
    );
\spo[20]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C0080000A006C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[20]_INST_0_i_36_n_0\
    );
\spo[20]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0081000004B00000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[20]_INST_0_i_37_n_0\
    );
\spo[20]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807090100000E0A0"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(9),
      I5 => a(1),
      O => \spo[20]_INST_0_i_38_n_0\
    );
\spo[20]_INST_0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0008300"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[20]_INST_0_i_39_n_0\
    );
\spo[20]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[20]_INST_0_i_14_n_0\,
      I1 => \spo[20]_INST_0_i_15_n_0\,
      O => \spo[20]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[20]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000202060000040"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[20]_INST_0_i_40_n_0\
    );
\spo[20]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880000090530000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[20]_INST_0_i_41_n_0\
    );
\spo[20]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[20]_INST_0_i_16_n_0\,
      I1 => a(8),
      I2 => \spo[20]_INST_0_i_17_n_0\,
      I3 => a(7),
      I4 => \spo[20]_INST_0_i_18_n_0\,
      O => \spo[20]_INST_0_i_5_n_0\
    );
\spo[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[24]_INST_0_i_17_n_0\,
      I1 => \spo[20]_INST_0_i_19_n_0\,
      I2 => a(7),
      I3 => \spo[20]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[20]_INST_0_i_21_n_0\,
      O => \spo[20]_INST_0_i_6_n_0\
    );
\spo[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[20]_INST_0_i_22_n_0\,
      I1 => \spo[20]_INST_0_i_23_n_0\,
      I2 => a(7),
      I3 => \spo[24]_INST_0_i_17_n_0\,
      I4 => a(8),
      I5 => \spo[20]_INST_0_i_24_n_0\,
      O => \spo[20]_INST_0_i_7_n_0\
    );
\spo[20]_INST_0_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[20]_INST_0_i_25_n_0\,
      I1 => \spo[20]_INST_0_i_26_n_0\,
      O => \spo[20]_INST_0_i_8_n_0\,
      S => a(7)
    );
\spo[20]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[20]_INST_0_i_27_n_0\,
      I1 => a(7),
      I2 => \spo[20]_INST_0_i_28_n_0\,
      I3 => a(8),
      I4 => \spo[20]_INST_0_i_29_n_0\,
      O => \spo[20]_INST_0_i_9_n_0\
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_1_n_0\,
      I1 => \spo[21]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[21]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[21]_INST_0_i_4_n_0\,
      O => spo(21)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_5_n_0\,
      I1 => \spo[21]_INST_0_i_6_n_0\,
      O => \spo[21]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_31_n_0\,
      I1 => \spo[21]_INST_0_i_32_n_0\,
      I2 => a(7),
      I3 => \spo[21]_INST_0_i_33_n_0\,
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_34_n_0\,
      O => \spo[21]_INST_0_i_10_n_0\
    );
\spo[21]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_43_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_35_n_0\,
      O => \spo[21]_INST_0_i_11_n_0\
    );
\spo[21]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_36_n_0\,
      I1 => \spo[21]_INST_0_i_37_n_0\,
      O => \spo[21]_INST_0_i_12_n_0\,
      S => a(8)
    );
\spo[21]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_29_n_0\,
      I2 => a(8),
      I3 => \spo[21]_INST_0_i_38_n_0\,
      I4 => a(5),
      I5 => \spo[31]_INST_0_i_25_n_0\,
      O => \spo[21]_INST_0_i_13_n_0\
    );
\spo[21]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[21]_INST_0_i_39_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_40_n_0\,
      O => \spo[21]_INST_0_i_14_n_0\
    );
\spo[21]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28009500"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[21]_INST_0_i_15_n_0\
    );
\spo[21]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8018000078010000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[21]_INST_0_i_16_n_0\
    );
\spo[21]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008E0004000B00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[21]_INST_0_i_17_n_0\
    );
\spo[21]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00000050004400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[21]_INST_0_i_18_n_0\
    );
\spo[21]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5020108000200080"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[21]_INST_0_i_19_n_0\
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_7_n_0\,
      I1 => \spo[21]_INST_0_i_8_n_0\,
      O => \spo[21]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000000001510000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[21]_INST_0_i_20_n_0\
    );
\spo[21]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C444"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      O => \spo[21]_INST_0_i_21_n_0\
    );
\spo[21]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47000000AA000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[21]_INST_0_i_22_n_0\
    );
\spo[21]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2080800050001000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[21]_INST_0_i_23_n_0\
    );
\spo[21]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000020000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[21]_INST_0_i_24_n_0\
    );
\spo[21]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000043000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[21]_INST_0_i_25_n_0\
    );
\spo[21]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000000C3000000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[21]_INST_0_i_26_n_0\
    );
\spo[21]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D500CA00"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[21]_INST_0_i_27_n_0\
    );
\spo[21]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030000040"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[21]_INST_0_i_28_n_0\
    );
\spo[21]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(5),
      O => \spo[21]_INST_0_i_29_n_0\
    );
\spo[21]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_9_n_0\,
      I1 => \spo[21]_INST_0_i_10_n_0\,
      O => \spo[21]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80202000C0800040"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[21]_INST_0_i_30_n_0\
    );
\spo[21]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      I4 => a(5),
      O => \spo[21]_INST_0_i_31_n_0\
    );
\spo[21]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A60060001000A000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[21]_INST_0_i_32_n_0\
    );
\spo[21]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[21]_INST_0_i_33_n_0\
    );
\spo[21]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0000085000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[21]_INST_0_i_34_n_0\
    );
\spo[21]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080408004"
    )
        port map (
      I0 => a(2),
      I1 => \spo[15]_INST_0_i_19_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[21]_INST_0_i_35_n_0\
    );
\spo[21]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000700000008000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[21]_INST_0_i_36_n_0\
    );
\spo[21]_INST_0_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D500C200"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[21]_INST_0_i_37_n_0\
    );
\spo[21]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[21]_INST_0_i_38_n_0\
    );
\spo[21]_INST_0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => a(13),
      I1 => a(11),
      I2 => a(12),
      I3 => a(10),
      I4 => a(9),
      O => \spo[21]_INST_0_i_39_n_0\
    );
\spo[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_11_n_0\,
      I1 => \spo[21]_INST_0_i_12_n_0\,
      I2 => a(6),
      I3 => \spo[21]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[21]_INST_0_i_14_n_0\,
      O => \spo[21]_INST_0_i_4_n_0\
    );
\spo[21]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D000012580000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[21]_INST_0_i_40_n_0\
    );
\spo[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_15_n_0\,
      I1 => \spo[21]_INST_0_i_16_n_0\,
      I2 => a(7),
      I3 => \spo[21]_INST_0_i_17_n_0\,
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_18_n_0\,
      O => \spo[21]_INST_0_i_5_n_0\
    );
\spo[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_21_n_0\,
      I1 => \spo[21]_INST_0_i_19_n_0\,
      I2 => a(7),
      I3 => \spo[24]_INST_0_i_17_n_0\,
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_20_n_0\,
      O => \spo[21]_INST_0_i_6_n_0\
    );
\spo[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_21_n_0\,
      I1 => \spo[21]_INST_0_i_22_n_0\,
      I2 => a(7),
      I3 => \spo[21]_INST_0_i_23_n_0\,
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_24_n_0\,
      O => \spo[21]_INST_0_i_7_n_0\
    );
\spo[21]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[21]_INST_0_i_25_n_0\,
      I1 => a(7),
      I2 => \spo[21]_INST_0_i_15_n_0\,
      I3 => a(8),
      I4 => \spo[21]_INST_0_i_26_n_0\,
      O => \spo[21]_INST_0_i_8_n_0\
    );
\spo[21]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[21]_INST_0_i_27_n_0\,
      I1 => \spo[21]_INST_0_i_28_n_0\,
      I2 => a(7),
      I3 => \spo[21]_INST_0_i_29_n_0\,
      I4 => a(8),
      I5 => \spo[21]_INST_0_i_30_n_0\,
      O => \spo[21]_INST_0_i_9_n_0\
    );
\spo[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_1_n_0\,
      I1 => \spo[22]_INST_0_i_2_n_0\,
      O => spo(22),
      S => a(3)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[22]_INST_0_i_3_n_0\,
      I1 => \spo[22]_INST_0_i_4_n_0\,
      I2 => a(4),
      I3 => \spo[22]_INST_0_i_5_n_0\,
      I4 => a(6),
      I5 => \spo[22]_INST_0_i_6_n_0\,
      O => \spo[22]_INST_0_i_1_n_0\
    );
\spo[22]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_31_n_0\,
      I1 => \spo[22]_INST_0_i_32_n_0\,
      O => \spo[22]_INST_0_i_10_n_0\,
      S => a(7)
    );
\spo[22]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833B800B800B800"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(8),
      I2 => \spo[22]_INST_0_i_33_n_0\,
      I3 => a(5),
      I4 => \spo[22]_INST_0_i_34_n_0\,
      I5 => a(0),
      O => \spo[22]_INST_0_i_11_n_0\
    );
\spo[22]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_20_n_0\,
      I2 => a(5),
      I3 => a(8),
      I4 => \spo[22]_INST_0_i_35_n_0\,
      O => \spo[22]_INST_0_i_12_n_0\
    );
\spo[22]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88003000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(0),
      O => \spo[22]_INST_0_i_13_n_0\
    );
\spo[22]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010400040"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[22]_INST_0_i_14_n_0\
    );
\spo[22]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040004004"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_50_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[22]_INST_0_i_15_n_0\
    );
\spo[22]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00802000400000C0"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[22]_INST_0_i_16_n_0\
    );
\spo[22]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_31_n_0\,
      I1 => \spo[28]_INST_0_i_29_n_0\,
      I2 => a(8),
      I3 => \spo[30]_INST_0_i_27_n_0\,
      I4 => a(5),
      I5 => \spo[22]_INST_0_i_36_n_0\,
      O => \spo[22]_INST_0_i_17_n_0\
    );
\spo[22]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1060FFFF10600000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(1),
      I4 => a(8),
      I5 => \spo[22]_INST_0_i_37_n_0\,
      O => \spo[22]_INST_0_i_18_n_0\
    );
\spo[22]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D425000020000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[22]_INST_0_i_19_n_0\
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[22]_INST_0_i_7_n_0\,
      I1 => \spo[22]_INST_0_i_8_n_0\,
      I2 => a(4),
      I3 => \spo[22]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[22]_INST_0_i_10_n_0\,
      O => \spo[22]_INST_0_i_2_n_0\
    );
\spo[22]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[22]_INST_0_i_20_n_0\
    );
\spo[22]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015000010E00000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(1),
      O => \spo[22]_INST_0_i_21_n_0\
    );
\spo[22]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8030"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      O => \spo[22]_INST_0_i_22_n_0\
    );
\spo[22]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44000A000000E100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[22]_INST_0_i_23_n_0\
    );
\spo[22]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C6000041140000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[22]_INST_0_i_24_n_0\
    );
\spo[22]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2010A000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[22]_INST_0_i_25_n_0\
    );
\spo[22]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8300200000008000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[22]_INST_0_i_26_n_0\
    );
\spo[22]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0180000054880000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[22]_INST_0_i_27_n_0\
    );
\spo[22]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"540000000000C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[22]_INST_0_i_28_n_0\
    );
\spo[22]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \spo[22]_INST_0_i_38_n_0\,
      I1 => a(8),
      I2 => \spo[30]_INST_0_i_27_n_0\,
      I3 => a(5),
      I4 => \spo[28]_INST_0_i_25_n_0\,
      I5 => a(0),
      O => \spo[22]_INST_0_i_29_n_0\
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_11_n_0\,
      I1 => \spo[22]_INST_0_i_12_n_0\,
      O => \spo[22]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[22]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040080444"
    )
        port map (
      I0 => a(2),
      I1 => \spo[21]_INST_0_i_39_n_0\,
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(8),
      O => \spo[22]_INST_0_i_30_n_0\
    );
\spo[22]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \spo[22]_INST_0_i_39_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => \spo[22]_INST_0_i_40_n_0\,
      I5 => a(0),
      O => \spo[22]_INST_0_i_31_n_0\
    );
\spo[22]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008080"
    )
        port map (
      I0 => a(0),
      I1 => \spo[15]_INST_0_i_18_n_0\,
      I2 => a(8),
      I3 => \spo[31]_INST_0_i_49_n_0\,
      I4 => a(5),
      I5 => \spo[30]_INST_0_i_29_n_0\,
      O => \spo[22]_INST_0_i_32_n_0\
    );
\spo[22]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[22]_INST_0_i_33_n_0\
    );
\spo[22]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A040"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      O => \spo[22]_INST_0_i_34_n_0\
    );
\spo[22]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"220060000000D000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[22]_INST_0_i_35_n_0\
    );
\spo[22]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8090"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[22]_INST_0_i_36_n_0\
    );
\spo[22]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400000004030000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[22]_INST_0_i_37_n_0\
    );
\spo[22]_INST_0_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A200"
    )
        port map (
      I0 => \spo[28]_INST_0_i_32_n_0\,
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      O => \spo[22]_INST_0_i_38_n_0\
    );
\spo[22]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5840000091000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[22]_INST_0_i_39_n_0\
    );
\spo[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[22]_INST_0_i_13_n_0\,
      I1 => \spo[22]_INST_0_i_14_n_0\,
      I2 => a(7),
      I3 => \spo[22]_INST_0_i_15_n_0\,
      I4 => a(8),
      I5 => \spo[22]_INST_0_i_16_n_0\,
      O => \spo[22]_INST_0_i_4_n_0\
    );
\spo[22]_INST_0_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      O => \spo[22]_INST_0_i_40_n_0\
    );
\spo[22]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_17_n_0\,
      I1 => \spo[22]_INST_0_i_18_n_0\,
      O => \spo[22]_INST_0_i_5_n_0\,
      S => a(7)
    );
\spo[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000BBBB30008888"
    )
        port map (
      I0 => \spo[22]_INST_0_i_19_n_0\,
      I1 => a(7),
      I2 => \spo[22]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[22]_INST_0_i_21_n_0\,
      O => \spo[22]_INST_0_i_6_n_0\
    );
\spo[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800F0FFF000"
    )
        port map (
      I0 => \spo[22]_INST_0_i_22_n_0\,
      I1 => a(5),
      I2 => \spo[22]_INST_0_i_23_n_0\,
      I3 => a(7),
      I4 => \spo[22]_INST_0_i_24_n_0\,
      I5 => a(8),
      O => \spo[22]_INST_0_i_7_n_0\
    );
\spo[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[22]_INST_0_i_25_n_0\,
      I1 => \spo[22]_INST_0_i_26_n_0\,
      I2 => a(7),
      I3 => \spo[22]_INST_0_i_27_n_0\,
      I4 => a(8),
      I5 => \spo[22]_INST_0_i_28_n_0\,
      O => \spo[22]_INST_0_i_8_n_0\
    );
\spo[22]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_29_n_0\,
      I1 => \spo[22]_INST_0_i_30_n_0\,
      O => \spo[22]_INST_0_i_9_n_0\,
      S => a(7)
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_1_n_0\,
      I1 => \spo[23]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[23]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[23]_INST_0_i_4_n_0\,
      O => spo(23)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_5_n_0\,
      I1 => \spo[23]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[23]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[23]_INST_0_i_8_n_0\,
      O => \spo[23]_INST_0_i_1_n_0\
    );
\spo[23]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_29_n_0\,
      I1 => \spo[23]_INST_0_i_30_n_0\,
      O => \spo[23]_INST_0_i_10_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_31_n_0\,
      I1 => \spo[23]_INST_0_i_32_n_0\,
      O => \spo[23]_INST_0_i_11_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_33_n_0\,
      I1 => \spo[23]_INST_0_i_34_n_0\,
      O => \spo[23]_INST_0_i_12_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8333300B80000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_28_n_0\,
      I1 => a(8),
      I2 => \spo[23]_INST_0_i_35_n_0\,
      I3 => a(0),
      I4 => a(5),
      I5 => \spo[23]_INST_0_i_36_n_0\,
      O => \spo[23]_INST_0_i_13_n_0\
    );
\spo[23]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_19_n_0\,
      I1 => \spo[23]_INST_0_i_37_n_0\,
      I2 => a(8),
      I3 => \spo[23]_INST_0_i_38_n_0\,
      I4 => a(5),
      I5 => \spo[23]_INST_0_i_39_n_0\,
      O => \spo[23]_INST_0_i_14_n_0\
    );
\spo[23]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C400800074008000"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[23]_INST_0_i_15_n_0\
    );
\spo[23]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_40_n_0\,
      I1 => \spo[23]_INST_0_i_41_n_0\,
      O => \spo[23]_INST_0_i_16_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_42_n_0\,
      I1 => \spo[23]_INST_0_i_43_n_0\,
      O => \spo[23]_INST_0_i_17_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_44_n_0\,
      I1 => \spo[27]_INST_0_i_24_n_0\,
      I2 => a(8),
      I3 => \spo[23]_INST_0_i_45_n_0\,
      I4 => a(5),
      I5 => \spo[30]_INST_0_i_39_n_0\,
      O => \spo[23]_INST_0_i_18_n_0\
    );
\spo[23]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_43_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[23]_INST_0_i_46_n_0\,
      O => \spo[23]_INST_0_i_19_n_0\
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_9_n_0\,
      I1 => \spo[23]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[23]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[23]_INST_0_i_12_n_0\,
      O => \spo[23]_INST_0_i_2_n_0\
    );
\spo[23]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_47_n_0\,
      I1 => \spo[23]_INST_0_i_48_n_0\,
      O => \spo[23]_INST_0_i_20_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00204080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[23]_INST_0_i_21_n_0\
    );
\spo[23]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      O => \spo[23]_INST_0_i_22_n_0\
    );
\spo[23]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1080"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      O => \spo[23]_INST_0_i_23_n_0\
    );
\spo[23]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2064000054950000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[23]_INST_0_i_24_n_0\
    );
\spo[23]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080008010400090"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[23]_INST_0_i_25_n_0\
    );
\spo[23]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"68001500"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[23]_INST_0_i_26_n_0\
    );
\spo[23]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020080005800E600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[23]_INST_0_i_27_n_0\
    );
\spo[23]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008C0004000100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[23]_INST_0_i_28_n_0\
    );
\spo[23]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000900000008000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[23]_INST_0_i_29_n_0\
    );
\spo[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_13_n_0\,
      I1 => \spo[23]_INST_0_i_14_n_0\,
      I2 => a(6),
      I3 => \spo[23]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[23]_INST_0_i_16_n_0\,
      O => \spo[23]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6100A000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[23]_INST_0_i_30_n_0\
    );
\spo[23]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A00060002000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[23]_INST_0_i_31_n_0\
    );
\spo[23]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47002400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[23]_INST_0_i_32_n_0\
    );
\spo[23]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200090040000800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[23]_INST_0_i_33_n_0\
    );
\spo[23]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18C0000095000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[23]_INST_0_i_34_n_0\
    );
\spo[23]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3080"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      O => \spo[23]_INST_0_i_35_n_0\
    );
\spo[23]_INST_0_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      O => \spo[23]_INST_0_i_36_n_0\
    );
\spo[23]_INST_0_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8400"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(1),
      I3 => a(0),
      O => \spo[23]_INST_0_i_37_n_0\
    );
\spo[23]_INST_0_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(1),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(0),
      O => \spo[23]_INST_0_i_38_n_0\
    );
\spo[23]_INST_0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0000800"
    )
        port map (
      I0 => a(9),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(1),
      O => \spo[23]_INST_0_i_39_n_0\
    );
\spo[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[23]_INST_0_i_17_n_0\,
      I1 => \spo[23]_INST_0_i_18_n_0\,
      I2 => a(6),
      I3 => \spo[23]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[23]_INST_0_i_20_n_0\,
      O => \spo[23]_INST_0_i_4_n_0\
    );
\spo[23]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3491000008800000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[23]_INST_0_i_40_n_0\
    );
\spo[23]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100060004002000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[23]_INST_0_i_41_n_0\
    );
\spo[23]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1400000006030000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[23]_INST_0_i_42_n_0\
    );
\spo[23]_INST_0_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000700"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[23]_INST_0_i_43_n_0\
    );
\spo[23]_INST_0_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[23]_INST_0_i_44_n_0\
    );
\spo[23]_INST_0_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[23]_INST_0_i_45_n_0\
    );
\spo[23]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C200600040001000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[23]_INST_0_i_46_n_0\
    );
\spo[23]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020000006000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[23]_INST_0_i_47_n_0\
    );
\spo[23]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000C00000002000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[23]_INST_0_i_48_n_0\
    );
\spo[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => \spo[23]_INST_0_i_21_n_0\,
      I1 => a(8),
      I2 => \spo[23]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => \spo[23]_INST_0_i_23_n_0\,
      I5 => a(5),
      O => \spo[23]_INST_0_i_5_n_0\
    );
\spo[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_43_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[23]_INST_0_i_24_n_0\,
      O => \spo[23]_INST_0_i_6_n_0\
    );
\spo[23]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_25_n_0\,
      I1 => \spo[23]_INST_0_i_26_n_0\,
      O => \spo[23]_INST_0_i_7_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_27_n_0\,
      I1 => \spo[23]_INST_0_i_28_n_0\,
      O => \spo[23]_INST_0_i_8_n_0\,
      S => a(8)
    );
\spo[23]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B083000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(8),
      I2 => a(1),
      I3 => \spo[29]_INST_0_i_23_n_0\,
      I4 => a(0),
      I5 => a(5),
      O => \spo[23]_INST_0_i_9_n_0\
    );
\spo[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_1_n_0\,
      I1 => \spo[24]_INST_0_i_2_n_0\,
      O => spo(24),
      S => a(3)
    );
\spo[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[24]_INST_0_i_3_n_0\,
      I1 => \spo[24]_INST_0_i_4_n_0\,
      I2 => a(4),
      I3 => \spo[24]_INST_0_i_5_n_0\,
      I4 => a(6),
      I5 => \spo[24]_INST_0_i_6_n_0\,
      O => \spo[24]_INST_0_i_1_n_0\
    );
\spo[24]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[24]_INST_0_i_27_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[24]_INST_0_i_28_n_0\,
      I4 => a(7),
      I5 => \spo[24]_INST_0_i_29_n_0\,
      O => \spo[24]_INST_0_i_10_n_0\
    );
\spo[24]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(5),
      I2 => \spo[28]_INST_0_i_29_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[24]_INST_0_i_30_n_0\,
      O => \spo[24]_INST_0_i_11_n_0\
    );
\spo[24]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_23_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_43_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[24]_INST_0_i_31_n_0\,
      O => \spo[24]_INST_0_i_12_n_0\
    );
\spo[24]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_32_n_0\,
      I1 => \spo[24]_INST_0_i_33_n_0\,
      O => \spo[24]_INST_0_i_13_n_0\,
      S => a(8)
    );
\spo[24]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_34_n_0\,
      I1 => \spo[24]_INST_0_i_35_n_0\,
      O => \spo[24]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[24]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60C0D06000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[24]_INST_0_i_15_n_0\
    );
\spo[24]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_36_n_0\,
      I1 => \spo[24]_INST_0_i_37_n_0\,
      O => \spo[24]_INST_0_i_16_n_0\,
      S => a(8)
    );
\spo[24]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      I3 => a(5),
      O => \spo[24]_INST_0_i_17_n_0\
    );
\spo[24]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04310000E5200000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[24]_INST_0_i_18_n_0\
    );
\spo[24]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B301000001400000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[24]_INST_0_i_19_n_0\
    );
\spo[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[24]_INST_0_i_7_n_0\,
      I1 => \spo[24]_INST_0_i_8_n_0\,
      I2 => a(4),
      I3 => \spo[24]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[24]_INST_0_i_10_n_0\,
      O => \spo[24]_INST_0_i_2_n_0\
    );
\spo[24]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4518C94100000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[29]_INST_0_i_43_n_0\,
      O => \spo[24]_INST_0_i_20_n_0\
    );
\spo[24]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[24]_INST_0_i_38_n_0\,
      O => \spo[24]_INST_0_i_21_n_0\
    );
\spo[24]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_29_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[24]_INST_0_i_39_n_0\,
      O => \spo[24]_INST_0_i_22_n_0\
    );
\spo[24]_INST_0_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_40_n_0\,
      I1 => \spo[24]_INST_0_i_41_n_0\,
      O => \spo[24]_INST_0_i_23_n_0\,
      S => a(8)
    );
\spo[24]_INST_0_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_42_n_0\,
      I1 => \spo[24]_INST_0_i_43_n_0\,
      O => \spo[24]_INST_0_i_24_n_0\,
      S => a(8)
    );
\spo[24]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0060C0C000800000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[24]_INST_0_i_25_n_0\
    );
\spo[24]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_44_n_0\,
      I1 => \spo[24]_INST_0_i_45_n_0\,
      O => \spo[24]_INST_0_i_26_n_0\,
      S => a(8)
    );
\spo[24]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A010"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[24]_INST_0_i_27_n_0\
    );
\spo[24]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000200000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[24]_INST_0_i_28_n_0\
    );
\spo[24]_INST_0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_46_n_0\,
      I1 => \spo[24]_INST_0_i_47_n_0\,
      O => \spo[24]_INST_0_i_29_n_0\,
      S => a(8)
    );
\spo[24]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_11_n_0\,
      I1 => \spo[24]_INST_0_i_12_n_0\,
      O => \spo[24]_INST_0_i_3_n_0\,
      S => a(7)
    );
\spo[24]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6012000001320000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[24]_INST_0_i_30_n_0\
    );
\spo[24]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000F20064002000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[24]_INST_0_i_31_n_0\
    );
\spo[24]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4840000003F40000"
    )
        port map (
      I0 => a(9),
      I1 => a(5),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[24]_INST_0_i_32_n_0\
    );
\spo[24]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C004404"
    )
        port map (
      I0 => a(2),
      I1 => \spo[29]_INST_0_i_43_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[24]_INST_0_i_33_n_0\
    );
\spo[24]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81E0000094800000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[24]_INST_0_i_34_n_0\
    );
\spo[24]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8500C200"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[24]_INST_0_i_35_n_0\
    );
\spo[24]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000080004200"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[24]_INST_0_i_36_n_0\
    );
\spo[24]_INST_0_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C500E200"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[24]_INST_0_i_37_n_0\
    );
\spo[24]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1142000074C10000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[24]_INST_0_i_38_n_0\
    );
\spo[24]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04002A004000A700"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[24]_INST_0_i_39_n_0\
    );
\spo[24]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[24]_INST_0_i_13_n_0\,
      I1 => \spo[24]_INST_0_i_14_n_0\,
      O => \spo[24]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[24]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0405000022100000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[24]_INST_0_i_40_n_0\
    );
\spo[24]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2025000000620000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[24]_INST_0_i_41_n_0\
    );
\spo[24]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A00002004000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[24]_INST_0_i_42_n_0\
    );
\spo[24]_INST_0_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00908000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[24]_INST_0_i_43_n_0\
    );
\spo[24]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100000092000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[24]_INST_0_i_44_n_0\
    );
\spo[24]_INST_0_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8090A000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[24]_INST_0_i_45_n_0\
    );
\spo[24]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40480000091D0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[24]_INST_0_i_46_n_0\
    );
\spo[24]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"19100000C0010000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[24]_INST_0_i_47_n_0\
    );
\spo[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[30]_INST_0_i_41_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[24]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[24]_INST_0_i_16_n_0\,
      O => \spo[24]_INST_0_i_5_n_0\
    );
\spo[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[24]_INST_0_i_17_n_0\,
      I1 => \spo[24]_INST_0_i_18_n_0\,
      I2 => a(7),
      I3 => \spo[24]_INST_0_i_19_n_0\,
      I4 => a(8),
      I5 => \spo[24]_INST_0_i_20_n_0\,
      O => \spo[24]_INST_0_i_6_n_0\
    );
\spo[24]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_21_n_0\,
      I1 => \spo[24]_INST_0_i_22_n_0\,
      O => \spo[24]_INST_0_i_7_n_0\,
      S => a(7)
    );
\spo[24]_INST_0_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[24]_INST_0_i_23_n_0\,
      I1 => \spo[24]_INST_0_i_24_n_0\,
      O => \spo[24]_INST_0_i_8_n_0\,
      S => a(7)
    );
\spo[24]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_23_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[24]_INST_0_i_25_n_0\,
      I4 => a(7),
      I5 => \spo[24]_INST_0_i_26_n_0\,
      O => \spo[24]_INST_0_i_9_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[25]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[25]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[25]_INST_0_i_4_n_0\,
      O => spo(25)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_5_n_0\,
      I1 => \spo[25]_INST_0_i_6_n_0\,
      O => \spo[25]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[25]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \spo[25]_INST_0_i_29_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_26_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[25]_INST_0_i_30_n_0\,
      O => \spo[25]_INST_0_i_10_n_0\
    );
\spo[25]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_31_n_0\,
      I1 => \spo[25]_INST_0_i_32_n_0\,
      O => \spo[25]_INST_0_i_11_n_0\,
      S => a(8)
    );
\spo[25]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_33_n_0\,
      I1 => \spo[25]_INST_0_i_34_n_0\,
      O => \spo[25]_INST_0_i_12_n_0\,
      S => a(8)
    );
\spo[25]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[30]_INST_0_i_41_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[25]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[25]_INST_0_i_36_n_0\,
      O => \spo[25]_INST_0_i_13_n_0\
    );
\spo[25]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_37_n_0\,
      I1 => \spo[25]_INST_0_i_38_n_0\,
      I2 => a(7),
      I3 => \spo[25]_INST_0_i_39_n_0\,
      I4 => a(8),
      I5 => \spo[25]_INST_0_i_40_n_0\,
      O => \spo[25]_INST_0_i_14_n_0\
    );
\spo[25]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B000800"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(0),
      O => \spo[25]_INST_0_i_15_n_0\
    );
\spo[25]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1186000018700000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[25]_INST_0_i_16_n_0\
    );
\spo[25]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1005000040280000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[25]_INST_0_i_17_n_0\
    );
\spo[25]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000100000000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(5),
      O => \spo[25]_INST_0_i_18_n_0\
    );
\spo[25]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_41_n_0\,
      I1 => \spo[25]_INST_0_i_42_n_0\,
      O => \spo[25]_INST_0_i_19_n_0\,
      S => a(8)
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_7_n_0\,
      I1 => \spo[25]_INST_0_i_8_n_0\,
      O => \spo[25]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[25]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3054000040430000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[25]_INST_0_i_20_n_0\
    );
\spo[25]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"91880000F0030000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[25]_INST_0_i_21_n_0\
    );
\spo[25]_INST_0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_43_n_0\,
      I1 => \spo[25]_INST_0_i_44_n_0\,
      O => \spo[25]_INST_0_i_22_n_0\,
      S => a(8)
    );
\spo[25]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10200000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[25]_INST_0_i_23_n_0\
    );
\spo[25]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300100068008000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[25]_INST_0_i_24_n_0\
    );
\spo[25]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"92001500"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[25]_INST_0_i_25_n_0\
    );
\spo[25]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800010806080"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[25]_INST_0_i_26_n_0\
    );
\spo[25]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82A3000044100000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[25]_INST_0_i_27_n_0\
    );
\spo[25]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20900080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[25]_INST_0_i_28_n_0\
    );
\spo[25]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(1),
      O => \spo[25]_INST_0_i_29_n_0\
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_9_n_0\,
      I1 => \spo[25]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[25]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[25]_INST_0_i_12_n_0\,
      O => \spo[25]_INST_0_i_3_n_0\
    );
\spo[25]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6031A56100000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[29]_INST_0_i_43_n_0\,
      O => \spo[25]_INST_0_i_30_n_0\
    );
\spo[25]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80B8000005400000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[25]_INST_0_i_31_n_0\
    );
\spo[25]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42001800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[25]_INST_0_i_32_n_0\
    );
\spo[25]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100100000C040000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[25]_INST_0_i_33_n_0\
    );
\spo[25]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000040C8444"
    )
        port map (
      I0 => a(9),
      I1 => \spo[29]_INST_0_i_43_n_0\,
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[25]_INST_0_i_34_n_0\
    );
\spo[25]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C708000032190000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[25]_INST_0_i_35_n_0\
    );
\spo[25]_INST_0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_45_n_0\,
      I1 => \spo[25]_INST_0_i_46_n_0\,
      O => \spo[25]_INST_0_i_36_n_0\,
      S => a(8)
    );
\spo[25]_INST_0_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"18001700"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[25]_INST_0_i_37_n_0\
    );
\spo[25]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5800430088004800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[25]_INST_0_i_38_n_0\
    );
\spo[25]_INST_0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40005800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[25]_INST_0_i_39_n_0\
    );
\spo[25]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_13_n_0\,
      I1 => \spo[25]_INST_0_i_14_n_0\,
      O => \spo[25]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[25]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000000A0004200"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[25]_INST_0_i_40_n_0\
    );
\spo[25]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4600210044000600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[25]_INST_0_i_41_n_0\
    );
\spo[25]_INST_0_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C6000700"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[25]_INST_0_i_42_n_0\
    );
\spo[25]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6000A00000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[25]_INST_0_i_43_n_0\
    );
\spo[25]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"090C150F00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[29]_INST_0_i_43_n_0\,
      O => \spo[25]_INST_0_i_44_n_0\
    );
\spo[25]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0512590100000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[29]_INST_0_i_43_n_0\,
      O => \spo[25]_INST_0_i_45_n_0\
    );
\spo[25]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000460001001000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[25]_INST_0_i_46_n_0\
    );
\spo[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_15_n_0\,
      I1 => \spo[25]_INST_0_i_16_n_0\,
      I2 => a(7),
      I3 => \spo[25]_INST_0_i_17_n_0\,
      I4 => a(8),
      I5 => \spo[25]_INST_0_i_18_n_0\,
      O => \spo[25]_INST_0_i_5_n_0\
    );
\spo[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \spo[25]_INST_0_i_19_n_0\,
      I1 => a(7),
      I2 => \spo[30]_INST_0_i_41_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[25]_INST_0_i_20_n_0\,
      O => \spo[25]_INST_0_i_6_n_0\
    );
\spo[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[29]_INST_0_i_29_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[25]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[25]_INST_0_i_22_n_0\,
      O => \spo[25]_INST_0_i_7_n_0\
    );
\spo[25]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_23_n_0\,
      I1 => \spo[25]_INST_0_i_24_n_0\,
      I2 => a(7),
      I3 => \spo[25]_INST_0_i_25_n_0\,
      I4 => a(8),
      I5 => \spo[25]_INST_0_i_26_n_0\,
      O => \spo[25]_INST_0_i_8_n_0\
    );
\spo[25]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_27_n_0\,
      I1 => \spo[25]_INST_0_i_28_n_0\,
      O => \spo[25]_INST_0_i_9_n_0\,
      S => a(8)
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_1_n_0\,
      I1 => \spo[26]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[26]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[26]_INST_0_i_4_n_0\,
      O => spo(26)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_5_n_0\,
      I1 => \spo[26]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[26]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[26]_INST_0_i_8_n_0\,
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[26]_INST_0_i_28_n_0\,
      I1 => \spo[26]_INST_0_i_29_n_0\,
      O => \spo[26]_INST_0_i_10_n_0\,
      S => a(8)
    );
\spo[26]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3803303B3803000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(8),
      I2 => a(5),
      I3 => \spo[30]_INST_0_i_37_n_0\,
      I4 => a(0),
      I5 => \spo[30]_INST_0_i_29_n_0\,
      O => \spo[26]_INST_0_i_11_n_0\
    );
\spo[26]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => \spo[26]_INST_0_i_30_n_0\,
      I1 => a(8),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_43_n_0\,
      I4 => a(5),
      O => \spo[26]_INST_0_i_12_n_0\
    );
\spo[26]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_43_n_0\,
      I2 => a(5),
      I3 => a(8),
      I4 => \spo[26]_INST_0_i_31_n_0\,
      O => \spo[26]_INST_0_i_13_n_0\
    );
\spo[26]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD00FFFFCD000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[26]_INST_0_i_32_n_0\,
      O => \spo[26]_INST_0_i_14_n_0\
    );
\spo[26]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[26]_INST_0_i_33_n_0\,
      O => \spo[26]_INST_0_i_15_n_0\
    );
\spo[26]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[26]_INST_0_i_34_n_0\,
      I1 => \spo[26]_INST_0_i_35_n_0\,
      O => \spo[26]_INST_0_i_16_n_0\,
      S => a(8)
    );
\spo[26]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40A0FFFF40A00000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[26]_INST_0_i_36_n_0\,
      O => \spo[26]_INST_0_i_17_n_0\
    );
\spo[26]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_29_n_0\,
      I1 => \spo[26]_INST_0_i_37_n_0\,
      I2 => a(8),
      I3 => \spo[26]_INST_0_i_38_n_0\,
      I4 => a(5),
      I5 => \spo[26]_INST_0_i_39_n_0\,
      O => \spo[26]_INST_0_i_18_n_0\
    );
\spo[26]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \spo[26]_INST_0_i_40_n_0\,
      I1 => a(8),
      I2 => \spo[26]_INST_0_i_41_n_0\,
      I3 => a(0),
      I4 => a(5),
      I5 => \spo[31]_INST_0_i_46_n_0\,
      O => \spo[26]_INST_0_i_19_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_9_n_0\,
      I1 => \spo[26]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[26]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[26]_INST_0_i_12_n_0\,
      O => \spo[26]_INST_0_i_2_n_0\
    );
\spo[26]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[26]_INST_0_i_42_n_0\,
      I1 => \spo[26]_INST_0_i_43_n_0\,
      O => \spo[26]_INST_0_i_20_n_0\,
      S => a(8)
    );
\spo[26]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06240000C1150000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(9),
      O => \spo[26]_INST_0_i_21_n_0\
    );
\spo[26]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34000000"
    )
        port map (
      I0 => a(9),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(1),
      O => \spo[26]_INST_0_i_22_n_0\
    );
\spo[26]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004010"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(0),
      O => \spo[26]_INST_0_i_23_n_0\
    );
\spo[26]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900360006008800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[26]_INST_0_i_24_n_0\
    );
\spo[26]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4E00040021004200"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[26]_INST_0_i_25_n_0\
    );
\spo[26]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004048C008"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[26]_INST_0_i_26_n_0\
    );
\spo[26]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0000002D00C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[26]_INST_0_i_27_n_0\
    );
\spo[26]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000400000000000"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[26]_INST_0_i_28_n_0\
    );
\spo[26]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83008800"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[26]_INST_0_i_29_n_0\
    );
\spo[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_13_n_0\,
      I1 => \spo[26]_INST_0_i_14_n_0\,
      I2 => a(6),
      I3 => \spo[26]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[26]_INST_0_i_16_n_0\,
      O => \spo[26]_INST_0_i_3_n_0\
    );
\spo[26]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1844000015020000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[26]_INST_0_i_30_n_0\
    );
\spo[26]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2152000004100000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[26]_INST_0_i_31_n_0\
    );
\spo[26]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003A000045800000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[26]_INST_0_i_32_n_0\
    );
\spo[26]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"891500004C840000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(9),
      O => \spo[26]_INST_0_i_33_n_0\
    );
\spo[26]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B21900008C800000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[26]_INST_0_i_34_n_0\
    );
\spo[26]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011000000D150000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(9),
      O => \spo[26]_INST_0_i_35_n_0\
    );
\spo[26]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4800C30044000C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[26]_INST_0_i_36_n_0\
    );
\spo[26]_INST_0_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(0),
      O => \spo[26]_INST_0_i_37_n_0\
    );
\spo[26]_INST_0_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      O => \spo[26]_INST_0_i_38_n_0\
    );
\spo[26]_INST_0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[26]_INST_0_i_39_n_0\
    );
\spo[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_17_n_0\,
      I1 => \spo[26]_INST_0_i_18_n_0\,
      I2 => a(6),
      I3 => \spo[26]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[26]_INST_0_i_20_n_0\,
      O => \spo[26]_INST_0_i_4_n_0\
    );
\spo[26]_INST_0_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"108000A0"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[26]_INST_0_i_40_n_0\
    );
\spo[26]_INST_0_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40A0"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      O => \spo[26]_INST_0_i_41_n_0\
    );
\spo[26]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200A80000000100"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[26]_INST_0_i_42_n_0\
    );
\spo[26]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A200000001001A00"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[26]_INST_0_i_43_n_0\
    );
\spo[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0B8FFFFC0B80000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_23_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[26]_INST_0_i_21_n_0\,
      O => \spo[26]_INST_0_i_5_n_0\
    );
\spo[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_18_n_0\,
      I1 => \spo[30]_INST_0_i_41_n_0\,
      I2 => a(8),
      I3 => \spo[26]_INST_0_i_22_n_0\,
      I4 => a(5),
      I5 => \spo[26]_INST_0_i_23_n_0\,
      O => \spo[26]_INST_0_i_6_n_0\
    );
\spo[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[26]_INST_0_i_24_n_0\,
      O => \spo[26]_INST_0_i_7_n_0\
    );
\spo[26]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[26]_INST_0_i_25_n_0\,
      I1 => \spo[26]_INST_0_i_26_n_0\,
      O => \spo[26]_INST_0_i_8_n_0\,
      S => a(8)
    );
\spo[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E500FFFFE5000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[26]_INST_0_i_27_n_0\,
      O => \spo[26]_INST_0_i_9_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_1_n_0\,
      I1 => \spo[27]_INST_0_i_2_n_0\,
      O => spo(27),
      S => a(3)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_3_n_0\,
      I1 => \spo[27]_INST_0_i_4_n_0\,
      I2 => a(4),
      I3 => \spo[27]_INST_0_i_5_n_0\,
      I4 => a(6),
      I5 => \spo[27]_INST_0_i_6_n_0\,
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[27]_INST_0_i_32_n_0\,
      I1 => \spo[27]_INST_0_i_33_n_0\,
      O => \spo[27]_INST_0_i_10_n_0\,
      S => a(7)
    );
\spo[27]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B000000"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(0),
      O => \spo[27]_INST_0_i_11_n_0\
    );
\spo[27]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E46B000060300000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_12_n_0\
    );
\spo[27]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4800"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(1),
      I3 => a(0),
      O => \spo[27]_INST_0_i_13_n_0\
    );
\spo[27]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20002000F0801040"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[27]_INST_0_i_14_n_0\
    );
\spo[27]_INST_0_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_34_n_0\,
      I1 => \spo[27]_INST_0_i_35_n_0\,
      O => \spo[27]_INST_0_i_15_n_0\,
      S => a(8)
    );
\spo[27]_INST_0_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_36_n_0\,
      I1 => \spo[27]_INST_0_i_37_n_0\,
      O => \spo[27]_INST_0_i_16_n_0\,
      S => a(8)
    );
\spo[27]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2400C100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[27]_INST_0_i_17_n_0\
    );
\spo[27]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000030000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[27]_INST_0_i_18_n_0\
    );
\spo[27]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8009800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[27]_INST_0_i_19_n_0\
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_7_n_0\,
      I1 => \spo[27]_INST_0_i_8_n_0\,
      I2 => a(4),
      I3 => \spo[27]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[27]_INST_0_i_10_n_0\,
      O => \spo[27]_INST_0_i_2_n_0\
    );
\spo[27]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000800F000C400"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(0),
      O => \spo[27]_INST_0_i_20_n_0\
    );
\spo[27]_INST_0_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_38_n_0\,
      I1 => \spo[27]_INST_0_i_39_n_0\,
      O => \spo[27]_INST_0_i_21_n_0\,
      S => a(8)
    );
\spo[27]_INST_0_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_40_n_0\,
      I1 => \spo[27]_INST_0_i_41_n_0\,
      O => \spo[27]_INST_0_i_22_n_0\,
      S => a(8)
    );
\spo[27]_INST_0_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_42_n_0\,
      I1 => \spo[27]_INST_0_i_43_n_0\,
      O => \spo[27]_INST_0_i_23_n_0\,
      S => a(8)
    );
\spo[27]_INST_0_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      O => \spo[27]_INST_0_i_24_n_0\
    );
\spo[27]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02F6000016890000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_25_n_0\
    );
\spo[27]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80100000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[27]_INST_0_i_26_n_0\
    );
\spo[27]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99000081600000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[27]_INST_0_i_27_n_0\
    );
\spo[27]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"108C000004F90000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_28_n_0\
    );
\spo[27]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45500000404A0000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_29_n_0\
    );
\spo[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_11_n_0\,
      I1 => \spo[27]_INST_0_i_12_n_0\,
      I2 => a(7),
      I3 => \spo[27]_INST_0_i_13_n_0\,
      I4 => a(8),
      I5 => \spo[27]_INST_0_i_14_n_0\,
      O => \spo[27]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_29_n_0\,
      I1 => a(0),
      I2 => a(5),
      I3 => \spo[31]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[27]_INST_0_i_44_n_0\,
      O => \spo[27]_INST_0_i_30_n_0\
    );
\spo[27]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[27]_INST_0_i_45_n_0\,
      O => \spo[27]_INST_0_i_31_n_0\
    );
\spo[27]_INST_0_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_46_n_0\,
      I1 => \spo[27]_INST_0_i_47_n_0\,
      O => \spo[27]_INST_0_i_32_n_0\,
      S => a(8)
    );
\spo[27]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_48_n_0\,
      I1 => \spo[27]_INST_0_i_49_n_0\,
      O => \spo[27]_INST_0_i_33_n_0\,
      S => a(8)
    );
\spo[27]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C8005400A400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[27]_INST_0_i_34_n_0\
    );
\spo[27]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0068000041100000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_35_n_0\
    );
\spo[27]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01D4000010D80000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_36_n_0\
    );
\spo[27]_INST_0_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A01080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[27]_INST_0_i_37_n_0\
    );
\spo[27]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0B060A000002000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[27]_INST_0_i_38_n_0\
    );
\spo[27]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8020800050004020"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[27]_INST_0_i_39_n_0\
    );
\spo[27]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[27]_INST_0_i_15_n_0\,
      I1 => \spo[27]_INST_0_i_16_n_0\,
      O => \spo[27]_INST_0_i_4_n_0\,
      S => a(7)
    );
\spo[27]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"901C000011280000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_40_n_0\
    );
\spo[27]_INST_0_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1800C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[27]_INST_0_i_41_n_0\
    );
\spo[27]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00180022008800"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[27]_INST_0_i_42_n_0\
    );
\spo[27]_INST_0_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4000500"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[27]_INST_0_i_43_n_0\
    );
\spo[27]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100000096100000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[27]_INST_0_i_44_n_0\
    );
\spo[27]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80C00000C8070000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(1),
      O => \spo[27]_INST_0_i_45_n_0\
    );
\spo[27]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C00800080000800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[27]_INST_0_i_46_n_0\
    );
\spo[27]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6000A04000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[27]_INST_0_i_47_n_0\
    );
\spo[27]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000830008000200"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[27]_INST_0_i_48_n_0\
    );
\spo[27]_INST_0_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50C08000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(1),
      I4 => a(0),
      O => \spo[27]_INST_0_i_49_n_0\
    );
\spo[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_17_n_0\,
      I1 => \spo[27]_INST_0_i_18_n_0\,
      I2 => a(7),
      I3 => \spo[27]_INST_0_i_19_n_0\,
      I4 => a(8),
      I5 => \spo[27]_INST_0_i_20_n_0\,
      O => \spo[27]_INST_0_i_5_n_0\
    );
\spo[27]_INST_0_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[27]_INST_0_i_21_n_0\,
      I1 => \spo[27]_INST_0_i_22_n_0\,
      O => \spo[27]_INST_0_i_6_n_0\,
      S => a(7)
    );
\spo[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \spo[27]_INST_0_i_23_n_0\,
      I1 => a(7),
      I2 => \spo[27]_INST_0_i_24_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[27]_INST_0_i_25_n_0\,
      O => \spo[27]_INST_0_i_7_n_0\
    );
\spo[27]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_26_n_0\,
      I1 => \spo[27]_INST_0_i_27_n_0\,
      I2 => a(7),
      I3 => \spo[27]_INST_0_i_28_n_0\,
      I4 => a(8),
      I5 => \spo[27]_INST_0_i_29_n_0\,
      O => \spo[27]_INST_0_i_8_n_0\
    );
\spo[27]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_30_n_0\,
      I1 => \spo[27]_INST_0_i_31_n_0\,
      O => \spo[27]_INST_0_i_9_n_0\,
      S => a(7)
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_1_n_0\,
      I1 => \spo[28]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[28]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[28]_INST_0_i_4_n_0\,
      O => spo(28)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_5_n_0\,
      I1 => \spo[28]_INST_0_i_6_n_0\,
      O => \spo[28]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \spo[28]_INST_0_i_27_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(0),
      I4 => \spo[30]_INST_0_i_28_n_0\,
      I5 => a(5),
      O => \spo[28]_INST_0_i_10_n_0\
    );
\spo[28]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088FFFF30880000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_28_n_0\,
      I1 => a(5),
      I2 => \spo[28]_INST_0_i_29_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[28]_INST_0_i_30_n_0\,
      O => \spo[28]_INST_0_i_11_n_0\
    );
\spo[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5C0FFFFC5C00000"
    )
        port map (
      I0 => a(5),
      I1 => \spo[31]_INST_0_i_23_n_0\,
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[28]_INST_0_i_31_n_0\,
      O => \spo[28]_INST_0_i_12_n_0\
    );
\spo[28]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0084FFFF00840000"
    )
        port map (
      I0 => a(1),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(0),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[28]_INST_0_i_33_n_0\,
      O => \spo[28]_INST_0_i_13_n_0\
    );
\spo[28]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_34_n_0\,
      I1 => \spo[28]_INST_0_i_35_n_0\,
      O => \spo[28]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[28]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_36_n_0\,
      I1 => \spo[28]_INST_0_i_37_n_0\,
      I2 => a(7),
      I3 => \spo[28]_INST_0_i_38_n_0\,
      I4 => a(8),
      I5 => \spo[28]_INST_0_i_39_n_0\,
      O => \spo[28]_INST_0_i_15_n_0\
    );
\spo[28]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A000C0CFC0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_40_n_0\,
      I1 => \spo[28]_INST_0_i_41_n_0\,
      I2 => a(7),
      I3 => a(5),
      I4 => \spo[28]_INST_0_i_42_n_0\,
      I5 => a(8),
      O => \spo[28]_INST_0_i_16_n_0\
    );
\spo[28]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_43_n_0\,
      I1 => \spo[28]_INST_0_i_44_n_0\,
      O => \spo[28]_INST_0_i_17_n_0\,
      S => a(8)
    );
\spo[28]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      O => \spo[28]_INST_0_i_18_n_0\
    );
\spo[28]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C6001200E600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[28]_INST_0_i_19_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_7_n_0\,
      I1 => \spo[28]_INST_0_i_8_n_0\,
      I2 => a(6),
      I3 => \spo[28]_INST_0_i_9_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_10_n_0\,
      O => \spo[28]_INST_0_i_2_n_0\
    );
\spo[28]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"406F00002A020000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(1),
      O => \spo[28]_INST_0_i_20_n_0\
    );
\spo[28]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48040000"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      I3 => a(0),
      I4 => a(5),
      O => \spo[28]_INST_0_i_21_n_0\
    );
\spo[28]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"116407C900000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[15]_INST_0_i_19_n_0\,
      O => \spo[28]_INST_0_i_22_n_0\
    );
\spo[28]_INST_0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(0),
      O => \spo[28]_INST_0_i_23_n_0\
    );
\spo[28]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20004000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[28]_INST_0_i_24_n_0\
    );
\spo[28]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      O => \spo[28]_INST_0_i_25_n_0\
    );
\spo[28]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      O => \spo[28]_INST_0_i_26_n_0\
    );
\spo[28]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1804000099000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[28]_INST_0_i_27_n_0\
    );
\spo[28]_INST_0_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(1),
      O => \spo[28]_INST_0_i_28_n_0\
    );
\spo[28]_INST_0_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \spo[28]_INST_0_i_32_n_0\,
      I1 => a(1),
      O => \spo[28]_INST_0_i_29_n_0\
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_11_n_0\,
      I1 => \spo[28]_INST_0_i_12_n_0\,
      I2 => a(6),
      I3 => \spo[28]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_14_n_0\,
      O => \spo[28]_INST_0_i_3_n_0\
    );
\spo[28]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"016000006F310000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[28]_INST_0_i_30_n_0\
    );
\spo[28]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0807000010800000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[28]_INST_0_i_31_n_0\
    );
\spo[28]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(2),
      O => \spo[28]_INST_0_i_32_n_0\
    );
\spo[28]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01110000DE800000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[28]_INST_0_i_33_n_0\
    );
\spo[28]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A11000000840000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[28]_INST_0_i_34_n_0\
    );
\spo[28]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004C40484"
    )
        port map (
      I0 => a(2),
      I1 => \spo[15]_INST_0_i_19_n_0\,
      I2 => a(0),
      I3 => a(9),
      I4 => a(1),
      I5 => a(5),
      O => \spo[28]_INST_0_i_35_n_0\
    );
\spo[28]_INST_0_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      I4 => a(5),
      O => \spo[28]_INST_0_i_36_n_0\
    );
\spo[28]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4200100040004400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[28]_INST_0_i_37_n_0\
    );
\spo[28]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A00000004000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[28]_INST_0_i_38_n_0\
    );
\spo[28]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D5B000098880000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[28]_INST_0_i_39_n_0\
    );
\spo[28]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_15_n_0\,
      I1 => \spo[28]_INST_0_i_16_n_0\,
      O => \spo[28]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0084"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(1),
      I3 => a(0),
      O => \spo[28]_INST_0_i_40_n_0\
    );
\spo[28]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000000C7008000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[28]_INST_0_i_41_n_0\
    );
\spo[28]_INST_0_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E050"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      O => \spo[28]_INST_0_i_42_n_0\
    );
\spo[28]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8900360006000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[28]_INST_0_i_43_n_0\
    );
\spo[28]_INST_0_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A00"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(5),
      O => \spo[28]_INST_0_i_44_n_0\
    );
\spo[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \spo[28]_INST_0_i_17_n_0\,
      I1 => a(7),
      I2 => \spo[28]_INST_0_i_18_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[28]_INST_0_i_19_n_0\,
      O => \spo[28]_INST_0_i_5_n_0\
    );
\spo[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_22_n_0\,
      I1 => \spo[28]_INST_0_i_20_n_0\,
      I2 => a(7),
      I3 => \spo[28]_INST_0_i_21_n_0\,
      I4 => a(8),
      I5 => \spo[28]_INST_0_i_22_n_0\,
      O => \spo[28]_INST_0_i_6_n_0\
    );
\spo[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_23_n_0\,
      I1 => \spo[30]_INST_0_i_39_n_0\,
      I2 => a(8),
      I3 => \spo[28]_INST_0_i_24_n_0\,
      I4 => a(5),
      I5 => \spo[28]_INST_0_i_25_n_0\,
      O => \spo[28]_INST_0_i_7_n_0\
    );
\spo[28]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \spo[30]_INST_0_i_28_n_0\,
      I1 => a(0),
      I2 => \spo[28]_INST_0_i_26_n_0\,
      I3 => a(5),
      I4 => \spo[30]_INST_0_i_27_n_0\,
      I5 => a(8),
      O => \spo[28]_INST_0_i_8_n_0\
    );
\spo[28]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088308800330000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(8),
      I2 => \spo[28]_INST_0_i_25_n_0\,
      I3 => a(5),
      I4 => \spo[30]_INST_0_i_27_n_0\,
      I5 => a(0),
      O => \spo[28]_INST_0_i_9_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => a(4),
      I2 => \spo[29]_INST_0_i_2_n_0\,
      I3 => a(3),
      I4 => \spo[29]_INST_0_i_3_n_0\,
      O => spo(29)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_4_n_0\,
      I1 => \spo[29]_INST_0_i_5_n_0\,
      I2 => a(6),
      I3 => \spo[29]_INST_0_i_6_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_7_n_0\,
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[29]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(0),
      I2 => a(5),
      I3 => \spo[31]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[29]_INST_0_i_26_n_0\,
      O => \spo[29]_INST_0_i_10_n_0\
    );
\spo[29]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_27_n_0\,
      I1 => \spo[29]_INST_0_i_28_n_0\,
      O => \spo[29]_INST_0_i_11_n_0\,
      S => a(8)
    );
\spo[29]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_29_n_0\,
      I1 => \spo[29]_INST_0_i_30_n_0\,
      I2 => a(7),
      I3 => \spo[29]_INST_0_i_31_n_0\,
      I4 => a(8),
      I5 => \spo[29]_INST_0_i_32_n_0\,
      O => \spo[29]_INST_0_i_12_n_0\
    );
\spo[29]_INST_0_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_33_n_0\,
      I1 => \spo[29]_INST_0_i_34_n_0\,
      O => \spo[29]_INST_0_i_13_n_0\,
      S => a(7)
    );
\spo[29]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_35_n_0\,
      I1 => \spo[29]_INST_0_i_36_n_0\,
      I2 => a(7),
      I3 => \spo[29]_INST_0_i_37_n_0\,
      I4 => a(8),
      I5 => \spo[29]_INST_0_i_38_n_0\,
      O => \spo[29]_INST_0_i_14_n_0\
    );
\spo[29]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_39_n_0\,
      I1 => \spo[29]_INST_0_i_40_n_0\,
      I2 => a(7),
      I3 => \spo[29]_INST_0_i_41_n_0\,
      I4 => a(8),
      I5 => \spo[29]_INST_0_i_42_n_0\,
      O => \spo[29]_INST_0_i_15_n_0\
    );
\spo[29]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400420004007000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_16_n_0\
    );
\spo[29]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F6000006870000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[29]_INST_0_i_17_n_0\
    );
\spo[29]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[29]_INST_0_i_18_n_0\
    );
\spo[29]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8600010008000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_19_n_0\
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_8_n_0\,
      I1 => \spo[29]_INST_0_i_9_n_0\,
      I2 => a(6),
      I3 => \spo[29]_INST_0_i_10_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_11_n_0\,
      O => \spo[29]_INST_0_i_2_n_0\
    );
\spo[29]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AD00C400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[29]_INST_0_i_20_n_0\
    );
\spo[29]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4600C4005000E800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_21_n_0\
    );
\spo[29]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0047000000620000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[29]_INST_0_i_22_n_0\
    );
\spo[29]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(2),
      O => \spo[29]_INST_0_i_23_n_0\
    );
\spo[29]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400084000500"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_24_n_0\
    );
\spo[29]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4800C300"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(0),
      O => \spo[29]_INST_0_i_25_n_0\
    );
\spo[29]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0520000030030000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[29]_INST_0_i_26_n_0\
    );
\spo[29]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040001800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_27_n_0\
    );
\spo[29]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900C00088008000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_28_n_0\
    );
\spo[29]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      I3 => a(0),
      O => \spo[29]_INST_0_i_29_n_0\
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_12_n_0\,
      I1 => \spo[29]_INST_0_i_13_n_0\,
      I2 => a(4),
      I3 => \spo[29]_INST_0_i_14_n_0\,
      I4 => a(6),
      I5 => \spo[29]_INST_0_i_15_n_0\,
      O => \spo[29]_INST_0_i_3_n_0\
    );
\spo[29]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A08000037120000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[29]_INST_0_i_30_n_0\
    );
\spo[29]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"46004900"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[29]_INST_0_i_31_n_0\
    );
\spo[29]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FC0000C3440000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[29]_INST_0_i_32_n_0\
    );
\spo[29]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_44_n_0\,
      I1 => \spo[29]_INST_0_i_45_n_0\,
      O => \spo[29]_INST_0_i_33_n_0\,
      S => a(8)
    );
\spo[29]_INST_0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_46_n_0\,
      I1 => \spo[29]_INST_0_i_47_n_0\,
      O => \spo[29]_INST_0_i_34_n_0\,
      S => a(8)
    );
\spo[29]_INST_0_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20008060"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[29]_INST_0_i_35_n_0\
    );
\spo[29]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40C0804000000020"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[29]_INST_0_i_36_n_0\
    );
\spo[29]_INST_0_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54004200"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[29]_INST_0_i_37_n_0\
    );
\spo[29]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054000010070000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[29]_INST_0_i_38_n_0\
    );
\spo[29]_INST_0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0C00020"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[29]_INST_0_i_39_n_0\
    );
\spo[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_43_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[29]_INST_0_i_16_n_0\,
      O => \spo[29]_INST_0_i_4_n_0\
    );
\spo[29]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5240000020D90000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[29]_INST_0_i_40_n_0\
    );
\spo[29]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000000000004000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[29]_INST_0_i_41_n_0\
    );
\spo[29]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44008D004600C800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_42_n_0\
    );
\spo[29]_INST_0_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => a(10),
      I1 => a(12),
      I2 => a(11),
      I3 => a(13),
      O => \spo[29]_INST_0_i_43_n_0\
    );
\spo[29]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3859000000880000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[29]_INST_0_i_44_n_0\
    );
\spo[29]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000001D00000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[29]_INST_0_i_45_n_0\
    );
\spo[29]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800400005004000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[29]_INST_0_i_46_n_0\
    );
\spo[29]_INST_0_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55006200"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(2),
      O => \spo[29]_INST_0_i_47_n_0\
    );
\spo[29]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_17_n_0\,
      I1 => \spo[29]_INST_0_i_18_n_0\,
      O => \spo[29]_INST_0_i_5_n_0\,
      S => a(8)
    );
\spo[29]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_19_n_0\,
      I1 => \spo[29]_INST_0_i_20_n_0\,
      O => \spo[29]_INST_0_i_6_n_0\,
      S => a(8)
    );
\spo[29]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_21_n_0\,
      I1 => \spo[29]_INST_0_i_22_n_0\,
      O => \spo[29]_INST_0_i_7_n_0\,
      S => a(8)
    );
\spo[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3008000800330000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(8),
      I2 => a(0),
      I3 => a(5),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(1),
      O => \spo[29]_INST_0_i_8_n_0\
    );
\spo[29]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_24_n_0\,
      I1 => \spo[29]_INST_0_i_25_n_0\,
      O => \spo[29]_INST_0_i_9_n_0\,
      S => a(8)
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => a(4),
      I2 => \spo[2]_INST_0_i_2_n_0\,
      I3 => a(3),
      I4 => \spo[2]_INST_0_i_3_n_0\,
      O => spo(2)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_4_n_0\,
      I1 => \spo[2]_INST_0_i_5_n_0\,
      O => \spo[2]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_31_n_0\,
      I1 => \spo[2]_INST_0_i_32_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_29_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_33_n_0\,
      O => \spo[2]_INST_0_i_10_n_0\
    );
\spo[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_18_n_0\,
      I1 => \spo[2]_INST_0_i_34_n_0\,
      I2 => a(7),
      I3 => \spo[2]_INST_0_i_35_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_36_n_0\,
      O => \spo[2]_INST_0_i_11_n_0\
    );
\spo[2]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9DFF0000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[2]_INST_0_i_12_n_0\
    );
\spo[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF6E0000FEF70000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[2]_INST_0_i_13_n_0\
    );
\spo[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57460000075D0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[2]_INST_0_i_14_n_0\
    );
\spo[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBA0000FEB60000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[2]_INST_0_i_15_n_0\
    );
\spo[2]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFF70000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[2]_INST_0_i_16_n_0\
    );
\spo[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFF7F00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(9),
      I4 => a(0),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_17_n_0\
    );
\spo[2]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FFF0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[2]_INST_0_i_18_n_0\
    );
\spo[2]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEDFFD00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_19_n_0\
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_6_n_0\,
      I1 => \spo[2]_INST_0_i_7_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[2]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB0000CFFC0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[2]_INST_0_i_20_n_0\
    );
\spo[2]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76700000D7FC0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[2]_INST_0_i_21_n_0\
    );
\spo[2]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FEBFFF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_22_n_0\
    );
\spo[2]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(0),
      I3 => a(5),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[2]_INST_0_i_23_n_0\
    );
\spo[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CDFFFFF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(9),
      I3 => a(2),
      I4 => a(0),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_24_n_0\
    );
\spo[2]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"763FED7B00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_25_n_0\
    );
\spo[2]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_37_n_0\,
      I1 => \spo[2]_INST_0_i_38_n_0\,
      O => \spo[2]_INST_0_i_26_n_0\,
      S => a(8)
    );
\spo[2]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_39_n_0\,
      I1 => \spo[2]_INST_0_i_40_n_0\,
      O => \spo[2]_INST_0_i_27_n_0\,
      S => a(8)
    );
\spo[2]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73F0FFFF00000000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_28_n_0\
    );
\spo[2]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55DE55FF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_29_n_0\
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_8_n_0\,
      I1 => \spo[2]_INST_0_i_9_n_0\,
      I2 => a(4),
      I3 => \spo[2]_INST_0_i_10_n_0\,
      I4 => a(6),
      I5 => \spo[2]_INST_0_i_11_n_0\,
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FDFFFD00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(9),
      I4 => a(0),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_30_n_0\
    );
\spo[2]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[2]_INST_0_i_31_n_0\
    );
\spo[2]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB3CFFFF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(9),
      I4 => a(0),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_32_n_0\
    );
\spo[2]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F7EFCF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_33_n_0\
    );
\spo[2]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFDF0000CFE60000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[2]_INST_0_i_34_n_0\
    );
\spo[2]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47DE0000FF9F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[2]_INST_0_i_35_n_0\
    );
\spo[2]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF0000270C0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[2]_INST_0_i_36_n_0\
    );
\spo[2]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEBBBD00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_37_n_0\
    );
\spo[2]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[2]_INST_0_i_38_n_0\
    );
\spo[2]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF7CDBF300000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_39_n_0\
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_12_n_0\,
      I1 => \spo[2]_INST_0_i_13_n_0\,
      I2 => a(7),
      I3 => \spo[2]_INST_0_i_14_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_15_n_0\,
      O => \spo[2]_INST_0_i_4_n_0\
    );
\spo[2]_INST_0_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F300FA00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[2]_INST_0_i_40_n_0\
    );
\spo[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_16_n_0\,
      I1 => \spo[2]_INST_0_i_17_n_0\,
      I2 => a(7),
      I3 => \spo[2]_INST_0_i_18_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_19_n_0\,
      O => \spo[2]_INST_0_i_5_n_0\
    );
\spo[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_20_n_0\,
      I1 => \spo[2]_INST_0_i_20_n_0\,
      I2 => a(7),
      I3 => \spo[2]_INST_0_i_21_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_22_n_0\,
      O => \spo[2]_INST_0_i_6_n_0\
    );
\spo[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_23_n_0\,
      I1 => \spo[2]_INST_0_i_24_n_0\,
      I2 => a(7),
      I3 => \spo[2]_INST_0_i_12_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_25_n_0\,
      O => \spo[2]_INST_0_i_7_n_0\
    );
\spo[2]_INST_0_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_26_n_0\,
      I1 => \spo[2]_INST_0_i_27_n_0\,
      O => \spo[2]_INST_0_i_8_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_29_n_0\,
      I1 => \spo[2]_INST_0_i_28_n_0\,
      I2 => a(7),
      I3 => \spo[2]_INST_0_i_29_n_0\,
      I4 => a(8),
      I5 => \spo[2]_INST_0_i_30_n_0\,
      O => \spo[2]_INST_0_i_9_n_0\
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_1_n_0\,
      I1 => \spo[30]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[30]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(30)
    );
\spo[30]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_5_n_0\,
      I1 => \spo[30]_INST_0_i_6_n_0\,
      O => \spo[30]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \spo[30]_INST_0_i_30_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      O => \spo[30]_INST_0_i_10_n_0\
    );
\spo[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1080FFFF10800000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_22_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[30]_INST_0_i_31_n_0\,
      O => \spo[30]_INST_0_i_11_n_0\
    );
\spo[30]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_32_n_0\,
      I1 => \spo[30]_INST_0_i_33_n_0\,
      O => \spo[30]_INST_0_i_12_n_0\,
      S => a(8)
    );
\spo[30]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_22_n_0\,
      I2 => a(1),
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[30]_INST_0_i_34_n_0\,
      O => \spo[30]_INST_0_i_13_n_0\
    );
\spo[30]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_35_n_0\,
      I1 => \spo[30]_INST_0_i_36_n_0\,
      O => \spo[30]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[30]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8380FFFF83800000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(8),
      I2 => a(5),
      I3 => \spo[30]_INST_0_i_37_n_0\,
      I4 => a(0),
      I5 => \spo[31]_INST_0_i_20_n_0\,
      O => \spo[30]_INST_0_i_15_n_0\
    );
\spo[30]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_37_n_0\,
      I1 => \spo[30]_INST_0_i_38_n_0\,
      I2 => a(8),
      I3 => \spo[30]_INST_0_i_39_n_0\,
      I4 => a(5),
      I5 => \spo[30]_INST_0_i_40_n_0\,
      O => \spo[30]_INST_0_i_16_n_0\
    );
\spo[30]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_37_n_0\,
      I1 => \spo[30]_INST_0_i_41_n_0\,
      I2 => a(8),
      I3 => \spo[30]_INST_0_i_42_n_0\,
      I4 => a(5),
      I5 => \spo[30]_INST_0_i_43_n_0\,
      O => \spo[30]_INST_0_i_17_n_0\
    );
\spo[30]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \spo[30]_INST_0_i_44_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_31_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[30]_INST_0_i_45_n_0\,
      O => \spo[30]_INST_0_i_18_n_0\
    );
\spo[30]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000080"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[30]_INST_0_i_19_n_0\
    );
\spo[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_7_n_0\,
      I1 => \spo[30]_INST_0_i_8_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_9_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_10_n_0\,
      O => \spo[30]_INST_0_i_2_n_0\
    );
\spo[30]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010650000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[30]_INST_0_i_20_n_0\
    );
\spo[30]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00C40010006600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[30]_INST_0_i_21_n_0\
    );
\spo[30]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"802000B0"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[30]_INST_0_i_22_n_0\
    );
\spo[30]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500020000006000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[30]_INST_0_i_23_n_0\
    );
\spo[30]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20800000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(5),
      O => \spo[30]_INST_0_i_24_n_0\
    );
\spo[30]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045005000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(5),
      O => \spo[30]_INST_0_i_25_n_0\
    );
\spo[30]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00000065000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[30]_INST_0_i_26_n_0\
    );
\spo[30]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      O => \spo[30]_INST_0_i_27_n_0\
    );
\spo[30]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a(2),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(1),
      O => \spo[30]_INST_0_i_28_n_0\
    );
\spo[30]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(2),
      O => \spo[30]_INST_0_i_29_n_0\
    );
\spo[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_11_n_0\,
      I1 => \spo[30]_INST_0_i_12_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_14_n_0\,
      O => \spo[30]_INST_0_i_3_n_0\
    );
\spo[30]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"490044008C000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[30]_INST_0_i_30_n_0\
    );
\spo[30]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200600010008800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[30]_INST_0_i_31_n_0\
    );
\spo[30]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00420005008000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[30]_INST_0_i_32_n_0\
    );
\spo[30]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E00C300"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[30]_INST_0_i_33_n_0\
    );
\spo[30]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0034000085000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[30]_INST_0_i_34_n_0\
    );
\spo[30]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80A02000C00000C0"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[30]_INST_0_i_35_n_0\
    );
\spo[30]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400480004000100"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[30]_INST_0_i_36_n_0\
    );
\spo[30]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(1),
      O => \spo[30]_INST_0_i_37_n_0\
    );
\spo[30]_INST_0_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => a(1),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(0),
      O => \spo[30]_INST_0_i_38_n_0\
    );
\spo[30]_INST_0_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      I3 => a(0),
      O => \spo[30]_INST_0_i_39_n_0\
    );
\spo[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_15_n_0\,
      I1 => \spo[30]_INST_0_i_16_n_0\,
      I2 => a(6),
      I3 => \spo[30]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_18_n_0\,
      O => \spo[30]_INST_0_i_4_n_0\
    );
\spo[30]_INST_0_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30402000"
    )
        port map (
      I0 => a(0),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      I4 => a(1),
      O => \spo[30]_INST_0_i_40_n_0\
    );
\spo[30]_INST_0_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(1),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(0),
      O => \spo[30]_INST_0_i_41_n_0\
    );
\spo[30]_INST_0_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002080"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(0),
      O => \spo[30]_INST_0_i_42_n_0\
    );
\spo[30]_INST_0_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800040"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[30]_INST_0_i_43_n_0\
    );
\spo[30]_INST_0_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C080"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      O => \spo[30]_INST_0_i_44_n_0\
    );
\spo[30]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"051300009C880000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(9),
      O => \spo[30]_INST_0_i_45_n_0\
    );
\spo[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F008F8F0F008080"
    )
        port map (
      I0 => a(5),
      I1 => \spo[30]_INST_0_i_19_n_0\,
      I2 => a(7),
      I3 => \spo[30]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[30]_INST_0_i_21_n_0\,
      O => \spo[30]_INST_0_i_5_n_0\
    );
\spo[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_22_n_0\,
      I1 => \spo[30]_INST_0_i_23_n_0\,
      I2 => a(7),
      I3 => \spo[30]_INST_0_i_24_n_0\,
      I4 => a(8),
      I5 => \spo[30]_INST_0_i_25_n_0\,
      O => \spo[30]_INST_0_i_6_n_0\
    );
\spo[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2010FFFF20100000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[30]_INST_0_i_26_n_0\,
      O => \spo[30]_INST_0_i_7_n_0\
    );
\spo[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B80030333000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(8),
      I2 => \spo[30]_INST_0_i_27_n_0\,
      I3 => a(5),
      I4 => \spo[30]_INST_0_i_28_n_0\,
      I5 => a(0),
      O => \spo[30]_INST_0_i_8_n_0\
    );
\spo[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080000F0000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_23_n_0\,
      I2 => a(8),
      I3 => a(1),
      I4 => \spo[30]_INST_0_i_29_n_0\,
      I5 => a(5),
      O => \spo[30]_INST_0_i_9_n_0\
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[31]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[31]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[31]_INST_0_i_4_n_0\,
      O => spo(31)
    );
\spo[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_5_n_0\,
      I1 => \spo[31]_INST_0_i_6_n_0\,
      I2 => a(6),
      I3 => \spo[31]_INST_0_i_7_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_8_n_0\,
      O => \spo[31]_INST_0_i_1_n_0\
    );
\spo[31]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088FFFF30880000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[31]_INST_0_i_32_n_0\,
      O => \spo[31]_INST_0_i_10_n_0\
    );
\spo[31]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => a(0),
      I1 => \spo[31]_INST_0_i_23_n_0\,
      I2 => a(8),
      I3 => \spo[31]_INST_0_i_33_n_0\,
      I4 => a(5),
      I5 => \spo[31]_INST_0_i_34_n_0\,
      O => \spo[31]_INST_0_i_11_n_0\
    );
\spo[31]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \spo[31]_INST_0_i_35_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(5),
      I4 => \spo[31]_INST_0_i_36_n_0\,
      I5 => a(0),
      O => \spo[31]_INST_0_i_12_n_0\
    );
\spo[31]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80FFFF8F800000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_37_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[31]_INST_0_i_38_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_39_n_0\,
      O => \spo[31]_INST_0_i_13_n_0\
    );
\spo[31]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spo[31]_INST_0_i_40_n_0\,
      I1 => a(7),
      I2 => \spo[31]_INST_0_i_41_n_0\,
      I3 => a(8),
      I4 => \spo[31]_INST_0_i_42_n_0\,
      O => \spo[31]_INST_0_i_14_n_0\
    );
\spo[31]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_43_n_0\,
      I1 => a(0),
      I2 => a(5),
      I3 => \spo[31]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[31]_INST_0_i_44_n_0\,
      O => \spo[31]_INST_0_i_15_n_0\
    );
\spo[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A0450040"
    )
        port map (
      I0 => a(8),
      I1 => \spo[31]_INST_0_i_45_n_0\,
      I2 => a(5),
      I3 => a(1),
      I4 => \spo[31]_INST_0_i_22_n_0\,
      I5 => a(0),
      O => \spo[31]_INST_0_i_16_n_0\
    );
\spo[31]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[31]_INST_0_i_46_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_47_n_0\,
      I3 => a(0),
      I4 => \spo[31]_INST_0_i_26_n_0\,
      I5 => a(8),
      O => \spo[31]_INST_0_i_17_n_0\
    );
\spo[31]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \spo[31]_INST_0_i_48_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(0),
      I4 => a(5),
      I5 => \spo[31]_INST_0_i_49_n_0\,
      O => \spo[31]_INST_0_i_18_n_0\
    );
\spo[31]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8070"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      O => \spo[31]_INST_0_i_19_n_0\
    );
\spo[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_9_n_0\,
      I1 => \spo[31]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[31]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_12_n_0\,
      O => \spo[31]_INST_0_i_2_n_0\
    );
\spo[31]_INST_0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(1),
      O => \spo[31]_INST_0_i_20_n_0\
    );
\spo[31]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80C0"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(2),
      O => \spo[31]_INST_0_i_21_n_0\
    );
\spo[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a(9),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(2),
      O => \spo[31]_INST_0_i_22_n_0\
    );
\spo[31]_INST_0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      O => \spo[31]_INST_0_i_23_n_0\
    );
\spo[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B02000009550000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[31]_INST_0_i_50_n_0\,
      I5 => a(2),
      O => \spo[31]_INST_0_i_24_n_0\
    );
\spo[31]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => a(2),
      I1 => a(10),
      I2 => a(12),
      I3 => a(11),
      I4 => a(13),
      I5 => a(1),
      O => \spo[31]_INST_0_i_25_n_0\
    );
\spo[31]_INST_0_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spo[28]_INST_0_i_32_n_0\,
      I1 => a(1),
      O => \spo[31]_INST_0_i_26_n_0\
    );
\spo[31]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400C100"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      O => \spo[31]_INST_0_i_27_n_0\
    );
\spo[31]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C00C4000000E600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[31]_INST_0_i_28_n_0\
    );
\spo[31]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004044004"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_50_n_0\,
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[31]_INST_0_i_29_n_0\
    );
\spo[31]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_13_n_0\,
      I1 => \spo[31]_INST_0_i_14_n_0\,
      O => \spo[31]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(13),
      I1 => a(11),
      I2 => a(12),
      I3 => a(10),
      I4 => a(9),
      O => \spo[31]_INST_0_i_30_n_0\
    );
\spo[31]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      O => \spo[31]_INST_0_i_31_n_0\
    );
\spo[31]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000085000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[31]_INST_0_i_32_n_0\
    );
\spo[31]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17000000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      O => \spo[31]_INST_0_i_33_n_0\
    );
\spo[31]_INST_0_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40008000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(9),
      I4 => a(1),
      O => \spo[31]_INST_0_i_34_n_0\
    );
\spo[31]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5899000049800000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(9),
      O => \spo[31]_INST_0_i_35_n_0\
    );
\spo[31]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      O => \spo[31]_INST_0_i_36_n_0\
    );
\spo[31]_INST_0_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      I3 => a(0),
      O => \spo[31]_INST_0_i_37_n_0\
    );
\spo[31]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000030000400C000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[31]_INST_0_i_38_n_0\
    );
\spo[31]_INST_0_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_51_n_0\,
      I1 => \spo[31]_INST_0_i_52_n_0\,
      O => \spo[31]_INST_0_i_39_n_0\,
      S => a(8)
    );
\spo[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_15_n_0\,
      I1 => \spo[31]_INST_0_i_16_n_0\,
      I2 => a(6),
      I3 => \spo[31]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_18_n_0\,
      O => \spo[31]_INST_0_i_4_n_0\
    );
\spo[31]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"820060000000F000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[31]_INST_0_i_40_n_0\
    );
\spo[31]_INST_0_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200030"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[31]_INST_0_i_41_n_0\
    );
\spo[31]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200780004002000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[31]_INST_0_i_42_n_0\
    );
\spo[31]_INST_0_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => a(1),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(2),
      O => \spo[31]_INST_0_i_43_n_0\
    );
\spo[31]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000408040"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_50_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[31]_INST_0_i_44_n_0\
    );
\spo[31]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000001"
    )
        port map (
      I0 => a(2),
      I1 => a(13),
      I2 => a(11),
      I3 => a(12),
      I4 => a(10),
      I5 => a(9),
      O => \spo[31]_INST_0_i_45_n_0\
    );
\spo[31]_INST_0_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E9000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      O => \spo[31]_INST_0_i_46_n_0\
    );
\spo[31]_INST_0_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4800"
    )
        port map (
      I0 => a(9),
      I1 => \spo[31]_INST_0_i_50_n_0\,
      I2 => a(2),
      I3 => a(1),
      O => \spo[31]_INST_0_i_47_n_0\
    );
\spo[31]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800B00000000000"
    )
        port map (
      I0 => a(9),
      I1 => a(5),
      I2 => a(1),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(2),
      I5 => a(0),
      O => \spo[31]_INST_0_i_48_n_0\
    );
\spo[31]_INST_0_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40003000"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(1),
      O => \spo[31]_INST_0_i_49_n_0\
    );
\spo[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888833300030"
    )
        port map (
      I0 => \spo[31]_INST_0_i_19_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(0),
      I4 => \spo[31]_INST_0_i_21_n_0\,
      I5 => a(5),
      O => \spo[31]_INST_0_i_5_n_0\
    );
\spo[31]_INST_0_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => a(10),
      I1 => a(12),
      I2 => a(11),
      I3 => a(13),
      O => \spo[31]_INST_0_i_50_n_0\
    );
\spo[31]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8020A000404000C0"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(1),
      I4 => a(9),
      I5 => a(0),
      O => \spo[31]_INST_0_i_51_n_0\
    );
\spo[31]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500480004000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_50_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[31]_INST_0_i_52_n_0\
    );
\spo[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088FFFF30880000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_22_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[31]_INST_0_i_24_n_0\,
      O => \spo[31]_INST_0_i_6_n_0\
    );
\spo[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4055554F400000"
    )
        port map (
      I0 => a(8),
      I1 => \spo[31]_INST_0_i_25_n_0\,
      I2 => a(0),
      I3 => \spo[31]_INST_0_i_26_n_0\,
      I4 => a(5),
      I5 => \spo[31]_INST_0_i_27_n_0\,
      O => \spo[31]_INST_0_i_7_n_0\
    );
\spo[31]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_28_n_0\,
      I1 => \spo[31]_INST_0_i_29_n_0\,
      O => \spo[31]_INST_0_i_8_n_0\,
      S => a(8)
    );
\spo[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000002F0020"
    )
        port map (
      I0 => \spo[31]_INST_0_i_30_n_0\,
      I1 => a(2),
      I2 => a(8),
      I3 => a(0),
      I4 => \spo[31]_INST_0_i_31_n_0\,
      I5 => a(5),
      O => \spo[31]_INST_0_i_9_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => \spo[3]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[3]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[3]_INST_0_i_4_n_0\,
      O => spo(3)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_5_n_0\,
      I1 => \spo[3]_INST_0_i_6_n_0\,
      O => \spo[3]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_32_n_0\,
      I1 => \spo[3]_INST_0_i_33_n_0\,
      O => \spo[3]_INST_0_i_10_n_0\,
      S => a(8)
    );
\spo[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_29_n_0\,
      I1 => \spo[30]_INST_0_i_38_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_34_n_0\,
      I4 => a(5),
      I5 => \spo[19]_INST_0_i_22_n_0\,
      O => \spo[3]_INST_0_i_11_n_0\
    );
\spo[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_43_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[3]_INST_0_i_35_n_0\,
      O => \spo[3]_INST_0_i_12_n_0\
    );
\spo[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_29_n_0\,
      I1 => \spo[3]_INST_0_i_27_n_0\,
      I2 => a(8),
      I3 => \spo[30]_INST_0_i_41_n_0\,
      I4 => a(5),
      I5 => \spo[18]_INST_0_i_32_n_0\,
      O => \spo[3]_INST_0_i_13_n_0\
    );
\spo[3]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_36_n_0\,
      I1 => \spo[3]_INST_0_i_37_n_0\,
      O => \spo[3]_INST_0_i_14_n_0\,
      S => a(8)
    );
\spo[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A000CF00C000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => \spo[31]_INST_0_i_43_n_0\,
      I2 => a(8),
      I3 => a(0),
      I4 => \spo[30]_INST_0_i_29_n_0\,
      I5 => a(5),
      O => \spo[3]_INST_0_i_15_n_0\
    );
\spo[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB8888B888B888"
    )
        port map (
      I0 => \spo[3]_INST_0_i_38_n_0\,
      I1 => a(8),
      I2 => \spo[30]_INST_0_i_29_n_0\,
      I3 => a(5),
      I4 => \spo[28]_INST_0_i_32_n_0\,
      I5 => a(0),
      O => \spo[3]_INST_0_i_16_n_0\
    );
\spo[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(5),
      I2 => \spo[31]_INST_0_i_23_n_0\,
      I3 => a(0),
      I4 => a(8),
      I5 => \spo[3]_INST_0_i_39_n_0\,
      O => \spo[3]_INST_0_i_17_n_0\
    );
\spo[3]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84003800"
    )
        port map (
      I0 => a(1),
      I1 => a(8),
      I2 => a(0),
      I3 => \spo[29]_INST_0_i_23_n_0\,
      I4 => a(5),
      O => \spo[3]_INST_0_i_18_n_0\
    );
\spo[3]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0100080"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      I4 => a(0),
      O => \spo[3]_INST_0_i_19_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_7_n_0\,
      I1 => \spo[3]_INST_0_i_8_n_0\,
      I2 => a(6),
      I3 => \spo[3]_INST_0_i_9_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_10_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8186000018020000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[3]_INST_0_i_20_n_0\
    );
\spo[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010044000800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[3]_INST_0_i_21_n_0\
    );
\spo[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6040401000802080"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[15]_INST_0_i_19_n_0\,
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[3]_INST_0_i_22_n_0\
    );
\spo[3]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80004020"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[3]_INST_0_i_23_n_0\
    );
\spo[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000420004003000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[15]_INST_0_i_19_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[3]_INST_0_i_24_n_0\
    );
\spo[3]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00201040"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      I4 => a(0),
      O => \spo[3]_INST_0_i_25_n_0\
    );
\spo[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2604000018110000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(2),
      O => \spo[3]_INST_0_i_26_n_0\
    );
\spo[3]_INST_0_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => a(0),
      I1 => \spo[28]_INST_0_i_32_n_0\,
      I2 => a(1),
      O => \spo[3]_INST_0_i_27_n_0\
    );
\spo[3]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80003000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(2),
      O => \spo[3]_INST_0_i_28_n_0\
    );
\spo[3]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0048"
    )
        port map (
      I0 => a(2),
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(1),
      I3 => a(0),
      O => \spo[3]_INST_0_i_29_n_0\
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_11_n_0\,
      I1 => \spo[3]_INST_0_i_12_n_0\,
      I2 => a(6),
      I3 => \spo[3]_INST_0_i_13_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_14_n_0\,
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(0),
      O => \spo[3]_INST_0_i_30_n_0\
    );
\spo[3]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(0),
      O => \spo[3]_INST_0_i_31_n_0\
    );
\spo[3]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E90048000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[10]_INST_0_i_13_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[3]_INST_0_i_32_n_0\
    );
\spo[3]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008008040"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[3]_INST_0_i_33_n_0\
    );
\spo[3]_INST_0_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008008"
    )
        port map (
      I0 => a(2),
      I1 => \spo[10]_INST_0_i_13_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      O => \spo[3]_INST_0_i_34_n_0\
    );
\spo[3]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"070A000002400000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(1),
      O => \spo[3]_INST_0_i_35_n_0\
    );
\spo[3]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200090004010"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => \spo[10]_INST_0_i_13_n_0\,
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[3]_INST_0_i_36_n_0\
    );
\spo[3]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0042000011300000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[10]_INST_0_i_13_n_0\,
      I5 => a(2),
      O => \spo[3]_INST_0_i_37_n_0\
    );
\spo[3]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40001800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[3]_INST_0_i_38_n_0\
    );
\spo[3]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C421000019000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[15]_INST_0_i_19_n_0\,
      I5 => a(9),
      O => \spo[3]_INST_0_i_39_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_15_n_0\,
      I1 => \spo[3]_INST_0_i_16_n_0\,
      I2 => a(6),
      I3 => \spo[3]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_18_n_0\,
      O => \spo[3]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_19_n_0\,
      I1 => \spo[3]_INST_0_i_20_n_0\,
      I2 => a(7),
      I3 => \spo[3]_INST_0_i_21_n_0\,
      I4 => a(8),
      I5 => \spo[3]_INST_0_i_22_n_0\,
      O => \spo[3]_INST_0_i_5_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_23_n_0\,
      I1 => \spo[3]_INST_0_i_24_n_0\,
      I2 => a(7),
      I3 => \spo[3]_INST_0_i_25_n_0\,
      I4 => a(8),
      I5 => \spo[3]_INST_0_i_26_n_0\,
      O => \spo[3]_INST_0_i_6_n_0\
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"380B080800000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_20_n_0\,
      I1 => a(8),
      I2 => a(5),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_23_n_0\,
      I5 => a(0),
      O => \spo[3]_INST_0_i_7_n_0\
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_27_n_0\,
      I1 => \spo[23]_INST_0_i_37_n_0\,
      I2 => a(8),
      I3 => \spo[19]_INST_0_i_29_n_0\,
      I4 => a(5),
      I5 => \spo[3]_INST_0_i_28_n_0\,
      O => \spo[3]_INST_0_i_8_n_0\
    );
\spo[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_29_n_0\,
      I1 => \spo[29]_INST_0_i_29_n_0\,
      I2 => a(8),
      I3 => \spo[3]_INST_0_i_30_n_0\,
      I4 => a(5),
      I5 => \spo[3]_INST_0_i_31_n_0\,
      O => \spo[3]_INST_0_i_9_n_0\
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[4]_INST_0_i_1_n_0\,
      I1 => a(3),
      I2 => \spo[4]_INST_0_i_2_n_0\,
      I3 => a(4),
      I4 => \spo[4]_INST_0_i_3_n_0\,
      O => spo(4)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_4_n_0\,
      I1 => \spo[4]_INST_0_i_5_n_0\,
      I2 => a(4),
      I3 => \spo[4]_INST_0_i_6_n_0\,
      I4 => a(6),
      I5 => \spo[4]_INST_0_i_7_n_0\,
      O => \spo[4]_INST_0_i_1_n_0\
    );
\spo[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_31_n_0\,
      I1 => \spo[4]_INST_0_i_32_n_0\,
      I2 => a(7),
      I3 => \spo[4]_INST_0_i_33_n_0\,
      I4 => a(8),
      I5 => \spo[4]_INST_0_i_34_n_0\,
      O => \spo[4]_INST_0_i_10_n_0\
    );
\spo[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_15_n_0\,
      I1 => \spo[4]_INST_0_i_35_n_0\,
      I2 => a(7),
      I3 => \spo[4]_INST_0_i_36_n_0\,
      I4 => a(8),
      I5 => \spo[4]_INST_0_i_37_n_0\,
      O => \spo[4]_INST_0_i_11_n_0\
    );
\spo[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_38_n_0\,
      I1 => \spo[4]_INST_0_i_39_n_0\,
      I2 => a(7),
      I3 => \spo[4]_INST_0_i_31_n_0\,
      I4 => a(8),
      I5 => \spo[4]_INST_0_i_40_n_0\,
      O => \spo[4]_INST_0_i_12_n_0\
    );
\spo[4]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF70000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[4]_INST_0_i_13_n_0\
    );
\spo[4]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5CBFFF5B00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(2),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_14_n_0\
    );
\spo[4]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7B009800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[4]_INST_0_i_15_n_0\
    );
\spo[4]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FEFF7D00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_16_n_0\
    );
\spo[4]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FFF0000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[4]_INST_0_i_17_n_0\
    );
\spo[4]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F79EFFF300000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_18_n_0\
    );
\spo[4]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"530E000007590000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[4]_INST_0_i_19_n_0\
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[4]_INST_0_i_8_n_0\,
      I1 => a(7),
      I2 => \spo[4]_INST_0_i_9_n_0\,
      I3 => a(6),
      I4 => \spo[4]_INST_0_i_10_n_0\,
      O => \spo[4]_INST_0_i_2_n_0\
    );
\spo[4]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B79A0000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[4]_INST_0_i_20_n_0\
    );
\spo[4]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B700F800"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(0),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[4]_INST_0_i_21_n_0\
    );
\spo[4]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7F0FD0F00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_22_n_0\
    );
\spo[4]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFF4700000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_23_n_0\
    );
\spo[4]_INST_0_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_41_n_0\,
      I1 => \spo[4]_INST_0_i_42_n_0\,
      O => \spo[4]_INST_0_i_24_n_0\,
      S => a(8)
    );
\spo[4]_INST_0_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_43_n_0\,
      I1 => \spo[4]_INST_0_i_44_n_0\,
      O => \spo[4]_INST_0_i_25_n_0\,
      S => a(8)
    );
\spo[4]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBD600004FFF0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[4]_INST_0_i_26_n_0\
    );
\spo[4]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE003F00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[4]_INST_0_i_27_n_0\
    );
\spo[4]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70C0"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      O => \spo[4]_INST_0_i_28_n_0\
    );
\spo[4]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => a(2),
      I3 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_29_n_0\
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_11_n_0\,
      I1 => \spo[4]_INST_0_i_12_n_0\,
      O => \spo[4]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => a(10),
      I1 => a(12),
      I2 => a(11),
      I3 => a(13),
      O => \spo[4]_INST_0_i_30_n_0\
    );
\spo[4]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"63FD0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[4]_INST_0_i_31_n_0\
    );
\spo[4]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87FF7FFF00000000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(9),
      I3 => a(2),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_32_n_0\
    );
\spo[4]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55F6557100000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_33_n_0\
    );
\spo[4]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFF50000BFBE0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[4]_INST_0_i_34_n_0\
    );
\spo[4]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF700007DB40000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[4]_INST_0_i_35_n_0\
    );
\spo[4]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F407D78100000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_36_n_0\
    );
\spo[4]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF327FBD00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_37_n_0\
    );
\spo[4]_INST_0_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7EFF0000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(5),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[4]_INST_0_i_38_n_0\
    );
\spo[4]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00C7CF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_39_n_0\
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_13_n_0\,
      I1 => \spo[4]_INST_0_i_14_n_0\,
      I2 => a(7),
      I3 => \spo[4]_INST_0_i_15_n_0\,
      I4 => a(8),
      I5 => \spo[4]_INST_0_i_16_n_0\,
      O => \spo[4]_INST_0_i_4_n_0\
    );
\spo[4]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD980000FF470000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[4]_INST_0_i_40_n_0\
    );
\spo[4]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF166BBF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_41_n_0\
    );
\spo[4]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FC700007FFC0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[4]_INST_0_i_42_n_0\
    );
\spo[4]_INST_0_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF009200"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => \spo[4]_INST_0_i_30_n_0\,
      I4 => a(9),
      O => \spo[4]_INST_0_i_43_n_0\
    );
\spo[4]_INST_0_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B7003400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[4]_INST_0_i_44_n_0\
    );
\spo[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_17_n_0\,
      I1 => \spo[4]_INST_0_i_18_n_0\,
      I2 => a(7),
      I3 => \spo[4]_INST_0_i_19_n_0\,
      I4 => a(8),
      I5 => \spo[4]_INST_0_i_20_n_0\,
      O => \spo[4]_INST_0_i_5_n_0\
    );
\spo[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_21_n_0\,
      I1 => \spo[4]_INST_0_i_22_n_0\,
      I2 => a(7),
      I3 => \spo[4]_INST_0_i_17_n_0\,
      I4 => a(8),
      I5 => \spo[4]_INST_0_i_23_n_0\,
      O => \spo[4]_INST_0_i_6_n_0\
    );
\spo[4]_INST_0_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_24_n_0\,
      I1 => \spo[4]_INST_0_i_25_n_0\,
      O => \spo[4]_INST_0_i_7_n_0\,
      S => a(7)
    );
\spo[4]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_26_n_0\,
      I1 => \spo[4]_INST_0_i_27_n_0\,
      O => \spo[4]_INST_0_i_8_n_0\,
      S => a(8)
    );
\spo[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF0F00C0C0"
    )
        port map (
      I0 => a(9),
      I1 => \spo[4]_INST_0_i_28_n_0\,
      I2 => a(8),
      I3 => \spo[4]_INST_0_i_29_n_0\,
      I4 => a(5),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[4]_INST_0_i_9_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => a(4),
      I2 => \spo[5]_INST_0_i_2_n_0\,
      I3 => a(3),
      I4 => \spo[5]_INST_0_i_3_n_0\,
      O => spo(5)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_4_n_0\,
      I1 => \spo[5]_INST_0_i_5_n_0\,
      O => \spo[5]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_33_n_0\,
      I1 => \spo[5]_INST_0_i_34_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_29_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_35_n_0\,
      O => \spo[5]_INST_0_i_10_n_0\
    );
\spo[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_18_n_0\,
      I1 => \spo[5]_INST_0_i_36_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_37_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_38_n_0\,
      O => \spo[5]_INST_0_i_11_n_0\
    );
\spo[5]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E17F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_12_n_0\
    );
\spo[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E76E0000F8F70000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[5]_INST_0_i_13_n_0\
    );
\spo[5]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47420000075D0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[5]_INST_0_i_14_n_0\
    );
\spo[5]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7E70000EDDA0000"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[5]_INST_0_i_15_n_0\
    );
\spo[5]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCB70000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_16_n_0\
    );
\spo[5]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F95E9FF900000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_17_n_0\
    );
\spo[5]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"677F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_18_n_0\
    );
\spo[5]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFD9D00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_19_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_6_n_0\,
      I1 => \spo[5]_INST_0_i_7_n_0\,
      O => \spo[5]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9B00BE00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[5]_INST_0_i_20_n_0\
    );
\spo[5]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FB00000FF00000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[5]_INST_0_i_21_n_0\
    );
\spo[5]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"764F000073F00000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[5]_INST_0_i_22_n_0\
    );
\spo[5]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B75E3FF700000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_23_n_0\
    );
\spo[5]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"61FF0000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_24_n_0\
    );
\spo[5]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73B70000C3FC0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[5]_INST_0_i_25_n_0\
    );
\spo[5]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"76BDEDEB00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_26_n_0\
    );
\spo[5]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_39_n_0\,
      I1 => \spo[5]_INST_0_i_40_n_0\,
      O => \spo[5]_INST_0_i_27_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_41_n_0\,
      I1 => \spo[5]_INST_0_i_42_n_0\,
      O => \spo[5]_INST_0_i_28_n_0\,
      S => a(8)
    );
\spo[5]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"63790000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_29_n_0\
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_8_n_0\,
      I1 => \spo[5]_INST_0_i_9_n_0\,
      I2 => a(4),
      I3 => \spo[5]_INST_0_i_10_n_0\,
      I4 => a(6),
      I5 => \spo[5]_INST_0_i_11_n_0\,
      O => \spo[5]_INST_0_i_3_n_0\
    );
\spo[5]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFF6F3F00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_30_n_0\
    );
\spo[5]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D4A00005F5F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[5]_INST_0_i_31_n_0\
    );
\spo[5]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7F30000FFE20000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[5]_INST_0_i_32_n_0\
    );
\spo[5]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBF50000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_33_n_0\
    );
\spo[5]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F33C7BF300000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_34_n_0\
    );
\spo[5]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7CCFFFB00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(2),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_35_n_0\
    );
\spo[5]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFDF0000CDE20000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[5]_INST_0_i_36_n_0\
    );
\spo[5]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66FE0000DE1F0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(2),
      O => \spo[5]_INST_0_i_37_n_0\
    );
\spo[5]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B77000063240000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[5]_INST_0_i_38_n_0\
    );
\spo[5]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7EF0000FFF80000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => \spo[4]_INST_0_i_30_n_0\,
      I5 => a(9),
      O => \spo[5]_INST_0_i_39_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_12_n_0\,
      I1 => \spo[5]_INST_0_i_13_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_14_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_15_n_0\,
      O => \spo[5]_INST_0_i_4_n_0\
    );
\spo[5]_INST_0_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83FF0000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_40_n_0\
    );
\spo[5]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD7C9BFF00000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(9),
      I4 => a(1),
      I5 => \spo[4]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_41_n_0\
    );
\spo[5]_INST_0_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4FF0000"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      O => \spo[5]_INST_0_i_42_n_0\
    );
\spo[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_16_n_0\,
      I1 => \spo[5]_INST_0_i_17_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_18_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_19_n_0\,
      O => \spo[5]_INST_0_i_5_n_0\
    );
\spo[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_20_n_0\,
      I1 => \spo[5]_INST_0_i_21_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_22_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_23_n_0\,
      O => \spo[5]_INST_0_i_6_n_0\
    );
\spo[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_24_n_0\,
      I1 => \spo[5]_INST_0_i_25_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_12_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_26_n_0\,
      O => \spo[5]_INST_0_i_7_n_0\
    );
\spo[5]_INST_0_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_27_n_0\,
      I1 => \spo[5]_INST_0_i_28_n_0\,
      O => \spo[5]_INST_0_i_8_n_0\,
      S => a(7)
    );
\spo[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_29_n_0\,
      I1 => \spo[5]_INST_0_i_30_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_31_n_0\,
      I4 => a(8),
      I5 => \spo[5]_INST_0_i_32_n_0\,
      O => \spo[5]_INST_0_i_9_n_0\
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => a(4),
      I1 => a(7),
      I2 => \spo[6]_INST_0_i_1_n_0\,
      I3 => a(6),
      I4 => a(3),
      O => spo(6)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015005000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      I5 => a(8),
      O => \spo[6]_INST_0_i_1_n_0\
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => a(13),
      I1 => a(11),
      I2 => a(12),
      I3 => a(10),
      I4 => a(9),
      O => \spo[6]_INST_0_i_2_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => \spo[7]_INST_0_i_2_n_0\,
      O => spo(7),
      S => a(3)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000002F0020"
    )
        port map (
      I0 => \spo[7]_INST_0_i_3_n_0\,
      I1 => a(8),
      I2 => a(4),
      I3 => a(7),
      I4 => \spo[7]_INST_0_i_4_n_0\,
      I5 => a(6),
      O => \spo[7]_INST_0_i_1_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \spo[7]_INST_0_i_5_n_0\,
      I1 => a(4),
      I2 => a(7),
      I3 => \spo[7]_INST_0_i_6_n_0\,
      I4 => a(6),
      O => \spo[7]_INST_0_i_2_n_0\
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => \spo[31]_INST_0_i_30_n_0\,
      I3 => a(1),
      I4 => a(5),
      O => \spo[7]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FFE20000000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_31_n_0\,
      I1 => a(0),
      I2 => \spo[30]_INST_0_i_27_n_0\,
      I3 => a(8),
      I4 => \spo[24]_INST_0_i_27_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_4_n_0\
    );
\spo[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB308830"
    )
        port map (
      I0 => \spo[30]_INST_0_i_27_n_0\,
      I1 => a(8),
      I2 => \spo[31]_INST_0_i_20_n_0\,
      I3 => a(0),
      I4 => \spo[15]_INST_0_i_18_n_0\,
      I5 => a(5),
      O => \spo[7]_INST_0_i_5_n_0\
    );
\spo[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33800080B0008000"
    )
        port map (
      I0 => \spo[29]_INST_0_i_23_n_0\,
      I1 => a(8),
      I2 => a(5),
      I3 => a(1),
      I4 => \spo[28]_INST_0_i_32_n_0\,
      I5 => a(0),
      O => \spo[7]_INST_0_i_6_n_0\
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => \spo[8]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[8]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[8]_INST_0_i_4_n_0\,
      O => spo(8)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_5_n_0\,
      I1 => \spo[8]_INST_0_i_6_n_0\,
      O => \spo[8]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_25_n_0\,
      I1 => \spo[8]_INST_0_i_26_n_0\,
      O => \spo[8]_INST_0_i_10_n_0\,
      S => a(8)
    );
\spo[8]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \spo[28]_INST_0_i_32_n_0\,
      I1 => a(5),
      I2 => a(8),
      I3 => \spo[8]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_28_n_0\,
      O => \spo[8]_INST_0_i_11_n_0\
    );
\spo[8]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_29_n_0\,
      I1 => \spo[8]_INST_0_i_30_n_0\,
      I2 => a(7),
      I3 => \spo[8]_INST_0_i_31_n_0\,
      I4 => a(8),
      I5 => \spo[8]_INST_0_i_32_n_0\,
      O => \spo[8]_INST_0_i_12_n_0\
    );
\spo[8]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_20_n_0\,
      I1 => \spo[8]_INST_0_i_33_n_0\,
      I2 => a(7),
      I3 => \spo[8]_INST_0_i_34_n_0\,
      I4 => a(8),
      I5 => \spo[8]_INST_0_i_35_n_0\,
      O => \spo[8]_INST_0_i_13_n_0\
    );
\spo[8]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \spo[8]_INST_0_i_36_n_0\,
      I1 => a(7),
      I2 => \spo[28]_INST_0_i_32_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[8]_INST_0_i_37_n_0\,
      O => \spo[8]_INST_0_i_14_n_0\
    );
\spo[8]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8000031570000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_15_n_0\
    );
\spo[8]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000440C4440"
    )
        port map (
      I0 => a(2),
      I1 => \spo[29]_INST_0_i_43_n_0\,
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[8]_INST_0_i_16_n_0\
    );
\spo[8]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17880000623A0000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_17_n_0\
    );
\spo[8]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80100080"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[8]_INST_0_i_18_n_0\
    );
\spo[8]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0DA000022130000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_19_n_0\
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_7_n_0\,
      I1 => \spo[8]_INST_0_i_8_n_0\,
      I2 => a(6),
      I3 => \spo[8]_INST_0_i_9_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_10_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\
    );
\spo[8]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000D600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[8]_INST_0_i_20_n_0\
    );
\spo[8]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080E040105080F0"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      I4 => a(9),
      I5 => a(1),
      O => \spo[8]_INST_0_i_21_n_0\
    );
\spo[8]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003343C300000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(2),
      I5 => \spo[29]_INST_0_i_43_n_0\,
      O => \spo[8]_INST_0_i_22_n_0\
    );
\spo[8]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60004900"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[8]_INST_0_i_23_n_0\
    );
\spo[8]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B4C0000FF0F0000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[8]_INST_0_i_24_n_0\
    );
\spo[8]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40D9000090040000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_25_n_0\
    );
\spo[8]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50008C0000000C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[8]_INST_0_i_26_n_0\
    );
\spo[8]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6100C00008000C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[8]_INST_0_i_27_n_0\
    );
\spo[8]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_38_n_0\,
      I1 => \spo[8]_INST_0_i_39_n_0\,
      O => \spo[8]_INST_0_i_28_n_0\,
      S => a(8)
    );
\spo[8]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00801000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[8]_INST_0_i_29_n_0\
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_11_n_0\,
      I1 => \spo[8]_INST_0_i_12_n_0\,
      O => \spo[8]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A700000000130000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_30_n_0\
    );
\spo[8]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8004300"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[8]_INST_0_i_31_n_0\
    );
\spo[8]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"72AA0000A0110000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_32_n_0\
    );
\spo[8]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000F4BF0000"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[8]_INST_0_i_33_n_0\
    );
\spo[8]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E10000809A0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_34_n_0\
    );
\spo[8]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"241000001D500000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_35_n_0\
    );
\spo[8]_INST_0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_40_n_0\,
      I1 => \spo[8]_INST_0_i_41_n_0\,
      O => \spo[8]_INST_0_i_36_n_0\,
      S => a(8)
    );
\spo[8]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D4C000003970000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_37_n_0\
    );
\spo[8]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0A8000008050000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_38_n_0\
    );
\spo[8]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0015000005EC0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[8]_INST_0_i_39_n_0\
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_13_n_0\,
      I1 => \spo[8]_INST_0_i_14_n_0\,
      O => \spo[8]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"543C00008A330000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_40_n_0\
    );
\spo[8]_INST_0_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4008300"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[8]_INST_0_i_41_n_0\
    );
\spo[8]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[8]_INST_0_i_15_n_0\,
      I1 => a(7),
      I2 => \spo[8]_INST_0_i_16_n_0\,
      I3 => a(8),
      I4 => \spo[8]_INST_0_i_17_n_0\,
      O => \spo[8]_INST_0_i_5_n_0\
    );
\spo[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_18_n_0\,
      I1 => \spo[8]_INST_0_i_19_n_0\,
      I2 => a(7),
      I3 => \spo[8]_INST_0_i_20_n_0\,
      I4 => a(8),
      I5 => \spo[8]_INST_0_i_21_n_0\,
      O => \spo[8]_INST_0_i_6_n_0\
    );
\spo[8]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_22_n_0\,
      I1 => \spo[8]_INST_0_i_23_n_0\,
      O => \spo[8]_INST_0_i_7_n_0\,
      S => a(8)
    );
\spo[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD9C000025130000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => \spo[6]_INST_0_i_2_n_0\,
      I5 => a(2),
      O => \spo[8]_INST_0_i_8_n_0\
    );
\spo[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => \spo[31]_INST_0_i_26_n_0\,
      I1 => a(0),
      I2 => \spo[25]_INST_0_i_29_n_0\,
      I3 => a(5),
      I4 => a(8),
      I5 => \spo[8]_INST_0_i_24_n_0\,
      O => \spo[8]_INST_0_i_9_n_0\
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_1_n_0\,
      I1 => \spo[9]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[9]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \spo[9]_INST_0_i_4_n_0\,
      O => spo(9)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_5_n_0\,
      I1 => \spo[9]_INST_0_i_6_n_0\,
      O => \spo[9]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_32_n_0\,
      I1 => \spo[9]_INST_0_i_33_n_0\,
      O => \spo[9]_INST_0_i_10_n_0\,
      S => a(8)
    );
\spo[9]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[18]_INST_0_i_30_n_0\,
      I1 => a(5),
      I2 => \spo[9]_INST_0_i_34_n_0\,
      I3 => a(8),
      I4 => \spo[9]_INST_0_i_35_n_0\,
      O => \spo[9]_INST_0_i_11_n_0\
    );
\spo[9]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_36_n_0\,
      I1 => \spo[9]_INST_0_i_37_n_0\,
      O => \spo[9]_INST_0_i_12_n_0\,
      S => a(8)
    );
\spo[9]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_21_n_0\,
      I1 => \spo[9]_INST_0_i_38_n_0\,
      I2 => a(7),
      I3 => \spo[9]_INST_0_i_39_n_0\,
      I4 => a(8),
      I5 => \spo[9]_INST_0_i_40_n_0\,
      O => \spo[9]_INST_0_i_13_n_0\
    );
\spo[9]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_41_n_0\,
      I1 => \spo[9]_INST_0_i_42_n_0\,
      I2 => a(7),
      I3 => \spo[9]_INST_0_i_43_n_0\,
      I4 => a(8),
      I5 => \spo[9]_INST_0_i_44_n_0\,
      O => \spo[9]_INST_0_i_14_n_0\
    );
\spo[9]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2100E400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[9]_INST_0_i_15_n_0\
    );
\spo[9]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700860008000600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[9]_INST_0_i_16_n_0\
    );
\spo[9]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000470004000800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(2),
      I5 => a(1),
      O => \spo[9]_INST_0_i_17_n_0\
    );
\spo[9]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E00820010000200"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[9]_INST_0_i_18_n_0\
    );
\spo[9]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000010"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(2),
      I4 => a(0),
      O => \spo[9]_INST_0_i_19_n_0\
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_7_n_0\,
      I1 => \spo[9]_INST_0_i_8_n_0\,
      O => \spo[9]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAE2000020070000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[9]_INST_0_i_20_n_0\
    );
\spo[9]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C000B00"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[9]_INST_0_i_21_n_0\
    );
\spo[9]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0E00000F25D0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[9]_INST_0_i_22_n_0\
    );
\spo[9]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000E00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[9]_INST_0_i_23_n_0\
    );
\spo[9]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800C0007200CC00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[9]_INST_0_i_24_n_0\
    );
\spo[9]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5000800000000C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[9]_INST_0_i_25_n_0\
    );
\spo[9]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0788000070000000"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[9]_INST_0_i_26_n_0\
    );
\spo[9]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2D008600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[9]_INST_0_i_27_n_0\
    );
\spo[9]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4966000030330000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[9]_INST_0_i_28_n_0\
    );
\spo[9]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010200000B510000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(9),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[9]_INST_0_i_29_n_0\
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_9_n_0\,
      I1 => \spo[9]_INST_0_i_10_n_0\,
      I2 => a(6),
      I3 => \spo[9]_INST_0_i_11_n_0\,
      I4 => a(7),
      I5 => \spo[9]_INST_0_i_12_n_0\,
      O => \spo[9]_INST_0_i_3_n_0\
    );
\spo[9]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9848000005000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[9]_INST_0_i_30_n_0\
    );
\spo[9]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"46001800"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[9]_INST_0_i_31_n_0\
    );
\spo[9]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"58A00000A0010000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[9]_INST_0_i_32_n_0\
    );
\spo[9]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47008C00"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[31]_INST_0_i_30_n_0\,
      I4 => a(1),
      O => \spo[9]_INST_0_i_33_n_0\
    );
\spo[9]_INST_0_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => \spo[28]_INST_0_i_32_n_0\,
      O => \spo[9]_INST_0_i_34_n_0\
    );
\spo[9]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7095000000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[9]_INST_0_i_35_n_0\
    );
\spo[9]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000800000000300"
    )
        port map (
      I0 => a(0),
      I1 => a(5),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[9]_INST_0_i_36_n_0\
    );
\spo[9]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10500050000040A0"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => \spo[29]_INST_0_i_43_n_0\,
      I3 => a(2),
      I4 => a(9),
      I5 => a(1),
      O => \spo[9]_INST_0_i_37_n_0\
    );
\spo[9]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000D20000000600"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[29]_INST_0_i_43_n_0\,
      I4 => a(9),
      I5 => a(1),
      O => \spo[9]_INST_0_i_38_n_0\
    );
\spo[9]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C1000050980000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[9]_INST_0_i_39_n_0\
    );
\spo[9]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_13_n_0\,
      I1 => \spo[9]_INST_0_i_14_n_0\,
      O => \spo[9]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7800000087000000"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(0),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(1),
      O => \spo[9]_INST_0_i_40_n_0\
    );
\spo[9]_INST_0_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2100C400"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(1),
      O => \spo[9]_INST_0_i_41_n_0\
    );
\spo[9]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C30000022330000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(2),
      O => \spo[9]_INST_0_i_42_n_0\
    );
\spo[9]_INST_0_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15002800"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(0),
      I3 => \spo[6]_INST_0_i_2_n_0\,
      I4 => a(2),
      O => \spo[9]_INST_0_i_43_n_0\
    );
\spo[9]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0A0000E83B0000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      I5 => a(9),
      O => \spo[9]_INST_0_i_44_n_0\
    );
\spo[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_15_n_0\,
      I1 => \spo[9]_INST_0_i_16_n_0\,
      I2 => a(7),
      I3 => \spo[9]_INST_0_i_17_n_0\,
      I4 => a(8),
      I5 => \spo[9]_INST_0_i_18_n_0\,
      O => \spo[9]_INST_0_i_5_n_0\
    );
\spo[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_19_n_0\,
      I1 => \spo[9]_INST_0_i_20_n_0\,
      I2 => a(7),
      I3 => \spo[9]_INST_0_i_21_n_0\,
      I4 => a(8),
      I5 => \spo[9]_INST_0_i_22_n_0\,
      O => \spo[9]_INST_0_i_6_n_0\
    );
\spo[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_23_n_0\,
      I1 => \spo[9]_INST_0_i_24_n_0\,
      I2 => a(7),
      I3 => \spo[9]_INST_0_i_25_n_0\,
      I4 => a(8),
      I5 => \spo[9]_INST_0_i_26_n_0\,
      O => \spo[9]_INST_0_i_7_n_0\
    );
\spo[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[9]_INST_0_i_27_n_0\,
      I1 => \spo[9]_INST_0_i_28_n_0\,
      I2 => a(7),
      I3 => \spo[9]_INST_0_i_15_n_0\,
      I4 => a(8),
      I5 => \spo[9]_INST_0_i_29_n_0\,
      O => \spo[9]_INST_0_i_8_n_0\
    );
\spo[9]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_30_n_0\,
      I1 => \spo[9]_INST_0_i_31_n_0\,
      O => \spo[9]_INST_0_i_9_n_0\,
      S => a(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity inst_rom_dist_mem_gen_v8_0_12_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of inst_rom_dist_mem_gen_v8_0_12_synth : entity is "dist_mem_gen_v8_0_12_synth";
end inst_rom_dist_mem_gen_v8_0_12_synth;

architecture STRUCTURE of inst_rom_dist_mem_gen_v8_0_12_synth is
begin
\gen_rom.rom_inst\: entity work.inst_rom_rom
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(31 downto 0) => spo(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity inst_rom_dist_mem_gen_v8_0_12 is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of inst_rom_dist_mem_gen_v8_0_12 : entity is 14;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of inst_rom_dist_mem_gen_v8_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of inst_rom_dist_mem_gen_v8_0_12 : entity is 16384;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of inst_rom_dist_mem_gen_v8_0_12 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst_rom_dist_mem_gen_v8_0_12 : entity is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of inst_rom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of inst_rom_dist_mem_gen_v8_0_12 : entity is "inst_rom.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of inst_rom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of inst_rom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of inst_rom_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of inst_rom_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of inst_rom_dist_mem_gen_v8_0_12 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of inst_rom_dist_mem_gen_v8_0_12 : entity is "dist_mem_gen_v8_0_12";
end inst_rom_dist_mem_gen_v8_0_12;

architecture STRUCTURE of inst_rom_dist_mem_gen_v8_0_12 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.inst_rom_dist_mem_gen_v8_0_12_synth
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(31 downto 0) => spo(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity inst_rom is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of inst_rom : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of inst_rom : entity is "inst_rom,dist_mem_gen_v8_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of inst_rom : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of inst_rom : entity is "dist_mem_gen_v8_0_12,Vivado 2018.3";
end inst_rom;

architecture STRUCTURE of inst_rom is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 14;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 16384;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "inst_rom.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.inst_rom_dist_mem_gen_v8_0_12
     port map (
      a(13 downto 0) => a(13 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(13 downto 0) => B"00000000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
