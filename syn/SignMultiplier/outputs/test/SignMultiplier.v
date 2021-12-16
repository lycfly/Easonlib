/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Thu Dec 16 23:57:58 2021
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_SignMultiplier ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SignMultiplier ( io_dinA, io_dinB, io_din_vld, io_dout, io_dout_vld, 
        clk, resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         net167, net168, intadd_0_A_11_, intadd_0_A_10_, intadd_0_A_9_,
         intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_,
         intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_11_, intadd_0_B_10_, intadd_0_B_9_,
         intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_11_, intadd_0_SUM_10_,
         intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_,
         intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n12, intadd_0_n11,
         intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151;

  SNPS_CLOCK_GATE_HIGH_SignMultiplier clk_gate_Result_reg ( .CLK(clk), .EN(n2), 
        .ENCLK(net167), .TE(net168) );
  DFCNQD1BWP7T35P140 dout_vld_reg_reg ( .D(n2), .CP(clk), .CDN(resetn), .Q(
        io_dout_vld) );
  DFCNQD1BWP7T35P140 Result_reg_15_ ( .D(intadd_0_n1), .CP(net167), .CDN(
        resetn), .Q(io_dout[15]) );
  DFCNQD1BWP7T35P140 Result_reg_14_ ( .D(N16), .CP(net167), .CDN(resetn), .Q(
        io_dout[14]) );
  DFCNQD1BWP7T35P140 Result_reg_13_ ( .D(N15), .CP(net167), .CDN(resetn), .Q(
        io_dout[13]) );
  DFCNQD1BWP7T35P140 Result_reg_12_ ( .D(N14), .CP(net167), .CDN(resetn), .Q(
        io_dout[12]) );
  DFCNQD1BWP7T35P140 Result_reg_11_ ( .D(N13), .CP(net167), .CDN(resetn), .Q(
        io_dout[11]) );
  DFCNQD1BWP7T35P140 Result_reg_10_ ( .D(N12), .CP(net167), .CDN(resetn), .Q(
        io_dout[10]) );
  DFCNQD1BWP7T35P140 Result_reg_9_ ( .D(N11), .CP(net167), .CDN(resetn), .Q(
        io_dout[9]) );
  DFCNQD1BWP7T35P140 Result_reg_8_ ( .D(N10), .CP(net167), .CDN(resetn), .Q(
        io_dout[8]) );
  DFCNQD1BWP7T35P140 Result_reg_7_ ( .D(N9), .CP(net167), .CDN(resetn), .Q(
        io_dout[7]) );
  DFCNQD1BWP7T35P140 Result_reg_6_ ( .D(N8), .CP(net167), .CDN(resetn), .Q(
        io_dout[6]) );
  DFCNQD1BWP7T35P140 Result_reg_5_ ( .D(N7), .CP(net167), .CDN(resetn), .Q(
        io_dout[5]) );
  DFCNQD1BWP7T35P140 Result_reg_4_ ( .D(N6), .CP(net167), .CDN(resetn), .Q(
        io_dout[4]) );
  DFCNQD1BWP7T35P140 Result_reg_3_ ( .D(N5), .CP(net167), .CDN(resetn), .Q(
        io_dout[3]) );
  DFCNQD1BWP7T35P140 Result_reg_2_ ( .D(N4), .CP(net167), .CDN(resetn), .Q(
        io_dout[2]) );
  DFCNQD1BWP7T35P140 Result_reg_1_ ( .D(N3), .CP(net167), .CDN(resetn), .Q(
        io_dout[1]) );
  DFCNQD1BWP7T35P140 Result_reg_0_ ( .D(N2), .CP(net167), .CDN(resetn), .Q(
        io_dout[0]) );
  FA1D1BWP7T35P140 intadd_0_U13 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n12), .S(intadd_0_SUM_0_) );
  FA1D1BWP7T35P140 intadd_0_U12 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_1_) );
  FA1D1BWP7T35P140 intadd_0_U11 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_2_) );
  FA1D1BWP7T35P140 intadd_0_U10 ( .A(intadd_0_B_3_), .B(intadd_0_A_3_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_3_) );
  FA1D1BWP7T35P140 intadd_0_U9 ( .A(intadd_0_B_4_), .B(intadd_0_A_4_), .CI(
        intadd_0_n9), .CO(intadd_0_n8), .S(intadd_0_SUM_4_) );
  FA1D1BWP7T35P140 intadd_0_U8 ( .A(intadd_0_B_5_), .B(intadd_0_A_5_), .CI(
        intadd_0_n8), .CO(intadd_0_n7), .S(intadd_0_SUM_5_) );
  FA1D1BWP7T35P140 intadd_0_U7 ( .A(intadd_0_B_6_), .B(intadd_0_A_6_), .CI(
        intadd_0_n7), .CO(intadd_0_n6), .S(intadd_0_SUM_6_) );
  FA1D1BWP7T35P140 intadd_0_U6 ( .A(intadd_0_B_7_), .B(intadd_0_A_7_), .CI(
        intadd_0_n6), .CO(intadd_0_n5), .S(intadd_0_SUM_7_) );
  FA1D1BWP7T35P140 intadd_0_U5 ( .A(intadd_0_B_8_), .B(intadd_0_A_8_), .CI(
        intadd_0_n5), .CO(intadd_0_n4), .S(intadd_0_SUM_8_) );
  FA1D1BWP7T35P140 intadd_0_U4 ( .A(intadd_0_B_9_), .B(intadd_0_A_9_), .CI(
        intadd_0_n4), .CO(intadd_0_n3), .S(intadd_0_SUM_9_) );
  FA1D1BWP7T35P140 intadd_0_U3 ( .A(intadd_0_B_10_), .B(intadd_0_A_10_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(intadd_0_SUM_10_) );
  FA1D1BWP7T35P140 intadd_0_U2 ( .A(intadd_0_B_11_), .B(intadd_0_A_11_), .CI(
        intadd_0_n2), .CO(intadd_0_n1), .S(intadd_0_SUM_11_) );
  INVD1BWP7T35P140 U4 ( .I(io_din_vld), .ZN(n1) );
  INVD1BWP7T35P140 U5 ( .I(n1), .ZN(n2) );
  INVD1BWP7T35P140 U6 ( .I(io_dinA[2]), .ZN(n3) );
  INVD1BWP7T35P140 U7 ( .I(n3), .ZN(n4) );
  INVD1BWP7T35P140 U8 ( .I(io_dinA[0]), .ZN(n5) );
  INVD1BWP7T35P140 U9 ( .I(n5), .ZN(n6) );
  INVD1BWP7T35P140 U10 ( .I(io_dinB[7]), .ZN(n7) );
  INVD1BWP7T35P140 U11 ( .I(n7), .ZN(n8) );
  INVD1BWP7T35P140 U12 ( .I(io_dinA[4]), .ZN(n9) );
  INVD1BWP7T35P140 U13 ( .I(n9), .ZN(n10) );
  INVD1BWP7T35P140 U14 ( .I(io_dinA[6]), .ZN(n11) );
  INVD1BWP7T35P140 U15 ( .I(n11), .ZN(n12) );
  INVD1BWP7T35P140 U16 ( .I(io_dinA[1]), .ZN(n13) );
  INVD1BWP7T35P140 U17 ( .I(n13), .ZN(n14) );
  INVD1BWP7T35P140 U18 ( .I(io_dinB[2]), .ZN(n15) );
  INVD1BWP7T35P140 U19 ( .I(n15), .ZN(n16) );
  INVD1BWP7T35P140 U20 ( .I(io_dinB[3]), .ZN(n17) );
  INVD1BWP7T35P140 U21 ( .I(n17), .ZN(n18) );
  INVD1BWP7T35P140 U22 ( .I(io_dinB[4]), .ZN(n19) );
  INVD1BWP7T35P140 U23 ( .I(n19), .ZN(n20) );
  INVD1BWP7T35P140 U24 ( .I(io_dinB[5]), .ZN(n21) );
  INVD1BWP7T35P140 U25 ( .I(n21), .ZN(n22) );
  INVD1BWP7T35P140 U26 ( .I(io_dinB[6]), .ZN(n23) );
  INVD1BWP7T35P140 U27 ( .I(n23), .ZN(n24) );
  INVD1BWP7T35P140 U28 ( .I(io_dinB[1]), .ZN(n25) );
  INVD1BWP7T35P140 U29 ( .I(n25), .ZN(n26) );
  INVD1BWP7T35P140 U30 ( .I(io_dinA[7]), .ZN(n27) );
  INVD1BWP7T35P140 U31 ( .I(n27), .ZN(n28) );
  INVD1BWP7T35P140 U32 ( .I(io_dinB[0]), .ZN(n29) );
  INVD1BWP7T35P140 U33 ( .I(n29), .ZN(n30) );
  INVD1BWP7T35P140 U34 ( .I(io_dinA[5]), .ZN(n31) );
  INVD1BWP7T35P140 U35 ( .I(n31), .ZN(n32) );
  INVD1BWP7T35P140 U36 ( .I(io_dinA[3]), .ZN(n33) );
  INVD1BWP7T35P140 U37 ( .I(n33), .ZN(n34) );
  INVD1BWP7T35P140 U38 ( .I(n4), .ZN(n35) );
  INVD1BWP7T35P140 U39 ( .I(n6), .ZN(n36) );
  INVD1BWP7T35P140 U40 ( .I(n8), .ZN(n37) );
  INVD1BWP7T35P140 U41 ( .I(n10), .ZN(n38) );
  INVD1BWP7T35P140 U42 ( .I(n12), .ZN(n39) );
  INVD1BWP7T35P140 U43 ( .I(n14), .ZN(n40) );
  INVD1BWP7T35P140 U44 ( .I(n16), .ZN(n41) );
  INVD1BWP7T35P140 U45 ( .I(n18), .ZN(n42) );
  INVD1BWP7T35P140 U46 ( .I(n20), .ZN(n43) );
  INVD1BWP7T35P140 U47 ( .I(n22), .ZN(n44) );
  INVD1BWP7T35P140 U48 ( .I(n24), .ZN(n45) );
  INVD1BWP7T35P140 U49 ( .I(n26), .ZN(n46) );
  INVD1BWP7T35P140 U50 ( .I(n28), .ZN(n47) );
  INVD1BWP7T35P140 U51 ( .I(n32), .ZN(n48) );
  INVD1BWP7T35P140 U52 ( .I(n34), .ZN(n49) );
  INVD1BWP7T35P140 U53 ( .I(n30), .ZN(n119) );
  TIELBWP7T35P140 U54 ( .ZN(net168) );
  NR2D1BWP7T35P140 U55 ( .A1(n36), .A2(n119), .ZN(N2) );
  INVD1BWP7T35P140 U56 ( .I(intadd_0_SUM_0_), .ZN(N5) );
  INVD1BWP7T35P140 U57 ( .I(intadd_0_SUM_1_), .ZN(N6) );
  INVD1BWP7T35P140 U58 ( .I(intadd_0_SUM_2_), .ZN(N7) );
  INVD1BWP7T35P140 U59 ( .I(intadd_0_SUM_3_), .ZN(N8) );
  INVD1BWP7T35P140 U60 ( .I(intadd_0_SUM_4_), .ZN(N9) );
  INVD1BWP7T35P140 U61 ( .I(intadd_0_SUM_5_), .ZN(N10) );
  INVD1BWP7T35P140 U62 ( .I(intadd_0_SUM_6_), .ZN(N11) );
  INVD1BWP7T35P140 U63 ( .I(intadd_0_SUM_7_), .ZN(N12) );
  INVD1BWP7T35P140 U64 ( .I(intadd_0_SUM_8_), .ZN(N13) );
  INVD1BWP7T35P140 U65 ( .I(intadd_0_SUM_9_), .ZN(N14) );
  INVD1BWP7T35P140 U66 ( .I(intadd_0_SUM_10_), .ZN(N15) );
  INVD1BWP7T35P140 U67 ( .I(intadd_0_SUM_11_), .ZN(N16) );
  NR2D1BWP7T35P140 U68 ( .A1(n14), .A2(n36), .ZN(n149) );
  ND2D1BWP7T35P140 U69 ( .A1(n14), .A2(n36), .ZN(n127) );
  ND2D1BWP7T35P140 U70 ( .A1(n6), .A2(n14), .ZN(n147) );
  OAI22D1BWP7T35P140 U71 ( .A1(n16), .A2(n127), .B1(n18), .B2(n147), .ZN(n50)
         );
  AO21D1BWP7T35P140 U72 ( .A1(n149), .A2(n18), .B(n50), .Z(n52) );
  ND3D1BWP7T35P140 U73 ( .A1(n34), .A2(n40), .A3(n35), .ZN(n58) );
  OA31D0BWP7T35P140 U74 ( .A1(n34), .A2(n35), .A3(n40), .B(n58), .Z(n130) );
  AOI22D1BWP7T35P140 U75 ( .A1(n30), .A2(n49), .B1(n34), .B2(n119), .ZN(n51)
         );
  AOI22D1BWP7T35P140 U76 ( .A1(n14), .A2(n4), .B1(n35), .B2(n40), .ZN(n131) );
  INVD1BWP7T35P140 U77 ( .I(n131), .ZN(n82) );
  AOI22D1BWP7T35P140 U78 ( .A1(n26), .A2(n49), .B1(n34), .B2(n46), .ZN(n129)
         );
  OAI22D1BWP7T35P140 U79 ( .A1(n130), .A2(n51), .B1(n82), .B2(n129), .ZN(n53)
         );
  ND2D1BWP7T35P140 U80 ( .A1(n52), .A2(n53), .ZN(intadd_0_A_1_) );
  OAI21D1BWP7T35P140 U81 ( .A1(n53), .A2(n52), .B(intadd_0_A_1_), .ZN(
        intadd_0_A_0_) );
  AOI22D1BWP7T35P140 U82 ( .A1(n32), .A2(n12), .B1(n39), .B2(n48), .ZN(n140)
         );
  INVD1BWP7T35P140 U83 ( .I(n140), .ZN(n74) );
  AOI22D1BWP7T35P140 U84 ( .A1(n8), .A2(n47), .B1(n28), .B2(n37), .ZN(n54) );
  OAI221D0BWP7T35P140 U85 ( .A1(n12), .A2(n28), .B1(n39), .B2(n47), .C(n74), 
        .ZN(n59) );
  AOI22D1BWP7T35P140 U86 ( .A1(n24), .A2(n47), .B1(n28), .B2(n45), .ZN(n60) );
  OAI22D1BWP7T35P140 U87 ( .A1(n74), .A2(n54), .B1(n59), .B2(n60), .ZN(
        intadd_0_A_10_) );
  INVD1BWP7T35P140 U88 ( .I(intadd_0_A_10_), .ZN(intadd_0_A_11_) );
  AOI21D1BWP7T35P140 U89 ( .A1(n74), .A2(n59), .B(n54), .ZN(intadd_0_B_11_) );
  OAI22D1BWP7T35P140 U90 ( .A1(n26), .A2(n127), .B1(n16), .B2(n147), .ZN(n55)
         );
  AO21D1BWP7T35P140 U91 ( .A1(n149), .A2(n16), .B(n55), .Z(n56) );
  AOI211D0BWP7T35P140 U92 ( .A1(n6), .A2(n26), .B(n30), .C(n40), .ZN(n150) );
  AO21D1BWP7T35P140 U93 ( .A1(n30), .A2(n131), .B(n150), .Z(n57) );
  ND2D1BWP7T35P140 U94 ( .A1(n56), .A2(n57), .ZN(intadd_0_CI) );
  OA21D0BWP7T35P140 U95 ( .A1(n57), .A2(n56), .B(intadd_0_CI), .Z(N4) );
  OA31D0BWP7T35P140 U96 ( .A1(n30), .A2(n82), .A3(n49), .B(n58), .Z(
        intadd_0_B_0_) );
  AOI22D1BWP7T35P140 U97 ( .A1(n34), .A2(n10), .B1(n38), .B2(n49), .ZN(n126)
         );
  AOI22D1BWP7T35P140 U98 ( .A1(n32), .A2(n8), .B1(n37), .B2(n48), .ZN(n61) );
  AOI221D1BWP7T35P140 U99 ( .A1(n10), .A2(n32), .B1(n38), .B2(n48), .C(n126), 
        .ZN(n121) );
  AOI22D1BWP7T35P140 U100 ( .A1(n32), .A2(n24), .B1(n45), .B2(n48), .ZN(n65)
         );
  AOI22D1BWP7T35P140 U101 ( .A1(n126), .A2(n61), .B1(n121), .B2(n65), .ZN(n136) );
  INVD1BWP7T35P140 U102 ( .I(n59), .ZN(n138) );
  AOI22D1BWP7T35P140 U103 ( .A1(n22), .A2(n28), .B1(n47), .B2(n44), .ZN(n139)
         );
  MAOI22D1BWP7T35P140 U104 ( .A1(n138), .A2(n139), .B1(n74), .B2(n60), .ZN(n63) );
  OA21D0BWP7T35P140 U105 ( .A1(n126), .A2(n121), .B(n61), .Z(n62) );
  FA1D1BWP7T35P140 U106 ( .A(n136), .B(n63), .CI(n62), .CO(intadd_0_B_10_), 
        .S(intadd_0_A_9_) );
  AOI22D1BWP7T35P140 U107 ( .A1(n34), .A2(n45), .B1(n24), .B2(n49), .ZN(n71)
         );
  AOI22D1BWP7T35P140 U108 ( .A1(n34), .A2(n37), .B1(n8), .B2(n49), .ZN(n64) );
  OAI22D1BWP7T35P140 U109 ( .A1(n130), .A2(n71), .B1(n82), .B2(n64), .ZN(n78)
         );
  INVD1BWP7T35P140 U110 ( .I(n78), .ZN(n143) );
  AOI22D1BWP7T35P140 U111 ( .A1(n20), .A2(n28), .B1(n47), .B2(n43), .ZN(n137)
         );
  AOI22D1BWP7T35P140 U112 ( .A1(n18), .A2(n28), .B1(n47), .B2(n42), .ZN(n67)
         );
  AOI22D1BWP7T35P140 U113 ( .A1(n140), .A2(n137), .B1(n138), .B2(n67), .ZN(
        n142) );
  AOI21D1BWP7T35P140 U114 ( .A1(n82), .A2(n130), .B(n64), .ZN(n141) );
  AOI22D1BWP7T35P140 U115 ( .A1(n22), .A2(n32), .B1(n48), .B2(n44), .ZN(n66)
         );
  AOI22D1BWP7T35P140 U116 ( .A1(n126), .A2(n65), .B1(n121), .B2(n66), .ZN(n69)
         );
  AOI22D1BWP7T35P140 U117 ( .A1(n20), .A2(n32), .B1(n48), .B2(n43), .ZN(n72)
         );
  AOI22D1BWP7T35P140 U118 ( .A1(n126), .A2(n66), .B1(n121), .B2(n72), .ZN(n77)
         );
  AOI22D1BWP7T35P140 U119 ( .A1(n16), .A2(n28), .B1(n47), .B2(n41), .ZN(n73)
         );
  AOI22D1BWP7T35P140 U120 ( .A1(n140), .A2(n67), .B1(n138), .B2(n73), .ZN(n76)
         );
  FA1D1BWP7T35P140 U121 ( .A(n70), .B(n69), .CI(n68), .CO(intadd_0_A_8_), .S(
        intadd_0_A_7_) );
  NR2D1BWP7T35P140 U122 ( .A1(n149), .A2(n37), .ZN(n86) );
  AOI22D1BWP7T35P140 U123 ( .A1(n34), .A2(n44), .B1(n22), .B2(n49), .ZN(n81)
         );
  OAI22D1BWP7T35P140 U124 ( .A1(n130), .A2(n81), .B1(n82), .B2(n71), .ZN(n88)
         );
  AOI211D0BWP7T35P140 U125 ( .A1(n40), .A2(n37), .B(n86), .C(n88), .ZN(n87) );
  AOI22D1BWP7T35P140 U126 ( .A1(n18), .A2(n32), .B1(n48), .B2(n42), .ZN(n85)
         );
  AOI22D1BWP7T35P140 U127 ( .A1(n126), .A2(n72), .B1(n121), .B2(n85), .ZN(n91)
         );
  AOI22D1BWP7T35P140 U128 ( .A1(n26), .A2(n28), .B1(n47), .B2(n46), .ZN(n84)
         );
  AOI22D1BWP7T35P140 U129 ( .A1(n140), .A2(n73), .B1(n138), .B2(n84), .ZN(n90)
         );
  AOI221D1BWP7T35P140 U130 ( .A1(n30), .A2(n140), .B1(n12), .B2(n74), .C(n47), 
        .ZN(n97) );
  AN2D0BWP7T35P140 U131 ( .A1(n147), .A2(n37), .Z(n75) );
  OAI22D1BWP7T35P140 U132 ( .A1(n75), .A2(n86), .B1(n24), .B2(n127), .ZN(n96)
         );
  ND2D1BWP7T35P140 U133 ( .A1(n97), .A2(n96), .ZN(n95) );
  FA1D1BWP7T35P140 U134 ( .A(n78), .B(n77), .CI(n76), .CO(n68), .S(n79) );
  FA1D1BWP7T35P140 U135 ( .A(n87), .B(n80), .CI(n79), .CO(intadd_0_B_7_), .S(
        intadd_0_A_6_) );
  AOI22D1BWP7T35P140 U136 ( .A1(n34), .A2(n20), .B1(n43), .B2(n49), .ZN(n99)
         );
  INVD1BWP7T35P140 U137 ( .I(n130), .ZN(n118) );
  MAOI22D1BWP7T35P140 U138 ( .A1(n99), .A2(n118), .B1(n82), .B2(n81), .ZN(n102) );
  AOI22D1BWP7T35P140 U139 ( .A1(n30), .A2(n28), .B1(n47), .B2(n119), .ZN(n83)
         );
  AOI22D1BWP7T35P140 U140 ( .A1(n140), .A2(n84), .B1(n138), .B2(n83), .ZN(n101) );
  AOI22D1BWP7T35P140 U141 ( .A1(n16), .A2(n32), .B1(n48), .B2(n41), .ZN(n106)
         );
  AOI22D1BWP7T35P140 U142 ( .A1(n126), .A2(n85), .B1(n121), .B2(n106), .ZN(
        n100) );
  AO21D1BWP7T35P140 U143 ( .A1(n40), .A2(n37), .B(n86), .Z(n89) );
  AOI21D1BWP7T35P140 U144 ( .A1(n89), .A2(n88), .B(n87), .ZN(n93) );
  FA1D1BWP7T35P140 U145 ( .A(n91), .B(n90), .CI(n95), .CO(n80), .S(n92) );
  FA1D1BWP7T35P140 U146 ( .A(n94), .B(n93), .CI(n92), .CO(intadd_0_B_6_), .S(
        intadd_0_A_5_) );
  OAI21D1BWP7T35P140 U147 ( .A1(n97), .A2(n96), .B(n95), .ZN(n105) );
  ND2D1BWP7T35P140 U148 ( .A1(n30), .A2(n140), .ZN(n109) );
  OAI22D1BWP7T35P140 U149 ( .A1(n22), .A2(n127), .B1(n24), .B2(n147), .ZN(n98)
         );
  AOI21D1BWP7T35P140 U150 ( .A1(n149), .A2(n24), .B(n98), .ZN(n108) );
  AOI22D1BWP7T35P140 U151 ( .A1(n18), .A2(n34), .B1(n49), .B2(n42), .ZN(n117)
         );
  AOI22D1BWP7T35P140 U152 ( .A1(n117), .A2(n118), .B1(n99), .B2(n131), .ZN(
        n107) );
  FA1D1BWP7T35P140 U153 ( .A(n102), .B(n101), .CI(n100), .CO(n94), .S(n103) );
  FA1D1BWP7T35P140 U154 ( .A(n105), .B(n104), .CI(n103), .CO(intadd_0_B_5_), 
        .S(intadd_0_A_4_) );
  AOI22D1BWP7T35P140 U155 ( .A1(n26), .A2(n32), .B1(n48), .B2(n46), .ZN(n122)
         );
  AOI22D1BWP7T35P140 U156 ( .A1(n126), .A2(n106), .B1(n121), .B2(n122), .ZN(
        n113) );
  FA1D1BWP7T35P140 U157 ( .A(n109), .B(n108), .CI(n107), .CO(n104), .S(n112)
         );
  INVD1BWP7T35P140 U158 ( .I(n126), .ZN(n110) );
  AOI221D1BWP7T35P140 U159 ( .A1(n30), .A2(n126), .B1(n10), .B2(n110), .C(n48), 
        .ZN(n116) );
  OAI22D1BWP7T35P140 U160 ( .A1(n22), .A2(n147), .B1(n20), .B2(n127), .ZN(n111) );
  AO21D1BWP7T35P140 U161 ( .A1(n149), .A2(n22), .B(n111), .Z(n115) );
  ND2D1BWP7T35P140 U162 ( .A1(n116), .A2(n115), .ZN(n114) );
  FA1D1BWP7T35P140 U163 ( .A(n113), .B(n112), .CI(n114), .CO(intadd_0_B_4_), 
        .S(intadd_0_A_3_) );
  OAI21D1BWP7T35P140 U164 ( .A1(n116), .A2(n115), .B(n114), .ZN(n125) );
  AOI22D1BWP7T35P140 U165 ( .A1(n16), .A2(n34), .B1(n49), .B2(n41), .ZN(n132)
         );
  AOI22D1BWP7T35P140 U166 ( .A1(n132), .A2(n118), .B1(n117), .B2(n131), .ZN(
        n124) );
  AOI22D1BWP7T35P140 U167 ( .A1(n30), .A2(n32), .B1(n48), .B2(n119), .ZN(n120)
         );
  AOI22D1BWP7T35P140 U168 ( .A1(n126), .A2(n122), .B1(n121), .B2(n120), .ZN(
        n123) );
  FA1D1BWP7T35P140 U169 ( .A(n125), .B(n124), .CI(n123), .CO(intadd_0_B_3_), 
        .S(intadd_0_A_2_) );
  ND2D1BWP7T35P140 U170 ( .A1(n30), .A2(n126), .ZN(n135) );
  OAI22D1BWP7T35P140 U171 ( .A1(n18), .A2(n127), .B1(n20), .B2(n147), .ZN(n128) );
  AOI21D1BWP7T35P140 U172 ( .A1(n149), .A2(n20), .B(n128), .ZN(n134) );
  MAOI22D1BWP7T35P140 U173 ( .A1(n132), .A2(n131), .B1(n130), .B2(n129), .ZN(
        n133) );
  FA1D1BWP7T35P140 U174 ( .A(n135), .B(n134), .CI(n133), .CO(intadd_0_B_2_), 
        .S(intadd_0_B_1_) );
  INVD1BWP7T35P140 U175 ( .I(n136), .ZN(n146) );
  AOI22D1BWP7T35P140 U176 ( .A1(n140), .A2(n139), .B1(n138), .B2(n137), .ZN(
        n145) );
  FA1D1BWP7T35P140 U177 ( .A(n143), .B(n142), .CI(n141), .CO(n144), .S(n70) );
  FA1D1BWP7T35P140 U178 ( .A(n146), .B(n145), .CI(n144), .CO(intadd_0_B_9_), 
        .S(intadd_0_B_8_) );
  NR2D1BWP7T35P140 U179 ( .A1(n26), .A2(n147), .ZN(n148) );
  AOI21D1BWP7T35P140 U180 ( .A1(n149), .A2(n26), .B(n148), .ZN(n151) );
  AOI221D1BWP7T35P140 U181 ( .A1(N2), .A2(n151), .B1(n40), .B2(n151), .C(n150), 
        .ZN(N3) );
endmodule

