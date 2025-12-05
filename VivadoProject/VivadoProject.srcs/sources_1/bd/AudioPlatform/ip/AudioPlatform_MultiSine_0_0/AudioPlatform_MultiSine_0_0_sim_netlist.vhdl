-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Tue Dec  2 07:52:52 2025
-- Host        : UB22FPGA running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/andrewcapon/fpga/ArtixA7/AudioPlayground/VivadoProject/VivadoProject.gen/sources_1/bd/AudioPlatform/ip/AudioPlatform_MultiSine_0_0/AudioPlatform_MultiSine_0_0_sim_netlist.vhdl
-- Design      : AudioPlatform_MultiSine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram is
  port (
    int_samples_ce1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    int_samples_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q1_reg[31]_0\ : out STD_LOGIC;
    \q1_reg[30]_0\ : out STD_LOGIC;
    \q1_reg[29]_0\ : out STD_LOGIC;
    \q1_reg[28]_0\ : out STD_LOGIC;
    \q1_reg[27]_0\ : out STD_LOGIC;
    \q1_reg[26]_0\ : out STD_LOGIC;
    \q1_reg[25]_0\ : out STD_LOGIC;
    \q1_reg[24]_0\ : out STD_LOGIC;
    \q1_reg[23]_0\ : out STD_LOGIC;
    \q1_reg[22]_0\ : out STD_LOGIC;
    \q1_reg[21]_0\ : out STD_LOGIC;
    \q1_reg[20]_0\ : out STD_LOGIC;
    \q1_reg[19]_0\ : out STD_LOGIC;
    \q1_reg[18]_0\ : out STD_LOGIC;
    \q1_reg[17]_0\ : out STD_LOGIC;
    \q1_reg[16]_0\ : out STD_LOGIC;
    \q1_reg[15]_0\ : out STD_LOGIC;
    \q1_reg[14]_0\ : out STD_LOGIC;
    \q1_reg[13]_0\ : out STD_LOGIC;
    \q1_reg[12]_0\ : out STD_LOGIC;
    \q1_reg[11]_0\ : out STD_LOGIC;
    \q1_reg[10]_0\ : out STD_LOGIC;
    \q1_reg[8]_0\ : out STD_LOGIC;
    \q1_reg[6]_0\ : out STD_LOGIC;
    \q1_reg[5]_0\ : out STD_LOGIC;
    \q1_reg[4]_0\ : out STD_LOGIC;
    d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    \q1_reg[0]_0\ : in STD_LOGIC;
    mem_reg : in STD_LOGIC;
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    \q0_reg[0]_0\ : in STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    int_phaseInc_read : in STD_LOGIC;
    int_samples_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata_reg[0]\ : in STD_LOGIC;
    \rdata_reg[0]_0\ : in STD_LOGIC;
    \rdata_reg[1]\ : in STD_LOGIC;
    \rdata_reg[1]_0\ : in STD_LOGIC;
    \rdata_reg[9]\ : in STD_LOGIC;
    interrupt : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    int_ap_ready : in STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q0_reg[0]_1\ : in STD_LOGIC;
    rewind_ap_ready_reg : in STD_LOGIC;
    address_reg_386_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    select_ln49_fu_194_p3 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram : entity is "MultiSine_BUS_A_s_axi_ram";
end AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram;

architecture STRUCTURE of AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal int_phaseInc_ce1 : STD_LOGIC;
  signal \^int_samples_address1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^int_samples_ce1\ : STD_LOGIC;
  signal p_0_in0_out : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal q0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal q00 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal q10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \q1_reg_n_0_[0]\ : STD_LOGIC;
  signal \q1_reg_n_0_[10]\ : STD_LOGIC;
  signal \q1_reg_n_0_[11]\ : STD_LOGIC;
  signal \q1_reg_n_0_[12]\ : STD_LOGIC;
  signal \q1_reg_n_0_[13]\ : STD_LOGIC;
  signal \q1_reg_n_0_[14]\ : STD_LOGIC;
  signal \q1_reg_n_0_[15]\ : STD_LOGIC;
  signal \q1_reg_n_0_[16]\ : STD_LOGIC;
  signal \q1_reg_n_0_[17]\ : STD_LOGIC;
  signal \q1_reg_n_0_[18]\ : STD_LOGIC;
  signal \q1_reg_n_0_[19]\ : STD_LOGIC;
  signal \q1_reg_n_0_[1]\ : STD_LOGIC;
  signal \q1_reg_n_0_[20]\ : STD_LOGIC;
  signal \q1_reg_n_0_[21]\ : STD_LOGIC;
  signal \q1_reg_n_0_[22]\ : STD_LOGIC;
  signal \q1_reg_n_0_[23]\ : STD_LOGIC;
  signal \q1_reg_n_0_[24]\ : STD_LOGIC;
  signal \q1_reg_n_0_[25]\ : STD_LOGIC;
  signal \q1_reg_n_0_[26]\ : STD_LOGIC;
  signal \q1_reg_n_0_[27]\ : STD_LOGIC;
  signal \q1_reg_n_0_[28]\ : STD_LOGIC;
  signal \q1_reg_n_0_[29]\ : STD_LOGIC;
  signal \q1_reg_n_0_[2]\ : STD_LOGIC;
  signal \q1_reg_n_0_[30]\ : STD_LOGIC;
  signal \q1_reg_n_0_[31]\ : STD_LOGIC;
  signal \q1_reg_n_0_[3]\ : STD_LOGIC;
  signal \q1_reg_n_0_[4]\ : STD_LOGIC;
  signal \q1_reg_n_0_[5]\ : STD_LOGIC;
  signal \q1_reg_n_0_[6]\ : STD_LOGIC;
  signal \q1_reg_n_0_[7]\ : STD_LOGIC;
  signal \q1_reg_n_0_[8]\ : STD_LOGIC;
  signal \q1_reg_n_0_[9]\ : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_10_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_1_n_1 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_1_n_2 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_1_n_3 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_2_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_2_n_1 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_2_n_2 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_2_n_3 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_3_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_4_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_5_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_6_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_7_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_8_n_0 : STD_LOGIC;
  signal ram_reg_0_7_0_5_i_9_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_10_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_1_n_1 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_1_n_2 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_1_n_3 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_2_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_2_n_1 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_2_n_2 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_2_n_3 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_3_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_4_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_5_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_6_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_7_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_8_n_0 : STD_LOGIC;
  signal ram_reg_0_7_12_17_i_9_n_0 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_1_n_1 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_1_n_2 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_1_n_3 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_2_n_0 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_3_n_0 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_4_n_0 : STD_LOGIC;
  signal ram_reg_0_7_18_23_i_5_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_10_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_1_n_1 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_1_n_2 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_1_n_3 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_2_n_1 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_2_n_2 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_2_n_3 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_3_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_4_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_5_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_6_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_7_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_8_n_0 : STD_LOGIC;
  signal ram_reg_0_7_24_29_i_9_n_0 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_1_n_1 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_1_n_2 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_1_n_3 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_2_n_0 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_3_n_0 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_4_n_0 : STD_LOGIC;
  signal ram_reg_0_7_6_11_i_5_n_0 : STD_LOGIC;
  signal NLW_ram_reg_0_7_24_29_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_7_0_0 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_7_0_0 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0_7_0_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_7_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_7_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_7_0_0 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_7_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_7_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_7_0_0 : label is 0;
  attribute RTL_RAM_BITS of mem_reg_0_7_10_10 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_10_10 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_10_10 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_10_10 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_10_10 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_10_10 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_10_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_10_10 : label is 7;
  attribute ram_offset of mem_reg_0_7_10_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_10_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_7_10_10 : label is 10;
  attribute RTL_RAM_BITS of mem_reg_0_7_11_11 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_11_11 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_11_11 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_11_11 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_11_11 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_11_11 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_11_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_11_11 : label is 7;
  attribute ram_offset of mem_reg_0_7_11_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_11_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_7_11_11 : label is 11;
  attribute RTL_RAM_BITS of mem_reg_0_7_12_12 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_12_12 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_12_12 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_12_12 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_12_12 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_12_12 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_12_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_12_12 : label is 7;
  attribute ram_offset of mem_reg_0_7_12_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_12_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_7_12_12 : label is 12;
  attribute RTL_RAM_BITS of mem_reg_0_7_13_13 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_13_13 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_13_13 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_13_13 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_13_13 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_13_13 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_13_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_13_13 : label is 7;
  attribute ram_offset of mem_reg_0_7_13_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_13_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_7_13_13 : label is 13;
  attribute RTL_RAM_BITS of mem_reg_0_7_14_14 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_14_14 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_14_14 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_14_14 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_14_14 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_14_14 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_14_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_14_14 : label is 7;
  attribute ram_offset of mem_reg_0_7_14_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_14_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_7_14_14 : label is 14;
  attribute RTL_RAM_BITS of mem_reg_0_7_15_15 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_15_15 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_15_15 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_15_15 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_15_15 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_15_15 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_15_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_15_15 : label is 7;
  attribute ram_offset of mem_reg_0_7_15_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_15_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_7_15_15 : label is 15;
  attribute RTL_RAM_BITS of mem_reg_0_7_16_16 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_16_16 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_16_16 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_16_16 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_16_16 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_16_16 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_16_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_16_16 : label is 7;
  attribute ram_offset of mem_reg_0_7_16_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_16_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_7_16_16 : label is 16;
  attribute RTL_RAM_BITS of mem_reg_0_7_17_17 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_17_17 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_17_17 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_17_17 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_17_17 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_17_17 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_17_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_17_17 : label is 7;
  attribute ram_offset of mem_reg_0_7_17_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_17_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_7_17_17 : label is 17;
  attribute RTL_RAM_BITS of mem_reg_0_7_18_18 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_18_18 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_18_18 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_18_18 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_18_18 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_18_18 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_18_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_18_18 : label is 7;
  attribute ram_offset of mem_reg_0_7_18_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_18_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_7_18_18 : label is 18;
  attribute RTL_RAM_BITS of mem_reg_0_7_19_19 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_19_19 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_19_19 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_19_19 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_19_19 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_19_19 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_19_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_19_19 : label is 7;
  attribute ram_offset of mem_reg_0_7_19_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_19_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_7_19_19 : label is 19;
  attribute RTL_RAM_BITS of mem_reg_0_7_1_1 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_1_1 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_1_1 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_1_1 : label is 7;
  attribute ram_offset of mem_reg_0_7_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_7_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_7_20_20 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_20_20 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_20_20 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_20_20 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_20_20 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_20_20 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_20_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_20_20 : label is 7;
  attribute ram_offset of mem_reg_0_7_20_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_20_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_7_20_20 : label is 20;
  attribute RTL_RAM_BITS of mem_reg_0_7_21_21 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_21_21 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_21_21 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_21_21 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_21_21 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_21_21 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_21_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_21_21 : label is 7;
  attribute ram_offset of mem_reg_0_7_21_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_21_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_7_21_21 : label is 21;
  attribute RTL_RAM_BITS of mem_reg_0_7_22_22 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_22_22 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_22_22 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_22_22 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_22_22 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_22_22 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_22_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_22_22 : label is 7;
  attribute ram_offset of mem_reg_0_7_22_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_22_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_7_22_22 : label is 22;
  attribute RTL_RAM_BITS of mem_reg_0_7_23_23 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_23_23 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_23_23 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_23_23 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_23_23 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_23_23 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_23_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_23_23 : label is 7;
  attribute ram_offset of mem_reg_0_7_23_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_23_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_7_23_23 : label is 23;
  attribute RTL_RAM_BITS of mem_reg_0_7_24_24 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_24_24 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_24_24 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_24_24 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_24_24 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_24_24 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_24_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_24_24 : label is 7;
  attribute ram_offset of mem_reg_0_7_24_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_24_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_7_24_24 : label is 24;
  attribute RTL_RAM_BITS of mem_reg_0_7_25_25 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_25_25 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_25_25 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_25_25 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_25_25 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_25_25 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_25_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_25_25 : label is 7;
  attribute ram_offset of mem_reg_0_7_25_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_25_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_7_25_25 : label is 25;
  attribute RTL_RAM_BITS of mem_reg_0_7_26_26 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_26_26 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_26_26 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_26_26 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_26_26 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_26_26 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_26_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_26_26 : label is 7;
  attribute ram_offset of mem_reg_0_7_26_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_26_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_7_26_26 : label is 26;
  attribute RTL_RAM_BITS of mem_reg_0_7_27_27 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_27_27 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_27_27 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_27_27 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_27_27 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_27_27 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_27_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_27_27 : label is 7;
  attribute ram_offset of mem_reg_0_7_27_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_27_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_7_27_27 : label is 27;
  attribute RTL_RAM_BITS of mem_reg_0_7_28_28 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_28_28 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_28_28 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_28_28 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_28_28 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_28_28 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_28_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_28_28 : label is 7;
  attribute ram_offset of mem_reg_0_7_28_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_28_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_7_28_28 : label is 28;
  attribute RTL_RAM_BITS of mem_reg_0_7_29_29 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_29_29 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_29_29 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_29_29 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_29_29 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_29_29 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_29_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_29_29 : label is 7;
  attribute ram_offset of mem_reg_0_7_29_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_29_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_7_29_29 : label is 29;
  attribute RTL_RAM_BITS of mem_reg_0_7_2_2 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_2_2 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_2_2 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_2_2 : label is 7;
  attribute ram_offset of mem_reg_0_7_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_7_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_7_30_30 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_30_30 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_30_30 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_30_30 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_30_30 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_30_30 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_30_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_30_30 : label is 7;
  attribute ram_offset of mem_reg_0_7_30_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_30_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_7_30_30 : label is 30;
  attribute RTL_RAM_BITS of mem_reg_0_7_31_31 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_31_31 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_31_31 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_31_31 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_31_31 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_31_31 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_31_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_31_31 : label is 7;
  attribute ram_offset of mem_reg_0_7_31_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_31_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_7_31_31 : label is 31;
  attribute RTL_RAM_BITS of mem_reg_0_7_3_3 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_3_3 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_3_3 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_3_3 : label is 7;
  attribute ram_offset of mem_reg_0_7_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_7_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_7_4_4 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_4_4 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_4_4 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_4_4 : label is 7;
  attribute ram_offset of mem_reg_0_7_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_7_4_4 : label is 4;
  attribute RTL_RAM_BITS of mem_reg_0_7_5_5 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_5_5 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_5_5 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_5_5 : label is 7;
  attribute ram_offset of mem_reg_0_7_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_7_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_7_6_6 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_6_6 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_6_6 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_6_6 : label is 7;
  attribute ram_offset of mem_reg_0_7_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_7_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_7_7_7 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_7_7 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_7_7 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_7_7 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_7_7 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_7_7 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_7_7 : label is 7;
  attribute ram_offset of mem_reg_0_7_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_7_7_7 : label is 7;
  attribute RTL_RAM_BITS of mem_reg_0_7_8_8 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_8_8 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_8_8 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_8_8 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_8_8 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_8_8 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_8_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_8_8 : label is 7;
  attribute ram_offset of mem_reg_0_7_8_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_8_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_7_8_8 : label is 8;
  attribute RTL_RAM_BITS of mem_reg_0_7_9_9 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_7_9_9 : label is "MultiSine/BUS_A_s_axi_U/int_phaseInc/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7_9_9 : label is "auto";
  attribute RTL_RAM_TYPE of mem_reg_0_7_9_9 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_7_9_9 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_7_9_9 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_7_9_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_7_9_9 : label is 7;
  attribute ram_offset of mem_reg_0_7_9_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7_9_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_7_9_9 : label is 9;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ram_reg_0_7_0_5_i_1 : label is 35;
  attribute ADDER_THRESHOLD of ram_reg_0_7_0_5_i_2 : label is 35;
  attribute ADDER_THRESHOLD of ram_reg_0_7_12_17_i_1 : label is 35;
  attribute ADDER_THRESHOLD of ram_reg_0_7_12_17_i_2 : label is 35;
  attribute ADDER_THRESHOLD of ram_reg_0_7_18_23_i_1 : label is 35;
  attribute ADDER_THRESHOLD of ram_reg_0_7_24_29_i_1 : label is 35;
  attribute ADDER_THRESHOLD of ram_reg_0_7_24_29_i_2 : label is 35;
  attribute ADDER_THRESHOLD of ram_reg_0_7_6_11_i_1 : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rdata[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata[16]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata[18]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata[20]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata[22]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[23]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[24]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[26]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[27]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[28]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[29]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[30]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdata[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdata[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rdata[8]_i_1\ : label is "soft_lutpair11";
begin
  E(0) <= \^e\(0);
  int_samples_address1(2 downto 0) <= \^int_samples_address1\(2 downto 0);
  int_samples_ce1 <= \^int_samples_ce1\;
mem_reg_0_7_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(0),
      DPO => q00(0),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(0),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WSTRB(0),
      I1 => s_axi_BUS_A_WVALID,
      I2 => \q1_reg[0]_0\,
      I3 => mem_reg,
      I4 => s_axi_BUS_A_ARVALID,
      I5 => \q0_reg[0]_0\,
      O => p_0_in0_out(0)
    );
mem_reg_0_7_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(10),
      DPO => q00(10),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(10),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_7_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(11),
      DPO => q00(11),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(11),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_7_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(12),
      DPO => q00(12),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(12),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_7_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(13),
      DPO => q00(13),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(13),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_7_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(14),
      DPO => q00(14),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(14),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_7_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(15),
      DPO => q00(15),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(15),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_7_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(16),
      DPO => q00(16),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(16),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_16_16_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WSTRB(2),
      I1 => s_axi_BUS_A_WVALID,
      I2 => \q1_reg[0]_0\,
      I3 => mem_reg,
      I4 => s_axi_BUS_A_ARVALID,
      I5 => \q0_reg[0]_0\,
      O => p_0_in0_out(16)
    );
mem_reg_0_7_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(17),
      DPO => q00(17),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(17),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(18),
      DPO => q00(18),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(18),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(19),
      DPO => q00(19),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(19),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(1),
      DPO => q00(1),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(1),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(20),
      DPO => q00(20),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(20),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(21),
      DPO => q00(21),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(21),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(22),
      DPO => q00(22),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(22),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(23),
      DPO => q00(23),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(23),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_7_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(24),
      DPO => q00(24),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(24),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_24_24_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(24),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(24)
    );
mem_reg_0_7_24_24_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WSTRB(3),
      I1 => s_axi_BUS_A_WVALID,
      I2 => \q1_reg[0]_0\,
      I3 => mem_reg,
      I4 => s_axi_BUS_A_ARVALID,
      I5 => \q0_reg[0]_0\,
      O => p_0_in0_out(24)
    );
mem_reg_0_7_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(25),
      DPO => q00(25),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(25),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_25_25_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(25),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(25)
    );
mem_reg_0_7_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(26),
      DPO => q00(26),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(26),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_26_26_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(26),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(26)
    );
mem_reg_0_7_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(27),
      DPO => q00(27),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(27),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_27_27_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(27),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(27)
    );
mem_reg_0_7_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(28),
      DPO => q00(28),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(28),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_28_28_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(28),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(28)
    );
mem_reg_0_7_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(29),
      DPO => q00(29),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(29),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_29_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(29),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(29)
    );
mem_reg_0_7_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(2),
      DPO => q00(2),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(2),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(30),
      DPO => q00(30),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(30),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_30_30_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(30),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(30)
    );
mem_reg_0_7_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => p_1_in(31),
      DPO => q00(31),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(31),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_7_31_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(31),
      I1 => \q0_reg[0]_0\,
      I2 => \^int_samples_ce1\,
      I3 => \q1_reg[0]_0\,
      I4 => s_axi_BUS_A_WVALID,
      I5 => s_axi_BUS_A_WSTRB(3),
      O => p_1_in(31)
    );
mem_reg_0_7_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(3),
      DPO => q00(3),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(3),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(4),
      DPO => q00(4),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(4),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(5),
      DPO => q00(5),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(5),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(6),
      DPO => q00(6),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(6),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(7),
      DPO => q00(7),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(7),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_7_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(8),
      DPO => q00(8),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(8),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_7_8_8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WSTRB(1),
      I1 => s_axi_BUS_A_WVALID,
      I2 => \q1_reg[0]_0\,
      I3 => mem_reg,
      I4 => s_axi_BUS_A_ARVALID,
      I5 => \q0_reg[0]_0\,
      O => p_0_in0_out(8)
    );
mem_reg_0_7_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_samples_address1\(0),
      A1 => \^int_samples_address1\(1),
      A2 => \^int_samples_address1\(2),
      A3 => '0',
      A4 => '0',
      D => s_axi_BUS_A_WDATA(9),
      DPO => q00(9),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => q10(9),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_BUS_A_ARVALID,
      I1 => mem_reg,
      O => \^int_samples_ce1\
    );
mem_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(1),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg,
      I3 => Q(1),
      O => \^int_samples_address1\(1)
    );
mem_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(0),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg,
      I3 => Q(0),
      O => \^int_samples_address1\(0)
    );
mem_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(2),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg,
      I3 => Q(2),
      O => \^int_samples_address1\(2)
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(0),
      Q => q0(0),
      R => '0'
    );
\q0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(10),
      Q => q0(10),
      R => '0'
    );
\q0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(11),
      Q => q0(11),
      R => '0'
    );
\q0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(12),
      Q => q0(12),
      R => '0'
    );
\q0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(13),
      Q => q0(13),
      R => '0'
    );
\q0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(14),
      Q => q0(14),
      R => '0'
    );
\q0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(15),
      Q => q0(15),
      R => '0'
    );
\q0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(16),
      Q => q0(16),
      R => '0'
    );
\q0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(17),
      Q => q0(17),
      R => '0'
    );
\q0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(18),
      Q => q0(18),
      R => '0'
    );
\q0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(19),
      Q => q0(19),
      R => '0'
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(1),
      Q => q0(1),
      R => '0'
    );
\q0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(20),
      Q => q0(20),
      R => '0'
    );
\q0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(21),
      Q => q0(21),
      R => '0'
    );
\q0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(22),
      Q => q0(22),
      R => '0'
    );
\q0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(23),
      Q => q0(23),
      R => '0'
    );
\q0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(24),
      Q => q0(24),
      R => '0'
    );
\q0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(25),
      Q => q0(25),
      R => '0'
    );
\q0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(26),
      Q => q0(26),
      R => '0'
    );
\q0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(27),
      Q => q0(27),
      R => '0'
    );
\q0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(28),
      Q => q0(28),
      R => '0'
    );
\q0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(29),
      Q => q0(29),
      R => '0'
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(2),
      Q => q0(2),
      R => '0'
    );
\q0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(30),
      Q => q0(30),
      R => '0'
    );
\q0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(31),
      Q => q0(31),
      R => '0'
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(3),
      Q => q0(3),
      R => '0'
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(4),
      Q => q0(4),
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(5),
      Q => q0(5),
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(6),
      Q => q0(6),
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(7),
      Q => q0(7),
      R => '0'
    );
\q0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(8),
      Q => q0(8),
      R => '0'
    );
\q0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => q00(9),
      Q => q0(9),
      R => '0'
    );
\q1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => mem_reg,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => \q1_reg[0]_0\,
      I3 => s_axi_BUS_A_WVALID,
      O => int_phaseInc_ce1
    );
\q1[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q0_reg[0]_1\,
      I1 => rewind_ap_ready_reg,
      O => \^e\(0)
    );
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(0),
      Q => \q1_reg_n_0_[0]\,
      R => '0'
    );
\q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(10),
      Q => \q1_reg_n_0_[10]\,
      R => '0'
    );
\q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(11),
      Q => \q1_reg_n_0_[11]\,
      R => '0'
    );
\q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(12),
      Q => \q1_reg_n_0_[12]\,
      R => '0'
    );
\q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(13),
      Q => \q1_reg_n_0_[13]\,
      R => '0'
    );
\q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(14),
      Q => \q1_reg_n_0_[14]\,
      R => '0'
    );
\q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(15),
      Q => \q1_reg_n_0_[15]\,
      R => '0'
    );
\q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(16),
      Q => \q1_reg_n_0_[16]\,
      R => '0'
    );
\q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(17),
      Q => \q1_reg_n_0_[17]\,
      R => '0'
    );
\q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(18),
      Q => \q1_reg_n_0_[18]\,
      R => '0'
    );
\q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(19),
      Q => \q1_reg_n_0_[19]\,
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(1),
      Q => \q1_reg_n_0_[1]\,
      R => '0'
    );
\q1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(20),
      Q => \q1_reg_n_0_[20]\,
      R => '0'
    );
\q1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(21),
      Q => \q1_reg_n_0_[21]\,
      R => '0'
    );
\q1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(22),
      Q => \q1_reg_n_0_[22]\,
      R => '0'
    );
\q1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(23),
      Q => \q1_reg_n_0_[23]\,
      R => '0'
    );
\q1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(24),
      Q => \q1_reg_n_0_[24]\,
      R => '0'
    );
\q1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(25),
      Q => \q1_reg_n_0_[25]\,
      R => '0'
    );
\q1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(26),
      Q => \q1_reg_n_0_[26]\,
      R => '0'
    );
\q1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(27),
      Q => \q1_reg_n_0_[27]\,
      R => '0'
    );
\q1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(28),
      Q => \q1_reg_n_0_[28]\,
      R => '0'
    );
\q1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(29),
      Q => \q1_reg_n_0_[29]\,
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(2),
      Q => \q1_reg_n_0_[2]\,
      R => '0'
    );
\q1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(30),
      Q => \q1_reg_n_0_[30]\,
      R => '0'
    );
\q1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(31),
      Q => \q1_reg_n_0_[31]\,
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(3),
      Q => \q1_reg_n_0_[3]\,
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(4),
      Q => \q1_reg_n_0_[4]\,
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(5),
      Q => \q1_reg_n_0_[5]\,
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(6),
      Q => \q1_reg_n_0_[6]\,
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(7),
      Q => \q1_reg_n_0_[7]\,
      R => '0'
    );
\q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(8),
      Q => \q1_reg_n_0_[8]\,
      R => '0'
    );
\q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_phaseInc_ce1,
      D => q10(9),
      Q => \q1_reg_n_0_[9]\,
      R => '0'
    );
ram_reg_0_7_0_5_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ram_reg_0_7_0_5_i_1_n_0,
      CO(2) => ram_reg_0_7_0_5_i_1_n_1,
      CO(1) => ram_reg_0_7_0_5_i_1_n_2,
      CO(0) => ram_reg_0_7_0_5_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => q0(3 downto 0),
      O(3 downto 0) => d0(3 downto 0),
      S(3) => ram_reg_0_7_0_5_i_3_n_0,
      S(2) => ram_reg_0_7_0_5_i_4_n_0,
      S(1) => ram_reg_0_7_0_5_i_5_n_0,
      S(0) => ram_reg_0_7_0_5_i_6_n_0
    );
ram_reg_0_7_0_5_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(4),
      I1 => address_reg_386_reg_0(4),
      O => ram_reg_0_7_0_5_i_10_n_0
    );
ram_reg_0_7_0_5_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_0_7_0_5_i_1_n_0,
      CO(3) => ram_reg_0_7_0_5_i_2_n_0,
      CO(2) => ram_reg_0_7_0_5_i_2_n_1,
      CO(1) => ram_reg_0_7_0_5_i_2_n_2,
      CO(0) => ram_reg_0_7_0_5_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => q0(7 downto 4),
      O(3 downto 0) => d0(7 downto 4),
      S(3) => ram_reg_0_7_0_5_i_7_n_0,
      S(2) => ram_reg_0_7_0_5_i_8_n_0,
      S(1) => ram_reg_0_7_0_5_i_9_n_0,
      S(0) => ram_reg_0_7_0_5_i_10_n_0
    );
ram_reg_0_7_0_5_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(3),
      I1 => address_reg_386_reg_0(3),
      O => ram_reg_0_7_0_5_i_3_n_0
    );
ram_reg_0_7_0_5_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(2),
      I1 => address_reg_386_reg_0(2),
      O => ram_reg_0_7_0_5_i_4_n_0
    );
ram_reg_0_7_0_5_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(1),
      I1 => address_reg_386_reg_0(1),
      O => ram_reg_0_7_0_5_i_5_n_0
    );
ram_reg_0_7_0_5_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(0),
      I1 => address_reg_386_reg_0(0),
      O => ram_reg_0_7_0_5_i_6_n_0
    );
ram_reg_0_7_0_5_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(7),
      I1 => address_reg_386_reg_0(7),
      O => ram_reg_0_7_0_5_i_7_n_0
    );
ram_reg_0_7_0_5_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(6),
      I1 => address_reg_386_reg_0(6),
      O => ram_reg_0_7_0_5_i_8_n_0
    );
ram_reg_0_7_0_5_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(5),
      I1 => address_reg_386_reg_0(5),
      O => ram_reg_0_7_0_5_i_9_n_0
    );
ram_reg_0_7_12_17_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_0_7_6_11_i_1_n_0,
      CO(3) => ram_reg_0_7_12_17_i_1_n_0,
      CO(2) => ram_reg_0_7_12_17_i_1_n_1,
      CO(1) => ram_reg_0_7_12_17_i_1_n_2,
      CO(0) => ram_reg_0_7_12_17_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => q0(15 downto 12),
      O(3 downto 0) => d0(15 downto 12),
      S(3) => ram_reg_0_7_12_17_i_3_n_0,
      S(2) => ram_reg_0_7_12_17_i_4_n_0,
      S(1) => ram_reg_0_7_12_17_i_5_n_0,
      S(0) => ram_reg_0_7_12_17_i_6_n_0
    );
ram_reg_0_7_12_17_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(16),
      I1 => address_reg_386_reg_0(16),
      O => ram_reg_0_7_12_17_i_10_n_0
    );
ram_reg_0_7_12_17_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_0_7_12_17_i_1_n_0,
      CO(3) => ram_reg_0_7_12_17_i_2_n_0,
      CO(2) => ram_reg_0_7_12_17_i_2_n_1,
      CO(1) => ram_reg_0_7_12_17_i_2_n_2,
      CO(0) => ram_reg_0_7_12_17_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => q0(19 downto 16),
      O(3 downto 0) => d0(19 downto 16),
      S(3) => ram_reg_0_7_12_17_i_7_n_0,
      S(2) => ram_reg_0_7_12_17_i_8_n_0,
      S(1) => ram_reg_0_7_12_17_i_9_n_0,
      S(0) => ram_reg_0_7_12_17_i_10_n_0
    );
ram_reg_0_7_12_17_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(15),
      I1 => address_reg_386_reg_0(15),
      O => ram_reg_0_7_12_17_i_3_n_0
    );
ram_reg_0_7_12_17_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(14),
      I1 => address_reg_386_reg_0(14),
      O => ram_reg_0_7_12_17_i_4_n_0
    );
ram_reg_0_7_12_17_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(13),
      I1 => address_reg_386_reg_0(13),
      O => ram_reg_0_7_12_17_i_5_n_0
    );
ram_reg_0_7_12_17_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(12),
      I1 => address_reg_386_reg_0(12),
      O => ram_reg_0_7_12_17_i_6_n_0
    );
ram_reg_0_7_12_17_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(19),
      I1 => address_reg_386_reg_0(19),
      O => ram_reg_0_7_12_17_i_7_n_0
    );
ram_reg_0_7_12_17_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(18),
      I1 => address_reg_386_reg_0(18),
      O => ram_reg_0_7_12_17_i_8_n_0
    );
ram_reg_0_7_12_17_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(17),
      I1 => address_reg_386_reg_0(17),
      O => ram_reg_0_7_12_17_i_9_n_0
    );
ram_reg_0_7_18_23_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_0_7_12_17_i_2_n_0,
      CO(3) => ram_reg_0_7_18_23_i_1_n_0,
      CO(2) => ram_reg_0_7_18_23_i_1_n_1,
      CO(1) => ram_reg_0_7_18_23_i_1_n_2,
      CO(0) => ram_reg_0_7_18_23_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => q0(23 downto 20),
      O(3 downto 0) => d0(23 downto 20),
      S(3) => ram_reg_0_7_18_23_i_2_n_0,
      S(2) => ram_reg_0_7_18_23_i_3_n_0,
      S(1) => ram_reg_0_7_18_23_i_4_n_0,
      S(0) => ram_reg_0_7_18_23_i_5_n_0
    );
ram_reg_0_7_18_23_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(23),
      I1 => address_reg_386_reg_0(23),
      O => ram_reg_0_7_18_23_i_2_n_0
    );
ram_reg_0_7_18_23_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(22),
      I1 => address_reg_386_reg_0(22),
      O => ram_reg_0_7_18_23_i_3_n_0
    );
ram_reg_0_7_18_23_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(21),
      I1 => address_reg_386_reg_0(21),
      O => ram_reg_0_7_18_23_i_4_n_0
    );
ram_reg_0_7_18_23_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(20),
      I1 => address_reg_386_reg_0(20),
      O => ram_reg_0_7_18_23_i_5_n_0
    );
ram_reg_0_7_24_29_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_0_7_18_23_i_1_n_0,
      CO(3) => ram_reg_0_7_24_29_i_1_n_0,
      CO(2) => ram_reg_0_7_24_29_i_1_n_1,
      CO(1) => ram_reg_0_7_24_29_i_1_n_2,
      CO(0) => ram_reg_0_7_24_29_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => q0(27 downto 24),
      O(3 downto 0) => d0(27 downto 24),
      S(3) => ram_reg_0_7_24_29_i_3_n_0,
      S(2) => ram_reg_0_7_24_29_i_4_n_0,
      S(1) => ram_reg_0_7_24_29_i_5_n_0,
      S(0) => ram_reg_0_7_24_29_i_6_n_0
    );
ram_reg_0_7_24_29_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(28),
      I1 => address_reg_386_reg_0(28),
      O => ram_reg_0_7_24_29_i_10_n_0
    );
ram_reg_0_7_24_29_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_0_7_24_29_i_1_n_0,
      CO(3) => NLW_ram_reg_0_7_24_29_i_2_CO_UNCONNECTED(3),
      CO(2) => ram_reg_0_7_24_29_i_2_n_1,
      CO(1) => ram_reg_0_7_24_29_i_2_n_2,
      CO(0) => ram_reg_0_7_24_29_i_2_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => q0(30 downto 28),
      O(3 downto 0) => d0(31 downto 28),
      S(3) => ram_reg_0_7_24_29_i_7_n_0,
      S(2) => ram_reg_0_7_24_29_i_8_n_0,
      S(1) => ram_reg_0_7_24_29_i_9_n_0,
      S(0) => ram_reg_0_7_24_29_i_10_n_0
    );
ram_reg_0_7_24_29_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(27),
      I1 => address_reg_386_reg_0(27),
      O => ram_reg_0_7_24_29_i_3_n_0
    );
ram_reg_0_7_24_29_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(26),
      I1 => address_reg_386_reg_0(26),
      O => ram_reg_0_7_24_29_i_4_n_0
    );
ram_reg_0_7_24_29_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(25),
      I1 => address_reg_386_reg_0(25),
      O => ram_reg_0_7_24_29_i_5_n_0
    );
ram_reg_0_7_24_29_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(24),
      I1 => address_reg_386_reg_0(24),
      O => ram_reg_0_7_24_29_i_6_n_0
    );
ram_reg_0_7_24_29_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(31),
      I1 => address_reg_386_reg_0(31),
      O => ram_reg_0_7_24_29_i_7_n_0
    );
ram_reg_0_7_24_29_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(30),
      I1 => address_reg_386_reg_0(30),
      O => ram_reg_0_7_24_29_i_8_n_0
    );
ram_reg_0_7_24_29_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(29),
      I1 => address_reg_386_reg_0(29),
      O => ram_reg_0_7_24_29_i_9_n_0
    );
ram_reg_0_7_6_11_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => ram_reg_0_7_0_5_i_2_n_0,
      CO(3) => ram_reg_0_7_6_11_i_1_n_0,
      CO(2) => ram_reg_0_7_6_11_i_1_n_1,
      CO(1) => ram_reg_0_7_6_11_i_1_n_2,
      CO(0) => ram_reg_0_7_6_11_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => q0(11 downto 8),
      O(3 downto 0) => d0(11 downto 8),
      S(3) => ram_reg_0_7_6_11_i_2_n_0,
      S(2) => ram_reg_0_7_6_11_i_3_n_0,
      S(1) => ram_reg_0_7_6_11_i_4_n_0,
      S(0) => ram_reg_0_7_6_11_i_5_n_0
    );
ram_reg_0_7_6_11_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(11),
      I1 => address_reg_386_reg_0(11),
      O => ram_reg_0_7_6_11_i_2_n_0
    );
ram_reg_0_7_6_11_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(10),
      I1 => address_reg_386_reg_0(10),
      O => ram_reg_0_7_6_11_i_3_n_0
    );
ram_reg_0_7_6_11_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(9),
      I1 => address_reg_386_reg_0(9),
      O => ram_reg_0_7_6_11_i_4_n_0
    );
ram_reg_0_7_6_11_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q0(8),
      I1 => address_reg_386_reg_0(8),
      O => ram_reg_0_7_6_11_i_5_n_0
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \^int_samples_ce1\,
      I1 => \q1_reg_n_0_[0]\,
      I2 => int_phaseInc_read,
      I3 => int_samples_q1(0),
      I4 => \rdata_reg[0]\,
      I5 => \rdata_reg[0]_0\,
      O => D(0)
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[10]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(10),
      O => \q1_reg[10]_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[11]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(11),
      O => \q1_reg[11]_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[12]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(12),
      O => \q1_reg[12]_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[13]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(13),
      O => \q1_reg[13]_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[14]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(14),
      O => \q1_reg[14]_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[15]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(15),
      O => \q1_reg[15]_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[16]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(16),
      O => \q1_reg[16]_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[17]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(17),
      O => \q1_reg[17]_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[18]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(18),
      O => \q1_reg[18]_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[19]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(19),
      O => \q1_reg[19]_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"454045404540FFFF"
    )
        port map (
      I0 => \^int_samples_ce1\,
      I1 => \q1_reg_n_0_[1]\,
      I2 => int_phaseInc_read,
      I3 => int_samples_q1(1),
      I4 => \rdata_reg[1]\,
      I5 => \rdata_reg[1]_0\,
      O => D(1)
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[20]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(20),
      O => \q1_reg[20]_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[21]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(21),
      O => \q1_reg[21]_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[22]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(22),
      O => \q1_reg[22]_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[23]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(23),
      O => \q1_reg[23]_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[24]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(24),
      O => \q1_reg[24]_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[25]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(25),
      O => \q1_reg[25]_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[26]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(26),
      O => \q1_reg[26]_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[27]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(27),
      O => \q1_reg[27]_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[28]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(28),
      O => \q1_reg[28]_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[29]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(29),
      O => \q1_reg[29]_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => \^int_samples_ce1\,
      I1 => \q1_reg_n_0_[2]\,
      I2 => int_phaseInc_read,
      I3 => int_samples_q1(2),
      I4 => \rdata_reg[9]\,
      I5 => p_0_in(0),
      O => D(2)
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[30]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(30),
      O => \q1_reg[30]_0\
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[31]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(31),
      O => \q1_reg[31]_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => \^int_samples_ce1\,
      I1 => \q1_reg_n_0_[3]\,
      I2 => int_phaseInc_read,
      I3 => int_samples_q1(3),
      I4 => \rdata_reg[9]\,
      I5 => int_ap_ready,
      O => D(3)
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[4]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(4),
      O => \q1_reg[4]_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[5]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(5),
      O => \q1_reg[5]_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[6]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(6),
      O => \q1_reg[6]_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => \^int_samples_ce1\,
      I1 => \q1_reg_n_0_[7]\,
      I2 => int_phaseInc_read,
      I3 => int_samples_q1(7),
      I4 => \rdata_reg[9]\,
      I5 => p_0_in(1),
      O => D(4)
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q1_reg_n_0_[8]\,
      I1 => int_phaseInc_read,
      I2 => int_samples_q1(8),
      O => \q1_reg[8]_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => \^int_samples_ce1\,
      I1 => \q1_reg_n_0_[9]\,
      I2 => int_phaseInc_read,
      I3 => int_samples_q1(9),
      I4 => \rdata_reg[9]\,
      I5 => interrupt,
      O => D(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram__parameterized0\ is
  port (
    int_samples_q1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    int_samples_ce1 : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC;
    mem_reg_2 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_enable_reg_pp0_iter4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram__parameterized0\ : entity is "MultiSine_BUS_A_s_axi_ram";
end \AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram__parameterized0\;

architecture STRUCTURE of \AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram__parameterized0\ is
  signal int_samples_address1 : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal samples_ce0_local : STD_LOGIC;
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 12288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "MultiSine/BUS_A_s_axi_U/int_samples/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 383;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 31;
begin
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 8) => int_samples_address1(8 downto 3),
      ADDRARDADDR(7 downto 5) => mem_reg_0(2 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 5) => Q(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DIADI(15 downto 0) => \out\(15 downto 0),
      DIBDI(15 downto 8) => B"00000000",
      DIBDI(7 downto 0) => \out\(23 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => int_samples_q1(15 downto 0),
      DOBDO(15 downto 0) => int_samples_q1(31 downto 16),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => int_samples_ce1,
      ENBWREN => samples_ce0_local,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => ap_enable_reg_pp0_iter3,
      WEBWE(2) => ap_enable_reg_pp0_iter3,
      WEBWE(1) => ap_enable_reg_pp0_iter3,
      WEBWE(0) => ap_enable_reg_pp0_iter3
    );
mem_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter3,
      I1 => ap_enable_reg_pp0_iter4,
      O => samples_ce0_local
    );
mem_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg_1,
      I3 => mem_reg_2(5),
      O => int_samples_address1(8)
    );
mem_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(4),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg_1,
      I3 => mem_reg_2(4),
      O => int_samples_address1(7)
    );
mem_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(3),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg_1,
      I3 => mem_reg_2(3),
      O => int_samples_address1(6)
    );
mem_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(2),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg_1,
      I3 => mem_reg_2(2),
      O => int_samples_address1(5)
    );
mem_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(1),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg_1,
      I3 => mem_reg_2(1),
      O => int_samples_address1(4)
    );
mem_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(0),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => mem_reg_1,
      I3 => mem_reg_2(0),
      O => int_samples_address1(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioPlatform_MultiSine_0_0_MultiSine_accumulators_RAM_AUTO_1R1W is
  port (
    q1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    d0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ADDRD : in STD_LOGIC_VECTOR ( 2 downto 0 );
    select_ln49_fu_194_p3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AudioPlatform_MultiSine_0_0_MultiSine_accumulators_RAM_AUTO_1R1W : entity is "MultiSine_accumulators_RAM_AUTO_1R1W";
end AudioPlatform_MultiSine_0_0_MultiSine_accumulators_RAM_AUTO_1R1W;

architecture STRUCTURE of AudioPlatform_MultiSine_0_0_MultiSine_accumulators_RAM_AUTO_1R1W is
  signal q10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_7_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_7_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_7_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_7_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_ram_reg_0_7_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_ram_reg_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_7_0_5 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_7_0_5 : label is "MultiSine/accumulators_U/ram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_reg_0_7_0_5 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_7_12_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_7_12_17 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_0_7_12_17 : label is "MultiSine/accumulators_U/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_0_7_12_17 : label is "auto";
  attribute RTL_RAM_TYPE of ram_reg_0_7_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_0_7_12_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_7_12_17 : label is 7;
  attribute ram_offset of ram_reg_0_7_12_17 : label is 0;
  attribute ram_slice_begin of ram_reg_0_7_12_17 : label is 12;
  attribute ram_slice_end of ram_reg_0_7_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_7_18_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_7_18_23 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_0_7_18_23 : label is "MultiSine/accumulators_U/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_0_7_18_23 : label is "auto";
  attribute RTL_RAM_TYPE of ram_reg_0_7_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_0_7_18_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_7_18_23 : label is 7;
  attribute ram_offset of ram_reg_0_7_18_23 : label is 0;
  attribute ram_slice_begin of ram_reg_0_7_18_23 : label is 18;
  attribute ram_slice_end of ram_reg_0_7_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_7_24_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_7_24_29 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_0_7_24_29 : label is "MultiSine/accumulators_U/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_0_7_24_29 : label is "auto";
  attribute RTL_RAM_TYPE of ram_reg_0_7_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_0_7_24_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_7_24_29 : label is 7;
  attribute ram_offset of ram_reg_0_7_24_29 : label is 0;
  attribute ram_slice_begin of ram_reg_0_7_24_29 : label is 24;
  attribute ram_slice_end of ram_reg_0_7_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_7_30_31 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_7_30_31 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_0_7_30_31 : label is "MultiSine/accumulators_U/ram_reg_0_7_30_31";
  attribute RTL_RAM_STYLE of ram_reg_0_7_30_31 : label is "NONE";
  attribute RTL_RAM_TYPE of ram_reg_0_7_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_0_7_30_31 : label is 0;
  attribute ram_addr_end of ram_reg_0_7_30_31 : label is 7;
  attribute ram_offset of ram_reg_0_7_30_31 : label is 0;
  attribute ram_slice_begin of ram_reg_0_7_30_31 : label is 30;
  attribute ram_slice_end of ram_reg_0_7_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \ram_reg_0_7_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \ram_reg_0_7_30_31__0\ : label is 256;
  attribute RTL_RAM_NAME of \ram_reg_0_7_30_31__0\ : label is "MultiSine/accumulators_U/ram_reg_0_7_30_31";
  attribute RTL_RAM_STYLE of \ram_reg_0_7_30_31__0\ : label is "NONE";
  attribute RTL_RAM_TYPE of \ram_reg_0_7_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \ram_reg_0_7_30_31__0\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_7_30_31__0\ : label is 7;
  attribute ram_offset of \ram_reg_0_7_30_31__0\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_7_30_31__0\ : label is 30;
  attribute ram_slice_end of \ram_reg_0_7_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_7_6_11 : label is 256;
  attribute RTL_RAM_NAME of ram_reg_0_7_6_11 : label is "MultiSine/accumulators_U/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_0_7_6_11 : label is "auto";
  attribute RTL_RAM_TYPE of ram_reg_0_7_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_0_7_6_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_7_6_11 : label is 7;
  attribute ram_offset of ram_reg_0_7_6_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_7_6_11 : label is 6;
  attribute ram_slice_end of ram_reg_0_7_6_11 : label is 11;
begin
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(0),
      Q => q1(0),
      R => '0'
    );
\q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(10),
      Q => q1(10),
      R => '0'
    );
\q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(11),
      Q => q1(11),
      R => '0'
    );
\q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(12),
      Q => q1(12),
      R => '0'
    );
\q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(13),
      Q => q1(13),
      R => '0'
    );
\q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(14),
      Q => q1(14),
      R => '0'
    );
\q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(15),
      Q => q1(15),
      R => '0'
    );
\q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(16),
      Q => q1(16),
      R => '0'
    );
\q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(17),
      Q => q1(17),
      R => '0'
    );
\q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(18),
      Q => q1(18),
      R => '0'
    );
\q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(19),
      Q => q1(19),
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(1),
      Q => q1(1),
      R => '0'
    );
\q1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(20),
      Q => q1(20),
      R => '0'
    );
\q1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(21),
      Q => q1(21),
      R => '0'
    );
\q1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(22),
      Q => q1(22),
      R => '0'
    );
\q1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(23),
      Q => q1(23),
      R => '0'
    );
\q1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(24),
      Q => q1(24),
      R => '0'
    );
\q1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(25),
      Q => q1(25),
      R => '0'
    );
\q1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(26),
      Q => q1(26),
      R => '0'
    );
\q1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(27),
      Q => q1(27),
      R => '0'
    );
\q1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(28),
      Q => q1(28),
      R => '0'
    );
\q1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(29),
      Q => q1(29),
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(2),
      Q => q1(2),
      R => '0'
    );
\q1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(30),
      Q => q1(30),
      R => '0'
    );
\q1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(31),
      Q => q1(31),
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(3),
      Q => q1(3),
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(4),
      Q => q1(4),
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(5),
      Q => q1(5),
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(6),
      Q => q1(6),
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(7),
      Q => q1(7),
      R => '0'
    );
\q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(8),
      Q => q1(8),
      R => '0'
    );
\q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => q10(9),
      Q => q1(9),
      R => '0'
    );
ram_reg_0_7_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => d0(1 downto 0),
      DIB(1 downto 0) => d0(3 downto 2),
      DIC(1 downto 0) => d0(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => q10(1 downto 0),
      DOB(1 downto 0) => q10(3 downto 2),
      DOC(1 downto 0) => q10(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => ap_clk,
      WE => ap_enable_reg_pp0_iter1
    );
ram_reg_0_7_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => d0(13 downto 12),
      DIB(1 downto 0) => d0(15 downto 14),
      DIC(1 downto 0) => d0(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => q10(13 downto 12),
      DOB(1 downto 0) => q10(15 downto 14),
      DOC(1 downto 0) => q10(17 downto 16),
      DOD(1 downto 0) => NLW_ram_reg_0_7_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => ap_clk,
      WE => ap_enable_reg_pp0_iter1
    );
ram_reg_0_7_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => d0(19 downto 18),
      DIB(1 downto 0) => d0(21 downto 20),
      DIC(1 downto 0) => d0(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => q10(19 downto 18),
      DOB(1 downto 0) => q10(21 downto 20),
      DOC(1 downto 0) => q10(23 downto 22),
      DOD(1 downto 0) => NLW_ram_reg_0_7_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => ap_clk,
      WE => ap_enable_reg_pp0_iter1
    );
ram_reg_0_7_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => d0(25 downto 24),
      DIB(1 downto 0) => d0(27 downto 26),
      DIC(1 downto 0) => d0(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => q10(25 downto 24),
      DOB(1 downto 0) => q10(27 downto 26),
      DOC(1 downto 0) => q10(29 downto 28),
      DOD(1 downto 0) => NLW_ram_reg_0_7_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => ap_clk,
      WE => ap_enable_reg_pp0_iter1
    );
ram_reg_0_7_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => '0',
      A4 => '0',
      D => d0(30),
      DPO => q10(30),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_ram_reg_0_7_30_31_SPO_UNCONNECTED,
      WCLK => ap_clk,
      WE => ap_enable_reg_pp0_iter1
    );
\ram_reg_0_7_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => ADDRD(0),
      A1 => ADDRD(1),
      A2 => ADDRD(2),
      A3 => '0',
      A4 => '0',
      D => d0(31),
      DPO => q10(31),
      DPRA0 => select_ln49_fu_194_p3(0),
      DPRA1 => select_ln49_fu_194_p3(1),
      DPRA2 => select_ln49_fu_194_p3(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_ram_reg_0_7_30_31__0_SPO_UNCONNECTED\,
      WCLK => ap_clk,
      WE => ap_enable_reg_pp0_iter1
    );
ram_reg_0_7_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => select_ln49_fu_194_p3(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => ADDRD(2 downto 0),
      DIA(1 downto 0) => d0(7 downto 6),
      DIB(1 downto 0) => d0(9 downto 8),
      DIC(1 downto 0) => d0(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => q10(7 downto 6),
      DOB(1 downto 0) => q10(9 downto 8),
      DOC(1 downto 0) => q10(11 downto 10),
      DOD(1 downto 0) => NLW_ram_reg_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => ap_clk,
      WE => ap_enable_reg_pp0_iter1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioPlatform_MultiSine_0_0_MultiSine_flow_control_loop_delay_pipe is
  port (
    rewind_ap_ready_reg : out STD_LOGIC;
    \icmp_ln497_reg_157_reg[0]\ : out STD_LOGIC;
    \i6_fu_88_reg[1]\ : out STD_LOGIC;
    ap_condition_194 : out STD_LOGIC;
    select_ln49_fu_194_p3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_loop_exit_ready : out STD_LOGIC;
    icmp_ln46_fu_232_p2 : out STD_LOGIC;
    \i6_fu_88_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    icmp_ln49_fu_226_p2 : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \icmp_ln497_reg_157_reg[0]_0\ : in STD_LOGIC;
    icmp_ln49_reg_377 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    icmp_ln46_reg_382 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \indvar_flatten3_fu_80_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter2_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AudioPlatform_MultiSine_0_0_MultiSine_flow_control_loop_delay_pipe : entity is "MultiSine_flow_control_loop_delay_pipe";
end AudioPlatform_MultiSine_0_0_MultiSine_flow_control_loop_delay_pipe;

architecture STRUCTURE of AudioPlatform_MultiSine_0_0_MultiSine_flow_control_loop_delay_pipe is
  signal \^ap_condition_194\ : STD_LOGIC;
  signal ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2_n_0 : STD_LOGIC;
  signal ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3_n_0 : STD_LOGIC;
  signal \^ap_loop_exit_ready\ : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal \^i6_fu_88_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \icmp_ln46_reg_382[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln46_reg_382[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln49_reg_377[0]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten3_fu_80[5]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten3_fu_80[8]_i_2_n_0\ : STD_LOGIC;
  signal \^rewind_ap_ready_reg\ : STD_LOGIC;
  signal rewind_ap_ready_reg_i_1_n_0 : STD_LOGIC;
  signal \^select_ln49_fu_194_p3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i6_fu_88[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i6_fu_88[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \icmp_ln46_reg_382[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \icmp_ln46_reg_382[0]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \icmp_ln497_reg_157[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \icmp_ln49_reg_377[0]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \indvar_flatten3_fu_80[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \indvar_flatten3_fu_80[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \indvar_flatten3_fu_80[5]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \indvar_flatten3_fu_80[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \indvar_flatten3_fu_80[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \indvar_flatten3_fu_80[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \indvars_iv44_fu_84[5]_i_1\ : label is "soft_lutpair16";
begin
  ap_condition_194 <= \^ap_condition_194\;
  ap_loop_exit_ready <= \^ap_loop_exit_ready\;
  \i6_fu_88_reg[3]\(3 downto 0) <= \^i6_fu_88_reg[3]\(3 downto 0);
  rewind_ap_ready_reg <= \^rewind_ap_ready_reg\;
  select_ln49_fu_194_p3(2 downto 0) <= \^select_ln49_fu_194_p3\(2 downto 0);
\accumulators_addr_reg_366[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D0FF00000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => icmp_ln46_reg_382,
      I2 => ap_loop_init,
      I3 => icmp_ln49_reg_377,
      I4 => \^ap_condition_194\,
      I5 => Q(0),
      O => \^select_ln49_fu_194_p3\(0)
    );
\accumulators_addr_reg_366[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D5DD0000"
    )
        port map (
      I0 => icmp_ln49_reg_377,
      I1 => ap_loop_init,
      I2 => icmp_ln46_reg_382,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(1),
      I5 => \^ap_condition_194\,
      O => \^select_ln49_fu_194_p3\(1)
    );
\accumulators_addr_reg_366[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D5DD0000"
    )
        port map (
      I0 => icmp_ln49_reg_377,
      I1 => ap_loop_init,
      I2 => icmp_ln46_reg_382,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(2),
      I5 => \^ap_condition_194\,
      O => \^select_ln49_fu_194_p3\(2)
    );
ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \icmp_ln46_reg_382[0]_i_3_n_0\,
      I1 => \indvar_flatten3_fu_80[5]_i_2_n_0\,
      I2 => \icmp_ln46_reg_382[0]_i_2_n_0\,
      I3 => \indvar_flatten3_fu_80_reg[8]\(4),
      I4 => ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2_n_0,
      I5 => ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3_n_0,
      O => \^ap_loop_exit_ready\
    );
ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \^rewind_ap_ready_reg\,
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => \indvar_flatten3_fu_80_reg[8]\(5),
      O => ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_2_n_0
    );
ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rewind_ap_ready_reg\,
      I1 => ap_start,
      O => ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_i_3_n_0
    );
ap_loop_init_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFBBBB"
    )
        port map (
      I0 => \^ap_loop_exit_ready\,
      I1 => ap_rst_n,
      I2 => ap_start,
      I3 => \^rewind_ap_ready_reg\,
      I4 => ap_loop_init,
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => ap_loop_init,
      R => '0'
    );
\first_iter_0_reg_362[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F0FFFFF0F1F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \icmp_ln49_reg_377[0]_i_2_n_0\,
      I3 => Q(3),
      I4 => \^ap_condition_194\,
      I5 => Q(2),
      O => \i6_fu_88_reg[1]\
    );
\i6_fu_88[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFDFDFDDDFDDDFD"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_condition_194\,
      I2 => icmp_ln49_reg_377,
      I3 => ap_loop_init,
      I4 => icmp_ln46_reg_382,
      I5 => ap_enable_reg_pp0_iter1,
      O => \^i6_fu_88_reg[3]\(0)
    );
\i6_fu_88[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^select_ln49_fu_194_p3\(1),
      I1 => \^i6_fu_88_reg[3]\(0),
      O => \^i6_fu_88_reg[3]\(1)
    );
\i6_fu_88[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^select_ln49_fu_194_p3\(2),
      I1 => \^i6_fu_88_reg[3]\(0),
      I2 => Q(1),
      O => \^i6_fu_88_reg[3]\(2)
    );
\i6_fu_88[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006000A000A000A0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => \icmp_ln49_reg_377[0]_i_2_n_0\,
      I3 => \^ap_condition_194\,
      I4 => Q(0),
      I5 => Q(2),
      O => \^i6_fu_88_reg[3]\(3)
    );
\icmp_ln46_reg_382[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \^ap_condition_194\,
      I1 => \indvar_flatten3_fu_80_reg[8]\(5),
      I2 => \indvar_flatten3_fu_80_reg[8]\(4),
      I3 => \icmp_ln46_reg_382[0]_i_2_n_0\,
      I4 => \indvar_flatten3_fu_80[5]_i_2_n_0\,
      I5 => \icmp_ln46_reg_382[0]_i_3_n_0\,
      O => icmp_ln46_fu_232_p2
    );
\icmp_ln46_reg_382[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55D5FFFF"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(2),
      I1 => ap_loop_init,
      I2 => ap_start,
      I3 => \^rewind_ap_ready_reg\,
      I4 => \indvar_flatten3_fu_80_reg[8]\(3),
      O => \icmp_ln46_reg_382[0]_i_2_n_0\
    );
\icmp_ln46_reg_382[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(7),
      I1 => \indvar_flatten3_fu_80_reg[8]\(6),
      I2 => \indvar_flatten3_fu_80_reg[8]\(8),
      O => \icmp_ln46_reg_382[0]_i_3_n_0\
    );
\icmp_ln497_reg_157[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0AACA"
    )
        port map (
      I0 => \icmp_ln497_reg_157_reg[0]_0\,
      I1 => icmp_ln49_reg_377,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => icmp_ln46_reg_382,
      I4 => ap_loop_init,
      O => \icmp_ln497_reg_157_reg[0]\
    );
\icmp_ln49_reg_377[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^ap_condition_194\,
      I4 => Q(3),
      I5 => \icmp_ln49_reg_377[0]_i_2_n_0\,
      O => icmp_ln49_fu_226_p2
    );
\icmp_ln49_reg_377[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => icmp_ln46_reg_382,
      I2 => ap_loop_init,
      I3 => icmp_ln49_reg_377,
      O => \icmp_ln49_reg_377[0]_i_2_n_0\
    );
\indvar_flatten3_fu_80[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \indvar_flatten3_fu_80_reg[8]\(0),
      O => D(0)
    );
\indvar_flatten3_fu_80[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(0),
      I1 => \indvar_flatten3_fu_80_reg[8]\(1),
      I2 => ap_loop_init,
      O => D(1)
    );
\indvar_flatten3_fu_80[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(1),
      I1 => \indvar_flatten3_fu_80_reg[8]\(0),
      I2 => \indvar_flatten3_fu_80_reg[8]\(2),
      I3 => ap_loop_init,
      O => D(2)
    );
\indvar_flatten3_fu_80[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"060A0A0A"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(3),
      I1 => \indvar_flatten3_fu_80_reg[8]\(0),
      I2 => \^ap_condition_194\,
      I3 => \indvar_flatten3_fu_80_reg[8]\(1),
      I4 => \indvar_flatten3_fu_80_reg[8]\(2),
      O => D(3)
    );
\indvar_flatten3_fu_80[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(2),
      I1 => \indvar_flatten3_fu_80_reg[8]\(3),
      I2 => \indvar_flatten3_fu_80_reg[8]\(0),
      I3 => \indvar_flatten3_fu_80_reg[8]\(1),
      I4 => \^ap_condition_194\,
      I5 => \indvar_flatten3_fu_80_reg[8]\(4),
      O => D(4)
    );
\indvar_flatten3_fu_80[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F070F00000800"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(4),
      I1 => \indvar_flatten3_fu_80_reg[8]\(2),
      I2 => \^ap_condition_194\,
      I3 => \indvar_flatten3_fu_80_reg[8]\(3),
      I4 => \indvar_flatten3_fu_80[5]_i_2_n_0\,
      I5 => \indvar_flatten3_fu_80_reg[8]\(5),
      O => D(5)
    );
\indvar_flatten3_fu_80[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55D5FFFF"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(0),
      I1 => ap_loop_init,
      I2 => ap_start,
      I3 => \^rewind_ap_ready_reg\,
      I4 => \indvar_flatten3_fu_80_reg[8]\(1),
      O => \indvar_flatten3_fu_80[5]_i_2_n_0\
    );
\indvar_flatten3_fu_80[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \indvar_flatten3_fu_80[8]_i_2_n_0\,
      I1 => ap_loop_init,
      I2 => \indvar_flatten3_fu_80_reg[8]\(6),
      O => D(6)
    );
\indvar_flatten3_fu_80[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B444"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \indvar_flatten3_fu_80_reg[8]\(7),
      I2 => \indvar_flatten3_fu_80[8]_i_2_n_0\,
      I3 => \indvar_flatten3_fu_80_reg[8]\(6),
      O => D(7)
    );
\indvar_flatten3_fu_80[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \indvar_flatten3_fu_80_reg[8]\(8),
      I1 => \indvar_flatten3_fu_80_reg[8]\(6),
      I2 => \indvar_flatten3_fu_80[8]_i_2_n_0\,
      I3 => \indvar_flatten3_fu_80_reg[8]\(7),
      I4 => \^ap_condition_194\,
      O => D(8)
    );
\indvar_flatten3_fu_80[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \indvar_flatten3_fu_80[5]_i_2_n_0\,
      I1 => \indvar_flatten3_fu_80_reg[8]\(3),
      I2 => \indvar_flatten3_fu_80_reg[8]\(2),
      I3 => \indvar_flatten3_fu_80_reg[8]\(4),
      I4 => \indvar_flatten3_fu_80_reg[8]\(5),
      I5 => \^ap_condition_194\,
      O => \indvar_flatten3_fu_80[8]_i_2_n_0\
    );
\indvars_iv44_fu_84[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_loop_init,
      I1 => ap_start,
      I2 => \^rewind_ap_ready_reg\,
      O => \^ap_condition_194\
    );
rewind_ap_ready_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3730"
    )
        port map (
      I0 => ap_start,
      I1 => ap_loop_exit_ready_pp0_iter2_reg,
      I2 => \^ap_loop_exit_ready\,
      I3 => \^rewind_ap_ready_reg\,
      O => rewind_ap_ready_reg_i_1_n_0
    );
rewind_ap_ready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => rewind_ap_ready_reg_i_1_n_0,
      Q => \^rewind_ap_ready_reg\,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    rewind_ap_ready_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter4 : in STD_LOGIC;
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter4_reg : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter2_reg : in STD_LOGIC;
    address_reg_386_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    select_ln49_fu_194_p3 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi : entity is "MultiSine_BUS_A_s_axi";
end AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi;

architecture STRUCTURE of AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg_n_0_[2]\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal aw_hs : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start1 : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_3_n_0 : STD_LOGIC;
  signal int_ap_start_i_4_n_0 : STD_LOGIC;
  signal int_ap_start_i_5_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[1]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_phaseInc_n_1 : STD_LOGIC;
  signal int_phaseInc_n_11 : STD_LOGIC;
  signal int_phaseInc_n_12 : STD_LOGIC;
  signal int_phaseInc_n_13 : STD_LOGIC;
  signal int_phaseInc_n_14 : STD_LOGIC;
  signal int_phaseInc_n_15 : STD_LOGIC;
  signal int_phaseInc_n_16 : STD_LOGIC;
  signal int_phaseInc_n_17 : STD_LOGIC;
  signal int_phaseInc_n_18 : STD_LOGIC;
  signal int_phaseInc_n_19 : STD_LOGIC;
  signal int_phaseInc_n_2 : STD_LOGIC;
  signal int_phaseInc_n_20 : STD_LOGIC;
  signal int_phaseInc_n_21 : STD_LOGIC;
  signal int_phaseInc_n_22 : STD_LOGIC;
  signal int_phaseInc_n_23 : STD_LOGIC;
  signal int_phaseInc_n_24 : STD_LOGIC;
  signal int_phaseInc_n_25 : STD_LOGIC;
  signal int_phaseInc_n_26 : STD_LOGIC;
  signal int_phaseInc_n_27 : STD_LOGIC;
  signal int_phaseInc_n_28 : STD_LOGIC;
  signal int_phaseInc_n_29 : STD_LOGIC;
  signal int_phaseInc_n_3 : STD_LOGIC;
  signal int_phaseInc_n_30 : STD_LOGIC;
  signal int_phaseInc_n_31 : STD_LOGIC;
  signal int_phaseInc_n_32 : STD_LOGIC;
  signal int_phaseInc_n_33 : STD_LOGIC;
  signal int_phaseInc_n_34 : STD_LOGIC;
  signal int_phaseInc_n_35 : STD_LOGIC;
  signal int_phaseInc_n_36 : STD_LOGIC;
  signal int_phaseInc_n_4 : STD_LOGIC;
  signal int_phaseInc_n_5 : STD_LOGIC;
  signal int_phaseInc_n_6 : STD_LOGIC;
  signal int_phaseInc_read : STD_LOGIC;
  signal int_phaseInc_read0 : STD_LOGIC;
  signal int_phaseInc_read_i_2_n_0 : STD_LOGIC;
  signal int_phaseInc_write0 : STD_LOGIC;
  signal int_phaseInc_write_i_1_n_0 : STD_LOGIC;
  signal int_phaseInc_write_i_3_n_0 : STD_LOGIC;
  signal int_phaseInc_write_reg_n_0 : STD_LOGIC;
  signal int_samples_address1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal int_samples_ce1 : STD_LOGIC;
  signal int_samples_q1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_samples_read : STD_LOGIC;
  signal int_samples_read0 : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_bus_a_bvalid\ : STD_LOGIC;
  signal \waddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[9]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of int_ap_start_i_3 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of int_samples_read_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdata[1]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of s_axi_BUS_A_WREADY_INST_0 : label is "soft_lutpair13";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  ap_start <= \^ap_start\;
  interrupt <= \^interrupt\;
  s_axi_BUS_A_BVALID <= \^s_axi_bus_a_bvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"474747F747474747"
    )
        port map (
      I0 => s_axi_BUS_A_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \FSM_onehot_rstate_reg_n_0_[2]\,
      I3 => int_samples_read,
      I4 => int_phaseInc_read,
      I5 => s_axi_BUS_A_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8F88888888"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => s_axi_BUS_A_RREADY,
      I3 => int_phaseInc_read,
      I4 => int_samples_read,
      I5 => \FSM_onehot_rstate_reg_n_0_[2]\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \FSM_onehot_rstate_reg_n_0_[2]\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA30BA3F"
    )
        port map (
      I0 => s_axi_BUS_A_BREADY,
      I1 => s_axi_BUS_A_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_bus_a_bvalid\,
      I4 => \FSM_onehot_wstate_reg_n_0_[2]\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF888F888F888F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_BUS_A_AWVALID,
      I2 => s_axi_BUS_A_WVALID,
      I3 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I4 => s_axi_BUS_A_ARVALID,
      I5 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70007000"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I3 => s_axi_BUS_A_WVALID,
      I4 => s_axi_BUS_A_BREADY,
      I5 => \^s_axi_bus_a_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \FSM_onehot_wstate_reg_n_0_[2]\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_bus_a_bvalid\,
      R => \^ap_rst_n_inv\
    );
auto_restart_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => ap_idle,
      I2 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^ap_rst_n_inv\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000D"
    )
        port map (
      I0 => \^ap_start\,
      I1 => rewind_ap_ready_reg,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => ap_enable_reg_pp0_iter3,
      I5 => ap_enable_reg_pp0_iter4,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_0_in(2),
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => \rdata[9]_i_2_n_0\,
      I1 => p_0_in(7),
      I2 => ap_loop_exit_ready_pp0_iter2_reg,
      I3 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBF888"
    )
        port map (
      I0 => p_0_in(7),
      I1 => ap_loop_exit_ready_pp0_iter2_reg,
      I2 => int_ap_start1,
      I3 => s_axi_BUS_A_WDATA(0),
      I4 => \^ap_start\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => int_ap_start_i_3_n_0,
      I1 => int_ap_start_i_4_n_0,
      I2 => int_ap_start_i_5_n_0,
      I3 => \p_0_in__0\(1),
      I4 => s_axi_BUS_A_WSTRB(0),
      I5 => \p_0_in__0\(0),
      O => int_ap_start1
    );
int_ap_start_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => s_axi_BUS_A_WVALID,
      I1 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I2 => s_axi_BUS_A_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => int_ap_start_i_3_n_0
    );
int_ap_start_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \waddr_reg_n_0_[8]\,
      I1 => \waddr_reg_n_0_[5]\,
      I2 => \waddr_reg_n_0_[6]\,
      I3 => \p_0_in__0\(2),
      O => int_ap_start_i_4_n_0
    );
int_ap_start_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \waddr_reg_n_0_[10]\,
      I1 => \waddr_reg_n_0_[7]\,
      I2 => \waddr_reg_n_0_[11]\,
      I3 => \waddr_reg_n_0_[9]\,
      O => int_ap_start_i_5_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \p_0_in__0\(1),
      I3 => s_axi_BUS_A_WSTRB(0),
      I4 => \p_0_in__0\(0),
      I5 => p_0_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_0_in(7),
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \p_0_in__0\(1),
      I3 => \p_0_in__0\(0),
      I4 => s_axi_BUS_A_WSTRB(0),
      I5 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(1),
      I4 => \int_ier[1]_i_2_n_0\,
      I5 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(1),
      I4 => \int_ier[1]_i_2_n_0\,
      I5 => \int_ier_reg_n_0_[1]\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => int_ap_start_i_3_n_0,
      I1 => int_ap_start_i_4_n_0,
      I2 => \waddr_reg_n_0_[10]\,
      I3 => \waddr_reg_n_0_[7]\,
      I4 => \waddr_reg_n_0_[11]\,
      I5 => \waddr_reg_n_0_[9]\,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => \int_isr_reg_n_0_[0]\,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[0]\,
      I3 => ap_loop_exit_ready_pp0_iter4_reg,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \p_0_in__0\(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \p_0_in__0\(1),
      I3 => int_ap_start_i_3_n_0,
      I4 => int_ap_start_i_4_n_0,
      I5 => int_ap_start_i_5_n_0,
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[1]\,
      I3 => ap_loop_exit_ready_pp0_iter2_reg,
      I4 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
int_phaseInc: entity work.AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram
     port map (
      D(5) => int_phaseInc_n_1,
      D(4) => int_phaseInc_n_2,
      D(3) => int_phaseInc_n_3,
      D(2) => int_phaseInc_n_4,
      D(1) => int_phaseInc_n_5,
      D(0) => int_phaseInc_n_6,
      E(0) => E(0),
      Q(2 downto 0) => \p_0_in__0\(2 downto 0),
      address_reg_386_reg_0(31 downto 0) => address_reg_386_reg_0(31 downto 0),
      ap_clk => ap_clk,
      d0(31 downto 0) => d0(31 downto 0),
      int_ap_ready => int_ap_ready,
      int_phaseInc_read => int_phaseInc_read,
      int_samples_address1(2 downto 0) => int_samples_address1(2 downto 0),
      int_samples_ce1 => int_samples_ce1,
      int_samples_q1(31 downto 0) => int_samples_q1(31 downto 0),
      interrupt => \^interrupt\,
      mem_reg => \^fsm_onehot_rstate_reg[1]_0\,
      p_0_in(1) => p_0_in(7),
      p_0_in(0) => p_0_in(2),
      \q0_reg[0]_0\ => \FSM_onehot_wstate_reg_n_0_[2]\,
      \q0_reg[0]_1\ => \^ap_start\,
      \q1_reg[0]_0\ => int_phaseInc_write_reg_n_0,
      \q1_reg[10]_0\ => int_phaseInc_n_32,
      \q1_reg[11]_0\ => int_phaseInc_n_31,
      \q1_reg[12]_0\ => int_phaseInc_n_30,
      \q1_reg[13]_0\ => int_phaseInc_n_29,
      \q1_reg[14]_0\ => int_phaseInc_n_28,
      \q1_reg[15]_0\ => int_phaseInc_n_27,
      \q1_reg[16]_0\ => int_phaseInc_n_26,
      \q1_reg[17]_0\ => int_phaseInc_n_25,
      \q1_reg[18]_0\ => int_phaseInc_n_24,
      \q1_reg[19]_0\ => int_phaseInc_n_23,
      \q1_reg[20]_0\ => int_phaseInc_n_22,
      \q1_reg[21]_0\ => int_phaseInc_n_21,
      \q1_reg[22]_0\ => int_phaseInc_n_20,
      \q1_reg[23]_0\ => int_phaseInc_n_19,
      \q1_reg[24]_0\ => int_phaseInc_n_18,
      \q1_reg[25]_0\ => int_phaseInc_n_17,
      \q1_reg[26]_0\ => int_phaseInc_n_16,
      \q1_reg[27]_0\ => int_phaseInc_n_15,
      \q1_reg[28]_0\ => int_phaseInc_n_14,
      \q1_reg[29]_0\ => int_phaseInc_n_13,
      \q1_reg[30]_0\ => int_phaseInc_n_12,
      \q1_reg[31]_0\ => int_phaseInc_n_11,
      \q1_reg[4]_0\ => int_phaseInc_n_36,
      \q1_reg[5]_0\ => int_phaseInc_n_35,
      \q1_reg[6]_0\ => int_phaseInc_n_34,
      \q1_reg[8]_0\ => int_phaseInc_n_33,
      \rdata_reg[0]\ => \rdata[0]_i_2_n_0\,
      \rdata_reg[0]_0\ => \rdata[0]_i_3_n_0\,
      \rdata_reg[1]\ => \rdata[1]_i_2_n_0\,
      \rdata_reg[1]_0\ => \rdata[1]_i_3_n_0\,
      \rdata_reg[9]\ => \rdata[9]_i_2_n_0\,
      rewind_ap_ready_reg => rewind_ap_ready_reg,
      s_axi_BUS_A_ARADDR(2 downto 0) => s_axi_BUS_A_ARADDR(4 downto 2),
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_WDATA(31 downto 0) => s_axi_BUS_A_WDATA(31 downto 0),
      s_axi_BUS_A_WSTRB(3 downto 0) => s_axi_BUS_A_WSTRB(3 downto 0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID,
      select_ln49_fu_194_p3(2 downto 0) => select_ln49_fu_194_p3(2 downto 0)
    );
int_phaseInc_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => int_phaseInc_read_i_2_n_0,
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(7),
      I3 => s_axi_BUS_A_ARVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      I5 => s_axi_BUS_A_ARADDR(5),
      O => int_phaseInc_read0
    );
int_phaseInc_read_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(9),
      I1 => s_axi_BUS_A_ARADDR(8),
      I2 => s_axi_BUS_A_ARADDR(10),
      I3 => s_axi_BUS_A_ARADDR(11),
      O => int_phaseInc_read_i_2_n_0
    );
int_phaseInc_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_phaseInc_read0,
      Q => int_phaseInc_read,
      R => \^ap_rst_n_inv\
    );
int_phaseInc_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8FFFFFFF0000"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I3 => s_axi_BUS_A_WVALID,
      I4 => int_phaseInc_write0,
      I5 => int_phaseInc_write_reg_n_0,
      O => int_phaseInc_write_i_1_n_0
    );
int_phaseInc_write_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_BUS_A_AWADDR(7),
      I1 => s_axi_BUS_A_AWADDR(3),
      I2 => s_axi_BUS_A_AWADDR(5),
      I3 => int_phaseInc_write_i_3_n_0,
      O => int_phaseInc_write0
    );
int_phaseInc_write_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_BUS_A_AWVALID,
      I2 => s_axi_BUS_A_AWADDR(9),
      I3 => s_axi_BUS_A_AWADDR(8),
      I4 => s_axi_BUS_A_AWADDR(6),
      I5 => s_axi_BUS_A_AWADDR(4),
      O => int_phaseInc_write_i_3_n_0
    );
int_phaseInc_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_phaseInc_write_i_1_n_0,
      Q => int_phaseInc_write_reg_n_0,
      R => \^ap_rst_n_inv\
    );
int_samples: entity work.\AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi_ram__parameterized0\
     port map (
      Q(8 downto 0) => Q(8 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_enable_reg_pp0_iter4 => ap_enable_reg_pp0_iter4,
      int_samples_ce1 => int_samples_ce1,
      int_samples_q1(31 downto 0) => int_samples_q1(31 downto 0),
      mem_reg_0(2 downto 0) => int_samples_address1(2 downto 0),
      mem_reg_1 => \^fsm_onehot_rstate_reg[1]_0\,
      mem_reg_2(5) => \waddr_reg_n_0_[10]\,
      mem_reg_2(4) => \waddr_reg_n_0_[9]\,
      mem_reg_2(3) => \waddr_reg_n_0_[8]\,
      mem_reg_2(2) => \waddr_reg_n_0_[7]\,
      mem_reg_2(1) => \waddr_reg_n_0_[6]\,
      mem_reg_2(0) => \waddr_reg_n_0_[5]\,
      \out\(23 downto 0) => \out\(23 downto 0),
      s_axi_BUS_A_ARADDR(5 downto 0) => s_axi_BUS_A_ARADDR(10 downto 5),
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID
    );
int_samples_read_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(11),
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_BUS_A_ARVALID,
      O => int_samples_read0
    );
int_samples_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_samples_read0,
      Q => int_samples_read,
      R => \^ap_rst_n_inv\
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22E2FFFF22E222E2"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter4_reg,
      I1 => auto_restart_status_reg_n_0,
      I2 => ap_idle,
      I3 => p_0_in(2),
      I4 => \rdata[9]_i_2_n_0\,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^ap_rst_n_inv\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => s_axi_BUS_A_ARADDR(7),
      I3 => s_axi_BUS_A_ARADDR(6),
      I4 => int_phaseInc_read_i_2_n_0,
      I5 => \rdata[1]_i_4_n_0\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => int_gie_reg_n_0,
      I2 => s_axi_BUS_A_ARADDR(2),
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => \^ap_start\,
      O => \rdata[0]_i_3_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F57F7FFFF57F7"
    )
        port map (
      I0 => \rdata[1]_i_4_n_0\,
      I1 => int_task_ap_done,
      I2 => s_axi_BUS_A_ARADDR(3),
      I3 => \int_ier_reg_n_0_[1]\,
      I4 => s_axi_BUS_A_ARADDR(2),
      I5 => \int_isr_reg_n_0_[1]\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => int_phaseInc_read_i_2_n_0,
      I1 => s_axi_BUS_A_ARADDR(6),
      I2 => s_axi_BUS_A_ARADDR(7),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(0),
      O => \rdata[1]_i_4_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_BUS_A_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => int_samples_read,
      I3 => int_phaseInc_read,
      O => \rdata[31]_i_2_n_0\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => s_axi_BUS_A_ARADDR(7),
      I3 => s_axi_BUS_A_ARADDR(6),
      I4 => int_phaseInc_read_i_2_n_0,
      I5 => \rdata[9]_i_3_n_0\,
      O => \rdata[9]_i_2_n_0\
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(2),
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_BUS_A_ARVALID,
      I3 => s_axi_BUS_A_ARADDR(1),
      I4 => s_axi_BUS_A_ARADDR(0),
      I5 => s_axi_BUS_A_ARADDR(3),
      O => \rdata[9]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_6,
      Q => s_axi_BUS_A_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_32,
      Q => s_axi_BUS_A_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_31,
      Q => s_axi_BUS_A_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_30,
      Q => s_axi_BUS_A_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_29,
      Q => s_axi_BUS_A_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_28,
      Q => s_axi_BUS_A_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_27,
      Q => s_axi_BUS_A_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_26,
      Q => s_axi_BUS_A_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_25,
      Q => s_axi_BUS_A_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_24,
      Q => s_axi_BUS_A_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_23,
      Q => s_axi_BUS_A_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_5,
      Q => s_axi_BUS_A_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_22,
      Q => s_axi_BUS_A_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_21,
      Q => s_axi_BUS_A_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_20,
      Q => s_axi_BUS_A_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_19,
      Q => s_axi_BUS_A_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_18,
      Q => s_axi_BUS_A_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_17,
      Q => s_axi_BUS_A_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_16,
      Q => s_axi_BUS_A_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_15,
      Q => s_axi_BUS_A_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_14,
      Q => s_axi_BUS_A_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_13,
      Q => s_axi_BUS_A_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_4,
      Q => s_axi_BUS_A_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_12,
      Q => s_axi_BUS_A_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_11,
      Q => s_axi_BUS_A_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_3,
      Q => s_axi_BUS_A_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_36,
      Q => s_axi_BUS_A_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_35,
      Q => s_axi_BUS_A_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_34,
      Q => s_axi_BUS_A_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_2,
      Q => s_axi_BUS_A_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_33,
      Q => s_axi_BUS_A_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_phaseInc_n_1,
      Q => s_axi_BUS_A_RDATA(9),
      R => '0'
    );
s_axi_BUS_A_RVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_rstate_reg_n_0_[2]\,
      I1 => int_samples_read,
      I2 => int_phaseInc_read,
      O => s_axi_BUS_A_RVALID
    );
s_axi_BUS_A_WREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      O => s_axi_BUS_A_WREADY
    );
\waddr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_BUS_A_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => aw_hs
    );
\waddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(8),
      Q => \waddr_reg_n_0_[10]\,
      R => '0'
    );
\waddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(9),
      Q => \waddr_reg_n_0_[11]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(0),
      Q => \p_0_in__0\(0),
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(1),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(2),
      Q => \p_0_in__0\(2),
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(3),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(4),
      Q => \waddr_reg_n_0_[6]\,
      R => '0'
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(5),
      Q => \waddr_reg_n_0_[7]\,
      R => '0'
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(6),
      Q => \waddr_reg_n_0_[8]\,
      R => '0'
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_BUS_A_AWADDR(7),
      Q => \waddr_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioPlatform_MultiSine_0_0_MultiSine is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_AWREADY : out STD_LOGIC;
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_ARREADY : out STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_BUS_A_ADDR_WIDTH : integer;
  attribute C_S_AXI_BUS_A_ADDR_WIDTH of AudioPlatform_MultiSine_0_0_MultiSine : entity is 12;
  attribute C_S_AXI_BUS_A_DATA_WIDTH : integer;
  attribute C_S_AXI_BUS_A_DATA_WIDTH of AudioPlatform_MultiSine_0_0_MultiSine : entity is 32;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH : integer;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH of AudioPlatform_MultiSine_0_0_MultiSine : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of AudioPlatform_MultiSine_0_0_MultiSine : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of AudioPlatform_MultiSine_0_0_MultiSine : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AudioPlatform_MultiSine_0_0_MultiSine : entity is "MultiSine";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of AudioPlatform_MultiSine_0_0_MultiSine : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of AudioPlatform_MultiSine_0_0_MultiSine : entity is "yes";
end AudioPlatform_MultiSine_0_0_MultiSine;

architecture STRUCTURE of AudioPlatform_MultiSine_0_0_MultiSine is
  signal \<const0>\ : STD_LOGIC;
  signal accumulators_U_n_0 : STD_LOGIC;
  signal accumulators_U_n_1 : STD_LOGIC;
  signal accumulators_U_n_10 : STD_LOGIC;
  signal accumulators_U_n_11 : STD_LOGIC;
  signal accumulators_U_n_12 : STD_LOGIC;
  signal accumulators_U_n_13 : STD_LOGIC;
  signal accumulators_U_n_14 : STD_LOGIC;
  signal accumulators_U_n_15 : STD_LOGIC;
  signal accumulators_U_n_16 : STD_LOGIC;
  signal accumulators_U_n_17 : STD_LOGIC;
  signal accumulators_U_n_18 : STD_LOGIC;
  signal accumulators_U_n_19 : STD_LOGIC;
  signal accumulators_U_n_2 : STD_LOGIC;
  signal accumulators_U_n_20 : STD_LOGIC;
  signal accumulators_U_n_21 : STD_LOGIC;
  signal accumulators_U_n_22 : STD_LOGIC;
  signal accumulators_U_n_23 : STD_LOGIC;
  signal accumulators_U_n_24 : STD_LOGIC;
  signal accumulators_U_n_25 : STD_LOGIC;
  signal accumulators_U_n_26 : STD_LOGIC;
  signal accumulators_U_n_27 : STD_LOGIC;
  signal accumulators_U_n_28 : STD_LOGIC;
  signal accumulators_U_n_29 : STD_LOGIC;
  signal accumulators_U_n_3 : STD_LOGIC;
  signal accumulators_U_n_30 : STD_LOGIC;
  signal accumulators_U_n_31 : STD_LOGIC;
  signal accumulators_U_n_4 : STD_LOGIC;
  signal accumulators_U_n_5 : STD_LOGIC;
  signal accumulators_U_n_6 : STD_LOGIC;
  signal accumulators_U_n_7 : STD_LOGIC;
  signal accumulators_U_n_8 : STD_LOGIC;
  signal accumulators_U_n_9 : STD_LOGIC;
  signal accumulators_addr_reg_366 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \add_ln468_fu_92[5]_i_2_n_0\ : STD_LOGIC;
  signal add_ln468_fu_92_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln46_1_fu_208_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal add_ln46_fu_292_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal address_reg_386_reg_0_n_28 : STD_LOGIC;
  signal address_reg_386_reg_0_n_29 : STD_LOGIC;
  signal address_reg_386_reg_0_n_30 : STD_LOGIC;
  signal address_reg_386_reg_0_n_31 : STD_LOGIC;
  signal address_reg_386_reg_0_n_32 : STD_LOGIC;
  signal address_reg_386_reg_0_n_33 : STD_LOGIC;
  signal address_reg_386_reg_0_n_34 : STD_LOGIC;
  signal address_reg_386_reg_0_n_35 : STD_LOGIC;
  signal address_reg_386_reg_1_n_28 : STD_LOGIC;
  signal address_reg_386_reg_1_n_29 : STD_LOGIC;
  signal address_reg_386_reg_1_n_30 : STD_LOGIC;
  signal address_reg_386_reg_1_n_31 : STD_LOGIC;
  signal address_reg_386_reg_1_n_32 : STD_LOGIC;
  signal address_reg_386_reg_1_n_33 : STD_LOGIC;
  signal address_reg_386_reg_1_n_34 : STD_LOGIC;
  signal address_reg_386_reg_1_n_35 : STD_LOGIC;
  signal address_reg_386_reg_2_n_28 : STD_LOGIC;
  signal address_reg_386_reg_2_n_29 : STD_LOGIC;
  signal address_reg_386_reg_2_n_30 : STD_LOGIC;
  signal address_reg_386_reg_2_n_31 : STD_LOGIC;
  signal address_reg_386_reg_2_n_32 : STD_LOGIC;
  signal address_reg_386_reg_2_n_33 : STD_LOGIC;
  signal address_reg_386_reg_2_n_34 : STD_LOGIC;
  signal address_reg_386_reg_2_n_35 : STD_LOGIC;
  signal ap_condition_194 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_loop_exit_ready : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal d0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal first_iter_0_reg_362_pp0_iter1_reg : STD_LOGIC;
  signal \first_iter_0_reg_362_reg_n_0_[0]\ : STD_LOGIC;
  signal flow_control_loop_delay_pipe_U_n_1 : STD_LOGIC;
  signal flow_control_loop_delay_pipe_U_n_2 : STD_LOGIC;
  signal flow_control_loop_delay_pipe_U_n_20 : STD_LOGIC;
  signal i6_fu_88 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_fu_220_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal icmp_ln46_fu_232_p2 : STD_LOGIC;
  signal icmp_ln46_reg_382 : STD_LOGIC;
  signal icmp_ln497_reg_157_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln497_reg_157_reg_n_0_[0]\ : STD_LOGIC;
  signal icmp_ln49_fu_226_p2 : STD_LOGIC;
  signal icmp_ln49_reg_377 : STD_LOGIC;
  signal indvar_flatten3_fu_80 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal indvars_iv44_fu_84 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rewind_ap_ready_reg : STD_LOGIC;
  signal select_ln49_fu_194_p3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sineIdx5_fu_96 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal sineIdx5_fu_961 : STD_LOGIC;
  signal \sineIdx5_fu_96[6]_i_1_n_0\ : STD_LOGIC;
  signal \sineIdx5_fu_96[8]_i_2_n_0\ : STD_LOGIC;
  signal \sineIdx5_fu_96[8]_i_3_n_0\ : STD_LOGIC;
  signal zext_ln46_fu_279_p1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_address_reg_386_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_address_reg_386_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_address_reg_386_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_address_reg_386_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_address_reg_386_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_address_reg_386_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_address_reg_386_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_address_reg_386_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_address_reg_386_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_address_reg_386_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_address_reg_386_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_address_reg_386_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_address_reg_386_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_address_reg_386_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_address_reg_386_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_address_reg_386_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_address_reg_386_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_address_reg_386_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_address_reg_386_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln468_fu_92[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \add_ln468_fu_92[3]_i_1\ : label is "soft_lutpair24";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of address_reg_386_reg_0 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of address_reg_386_reg_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of address_reg_386_reg_0 : label is 98304;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of address_reg_386_reg_0 : label is "MultiSine/address_reg_386_reg_0";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of address_reg_386_reg_0 : label is "NONE";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of address_reg_386_reg_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of address_reg_386_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of address_reg_386_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of address_reg_386_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of address_reg_386_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of address_reg_386_reg_0 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of address_reg_386_reg_1 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of address_reg_386_reg_1 : label is "";
  attribute RTL_RAM_BITS of address_reg_386_reg_1 : label is 98304;
  attribute RTL_RAM_NAME of address_reg_386_reg_1 : label is "MultiSine/address_reg_386_reg_1";
  attribute RTL_RAM_STYLE of address_reg_386_reg_1 : label is "NONE";
  attribute RTL_RAM_TYPE of address_reg_386_reg_1 : label is "RAM_SP";
  attribute ram_addr_begin of address_reg_386_reg_1 : label is 0;
  attribute ram_addr_end of address_reg_386_reg_1 : label is 4095;
  attribute ram_offset of address_reg_386_reg_1 : label is 0;
  attribute ram_slice_begin of address_reg_386_reg_1 : label is 8;
  attribute ram_slice_end of address_reg_386_reg_1 : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of address_reg_386_reg_2 : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS of address_reg_386_reg_2 : label is "";
  attribute RTL_RAM_BITS of address_reg_386_reg_2 : label is 98304;
  attribute RTL_RAM_NAME of address_reg_386_reg_2 : label is "MultiSine/address_reg_386_reg_2";
  attribute RTL_RAM_STYLE of address_reg_386_reg_2 : label is "NONE";
  attribute RTL_RAM_TYPE of address_reg_386_reg_2 : label is "RAM_SP";
  attribute ram_addr_begin of address_reg_386_reg_2 : label is 0;
  attribute ram_addr_end of address_reg_386_reg_2 : label is 4095;
  attribute ram_offset of address_reg_386_reg_2 : label is 0;
  attribute ram_slice_begin of address_reg_386_reg_2 : label is 16;
  attribute ram_slice_end of address_reg_386_reg_2 : label is 23;
  attribute SOFT_HLUTNM of \indvars_iv44_fu_84[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \indvars_iv44_fu_84[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \indvars_iv44_fu_84[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \indvars_iv44_fu_84[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \indvars_iv44_fu_84[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \indvars_iv44_fu_84[5]_i_2\ : label is "soft_lutpair25";
begin
  s_axi_BUS_A_BRESP(1) <= \<const0>\;
  s_axi_BUS_A_BRESP(0) <= \<const0>\;
  s_axi_BUS_A_RRESP(1) <= \<const0>\;
  s_axi_BUS_A_RRESP(0) <= \<const0>\;
BUS_A_s_axi_U: entity work.AudioPlatform_MultiSine_0_0_MultiSine_BUS_A_s_axi
     port map (
      E(0) => ap_enable_reg_pp0_iter0,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_BUS_A_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_BUS_A_AWREADY,
      Q(8 downto 0) => sineIdx5_fu_96(8 downto 0),
      address_reg_386_reg_0(31) => accumulators_U_n_0,
      address_reg_386_reg_0(30) => accumulators_U_n_1,
      address_reg_386_reg_0(29) => accumulators_U_n_2,
      address_reg_386_reg_0(28) => accumulators_U_n_3,
      address_reg_386_reg_0(27) => accumulators_U_n_4,
      address_reg_386_reg_0(26) => accumulators_U_n_5,
      address_reg_386_reg_0(25) => accumulators_U_n_6,
      address_reg_386_reg_0(24) => accumulators_U_n_7,
      address_reg_386_reg_0(23) => accumulators_U_n_8,
      address_reg_386_reg_0(22) => accumulators_U_n_9,
      address_reg_386_reg_0(21) => accumulators_U_n_10,
      address_reg_386_reg_0(20) => accumulators_U_n_11,
      address_reg_386_reg_0(19) => accumulators_U_n_12,
      address_reg_386_reg_0(18) => accumulators_U_n_13,
      address_reg_386_reg_0(17) => accumulators_U_n_14,
      address_reg_386_reg_0(16) => accumulators_U_n_15,
      address_reg_386_reg_0(15) => accumulators_U_n_16,
      address_reg_386_reg_0(14) => accumulators_U_n_17,
      address_reg_386_reg_0(13) => accumulators_U_n_18,
      address_reg_386_reg_0(12) => accumulators_U_n_19,
      address_reg_386_reg_0(11) => accumulators_U_n_20,
      address_reg_386_reg_0(10) => accumulators_U_n_21,
      address_reg_386_reg_0(9) => accumulators_U_n_22,
      address_reg_386_reg_0(8) => accumulators_U_n_23,
      address_reg_386_reg_0(7) => accumulators_U_n_24,
      address_reg_386_reg_0(6) => accumulators_U_n_25,
      address_reg_386_reg_0(5) => accumulators_U_n_26,
      address_reg_386_reg_0(4) => accumulators_U_n_27,
      address_reg_386_reg_0(3) => accumulators_U_n_28,
      address_reg_386_reg_0(2) => accumulators_U_n_29,
      address_reg_386_reg_0(1) => accumulators_U_n_30,
      address_reg_386_reg_0(0) => accumulators_U_n_31,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_enable_reg_pp0_iter4 => ap_enable_reg_pp0_iter4,
      ap_loop_exit_ready_pp0_iter2_reg => ap_loop_exit_ready_pp0_iter2_reg,
      ap_loop_exit_ready_pp0_iter4_reg => ap_loop_exit_ready_pp0_iter4_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      d0(31 downto 0) => d0(31 downto 0),
      interrupt => interrupt,
      \out\(23) => address_reg_386_reg_2_n_28,
      \out\(22) => address_reg_386_reg_2_n_29,
      \out\(21) => address_reg_386_reg_2_n_30,
      \out\(20) => address_reg_386_reg_2_n_31,
      \out\(19) => address_reg_386_reg_2_n_32,
      \out\(18) => address_reg_386_reg_2_n_33,
      \out\(17) => address_reg_386_reg_2_n_34,
      \out\(16) => address_reg_386_reg_2_n_35,
      \out\(15) => address_reg_386_reg_1_n_28,
      \out\(14) => address_reg_386_reg_1_n_29,
      \out\(13) => address_reg_386_reg_1_n_30,
      \out\(12) => address_reg_386_reg_1_n_31,
      \out\(11) => address_reg_386_reg_1_n_32,
      \out\(10) => address_reg_386_reg_1_n_33,
      \out\(9) => address_reg_386_reg_1_n_34,
      \out\(8) => address_reg_386_reg_1_n_35,
      \out\(7) => address_reg_386_reg_0_n_28,
      \out\(6) => address_reg_386_reg_0_n_29,
      \out\(5) => address_reg_386_reg_0_n_30,
      \out\(4) => address_reg_386_reg_0_n_31,
      \out\(3) => address_reg_386_reg_0_n_32,
      \out\(2) => address_reg_386_reg_0_n_33,
      \out\(1) => address_reg_386_reg_0_n_34,
      \out\(0) => address_reg_386_reg_0_n_35,
      rewind_ap_ready_reg => rewind_ap_ready_reg,
      s_axi_BUS_A_ARADDR(11 downto 0) => s_axi_BUS_A_ARADDR(11 downto 0),
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_AWADDR(9 downto 0) => s_axi_BUS_A_AWADDR(11 downto 2),
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_AWVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_BREADY,
      s_axi_BUS_A_BVALID => s_axi_BUS_A_BVALID,
      s_axi_BUS_A_RDATA(31 downto 0) => s_axi_BUS_A_RDATA(31 downto 0),
      s_axi_BUS_A_RREADY => s_axi_BUS_A_RREADY,
      s_axi_BUS_A_RVALID => s_axi_BUS_A_RVALID,
      s_axi_BUS_A_WDATA(31 downto 0) => s_axi_BUS_A_WDATA(31 downto 0),
      s_axi_BUS_A_WREADY => s_axi_BUS_A_WREADY,
      s_axi_BUS_A_WSTRB(3 downto 0) => s_axi_BUS_A_WSTRB(3 downto 0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID,
      select_ln49_fu_194_p3(2 downto 0) => select_ln49_fu_194_p3(2 downto 0)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
accumulators_U: entity work.AudioPlatform_MultiSine_0_0_MultiSine_accumulators_RAM_AUTO_1R1W
     port map (
      ADDRD(2 downto 0) => accumulators_addr_reg_366(2 downto 0),
      E(0) => ap_enable_reg_pp0_iter0,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      d0(31 downto 0) => d0(31 downto 0),
      q1(31) => accumulators_U_n_0,
      q1(30) => accumulators_U_n_1,
      q1(29) => accumulators_U_n_2,
      q1(28) => accumulators_U_n_3,
      q1(27) => accumulators_U_n_4,
      q1(26) => accumulators_U_n_5,
      q1(25) => accumulators_U_n_6,
      q1(24) => accumulators_U_n_7,
      q1(23) => accumulators_U_n_8,
      q1(22) => accumulators_U_n_9,
      q1(21) => accumulators_U_n_10,
      q1(20) => accumulators_U_n_11,
      q1(19) => accumulators_U_n_12,
      q1(18) => accumulators_U_n_13,
      q1(17) => accumulators_U_n_14,
      q1(16) => accumulators_U_n_15,
      q1(15) => accumulators_U_n_16,
      q1(14) => accumulators_U_n_17,
      q1(13) => accumulators_U_n_18,
      q1(12) => accumulators_U_n_19,
      q1(11) => accumulators_U_n_20,
      q1(10) => accumulators_U_n_21,
      q1(9) => accumulators_U_n_22,
      q1(8) => accumulators_U_n_23,
      q1(7) => accumulators_U_n_24,
      q1(6) => accumulators_U_n_25,
      q1(5) => accumulators_U_n_26,
      q1(4) => accumulators_U_n_27,
      q1(3) => accumulators_U_n_28,
      q1(2) => accumulators_U_n_29,
      q1(1) => accumulators_U_n_30,
      q1(0) => accumulators_U_n_31,
      select_ln49_fu_194_p3(2 downto 0) => select_ln49_fu_194_p3(2 downto 0)
    );
\accumulators_addr_reg_366_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln49_fu_194_p3(0),
      Q => accumulators_addr_reg_366(0),
      R => '0'
    );
\accumulators_addr_reg_366_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln49_fu_194_p3(1),
      Q => accumulators_addr_reg_366(1),
      R => '0'
    );
\accumulators_addr_reg_366_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln49_fu_194_p3(2),
      Q => accumulators_addr_reg_366(2),
      R => '0'
    );
\add_ln468_fu_92[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => indvars_iv44_fu_84(0),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => add_ln468_fu_92_reg(0),
      O => add_ln46_fu_292_p2(0)
    );
\add_ln468_fu_92[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => indvars_iv44_fu_84(0),
      I1 => add_ln468_fu_92_reg(0),
      I2 => indvars_iv44_fu_84(1),
      I3 => icmp_ln497_reg_157_pp0_iter1_reg,
      I4 => add_ln468_fu_92_reg(1),
      O => add_ln46_fu_292_p2(1)
    );
\add_ln468_fu_92[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7A70758F8A808"
    )
        port map (
      I0 => zext_ln46_fu_279_p1(0),
      I1 => indvars_iv44_fu_84(1),
      I2 => icmp_ln497_reg_157_pp0_iter1_reg,
      I3 => add_ln468_fu_92_reg(1),
      I4 => add_ln468_fu_92_reg(2),
      I5 => indvars_iv44_fu_84(2),
      O => add_ln46_fu_292_p2(2)
    );
\add_ln468_fu_92[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \add_ln468_fu_92[5]_i_2_n_0\,
      I1 => indvars_iv44_fu_84(3),
      I2 => icmp_ln497_reg_157_pp0_iter1_reg,
      I3 => add_ln468_fu_92_reg(3),
      O => add_ln46_fu_292_p2(3)
    );
\add_ln468_fu_92[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7A70758F8A808"
    )
        port map (
      I0 => \add_ln468_fu_92[5]_i_2_n_0\,
      I1 => indvars_iv44_fu_84(3),
      I2 => icmp_ln497_reg_157_pp0_iter1_reg,
      I3 => add_ln468_fu_92_reg(3),
      I4 => add_ln468_fu_92_reg(4),
      I5 => indvars_iv44_fu_84(4),
      O => add_ln46_fu_292_p2(4)
    );
\add_ln468_fu_92[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F8080807F80"
    )
        port map (
      I0 => \add_ln468_fu_92[5]_i_2_n_0\,
      I1 => zext_ln46_fu_279_p1(3),
      I2 => zext_ln46_fu_279_p1(4),
      I3 => indvars_iv44_fu_84(5),
      I4 => icmp_ln497_reg_157_pp0_iter1_reg,
      I5 => add_ln468_fu_92_reg(5),
      O => add_ln46_fu_292_p2(5)
    );
\add_ln468_fu_92[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC00000000000"
    )
        port map (
      I0 => indvars_iv44_fu_84(2),
      I1 => add_ln468_fu_92_reg(2),
      I2 => add_ln468_fu_92_reg(1),
      I3 => icmp_ln497_reg_157_pp0_iter1_reg,
      I4 => indvars_iv44_fu_84(1),
      I5 => zext_ln46_fu_279_p1(0),
      O => \add_ln468_fu_92[5]_i_2_n_0\
    );
\add_ln468_fu_92_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => add_ln46_fu_292_p2(0),
      Q => add_ln468_fu_92_reg(0),
      S => ap_condition_194
    );
\add_ln468_fu_92_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => add_ln46_fu_292_p2(1),
      Q => add_ln468_fu_92_reg(1),
      R => ap_condition_194
    );
\add_ln468_fu_92_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => add_ln46_fu_292_p2(2),
      Q => add_ln468_fu_92_reg(2),
      R => ap_condition_194
    );
\add_ln468_fu_92_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => add_ln46_fu_292_p2(3),
      Q => add_ln468_fu_92_reg(3),
      R => ap_condition_194
    );
\add_ln468_fu_92_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => add_ln46_fu_292_p2(4),
      Q => add_ln468_fu_92_reg(4),
      R => ap_condition_194
    );
\add_ln468_fu_92_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => add_ln46_fu_292_p2(5),
      Q => add_ln468_fu_92_reg(5),
      R => ap_condition_194
    );
address_reg_386_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"A56F3800C88E5419DEA26527E9AA6B2BEAAA6827E5A3601DDA975310CC884400",
      INIT_01 => X"CCC3B8AC9D8D7B68523B2309EDCFB1906E4B2701D9B1875C2F02D3A373410EDA",
      INIT_02 => X"5699D9165189BEF0204D78A0C5E80826425B728799A9B7C2CCD3D8DBDCDBD8D3",
      INIT_03 => X"6A18C2680AA843DA6EFE8A13991B99158C0172E04AB21677D52F87DC2D7CC710",
      INIT_04 => X"376D9FCCF41837526879868E92928D8476654E3416F3CCA1723F08CD8E4B04B9",
      INIT_05 => X"F3D0A87A470ECF8B42F39E44E58016A733B93AB62D9E0B72D5328BDE2D77BBFB",
      INIT_06 => X"E28420B544CC4DC83DAB1375D02574BDFF3B71A1CBEF0D25374349494338260F",
      INIT_07 => X"56DA57CC3AA10057A8F1326DA0CCF10F26353E3F3A2E1A00DFB7885316D38939",
      INIT_08 => X"B134AF218BEC4596DF1F5888B0D0E8F80000F8E8D0B1895A23E49E50FA9C37CA",
      INIT_09 => X"68069A25A71F8FF553A7F2346E9EC5E4F9060A05F7E1C29A6930EFA452F69226",
      INIT_0A => X"04D7A16016C162FA870B84F45AB6085190C5F1122B393E3A2C14F3C9955811C1",
      INIT_0B => X"25496271746D5B3E16E4A75F0DB048D659D13FA3FC4B8FC9F91E394A504C3E26",
      INIT_0C => X"8412950D78D82D76B3E50B263539311E00D6A16115BE5CEF77F365CB2676BBF5",
      INIT_0D => X"F5070D06F3D3A76F2AD97C129D1B8DF24C99DA103956676C6553340AD39143E9",
      INIT_0E => X"6A18B84BD14AB61466ABE20D2A3B3E351FFCCC8F46EF8C1CA01781DE2F73ABD6",
      INIT_0F => X"F252A4E91F48626F6E604319E19C49E879FD74DD3886C6F91F37423F2F12E7AF",
      INIT_10 => X"BFE7010C09F7D7A86B20C55DE661CD2C7CBDF0162C35301CFACA8C40E67E0884",
      INIT_11 => X"22281E05DEA7610BA733B11F7FCF1143677B8178603903BE6B0998198AED4287",
      INIT_12 => X"938A71480FC76F078F0871CB144F7994A09C886532F09F3ECD4DBE2072B5E80D",
      INIT_13 => X"AEA9936C36EF972FB82F97EE356C93AAB0A68D6329DF851BA1177DD3194F768C",
      INIT_14 => X"384745330FDB9640D961D94096DC1034484A3C1EEFAF5EFD8C0A77D4215D88A4",
      INIT_15 => X"1C50728483724F1BD67F179E1478CB0D3E5E6C6A5631FBB45CF379EE52A5E718",
      INIT_16 => X"6FD72C70A2C3D1CEB9925A10B447C83794E01B445B60553708C876129E177FD6",
      INIT_17 => X"731CB236A707548FB8CFD4C7A87633DD75FC70D223618DA8B0A78B5E1FCE6BF6",
      INIT_18 => X"948A6C3CF9A43DC23697E5214A6166583805C068FF82F453A0DA02181C0DECB9",
      INIT_19 => X"6CB9F2192D2E1CF7BF7518A8258FE72C5E7E8A856C4002B24ED850B40646738D",
      INIT_1A => X"C36F098F0363B0EA11242513EDB56A0B9A157DD31545616B614516D37E169B0D",
      INIT_1B => X"8DA2A3916B33E687148EF54888B5CFD5C8A8742ED467E653ACF22544514A3003",
      INIT_1C => X"F173E33E86BBDCEAE4CA9D5D09A22799F8427A9EAFAC966C2FDF7B0479DB2A65",
      INIT_1D => X"43381AE8A249DC5CC7206496B3BDB3966520C85DDD4AA4EA1D3B473F23F4B15B",
      INIT_1E => X"0873CB0E3E5A63583906C066F877E2397DADC9D1C6A8752FD568E652A9ED1D3A",
      INIT_1F => X"F6D9A8630A9D1D89E12657747D735423DD84179601599DCDEAF3E8C99751F789",
      INIT_20 => X"F44E94C6E5F0E7CB9B57FF941582DB2153717C725525E0881C9D0962A7D9F6FF",
      INIT_21 => X"17E7A34BE062CF296FA2C1CCC4A87834DD72F462BC0235545F573A0BC7700586",
      INIT_22 => X"A7EA19353E3213E19B42D554C0185D8EABB5AB8E5D18C054D5429BE113313C33",
      INIT_23 => X"1DCE6CF76ED223608AA0A3926E37EC8E1C97FE5293BFD9DFD1B07C34D869E751",
      INIT_24 => X"203A413415E29C43D757C51F6599B9C6C0A77A3AE7800679D9255E8396948058",
      INIT_25 => X"88036BC003324F584F3203C16B0388F958A3DC01141300D99F52F27FF85FB2F3",
      INIT_26 => X"5C2FF09E3AC2399CED2B566F75694917D27B10930360ABE3081A1905DFA559FA",
      INIT_27 => X"D2F402FFE9C1873ADB6AE650A8ED20404E493309CD7F1EAB258DE22555737E76",
      INIT_28 => X"4EB102426F8B948C724507B755E05AC2185B8DACBAB59E753AED8D1C98025A9F",
      INIT_29 => X"60F87EF357A9E91836423C25FDC27619AA2996F23C759CB1B4A6855310BA53D9",
      INIT_2A => X"C58330CC57D13B93DA1035494B3D1DECAB57F37EF75FB6FB2F5264645330FCB7",
      INIT_2B => X"6338FCB053E567D93A8BCAFA18262411EDB8731DB63EB61D73B8ED10232516F6",
      INIT_2C => X"4E28F2AB55F07AF45EB8023C66808A836D460FC87109920A71C910476D83897F",
      INIT_2D => X"BE8B48F69424A31475C7093B5F72776B5026ECA249E067DF469FE72049626B64",
      INIT_2E => X"15C15EEC6CDD3F92D70D344C55503B18E5A453F486087CE0367CB3DBF4FDF7E2",
      INIT_2F => X"D94FB7125E9CCCED0107FEE7C28F4DFEA033B82F98F23E7BAACADCDFD4BA925B",
      INIT_30 => X"B6E0FE0E1106EEC8965507AC43CD49B7186CB1E913303E3F3318EFB97523C355",
      INIT_31 => X"7840FCAB4EE36DE959BC135C99C9EC020C08F8DAB07834E284189F1986E6387E",
      INIT_32 => X"0D5B9ED4FF1D3037322104DBA66417BE58E668DE48A5F63B739FBFD2D9D3C1A3",
      INIT_33 => X"843FEF942DBC40B82587DE2A6A9FC9E8FB02FEEFD5AE7D40F7A242D760DD4EB4",
      INIT_34 => X"0513171100E5C0905712C46A0799209D0F77D4276FACDE0623353C392B11EDBE",
      INIT_35 => X"D61D5A8EB9DAF1FF04FFF0D8B68B5617CE7C20BA4AD14DC02987DC27689ECBED",
      INIT_36 => X"56BA1568B3F42D5E86A5BBC9CECABEA88A6232F9B76C17BA54E46CEA5FCB2D86",
      INIT_37 => X"F95FBC1260A7E61D4C7493ABBBC3C3BBAB93734B1BE3A25909AF4EE472F875EA",
      INIT_38 => X"4B94D8144A78A0C1DCEFFC01FFF7E7D1B38E622FF4B36A19C263FC8F199D188D",
      INIT_39 => X"E7F803090903F7E5CDB08C6232FCC07D35E69136D46CFE890E8D0576E145A3FA",
      INIT_3A => X"7B36EC9D4AF29432CA5EEC76FA79F267D640A5045EB2024B8FCE073A6890B3D0",
      INIT_3B => X"C2094C8BC7FE31608BB2D4F30D2335434C51514D45382611F6D7B38B5E2CF6BB",
      INIT_3C => X"853AEB9945ED9235D470089E30BF4AD358D957D249BC2C990267C82680D62978",
      INIT_3D => X"949899989590897F746656442F19FFE4C6A6835D350BDEAE7C470FD4975714CE",
      INIT_3E => X"C8FB2D5E8EBDEA16426C94BCE2062A4C6C8BA8C4DEF70E2437495A68757F888F",
      INIT_3F => X"FD4185C90D5094D71A5C9FE12263A4E52564A3E11F5C98D40E4982BBF2295F94",
      INIT_40 => X"144A80B8F12A649FDB175492D00F4E8ECE0F5092D416599CDF2266AAED3175B9",
      INIT_41 => X"EBF4FF0B1A2A3C50657C95AFCBE80727496D91B7DF07315C89B6E5154678ABDF",
      INIT_42 => X"601DDDA0652DF8C696693F17F1CEAE90745B44301D0D00F4EBE4DFDCDBDCDFE4",
      INIT_43 => X"4D9FF54FAD0E74DC49B92CA31E9C1DA22AB645D76C05A140E2872FDB893BEFA6",
      INIT_44 => X"814B19ECC3A08066503F322925262A3441536983A2C4EB164578AFEA296CB3FE",
      INIT_45 => X"C6E9113E72ABE92D77C61A74D338A21185FF7E028B1AAD46E3862DDA8B41FCBC",
      INIT_46 => X"D8369A0576EE6CF17D0EA644E99445FDBA7E4818EECAAC9482767070768192A9",
      INIT_47 => X"65E164EF811ABB6413CA884E1BEEC9AC95857D7B808DA0BADB033267A4E73081",
      INIT_48 => X"0B880E9C32D07726DD9D64340CECD4C4BCBCC4D4EB0B326198D71E6CC21F84F1",
      INIT_49 => X"56B92499179F2FC96B17CC895020F8DAC4B7B4B8C6DCFB23548DCE186BC72A97",
      INIT_4A => X"BCE91F60AAFF5EC639B53BCB6509B76E2FFACFAD9486818593AACBF62967ADFD",
      INIT_4B => X"9E7960514E556784ABDE1B63B5127AEC69F0821EC57632F8C8A388777074829A",
      INIT_4C => X"41B22FB74CEC974E11DFB99E8F8B92A5C4ED2262AE0567D44CD05EF89D4C07CD",
      INIT_4D => X"D2BFBAC0D3F31F579CED4AB329AB39D37A2CEBB68D6F5E59607291BBF23482DB",
      INIT_4E => X"5FB1117EF87F13B4621EE6BC9E8D8A93A9CCFC3982D83BAB27B146E998531CF0",
      INIT_4F => X"D97927E3AC84695C5D6B88B2E92F82E351CD56ED924403D0AB93888A9AB8E21A",
      INIT_50 => X"10E7CDC2C5D7F72562AE0870E76C00A15110DCB7A0979DB0D202408CE54DC347",
      INIT_51 => X"AFA9B3CBF32A70C5299D1FB15101BF8D69544E587096CC1164C637B644E18D47",
      INIT_52 => X"414A638CC40D65CC44CB6208BE84593E33374A6DA0E23394048413B25F1CE9C4",
      INIT_53 => X"282E446AA1E83FA71FA73FE8A069432C252F4972ACF650BA34BE5801BB855E48",
      INIT_54 => X"A29394A7CAFE44990078009943FDC8A4918E9CBAE92979DA4CCE6003B67A4F33",
      INIT_55 => X"C28D6B59596B8DC1075DC53EC86410CE9D7E6F7285AAE0277EE761EC8835F3C2",
      INIT_56 => X"710AB4703E1D0F12274D85CF2B9817A84AFEC49B847E8AA7D61668CB40C65E07",
      INIT_57 => X"71C832AE3CDC8F542A130E1C3B6CB0056DE6720FBF81543A313B5683C21376EB",
      INIT_58 => X"535E7BABED42AA24B15001C59C85808EAEE0257DE763F192450BE2CCC9D7F82B",
      INIT_59 => X"7E32F8D2BEBDCEF32B75D242C45A02BD8B6B5E647DA8E6369A109833E1A2755B",
      INIT_5A => X"2C7FE55FEB8B3E04DDC9C8DAFF3883E253D76F19D7A78B818AA6D6186DD550DE",
      INIT_5B => X"65504F6186BF0B6ADD62FCA8683B211B28487BC21C89099D43FDCAAB9EA5BFEB",
      INIT_5C => X"058213B76F3A190B112A5797EB52CD5BFCB1795544475D87C41478EF7917C88D",
      INIT_5D => X"B6C1DF1156B01C9D31D89362453B446292D72F9A1AAC530CDABBAFB7D302459B",
      INIT_5E => X"F58932EEBEA299A4C3F53C95038419C27E4E3229345385CB259213A8500CDCBF",
      INIT_5F => X"0A27599EF663E3771EDAA98B828CAADC227BE868FDA56131140B163466AC0673",
      INIT_60 => X"10B6703E1F141C3969AC046FEE8127E1AF91868FACDD2179E565F89F5A280A00",
      INIT_61 => X"F12165BC27A538DE9765463A435F8ED2299312A44A03D0B1A6AECAFA3D95FF7E",
      INIT_62 => X"6421F2D6CDD8F7296FC936B64AF2AD7C5F555E7BACF149B434C76D27F5D7CCD5",
      INIT_63 => X"F241A218A03CECAE846E6B7B9FD72180F1760FBB7A4D342D3B5C90D833A225BB",
      INIT_64 => X"F3D9D2DEFD3076CF3BBA4DF3AC78584A506A96D629900A9737EBB28C7A7B8FB7",
      INIT_65 => X"8E13AB5513E3C7BDC6E31254A9128D1BBC7138130001143B75C121941BB46020",
      INIT_66 => X"BDEA297BE057E07D2CEEC2A9A3B0CF01469D078414B76C340FFDFE123871BD1C",
      INIT_67 => X"4B291A1E335B96E241B236CC742FFCDBCDD2E8124D9CFC6FF58D38F5C5A79CA3",
      INIT_68 => X"D26F1EDEB1958B94AEDA1868CA3FC55D07C39272656980A9E4319002861BC47E",
      INIT_69 => X"C42CA530CC7A3A0AEDE1E6FD2660AC0978F98B2FE5AD86716D7C9CCE1167CE47",
      INIT_6A => X"62A4F75ACF55EC934C16F1DDDAE908397BCE32A72EC66F2AF5D2C1C0D1F4286D",
      INIT_6B => X"C6F22E7AD744C250EF9F5F2F100205183C70B50B72EA720BB56F3B1704021131",
      INIT_6C => X"DF053B81D73DB339CE742AF0C6ACA2A8BFE51C63BA229921B9621AE4BDA7A1AB",
      INIT_6D => X"72A5E83A9B0C8C1BBA6826F3D0BCB8C3DE09438CE54EC74FE78F460EE5CBC2C9",
      INIT_6E => X"1E72D546C655F3A05B25FEE6DCE2F61A4C8DDE3DAB28B550FBB57D553D33394E",
      INIT_6F => X"5CE67E23D7996947332E364D72A5E73694017B049C42F6B88A6957545F79A1D8",
      INIT_70 => X"82573A2A2732496FA2E2308BF46AEE7F1ECB854D2306F8F7031E467CC11372E0",
      INIT_71 => X"C3FA3E8FEC56CD50E07D27DDA0704D372D31415E89C00556B520991FB25200BA",
      INIT_72 => X"2FE19F683D1F0C050A1B386196D7247EE355D35DF3964500C89B7C6861677997",
      INIT_73 => X"BB0050AB1182FF8619B76014D39E7556433B3F4E698FC0FD469AFA66DD60EF89",
      INIT_74 => X"3B2D2930405B80B0EA2E7CD539A71FA230C86B19D19361391C0A0306142D5281",
      INIT_75 => X"6C25E8B4896851423E4351698BB6EC2A73C52187F770F48118B9651AD9A37654",
      INIT_76 => X"EE8A2EDB914F16E5BE9E887A7579859BB9E1114A8CD72B88EF5ED758E37815BC",
      INIT_77 => X"4CE78933E59E5F28F9D1B29A8A82828A99B1D1F92962A2EB3C95F660D24CCF5A",
      INIT_78 => X"FCB26F33FDCEA6856B574B45474F5F7593B8E4175293DC2C84E349B72CA92DB9",
      INIT_79 => X"6150443F3F4551627A98BCE5154B88CA1261B61173DB49BE39BA42D16601A44C",
      INIT_7A => X"CE135CABFF57B4177EEB5CD34FD056E17208A344EA9647FDB97A410EE0B89578",
      INIT_7B => X"8740FDBE834C18E9BE9875563C261406FDF8F8FC04112238537295BEEB1C538E",
      INIT_7C => X"C5105FB1055DB71576DA42AC1A8BFF77F271F378018D1DB148E38124C97321D2",
      INIT_7D => X"B6B3B2B3B6BBC2CBD7E4F4061B324B6684A5C8ED153F6D9CCF043B76B3F3367C",
      INIT_7E => X"83501EEDBD8E613409DFB68F694421FFDFC0A2866C533C271301F1E2D6CBC2BB",
      INIT_7F => X"4D0AC6823EFBB77431EFAC6A29E7A66626E7A86A2CEFB3773C02C9905822ECB7",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => d0(31 downto 20),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_address_reg_386_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_address_reg_386_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_address_reg_386_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000011111111",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 8) => NLW_address_reg_386_reg_0_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7) => address_reg_386_reg_0_n_28,
      DOADO(6) => address_reg_386_reg_0_n_29,
      DOADO(5) => address_reg_386_reg_0_n_30,
      DOADO(4) => address_reg_386_reg_0_n_31,
      DOADO(3) => address_reg_386_reg_0_n_32,
      DOADO(2) => address_reg_386_reg_0_n_33,
      DOADO(1) => address_reg_386_reg_0_n_34,
      DOADO(0) => address_reg_386_reg_0_n_35,
      DOBDO(31 downto 0) => NLW_address_reg_386_reg_0_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_address_reg_386_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_address_reg_386_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_address_reg_386_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => NLW_address_reg_386_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_address_reg_386_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_address_reg_386_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => ap_enable_reg_pp0_iter2,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_address_reg_386_reg_0_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
address_reg_386_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"15E3B17F4C1AE8B683511FEDBA885624F1BF8D5B28F6C4925F2DFBC996643200",
      INIT_01 => X"5927F5C3915F2DFBC997653300CE9C6A3806D4A26F3D0BD9A7754210DEAC7A47",
      INIT_02 => X"96643201CF9D6B3908D6A472400EDDAB794715E3B17F4D1BE9B7855321EFBD8B",
      INIT_03 => X"C796643302D09F6D3C0AD9A8764513E2B07F4D1BEAB8875523F2C08E5D2BF9C8",
      INIT_04 => X"E9B8875625F5C493623100CF9E6D3C0BDAA9784716E4B3825120EFBD8C5B2AF8",
      INIT_05 => X"F7C797673707D6A6764515E5B4845423F3C292613100D09F6E3E0DDCAC7B4A19",
      INIT_06 => X"EFC091613202D3A3744415E5B5865626F6C797673707D8A8784818E8B8885828",
      INIT_07 => X"CD9E704113E4B6875829FBCC9D6E3F11E2B3845526F7C899693A0BDCAD7D4E1F",
      INIT_08 => X"8C5F3104D6A87B4D1FF2C496683A0CDEB1835426F8CA9C6E4011E3B586582AFB",
      INIT_09 => X"2AFED1A5784C1FF2C6996C4013E6B98C5F3306D9AB7E5124F7CA9C6F4214E7BA",
      INIT_0A => X"A3774C21F6CA9F73481DF1C59A6E4317EBBF93683C10E4B88C603307DBAF8356",
      INIT_0B => X"F3C99F754B21F7CDA3784E24FACFA57A5025FBD0A57B5025FAD0A57A4F24F9CE",
      INIT_0C => X"17EFC69E754C24FBD2A981582F06DDB48B61380FE6BC93694016EDC39A70461C",
      INIT_0D => X"0CE6BF98704922FBD4AC855E360FE7BF98704821F9D1A981593109E1B890683F",
      INIT_0E => X"D0AB85603A15EFCAA47E58330DE7C19B754E2802DCB58F69421CF5CEA8815A33",
      INIT_0F => X"5E3B17F3D0AC8864401CF8D4AF8B67421EF9D5B08C67421DF9D4AF8A65401AF5",
      INIT_10 => X"B59372502E0BE9C7A583603E1BF9D6B4916E4B2906E3C09D79563310ECC9A682",
      INIT_11 => X"D2B29272513111F1D0B08F6F4E2D0DECCBAA8968472605E3C2A17F5E3C1AF9D7",
      INIT_12 => X"B1937557391AFCDEBFA18263452607E8C9AA8B6C4D2D0EEFCFB09071513111F2",
      INIT_13 => X"513519FDE1C4A88C6F533619FDE0C3A6896C4F3215F7DABD9F826446290BEDCF",
      INIT_14 => X"B0967C62482D13F9DEC4A98F74593F2409EED3B89C81664A2F14F8DCC1A5896D",
      INIT_15 => X"CBB39B836B533B230AF2DAC1A990775F462D14FBE2C9AF967D634A3017FDE3CA",
      INIT_16 => X"A08A755F49331D07F1DBC5AF98826B553E2711FAE3CCB59E876F58412912FAE2",
      INIT_17 => X"2E1B07F4E0CDB9A5917D6955412D1904F0DBC7B29E89745F4A35200BF6E0CBB5",
      INIT_18 => X"736251402E1D0CFAE9D7C5B4A2907E6C5A48352310FEEBD9C6B3A18E7B685441",
      INIT_19 => X"6E5F504233241505F6E7D8C8B9A9998A7A6A5A4A3A2A1A09F9E8D8C7B7A69584",
      INIT_1A => X"1D1105F8ECDFD2C5B9AC9F9284776A5D4F423426190BFDEFE1D3C5B6A89A8B7D",
      INIT_1B => X"80766C62584E43392F24190F04F9EEE3D8CDC2B7ABA094897D71665A4E42362A",
      INIT_1C => X"958E867F776F675F574F473F372E261D140C03FAF1E8DFD6CDC3BAB1A79D948A",
      INIT_1D => X"5D58534D48433D38322D27211B150F0903FDF6F0E9E3DCD5CFC8C1BAB3ABA49D",
      INIT_1E => X"D6D3D0CECBC8C5C2BFBCB8B5B1AEAAA7A39F9B97938F8B87827E7975706B6762",
      INIT_1F => X"FFFFFFFFFFFEFEFDFCFCFBFAF9F8F7F6F4F3F2F0EFEDEBE9E7E5E3E1DFDDDAD8",
      INIT_20 => X"DADDDFE1E3E5E7E9EBEDEEF0F2F3F4F6F7F8F9FAFBFCFCFDFEFEFFFFFFFFFFFF",
      INIT_21 => X"676B7075797E82878B8F93979B9FA3A7AAAEB1B5B8BCBFC2C5C8CBCED0D3D6D8",
      INIT_22 => X"A4ABB3BAC1C8CFD5DCE3E9F0F6FD03090F151B21272D32383D43484D53585D62",
      INIT_23 => X"949DA7B0BAC3CDD6DFE8F1FA030C141D262E363F474F575F676F777F868E959D",
      INIT_24 => X"36424E5A66717D8994A0ABB7C2CDD8E3EEF9040F19242F39434E58626C76808A",
      INIT_25 => X"8B9AA8B6C5D3E1EFFD0B192634424F5C6A7784929FACB9C5D2DFEBF804111D29",
      INIT_26 => X"95A6B6C7D8E8F909192A3A4A5A6A7A8A99A9B9C8D8E7F60515243342505F6E7C",
      INIT_27 => X"54677B8DA0B3C6D9EBFE102335475A6C7E90A2B4C5D7E9FA0C1D2E4051627384",
      INIT_28 => X"CBE0F60B20354A5F74899EB2C7DBF004192D4155697D91A5B9CCE0F4071B2E41",
      INIT_29 => X"FA112940586F869EB5CCE3FA10273E556B8298AEC5DBF1071D33495F758AA0B5",
      INIT_2A => X"E3FD17304A637D96AFC9E2FB142D465E7790A8C1D9F20A223B536B839BB3CAE2",
      INIT_2B => X"89A5C0DCF8132F4A66819CB7D3EE09243E59748FA9C4DEF9132D47627C96B0C9",
      INIT_2C => X"ED0B284664819FBCDAF715324F6C89A6C3E0FD1936536F8CA8C4E1FD1935516D",
      INIT_2D => X"1131517090B0CFEF0E2D4D6C8BAAC9E80726446382A0BFDDFC1A38577593B1CF",
      INIT_2E => X"F91A3C5D7FA0C2E30426476889AACBEC0C2D4E6E8FB0D0F01131517191B1D1F1",
      INIT_2F => X"A5C9EC103356799CC0E305284B6E91B3D6F91B3E6082A5C7E90B2D4F7193B5D7",
      INIT_30 => X"1A3F648AAFD4F81D42678CB0D5F91E42678BAFD3F81C406488ACCFF3173B5E82",
      INIT_31 => X"5A81A7CEF51B42688FB5DC02284E749BC1E70C32587EA4C9EF153A6085AAD0F5",
      INIT_32 => X"6890B8E008315981A9D1F920487098BFE70E365D85ACD3FB22497097BEE50C33",
      INIT_33 => X"467099C3ED16406993BCE50F38618AB3DC062E5780A9D2FB234C759DC6EE173F",
      INIT_34 => X"F9244F7AA5CFFA25507BA5D0FB25507AA5CFF9244E78A2CDF7214B759FC9F21C",
      INIT_35 => X"82AFDB07335F8BB7E40F3B6793BFEB17426E9AC5F11C48739FCAF5214C77A2CD",
      INIT_36 => X"E714426F9CC9F724517EABD805325F8CB9E6133F6C99C6F21F4B78A4D1FD2A56",
      INIT_37 => X"295886B5E3113F6E9CCAF8265482B0DE0C3A6896C4F11F4D7BA8D603315E8CB9",
      INIT_38 => X"4E7DACDC0B3A6998C7F6255583B2E1103F6E9DCCFA295887B5E41241709ECDFB",
      INIT_39 => X"5787B8E8184877A7D707376797C6F6265685B5E5144473A3D302326190C0EF1E",
      INIT_3A => X"4A7BABDC0D3D6E9FCF00306191C2F2235384B4E5154576A6D606376797C7F727",
      INIT_3B => X"295B8CBDEE1F5182B3E4154678A9DA0B3C6D9ECF00316293C3F4255687B8E819",
      INIT_3C => X"F92B5C8EC0F1235586B8EA1B4D7EB0E1134476A7D90A3C6D9FD001336495C7F8",
      INIT_3D => X"BDEF215385B7E91B4D7FB1E3154778AADC0E4072A4D607396B9DCF00326496C7",
      INIT_3E => X"79ABDE104274A6D90B3D6FA1D306386A9CCE00326496C9FB2D5F91C3F527598B",
      INIT_3F => X"316496C8FB2D5F91C4F6285A8DBFF1235688BAEC1F5183B5E81A4C7EB0E31547",
      INIT_40 => X"EA1C4E80B2E517497BAEE0124477A9DB0D4072A4D6093B6D9FD20436689BCDFF",
      INIT_41 => X"A5D7093C6EA0D20436689ACCFE306395C7F92B5D8FC2F426588ABCEF215385B7",
      INIT_42 => X"699BCCFE306293C5F7295B8DBEF0225486B8EA1C4E80B2E3154779ABDD0F4173",
      INIT_43 => X"38699ACCFD2F6091C3F4265789BAEC1D4F80B2E3154778AADB0D3F70A2D40537",
      INIT_44 => X"164778A8D90A3B6C9DCEFF306192C3F4255687B8E91A4B7DAEDF104173A4D506",
      INIT_45 => X"07376898C8F8285989B9EA1A4A7BABDC0C3C6D9ECEFF2F6090C1F2225384B4E5",
      INIT_46 => X"0F3F6E9ECDFC2C5B8BBBEA1A4979A9D808386898C7F7275787B7E7174777A7D7",
      INIT_47 => X"32608FBDEC1B4978A7D504336290BFEE1D4C7BAAD908376695C5F4235281B1E0",
      INIT_48 => X"73A0CEFB295684B2DF0D3B6997C4F2204E7CAAD806356391BFED1C4A78A7D503",
      INIT_49 => X"D5012E5A87B3E00C396692BFEC1945729FCCF9265380ADDB08356290BDEA1845",
      INIT_4A => X"5C87B3DE0934608BB7E20E396591BCE8143F6B97C3EF1B47739FCBF724507CA8",
      INIT_4B => X"0C36608AB4DE08325C86B1DB05305A84AFD9042F5984AFD9042F5A85B0DB0631",
      INIT_4C => X"E81039618AB2DB042D557EA7D0F9224B749DC7F019436C95BFE8123B658FB9E2",
      INIT_4D => X"F21940678EB5DD042B527AA1C9F0183F678FB6DE062E567EA6CEF61E466F97BF",
      INIT_4E => X"2F547A9FC4EA10355B81A6CCF2183E648AB0D6FD23497096BDE30A30577EA5CB",
      INIT_4F => X"A0C4E80B2F53779BBFE3072B4F7498BCE1052A4E7398BDE1062B50759ABFE40A",
      INIT_50 => X"4A6B8DAFD1F315385A7C9FC1E306294B6E91B3D6F91C3F6285A9CCEF1236597D",
      INIT_51 => X"2D4D6D8DADCEEE0E2F4F7090B1D2F21334557697B8D9FA1C3D5E80A1C3E40628",
      INIT_52 => X"4E6C8AA8C6E50321405E7D9CBAD9F81736557493B2D1F110304F6F8EAECEED0D",
      INIT_53 => X"AECAE6021E3A577390ACC9E5021F3C597693B0CDEA072542607D9BB9D6F41230",
      INIT_54 => X"4F69839DB7D1EC06213B56708BA5C0DBF6112C47627E99B4D0EB07233E5A7692",
      INIT_55 => X"344C647C94ACC4DCF50D253E566F88A0B9D2EB041D364F69829BB5CEE8021B35",
      INIT_56 => X"5F758AA0B6CCE2F80E243A50677D94AAC1D7EE051C334A617890A7BED6ED051D",
      INIT_57 => X"D1E4F80B1F32465A6E8296AABED2E6FB0F23384D61768BA0B5CADFF4091F3449",
      INIT_58 => X"8C9DAEBFD0E2F30516283A4B5D6F8193A5B7CADCEE011326394C5E718497AABE",
      INIT_59 => X"91A0AEBDCCDBEAF909182737465666758595A5B5C5D5E5F60617273848596A7B",
      INIT_5A => X"E2EEFA0713202D3A4653606D7A8895A2B0BDCBD9E6F402101E2C3A4957657482",
      INIT_5B => X"7F89939DA7B1BCC6D0DBE5F0FB06111C27323D48545F6B76828D99A5B1BDC9D5",
      INIT_5C => X"6A717980889098A0A8B0B8C0C8D1D9E2EAF3FC050E172029323C454E58626B75",
      INIT_5D => X"A2A7ACB2B7BCC2C7CDD2D8DEE4EAF0F6FC02090F161C232A30373E454C545B62",
      INIT_5E => X"292C2F3134373A3D4043474A4E5155585C6064686C7074787D81868A8F94989D",
      INIT_5F => X"000000000001010203030405060708090B0C0D0F10121416181A1C1E20222527",
      INIT_60 => X"2522201E1C1A18161412110F0D0C0B0908070605040303020101000000000000",
      INIT_61 => X"98948F8A86817D7874706C6864605C5855514E4A4744403D3A3734312F2C2927",
      INIT_62 => X"5B544C453E37302A231C160F0902FCF6F0EAE4DED8D2CDC7C2BCB7B2ACA7A29D",
      INIT_63 => X"6B62584F453C322920170E05FCF3EBE2D9D1C9C0B8B0A8A09890888079716A62",
      INIT_64 => X"C9BDB1A5998E82766B5F54483D32271C1106FBF0E6DBD1C6BCB1A79D93897F75",
      INIT_65 => X"746657493B2C1E1002F4E7D9CBBEB0A395887B6E6154473A2D201407FBEEE2D6",
      INIT_66 => X"6A594938271706F6E6D5C5B5A595857666564737281809FAEBDBCCBEAFA09183",
      INIT_67 => X"AB9885725F4C39261401EFDCCAB8A593816F5D4C3A281605F3E2D1BFAE9D8C7B",
      INIT_68 => X"341F0AF4DFCAB5A08B76624D38240FFBE7D2BEAA96826E5A46331F0CF8E5D1BE",
      INIT_69 => X"05EED6BFA79079624A331C05EFD8C1AB947D67513A240EF8E2CCB6A08B755F4A",
      INIT_6A => X"1C02E8CFB59C826950371D04EBD2BAA1886F573E260DF5DDC4AC947C644C351D",
      INIT_6B => X"765A3F2307ECD0B5997E63482D12F7DCC1A68B71563B2107ECD2B89E846A5036",
      INIT_6C => X"12F5D7B99B7E60432508EBCDB09376593C1F03E6C9AD9074573B1F02E6CAAE92",
      INIT_6D => X"EECEAE8F6F503011F1D2B39374553617F8DABB9C7D5F402203E5C7A98A6C4E30",
      INIT_6E => X"07E5C3A2805F3D1CFBDAB89776553414F3D2B19170502F0FEECEAE8E6E4E2E0E",
      INIT_6F => X"5A3613F0CCA98663401DFAD7B4916E4C2907E4C29F7D5A3816F4D2B08E6C4A28",
      INIT_70 => X"E5C09B76512C07E2BD98744F2A06E1BD9974502C08E4BF9B7854300CE8C5A17D",
      INIT_71 => X"A57E58310AE4BD97704A24FDD7B18B653F19F3CDA7815C3610EBC5A07A55300A",
      INIT_72 => X"986F471FF7CFA77F572F07DFB78F684018F1C9A27A532C05DDB68F68411AF3CC",
      INIT_73 => X"B990663C13E9BF966D431AF1C79E754C23FAD1A87F562D04DCB38A623911E8C0",
      INIT_74 => X"07DCB1865B3005DAAF855A2F05DAB0855B3006DCB1875D3309DFB58B61370DE3",
      INIT_75 => X"7D5124F8CCA074481CF0C4986C4014E9BD91663A0EE3B78C61350ADFB3885D32",
      INIT_76 => X"18EBBE90633609DBAE815427FACDA0734619EDC093663A0DE0B4875B2E02D6A9",
      INIT_77 => X"D6A7794B1CEEC092633507D9AB7D4F21F3C597693C0EE0B2855729FCCEA17346",
      INIT_78 => X"B1825324F4C596673809DAAB7C4D1EEFC091623405D6A7794A1BEDBE90613304",
      INIT_79 => X"A8784818E8B8885828F8C898693909D9AA7A4A1BEBBB8C5C2DFDCE9E6F4010E1",
      INIT_7A => X"B5855423F2C2916130FFCF9E6E3D0DDCAC7C4B1BEABA8A5929F9C999683808D8",
      INIT_7B => X"D6A5734211E0AF7D4C1BEAB9885726F5C392613000CF9E6D3C0BDAA9784817E6",
      INIT_7C => X"06D5A371400EDCAB794716E4B3814F1EECBB895827F5C492612FFECD9B6A3907",
      INIT_7D => X"4210DEAC7A4816E4B2804E1DEBB9875523F1BF8D5C2AF8C6946331FFCD9B6A38",
      INIT_7E => X"865422EFBD8B5927F5C2905E2CFAC8956331FFCD9B693705D3A16E3C0AD8A674",
      INIT_7F => X"CE9C693705D2A06E3C09D7A573400EDCAA774513E1AE7C4A18E6B3814F1DEAB8",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => d0(31 downto 20),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_address_reg_386_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_address_reg_386_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_address_reg_386_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000011111111",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 8) => NLW_address_reg_386_reg_1_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7) => address_reg_386_reg_1_n_28,
      DOADO(6) => address_reg_386_reg_1_n_29,
      DOADO(5) => address_reg_386_reg_1_n_30,
      DOADO(4) => address_reg_386_reg_1_n_31,
      DOADO(3) => address_reg_386_reg_1_n_32,
      DOADO(2) => address_reg_386_reg_1_n_33,
      DOADO(1) => address_reg_386_reg_1_n_34,
      DOADO(0) => address_reg_386_reg_1_n_35,
      DOBDO(31 downto 0) => NLW_address_reg_386_reg_1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_address_reg_386_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_address_reg_386_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_address_reg_386_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => NLW_address_reg_386_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_address_reg_386_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_address_reg_386_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => ap_enable_reg_pp0_iter2,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_address_reg_386_reg_1_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
address_reg_386_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0605050505050404040404030303030302020202020101010101000000000000",
      INIT_01 => X"0C0C0B0B0B0B0B0A0A0A0A0A0A09090909090808080808070707070706060606",
      INIT_02 => X"12121212111111111110101010100F0F0F0F0F0E0E0E0E0E0D0D0D0D0D0C0C0C",
      INIT_03 => X"1818181818171717171716161616161515151515141414141413131313131212",
      INIT_04 => X"1E1E1E1E1E1D1D1D1D1D1D1C1C1C1C1C1B1B1B1B1B1A1A1A1A1A191919191918",
      INIT_05 => X"2424242424242323232323222222222221212121212120202020201F1F1F1F1F",
      INIT_06 => X"2A2A2A2A2A2A2929292929282828282827272727272726262626262525252525",
      INIT_07 => X"30303030302F2F2F2F2F2E2E2E2E2E2E2D2D2D2D2D2C2C2C2C2C2C2B2B2B2B2B",
      INIT_08 => X"3636363635353535353434343434343333333333323232323232313131313130",
      INIT_09 => X"3C3B3B3B3B3B3B3A3A3A3A3A3A39393939393938383838383737373737373636",
      INIT_0A => X"414141414040404040403F3F3F3F3F3F3E3E3E3E3E3E3D3D3D3D3D3D3C3C3C3C",
      INIT_0B => X"4646464646464545454545454444444444444343434343434242424242424141",
      INIT_0C => X"4C4B4B4B4B4B4B4A4A4A4A4A4A4A494949494949484848484848474747474747",
      INIT_0D => X"515050505050504F4F4F4F4F4F4F4E4E4E4E4E4E4D4D4D4D4D4D4D4C4C4C4C4C",
      INIT_0E => X"5555555555555454545454545453535353535353525252525252515151515151",
      INIT_0F => X"5A5A5A5959595959595958585858585858575757575757575656565656565655",
      INIT_10 => X"5E5E5E5E5E5E5D5D5D5D5D5D5D5C5C5C5C5C5C5C5C5B5B5B5B5B5B5B5A5A5A5A",
      INIT_11 => X"62626262626262616161616161616160606060606060605F5F5F5F5F5F5F5E5E",
      INIT_12 => X"6666666666666565656565656565656464646464646464636363636363636362",
      INIT_13 => X"6A6A6A6969696969696969696868686868686868686767676767676767676666",
      INIT_14 => X"6D6D6D6D6D6D6D6C6C6C6C6C6C6C6C6C6C6B6B6B6B6B6B6B6B6B6A6A6A6A6A6A",
      INIT_15 => X"7070707070707070706F6F6F6F6F6F6F6F6F6F6E6E6E6E6E6E6E6E6E6E6D6D6D",
      INIT_16 => X"7373737373737373727272727272727272727271717171717171717171717070",
      INIT_17 => X"7676767575757575757575757575757574747474747474747474747473737373",
      INIT_18 => X"7878787878787877777777777777777777777777777676767676767676767676",
      INIT_19 => X"7A7A7A7A7A7A7A7A797979797979797979797979797979797878787878787878",
      INIT_1A => X"7C7C7C7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7A7A7A7A7A7A7A7A7A7A",
      INIT_1B => X"7D7D7D7D7D7D7D7D7D7D7D7D7D7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C",
      INIT_1C => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7D7D7D7D7D7D7D7D7D7D7D7D7D",
      INIT_1D => X"7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E",
      INIT_1E => X"7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F",
      INIT_1F => X"7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F",
      INIT_20 => X"7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F",
      INIT_21 => X"7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F",
      INIT_22 => X"7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F",
      INIT_23 => X"7D7D7D7D7D7D7D7D7D7D7D7D7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E",
      INIT_24 => X"7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7D7D7D7D7D7D7D7D7D7D7D7D7D7D",
      INIT_25 => X"7A7A7A7A7A7A7A7A7A7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7C7C7C7C",
      INIT_26 => X"78787878787878797979797979797979797979797979797A7A7A7A7A7A7A7A7A",
      INIT_27 => X"7676767676767676767677777777777777777777777777777878787878787878",
      INIT_28 => X"7373737474747474747474747474747575757575757575757575757576767676",
      INIT_29 => X"7071717171717171717171717272727272727272727272737373737373737373",
      INIT_2A => X"6D6D6E6E6E6E6E6E6E6E6E6E6F6F6F6F6F6F6F6F6F6F70707070707070707070",
      INIT_2B => X"6A6A6A6A6A6B6B6B6B6B6B6B6B6B6C6C6C6C6C6C6C6C6C6C6D6D6D6D6D6D6D6D",
      INIT_2C => X"666767676767676767676868686868686868686969696969696969696A6A6A6A",
      INIT_2D => X"6363636363636363646464646464646465656565656565656566666666666666",
      INIT_2E => X"5E5F5F5F5F5F5F5F606060606060606061616161616161616262626262626262",
      INIT_2F => X"5A5A5A5B5B5B5B5B5B5B5C5C5C5C5C5C5C5C5D5D5D5D5D5D5D5E5E5E5E5E5E5E",
      INIT_30 => X"565656565656565757575757575758585858585858595959595959595A5A5A5A",
      INIT_31 => X"5151515151525252525252535353535353535454545454545455555555555555",
      INIT_32 => X"4C4C4C4C4D4D4D4D4D4D4D4E4E4E4E4E4E4F4F4F4F4F4F4F5050505050505151",
      INIT_33 => X"47474747474848484848484949494949494A4A4A4A4A4A4A4B4B4B4B4B4B4C4C",
      INIT_34 => X"4142424242424243434343434344444444444445454545454546464646464647",
      INIT_35 => X"3C3C3C3D3D3D3D3D3D3E3E3E3E3E3E3F3F3F3F3F3F4040404040404141414141",
      INIT_36 => X"3637373737373738383838383939393939393A3A3A3A3A3A3B3B3B3B3B3B3C3C",
      INIT_37 => X"3131313131323232323232333333333334343434343435353535353636363636",
      INIT_38 => X"2B2B2B2B2C2C2C2C2C2C2D2D2D2D2D2E2E2E2E2E2E2F2F2F2F2F303030303030",
      INIT_39 => X"252525252626262626272727272727282828282829292929292A2A2A2A2A2A2B",
      INIT_3A => X"1F1F1F1F20202020202121212121212222222222232323232324242424242425",
      INIT_3B => X"19191919191A1A1A1A1A1B1B1B1B1B1C1C1C1C1C1D1D1D1D1D1D1E1E1E1E1E1F",
      INIT_3C => X"1213131313131414141414151515151516161616161717171717181818181818",
      INIT_3D => X"0C0C0D0D0D0D0D0E0E0E0E0E0F0F0F0F0F101010101011111111111212121212",
      INIT_3E => X"0606060707070707080808080809090909090A0A0A0A0A0A0B0B0B0B0B0C0C0C",
      INIT_3F => X"0000000000010101010102020202020303030303040404040405050505050606",
      INIT_40 => X"F9FAFAFAFAFAFBFBFBFBFBFCFCFCFCFCFDFDFDFDFDFEFEFEFEFEFFFFFFFFFFFF",
      INIT_41 => X"F3F3F4F4F4F4F4F5F5F5F5F5F5F6F6F6F6F6F7F7F7F7F7F8F8F8F8F8F9F9F9F9",
      INIT_42 => X"EDEDEDEDEEEEEEEEEEEFEFEFEFEFF0F0F0F0F0F1F1F1F1F1F2F2F2F2F2F3F3F3",
      INIT_43 => X"E7E7E7E7E7E8E8E8E8E8E9E9E9E9E9EAEAEAEAEAEBEBEBEBEBECECECECECEDED",
      INIT_44 => X"E1E1E1E1E1E2E2E2E2E2E2E3E3E3E3E3E4E4E4E4E4E5E5E5E5E5E6E6E6E6E6E7",
      INIT_45 => X"DBDBDBDBDBDBDCDCDCDCDCDDDDDDDDDDDEDEDEDEDEDEDFDFDFDFDFE0E0E0E0E0",
      INIT_46 => X"D5D5D5D5D5D5D6D6D6D6D6D7D7D7D7D7D8D8D8D8D8D8D9D9D9D9D9DADADADADA",
      INIT_47 => X"CFCFCFCFCFD0D0D0D0D0D1D1D1D1D1D1D2D2D2D2D2D3D3D3D3D3D3D4D4D4D4D4",
      INIT_48 => X"C9C9C9C9CACACACACACBCBCBCBCBCBCCCCCCCCCCCDCDCDCDCDCDCECECECECECF",
      INIT_49 => X"C3C4C4C4C4C4C4C5C5C5C5C5C5C6C6C6C6C6C6C7C7C7C7C7C8C8C8C8C8C8C9C9",
      INIT_4A => X"BEBEBEBEBFBFBFBFBFBFC0C0C0C0C0C0C1C1C1C1C1C1C2C2C2C2C2C2C3C3C3C3",
      INIT_4B => X"B9B9B9B9B9B9BABABABABABABBBBBBBBBBBBBCBCBCBCBCBCBDBDBDBDBDBDBEBE",
      INIT_4C => X"B3B4B4B4B4B4B4B5B5B5B5B5B5B5B6B6B6B6B6B6B7B7B7B7B7B7B8B8B8B8B8B8",
      INIT_4D => X"AEAFAFAFAFAFAFB0B0B0B0B0B0B0B1B1B1B1B1B1B2B2B2B2B2B2B2B3B3B3B3B3",
      INIT_4E => X"AAAAAAAAAAAAABABABABABABABACACACACACACACADADADADADADAEAEAEAEAEAE",
      INIT_4F => X"A5A5A5A6A6A6A6A6A6A6A7A7A7A7A7A7A7A8A8A8A8A8A8A8A9A9A9A9A9A9A9AA",
      INIT_50 => X"A1A1A1A1A1A1A2A2A2A2A2A2A2A3A3A3A3A3A3A3A3A4A4A4A4A4A4A4A5A5A5A5",
      INIT_51 => X"9D9D9D9D9D9D9D9E9E9E9E9E9E9E9E9F9F9F9F9F9F9F9FA0A0A0A0A0A0A0A1A1",
      INIT_52 => X"9999999999999A9A9A9A9A9A9A9A9A9B9B9B9B9B9B9B9B9C9C9C9C9C9C9C9C9D",
      INIT_53 => X"9595959696969696969696969797979797979797979898989898989898989999",
      INIT_54 => X"9292929292929293939393939393939393949494949494949494959595959595",
      INIT_55 => X"8F8F8F8F8F8F8F8F8F9090909090909090909091919191919191919191929292",
      INIT_56 => X"8C8C8C8C8C8C8C8C8D8D8D8D8D8D8D8D8D8D8D8E8E8E8E8E8E8E8E8E8E8E8F8F",
      INIT_57 => X"8989898A8A8A8A8A8A8A8A8A8A8A8A8A8B8B8B8B8B8B8B8B8B8B8B8B8C8C8C8C",
      INIT_58 => X"8787878787878788888888888888888888888888888989898989898989898989",
      INIT_59 => X"8585858585858585868686868686868686868686868686868787878787878787",
      INIT_5A => X"8383838484848484848484848484848484848484848485858585858585858585",
      INIT_5B => X"8282828282828282828282828283838383838383838383838383838383838383",
      INIT_5C => X"8181818181818181818181818181818181818182828282828282828282828282",
      INIT_5D => X"8080808080808080808080808080808080818181818181818181818181818181",
      INIT_5E => X"8080808080808080808080808080808080808080808080808080808080808080",
      INIT_5F => X"8080808080808080808080808080808080808080808080808080808080808080",
      INIT_60 => X"8080808080808080808080808080808080808080808080808080808080808080",
      INIT_61 => X"8080808080808080808080808080808080808080808080808080808080808080",
      INIT_62 => X"8181818181818181818181818181808080808080808080808080808080808080",
      INIT_63 => X"8282828282828282828282828181818181818181818181818181818181818181",
      INIT_64 => X"8383838383838383838383838383838383838282828282828282828282828282",
      INIT_65 => X"8585858585858585858484848484848484848484848484848484848483838383",
      INIT_66 => X"8787878787878786868686868686868686868686868686858585858585858585",
      INIT_67 => X"8989898989898989898988888888888888888888888888888787878787878787",
      INIT_68 => X"8C8C8C8B8B8B8B8B8B8B8B8B8B8B8B8A8A8A8A8A8A8A8A8A8A8A8A8A89898989",
      INIT_69 => X"8F8E8E8E8E8E8E8E8E8E8E8E8D8D8D8D8D8D8D8D8D8D8D8C8C8C8C8C8C8C8C8C",
      INIT_6A => X"929291919191919191919191909090909090909090908F8F8F8F8F8F8F8F8F8F",
      INIT_6B => X"9595959595949494949494949494939393939393939393939292929292929292",
      INIT_6C => X"9998989898989898989897979797979797979796969696969696969695959595",
      INIT_6D => X"9C9C9C9C9C9C9C9C9B9B9B9B9B9B9B9B9A9A9A9A9A9A9A9A9A99999999999999",
      INIT_6E => X"A1A0A0A0A0A0A0A09F9F9F9F9F9F9F9F9E9E9E9E9E9E9E9E9D9D9D9D9D9D9D9D",
      INIT_6F => X"A5A5A5A4A4A4A4A4A4A4A3A3A3A3A3A3A3A3A2A2A2A2A2A2A2A1A1A1A1A1A1A1",
      INIT_70 => X"A9A9A9A9A9A9A9A8A8A8A8A8A8A8A7A7A7A7A7A7A7A6A6A6A6A6A6A6A5A5A5A5",
      INIT_71 => X"AEAEAEAEAEADADADADADADACACACACACACACABABABABABABABAAAAAAAAAAAAAA",
      INIT_72 => X"B3B3B3B3B2B2B2B2B2B2B2B1B1B1B1B1B1B0B0B0B0B0B0B0AFAFAFAFAFAFAEAE",
      INIT_73 => X"B8B8B8B8B8B7B7B7B7B7B7B6B6B6B6B6B6B5B5B5B5B5B5B5B4B4B4B4B4B4B3B3",
      INIT_74 => X"BEBDBDBDBDBDBDBCBCBCBCBCBCBBBBBBBBBBBBBABABABABABAB9B9B9B9B9B9B8",
      INIT_75 => X"C3C3C3C2C2C2C2C2C2C1C1C1C1C1C1C0C0C0C0C0C0BFBFBFBFBFBFBEBEBEBEBE",
      INIT_76 => X"C9C8C8C8C8C8C8C7C7C7C7C7C6C6C6C6C6C6C5C5C5C5C5C5C4C4C4C4C4C4C3C3",
      INIT_77 => X"CECECECECECDCDCDCDCDCDCCCCCCCCCCCBCBCBCBCBCBCACACACACAC9C9C9C9C9",
      INIT_78 => X"D4D4D4D4D3D3D3D3D3D3D2D2D2D2D2D1D1D1D1D1D1D0D0D0D0D0CFCFCFCFCFCF",
      INIT_79 => X"DADADADAD9D9D9D9D9D8D8D8D8D8D8D7D7D7D7D7D6D6D6D6D6D5D5D5D5D5D5D4",
      INIT_7A => X"E0E0E0E0DFDFDFDFDFDEDEDEDEDEDEDDDDDDDDDDDCDCDCDCDCDBDBDBDBDBDBDA",
      INIT_7B => X"E6E6E6E6E6E5E5E5E5E5E4E4E4E4E4E3E3E3E3E3E3E2E2E2E2E2E1E1E1E1E1E0",
      INIT_7C => X"EDECECECECECEBEBEBEBEBEAEAEAEAEAE9E9E9E9E9E8E8E8E8E8E7E7E7E7E7E7",
      INIT_7D => X"F3F3F2F2F2F2F2F1F1F1F1F1F0F0F0F0F0EFEFEFEFEFEEEEEEEEEEEDEDEDEDED",
      INIT_7E => X"F9F9F9F8F8F8F8F8F7F7F7F7F7F6F6F6F6F6F5F5F5F5F5F5F4F4F4F4F4F3F3F3",
      INIT_7F => X"FFFFFFFFFFFEFEFEFEFEFDFDFDFDFDFCFCFCFCFCFBFBFBFBFBFAFAFAFAFAF9F9",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => d0(31 downto 20),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_address_reg_386_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_address_reg_386_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_address_reg_386_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000011111111",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 8) => NLW_address_reg_386_reg_2_DOADO_UNCONNECTED(31 downto 8),
      DOADO(7) => address_reg_386_reg_2_n_28,
      DOADO(6) => address_reg_386_reg_2_n_29,
      DOADO(5) => address_reg_386_reg_2_n_30,
      DOADO(4) => address_reg_386_reg_2_n_31,
      DOADO(3) => address_reg_386_reg_2_n_32,
      DOADO(2) => address_reg_386_reg_2_n_33,
      DOADO(1) => address_reg_386_reg_2_n_34,
      DOADO(0) => address_reg_386_reg_2_n_35,
      DOBDO(31 downto 0) => NLW_address_reg_386_reg_2_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_address_reg_386_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_address_reg_386_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_address_reg_386_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => NLW_address_reg_386_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_address_reg_386_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_address_reg_386_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => ap_enable_reg_pp0_iter2,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_address_reg_386_reg_2_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter1_reg,
      Q => ap_loop_exit_ready_pp0_iter2_reg,
      R => '0'
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3,
      Q => ap_enable_reg_pp0_iter4,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter3_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter2_reg,
      Q => ap_loop_exit_ready_pp0_iter3_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter4_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter3_reg,
      Q => ap_loop_exit_ready_pp0_iter4_reg,
      R => '0'
    );
\first_iter_0_reg_362_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \first_iter_0_reg_362_reg_n_0_[0]\,
      Q => first_iter_0_reg_362_pp0_iter1_reg,
      R => '0'
    );
\first_iter_0_reg_362_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_delay_pipe_U_n_2,
      Q => \first_iter_0_reg_362_reg_n_0_[0]\,
      R => '0'
    );
flow_control_loop_delay_pipe_U: entity work.AudioPlatform_MultiSine_0_0_MultiSine_flow_control_loop_delay_pipe
     port map (
      D(8 downto 0) => add_ln46_1_fu_208_p2(8 downto 0),
      Q(3 downto 0) => i6_fu_88(3 downto 0),
      ap_clk => ap_clk,
      ap_condition_194 => ap_condition_194,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_exit_ready => ap_loop_exit_ready,
      ap_loop_exit_ready_pp0_iter2_reg => ap_loop_exit_ready_pp0_iter2_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \i6_fu_88_reg[1]\ => flow_control_loop_delay_pipe_U_n_2,
      \i6_fu_88_reg[3]\(3 downto 2) => i_fu_220_p2(3 downto 2),
      \i6_fu_88_reg[3]\(1) => flow_control_loop_delay_pipe_U_n_20,
      \i6_fu_88_reg[3]\(0) => i_fu_220_p2(0),
      icmp_ln46_fu_232_p2 => icmp_ln46_fu_232_p2,
      icmp_ln46_reg_382 => icmp_ln46_reg_382,
      \icmp_ln497_reg_157_reg[0]\ => flow_control_loop_delay_pipe_U_n_1,
      \icmp_ln497_reg_157_reg[0]_0\ => \icmp_ln497_reg_157_reg_n_0_[0]\,
      icmp_ln49_fu_226_p2 => icmp_ln49_fu_226_p2,
      icmp_ln49_reg_377 => icmp_ln49_reg_377,
      \indvar_flatten3_fu_80_reg[8]\(8 downto 0) => indvar_flatten3_fu_80(8 downto 0),
      rewind_ap_ready_reg => rewind_ap_ready_reg,
      select_ln49_fu_194_p3(2 downto 0) => select_ln49_fu_194_p3(2 downto 0)
    );
\i6_fu_88_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => i_fu_220_p2(0),
      Q => i6_fu_88(0),
      R => '0'
    );
\i6_fu_88_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => flow_control_loop_delay_pipe_U_n_20,
      Q => i6_fu_88(1),
      R => '0'
    );
\i6_fu_88_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => i_fu_220_p2(2),
      Q => i6_fu_88(2),
      R => '0'
    );
\i6_fu_88_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => i_fu_220_p2(3),
      Q => i6_fu_88(3),
      R => '0'
    );
\icmp_ln46_reg_382_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => icmp_ln46_fu_232_p2,
      Q => icmp_ln46_reg_382,
      R => '0'
    );
\icmp_ln497_reg_157_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln497_reg_157_reg_n_0_[0]\,
      Q => icmp_ln497_reg_157_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln497_reg_157_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_delay_pipe_U_n_1,
      Q => \icmp_ln497_reg_157_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln49_reg_377_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => icmp_ln49_fu_226_p2,
      Q => icmp_ln49_reg_377,
      R => '0'
    );
\indvar_flatten3_fu_80_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(0),
      Q => indvar_flatten3_fu_80(0),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(1),
      Q => indvar_flatten3_fu_80(1),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(2),
      Q => indvar_flatten3_fu_80(2),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(3),
      Q => indvar_flatten3_fu_80(3),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(4),
      Q => indvar_flatten3_fu_80(4),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(5),
      Q => indvar_flatten3_fu_80(5),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(6),
      Q => indvar_flatten3_fu_80(6),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(7),
      Q => indvar_flatten3_fu_80(7),
      R => '0'
    );
\indvar_flatten3_fu_80_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter0,
      D => add_ln46_1_fu_208_p2(8),
      Q => indvar_flatten3_fu_80(8),
      R => '0'
    );
\indvars_iv44_fu_84[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln468_fu_92_reg(0),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(0),
      O => zext_ln46_fu_279_p1(0)
    );
\indvars_iv44_fu_84[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln468_fu_92_reg(1),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(1),
      O => zext_ln46_fu_279_p1(1)
    );
\indvars_iv44_fu_84[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln468_fu_92_reg(2),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(2),
      O => zext_ln46_fu_279_p1(2)
    );
\indvars_iv44_fu_84[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln468_fu_92_reg(3),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(3),
      O => zext_ln46_fu_279_p1(3)
    );
\indvars_iv44_fu_84[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln468_fu_92_reg(4),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(4),
      O => zext_ln46_fu_279_p1(4)
    );
\indvars_iv44_fu_84[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_ln468_fu_92_reg(5),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(5),
      O => zext_ln46_fu_279_p1(5)
    );
\indvars_iv44_fu_84_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => zext_ln46_fu_279_p1(0),
      Q => indvars_iv44_fu_84(0),
      R => ap_condition_194
    );
\indvars_iv44_fu_84_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => zext_ln46_fu_279_p1(1),
      Q => indvars_iv44_fu_84(1),
      R => ap_condition_194
    );
\indvars_iv44_fu_84_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => zext_ln46_fu_279_p1(2),
      Q => indvars_iv44_fu_84(2),
      R => ap_condition_194
    );
\indvars_iv44_fu_84_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => zext_ln46_fu_279_p1(3),
      Q => indvars_iv44_fu_84(3),
      R => ap_condition_194
    );
\indvars_iv44_fu_84_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => zext_ln46_fu_279_p1(4),
      Q => indvars_iv44_fu_84(4),
      R => ap_condition_194
    );
\indvars_iv44_fu_84_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter2,
      D => zext_ln46_fu_279_p1(5),
      Q => indvars_iv44_fu_84(5),
      R => ap_condition_194
    );
\sineIdx5_fu_96[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => add_ln468_fu_92_reg(0),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(0),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => first_iter_0_reg_362_pp0_iter1_reg,
      I5 => sineIdx5_fu_96(0),
      O => p_2_in(0)
    );
\sineIdx5_fu_96[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => add_ln468_fu_92_reg(1),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(1),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => first_iter_0_reg_362_pp0_iter1_reg,
      I5 => sineIdx5_fu_96(1),
      O => p_2_in(1)
    );
\sineIdx5_fu_96[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => add_ln468_fu_92_reg(2),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(2),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => first_iter_0_reg_362_pp0_iter1_reg,
      I5 => sineIdx5_fu_96(2),
      O => p_2_in(2)
    );
\sineIdx5_fu_96[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => add_ln468_fu_92_reg(3),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(3),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => first_iter_0_reg_362_pp0_iter1_reg,
      I5 => sineIdx5_fu_96(3),
      O => p_2_in(3)
    );
\sineIdx5_fu_96[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8000000B8FFFFFF"
    )
        port map (
      I0 => add_ln468_fu_92_reg(4),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(4),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => first_iter_0_reg_362_pp0_iter1_reg,
      I5 => sineIdx5_fu_96(4),
      O => p_2_in(4)
    );
\sineIdx5_fu_96[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => add_ln468_fu_92_reg(5),
      I1 => icmp_ln497_reg_157_pp0_iter1_reg,
      I2 => indvars_iv44_fu_84(5),
      I3 => sineIdx5_fu_961,
      I4 => sineIdx5_fu_96(4),
      I5 => sineIdx5_fu_96(5),
      O => p_2_in(5)
    );
\sineIdx5_fu_96[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00077770"
    )
        port map (
      I0 => first_iter_0_reg_362_pp0_iter1_reg,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => sineIdx5_fu_96(4),
      I3 => sineIdx5_fu_96(5),
      I4 => sineIdx5_fu_96(6),
      O => \sineIdx5_fu_96[6]_i_1_n_0\
    );
\sineIdx5_fu_96[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000057A857A857A8"
    )
        port map (
      I0 => sineIdx5_fu_96(6),
      I1 => sineIdx5_fu_96(5),
      I2 => sineIdx5_fu_96(4),
      I3 => sineIdx5_fu_96(7),
      I4 => first_iter_0_reg_362_pp0_iter1_reg,
      I5 => ap_enable_reg_pp0_iter2,
      O => p_2_in(7)
    );
\sineIdx5_fu_96[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => first_iter_0_reg_362_pp0_iter1_reg,
      O => sineIdx5_fu_961
    );
\sineIdx5_fu_96[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter3,
      I1 => first_iter_0_reg_362_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter2,
      O => \sineIdx5_fu_96[8]_i_2_n_0\
    );
\sineIdx5_fu_96[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFA800"
    )
        port map (
      I0 => sineIdx5_fu_96(7),
      I1 => sineIdx5_fu_96(4),
      I2 => sineIdx5_fu_96(5),
      I3 => sineIdx5_fu_96(6),
      I4 => sineIdx5_fu_96(8),
      O => \sineIdx5_fu_96[8]_i_3_n_0\
    );
\sineIdx5_fu_96_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => p_2_in(0),
      Q => sineIdx5_fu_96(0),
      R => '0'
    );
\sineIdx5_fu_96_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => p_2_in(1),
      Q => sineIdx5_fu_96(1),
      R => '0'
    );
\sineIdx5_fu_96_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => p_2_in(2),
      Q => sineIdx5_fu_96(2),
      R => '0'
    );
\sineIdx5_fu_96_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => p_2_in(3),
      Q => sineIdx5_fu_96(3),
      R => '0'
    );
\sineIdx5_fu_96_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => p_2_in(4),
      Q => sineIdx5_fu_96(4),
      R => '0'
    );
\sineIdx5_fu_96_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => p_2_in(5),
      Q => sineIdx5_fu_96(5),
      R => '0'
    );
\sineIdx5_fu_96_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => \sineIdx5_fu_96[6]_i_1_n_0\,
      Q => sineIdx5_fu_96(6),
      R => sineIdx5_fu_961
    );
\sineIdx5_fu_96_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => p_2_in(7),
      Q => sineIdx5_fu_96(7),
      R => sineIdx5_fu_961
    );
\sineIdx5_fu_96_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \sineIdx5_fu_96[8]_i_2_n_0\,
      D => \sineIdx5_fu_96[8]_i_3_n_0\,
      Q => sineIdx5_fu_96(8),
      R => sineIdx5_fu_961
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AudioPlatform_MultiSine_0_0 is
  port (
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_BUS_A_ARREADY : out STD_LOGIC;
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_BUS_A_AWREADY : out STD_LOGIC;
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    s_axi_BUS_A_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AudioPlatform_MultiSine_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AudioPlatform_MultiSine_0_0 : entity is "AudioPlatform_MultiSine_0_0,MultiSine,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AudioPlatform_MultiSine_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AudioPlatform_MultiSine_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AudioPlatform_MultiSine_0_0 : entity is "MultiSine,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of AudioPlatform_MultiSine_0_0 : entity is "yes";
end AudioPlatform_MultiSine_0_0;

architecture STRUCTURE of AudioPlatform_MultiSine_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_BUS_A_ADDR_WIDTH : integer;
  attribute C_S_AXI_BUS_A_ADDR_WIDTH of inst : label is 12;
  attribute C_S_AXI_BUS_A_DATA_WIDTH : integer;
  attribute C_S_AXI_BUS_A_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH : integer;
  attribute C_S_AXI_BUS_A_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN DmaTestInterconnect_sys_clock, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR";
  attribute X_INTERFACE_MODE of s_axi_BUS_A_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_BUS_A_ARADDR : signal is "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 12, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN DmaTestInterconnect_sys_clock, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB";
begin
  s_axi_BUS_A_BRESP(1) <= \<const0>\;
  s_axi_BUS_A_BRESP(0) <= \<const0>\;
  s_axi_BUS_A_RRESP(1) <= \<const0>\;
  s_axi_BUS_A_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.AudioPlatform_MultiSine_0_0_MultiSine
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_BUS_A_ARADDR(11 downto 0) => s_axi_BUS_A_ARADDR(11 downto 0),
      s_axi_BUS_A_ARREADY => s_axi_BUS_A_ARREADY,
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_AWADDR(11 downto 2) => s_axi_BUS_A_AWADDR(11 downto 2),
      s_axi_BUS_A_AWADDR(1 downto 0) => B"00",
      s_axi_BUS_A_AWREADY => s_axi_BUS_A_AWREADY,
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_AWVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_BREADY,
      s_axi_BUS_A_BRESP(1 downto 0) => NLW_inst_s_axi_BUS_A_BRESP_UNCONNECTED(1 downto 0),
      s_axi_BUS_A_BVALID => s_axi_BUS_A_BVALID,
      s_axi_BUS_A_RDATA(31 downto 0) => s_axi_BUS_A_RDATA(31 downto 0),
      s_axi_BUS_A_RREADY => s_axi_BUS_A_RREADY,
      s_axi_BUS_A_RRESP(1 downto 0) => NLW_inst_s_axi_BUS_A_RRESP_UNCONNECTED(1 downto 0),
      s_axi_BUS_A_RVALID => s_axi_BUS_A_RVALID,
      s_axi_BUS_A_WDATA(31 downto 0) => s_axi_BUS_A_WDATA(31 downto 0),
      s_axi_BUS_A_WREADY => s_axi_BUS_A_WREADY,
      s_axi_BUS_A_WSTRB(3 downto 0) => s_axi_BUS_A_WSTRB(3 downto 0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID
    );
end STRUCTURE;
