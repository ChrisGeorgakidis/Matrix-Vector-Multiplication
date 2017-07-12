/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP5-5
// Date      : Sun Jun  4 19:07:49 2017
/////////////////////////////////////////////////////////////


module counter_address_generator_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .A(A[0]), .ZN(SUM[0]) );
  XOR2_X1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module counter_address_generator_0 ( clock, reset, need_to_reset, enable, 
        read_enable, address );
  output [7:0] address;
  input clock, reset, need_to_reset, enable, read_enable;
  wire   n51, n52, n53, n54, n55, n56, n57, n58, N10, N11, N12, N13, N14, N15,
         N16, N17, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  NOR3_X2 U3 ( .A1(reset), .A2(need_to_reset), .A3(n11), .ZN(n10) );
  NOR3_X2 U4 ( .A1(reset), .A2(read_enable), .A3(enable), .ZN(n11) );
  INV_X1 U5 ( .A(n9), .ZN(n51) );
  AOI22_X1 U6 ( .A1(N17), .A2(n10), .B1(address[7]), .B2(n11), .ZN(n9) );
  INV_X1 U7 ( .A(n12), .ZN(n52) );
  AOI22_X1 U8 ( .A1(N16), .A2(n10), .B1(address[6]), .B2(n11), .ZN(n12) );
  INV_X1 U9 ( .A(n13), .ZN(n53) );
  AOI22_X1 U10 ( .A1(N15), .A2(n10), .B1(address[5]), .B2(n11), .ZN(n13) );
  INV_X1 U11 ( .A(n14), .ZN(n54) );
  AOI22_X1 U12 ( .A1(N14), .A2(n10), .B1(address[4]), .B2(n11), .ZN(n14) );
  INV_X1 U13 ( .A(n15), .ZN(n55) );
  AOI22_X1 U14 ( .A1(N13), .A2(n10), .B1(address[3]), .B2(n11), .ZN(n15) );
  INV_X1 U15 ( .A(n16), .ZN(n56) );
  AOI22_X1 U16 ( .A1(N12), .A2(n10), .B1(address[2]), .B2(n11), .ZN(n16) );
  INV_X1 U17 ( .A(n17), .ZN(n57) );
  AOI22_X1 U18 ( .A1(N11), .A2(n10), .B1(address[1]), .B2(n11), .ZN(n17) );
  INV_X1 U19 ( .A(n18), .ZN(n58) );
  AOI22_X1 U20 ( .A1(N10), .A2(n10), .B1(address[0]), .B2(n11), .ZN(n18) );
  DFF_X1 clock_r_REG299_S3 ( .D(n51), .CK(clock), .Q(address[7]) );
  DFF_X1 clock_r_REG298_S3 ( .D(n52), .CK(clock), .Q(address[6]) );
  DFF_X1 clock_r_REG297_S3 ( .D(n53), .CK(clock), .Q(address[5]) );
  DFF_X1 clock_r_REG296_S3 ( .D(n54), .CK(clock), .Q(address[4]) );
  DFF_X1 clock_r_REG295_S3 ( .D(n55), .CK(clock), .Q(address[3]) );
  DFF_X1 clock_r_REG294_S3 ( .D(n56), .CK(clock), .Q(address[2]) );
  DFF_X1 clock_r_REG293_S3 ( .D(n57), .CK(clock), .Q(address[1]) );
  DFF_X1 clock_r_REG292_S3 ( .D(n58), .CK(clock), .Q(address[0]) );
  counter_address_generator_0_DW01_inc_0 add_38 ( .A(address), .SUM({N17, N16, 
        N15, N14, N13, N12, N11, N10}) );
endmodule


module ramA ( clock, write_enable, read_enable, address, datain, dataout );
  input [2:0] address;
  input [7:0] datain;
  output [7:0] dataout;
  input clock, write_enable, read_enable;
  wire   N12, N13, N14, n511, n512, n513, n514, n222, n515, n516, n517,
         \ram[0][7] , \ram[0][6] , \ram[0][5] , \ram[0][4] , \ram[0][3] ,
         \ram[0][2] , \ram[0][1] , \ram[0][0] , \ram[1][7] , \ram[1][6] ,
         \ram[1][5] , \ram[1][4] , \ram[1][3] , \ram[1][2] , \ram[1][1] ,
         \ram[1][0] , \ram[2][7] , \ram[2][6] , \ram[2][5] , \ram[2][4] ,
         \ram[2][3] , \ram[2][2] , \ram[2][1] , \ram[2][0] , \ram[3][7] ,
         \ram[3][6] , \ram[3][5] , \ram[3][4] , \ram[3][3] , \ram[3][2] ,
         \ram[3][1] , \ram[3][0] , \ram[4][7] , \ram[4][6] , \ram[4][5] ,
         \ram[4][4] , \ram[4][3] , \ram[4][2] , \ram[4][1] , \ram[4][0] ,
         \ram[5][7] , \ram[5][6] , \ram[5][5] , \ram[5][4] , \ram[5][3] ,
         \ram[5][2] , \ram[5][1] , \ram[5][0] , \ram[6][7] , \ram[6][6] ,
         \ram[6][5] , \ram[6][4] , \ram[6][3] , \ram[6][2] , \ram[6][1] ,
         \ram[6][0] , \ram[7][7] , \ram[7][6] , \ram[7][5] , \ram[7][4] ,
         \ram[7][3] , \ram[7][2] , \ram[7][1] , \ram[7][0] , N33, N34, N35,
         N36, N37, N38, N39, N40, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n100, n101, n102, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n94, n95, n96, n97, n98, n99, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n199, n200, n201, n202, n203, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n360;
  assign N12 = address[0];
  assign N13 = address[1];
  assign N14 = address[2];
  assign dataout[3] = n360;

  NAND3_X1 U161 ( .A1(N12), .A2(n29), .A3(N13), .ZN(n20) );
  NAND3_X1 U163 ( .A1(n29), .A2(n213), .A3(N12), .ZN(n39) );
  NAND3_X1 U167 ( .A1(N12), .A2(n213), .A3(n66), .ZN(n76) );
  NOR2_X2 U3 ( .A1(n179), .A2(N13), .ZN(n176) );
  NOR2_X2 U4 ( .A1(N13), .A2(N14), .ZN(n173) );
  NOR2_X1 U5 ( .A1(read_enable), .A2(write_enable), .ZN(n1) );
  NOR2_X2 U6 ( .A1(n179), .A2(n213), .ZN(n175) );
  NAND3_X1 U7 ( .A1(n180), .A2(n213), .A3(n66), .ZN(n85) );
  NAND3_X1 U8 ( .A1(n180), .A2(n213), .A3(n29), .ZN(n48) );
  NAND3_X1 U9 ( .A1(N13), .A2(N12), .A3(n66), .ZN(n57) );
  NOR2_X1 U10 ( .A1(n212), .A2(N14), .ZN(n66) );
  INV_X1 U11 ( .A(write_enable), .ZN(n212) );
  NAND3_X1 U12 ( .A1(N13), .A2(n180), .A3(n66), .ZN(n67) );
  NAND3_X1 U13 ( .A1(n29), .A2(n180), .A3(N13), .ZN(n30) );
  NOR2_X2 U14 ( .A1(n213), .A2(N14), .ZN(n172) );
  INV_X1 U15 ( .A(n174), .ZN(n196) );
  INV_X1 U16 ( .A(n97), .ZN(n194) );
  INV_X1 U17 ( .A(n7), .ZN(n190) );
  INV_X1 U18 ( .A(n3), .ZN(n189) );
  INV_X1 U19 ( .A(n11), .ZN(n191) );
  INV_X1 U20 ( .A(n15), .ZN(n192) );
  INV_X1 U21 ( .A(n19), .ZN(n193) );
  INV_X1 U22 ( .A(n168), .ZN(n195) );
  OAI21_X1 U23 ( .B1(n20), .B2(n221), .A(n21), .ZN(\ram[7][0] ) );
  NAND2_X1 U24 ( .A1(n358), .A2(n20), .ZN(n21) );
  OAI21_X1 U25 ( .B1(n20), .B2(n220), .A(n22), .ZN(\ram[7][1] ) );
  NAND2_X1 U26 ( .A1(n357), .A2(n20), .ZN(n22) );
  OAI21_X1 U27 ( .B1(n20), .B2(n219), .A(n23), .ZN(\ram[7][2] ) );
  NAND2_X1 U28 ( .A1(n356), .A2(n20), .ZN(n23) );
  OAI21_X1 U29 ( .B1(n20), .B2(n218), .A(n24), .ZN(\ram[7][3] ) );
  NAND2_X1 U30 ( .A1(n355), .A2(n20), .ZN(n24) );
  OAI21_X1 U31 ( .B1(n20), .B2(n217), .A(n25), .ZN(\ram[7][4] ) );
  NAND2_X1 U32 ( .A1(n354), .A2(n20), .ZN(n25) );
  OAI21_X1 U33 ( .B1(n20), .B2(n216), .A(n26), .ZN(\ram[7][5] ) );
  NAND2_X1 U34 ( .A1(n353), .A2(n20), .ZN(n26) );
  OAI21_X1 U35 ( .B1(n20), .B2(n215), .A(n27), .ZN(\ram[7][6] ) );
  NAND2_X1 U36 ( .A1(n352), .A2(n20), .ZN(n27) );
  OAI21_X1 U37 ( .B1(n20), .B2(n214), .A(n28), .ZN(\ram[7][7] ) );
  NAND2_X1 U38 ( .A1(n351), .A2(n20), .ZN(n28) );
  OAI21_X1 U39 ( .B1(n221), .B2(n76), .A(n77), .ZN(\ram[1][0] ) );
  NAND2_X1 U40 ( .A1(n350), .A2(n76), .ZN(n77) );
  OAI21_X1 U41 ( .B1(n220), .B2(n76), .A(n78), .ZN(\ram[1][1] ) );
  NAND2_X1 U42 ( .A1(n349), .A2(n76), .ZN(n78) );
  OAI21_X1 U43 ( .B1(n219), .B2(n76), .A(n79), .ZN(\ram[1][2] ) );
  NAND2_X1 U44 ( .A1(n348), .A2(n76), .ZN(n79) );
  OAI21_X1 U45 ( .B1(n218), .B2(n76), .A(n80), .ZN(\ram[1][3] ) );
  NAND2_X1 U46 ( .A1(n347), .A2(n76), .ZN(n80) );
  OAI21_X1 U47 ( .B1(n217), .B2(n76), .A(n81), .ZN(\ram[1][4] ) );
  NAND2_X1 U48 ( .A1(n346), .A2(n76), .ZN(n81) );
  OAI21_X1 U49 ( .B1(n216), .B2(n76), .A(n82), .ZN(\ram[1][5] ) );
  NAND2_X1 U50 ( .A1(n345), .A2(n76), .ZN(n82) );
  OAI21_X1 U51 ( .B1(n215), .B2(n76), .A(n83), .ZN(\ram[1][6] ) );
  NAND2_X1 U52 ( .A1(n344), .A2(n76), .ZN(n83) );
  OAI21_X1 U53 ( .B1(n214), .B2(n76), .A(n84), .ZN(\ram[1][7] ) );
  NAND2_X1 U54 ( .A1(n343), .A2(n76), .ZN(n84) );
  OAI21_X1 U55 ( .B1(n221), .B2(n39), .A(n40), .ZN(\ram[5][0] ) );
  NAND2_X1 U56 ( .A1(n342), .A2(n39), .ZN(n40) );
  OAI21_X1 U57 ( .B1(n220), .B2(n39), .A(n41), .ZN(\ram[5][1] ) );
  NAND2_X1 U58 ( .A1(n341), .A2(n39), .ZN(n41) );
  OAI21_X1 U59 ( .B1(n219), .B2(n39), .A(n42), .ZN(\ram[5][2] ) );
  NAND2_X1 U60 ( .A1(n340), .A2(n39), .ZN(n42) );
  OAI21_X1 U61 ( .B1(n218), .B2(n39), .A(n43), .ZN(\ram[5][3] ) );
  NAND2_X1 U62 ( .A1(n339), .A2(n39), .ZN(n43) );
  OAI21_X1 U63 ( .B1(n217), .B2(n39), .A(n44), .ZN(\ram[5][4] ) );
  NAND2_X1 U64 ( .A1(n338), .A2(n39), .ZN(n44) );
  OAI21_X1 U65 ( .B1(n216), .B2(n39), .A(n45), .ZN(\ram[5][5] ) );
  NAND2_X1 U66 ( .A1(n337), .A2(n39), .ZN(n45) );
  OAI21_X1 U67 ( .B1(n215), .B2(n39), .A(n46), .ZN(\ram[5][6] ) );
  NAND2_X1 U68 ( .A1(n336), .A2(n39), .ZN(n46) );
  OAI21_X1 U69 ( .B1(n214), .B2(n39), .A(n47), .ZN(\ram[5][7] ) );
  NAND2_X1 U70 ( .A1(n335), .A2(n39), .ZN(n47) );
  INV_X1 U71 ( .A(N12), .ZN(n180) );
  INV_X1 U72 ( .A(N13), .ZN(n213) );
  AND2_X1 U73 ( .A1(write_enable), .A2(N14), .ZN(n29) );
  OAI21_X1 U74 ( .B1(n221), .B2(n57), .A(n58), .ZN(\ram[3][0] ) );
  NAND2_X1 U75 ( .A1(n334), .A2(n57), .ZN(n58) );
  OAI21_X1 U76 ( .B1(n220), .B2(n57), .A(n59), .ZN(\ram[3][1] ) );
  NAND2_X1 U77 ( .A1(n333), .A2(n57), .ZN(n59) );
  OAI21_X1 U78 ( .B1(n219), .B2(n57), .A(n60), .ZN(\ram[3][2] ) );
  NAND2_X1 U79 ( .A1(n332), .A2(n57), .ZN(n60) );
  OAI21_X1 U80 ( .B1(n218), .B2(n57), .A(n61), .ZN(\ram[3][3] ) );
  NAND2_X1 U81 ( .A1(n331), .A2(n57), .ZN(n61) );
  OAI21_X1 U82 ( .B1(n217), .B2(n57), .A(n62), .ZN(\ram[3][4] ) );
  NAND2_X1 U83 ( .A1(n330), .A2(n57), .ZN(n62) );
  OAI21_X1 U84 ( .B1(n216), .B2(n57), .A(n63), .ZN(\ram[3][5] ) );
  NAND2_X1 U85 ( .A1(n329), .A2(n57), .ZN(n63) );
  OAI21_X1 U86 ( .B1(n215), .B2(n57), .A(n64), .ZN(\ram[3][6] ) );
  NAND2_X1 U87 ( .A1(n328), .A2(n57), .ZN(n64) );
  OAI21_X1 U88 ( .B1(n214), .B2(n57), .A(n65), .ZN(\ram[3][7] ) );
  NAND2_X1 U89 ( .A1(n327), .A2(n57), .ZN(n65) );
  OAI21_X1 U90 ( .B1(n221), .B2(n67), .A(n68), .ZN(\ram[2][0] ) );
  NAND2_X1 U91 ( .A1(n326), .A2(n67), .ZN(n68) );
  OAI21_X1 U92 ( .B1(n220), .B2(n67), .A(n69), .ZN(\ram[2][1] ) );
  NAND2_X1 U93 ( .A1(n325), .A2(n67), .ZN(n69) );
  OAI21_X1 U94 ( .B1(n219), .B2(n67), .A(n70), .ZN(\ram[2][2] ) );
  NAND2_X1 U95 ( .A1(n324), .A2(n67), .ZN(n70) );
  OAI21_X1 U96 ( .B1(n218), .B2(n67), .A(n71), .ZN(\ram[2][3] ) );
  NAND2_X1 U97 ( .A1(n323), .A2(n67), .ZN(n71) );
  OAI21_X1 U98 ( .B1(n217), .B2(n67), .A(n72), .ZN(\ram[2][4] ) );
  NAND2_X1 U99 ( .A1(n322), .A2(n67), .ZN(n72) );
  OAI21_X1 U100 ( .B1(n216), .B2(n67), .A(n73), .ZN(\ram[2][5] ) );
  NAND2_X1 U101 ( .A1(n321), .A2(n67), .ZN(n73) );
  OAI21_X1 U102 ( .B1(n215), .B2(n67), .A(n74), .ZN(\ram[2][6] ) );
  NAND2_X1 U103 ( .A1(n320), .A2(n67), .ZN(n74) );
  OAI21_X1 U104 ( .B1(n214), .B2(n67), .A(n75), .ZN(\ram[2][7] ) );
  NAND2_X1 U105 ( .A1(n319), .A2(n67), .ZN(n75) );
  OAI21_X1 U106 ( .B1(n221), .B2(n30), .A(n31), .ZN(\ram[6][0] ) );
  NAND2_X1 U107 ( .A1(n318), .A2(n30), .ZN(n31) );
  OAI21_X1 U108 ( .B1(n220), .B2(n30), .A(n32), .ZN(\ram[6][1] ) );
  NAND2_X1 U109 ( .A1(n317), .A2(n30), .ZN(n32) );
  OAI21_X1 U110 ( .B1(n219), .B2(n30), .A(n33), .ZN(\ram[6][2] ) );
  NAND2_X1 U111 ( .A1(n316), .A2(n30), .ZN(n33) );
  OAI21_X1 U112 ( .B1(n218), .B2(n30), .A(n34), .ZN(\ram[6][3] ) );
  NAND2_X1 U113 ( .A1(n315), .A2(n30), .ZN(n34) );
  OAI21_X1 U114 ( .B1(n217), .B2(n30), .A(n35), .ZN(\ram[6][4] ) );
  NAND2_X1 U115 ( .A1(n314), .A2(n30), .ZN(n35) );
  OAI21_X1 U116 ( .B1(n216), .B2(n30), .A(n36), .ZN(\ram[6][5] ) );
  NAND2_X1 U117 ( .A1(n313), .A2(n30), .ZN(n36) );
  OAI21_X1 U118 ( .B1(n215), .B2(n30), .A(n37), .ZN(\ram[6][6] ) );
  NAND2_X1 U119 ( .A1(n312), .A2(n30), .ZN(n37) );
  OAI21_X1 U120 ( .B1(n214), .B2(n30), .A(n38), .ZN(\ram[6][7] ) );
  NAND2_X1 U121 ( .A1(n311), .A2(n30), .ZN(n38) );
  OAI21_X1 U122 ( .B1(n221), .B2(n85), .A(n86), .ZN(\ram[0][0] ) );
  NAND2_X1 U123 ( .A1(n310), .A2(n85), .ZN(n86) );
  OAI21_X1 U124 ( .B1(n220), .B2(n85), .A(n87), .ZN(\ram[0][1] ) );
  NAND2_X1 U125 ( .A1(n309), .A2(n85), .ZN(n87) );
  OAI21_X1 U126 ( .B1(n219), .B2(n85), .A(n88), .ZN(\ram[0][2] ) );
  NAND2_X1 U127 ( .A1(n308), .A2(n85), .ZN(n88) );
  OAI21_X1 U128 ( .B1(n218), .B2(n85), .A(n89), .ZN(\ram[0][3] ) );
  NAND2_X1 U129 ( .A1(n307), .A2(n85), .ZN(n89) );
  OAI21_X1 U130 ( .B1(n217), .B2(n85), .A(n90), .ZN(\ram[0][4] ) );
  NAND2_X1 U131 ( .A1(n306), .A2(n85), .ZN(n90) );
  OAI21_X1 U132 ( .B1(n216), .B2(n85), .A(n91), .ZN(\ram[0][5] ) );
  NAND2_X1 U133 ( .A1(n305), .A2(n85), .ZN(n91) );
  OAI21_X1 U134 ( .B1(n215), .B2(n85), .A(n92), .ZN(\ram[0][6] ) );
  NAND2_X1 U135 ( .A1(n304), .A2(n85), .ZN(n92) );
  OAI21_X1 U136 ( .B1(n214), .B2(n85), .A(n93), .ZN(\ram[0][7] ) );
  NAND2_X1 U137 ( .A1(n303), .A2(n85), .ZN(n93) );
  OAI21_X1 U138 ( .B1(n221), .B2(n48), .A(n49), .ZN(\ram[4][0] ) );
  NAND2_X1 U139 ( .A1(n302), .A2(n48), .ZN(n49) );
  OAI21_X1 U140 ( .B1(n220), .B2(n48), .A(n50), .ZN(\ram[4][1] ) );
  NAND2_X1 U141 ( .A1(n301), .A2(n48), .ZN(n50) );
  OAI21_X1 U142 ( .B1(n219), .B2(n48), .A(n51), .ZN(\ram[4][2] ) );
  NAND2_X1 U143 ( .A1(n300), .A2(n48), .ZN(n51) );
  OAI21_X1 U144 ( .B1(n218), .B2(n48), .A(n52), .ZN(\ram[4][3] ) );
  NAND2_X1 U145 ( .A1(n299), .A2(n48), .ZN(n52) );
  OAI21_X1 U146 ( .B1(n217), .B2(n48), .A(n53), .ZN(\ram[4][4] ) );
  NAND2_X1 U147 ( .A1(n298), .A2(n48), .ZN(n53) );
  OAI21_X1 U148 ( .B1(n216), .B2(n48), .A(n54), .ZN(\ram[4][5] ) );
  NAND2_X1 U149 ( .A1(n297), .A2(n48), .ZN(n54) );
  OAI21_X1 U150 ( .B1(n215), .B2(n48), .A(n55), .ZN(\ram[4][6] ) );
  NAND2_X1 U151 ( .A1(n296), .A2(n48), .ZN(n55) );
  OAI21_X1 U152 ( .B1(n214), .B2(n48), .A(n56), .ZN(\ram[4][7] ) );
  NAND2_X1 U153 ( .A1(n295), .A2(n48), .ZN(n56) );
  INV_X1 U154 ( .A(N14), .ZN(n179) );
  INV_X1 U155 ( .A(n171), .ZN(n188) );
  INV_X1 U156 ( .A(n96), .ZN(n186) );
  INV_X1 U157 ( .A(n6), .ZN(n182) );
  INV_X1 U158 ( .A(n2), .ZN(n181) );
  INV_X1 U159 ( .A(n10), .ZN(n183) );
  INV_X1 U160 ( .A(n14), .ZN(n184) );
  INV_X1 U162 ( .A(n18), .ZN(n185) );
  INV_X1 U164 ( .A(n167), .ZN(n187) );
  INV_X1 U165 ( .A(n101), .ZN(n512) );
  AOI22_X1 U166 ( .A1(N34), .A2(read_enable), .B1(dataout[6]), .B2(n1), .ZN(
        n101) );
  INV_X1 U168 ( .A(datain[0]), .ZN(n221) );
  INV_X1 U169 ( .A(datain[1]), .ZN(n220) );
  INV_X1 U170 ( .A(datain[2]), .ZN(n219) );
  INV_X1 U171 ( .A(datain[3]), .ZN(n218) );
  INV_X1 U172 ( .A(datain[4]), .ZN(n217) );
  INV_X1 U173 ( .A(datain[5]), .ZN(n216) );
  INV_X1 U174 ( .A(datain[6]), .ZN(n215) );
  INV_X1 U175 ( .A(datain[7]), .ZN(n214) );
  AOI22_X1 U176 ( .A1(n350), .A2(n173), .B1(n334), .B2(n172), .ZN(n2) );
  AOI221_X1 U177 ( .B1(n342), .B2(n176), .C1(n358), .C2(n175), .A(n181), .ZN(
        n5) );
  AOI22_X1 U178 ( .A1(n310), .A2(n173), .B1(n326), .B2(n172), .ZN(n3) );
  AOI221_X1 U179 ( .B1(n302), .B2(n176), .C1(n318), .C2(n175), .A(n189), .ZN(
        n4) );
  OAI22_X1 U180 ( .A1(n180), .A2(n5), .B1(N12), .B2(n4), .ZN(N40) );
  AOI22_X1 U181 ( .A1(n349), .A2(n173), .B1(n333), .B2(n172), .ZN(n6) );
  AOI221_X1 U182 ( .B1(n341), .B2(n176), .C1(n357), .C2(n175), .A(n182), .ZN(
        n9) );
  AOI22_X1 U183 ( .A1(n309), .A2(n173), .B1(n325), .B2(n172), .ZN(n7) );
  AOI221_X1 U184 ( .B1(n301), .B2(n176), .C1(n317), .C2(n175), .A(n190), .ZN(
        n8) );
  OAI22_X1 U185 ( .A1(n180), .A2(n9), .B1(N12), .B2(n8), .ZN(N39) );
  AOI22_X1 U186 ( .A1(n348), .A2(n173), .B1(n332), .B2(n172), .ZN(n10) );
  AOI221_X1 U187 ( .B1(n340), .B2(n176), .C1(n356), .C2(n175), .A(n183), .ZN(
        n13) );
  AOI22_X1 U188 ( .A1(n308), .A2(n173), .B1(n324), .B2(n172), .ZN(n11) );
  AOI221_X1 U189 ( .B1(n300), .B2(n176), .C1(n316), .C2(n175), .A(n191), .ZN(
        n12) );
  OAI22_X1 U190 ( .A1(n180), .A2(n13), .B1(N12), .B2(n12), .ZN(N38) );
  AOI22_X1 U191 ( .A1(n347), .A2(n173), .B1(n331), .B2(n172), .ZN(n14) );
  AOI221_X1 U192 ( .B1(n339), .B2(n176), .C1(n355), .C2(n175), .A(n184), .ZN(
        n17) );
  AOI22_X1 U193 ( .A1(n307), .A2(n173), .B1(n323), .B2(n172), .ZN(n15) );
  AOI221_X1 U194 ( .B1(n299), .B2(n176), .C1(n315), .C2(n175), .A(n192), .ZN(
        n16) );
  OAI22_X1 U195 ( .A1(n180), .A2(n17), .B1(N12), .B2(n16), .ZN(N37) );
  AOI22_X1 U196 ( .A1(n346), .A2(n173), .B1(n330), .B2(n172), .ZN(n18) );
  AOI221_X1 U197 ( .B1(n338), .B2(n176), .C1(n354), .C2(n175), .A(n185), .ZN(
        n95) );
  AOI22_X1 U198 ( .A1(n306), .A2(n173), .B1(n322), .B2(n172), .ZN(n19) );
  AOI221_X1 U199 ( .B1(n298), .B2(n176), .C1(n314), .C2(n175), .A(n193), .ZN(
        n94) );
  OAI22_X1 U200 ( .A1(n180), .A2(n95), .B1(N12), .B2(n94), .ZN(N36) );
  AOI22_X1 U201 ( .A1(n345), .A2(n173), .B1(n329), .B2(n172), .ZN(n96) );
  AOI221_X1 U202 ( .B1(n337), .B2(n176), .C1(n353), .C2(n175), .A(n186), .ZN(
        n99) );
  AOI22_X1 U203 ( .A1(n305), .A2(n173), .B1(n321), .B2(n172), .ZN(n97) );
  AOI221_X1 U204 ( .B1(n297), .B2(n176), .C1(n313), .C2(n175), .A(n194), .ZN(
        n98) );
  OAI22_X1 U205 ( .A1(n180), .A2(n99), .B1(N12), .B2(n98), .ZN(N35) );
  AOI22_X1 U206 ( .A1(n344), .A2(n173), .B1(n328), .B2(n172), .ZN(n167) );
  AOI221_X1 U207 ( .B1(n336), .B2(n176), .C1(n352), .C2(n175), .A(n187), .ZN(
        n170) );
  AOI22_X1 U208 ( .A1(n304), .A2(n173), .B1(n320), .B2(n172), .ZN(n168) );
  AOI221_X1 U209 ( .B1(n296), .B2(n176), .C1(n312), .C2(n175), .A(n195), .ZN(
        n169) );
  OAI22_X1 U210 ( .A1(n180), .A2(n170), .B1(N12), .B2(n169), .ZN(N34) );
  AOI22_X1 U211 ( .A1(n343), .A2(n173), .B1(n327), .B2(n172), .ZN(n171) );
  AOI221_X1 U212 ( .B1(n335), .B2(n176), .C1(n351), .C2(n175), .A(n188), .ZN(
        n178) );
  AOI22_X1 U213 ( .A1(n303), .A2(n173), .B1(n319), .B2(n172), .ZN(n174) );
  AOI221_X1 U214 ( .B1(n295), .B2(n176), .C1(n311), .C2(n175), .A(n196), .ZN(
        n177) );
  OAI22_X1 U215 ( .A1(n178), .A2(n180), .B1(N12), .B2(n177), .ZN(N33) );
  INV_X1 U216 ( .A(n102), .ZN(n511) );
  INV_X1 U218 ( .A(n100), .ZN(n513) );
  AOI22_X1 U219 ( .A1(N33), .A2(read_enable), .B1(dataout[7]), .B2(n1), .ZN(
        n102) );
  AOI22_X1 U220 ( .A1(N35), .A2(read_enable), .B1(dataout[5]), .B2(n1), .ZN(
        n100) );
  AOI22_X1 U221 ( .A1(N40), .A2(read_enable), .B1(dataout[0]), .B2(n1), .ZN(
        n199) );
  INV_X1 U222 ( .A(n199), .ZN(n517) );
  AOI22_X1 U223 ( .A1(N39), .A2(read_enable), .B1(dataout[1]), .B2(n1), .ZN(
        n200) );
  INV_X1 U224 ( .A(n200), .ZN(n516) );
  AOI22_X1 U225 ( .A1(N38), .A2(read_enable), .B1(dataout[2]), .B2(n1), .ZN(
        n201) );
  INV_X1 U226 ( .A(n201), .ZN(n515) );
  AOI22_X1 U227 ( .A1(N37), .A2(read_enable), .B1(n360), .B2(n1), .ZN(n202) );
  INV_X1 U228 ( .A(n202), .ZN(n222) );
  AOI22_X1 U229 ( .A1(N36), .A2(read_enable), .B1(dataout[4]), .B2(n1), .ZN(
        n203) );
  INV_X1 U230 ( .A(n203), .ZN(n514) );
  DFF_X1 clock_r_REG209_S3 ( .D(n512), .CK(clock), .Q(dataout[6]) );
  DFF_X1 clock_r_REG202_S3 ( .D(n511), .CK(clock), .Q(dataout[7]) );
  DFF_X1 clock_r_REG213_S3 ( .D(n513), .CK(clock), .Q(dataout[5]) );
  DFF_X1 clock_r_REG233_S3 ( .D(n517), .CK(clock), .Q(dataout[0]) );
  DFF_X1 clock_r_REG229_S3 ( .D(n516), .CK(clock), .Q(dataout[1]) );
  DFF_X1 clock_r_REG225_S3 ( .D(n515), .CK(clock), .Q(dataout[2]) );
  DFF_X1 clock_r_REG221_S3 ( .D(n222), .CK(clock), .Q(n360) );
  DFF_X1 clock_r_REG217_S3 ( .D(n514), .CK(clock), .Q(dataout[4]) );
  DFF_X1 clock_r_REG232_S2 ( .D(\ram[7][0] ), .CK(clock), .Q(n358) );
  DFF_X1 clock_r_REG228_S2 ( .D(\ram[7][1] ), .CK(clock), .Q(n357) );
  DFF_X1 clock_r_REG224_S2 ( .D(\ram[7][2] ), .CK(clock), .Q(n356) );
  DFF_X1 clock_r_REG220_S2 ( .D(\ram[7][3] ), .CK(clock), .Q(n355) );
  DFF_X1 clock_r_REG216_S2 ( .D(\ram[7][4] ), .CK(clock), .Q(n354) );
  DFF_X1 clock_r_REG212_S2 ( .D(\ram[7][5] ), .CK(clock), .Q(n353) );
  DFF_X1 clock_r_REG208_S2 ( .D(\ram[7][6] ), .CK(clock), .Q(n352) );
  DFF_X1 clock_r_REG201_S2 ( .D(\ram[7][7] ), .CK(clock), .Q(n351) );
  DFF_X1 clock_r_REG267_S2 ( .D(\ram[1][0] ), .CK(clock), .Q(n350) );
  DFF_X1 clock_r_REG266_S2 ( .D(\ram[1][1] ), .CK(clock), .Q(n349) );
  DFF_X1 clock_r_REG265_S2 ( .D(\ram[1][2] ), .CK(clock), .Q(n348) );
  DFF_X1 clock_r_REG264_S2 ( .D(\ram[1][3] ), .CK(clock), .Q(n347) );
  DFF_X1 clock_r_REG263_S2 ( .D(\ram[1][4] ), .CK(clock), .Q(n346) );
  DFF_X1 clock_r_REG262_S2 ( .D(\ram[1][5] ), .CK(clock), .Q(n345) );
  DFF_X1 clock_r_REG261_S2 ( .D(\ram[1][6] ), .CK(clock), .Q(n344) );
  DFF_X1 clock_r_REG260_S2 ( .D(\ram[1][7] ), .CK(clock), .Q(n343) );
  DFF_X1 clock_r_REG243_S2 ( .D(\ram[5][0] ), .CK(clock), .Q(n342) );
  DFF_X1 clock_r_REG242_S2 ( .D(\ram[5][1] ), .CK(clock), .Q(n341) );
  DFF_X1 clock_r_REG241_S2 ( .D(\ram[5][2] ), .CK(clock), .Q(n340) );
  DFF_X1 clock_r_REG240_S2 ( .D(\ram[5][3] ), .CK(clock), .Q(n339) );
  DFF_X1 clock_r_REG239_S2 ( .D(\ram[5][4] ), .CK(clock), .Q(n338) );
  DFF_X1 clock_r_REG238_S2 ( .D(\ram[5][5] ), .CK(clock), .Q(n337) );
  DFF_X1 clock_r_REG237_S2 ( .D(\ram[5][6] ), .CK(clock), .Q(n336) );
  DFF_X1 clock_r_REG236_S2 ( .D(\ram[5][7] ), .CK(clock), .Q(n335) );
  DFF_X1 clock_r_REG283_S2 ( .D(\ram[3][0] ), .CK(clock), .Q(n334) );
  DFF_X1 clock_r_REG282_S2 ( .D(\ram[3][1] ), .CK(clock), .Q(n333) );
  DFF_X1 clock_r_REG281_S2 ( .D(\ram[3][2] ), .CK(clock), .Q(n332) );
  DFF_X1 clock_r_REG280_S2 ( .D(\ram[3][3] ), .CK(clock), .Q(n331) );
  DFF_X1 clock_r_REG279_S2 ( .D(\ram[3][4] ), .CK(clock), .Q(n330) );
  DFF_X1 clock_r_REG278_S2 ( .D(\ram[3][5] ), .CK(clock), .Q(n329) );
  DFF_X1 clock_r_REG277_S2 ( .D(\ram[3][6] ), .CK(clock), .Q(n328) );
  DFF_X1 clock_r_REG276_S2 ( .D(\ram[3][7] ), .CK(clock), .Q(n327) );
  DFF_X1 clock_r_REG275_S2 ( .D(\ram[2][0] ), .CK(clock), .Q(n326) );
  DFF_X1 clock_r_REG274_S2 ( .D(\ram[2][1] ), .CK(clock), .Q(n325) );
  DFF_X1 clock_r_REG273_S2 ( .D(\ram[2][2] ), .CK(clock), .Q(n324) );
  DFF_X1 clock_r_REG272_S2 ( .D(\ram[2][3] ), .CK(clock), .Q(n323) );
  DFF_X1 clock_r_REG271_S2 ( .D(\ram[2][4] ), .CK(clock), .Q(n322) );
  DFF_X1 clock_r_REG270_S2 ( .D(\ram[2][5] ), .CK(clock), .Q(n321) );
  DFF_X1 clock_r_REG269_S2 ( .D(\ram[2][6] ), .CK(clock), .Q(n320) );
  DFF_X1 clock_r_REG268_S2 ( .D(\ram[2][7] ), .CK(clock), .Q(n319) );
  DFF_X1 clock_r_REG251_S2 ( .D(\ram[6][0] ), .CK(clock), .Q(n318) );
  DFF_X1 clock_r_REG250_S2 ( .D(\ram[6][1] ), .CK(clock), .Q(n317) );
  DFF_X1 clock_r_REG249_S2 ( .D(\ram[6][2] ), .CK(clock), .Q(n316) );
  DFF_X1 clock_r_REG248_S2 ( .D(\ram[6][3] ), .CK(clock), .Q(n315) );
  DFF_X1 clock_r_REG247_S2 ( .D(\ram[6][4] ), .CK(clock), .Q(n314) );
  DFF_X1 clock_r_REG246_S2 ( .D(\ram[6][5] ), .CK(clock), .Q(n313) );
  DFF_X1 clock_r_REG245_S2 ( .D(\ram[6][6] ), .CK(clock), .Q(n312) );
  DFF_X1 clock_r_REG244_S2 ( .D(\ram[6][7] ), .CK(clock), .Q(n311) );
  DFF_X1 clock_r_REG291_S2 ( .D(\ram[0][0] ), .CK(clock), .Q(n310) );
  DFF_X1 clock_r_REG290_S2 ( .D(\ram[0][1] ), .CK(clock), .Q(n309) );
  DFF_X1 clock_r_REG289_S2 ( .D(\ram[0][2] ), .CK(clock), .Q(n308) );
  DFF_X1 clock_r_REG288_S2 ( .D(\ram[0][3] ), .CK(clock), .Q(n307) );
  DFF_X1 clock_r_REG287_S2 ( .D(\ram[0][4] ), .CK(clock), .Q(n306) );
  DFF_X1 clock_r_REG286_S2 ( .D(\ram[0][5] ), .CK(clock), .Q(n305) );
  DFF_X1 clock_r_REG285_S2 ( .D(\ram[0][6] ), .CK(clock), .Q(n304) );
  DFF_X1 clock_r_REG284_S2 ( .D(\ram[0][7] ), .CK(clock), .Q(n303) );
  DFF_X1 clock_r_REG259_S2 ( .D(\ram[4][0] ), .CK(clock), .Q(n302) );
  DFF_X1 clock_r_REG258_S2 ( .D(\ram[4][1] ), .CK(clock), .Q(n301) );
  DFF_X1 clock_r_REG257_S2 ( .D(\ram[4][2] ), .CK(clock), .Q(n300) );
  DFF_X1 clock_r_REG256_S2 ( .D(\ram[4][3] ), .CK(clock), .Q(n299) );
  DFF_X1 clock_r_REG255_S2 ( .D(\ram[4][4] ), .CK(clock), .Q(n298) );
  DFF_X1 clock_r_REG254_S2 ( .D(\ram[4][5] ), .CK(clock), .Q(n297) );
  DFF_X1 clock_r_REG253_S2 ( .D(\ram[4][6] ), .CK(clock), .Q(n296) );
  DFF_X1 clock_r_REG252_S2 ( .D(\ram[4][7] ), .CK(clock), .Q(n295) );
endmodule


module counter_address_generator_2_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .A(A[0]), .ZN(SUM[0]) );
  XOR2_X1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module counter_address_generator_2 ( clock, reset, need_to_reset, enable, 
        read_enable, address );
  output [7:0] address;
  input clock, reset, need_to_reset, enable, read_enable;
  wire   n61, n62, n63, n64, n65, n66, n67, n68, N10, N11, N12, N13, N14, N15,
         N16, N17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  NOR3_X2 U3 ( .A1(reset), .A2(need_to_reset), .A3(n26), .ZN(n27) );
  NOR3_X2 U4 ( .A1(reset), .A2(read_enable), .A3(enable), .ZN(n26) );
  INV_X1 U5 ( .A(n28), .ZN(n61) );
  AOI22_X1 U6 ( .A1(N17), .A2(n27), .B1(address[7]), .B2(n26), .ZN(n28) );
  INV_X1 U7 ( .A(n25), .ZN(n62) );
  AOI22_X1 U8 ( .A1(N16), .A2(n27), .B1(address[6]), .B2(n26), .ZN(n25) );
  INV_X1 U9 ( .A(n24), .ZN(n63) );
  AOI22_X1 U10 ( .A1(N15), .A2(n27), .B1(address[5]), .B2(n26), .ZN(n24) );
  INV_X1 U11 ( .A(n23), .ZN(n64) );
  AOI22_X1 U12 ( .A1(N14), .A2(n27), .B1(address[4]), .B2(n26), .ZN(n23) );
  INV_X1 U13 ( .A(n22), .ZN(n65) );
  AOI22_X1 U14 ( .A1(N13), .A2(n27), .B1(address[3]), .B2(n26), .ZN(n22) );
  INV_X1 U15 ( .A(n21), .ZN(n66) );
  AOI22_X1 U16 ( .A1(N12), .A2(n27), .B1(address[2]), .B2(n26), .ZN(n21) );
  INV_X1 U17 ( .A(n20), .ZN(n67) );
  AOI22_X1 U18 ( .A1(N11), .A2(n27), .B1(address[1]), .B2(n26), .ZN(n20) );
  INV_X1 U19 ( .A(n19), .ZN(n68) );
  AOI22_X1 U20 ( .A1(N10), .A2(n27), .B1(address[0]), .B2(n26), .ZN(n19) );
  DFF_X1 clock_r_REG313_S2 ( .D(n61), .CK(clock), .Q(address[7]) );
  DFF_X1 clock_r_REG312_S2 ( .D(n62), .CK(clock), .Q(address[6]) );
  DFF_X1 clock_r_REG311_S2 ( .D(n63), .CK(clock), .Q(address[5]) );
  DFF_X1 clock_r_REG310_S2 ( .D(n64), .CK(clock), .Q(address[4]) );
  DFF_X1 clock_r_REG309_S2 ( .D(n65), .CK(clock), .Q(address[3]) );
  DFF_X1 clock_r_REG308_S2 ( .D(n66), .CK(clock), .Q(address[2]) );
  DFF_X1 clock_r_REG307_S2 ( .D(n67), .CK(clock), .Q(address[1]) );
  DFF_X1 clock_r_REG22_S2 ( .D(n68), .CK(clock), .Q(address[0]) );
  counter_address_generator_2_DW01_inc_0 add_38 ( .A(address), .SUM({N17, N16, 
        N15, N14, N13, N12, N11, N10}) );
endmodule


module rom ( clock, address, rom_enable, data );
  input [5:0] address;
  output [7:0] data;
  input clock, rom_enable;
  wire   rom_enable;
  assign data[7] = rom_enable;

endmodule


module mac_DW01_add_1 ( A, B, CI, SUM, CO, clock );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI, clock;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n20, n21, n22, n23, n25, n27, n28, n29, n30, n31, n33, n35, n36,
         n37, n38, n39, n43, n44, n45, n46, n47, n51, n52, n53, n54, n55, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n90, n92, n95, n97, n99, n105, n106, n109, n110, \A[0] , n178,
         n180, n181, n182, n183, n186, n188, n189, n190, n191, n192, n193,
         n194, n195, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n238,
         n239, n240, n241, n242, n243;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  OR2_X1 U138 ( .A1(A[5]), .A2(B[5]), .ZN(n178) );
  NOR2_X1 U140 ( .A1(A[7]), .A2(B[7]), .ZN(n180) );
  AOI21_X1 U141 ( .B1(n44), .B2(n220), .A(n238), .ZN(n181) );
  NOR2_X1 U142 ( .A1(A[7]), .A2(B[7]), .ZN(n65) );
  OAI21_X1 U143 ( .B1(n181), .B2(n37), .A(n38), .ZN(n182) );
  OAI21_X1 U144 ( .B1(n39), .B2(n37), .A(n38), .ZN(n183) );
  OAI21_X1 U145 ( .B1(n39), .B2(n37), .A(n38), .ZN(n36) );
  AOI21_X1 U148 ( .B1(n36), .B2(n194), .A(n33), .ZN(n186) );
  OAI21_X1 U150 ( .B1(n186), .B2(n29), .A(n30), .ZN(n188) );
  AOI21_X1 U151 ( .B1(n28), .B2(n195), .A(n25), .ZN(n189) );
  INV_X1 U153 ( .A(n35), .ZN(n33) );
  INV_X1 U155 ( .A(n27), .ZN(n25) );
  NOR2_X1 U156 ( .A1(n68), .A2(n180), .ZN(n63) );
  NAND2_X1 U158 ( .A1(n242), .A2(n224), .ZN(n10) );
  NAND2_X1 U160 ( .A1(n239), .A2(n225), .ZN(n8) );
  NAND2_X1 U162 ( .A1(n99), .A2(n38), .ZN(n6) );
  INV_X1 U163 ( .A(n37), .ZN(n99) );
  NAND2_X1 U164 ( .A1(n95), .A2(n22), .ZN(n2) );
  INV_X1 U165 ( .A(n21), .ZN(n95) );
  NAND2_X1 U166 ( .A1(n97), .A2(n30), .ZN(n4) );
  INV_X1 U167 ( .A(n29), .ZN(n97) );
  XOR2_X1 U168 ( .A(n75), .B(n14), .Z(SUM[5]) );
  NAND2_X1 U169 ( .A1(n178), .A2(n74), .ZN(n14) );
  AOI21_X1 U170 ( .B1(n80), .B2(n76), .A(n77), .ZN(n75) );
  INV_X1 U171 ( .A(n78), .ZN(n76) );
  NAND2_X1 U172 ( .A1(n220), .A2(n227), .ZN(n7) );
  NAND2_X1 U173 ( .A1(n195), .A2(n27), .ZN(n3) );
  NAND2_X1 U174 ( .A1(n219), .A2(n226), .ZN(n11) );
  NAND2_X1 U175 ( .A1(n194), .A2(n35), .ZN(n5) );
  NAND2_X1 U176 ( .A1(n221), .A2(n228), .ZN(n9) );
  XOR2_X1 U177 ( .A(n92), .B(n17), .Z(SUM[2]) );
  XOR2_X1 U178 ( .A(n70), .B(n13), .Z(SUM[6]) );
  NAND2_X1 U179 ( .A1(n106), .A2(n69), .ZN(n13) );
  XNOR2_X1 U180 ( .A(n67), .B(n12), .ZN(SUM[7]) );
  NAND2_X1 U181 ( .A1(n105), .A2(n66), .ZN(n12) );
  XNOR2_X1 U182 ( .A(n80), .B(n15), .ZN(SUM[4]) );
  NAND2_X1 U183 ( .A1(n76), .A2(n79), .ZN(n15) );
  XNOR2_X1 U184 ( .A(n86), .B(n16), .ZN(SUM[3]) );
  NAND2_X1 U185 ( .A1(n109), .A2(n85), .ZN(n16) );
  INV_X1 U186 ( .A(n79), .ZN(n77) );
  XNOR2_X1 U187 ( .A(B[18]), .B(n236), .ZN(n190) );
  NOR2_X1 U188 ( .A1(A[3]), .A2(B[3]), .ZN(n84) );
  NOR2_X1 U189 ( .A1(A[2]), .A2(B[2]), .ZN(n87) );
  NAND2_X1 U190 ( .A1(A[10]), .A2(B[10]), .ZN(n51) );
  NAND2_X1 U191 ( .A1(A[12]), .A2(B[12]), .ZN(n43) );
  NAND2_X1 U192 ( .A1(A[8]), .A2(B[8]), .ZN(n59) );
  NAND2_X1 U193 ( .A1(n232), .A2(n230), .ZN(n35) );
  NAND2_X1 U194 ( .A1(n234), .A2(B[16]), .ZN(n27) );
  NAND2_X1 U195 ( .A1(n231), .A2(n229), .ZN(n38) );
  NAND2_X1 U196 ( .A1(A[11]), .A2(B[11]), .ZN(n46) );
  NAND2_X1 U197 ( .A1(A[9]), .A2(B[9]), .ZN(n54) );
  NAND2_X1 U198 ( .A1(n233), .A2(B[15]), .ZN(n30) );
  NAND2_X1 U199 ( .A1(n235), .A2(B[17]), .ZN(n22) );
  NOR2_X1 U200 ( .A1(n231), .A2(n229), .ZN(n37) );
  NAND2_X1 U201 ( .A1(A[2]), .A2(B[2]), .ZN(n88) );
  NOR2_X1 U202 ( .A1(A[11]), .A2(B[11]), .ZN(n45) );
  NOR2_X1 U203 ( .A1(A[9]), .A2(B[9]), .ZN(n53) );
  NOR2_X1 U204 ( .A1(n233), .A2(B[15]), .ZN(n29) );
  NOR2_X1 U205 ( .A1(n235), .A2(B[17]), .ZN(n21) );
  OR2_X1 U206 ( .A1(A[10]), .A2(B[10]), .ZN(n191) );
  OR2_X1 U207 ( .A1(A[12]), .A2(B[12]), .ZN(n192) );
  OR2_X1 U208 ( .A1(A[8]), .A2(B[8]), .ZN(n193) );
  OR2_X1 U209 ( .A1(n232), .A2(n230), .ZN(n194) );
  OR2_X1 U210 ( .A1(n234), .A2(B[16]), .ZN(n195) );
  NAND2_X1 U212 ( .A1(A[5]), .A2(B[5]), .ZN(n74) );
  NOR2_X1 U213 ( .A1(A[5]), .A2(B[5]), .ZN(n73) );
  XNOR2_X1 U214 ( .A(n20), .B(n190), .ZN(SUM[18]) );
  XOR2_X1 U220 ( .A(n55), .B(n10), .Z(SUM[9]) );
  OAI21_X1 U221 ( .B1(n55), .B2(n222), .A(n224), .ZN(n52) );
  AOI21_X1 U222 ( .B1(n218), .B2(n219), .A(n241), .ZN(n55) );
  OAI21_X1 U226 ( .B1(n92), .B2(n87), .A(n88), .ZN(n86) );
  INV_X1 U227 ( .A(n87), .ZN(n110) );
  NAND2_X1 U228 ( .A1(n110), .A2(n88), .ZN(n17) );
  NOR2_X1 U229 ( .A1(n78), .A2(n73), .ZN(n71) );
  INV_X1 U230 ( .A(n81), .ZN(n80) );
  NAND2_X1 U231 ( .A1(n71), .A2(n63), .ZN(n61) );
  XNOR2_X1 U232 ( .A(n218), .B(n11), .ZN(SUM[8]) );
  OAI21_X1 U233 ( .B1(n81), .B2(n61), .A(n62), .ZN(n60) );
  OAI21_X1 U234 ( .B1(n65), .B2(n69), .A(n66), .ZN(n64) );
  INV_X1 U235 ( .A(n180), .ZN(n105) );
  AOI21_X1 U236 ( .B1(n82), .B2(n90), .A(n83), .ZN(n81) );
  AOI21_X1 U237 ( .B1(n63), .B2(n72), .A(n64), .ZN(n62) );
  NAND2_X1 U238 ( .A1(A[6]), .A2(B[6]), .ZN(n69) );
  NAND2_X1 U240 ( .A1(A[1]), .A2(B[1]), .ZN(n92) );
  INV_X1 U241 ( .A(n68), .ZN(n106) );
  OAI21_X1 U242 ( .B1(n70), .B2(n68), .A(n69), .ZN(n67) );
  NOR2_X1 U243 ( .A1(A[6]), .A2(B[6]), .ZN(n68) );
  INV_X1 U244 ( .A(n84), .ZN(n109) );
  NOR2_X1 U245 ( .A1(n87), .A2(n84), .ZN(n82) );
  OAI21_X1 U246 ( .B1(n84), .B2(n88), .A(n85), .ZN(n83) );
  AOI21_X1 U247 ( .B1(n80), .B2(n71), .A(n72), .ZN(n70) );
  OAI21_X1 U248 ( .B1(n73), .B2(n79), .A(n74), .ZN(n72) );
  NAND2_X1 U249 ( .A1(A[4]), .A2(B[4]), .ZN(n79) );
  NOR2_X1 U250 ( .A1(A[4]), .A2(B[4]), .ZN(n78) );
  NAND2_X1 U251 ( .A1(A[3]), .A2(B[3]), .ZN(n85) );
  AOI21_X1 U252 ( .B1(n182), .B2(n194), .A(n33), .ZN(n31) );
  XOR2_X1 U253 ( .A(n23), .B(n2), .Z(SUM[17]) );
  OAI21_X1 U254 ( .B1(n189), .B2(n21), .A(n22), .ZN(n20) );
  AOI21_X1 U255 ( .B1(n188), .B2(n195), .A(n25), .ZN(n23) );
  XNOR2_X1 U256 ( .A(n188), .B(n3), .ZN(SUM[16]) );
  OAI21_X1 U257 ( .B1(n31), .B2(n29), .A(n30), .ZN(n28) );
  XNOR2_X1 U258 ( .A(n183), .B(n5), .ZN(SUM[14]) );
  XOR2_X1 U259 ( .A(n186), .B(n4), .Z(SUM[15]) );
  NAND2_X1 U260 ( .A1(A[7]), .A2(B[7]), .ZN(n66) );
  XOR2_X1 U261 ( .A(n47), .B(n8), .Z(SUM[11]) );
  XNOR2_X1 U262 ( .A(n52), .B(n9), .ZN(SUM[10]) );
  XNOR2_X1 U263 ( .A(n44), .B(n7), .ZN(SUM[12]) );
  XOR2_X1 U264 ( .A(n39), .B(n6), .Z(SUM[13]) );
  AOI21_X1 U265 ( .B1(n44), .B2(n220), .A(n238), .ZN(n39) );
  AOI21_X1 U266 ( .B1(n52), .B2(n221), .A(n240), .ZN(n47) );
  DFF_X1 clock_r_REG30_S3 ( .D(A[18]), .CK(clock), .Q(n236) );
  DFF_X1 clock_r_REG29_S3 ( .D(A[17]), .CK(clock), .Q(n235) );
  DFF_X1 clock_r_REG47_S3 ( .D(A[16]), .CK(clock), .Q(n234) );
  DFF_X1 clock_r_REG56_S3 ( .D(A[15]), .CK(clock), .Q(n233) );
  DFF_X1 clock_r_REG65_S3 ( .D(A[14]), .CK(clock), .Q(n232) );
  DFF_X1 clock_r_REG28_S3 ( .D(A[13]), .CK(clock), .Q(n231) );
  DFF_X1 clock_r_REG205_S6 ( .D(B[14]), .CK(clock), .Q(n230) );
  DFF_X1 clock_r_REG207_S6 ( .D(B[13]), .CK(clock), .Q(n229) );
  DFF_X1 clock_r_REG102_S3 ( .D(n51), .CK(clock), .Q(n228), .QN(n240) );
  DFF_X1 clock_r_REG83_S3 ( .D(n43), .CK(clock), .Q(n227), .QN(n238) );
  DFF_X1 clock_r_REG121_S3 ( .D(n59), .CK(clock), .Q(n226), .QN(n241) );
  DFF_X1 clock_r_REG92_S3 ( .D(n46), .CK(clock), .Q(n225) );
  DFF_X1 clock_r_REG112_S3 ( .D(n54), .CK(clock), .Q(n224) );
  DFF_X1 clock_r_REG27_S3 ( .D(n45), .CK(clock), .Q(n223), .QN(n239) );
  DFF_X1 clock_r_REG111_S3 ( .D(n53), .CK(clock), .Q(n222), .QN(n242) );
  DFF_X1 clock_r_REG101_S3 ( .D(n191), .CK(clock), .Q(n221) );
  DFF_X1 clock_r_REG82_S3 ( .D(n192), .CK(clock), .Q(n220) );
  DFF_X1 clock_r_REG26_S3 ( .D(n193), .CK(clock), .Q(n219) );
  DFF_X1 clock_r_REG25_S3 ( .D(n60), .CK(clock), .Q(n218) );
  OAI21_X1 U135 ( .B1(n47), .B2(n223), .A(n225), .ZN(n44) );
  INV_X1 U136 ( .A(n92), .ZN(n90) );
  OR2_X1 U137 ( .A1(A[1]), .A2(B[1]), .ZN(n243) );
  AND2_X1 U139 ( .A1(n243), .A2(n92), .ZN(SUM[1]) );
endmodule


module mac_DW_mult_tc_1 ( a, b, product, clock );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  input clock;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n14, n15, n17, n19, n20,
         n21, n22, n24, n26, n27, n28, n29, n30, n31, n32, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n52,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n67, n69, n70, n73, n74,
         n75, n76, n77, n80, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n117, n118,
         n119, n120, n123, n124, n125, n128, n131, n134, n135, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n149, n150,
         n151, n152, n153, n154, n155, n157, n158, n159, n160, n161, n162,
         n163, n165, n166, n167, n168, n169, n170, n172, n173, n182, n191,
         n194, n200, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n233, n234, n235, n236, n275, n276, n277, n278, n280,
         n282, n284, n285, n286, n287, n288, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n303, n306, n307, n308, n309,
         n310, n311, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n327, n328, n329, n330, n333, n334, n336,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385;
  assign n135 = a[0];
  assign n233 = a[7];
  assign n234 = a[5];
  assign n235 = a[3];
  assign n236 = a[1];

  FA_X1 U97 ( .A(n142), .B(n89), .CI(n149), .CO(n85), .S(n86) );
  FA_X1 U98 ( .A(n90), .B(n143), .CI(n93), .CO(n87), .S(n88) );
  FA_X1 U101 ( .A(n150), .B(n315), .CI(n157), .CO(n93), .S(n94) );
  FA_X1 U102 ( .A(n103), .B(n105), .CI(n98), .CO(n95), .S(n96) );
  FA_X1 U103 ( .A(n145), .B(n151), .CI(n100), .CO(n97), .S(n98) );
  FA_X1 U109 ( .A(n384), .B(n112), .CI(n110), .CO(n107), .S(n108) );
  FA_X1 U110 ( .A(n153), .B(n166), .CI(n159), .CO(n109), .S(n110) );
  HA_X1 U111 ( .A(n147), .B(n137), .CO(n111), .S(n112) );
  FA_X1 U112 ( .A(n119), .B(n154), .CI(n383), .CO(n113), .S(n114) );
  HA_X1 U115 ( .A(n138), .B(n155), .CO(n119), .S(n120) );
  HA_X1 U117 ( .A(n163), .B(n170), .CO(n123), .S(n124) );
  XNOR2_X1 U237 ( .A(n111), .B(n275), .ZN(n104) );
  AND2_X1 U241 ( .A1(n323), .A2(n69), .ZN(product[1]) );
  XNOR2_X1 U242 ( .A(n165), .B(n152), .ZN(n275) );
  NAND2_X1 U243 ( .A1(n111), .A2(n165), .ZN(n276) );
  NAND2_X1 U244 ( .A1(n111), .A2(n152), .ZN(n277) );
  NAND2_X1 U245 ( .A1(n165), .A2(n152), .ZN(n278) );
  NAND3_X1 U246 ( .A1(n276), .A2(n277), .A3(n278), .ZN(n103) );
  XNOR2_X2 U248 ( .A(n365), .B(n367), .ZN(n334) );
  CLKBUF_X1 U250 ( .A(n70), .Z(n282) );
  CLKBUF_X1 U251 ( .A(n55), .Z(n284) );
  OAI21_X1 U252 ( .B1(n56), .B2(n58), .A(n57), .ZN(n55) );
  NAND3_X1 U253 ( .A1(n299), .A2(n298), .A3(n297), .ZN(n285) );
  OAI21_X1 U254 ( .B1(n48), .B2(n50), .A(n49), .ZN(n47) );
  XNOR2_X1 U255 ( .A(n120), .B(n286), .ZN(n118) );
  XNOR2_X1 U256 ( .A(n161), .B(n168), .ZN(n286) );
  OR2_X1 U257 ( .A1(n385), .A2(n123), .ZN(n287) );
  CLKBUF_X1 U258 ( .A(n36), .Z(n288) );
  NOR3_X1 U259 ( .A1(n290), .A2(n291), .A3(n292), .ZN(product[15]) );
  AND2_X1 U260 ( .A1(n285), .A2(n83), .ZN(n290) );
  AND2_X1 U261 ( .A1(n141), .A2(n14), .ZN(n291) );
  AND2_X1 U262 ( .A1(n141), .A2(n83), .ZN(n292) );
  NAND2_X1 U263 ( .A1(n120), .A2(n161), .ZN(n293) );
  NAND2_X1 U264 ( .A1(n120), .A2(n168), .ZN(n294) );
  NAND2_X1 U265 ( .A1(n161), .A2(n168), .ZN(n295) );
  NAND3_X1 U266 ( .A1(n293), .A2(n294), .A3(n295), .ZN(n117) );
  XOR2_X1 U267 ( .A(n85), .B(n84), .Z(n296) );
  XOR2_X1 U268 ( .A(n296), .B(n282), .Z(product[13]) );
  NAND2_X1 U269 ( .A1(n85), .A2(n84), .ZN(n297) );
  NAND2_X1 U270 ( .A1(n85), .A2(n70), .ZN(n298) );
  NAND2_X1 U271 ( .A1(n84), .A2(n70), .ZN(n299) );
  NAND3_X1 U272 ( .A1(n298), .A2(n299), .A3(n297), .ZN(n14) );
  XOR2_X1 U273 ( .A(n141), .B(n83), .Z(n300) );
  XOR2_X1 U274 ( .A(n300), .B(n285), .Z(product[14]) );
  CLKBUF_X1 U275 ( .A(n99), .Z(n315) );
  XNOR2_X1 U278 ( .A(n303), .B(n94), .ZN(n92) );
  XNOR2_X1 U279 ( .A(n97), .B(n144), .ZN(n303) );
  NAND2_X1 U280 ( .A1(n365), .A2(n367), .ZN(n306) );
  NAND2_X1 U281 ( .A1(n382), .A2(n377), .ZN(n307) );
  NAND2_X1 U282 ( .A1(n306), .A2(n307), .ZN(n226) );
  AOI21_X1 U285 ( .B1(n39), .B2(n47), .A(n40), .ZN(n308) );
  NAND2_X1 U286 ( .A1(n94), .A2(n97), .ZN(n309) );
  NAND2_X1 U287 ( .A1(n94), .A2(n144), .ZN(n310) );
  NAND2_X1 U288 ( .A1(n97), .A2(n144), .ZN(n311) );
  NAND3_X1 U289 ( .A1(n309), .A2(n310), .A3(n311), .ZN(n91) );
  CLKBUF_X1 U291 ( .A(n29), .Z(n313) );
  CLKBUF_X1 U292 ( .A(n20), .Z(n314) );
  AOI21_X1 U293 ( .B1(n325), .B2(n284), .A(n52), .ZN(n316) );
  NOR2_X1 U294 ( .A1(n107), .A2(n102), .ZN(n317) );
  NAND2_X1 U295 ( .A1(n217), .A2(n225), .ZN(n318) );
  NOR2_X1 U296 ( .A1(n92), .A2(n95), .ZN(n319) );
  OR2_X1 U297 ( .A1(n88), .A2(n91), .ZN(n321) );
  XNOR2_X1 U298 ( .A(n37), .B(n4), .ZN(product[9]) );
  INV_X1 U299 ( .A(n35), .ZN(n74) );
  INV_X1 U300 ( .A(n26), .ZN(n24) );
  NAND2_X1 U301 ( .A1(n77), .A2(n49), .ZN(n7) );
  INV_X1 U302 ( .A(n48), .ZN(n77) );
  NAND2_X1 U303 ( .A1(n322), .A2(n19), .ZN(n1) );
  XOR2_X1 U304 ( .A(n46), .B(n6), .Z(product[7]) );
  XOR2_X1 U305 ( .A(n32), .B(n3), .Z(product[10]) );
  NAND2_X1 U306 ( .A1(n73), .A2(n31), .ZN(n3) );
  AOI21_X1 U307 ( .B1(n37), .B2(n74), .A(n34), .ZN(n32) );
  XOR2_X1 U308 ( .A(n27), .B(n2), .Z(product[11]) );
  NAND2_X1 U309 ( .A1(n321), .A2(n26), .ZN(n2) );
  XNOR2_X1 U310 ( .A(n43), .B(n5), .ZN(product[8]) );
  NAND2_X1 U311 ( .A1(n75), .A2(n42), .ZN(n5) );
  INV_X1 U312 ( .A(n19), .ZN(n17) );
  XNOR2_X1 U313 ( .A(n104), .B(n320), .ZN(n102) );
  XNOR2_X1 U314 ( .A(n106), .B(n109), .ZN(n320) );
  NOR2_X1 U316 ( .A1(n102), .A2(n107), .ZN(n41) );
  NOR2_X1 U317 ( .A1(n92), .A2(n95), .ZN(n30) );
  NAND2_X1 U318 ( .A1(n80), .A2(n61), .ZN(n10) );
  INV_X1 U319 ( .A(n60), .ZN(n80) );
  XOR2_X1 U321 ( .A(n9), .B(n58), .Z(product[4]) );
  NAND2_X1 U322 ( .A1(n287), .A2(n57), .ZN(n9) );
  OR2_X1 U323 ( .A1(n158), .A2(n146), .ZN(n105) );
  NOR2_X1 U324 ( .A1(n114), .A2(n117), .ZN(n48) );
  INV_X1 U325 ( .A(n83), .ZN(n84) );
  NAND2_X1 U326 ( .A1(n88), .A2(n91), .ZN(n26) );
  NAND2_X1 U327 ( .A1(n87), .A2(n86), .ZN(n19) );
  NAND2_X1 U328 ( .A1(n114), .A2(n117), .ZN(n49) );
  INV_X1 U329 ( .A(n59), .ZN(n58) );
  OR2_X1 U330 ( .A1(n87), .A2(n86), .ZN(n322) );
  INV_X1 U331 ( .A(n128), .ZN(n149) );
  INV_X1 U332 ( .A(n89), .ZN(n90) );
  OR2_X1 U333 ( .A1(n172), .A2(n140), .ZN(n323) );
  NOR2_X1 U334 ( .A1(n385), .A2(n123), .ZN(n56) );
  INV_X1 U335 ( .A(n125), .ZN(n141) );
  OR2_X1 U337 ( .A1(n118), .A2(n380), .ZN(n325) );
  XOR2_X1 U340 ( .A(n379), .B(n356), .Z(n182) );
  NAND2_X1 U343 ( .A1(n217), .A2(n225), .ZN(n221) );
  NAND2_X1 U348 ( .A1(n76), .A2(n45), .ZN(n6) );
  NAND2_X1 U349 ( .A1(n325), .A2(n54), .ZN(n8) );
  NAND2_X1 U350 ( .A1(n74), .A2(n288), .ZN(n4) );
  INV_X1 U351 ( .A(n288), .ZN(n34) );
  NAND2_X1 U352 ( .A1(n96), .A2(n101), .ZN(n36) );
  NAND2_X1 U353 ( .A1(n385), .A2(n123), .ZN(n57) );
  NAND2_X1 U355 ( .A1(n124), .A2(n139), .ZN(n61) );
  XNOR2_X1 U357 ( .A(n11), .B(n67), .ZN(product[2]) );
  NAND2_X1 U359 ( .A1(n108), .A2(n113), .ZN(n45) );
  NAND2_X1 U360 ( .A1(n92), .A2(n95), .ZN(n31) );
  INV_X1 U361 ( .A(n69), .ZN(n67) );
  OAI21_X1 U362 ( .B1(n46), .B2(n44), .A(n45), .ZN(n43) );
  INV_X1 U363 ( .A(n44), .ZN(n76) );
  NOR2_X1 U364 ( .A1(n44), .A2(n317), .ZN(n39) );
  NOR2_X1 U365 ( .A1(n108), .A2(n113), .ZN(n44) );
  NAND2_X1 U366 ( .A1(n104), .A2(n106), .ZN(n327) );
  NAND2_X1 U367 ( .A1(n104), .A2(n109), .ZN(n328) );
  NAND2_X1 U368 ( .A1(n106), .A2(n109), .ZN(n329) );
  NAND3_X1 U369 ( .A1(n327), .A2(n328), .A3(n329), .ZN(n101) );
  XNOR2_X1 U370 ( .A(n158), .B(n146), .ZN(n106) );
  NAND2_X1 U371 ( .A1(n102), .A2(n107), .ZN(n42) );
  AOI21_X1 U373 ( .B1(n325), .B2(n55), .A(n52), .ZN(n50) );
  OAI22_X1 U374 ( .A1(n224), .A2(n378), .B1(n378), .B2(n376), .ZN(n168) );
  OAI22_X1 U375 ( .A1(n224), .A2(n378), .B1(n378), .B2(n376), .ZN(n167) );
  OAI22_X1 U376 ( .A1(n224), .A2(n378), .B1(n378), .B2(n376), .ZN(n170) );
  OAI22_X1 U377 ( .A1(n224), .A2(n378), .B1(n378), .B2(n376), .ZN(n169) );
  OAI22_X1 U378 ( .A1(n224), .A2(n378), .B1(n200), .B2(n376), .ZN(n166) );
  OAI22_X1 U379 ( .A1(n224), .A2(n378), .B1(n378), .B2(n376), .ZN(n140) );
  OAI22_X1 U380 ( .A1(n224), .A2(n378), .B1(n378), .B2(n376), .ZN(n172) );
  OAI22_X1 U381 ( .A1(n224), .A2(n378), .B1(n378), .B2(n376), .ZN(n324) );
  NAND2_X1 U382 ( .A1(n219), .A2(n227), .ZN(n330) );
  NAND2_X1 U385 ( .A1(n227), .A2(n219), .ZN(n223) );
  XNOR2_X1 U386 ( .A(n361), .B(n363), .ZN(n227) );
  XNOR2_X1 U395 ( .A(n373), .B(n356), .ZN(n173) );
  INV_X1 U396 ( .A(n134), .ZN(n165) );
  INV_X1 U397 ( .A(n99), .ZN(n100) );
  XOR2_X1 U399 ( .A(n373), .B(n371), .Z(n217) );
  NOR2_X1 U400 ( .A1(n124), .A2(n139), .ZN(n60) );
  INV_X1 U401 ( .A(n131), .ZN(n157) );
  XNOR2_X1 U403 ( .A(n369), .B(n371), .ZN(n225) );
  OAI22_X1 U404 ( .A1(n200), .A2(n224), .B1(n200), .B2(n376), .ZN(n134) );
  INV_X1 U406 ( .A(n54), .ZN(n52) );
  OAI21_X1 U407 ( .B1(n38), .B2(n21), .A(n22), .ZN(n20) );
  NAND2_X1 U408 ( .A1(n28), .A2(n321), .ZN(n21) );
  NOR2_X1 U409 ( .A1(n96), .A2(n101), .ZN(n35) );
  XNOR2_X1 U410 ( .A(n8), .B(n284), .ZN(product[5]) );
  XOR2_X1 U411 ( .A(n10), .B(n62), .Z(product[3]) );
  OAI21_X1 U412 ( .B1(n60), .B2(n62), .A(n61), .ZN(n59) );
  NAND2_X1 U413 ( .A1(n172), .A2(n140), .ZN(n69) );
  XNOR2_X1 U417 ( .A(n361), .B(n356), .ZN(n200) );
  XOR2_X1 U423 ( .A(n361), .B(n359), .Z(n220) );
  OAI21_X1 U424 ( .B1(n45), .B2(n41), .A(n42), .ZN(n40) );
  INV_X1 U425 ( .A(n317), .ZN(n75) );
  AOI21_X1 U426 ( .B1(n37), .B2(n28), .A(n313), .ZN(n27) );
  INV_X1 U427 ( .A(n319), .ZN(n73) );
  AOI21_X1 U428 ( .B1(n29), .B2(n321), .A(n24), .ZN(n22) );
  NOR2_X1 U429 ( .A1(n35), .A2(n319), .ZN(n28) );
  OAI21_X1 U430 ( .B1(n36), .B2(n30), .A(n31), .ZN(n29) );
  INV_X1 U431 ( .A(n15), .ZN(n70) );
  INV_X1 U433 ( .A(n47), .ZN(n46) );
  AOI21_X1 U434 ( .B1(n39), .B2(n47), .A(n40), .ZN(n38) );
  NAND2_X1 U435 ( .A1(n118), .A2(n380), .ZN(n54) );
  OAI22_X1 U436 ( .A1(n182), .A2(n222), .B1(n182), .B2(n334), .ZN(n128) );
  OAI22_X1 U437 ( .A1(n222), .A2(n379), .B1(n379), .B2(n334), .ZN(n154) );
  OAI22_X1 U438 ( .A1(n222), .A2(n379), .B1(n182), .B2(n334), .ZN(n89) );
  OAI22_X1 U439 ( .A1(n222), .A2(n379), .B1(n379), .B2(n334), .ZN(n151) );
  OAI22_X1 U440 ( .A1(n222), .A2(n379), .B1(n379), .B2(n334), .ZN(n153) );
  OAI22_X1 U441 ( .A1(n222), .A2(n379), .B1(n379), .B2(n334), .ZN(n150) );
  OAI22_X1 U446 ( .A1(n222), .A2(n379), .B1(n379), .B2(n334), .ZN(n138) );
  OAI22_X1 U447 ( .A1(n222), .A2(n379), .B1(n379), .B2(n334), .ZN(n155) );
  NAND2_X2 U450 ( .A1(n226), .A2(n218), .ZN(n222) );
  XNOR2_X1 U451 ( .A(n280), .B(n356), .ZN(n191) );
  XOR2_X1 U454 ( .A(n365), .B(n363), .Z(n219) );
  XNOR2_X1 U456 ( .A(n314), .B(n1), .ZN(product[12]) );
  OAI22_X1 U457 ( .A1(n173), .A2(n221), .B1(n173), .B2(n336), .ZN(n125) );
  AOI21_X1 U458 ( .B1(n20), .B2(n322), .A(n17), .ZN(n15) );
  OAI22_X1 U459 ( .A1(n318), .A2(n381), .B1(n173), .B2(n225), .ZN(n83) );
  OAI22_X1 U460 ( .A1(n221), .A2(n381), .B1(n381), .B2(n336), .ZN(n142) );
  OAI22_X1 U461 ( .A1(n318), .A2(n381), .B1(n381), .B2(n336), .ZN(n143) );
  OAI22_X1 U462 ( .A1(n221), .A2(n381), .B1(n381), .B2(n336), .ZN(n144) );
  OAI22_X1 U463 ( .A1(n221), .A2(n381), .B1(n381), .B2(n336), .ZN(n145) );
  OAI22_X1 U464 ( .A1(n318), .A2(n381), .B1(n381), .B2(n336), .ZN(n146) );
  OAI22_X1 U467 ( .A1(n318), .A2(n381), .B1(n381), .B2(n336), .ZN(n137) );
  OAI22_X1 U468 ( .A1(n221), .A2(n381), .B1(n381), .B2(n336), .ZN(n147) );
  XOR2_X1 U475 ( .A(n369), .B(n367), .Z(n218) );
  XOR2_X1 U477 ( .A(n7), .B(n316), .Z(product[6]) );
  INV_X1 U478 ( .A(n308), .ZN(n37) );
  OAI22_X1 U479 ( .A1(n330), .A2(n382), .B1(n194), .B2(n333), .ZN(n160) );
  OAI22_X1 U480 ( .A1(n330), .A2(n194), .B1(n194), .B2(n333), .ZN(n158) );
  OAI22_X1 U481 ( .A1(n223), .A2(n382), .B1(n382), .B2(n333), .ZN(n161) );
  OAI22_X1 U482 ( .A1(n223), .A2(n194), .B1(n194), .B2(n333), .ZN(n159) );
  OAI22_X1 U483 ( .A1(n330), .A2(n382), .B1(n382), .B2(n333), .ZN(n139) );
  OAI22_X1 U484 ( .A1(n223), .A2(n194), .B1(n382), .B2(n333), .ZN(n162) );
  OAI22_X1 U485 ( .A1(n223), .A2(n194), .B1(n191), .B2(n333), .ZN(n99) );
  OAI22_X1 U486 ( .A1(n191), .A2(n330), .B1(n191), .B2(n333), .ZN(n131) );
  OAI22_X1 U487 ( .A1(n223), .A2(n194), .B1(n194), .B2(n333), .ZN(n163) );
  DFF_X1 clock_r_REG203_S4 ( .D(n233), .CK(clock), .Q(n374) );
  DFF_X1 clock_r_REG210_S4 ( .D(a[6]), .CK(clock), .Q(n372) );
  DFF_X1 clock_r_REG211_S5 ( .D(n372), .CK(clock), .Q(n371) );
  DFF_X1 clock_r_REG214_S4 ( .D(n234), .CK(clock), .Q(n370) );
  DFF_X1 clock_r_REG215_S5 ( .D(n370), .CK(clock), .Q(n369), .QN(n379) );
  DFF_X1 clock_r_REG218_S4 ( .D(a[4]), .CK(clock), .Q(n368) );
  DFF_X1 clock_r_REG219_S5 ( .D(n368), .CK(clock), .Q(n367), .QN(n377) );
  DFF_X1 clock_r_REG222_S4 ( .D(n235), .CK(clock), .Q(n366) );
  DFF_X1 clock_r_REG223_S5 ( .D(n366), .CK(clock), .Q(n365), .QN(n382) );
  DFF_X1 clock_r_REG226_S4 ( .D(a[2]), .CK(clock), .Q(n364) );
  DFF_X1 clock_r_REG227_S5 ( .D(n364), .CK(clock), .Q(n363) );
  DFF_X1 clock_r_REG230_S4 ( .D(n236), .CK(clock), .Q(n362) );
  DFF_X1 clock_r_REG231_S5 ( .D(n362), .CK(clock), .Q(n361), .QN(n378) );
  DFF_X1 clock_r_REG234_S4 ( .D(n135), .CK(clock), .Q(n360) );
  DFF_X1 clock_r_REG235_S5 ( .D(n360), .CK(clock), .Q(n359), .QN(n376) );
  DFF_X1 clock_r_REG314_S2 ( .D(b[7]), .CK(clock), .Q(n358) );
  DFF_X1 clock_r_REG315_S3 ( .D(n358), .CK(clock), .Q(n357) );
  DFF_X1 clock_r_REG316_S4 ( .D(n357), .CK(clock), .Q(n356) );
  DFF_X1 clock_r_REG204_S5 ( .D(n374), .CK(clock), .Q(n373), .QN(n381) );
  CLKBUF_X2 U384 ( .A(n227), .Z(n333) );
  CLKBUF_X1 U238 ( .A(n365), .Z(n280) );
  OAI22_X1 U239 ( .A1(n222), .A2(n379), .B1(n379), .B2(n334), .ZN(n152) );
  NAND2_X1 U240 ( .A1(n220), .A2(n376), .ZN(n224) );
  BUF_X1 U247 ( .A(n225), .Z(n336) );
  NAND2_X1 U249 ( .A1(n324), .A2(n67), .ZN(n62) );
  AND2_X1 U276 ( .A1(n162), .A2(n169), .ZN(n380) );
  INV_X1 U277 ( .A(n280), .ZN(n194) );
  XOR2_X1 U283 ( .A(n167), .B(n160), .Z(n383) );
  AND2_X1 U284 ( .A1(n160), .A2(n167), .ZN(n384) );
  XOR2_X1 U290 ( .A(n169), .B(n162), .Z(n385) );
  INV_X1 U315 ( .A(n324), .ZN(n11) );
endmodule


module mac ( clock, ai, xi, mac_clean, data_out );
  input [7:0] ai;
  input [7:0] xi;
  output [18:0] data_out;
  input clock, mac_clean;
  wire   n147, n148, n149, n150, n151, n152, n153, n154, \mult_out_reg[15] ,
         N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n38, n156, n157, n158, n159, n160, n161, n162, n163;
  wire   [18:0] mult_out;
  wire   SYNOPSYS_UNCONNECTED__0;

  NOR2_X1 U3 ( .A1(mac_clean), .A2(n3), .ZN(N38) );
  NOR2_X1 U5 ( .A1(mac_clean), .A2(n4), .ZN(N37) );
  NOR2_X1 U6 ( .A1(mac_clean), .A2(n5), .ZN(N36) );
  NOR2_X1 U7 ( .A1(mac_clean), .A2(n6), .ZN(N35) );
  NOR2_X1 U8 ( .A1(mac_clean), .A2(n7), .ZN(N34) );
  NOR2_X1 U9 ( .A1(mac_clean), .A2(n8), .ZN(N33) );
  NOR2_X1 U10 ( .A1(mac_clean), .A2(n9), .ZN(N32) );
  NOR2_X1 U11 ( .A1(mac_clean), .A2(n10), .ZN(N31) );
  NOR2_X1 U12 ( .A1(mac_clean), .A2(n11), .ZN(N30) );
  NOR2_X1 U13 ( .A1(mac_clean), .A2(n12), .ZN(N29) );
  NOR2_X1 U14 ( .A1(mac_clean), .A2(n13), .ZN(N28) );
  NOR2_X1 U15 ( .A1(mac_clean), .A2(n163), .ZN(N27) );
  NOR2_X1 U16 ( .A1(mac_clean), .A2(n162), .ZN(N26) );
  NOR2_X1 U17 ( .A1(mac_clean), .A2(n161), .ZN(N25) );
  NOR2_X1 U18 ( .A1(mac_clean), .A2(n160), .ZN(N24) );
  NOR2_X1 U19 ( .A1(mac_clean), .A2(n159), .ZN(N23) );
  NOR2_X1 U20 ( .A1(mac_clean), .A2(n158), .ZN(N22) );
  NOR2_X1 U21 ( .A1(mac_clean), .A2(n157), .ZN(N21) );
  NOR2_X1 U22 ( .A1(mac_clean), .A2(n156), .ZN(N20) );
  DFF_X1 clock_r_REG130_S3 ( .D(n147), .CK(clock), .Q(data_out[7]), .QN(n163)
         );
  DFF_X1 clock_r_REG139_S3 ( .D(n148), .CK(clock), .Q(data_out[6]), .QN(n162)
         );
  DFF_X1 clock_r_REG149_S3 ( .D(n149), .CK(clock), .Q(data_out[5]), .QN(n161)
         );
  DFF_X1 clock_r_REG148_S3 ( .D(n150), .CK(clock), .Q(data_out[4]), .QN(n160)
         );
  DFF_X1 clock_r_REG166_S3 ( .D(n151), .CK(clock), .Q(data_out[3]), .QN(n159)
         );
  DFF_X1 clock_r_REG175_S3 ( .D(n152), .CK(clock), .Q(data_out[2]), .QN(n158)
         );
  DFF_X1 clock_r_REG24_S3 ( .D(n153), .CK(clock), .Q(data_out[1]), .QN(n157)
         );
  DFF_X1 clock_r_REG192_S3 ( .D(n154), .CK(clock), .Q(data_out[0]), .QN(n156)
         );
  INV_X1 U31 ( .A(data_out[8]), .ZN(n13) );
  INV_X1 U32 ( .A(data_out[9]), .ZN(n12) );
  INV_X1 U33 ( .A(data_out[10]), .ZN(n11) );
  INV_X1 U34 ( .A(data_out[11]), .ZN(n10) );
  INV_X1 U35 ( .A(data_out[12]), .ZN(n9) );
  INV_X1 U36 ( .A(data_out[13]), .ZN(n8) );
  INV_X1 U37 ( .A(data_out[14]), .ZN(n7) );
  INV_X1 U38 ( .A(data_out[15]), .ZN(n6) );
  INV_X1 U39 ( .A(data_out[16]), .ZN(n5) );
  INV_X1 U41 ( .A(data_out[18]), .ZN(n3) );
  mac_DW01_add_1 add_37_aco ( .A({N38, N37, N36, N35, N34, N33, N32, N31, N30, 
        N29, N28, N27, N26, N25, N24, N23, N22, N21, N20}), .B({n38, n38, n38, 
        n38, mult_out[14:1], 1'b0}), .CI(1'b0), .SUM({data_out[18:8], n147, 
        n148, n149, n150, n151, n152, n153, n154}), .clock(clock) );
  mac_DW_mult_tc_1 mult_32 ( .a(ai), .b({xi[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .product({\mult_out_reg[15] , mult_out[14:1], 
        SYNOPSYS_UNCONNECTED__0}), .clock(clock) );
  DFF_X1 clock_r_REG206_S6 ( .D(\mult_out_reg[15] ), .CK(clock), .Q(n38) );
  INV_X1 U23 ( .A(data_out[17]), .ZN(n4) );
endmodule


module fsm ( clock, reset, ramA_address, ramR_address, rom_address, hold_me, 
        ramR_readEnable, ramA_writeEnable, ramA_readEnable, ramR_writeEnable, 
        rom_enable, counterAddressGen_H_enable, counterAddressGen_R_enable, 
        counterAddressGen_A_restart, counterAddressGen_R_restart, 
        counterAddressGen_H_restart, mac_clean, reset_fsm, hold_prev );
  input [4:0] ramA_address;
  input [7:0] ramR_address;
  input [7:0] rom_address;
  input clock, reset, hold_me;
  output ramR_readEnable, ramA_writeEnable, ramA_readEnable, ramR_writeEnable,
         rom_enable, counterAddressGen_H_enable, counterAddressGen_R_enable,
         counterAddressGen_A_restart, counterAddressGen_R_restart,
         counterAddressGen_H_restart, mac_clean, reset_fsm, hold_prev;
  wire   ramA_readEnable, n20, n22, n26, n27, n31, n32, n33, n34, n35, n37,
         counterAddressGen_A_restart, n2, n4, n5, n6, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n21, n24, n25, n28, n30, n36, n38, n39, n40,
         n41, n43, n44, n48, n49, n50, n57, n58, n59;
  wire   [2:0] status;
  assign rom_enable = ramA_readEnable;
  assign reset_fsm = counterAddressGen_A_restart;
  assign counterAddressGen_H_restart = counterAddressGen_A_restart;
  assign counterAddressGen_R_restart = counterAddressGen_A_restart;
  assign ramR_writeEnable = n5;

  NAND3_X1 U46 ( .A1(rom_address[1]), .A2(n41), .A3(n33), .ZN(n32) );
  NAND2_X1 U3 ( .A1(n4), .A2(n38), .ZN(counterAddressGen_A_restart) );
  INV_X1 U5 ( .A(n26), .ZN(n40) );
  OR2_X1 U7 ( .A1(n58), .A2(n59), .ZN(n4) );
  NAND2_X1 U8 ( .A1(n4), .A2(n38), .ZN(n43) );
  OR2_X1 U9 ( .A1(n28), .A2(n58), .ZN(n30) );
  NOR2_X1 U10 ( .A1(n28), .A2(n58), .ZN(n5) );
  INV_X1 U11 ( .A(n34), .ZN(n41) );
  NOR3_X1 U12 ( .A1(rom_address[5]), .A2(rom_address[4]), .A3(rom_address[3]), 
        .ZN(n34) );
  NOR3_X1 U13 ( .A1(ramA_address[1]), .A2(ramA_address[0]), .A3(n37), .ZN(n27)
         );
  OR3_X1 U14 ( .A1(ramA_address[4]), .A2(ramA_address[3]), .A3(ramA_address[2]), .ZN(n37) );
  AOI21_X1 U15 ( .B1(n26), .B2(n32), .A(rom_address[0]), .ZN(n31) );
  NOR3_X1 U16 ( .A1(rom_address[2]), .A2(rom_address[7]), .A3(rom_address[6]), 
        .ZN(n33) );
  NAND4_X1 U17 ( .A1(rom_address[6]), .A2(rom_address[1]), .A3(n35), .A4(n34), 
        .ZN(n26) );
  NOR2_X1 U18 ( .A1(rom_address[7]), .A2(rom_address[2]), .ZN(n35) );
  AND3_X1 U19 ( .A1(ramR_address[0]), .A2(n44), .A3(ramR_address[1]), .ZN(n20)
         );
  INV_X1 U20 ( .A(hold_me), .ZN(n44) );
  AND2_X1 U21 ( .A1(n40), .A2(rom_address[0]), .ZN(n6) );
  OR2_X1 U22 ( .A1(ramR_address[5]), .A2(ramR_address[4]), .ZN(n22) );
  AOI22_X1 U25 ( .A1(n27), .A2(n58), .B1(n31), .B2(n57), .ZN(n11) );
  NAND3_X1 U26 ( .A1(hold_me), .A2(n49), .A3(n58), .ZN(n10) );
  NAND3_X1 U27 ( .A1(n58), .A2(n57), .A3(n59), .ZN(n38) );
  OAI211_X1 U28 ( .C1(n49), .C2(n11), .A(n10), .B(n38), .ZN(n13) );
  INV_X1 U29 ( .A(reset), .ZN(n12) );
  AND2_X1 U30 ( .A1(n13), .A2(n12), .ZN(status[0]) );
  NAND2_X1 U31 ( .A1(n59), .A2(n50), .ZN(n28) );
  NAND4_X1 U33 ( .A1(ramR_address[3]), .A2(n20), .A3(ramR_address[2]), .A4(n57), .ZN(n14) );
  NOR4_X1 U34 ( .A1(n14), .A2(n22), .A3(ramR_address[7]), .A4(ramR_address[6]), 
        .ZN(n15) );
  NOR3_X1 U35 ( .A1(n15), .A2(n48), .A3(n59), .ZN(n16) );
  AOI21_X1 U36 ( .B1(n6), .B2(n5), .A(n16), .ZN(n17) );
  NOR2_X1 U37 ( .A1(reset), .A2(n17), .ZN(n2) );
  INV_X1 U38 ( .A(n27), .ZN(n18) );
  NAND3_X1 U39 ( .A1(n58), .A2(n18), .A3(n50), .ZN(n19) );
  OAI21_X1 U40 ( .B1(n58), .B2(n6), .A(n19), .ZN(n21) );
  NAND2_X1 U41 ( .A1(n59), .A2(n21), .ZN(n24) );
  NAND3_X1 U42 ( .A1(n48), .A2(n57), .A3(n59), .ZN(n25) );
  AOI21_X1 U43 ( .B1(n24), .B2(n25), .A(reset), .ZN(status[1]) );
  NAND2_X1 U44 ( .A1(n25), .A2(n30), .ZN(ramA_readEnable) );
  INV_X1 U45 ( .A(ramA_readEnable), .ZN(n36) );
  NAND2_X1 U47 ( .A1(n28), .A2(n36), .ZN(hold_prev) );
  NAND3_X1 U48 ( .A1(n57), .A2(n49), .A3(n58), .ZN(n39) );
  NAND3_X1 U49 ( .A1(n30), .A2(n38), .A3(n39), .ZN(counterAddressGen_R_enable)
         );
  NAND2_X1 U50 ( .A1(n38), .A2(n36), .ZN(counterAddressGen_H_enable) );
  NAND3_X1 U51 ( .A1(n48), .A2(n38), .A3(n59), .ZN(ramA_writeEnable) );
  INV_X1 U52 ( .A(n39), .ZN(ramR_readEnable) );
  DFF_X1 clock_r_REG23_S2 ( .D(status[0]), .CK(clock), .Q(n50), .QN(n57) );
  DFF_X1 clock_r_REG21_S1 ( .D(n2), .CK(clock), .Q(n49), .QN(n59) );
  DFF_X1 clock_r_REG0_S1 ( .D(status[1]), .CK(clock), .Q(n48), .QN(n58) );
  OR2_X1 U4 ( .A1(n43), .A2(n5), .ZN(mac_clean) );
endmodule


module counter_address_generator_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .A(A[0]), .ZN(SUM[0]) );
  XOR2_X1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module counter_address_generator_1 ( clock, reset, need_to_reset, enable, 
        read_enable, address );
  output [7:0] address;
  input clock, reset, need_to_reset, enable, read_enable;
  wire   n61, n62, n63, n64, n65, n66, n67, n68, N10, N11, N12, N13, N14, N15,
         N16, N17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  NOR3_X2 U3 ( .A1(reset), .A2(need_to_reset), .A3(n26), .ZN(n27) );
  NOR3_X2 U4 ( .A1(reset), .A2(read_enable), .A3(enable), .ZN(n26) );
  INV_X1 U5 ( .A(n28), .ZN(n61) );
  AOI22_X1 U6 ( .A1(N17), .A2(n27), .B1(address[7]), .B2(n26), .ZN(n28) );
  INV_X1 U7 ( .A(n25), .ZN(n62) );
  AOI22_X1 U8 ( .A1(N16), .A2(n27), .B1(address[6]), .B2(n26), .ZN(n25) );
  INV_X1 U9 ( .A(n24), .ZN(n63) );
  AOI22_X1 U10 ( .A1(N15), .A2(n27), .B1(address[5]), .B2(n26), .ZN(n24) );
  INV_X1 U11 ( .A(n23), .ZN(n64) );
  AOI22_X1 U12 ( .A1(N14), .A2(n27), .B1(address[4]), .B2(n26), .ZN(n23) );
  INV_X1 U13 ( .A(n22), .ZN(n65) );
  AOI22_X1 U14 ( .A1(N13), .A2(n27), .B1(address[3]), .B2(n26), .ZN(n22) );
  INV_X1 U15 ( .A(n21), .ZN(n66) );
  AOI22_X1 U16 ( .A1(N12), .A2(n27), .B1(address[2]), .B2(n26), .ZN(n21) );
  INV_X1 U17 ( .A(n20), .ZN(n67) );
  AOI22_X1 U18 ( .A1(N11), .A2(n27), .B1(address[1]), .B2(n26), .ZN(n20) );
  INV_X1 U19 ( .A(n19), .ZN(n68) );
  AOI22_X1 U20 ( .A1(N10), .A2(n27), .B1(address[0]), .B2(n26), .ZN(n19) );
  DFF_X1 clock_r_REG306_S2 ( .D(n61), .CK(clock), .Q(address[7]) );
  DFF_X1 clock_r_REG305_S2 ( .D(n62), .CK(clock), .Q(address[6]) );
  DFF_X1 clock_r_REG304_S2 ( .D(n63), .CK(clock), .Q(address[5]) );
  DFF_X1 clock_r_REG303_S2 ( .D(n64), .CK(clock), .Q(address[4]) );
  DFF_X1 clock_r_REG302_S2 ( .D(n65), .CK(clock), .Q(address[3]) );
  DFF_X1 clock_r_REG301_S2 ( .D(n66), .CK(clock), .Q(address[2]) );
  DFF_X1 clock_r_REG300_S2 ( .D(n67), .CK(clock), .Q(address[1]) );
  DFF_X1 clock_r_REG20_S2 ( .D(n68), .CK(clock), .Q(address[0]) );
  counter_address_generator_1_DW01_inc_0 add_38 ( .A(address), .SUM({N17, N16, 
        N15, N14, N13, N12, N11, N10}) );
endmodule


module ramR ( clock, write_enable, read_enable, address, datain, dataout );
  input [2:0] address;
  input [18:0] datain;
  output [18:0] dataout;
  input clock, write_enable, read_enable;
  wire   N10, N11, N12, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, \ram[0][18] , \ram[0][17] , \ram[0][16] , \ram[0][15] ,
         \ram[0][14] , \ram[0][13] , \ram[0][12] , \ram[0][11] , \ram[0][10] ,
         \ram[0][9] , \ram[0][8] , \ram[0][7] , \ram[0][6] , \ram[0][5] ,
         \ram[0][4] , \ram[0][3] , \ram[0][2] , \ram[0][1] , \ram[0][0] ,
         \ram[1][18] , \ram[1][17] , \ram[1][16] , \ram[1][15] , \ram[1][14] ,
         \ram[1][13] , \ram[1][12] , \ram[1][11] , \ram[1][10] , \ram[1][9] ,
         \ram[1][8] , \ram[1][7] , \ram[1][6] , \ram[1][5] , \ram[1][4] ,
         \ram[1][3] , \ram[1][2] , \ram[1][1] , \ram[1][0] , \ram[2][18] ,
         \ram[2][17] , \ram[2][16] , \ram[2][15] , \ram[2][14] , \ram[2][13] ,
         \ram[2][12] , \ram[2][11] , \ram[2][10] , \ram[2][9] , \ram[2][8] ,
         \ram[2][7] , \ram[2][6] , \ram[2][5] , \ram[2][4] , \ram[2][3] ,
         \ram[2][2] , \ram[2][1] , \ram[2][0] , \ram[3][18] , \ram[3][17] ,
         \ram[3][16] , \ram[3][15] , \ram[3][14] , \ram[3][13] , \ram[3][12] ,
         \ram[3][11] , \ram[3][10] , \ram[3][9] , \ram[3][8] , \ram[3][7] ,
         \ram[3][6] , \ram[3][5] , \ram[3][4] , \ram[3][3] , \ram[3][2] ,
         \ram[3][1] , \ram[3][0] , \ram[4][18] , \ram[4][17] , \ram[4][16] ,
         \ram[4][15] , \ram[4][14] , \ram[4][13] , \ram[4][12] , \ram[4][11] ,
         \ram[4][10] , \ram[4][9] , \ram[4][8] , \ram[4][7] , \ram[4][6] ,
         \ram[4][5] , \ram[4][4] , \ram[4][3] , \ram[4][2] , \ram[4][1] ,
         \ram[4][0] , \ram[5][18] , \ram[5][17] , \ram[5][16] , \ram[5][15] ,
         \ram[5][14] , \ram[5][13] , \ram[5][12] , \ram[5][11] , \ram[5][10] ,
         \ram[5][9] , \ram[5][8] , \ram[5][7] , \ram[5][6] , \ram[5][5] ,
         \ram[5][4] , \ram[5][3] , \ram[5][2] , \ram[5][1] , \ram[5][0] ,
         \ram[6][18] , \ram[6][17] , \ram[6][16] , \ram[6][15] , \ram[6][14] ,
         \ram[6][13] , \ram[6][12] , \ram[6][11] , \ram[6][10] , \ram[6][9] ,
         \ram[6][8] , \ram[6][7] , \ram[6][6] , \ram[6][5] , \ram[6][4] ,
         \ram[6][3] , \ram[6][2] , \ram[6][1] , \ram[6][0] , \ram[7][18] ,
         \ram[7][17] , \ram[7][16] , \ram[7][15] , \ram[7][14] , \ram[7][13] ,
         \ram[7][12] , \ram[7][11] , \ram[7][10] , \ram[7][9] , \ram[7][8] ,
         \ram[7][7] , \ram[7][6] , \ram[7][5] , \ram[7][4] , \ram[7][3] ,
         \ram[7][2] , \ram[7][1] , \ram[7][0] , N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, n2,
         n19, n26, n28, n29, n31, n33, n35, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n59,
         n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n23, n24, n25, n27, n30, n32, n34, n36, n56,
         n58, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324,
         n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334,
         n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365;
  assign N10 = address[0];
  assign N11 = address[1];
  assign N12 = address[2];

  NAND3_X1 U229 ( .A1(n26), .A2(n471), .A3(N10), .ZN(n2) );
  CLKBUF_X1 U2 ( .A(read_enable), .Z(n461) );
  AND2_X1 U3 ( .A1(write_enable), .A2(N12), .ZN(n26) );
  INV_X1 U4 ( .A(N11), .ZN(n471) );
  INV_X1 U5 ( .A(n35), .ZN(n464) );
  INV_X1 U6 ( .A(n19), .ZN(n462) );
  INV_X1 U7 ( .A(n2), .ZN(n470) );
  INV_X1 U8 ( .A(n33), .ZN(n468) );
  INV_X1 U9 ( .A(n57), .ZN(n469) );
  INV_X1 U10 ( .A(n28), .ZN(n467) );
  INV_X1 U11 ( .A(n31), .ZN(n463) );
  INV_X1 U12 ( .A(n59), .ZN(n465) );
  NAND3_X1 U14 ( .A1(n466), .A2(n471), .A3(n26), .ZN(n19) );
  AND2_X1 U15 ( .A1(n4), .A2(n466), .ZN(n455) );
  AND2_X1 U16 ( .A1(n1), .A2(n466), .ZN(n453) );
  AND2_X1 U17 ( .A1(n3), .A2(n466), .ZN(n452) );
  AND2_X1 U18 ( .A1(n5), .A2(n466), .ZN(n454) );
  NOR2_X1 U19 ( .A1(n472), .A2(N12), .ZN(n29) );
  INV_X1 U20 ( .A(write_enable), .ZN(n472) );
  NAND3_X1 U22 ( .A1(N10), .A2(n26), .A3(N11), .ZN(n57) );
  NAND3_X1 U25 ( .A1(n26), .A2(n466), .A3(N11), .ZN(n59) );
  OAI22_X1 U26 ( .A1(n470), .A2(n1270), .B1(n2), .B2(n491), .ZN(\ram[5][0] )
         );
  OAI22_X1 U27 ( .A1(n470), .A2(n1269), .B1(n2), .B2(n490), .ZN(\ram[5][1] )
         );
  OAI22_X1 U28 ( .A1(n470), .A2(n1268), .B1(n2), .B2(n489), .ZN(\ram[5][2] )
         );
  OAI22_X1 U29 ( .A1(n470), .A2(n1267), .B1(n2), .B2(n488), .ZN(\ram[5][3] )
         );
  OAI22_X1 U30 ( .A1(n470), .A2(n1266), .B1(n2), .B2(n487), .ZN(\ram[5][4] )
         );
  OAI22_X1 U31 ( .A1(n470), .A2(n1265), .B1(n2), .B2(n486), .ZN(\ram[5][5] )
         );
  OAI22_X1 U32 ( .A1(n470), .A2(n1264), .B1(n2), .B2(n485), .ZN(\ram[5][6] )
         );
  OAI22_X1 U33 ( .A1(n470), .A2(n1263), .B1(n2), .B2(n484), .ZN(\ram[5][7] )
         );
  OAI22_X1 U34 ( .A1(n470), .A2(n1262), .B1(n2), .B2(n483), .ZN(\ram[5][8] )
         );
  OAI22_X1 U35 ( .A1(n470), .A2(n1261), .B1(n2), .B2(n482), .ZN(\ram[5][9] )
         );
  OAI22_X1 U36 ( .A1(n470), .A2(n1260), .B1(n2), .B2(n481), .ZN(\ram[5][10] )
         );
  OAI22_X1 U37 ( .A1(n470), .A2(n1259), .B1(n2), .B2(n480), .ZN(\ram[5][11] )
         );
  OAI22_X1 U38 ( .A1(n470), .A2(n1258), .B1(n2), .B2(n479), .ZN(\ram[5][12] )
         );
  OAI22_X1 U39 ( .A1(n470), .A2(n1257), .B1(n2), .B2(n478), .ZN(\ram[5][13] )
         );
  OAI22_X1 U40 ( .A1(n470), .A2(n1256), .B1(n2), .B2(n477), .ZN(\ram[5][14] )
         );
  OAI22_X1 U41 ( .A1(n470), .A2(n1255), .B1(n2), .B2(n476), .ZN(\ram[5][15] )
         );
  OAI22_X1 U42 ( .A1(n470), .A2(n1254), .B1(n2), .B2(n475), .ZN(\ram[5][16] )
         );
  OAI22_X1 U43 ( .A1(n470), .A2(n1253), .B1(n2), .B2(n474), .ZN(\ram[5][17] )
         );
  OAI22_X1 U44 ( .A1(n470), .A2(n1252), .B1(n2), .B2(n473), .ZN(\ram[5][18] )
         );
  INV_X1 U45 ( .A(N10), .ZN(n466) );
  INV_X1 U46 ( .A(datain[0]), .ZN(n491) );
  INV_X1 U47 ( .A(datain[1]), .ZN(n490) );
  INV_X1 U48 ( .A(datain[2]), .ZN(n489) );
  INV_X1 U49 ( .A(datain[3]), .ZN(n488) );
  INV_X1 U50 ( .A(datain[4]), .ZN(n487) );
  INV_X1 U51 ( .A(datain[5]), .ZN(n486) );
  INV_X1 U52 ( .A(datain[6]), .ZN(n485) );
  INV_X1 U53 ( .A(datain[7]), .ZN(n484) );
  INV_X1 U54 ( .A(datain[8]), .ZN(n483) );
  INV_X1 U55 ( .A(datain[9]), .ZN(n482) );
  INV_X1 U56 ( .A(datain[10]), .ZN(n481) );
  INV_X1 U57 ( .A(datain[11]), .ZN(n480) );
  INV_X1 U58 ( .A(datain[12]), .ZN(n479) );
  INV_X1 U59 ( .A(datain[13]), .ZN(n478) );
  INV_X1 U60 ( .A(datain[14]), .ZN(n477) );
  INV_X1 U61 ( .A(datain[15]), .ZN(n476) );
  INV_X1 U62 ( .A(datain[16]), .ZN(n475) );
  INV_X1 U63 ( .A(datain[17]), .ZN(n474) );
  OAI22_X1 U64 ( .A1(n468), .A2(n1251), .B1(n491), .B2(n33), .ZN(\ram[1][0] )
         );
  OAI22_X1 U65 ( .A1(n468), .A2(n1250), .B1(n490), .B2(n33), .ZN(\ram[1][1] )
         );
  OAI22_X1 U66 ( .A1(n468), .A2(n1249), .B1(n489), .B2(n33), .ZN(\ram[1][2] )
         );
  OAI22_X1 U67 ( .A1(n468), .A2(n1248), .B1(n488), .B2(n33), .ZN(\ram[1][3] )
         );
  OAI22_X1 U68 ( .A1(n468), .A2(n1247), .B1(n487), .B2(n33), .ZN(\ram[1][4] )
         );
  OAI22_X1 U69 ( .A1(n468), .A2(n1246), .B1(n486), .B2(n33), .ZN(\ram[1][5] )
         );
  OAI22_X1 U70 ( .A1(n468), .A2(n1245), .B1(n485), .B2(n33), .ZN(\ram[1][6] )
         );
  OAI22_X1 U71 ( .A1(n468), .A2(n1244), .B1(n484), .B2(n33), .ZN(\ram[1][7] )
         );
  OAI22_X1 U72 ( .A1(n468), .A2(n1243), .B1(n483), .B2(n33), .ZN(\ram[1][8] )
         );
  OAI22_X1 U73 ( .A1(n468), .A2(n1242), .B1(n482), .B2(n33), .ZN(\ram[1][9] )
         );
  OAI22_X1 U74 ( .A1(n468), .A2(n1241), .B1(n481), .B2(n33), .ZN(\ram[1][10] )
         );
  OAI22_X1 U75 ( .A1(n468), .A2(n1240), .B1(n480), .B2(n33), .ZN(\ram[1][11] )
         );
  OAI22_X1 U76 ( .A1(n468), .A2(n1239), .B1(n479), .B2(n33), .ZN(\ram[1][12] )
         );
  OAI22_X1 U77 ( .A1(n468), .A2(n1238), .B1(n478), .B2(n33), .ZN(\ram[1][13] )
         );
  OAI22_X1 U78 ( .A1(n468), .A2(n1237), .B1(n477), .B2(n33), .ZN(\ram[1][14] )
         );
  OAI22_X1 U79 ( .A1(n468), .A2(n1236), .B1(n476), .B2(n33), .ZN(\ram[1][15] )
         );
  OAI22_X1 U80 ( .A1(n468), .A2(n1235), .B1(n475), .B2(n33), .ZN(\ram[1][16] )
         );
  OAI22_X1 U81 ( .A1(n468), .A2(n1234), .B1(n474), .B2(n33), .ZN(\ram[1][17] )
         );
  OAI22_X1 U82 ( .A1(n468), .A2(n1233), .B1(n473), .B2(n33), .ZN(\ram[1][18] )
         );
  OAI22_X1 U83 ( .A1(n469), .A2(n1346), .B1(n491), .B2(n57), .ZN(\ram[7][0] )
         );
  OAI22_X1 U84 ( .A1(n469), .A2(n1345), .B1(n490), .B2(n57), .ZN(\ram[7][1] )
         );
  OAI22_X1 U85 ( .A1(n469), .A2(n1344), .B1(n489), .B2(n57), .ZN(\ram[7][2] )
         );
  OAI22_X1 U86 ( .A1(n469), .A2(n1343), .B1(n488), .B2(n57), .ZN(\ram[7][3] )
         );
  OAI22_X1 U87 ( .A1(n469), .A2(n1342), .B1(n487), .B2(n57), .ZN(\ram[7][4] )
         );
  OAI22_X1 U88 ( .A1(n469), .A2(n1341), .B1(n486), .B2(n57), .ZN(\ram[7][5] )
         );
  OAI22_X1 U89 ( .A1(n469), .A2(n1340), .B1(n485), .B2(n57), .ZN(\ram[7][6] )
         );
  OAI22_X1 U90 ( .A1(n469), .A2(n1339), .B1(n484), .B2(n57), .ZN(\ram[7][7] )
         );
  OAI22_X1 U91 ( .A1(n469), .A2(n1338), .B1(n483), .B2(n57), .ZN(\ram[7][8] )
         );
  OAI22_X1 U92 ( .A1(n469), .A2(n1337), .B1(n482), .B2(n57), .ZN(\ram[7][9] )
         );
  OAI22_X1 U93 ( .A1(n469), .A2(n1336), .B1(n481), .B2(n57), .ZN(\ram[7][10] )
         );
  OAI22_X1 U94 ( .A1(n469), .A2(n1335), .B1(n480), .B2(n57), .ZN(\ram[7][11] )
         );
  OAI22_X1 U95 ( .A1(n469), .A2(n1334), .B1(n479), .B2(n57), .ZN(\ram[7][12] )
         );
  OAI22_X1 U96 ( .A1(n469), .A2(n1333), .B1(n478), .B2(n57), .ZN(\ram[7][13] )
         );
  OAI22_X1 U97 ( .A1(n469), .A2(n1332), .B1(n477), .B2(n57), .ZN(\ram[7][14] )
         );
  OAI22_X1 U98 ( .A1(n469), .A2(n1331), .B1(n476), .B2(n57), .ZN(\ram[7][15] )
         );
  OAI22_X1 U99 ( .A1(n469), .A2(n1330), .B1(n475), .B2(n57), .ZN(\ram[7][16] )
         );
  OAI22_X1 U100 ( .A1(n469), .A2(n1329), .B1(n474), .B2(n57), .ZN(\ram[7][17] ) );
  OAI22_X1 U101 ( .A1(n469), .A2(n1328), .B1(n473), .B2(n57), .ZN(\ram[7][18] ) );
  OAI22_X1 U102 ( .A1(n462), .A2(n1232), .B1(n19), .B2(n491), .ZN(\ram[4][0] )
         );
  OAI22_X1 U103 ( .A1(n462), .A2(n1231), .B1(n19), .B2(n490), .ZN(\ram[4][1] )
         );
  OAI22_X1 U104 ( .A1(n462), .A2(n1230), .B1(n19), .B2(n489), .ZN(\ram[4][2] )
         );
  OAI22_X1 U105 ( .A1(n462), .A2(n1229), .B1(n19), .B2(n488), .ZN(\ram[4][3] )
         );
  OAI22_X1 U106 ( .A1(n467), .A2(n1327), .B1(n491), .B2(n28), .ZN(\ram[3][0] )
         );
  OAI22_X1 U107 ( .A1(n467), .A2(n1326), .B1(n490), .B2(n28), .ZN(\ram[3][1] )
         );
  OAI22_X1 U108 ( .A1(n467), .A2(n1325), .B1(n489), .B2(n28), .ZN(\ram[3][2] )
         );
  OAI22_X1 U109 ( .A1(n467), .A2(n1324), .B1(n488), .B2(n28), .ZN(\ram[3][3] )
         );
  OAI22_X1 U110 ( .A1(n467), .A2(n1323), .B1(n487), .B2(n28), .ZN(\ram[3][4] )
         );
  OAI22_X1 U111 ( .A1(n467), .A2(n1322), .B1(n486), .B2(n28), .ZN(\ram[3][5] )
         );
  OAI22_X1 U112 ( .A1(n467), .A2(n1321), .B1(n485), .B2(n28), .ZN(\ram[3][6] )
         );
  OAI22_X1 U113 ( .A1(n467), .A2(n1320), .B1(n484), .B2(n28), .ZN(\ram[3][7] )
         );
  OAI22_X1 U114 ( .A1(n467), .A2(n1319), .B1(n483), .B2(n28), .ZN(\ram[3][8] )
         );
  OAI22_X1 U115 ( .A1(n467), .A2(n1318), .B1(n482), .B2(n28), .ZN(\ram[3][9] )
         );
  OAI22_X1 U116 ( .A1(n467), .A2(n1317), .B1(n481), .B2(n28), .ZN(\ram[3][10] ) );
  OAI22_X1 U117 ( .A1(n467), .A2(n1316), .B1(n480), .B2(n28), .ZN(\ram[3][11] ) );
  OAI22_X1 U118 ( .A1(n467), .A2(n1315), .B1(n479), .B2(n28), .ZN(\ram[3][12] ) );
  OAI22_X1 U119 ( .A1(n467), .A2(n1314), .B1(n478), .B2(n28), .ZN(\ram[3][13] ) );
  OAI22_X1 U120 ( .A1(n467), .A2(n1313), .B1(n477), .B2(n28), .ZN(\ram[3][14] ) );
  OAI22_X1 U121 ( .A1(n467), .A2(n1312), .B1(n476), .B2(n28), .ZN(\ram[3][15] ) );
  OAI22_X1 U122 ( .A1(n467), .A2(n1311), .B1(n475), .B2(n28), .ZN(\ram[3][16] ) );
  OAI22_X1 U123 ( .A1(n467), .A2(n1310), .B1(n474), .B2(n28), .ZN(\ram[3][17] ) );
  OAI22_X1 U124 ( .A1(n467), .A2(n1309), .B1(n473), .B2(n28), .ZN(\ram[3][18] ) );
  OAI22_X1 U125 ( .A1(n463), .A2(n1308), .B1(n491), .B2(n31), .ZN(\ram[2][0] )
         );
  OAI22_X1 U126 ( .A1(n463), .A2(n1307), .B1(n490), .B2(n31), .ZN(\ram[2][1] )
         );
  OAI22_X1 U127 ( .A1(n463), .A2(n1306), .B1(n489), .B2(n31), .ZN(\ram[2][2] )
         );
  OAI22_X1 U128 ( .A1(n463), .A2(n1305), .B1(n488), .B2(n31), .ZN(\ram[2][3] )
         );
  OAI22_X1 U129 ( .A1(n463), .A2(n1304), .B1(n487), .B2(n31), .ZN(\ram[2][4] )
         );
  OAI22_X1 U130 ( .A1(n463), .A2(n1303), .B1(n486), .B2(n31), .ZN(\ram[2][5] )
         );
  OAI22_X1 U131 ( .A1(n463), .A2(n1302), .B1(n485), .B2(n31), .ZN(\ram[2][6] )
         );
  OAI22_X1 U132 ( .A1(n463), .A2(n1301), .B1(n484), .B2(n31), .ZN(\ram[2][7] )
         );
  OAI22_X1 U133 ( .A1(n463), .A2(n1300), .B1(n483), .B2(n31), .ZN(\ram[2][8] )
         );
  OAI22_X1 U134 ( .A1(n463), .A2(n1299), .B1(n482), .B2(n31), .ZN(\ram[2][9] )
         );
  OAI22_X1 U135 ( .A1(n463), .A2(n1298), .B1(n481), .B2(n31), .ZN(\ram[2][10] ) );
  OAI22_X1 U136 ( .A1(n463), .A2(n1297), .B1(n480), .B2(n31), .ZN(\ram[2][11] ) );
  OAI22_X1 U137 ( .A1(n463), .A2(n1296), .B1(n479), .B2(n31), .ZN(\ram[2][12] ) );
  OAI22_X1 U138 ( .A1(n463), .A2(n1295), .B1(n478), .B2(n31), .ZN(\ram[2][13] ) );
  OAI22_X1 U139 ( .A1(n463), .A2(n1294), .B1(n477), .B2(n31), .ZN(\ram[2][14] ) );
  OAI22_X1 U140 ( .A1(n463), .A2(n1293), .B1(n476), .B2(n31), .ZN(\ram[2][15] ) );
  OAI22_X1 U141 ( .A1(n463), .A2(n1292), .B1(n475), .B2(n31), .ZN(\ram[2][16] ) );
  OAI22_X1 U142 ( .A1(n463), .A2(n1291), .B1(n474), .B2(n31), .ZN(\ram[2][17] ) );
  OAI22_X1 U143 ( .A1(n463), .A2(n1290), .B1(n473), .B2(n31), .ZN(\ram[2][18] ) );
  OAI22_X1 U144 ( .A1(n465), .A2(n1289), .B1(n491), .B2(n59), .ZN(\ram[6][0] )
         );
  OAI22_X1 U145 ( .A1(n465), .A2(n1288), .B1(n490), .B2(n59), .ZN(\ram[6][1] )
         );
  OAI22_X1 U146 ( .A1(n465), .A2(n1287), .B1(n489), .B2(n59), .ZN(\ram[6][2] )
         );
  OAI22_X1 U147 ( .A1(n465), .A2(n1286), .B1(n488), .B2(n59), .ZN(\ram[6][3] )
         );
  OAI22_X1 U148 ( .A1(n465), .A2(n1285), .B1(n487), .B2(n59), .ZN(\ram[6][4] )
         );
  OAI22_X1 U149 ( .A1(n465), .A2(n1284), .B1(n486), .B2(n59), .ZN(\ram[6][5] )
         );
  OAI22_X1 U150 ( .A1(n465), .A2(n1283), .B1(n485), .B2(n59), .ZN(\ram[6][6] )
         );
  OAI22_X1 U151 ( .A1(n465), .A2(n1282), .B1(n484), .B2(n59), .ZN(\ram[6][7] )
         );
  OAI22_X1 U152 ( .A1(n465), .A2(n1281), .B1(n483), .B2(n59), .ZN(\ram[6][8] )
         );
  OAI22_X1 U153 ( .A1(n465), .A2(n1280), .B1(n482), .B2(n59), .ZN(\ram[6][9] )
         );
  OAI22_X1 U154 ( .A1(n465), .A2(n1279), .B1(n481), .B2(n59), .ZN(\ram[6][10] ) );
  OAI22_X1 U155 ( .A1(n465), .A2(n1278), .B1(n480), .B2(n59), .ZN(\ram[6][11] ) );
  OAI22_X1 U156 ( .A1(n465), .A2(n1277), .B1(n479), .B2(n59), .ZN(\ram[6][12] ) );
  OAI22_X1 U157 ( .A1(n465), .A2(n1276), .B1(n478), .B2(n59), .ZN(\ram[6][13] ) );
  OAI22_X1 U158 ( .A1(n465), .A2(n1275), .B1(n477), .B2(n59), .ZN(\ram[6][14] ) );
  OAI22_X1 U159 ( .A1(n465), .A2(n1274), .B1(n476), .B2(n59), .ZN(\ram[6][15] ) );
  OAI22_X1 U160 ( .A1(n465), .A2(n1273), .B1(n475), .B2(n59), .ZN(\ram[6][16] ) );
  OAI22_X1 U161 ( .A1(n465), .A2(n1272), .B1(n474), .B2(n59), .ZN(\ram[6][17] ) );
  OAI22_X1 U162 ( .A1(n465), .A2(n1271), .B1(n473), .B2(n59), .ZN(\ram[6][18] ) );
  OAI22_X1 U163 ( .A1(n464), .A2(n1228), .B1(n491), .B2(n35), .ZN(\ram[0][0] )
         );
  OAI22_X1 U164 ( .A1(n464), .A2(n1227), .B1(n490), .B2(n35), .ZN(\ram[0][1] )
         );
  OAI22_X1 U165 ( .A1(n464), .A2(n1226), .B1(n489), .B2(n35), .ZN(\ram[0][2] )
         );
  OAI22_X1 U166 ( .A1(n464), .A2(n1225), .B1(n488), .B2(n35), .ZN(\ram[0][3] )
         );
  OAI22_X1 U167 ( .A1(n464), .A2(n1224), .B1(n487), .B2(n35), .ZN(\ram[0][4] )
         );
  OAI22_X1 U168 ( .A1(n464), .A2(n1223), .B1(n486), .B2(n35), .ZN(\ram[0][5] )
         );
  OAI22_X1 U169 ( .A1(n464), .A2(n1222), .B1(n485), .B2(n35), .ZN(\ram[0][6] )
         );
  OAI22_X1 U170 ( .A1(n464), .A2(n1221), .B1(n484), .B2(n35), .ZN(\ram[0][7] )
         );
  OAI22_X1 U171 ( .A1(n464), .A2(n1220), .B1(n483), .B2(n35), .ZN(\ram[0][8] )
         );
  OAI22_X1 U172 ( .A1(n464), .A2(n1219), .B1(n482), .B2(n35), .ZN(\ram[0][9] )
         );
  OAI22_X1 U173 ( .A1(n464), .A2(n1218), .B1(n481), .B2(n35), .ZN(\ram[0][10] ) );
  OAI22_X1 U174 ( .A1(n464), .A2(n1217), .B1(n480), .B2(n35), .ZN(\ram[0][11] ) );
  OAI22_X1 U175 ( .A1(n464), .A2(n1216), .B1(n479), .B2(n35), .ZN(\ram[0][12] ) );
  OAI22_X1 U176 ( .A1(n464), .A2(n1215), .B1(n478), .B2(n35), .ZN(\ram[0][13] ) );
  OAI22_X1 U177 ( .A1(n464), .A2(n1214), .B1(n477), .B2(n35), .ZN(\ram[0][14] ) );
  OAI22_X1 U178 ( .A1(n464), .A2(n1213), .B1(n476), .B2(n35), .ZN(\ram[0][15] ) );
  OAI22_X1 U179 ( .A1(n464), .A2(n1212), .B1(n475), .B2(n35), .ZN(\ram[0][16] ) );
  OAI22_X1 U180 ( .A1(n464), .A2(n1211), .B1(n474), .B2(n35), .ZN(\ram[0][17] ) );
  OAI22_X1 U181 ( .A1(n464), .A2(n1210), .B1(n473), .B2(n35), .ZN(\ram[0][18] ) );
  OAI22_X1 U182 ( .A1(n462), .A2(n1209), .B1(n487), .B2(n19), .ZN(\ram[4][4] )
         );
  OAI22_X1 U183 ( .A1(n462), .A2(n1208), .B1(n486), .B2(n19), .ZN(\ram[4][5] )
         );
  OAI22_X1 U184 ( .A1(n462), .A2(n1207), .B1(n485), .B2(n19), .ZN(\ram[4][6] )
         );
  OAI22_X1 U185 ( .A1(n462), .A2(n1206), .B1(n484), .B2(n19), .ZN(\ram[4][7] )
         );
  OAI22_X1 U186 ( .A1(n462), .A2(n1205), .B1(n483), .B2(n19), .ZN(\ram[4][8] )
         );
  OAI22_X1 U187 ( .A1(n462), .A2(n1204), .B1(n482), .B2(n19), .ZN(\ram[4][9] )
         );
  OAI22_X1 U188 ( .A1(n462), .A2(n1203), .B1(n481), .B2(n19), .ZN(\ram[4][10] ) );
  OAI22_X1 U189 ( .A1(n462), .A2(n1202), .B1(n480), .B2(n19), .ZN(\ram[4][11] ) );
  OAI22_X1 U190 ( .A1(n462), .A2(n1201), .B1(n479), .B2(n19), .ZN(\ram[4][12] ) );
  OAI22_X1 U191 ( .A1(n462), .A2(n1200), .B1(n478), .B2(n19), .ZN(\ram[4][13] ) );
  OAI22_X1 U192 ( .A1(n462), .A2(n1199), .B1(n477), .B2(n19), .ZN(\ram[4][14] ) );
  OAI22_X1 U193 ( .A1(n462), .A2(n1198), .B1(n476), .B2(n19), .ZN(\ram[4][15] ) );
  OAI22_X1 U194 ( .A1(n462), .A2(n1197), .B1(n475), .B2(n19), .ZN(\ram[4][16] ) );
  OAI22_X1 U195 ( .A1(n462), .A2(n1196), .B1(n474), .B2(n19), .ZN(\ram[4][17] ) );
  OAI22_X1 U196 ( .A1(n462), .A2(n1195), .B1(n473), .B2(n19), .ZN(\ram[4][18] ) );
  INV_X1 U197 ( .A(N12), .ZN(n460) );
  OAI21_X1 U198 ( .B1(n461), .B2(n1365), .A(n37), .ZN(n1194) );
  NAND2_X1 U199 ( .A1(n461), .A2(N48), .ZN(n37) );
  OAI21_X1 U200 ( .B1(read_enable), .B2(n1364), .A(n38), .ZN(n1193) );
  NAND2_X1 U201 ( .A1(N47), .A2(read_enable), .ZN(n38) );
  OAI21_X1 U202 ( .B1(read_enable), .B2(n1363), .A(n39), .ZN(n1192) );
  NAND2_X1 U203 ( .A1(N46), .A2(read_enable), .ZN(n39) );
  OAI21_X1 U204 ( .B1(read_enable), .B2(n1362), .A(n40), .ZN(n1191) );
  NAND2_X1 U205 ( .A1(N45), .A2(read_enable), .ZN(n40) );
  OAI21_X1 U206 ( .B1(read_enable), .B2(n1361), .A(n41), .ZN(n1190) );
  NAND2_X1 U207 ( .A1(N44), .A2(read_enable), .ZN(n41) );
  OAI21_X1 U208 ( .B1(read_enable), .B2(n1360), .A(n42), .ZN(n1189) );
  NAND2_X1 U209 ( .A1(N43), .A2(read_enable), .ZN(n42) );
  OAI21_X1 U210 ( .B1(read_enable), .B2(n1359), .A(n43), .ZN(n1188) );
  NAND2_X1 U211 ( .A1(N42), .A2(read_enable), .ZN(n43) );
  OAI21_X1 U212 ( .B1(read_enable), .B2(n1358), .A(n44), .ZN(n1187) );
  NAND2_X1 U213 ( .A1(N41), .A2(read_enable), .ZN(n44) );
  OAI21_X1 U214 ( .B1(read_enable), .B2(n1357), .A(n45), .ZN(n1186) );
  NAND2_X1 U215 ( .A1(N40), .A2(n461), .ZN(n45) );
  OAI21_X1 U216 ( .B1(read_enable), .B2(n1356), .A(n46), .ZN(n1185) );
  NAND2_X1 U217 ( .A1(N39), .A2(n461), .ZN(n46) );
  OAI21_X1 U218 ( .B1(read_enable), .B2(n1355), .A(n47), .ZN(n1184) );
  NAND2_X1 U219 ( .A1(N38), .A2(n461), .ZN(n47) );
  OAI21_X1 U220 ( .B1(read_enable), .B2(n1354), .A(n48), .ZN(n1183) );
  NAND2_X1 U221 ( .A1(N37), .A2(n461), .ZN(n48) );
  OAI21_X1 U222 ( .B1(read_enable), .B2(n1353), .A(n49), .ZN(n1182) );
  NAND2_X1 U223 ( .A1(N36), .A2(n461), .ZN(n49) );
  OAI21_X1 U224 ( .B1(n461), .B2(n1352), .A(n50), .ZN(n1181) );
  NAND2_X1 U225 ( .A1(N35), .A2(n461), .ZN(n50) );
  OAI21_X1 U226 ( .B1(n461), .B2(n1351), .A(n51), .ZN(n1180) );
  NAND2_X1 U227 ( .A1(N34), .A2(read_enable), .ZN(n51) );
  OAI21_X1 U228 ( .B1(n461), .B2(n1350), .A(n52), .ZN(n1179) );
  NAND2_X1 U230 ( .A1(N33), .A2(read_enable), .ZN(n52) );
  OAI21_X1 U231 ( .B1(n461), .B2(n1349), .A(n53), .ZN(n1178) );
  NAND2_X1 U232 ( .A1(N32), .A2(read_enable), .ZN(n53) );
  OAI21_X1 U233 ( .B1(n461), .B2(n1348), .A(n54), .ZN(n1177) );
  NAND2_X1 U234 ( .A1(N31), .A2(read_enable), .ZN(n54) );
  OAI21_X1 U235 ( .B1(n461), .B2(n1347), .A(n55), .ZN(n1176) );
  NAND2_X1 U236 ( .A1(N30), .A2(n461), .ZN(n55) );
  NOR2_X1 U237 ( .A1(n460), .A2(N11), .ZN(n1) );
  AND2_X1 U238 ( .A1(n1), .A2(N10), .ZN(n449) );
  NOR2_X1 U239 ( .A1(n460), .A2(n471), .ZN(n3) );
  AND2_X1 U240 ( .A1(N10), .A2(n3), .ZN(n448) );
  AOI22_X1 U241 ( .A1(n814), .A2(n449), .B1(n776), .B2(n448), .ZN(n9) );
  NOR2_X1 U242 ( .A1(N11), .A2(N12), .ZN(n4) );
  AND2_X1 U243 ( .A1(n4), .A2(N10), .ZN(n451) );
  NOR2_X1 U244 ( .A1(n471), .A2(N12), .ZN(n5) );
  AND2_X1 U245 ( .A1(n5), .A2(N10), .ZN(n450) );
  AOI22_X1 U246 ( .A1(n795), .A2(n451), .B1(n753), .B2(n450), .ZN(n8) );
  AOI22_X1 U247 ( .A1(n757), .A2(n453), .B1(n715), .B2(n452), .ZN(n7) );
  AOI22_X1 U248 ( .A1(n696), .A2(n455), .B1(n734), .B2(n454), .ZN(n6) );
  NAND4_X1 U249 ( .A1(n9), .A2(n8), .A3(n7), .A4(n6), .ZN(N48) );
  AOI22_X1 U250 ( .A1(n813), .A2(n449), .B1(n775), .B2(n448), .ZN(n13) );
  AOI22_X1 U251 ( .A1(n794), .A2(n451), .B1(n752), .B2(n450), .ZN(n12) );
  AOI22_X1 U252 ( .A1(n756), .A2(n453), .B1(n714), .B2(n452), .ZN(n11) );
  AOI22_X1 U253 ( .A1(n695), .A2(n455), .B1(n733), .B2(n454), .ZN(n10) );
  NAND4_X1 U254 ( .A1(n13), .A2(n12), .A3(n11), .A4(n10), .ZN(N47) );
  AOI22_X1 U255 ( .A1(n812), .A2(n449), .B1(n774), .B2(n448), .ZN(n17) );
  AOI22_X1 U256 ( .A1(n793), .A2(n451), .B1(n751), .B2(n450), .ZN(n16) );
  AOI22_X1 U257 ( .A1(n755), .A2(n453), .B1(n713), .B2(n452), .ZN(n15) );
  AOI22_X1 U258 ( .A1(n694), .A2(n455), .B1(n732), .B2(n454), .ZN(n14) );
  NAND4_X1 U259 ( .A1(n17), .A2(n16), .A3(n15), .A4(n14), .ZN(N46) );
  AOI22_X1 U260 ( .A1(n811), .A2(n449), .B1(n773), .B2(n448), .ZN(n22) );
  AOI22_X1 U261 ( .A1(n792), .A2(n451), .B1(n750), .B2(n450), .ZN(n21) );
  AOI22_X1 U262 ( .A1(n754), .A2(n453), .B1(n712), .B2(n452), .ZN(n20) );
  AOI22_X1 U263 ( .A1(n693), .A2(n455), .B1(n731), .B2(n454), .ZN(n18) );
  NAND4_X1 U264 ( .A1(n22), .A2(n21), .A3(n20), .A4(n18), .ZN(N45) );
  AOI22_X1 U265 ( .A1(n810), .A2(n449), .B1(n772), .B2(n448), .ZN(n27) );
  AOI22_X1 U266 ( .A1(n791), .A2(n451), .B1(n749), .B2(n450), .ZN(n25) );
  AOI22_X1 U267 ( .A1(n677), .A2(n453), .B1(n711), .B2(n452), .ZN(n24) );
  AOI22_X1 U268 ( .A1(n692), .A2(n455), .B1(n730), .B2(n454), .ZN(n23) );
  NAND4_X1 U269 ( .A1(n27), .A2(n25), .A3(n24), .A4(n23), .ZN(N44) );
  AOI22_X1 U270 ( .A1(n809), .A2(n449), .B1(n771), .B2(n448), .ZN(n36) );
  AOI22_X1 U271 ( .A1(n790), .A2(n451), .B1(n748), .B2(n450), .ZN(n34) );
  AOI22_X1 U272 ( .A1(n676), .A2(n453), .B1(n710), .B2(n452), .ZN(n32) );
  AOI22_X1 U273 ( .A1(n691), .A2(n455), .B1(n729), .B2(n454), .ZN(n30) );
  NAND4_X1 U274 ( .A1(n36), .A2(n34), .A3(n32), .A4(n30), .ZN(N43) );
  AOI22_X1 U275 ( .A1(n808), .A2(n449), .B1(n770), .B2(n448), .ZN(n403) );
  AOI22_X1 U276 ( .A1(n789), .A2(n451), .B1(n747), .B2(n450), .ZN(n402) );
  AOI22_X1 U277 ( .A1(n675), .A2(n453), .B1(n709), .B2(n452), .ZN(n58) );
  AOI22_X1 U278 ( .A1(n690), .A2(n455), .B1(n728), .B2(n454), .ZN(n56) );
  NAND4_X1 U279 ( .A1(n403), .A2(n402), .A3(n58), .A4(n56), .ZN(N42) );
  AOI22_X1 U280 ( .A1(n807), .A2(n449), .B1(n769), .B2(n448), .ZN(n407) );
  AOI22_X1 U281 ( .A1(n788), .A2(n451), .B1(n746), .B2(n450), .ZN(n406) );
  AOI22_X1 U282 ( .A1(n674), .A2(n453), .B1(n708), .B2(n452), .ZN(n405) );
  AOI22_X1 U283 ( .A1(n689), .A2(n455), .B1(n727), .B2(n454), .ZN(n404) );
  NAND4_X1 U284 ( .A1(n407), .A2(n406), .A3(n405), .A4(n404), .ZN(N41) );
  AOI22_X1 U285 ( .A1(n806), .A2(n449), .B1(n768), .B2(n448), .ZN(n411) );
  AOI22_X1 U286 ( .A1(n787), .A2(n451), .B1(n745), .B2(n450), .ZN(n410) );
  AOI22_X1 U287 ( .A1(n673), .A2(n453), .B1(n707), .B2(n452), .ZN(n409) );
  AOI22_X1 U288 ( .A1(n688), .A2(n455), .B1(n726), .B2(n454), .ZN(n408) );
  NAND4_X1 U289 ( .A1(n411), .A2(n410), .A3(n409), .A4(n408), .ZN(N40) );
  AOI22_X1 U290 ( .A1(n805), .A2(n449), .B1(n767), .B2(n448), .ZN(n415) );
  AOI22_X1 U291 ( .A1(n786), .A2(n451), .B1(n744), .B2(n450), .ZN(n414) );
  AOI22_X1 U292 ( .A1(n672), .A2(n453), .B1(n706), .B2(n452), .ZN(n413) );
  AOI22_X1 U293 ( .A1(n687), .A2(n455), .B1(n725), .B2(n454), .ZN(n412) );
  NAND4_X1 U294 ( .A1(n415), .A2(n414), .A3(n413), .A4(n412), .ZN(N39) );
  AOI22_X1 U295 ( .A1(n804), .A2(n449), .B1(n766), .B2(n448), .ZN(n419) );
  AOI22_X1 U296 ( .A1(n785), .A2(n451), .B1(n743), .B2(n450), .ZN(n418) );
  AOI22_X1 U297 ( .A1(n671), .A2(n453), .B1(n705), .B2(n452), .ZN(n417) );
  AOI22_X1 U298 ( .A1(n686), .A2(n455), .B1(n724), .B2(n454), .ZN(n416) );
  NAND4_X1 U299 ( .A1(n419), .A2(n418), .A3(n417), .A4(n416), .ZN(N38) );
  AOI22_X1 U300 ( .A1(n803), .A2(n449), .B1(n765), .B2(n448), .ZN(n423) );
  AOI22_X1 U301 ( .A1(n784), .A2(n451), .B1(n742), .B2(n450), .ZN(n422) );
  AOI22_X1 U302 ( .A1(n670), .A2(n453), .B1(n704), .B2(n452), .ZN(n421) );
  AOI22_X1 U303 ( .A1(n685), .A2(n455), .B1(n723), .B2(n454), .ZN(n420) );
  NAND4_X1 U304 ( .A1(n423), .A2(n422), .A3(n421), .A4(n420), .ZN(N37) );
  AOI22_X1 U305 ( .A1(n802), .A2(n449), .B1(n764), .B2(n448), .ZN(n427) );
  AOI22_X1 U306 ( .A1(n783), .A2(n451), .B1(n741), .B2(n450), .ZN(n426) );
  AOI22_X1 U307 ( .A1(n669), .A2(n453), .B1(n703), .B2(n452), .ZN(n425) );
  AOI22_X1 U308 ( .A1(n684), .A2(n455), .B1(n722), .B2(n454), .ZN(n424) );
  NAND4_X1 U309 ( .A1(n427), .A2(n426), .A3(n425), .A4(n424), .ZN(N36) );
  AOI22_X1 U310 ( .A1(n801), .A2(n449), .B1(n763), .B2(n448), .ZN(n431) );
  AOI22_X1 U311 ( .A1(n782), .A2(n451), .B1(n740), .B2(n450), .ZN(n430) );
  AOI22_X1 U312 ( .A1(n668), .A2(n453), .B1(n702), .B2(n452), .ZN(n429) );
  AOI22_X1 U313 ( .A1(n683), .A2(n455), .B1(n721), .B2(n454), .ZN(n428) );
  NAND4_X1 U314 ( .A1(n431), .A2(n430), .A3(n429), .A4(n428), .ZN(N35) );
  AOI22_X1 U315 ( .A1(n800), .A2(n449), .B1(n762), .B2(n448), .ZN(n435) );
  AOI22_X1 U316 ( .A1(n781), .A2(n451), .B1(n739), .B2(n450), .ZN(n434) );
  AOI22_X1 U317 ( .A1(n667), .A2(n453), .B1(n701), .B2(n452), .ZN(n433) );
  AOI22_X1 U318 ( .A1(n682), .A2(n455), .B1(n720), .B2(n454), .ZN(n432) );
  NAND4_X1 U319 ( .A1(n435), .A2(n434), .A3(n433), .A4(n432), .ZN(N34) );
  AOI22_X1 U320 ( .A1(n799), .A2(n449), .B1(n761), .B2(n448), .ZN(n439) );
  AOI22_X1 U321 ( .A1(n780), .A2(n451), .B1(n738), .B2(n450), .ZN(n438) );
  AOI22_X1 U322 ( .A1(n666), .A2(n453), .B1(n700), .B2(n452), .ZN(n437) );
  AOI22_X1 U323 ( .A1(n681), .A2(n455), .B1(n719), .B2(n454), .ZN(n436) );
  NAND4_X1 U324 ( .A1(n439), .A2(n438), .A3(n437), .A4(n436), .ZN(N33) );
  AOI22_X1 U325 ( .A1(n798), .A2(n449), .B1(n760), .B2(n448), .ZN(n443) );
  AOI22_X1 U326 ( .A1(n779), .A2(n451), .B1(n737), .B2(n450), .ZN(n442) );
  AOI22_X1 U327 ( .A1(n665), .A2(n453), .B1(n699), .B2(n452), .ZN(n441) );
  AOI22_X1 U328 ( .A1(n680), .A2(n455), .B1(n718), .B2(n454), .ZN(n440) );
  NAND4_X1 U329 ( .A1(n443), .A2(n442), .A3(n441), .A4(n440), .ZN(N32) );
  AOI22_X1 U330 ( .A1(n797), .A2(n449), .B1(n759), .B2(n448), .ZN(n447) );
  AOI22_X1 U331 ( .A1(n778), .A2(n451), .B1(n736), .B2(n450), .ZN(n446) );
  AOI22_X1 U332 ( .A1(n664), .A2(n453), .B1(n698), .B2(n452), .ZN(n445) );
  AOI22_X1 U333 ( .A1(n679), .A2(n455), .B1(n717), .B2(n454), .ZN(n444) );
  NAND4_X1 U334 ( .A1(n447), .A2(n446), .A3(n445), .A4(n444), .ZN(N31) );
  AOI22_X1 U335 ( .A1(n796), .A2(n449), .B1(n758), .B2(n448), .ZN(n459) );
  AOI22_X1 U336 ( .A1(n777), .A2(n451), .B1(n735), .B2(n450), .ZN(n458) );
  AOI22_X1 U337 ( .A1(n663), .A2(n453), .B1(n697), .B2(n452), .ZN(n457) );
  AOI22_X1 U338 ( .A1(n678), .A2(n455), .B1(n716), .B2(n454), .ZN(n456) );
  NAND4_X1 U339 ( .A1(n459), .A2(n458), .A3(n457), .A4(n456), .ZN(N30) );
  INV_X1 U340 ( .A(datain[18]), .ZN(n473) );
  DFF_X1 clock_r_REG12_S2 ( .D(n1194), .CK(clock), .Q(dataout[0]), .QN(n1365)
         );
  DFF_X1 clock_r_REG19_S2 ( .D(n1193), .CK(clock), .Q(dataout[1]), .QN(n1364)
         );
  DFF_X1 clock_r_REG18_S2 ( .D(n1192), .CK(clock), .Q(dataout[2]), .QN(n1363)
         );
  DFF_X1 clock_r_REG17_S2 ( .D(n1191), .CK(clock), .Q(dataout[3]), .QN(n1362)
         );
  DFF_X1 clock_r_REG16_S2 ( .D(n1190), .CK(clock), .Q(dataout[4]), .QN(n1361)
         );
  DFF_X1 clock_r_REG15_S2 ( .D(n1189), .CK(clock), .Q(dataout[5]), .QN(n1360)
         );
  DFF_X1 clock_r_REG14_S2 ( .D(n1188), .CK(clock), .Q(dataout[6]), .QN(n1359)
         );
  DFF_X1 clock_r_REG13_S2 ( .D(n1187), .CK(clock), .Q(dataout[7]), .QN(n1358)
         );
  DFF_X1 clock_r_REG11_S2 ( .D(n1186), .CK(clock), .Q(dataout[8]), .QN(n1357)
         );
  DFF_X1 clock_r_REG10_S2 ( .D(n1185), .CK(clock), .Q(dataout[9]), .QN(n1356)
         );
  DFF_X1 clock_r_REG9_S2 ( .D(n1184), .CK(clock), .Q(dataout[10]), .QN(n1355)
         );
  DFF_X1 clock_r_REG8_S2 ( .D(n1183), .CK(clock), .Q(dataout[11]), .QN(n1354)
         );
  DFF_X1 clock_r_REG7_S2 ( .D(n1182), .CK(clock), .Q(dataout[12]), .QN(n1353)
         );
  DFF_X1 clock_r_REG6_S2 ( .D(n1181), .CK(clock), .Q(dataout[13]), .QN(n1352)
         );
  DFF_X1 clock_r_REG5_S2 ( .D(n1180), .CK(clock), .Q(dataout[14]), .QN(n1351)
         );
  DFF_X1 clock_r_REG4_S2 ( .D(n1179), .CK(clock), .Q(dataout[15]), .QN(n1350)
         );
  DFF_X1 clock_r_REG3_S2 ( .D(n1178), .CK(clock), .Q(dataout[16]), .QN(n1349)
         );
  DFF_X1 clock_r_REG2_S2 ( .D(n1177), .CK(clock), .Q(dataout[17]), .QN(n1348)
         );
  DFF_X1 clock_r_REG1_S2 ( .D(n1176), .CK(clock), .Q(dataout[18]), .QN(n1347)
         );
  DFF_X1 clock_r_REG200_S4 ( .D(\ram[5][0] ), .CK(clock), .Q(n814), .QN(n1270)
         );
  DFF_X1 clock_r_REG191_S4 ( .D(\ram[5][1] ), .CK(clock), .Q(n813), .QN(n1269)
         );
  DFF_X1 clock_r_REG183_S4 ( .D(\ram[5][2] ), .CK(clock), .Q(n812), .QN(n1268)
         );
  DFF_X1 clock_r_REG174_S4 ( .D(\ram[5][3] ), .CK(clock), .Q(n811), .QN(n1267)
         );
  DFF_X1 clock_r_REG165_S4 ( .D(\ram[5][4] ), .CK(clock), .Q(n810), .QN(n1266)
         );
  DFF_X1 clock_r_REG157_S4 ( .D(\ram[5][5] ), .CK(clock), .Q(n809), .QN(n1265)
         );
  DFF_X1 clock_r_REG147_S4 ( .D(\ram[5][6] ), .CK(clock), .Q(n808), .QN(n1264)
         );
  DFF_X1 clock_r_REG138_S4 ( .D(\ram[5][7] ), .CK(clock), .Q(n807), .QN(n1263)
         );
  DFF_X1 clock_r_REG129_S4 ( .D(\ram[5][8] ), .CK(clock), .Q(n806), .QN(n1262)
         );
  DFF_X1 clock_r_REG120_S4 ( .D(\ram[5][9] ), .CK(clock), .Q(n805), .QN(n1261)
         );
  DFF_X1 clock_r_REG110_S4 ( .D(\ram[5][10] ), .CK(clock), .Q(n804), .QN(n1260) );
  DFF_X1 clock_r_REG100_S4 ( .D(\ram[5][11] ), .CK(clock), .Q(n803), .QN(n1259) );
  DFF_X1 clock_r_REG91_S4 ( .D(\ram[5][12] ), .CK(clock), .Q(n802), .QN(n1258)
         );
  DFF_X1 clock_r_REG81_S4 ( .D(\ram[5][13] ), .CK(clock), .Q(n801), .QN(n1257)
         );
  DFF_X1 clock_r_REG73_S4 ( .D(\ram[5][14] ), .CK(clock), .Q(n800), .QN(n1256)
         );
  DFF_X1 clock_r_REG64_S4 ( .D(\ram[5][15] ), .CK(clock), .Q(n799), .QN(n1255)
         );
  DFF_X1 clock_r_REG55_S4 ( .D(\ram[5][16] ), .CK(clock), .Q(n798), .QN(n1254)
         );
  DFF_X1 clock_r_REG46_S4 ( .D(\ram[5][17] ), .CK(clock), .Q(n797), .QN(n1253)
         );
  DFF_X1 clock_r_REG38_S4 ( .D(\ram[5][18] ), .CK(clock), .Q(n796), .QN(n1252)
         );
  DFF_X1 clock_r_REG199_S4 ( .D(\ram[1][0] ), .CK(clock), .Q(n795), .QN(n1251)
         );
  DFF_X1 clock_r_REG190_S4 ( .D(\ram[1][1] ), .CK(clock), .Q(n794), .QN(n1250)
         );
  DFF_X1 clock_r_REG182_S4 ( .D(\ram[1][2] ), .CK(clock), .Q(n793), .QN(n1249)
         );
  DFF_X1 clock_r_REG173_S4 ( .D(\ram[1][3] ), .CK(clock), .Q(n792), .QN(n1248)
         );
  DFF_X1 clock_r_REG164_S4 ( .D(\ram[1][4] ), .CK(clock), .Q(n791), .QN(n1247)
         );
  DFF_X1 clock_r_REG156_S4 ( .D(\ram[1][5] ), .CK(clock), .Q(n790), .QN(n1246)
         );
  DFF_X1 clock_r_REG146_S4 ( .D(\ram[1][6] ), .CK(clock), .Q(n789), .QN(n1245)
         );
  DFF_X1 clock_r_REG137_S4 ( .D(\ram[1][7] ), .CK(clock), .Q(n788), .QN(n1244)
         );
  DFF_X1 clock_r_REG128_S4 ( .D(\ram[1][8] ), .CK(clock), .Q(n787), .QN(n1243)
         );
  DFF_X1 clock_r_REG119_S4 ( .D(\ram[1][9] ), .CK(clock), .Q(n786), .QN(n1242)
         );
  DFF_X1 clock_r_REG109_S4 ( .D(\ram[1][10] ), .CK(clock), .Q(n785), .QN(n1241) );
  DFF_X1 clock_r_REG99_S4 ( .D(\ram[1][11] ), .CK(clock), .Q(n784), .QN(n1240)
         );
  DFF_X1 clock_r_REG90_S4 ( .D(\ram[1][12] ), .CK(clock), .Q(n783), .QN(n1239)
         );
  DFF_X1 clock_r_REG80_S4 ( .D(\ram[1][13] ), .CK(clock), .Q(n782), .QN(n1238)
         );
  DFF_X1 clock_r_REG72_S4 ( .D(\ram[1][14] ), .CK(clock), .Q(n781), .QN(n1237)
         );
  DFF_X1 clock_r_REG63_S4 ( .D(\ram[1][15] ), .CK(clock), .Q(n780), .QN(n1236)
         );
  DFF_X1 clock_r_REG54_S4 ( .D(\ram[1][16] ), .CK(clock), .Q(n779), .QN(n1235)
         );
  DFF_X1 clock_r_REG45_S4 ( .D(\ram[1][17] ), .CK(clock), .Q(n778), .QN(n1234)
         );
  DFF_X1 clock_r_REG37_S4 ( .D(\ram[1][18] ), .CK(clock), .Q(n777), .QN(n1233)
         );
  DFF_X1 clock_r_REG198_S4 ( .D(\ram[7][0] ), .CK(clock), .Q(n776), .QN(n1346)
         );
  DFF_X1 clock_r_REG189_S4 ( .D(\ram[7][1] ), .CK(clock), .Q(n775), .QN(n1345)
         );
  DFF_X1 clock_r_REG181_S4 ( .D(\ram[7][2] ), .CK(clock), .Q(n774), .QN(n1344)
         );
  DFF_X1 clock_r_REG172_S4 ( .D(\ram[7][3] ), .CK(clock), .Q(n773), .QN(n1343)
         );
  DFF_X1 clock_r_REG163_S4 ( .D(\ram[7][4] ), .CK(clock), .Q(n772), .QN(n1342)
         );
  DFF_X1 clock_r_REG155_S4 ( .D(\ram[7][5] ), .CK(clock), .Q(n771), .QN(n1341)
         );
  DFF_X1 clock_r_REG145_S4 ( .D(\ram[7][6] ), .CK(clock), .Q(n770), .QN(n1340)
         );
  DFF_X1 clock_r_REG136_S4 ( .D(\ram[7][7] ), .CK(clock), .Q(n769), .QN(n1339)
         );
  DFF_X1 clock_r_REG127_S4 ( .D(\ram[7][8] ), .CK(clock), .Q(n768), .QN(n1338)
         );
  DFF_X1 clock_r_REG118_S4 ( .D(\ram[7][9] ), .CK(clock), .Q(n767), .QN(n1337)
         );
  DFF_X1 clock_r_REG108_S4 ( .D(\ram[7][10] ), .CK(clock), .Q(n766), .QN(n1336) );
  DFF_X1 clock_r_REG98_S4 ( .D(\ram[7][11] ), .CK(clock), .Q(n765), .QN(n1335)
         );
  DFF_X1 clock_r_REG89_S4 ( .D(\ram[7][12] ), .CK(clock), .Q(n764), .QN(n1334)
         );
  DFF_X1 clock_r_REG79_S4 ( .D(\ram[7][13] ), .CK(clock), .Q(n763), .QN(n1333)
         );
  DFF_X1 clock_r_REG71_S4 ( .D(\ram[7][14] ), .CK(clock), .Q(n762), .QN(n1332)
         );
  DFF_X1 clock_r_REG62_S4 ( .D(\ram[7][15] ), .CK(clock), .Q(n761), .QN(n1331)
         );
  DFF_X1 clock_r_REG53_S4 ( .D(\ram[7][16] ), .CK(clock), .Q(n760), .QN(n1330)
         );
  DFF_X1 clock_r_REG44_S4 ( .D(\ram[7][17] ), .CK(clock), .Q(n759), .QN(n1329)
         );
  DFF_X1 clock_r_REG36_S4 ( .D(\ram[7][18] ), .CK(clock), .Q(n758), .QN(n1328)
         );
  DFF_X1 clock_r_REG197_S4 ( .D(\ram[4][0] ), .CK(clock), .Q(n757), .QN(n1232)
         );
  DFF_X1 clock_r_REG188_S4 ( .D(\ram[4][1] ), .CK(clock), .Q(n756), .QN(n1231)
         );
  DFF_X1 clock_r_REG180_S4 ( .D(\ram[4][2] ), .CK(clock), .Q(n755), .QN(n1230)
         );
  DFF_X1 clock_r_REG171_S4 ( .D(\ram[4][3] ), .CK(clock), .Q(n754), .QN(n1229)
         );
  DFF_X1 clock_r_REG196_S4 ( .D(\ram[3][0] ), .CK(clock), .Q(n753), .QN(n1327)
         );
  DFF_X1 clock_r_REG187_S4 ( .D(\ram[3][1] ), .CK(clock), .Q(n752), .QN(n1326)
         );
  DFF_X1 clock_r_REG179_S4 ( .D(\ram[3][2] ), .CK(clock), .Q(n751), .QN(n1325)
         );
  DFF_X1 clock_r_REG170_S4 ( .D(\ram[3][3] ), .CK(clock), .Q(n750), .QN(n1324)
         );
  DFF_X1 clock_r_REG162_S4 ( .D(\ram[3][4] ), .CK(clock), .Q(n749), .QN(n1323)
         );
  DFF_X1 clock_r_REG154_S4 ( .D(\ram[3][5] ), .CK(clock), .Q(n748), .QN(n1322)
         );
  DFF_X1 clock_r_REG144_S4 ( .D(\ram[3][6] ), .CK(clock), .Q(n747), .QN(n1321)
         );
  DFF_X1 clock_r_REG135_S4 ( .D(\ram[3][7] ), .CK(clock), .Q(n746), .QN(n1320)
         );
  DFF_X1 clock_r_REG126_S4 ( .D(\ram[3][8] ), .CK(clock), .Q(n745), .QN(n1319)
         );
  DFF_X1 clock_r_REG117_S4 ( .D(\ram[3][9] ), .CK(clock), .Q(n744), .QN(n1318)
         );
  DFF_X1 clock_r_REG107_S4 ( .D(\ram[3][10] ), .CK(clock), .Q(n743), .QN(n1317) );
  DFF_X1 clock_r_REG97_S4 ( .D(\ram[3][11] ), .CK(clock), .Q(n742), .QN(n1316)
         );
  DFF_X1 clock_r_REG88_S4 ( .D(\ram[3][12] ), .CK(clock), .Q(n741), .QN(n1315)
         );
  DFF_X1 clock_r_REG78_S4 ( .D(\ram[3][13] ), .CK(clock), .Q(n740), .QN(n1314)
         );
  DFF_X1 clock_r_REG70_S4 ( .D(\ram[3][14] ), .CK(clock), .Q(n739), .QN(n1313)
         );
  DFF_X1 clock_r_REG61_S4 ( .D(\ram[3][15] ), .CK(clock), .Q(n738), .QN(n1312)
         );
  DFF_X1 clock_r_REG52_S4 ( .D(\ram[3][16] ), .CK(clock), .Q(n737), .QN(n1311)
         );
  DFF_X1 clock_r_REG43_S4 ( .D(\ram[3][17] ), .CK(clock), .Q(n736), .QN(n1310)
         );
  DFF_X1 clock_r_REG35_S4 ( .D(\ram[3][18] ), .CK(clock), .Q(n735), .QN(n1309)
         );
  DFF_X1 clock_r_REG195_S4 ( .D(\ram[2][0] ), .CK(clock), .Q(n734), .QN(n1308)
         );
  DFF_X1 clock_r_REG186_S4 ( .D(\ram[2][1] ), .CK(clock), .Q(n733), .QN(n1307)
         );
  DFF_X1 clock_r_REG178_S4 ( .D(\ram[2][2] ), .CK(clock), .Q(n732), .QN(n1306)
         );
  DFF_X1 clock_r_REG169_S4 ( .D(\ram[2][3] ), .CK(clock), .Q(n731), .QN(n1305)
         );
  DFF_X1 clock_r_REG161_S4 ( .D(\ram[2][4] ), .CK(clock), .Q(n730), .QN(n1304)
         );
  DFF_X1 clock_r_REG153_S4 ( .D(\ram[2][5] ), .CK(clock), .Q(n729), .QN(n1303)
         );
  DFF_X1 clock_r_REG143_S4 ( .D(\ram[2][6] ), .CK(clock), .Q(n728), .QN(n1302)
         );
  DFF_X1 clock_r_REG134_S4 ( .D(\ram[2][7] ), .CK(clock), .Q(n727), .QN(n1301)
         );
  DFF_X1 clock_r_REG125_S4 ( .D(\ram[2][8] ), .CK(clock), .Q(n726), .QN(n1300)
         );
  DFF_X1 clock_r_REG116_S4 ( .D(\ram[2][9] ), .CK(clock), .Q(n725), .QN(n1299)
         );
  DFF_X1 clock_r_REG106_S4 ( .D(\ram[2][10] ), .CK(clock), .Q(n724), .QN(n1298) );
  DFF_X1 clock_r_REG96_S4 ( .D(\ram[2][11] ), .CK(clock), .Q(n723), .QN(n1297)
         );
  DFF_X1 clock_r_REG87_S4 ( .D(\ram[2][12] ), .CK(clock), .Q(n722), .QN(n1296)
         );
  DFF_X1 clock_r_REG77_S4 ( .D(\ram[2][13] ), .CK(clock), .Q(n721), .QN(n1295)
         );
  DFF_X1 clock_r_REG69_S4 ( .D(\ram[2][14] ), .CK(clock), .Q(n720), .QN(n1294)
         );
  DFF_X1 clock_r_REG60_S4 ( .D(\ram[2][15] ), .CK(clock), .Q(n719), .QN(n1293)
         );
  DFF_X1 clock_r_REG51_S4 ( .D(\ram[2][16] ), .CK(clock), .Q(n718), .QN(n1292)
         );
  DFF_X1 clock_r_REG42_S4 ( .D(\ram[2][17] ), .CK(clock), .Q(n717), .QN(n1291)
         );
  DFF_X1 clock_r_REG34_S4 ( .D(\ram[2][18] ), .CK(clock), .Q(n716), .QN(n1290)
         );
  DFF_X1 clock_r_REG194_S4 ( .D(\ram[6][0] ), .CK(clock), .Q(n715), .QN(n1289)
         );
  DFF_X1 clock_r_REG185_S4 ( .D(\ram[6][1] ), .CK(clock), .Q(n714), .QN(n1288)
         );
  DFF_X1 clock_r_REG177_S4 ( .D(\ram[6][2] ), .CK(clock), .Q(n713), .QN(n1287)
         );
  DFF_X1 clock_r_REG168_S4 ( .D(\ram[6][3] ), .CK(clock), .Q(n712), .QN(n1286)
         );
  DFF_X1 clock_r_REG160_S4 ( .D(\ram[6][4] ), .CK(clock), .Q(n711), .QN(n1285)
         );
  DFF_X1 clock_r_REG152_S4 ( .D(\ram[6][5] ), .CK(clock), .Q(n710), .QN(n1284)
         );
  DFF_X1 clock_r_REG142_S4 ( .D(\ram[6][6] ), .CK(clock), .Q(n709), .QN(n1283)
         );
  DFF_X1 clock_r_REG133_S4 ( .D(\ram[6][7] ), .CK(clock), .Q(n708), .QN(n1282)
         );
  DFF_X1 clock_r_REG124_S4 ( .D(\ram[6][8] ), .CK(clock), .Q(n707), .QN(n1281)
         );
  DFF_X1 clock_r_REG115_S4 ( .D(\ram[6][9] ), .CK(clock), .Q(n706), .QN(n1280)
         );
  DFF_X1 clock_r_REG105_S4 ( .D(\ram[6][10] ), .CK(clock), .Q(n705), .QN(n1279) );
  DFF_X1 clock_r_REG95_S4 ( .D(\ram[6][11] ), .CK(clock), .Q(n704), .QN(n1278)
         );
  DFF_X1 clock_r_REG86_S4 ( .D(\ram[6][12] ), .CK(clock), .Q(n703), .QN(n1277)
         );
  DFF_X1 clock_r_REG76_S4 ( .D(\ram[6][13] ), .CK(clock), .Q(n702), .QN(n1276)
         );
  DFF_X1 clock_r_REG68_S4 ( .D(\ram[6][14] ), .CK(clock), .Q(n701), .QN(n1275)
         );
  DFF_X1 clock_r_REG59_S4 ( .D(\ram[6][15] ), .CK(clock), .Q(n700), .QN(n1274)
         );
  DFF_X1 clock_r_REG50_S4 ( .D(\ram[6][16] ), .CK(clock), .Q(n699), .QN(n1273)
         );
  DFF_X1 clock_r_REG41_S4 ( .D(\ram[6][17] ), .CK(clock), .Q(n698), .QN(n1272)
         );
  DFF_X1 clock_r_REG33_S4 ( .D(\ram[6][18] ), .CK(clock), .Q(n697), .QN(n1271)
         );
  DFF_X1 clock_r_REG193_S4 ( .D(\ram[0][0] ), .CK(clock), .Q(n696), .QN(n1228)
         );
  DFF_X1 clock_r_REG184_S4 ( .D(\ram[0][1] ), .CK(clock), .Q(n695), .QN(n1227)
         );
  DFF_X1 clock_r_REG176_S4 ( .D(\ram[0][2] ), .CK(clock), .Q(n694), .QN(n1226)
         );
  DFF_X1 clock_r_REG167_S4 ( .D(\ram[0][3] ), .CK(clock), .Q(n693), .QN(n1225)
         );
  DFF_X1 clock_r_REG159_S4 ( .D(\ram[0][4] ), .CK(clock), .Q(n692), .QN(n1224)
         );
  DFF_X1 clock_r_REG151_S4 ( .D(\ram[0][5] ), .CK(clock), .Q(n691), .QN(n1223)
         );
  DFF_X1 clock_r_REG141_S4 ( .D(\ram[0][6] ), .CK(clock), .Q(n690), .QN(n1222)
         );
  DFF_X1 clock_r_REG132_S4 ( .D(\ram[0][7] ), .CK(clock), .Q(n689), .QN(n1221)
         );
  DFF_X1 clock_r_REG123_S4 ( .D(\ram[0][8] ), .CK(clock), .Q(n688), .QN(n1220)
         );
  DFF_X1 clock_r_REG114_S4 ( .D(\ram[0][9] ), .CK(clock), .Q(n687), .QN(n1219)
         );
  DFF_X1 clock_r_REG104_S4 ( .D(\ram[0][10] ), .CK(clock), .Q(n686), .QN(n1218) );
  DFF_X1 clock_r_REG94_S4 ( .D(\ram[0][11] ), .CK(clock), .Q(n685), .QN(n1217)
         );
  DFF_X1 clock_r_REG85_S4 ( .D(\ram[0][12] ), .CK(clock), .Q(n684), .QN(n1216)
         );
  DFF_X1 clock_r_REG75_S4 ( .D(\ram[0][13] ), .CK(clock), .Q(n683), .QN(n1215)
         );
  DFF_X1 clock_r_REG67_S4 ( .D(\ram[0][14] ), .CK(clock), .Q(n682), .QN(n1214)
         );
  DFF_X1 clock_r_REG58_S4 ( .D(\ram[0][15] ), .CK(clock), .Q(n681), .QN(n1213)
         );
  DFF_X1 clock_r_REG49_S4 ( .D(\ram[0][16] ), .CK(clock), .Q(n680), .QN(n1212)
         );
  DFF_X1 clock_r_REG40_S4 ( .D(\ram[0][17] ), .CK(clock), .Q(n679), .QN(n1211)
         );
  DFF_X1 clock_r_REG32_S4 ( .D(\ram[0][18] ), .CK(clock), .Q(n678), .QN(n1210)
         );
  DFF_X1 clock_r_REG158_S4 ( .D(\ram[4][4] ), .CK(clock), .Q(n677), .QN(n1209)
         );
  DFF_X1 clock_r_REG150_S4 ( .D(\ram[4][5] ), .CK(clock), .Q(n676), .QN(n1208)
         );
  DFF_X1 clock_r_REG140_S4 ( .D(\ram[4][6] ), .CK(clock), .Q(n675), .QN(n1207)
         );
  DFF_X1 clock_r_REG131_S4 ( .D(\ram[4][7] ), .CK(clock), .Q(n674), .QN(n1206)
         );
  DFF_X1 clock_r_REG122_S4 ( .D(\ram[4][8] ), .CK(clock), .Q(n673), .QN(n1205)
         );
  DFF_X1 clock_r_REG113_S4 ( .D(\ram[4][9] ), .CK(clock), .Q(n672), .QN(n1204)
         );
  DFF_X1 clock_r_REG103_S4 ( .D(\ram[4][10] ), .CK(clock), .Q(n671), .QN(n1203) );
  DFF_X1 clock_r_REG93_S4 ( .D(\ram[4][11] ), .CK(clock), .Q(n670), .QN(n1202)
         );
  DFF_X1 clock_r_REG84_S4 ( .D(\ram[4][12] ), .CK(clock), .Q(n669), .QN(n1201)
         );
  DFF_X1 clock_r_REG74_S4 ( .D(\ram[4][13] ), .CK(clock), .Q(n668), .QN(n1200)
         );
  DFF_X1 clock_r_REG66_S4 ( .D(\ram[4][14] ), .CK(clock), .Q(n667), .QN(n1199)
         );
  DFF_X1 clock_r_REG57_S4 ( .D(\ram[4][15] ), .CK(clock), .Q(n666), .QN(n1198)
         );
  DFF_X1 clock_r_REG48_S4 ( .D(\ram[4][16] ), .CK(clock), .Q(n665), .QN(n1197)
         );
  DFF_X1 clock_r_REG39_S4 ( .D(\ram[4][17] ), .CK(clock), .Q(n664), .QN(n1196)
         );
  DFF_X1 clock_r_REG31_S4 ( .D(\ram[4][18] ), .CK(clock), .Q(n663), .QN(n1195)
         );
  NAND3_X1 U13 ( .A1(n466), .A2(n471), .A3(n29), .ZN(n35) );
  NAND3_X1 U23 ( .A1(n29), .A2(N10), .A3(N11), .ZN(n28) );
  NAND3_X1 U24 ( .A1(n29), .A2(n466), .A3(N11), .ZN(n31) );
  NAND3_X1 U21 ( .A1(N10), .A2(n471), .A3(n29), .ZN(n33) );
endmodule


module project2 ( clock, reset, valid, hold_me, data_in, data_out, hold_prev
 );
  input [7:0] data_in;
  output [18:0] data_out;
  input clock, reset, valid, hold_me;
  output hold_prev;
  wire   reset_fsm, CAG_A_restart, ramA_read_enable, ramA_write_enable,
         CAG_H_restart, CAG_H_enable, romH_enable, clear_register,
         ramR_read_enable, ramR_write_enable, CAG_R_enable, CAG_R_restart;
  wire   [7:0] addressA;
  wire   [7:0] Ai;
  wire   [7:0] addressH;
  wire   [7:0] Hi;
  wire   [18:0] Ri;
  wire   [7:0] addressR;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  counter_address_generator_0 counterAddressGenA ( .clock(clock), .reset(
        reset_fsm), .need_to_reset(CAG_A_restart), .enable(valid), 
        .read_enable(ramA_read_enable), .address(addressA) );
  ramA RAMA_UNIT ( .clock(clock), .write_enable(ramA_write_enable), 
        .read_enable(ramA_read_enable), .address(addressA[2:0]), .datain(
        data_in), .dataout(Ai) );
  counter_address_generator_2 counterAddressGenH ( .clock(clock), .reset(
        reset_fsm), .need_to_reset(CAG_H_restart), .enable(CAG_H_enable), 
        .read_enable(CAG_H_enable), .address(addressH) );
  rom ROMH ( .clock(1'b0), .address({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .rom_enable(romH_enable), .data({Hi[7], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6}) );
  mac MAC_UNIT ( .clock(clock), .ai(Ai), .xi({Hi[7], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .mac_clean(clear_register), .data_out(Ri) );
  fsm FSM_UNIT ( .clock(clock), .reset(reset), .ramA_address(addressA[7:3]), 
        .ramR_address(addressR), .rom_address(addressH), .hold_me(hold_me), 
        .ramR_readEnable(ramR_read_enable), .ramA_writeEnable(
        ramA_write_enable), .ramA_readEnable(ramA_read_enable), 
        .ramR_writeEnable(ramR_write_enable), .rom_enable(romH_enable), 
        .counterAddressGen_H_enable(CAG_H_enable), 
        .counterAddressGen_R_enable(CAG_R_enable), 
        .counterAddressGen_A_restart(CAG_A_restart), 
        .counterAddressGen_R_restart(CAG_R_restart), 
        .counterAddressGen_H_restart(CAG_H_restart), .mac_clean(clear_register), .reset_fsm(reset_fsm), .hold_prev(hold_prev) );
  counter_address_generator_1 counterAddressGenR ( .clock(clock), .reset(
        reset_fsm), .need_to_reset(CAG_R_restart), .enable(CAG_R_enable), 
        .read_enable(ramR_read_enable), .address(addressR) );
  ramR RAMR_UNIT ( .clock(clock), .write_enable(ramR_write_enable), 
        .read_enable(ramR_read_enable), .address(addressR[2:0]), .datain(Ri), 
        .dataout(data_out) );
endmodule

