/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Dec 15 21:28:54 2021
/////////////////////////////////////////////////////////////


module SignMultiplier ( io_dinA, io_dinB, io_dout );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197;

  INVD1BWP7T35P140 U1 ( .I(io_dinA[2]), .ZN(n1) );
  INVD1BWP7T35P140 U2 ( .I(n1), .ZN(n2) );
  INVD1BWP7T35P140 U3 ( .I(io_dinA[0]), .ZN(n3) );
  INVD1BWP7T35P140 U4 ( .I(n3), .ZN(n4) );
  INVD1BWP7T35P140 U5 ( .I(io_dinB[7]), .ZN(n5) );
  INVD1BWP7T35P140 U6 ( .I(n5), .ZN(n6) );
  INVD1BWP7T35P140 U7 ( .I(io_dinA[4]), .ZN(n7) );
  INVD1BWP7T35P140 U8 ( .I(n7), .ZN(n8) );
  INVD1BWP7T35P140 U9 ( .I(io_dinA[6]), .ZN(n9) );
  INVD1BWP7T35P140 U10 ( .I(n9), .ZN(n10) );
  INVD1BWP7T35P140 U11 ( .I(io_dinA[1]), .ZN(n11) );
  INVD1BWP7T35P140 U12 ( .I(n11), .ZN(n12) );
  INVD1BWP7T35P140 U13 ( .I(io_dinB[2]), .ZN(n13) );
  INVD1BWP7T35P140 U14 ( .I(n13), .ZN(n14) );
  INVD1BWP7T35P140 U15 ( .I(io_dinB[3]), .ZN(n15) );
  INVD1BWP7T35P140 U16 ( .I(n15), .ZN(n16) );
  INVD1BWP7T35P140 U17 ( .I(io_dinB[4]), .ZN(n17) );
  INVD1BWP7T35P140 U18 ( .I(n17), .ZN(n18) );
  INVD1BWP7T35P140 U19 ( .I(io_dinB[5]), .ZN(n19) );
  INVD1BWP7T35P140 U20 ( .I(n19), .ZN(n20) );
  INVD1BWP7T35P140 U21 ( .I(io_dinB[6]), .ZN(n21) );
  INVD1BWP7T35P140 U22 ( .I(n21), .ZN(n22) );
  INVD1BWP7T35P140 U23 ( .I(io_dinB[1]), .ZN(n23) );
  INVD1BWP7T35P140 U24 ( .I(n23), .ZN(n24) );
  INVD1BWP7T35P140 U25 ( .I(io_dinA[7]), .ZN(n25) );
  INVD1BWP7T35P140 U26 ( .I(n25), .ZN(n26) );
  INVD1BWP7T35P140 U27 ( .I(io_dinB[0]), .ZN(n27) );
  INVD1BWP7T35P140 U28 ( .I(n27), .ZN(n28) );
  INVD1BWP7T35P140 U29 ( .I(io_dinA[5]), .ZN(n29) );
  INVD1BWP7T35P140 U30 ( .I(n29), .ZN(n30) );
  INVD1BWP7T35P140 U31 ( .I(io_dinA[3]), .ZN(n31) );
  INVD1BWP7T35P140 U32 ( .I(n31), .ZN(n32) );
  OA31D0BWP7T35P140 U33 ( .A1(n32), .A2(n33), .A3(n37), .B(n129), .Z(n125) );
  AN2D0BWP7T35P140 U34 ( .A1(n190), .A2(n80), .Z(n68) );
  OA21D0BWP7T35P140 U35 ( .A1(n120), .A2(n115), .B(n49), .Z(n50) );
  OA31D0BWP7T35P140 U36 ( .A1(n28), .A2(n130), .A3(n47), .B(n129), .Z(n184) );
  OAI221D0BWP7T35P140 U37 ( .A1(n10), .A2(n26), .B1(n36), .B2(n44), .C(n142), 
        .ZN(n141) );
  INVD1BWP7T35P140 U38 ( .I(n2), .ZN(n33) );
  INVD1BWP7T35P140 U39 ( .I(n4), .ZN(n34) );
  INVD1BWP7T35P140 U40 ( .I(n8), .ZN(n35) );
  INVD1BWP7T35P140 U41 ( .I(n10), .ZN(n36) );
  INVD1BWP7T35P140 U42 ( .I(n12), .ZN(n37) );
  INVD1BWP7T35P140 U43 ( .I(n14), .ZN(n38) );
  INVD1BWP7T35P140 U44 ( .I(n16), .ZN(n39) );
  INVD1BWP7T35P140 U45 ( .I(n18), .ZN(n40) );
  INVD1BWP7T35P140 U46 ( .I(n20), .ZN(n41) );
  INVD1BWP7T35P140 U47 ( .I(n22), .ZN(n42) );
  INVD1BWP7T35P140 U48 ( .I(n24), .ZN(n43) );
  INVD1BWP7T35P140 U49 ( .I(n26), .ZN(n44) );
  INVD1BWP7T35P140 U50 ( .I(n28), .ZN(n45) );
  INVD1BWP7T35P140 U51 ( .I(n30), .ZN(n46) );
  INVD1BWP7T35P140 U52 ( .I(n32), .ZN(n47) );
  INVD2BWP7T35P140 U53 ( .I(n155), .ZN(io_dout[11]) );
  INVD2BWP7T35P140 U54 ( .I(n163), .ZN(io_dout[9]) );
  INVD2BWP7T35P140 U55 ( .I(n167), .ZN(io_dout[8]) );
  INVD2BWP7T35P140 U56 ( .I(n175), .ZN(io_dout[6]) );
  INVD2BWP7T35P140 U57 ( .I(n159), .ZN(io_dout[10]) );
  INVD2BWP7T35P140 U58 ( .I(n171), .ZN(io_dout[7]) );
  INVD2BWP7T35P140 U59 ( .I(n179), .ZN(io_dout[5]) );
  INVD2BWP7T35P140 U60 ( .I(n151), .ZN(io_dout[12]) );
  INVD2BWP7T35P140 U61 ( .I(n143), .ZN(io_dout[14]) );
  FA1OPTCD1BWP7T35P140 U62 ( .A(n197), .B(n196), .CI(n195), .CO(io_dout[15]), 
        .S(n143) );
  INVD2BWP7T35P140 U63 ( .I(n183), .ZN(io_dout[4]) );
  INVD2BWP7T35P140 U64 ( .I(n186), .ZN(io_dout[3]) );
  INVD2BWP7T35P140 U65 ( .I(n147), .ZN(io_dout[13]) );
  AOI221D4BWP7T35P140 U66 ( .A1(io_dout[0]), .A2(n194), .B1(n37), .B2(n194), 
        .C(n193), .ZN(io_dout[1]) );
  NR2D2BWP7T35P140 U67 ( .A1(n34), .A2(n45), .ZN(io_dout[0]) );
  INVD1BWP7T35P140 U68 ( .I(n6), .ZN(n80) );
  AOI22D1BWP7T35P140 U69 ( .A1(n30), .A2(n10), .B1(n36), .B2(n46), .ZN(n92) );
  INVD1BWP7T35P140 U70 ( .I(n92), .ZN(n142) );
  AOI22D1BWP7T35P140 U71 ( .A1(n6), .A2(n44), .B1(n26), .B2(n80), .ZN(n140) );
  AOI22D1BWP7T35P140 U72 ( .A1(n22), .A2(n44), .B1(n26), .B2(n42), .ZN(n48) );
  OAI22D1BWP7T35P140 U73 ( .A1(n142), .A2(n140), .B1(n141), .B2(n48), .ZN(n146) );
  INVD1BWP7T35P140 U74 ( .I(n146), .ZN(n197) );
  AOI22D1BWP7T35P140 U75 ( .A1(n32), .A2(n8), .B1(n35), .B2(n47), .ZN(n120) );
  AOI22D1BWP7T35P140 U76 ( .A1(n30), .A2(n6), .B1(n80), .B2(n46), .ZN(n49) );
  AOI221D1BWP7T35P140 U77 ( .A1(n8), .A2(n30), .B1(n35), .B2(n46), .C(n120), 
        .ZN(n115) );
  AOI22D1BWP7T35P140 U78 ( .A1(n30), .A2(n22), .B1(n42), .B2(n46), .ZN(n59) );
  AOI22D1BWP7T35P140 U79 ( .A1(n120), .A2(n49), .B1(n115), .B2(n59), .ZN(n52)
         );
  INVD1BWP7T35P140 U80 ( .I(n141), .ZN(n76) );
  AOI22D1BWP7T35P140 U81 ( .A1(n20), .A2(n26), .B1(n44), .B2(n41), .ZN(n53) );
  MAOI22D1BWP7T35P140 U82 ( .A1(n76), .A2(n53), .B1(n142), .B2(n48), .ZN(n51)
         );
  FA1D1BWP7T35P140 U83 ( .A(n52), .B(n51), .CI(n50), .CO(n145), .S(n150) );
  INVD1BWP7T35P140 U84 ( .I(n52), .ZN(n139) );
  AOI22D1BWP7T35P140 U85 ( .A1(n18), .A2(n26), .B1(n44), .B2(n40), .ZN(n54) );
  AOI22D1BWP7T35P140 U86 ( .A1(n92), .A2(n53), .B1(n76), .B2(n54), .ZN(n138)
         );
  ND3D1BWP7T35P140 U87 ( .A1(n32), .A2(n37), .A3(n33), .ZN(n129) );
  AOI22D1BWP7T35P140 U88 ( .A1(n32), .A2(n42), .B1(n22), .B2(n47), .ZN(n65) );
  AOI22D1BWP7T35P140 U89 ( .A1(n12), .A2(n2), .B1(n33), .B2(n37), .ZN(n133) );
  INVD1BWP7T35P140 U90 ( .I(n133), .ZN(n130) );
  AOI22D1BWP7T35P140 U91 ( .A1(n32), .A2(n80), .B1(n6), .B2(n47), .ZN(n55) );
  OAI22D1BWP7T35P140 U92 ( .A1(n125), .A2(n65), .B1(n130), .B2(n55), .ZN(n71)
         );
  INVD1BWP7T35P140 U93 ( .I(n71), .ZN(n58) );
  AOI22D1BWP7T35P140 U94 ( .A1(n16), .A2(n26), .B1(n44), .B2(n39), .ZN(n61) );
  AOI22D1BWP7T35P140 U95 ( .A1(n92), .A2(n54), .B1(n76), .B2(n61), .ZN(n57) );
  AOI21D1BWP7T35P140 U96 ( .A1(n130), .A2(n125), .B(n55), .ZN(n56) );
  FA1D1BWP7T35P140 U97 ( .A(n58), .B(n57), .CI(n56), .CO(n137), .S(n64) );
  AOI22D1BWP7T35P140 U98 ( .A1(n20), .A2(n30), .B1(n46), .B2(n41), .ZN(n60) );
  AOI22D1BWP7T35P140 U99 ( .A1(n120), .A2(n59), .B1(n115), .B2(n60), .ZN(n63)
         );
  AOI22D1BWP7T35P140 U100 ( .A1(n18), .A2(n30), .B1(n46), .B2(n40), .ZN(n66)
         );
  AOI22D1BWP7T35P140 U101 ( .A1(n120), .A2(n60), .B1(n115), .B2(n66), .ZN(n70)
         );
  AOI22D1BWP7T35P140 U102 ( .A1(n14), .A2(n26), .B1(n44), .B2(n38), .ZN(n67)
         );
  AOI22D1BWP7T35P140 U103 ( .A1(n92), .A2(n61), .B1(n76), .B2(n67), .ZN(n69)
         );
  FA1D1BWP7T35P140 U104 ( .A(n64), .B(n63), .CI(n62), .CO(n154), .S(n158) );
  NR2D1BWP7T35P140 U105 ( .A1(n12), .A2(n34), .ZN(n192) );
  NR2D1BWP7T35P140 U106 ( .A1(n192), .A2(n80), .ZN(n79) );
  AOI22D1BWP7T35P140 U107 ( .A1(n32), .A2(n41), .B1(n20), .B2(n47), .ZN(n74)
         );
  OAI22D1BWP7T35P140 U108 ( .A1(n125), .A2(n74), .B1(n130), .B2(n65), .ZN(n82)
         );
  AOI211D0BWP7T35P140 U109 ( .A1(n37), .A2(n80), .B(n79), .C(n82), .ZN(n81) );
  AOI22D1BWP7T35P140 U110 ( .A1(n16), .A2(n30), .B1(n46), .B2(n39), .ZN(n78)
         );
  AOI22D1BWP7T35P140 U111 ( .A1(n120), .A2(n66), .B1(n115), .B2(n78), .ZN(n85)
         );
  AOI22D1BWP7T35P140 U112 ( .A1(n24), .A2(n26), .B1(n44), .B2(n43), .ZN(n77)
         );
  AOI22D1BWP7T35P140 U113 ( .A1(n92), .A2(n67), .B1(n76), .B2(n77), .ZN(n84)
         );
  AOI221D1BWP7T35P140 U114 ( .A1(n28), .A2(n92), .B1(n10), .B2(n142), .C(n44), 
        .ZN(n91) );
  ND2D1BWP7T35P140 U115 ( .A1(n4), .A2(n12), .ZN(n190) );
  ND2D1BWP7T35P140 U116 ( .A1(n12), .A2(n34), .ZN(n131) );
  OAI22D1BWP7T35P140 U117 ( .A1(n68), .A2(n79), .B1(n22), .B2(n131), .ZN(n90)
         );
  ND2D1BWP7T35P140 U118 ( .A1(n91), .A2(n90), .ZN(n89) );
  FA1D1BWP7T35P140 U119 ( .A(n71), .B(n70), .CI(n69), .CO(n62), .S(n72) );
  FA1D1BWP7T35P140 U120 ( .A(n81), .B(n73), .CI(n72), .CO(n157), .S(n162) );
  AOI22D1BWP7T35P140 U121 ( .A1(n32), .A2(n18), .B1(n40), .B2(n47), .ZN(n94)
         );
  INVD1BWP7T35P140 U122 ( .I(n125), .ZN(n113) );
  MAOI22D1BWP7T35P140 U123 ( .A1(n94), .A2(n113), .B1(n130), .B2(n74), .ZN(n97) );
  AOI22D1BWP7T35P140 U124 ( .A1(n28), .A2(n26), .B1(n44), .B2(n45), .ZN(n75)
         );
  AOI22D1BWP7T35P140 U125 ( .A1(n92), .A2(n77), .B1(n76), .B2(n75), .ZN(n96)
         );
  AOI22D1BWP7T35P140 U126 ( .A1(n14), .A2(n30), .B1(n46), .B2(n38), .ZN(n101)
         );
  AOI22D1BWP7T35P140 U127 ( .A1(n120), .A2(n78), .B1(n115), .B2(n101), .ZN(n95) );
  AO21D1BWP7T35P140 U128 ( .A1(n37), .A2(n80), .B(n79), .Z(n83) );
  AOI21D1BWP7T35P140 U129 ( .A1(n83), .A2(n82), .B(n81), .ZN(n87) );
  FA1D1BWP7T35P140 U130 ( .A(n85), .B(n84), .CI(n89), .CO(n73), .S(n86) );
  FA1D1BWP7T35P140 U131 ( .A(n88), .B(n87), .CI(n86), .CO(n161), .S(n166) );
  OAI21D1BWP7T35P140 U132 ( .A1(n91), .A2(n90), .B(n89), .ZN(n100) );
  ND2D1BWP7T35P140 U133 ( .A1(n28), .A2(n92), .ZN(n104) );
  OAI22D1BWP7T35P140 U134 ( .A1(n20), .A2(n131), .B1(n22), .B2(n190), .ZN(n93)
         );
  AOI21D1BWP7T35P140 U135 ( .A1(n192), .A2(n22), .B(n93), .ZN(n103) );
  AOI22D1BWP7T35P140 U136 ( .A1(n16), .A2(n32), .B1(n47), .B2(n39), .ZN(n112)
         );
  AOI22D1BWP7T35P140 U137 ( .A1(n112), .A2(n113), .B1(n94), .B2(n133), .ZN(
        n102) );
  FA1D1BWP7T35P140 U138 ( .A(n97), .B(n96), .CI(n95), .CO(n88), .S(n98) );
  FA1D1BWP7T35P140 U139 ( .A(n100), .B(n99), .CI(n98), .CO(n165), .S(n170) );
  AOI22D1BWP7T35P140 U140 ( .A1(n24), .A2(n30), .B1(n46), .B2(n43), .ZN(n116)
         );
  AOI22D1BWP7T35P140 U141 ( .A1(n120), .A2(n101), .B1(n115), .B2(n116), .ZN(
        n108) );
  FA1D1BWP7T35P140 U142 ( .A(n104), .B(n103), .CI(n102), .CO(n99), .S(n107) );
  INVD1BWP7T35P140 U143 ( .I(n120), .ZN(n105) );
  AOI221D1BWP7T35P140 U144 ( .A1(n28), .A2(n120), .B1(n8), .B2(n105), .C(n46), 
        .ZN(n111) );
  OAI22D1BWP7T35P140 U145 ( .A1(n20), .A2(n190), .B1(n18), .B2(n131), .ZN(n106) );
  AO21D1BWP7T35P140 U146 ( .A1(n192), .A2(n20), .B(n106), .Z(n110) );
  ND2D1BWP7T35P140 U147 ( .A1(n111), .A2(n110), .ZN(n109) );
  FA1D1BWP7T35P140 U148 ( .A(n108), .B(n107), .CI(n109), .CO(n169), .S(n174)
         );
  OAI21D1BWP7T35P140 U149 ( .A1(n111), .A2(n110), .B(n109), .ZN(n119) );
  AOI22D1BWP7T35P140 U150 ( .A1(n14), .A2(n32), .B1(n47), .B2(n38), .ZN(n122)
         );
  AOI22D1BWP7T35P140 U151 ( .A1(n122), .A2(n113), .B1(n112), .B2(n133), .ZN(
        n118) );
  AOI22D1BWP7T35P140 U152 ( .A1(n28), .A2(n30), .B1(n46), .B2(n45), .ZN(n114)
         );
  AOI22D1BWP7T35P140 U153 ( .A1(n120), .A2(n116), .B1(n115), .B2(n114), .ZN(
        n117) );
  FA1D1BWP7T35P140 U154 ( .A(n119), .B(n118), .CI(n117), .CO(n173), .S(n178)
         );
  ND2D1BWP7T35P140 U155 ( .A1(n28), .A2(n120), .ZN(n136) );
  OAI22D1BWP7T35P140 U156 ( .A1(n16), .A2(n131), .B1(n18), .B2(n190), .ZN(n121) );
  AOI21D1BWP7T35P140 U157 ( .A1(n192), .A2(n18), .B(n121), .ZN(n135) );
  AOI22D1BWP7T35P140 U158 ( .A1(n24), .A2(n47), .B1(n32), .B2(n43), .ZN(n123)
         );
  MAOI22D1BWP7T35P140 U159 ( .A1(n122), .A2(n133), .B1(n125), .B2(n123), .ZN(
        n134) );
  AOI22D1BWP7T35P140 U160 ( .A1(n28), .A2(n47), .B1(n32), .B2(n45), .ZN(n124)
         );
  OAI22D1BWP7T35P140 U161 ( .A1(n125), .A2(n124), .B1(n130), .B2(n123), .ZN(
        n128) );
  OAI22D1BWP7T35P140 U162 ( .A1(n14), .A2(n131), .B1(n16), .B2(n190), .ZN(n126) );
  AO21D1BWP7T35P140 U163 ( .A1(n192), .A2(n16), .B(n126), .Z(n127) );
  ND2D1BWP7T35P140 U164 ( .A1(n127), .A2(n128), .ZN(n181) );
  OAI21D1BWP7T35P140 U165 ( .A1(n128), .A2(n127), .B(n181), .ZN(n185) );
  OAI22D1BWP7T35P140 U166 ( .A1(n24), .A2(n131), .B1(n14), .B2(n190), .ZN(n132) );
  AO21D1BWP7T35P140 U167 ( .A1(n192), .A2(n14), .B(n132), .Z(n188) );
  AOI211D0BWP7T35P140 U168 ( .A1(n4), .A2(n24), .B(n28), .C(n37), .ZN(n193) );
  AO21D1BWP7T35P140 U169 ( .A1(n28), .A2(n133), .B(n193), .Z(n189) );
  ND2D1BWP7T35P140 U170 ( .A1(n188), .A2(n189), .ZN(n187) );
  FA1D1BWP7T35P140 U171 ( .A(n136), .B(n135), .CI(n134), .CO(n177), .S(n180)
         );
  FA1D1BWP7T35P140 U172 ( .A(n139), .B(n138), .CI(n137), .CO(n149), .S(n152)
         );
  AOI21D1BWP7T35P140 U173 ( .A1(n142), .A2(n141), .B(n140), .ZN(n195) );
  FA1D1BWP7T35P140 U174 ( .A(n146), .B(n145), .CI(n144), .CO(n196), .S(n147)
         );
  FA1D1BWP7T35P140 U175 ( .A(n150), .B(n149), .CI(n148), .CO(n144), .S(n151)
         );
  FA1D1BWP7T35P140 U176 ( .A(n154), .B(n153), .CI(n152), .CO(n148), .S(n155)
         );
  FA1D1BWP7T35P140 U177 ( .A(n158), .B(n157), .CI(n156), .CO(n153), .S(n159)
         );
  FA1D1BWP7T35P140 U178 ( .A(n162), .B(n161), .CI(n160), .CO(n156), .S(n163)
         );
  FA1D1BWP7T35P140 U179 ( .A(n166), .B(n165), .CI(n164), .CO(n160), .S(n167)
         );
  FA1D1BWP7T35P140 U180 ( .A(n170), .B(n169), .CI(n168), .CO(n164), .S(n171)
         );
  FA1D1BWP7T35P140 U181 ( .A(n174), .B(n173), .CI(n172), .CO(n168), .S(n175)
         );
  FA1D1BWP7T35P140 U182 ( .A(n178), .B(n177), .CI(n176), .CO(n172), .S(n179)
         );
  FA1D1BWP7T35P140 U183 ( .A(n182), .B(n181), .CI(n180), .CO(n176), .S(n183)
         );
  FA1D1BWP7T35P140 U184 ( .A(n185), .B(n184), .CI(n187), .CO(n182), .S(n186)
         );
  OA21D1BWP7T35P140 U185 ( .A1(n189), .A2(n188), .B(n187), .Z(io_dout[2]) );
  NR2D1BWP7T35P140 U186 ( .A1(n24), .A2(n190), .ZN(n191) );
  AOI21D1BWP7T35P140 U187 ( .A1(n192), .A2(n24), .B(n191), .ZN(n194) );
endmodule

