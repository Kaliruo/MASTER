// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jan 27 12:00:55 2023
// Host        : pc-u3-305-08 running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/lnc3770a/Cours/MASTER/Simul_archi_mat/zybo-tp1/zybo-tp1.sim/sim_1/synth/timing/xsim/test_pulse_gen_time_synth.v
// Design      : pulse_gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* MAX_CPT = "8" *) 
(* NotValidForBitStream *)
module pulse_gen
   (RST,
    MCLK,
    P);
  input RST;
  input MCLK;
  output P;

  wire MCLK;
  wire MCLK_IBUF;
  wire MCLK_IBUF_BUFG;
  wire P;
  wire P_OBUF;
  wire P_i_2_n_0;
  wire RST;
  wire RST_IBUF;
  wire [3:0]cpt0;
  wire p_1_in;
  wire \ppulse.cpt[2]_i_1_n_0 ;
  wire \ppulse.cpt[3]_i_1_n_0 ;
  wire \ppulse.cpt_reg_n_0_[0] ;
  wire \ppulse.cpt_reg_n_0_[1] ;
  wire \ppulse.cpt_reg_n_0_[2] ;
  wire \ppulse.cpt_reg_n_0_[3] ;

initial begin
 $sdf_annotate("test_pulse_gen_time_synth.sdf",,,,"tool_control");
end
  BUFG MCLK_IBUF_BUFG_inst
       (.I(MCLK_IBUF),
        .O(MCLK_IBUF_BUFG));
  IBUF MCLK_IBUF_inst
       (.I(MCLK),
        .O(MCLK_IBUF));
  OBUF P_OBUF_inst
       (.I(P_OBUF),
        .O(P));
  LUT1 #(
    .INIT(2'h1)) 
    P_i_1
       (.I0(RST_IBUF),
        .O(p_1_in));
  LUT4 #(
    .INIT(16'h0001)) 
    P_i_2
       (.I0(\ppulse.cpt_reg_n_0_[3] ),
        .I1(\ppulse.cpt_reg_n_0_[0] ),
        .I2(\ppulse.cpt_reg_n_0_[1] ),
        .I3(\ppulse.cpt_reg_n_0_[2] ),
        .O(P_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    P_reg
       (.C(MCLK_IBUF_BUFG),
        .CE(P_i_2_n_0),
        .D(P_i_2_n_0),
        .Q(P_OBUF),
        .R(p_1_in));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ppulse.cpt[0]_i_1 
       (.I0(\ppulse.cpt_reg_n_0_[0] ),
        .I1(RST_IBUF),
        .O(cpt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \ppulse.cpt[1]_i_1 
       (.I0(\ppulse.cpt_reg_n_0_[0] ),
        .I1(\ppulse.cpt_reg_n_0_[1] ),
        .I2(RST_IBUF),
        .O(cpt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \ppulse.cpt[2]_i_1 
       (.I0(\ppulse.cpt_reg_n_0_[1] ),
        .I1(\ppulse.cpt_reg_n_0_[0] ),
        .I2(\ppulse.cpt_reg_n_0_[2] ),
        .I3(RST_IBUF),
        .O(\ppulse.cpt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \ppulse.cpt[3]_i_1 
       (.I0(\ppulse.cpt_reg_n_0_[3] ),
        .I1(\ppulse.cpt_reg_n_0_[2] ),
        .I2(RST_IBUF),
        .I3(\ppulse.cpt_reg_n_0_[1] ),
        .I4(\ppulse.cpt_reg_n_0_[0] ),
        .O(\ppulse.cpt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \ppulse.cpt[3]_i_2 
       (.I0(\ppulse.cpt_reg_n_0_[0] ),
        .I1(\ppulse.cpt_reg_n_0_[1] ),
        .I2(\ppulse.cpt_reg_n_0_[2] ),
        .I3(\ppulse.cpt_reg_n_0_[3] ),
        .I4(RST_IBUF),
        .O(cpt0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \ppulse.cpt_reg[0] 
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(cpt0[0]),
        .Q(\ppulse.cpt_reg_n_0_[0] ),
        .R(\ppulse.cpt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ppulse.cpt_reg[1] 
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(cpt0[1]),
        .Q(\ppulse.cpt_reg_n_0_[1] ),
        .R(\ppulse.cpt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ppulse.cpt_reg[2] 
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\ppulse.cpt[2]_i_1_n_0 ),
        .Q(\ppulse.cpt_reg_n_0_[2] ),
        .R(\ppulse.cpt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ppulse.cpt_reg[3] 
       (.C(MCLK_IBUF_BUFG),
        .CE(1'b1),
        .D(cpt0[3]),
        .Q(\ppulse.cpt_reg_n_0_[3] ),
        .R(\ppulse.cpt[3]_i_1_n_0 ));
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
