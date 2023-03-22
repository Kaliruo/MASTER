// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Mar 17 13:32:49 2023
// Host        : pc-u3-305-09 running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/lnc3770a/Cours/MASTER/Simul_archi_mat/project_tp7/project_tp7.sim/sim_1/synth/timing/xsim/test_fifo_time_synth.v
// Design      : fifo
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ABUS_WIDTH = "5" *) (* DBUS_WIDTH = "32" *) 
(* NotValidForBitStream *)
module fifo
   (CLK,
    RST,
    REN,
    WEN,
    DI,
    DO,
    EMPTY,
    MID,
    FULL);
  input CLK;
  input RST;
  input REN;
  input WEN;
  input [31:0]DI;
  output [31:0]DO;
  output EMPTY;
  output MID;
  output FULL;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [31:0]DI;
  wire [31:0]DI_IBUF;
  wire [31:0]DO;
  wire [31:0]DO_OBUF;
  wire EMPTY;
  wire EMPTY_OBUF;
  wire EMPTY_i_1_n_0;
  wire EMPTY_i_2_n_0;
  wire EMPTY_i_3_n_0;
  wire EMPTY_i_4_n_0;
  wire EMPTY_i_5_n_0;
  wire FULL;
  wire FULL_OBUF;
  wire FULL_i_1_n_0;
  wire FULL_i_3_n_0;
  wire FULL_i_4_n_0;
  wire MID;
  wire [31:0]MID1;
  wire MID_OBUF;
  wire MID_i_10_n_0;
  wire MID_i_11_n_0;
  wire MID_i_12_n_0;
  wire MID_i_13_n_0;
  wire MID_i_14_n_0;
  wire MID_i_15_n_0;
  wire MID_i_16_n_0;
  wire MID_i_17_n_0;
  wire MID_i_18_n_0;
  wire MID_i_19_n_0;
  wire MID_i_1_n_0;
  wire MID_i_24_n_0;
  wire MID_i_25_n_0;
  wire MID_i_26_n_0;
  wire MID_i_2_n_0;
  wire MID_i_36_n_0;
  wire MID_i_39_n_0;
  wire MID_i_3_n_0;
  wire MID_i_40_n_0;
  wire MID_i_42_n_0;
  wire MID_i_43_n_0;
  wire MID_i_44_n_0;
  wire MID_i_45_n_0;
  wire MID_i_47_n_0;
  wire MID_i_48_n_0;
  wire MID_i_50_n_0;
  wire MID_i_52_n_0;
  wire MID_i_53_n_0;
  wire MID_i_54_n_0;
  wire MID_i_55_n_0;
  wire MID_i_56_n_0;
  wire MID_i_58_n_0;
  wire MID_i_59_n_0;
  wire MID_i_60_n_0;
  wire MID_i_61_n_0;
  wire MID_i_62_n_0;
  wire MID_i_64_n_0;
  wire MID_i_65_n_0;
  wire MID_i_66_n_0;
  wire MID_i_67_n_0;
  wire MID_i_68_n_0;
  wire MID_i_69_n_0;
  wire MID_i_70_n_0;
  wire MID_i_71_n_0;
  wire MID_i_72_n_0;
  wire MID_i_73_n_0;
  wire MID_i_74_n_0;
  wire MID_i_75_n_0;
  wire MID_i_76_n_0;
  wire MID_i_77_n_0;
  wire MID_i_8_n_0;
  wire MID_i_9_n_0;
  wire MID_reg_i_20_n_0;
  wire MID_reg_i_20_n_1;
  wire MID_reg_i_20_n_2;
  wire MID_reg_i_20_n_3;
  wire MID_reg_i_22_n_1;
  wire MID_reg_i_22_n_3;
  wire MID_reg_i_23_n_0;
  wire MID_reg_i_23_n_1;
  wire MID_reg_i_23_n_2;
  wire MID_reg_i_23_n_3;
  wire MID_reg_i_27_n_1;
  wire MID_reg_i_27_n_3;
  wire MID_reg_i_27_n_6;
  wire MID_reg_i_27_n_7;
  wire MID_reg_i_37_n_0;
  wire MID_reg_i_37_n_1;
  wire MID_reg_i_37_n_2;
  wire MID_reg_i_37_n_3;
  wire MID_reg_i_38_n_0;
  wire MID_reg_i_38_n_1;
  wire MID_reg_i_38_n_2;
  wire MID_reg_i_38_n_3;
  wire MID_reg_i_41_n_0;
  wire MID_reg_i_41_n_1;
  wire MID_reg_i_41_n_2;
  wire MID_reg_i_41_n_3;
  wire MID_reg_i_46_n_0;
  wire MID_reg_i_46_n_1;
  wire MID_reg_i_46_n_2;
  wire MID_reg_i_46_n_3;
  wire MID_reg_i_46_n_4;
  wire MID_reg_i_46_n_5;
  wire MID_reg_i_46_n_6;
  wire MID_reg_i_46_n_7;
  wire MID_reg_i_49_n_0;
  wire MID_reg_i_49_n_1;
  wire MID_reg_i_49_n_2;
  wire MID_reg_i_49_n_3;
  wire MID_reg_i_4_n_1;
  wire MID_reg_i_4_n_2;
  wire MID_reg_i_4_n_3;
  wire MID_reg_i_57_n_0;
  wire MID_reg_i_57_n_1;
  wire MID_reg_i_57_n_2;
  wire MID_reg_i_57_n_3;
  wire MID_reg_i_5_n_1;
  wire MID_reg_i_5_n_2;
  wire MID_reg_i_5_n_3;
  wire MID_reg_i_6_n_1;
  wire MID_reg_i_6_n_2;
  wire MID_reg_i_6_n_3;
  wire MID_reg_i_7_n_0;
  wire MID_reg_i_7_n_1;
  wire MID_reg_i_7_n_2;
  wire MID_reg_i_7_n_3;
  wire REGS_reg_i_1_n_0;
  wire REGS_reg_i_2_n_0;
  wire REGS_reg_i_3_n_0;
  wire REN;
  wire REN_IBUF;
  wire RST;
  wire RST_IBUF;
  wire [4:0]R_ADR;
  wire R_ADR0;
  wire WEN;
  wire WEN_IBUF;
  wire W_ADR0;
  wire \W_ADR[0]_i_1_n_0 ;
  wire \W_ADR[1]_i_1_n_0 ;
  wire \W_ADR[2]_i_1_n_0 ;
  wire \W_ADR[3]_i_1_n_0 ;
  wire \W_ADR[4]_i_1_n_0 ;
  wire \W_ADR[4]_i_3_n_0 ;
  wire [4:0]W_ADR_reg;
  wire eqOp;
  wire [4:0]plusOp0_in;
  wire [5:1]temp_R0_out;
  wire [5:1]temp_W0_out;
  wire [3:0]NLW_MID_reg_i_20_O_UNCONNECTED;
  wire [3:1]NLW_MID_reg_i_22_CO_UNCONNECTED;
  wire [3:2]NLW_MID_reg_i_22_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_23_O_UNCONNECTED;
  wire [3:1]NLW_MID_reg_i_27_CO_UNCONNECTED;
  wire [3:2]NLW_MID_reg_i_27_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_37_O_UNCONNECTED;
  wire [3:3]NLW_MID_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_41_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_49_O_UNCONNECTED;
  wire [3:3]NLW_MID_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_57_O_UNCONNECTED;
  wire [3:3]NLW_MID_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_7_O_UNCONNECTED;
  wire [1:0]NLW_REGS_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_REGS_reg_DOPBDOP_UNCONNECTED;

initial begin
 $sdf_annotate("test_fifo_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \DI_IBUF[0]_inst 
       (.I(DI[0]),
        .O(DI_IBUF[0]));
  IBUF \DI_IBUF[10]_inst 
       (.I(DI[10]),
        .O(DI_IBUF[10]));
  IBUF \DI_IBUF[11]_inst 
       (.I(DI[11]),
        .O(DI_IBUF[11]));
  IBUF \DI_IBUF[12]_inst 
       (.I(DI[12]),
        .O(DI_IBUF[12]));
  IBUF \DI_IBUF[13]_inst 
       (.I(DI[13]),
        .O(DI_IBUF[13]));
  IBUF \DI_IBUF[14]_inst 
       (.I(DI[14]),
        .O(DI_IBUF[14]));
  IBUF \DI_IBUF[15]_inst 
       (.I(DI[15]),
        .O(DI_IBUF[15]));
  IBUF \DI_IBUF[16]_inst 
       (.I(DI[16]),
        .O(DI_IBUF[16]));
  IBUF \DI_IBUF[17]_inst 
       (.I(DI[17]),
        .O(DI_IBUF[17]));
  IBUF \DI_IBUF[18]_inst 
       (.I(DI[18]),
        .O(DI_IBUF[18]));
  IBUF \DI_IBUF[19]_inst 
       (.I(DI[19]),
        .O(DI_IBUF[19]));
  IBUF \DI_IBUF[1]_inst 
       (.I(DI[1]),
        .O(DI_IBUF[1]));
  IBUF \DI_IBUF[20]_inst 
       (.I(DI[20]),
        .O(DI_IBUF[20]));
  IBUF \DI_IBUF[21]_inst 
       (.I(DI[21]),
        .O(DI_IBUF[21]));
  IBUF \DI_IBUF[22]_inst 
       (.I(DI[22]),
        .O(DI_IBUF[22]));
  IBUF \DI_IBUF[23]_inst 
       (.I(DI[23]),
        .O(DI_IBUF[23]));
  IBUF \DI_IBUF[24]_inst 
       (.I(DI[24]),
        .O(DI_IBUF[24]));
  IBUF \DI_IBUF[25]_inst 
       (.I(DI[25]),
        .O(DI_IBUF[25]));
  IBUF \DI_IBUF[26]_inst 
       (.I(DI[26]),
        .O(DI_IBUF[26]));
  IBUF \DI_IBUF[27]_inst 
       (.I(DI[27]),
        .O(DI_IBUF[27]));
  IBUF \DI_IBUF[28]_inst 
       (.I(DI[28]),
        .O(DI_IBUF[28]));
  IBUF \DI_IBUF[29]_inst 
       (.I(DI[29]),
        .O(DI_IBUF[29]));
  IBUF \DI_IBUF[2]_inst 
       (.I(DI[2]),
        .O(DI_IBUF[2]));
  IBUF \DI_IBUF[30]_inst 
       (.I(DI[30]),
        .O(DI_IBUF[30]));
  IBUF \DI_IBUF[31]_inst 
       (.I(DI[31]),
        .O(DI_IBUF[31]));
  IBUF \DI_IBUF[3]_inst 
       (.I(DI[3]),
        .O(DI_IBUF[3]));
  IBUF \DI_IBUF[4]_inst 
       (.I(DI[4]),
        .O(DI_IBUF[4]));
  IBUF \DI_IBUF[5]_inst 
       (.I(DI[5]),
        .O(DI_IBUF[5]));
  IBUF \DI_IBUF[6]_inst 
       (.I(DI[6]),
        .O(DI_IBUF[6]));
  IBUF \DI_IBUF[7]_inst 
       (.I(DI[7]),
        .O(DI_IBUF[7]));
  IBUF \DI_IBUF[8]_inst 
       (.I(DI[8]),
        .O(DI_IBUF[8]));
  IBUF \DI_IBUF[9]_inst 
       (.I(DI[9]),
        .O(DI_IBUF[9]));
  OBUF \DO_OBUF[0]_inst 
       (.I(DO_OBUF[0]),
        .O(DO[0]));
  OBUF \DO_OBUF[10]_inst 
       (.I(DO_OBUF[10]),
        .O(DO[10]));
  OBUF \DO_OBUF[11]_inst 
       (.I(DO_OBUF[11]),
        .O(DO[11]));
  OBUF \DO_OBUF[12]_inst 
       (.I(DO_OBUF[12]),
        .O(DO[12]));
  OBUF \DO_OBUF[13]_inst 
       (.I(DO_OBUF[13]),
        .O(DO[13]));
  OBUF \DO_OBUF[14]_inst 
       (.I(DO_OBUF[14]),
        .O(DO[14]));
  OBUF \DO_OBUF[15]_inst 
       (.I(DO_OBUF[15]),
        .O(DO[15]));
  OBUF \DO_OBUF[16]_inst 
       (.I(DO_OBUF[16]),
        .O(DO[16]));
  OBUF \DO_OBUF[17]_inst 
       (.I(DO_OBUF[17]),
        .O(DO[17]));
  OBUF \DO_OBUF[18]_inst 
       (.I(DO_OBUF[18]),
        .O(DO[18]));
  OBUF \DO_OBUF[19]_inst 
       (.I(DO_OBUF[19]),
        .O(DO[19]));
  OBUF \DO_OBUF[1]_inst 
       (.I(DO_OBUF[1]),
        .O(DO[1]));
  OBUF \DO_OBUF[20]_inst 
       (.I(DO_OBUF[20]),
        .O(DO[20]));
  OBUF \DO_OBUF[21]_inst 
       (.I(DO_OBUF[21]),
        .O(DO[21]));
  OBUF \DO_OBUF[22]_inst 
       (.I(DO_OBUF[22]),
        .O(DO[22]));
  OBUF \DO_OBUF[23]_inst 
       (.I(DO_OBUF[23]),
        .O(DO[23]));
  OBUF \DO_OBUF[24]_inst 
       (.I(DO_OBUF[24]),
        .O(DO[24]));
  OBUF \DO_OBUF[25]_inst 
       (.I(DO_OBUF[25]),
        .O(DO[25]));
  OBUF \DO_OBUF[26]_inst 
       (.I(DO_OBUF[26]),
        .O(DO[26]));
  OBUF \DO_OBUF[27]_inst 
       (.I(DO_OBUF[27]),
        .O(DO[27]));
  OBUF \DO_OBUF[28]_inst 
       (.I(DO_OBUF[28]),
        .O(DO[28]));
  OBUF \DO_OBUF[29]_inst 
       (.I(DO_OBUF[29]),
        .O(DO[29]));
  OBUF \DO_OBUF[2]_inst 
       (.I(DO_OBUF[2]),
        .O(DO[2]));
  OBUF \DO_OBUF[30]_inst 
       (.I(DO_OBUF[30]),
        .O(DO[30]));
  OBUF \DO_OBUF[31]_inst 
       (.I(DO_OBUF[31]),
        .O(DO[31]));
  OBUF \DO_OBUF[3]_inst 
       (.I(DO_OBUF[3]),
        .O(DO[3]));
  OBUF \DO_OBUF[4]_inst 
       (.I(DO_OBUF[4]),
        .O(DO[4]));
  OBUF \DO_OBUF[5]_inst 
       (.I(DO_OBUF[5]),
        .O(DO[5]));
  OBUF \DO_OBUF[6]_inst 
       (.I(DO_OBUF[6]),
        .O(DO[6]));
  OBUF \DO_OBUF[7]_inst 
       (.I(DO_OBUF[7]),
        .O(DO[7]));
  OBUF \DO_OBUF[8]_inst 
       (.I(DO_OBUF[8]),
        .O(DO[8]));
  OBUF \DO_OBUF[9]_inst 
       (.I(DO_OBUF[9]),
        .O(DO[9]));
  OBUF EMPTY_OBUF_inst
       (.I(EMPTY_OBUF),
        .O(EMPTY));
  LUT5 #(
    .INIT(32'hFF8F8F8F)) 
    EMPTY_i_1
       (.I0(WEN_IBUF),
        .I1(EMPTY_OBUF),
        .I2(RST_IBUF),
        .I3(EMPTY_i_2_n_0),
        .I4(EMPTY_i_3_n_0),
        .O(EMPTY_i_1_n_0));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    EMPTY_i_2
       (.I0(W_ADR_reg[4]),
        .I1(R_ADR[4]),
        .I2(R_ADR[3]),
        .I3(R_ADR[1]),
        .I4(R_ADR[0]),
        .I5(R_ADR[2]),
        .O(EMPTY_i_2_n_0));
  LUT6 #(
    .INIT(64'h0884400040000884)) 
    EMPTY_i_3
       (.I0(W_ADR_reg[2]),
        .I1(EMPTY_i_4_n_0),
        .I2(EMPTY_i_5_n_0),
        .I3(R_ADR[2]),
        .I4(R_ADR[3]),
        .I5(W_ADR_reg[3]),
        .O(EMPTY_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000022020020000)) 
    EMPTY_i_4
       (.I0(WEN_IBUF),
        .I1(REN_IBUF),
        .I2(W_ADR_reg[1]),
        .I3(R_ADR[1]),
        .I4(W_ADR_reg[0]),
        .I5(R_ADR[0]),
        .O(EMPTY_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    EMPTY_i_5
       (.I0(R_ADR[1]),
        .I1(R_ADR[0]),
        .O(EMPTY_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    EMPTY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(EMPTY_i_1_n_0),
        .Q(EMPTY_OBUF),
        .R(1'b0));
  OBUF FULL_OBUF_inst
       (.I(FULL_OBUF),
        .O(FULL));
  LUT5 #(
    .INIT(32'hA0EA0000)) 
    FULL_i_1
       (.I0(FULL_OBUF),
        .I1(eqOp),
        .I2(REN_IBUF),
        .I3(WEN_IBUF),
        .I4(RST_IBUF),
        .O(FULL_i_1_n_0));
  LUT6 #(
    .INIT(64'h0884400040000884)) 
    FULL_i_2
       (.I0(R_ADR[3]),
        .I1(FULL_i_3_n_0),
        .I2(FULL_i_4_n_0),
        .I3(W_ADR_reg[3]),
        .I4(W_ADR_reg[4]),
        .I5(R_ADR[4]),
        .O(eqOp));
  LUT6 #(
    .INIT(64'h0824100010000824)) 
    FULL_i_3
       (.I0(R_ADR[1]),
        .I1(R_ADR[0]),
        .I2(W_ADR_reg[0]),
        .I3(W_ADR_reg[1]),
        .I4(W_ADR_reg[2]),
        .I5(R_ADR[2]),
        .O(FULL_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    FULL_i_4
       (.I0(W_ADR_reg[2]),
        .I1(W_ADR_reg[0]),
        .I2(W_ADR_reg[1]),
        .O(FULL_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FULL_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(FULL_i_1_n_0),
        .Q(FULL_OBUF),
        .R(1'b0));
  OBUF MID_OBUF_inst
       (.I(MID_OBUF),
        .O(MID));
  LUT2 #(
    .INIT(4'hB)) 
    MID_i_1
       (.I0(EMPTY_OBUF),
        .I1(RST_IBUF),
        .O(MID_i_1_n_0));
  LUT6 #(
    .INIT(64'h6F004B6F424B0042)) 
    MID_i_10
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .I3(WEN_IBUF),
        .I4(W_ADR_reg[0]),
        .I5(W_ADR_reg[1]),
        .O(MID_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    MID_i_11
       (.I0(temp_W0_out[5]),
        .I1(temp_R0_out[5]),
        .I2(temp_R0_out[4]),
        .I3(temp_W0_out[4]),
        .O(MID_i_11_n_0));
  LUT6 #(
    .INIT(64'h9AAA655500000000)) 
    MID_i_12
       (.I0(temp_R0_out[2]),
        .I1(WEN_IBUF),
        .I2(W_ADR_reg[0]),
        .I3(W_ADR_reg[1]),
        .I4(W_ADR_reg[2]),
        .I5(MID_i_36_n_0),
        .O(MID_i_12_n_0));
  LUT6 #(
    .INIT(64'h9042249009244209)) 
    MID_i_13
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .I3(WEN_IBUF),
        .I4(W_ADR_reg[0]),
        .I5(W_ADR_reg[1]),
        .O(MID_i_13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    MID_i_14
       (.I0(temp_R0_out[4]),
        .I1(temp_W0_out[4]),
        .I2(temp_W0_out[5]),
        .I3(temp_R0_out[5]),
        .O(MID_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    MID_i_15
       (.I0(temp_R0_out[2]),
        .I1(temp_W0_out[2]),
        .I2(temp_W0_out[3]),
        .I3(temp_R0_out[3]),
        .O(MID_i_15_n_0));
  LUT6 #(
    .INIT(64'h6F004B6F424B0042)) 
    MID_i_16
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[0]),
        .I2(W_ADR_reg[1]),
        .I3(REN_IBUF),
        .I4(R_ADR[0]),
        .I5(R_ADR[1]),
        .O(MID_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    MID_i_17
       (.I0(temp_W0_out[5]),
        .I1(temp_R0_out[5]),
        .I2(temp_R0_out[4]),
        .I3(temp_W0_out[4]),
        .O(MID_i_17_n_0));
  LUT6 #(
    .INIT(64'h9AAA655500000000)) 
    MID_i_18
       (.I0(temp_R0_out[2]),
        .I1(WEN_IBUF),
        .I2(W_ADR_reg[0]),
        .I3(W_ADR_reg[1]),
        .I4(W_ADR_reg[2]),
        .I5(MID_i_36_n_0),
        .O(MID_i_18_n_0));
  LUT6 #(
    .INIT(64'h9042249009244209)) 
    MID_i_19
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .I3(WEN_IBUF),
        .I4(W_ADR_reg[0]),
        .I5(W_ADR_reg[1]),
        .O(MID_i_19_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    MID_i_2
       (.I0(MID_reg_i_4_n_1),
        .I1(MID_reg_i_5_n_1),
        .I2(FULL_OBUF),
        .O(MID_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_21
       (.I0(MID_reg_i_22_n_1),
        .O(MID1[31]));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_24
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_25
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_26
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_26_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    MID_i_28
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[2]),
        .I2(W_ADR_reg[0]),
        .I3(W_ADR_reg[1]),
        .I4(W_ADR_reg[3]),
        .I5(W_ADR_reg[4]),
        .O(temp_W0_out[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    MID_i_29
       (.I0(REN_IBUF),
        .I1(R_ADR[2]),
        .I2(R_ADR[0]),
        .I3(R_ADR[1]),
        .I4(R_ADR[3]),
        .I5(R_ADR[4]),
        .O(temp_R0_out[4]));
  LUT4 #(
    .INIT(16'hFFE2)) 
    MID_i_3
       (.I0(MID_reg_i_6_n_1),
        .I1(MID_reg_i_4_n_1),
        .I2(MID_reg_i_7_n_0),
        .I3(FULL_OBUF),
        .O(MID_i_3_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    MID_i_30
       (.I0(REN_IBUF),
        .I1(R_ADR[4]),
        .I2(R_ADR[2]),
        .I3(R_ADR[0]),
        .I4(R_ADR[1]),
        .I5(R_ADR[3]),
        .O(temp_R0_out[5]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    MID_i_31
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[4]),
        .I2(W_ADR_reg[2]),
        .I3(W_ADR_reg[0]),
        .I4(W_ADR_reg[1]),
        .I5(W_ADR_reg[3]),
        .O(temp_W0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    MID_i_32
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[0]),
        .I2(W_ADR_reg[1]),
        .I3(W_ADR_reg[2]),
        .O(temp_W0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    MID_i_33
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .I3(R_ADR[2]),
        .O(temp_R0_out[2]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    MID_i_34
       (.I0(REN_IBUF),
        .I1(R_ADR[1]),
        .I2(R_ADR[0]),
        .I3(R_ADR[2]),
        .I4(R_ADR[3]),
        .O(temp_R0_out[3]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    MID_i_35
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[1]),
        .I2(W_ADR_reg[0]),
        .I3(W_ADR_reg[2]),
        .I4(W_ADR_reg[3]),
        .O(temp_W0_out[3]));
  LUT6 #(
    .INIT(64'hAAAA6AAA55559555)) 
    MID_i_36
       (.I0(W_ADR_reg[3]),
        .I1(W_ADR_reg[2]),
        .I2(W_ADR_reg[0]),
        .I3(W_ADR_reg[1]),
        .I4(WEN_IBUF),
        .I5(temp_R0_out[3]),
        .O(MID_i_36_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_39
       (.I0(temp_R0_out[5]),
        .I1(temp_W0_out[5]),
        .O(MID_i_39_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_40
       (.I0(temp_R0_out[4]),
        .I1(temp_W0_out[4]),
        .O(MID_i_40_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_42
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_42_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_43
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_43_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_44
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_44_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_45
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_45_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_47
       (.I0(temp_W0_out[5]),
        .I1(temp_R0_out[5]),
        .O(MID_i_47_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_48
       (.I0(temp_W0_out[4]),
        .I1(temp_R0_out[4]),
        .O(MID_i_48_n_0));
  LUT4 #(
    .INIT(16'hBF40)) 
    MID_i_50
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .I3(R_ADR[2]),
        .O(MID_i_50_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    MID_i_51
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .O(temp_R0_out[1]));
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_52
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .O(MID_i_52_n_0));
  LUT6 #(
    .INIT(64'hAAAA6AAA55559555)) 
    MID_i_53
       (.I0(R_ADR[3]),
        .I1(R_ADR[2]),
        .I2(R_ADR[0]),
        .I3(R_ADR[1]),
        .I4(REN_IBUF),
        .I5(temp_W0_out[3]),
        .O(MID_i_53_n_0));
  LUT5 #(
    .INIT(32'hAA6A5595)) 
    MID_i_54
       (.I0(R_ADR[2]),
        .I1(R_ADR[1]),
        .I2(R_ADR[0]),
        .I3(REN_IBUF),
        .I4(temp_W0_out[2]),
        .O(MID_i_54_n_0));
  LUT6 #(
    .INIT(64'hA659A65959A6A659)) 
    MID_i_55
       (.I0(R_ADR[1]),
        .I1(R_ADR[0]),
        .I2(REN_IBUF),
        .I3(W_ADR_reg[1]),
        .I4(W_ADR_reg[0]),
        .I5(WEN_IBUF),
        .O(MID_i_55_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    MID_i_56
       (.I0(R_ADR[0]),
        .I1(REN_IBUF),
        .I2(W_ADR_reg[0]),
        .I3(WEN_IBUF),
        .O(MID_i_56_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_58
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_58_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_59
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_59_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_60
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_60_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_61
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_61_n_0));
  LUT4 #(
    .INIT(16'hBF40)) 
    MID_i_62
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[0]),
        .I2(W_ADR_reg[1]),
        .I3(W_ADR_reg[2]),
        .O(MID_i_62_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    MID_i_63
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[0]),
        .I2(W_ADR_reg[1]),
        .O(temp_W0_out[1]));
  LUT2 #(
    .INIT(4'h9)) 
    MID_i_64
       (.I0(WEN_IBUF),
        .I1(W_ADR_reg[0]),
        .O(MID_i_64_n_0));
  LUT6 #(
    .INIT(64'hAAAA6AAA55559555)) 
    MID_i_65
       (.I0(W_ADR_reg[3]),
        .I1(W_ADR_reg[2]),
        .I2(W_ADR_reg[0]),
        .I3(W_ADR_reg[1]),
        .I4(WEN_IBUF),
        .I5(temp_R0_out[3]),
        .O(MID_i_65_n_0));
  LUT5 #(
    .INIT(32'hAA6A5595)) 
    MID_i_66
       (.I0(W_ADR_reg[2]),
        .I1(W_ADR_reg[1]),
        .I2(W_ADR_reg[0]),
        .I3(WEN_IBUF),
        .I4(temp_R0_out[2]),
        .O(MID_i_66_n_0));
  LUT6 #(
    .INIT(64'hA659A65959A6A659)) 
    MID_i_67
       (.I0(W_ADR_reg[1]),
        .I1(W_ADR_reg[0]),
        .I2(WEN_IBUF),
        .I3(R_ADR[1]),
        .I4(R_ADR[0]),
        .I5(REN_IBUF),
        .O(MID_i_67_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    MID_i_68
       (.I0(W_ADR_reg[0]),
        .I1(WEN_IBUF),
        .I2(R_ADR[0]),
        .I3(REN_IBUF),
        .O(MID_i_68_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MID_i_69
       (.I0(MID1[1]),
        .I1(MID1[0]),
        .O(MID_i_69_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MID_i_70
       (.I0(MID1[5]),
        .I1(MID1[4]),
        .O(MID_i_70_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MID_i_71
       (.I0(MID1[4]),
        .I1(MID1[5]),
        .O(MID_i_71_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MID_i_72
       (.I0(MID1[3]),
        .I1(MID1[2]),
        .O(MID_i_72_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_73
       (.I0(MID_reg_i_27_n_1),
        .O(MID_i_73_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MID_i_74
       (.I0(MID_reg_i_46_n_5),
        .I1(MID_reg_i_46_n_4),
        .O(MID_i_74_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MID_i_75
       (.I0(MID_reg_i_27_n_7),
        .I1(MID_reg_i_27_n_6),
        .O(MID_i_75_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MID_i_76
       (.I0(MID_reg_i_46_n_4),
        .I1(MID_reg_i_46_n_5),
        .O(MID_i_76_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MID_i_77
       (.I0(MID_reg_i_46_n_7),
        .I1(MID_reg_i_46_n_6),
        .O(MID_i_77_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    MID_i_8
       (.I0(temp_W0_out[4]),
        .I1(temp_R0_out[4]),
        .I2(temp_R0_out[5]),
        .I3(temp_W0_out[5]),
        .O(MID_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    MID_i_9
       (.I0(temp_W0_out[2]),
        .I1(temp_R0_out[2]),
        .I2(temp_R0_out[3]),
        .I3(temp_W0_out[3]),
        .O(MID_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MID_reg
       (.C(CLK_IBUF_BUFG),
        .CE(MID_i_2_n_0),
        .D(MID_i_3_n_0),
        .Q(MID_OBUF),
        .R(MID_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_20
       (.CI(MID_reg_i_37_n_0),
        .CO({MID_reg_i_20_n_0,MID_reg_i_20_n_1,MID_reg_i_20_n_2,MID_reg_i_20_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MID_reg_i_20_O_UNCONNECTED[3:0]),
        .S({MID_reg_i_22_n_1,MID_reg_i_22_n_1,MID_reg_i_22_n_1,MID_reg_i_22_n_1}));
  CARRY4 MID_reg_i_22
       (.CI(MID_reg_i_38_n_0),
        .CO({NLW_MID_reg_i_22_CO_UNCONNECTED[3],MID_reg_i_22_n_1,NLW_MID_reg_i_22_CO_UNCONNECTED[1],MID_reg_i_22_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,temp_R0_out[5:4]}),
        .O({NLW_MID_reg_i_22_O_UNCONNECTED[3:2],MID1[5:4]}),
        .S({1'b0,1'b1,MID_i_39_n_0,MID_i_40_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_23
       (.CI(MID_reg_i_41_n_0),
        .CO({MID_reg_i_23_n_0,MID_reg_i_23_n_1,MID_reg_i_23_n_2,MID_reg_i_23_n_3}),
        .CYINIT(1'b0),
        .DI({MID_i_42_n_0,MID_i_43_n_0,MID_i_44_n_0,MID_i_45_n_0}),
        .O(NLW_MID_reg_i_23_O_UNCONNECTED[3:0]),
        .S({MID_reg_i_27_n_1,MID_reg_i_27_n_1,MID_reg_i_27_n_1,MID_reg_i_27_n_1}));
  CARRY4 MID_reg_i_27
       (.CI(MID_reg_i_46_n_0),
        .CO({NLW_MID_reg_i_27_CO_UNCONNECTED[3],MID_reg_i_27_n_1,NLW_MID_reg_i_27_CO_UNCONNECTED[1],MID_reg_i_27_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,temp_W0_out[5:4]}),
        .O({NLW_MID_reg_i_27_O_UNCONNECTED[3:2],MID_reg_i_27_n_6,MID_reg_i_27_n_7}),
        .S({1'b0,1'b1,MID_i_47_n_0,MID_i_48_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_37
       (.CI(MID_reg_i_49_n_0),
        .CO({MID_reg_i_37_n_0,MID_reg_i_37_n_1,MID_reg_i_37_n_2,MID_reg_i_37_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MID_reg_i_37_O_UNCONNECTED[3:0]),
        .S({MID_reg_i_22_n_1,MID_reg_i_22_n_1,MID_reg_i_22_n_1,MID_reg_i_22_n_1}));
  CARRY4 MID_reg_i_38
       (.CI(1'b0),
        .CO({MID_reg_i_38_n_0,MID_reg_i_38_n_1,MID_reg_i_38_n_2,MID_reg_i_38_n_3}),
        .CYINIT(1'b1),
        .DI({temp_R0_out[3],MID_i_50_n_0,temp_R0_out[1],MID_i_52_n_0}),
        .O(MID1[3:0]),
        .S({MID_i_53_n_0,MID_i_54_n_0,MID_i_55_n_0,MID_i_56_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_4
       (.CI(1'b0),
        .CO({NLW_MID_reg_i_4_CO_UNCONNECTED[3],MID_reg_i_4_n_1,MID_reg_i_4_n_2,MID_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,MID_i_8_n_0,MID_i_9_n_0,MID_i_10_n_0}),
        .O(NLW_MID_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,MID_i_11_n_0,MID_i_12_n_0,MID_i_13_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_41
       (.CI(MID_reg_i_57_n_0),
        .CO({MID_reg_i_41_n_0,MID_reg_i_41_n_1,MID_reg_i_41_n_2,MID_reg_i_41_n_3}),
        .CYINIT(1'b0),
        .DI({MID_i_58_n_0,MID_i_59_n_0,MID_i_60_n_0,MID_i_61_n_0}),
        .O(NLW_MID_reg_i_41_O_UNCONNECTED[3:0]),
        .S({MID_reg_i_27_n_1,MID_reg_i_27_n_1,MID_reg_i_27_n_1,MID_reg_i_27_n_1}));
  CARRY4 MID_reg_i_46
       (.CI(1'b0),
        .CO({MID_reg_i_46_n_0,MID_reg_i_46_n_1,MID_reg_i_46_n_2,MID_reg_i_46_n_3}),
        .CYINIT(1'b1),
        .DI({temp_W0_out[3],MID_i_62_n_0,temp_W0_out[1],MID_i_64_n_0}),
        .O({MID_reg_i_46_n_4,MID_reg_i_46_n_5,MID_reg_i_46_n_6,MID_reg_i_46_n_7}),
        .S({MID_i_65_n_0,MID_i_66_n_0,MID_i_67_n_0,MID_i_68_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_49
       (.CI(1'b0),
        .CO({MID_reg_i_49_n_0,MID_reg_i_49_n_1,MID_reg_i_49_n_2,MID_reg_i_49_n_3}),
        .CYINIT(MID_i_69_n_0),
        .DI({1'b0,1'b0,MID_i_70_n_0,1'b0}),
        .O(NLW_MID_reg_i_49_O_UNCONNECTED[3:0]),
        .S({MID_reg_i_22_n_1,MID_reg_i_22_n_1,MID_i_71_n_0,MID_i_72_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_5
       (.CI(1'b0),
        .CO({NLW_MID_reg_i_5_CO_UNCONNECTED[3],MID_reg_i_5_n_1,MID_reg_i_5_n_2,MID_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,MID_i_14_n_0,MID_i_15_n_0,MID_i_16_n_0}),
        .O(NLW_MID_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,MID_i_17_n_0,MID_i_18_n_0,MID_i_19_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_57
       (.CI(1'b0),
        .CO({MID_reg_i_57_n_0,MID_reg_i_57_n_1,MID_reg_i_57_n_2,MID_reg_i_57_n_3}),
        .CYINIT(1'b1),
        .DI({MID_i_73_n_0,MID_reg_i_27_n_6,MID_i_74_n_0,1'b1}),
        .O(NLW_MID_reg_i_57_O_UNCONNECTED[3:0]),
        .S({MID_reg_i_27_n_1,MID_i_75_n_0,MID_i_76_n_0,MID_i_77_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_6
       (.CI(MID_reg_i_20_n_0),
        .CO({NLW_MID_reg_i_6_CO_UNCONNECTED[3],MID_reg_i_6_n_1,MID_reg_i_6_n_2,MID_reg_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,MID1[31],1'b0,1'b0}),
        .O(NLW_MID_reg_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,MID_reg_i_22_n_1,MID_reg_i_22_n_1,MID_reg_i_22_n_1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_7
       (.CI(MID_reg_i_23_n_0),
        .CO({MID_reg_i_7_n_0,MID_reg_i_7_n_1,MID_reg_i_7_n_2,MID_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,MID_i_24_n_0,MID_i_25_n_0,MID_i_26_n_0}),
        .O(NLW_MID_reg_i_7_O_UNCONNECTED[3:0]),
        .S({MID_reg_i_27_n_1,MID_reg_i_27_n_1,MID_reg_i_27_n_1,MID_reg_i_27_n_1}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "REGS_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
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
    REGS_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,R_ADR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,W_ADR_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK_IBUF_BUFG),
        .CLKBWRCLK(CLK_IBUF_BUFG),
        .DIADI(DI_IBUF[15:0]),
        .DIBDI(DI_IBUF[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(DO_OBUF[15:0]),
        .DOBDO(DO_OBUF[31:16]),
        .DOPADOP(NLW_REGS_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_REGS_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(REGS_reg_i_1_n_0),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(REGS_reg_i_2_n_0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({REGS_reg_i_3_n_0,REGS_reg_i_3_n_0,REGS_reg_i_3_n_0,REGS_reg_i_3_n_0}));
  LUT3 #(
    .INIT(8'h15)) 
    REGS_reg_i_1
       (.I0(REN_IBUF),
        .I1(EMPTY_OBUF),
        .I2(WEN_IBUF),
        .O(REGS_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    REGS_reg_i_2
       (.I0(WEN_IBUF),
        .I1(REN_IBUF),
        .I2(EMPTY_OBUF),
        .O(REGS_reg_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    REGS_reg_i_3
       (.I0(WEN_IBUF),
        .O(REGS_reg_i_3_n_0));
  IBUF REN_IBUF_inst
       (.I(REN),
        .O(REN_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \R_ADR[0]_i_1 
       (.I0(R_ADR[0]),
        .O(plusOp0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \R_ADR[1]_i_1 
       (.I0(R_ADR[0]),
        .I1(R_ADR[1]),
        .O(plusOp0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \R_ADR[2]_i_1 
       (.I0(R_ADR[0]),
        .I1(R_ADR[1]),
        .I2(R_ADR[2]),
        .O(plusOp0_in[2]));
  LUT4 #(
    .INIT(16'h05CC)) 
    \R_ADR[3]_i_1 
       (.I0(EMPTY_OBUF),
        .I1(FULL_OBUF),
        .I2(REN_IBUF),
        .I3(WEN_IBUF),
        .O(R_ADR0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \R_ADR[3]_i_2 
       (.I0(R_ADR[1]),
        .I1(R_ADR[0]),
        .I2(R_ADR[2]),
        .I3(R_ADR[3]),
        .O(plusOp0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \R_ADR[4]_i_1 
       (.I0(R_ADR[2]),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .I3(R_ADR[3]),
        .I4(R_ADR[4]),
        .O(plusOp0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(R_ADR0),
        .D(plusOp0_in[0]),
        .Q(R_ADR[0]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(R_ADR0),
        .D(plusOp0_in[1]),
        .Q(R_ADR[1]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(R_ADR0),
        .D(plusOp0_in[2]),
        .Q(R_ADR[2]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(R_ADR0),
        .D(plusOp0_in[3]),
        .Q(R_ADR[3]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(R_ADR0),
        .D(plusOp0_in[4]),
        .Q(R_ADR[4]),
        .R(\W_ADR[4]_i_1_n_0 ));
  IBUF WEN_IBUF_inst
       (.I(WEN),
        .O(WEN_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \W_ADR[0]_i_1 
       (.I0(W_ADR_reg[0]),
        .O(\W_ADR[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \W_ADR[1]_i_1 
       (.I0(W_ADR_reg[0]),
        .I1(W_ADR_reg[1]),
        .O(\W_ADR[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \W_ADR[2]_i_1 
       (.I0(W_ADR_reg[0]),
        .I1(W_ADR_reg[1]),
        .I2(W_ADR_reg[2]),
        .O(\W_ADR[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \W_ADR[3]_i_1 
       (.I0(W_ADR_reg[1]),
        .I1(W_ADR_reg[0]),
        .I2(W_ADR_reg[2]),
        .I3(W_ADR_reg[3]),
        .O(\W_ADR[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \W_ADR[4]_i_1 
       (.I0(RST_IBUF),
        .O(\W_ADR[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h050E)) 
    \W_ADR[4]_i_2 
       (.I0(REN_IBUF),
        .I1(EMPTY_OBUF),
        .I2(WEN_IBUF),
        .I3(FULL_OBUF),
        .O(W_ADR0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \W_ADR[4]_i_3 
       (.I0(W_ADR_reg[2]),
        .I1(W_ADR_reg[0]),
        .I2(W_ADR_reg[1]),
        .I3(W_ADR_reg[3]),
        .I4(W_ADR_reg[4]),
        .O(\W_ADR[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(W_ADR0),
        .D(\W_ADR[0]_i_1_n_0 ),
        .Q(W_ADR_reg[0]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(W_ADR0),
        .D(\W_ADR[1]_i_1_n_0 ),
        .Q(W_ADR_reg[1]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(W_ADR0),
        .D(\W_ADR[2]_i_1_n_0 ),
        .Q(W_ADR_reg[2]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(W_ADR0),
        .D(\W_ADR[3]_i_1_n_0 ),
        .Q(W_ADR_reg[3]),
        .R(\W_ADR[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(W_ADR0),
        .D(\W_ADR[4]_i_3_n_0 ),
        .Q(W_ADR_reg[4]),
        .R(\W_ADR[4]_i_1_n_0 ));
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
