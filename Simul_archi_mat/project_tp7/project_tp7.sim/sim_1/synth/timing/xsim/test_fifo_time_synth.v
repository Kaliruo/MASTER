// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar 15 13:13:28 2023
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

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD9
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

(* ABUS_WIDTH = "3" *) (* DBUS_WIDTH = "32" *) 
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
  wire \DO_TRI[0] ;
  wire [31:0]DO_reg0;
  wire \DO_tristate_oe[31]__0_i_1_n_0 ;
  wire \DO_tristate_oe[31]__0_i_2_n_0 ;
  wire EMPTY;
  wire EMPTY_OBUF;
  wire EMPTY_i_1_n_0;
  wire EMPTY_i_2_n_0;
  wire FULL;
  wire FULL_OBUF;
  wire FULL_i_1_n_0;
  wire FULL_i_2_n_0;
  wire FULL_i_3_n_0;
  wire MID;
  wire [31:31]MID1;
  wire MID_OBUF;
  wire MID_i_10_n_0;
  wire MID_i_11_n_0;
  wire MID_i_12_n_0;
  wire MID_i_14_n_0;
  wire MID_i_15_n_0;
  wire MID_i_16_n_0;
  wire MID_i_17_n_0;
  wire MID_i_18_n_0;
  wire MID_i_1_n_0;
  wire MID_i_21_n_0;
  wire MID_i_22_n_0;
  wire MID_i_23_n_0;
  wire MID_i_25_n_0;
  wire MID_i_26_n_0;
  wire MID_i_27_n_0;
  wire MID_i_28_n_0;
  wire MID_i_2_n_0;
  wire MID_i_30_n_0;
  wire MID_i_31_n_0;
  wire MID_i_32_n_0;
  wire MID_i_33_n_0;
  wire MID_i_35_n_0;
  wire MID_i_36_n_0;
  wire MID_i_37_n_0;
  wire MID_i_38_n_0;
  wire MID_i_3_n_0;
  wire MID_i_40_n_0;
  wire MID_i_41_n_0;
  wire MID_i_42_n_0;
  wire MID_i_43_n_0;
  wire MID_i_44_n_0;
  wire MID_i_45_n_0;
  wire MID_i_46_n_0;
  wire MID_i_47_n_0;
  wire MID_i_48_n_0;
  wire MID_i_49_n_0;
  wire MID_i_4_n_0;
  wire MID_i_50_n_0;
  wire MID_i_51_n_0;
  wire MID_i_52_n_0;
  wire MID_i_53_n_0;
  wire MID_i_54_n_0;
  wire MID_i_55_n_0;
  wire MID_i_56_n_0;
  wire MID_i_57_n_0;
  wire MID_i_58_n_0;
  wire MID_i_5_n_0;
  wire MID_i_8_n_0;
  wire MID_i_9_n_0;
  wire MID_reg_i_13_n_0;
  wire MID_reg_i_13_n_1;
  wire MID_reg_i_13_n_2;
  wire MID_reg_i_13_n_3;
  wire MID_reg_i_19_n_0;
  wire MID_reg_i_19_n_1;
  wire MID_reg_i_19_n_2;
  wire MID_reg_i_19_n_3;
  wire MID_reg_i_24_n_0;
  wire MID_reg_i_24_n_1;
  wire MID_reg_i_24_n_2;
  wire MID_reg_i_24_n_3;
  wire MID_reg_i_29_n_0;
  wire MID_reg_i_29_n_1;
  wire MID_reg_i_29_n_2;
  wire MID_reg_i_29_n_3;
  wire MID_reg_i_34_n_0;
  wire MID_reg_i_34_n_1;
  wire MID_reg_i_34_n_2;
  wire MID_reg_i_34_n_3;
  wire MID_reg_i_39_n_0;
  wire MID_reg_i_39_n_1;
  wire MID_reg_i_39_n_2;
  wire MID_reg_i_39_n_3;
  wire MID_reg_i_6_n_0;
  wire MID_reg_i_6_n_1;
  wire MID_reg_i_6_n_2;
  wire MID_reg_i_6_n_3;
  wire MID_reg_i_7_n_1;
  wire MID_reg_i_7_n_2;
  wire MID_reg_i_7_n_3;
  wire REGS_reg_0_7_0_5_i_1_n_0;
  wire REN;
  wire REN_IBUF;
  wire RST;
  wire RST_IBUF;
  wire [2:0]R_ADR;
  wire R_ADR0;
  wire \R_ADR[0]_i_1_n_0 ;
  wire \R_ADR[1]_i_1_n_0 ;
  wire \R_ADR[2]_i_1_n_0 ;
  wire WEN;
  wire WEN_IBUF;
  wire [2:0]W_ADR;
  wire W_ADR0;
  wire \W_ADR[0]_i_1_n_0 ;
  wire \W_ADR[1]_i_1_n_0 ;
  wire \W_ADR[2]_i_1_n_0 ;
  wire \W_ADR[2]_i_2_n_0 ;
  wire n_0_9;
  wire [3:0]NLW_MID_reg_i_13_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_19_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_24_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_29_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_34_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_39_O_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_6_O_UNCONNECTED;
  wire [3:3]NLW_MID_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_MID_reg_i_7_O_UNCONNECTED;
  wire [1:0]NLW_REGS_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_REGS_reg_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_REGS_reg_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_REGS_reg_0_7_24_29_DOD_UNCONNECTED;
  wire NLW_REGS_reg_0_7_30_31_SPO_UNCONNECTED;
  wire NLW_REGS_reg_0_7_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_REGS_reg_0_7_6_11_DOD_UNCONNECTED;

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
  OBUFT \DO_OBUFT[0]_inst 
       (.I(DO_OBUF[0]),
        .O(DO[0]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[10]_inst 
       (.I(DO_OBUF[10]),
        .O(DO[10]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[11]_inst 
       (.I(DO_OBUF[11]),
        .O(DO[11]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[12]_inst 
       (.I(DO_OBUF[12]),
        .O(DO[12]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[13]_inst 
       (.I(DO_OBUF[13]),
        .O(DO[13]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[14]_inst 
       (.I(DO_OBUF[14]),
        .O(DO[14]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[15]_inst 
       (.I(DO_OBUF[15]),
        .O(DO[15]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[16]_inst 
       (.I(DO_OBUF[16]),
        .O(DO[16]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[17]_inst 
       (.I(DO_OBUF[17]),
        .O(DO[17]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[18]_inst 
       (.I(DO_OBUF[18]),
        .O(DO[18]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[19]_inst 
       (.I(DO_OBUF[19]),
        .O(DO[19]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[1]_inst 
       (.I(DO_OBUF[1]),
        .O(DO[1]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[20]_inst 
       (.I(DO_OBUF[20]),
        .O(DO[20]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[21]_inst 
       (.I(DO_OBUF[21]),
        .O(DO[21]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[22]_inst 
       (.I(DO_OBUF[22]),
        .O(DO[22]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[23]_inst 
       (.I(DO_OBUF[23]),
        .O(DO[23]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[24]_inst 
       (.I(DO_OBUF[24]),
        .O(DO[24]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[25]_inst 
       (.I(DO_OBUF[25]),
        .O(DO[25]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[26]_inst 
       (.I(DO_OBUF[26]),
        .O(DO[26]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[27]_inst 
       (.I(DO_OBUF[27]),
        .O(DO[27]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[28]_inst 
       (.I(DO_OBUF[28]),
        .O(DO[28]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[29]_inst 
       (.I(DO_OBUF[29]),
        .O(DO[29]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[2]_inst 
       (.I(DO_OBUF[2]),
        .O(DO[2]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[30]_inst 
       (.I(DO_OBUF[30]),
        .O(DO[30]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[31]_inst 
       (.I(DO_OBUF[31]),
        .O(DO[31]),
        .T(\DO_TRI[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_OBUFT[31]_inst_i_1 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(REN_IBUF),
        .Q(\DO_TRI[0] ),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  OBUFT \DO_OBUFT[3]_inst 
       (.I(DO_OBUF[3]),
        .O(DO[3]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[4]_inst 
       (.I(DO_OBUF[4]),
        .O(DO[4]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[5]_inst 
       (.I(DO_OBUF[5]),
        .O(DO[5]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[6]_inst 
       (.I(DO_OBUF[6]),
        .O(DO[6]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[7]_inst 
       (.I(DO_OBUF[7]),
        .O(DO[7]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[8]_inst 
       (.I(DO_OBUF[8]),
        .O(DO[8]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[9]_inst 
       (.I(DO_OBUF[9]),
        .O(DO[9]),
        .T(\DO_TRI[0] ));
  LUT3 #(
    .INIT(8'h04)) 
    \DO_tristate_oe[31]__0_i_1 
       (.I0(WEN_IBUF),
        .I1(EMPTY_OBUF),
        .I2(REN_IBUF),
        .O(\DO_tristate_oe[31]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \DO_tristate_oe[31]__0_i_2 
       (.I0(WEN_IBUF),
        .I1(FULL_OBUF),
        .I2(EMPTY_OBUF),
        .I3(REN_IBUF),
        .O(\DO_tristate_oe[31]__0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[0]),
        .Q(DO_OBUF[0]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[10]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[10]),
        .Q(DO_OBUF[10]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[11]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[11]),
        .Q(DO_OBUF[11]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[12]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[12]),
        .Q(DO_OBUF[12]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[13]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[13]),
        .Q(DO_OBUF[13]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[14]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[14]),
        .Q(DO_OBUF[14]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[15]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[15]),
        .Q(DO_OBUF[15]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[16]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[16]),
        .Q(DO_OBUF[16]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[17]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[17]),
        .Q(DO_OBUF[17]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[18]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[18]),
        .Q(DO_OBUF[18]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[19]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[19]),
        .Q(DO_OBUF[19]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[1]),
        .Q(DO_OBUF[1]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[20]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[20]),
        .Q(DO_OBUF[20]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[21]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[21]),
        .Q(DO_OBUF[21]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[22]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[22]),
        .Q(DO_OBUF[22]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[23]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[23]),
        .Q(DO_OBUF[23]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[24]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[24]),
        .Q(DO_OBUF[24]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[25]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[25]),
        .Q(DO_OBUF[25]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[26]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[26]),
        .Q(DO_OBUF[26]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[27]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[27]),
        .Q(DO_OBUF[27]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[28]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[28]),
        .Q(DO_OBUF[28]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[29]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[29]),
        .Q(DO_OBUF[29]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[2]),
        .Q(DO_OBUF[2]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[30]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[30]),
        .Q(DO_OBUF[30]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[31]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[31]),
        .Q(DO_OBUF[31]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[3]),
        .Q(DO_OBUF[3]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[4]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[4]),
        .Q(DO_OBUF[4]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[5]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[5]),
        .Q(DO_OBUF[5]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[6]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[6]),
        .Q(DO_OBUF[6]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[7]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[7]),
        .Q(DO_OBUF[7]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[8]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[8]),
        .Q(DO_OBUF[8]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[9]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(\DO_tristate_oe[31]__0_i_2_n_0 ),
        .D(DO_reg0[9]),
        .Q(DO_OBUF[9]),
        .R(\DO_tristate_oe[31]__0_i_1_n_0 ));
  OBUF EMPTY_OBUF_inst
       (.I(EMPTY_OBUF),
        .O(EMPTY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF0F1F0F)) 
    EMPTY_i_1
       (.I0(EMPTY_i_2_n_0),
        .I1(REN_IBUF),
        .I2(RST_IBUF),
        .I3(WEN_IBUF),
        .I4(EMPTY_OBUF),
        .O(EMPTY_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    EMPTY_i_2
       (.I0(R_ADR[2]),
        .I1(W_ADR[2]),
        .I2(W_ADR[1]),
        .I3(R_ADR[1]),
        .I4(R_ADR[0]),
        .I5(W_ADR[0]),
        .O(EMPTY_i_2_n_0));
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
  LUT6 #(
    .INIT(64'hFF4F444400000000)) 
    FULL_i_1
       (.I0(FULL_i_2_n_0),
        .I1(FULL_i_3_n_0),
        .I2(WEN_IBUF),
        .I3(REN_IBUF),
        .I4(FULL_OBUF),
        .I5(RST_IBUF),
        .O(FULL_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF7FBFFFBFFFFF7)) 
    FULL_i_2
       (.I0(R_ADR[0]),
        .I1(REN_IBUF),
        .I2(WEN_IBUF),
        .I3(W_ADR[0]),
        .I4(W_ADR[1]),
        .I5(R_ADR[1]),
        .O(FULL_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6A95)) 
    FULL_i_3
       (.I0(R_ADR[2]),
        .I1(W_ADR[0]),
        .I2(W_ADR[1]),
        .I3(W_ADR[2]),
        .O(FULL_i_3_n_0));
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
  LUT4 #(
    .INIT(16'h6333)) 
    MID_i_10
       (.I0(REN_IBUF),
        .I1(R_ADR[2]),
        .I2(R_ADR[1]),
        .I3(R_ADR[0]),
        .O(MID_i_10_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    MID_i_11
       (.I0(REN_IBUF),
        .I1(R_ADR[0]),
        .I2(R_ADR[1]),
        .I3(R_ADR[2]),
        .O(MID_i_11_n_0));
  LUT6 #(
    .INIT(64'h6206FD0F202240D4)) 
    MID_i_12
       (.I0(R_ADR[0]),
        .I1(REN_IBUF),
        .I2(W_ADR[0]),
        .I3(WEN_IBUF),
        .I4(R_ADR[1]),
        .I5(W_ADR[1]),
        .O(MID_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_14
       (.I0(MID_i_4_n_0),
        .O(MID_i_14_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_15
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_15_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_16
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_16_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_17
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_17_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_18
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_18_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    MID_i_2
       (.I0(MID_i_4_n_0),
        .I1(MID_i_5_n_0),
        .I2(FULL_OBUF),
        .O(MID_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MID_i_20
       (.I0(MID_i_5_n_0),
        .O(MID1));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_21
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_21_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_22
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_22_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_23
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_23_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_25
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_25_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_26
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_26_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_27
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_27_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_28
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_28_n_0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    MID_i_3
       (.I0(MID_reg_i_6_n_0),
        .I1(MID_i_5_n_0),
        .I2(MID_reg_i_7_n_1),
        .I3(FULL_OBUF),
        .O(MID_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_30
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_30_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_31
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_31_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_32
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_32_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_33
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_33_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_35
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_35_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_36
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_36_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_37
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_37_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_38
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_38_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_4
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_4_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_40
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_40_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_41
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_41_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_42
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_42_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_43
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_43_n_0));
  LUT6 #(
    .INIT(64'h9699999999999999)) 
    MID_i_44
       (.I0(MID_i_56_n_0),
        .I1(MID_i_11_n_0),
        .I2(WEN_IBUF),
        .I3(W_ADR[0]),
        .I4(W_ADR[1]),
        .I5(W_ADR[2]),
        .O(MID_i_44_n_0));
  LUT6 #(
    .INIT(64'h6FF6F69FF96F6FF6)) 
    MID_i_45
       (.I0(W_ADR[1]),
        .I1(R_ADR[1]),
        .I2(WEN_IBUF),
        .I3(W_ADR[0]),
        .I4(REN_IBUF),
        .I5(R_ADR[0]),
        .O(MID_i_45_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_46
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_46_n_0));
  LUT6 #(
    .INIT(64'h00800000FAFEA0E8)) 
    MID_i_47
       (.I0(MID_i_8_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_47_n_0));
  LUT4 #(
    .INIT(16'h4228)) 
    MID_i_48
       (.I0(MID_i_57_n_0),
        .I1(MID_i_8_n_0),
        .I2(MID_i_58_n_0),
        .I3(MID_i_10_n_0),
        .O(MID_i_48_n_0));
  LUT6 #(
    .INIT(64'h9429024002409429)) 
    MID_i_49
       (.I0(R_ADR[0]),
        .I1(REN_IBUF),
        .I2(W_ADR[0]),
        .I3(WEN_IBUF),
        .I4(R_ADR[1]),
        .I5(W_ADR[1]),
        .O(MID_i_49_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_5
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_5_n_0));
  LUT6 #(
    .INIT(64'h9429024002409429)) 
    MID_i_50
       (.I0(R_ADR[0]),
        .I1(REN_IBUF),
        .I2(W_ADR[0]),
        .I3(WEN_IBUF),
        .I4(R_ADR[1]),
        .I5(W_ADR[1]),
        .O(MID_i_50_n_0));
  LUT4 #(
    .INIT(16'h8114)) 
    MID_i_51
       (.I0(MID_i_57_n_0),
        .I1(MID_i_58_n_0),
        .I2(MID_i_10_n_0),
        .I3(MID_i_12_n_0),
        .O(MID_i_51_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_52
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_52_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_53
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_53_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF05015F17)) 
    MID_i_54
       (.I0(MID_i_12_n_0),
        .I1(MID_i_9_n_0),
        .I2(W_ADR[2]),
        .I3(WEN_IBUF),
        .I4(MID_i_10_n_0),
        .I5(MID_i_11_n_0),
        .O(MID_i_54_n_0));
  LUT4 #(
    .INIT(16'h2881)) 
    MID_i_55
       (.I0(MID_i_57_n_0),
        .I1(MID_i_58_n_0),
        .I2(MID_i_10_n_0),
        .I3(MID_i_12_n_0),
        .O(MID_i_55_n_0));
  LUT6 #(
    .INIT(64'hFFAABFEAAA002A80)) 
    MID_i_56
       (.I0(MID_i_8_n_0),
        .I1(W_ADR[0]),
        .I2(W_ADR[1]),
        .I3(W_ADR[2]),
        .I4(WEN_IBUF),
        .I5(MID_i_10_n_0),
        .O(MID_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    MID_i_57
       (.I0(W_ADR[2]),
        .I1(W_ADR[1]),
        .I2(W_ADR[0]),
        .I3(WEN_IBUF),
        .I4(MID_i_11_n_0),
        .O(MID_i_57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9CCC)) 
    MID_i_58
       (.I0(WEN_IBUF),
        .I1(W_ADR[2]),
        .I2(W_ADR[1]),
        .I3(W_ADR[0]),
        .O(MID_i_58_n_0));
  LUT6 #(
    .INIT(64'h90FFB490BDB4FFBD)) 
    MID_i_8
       (.I0(WEN_IBUF),
        .I1(W_ADR[0]),
        .I2(W_ADR[1]),
        .I3(REN_IBUF),
        .I4(R_ADR[0]),
        .I5(R_ADR[1]),
        .O(MID_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    MID_i_9
       (.I0(W_ADR[0]),
        .I1(W_ADR[1]),
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
  CARRY4 MID_reg_i_13
       (.CI(MID_reg_i_24_n_0),
        .CO({MID_reg_i_13_n_0,MID_reg_i_13_n_1,MID_reg_i_13_n_2,MID_reg_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({MID_i_14_n_0,MID_i_14_n_0,MID_i_14_n_0,MID_i_14_n_0}),
        .O(NLW_MID_reg_i_13_O_UNCONNECTED[3:0]),
        .S({MID_i_25_n_0,MID_i_26_n_0,MID_i_27_n_0,MID_i_28_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_19
       (.CI(MID_reg_i_29_n_0),
        .CO({MID_reg_i_19_n_0,MID_reg_i_19_n_1,MID_reg_i_19_n_2,MID_reg_i_19_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MID_reg_i_19_O_UNCONNECTED[3:0]),
        .S({MID_i_30_n_0,MID_i_31_n_0,MID_i_32_n_0,MID_i_33_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_24
       (.CI(MID_reg_i_34_n_0),
        .CO({MID_reg_i_24_n_0,MID_reg_i_24_n_1,MID_reg_i_24_n_2,MID_reg_i_24_n_3}),
        .CYINIT(1'b0),
        .DI({MID_i_14_n_0,MID_i_14_n_0,MID_i_14_n_0,MID_i_14_n_0}),
        .O(NLW_MID_reg_i_24_O_UNCONNECTED[3:0]),
        .S({MID_i_35_n_0,MID_i_36_n_0,MID_i_37_n_0,MID_i_38_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_29
       (.CI(MID_reg_i_39_n_0),
        .CO({MID_reg_i_29_n_0,MID_reg_i_29_n_1,MID_reg_i_29_n_2,MID_reg_i_29_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_MID_reg_i_29_O_UNCONNECTED[3:0]),
        .S({MID_i_40_n_0,MID_i_41_n_0,MID_i_42_n_0,MID_i_43_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_34
       (.CI(1'b0),
        .CO({MID_reg_i_34_n_0,MID_reg_i_34_n_1,MID_reg_i_34_n_2,MID_reg_i_34_n_3}),
        .CYINIT(1'b1),
        .DI({MID_i_14_n_0,MID_i_14_n_0,MID_i_44_n_0,MID_i_45_n_0}),
        .O(NLW_MID_reg_i_34_O_UNCONNECTED[3:0]),
        .S({MID_i_46_n_0,MID_i_47_n_0,MID_i_48_n_0,MID_i_49_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_39
       (.CI(1'b0),
        .CO({MID_reg_i_39_n_0,MID_reg_i_39_n_1,MID_reg_i_39_n_2,MID_reg_i_39_n_3}),
        .CYINIT(MID_i_50_n_0),
        .DI({1'b0,1'b0,1'b0,MID_i_51_n_0}),
        .O(NLW_MID_reg_i_39_O_UNCONNECTED[3:0]),
        .S({MID_i_52_n_0,MID_i_53_n_0,MID_i_54_n_0,MID_i_55_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_6
       (.CI(MID_reg_i_13_n_0),
        .CO({MID_reg_i_6_n_0,MID_reg_i_6_n_1,MID_reg_i_6_n_2,MID_reg_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,MID_i_14_n_0,MID_i_14_n_0,MID_i_14_n_0}),
        .O(NLW_MID_reg_i_6_O_UNCONNECTED[3:0]),
        .S({MID_i_15_n_0,MID_i_16_n_0,MID_i_17_n_0,MID_i_18_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 MID_reg_i_7
       (.CI(MID_reg_i_19_n_0),
        .CO({NLW_MID_reg_i_7_CO_UNCONNECTED[3],MID_reg_i_7_n_1,MID_reg_i_7_n_2,MID_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,MID1,1'b0,1'b0}),
        .O(NLW_MID_reg_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,MID_i_21_n_0,MID_i_22_n_0,MID_i_23_n_0}));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "REGS_reg_0_7_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ REGS_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,R_ADR}),
        .ADDRB({1'b0,1'b0,R_ADR}),
        .ADDRC({1'b0,1'b0,R_ADR}),
        .ADDRD({1'b0,1'b0,W_ADR}),
        .DIA(DI_IBUF[1:0]),
        .DIB(DI_IBUF[3:2]),
        .DIC(DI_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(DO_reg0[1:0]),
        .DOB(DO_reg0[3:2]),
        .DOC(DO_reg0[5:4]),
        .DOD(NLW_REGS_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(REGS_reg_0_7_0_5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    REGS_reg_0_7_0_5_i_1
       (.I0(WEN_IBUF),
        .O(REGS_reg_0_7_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "REGS_reg_0_7_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD6 REGS_reg_0_7_12_17
       (.ADDRA({1'b0,1'b0,R_ADR}),
        .ADDRB({1'b0,1'b0,R_ADR}),
        .ADDRC({1'b0,1'b0,R_ADR}),
        .ADDRD({1'b0,1'b0,W_ADR}),
        .DIA(DI_IBUF[13:12]),
        .DIB(DI_IBUF[15:14]),
        .DIC(DI_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(DO_reg0[13:12]),
        .DOB(DO_reg0[15:14]),
        .DOC(DO_reg0[17:16]),
        .DOD(NLW_REGS_reg_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(REGS_reg_0_7_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "REGS_reg_0_7_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD7 REGS_reg_0_7_18_23
       (.ADDRA({1'b0,1'b0,R_ADR}),
        .ADDRB({1'b0,1'b0,R_ADR}),
        .ADDRC({1'b0,1'b0,R_ADR}),
        .ADDRD({1'b0,1'b0,W_ADR}),
        .DIA(DI_IBUF[19:18]),
        .DIB(DI_IBUF[21:20]),
        .DIC(DI_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(DO_reg0[19:18]),
        .DOB(DO_reg0[21:20]),
        .DOC(DO_reg0[23:22]),
        .DOD(NLW_REGS_reg_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(REGS_reg_0_7_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "REGS_reg_0_7_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD8 REGS_reg_0_7_24_29
       (.ADDRA({1'b0,1'b0,R_ADR}),
        .ADDRB({1'b0,1'b0,R_ADR}),
        .ADDRC({1'b0,1'b0,R_ADR}),
        .ADDRD({1'b0,1'b0,W_ADR}),
        .DIA(DI_IBUF[25:24]),
        .DIB(DI_IBUF[27:26]),
        .DIC(DI_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(DO_reg0[25:24]),
        .DOB(DO_reg0[27:26]),
        .DOC(DO_reg0[29:28]),
        .DOD(NLW_REGS_reg_0_7_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(REGS_reg_0_7_0_5_i_1_n_0));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "REGS_reg_0_7_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_UNIQ_BASE_ REGS_reg_0_7_30_31
       (.A0(W_ADR[0]),
        .A1(W_ADR[1]),
        .A2(W_ADR[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DI_IBUF[30]),
        .DPO(DO_reg0[30]),
        .DPRA0(R_ADR[0]),
        .DPRA1(R_ADR[1]),
        .DPRA2(R_ADR[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_REGS_reg_0_7_30_31_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(REGS_reg_0_7_0_5_i_1_n_0));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "REGS_reg_0_7_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD9 REGS_reg_0_7_30_31__0
       (.A0(W_ADR[0]),
        .A1(W_ADR[1]),
        .A2(W_ADR[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(DI_IBUF[31]),
        .DPO(DO_reg0[31]),
        .DPRA0(R_ADR[0]),
        .DPRA1(R_ADR[1]),
        .DPRA2(R_ADR[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_REGS_reg_0_7_30_31__0_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(REGS_reg_0_7_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "REGS_reg_0_7_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD10 REGS_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,R_ADR}),
        .ADDRB({1'b0,1'b0,R_ADR}),
        .ADDRC({1'b0,1'b0,R_ADR}),
        .ADDRD({1'b0,1'b0,W_ADR}),
        .DIA(DI_IBUF[7:6]),
        .DIB(DI_IBUF[9:8]),
        .DIC(DI_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(DO_reg0[7:6]),
        .DOB(DO_reg0[9:8]),
        .DOC(DO_reg0[11:10]),
        .DOD(NLW_REGS_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(REGS_reg_0_7_0_5_i_1_n_0));
  IBUF REN_IBUF_inst
       (.I(REN),
        .O(REN_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC8FB3704)) 
    \R_ADR[0]_i_1 
       (.I0(REN_IBUF),
        .I1(WEN_IBUF),
        .I2(EMPTY_OBUF),
        .I3(FULL_OBUF),
        .I4(R_ADR[0]),
        .O(\R_ADR[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF77F57700880A88)) 
    \R_ADR[1]_i_1 
       (.I0(R_ADR[0]),
        .I1(FULL_OBUF),
        .I2(EMPTY_OBUF),
        .I3(WEN_IBUF),
        .I4(REN_IBUF),
        .I5(R_ADR[1]),
        .O(\R_ADR[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \R_ADR[2]_i_1 
       (.I0(R_ADR[0]),
        .I1(R_ADR[1]),
        .I2(R_ADR0),
        .I3(R_ADR[2]),
        .O(\R_ADR[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0A3A)) 
    \R_ADR[2]_i_2 
       (.I0(FULL_OBUF),
        .I1(EMPTY_OBUF),
        .I2(WEN_IBUF),
        .I3(REN_IBUF),
        .O(R_ADR0));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\R_ADR[0]_i_1_n_0 ),
        .Q(R_ADR[0]),
        .R(\W_ADR[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\R_ADR[1]_i_1_n_0 ),
        .Q(R_ADR[1]),
        .R(\W_ADR[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R_ADR_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\R_ADR[2]_i_1_n_0 ),
        .Q(R_ADR[2]),
        .R(\W_ADR[2]_i_1_n_0 ));
  IBUF WEN_IBUF_inst
       (.I(WEN),
        .O(WEN_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAEB1514)) 
    \W_ADR[0]_i_1 
       (.I0(WEN_IBUF),
        .I1(FULL_OBUF),
        .I2(REN_IBUF),
        .I3(EMPTY_OBUF),
        .I4(W_ADR[0]),
        .O(\W_ADR[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF55700000AA8)) 
    \W_ADR[1]_i_1 
       (.I0(W_ADR[0]),
        .I1(EMPTY_OBUF),
        .I2(REN_IBUF),
        .I3(FULL_OBUF),
        .I4(WEN_IBUF),
        .I5(W_ADR[1]),
        .O(\W_ADR[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \W_ADR[2]_i_1 
       (.I0(RST_IBUF),
        .O(\W_ADR[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \W_ADR[2]_i_2 
       (.I0(W_ADR[1]),
        .I1(W_ADR[0]),
        .I2(W_ADR0),
        .I3(W_ADR[2]),
        .O(\W_ADR[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h003E)) 
    \W_ADR[2]_i_3 
       (.I0(EMPTY_OBUF),
        .I1(REN_IBUF),
        .I2(FULL_OBUF),
        .I3(WEN_IBUF),
        .O(W_ADR0));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[0]_i_1_n_0 ),
        .Q(W_ADR[0]),
        .R(\W_ADR[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[1]_i_1_n_0 ),
        .Q(W_ADR[1]),
        .R(\W_ADR[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_ADR_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\W_ADR[2]_i_2_n_0 ),
        .Q(W_ADR[2]),
        .R(\W_ADR[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_9
       (.I0(REN_IBUF),
        .O(n_0_9));
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
