/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Fri May 13 11:53:45 2022
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_booth4_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_booth4_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module booth4 ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_cal_finish, 
        io_dout, clk, resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld, io_cal_finish;
  wire   n_Logic0_, flag_bits_0_, PositiveB_9, cal_en, cal_en_regNext, N42,
         N43, net451, net457, C12_DATA2_0, C12_DATA2_1, C12_DATA2_2,
         C12_DATA2_3, C12_DATA2_4, C12_DATA2_5, C12_DATA2_6, C12_DATA2_7,
         C12_DATA2_8, n22, n25, DP_OP_31J1_122_7992_n72,
         DP_OP_31J1_122_7992_n71, DP_OP_31J1_122_7992_n70,
         DP_OP_31J1_122_7992_n69, DP_OP_31J1_122_7992_n68,
         DP_OP_31J1_122_7992_n67, DP_OP_31J1_122_7992_n64,
         DP_OP_31J1_122_7992_n63, DP_OP_31J1_122_7992_n62,
         DP_OP_31J1_122_7992_n61, DP_OP_31J1_122_7992_n60,
         DP_OP_31J1_122_7992_n59, DP_OP_31J1_122_7992_n58,
         DP_OP_31J1_122_7992_n57, DP_OP_31J1_122_7992_n56,
         DP_OP_31J1_122_7992_n50, DP_OP_31J1_122_7992_n49,
         DP_OP_31J1_122_7992_n48, DP_OP_31J1_122_7992_n47,
         DP_OP_31J1_122_7992_n46, DP_OP_31J1_122_7992_n45,
         DP_OP_31J1_122_7992_n43, DP_OP_31J1_122_7992_n42,
         DP_OP_31J1_122_7992_n41, DP_OP_31J1_122_7992_n40,
         DP_OP_31J1_122_7992_n39, DP_OP_31J1_122_7992_n38,
         DP_OP_31J1_122_7992_n37, DP_OP_31J1_122_7992_n10,
         DP_OP_31J1_122_7992_n9, DP_OP_31J1_122_7992_n8,
         DP_OP_31J1_122_7992_n7, DP_OP_31J1_122_7992_n6,
         DP_OP_31J1_122_7992_n5, DP_OP_31J1_122_7992_n4,
         DP_OP_31J1_122_7992_n3, DP_OP_31J1_122_7992_n2, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103;
  wire   [6:0] PositiveB;
  wire   [1:0] cal_cnt;

  SNPS_CLOCK_GATE_HIGH_booth4_0 clk_gate_Breg_reg ( .CLK(clk), .EN(n27), 
        .ENCLK(net451), .TE(n_Logic0_) );
  SNPS_CLOCK_GATE_HIGH_booth4_1 clk_gate_shiftReg_reg ( .CLK(clk), .EN(n25), 
        .ENCLK(net457), .TE(n_Logic0_) );
  DFCNQD1BWP7T35P140 Breg_reg_7_ ( .D(io_dinB[7]), .CP(net451), .CDN(n86), .Q(
        PositiveB_9) );
  DFCNQD1BWP7T35P140 Breg_reg_6_ ( .D(io_dinB[6]), .CP(net451), .CDN(n86), .Q(
        PositiveB[6]) );
  DFCNQD1BWP7T35P140 Breg_reg_5_ ( .D(io_dinB[5]), .CP(net451), .CDN(n86), .Q(
        PositiveB[5]) );
  DFCNQD1BWP7T35P140 Breg_reg_4_ ( .D(io_dinB[4]), .CP(net451), .CDN(n86), .Q(
        PositiveB[4]) );
  DFCNQD1BWP7T35P140 Breg_reg_3_ ( .D(io_dinB[3]), .CP(net451), .CDN(n86), .Q(
        PositiveB[3]) );
  DFCNQD1BWP7T35P140 Breg_reg_2_ ( .D(io_dinB[2]), .CP(net451), .CDN(n86), .Q(
        PositiveB[2]) );
  DFCNQD1BWP7T35P140 Breg_reg_1_ ( .D(io_dinB[1]), .CP(net451), .CDN(n86), .Q(
        PositiveB[1]) );
  DFCNQD1BWP7T35P140 Breg_reg_0_ ( .D(io_dinB[0]), .CP(net451), .CDN(n86), .Q(
        PositiveB[0]) );
  DFCNQD1BWP7T35P140 cal_en_reg ( .D(n22), .CP(clk), .CDN(n86), .Q(cal_en) );
  DFCNQD1BWP7T35P140 shiftReg_reg_0_ ( .D(n103), .CP(net457), .CDN(n86), .Q(
        flag_bits_0_) );
  DFCNQD1BWP7T35P140 shiftReg_reg_7_ ( .D(n97), .CP(net457), .CDN(n29), .Q(
        io_dout[6]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_5_ ( .D(n96), .CP(net457), .CDN(n29), .Q(
        io_dout[4]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_3_ ( .D(n95), .CP(net457), .CDN(n29), .Q(
        io_dout[2]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_1_ ( .D(n94), .CP(net457), .CDN(n29), .Q(
        io_dout[0]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_8_ ( .D(n90), .CP(net457), .CDN(n29), .Q(
        io_dout[7]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_6_ ( .D(n89), .CP(net457), .CDN(n29), .Q(
        io_dout[5]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_4_ ( .D(n88), .CP(net457), .CDN(n86), .Q(
        io_dout[3]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_2_ ( .D(n87), .CP(net457), .CDN(n86), .Q(
        io_dout[1]) );
  DFCNQD1BWP7T35P140 cal_cnt_reg_0_ ( .D(N42), .CP(net457), .CDN(n29), .Q(
        cal_cnt[0]) );
  DFCNQD1BWP7T35P140 cal_cnt_reg_1_ ( .D(N43), .CP(net457), .CDN(n29), .Q(
        cal_cnt[1]) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U10 ( .A(io_dout[9]), .B(
        DP_OP_31J1_122_7992_n10), .CI(DP_OP_31J1_122_7992_n57), .CO(
        DP_OP_31J1_122_7992_n9), .S(C12_DATA2_1) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U9 ( .A(io_dout[10]), .B(
        DP_OP_31J1_122_7992_n58), .CI(DP_OP_31J1_122_7992_n9), .CO(
        DP_OP_31J1_122_7992_n8), .S(C12_DATA2_2) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U8 ( .A(io_dout[11]), .B(
        DP_OP_31J1_122_7992_n59), .CI(DP_OP_31J1_122_7992_n8), .CO(
        DP_OP_31J1_122_7992_n7), .S(C12_DATA2_3) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U7 ( .A(io_dout[12]), .B(
        DP_OP_31J1_122_7992_n60), .CI(DP_OP_31J1_122_7992_n7), .CO(
        DP_OP_31J1_122_7992_n6), .S(C12_DATA2_4) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U6 ( .A(io_dout[13]), .B(
        DP_OP_31J1_122_7992_n61), .CI(DP_OP_31J1_122_7992_n6), .CO(
        DP_OP_31J1_122_7992_n5), .S(C12_DATA2_5) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U5 ( .A(io_dout[14]), .B(
        DP_OP_31J1_122_7992_n62), .CI(DP_OP_31J1_122_7992_n5), .CO(
        DP_OP_31J1_122_7992_n4), .S(C12_DATA2_6) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U4 ( .A(io_dout[15]), .B(
        DP_OP_31J1_122_7992_n63), .CI(DP_OP_31J1_122_7992_n4), .CO(
        DP_OP_31J1_122_7992_n3), .S(C12_DATA2_7) );
  FA1D1BWP7T35P140 DP_OP_31J1_122_7992_U3 ( .A(io_dout[15]), .B(
        DP_OP_31J1_122_7992_n64), .CI(DP_OP_31J1_122_7992_n3), .CO(
        DP_OP_31J1_122_7992_n2), .S(C12_DATA2_8) );
  HA1D1BWP7T35P140 DP_OP_31J1_122_7992_U56 ( .A(DP_OP_31J1_122_7992_n50), .B(
        DP_OP_31J1_122_7992_n43), .CO(DP_OP_31J1_122_7992_n42), .S(
        DP_OP_31J1_122_7992_n67) );
  HA1D1BWP7T35P140 DP_OP_31J1_122_7992_U55 ( .A(DP_OP_31J1_122_7992_n49), .B(
        DP_OP_31J1_122_7992_n42), .CO(DP_OP_31J1_122_7992_n41), .S(
        DP_OP_31J1_122_7992_n68) );
  HA1D1BWP7T35P140 DP_OP_31J1_122_7992_U54 ( .A(DP_OP_31J1_122_7992_n48), .B(
        DP_OP_31J1_122_7992_n41), .CO(DP_OP_31J1_122_7992_n40), .S(
        DP_OP_31J1_122_7992_n69) );
  HA1D1BWP7T35P140 DP_OP_31J1_122_7992_U53 ( .A(DP_OP_31J1_122_7992_n47), .B(
        DP_OP_31J1_122_7992_n40), .CO(DP_OP_31J1_122_7992_n39), .S(
        DP_OP_31J1_122_7992_n70) );
  HA1D1BWP7T35P140 DP_OP_31J1_122_7992_U52 ( .A(DP_OP_31J1_122_7992_n46), .B(
        DP_OP_31J1_122_7992_n39), .CO(DP_OP_31J1_122_7992_n38), .S(
        DP_OP_31J1_122_7992_n71) );
  HA1D1BWP7T35P140 DP_OP_31J1_122_7992_U51 ( .A(DP_OP_31J1_122_7992_n45), .B(
        DP_OP_31J1_122_7992_n38), .CO(DP_OP_31J1_122_7992_n37), .S(
        DP_OP_31J1_122_7992_n72) );
  HA1D1BWP7T35P140 DP_OP_31J1_122_7992_U11 ( .A(io_dout[8]), .B(
        DP_OP_31J1_122_7992_n56), .CO(DP_OP_31J1_122_7992_n10), .S(C12_DATA2_0) );
  DFQD1BWP7T35P140 cal_en_regNext_reg ( .D(cal_en), .CP(clk), .Q(
        cal_en_regNext) );
  DFCNQD2BWP7T35P140 shiftReg_reg_16_ ( .D(n102), .CP(net457), .CDN(n29), .Q(
        io_dout[15]) );
  DFCNQD2BWP7T35P140 shiftReg_reg_10_ ( .D(n91), .CP(net457), .CDN(n29), .Q(
        io_dout[9]) );
  DFCNQD2BWP7T35P140 shiftReg_reg_12_ ( .D(n92), .CP(net457), .CDN(n29), .Q(
        io_dout[11]) );
  DFCNQD2BWP7T35P140 shiftReg_reg_14_ ( .D(n93), .CP(net457), .CDN(n29), .Q(
        io_dout[13]) );
  DFCNQD2BWP7T35P140 shiftReg_reg_11_ ( .D(n99), .CP(net457), .CDN(n86), .Q(
        io_dout[10]) );
  DFCNQD2BWP7T35P140 shiftReg_reg_13_ ( .D(n100), .CP(net457), .CDN(n86), .Q(
        io_dout[12]) );
  DFCNQD2BWP7T35P140 shiftReg_reg_15_ ( .D(n101), .CP(net457), .CDN(n86), .Q(
        io_dout[14]) );
  DFCNQD2BWP7T35P140 shiftReg_reg_9_ ( .D(n98), .CP(net457), .CDN(n29), .Q(
        io_dout[8]) );
  INVD1BWP7T35P140 U52 ( .I(io_din_vld), .ZN(n26) );
  INVD1BWP7T35P140 U53 ( .I(n26), .ZN(n27) );
  INVD1BWP7T35P140 U54 ( .I(resetn), .ZN(n28) );
  INVD1BWP7T35P140 U55 ( .I(n28), .ZN(n29) );
  INVD1BWP7T35P140 U56 ( .I(n27), .ZN(n30) );
  AN3D2BWP7T35P140 U57 ( .A1(cal_cnt[0]), .A2(cal_en), .A3(cal_cnt[1]), .Z(
        io_cal_finish) );
  AN2D2BWP7T35P140 U58 ( .A1(cal_en_regNext), .A2(n85), .Z(io_dout_vld) );
  AOI21D1BWP7T35P140 U59 ( .A1(PositiveB[0]), .A2(n75), .B(n74), .ZN(n76) );
  NR2D1BWP7T35P140 U60 ( .A1(n27), .A2(n57), .ZN(n64) );
  TIELBWP7T35P140 U61 ( .ZN(n_Logic0_) );
  AOI21D1BWP7T35P140 U62 ( .A1(DP_OP_31J1_122_7992_n67), .A2(n75), .B(n68), 
        .ZN(n69) );
  DEL025D1BWP7T35P140 U63 ( .I(n29), .Z(n86) );
  INVD1BWP7T35P140 U64 ( .I(cal_en), .ZN(n85) );
  NR2D1BWP7T35P140 U65 ( .A1(cal_cnt[0]), .A2(cal_cnt[1]), .ZN(n31) );
  AOI211D0BWP7T35P140 U66 ( .A1(cal_cnt[0]), .A2(cal_cnt[1]), .B(n85), .C(n31), 
        .ZN(N43) );
  NR2D1BWP7T35P140 U67 ( .A1(cal_cnt[0]), .A2(n85), .ZN(N42) );
  INVD1BWP7T35P140 U68 ( .I(N42), .ZN(n32) );
  OAI211D0BWP7T35P140 U69 ( .A1(cal_cnt[1]), .A2(n85), .B(n30), .C(n32), .ZN(
        n22) );
  INVD1BWP7T35P140 U70 ( .I(io_dout[1]), .ZN(n54) );
  NR2D1BWP7T35P140 U71 ( .A1(n27), .A2(n54), .ZN(n103) );
  XNR2D0BWP7T35P140 U72 ( .A1(PositiveB_9), .A2(DP_OP_31J1_122_7992_n37), .ZN(
        n49) );
  NR2D1BWP7T35P140 U73 ( .A1(io_dout[0]), .A2(flag_bits_0_), .ZN(n55) );
  INVD1BWP7T35P140 U74 ( .I(n55), .ZN(n33) );
  NR2D1BWP7T35P140 U75 ( .A1(n33), .A2(n54), .ZN(n75) );
  ND2D1BWP7T35P140 U76 ( .A1(n49), .A2(n75), .ZN(n35) );
  NR2D1BWP7T35P140 U77 ( .A1(DP_OP_31J1_122_7992_n37), .A2(PositiveB_9), .ZN(
        n58) );
  AN2D0BWP7T35P140 U78 ( .A1(io_dout[0]), .A2(flag_bits_0_), .Z(n56) );
  NR3D0BWP7T35P140 U79 ( .A1(n56), .A2(n55), .A3(n54), .ZN(n71) );
  ND2D1BWP7T35P140 U80 ( .A1(n58), .A2(n71), .ZN(n61) );
  INVD1BWP7T35P140 U81 ( .I(n56), .ZN(n34) );
  NR2D1BWP7T35P140 U82 ( .A1(n34), .A2(io_dout[1]), .ZN(n73) );
  NR3D0BWP7T35P140 U83 ( .A1(n56), .A2(n55), .A3(io_dout[1]), .ZN(n72) );
  AN2D0BWP7T35P140 U84 ( .A1(n72), .A2(PositiveB_9), .Z(n50) );
  AOI21D1BWP7T35P140 U85 ( .A1(PositiveB_9), .A2(n73), .B(n50), .ZN(n59) );
  ND3D1BWP7T35P140 U86 ( .A1(n35), .A2(n61), .A3(n59), .ZN(
        DP_OP_31J1_122_7992_n64) );
  AN2D0BWP7T35P140 U87 ( .A1(n72), .A2(PositiveB[0]), .Z(n36) );
  AO21D1BWP7T35P140 U88 ( .A1(PositiveB[0]), .A2(n71), .B(n36), .Z(
        DP_OP_31J1_122_7992_n56) );
  ND2D1BWP7T35P140 U89 ( .A1(DP_OP_31J1_122_7992_n69), .A2(n71), .ZN(n39) );
  ND2D1BWP7T35P140 U90 ( .A1(DP_OP_31J1_122_7992_n68), .A2(n75), .ZN(n38) );
  AOI22D1BWP7T35P140 U91 ( .A1(n73), .A2(PositiveB[2]), .B1(n72), .B2(
        PositiveB[3]), .ZN(n37) );
  ND3D1BWP7T35P140 U92 ( .A1(n39), .A2(n38), .A3(n37), .ZN(
        DP_OP_31J1_122_7992_n59) );
  ND2D1BWP7T35P140 U93 ( .A1(DP_OP_31J1_122_7992_n70), .A2(n71), .ZN(n42) );
  ND2D1BWP7T35P140 U94 ( .A1(DP_OP_31J1_122_7992_n69), .A2(n75), .ZN(n41) );
  AOI22D1BWP7T35P140 U95 ( .A1(n73), .A2(PositiveB[3]), .B1(n72), .B2(
        PositiveB[4]), .ZN(n40) );
  ND3D1BWP7T35P140 U96 ( .A1(n42), .A2(n41), .A3(n40), .ZN(
        DP_OP_31J1_122_7992_n60) );
  ND2D1BWP7T35P140 U97 ( .A1(DP_OP_31J1_122_7992_n71), .A2(n71), .ZN(n45) );
  ND2D1BWP7T35P140 U98 ( .A1(DP_OP_31J1_122_7992_n70), .A2(n75), .ZN(n44) );
  AOI22D1BWP7T35P140 U99 ( .A1(n73), .A2(PositiveB[4]), .B1(n72), .B2(
        PositiveB[5]), .ZN(n43) );
  ND3D1BWP7T35P140 U100 ( .A1(n45), .A2(n44), .A3(n43), .ZN(
        DP_OP_31J1_122_7992_n61) );
  ND2D1BWP7T35P140 U101 ( .A1(DP_OP_31J1_122_7992_n72), .A2(n71), .ZN(n48) );
  ND2D1BWP7T35P140 U102 ( .A1(DP_OP_31J1_122_7992_n71), .A2(n75), .ZN(n47) );
  AOI22D1BWP7T35P140 U103 ( .A1(n73), .A2(PositiveB[5]), .B1(n72), .B2(
        PositiveB[6]), .ZN(n46) );
  ND3D1BWP7T35P140 U104 ( .A1(n48), .A2(n47), .A3(n46), .ZN(
        DP_OP_31J1_122_7992_n62) );
  ND2D1BWP7T35P140 U105 ( .A1(n49), .A2(n71), .ZN(n53) );
  ND2D1BWP7T35P140 U106 ( .A1(DP_OP_31J1_122_7992_n72), .A2(n75), .ZN(n52) );
  AOI21D1BWP7T35P140 U107 ( .A1(n73), .A2(PositiveB[6]), .B(n50), .ZN(n51) );
  ND3D1BWP7T35P140 U108 ( .A1(n53), .A2(n52), .A3(n51), .ZN(
        DP_OP_31J1_122_7992_n63) );
  INVD1BWP7T35P140 U109 ( .I(PositiveB[0]), .ZN(DP_OP_31J1_122_7992_n43) );
  INVD1BWP7T35P140 U110 ( .I(PositiveB[1]), .ZN(DP_OP_31J1_122_7992_n50) );
  INVD1BWP7T35P140 U111 ( .I(PositiveB[2]), .ZN(DP_OP_31J1_122_7992_n49) );
  INVD1BWP7T35P140 U112 ( .I(PositiveB[3]), .ZN(DP_OP_31J1_122_7992_n48) );
  INVD1BWP7T35P140 U113 ( .I(PositiveB[4]), .ZN(DP_OP_31J1_122_7992_n47) );
  INVD1BWP7T35P140 U114 ( .I(PositiveB[5]), .ZN(DP_OP_31J1_122_7992_n46) );
  INVD1BWP7T35P140 U115 ( .I(PositiveB[6]), .ZN(DP_OP_31J1_122_7992_n45) );
  MUX2D1BWP7T35P140 U116 ( .I0(io_dout[2]), .I1(io_dinA[0]), .S(n27), .Z(n94)
         );
  MUX2D1BWP7T35P140 U117 ( .I0(io_dout[4]), .I1(io_dinA[2]), .S(n27), .Z(n95)
         );
  MUX2D1BWP7T35P140 U118 ( .I0(io_dout[6]), .I1(io_dinA[4]), .S(n27), .Z(n96)
         );
  MUX2D1BWP7T35P140 U119 ( .I0(io_dout[7]), .I1(io_dinA[5]), .S(n27), .Z(n89)
         );
  MUX2D1BWP7T35P140 U120 ( .I0(io_dout[3]), .I1(io_dinA[1]), .S(n27), .Z(n87)
         );
  MUX2D1BWP7T35P140 U121 ( .I0(io_dout[5]), .I1(io_dinA[3]), .S(n27), .Z(n88)
         );
  AOI22D1BWP7T35P140 U122 ( .A1(io_dout[1]), .A2(n56), .B1(n55), .B2(n54), 
        .ZN(n57) );
  INR2D1BWP7T35P140 U123 ( .A1(n57), .B1(n27), .ZN(n82) );
  AO222D1BWP7T35P140 U124 ( .A1(n64), .A2(io_dout[9]), .B1(n82), .B2(
        C12_DATA2_1), .C1(io_dinA[7]), .C2(n27), .Z(n90) );
  AO222D1BWP7T35P140 U125 ( .A1(io_dout[8]), .A2(n64), .B1(n27), .B2(
        io_dinA[6]), .C1(n82), .C2(C12_DATA2_0), .Z(n97) );
  ND2D1BWP7T35P140 U126 ( .A1(n58), .A2(n75), .ZN(n60) );
  ND3D1BWP7T35P140 U127 ( .A1(n61), .A2(n60), .A3(n59), .ZN(n62) );
  XOR2D0BWP7T35P140 U128 ( .A1(io_dout[15]), .A2(n62), .Z(n63) );
  XOR2D0BWP7T35P140 U129 ( .A1(n63), .A2(DP_OP_31J1_122_7992_n2), .Z(n66) );
  INVD1BWP7T35P140 U130 ( .I(n64), .ZN(n84) );
  INVD1BWP7T35P140 U131 ( .I(io_dout[15]), .ZN(n65) );
  NR2D1BWP7T35P140 U132 ( .A1(n84), .A2(n65), .ZN(n67) );
  AO21D1BWP7T35P140 U133 ( .A1(n82), .A2(n66), .B(n67), .Z(n102) );
  AO21D1BWP7T35P140 U134 ( .A1(n82), .A2(C12_DATA2_8), .B(n67), .Z(n101) );
  AO21D1BWP7T35P140 U135 ( .A1(n82), .A2(C12_DATA2_7), .B(n67), .Z(n93) );
  ND2D1BWP7T35P140 U136 ( .A1(DP_OP_31J1_122_7992_n68), .A2(n71), .ZN(n70) );
  AO22D0BWP7T35P140 U137 ( .A1(n73), .A2(PositiveB[1]), .B1(n72), .B2(
        PositiveB[2]), .Z(n68) );
  ND2D1BWP7T35P140 U138 ( .A1(n70), .A2(n69), .ZN(DP_OP_31J1_122_7992_n58) );
  ND2D1BWP7T35P140 U139 ( .A1(DP_OP_31J1_122_7992_n67), .A2(n71), .ZN(n77) );
  AO22D0BWP7T35P140 U140 ( .A1(n73), .A2(PositiveB[0]), .B1(n72), .B2(
        PositiveB[1]), .Z(n74) );
  ND2D1BWP7T35P140 U141 ( .A1(n77), .A2(n76), .ZN(DP_OP_31J1_122_7992_n57) );
  INVD1BWP7T35P140 U142 ( .I(io_dout[14]), .ZN(n78) );
  MOAI22D0BWP7T35P140 U143 ( .A1(n84), .A2(n78), .B1(n82), .B2(C12_DATA2_6), 
        .ZN(n100) );
  INVD1BWP7T35P140 U144 ( .I(io_dout[13]), .ZN(n79) );
  MOAI22D0BWP7T35P140 U145 ( .A1(n84), .A2(n79), .B1(n82), .B2(C12_DATA2_5), 
        .ZN(n92) );
  INVD1BWP7T35P140 U146 ( .I(io_dout[12]), .ZN(n80) );
  MOAI22D0BWP7T35P140 U147 ( .A1(n84), .A2(n80), .B1(n82), .B2(C12_DATA2_4), 
        .ZN(n99) );
  INVD1BWP7T35P140 U148 ( .I(io_dout[11]), .ZN(n81) );
  MOAI22D0BWP7T35P140 U149 ( .A1(n84), .A2(n81), .B1(n82), .B2(C12_DATA2_3), 
        .ZN(n91) );
  INVD1BWP7T35P140 U150 ( .I(io_dout[10]), .ZN(n83) );
  MOAI22D0BWP7T35P140 U151 ( .A1(n84), .A2(n83), .B1(n82), .B2(C12_DATA2_2), 
        .ZN(n98) );
  ND2D1BWP7T35P140 U152 ( .A1(n30), .A2(n85), .ZN(n25) );
endmodule

