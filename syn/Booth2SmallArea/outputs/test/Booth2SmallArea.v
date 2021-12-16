/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Thu Dec 16 23:55:46 2021
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_Booth2SmallArea_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_Booth2SmallArea_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module Booth2SmallArea ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_dout, 
        clk, resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   n_zz_shiftReg_0_, cal_en, cal_en_regNext, N19, N20, N21, N32, N33,
         N34, N35, N36, N37, N38, N39, net229, net230, net235, n14, n15, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107;
  wire   [2:0] cal_cnt;

  SNPS_CLOCK_GATE_HIGH_Booth2SmallArea_0 clk_gate_cal_cnt_reg ( .CLK(clk), 
        .EN(n17), .ENCLK(net229), .TE(net230) );
  SNPS_CLOCK_GATE_HIGH_Booth2SmallArea_1 clk_gate_shiftReg_reg ( .CLK(clk), 
        .EN(N39), .ENCLK(net235), .TE(net230) );
  DFCNQD1BWP7T35P140 shiftReg_reg_16_ ( .D(n14), .CP(net229), .CDN(n37), .Q(
        io_dout[15]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_15_ ( .D(N38), .CP(net235), .CDN(n37), .Q(
        io_dout[14]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_14_ ( .D(N37), .CP(net235), .CDN(n37), .Q(
        io_dout[13]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_13_ ( .D(N36), .CP(net235), .CDN(n37), .Q(
        io_dout[12]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_12_ ( .D(N35), .CP(net235), .CDN(n37), .Q(
        io_dout[11]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_11_ ( .D(N34), .CP(net235), .CDN(n37), .Q(
        io_dout[10]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_10_ ( .D(N33), .CP(net235), .CDN(n37), .Q(
        io_dout[9]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_9_ ( .D(N32), .CP(net235), .CDN(n37), .Q(
        io_dout[8]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_8_ ( .D(n107), .CP(net229), .CDN(n37), .Q(
        io_dout[7]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_7_ ( .D(n106), .CP(net229), .CDN(n19), .Q(
        io_dout[6]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_6_ ( .D(n105), .CP(net229), .CDN(n37), .Q(
        io_dout[5]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_5_ ( .D(n104), .CP(net229), .CDN(n37), .Q(
        io_dout[4]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_4_ ( .D(n103), .CP(net229), .CDN(n37), .Q(
        io_dout[3]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_3_ ( .D(n102), .CP(net229), .CDN(n37), .Q(
        io_dout[2]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_2_ ( .D(n101), .CP(net229), .CDN(n37), .Q(
        io_dout[1]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_1_ ( .D(n100), .CP(net229), .CDN(n37), .Q(
        io_dout[0]) );
  DFCNQD1BWP7T35P140 cal_cnt_reg_0_ ( .D(N19), .CP(net229), .CDN(n37), .Q(
        cal_cnt[0]) );
  DFCNQD1BWP7T35P140 cal_cnt_reg_1_ ( .D(N20), .CP(net229), .CDN(n37), .Q(
        cal_cnt[1]) );
  DFCNQD1BWP7T35P140 cal_cnt_reg_2_ ( .D(N21), .CP(net229), .CDN(n37), .Q(
        cal_cnt[2]) );
  DFCNQD1BWP7T35P140 shiftReg_reg_0_ ( .D(io_dout[0]), .CP(net235), .CDN(n37), 
        .Q(n_zz_shiftReg_0_) );
  DFCND1BWP7T35P140 cal_en_reg ( .D(n15), .CP(clk), .CDN(n37), .Q(cal_en), 
        .QN(n99) );
  DFQD1BWP7T35P140 cal_en_regNext_reg ( .D(cal_en), .CP(clk), .Q(
        cal_en_regNext) );
  INVD1BWP7T35P140 U42 ( .I(resetn), .ZN(n18) );
  INVD1BWP7T35P140 U43 ( .I(n18), .ZN(n19) );
  INVD1BWP7T35P140 U44 ( .I(io_dinB[2]), .ZN(n20) );
  INVD1BWP7T35P140 U45 ( .I(n20), .ZN(n21) );
  INVD1BWP7T35P140 U46 ( .I(io_dinB[3]), .ZN(n22) );
  INVD1BWP7T35P140 U47 ( .I(n22), .ZN(n23) );
  INVD1BWP7T35P140 U48 ( .I(io_dinB[4]), .ZN(n24) );
  INVD1BWP7T35P140 U49 ( .I(n24), .ZN(n25) );
  INVD1BWP7T35P140 U50 ( .I(io_dinB[5]), .ZN(n26) );
  INVD1BWP7T35P140 U51 ( .I(n26), .ZN(n27) );
  INVD1BWP7T35P140 U52 ( .I(io_dinB[6]), .ZN(n28) );
  INVD1BWP7T35P140 U53 ( .I(n28), .ZN(n29) );
  INVD1BWP7T35P140 U54 ( .I(io_dinB[1]), .ZN(n30) );
  INVD1BWP7T35P140 U55 ( .I(n30), .ZN(n31) );
  INVD1BWP7T35P140 U56 ( .I(io_dinB[0]), .ZN(n32) );
  INVD1BWP7T35P140 U57 ( .I(n32), .ZN(n33) );
  INVD1BWP7T35P140 U58 ( .I(io_din_vld), .ZN(n34) );
  INVD1BWP7T35P140 U59 ( .I(n34), .ZN(n35) );
  INVD1BWP7T35P140 U60 ( .I(n19), .ZN(n36) );
  INVD1BWP7T35P140 U61 ( .I(n36), .ZN(n37) );
  INR2D2BWP7T35P140 U62 ( .A1(cal_en_regNext), .B1(cal_en), .ZN(io_dout_vld)
         );
  INVD1BWP7T35P140 U63 ( .I(n35), .ZN(n98) );
  TIELBWP7T35P140 U64 ( .ZN(net230) );
  NR2D1BWP7T35P140 U65 ( .A1(cal_cnt[0]), .A2(n99), .ZN(N19) );
  AOI31D1BWP7T35P140 U66 ( .A1(cal_cnt[0]), .A2(cal_cnt[1]), .A3(cal_cnt[2]), 
        .B(n99), .ZN(n89) );
  IND2D1BWP7T35P140 U67 ( .A1(n89), .B1(n98), .ZN(n15) );
  INVD1BWP7T35P140 U68 ( .I(io_dout[9]), .ZN(n44) );
  INVD1BWP7T35P140 U69 ( .I(io_dout[0]), .ZN(n39) );
  NR2D1BWP7T35P140 U70 ( .A1(n_zz_shiftReg_0_), .A2(n39), .ZN(n79) );
  ND2D1BWP7T35P140 U71 ( .A1(n79), .A2(n33), .ZN(n38) );
  XOR2D0BWP7T35P140 U72 ( .A1(n31), .A2(n38), .Z(n46) );
  ND2D1BWP7T35P140 U73 ( .A1(n33), .A2(io_dout[8]), .ZN(n45) );
  AO21D1BWP7T35P140 U74 ( .A1(n_zz_shiftReg_0_), .A2(n39), .B(n79), .Z(n94) );
  INVD1BWP7T35P140 U75 ( .I(n94), .ZN(n97) );
  NR2D1BWP7T35P140 U76 ( .A1(n46), .A2(n45), .ZN(n40) );
  AOI211D0BWP7T35P140 U77 ( .A1(n46), .A2(n45), .B(n97), .C(n40), .ZN(n41) );
  MUX2ND1BWP7T35P140 U78 ( .I0(n44), .I1(io_dout[9]), .S(n41), .ZN(N32) );
  NR2D1BWP7T35P140 U79 ( .A1(n35), .A2(n99), .ZN(N39) );
  INVD1BWP7T35P140 U80 ( .I(io_dout[10]), .ZN(n49) );
  NR2D1BWP7T35P140 U81 ( .A1(n31), .A2(n33), .ZN(n42) );
  INVD1BWP7T35P140 U82 ( .I(n79), .ZN(n70) );
  NR2D1BWP7T35P140 U83 ( .A1(n42), .A2(n70), .ZN(n43) );
  XOR2D0BWP7T35P140 U84 ( .A1(n21), .A2(n43), .Z(n51) );
  MAOI222D0BWP7T35P140 U85 ( .A(n46), .B(n45), .C(n44), .ZN(n50) );
  NR2D1BWP7T35P140 U86 ( .A1(n51), .A2(n50), .ZN(n47) );
  AOI211D0BWP7T35P140 U87 ( .A1(n51), .A2(n50), .B(n97), .C(n47), .ZN(n48) );
  MUX2ND1BWP7T35P140 U88 ( .I0(n49), .I1(io_dout[10]), .S(n48), .ZN(N33) );
  INVD1BWP7T35P140 U89 ( .I(io_dout[11]), .ZN(n57) );
  MAOI222D0BWP7T35P140 U90 ( .A(n51), .B(io_dout[10]), .C(n50), .ZN(n59) );
  NR3D0BWP7T35P140 U91 ( .A1(n21), .A2(n31), .A3(n33), .ZN(n55) );
  NR2D1BWP7T35P140 U92 ( .A1(n70), .A2(n55), .ZN(n52) );
  XNR2D0BWP7T35P140 U93 ( .A1(n52), .A2(n23), .ZN(n58) );
  NR2D1BWP7T35P140 U94 ( .A1(n59), .A2(n58), .ZN(n53) );
  AOI211D0BWP7T35P140 U95 ( .A1(n59), .A2(n58), .B(n97), .C(n53), .ZN(n54) );
  MUX2ND1BWP7T35P140 U96 ( .I0(n57), .I1(io_dout[11]), .S(n54), .ZN(N34) );
  INVD1BWP7T35P140 U97 ( .I(io_dout[12]), .ZN(n62) );
  INR2D1BWP7T35P140 U98 ( .A1(n55), .B1(n23), .ZN(n65) );
  NR2D1BWP7T35P140 U99 ( .A1(n65), .A2(n70), .ZN(n56) );
  XOR2D0BWP7T35P140 U100 ( .A1(n25), .A2(n56), .Z(n64) );
  MAOI222D0BWP7T35P140 U101 ( .A(n59), .B(n58), .C(n57), .ZN(n63) );
  NR2D1BWP7T35P140 U102 ( .A1(n64), .A2(n63), .ZN(n60) );
  AOI211D0BWP7T35P140 U103 ( .A1(n64), .A2(n63), .B(n97), .C(n60), .ZN(n61) );
  MUX2ND1BWP7T35P140 U104 ( .I0(n62), .I1(io_dout[12]), .S(n61), .ZN(N35) );
  INVD1BWP7T35P140 U105 ( .I(io_dout[13]), .ZN(n72) );
  MAOI222D0BWP7T35P140 U106 ( .A(n64), .B(io_dout[12]), .C(n63), .ZN(n74) );
  INR2D1BWP7T35P140 U107 ( .A1(n65), .B1(n25), .ZN(n69) );
  NR2D1BWP7T35P140 U108 ( .A1(n69), .A2(n70), .ZN(n66) );
  XNR2D0BWP7T35P140 U109 ( .A1(n27), .A2(n66), .ZN(n73) );
  NR2D1BWP7T35P140 U110 ( .A1(n74), .A2(n73), .ZN(n67) );
  AOI211D0BWP7T35P140 U111 ( .A1(n74), .A2(n73), .B(n97), .C(n67), .ZN(n68) );
  MUX2ND1BWP7T35P140 U112 ( .I0(n72), .I1(io_dout[13]), .S(n68), .ZN(N36) );
  INVD1BWP7T35P140 U113 ( .I(io_dout[14]), .ZN(n77) );
  INR2D1BWP7T35P140 U114 ( .A1(n69), .B1(n27), .ZN(n78) );
  NR2D1BWP7T35P140 U115 ( .A1(n78), .A2(n70), .ZN(n71) );
  XOR2D0BWP7T35P140 U116 ( .A1(n29), .A2(n71), .Z(n82) );
  MAOI222D0BWP7T35P140 U117 ( .A(n74), .B(n73), .C(n72), .ZN(n81) );
  NR2D1BWP7T35P140 U118 ( .A1(n82), .A2(n81), .ZN(n75) );
  AOI211D0BWP7T35P140 U119 ( .A1(n82), .A2(n81), .B(n97), .C(n75), .ZN(n76) );
  MUX2ND1BWP7T35P140 U120 ( .I0(n77), .I1(io_dout[14]), .S(n76), .ZN(N37) );
  INVD1BWP7T35P140 U121 ( .I(io_dout[15]), .ZN(n96) );
  INVD1BWP7T35P140 U122 ( .I(n78), .ZN(n80) );
  OAI21D1BWP7T35P140 U123 ( .A1(n80), .A2(n29), .B(n79), .ZN(n85) );
  MAOI222D0BWP7T35P140 U124 ( .A(io_dout[14]), .B(n82), .C(n81), .ZN(n83) );
  XOR2D0BWP7T35P140 U125 ( .A1(io_dinB[7]), .A2(n83), .Z(n84) );
  XNR2D0BWP7T35P140 U126 ( .A1(n85), .A2(n84), .ZN(n86) );
  MUX2ND1BWP7T35P140 U127 ( .I0(n96), .I1(io_dout[15]), .S(n86), .ZN(n95) );
  NR2D1BWP7T35P140 U128 ( .A1(n97), .A2(n35), .ZN(n87) );
  MUX2ND1BWP7T35P140 U129 ( .I0(n96), .I1(n95), .S(n87), .ZN(n14) );
  ND2D1BWP7T35P140 U130 ( .A1(cal_cnt[1]), .A2(cal_cnt[0]), .ZN(n88) );
  OA211D0BWP7T35P140 U131 ( .A1(cal_cnt[1]), .A2(cal_cnt[0]), .B(cal_en), .C(
        n88), .Z(N20) );
  INVD1BWP7T35P140 U132 ( .I(n88), .ZN(n90) );
  OA21D0BWP7T35P140 U133 ( .A1(n90), .A2(cal_cnt[2]), .B(n89), .Z(N21) );
  AN2D0BWP7T35P140 U134 ( .A1(n33), .A2(n94), .Z(n92) );
  NR2D1BWP7T35P140 U135 ( .A1(io_dout[8]), .A2(n92), .ZN(n91) );
  AOI211D0BWP7T35P140 U136 ( .A1(io_dout[8]), .A2(n92), .B(n35), .C(n91), .ZN(
        n93) );
  AO21D1BWP7T35P140 U137 ( .A1(n35), .A2(io_dinA[7]), .B(n93), .Z(n107) );
  MUX2D1BWP7T35P140 U138 ( .I0(io_dinA[6]), .I1(io_dout[7]), .S(n98), .Z(n106)
         );
  MUX2D1BWP7T35P140 U139 ( .I0(io_dinA[5]), .I1(io_dout[6]), .S(n98), .Z(n105)
         );
  MUX2D1BWP7T35P140 U140 ( .I0(io_dinA[4]), .I1(io_dout[5]), .S(n98), .Z(n104)
         );
  MUX2D1BWP7T35P140 U141 ( .I0(io_dinA[3]), .I1(io_dout[4]), .S(n98), .Z(n103)
         );
  MUX2D1BWP7T35P140 U142 ( .I0(io_dinA[2]), .I1(io_dout[3]), .S(n98), .Z(n102)
         );
  MUX2D1BWP7T35P140 U143 ( .I0(io_dinA[1]), .I1(io_dout[2]), .S(n98), .Z(n101)
         );
  MUX2D1BWP7T35P140 U144 ( .I0(io_dinA[0]), .I1(io_dout[1]), .S(n98), .Z(n100)
         );
  AOI22D1BWP7T35P140 U145 ( .A1(n97), .A2(n96), .B1(n95), .B2(n94), .ZN(N38)
         );
  ND2D1BWP7T35P140 U146 ( .A1(n98), .A2(n99), .ZN(n17) );
endmodule

