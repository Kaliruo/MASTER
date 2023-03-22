-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Mar 17 13:11:40 2023
-- Host        : pc-u3-305-09 running 64-bit Debian GNU/Linux 11 (bullseye)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/lnc3770a/Cours/MASTER/Simul_archi_mat/project_tp7/project_tp7.sim/sim_1/synth/func/xsim/test_fifo_func_synth.vhd
-- Design      : fifo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    REN : in STD_LOGIC;
    WEN : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    EMPTY : out STD_LOGIC;
    MID : out STD_LOGIC;
    FULL : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fifo : entity is true;
  attribute ABUS_WIDTH : integer;
  attribute ABUS_WIDTH of fifo : entity is 5;
  attribute DBUS_WIDTH : integer;
  attribute DBUS_WIDTH of fifo : entity is 32;
end fifo;

architecture STRUCTURE of fifo is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DI_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DO_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \DO_TRI[0]\ : STD_LOGIC;
  signal DO_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \DO_tristate_oe[31]__0_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]__0_i_2_n_0\ : STD_LOGIC;
  signal EMPTY_OBUF : STD_LOGIC;
  signal EMPTY_i_1_n_0 : STD_LOGIC;
  signal EMPTY_i_2_n_0 : STD_LOGIC;
  signal EMPTY_i_3_n_0 : STD_LOGIC;
  signal EMPTY_i_4_n_0 : STD_LOGIC;
  signal EMPTY_i_5_n_0 : STD_LOGIC;
  signal FULL_OBUF : STD_LOGIC;
  signal FULL_i_1_n_0 : STD_LOGIC;
  signal FULL_i_3_n_0 : STD_LOGIC;
  signal FULL_i_4_n_0 : STD_LOGIC;
  signal MID1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MID_OBUF : STD_LOGIC;
  signal MID_i_10_n_0 : STD_LOGIC;
  signal MID_i_11_n_0 : STD_LOGIC;
  signal MID_i_12_n_0 : STD_LOGIC;
  signal MID_i_13_n_0 : STD_LOGIC;
  signal MID_i_14_n_0 : STD_LOGIC;
  signal MID_i_15_n_0 : STD_LOGIC;
  signal MID_i_16_n_0 : STD_LOGIC;
  signal MID_i_17_n_0 : STD_LOGIC;
  signal MID_i_18_n_0 : STD_LOGIC;
  signal MID_i_19_n_0 : STD_LOGIC;
  signal MID_i_1_n_0 : STD_LOGIC;
  signal MID_i_24_n_0 : STD_LOGIC;
  signal MID_i_25_n_0 : STD_LOGIC;
  signal MID_i_26_n_0 : STD_LOGIC;
  signal MID_i_2_n_0 : STD_LOGIC;
  signal MID_i_36_n_0 : STD_LOGIC;
  signal MID_i_39_n_0 : STD_LOGIC;
  signal MID_i_3_n_0 : STD_LOGIC;
  signal MID_i_40_n_0 : STD_LOGIC;
  signal MID_i_42_n_0 : STD_LOGIC;
  signal MID_i_43_n_0 : STD_LOGIC;
  signal MID_i_44_n_0 : STD_LOGIC;
  signal MID_i_45_n_0 : STD_LOGIC;
  signal MID_i_47_n_0 : STD_LOGIC;
  signal MID_i_48_n_0 : STD_LOGIC;
  signal MID_i_50_n_0 : STD_LOGIC;
  signal MID_i_52_n_0 : STD_LOGIC;
  signal MID_i_53_n_0 : STD_LOGIC;
  signal MID_i_54_n_0 : STD_LOGIC;
  signal MID_i_55_n_0 : STD_LOGIC;
  signal MID_i_56_n_0 : STD_LOGIC;
  signal MID_i_58_n_0 : STD_LOGIC;
  signal MID_i_59_n_0 : STD_LOGIC;
  signal MID_i_60_n_0 : STD_LOGIC;
  signal MID_i_61_n_0 : STD_LOGIC;
  signal MID_i_62_n_0 : STD_LOGIC;
  signal MID_i_64_n_0 : STD_LOGIC;
  signal MID_i_65_n_0 : STD_LOGIC;
  signal MID_i_66_n_0 : STD_LOGIC;
  signal MID_i_67_n_0 : STD_LOGIC;
  signal MID_i_68_n_0 : STD_LOGIC;
  signal MID_i_69_n_0 : STD_LOGIC;
  signal MID_i_70_n_0 : STD_LOGIC;
  signal MID_i_71_n_0 : STD_LOGIC;
  signal MID_i_72_n_0 : STD_LOGIC;
  signal MID_i_73_n_0 : STD_LOGIC;
  signal MID_i_74_n_0 : STD_LOGIC;
  signal MID_i_75_n_0 : STD_LOGIC;
  signal MID_i_76_n_0 : STD_LOGIC;
  signal MID_i_77_n_0 : STD_LOGIC;
  signal MID_i_8_n_0 : STD_LOGIC;
  signal MID_i_9_n_0 : STD_LOGIC;
  signal MID_reg_i_20_n_0 : STD_LOGIC;
  signal MID_reg_i_20_n_1 : STD_LOGIC;
  signal MID_reg_i_20_n_2 : STD_LOGIC;
  signal MID_reg_i_20_n_3 : STD_LOGIC;
  signal MID_reg_i_22_n_1 : STD_LOGIC;
  signal MID_reg_i_22_n_3 : STD_LOGIC;
  signal MID_reg_i_23_n_0 : STD_LOGIC;
  signal MID_reg_i_23_n_1 : STD_LOGIC;
  signal MID_reg_i_23_n_2 : STD_LOGIC;
  signal MID_reg_i_23_n_3 : STD_LOGIC;
  signal MID_reg_i_27_n_1 : STD_LOGIC;
  signal MID_reg_i_27_n_3 : STD_LOGIC;
  signal MID_reg_i_27_n_6 : STD_LOGIC;
  signal MID_reg_i_27_n_7 : STD_LOGIC;
  signal MID_reg_i_37_n_0 : STD_LOGIC;
  signal MID_reg_i_37_n_1 : STD_LOGIC;
  signal MID_reg_i_37_n_2 : STD_LOGIC;
  signal MID_reg_i_37_n_3 : STD_LOGIC;
  signal MID_reg_i_38_n_0 : STD_LOGIC;
  signal MID_reg_i_38_n_1 : STD_LOGIC;
  signal MID_reg_i_38_n_2 : STD_LOGIC;
  signal MID_reg_i_38_n_3 : STD_LOGIC;
  signal MID_reg_i_41_n_0 : STD_LOGIC;
  signal MID_reg_i_41_n_1 : STD_LOGIC;
  signal MID_reg_i_41_n_2 : STD_LOGIC;
  signal MID_reg_i_41_n_3 : STD_LOGIC;
  signal MID_reg_i_46_n_0 : STD_LOGIC;
  signal MID_reg_i_46_n_1 : STD_LOGIC;
  signal MID_reg_i_46_n_2 : STD_LOGIC;
  signal MID_reg_i_46_n_3 : STD_LOGIC;
  signal MID_reg_i_46_n_4 : STD_LOGIC;
  signal MID_reg_i_46_n_5 : STD_LOGIC;
  signal MID_reg_i_46_n_6 : STD_LOGIC;
  signal MID_reg_i_46_n_7 : STD_LOGIC;
  signal MID_reg_i_49_n_0 : STD_LOGIC;
  signal MID_reg_i_49_n_1 : STD_LOGIC;
  signal MID_reg_i_49_n_2 : STD_LOGIC;
  signal MID_reg_i_49_n_3 : STD_LOGIC;
  signal MID_reg_i_4_n_1 : STD_LOGIC;
  signal MID_reg_i_4_n_2 : STD_LOGIC;
  signal MID_reg_i_4_n_3 : STD_LOGIC;
  signal MID_reg_i_57_n_0 : STD_LOGIC;
  signal MID_reg_i_57_n_1 : STD_LOGIC;
  signal MID_reg_i_57_n_2 : STD_LOGIC;
  signal MID_reg_i_57_n_3 : STD_LOGIC;
  signal MID_reg_i_5_n_1 : STD_LOGIC;
  signal MID_reg_i_5_n_2 : STD_LOGIC;
  signal MID_reg_i_5_n_3 : STD_LOGIC;
  signal MID_reg_i_6_n_1 : STD_LOGIC;
  signal MID_reg_i_6_n_2 : STD_LOGIC;
  signal MID_reg_i_6_n_3 : STD_LOGIC;
  signal MID_reg_i_7_n_0 : STD_LOGIC;
  signal MID_reg_i_7_n_1 : STD_LOGIC;
  signal MID_reg_i_7_n_2 : STD_LOGIC;
  signal MID_reg_i_7_n_3 : STD_LOGIC;
  signal REGS_reg_0_31_0_5_i_1_n_0 : STD_LOGIC;
  signal REN_IBUF : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal R_ADR0 : STD_LOGIC;
  signal R_ADR_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal WEN_IBUF : STD_LOGIC;
  signal W_ADR0 : STD_LOGIC;
  signal \W_ADR[0]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[1]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[2]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[3]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[4]_i_1_n_0\ : STD_LOGIC;
  signal \W_ADR[4]_i_3_n_0\ : STD_LOGIC;
  signal W_ADR_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eqOp : STD_LOGIC;
  signal n_0_17 : STD_LOGIC;
  signal plusOp0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal temp_R0_out : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal temp_W0_out : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal NLW_MID_reg_i_20_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_22_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_MID_reg_i_22_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_MID_reg_i_23_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_27_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_MID_reg_i_27_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_MID_reg_i_37_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_MID_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_41_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_49_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_MID_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_57_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_6_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_MID_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MID_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_REGS_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_REGS_reg_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_REGS_reg_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_REGS_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EMPTY_i_5 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of FULL_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of FULL_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of MID_i_32 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of MID_i_33 : label is "soft_lutpair4";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_20 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_23 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_37 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_4 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_41 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_49 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_5 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_57 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_6 : label is 11;
  attribute COMPARATOR_THRESHOLD of MID_reg_i_7 : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of REGS_reg_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of REGS_reg_0_31_0_5 : label is "REGS_reg_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of REGS_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of REGS_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of REGS_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of REGS_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of REGS_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of REGS_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of REGS_reg_0_31_12_17 : label is "REGS_reg_0_31_12_17";
  attribute RTL_RAM_TYPE of REGS_reg_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of REGS_reg_0_31_12_17 : label is 31;
  attribute ram_offset of REGS_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of REGS_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of REGS_reg_0_31_18_23 : label is "REGS_reg_0_31_18_23";
  attribute RTL_RAM_TYPE of REGS_reg_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of REGS_reg_0_31_18_23 : label is 31;
  attribute ram_offset of REGS_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of REGS_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of REGS_reg_0_31_24_29 : label is "REGS_reg_0_31_24_29";
  attribute RTL_RAM_TYPE of REGS_reg_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_31_24_29 : label is 0;
  attribute ram_addr_end of REGS_reg_0_31_24_29 : label is 31;
  attribute ram_offset of REGS_reg_0_31_24_29 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_31_24_29 : label is 24;
  attribute ram_slice_end of REGS_reg_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of REGS_reg_0_31_30_31 : label is "REGS_reg_0_31_30_31";
  attribute RTL_RAM_TYPE of REGS_reg_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_31_30_31 : label is 0;
  attribute ram_addr_end of REGS_reg_0_31_30_31 : label is 31;
  attribute ram_offset of REGS_reg_0_31_30_31 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_31_30_31 : label is 30;
  attribute ram_slice_end of REGS_reg_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \REGS_reg_0_31_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \REGS_reg_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \REGS_reg_0_31_30_31__0\ : label is "REGS_reg_0_31_30_31";
  attribute RTL_RAM_TYPE of \REGS_reg_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \REGS_reg_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \REGS_reg_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \REGS_reg_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \REGS_reg_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \REGS_reg_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of REGS_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of REGS_reg_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of REGS_reg_0_31_6_11 : label is "REGS_reg_0_31_6_11";
  attribute RTL_RAM_TYPE of REGS_reg_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of REGS_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of REGS_reg_0_31_6_11 : label is 31;
  attribute ram_offset of REGS_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of REGS_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of REGS_reg_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of \R_ADR[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \R_ADR[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \R_ADR[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \R_ADR[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \W_ADR[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \W_ADR[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \W_ADR[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \W_ADR[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of i_17 : label is "soft_lutpair0";
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\DI_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(0),
      O => DI_IBUF(0)
    );
\DI_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(10),
      O => DI_IBUF(10)
    );
\DI_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(11),
      O => DI_IBUF(11)
    );
\DI_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(12),
      O => DI_IBUF(12)
    );
\DI_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(13),
      O => DI_IBUF(13)
    );
\DI_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(14),
      O => DI_IBUF(14)
    );
\DI_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(15),
      O => DI_IBUF(15)
    );
\DI_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(16),
      O => DI_IBUF(16)
    );
\DI_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(17),
      O => DI_IBUF(17)
    );
\DI_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(18),
      O => DI_IBUF(18)
    );
\DI_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(19),
      O => DI_IBUF(19)
    );
\DI_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(1),
      O => DI_IBUF(1)
    );
\DI_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(20),
      O => DI_IBUF(20)
    );
\DI_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(21),
      O => DI_IBUF(21)
    );
\DI_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(22),
      O => DI_IBUF(22)
    );
\DI_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(23),
      O => DI_IBUF(23)
    );
\DI_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(24),
      O => DI_IBUF(24)
    );
\DI_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(25),
      O => DI_IBUF(25)
    );
\DI_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(26),
      O => DI_IBUF(26)
    );
\DI_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(27),
      O => DI_IBUF(27)
    );
\DI_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(28),
      O => DI_IBUF(28)
    );
\DI_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(29),
      O => DI_IBUF(29)
    );
\DI_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(2),
      O => DI_IBUF(2)
    );
\DI_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(30),
      O => DI_IBUF(30)
    );
\DI_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(31),
      O => DI_IBUF(31)
    );
\DI_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(3),
      O => DI_IBUF(3)
    );
\DI_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(4),
      O => DI_IBUF(4)
    );
\DI_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(5),
      O => DI_IBUF(5)
    );
\DI_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(6),
      O => DI_IBUF(6)
    );
\DI_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(7),
      O => DI_IBUF(7)
    );
\DI_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(8),
      O => DI_IBUF(8)
    );
\DI_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(9),
      O => DI_IBUF(9)
    );
\DO_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(0),
      O => DO(0),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(10),
      O => DO(10),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(11),
      O => DO(11),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[12]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(12),
      O => DO(12),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[13]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(13),
      O => DO(13),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[14]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(14),
      O => DO(14),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[15]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(15),
      O => DO(15),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[16]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(16),
      O => DO(16),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[17]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(17),
      O => DO(17),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[18]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(18),
      O => DO(18),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[19]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(19),
      O => DO(19),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(1),
      O => DO(1),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[20]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(20),
      O => DO(20),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[21]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(21),
      O => DO(21),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[22]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(22),
      O => DO(22),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[23]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(23),
      O => DO(23),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[24]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(24),
      O => DO(24),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[25]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(25),
      O => DO(25),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[26]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(26),
      O => DO(26),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[27]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(27),
      O => DO(27),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[28]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(28),
      O => DO(28),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[29]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(29),
      O => DO(29),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(2),
      O => DO(2),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[30]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(30),
      O => DO(30),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[31]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(31),
      O => DO(31),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[31]_inst_i_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => REN_IBUF,
      Q => \DO_TRI[0]\,
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(3),
      O => DO(3),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(4),
      O => DO(4),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(5),
      O => DO(5),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(6),
      O => DO(6),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(7),
      O => DO(7),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(8),
      O => DO(8),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(9),
      O => DO(9),
      T => \DO_TRI[0]\
    );
\DO_tristate_oe[31]__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => REN_IBUF,
      I1 => WEN_IBUF,
      I2 => EMPTY_OBUF,
      O => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe[31]__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => EMPTY_OBUF,
      I1 => REN_IBUF,
      I2 => WEN_IBUF,
      I3 => FULL_OBUF,
      O => \DO_tristate_oe[31]__0_i_2_n_0\
    );
\DO_tristate_oe_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(0),
      Q => DO_OBUF(0),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[10]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(10),
      Q => DO_OBUF(10),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[11]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(11),
      Q => DO_OBUF(11),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[12]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(12),
      Q => DO_OBUF(12),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[13]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(13),
      Q => DO_OBUF(13),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[14]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(14),
      Q => DO_OBUF(14),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[15]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(15),
      Q => DO_OBUF(15),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[16]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(16),
      Q => DO_OBUF(16),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[17]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(17),
      Q => DO_OBUF(17),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[18]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(18),
      Q => DO_OBUF(18),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[19]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(19),
      Q => DO_OBUF(19),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(1),
      Q => DO_OBUF(1),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[20]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(20),
      Q => DO_OBUF(20),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[21]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(21),
      Q => DO_OBUF(21),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[22]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(22),
      Q => DO_OBUF(22),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[23]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(23),
      Q => DO_OBUF(23),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[24]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(24),
      Q => DO_OBUF(24),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[25]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(25),
      Q => DO_OBUF(25),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[26]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(26),
      Q => DO_OBUF(26),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[27]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(27),
      Q => DO_OBUF(27),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[28]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(28),
      Q => DO_OBUF(28),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[29]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(29),
      Q => DO_OBUF(29),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[2]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(2),
      Q => DO_OBUF(2),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[30]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(30),
      Q => DO_OBUF(30),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[31]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(31),
      Q => DO_OBUF(31),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[3]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(3),
      Q => DO_OBUF(3),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[4]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(4),
      Q => DO_OBUF(4),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[5]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(5),
      Q => DO_OBUF(5),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[6]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(6),
      Q => DO_OBUF(6),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[7]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(7),
      Q => DO_OBUF(7),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[8]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(8),
      Q => DO_OBUF(8),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
\DO_tristate_oe_reg[9]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \DO_tristate_oe[31]__0_i_2_n_0\,
      D => DO_reg0(9),
      Q => DO_OBUF(9),
      R => \DO_tristate_oe[31]__0_i_1_n_0\
    );
EMPTY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => EMPTY_OBUF,
      O => EMPTY
    );
EMPTY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F8F8F"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => EMPTY_OBUF,
      I2 => RST_IBUF,
      I3 => EMPTY_i_2_n_0,
      I4 => EMPTY_i_3_n_0,
      O => EMPTY_i_1_n_0
    );
EMPTY_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => W_ADR_reg(4),
      I1 => R_ADR_reg(4),
      I2 => R_ADR_reg(3),
      I3 => R_ADR_reg(1),
      I4 => R_ADR_reg(0),
      I5 => R_ADR_reg(2),
      O => EMPTY_i_2_n_0
    );
EMPTY_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0884400040000884"
    )
        port map (
      I0 => W_ADR_reg(2),
      I1 => EMPTY_i_4_n_0,
      I2 => EMPTY_i_5_n_0,
      I3 => R_ADR_reg(2),
      I4 => R_ADR_reg(3),
      I5 => W_ADR_reg(3),
      O => EMPTY_i_3_n_0
    );
EMPTY_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000022020020000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => REN_IBUF,
      I2 => W_ADR_reg(1),
      I3 => R_ADR_reg(1),
      I4 => W_ADR_reg(0),
      I5 => R_ADR_reg(0),
      O => EMPTY_i_4_n_0
    );
EMPTY_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => R_ADR_reg(1),
      I1 => R_ADR_reg(0),
      O => EMPTY_i_5_n_0
    );
EMPTY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => EMPTY_i_1_n_0,
      Q => EMPTY_OBUF,
      R => '0'
    );
FULL_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => FULL_OBUF,
      O => FULL
    );
FULL_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0EA0000"
    )
        port map (
      I0 => FULL_OBUF,
      I1 => eqOp,
      I2 => REN_IBUF,
      I3 => WEN_IBUF,
      I4 => RST_IBUF,
      O => FULL_i_1_n_0
    );
FULL_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0884400040000884"
    )
        port map (
      I0 => R_ADR_reg(3),
      I1 => FULL_i_3_n_0,
      I2 => FULL_i_4_n_0,
      I3 => W_ADR_reg(3),
      I4 => W_ADR_reg(4),
      I5 => R_ADR_reg(4),
      O => eqOp
    );
FULL_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0824100010000824"
    )
        port map (
      I0 => R_ADR_reg(1),
      I1 => R_ADR_reg(0),
      I2 => W_ADR_reg(0),
      I3 => W_ADR_reg(1),
      I4 => W_ADR_reg(2),
      I5 => R_ADR_reg(2),
      O => FULL_i_3_n_0
    );
FULL_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => W_ADR_reg(2),
      I1 => W_ADR_reg(0),
      I2 => W_ADR_reg(1),
      O => FULL_i_4_n_0
    );
FULL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => FULL_i_1_n_0,
      Q => FULL_OBUF,
      R => '0'
    );
MID_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MID_OBUF,
      O => MID
    );
MID_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => EMPTY_OBUF,
      I1 => RST_IBUF,
      O => MID_i_1_n_0
    );
MID_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F004B6F424B0042"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(1),
      I3 => WEN_IBUF,
      I4 => W_ADR_reg(0),
      I5 => W_ADR_reg(1),
      O => MID_i_10_n_0
    );
MID_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => temp_W0_out(5),
      I1 => temp_R0_out(5),
      I2 => temp_R0_out(4),
      I3 => temp_W0_out(4),
      O => MID_i_11_n_0
    );
MID_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAA655500000000"
    )
        port map (
      I0 => temp_R0_out(2),
      I1 => WEN_IBUF,
      I2 => W_ADR_reg(0),
      I3 => W_ADR_reg(1),
      I4 => W_ADR_reg(2),
      I5 => MID_i_36_n_0,
      O => MID_i_12_n_0
    );
MID_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9042249009244209"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(1),
      I3 => WEN_IBUF,
      I4 => W_ADR_reg(0),
      I5 => W_ADR_reg(1),
      O => MID_i_13_n_0
    );
MID_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => temp_R0_out(4),
      I1 => temp_W0_out(4),
      I2 => temp_W0_out(5),
      I3 => temp_R0_out(5),
      O => MID_i_14_n_0
    );
MID_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => temp_R0_out(2),
      I1 => temp_W0_out(2),
      I2 => temp_W0_out(3),
      I3 => temp_R0_out(3),
      O => MID_i_15_n_0
    );
MID_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F004B6F424B0042"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(0),
      I2 => W_ADR_reg(1),
      I3 => REN_IBUF,
      I4 => R_ADR_reg(0),
      I5 => R_ADR_reg(1),
      O => MID_i_16_n_0
    );
MID_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => temp_W0_out(5),
      I1 => temp_R0_out(5),
      I2 => temp_R0_out(4),
      I3 => temp_W0_out(4),
      O => MID_i_17_n_0
    );
MID_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAA655500000000"
    )
        port map (
      I0 => temp_R0_out(2),
      I1 => WEN_IBUF,
      I2 => W_ADR_reg(0),
      I3 => W_ADR_reg(1),
      I4 => W_ADR_reg(2),
      I5 => MID_i_36_n_0,
      O => MID_i_18_n_0
    );
MID_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9042249009244209"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(1),
      I3 => WEN_IBUF,
      I4 => W_ADR_reg(0),
      I5 => W_ADR_reg(1),
      O => MID_i_19_n_0
    );
MID_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => MID_reg_i_4_n_1,
      I1 => MID_reg_i_5_n_1,
      I2 => FULL_OBUF,
      O => MID_i_2_n_0
    );
MID_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_22_n_1,
      O => MID1(31)
    );
MID_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_24_n_0
    );
MID_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_25_n_0
    );
MID_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_26_n_0
    );
MID_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(2),
      I2 => W_ADR_reg(0),
      I3 => W_ADR_reg(1),
      I4 => W_ADR_reg(3),
      I5 => W_ADR_reg(4),
      O => temp_W0_out(4)
    );
MID_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(2),
      I2 => R_ADR_reg(0),
      I3 => R_ADR_reg(1),
      I4 => R_ADR_reg(3),
      I5 => R_ADR_reg(4),
      O => temp_R0_out(4)
    );
MID_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => MID_reg_i_6_n_1,
      I1 => MID_reg_i_4_n_1,
      I2 => MID_reg_i_7_n_0,
      I3 => FULL_OBUF,
      O => MID_i_3_n_0
    );
MID_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(4),
      I2 => R_ADR_reg(2),
      I3 => R_ADR_reg(0),
      I4 => R_ADR_reg(1),
      I5 => R_ADR_reg(3),
      O => temp_R0_out(5)
    );
MID_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(4),
      I2 => W_ADR_reg(2),
      I3 => W_ADR_reg(0),
      I4 => W_ADR_reg(1),
      I5 => W_ADR_reg(3),
      O => temp_W0_out(5)
    );
MID_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(0),
      I2 => W_ADR_reg(1),
      I3 => W_ADR_reg(2),
      O => temp_W0_out(2)
    );
MID_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(1),
      I3 => R_ADR_reg(2),
      O => temp_R0_out(2)
    );
MID_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(1),
      I2 => R_ADR_reg(0),
      I3 => R_ADR_reg(2),
      I4 => R_ADR_reg(3),
      O => temp_R0_out(3)
    );
MID_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(1),
      I2 => W_ADR_reg(0),
      I3 => W_ADR_reg(2),
      I4 => W_ADR_reg(3),
      O => temp_W0_out(3)
    );
MID_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAA55559555"
    )
        port map (
      I0 => W_ADR_reg(3),
      I1 => W_ADR_reg(2),
      I2 => W_ADR_reg(0),
      I3 => W_ADR_reg(1),
      I4 => WEN_IBUF,
      I5 => temp_R0_out(3),
      O => MID_i_36_n_0
    );
MID_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_R0_out(5),
      I1 => temp_W0_out(5),
      O => MID_i_39_n_0
    );
MID_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_R0_out(4),
      I1 => temp_W0_out(4),
      O => MID_i_40_n_0
    );
MID_i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_42_n_0
    );
MID_i_43: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_43_n_0
    );
MID_i_44: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_44_n_0
    );
MID_i_45: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_45_n_0
    );
MID_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_W0_out(5),
      I1 => temp_R0_out(5),
      O => MID_i_47_n_0
    );
MID_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => temp_W0_out(4),
      I1 => temp_R0_out(4),
      O => MID_i_48_n_0
    );
MID_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(1),
      I3 => R_ADR_reg(2),
      O => MID_i_50_n_0
    );
MID_i_51: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(1),
      O => temp_R0_out(1)
    );
MID_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => REN_IBUF,
      I1 => R_ADR_reg(0),
      O => MID_i_52_n_0
    );
MID_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAA55559555"
    )
        port map (
      I0 => R_ADR_reg(3),
      I1 => R_ADR_reg(2),
      I2 => R_ADR_reg(0),
      I3 => R_ADR_reg(1),
      I4 => REN_IBUF,
      I5 => temp_W0_out(3),
      O => MID_i_53_n_0
    );
MID_i_54: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6A5595"
    )
        port map (
      I0 => R_ADR_reg(2),
      I1 => R_ADR_reg(1),
      I2 => R_ADR_reg(0),
      I3 => REN_IBUF,
      I4 => temp_W0_out(2),
      O => MID_i_54_n_0
    );
MID_i_55: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A659A65959A6A659"
    )
        port map (
      I0 => R_ADR_reg(1),
      I1 => R_ADR_reg(0),
      I2 => REN_IBUF,
      I3 => W_ADR_reg(1),
      I4 => W_ADR_reg(0),
      I5 => WEN_IBUF,
      O => MID_i_55_n_0
    );
MID_i_56: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => R_ADR_reg(0),
      I1 => REN_IBUF,
      I2 => W_ADR_reg(0),
      I3 => WEN_IBUF,
      O => MID_i_56_n_0
    );
MID_i_58: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_58_n_0
    );
MID_i_59: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_59_n_0
    );
MID_i_60: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_60_n_0
    );
MID_i_61: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_61_n_0
    );
MID_i_62: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(0),
      I2 => W_ADR_reg(1),
      I3 => W_ADR_reg(2),
      O => MID_i_62_n_0
    );
MID_i_63: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(0),
      I2 => W_ADR_reg(1),
      O => temp_W0_out(1)
    );
MID_i_64: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => W_ADR_reg(0),
      O => MID_i_64_n_0
    );
MID_i_65: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAA55559555"
    )
        port map (
      I0 => W_ADR_reg(3),
      I1 => W_ADR_reg(2),
      I2 => W_ADR_reg(0),
      I3 => W_ADR_reg(1),
      I4 => WEN_IBUF,
      I5 => temp_R0_out(3),
      O => MID_i_65_n_0
    );
MID_i_66: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6A5595"
    )
        port map (
      I0 => W_ADR_reg(2),
      I1 => W_ADR_reg(1),
      I2 => W_ADR_reg(0),
      I3 => WEN_IBUF,
      I4 => temp_R0_out(2),
      O => MID_i_66_n_0
    );
MID_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A659A65959A6A659"
    )
        port map (
      I0 => W_ADR_reg(1),
      I1 => W_ADR_reg(0),
      I2 => WEN_IBUF,
      I3 => R_ADR_reg(1),
      I4 => R_ADR_reg(0),
      I5 => REN_IBUF,
      O => MID_i_67_n_0
    );
MID_i_68: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => W_ADR_reg(0),
      I1 => WEN_IBUF,
      I2 => R_ADR_reg(0),
      I3 => REN_IBUF,
      O => MID_i_68_n_0
    );
MID_i_69: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID1(1),
      I1 => MID1(0),
      O => MID_i_69_n_0
    );
MID_i_70: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID1(5),
      I1 => MID1(4),
      O => MID_i_70_n_0
    );
MID_i_71: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => MID1(4),
      I1 => MID1(5),
      O => MID_i_71_n_0
    );
MID_i_72: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID1(3),
      I1 => MID1(2),
      O => MID_i_72_n_0
    );
MID_i_73: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_27_n_1,
      O => MID_i_73_n_0
    );
MID_i_74: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => MID_reg_i_46_n_5,
      I1 => MID_reg_i_46_n_4,
      O => MID_i_74_n_0
    );
MID_i_75: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => MID_reg_i_27_n_7,
      I1 => MID_reg_i_27_n_6,
      O => MID_i_75_n_0
    );
MID_i_76: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_46_n_4,
      I1 => MID_reg_i_46_n_5,
      O => MID_i_76_n_0
    );
MID_i_77: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => MID_reg_i_46_n_7,
      I1 => MID_reg_i_46_n_6,
      O => MID_i_77_n_0
    );
MID_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => temp_W0_out(4),
      I1 => temp_R0_out(4),
      I2 => temp_R0_out(5),
      I3 => temp_W0_out(5),
      O => MID_i_8_n_0
    );
MID_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => temp_W0_out(2),
      I1 => temp_R0_out(2),
      I2 => temp_R0_out(3),
      I3 => temp_W0_out(3),
      O => MID_i_9_n_0
    );
MID_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => MID_i_2_n_0,
      D => MID_i_3_n_0,
      Q => MID_OBUF,
      R => MID_i_1_n_0
    );
MID_reg_i_20: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_37_n_0,
      CO(3) => MID_reg_i_20_n_0,
      CO(2) => MID_reg_i_20_n_1,
      CO(1) => MID_reg_i_20_n_2,
      CO(0) => MID_reg_i_20_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_MID_reg_i_20_O_UNCONNECTED(3 downto 0),
      S(3) => MID_reg_i_22_n_1,
      S(2) => MID_reg_i_22_n_1,
      S(1) => MID_reg_i_22_n_1,
      S(0) => MID_reg_i_22_n_1
    );
MID_reg_i_22: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_38_n_0,
      CO(3) => NLW_MID_reg_i_22_CO_UNCONNECTED(3),
      CO(2) => MID_reg_i_22_n_1,
      CO(1) => NLW_MID_reg_i_22_CO_UNCONNECTED(1),
      CO(0) => MID_reg_i_22_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => temp_R0_out(5 downto 4),
      O(3 downto 2) => NLW_MID_reg_i_22_O_UNCONNECTED(3 downto 2),
      O(1 downto 0) => MID1(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => MID_i_39_n_0,
      S(0) => MID_i_40_n_0
    );
MID_reg_i_23: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_41_n_0,
      CO(3) => MID_reg_i_23_n_0,
      CO(2) => MID_reg_i_23_n_1,
      CO(1) => MID_reg_i_23_n_2,
      CO(0) => MID_reg_i_23_n_3,
      CYINIT => '0',
      DI(3) => MID_i_42_n_0,
      DI(2) => MID_i_43_n_0,
      DI(1) => MID_i_44_n_0,
      DI(0) => MID_i_45_n_0,
      O(3 downto 0) => NLW_MID_reg_i_23_O_UNCONNECTED(3 downto 0),
      S(3) => MID_reg_i_27_n_1,
      S(2) => MID_reg_i_27_n_1,
      S(1) => MID_reg_i_27_n_1,
      S(0) => MID_reg_i_27_n_1
    );
MID_reg_i_27: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_46_n_0,
      CO(3) => NLW_MID_reg_i_27_CO_UNCONNECTED(3),
      CO(2) => MID_reg_i_27_n_1,
      CO(1) => NLW_MID_reg_i_27_CO_UNCONNECTED(1),
      CO(0) => MID_reg_i_27_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => temp_W0_out(5 downto 4),
      O(3 downto 2) => NLW_MID_reg_i_27_O_UNCONNECTED(3 downto 2),
      O(1) => MID_reg_i_27_n_6,
      O(0) => MID_reg_i_27_n_7,
      S(3 downto 2) => B"01",
      S(1) => MID_i_47_n_0,
      S(0) => MID_i_48_n_0
    );
MID_reg_i_37: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_49_n_0,
      CO(3) => MID_reg_i_37_n_0,
      CO(2) => MID_reg_i_37_n_1,
      CO(1) => MID_reg_i_37_n_2,
      CO(0) => MID_reg_i_37_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_MID_reg_i_37_O_UNCONNECTED(3 downto 0),
      S(3) => MID_reg_i_22_n_1,
      S(2) => MID_reg_i_22_n_1,
      S(1) => MID_reg_i_22_n_1,
      S(0) => MID_reg_i_22_n_1
    );
MID_reg_i_38: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => MID_reg_i_38_n_0,
      CO(2) => MID_reg_i_38_n_1,
      CO(1) => MID_reg_i_38_n_2,
      CO(0) => MID_reg_i_38_n_3,
      CYINIT => '1',
      DI(3) => temp_R0_out(3),
      DI(2) => MID_i_50_n_0,
      DI(1) => temp_R0_out(1),
      DI(0) => MID_i_52_n_0,
      O(3 downto 0) => MID1(3 downto 0),
      S(3) => MID_i_53_n_0,
      S(2) => MID_i_54_n_0,
      S(1) => MID_i_55_n_0,
      S(0) => MID_i_56_n_0
    );
MID_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_MID_reg_i_4_CO_UNCONNECTED(3),
      CO(2) => MID_reg_i_4_n_1,
      CO(1) => MID_reg_i_4_n_2,
      CO(0) => MID_reg_i_4_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => MID_i_8_n_0,
      DI(1) => MID_i_9_n_0,
      DI(0) => MID_i_10_n_0,
      O(3 downto 0) => NLW_MID_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => MID_i_11_n_0,
      S(1) => MID_i_12_n_0,
      S(0) => MID_i_13_n_0
    );
MID_reg_i_41: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_57_n_0,
      CO(3) => MID_reg_i_41_n_0,
      CO(2) => MID_reg_i_41_n_1,
      CO(1) => MID_reg_i_41_n_2,
      CO(0) => MID_reg_i_41_n_3,
      CYINIT => '0',
      DI(3) => MID_i_58_n_0,
      DI(2) => MID_i_59_n_0,
      DI(1) => MID_i_60_n_0,
      DI(0) => MID_i_61_n_0,
      O(3 downto 0) => NLW_MID_reg_i_41_O_UNCONNECTED(3 downto 0),
      S(3) => MID_reg_i_27_n_1,
      S(2) => MID_reg_i_27_n_1,
      S(1) => MID_reg_i_27_n_1,
      S(0) => MID_reg_i_27_n_1
    );
MID_reg_i_46: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => MID_reg_i_46_n_0,
      CO(2) => MID_reg_i_46_n_1,
      CO(1) => MID_reg_i_46_n_2,
      CO(0) => MID_reg_i_46_n_3,
      CYINIT => '1',
      DI(3) => temp_W0_out(3),
      DI(2) => MID_i_62_n_0,
      DI(1) => temp_W0_out(1),
      DI(0) => MID_i_64_n_0,
      O(3) => MID_reg_i_46_n_4,
      O(2) => MID_reg_i_46_n_5,
      O(1) => MID_reg_i_46_n_6,
      O(0) => MID_reg_i_46_n_7,
      S(3) => MID_i_65_n_0,
      S(2) => MID_i_66_n_0,
      S(1) => MID_i_67_n_0,
      S(0) => MID_i_68_n_0
    );
MID_reg_i_49: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => MID_reg_i_49_n_0,
      CO(2) => MID_reg_i_49_n_1,
      CO(1) => MID_reg_i_49_n_2,
      CO(0) => MID_reg_i_49_n_3,
      CYINIT => MID_i_69_n_0,
      DI(3 downto 2) => B"00",
      DI(1) => MID_i_70_n_0,
      DI(0) => '0',
      O(3 downto 0) => NLW_MID_reg_i_49_O_UNCONNECTED(3 downto 0),
      S(3) => MID_reg_i_22_n_1,
      S(2) => MID_reg_i_22_n_1,
      S(1) => MID_i_71_n_0,
      S(0) => MID_i_72_n_0
    );
MID_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_MID_reg_i_5_CO_UNCONNECTED(3),
      CO(2) => MID_reg_i_5_n_1,
      CO(1) => MID_reg_i_5_n_2,
      CO(0) => MID_reg_i_5_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => MID_i_14_n_0,
      DI(1) => MID_i_15_n_0,
      DI(0) => MID_i_16_n_0,
      O(3 downto 0) => NLW_MID_reg_i_5_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => MID_i_17_n_0,
      S(1) => MID_i_18_n_0,
      S(0) => MID_i_19_n_0
    );
MID_reg_i_57: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => MID_reg_i_57_n_0,
      CO(2) => MID_reg_i_57_n_1,
      CO(1) => MID_reg_i_57_n_2,
      CO(0) => MID_reg_i_57_n_3,
      CYINIT => '1',
      DI(3) => MID_i_73_n_0,
      DI(2) => MID_reg_i_27_n_6,
      DI(1) => MID_i_74_n_0,
      DI(0) => '1',
      O(3 downto 0) => NLW_MID_reg_i_57_O_UNCONNECTED(3 downto 0),
      S(3) => MID_reg_i_27_n_1,
      S(2) => MID_i_75_n_0,
      S(1) => MID_i_76_n_0,
      S(0) => MID_i_77_n_0
    );
MID_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_20_n_0,
      CO(3) => NLW_MID_reg_i_6_CO_UNCONNECTED(3),
      CO(2) => MID_reg_i_6_n_1,
      CO(1) => MID_reg_i_6_n_2,
      CO(0) => MID_reg_i_6_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => MID1(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_MID_reg_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => MID_reg_i_22_n_1,
      S(1) => MID_reg_i_22_n_1,
      S(0) => MID_reg_i_22_n_1
    );
MID_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => MID_reg_i_23_n_0,
      CO(3) => MID_reg_i_7_n_0,
      CO(2) => MID_reg_i_7_n_1,
      CO(1) => MID_reg_i_7_n_2,
      CO(0) => MID_reg_i_7_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => MID_i_24_n_0,
      DI(1) => MID_i_25_n_0,
      DI(0) => MID_i_26_n_0,
      O(3 downto 0) => NLW_MID_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => MID_reg_i_27_n_1,
      S(2) => MID_reg_i_27_n_1,
      S(1) => MID_reg_i_27_n_1,
      S(0) => MID_reg_i_27_n_1
    );
REGS_reg_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRB(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRC(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRD(4 downto 0) => W_ADR_reg(4 downto 0),
      DIA(1 downto 0) => DI_IBUF(1 downto 0),
      DIB(1 downto 0) => DI_IBUF(3 downto 2),
      DIC(1 downto 0) => DI_IBUF(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DO_reg0(1 downto 0),
      DOB(1 downto 0) => DO_reg0(3 downto 2),
      DOC(1 downto 0) => DO_reg0(5 downto 4),
      DOD(1 downto 0) => NLW_REGS_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_31_0_5_i_1_n_0
    );
REGS_reg_0_31_0_5_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => WEN_IBUF,
      O => REGS_reg_0_31_0_5_i_1_n_0
    );
REGS_reg_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRB(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRC(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRD(4 downto 0) => W_ADR_reg(4 downto 0),
      DIA(1 downto 0) => DI_IBUF(13 downto 12),
      DIB(1 downto 0) => DI_IBUF(15 downto 14),
      DIC(1 downto 0) => DI_IBUF(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DO_reg0(13 downto 12),
      DOB(1 downto 0) => DO_reg0(15 downto 14),
      DOC(1 downto 0) => DO_reg0(17 downto 16),
      DOD(1 downto 0) => NLW_REGS_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_31_0_5_i_1_n_0
    );
REGS_reg_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRB(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRC(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRD(4 downto 0) => W_ADR_reg(4 downto 0),
      DIA(1 downto 0) => DI_IBUF(19 downto 18),
      DIB(1 downto 0) => DI_IBUF(21 downto 20),
      DIC(1 downto 0) => DI_IBUF(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DO_reg0(19 downto 18),
      DOB(1 downto 0) => DO_reg0(21 downto 20),
      DOC(1 downto 0) => DO_reg0(23 downto 22),
      DOD(1 downto 0) => NLW_REGS_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_31_0_5_i_1_n_0
    );
REGS_reg_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRB(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRC(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRD(4 downto 0) => W_ADR_reg(4 downto 0),
      DIA(1 downto 0) => DI_IBUF(25 downto 24),
      DIB(1 downto 0) => DI_IBUF(27 downto 26),
      DIC(1 downto 0) => DI_IBUF(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DO_reg0(25 downto 24),
      DOB(1 downto 0) => DO_reg0(27 downto 26),
      DOC(1 downto 0) => DO_reg0(29 downto 28),
      DOD(1 downto 0) => NLW_REGS_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_31_0_5_i_1_n_0
    );
REGS_reg_0_31_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => W_ADR_reg(0),
      A1 => W_ADR_reg(1),
      A2 => W_ADR_reg(2),
      A3 => W_ADR_reg(3),
      A4 => W_ADR_reg(4),
      D => DI_IBUF(30),
      DPO => DO_reg0(30),
      DPRA0 => R_ADR_reg(0),
      DPRA1 => R_ADR_reg(1),
      DPRA2 => R_ADR_reg(2),
      DPRA3 => R_ADR_reg(3),
      DPRA4 => R_ADR_reg(4),
      SPO => NLW_REGS_reg_0_31_30_31_SPO_UNCONNECTED,
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_31_0_5_i_1_n_0
    );
\REGS_reg_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => W_ADR_reg(0),
      A1 => W_ADR_reg(1),
      A2 => W_ADR_reg(2),
      A3 => W_ADR_reg(3),
      A4 => W_ADR_reg(4),
      D => DI_IBUF(31),
      DPO => DO_reg0(31),
      DPRA0 => R_ADR_reg(0),
      DPRA1 => R_ADR_reg(1),
      DPRA2 => R_ADR_reg(2),
      DPRA3 => R_ADR_reg(3),
      DPRA4 => R_ADR_reg(4),
      SPO => \NLW_REGS_reg_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_31_0_5_i_1_n_0
    );
REGS_reg_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRB(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRC(4 downto 0) => R_ADR_reg(4 downto 0),
      ADDRD(4 downto 0) => W_ADR_reg(4 downto 0),
      DIA(1 downto 0) => DI_IBUF(7 downto 6),
      DIB(1 downto 0) => DI_IBUF(9 downto 8),
      DIC(1 downto 0) => DI_IBUF(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DO_reg0(7 downto 6),
      DOB(1 downto 0) => DO_reg0(9 downto 8),
      DOC(1 downto 0) => DO_reg0(11 downto 10),
      DOD(1 downto 0) => NLW_REGS_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => REGS_reg_0_31_0_5_i_1_n_0
    );
REN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => REN,
      O => REN_IBUF
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
\R_ADR[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C5C"
    )
        port map (
      I0 => EMPTY_OBUF,
      I1 => FULL_OBUF,
      I2 => WEN_IBUF,
      I3 => REN_IBUF,
      O => R_ADR0
    );
\R_ADR[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R_ADR_reg(0),
      O => plusOp0_in(0)
    );
\R_ADR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => R_ADR_reg(0),
      I1 => R_ADR_reg(1),
      O => plusOp0_in(1)
    );
\R_ADR[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => R_ADR_reg(0),
      I1 => R_ADR_reg(1),
      I2 => R_ADR_reg(2),
      O => plusOp0_in(2)
    );
\R_ADR[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => R_ADR_reg(1),
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(2),
      I3 => R_ADR_reg(3),
      O => plusOp0_in(3)
    );
\R_ADR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => R_ADR_reg(2),
      I1 => R_ADR_reg(0),
      I2 => R_ADR_reg(1),
      I3 => R_ADR_reg(3),
      I4 => R_ADR_reg(4),
      O => plusOp0_in(4)
    );
\R_ADR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => R_ADR0,
      D => plusOp0_in(0),
      Q => R_ADR_reg(0),
      R => \W_ADR[4]_i_1_n_0\
    );
\R_ADR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => R_ADR0,
      D => plusOp0_in(1),
      Q => R_ADR_reg(1),
      R => \W_ADR[4]_i_1_n_0\
    );
\R_ADR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => R_ADR0,
      D => plusOp0_in(2),
      Q => R_ADR_reg(2),
      R => \W_ADR[4]_i_1_n_0\
    );
\R_ADR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => R_ADR0,
      D => plusOp0_in(3),
      Q => R_ADR_reg(3),
      R => \W_ADR[4]_i_1_n_0\
    );
\R_ADR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => R_ADR0,
      D => plusOp0_in(4),
      Q => R_ADR_reg(4),
      R => \W_ADR[4]_i_1_n_0\
    );
WEN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WEN,
      O => WEN_IBUF
    );
\W_ADR[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => W_ADR_reg(0),
      O => \W_ADR[0]_i_1_n_0\
    );
\W_ADR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => W_ADR_reg(0),
      I1 => W_ADR_reg(1),
      O => \W_ADR[1]_i_1_n_0\
    );
\W_ADR[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => W_ADR_reg(0),
      I1 => W_ADR_reg(1),
      I2 => W_ADR_reg(2),
      O => \W_ADR[2]_i_1_n_0\
    );
\W_ADR[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => W_ADR_reg(1),
      I1 => W_ADR_reg(0),
      I2 => W_ADR_reg(2),
      I3 => W_ADR_reg(3),
      O => \W_ADR[3]_i_1_n_0\
    );
\W_ADR[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => \W_ADR[4]_i_1_n_0\
    );
\W_ADR[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"050E"
    )
        port map (
      I0 => REN_IBUF,
      I1 => EMPTY_OBUF,
      I2 => WEN_IBUF,
      I3 => FULL_OBUF,
      O => W_ADR0
    );
\W_ADR[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => W_ADR_reg(2),
      I1 => W_ADR_reg(0),
      I2 => W_ADR_reg(1),
      I3 => W_ADR_reg(3),
      I4 => W_ADR_reg(4),
      O => \W_ADR[4]_i_3_n_0\
    );
\W_ADR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => W_ADR0,
      D => \W_ADR[0]_i_1_n_0\,
      Q => W_ADR_reg(0),
      R => \W_ADR[4]_i_1_n_0\
    );
\W_ADR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => W_ADR0,
      D => \W_ADR[1]_i_1_n_0\,
      Q => W_ADR_reg(1),
      R => \W_ADR[4]_i_1_n_0\
    );
\W_ADR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => W_ADR0,
      D => \W_ADR[2]_i_1_n_0\,
      Q => W_ADR_reg(2),
      R => \W_ADR[4]_i_1_n_0\
    );
\W_ADR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => W_ADR0,
      D => \W_ADR[3]_i_1_n_0\,
      Q => W_ADR_reg(3),
      R => \W_ADR[4]_i_1_n_0\
    );
\W_ADR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => W_ADR0,
      D => \W_ADR[4]_i_3_n_0\,
      Q => W_ADR_reg(4),
      R => \W_ADR[4]_i_1_n_0\
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => REN_IBUF,
      O => n_0_17
    );
end STRUCTURE;
