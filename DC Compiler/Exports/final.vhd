
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_project2 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type VHDLOUT_TYPE is array (0 downto 0) of std_logic;

end CONV_PACK_project2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity counter_address_generator_1_DW01_inc_0 is

   port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector (7 
         downto 0));

end counter_address_generator_1_DW01_inc_0;

architecture SYN_rpl of counter_address_generator_1_DW01_inc_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port : std_logic;

begin
   
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV_X1 port map( A => A(0), ZN => SUM(0));
   U2 : XOR2_X1 port map( A => carry_7_port, B => A(7), Z => SUM(7));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity mac_DW_mult_tc_1 is

   port( a, b : in std_logic_vector (7 downto 0);  product : out 
         std_logic_vector (15 downto 0);  clock : in std_logic);

end mac_DW_mult_tc_1;

architecture SYN_USE_DEFA_ARCH_NAME of mac_DW_mult_tc_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n14, n15, n17, n19, n20
      , n21, n22, n24, n26, n27, n28, n29, n30, n31, n32, n34, n35, n36, n37, 
      n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n52, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n67, n69, n70, n73, n74, n75, 
      n76, n77, n80, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94
      , n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107
      , n108, n109, n110, n111, n112, n113, n114, n117, n118, n119, n120, n123,
      n124, n125, n128, n131, n134, n137, n138, n139, n140, n141, n142, n143, 
      n144, n145, n146, n147, n149, n150, n151, n152, n153, n154, n155, n157, 
      n158, n159, n160, n161, n162, n163, n165, n166, n167, n168, n169, n170, 
      n172, n173, n182, n191, n194, n200, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n275, n276, n277, n278, n280, n282, n284, 
      n285, n286, n287, n288, n290, n291, n292, n293, n294, n295, n296, n297, 
      n298, n299, n300, n303, n306, n307, n308, n309, n310, n311, n313, n314, 
      n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n327, 
      n328, n329, n330, n333, n334, n336, n356, n357, n358, n359, n360, n361, 
      n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, 
      n374, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n_1008,
      n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, 
      n_1018, n_1019, n_1020 : std_logic;

begin
   
   U97 : FA_X1 port map( A => n142, B => n89, CI => n149, CO => n85, S => n86);
   U98 : FA_X1 port map( A => n90, B => n143, CI => n93, CO => n87, S => n88);
   U101 : FA_X1 port map( A => n150, B => n315, CI => n157, CO => n93, S => n94
                           );
   U102 : FA_X1 port map( A => n103, B => n105, CI => n98, CO => n95, S => n96)
                           ;
   U103 : FA_X1 port map( A => n145, B => n151, CI => n100, CO => n97, S => n98
                           );
   U109 : FA_X1 port map( A => n384, B => n112, CI => n110, CO => n107, S => 
                           n108);
   U110 : FA_X1 port map( A => n153, B => n166, CI => n159, CO => n109, S => 
                           n110);
   U111 : HA_X1 port map( A => n147, B => n137, CO => n111, S => n112);
   U112 : FA_X1 port map( A => n119, B => n154, CI => n383, CO => n113, S => 
                           n114);
   U115 : HA_X1 port map( A => n138, B => n155, CO => n119, S => n120);
   U117 : HA_X1 port map( A => n163, B => n170, CO => n123, S => n124);
   U237 : XNOR2_X1 port map( A => n111, B => n275, ZN => n104);
   U241 : AND2_X1 port map( A1 => n323, A2 => n69, ZN => product(1));
   U242 : XNOR2_X1 port map( A => n165, B => n152, ZN => n275);
   U243 : NAND2_X1 port map( A1 => n111, A2 => n165, ZN => n276);
   U244 : NAND2_X1 port map( A1 => n111, A2 => n152, ZN => n277);
   U245 : NAND2_X1 port map( A1 => n165, A2 => n152, ZN => n278);
   U246 : NAND3_X1 port map( A1 => n276, A2 => n277, A3 => n278, ZN => n103);
   U248 : XNOR2_X2 port map( A => n365, B => n367, ZN => n334);
   U250 : CLKBUF_X1 port map( A => n70, Z => n282);
   U251 : CLKBUF_X1 port map( A => n55, Z => n284);
   U252 : OAI21_X1 port map( B1 => n56, B2 => n58, A => n57, ZN => n55);
   U253 : NAND3_X1 port map( A1 => n299, A2 => n298, A3 => n297, ZN => n285);
   U254 : OAI21_X1 port map( B1 => n48, B2 => n50, A => n49, ZN => n47);
   U255 : XNOR2_X1 port map( A => n120, B => n286, ZN => n118);
   U256 : XNOR2_X1 port map( A => n161, B => n168, ZN => n286);
   U257 : OR2_X1 port map( A1 => n385, A2 => n123, ZN => n287);
   U258 : CLKBUF_X1 port map( A => n36, Z => n288);
   U259 : NOR3_X1 port map( A1 => n290, A2 => n291, A3 => n292, ZN => 
                           product(15));
   U260 : AND2_X1 port map( A1 => n285, A2 => n83, ZN => n290);
   U261 : AND2_X1 port map( A1 => n141, A2 => n14, ZN => n291);
   U262 : AND2_X1 port map( A1 => n141, A2 => n83, ZN => n292);
   U263 : NAND2_X1 port map( A1 => n120, A2 => n161, ZN => n293);
   U264 : NAND2_X1 port map( A1 => n120, A2 => n168, ZN => n294);
   U265 : NAND2_X1 port map( A1 => n161, A2 => n168, ZN => n295);
   U266 : NAND3_X1 port map( A1 => n293, A2 => n294, A3 => n295, ZN => n117);
   U267 : XOR2_X1 port map( A => n85, B => n84, Z => n296);
   U268 : XOR2_X1 port map( A => n296, B => n282, Z => product(13));
   U269 : NAND2_X1 port map( A1 => n85, A2 => n84, ZN => n297);
   U270 : NAND2_X1 port map( A1 => n85, A2 => n70, ZN => n298);
   U271 : NAND2_X1 port map( A1 => n84, A2 => n70, ZN => n299);
   U272 : NAND3_X1 port map( A1 => n298, A2 => n299, A3 => n297, ZN => n14);
   U273 : XOR2_X1 port map( A => n141, B => n83, Z => n300);
   U274 : XOR2_X1 port map( A => n300, B => n285, Z => product(14));
   U275 : CLKBUF_X1 port map( A => n99, Z => n315);
   U278 : XNOR2_X1 port map( A => n303, B => n94, ZN => n92);
   U279 : XNOR2_X1 port map( A => n97, B => n144, ZN => n303);
   U280 : NAND2_X1 port map( A1 => n365, A2 => n367, ZN => n306);
   U281 : NAND2_X1 port map( A1 => n382, A2 => n377, ZN => n307);
   U282 : NAND2_X1 port map( A1 => n306, A2 => n307, ZN => n226);
   U285 : AOI21_X1 port map( B1 => n39, B2 => n47, A => n40, ZN => n308);
   U286 : NAND2_X1 port map( A1 => n94, A2 => n97, ZN => n309);
   U287 : NAND2_X1 port map( A1 => n94, A2 => n144, ZN => n310);
   U288 : NAND2_X1 port map( A1 => n97, A2 => n144, ZN => n311);
   U289 : NAND3_X1 port map( A1 => n309, A2 => n310, A3 => n311, ZN => n91);
   U291 : CLKBUF_X1 port map( A => n29, Z => n313);
   U292 : CLKBUF_X1 port map( A => n20, Z => n314);
   U293 : AOI21_X1 port map( B1 => n325, B2 => n284, A => n52, ZN => n316);
   U294 : NOR2_X1 port map( A1 => n107, A2 => n102, ZN => n317);
   U295 : NAND2_X1 port map( A1 => n217, A2 => n225, ZN => n318);
   U296 : NOR2_X1 port map( A1 => n92, A2 => n95, ZN => n319);
   U297 : OR2_X1 port map( A1 => n88, A2 => n91, ZN => n321);
   U298 : XNOR2_X1 port map( A => n37, B => n4, ZN => product(9));
   U299 : INV_X1 port map( A => n35, ZN => n74);
   U300 : INV_X1 port map( A => n26, ZN => n24);
   U301 : NAND2_X1 port map( A1 => n77, A2 => n49, ZN => n7);
   U302 : INV_X1 port map( A => n48, ZN => n77);
   U303 : NAND2_X1 port map( A1 => n322, A2 => n19, ZN => n1);
   U304 : XOR2_X1 port map( A => n46, B => n6, Z => product(7));
   U305 : XOR2_X1 port map( A => n32, B => n3, Z => product(10));
   U306 : NAND2_X1 port map( A1 => n73, A2 => n31, ZN => n3);
   U307 : AOI21_X1 port map( B1 => n37, B2 => n74, A => n34, ZN => n32);
   U308 : XOR2_X1 port map( A => n27, B => n2, Z => product(11));
   U309 : NAND2_X1 port map( A1 => n321, A2 => n26, ZN => n2);
   U310 : XNOR2_X1 port map( A => n43, B => n5, ZN => product(8));
   U311 : NAND2_X1 port map( A1 => n75, A2 => n42, ZN => n5);
   U312 : INV_X1 port map( A => n19, ZN => n17);
   U313 : XNOR2_X1 port map( A => n104, B => n320, ZN => n102);
   U314 : XNOR2_X1 port map( A => n106, B => n109, ZN => n320);
   U316 : NOR2_X1 port map( A1 => n102, A2 => n107, ZN => n41);
   U317 : NOR2_X1 port map( A1 => n92, A2 => n95, ZN => n30);
   U318 : NAND2_X1 port map( A1 => n80, A2 => n61, ZN => n10);
   U319 : INV_X1 port map( A => n60, ZN => n80);
   U321 : XOR2_X1 port map( A => n9, B => n58, Z => product(4));
   U322 : NAND2_X1 port map( A1 => n287, A2 => n57, ZN => n9);
   U323 : OR2_X1 port map( A1 => n158, A2 => n146, ZN => n105);
   U324 : NOR2_X1 port map( A1 => n114, A2 => n117, ZN => n48);
   U325 : INV_X1 port map( A => n83, ZN => n84);
   U326 : NAND2_X1 port map( A1 => n88, A2 => n91, ZN => n26);
   U327 : NAND2_X1 port map( A1 => n87, A2 => n86, ZN => n19);
   U328 : NAND2_X1 port map( A1 => n114, A2 => n117, ZN => n49);
   U329 : INV_X1 port map( A => n59, ZN => n58);
   U330 : OR2_X1 port map( A1 => n87, A2 => n86, ZN => n322);
   U331 : INV_X1 port map( A => n128, ZN => n149);
   U332 : INV_X1 port map( A => n89, ZN => n90);
   U333 : OR2_X1 port map( A1 => n172, A2 => n140, ZN => n323);
   U334 : NOR2_X1 port map( A1 => n385, A2 => n123, ZN => n56);
   U335 : INV_X1 port map( A => n125, ZN => n141);
   U337 : OR2_X1 port map( A1 => n118, A2 => n380, ZN => n325);
   U340 : XOR2_X1 port map( A => n379, B => n356, Z => n182);
   U343 : NAND2_X1 port map( A1 => n217, A2 => n225, ZN => n221);
   U348 : NAND2_X1 port map( A1 => n76, A2 => n45, ZN => n6);
   U349 : NAND2_X1 port map( A1 => n325, A2 => n54, ZN => n8);
   U350 : NAND2_X1 port map( A1 => n74, A2 => n288, ZN => n4);
   U351 : INV_X1 port map( A => n288, ZN => n34);
   U352 : NAND2_X1 port map( A1 => n96, A2 => n101, ZN => n36);
   U353 : NAND2_X1 port map( A1 => n385, A2 => n123, ZN => n57);
   U355 : NAND2_X1 port map( A1 => n124, A2 => n139, ZN => n61);
   U357 : XNOR2_X1 port map( A => n11, B => n67, ZN => product(2));
   U359 : NAND2_X1 port map( A1 => n108, A2 => n113, ZN => n45);
   U360 : NAND2_X1 port map( A1 => n92, A2 => n95, ZN => n31);
   U361 : INV_X1 port map( A => n69, ZN => n67);
   U362 : OAI21_X1 port map( B1 => n46, B2 => n44, A => n45, ZN => n43);
   U363 : INV_X1 port map( A => n44, ZN => n76);
   U364 : NOR2_X1 port map( A1 => n44, A2 => n317, ZN => n39);
   U365 : NOR2_X1 port map( A1 => n108, A2 => n113, ZN => n44);
   U366 : NAND2_X1 port map( A1 => n104, A2 => n106, ZN => n327);
   U367 : NAND2_X1 port map( A1 => n104, A2 => n109, ZN => n328);
   U368 : NAND2_X1 port map( A1 => n106, A2 => n109, ZN => n329);
   U369 : NAND3_X1 port map( A1 => n327, A2 => n328, A3 => n329, ZN => n101);
   U370 : XNOR2_X1 port map( A => n158, B => n146, ZN => n106);
   U371 : NAND2_X1 port map( A1 => n102, A2 => n107, ZN => n42);
   U373 : AOI21_X1 port map( B1 => n325, B2 => n55, A => n52, ZN => n50);
   U374 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n378, B2 => n376, ZN
                           => n168);
   U375 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n378, B2 => n376, ZN
                           => n167);
   U376 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n378, B2 => n376, ZN
                           => n170);
   U377 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n378, B2 => n376, ZN
                           => n169);
   U378 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n200, B2 => n376, ZN
                           => n166);
   U379 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n378, B2 => n376, ZN
                           => n140);
   U380 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n378, B2 => n376, ZN
                           => n172);
   U381 : OAI22_X1 port map( A1 => n224, A2 => n378, B1 => n378, B2 => n376, ZN
                           => n324);
   U382 : NAND2_X1 port map( A1 => n219, A2 => n227, ZN => n330);
   U385 : NAND2_X1 port map( A1 => n227, A2 => n219, ZN => n223);
   U386 : XNOR2_X1 port map( A => n361, B => n363, ZN => n227);
   U395 : XNOR2_X1 port map( A => n373, B => n356, ZN => n173);
   U396 : INV_X1 port map( A => n134, ZN => n165);
   U397 : INV_X1 port map( A => n99, ZN => n100);
   U399 : XOR2_X1 port map( A => n373, B => n371, Z => n217);
   U400 : NOR2_X1 port map( A1 => n124, A2 => n139, ZN => n60);
   U401 : INV_X1 port map( A => n131, ZN => n157);
   U403 : XNOR2_X1 port map( A => n369, B => n371, ZN => n225);
   U404 : OAI22_X1 port map( A1 => n200, A2 => n224, B1 => n200, B2 => n376, ZN
                           => n134);
   U406 : INV_X1 port map( A => n54, ZN => n52);
   U407 : OAI21_X1 port map( B1 => n38, B2 => n21, A => n22, ZN => n20);
   U408 : NAND2_X1 port map( A1 => n28, A2 => n321, ZN => n21);
   U409 : NOR2_X1 port map( A1 => n96, A2 => n101, ZN => n35);
   U410 : XNOR2_X1 port map( A => n8, B => n284, ZN => product(5));
   U411 : XOR2_X1 port map( A => n10, B => n62, Z => product(3));
   U412 : OAI21_X1 port map( B1 => n60, B2 => n62, A => n61, ZN => n59);
   U413 : NAND2_X1 port map( A1 => n172, A2 => n140, ZN => n69);
   U417 : XNOR2_X1 port map( A => n361, B => n356, ZN => n200);
   U423 : XOR2_X1 port map( A => n361, B => n359, Z => n220);
   U424 : OAI21_X1 port map( B1 => n45, B2 => n41, A => n42, ZN => n40);
   U425 : INV_X1 port map( A => n317, ZN => n75);
   U426 : AOI21_X1 port map( B1 => n37, B2 => n28, A => n313, ZN => n27);
   U427 : INV_X1 port map( A => n319, ZN => n73);
   U428 : AOI21_X1 port map( B1 => n29, B2 => n321, A => n24, ZN => n22);
   U429 : NOR2_X1 port map( A1 => n35, A2 => n319, ZN => n28);
   U430 : OAI21_X1 port map( B1 => n36, B2 => n30, A => n31, ZN => n29);
   U431 : INV_X1 port map( A => n15, ZN => n70);
   U433 : INV_X1 port map( A => n47, ZN => n46);
   U434 : AOI21_X1 port map( B1 => n39, B2 => n47, A => n40, ZN => n38);
   U435 : NAND2_X1 port map( A1 => n118, A2 => n380, ZN => n54);
   U436 : OAI22_X1 port map( A1 => n182, A2 => n222, B1 => n182, B2 => n334, ZN
                           => n128);
   U437 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n379, B2 => n334, ZN
                           => n154);
   U438 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n182, B2 => n334, ZN
                           => n89);
   U439 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n379, B2 => n334, ZN
                           => n151);
   U440 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n379, B2 => n334, ZN
                           => n153);
   U441 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n379, B2 => n334, ZN
                           => n150);
   U446 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n379, B2 => n334, ZN
                           => n138);
   U447 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n379, B2 => n334, ZN
                           => n155);
   U450 : NAND2_X2 port map( A1 => n226, A2 => n218, ZN => n222);
   U451 : XNOR2_X1 port map( A => n280, B => n356, ZN => n191);
   U454 : XOR2_X1 port map( A => n365, B => n363, Z => n219);
   U456 : XNOR2_X1 port map( A => n314, B => n1, ZN => product(12));
   U457 : OAI22_X1 port map( A1 => n173, A2 => n221, B1 => n173, B2 => n336, ZN
                           => n125);
   U458 : AOI21_X1 port map( B1 => n20, B2 => n322, A => n17, ZN => n15);
   U459 : OAI22_X1 port map( A1 => n318, A2 => n381, B1 => n173, B2 => n225, ZN
                           => n83);
   U460 : OAI22_X1 port map( A1 => n221, A2 => n381, B1 => n381, B2 => n336, ZN
                           => n142);
   U461 : OAI22_X1 port map( A1 => n318, A2 => n381, B1 => n381, B2 => n336, ZN
                           => n143);
   U462 : OAI22_X1 port map( A1 => n221, A2 => n381, B1 => n381, B2 => n336, ZN
                           => n144);
   U463 : OAI22_X1 port map( A1 => n221, A2 => n381, B1 => n381, B2 => n336, ZN
                           => n145);
   U464 : OAI22_X1 port map( A1 => n318, A2 => n381, B1 => n381, B2 => n336, ZN
                           => n146);
   U467 : OAI22_X1 port map( A1 => n318, A2 => n381, B1 => n381, B2 => n336, ZN
                           => n137);
   U468 : OAI22_X1 port map( A1 => n221, A2 => n381, B1 => n381, B2 => n336, ZN
                           => n147);
   U475 : XOR2_X1 port map( A => n369, B => n367, Z => n218);
   U477 : XOR2_X1 port map( A => n7, B => n316, Z => product(6));
   U478 : INV_X1 port map( A => n308, ZN => n37);
   U479 : OAI22_X1 port map( A1 => n330, A2 => n382, B1 => n194, B2 => n333, ZN
                           => n160);
   U480 : OAI22_X1 port map( A1 => n330, A2 => n194, B1 => n194, B2 => n333, ZN
                           => n158);
   U481 : OAI22_X1 port map( A1 => n223, A2 => n382, B1 => n382, B2 => n333, ZN
                           => n161);
   U482 : OAI22_X1 port map( A1 => n223, A2 => n194, B1 => n194, B2 => n333, ZN
                           => n159);
   U483 : OAI22_X1 port map( A1 => n330, A2 => n382, B1 => n382, B2 => n333, ZN
                           => n139);
   U484 : OAI22_X1 port map( A1 => n223, A2 => n194, B1 => n382, B2 => n333, ZN
                           => n162);
   U485 : OAI22_X1 port map( A1 => n223, A2 => n194, B1 => n191, B2 => n333, ZN
                           => n99);
   U486 : OAI22_X1 port map( A1 => n191, A2 => n330, B1 => n191, B2 => n333, ZN
                           => n131);
   U487 : OAI22_X1 port map( A1 => n223, A2 => n194, B1 => n194, B2 => n333, ZN
                           => n163);
   clock_r_REG203_S4 : DFF_X1 port map( D => a(7), CK => clock, Q => n374, QN 
                           => n_1008);
   clock_r_REG210_S4 : DFF_X1 port map( D => a(6), CK => clock, Q => n372, QN 
                           => n_1009);
   clock_r_REG211_S5 : DFF_X1 port map( D => n372, CK => clock, Q => n371, QN 
                           => n_1010);
   clock_r_REG214_S4 : DFF_X1 port map( D => a(5), CK => clock, Q => n370, QN 
                           => n_1011);
   clock_r_REG215_S5 : DFF_X1 port map( D => n370, CK => clock, Q => n369, QN 
                           => n379);
   clock_r_REG218_S4 : DFF_X1 port map( D => a(4), CK => clock, Q => n368, QN 
                           => n_1012);
   clock_r_REG219_S5 : DFF_X1 port map( D => n368, CK => clock, Q => n367, QN 
                           => n377);
   clock_r_REG222_S4 : DFF_X1 port map( D => a(3), CK => clock, Q => n366, QN 
                           => n_1013);
   clock_r_REG223_S5 : DFF_X1 port map( D => n366, CK => clock, Q => n365, QN 
                           => n382);
   clock_r_REG226_S4 : DFF_X1 port map( D => a(2), CK => clock, Q => n364, QN 
                           => n_1014);
   clock_r_REG227_S5 : DFF_X1 port map( D => n364, CK => clock, Q => n363, QN 
                           => n_1015);
   clock_r_REG230_S4 : DFF_X1 port map( D => a(1), CK => clock, Q => n362, QN 
                           => n_1016);
   clock_r_REG231_S5 : DFF_X1 port map( D => n362, CK => clock, Q => n361, QN 
                           => n378);
   clock_r_REG234_S4 : DFF_X1 port map( D => a(0), CK => clock, Q => n360, QN 
                           => n_1017);
   clock_r_REG235_S5 : DFF_X1 port map( D => n360, CK => clock, Q => n359, QN 
                           => n376);
   clock_r_REG314_S2 : DFF_X1 port map( D => b(7), CK => clock, Q => n358, QN 
                           => n_1018);
   clock_r_REG315_S3 : DFF_X1 port map( D => n358, CK => clock, Q => n357, QN 
                           => n_1019);
   clock_r_REG316_S4 : DFF_X1 port map( D => n357, CK => clock, Q => n356, QN 
                           => n_1020);
   clock_r_REG204_S5 : DFF_X1 port map( D => n374, CK => clock, Q => n373, QN 
                           => n381);
   U384 : CLKBUF_X2 port map( A => n227, Z => n333);
   U238 : CLKBUF_X1 port map( A => n365, Z => n280);
   U239 : OAI22_X1 port map( A1 => n222, A2 => n379, B1 => n379, B2 => n334, ZN
                           => n152);
   U240 : NAND2_X1 port map( A1 => n220, A2 => n376, ZN => n224);
   U247 : BUF_X1 port map( A => n225, Z => n336);
   U249 : NAND2_X1 port map( A1 => n324, A2 => n67, ZN => n62);
   U276 : AND2_X1 port map( A1 => n162, A2 => n169, ZN => n380);
   U277 : INV_X1 port map( A => n280, ZN => n194);
   U283 : XOR2_X1 port map( A => n167, B => n160, Z => n383);
   U284 : AND2_X1 port map( A1 => n160, A2 => n167, ZN => n384);
   U290 : XOR2_X1 port map( A => n169, B => n162, Z => n385);
   U315 : INV_X1 port map( A => n324, ZN => n11);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity mac_DW01_add_1 is

   port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (18 downto 0);  CO : out std_logic;  clock : in 
         std_logic);

end mac_DW01_add_1;

architecture SYN_USE_DEFA_ARCH_NAME of mac_DW01_add_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n20, n21, n22, n23, n25, n27, n28, n29, n30, n31, n33, n35, n36, n37
      , n38, n39, n43, n44, n45, n46, n47, n51, n52, n53, n54, n55, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n90, 
      n92, n95, n97, n99, n105, n106, n109, n110, SUM_2_port, SUM_3_port, 
      SUM_4_port, SUM_5_port, SUM_6_port, SUM_7_port, SUM_8_port, SUM_9_port, 
      SUM_10_port, SUM_11_port, SUM_12_port, SUM_13_port, SUM_14_port, 
      SUM_15_port, SUM_16_port, SUM_17_port, SUM_18_port, n178, n180, n181, 
      n182, n183, n186, n188, n189, n190, n191, n192, n193, n194, n195, n218, 
      n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, 
      n231, n232, n233, n234, n235, n236, n238, n239, n240, n241, n242, n243, 
      SUM_1_port, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, 
      n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037 : std_logic;

begin
   SUM <= ( SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, 
      SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, 
      SUM_2_port, SUM_1_port, A(0) );
   
   U138 : OR2_X1 port map( A1 => A(5), A2 => B(5), ZN => n178);
   U140 : NOR2_X1 port map( A1 => A(7), A2 => B(7), ZN => n180);
   U141 : AOI21_X1 port map( B1 => n44, B2 => n220, A => n238, ZN => n181);
   U142 : NOR2_X1 port map( A1 => A(7), A2 => B(7), ZN => n65);
   U143 : OAI21_X1 port map( B1 => n181, B2 => n37, A => n38, ZN => n182);
   U144 : OAI21_X1 port map( B1 => n39, B2 => n37, A => n38, ZN => n183);
   U145 : OAI21_X1 port map( B1 => n39, B2 => n37, A => n38, ZN => n36);
   U148 : AOI21_X1 port map( B1 => n36, B2 => n194, A => n33, ZN => n186);
   U150 : OAI21_X1 port map( B1 => n186, B2 => n29, A => n30, ZN => n188);
   U151 : AOI21_X1 port map( B1 => n28, B2 => n195, A => n25, ZN => n189);
   U153 : INV_X1 port map( A => n35, ZN => n33);
   U155 : INV_X1 port map( A => n27, ZN => n25);
   U156 : NOR2_X1 port map( A1 => n68, A2 => n180, ZN => n63);
   U158 : NAND2_X1 port map( A1 => n242, A2 => n224, ZN => n10);
   U160 : NAND2_X1 port map( A1 => n239, A2 => n225, ZN => n8);
   U162 : NAND2_X1 port map( A1 => n99, A2 => n38, ZN => n6);
   U163 : INV_X1 port map( A => n37, ZN => n99);
   U164 : NAND2_X1 port map( A1 => n95, A2 => n22, ZN => n2);
   U165 : INV_X1 port map( A => n21, ZN => n95);
   U166 : NAND2_X1 port map( A1 => n97, A2 => n30, ZN => n4);
   U167 : INV_X1 port map( A => n29, ZN => n97);
   U168 : XOR2_X1 port map( A => n75, B => n14, Z => SUM_5_port);
   U169 : NAND2_X1 port map( A1 => n178, A2 => n74, ZN => n14);
   U170 : AOI21_X1 port map( B1 => n80, B2 => n76, A => n77, ZN => n75);
   U171 : INV_X1 port map( A => n78, ZN => n76);
   U172 : NAND2_X1 port map( A1 => n220, A2 => n227, ZN => n7);
   U173 : NAND2_X1 port map( A1 => n195, A2 => n27, ZN => n3);
   U174 : NAND2_X1 port map( A1 => n219, A2 => n226, ZN => n11);
   U175 : NAND2_X1 port map( A1 => n194, A2 => n35, ZN => n5);
   U176 : NAND2_X1 port map( A1 => n221, A2 => n228, ZN => n9);
   U177 : XOR2_X1 port map( A => n92, B => n17, Z => SUM_2_port);
   U178 : XOR2_X1 port map( A => n70, B => n13, Z => SUM_6_port);
   U179 : NAND2_X1 port map( A1 => n106, A2 => n69, ZN => n13);
   U180 : XNOR2_X1 port map( A => n67, B => n12, ZN => SUM_7_port);
   U181 : NAND2_X1 port map( A1 => n105, A2 => n66, ZN => n12);
   U182 : XNOR2_X1 port map( A => n80, B => n15, ZN => SUM_4_port);
   U183 : NAND2_X1 port map( A1 => n76, A2 => n79, ZN => n15);
   U184 : XNOR2_X1 port map( A => n86, B => n16, ZN => SUM_3_port);
   U185 : NAND2_X1 port map( A1 => n109, A2 => n85, ZN => n16);
   U186 : INV_X1 port map( A => n79, ZN => n77);
   U187 : XNOR2_X1 port map( A => B(18), B => n236, ZN => n190);
   U188 : NOR2_X1 port map( A1 => A(3), A2 => B(3), ZN => n84);
   U189 : NOR2_X1 port map( A1 => A(2), A2 => B(2), ZN => n87);
   U190 : NAND2_X1 port map( A1 => A(10), A2 => B(10), ZN => n51);
   U191 : NAND2_X1 port map( A1 => A(12), A2 => B(12), ZN => n43);
   U192 : NAND2_X1 port map( A1 => A(8), A2 => B(8), ZN => n59);
   U193 : NAND2_X1 port map( A1 => n232, A2 => n230, ZN => n35);
   U194 : NAND2_X1 port map( A1 => n234, A2 => B(16), ZN => n27);
   U195 : NAND2_X1 port map( A1 => n231, A2 => n229, ZN => n38);
   U196 : NAND2_X1 port map( A1 => A(11), A2 => B(11), ZN => n46);
   U197 : NAND2_X1 port map( A1 => A(9), A2 => B(9), ZN => n54);
   U198 : NAND2_X1 port map( A1 => n233, A2 => B(15), ZN => n30);
   U199 : NAND2_X1 port map( A1 => n235, A2 => B(17), ZN => n22);
   U200 : NOR2_X1 port map( A1 => n231, A2 => n229, ZN => n37);
   U201 : NAND2_X1 port map( A1 => A(2), A2 => B(2), ZN => n88);
   U202 : NOR2_X1 port map( A1 => A(11), A2 => B(11), ZN => n45);
   U203 : NOR2_X1 port map( A1 => A(9), A2 => B(9), ZN => n53);
   U204 : NOR2_X1 port map( A1 => n233, A2 => B(15), ZN => n29);
   U205 : NOR2_X1 port map( A1 => n235, A2 => B(17), ZN => n21);
   U206 : OR2_X1 port map( A1 => A(10), A2 => B(10), ZN => n191);
   U207 : OR2_X1 port map( A1 => A(12), A2 => B(12), ZN => n192);
   U208 : OR2_X1 port map( A1 => A(8), A2 => B(8), ZN => n193);
   U209 : OR2_X1 port map( A1 => n232, A2 => n230, ZN => n194);
   U210 : OR2_X1 port map( A1 => n234, A2 => B(16), ZN => n195);
   U212 : NAND2_X1 port map( A1 => A(5), A2 => B(5), ZN => n74);
   U213 : NOR2_X1 port map( A1 => A(5), A2 => B(5), ZN => n73);
   U214 : XNOR2_X1 port map( A => n20, B => n190, ZN => SUM_18_port);
   U220 : XOR2_X1 port map( A => n55, B => n10, Z => SUM_9_port);
   U221 : OAI21_X1 port map( B1 => n55, B2 => n222, A => n224, ZN => n52);
   U222 : AOI21_X1 port map( B1 => n218, B2 => n219, A => n241, ZN => n55);
   U226 : OAI21_X1 port map( B1 => n92, B2 => n87, A => n88, ZN => n86);
   U227 : INV_X1 port map( A => n87, ZN => n110);
   U228 : NAND2_X1 port map( A1 => n110, A2 => n88, ZN => n17);
   U229 : NOR2_X1 port map( A1 => n78, A2 => n73, ZN => n71);
   U230 : INV_X1 port map( A => n81, ZN => n80);
   U231 : NAND2_X1 port map( A1 => n71, A2 => n63, ZN => n61);
   U232 : XNOR2_X1 port map( A => n218, B => n11, ZN => SUM_8_port);
   U233 : OAI21_X1 port map( B1 => n81, B2 => n61, A => n62, ZN => n60);
   U234 : OAI21_X1 port map( B1 => n65, B2 => n69, A => n66, ZN => n64);
   U235 : INV_X1 port map( A => n180, ZN => n105);
   U236 : AOI21_X1 port map( B1 => n82, B2 => n90, A => n83, ZN => n81);
   U237 : AOI21_X1 port map( B1 => n63, B2 => n72, A => n64, ZN => n62);
   U238 : NAND2_X1 port map( A1 => A(6), A2 => B(6), ZN => n69);
   U240 : NAND2_X1 port map( A1 => A(1), A2 => B(1), ZN => n92);
   U241 : INV_X1 port map( A => n68, ZN => n106);
   U242 : OAI21_X1 port map( B1 => n70, B2 => n68, A => n69, ZN => n67);
   U243 : NOR2_X1 port map( A1 => A(6), A2 => B(6), ZN => n68);
   U244 : INV_X1 port map( A => n84, ZN => n109);
   U245 : NOR2_X1 port map( A1 => n87, A2 => n84, ZN => n82);
   U246 : OAI21_X1 port map( B1 => n84, B2 => n88, A => n85, ZN => n83);
   U247 : AOI21_X1 port map( B1 => n80, B2 => n71, A => n72, ZN => n70);
   U248 : OAI21_X1 port map( B1 => n73, B2 => n79, A => n74, ZN => n72);
   U249 : NAND2_X1 port map( A1 => A(4), A2 => B(4), ZN => n79);
   U250 : NOR2_X1 port map( A1 => A(4), A2 => B(4), ZN => n78);
   U251 : NAND2_X1 port map( A1 => A(3), A2 => B(3), ZN => n85);
   U252 : AOI21_X1 port map( B1 => n182, B2 => n194, A => n33, ZN => n31);
   U253 : XOR2_X1 port map( A => n23, B => n2, Z => SUM_17_port);
   U254 : OAI21_X1 port map( B1 => n189, B2 => n21, A => n22, ZN => n20);
   U255 : AOI21_X1 port map( B1 => n188, B2 => n195, A => n25, ZN => n23);
   U256 : XNOR2_X1 port map( A => n188, B => n3, ZN => SUM_16_port);
   U257 : OAI21_X1 port map( B1 => n31, B2 => n29, A => n30, ZN => n28);
   U258 : XNOR2_X1 port map( A => n183, B => n5, ZN => SUM_14_port);
   U259 : XOR2_X1 port map( A => n186, B => n4, Z => SUM_15_port);
   U260 : NAND2_X1 port map( A1 => A(7), A2 => B(7), ZN => n66);
   U261 : XOR2_X1 port map( A => n47, B => n8, Z => SUM_11_port);
   U262 : XNOR2_X1 port map( A => n52, B => n9, ZN => SUM_10_port);
   U263 : XNOR2_X1 port map( A => n44, B => n7, ZN => SUM_12_port);
   U264 : XOR2_X1 port map( A => n39, B => n6, Z => SUM_13_port);
   U265 : AOI21_X1 port map( B1 => n44, B2 => n220, A => n238, ZN => n39);
   U266 : AOI21_X1 port map( B1 => n52, B2 => n221, A => n240, ZN => n47);
   clock_r_REG30_S3 : DFF_X1 port map( D => A(18), CK => clock, Q => n236, QN 
                           => n_1024);
   clock_r_REG29_S3 : DFF_X1 port map( D => A(17), CK => clock, Q => n235, QN 
                           => n_1025);
   clock_r_REG47_S3 : DFF_X1 port map( D => A(16), CK => clock, Q => n234, QN 
                           => n_1026);
   clock_r_REG56_S3 : DFF_X1 port map( D => A(15), CK => clock, Q => n233, QN 
                           => n_1027);
   clock_r_REG65_S3 : DFF_X1 port map( D => A(14), CK => clock, Q => n232, QN 
                           => n_1028);
   clock_r_REG28_S3 : DFF_X1 port map( D => A(13), CK => clock, Q => n231, QN 
                           => n_1029);
   clock_r_REG205_S6 : DFF_X1 port map( D => B(14), CK => clock, Q => n230, QN 
                           => n_1030);
   clock_r_REG207_S6 : DFF_X1 port map( D => B(13), CK => clock, Q => n229, QN 
                           => n_1031);
   clock_r_REG102_S3 : DFF_X1 port map( D => n51, CK => clock, Q => n228, QN =>
                           n240);
   clock_r_REG83_S3 : DFF_X1 port map( D => n43, CK => clock, Q => n227, QN => 
                           n238);
   clock_r_REG121_S3 : DFF_X1 port map( D => n59, CK => clock, Q => n226, QN =>
                           n241);
   clock_r_REG92_S3 : DFF_X1 port map( D => n46, CK => clock, Q => n225, QN => 
                           n_1032);
   clock_r_REG112_S3 : DFF_X1 port map( D => n54, CK => clock, Q => n224, QN =>
                           n_1033);
   clock_r_REG27_S3 : DFF_X1 port map( D => n45, CK => clock, Q => n223, QN => 
                           n239);
   clock_r_REG111_S3 : DFF_X1 port map( D => n53, CK => clock, Q => n222, QN =>
                           n242);
   clock_r_REG101_S3 : DFF_X1 port map( D => n191, CK => clock, Q => n221, QN 
                           => n_1034);
   clock_r_REG82_S3 : DFF_X1 port map( D => n192, CK => clock, Q => n220, QN =>
                           n_1035);
   clock_r_REG26_S3 : DFF_X1 port map( D => n193, CK => clock, Q => n219, QN =>
                           n_1036);
   clock_r_REG25_S3 : DFF_X1 port map( D => n60, CK => clock, Q => n218, QN => 
                           n_1037);
   U135 : OAI21_X1 port map( B1 => n47, B2 => n223, A => n225, ZN => n44);
   U136 : INV_X1 port map( A => n92, ZN => n90);
   U137 : OR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n243);
   U139 : AND2_X1 port map( A1 => n243, A2 => n92, ZN => SUM_1_port);

end SYN_USE_DEFA_ARCH_NAME;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity counter_address_generator_2_DW01_inc_0 is

   port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector (7 
         downto 0));

end counter_address_generator_2_DW01_inc_0;

architecture SYN_rpl of counter_address_generator_2_DW01_inc_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port : std_logic;

begin
   
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV_X1 port map( A => A(0), ZN => SUM(0));
   U2 : XOR2_X1 port map( A => carry_7_port, B => A(7), Z => SUM(7));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity counter_address_generator_0_DW01_inc_0 is

   port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector (7 
         downto 0));

end counter_address_generator_0_DW01_inc_0;

architecture SYN_rpl of counter_address_generator_0_DW01_inc_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port : std_logic;

begin
   
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : INV_X1 port map( A => A(0), ZN => SUM(0));
   U2 : XOR2_X1 port map( A => carry_7_port, B => A(7), Z => SUM(7));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity ramR is

   port( clock, write_enable, read_enable : in std_logic;  address : in 
         std_logic_vector (2 downto 0);  datain : in std_logic_vector (18 
         downto 0);  dataout : out std_logic_vector (18 downto 0));

end ramR;

architecture SYN_ramR of ramR is

   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185,
      n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, 
      ram_0_18_port, ram_0_17_port, ram_0_16_port, ram_0_15_port, ram_0_14_port
      , ram_0_13_port, ram_0_12_port, ram_0_11_port, ram_0_10_port, 
      ram_0_9_port, ram_0_8_port, ram_0_7_port, ram_0_6_port, ram_0_5_port, 
      ram_0_4_port, ram_0_3_port, ram_0_2_port, ram_0_1_port, ram_0_0_port, 
      ram_1_18_port, ram_1_17_port, ram_1_16_port, ram_1_15_port, ram_1_14_port
      , ram_1_13_port, ram_1_12_port, ram_1_11_port, ram_1_10_port, 
      ram_1_9_port, ram_1_8_port, ram_1_7_port, ram_1_6_port, ram_1_5_port, 
      ram_1_4_port, ram_1_3_port, ram_1_2_port, ram_1_1_port, ram_1_0_port, 
      ram_2_18_port, ram_2_17_port, ram_2_16_port, ram_2_15_port, ram_2_14_port
      , ram_2_13_port, ram_2_12_port, ram_2_11_port, ram_2_10_port, 
      ram_2_9_port, ram_2_8_port, ram_2_7_port, ram_2_6_port, ram_2_5_port, 
      ram_2_4_port, ram_2_3_port, ram_2_2_port, ram_2_1_port, ram_2_0_port, 
      ram_3_18_port, ram_3_17_port, ram_3_16_port, ram_3_15_port, ram_3_14_port
      , ram_3_13_port, ram_3_12_port, ram_3_11_port, ram_3_10_port, 
      ram_3_9_port, ram_3_8_port, ram_3_7_port, ram_3_6_port, ram_3_5_port, 
      ram_3_4_port, ram_3_3_port, ram_3_2_port, ram_3_1_port, ram_3_0_port, 
      ram_4_18_port, ram_4_17_port, ram_4_16_port, ram_4_15_port, ram_4_14_port
      , ram_4_13_port, ram_4_12_port, ram_4_11_port, ram_4_10_port, 
      ram_4_9_port, ram_4_8_port, ram_4_7_port, ram_4_6_port, ram_4_5_port, 
      ram_4_4_port, ram_4_3_port, ram_4_2_port, ram_4_1_port, ram_4_0_port, 
      ram_5_18_port, ram_5_17_port, ram_5_16_port, ram_5_15_port, ram_5_14_port
      , ram_5_13_port, ram_5_12_port, ram_5_11_port, ram_5_10_port, 
      ram_5_9_port, ram_5_8_port, ram_5_7_port, ram_5_6_port, ram_5_5_port, 
      ram_5_4_port, ram_5_3_port, ram_5_2_port, ram_5_1_port, ram_5_0_port, 
      ram_6_18_port, ram_6_17_port, ram_6_16_port, ram_6_15_port, ram_6_14_port
      , ram_6_13_port, ram_6_12_port, ram_6_11_port, ram_6_10_port, 
      ram_6_9_port, ram_6_8_port, ram_6_7_port, ram_6_6_port, ram_6_5_port, 
      ram_6_4_port, ram_6_3_port, ram_6_2_port, ram_6_1_port, ram_6_0_port, 
      ram_7_18_port, ram_7_17_port, ram_7_16_port, ram_7_15_port, ram_7_14_port
      , ram_7_13_port, ram_7_12_port, ram_7_11_port, ram_7_10_port, 
      ram_7_9_port, ram_7_8_port, ram_7_7_port, ram_7_6_port, ram_7_5_port, 
      ram_7_4_port, ram_7_3_port, ram_7_2_port, ram_7_1_port, ram_7_0_port, N30
      , N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, 
      N45, N46, N47, N48, n2, n19, n26, n28, n29, n31_port, n33_port, n35_port,
      n37_port, n38_port, n39_port, n40_port, n41_port, n42_port, n43_port, 
      n44_port, n45_port, n46_port, n47_port, n48_port, n49, n50, n51, n52, n53
      , n54, n55, n57, n59, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
      n14, n15, n16, n17, n18, n20, n21, n22, n23, n24, n25, n27, n30_port, 
      n32_port, n34_port, n36_port, n56, n58, n402, n403, n404, n405, n406, 
      n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, 
      n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, 
      n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, 
      n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, 
      n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, 
      n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, 
      n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, 
      n491, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, 
      n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, 
      n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, 
      n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, 
      n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, 
      n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, 
      n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, 
      n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, 
      n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, 
      n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, 
      n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, 
      n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, 
      n806, n807, n808, n809, n810, n811, n812, n813, n814, n1195, n1196, n1197
      , n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, 
      n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, 
      n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, 
      n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, 
      n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, 
      n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, 
      n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, 
      n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, 
      n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, 
      n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, 
      n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, 
      n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, 
      n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, 
      n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, 
      n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, 
      n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, 
      n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365 : std_logic;

begin
   
   U229 : NAND3_X1 port map( A1 => n26, A2 => n471, A3 => address(0), ZN => n2)
                           ;
   U2 : CLKBUF_X1 port map( A => read_enable, Z => n461);
   U3 : AND2_X1 port map( A1 => write_enable, A2 => address(2), ZN => n26);
   U4 : INV_X1 port map( A => address(1), ZN => n471);
   U5 : INV_X1 port map( A => n35_port, ZN => n464);
   U6 : INV_X1 port map( A => n19, ZN => n462);
   U7 : INV_X1 port map( A => n2, ZN => n470);
   U8 : INV_X1 port map( A => n33_port, ZN => n468);
   U9 : INV_X1 port map( A => n57, ZN => n469);
   U10 : INV_X1 port map( A => n28, ZN => n467);
   U11 : INV_X1 port map( A => n31_port, ZN => n463);
   U12 : INV_X1 port map( A => n59, ZN => n465);
   U14 : NAND3_X1 port map( A1 => n466, A2 => n471, A3 => n26, ZN => n19);
   U15 : AND2_X1 port map( A1 => n4, A2 => n466, ZN => n455);
   U16 : AND2_X1 port map( A1 => n1, A2 => n466, ZN => n453);
   U17 : AND2_X1 port map( A1 => n3, A2 => n466, ZN => n452);
   U18 : AND2_X1 port map( A1 => n5, A2 => n466, ZN => n454);
   U19 : NOR2_X1 port map( A1 => n472, A2 => address(2), ZN => n29);
   U20 : INV_X1 port map( A => write_enable, ZN => n472);
   U22 : NAND3_X1 port map( A1 => address(0), A2 => n26, A3 => address(1), ZN 
                           => n57);
   U25 : NAND3_X1 port map( A1 => n26, A2 => n466, A3 => address(1), ZN => n59)
                           ;
   U26 : OAI22_X1 port map( A1 => n470, A2 => n1270, B1 => n2, B2 => n491, ZN 
                           => ram_5_0_port);
   U27 : OAI22_X1 port map( A1 => n470, A2 => n1269, B1 => n2, B2 => n490, ZN 
                           => ram_5_1_port);
   U28 : OAI22_X1 port map( A1 => n470, A2 => n1268, B1 => n2, B2 => n489, ZN 
                           => ram_5_2_port);
   U29 : OAI22_X1 port map( A1 => n470, A2 => n1267, B1 => n2, B2 => n488, ZN 
                           => ram_5_3_port);
   U30 : OAI22_X1 port map( A1 => n470, A2 => n1266, B1 => n2, B2 => n487, ZN 
                           => ram_5_4_port);
   U31 : OAI22_X1 port map( A1 => n470, A2 => n1265, B1 => n2, B2 => n486, ZN 
                           => ram_5_5_port);
   U32 : OAI22_X1 port map( A1 => n470, A2 => n1264, B1 => n2, B2 => n485, ZN 
                           => ram_5_6_port);
   U33 : OAI22_X1 port map( A1 => n470, A2 => n1263, B1 => n2, B2 => n484, ZN 
                           => ram_5_7_port);
   U34 : OAI22_X1 port map( A1 => n470, A2 => n1262, B1 => n2, B2 => n483, ZN 
                           => ram_5_8_port);
   U35 : OAI22_X1 port map( A1 => n470, A2 => n1261, B1 => n2, B2 => n482, ZN 
                           => ram_5_9_port);
   U36 : OAI22_X1 port map( A1 => n470, A2 => n1260, B1 => n2, B2 => n481, ZN 
                           => ram_5_10_port);
   U37 : OAI22_X1 port map( A1 => n470, A2 => n1259, B1 => n2, B2 => n480, ZN 
                           => ram_5_11_port);
   U38 : OAI22_X1 port map( A1 => n470, A2 => n1258, B1 => n2, B2 => n479, ZN 
                           => ram_5_12_port);
   U39 : OAI22_X1 port map( A1 => n470, A2 => n1257, B1 => n2, B2 => n478, ZN 
                           => ram_5_13_port);
   U40 : OAI22_X1 port map( A1 => n470, A2 => n1256, B1 => n2, B2 => n477, ZN 
                           => ram_5_14_port);
   U41 : OAI22_X1 port map( A1 => n470, A2 => n1255, B1 => n2, B2 => n476, ZN 
                           => ram_5_15_port);
   U42 : OAI22_X1 port map( A1 => n470, A2 => n1254, B1 => n2, B2 => n475, ZN 
                           => ram_5_16_port);
   U43 : OAI22_X1 port map( A1 => n470, A2 => n1253, B1 => n2, B2 => n474, ZN 
                           => ram_5_17_port);
   U44 : OAI22_X1 port map( A1 => n470, A2 => n1252, B1 => n2, B2 => n473, ZN 
                           => ram_5_18_port);
   U45 : INV_X1 port map( A => address(0), ZN => n466);
   U46 : INV_X1 port map( A => datain(0), ZN => n491);
   U47 : INV_X1 port map( A => datain(1), ZN => n490);
   U48 : INV_X1 port map( A => datain(2), ZN => n489);
   U49 : INV_X1 port map( A => datain(3), ZN => n488);
   U50 : INV_X1 port map( A => datain(4), ZN => n487);
   U51 : INV_X1 port map( A => datain(5), ZN => n486);
   U52 : INV_X1 port map( A => datain(6), ZN => n485);
   U53 : INV_X1 port map( A => datain(7), ZN => n484);
   U54 : INV_X1 port map( A => datain(8), ZN => n483);
   U55 : INV_X1 port map( A => datain(9), ZN => n482);
   U56 : INV_X1 port map( A => datain(10), ZN => n481);
   U57 : INV_X1 port map( A => datain(11), ZN => n480);
   U58 : INV_X1 port map( A => datain(12), ZN => n479);
   U59 : INV_X1 port map( A => datain(13), ZN => n478);
   U60 : INV_X1 port map( A => datain(14), ZN => n477);
   U61 : INV_X1 port map( A => datain(15), ZN => n476);
   U62 : INV_X1 port map( A => datain(16), ZN => n475);
   U63 : INV_X1 port map( A => datain(17), ZN => n474);
   U64 : OAI22_X1 port map( A1 => n468, A2 => n1251, B1 => n491, B2 => n33_port
                           , ZN => ram_1_0_port);
   U65 : OAI22_X1 port map( A1 => n468, A2 => n1250, B1 => n490, B2 => n33_port
                           , ZN => ram_1_1_port);
   U66 : OAI22_X1 port map( A1 => n468, A2 => n1249, B1 => n489, B2 => n33_port
                           , ZN => ram_1_2_port);
   U67 : OAI22_X1 port map( A1 => n468, A2 => n1248, B1 => n488, B2 => n33_port
                           , ZN => ram_1_3_port);
   U68 : OAI22_X1 port map( A1 => n468, A2 => n1247, B1 => n487, B2 => n33_port
                           , ZN => ram_1_4_port);
   U69 : OAI22_X1 port map( A1 => n468, A2 => n1246, B1 => n486, B2 => n33_port
                           , ZN => ram_1_5_port);
   U70 : OAI22_X1 port map( A1 => n468, A2 => n1245, B1 => n485, B2 => n33_port
                           , ZN => ram_1_6_port);
   U71 : OAI22_X1 port map( A1 => n468, A2 => n1244, B1 => n484, B2 => n33_port
                           , ZN => ram_1_7_port);
   U72 : OAI22_X1 port map( A1 => n468, A2 => n1243, B1 => n483, B2 => n33_port
                           , ZN => ram_1_8_port);
   U73 : OAI22_X1 port map( A1 => n468, A2 => n1242, B1 => n482, B2 => n33_port
                           , ZN => ram_1_9_port);
   U74 : OAI22_X1 port map( A1 => n468, A2 => n1241, B1 => n481, B2 => n33_port
                           , ZN => ram_1_10_port);
   U75 : OAI22_X1 port map( A1 => n468, A2 => n1240, B1 => n480, B2 => n33_port
                           , ZN => ram_1_11_port);
   U76 : OAI22_X1 port map( A1 => n468, A2 => n1239, B1 => n479, B2 => n33_port
                           , ZN => ram_1_12_port);
   U77 : OAI22_X1 port map( A1 => n468, A2 => n1238, B1 => n478, B2 => n33_port
                           , ZN => ram_1_13_port);
   U78 : OAI22_X1 port map( A1 => n468, A2 => n1237, B1 => n477, B2 => n33_port
                           , ZN => ram_1_14_port);
   U79 : OAI22_X1 port map( A1 => n468, A2 => n1236, B1 => n476, B2 => n33_port
                           , ZN => ram_1_15_port);
   U80 : OAI22_X1 port map( A1 => n468, A2 => n1235, B1 => n475, B2 => n33_port
                           , ZN => ram_1_16_port);
   U81 : OAI22_X1 port map( A1 => n468, A2 => n1234, B1 => n474, B2 => n33_port
                           , ZN => ram_1_17_port);
   U82 : OAI22_X1 port map( A1 => n468, A2 => n1233, B1 => n473, B2 => n33_port
                           , ZN => ram_1_18_port);
   U83 : OAI22_X1 port map( A1 => n469, A2 => n1346, B1 => n491, B2 => n57, ZN 
                           => ram_7_0_port);
   U84 : OAI22_X1 port map( A1 => n469, A2 => n1345, B1 => n490, B2 => n57, ZN 
                           => ram_7_1_port);
   U85 : OAI22_X1 port map( A1 => n469, A2 => n1344, B1 => n489, B2 => n57, ZN 
                           => ram_7_2_port);
   U86 : OAI22_X1 port map( A1 => n469, A2 => n1343, B1 => n488, B2 => n57, ZN 
                           => ram_7_3_port);
   U87 : OAI22_X1 port map( A1 => n469, A2 => n1342, B1 => n487, B2 => n57, ZN 
                           => ram_7_4_port);
   U88 : OAI22_X1 port map( A1 => n469, A2 => n1341, B1 => n486, B2 => n57, ZN 
                           => ram_7_5_port);
   U89 : OAI22_X1 port map( A1 => n469, A2 => n1340, B1 => n485, B2 => n57, ZN 
                           => ram_7_6_port);
   U90 : OAI22_X1 port map( A1 => n469, A2 => n1339, B1 => n484, B2 => n57, ZN 
                           => ram_7_7_port);
   U91 : OAI22_X1 port map( A1 => n469, A2 => n1338, B1 => n483, B2 => n57, ZN 
                           => ram_7_8_port);
   U92 : OAI22_X1 port map( A1 => n469, A2 => n1337, B1 => n482, B2 => n57, ZN 
                           => ram_7_9_port);
   U93 : OAI22_X1 port map( A1 => n469, A2 => n1336, B1 => n481, B2 => n57, ZN 
                           => ram_7_10_port);
   U94 : OAI22_X1 port map( A1 => n469, A2 => n1335, B1 => n480, B2 => n57, ZN 
                           => ram_7_11_port);
   U95 : OAI22_X1 port map( A1 => n469, A2 => n1334, B1 => n479, B2 => n57, ZN 
                           => ram_7_12_port);
   U96 : OAI22_X1 port map( A1 => n469, A2 => n1333, B1 => n478, B2 => n57, ZN 
                           => ram_7_13_port);
   U97 : OAI22_X1 port map( A1 => n469, A2 => n1332, B1 => n477, B2 => n57, ZN 
                           => ram_7_14_port);
   U98 : OAI22_X1 port map( A1 => n469, A2 => n1331, B1 => n476, B2 => n57, ZN 
                           => ram_7_15_port);
   U99 : OAI22_X1 port map( A1 => n469, A2 => n1330, B1 => n475, B2 => n57, ZN 
                           => ram_7_16_port);
   U100 : OAI22_X1 port map( A1 => n469, A2 => n1329, B1 => n474, B2 => n57, ZN
                           => ram_7_17_port);
   U101 : OAI22_X1 port map( A1 => n469, A2 => n1328, B1 => n473, B2 => n57, ZN
                           => ram_7_18_port);
   U102 : OAI22_X1 port map( A1 => n462, A2 => n1232, B1 => n19, B2 => n491, ZN
                           => ram_4_0_port);
   U103 : OAI22_X1 port map( A1 => n462, A2 => n1231, B1 => n19, B2 => n490, ZN
                           => ram_4_1_port);
   U104 : OAI22_X1 port map( A1 => n462, A2 => n1230, B1 => n19, B2 => n489, ZN
                           => ram_4_2_port);
   U105 : OAI22_X1 port map( A1 => n462, A2 => n1229, B1 => n19, B2 => n488, ZN
                           => ram_4_3_port);
   U106 : OAI22_X1 port map( A1 => n467, A2 => n1327, B1 => n491, B2 => n28, ZN
                           => ram_3_0_port);
   U107 : OAI22_X1 port map( A1 => n467, A2 => n1326, B1 => n490, B2 => n28, ZN
                           => ram_3_1_port);
   U108 : OAI22_X1 port map( A1 => n467, A2 => n1325, B1 => n489, B2 => n28, ZN
                           => ram_3_2_port);
   U109 : OAI22_X1 port map( A1 => n467, A2 => n1324, B1 => n488, B2 => n28, ZN
                           => ram_3_3_port);
   U110 : OAI22_X1 port map( A1 => n467, A2 => n1323, B1 => n487, B2 => n28, ZN
                           => ram_3_4_port);
   U111 : OAI22_X1 port map( A1 => n467, A2 => n1322, B1 => n486, B2 => n28, ZN
                           => ram_3_5_port);
   U112 : OAI22_X1 port map( A1 => n467, A2 => n1321, B1 => n485, B2 => n28, ZN
                           => ram_3_6_port);
   U113 : OAI22_X1 port map( A1 => n467, A2 => n1320, B1 => n484, B2 => n28, ZN
                           => ram_3_7_port);
   U114 : OAI22_X1 port map( A1 => n467, A2 => n1319, B1 => n483, B2 => n28, ZN
                           => ram_3_8_port);
   U115 : OAI22_X1 port map( A1 => n467, A2 => n1318, B1 => n482, B2 => n28, ZN
                           => ram_3_9_port);
   U116 : OAI22_X1 port map( A1 => n467, A2 => n1317, B1 => n481, B2 => n28, ZN
                           => ram_3_10_port);
   U117 : OAI22_X1 port map( A1 => n467, A2 => n1316, B1 => n480, B2 => n28, ZN
                           => ram_3_11_port);
   U118 : OAI22_X1 port map( A1 => n467, A2 => n1315, B1 => n479, B2 => n28, ZN
                           => ram_3_12_port);
   U119 : OAI22_X1 port map( A1 => n467, A2 => n1314, B1 => n478, B2 => n28, ZN
                           => ram_3_13_port);
   U120 : OAI22_X1 port map( A1 => n467, A2 => n1313, B1 => n477, B2 => n28, ZN
                           => ram_3_14_port);
   U121 : OAI22_X1 port map( A1 => n467, A2 => n1312, B1 => n476, B2 => n28, ZN
                           => ram_3_15_port);
   U122 : OAI22_X1 port map( A1 => n467, A2 => n1311, B1 => n475, B2 => n28, ZN
                           => ram_3_16_port);
   U123 : OAI22_X1 port map( A1 => n467, A2 => n1310, B1 => n474, B2 => n28, ZN
                           => ram_3_17_port);
   U124 : OAI22_X1 port map( A1 => n467, A2 => n1309, B1 => n473, B2 => n28, ZN
                           => ram_3_18_port);
   U125 : OAI22_X1 port map( A1 => n463, A2 => n1308, B1 => n491, B2 => 
                           n31_port, ZN => ram_2_0_port);
   U126 : OAI22_X1 port map( A1 => n463, A2 => n1307, B1 => n490, B2 => 
                           n31_port, ZN => ram_2_1_port);
   U127 : OAI22_X1 port map( A1 => n463, A2 => n1306, B1 => n489, B2 => 
                           n31_port, ZN => ram_2_2_port);
   U128 : OAI22_X1 port map( A1 => n463, A2 => n1305, B1 => n488, B2 => 
                           n31_port, ZN => ram_2_3_port);
   U129 : OAI22_X1 port map( A1 => n463, A2 => n1304, B1 => n487, B2 => 
                           n31_port, ZN => ram_2_4_port);
   U130 : OAI22_X1 port map( A1 => n463, A2 => n1303, B1 => n486, B2 => 
                           n31_port, ZN => ram_2_5_port);
   U131 : OAI22_X1 port map( A1 => n463, A2 => n1302, B1 => n485, B2 => 
                           n31_port, ZN => ram_2_6_port);
   U132 : OAI22_X1 port map( A1 => n463, A2 => n1301, B1 => n484, B2 => 
                           n31_port, ZN => ram_2_7_port);
   U133 : OAI22_X1 port map( A1 => n463, A2 => n1300, B1 => n483, B2 => 
                           n31_port, ZN => ram_2_8_port);
   U134 : OAI22_X1 port map( A1 => n463, A2 => n1299, B1 => n482, B2 => 
                           n31_port, ZN => ram_2_9_port);
   U135 : OAI22_X1 port map( A1 => n463, A2 => n1298, B1 => n481, B2 => 
                           n31_port, ZN => ram_2_10_port);
   U136 : OAI22_X1 port map( A1 => n463, A2 => n1297, B1 => n480, B2 => 
                           n31_port, ZN => ram_2_11_port);
   U137 : OAI22_X1 port map( A1 => n463, A2 => n1296, B1 => n479, B2 => 
                           n31_port, ZN => ram_2_12_port);
   U138 : OAI22_X1 port map( A1 => n463, A2 => n1295, B1 => n478, B2 => 
                           n31_port, ZN => ram_2_13_port);
   U139 : OAI22_X1 port map( A1 => n463, A2 => n1294, B1 => n477, B2 => 
                           n31_port, ZN => ram_2_14_port);
   U140 : OAI22_X1 port map( A1 => n463, A2 => n1293, B1 => n476, B2 => 
                           n31_port, ZN => ram_2_15_port);
   U141 : OAI22_X1 port map( A1 => n463, A2 => n1292, B1 => n475, B2 => 
                           n31_port, ZN => ram_2_16_port);
   U142 : OAI22_X1 port map( A1 => n463, A2 => n1291, B1 => n474, B2 => 
                           n31_port, ZN => ram_2_17_port);
   U143 : OAI22_X1 port map( A1 => n463, A2 => n1290, B1 => n473, B2 => 
                           n31_port, ZN => ram_2_18_port);
   U144 : OAI22_X1 port map( A1 => n465, A2 => n1289, B1 => n491, B2 => n59, ZN
                           => ram_6_0_port);
   U145 : OAI22_X1 port map( A1 => n465, A2 => n1288, B1 => n490, B2 => n59, ZN
                           => ram_6_1_port);
   U146 : OAI22_X1 port map( A1 => n465, A2 => n1287, B1 => n489, B2 => n59, ZN
                           => ram_6_2_port);
   U147 : OAI22_X1 port map( A1 => n465, A2 => n1286, B1 => n488, B2 => n59, ZN
                           => ram_6_3_port);
   U148 : OAI22_X1 port map( A1 => n465, A2 => n1285, B1 => n487, B2 => n59, ZN
                           => ram_6_4_port);
   U149 : OAI22_X1 port map( A1 => n465, A2 => n1284, B1 => n486, B2 => n59, ZN
                           => ram_6_5_port);
   U150 : OAI22_X1 port map( A1 => n465, A2 => n1283, B1 => n485, B2 => n59, ZN
                           => ram_6_6_port);
   U151 : OAI22_X1 port map( A1 => n465, A2 => n1282, B1 => n484, B2 => n59, ZN
                           => ram_6_7_port);
   U152 : OAI22_X1 port map( A1 => n465, A2 => n1281, B1 => n483, B2 => n59, ZN
                           => ram_6_8_port);
   U153 : OAI22_X1 port map( A1 => n465, A2 => n1280, B1 => n482, B2 => n59, ZN
                           => ram_6_9_port);
   U154 : OAI22_X1 port map( A1 => n465, A2 => n1279, B1 => n481, B2 => n59, ZN
                           => ram_6_10_port);
   U155 : OAI22_X1 port map( A1 => n465, A2 => n1278, B1 => n480, B2 => n59, ZN
                           => ram_6_11_port);
   U156 : OAI22_X1 port map( A1 => n465, A2 => n1277, B1 => n479, B2 => n59, ZN
                           => ram_6_12_port);
   U157 : OAI22_X1 port map( A1 => n465, A2 => n1276, B1 => n478, B2 => n59, ZN
                           => ram_6_13_port);
   U158 : OAI22_X1 port map( A1 => n465, A2 => n1275, B1 => n477, B2 => n59, ZN
                           => ram_6_14_port);
   U159 : OAI22_X1 port map( A1 => n465, A2 => n1274, B1 => n476, B2 => n59, ZN
                           => ram_6_15_port);
   U160 : OAI22_X1 port map( A1 => n465, A2 => n1273, B1 => n475, B2 => n59, ZN
                           => ram_6_16_port);
   U161 : OAI22_X1 port map( A1 => n465, A2 => n1272, B1 => n474, B2 => n59, ZN
                           => ram_6_17_port);
   U162 : OAI22_X1 port map( A1 => n465, A2 => n1271, B1 => n473, B2 => n59, ZN
                           => ram_6_18_port);
   U163 : OAI22_X1 port map( A1 => n464, A2 => n1228, B1 => n491, B2 => 
                           n35_port, ZN => ram_0_0_port);
   U164 : OAI22_X1 port map( A1 => n464, A2 => n1227, B1 => n490, B2 => 
                           n35_port, ZN => ram_0_1_port);
   U165 : OAI22_X1 port map( A1 => n464, A2 => n1226, B1 => n489, B2 => 
                           n35_port, ZN => ram_0_2_port);
   U166 : OAI22_X1 port map( A1 => n464, A2 => n1225, B1 => n488, B2 => 
                           n35_port, ZN => ram_0_3_port);
   U167 : OAI22_X1 port map( A1 => n464, A2 => n1224, B1 => n487, B2 => 
                           n35_port, ZN => ram_0_4_port);
   U168 : OAI22_X1 port map( A1 => n464, A2 => n1223, B1 => n486, B2 => 
                           n35_port, ZN => ram_0_5_port);
   U169 : OAI22_X1 port map( A1 => n464, A2 => n1222, B1 => n485, B2 => 
                           n35_port, ZN => ram_0_6_port);
   U170 : OAI22_X1 port map( A1 => n464, A2 => n1221, B1 => n484, B2 => 
                           n35_port, ZN => ram_0_7_port);
   U171 : OAI22_X1 port map( A1 => n464, A2 => n1220, B1 => n483, B2 => 
                           n35_port, ZN => ram_0_8_port);
   U172 : OAI22_X1 port map( A1 => n464, A2 => n1219, B1 => n482, B2 => 
                           n35_port, ZN => ram_0_9_port);
   U173 : OAI22_X1 port map( A1 => n464, A2 => n1218, B1 => n481, B2 => 
                           n35_port, ZN => ram_0_10_port);
   U174 : OAI22_X1 port map( A1 => n464, A2 => n1217, B1 => n480, B2 => 
                           n35_port, ZN => ram_0_11_port);
   U175 : OAI22_X1 port map( A1 => n464, A2 => n1216, B1 => n479, B2 => 
                           n35_port, ZN => ram_0_12_port);
   U176 : OAI22_X1 port map( A1 => n464, A2 => n1215, B1 => n478, B2 => 
                           n35_port, ZN => ram_0_13_port);
   U177 : OAI22_X1 port map( A1 => n464, A2 => n1214, B1 => n477, B2 => 
                           n35_port, ZN => ram_0_14_port);
   U178 : OAI22_X1 port map( A1 => n464, A2 => n1213, B1 => n476, B2 => 
                           n35_port, ZN => ram_0_15_port);
   U179 : OAI22_X1 port map( A1 => n464, A2 => n1212, B1 => n475, B2 => 
                           n35_port, ZN => ram_0_16_port);
   U180 : OAI22_X1 port map( A1 => n464, A2 => n1211, B1 => n474, B2 => 
                           n35_port, ZN => ram_0_17_port);
   U181 : OAI22_X1 port map( A1 => n464, A2 => n1210, B1 => n473, B2 => 
                           n35_port, ZN => ram_0_18_port);
   U182 : OAI22_X1 port map( A1 => n462, A2 => n1209, B1 => n487, B2 => n19, ZN
                           => ram_4_4_port);
   U183 : OAI22_X1 port map( A1 => n462, A2 => n1208, B1 => n486, B2 => n19, ZN
                           => ram_4_5_port);
   U184 : OAI22_X1 port map( A1 => n462, A2 => n1207, B1 => n485, B2 => n19, ZN
                           => ram_4_6_port);
   U185 : OAI22_X1 port map( A1 => n462, A2 => n1206, B1 => n484, B2 => n19, ZN
                           => ram_4_7_port);
   U186 : OAI22_X1 port map( A1 => n462, A2 => n1205, B1 => n483, B2 => n19, ZN
                           => ram_4_8_port);
   U187 : OAI22_X1 port map( A1 => n462, A2 => n1204, B1 => n482, B2 => n19, ZN
                           => ram_4_9_port);
   U188 : OAI22_X1 port map( A1 => n462, A2 => n1203, B1 => n481, B2 => n19, ZN
                           => ram_4_10_port);
   U189 : OAI22_X1 port map( A1 => n462, A2 => n1202, B1 => n480, B2 => n19, ZN
                           => ram_4_11_port);
   U190 : OAI22_X1 port map( A1 => n462, A2 => n1201, B1 => n479, B2 => n19, ZN
                           => ram_4_12_port);
   U191 : OAI22_X1 port map( A1 => n462, A2 => n1200, B1 => n478, B2 => n19, ZN
                           => ram_4_13_port);
   U192 : OAI22_X1 port map( A1 => n462, A2 => n1199, B1 => n477, B2 => n19, ZN
                           => ram_4_14_port);
   U193 : OAI22_X1 port map( A1 => n462, A2 => n1198, B1 => n476, B2 => n19, ZN
                           => ram_4_15_port);
   U194 : OAI22_X1 port map( A1 => n462, A2 => n1197, B1 => n475, B2 => n19, ZN
                           => ram_4_16_port);
   U195 : OAI22_X1 port map( A1 => n462, A2 => n1196, B1 => n474, B2 => n19, ZN
                           => ram_4_17_port);
   U196 : OAI22_X1 port map( A1 => n462, A2 => n1195, B1 => n473, B2 => n19, ZN
                           => ram_4_18_port);
   U197 : INV_X1 port map( A => address(2), ZN => n460);
   U198 : OAI21_X1 port map( B1 => n461, B2 => n1365, A => n37_port, ZN => 
                           n1194);
   U199 : NAND2_X1 port map( A1 => n461, A2 => N48, ZN => n37_port);
   U200 : OAI21_X1 port map( B1 => read_enable, B2 => n1364, A => n38_port, ZN 
                           => n1193);
   U201 : NAND2_X1 port map( A1 => N47, A2 => read_enable, ZN => n38_port);
   U202 : OAI21_X1 port map( B1 => read_enable, B2 => n1363, A => n39_port, ZN 
                           => n1192);
   U203 : NAND2_X1 port map( A1 => N46, A2 => read_enable, ZN => n39_port);
   U204 : OAI21_X1 port map( B1 => read_enable, B2 => n1362, A => n40_port, ZN 
                           => n1191);
   U205 : NAND2_X1 port map( A1 => N45, A2 => read_enable, ZN => n40_port);
   U206 : OAI21_X1 port map( B1 => read_enable, B2 => n1361, A => n41_port, ZN 
                           => n1190);
   U207 : NAND2_X1 port map( A1 => N44, A2 => read_enable, ZN => n41_port);
   U208 : OAI21_X1 port map( B1 => read_enable, B2 => n1360, A => n42_port, ZN 
                           => n1189);
   U209 : NAND2_X1 port map( A1 => N43, A2 => read_enable, ZN => n42_port);
   U210 : OAI21_X1 port map( B1 => read_enable, B2 => n1359, A => n43_port, ZN 
                           => n1188);
   U211 : NAND2_X1 port map( A1 => N42, A2 => read_enable, ZN => n43_port);
   U212 : OAI21_X1 port map( B1 => read_enable, B2 => n1358, A => n44_port, ZN 
                           => n1187);
   U213 : NAND2_X1 port map( A1 => N41, A2 => read_enable, ZN => n44_port);
   U214 : OAI21_X1 port map( B1 => read_enable, B2 => n1357, A => n45_port, ZN 
                           => n1186);
   U215 : NAND2_X1 port map( A1 => N40, A2 => n461, ZN => n45_port);
   U216 : OAI21_X1 port map( B1 => read_enable, B2 => n1356, A => n46_port, ZN 
                           => n1185);
   U217 : NAND2_X1 port map( A1 => N39, A2 => n461, ZN => n46_port);
   U218 : OAI21_X1 port map( B1 => read_enable, B2 => n1355, A => n47_port, ZN 
                           => n1184);
   U219 : NAND2_X1 port map( A1 => N38, A2 => n461, ZN => n47_port);
   U220 : OAI21_X1 port map( B1 => read_enable, B2 => n1354, A => n48_port, ZN 
                           => n1183);
   U221 : NAND2_X1 port map( A1 => N37, A2 => n461, ZN => n48_port);
   U222 : OAI21_X1 port map( B1 => read_enable, B2 => n1353, A => n49, ZN => 
                           n1182);
   U223 : NAND2_X1 port map( A1 => N36, A2 => n461, ZN => n49);
   U224 : OAI21_X1 port map( B1 => n461, B2 => n1352, A => n50, ZN => n1181);
   U225 : NAND2_X1 port map( A1 => N35, A2 => n461, ZN => n50);
   U226 : OAI21_X1 port map( B1 => n461, B2 => n1351, A => n51, ZN => n1180);
   U227 : NAND2_X1 port map( A1 => N34, A2 => read_enable, ZN => n51);
   U228 : OAI21_X1 port map( B1 => n461, B2 => n1350, A => n52, ZN => n1179);
   U230 : NAND2_X1 port map( A1 => N33, A2 => read_enable, ZN => n52);
   U231 : OAI21_X1 port map( B1 => n461, B2 => n1349, A => n53, ZN => n1178);
   U232 : NAND2_X1 port map( A1 => N32, A2 => read_enable, ZN => n53);
   U233 : OAI21_X1 port map( B1 => n461, B2 => n1348, A => n54, ZN => n1177);
   U234 : NAND2_X1 port map( A1 => N31, A2 => read_enable, ZN => n54);
   U235 : OAI21_X1 port map( B1 => n461, B2 => n1347, A => n55, ZN => n1176);
   U236 : NAND2_X1 port map( A1 => N30, A2 => n461, ZN => n55);
   U237 : NOR2_X1 port map( A1 => n460, A2 => address(1), ZN => n1);
   U238 : AND2_X1 port map( A1 => n1, A2 => address(0), ZN => n449);
   U239 : NOR2_X1 port map( A1 => n460, A2 => n471, ZN => n3);
   U240 : AND2_X1 port map( A1 => address(0), A2 => n3, ZN => n448);
   U241 : AOI22_X1 port map( A1 => n814, A2 => n449, B1 => n776, B2 => n448, ZN
                           => n9);
   U242 : NOR2_X1 port map( A1 => address(1), A2 => address(2), ZN => n4);
   U243 : AND2_X1 port map( A1 => n4, A2 => address(0), ZN => n451);
   U244 : NOR2_X1 port map( A1 => n471, A2 => address(2), ZN => n5);
   U245 : AND2_X1 port map( A1 => n5, A2 => address(0), ZN => n450);
   U246 : AOI22_X1 port map( A1 => n795, A2 => n451, B1 => n753, B2 => n450, ZN
                           => n8);
   U247 : AOI22_X1 port map( A1 => n757, A2 => n453, B1 => n715, B2 => n452, ZN
                           => n7);
   U248 : AOI22_X1 port map( A1 => n696, A2 => n455, B1 => n734, B2 => n454, ZN
                           => n6);
   U249 : NAND4_X1 port map( A1 => n9, A2 => n8, A3 => n7, A4 => n6, ZN => N48)
                           ;
   U250 : AOI22_X1 port map( A1 => n813, A2 => n449, B1 => n775, B2 => n448, ZN
                           => n13);
   U251 : AOI22_X1 port map( A1 => n794, A2 => n451, B1 => n752, B2 => n450, ZN
                           => n12);
   U252 : AOI22_X1 port map( A1 => n756, A2 => n453, B1 => n714, B2 => n452, ZN
                           => n11);
   U253 : AOI22_X1 port map( A1 => n695, A2 => n455, B1 => n733, B2 => n454, ZN
                           => n10);
   U254 : NAND4_X1 port map( A1 => n13, A2 => n12, A3 => n11, A4 => n10, ZN => 
                           N47);
   U255 : AOI22_X1 port map( A1 => n812, A2 => n449, B1 => n774, B2 => n448, ZN
                           => n17);
   U256 : AOI22_X1 port map( A1 => n793, A2 => n451, B1 => n751, B2 => n450, ZN
                           => n16);
   U257 : AOI22_X1 port map( A1 => n755, A2 => n453, B1 => n713, B2 => n452, ZN
                           => n15);
   U258 : AOI22_X1 port map( A1 => n694, A2 => n455, B1 => n732, B2 => n454, ZN
                           => n14);
   U259 : NAND4_X1 port map( A1 => n17, A2 => n16, A3 => n15, A4 => n14, ZN => 
                           N46);
   U260 : AOI22_X1 port map( A1 => n811, A2 => n449, B1 => n773, B2 => n448, ZN
                           => n22);
   U261 : AOI22_X1 port map( A1 => n792, A2 => n451, B1 => n750, B2 => n450, ZN
                           => n21);
   U262 : AOI22_X1 port map( A1 => n754, A2 => n453, B1 => n712, B2 => n452, ZN
                           => n20);
   U263 : AOI22_X1 port map( A1 => n693, A2 => n455, B1 => n731, B2 => n454, ZN
                           => n18);
   U264 : NAND4_X1 port map( A1 => n22, A2 => n21, A3 => n20, A4 => n18, ZN => 
                           N45);
   U265 : AOI22_X1 port map( A1 => n810, A2 => n449, B1 => n772, B2 => n448, ZN
                           => n27);
   U266 : AOI22_X1 port map( A1 => n791, A2 => n451, B1 => n749, B2 => n450, ZN
                           => n25);
   U267 : AOI22_X1 port map( A1 => n677, A2 => n453, B1 => n711, B2 => n452, ZN
                           => n24);
   U268 : AOI22_X1 port map( A1 => n692, A2 => n455, B1 => n730, B2 => n454, ZN
                           => n23);
   U269 : NAND4_X1 port map( A1 => n27, A2 => n25, A3 => n24, A4 => n23, ZN => 
                           N44);
   U270 : AOI22_X1 port map( A1 => n809, A2 => n449, B1 => n771, B2 => n448, ZN
                           => n36_port);
   U271 : AOI22_X1 port map( A1 => n790, A2 => n451, B1 => n748, B2 => n450, ZN
                           => n34_port);
   U272 : AOI22_X1 port map( A1 => n676, A2 => n453, B1 => n710, B2 => n452, ZN
                           => n32_port);
   U273 : AOI22_X1 port map( A1 => n691, A2 => n455, B1 => n729, B2 => n454, ZN
                           => n30_port);
   U274 : NAND4_X1 port map( A1 => n36_port, A2 => n34_port, A3 => n32_port, A4
                           => n30_port, ZN => N43);
   U275 : AOI22_X1 port map( A1 => n808, A2 => n449, B1 => n770, B2 => n448, ZN
                           => n403);
   U276 : AOI22_X1 port map( A1 => n789, A2 => n451, B1 => n747, B2 => n450, ZN
                           => n402);
   U277 : AOI22_X1 port map( A1 => n675, A2 => n453, B1 => n709, B2 => n452, ZN
                           => n58);
   U278 : AOI22_X1 port map( A1 => n690, A2 => n455, B1 => n728, B2 => n454, ZN
                           => n56);
   U279 : NAND4_X1 port map( A1 => n403, A2 => n402, A3 => n58, A4 => n56, ZN 
                           => N42);
   U280 : AOI22_X1 port map( A1 => n807, A2 => n449, B1 => n769, B2 => n448, ZN
                           => n407);
   U281 : AOI22_X1 port map( A1 => n788, A2 => n451, B1 => n746, B2 => n450, ZN
                           => n406);
   U282 : AOI22_X1 port map( A1 => n674, A2 => n453, B1 => n708, B2 => n452, ZN
                           => n405);
   U283 : AOI22_X1 port map( A1 => n689, A2 => n455, B1 => n727, B2 => n454, ZN
                           => n404);
   U284 : NAND4_X1 port map( A1 => n407, A2 => n406, A3 => n405, A4 => n404, ZN
                           => N41);
   U285 : AOI22_X1 port map( A1 => n806, A2 => n449, B1 => n768, B2 => n448, ZN
                           => n411);
   U286 : AOI22_X1 port map( A1 => n787, A2 => n451, B1 => n745, B2 => n450, ZN
                           => n410);
   U287 : AOI22_X1 port map( A1 => n673, A2 => n453, B1 => n707, B2 => n452, ZN
                           => n409);
   U288 : AOI22_X1 port map( A1 => n688, A2 => n455, B1 => n726, B2 => n454, ZN
                           => n408);
   U289 : NAND4_X1 port map( A1 => n411, A2 => n410, A3 => n409, A4 => n408, ZN
                           => N40);
   U290 : AOI22_X1 port map( A1 => n805, A2 => n449, B1 => n767, B2 => n448, ZN
                           => n415);
   U291 : AOI22_X1 port map( A1 => n786, A2 => n451, B1 => n744, B2 => n450, ZN
                           => n414);
   U292 : AOI22_X1 port map( A1 => n672, A2 => n453, B1 => n706, B2 => n452, ZN
                           => n413);
   U293 : AOI22_X1 port map( A1 => n687, A2 => n455, B1 => n725, B2 => n454, ZN
                           => n412);
   U294 : NAND4_X1 port map( A1 => n415, A2 => n414, A3 => n413, A4 => n412, ZN
                           => N39);
   U295 : AOI22_X1 port map( A1 => n804, A2 => n449, B1 => n766, B2 => n448, ZN
                           => n419);
   U296 : AOI22_X1 port map( A1 => n785, A2 => n451, B1 => n743, B2 => n450, ZN
                           => n418);
   U297 : AOI22_X1 port map( A1 => n671, A2 => n453, B1 => n705, B2 => n452, ZN
                           => n417);
   U298 : AOI22_X1 port map( A1 => n686, A2 => n455, B1 => n724, B2 => n454, ZN
                           => n416);
   U299 : NAND4_X1 port map( A1 => n419, A2 => n418, A3 => n417, A4 => n416, ZN
                           => N38);
   U300 : AOI22_X1 port map( A1 => n803, A2 => n449, B1 => n765, B2 => n448, ZN
                           => n423);
   U301 : AOI22_X1 port map( A1 => n784, A2 => n451, B1 => n742, B2 => n450, ZN
                           => n422);
   U302 : AOI22_X1 port map( A1 => n670, A2 => n453, B1 => n704, B2 => n452, ZN
                           => n421);
   U303 : AOI22_X1 port map( A1 => n685, A2 => n455, B1 => n723, B2 => n454, ZN
                           => n420);
   U304 : NAND4_X1 port map( A1 => n423, A2 => n422, A3 => n421, A4 => n420, ZN
                           => N37);
   U305 : AOI22_X1 port map( A1 => n802, A2 => n449, B1 => n764, B2 => n448, ZN
                           => n427);
   U306 : AOI22_X1 port map( A1 => n783, A2 => n451, B1 => n741, B2 => n450, ZN
                           => n426);
   U307 : AOI22_X1 port map( A1 => n669, A2 => n453, B1 => n703, B2 => n452, ZN
                           => n425);
   U308 : AOI22_X1 port map( A1 => n684, A2 => n455, B1 => n722, B2 => n454, ZN
                           => n424);
   U309 : NAND4_X1 port map( A1 => n427, A2 => n426, A3 => n425, A4 => n424, ZN
                           => N36);
   U310 : AOI22_X1 port map( A1 => n801, A2 => n449, B1 => n763, B2 => n448, ZN
                           => n431);
   U311 : AOI22_X1 port map( A1 => n782, A2 => n451, B1 => n740, B2 => n450, ZN
                           => n430);
   U312 : AOI22_X1 port map( A1 => n668, A2 => n453, B1 => n702, B2 => n452, ZN
                           => n429);
   U313 : AOI22_X1 port map( A1 => n683, A2 => n455, B1 => n721, B2 => n454, ZN
                           => n428);
   U314 : NAND4_X1 port map( A1 => n431, A2 => n430, A3 => n429, A4 => n428, ZN
                           => N35);
   U315 : AOI22_X1 port map( A1 => n800, A2 => n449, B1 => n762, B2 => n448, ZN
                           => n435);
   U316 : AOI22_X1 port map( A1 => n781, A2 => n451, B1 => n739, B2 => n450, ZN
                           => n434);
   U317 : AOI22_X1 port map( A1 => n667, A2 => n453, B1 => n701, B2 => n452, ZN
                           => n433);
   U318 : AOI22_X1 port map( A1 => n682, A2 => n455, B1 => n720, B2 => n454, ZN
                           => n432);
   U319 : NAND4_X1 port map( A1 => n435, A2 => n434, A3 => n433, A4 => n432, ZN
                           => N34);
   U320 : AOI22_X1 port map( A1 => n799, A2 => n449, B1 => n761, B2 => n448, ZN
                           => n439);
   U321 : AOI22_X1 port map( A1 => n780, A2 => n451, B1 => n738, B2 => n450, ZN
                           => n438);
   U322 : AOI22_X1 port map( A1 => n666, A2 => n453, B1 => n700, B2 => n452, ZN
                           => n437);
   U323 : AOI22_X1 port map( A1 => n681, A2 => n455, B1 => n719, B2 => n454, ZN
                           => n436);
   U324 : NAND4_X1 port map( A1 => n439, A2 => n438, A3 => n437, A4 => n436, ZN
                           => N33);
   U325 : AOI22_X1 port map( A1 => n798, A2 => n449, B1 => n760, B2 => n448, ZN
                           => n443);
   U326 : AOI22_X1 port map( A1 => n779, A2 => n451, B1 => n737, B2 => n450, ZN
                           => n442);
   U327 : AOI22_X1 port map( A1 => n665, A2 => n453, B1 => n699, B2 => n452, ZN
                           => n441);
   U328 : AOI22_X1 port map( A1 => n680, A2 => n455, B1 => n718, B2 => n454, ZN
                           => n440);
   U329 : NAND4_X1 port map( A1 => n443, A2 => n442, A3 => n441, A4 => n440, ZN
                           => N32);
   U330 : AOI22_X1 port map( A1 => n797, A2 => n449, B1 => n759, B2 => n448, ZN
                           => n447);
   U331 : AOI22_X1 port map( A1 => n778, A2 => n451, B1 => n736, B2 => n450, ZN
                           => n446);
   U332 : AOI22_X1 port map( A1 => n664, A2 => n453, B1 => n698, B2 => n452, ZN
                           => n445);
   U333 : AOI22_X1 port map( A1 => n679, A2 => n455, B1 => n717, B2 => n454, ZN
                           => n444);
   U334 : NAND4_X1 port map( A1 => n447, A2 => n446, A3 => n445, A4 => n444, ZN
                           => N31);
   U335 : AOI22_X1 port map( A1 => n796, A2 => n449, B1 => n758, B2 => n448, ZN
                           => n459);
   U336 : AOI22_X1 port map( A1 => n777, A2 => n451, B1 => n735, B2 => n450, ZN
                           => n458);
   U337 : AOI22_X1 port map( A1 => n663, A2 => n453, B1 => n697, B2 => n452, ZN
                           => n457);
   U338 : AOI22_X1 port map( A1 => n678, A2 => n455, B1 => n716, B2 => n454, ZN
                           => n456);
   U339 : NAND4_X1 port map( A1 => n459, A2 => n458, A3 => n457, A4 => n456, ZN
                           => N30);
   U340 : INV_X1 port map( A => datain(18), ZN => n473);
   clock_r_REG12_S2 : DFF_X1 port map( D => n1194, CK => clock, Q => dataout(0)
                           , QN => n1365);
   clock_r_REG19_S2 : DFF_X1 port map( D => n1193, CK => clock, Q => dataout(1)
                           , QN => n1364);
   clock_r_REG18_S2 : DFF_X1 port map( D => n1192, CK => clock, Q => dataout(2)
                           , QN => n1363);
   clock_r_REG17_S2 : DFF_X1 port map( D => n1191, CK => clock, Q => dataout(3)
                           , QN => n1362);
   clock_r_REG16_S2 : DFF_X1 port map( D => n1190, CK => clock, Q => dataout(4)
                           , QN => n1361);
   clock_r_REG15_S2 : DFF_X1 port map( D => n1189, CK => clock, Q => dataout(5)
                           , QN => n1360);
   clock_r_REG14_S2 : DFF_X1 port map( D => n1188, CK => clock, Q => dataout(6)
                           , QN => n1359);
   clock_r_REG13_S2 : DFF_X1 port map( D => n1187, CK => clock, Q => dataout(7)
                           , QN => n1358);
   clock_r_REG11_S2 : DFF_X1 port map( D => n1186, CK => clock, Q => dataout(8)
                           , QN => n1357);
   clock_r_REG10_S2 : DFF_X1 port map( D => n1185, CK => clock, Q => dataout(9)
                           , QN => n1356);
   clock_r_REG9_S2 : DFF_X1 port map( D => n1184, CK => clock, Q => dataout(10)
                           , QN => n1355);
   clock_r_REG8_S2 : DFF_X1 port map( D => n1183, CK => clock, Q => dataout(11)
                           , QN => n1354);
   clock_r_REG7_S2 : DFF_X1 port map( D => n1182, CK => clock, Q => dataout(12)
                           , QN => n1353);
   clock_r_REG6_S2 : DFF_X1 port map( D => n1181, CK => clock, Q => dataout(13)
                           , QN => n1352);
   clock_r_REG5_S2 : DFF_X1 port map( D => n1180, CK => clock, Q => dataout(14)
                           , QN => n1351);
   clock_r_REG4_S2 : DFF_X1 port map( D => n1179, CK => clock, Q => dataout(15)
                           , QN => n1350);
   clock_r_REG3_S2 : DFF_X1 port map( D => n1178, CK => clock, Q => dataout(16)
                           , QN => n1349);
   clock_r_REG2_S2 : DFF_X1 port map( D => n1177, CK => clock, Q => dataout(17)
                           , QN => n1348);
   clock_r_REG1_S2 : DFF_X1 port map( D => n1176, CK => clock, Q => dataout(18)
                           , QN => n1347);
   clock_r_REG200_S4 : DFF_X1 port map( D => ram_5_0_port, CK => clock, Q => 
                           n814, QN => n1270);
   clock_r_REG191_S4 : DFF_X1 port map( D => ram_5_1_port, CK => clock, Q => 
                           n813, QN => n1269);
   clock_r_REG183_S4 : DFF_X1 port map( D => ram_5_2_port, CK => clock, Q => 
                           n812, QN => n1268);
   clock_r_REG174_S4 : DFF_X1 port map( D => ram_5_3_port, CK => clock, Q => 
                           n811, QN => n1267);
   clock_r_REG165_S4 : DFF_X1 port map( D => ram_5_4_port, CK => clock, Q => 
                           n810, QN => n1266);
   clock_r_REG157_S4 : DFF_X1 port map( D => ram_5_5_port, CK => clock, Q => 
                           n809, QN => n1265);
   clock_r_REG147_S4 : DFF_X1 port map( D => ram_5_6_port, CK => clock, Q => 
                           n808, QN => n1264);
   clock_r_REG138_S4 : DFF_X1 port map( D => ram_5_7_port, CK => clock, Q => 
                           n807, QN => n1263);
   clock_r_REG129_S4 : DFF_X1 port map( D => ram_5_8_port, CK => clock, Q => 
                           n806, QN => n1262);
   clock_r_REG120_S4 : DFF_X1 port map( D => ram_5_9_port, CK => clock, Q => 
                           n805, QN => n1261);
   clock_r_REG110_S4 : DFF_X1 port map( D => ram_5_10_port, CK => clock, Q => 
                           n804, QN => n1260);
   clock_r_REG100_S4 : DFF_X1 port map( D => ram_5_11_port, CK => clock, Q => 
                           n803, QN => n1259);
   clock_r_REG91_S4 : DFF_X1 port map( D => ram_5_12_port, CK => clock, Q => 
                           n802, QN => n1258);
   clock_r_REG81_S4 : DFF_X1 port map( D => ram_5_13_port, CK => clock, Q => 
                           n801, QN => n1257);
   clock_r_REG73_S4 : DFF_X1 port map( D => ram_5_14_port, CK => clock, Q => 
                           n800, QN => n1256);
   clock_r_REG64_S4 : DFF_X1 port map( D => ram_5_15_port, CK => clock, Q => 
                           n799, QN => n1255);
   clock_r_REG55_S4 : DFF_X1 port map( D => ram_5_16_port, CK => clock, Q => 
                           n798, QN => n1254);
   clock_r_REG46_S4 : DFF_X1 port map( D => ram_5_17_port, CK => clock, Q => 
                           n797, QN => n1253);
   clock_r_REG38_S4 : DFF_X1 port map( D => ram_5_18_port, CK => clock, Q => 
                           n796, QN => n1252);
   clock_r_REG199_S4 : DFF_X1 port map( D => ram_1_0_port, CK => clock, Q => 
                           n795, QN => n1251);
   clock_r_REG190_S4 : DFF_X1 port map( D => ram_1_1_port, CK => clock, Q => 
                           n794, QN => n1250);
   clock_r_REG182_S4 : DFF_X1 port map( D => ram_1_2_port, CK => clock, Q => 
                           n793, QN => n1249);
   clock_r_REG173_S4 : DFF_X1 port map( D => ram_1_3_port, CK => clock, Q => 
                           n792, QN => n1248);
   clock_r_REG164_S4 : DFF_X1 port map( D => ram_1_4_port, CK => clock, Q => 
                           n791, QN => n1247);
   clock_r_REG156_S4 : DFF_X1 port map( D => ram_1_5_port, CK => clock, Q => 
                           n790, QN => n1246);
   clock_r_REG146_S4 : DFF_X1 port map( D => ram_1_6_port, CK => clock, Q => 
                           n789, QN => n1245);
   clock_r_REG137_S4 : DFF_X1 port map( D => ram_1_7_port, CK => clock, Q => 
                           n788, QN => n1244);
   clock_r_REG128_S4 : DFF_X1 port map( D => ram_1_8_port, CK => clock, Q => 
                           n787, QN => n1243);
   clock_r_REG119_S4 : DFF_X1 port map( D => ram_1_9_port, CK => clock, Q => 
                           n786, QN => n1242);
   clock_r_REG109_S4 : DFF_X1 port map( D => ram_1_10_port, CK => clock, Q => 
                           n785, QN => n1241);
   clock_r_REG99_S4 : DFF_X1 port map( D => ram_1_11_port, CK => clock, Q => 
                           n784, QN => n1240);
   clock_r_REG90_S4 : DFF_X1 port map( D => ram_1_12_port, CK => clock, Q => 
                           n783, QN => n1239);
   clock_r_REG80_S4 : DFF_X1 port map( D => ram_1_13_port, CK => clock, Q => 
                           n782, QN => n1238);
   clock_r_REG72_S4 : DFF_X1 port map( D => ram_1_14_port, CK => clock, Q => 
                           n781, QN => n1237);
   clock_r_REG63_S4 : DFF_X1 port map( D => ram_1_15_port, CK => clock, Q => 
                           n780, QN => n1236);
   clock_r_REG54_S4 : DFF_X1 port map( D => ram_1_16_port, CK => clock, Q => 
                           n779, QN => n1235);
   clock_r_REG45_S4 : DFF_X1 port map( D => ram_1_17_port, CK => clock, Q => 
                           n778, QN => n1234);
   clock_r_REG37_S4 : DFF_X1 port map( D => ram_1_18_port, CK => clock, Q => 
                           n777, QN => n1233);
   clock_r_REG198_S4 : DFF_X1 port map( D => ram_7_0_port, CK => clock, Q => 
                           n776, QN => n1346);
   clock_r_REG189_S4 : DFF_X1 port map( D => ram_7_1_port, CK => clock, Q => 
                           n775, QN => n1345);
   clock_r_REG181_S4 : DFF_X1 port map( D => ram_7_2_port, CK => clock, Q => 
                           n774, QN => n1344);
   clock_r_REG172_S4 : DFF_X1 port map( D => ram_7_3_port, CK => clock, Q => 
                           n773, QN => n1343);
   clock_r_REG163_S4 : DFF_X1 port map( D => ram_7_4_port, CK => clock, Q => 
                           n772, QN => n1342);
   clock_r_REG155_S4 : DFF_X1 port map( D => ram_7_5_port, CK => clock, Q => 
                           n771, QN => n1341);
   clock_r_REG145_S4 : DFF_X1 port map( D => ram_7_6_port, CK => clock, Q => 
                           n770, QN => n1340);
   clock_r_REG136_S4 : DFF_X1 port map( D => ram_7_7_port, CK => clock, Q => 
                           n769, QN => n1339);
   clock_r_REG127_S4 : DFF_X1 port map( D => ram_7_8_port, CK => clock, Q => 
                           n768, QN => n1338);
   clock_r_REG118_S4 : DFF_X1 port map( D => ram_7_9_port, CK => clock, Q => 
                           n767, QN => n1337);
   clock_r_REG108_S4 : DFF_X1 port map( D => ram_7_10_port, CK => clock, Q => 
                           n766, QN => n1336);
   clock_r_REG98_S4 : DFF_X1 port map( D => ram_7_11_port, CK => clock, Q => 
                           n765, QN => n1335);
   clock_r_REG89_S4 : DFF_X1 port map( D => ram_7_12_port, CK => clock, Q => 
                           n764, QN => n1334);
   clock_r_REG79_S4 : DFF_X1 port map( D => ram_7_13_port, CK => clock, Q => 
                           n763, QN => n1333);
   clock_r_REG71_S4 : DFF_X1 port map( D => ram_7_14_port, CK => clock, Q => 
                           n762, QN => n1332);
   clock_r_REG62_S4 : DFF_X1 port map( D => ram_7_15_port, CK => clock, Q => 
                           n761, QN => n1331);
   clock_r_REG53_S4 : DFF_X1 port map( D => ram_7_16_port, CK => clock, Q => 
                           n760, QN => n1330);
   clock_r_REG44_S4 : DFF_X1 port map( D => ram_7_17_port, CK => clock, Q => 
                           n759, QN => n1329);
   clock_r_REG36_S4 : DFF_X1 port map( D => ram_7_18_port, CK => clock, Q => 
                           n758, QN => n1328);
   clock_r_REG197_S4 : DFF_X1 port map( D => ram_4_0_port, CK => clock, Q => 
                           n757, QN => n1232);
   clock_r_REG188_S4 : DFF_X1 port map( D => ram_4_1_port, CK => clock, Q => 
                           n756, QN => n1231);
   clock_r_REG180_S4 : DFF_X1 port map( D => ram_4_2_port, CK => clock, Q => 
                           n755, QN => n1230);
   clock_r_REG171_S4 : DFF_X1 port map( D => ram_4_3_port, CK => clock, Q => 
                           n754, QN => n1229);
   clock_r_REG196_S4 : DFF_X1 port map( D => ram_3_0_port, CK => clock, Q => 
                           n753, QN => n1327);
   clock_r_REG187_S4 : DFF_X1 port map( D => ram_3_1_port, CK => clock, Q => 
                           n752, QN => n1326);
   clock_r_REG179_S4 : DFF_X1 port map( D => ram_3_2_port, CK => clock, Q => 
                           n751, QN => n1325);
   clock_r_REG170_S4 : DFF_X1 port map( D => ram_3_3_port, CK => clock, Q => 
                           n750, QN => n1324);
   clock_r_REG162_S4 : DFF_X1 port map( D => ram_3_4_port, CK => clock, Q => 
                           n749, QN => n1323);
   clock_r_REG154_S4 : DFF_X1 port map( D => ram_3_5_port, CK => clock, Q => 
                           n748, QN => n1322);
   clock_r_REG144_S4 : DFF_X1 port map( D => ram_3_6_port, CK => clock, Q => 
                           n747, QN => n1321);
   clock_r_REG135_S4 : DFF_X1 port map( D => ram_3_7_port, CK => clock, Q => 
                           n746, QN => n1320);
   clock_r_REG126_S4 : DFF_X1 port map( D => ram_3_8_port, CK => clock, Q => 
                           n745, QN => n1319);
   clock_r_REG117_S4 : DFF_X1 port map( D => ram_3_9_port, CK => clock, Q => 
                           n744, QN => n1318);
   clock_r_REG107_S4 : DFF_X1 port map( D => ram_3_10_port, CK => clock, Q => 
                           n743, QN => n1317);
   clock_r_REG97_S4 : DFF_X1 port map( D => ram_3_11_port, CK => clock, Q => 
                           n742, QN => n1316);
   clock_r_REG88_S4 : DFF_X1 port map( D => ram_3_12_port, CK => clock, Q => 
                           n741, QN => n1315);
   clock_r_REG78_S4 : DFF_X1 port map( D => ram_3_13_port, CK => clock, Q => 
                           n740, QN => n1314);
   clock_r_REG70_S4 : DFF_X1 port map( D => ram_3_14_port, CK => clock, Q => 
                           n739, QN => n1313);
   clock_r_REG61_S4 : DFF_X1 port map( D => ram_3_15_port, CK => clock, Q => 
                           n738, QN => n1312);
   clock_r_REG52_S4 : DFF_X1 port map( D => ram_3_16_port, CK => clock, Q => 
                           n737, QN => n1311);
   clock_r_REG43_S4 : DFF_X1 port map( D => ram_3_17_port, CK => clock, Q => 
                           n736, QN => n1310);
   clock_r_REG35_S4 : DFF_X1 port map( D => ram_3_18_port, CK => clock, Q => 
                           n735, QN => n1309);
   clock_r_REG195_S4 : DFF_X1 port map( D => ram_2_0_port, CK => clock, Q => 
                           n734, QN => n1308);
   clock_r_REG186_S4 : DFF_X1 port map( D => ram_2_1_port, CK => clock, Q => 
                           n733, QN => n1307);
   clock_r_REG178_S4 : DFF_X1 port map( D => ram_2_2_port, CK => clock, Q => 
                           n732, QN => n1306);
   clock_r_REG169_S4 : DFF_X1 port map( D => ram_2_3_port, CK => clock, Q => 
                           n731, QN => n1305);
   clock_r_REG161_S4 : DFF_X1 port map( D => ram_2_4_port, CK => clock, Q => 
                           n730, QN => n1304);
   clock_r_REG153_S4 : DFF_X1 port map( D => ram_2_5_port, CK => clock, Q => 
                           n729, QN => n1303);
   clock_r_REG143_S4 : DFF_X1 port map( D => ram_2_6_port, CK => clock, Q => 
                           n728, QN => n1302);
   clock_r_REG134_S4 : DFF_X1 port map( D => ram_2_7_port, CK => clock, Q => 
                           n727, QN => n1301);
   clock_r_REG125_S4 : DFF_X1 port map( D => ram_2_8_port, CK => clock, Q => 
                           n726, QN => n1300);
   clock_r_REG116_S4 : DFF_X1 port map( D => ram_2_9_port, CK => clock, Q => 
                           n725, QN => n1299);
   clock_r_REG106_S4 : DFF_X1 port map( D => ram_2_10_port, CK => clock, Q => 
                           n724, QN => n1298);
   clock_r_REG96_S4 : DFF_X1 port map( D => ram_2_11_port, CK => clock, Q => 
                           n723, QN => n1297);
   clock_r_REG87_S4 : DFF_X1 port map( D => ram_2_12_port, CK => clock, Q => 
                           n722, QN => n1296);
   clock_r_REG77_S4 : DFF_X1 port map( D => ram_2_13_port, CK => clock, Q => 
                           n721, QN => n1295);
   clock_r_REG69_S4 : DFF_X1 port map( D => ram_2_14_port, CK => clock, Q => 
                           n720, QN => n1294);
   clock_r_REG60_S4 : DFF_X1 port map( D => ram_2_15_port, CK => clock, Q => 
                           n719, QN => n1293);
   clock_r_REG51_S4 : DFF_X1 port map( D => ram_2_16_port, CK => clock, Q => 
                           n718, QN => n1292);
   clock_r_REG42_S4 : DFF_X1 port map( D => ram_2_17_port, CK => clock, Q => 
                           n717, QN => n1291);
   clock_r_REG34_S4 : DFF_X1 port map( D => ram_2_18_port, CK => clock, Q => 
                           n716, QN => n1290);
   clock_r_REG194_S4 : DFF_X1 port map( D => ram_6_0_port, CK => clock, Q => 
                           n715, QN => n1289);
   clock_r_REG185_S4 : DFF_X1 port map( D => ram_6_1_port, CK => clock, Q => 
                           n714, QN => n1288);
   clock_r_REG177_S4 : DFF_X1 port map( D => ram_6_2_port, CK => clock, Q => 
                           n713, QN => n1287);
   clock_r_REG168_S4 : DFF_X1 port map( D => ram_6_3_port, CK => clock, Q => 
                           n712, QN => n1286);
   clock_r_REG160_S4 : DFF_X1 port map( D => ram_6_4_port, CK => clock, Q => 
                           n711, QN => n1285);
   clock_r_REG152_S4 : DFF_X1 port map( D => ram_6_5_port, CK => clock, Q => 
                           n710, QN => n1284);
   clock_r_REG142_S4 : DFF_X1 port map( D => ram_6_6_port, CK => clock, Q => 
                           n709, QN => n1283);
   clock_r_REG133_S4 : DFF_X1 port map( D => ram_6_7_port, CK => clock, Q => 
                           n708, QN => n1282);
   clock_r_REG124_S4 : DFF_X1 port map( D => ram_6_8_port, CK => clock, Q => 
                           n707, QN => n1281);
   clock_r_REG115_S4 : DFF_X1 port map( D => ram_6_9_port, CK => clock, Q => 
                           n706, QN => n1280);
   clock_r_REG105_S4 : DFF_X1 port map( D => ram_6_10_port, CK => clock, Q => 
                           n705, QN => n1279);
   clock_r_REG95_S4 : DFF_X1 port map( D => ram_6_11_port, CK => clock, Q => 
                           n704, QN => n1278);
   clock_r_REG86_S4 : DFF_X1 port map( D => ram_6_12_port, CK => clock, Q => 
                           n703, QN => n1277);
   clock_r_REG76_S4 : DFF_X1 port map( D => ram_6_13_port, CK => clock, Q => 
                           n702, QN => n1276);
   clock_r_REG68_S4 : DFF_X1 port map( D => ram_6_14_port, CK => clock, Q => 
                           n701, QN => n1275);
   clock_r_REG59_S4 : DFF_X1 port map( D => ram_6_15_port, CK => clock, Q => 
                           n700, QN => n1274);
   clock_r_REG50_S4 : DFF_X1 port map( D => ram_6_16_port, CK => clock, Q => 
                           n699, QN => n1273);
   clock_r_REG41_S4 : DFF_X1 port map( D => ram_6_17_port, CK => clock, Q => 
                           n698, QN => n1272);
   clock_r_REG33_S4 : DFF_X1 port map( D => ram_6_18_port, CK => clock, Q => 
                           n697, QN => n1271);
   clock_r_REG193_S4 : DFF_X1 port map( D => ram_0_0_port, CK => clock, Q => 
                           n696, QN => n1228);
   clock_r_REG184_S4 : DFF_X1 port map( D => ram_0_1_port, CK => clock, Q => 
                           n695, QN => n1227);
   clock_r_REG176_S4 : DFF_X1 port map( D => ram_0_2_port, CK => clock, Q => 
                           n694, QN => n1226);
   clock_r_REG167_S4 : DFF_X1 port map( D => ram_0_3_port, CK => clock, Q => 
                           n693, QN => n1225);
   clock_r_REG159_S4 : DFF_X1 port map( D => ram_0_4_port, CK => clock, Q => 
                           n692, QN => n1224);
   clock_r_REG151_S4 : DFF_X1 port map( D => ram_0_5_port, CK => clock, Q => 
                           n691, QN => n1223);
   clock_r_REG141_S4 : DFF_X1 port map( D => ram_0_6_port, CK => clock, Q => 
                           n690, QN => n1222);
   clock_r_REG132_S4 : DFF_X1 port map( D => ram_0_7_port, CK => clock, Q => 
                           n689, QN => n1221);
   clock_r_REG123_S4 : DFF_X1 port map( D => ram_0_8_port, CK => clock, Q => 
                           n688, QN => n1220);
   clock_r_REG114_S4 : DFF_X1 port map( D => ram_0_9_port, CK => clock, Q => 
                           n687, QN => n1219);
   clock_r_REG104_S4 : DFF_X1 port map( D => ram_0_10_port, CK => clock, Q => 
                           n686, QN => n1218);
   clock_r_REG94_S4 : DFF_X1 port map( D => ram_0_11_port, CK => clock, Q => 
                           n685, QN => n1217);
   clock_r_REG85_S4 : DFF_X1 port map( D => ram_0_12_port, CK => clock, Q => 
                           n684, QN => n1216);
   clock_r_REG75_S4 : DFF_X1 port map( D => ram_0_13_port, CK => clock, Q => 
                           n683, QN => n1215);
   clock_r_REG67_S4 : DFF_X1 port map( D => ram_0_14_port, CK => clock, Q => 
                           n682, QN => n1214);
   clock_r_REG58_S4 : DFF_X1 port map( D => ram_0_15_port, CK => clock, Q => 
                           n681, QN => n1213);
   clock_r_REG49_S4 : DFF_X1 port map( D => ram_0_16_port, CK => clock, Q => 
                           n680, QN => n1212);
   clock_r_REG40_S4 : DFF_X1 port map( D => ram_0_17_port, CK => clock, Q => 
                           n679, QN => n1211);
   clock_r_REG32_S4 : DFF_X1 port map( D => ram_0_18_port, CK => clock, Q => 
                           n678, QN => n1210);
   clock_r_REG158_S4 : DFF_X1 port map( D => ram_4_4_port, CK => clock, Q => 
                           n677, QN => n1209);
   clock_r_REG150_S4 : DFF_X1 port map( D => ram_4_5_port, CK => clock, Q => 
                           n676, QN => n1208);
   clock_r_REG140_S4 : DFF_X1 port map( D => ram_4_6_port, CK => clock, Q => 
                           n675, QN => n1207);
   clock_r_REG131_S4 : DFF_X1 port map( D => ram_4_7_port, CK => clock, Q => 
                           n674, QN => n1206);
   clock_r_REG122_S4 : DFF_X1 port map( D => ram_4_8_port, CK => clock, Q => 
                           n673, QN => n1205);
   clock_r_REG113_S4 : DFF_X1 port map( D => ram_4_9_port, CK => clock, Q => 
                           n672, QN => n1204);
   clock_r_REG103_S4 : DFF_X1 port map( D => ram_4_10_port, CK => clock, Q => 
                           n671, QN => n1203);
   clock_r_REG93_S4 : DFF_X1 port map( D => ram_4_11_port, CK => clock, Q => 
                           n670, QN => n1202);
   clock_r_REG84_S4 : DFF_X1 port map( D => ram_4_12_port, CK => clock, Q => 
                           n669, QN => n1201);
   clock_r_REG74_S4 : DFF_X1 port map( D => ram_4_13_port, CK => clock, Q => 
                           n668, QN => n1200);
   clock_r_REG66_S4 : DFF_X1 port map( D => ram_4_14_port, CK => clock, Q => 
                           n667, QN => n1199);
   clock_r_REG57_S4 : DFF_X1 port map( D => ram_4_15_port, CK => clock, Q => 
                           n666, QN => n1198);
   clock_r_REG48_S4 : DFF_X1 port map( D => ram_4_16_port, CK => clock, Q => 
                           n665, QN => n1197);
   clock_r_REG39_S4 : DFF_X1 port map( D => ram_4_17_port, CK => clock, Q => 
                           n664, QN => n1196);
   clock_r_REG31_S4 : DFF_X1 port map( D => ram_4_18_port, CK => clock, Q => 
                           n663, QN => n1195);
   U13 : NAND3_X1 port map( A1 => n466, A2 => n471, A3 => n29, ZN => n35_port);
   U23 : NAND3_X1 port map( A1 => n29, A2 => address(0), A3 => address(1), ZN 
                           => n28);
   U24 : NAND3_X1 port map( A1 => n29, A2 => n466, A3 => address(1), ZN => 
                           n31_port);
   U21 : NAND3_X1 port map( A1 => address(0), A2 => n471, A3 => n29, ZN => 
                           n33_port);

end SYN_ramR;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity counter_address_generator_1 is

   port( clock, reset, need_to_reset, enable, read_enable : in std_logic;  
         address : out std_logic_vector (7 downto 0));

end counter_address_generator_1;

architecture SYN_counter_address_generator of counter_address_generator_1 is

   component counter_address_generator_1_DW01_inc_0
      port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n61, n62, n63, n64, n65, n66, n67, n68, N10, N11, N12, N13, N14, N15,
      N16, N17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, 
      address_0_port, address_1_port, address_2_port, address_3_port, 
      address_4_port, address_5_port, address_6_port, address_7_port, n_1038, 
      n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045 : std_logic;

begin
   address <= ( address_7_port, address_6_port, address_5_port, address_4_port,
      address_3_port, address_2_port, address_1_port, address_0_port );
   
   U3 : NOR3_X2 port map( A1 => reset, A2 => need_to_reset, A3 => n26, ZN => 
                           n27);
   U4 : NOR3_X2 port map( A1 => reset, A2 => read_enable, A3 => enable, ZN => 
                           n26);
   U5 : INV_X1 port map( A => n28, ZN => n61);
   U6 : AOI22_X1 port map( A1 => N17, A2 => n27, B1 => address_7_port, B2 => 
                           n26, ZN => n28);
   U7 : INV_X1 port map( A => n25, ZN => n62);
   U8 : AOI22_X1 port map( A1 => N16, A2 => n27, B1 => address_6_port, B2 => 
                           n26, ZN => n25);
   U9 : INV_X1 port map( A => n24, ZN => n63);
   U10 : AOI22_X1 port map( A1 => N15, A2 => n27, B1 => address_5_port, B2 => 
                           n26, ZN => n24);
   U11 : INV_X1 port map( A => n23, ZN => n64);
   U12 : AOI22_X1 port map( A1 => N14, A2 => n27, B1 => address_4_port, B2 => 
                           n26, ZN => n23);
   U13 : INV_X1 port map( A => n22, ZN => n65);
   U14 : AOI22_X1 port map( A1 => N13, A2 => n27, B1 => address_3_port, B2 => 
                           n26, ZN => n22);
   U15 : INV_X1 port map( A => n21, ZN => n66);
   U16 : AOI22_X1 port map( A1 => N12, A2 => n27, B1 => address_2_port, B2 => 
                           n26, ZN => n21);
   U17 : INV_X1 port map( A => n20, ZN => n67);
   U18 : AOI22_X1 port map( A1 => N11, A2 => n27, B1 => address_1_port, B2 => 
                           n26, ZN => n20);
   U19 : INV_X1 port map( A => n19, ZN => n68);
   U20 : AOI22_X1 port map( A1 => N10, A2 => n27, B1 => address_0_port, B2 => 
                           n26, ZN => n19);
   clock_r_REG306_S2 : DFF_X1 port map( D => n61, CK => clock, Q => 
                           address_7_port, QN => n_1038);
   clock_r_REG305_S2 : DFF_X1 port map( D => n62, CK => clock, Q => 
                           address_6_port, QN => n_1039);
   clock_r_REG304_S2 : DFF_X1 port map( D => n63, CK => clock, Q => 
                           address_5_port, QN => n_1040);
   clock_r_REG303_S2 : DFF_X1 port map( D => n64, CK => clock, Q => 
                           address_4_port, QN => n_1041);
   clock_r_REG302_S2 : DFF_X1 port map( D => n65, CK => clock, Q => 
                           address_3_port, QN => n_1042);
   clock_r_REG301_S2 : DFF_X1 port map( D => n66, CK => clock, Q => 
                           address_2_port, QN => n_1043);
   clock_r_REG300_S2 : DFF_X1 port map( D => n67, CK => clock, Q => 
                           address_1_port, QN => n_1044);
   clock_r_REG20_S2 : DFF_X1 port map( D => n68, CK => clock, Q => 
                           address_0_port, QN => n_1045);
   add_38 : counter_address_generator_1_DW01_inc_0 port map( A(7) => 
                           address_7_port, A(6) => address_6_port, A(5) => 
                           address_5_port, A(4) => address_4_port, A(3) => 
                           address_3_port, A(2) => address_2_port, A(1) => 
                           address_1_port, A(0) => address_0_port, SUM(7) => 
                           N17, SUM(6) => N16, SUM(5) => N15, SUM(4) => N14, 
                           SUM(3) => N13, SUM(2) => N12, SUM(1) => N11, SUM(0) 
                           => N10);

end SYN_counter_address_generator;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity fsm is

   port( clock, reset : in std_logic;  ramA_address : in std_logic_vector (4 
         downto 0);  ramR_address, rom_address : in std_logic_vector (7 downto 
         0);  hold_me : in std_logic;  ramR_readEnable, ramA_writeEnable, 
         ramA_readEnable, ramR_writeEnable, rom_enable, 
         counterAddressGen_H_enable, counterAddressGen_R_enable, 
         counterAddressGen_A_restart, counterAddressGen_R_restart, 
         counterAddressGen_H_restart, mac_clean, reset_fsm, hold_prev : out 
         std_logic);

end fsm;

architecture SYN_fsm of fsm is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal ramA_readEnable_port, status_1_port, status_0_port, n20, n22, n26, 
      n27, n31, n32, n33, n34, n35, n37, counterAddressGen_A_restart_port, n2, 
      n4, n5, n6, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n21, n24, 
      n25, n28, n30, n36, n38, n39, n40, n41, n43, n44, n48, n49, n50, n57, n58
      , n59 : std_logic;

begin
   ramA_readEnable <= ramA_readEnable_port;
   ramR_writeEnable <= n5;
   rom_enable <= ramA_readEnable_port;
   counterAddressGen_A_restart <= counterAddressGen_A_restart_port;
   counterAddressGen_R_restart <= counterAddressGen_A_restart_port;
   counterAddressGen_H_restart <= counterAddressGen_A_restart_port;
   reset_fsm <= counterAddressGen_A_restart_port;
   
   U46 : NAND3_X1 port map( A1 => rom_address(1), A2 => n41, A3 => n33, ZN => 
                           n32);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n38, ZN => 
                           counterAddressGen_A_restart_port);
   U5 : INV_X1 port map( A => n26, ZN => n40);
   U7 : OR2_X1 port map( A1 => n58, A2 => n59, ZN => n4);
   U8 : NAND2_X1 port map( A1 => n4, A2 => n38, ZN => n43);
   U9 : OR2_X1 port map( A1 => n28, A2 => n58, ZN => n30);
   U10 : NOR2_X1 port map( A1 => n28, A2 => n58, ZN => n5);
   U11 : INV_X1 port map( A => n34, ZN => n41);
   U12 : NOR3_X1 port map( A1 => rom_address(5), A2 => rom_address(4), A3 => 
                           rom_address(3), ZN => n34);
   U13 : NOR3_X1 port map( A1 => ramA_address(1), A2 => ramA_address(0), A3 => 
                           n37, ZN => n27);
   U14 : OR3_X1 port map( A1 => ramA_address(4), A2 => ramA_address(3), A3 => 
                           ramA_address(2), ZN => n37);
   U15 : AOI21_X1 port map( B1 => n26, B2 => n32, A => rom_address(0), ZN => 
                           n31);
   U16 : NOR3_X1 port map( A1 => rom_address(2), A2 => rom_address(7), A3 => 
                           rom_address(6), ZN => n33);
   U17 : NAND4_X1 port map( A1 => rom_address(6), A2 => rom_address(1), A3 => 
                           n35, A4 => n34, ZN => n26);
   U18 : NOR2_X1 port map( A1 => rom_address(7), A2 => rom_address(2), ZN => 
                           n35);
   U19 : AND3_X1 port map( A1 => ramR_address(0), A2 => n44, A3 => 
                           ramR_address(1), ZN => n20);
   U20 : INV_X1 port map( A => hold_me, ZN => n44);
   U21 : AND2_X1 port map( A1 => n40, A2 => rom_address(0), ZN => n6);
   U22 : OR2_X1 port map( A1 => ramR_address(5), A2 => ramR_address(4), ZN => 
                           n22);
   U25 : AOI22_X1 port map( A1 => n27, A2 => n58, B1 => n31, B2 => n57, ZN => 
                           n11);
   U26 : NAND3_X1 port map( A1 => hold_me, A2 => n49, A3 => n58, ZN => n10);
   U27 : NAND3_X1 port map( A1 => n58, A2 => n57, A3 => n59, ZN => n38);
   U28 : OAI211_X1 port map( C1 => n49, C2 => n11, A => n10, B => n38, ZN => 
                           n13);
   U29 : INV_X1 port map( A => reset, ZN => n12);
   U30 : AND2_X1 port map( A1 => n13, A2 => n12, ZN => status_0_port);
   U31 : NAND2_X1 port map( A1 => n59, A2 => n50, ZN => n28);
   U33 : NAND4_X1 port map( A1 => ramR_address(3), A2 => n20, A3 => 
                           ramR_address(2), A4 => n57, ZN => n14);
   U34 : NOR4_X1 port map( A1 => n14, A2 => n22, A3 => ramR_address(7), A4 => 
                           ramR_address(6), ZN => n15);
   U35 : NOR3_X1 port map( A1 => n15, A2 => n48, A3 => n59, ZN => n16);
   U36 : AOI21_X1 port map( B1 => n6, B2 => n5, A => n16, ZN => n17);
   U37 : NOR2_X1 port map( A1 => reset, A2 => n17, ZN => n2);
   U38 : INV_X1 port map( A => n27, ZN => n18);
   U39 : NAND3_X1 port map( A1 => n58, A2 => n18, A3 => n50, ZN => n19);
   U40 : OAI21_X1 port map( B1 => n58, B2 => n6, A => n19, ZN => n21);
   U41 : NAND2_X1 port map( A1 => n59, A2 => n21, ZN => n24);
   U42 : NAND3_X1 port map( A1 => n48, A2 => n57, A3 => n59, ZN => n25);
   U43 : AOI21_X1 port map( B1 => n24, B2 => n25, A => reset, ZN => 
                           status_1_port);
   U44 : NAND2_X1 port map( A1 => n25, A2 => n30, ZN => ramA_readEnable_port);
   U45 : INV_X1 port map( A => ramA_readEnable_port, ZN => n36);
   U47 : NAND2_X1 port map( A1 => n28, A2 => n36, ZN => hold_prev);
   U48 : NAND3_X1 port map( A1 => n57, A2 => n49, A3 => n58, ZN => n39);
   U49 : NAND3_X1 port map( A1 => n30, A2 => n38, A3 => n39, ZN => 
                           counterAddressGen_R_enable);
   U50 : NAND2_X1 port map( A1 => n38, A2 => n36, ZN => 
                           counterAddressGen_H_enable);
   U51 : NAND3_X1 port map( A1 => n48, A2 => n38, A3 => n59, ZN => 
                           ramA_writeEnable);
   U52 : INV_X1 port map( A => n39, ZN => ramR_readEnable);
   clock_r_REG23_S2 : DFF_X1 port map( D => status_0_port, CK => clock, Q => 
                           n50, QN => n57);
   clock_r_REG21_S1 : DFF_X1 port map( D => n2, CK => clock, Q => n49, QN => 
                           n59);
   clock_r_REG0_S1 : DFF_X1 port map( D => status_1_port, CK => clock, Q => n48
                           , QN => n58);
   U4 : OR2_X1 port map( A1 => n43, A2 => n5, ZN => mac_clean);

end SYN_fsm;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity mac is

   port( clock : in std_logic;  ai, xi : in std_logic_vector (7 downto 0);  
         mac_clean : in std_logic;  data_out : out std_logic_vector (18 downto 
         0));

end mac;

architecture SYN_multiplier_accumulator_implentation of mac is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component mac_DW_mult_tc_1
      port( a, b : in std_logic_vector (7 downto 0);  product : out 
            std_logic_vector (15 downto 0);  clock : in std_logic);
   end component;
   
   component mac_DW01_add_1
      port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (18 downto 0);  CO : out std_logic;  clock :
            in std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n164, n165, n166, n167, n168, n169, n170, data_out_18_port, 
      data_out_17_port, data_out_16_port, data_out_15_port, data_out_14_port, 
      data_out_13_port, data_out_12_port, data_out_11_port, data_out_10_port, 
      data_out_9_port, data_out_8_port, n147, n148, n149, n150, n151, n152, 
      n153, n154, mult_out_14_port, mult_out_13_port, mult_out_12_port, 
      mult_out_11_port, mult_out_10_port, mult_out_9_port, mult_out_8_port, 
      mult_out_7_port, mult_out_6_port, mult_out_5_port, mult_out_4_port, 
      mult_out_3_port, mult_out_2_port, mult_out_1_port, mult_out_0_port, 
      mult_out_reg_15_port, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, 
      N30, N31, N32, N33, N34, N35, N36, N37, N38, n2, n3, n4, n5, n6, n7, n8, 
      n9, n10, n11, n12, n13, data_out_0_port, data_out_1_port, data_out_2_port
      , data_out_3_port, data_out_4_port, data_out_5_port, data_out_6_port, 
      data_out_7_port, n38_port, n156, n157, n158, n159, n160, n161, n162, n163
      , n_1053, n_1054, n_1055 : std_logic;

begin
   data_out <= ( data_out_18_port, data_out_17_port, data_out_16_port, 
      data_out_15_port, data_out_14_port, data_out_13_port, data_out_12_port, 
      data_out_11_port, data_out_10_port, data_out_9_port, data_out_8_port, 
      data_out_7_port, data_out_6_port, data_out_5_port, data_out_4_port, 
      data_out_3_port, data_out_2_port, data_out_1_port, data_out_0_port );
   
   n2 <= '0';
   U3 : NOR2_X1 port map( A1 => mac_clean, A2 => n3, ZN => N38);
   U5 : NOR2_X1 port map( A1 => mac_clean, A2 => n4, ZN => N37);
   U6 : NOR2_X1 port map( A1 => mac_clean, A2 => n5, ZN => N36);
   U7 : NOR2_X1 port map( A1 => mac_clean, A2 => n6, ZN => N35);
   U8 : NOR2_X1 port map( A1 => mac_clean, A2 => n7, ZN => N34);
   U9 : NOR2_X1 port map( A1 => mac_clean, A2 => n8, ZN => N33);
   U10 : NOR2_X1 port map( A1 => mac_clean, A2 => n9, ZN => N32);
   U11 : NOR2_X1 port map( A1 => mac_clean, A2 => n10, ZN => N31);
   U12 : NOR2_X1 port map( A1 => mac_clean, A2 => n11, ZN => N30);
   U13 : NOR2_X1 port map( A1 => mac_clean, A2 => n12, ZN => N29);
   U14 : NOR2_X1 port map( A1 => mac_clean, A2 => n13, ZN => N28);
   U15 : NOR2_X1 port map( A1 => mac_clean, A2 => n163, ZN => N27);
   U16 : NOR2_X1 port map( A1 => mac_clean, A2 => n162, ZN => N26);
   U17 : NOR2_X1 port map( A1 => mac_clean, A2 => n161, ZN => N25);
   U18 : NOR2_X1 port map( A1 => mac_clean, A2 => n160, ZN => N24);
   U19 : NOR2_X1 port map( A1 => mac_clean, A2 => n159, ZN => N23);
   U20 : NOR2_X1 port map( A1 => mac_clean, A2 => n158, ZN => N22);
   U21 : NOR2_X1 port map( A1 => mac_clean, A2 => n157, ZN => N21);
   U22 : NOR2_X1 port map( A1 => mac_clean, A2 => n156, ZN => N20);
   clock_r_REG130_S3 : DFF_X1 port map( D => n147, CK => clock, Q => 
                           data_out_7_port, QN => n163);
   clock_r_REG139_S3 : DFF_X1 port map( D => n148, CK => clock, Q => 
                           data_out_6_port, QN => n162);
   clock_r_REG149_S3 : DFF_X1 port map( D => n149, CK => clock, Q => 
                           data_out_5_port, QN => n161);
   clock_r_REG148_S3 : DFF_X1 port map( D => n150, CK => clock, Q => 
                           data_out_4_port, QN => n160);
   clock_r_REG166_S3 : DFF_X1 port map( D => n151, CK => clock, Q => 
                           data_out_3_port, QN => n159);
   clock_r_REG175_S3 : DFF_X1 port map( D => n152, CK => clock, Q => 
                           data_out_2_port, QN => n158);
   clock_r_REG24_S3 : DFF_X1 port map( D => n153, CK => clock, Q => 
                           data_out_1_port, QN => n157);
   clock_r_REG192_S3 : DFF_X1 port map( D => n154, CK => clock, Q => 
                           data_out_0_port, QN => n156);
   U31 : INV_X1 port map( A => data_out_8_port, ZN => n13);
   U32 : INV_X1 port map( A => data_out_9_port, ZN => n12);
   U33 : INV_X1 port map( A => data_out_10_port, ZN => n11);
   U34 : INV_X1 port map( A => data_out_11_port, ZN => n10);
   U35 : INV_X1 port map( A => data_out_12_port, ZN => n9);
   U36 : INV_X1 port map( A => data_out_13_port, ZN => n8);
   U37 : INV_X1 port map( A => data_out_14_port, ZN => n7);
   U38 : INV_X1 port map( A => data_out_15_port, ZN => n6);
   U39 : INV_X1 port map( A => data_out_16_port, ZN => n5);
   U41 : INV_X1 port map( A => data_out_18_port, ZN => n3);
   add_37_aco : mac_DW01_add_1 port map( A(18) => N38, A(17) => N37, A(16) => 
                           N36, A(15) => N35, A(14) => N34, A(13) => N33, A(12)
                           => N32, A(11) => N31, A(10) => N30, A(9) => N29, 
                           A(8) => N28, A(7) => N27, A(6) => N26, A(5) => N25, 
                           A(4) => N24, A(3) => N23, A(2) => N22, A(1) => N21, 
                           A(0) => N20, B(18) => n38_port, B(17) => n38_port, 
                           B(16) => n38_port, B(15) => n38_port, B(14) => 
                           mult_out_14_port, B(13) => mult_out_13_port, B(12) 
                           => mult_out_12_port, B(11) => mult_out_11_port, 
                           B(10) => mult_out_10_port, B(9) => mult_out_9_port, 
                           B(8) => mult_out_8_port, B(7) => mult_out_7_port, 
                           B(6) => mult_out_6_port, B(5) => mult_out_5_port, 
                           B(4) => mult_out_4_port, B(3) => mult_out_3_port, 
                           B(2) => mult_out_2_port, B(1) => mult_out_1_port, 
                           B(0) => mult_out_0_port, CI => n2, SUM(18) => 
                           data_out_18_port, SUM(17) => data_out_17_port, 
                           SUM(16) => data_out_16_port, SUM(15) => 
                           data_out_15_port, SUM(14) => data_out_14_port, 
                           SUM(13) => data_out_13_port, SUM(12) => 
                           data_out_12_port, SUM(11) => data_out_11_port, 
                           SUM(10) => data_out_10_port, SUM(9) => 
                           data_out_9_port, SUM(8) => data_out_8_port, SUM(7) 
                           => n147, SUM(6) => n148, SUM(5) => n149, SUM(4) => 
                           n150, SUM(3) => n151, SUM(2) => n152, SUM(1) => n153
                           , SUM(0) => n154, CO => n_1053, clock => clock);
   mult_32 : mac_DW_mult_tc_1 port map( a(7) => ai(7), a(6) => ai(6), a(5) => 
                           ai(5), a(4) => ai(4), a(3) => ai(3), a(2) => ai(2), 
                           a(1) => ai(1), a(0) => ai(0), b(7) => xi(7), b(6) =>
                           n164, b(5) => n165, b(4) => n166, b(3) => n167, b(2)
                           => n168, b(1) => n169, b(0) => n170, product(15) => 
                           mult_out_reg_15_port, product(14) => 
                           mult_out_14_port, product(13) => mult_out_13_port, 
                           product(12) => mult_out_12_port, product(11) => 
                           mult_out_11_port, product(10) => mult_out_10_port, 
                           product(9) => mult_out_9_port, product(8) => 
                           mult_out_8_port, product(7) => mult_out_7_port, 
                           product(6) => mult_out_6_port, product(5) => 
                           mult_out_5_port, product(4) => mult_out_4_port, 
                           product(3) => mult_out_3_port, product(2) => 
                           mult_out_2_port, product(1) => mult_out_1_port, 
                           product(0) => n_1054, clock => clock);
   clock_r_REG206_S6 : DFF_X1 port map( D => mult_out_reg_15_port, CK => clock,
                           Q => n38_port, QN => n_1055);
   U23 : INV_X1 port map( A => data_out_17_port, ZN => n4);
   mult_out_0_port <= '0';
   n170 <= '0';
   n169 <= '0';
   n168 <= '0';
   n167 <= '0';
   n166 <= '0';
   n165 <= '0';
   n164 <= '0';

end SYN_multiplier_accumulator_implentation;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity rom is

   port( clock : in std_logic;  address : in std_logic_vector (5 downto 0);  
         rom_enable : in std_logic;  data : out std_logic_vector (7 downto 0));

end rom;

architecture SYN_rom of rom is

signal n_1063, n_1064, n_1065, n_1066, n_1067, n_1068, n_1069 : std_logic;

begin
   data <= ( rom_enable, n_1063, n_1064, n_1065, n_1066, n_1067, n_1068, n_1069
      );

end SYN_rom;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity counter_address_generator_2 is

   port( clock, reset, need_to_reset, enable, read_enable : in std_logic;  
         address : out std_logic_vector (7 downto 0));

end counter_address_generator_2;

architecture SYN_counter_address_generator of counter_address_generator_2 is

   component counter_address_generator_2_DW01_inc_0
      port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n61, n62, n63, n64, n65, n66, n67, n68, N10, N11, N12, N13, N14, N15,
      N16, N17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, 
      address_0_port, address_1_port, address_2_port, address_3_port, 
      address_4_port, address_5_port, address_6_port, address_7_port, n_1070, 
      n_1071, n_1072, n_1073, n_1074, n_1075, n_1076, n_1077 : std_logic;

begin
   address <= ( address_7_port, address_6_port, address_5_port, address_4_port,
      address_3_port, address_2_port, address_1_port, address_0_port );
   
   U3 : NOR3_X2 port map( A1 => reset, A2 => need_to_reset, A3 => n26, ZN => 
                           n27);
   U4 : NOR3_X2 port map( A1 => reset, A2 => read_enable, A3 => enable, ZN => 
                           n26);
   U5 : INV_X1 port map( A => n28, ZN => n61);
   U6 : AOI22_X1 port map( A1 => N17, A2 => n27, B1 => address_7_port, B2 => 
                           n26, ZN => n28);
   U7 : INV_X1 port map( A => n25, ZN => n62);
   U8 : AOI22_X1 port map( A1 => N16, A2 => n27, B1 => address_6_port, B2 => 
                           n26, ZN => n25);
   U9 : INV_X1 port map( A => n24, ZN => n63);
   U10 : AOI22_X1 port map( A1 => N15, A2 => n27, B1 => address_5_port, B2 => 
                           n26, ZN => n24);
   U11 : INV_X1 port map( A => n23, ZN => n64);
   U12 : AOI22_X1 port map( A1 => N14, A2 => n27, B1 => address_4_port, B2 => 
                           n26, ZN => n23);
   U13 : INV_X1 port map( A => n22, ZN => n65);
   U14 : AOI22_X1 port map( A1 => N13, A2 => n27, B1 => address_3_port, B2 => 
                           n26, ZN => n22);
   U15 : INV_X1 port map( A => n21, ZN => n66);
   U16 : AOI22_X1 port map( A1 => N12, A2 => n27, B1 => address_2_port, B2 => 
                           n26, ZN => n21);
   U17 : INV_X1 port map( A => n20, ZN => n67);
   U18 : AOI22_X1 port map( A1 => N11, A2 => n27, B1 => address_1_port, B2 => 
                           n26, ZN => n20);
   U19 : INV_X1 port map( A => n19, ZN => n68);
   U20 : AOI22_X1 port map( A1 => N10, A2 => n27, B1 => address_0_port, B2 => 
                           n26, ZN => n19);
   clock_r_REG313_S2 : DFF_X1 port map( D => n61, CK => clock, Q => 
                           address_7_port, QN => n_1070);
   clock_r_REG312_S2 : DFF_X1 port map( D => n62, CK => clock, Q => 
                           address_6_port, QN => n_1071);
   clock_r_REG311_S2 : DFF_X1 port map( D => n63, CK => clock, Q => 
                           address_5_port, QN => n_1072);
   clock_r_REG310_S2 : DFF_X1 port map( D => n64, CK => clock, Q => 
                           address_4_port, QN => n_1073);
   clock_r_REG309_S2 : DFF_X1 port map( D => n65, CK => clock, Q => 
                           address_3_port, QN => n_1074);
   clock_r_REG308_S2 : DFF_X1 port map( D => n66, CK => clock, Q => 
                           address_2_port, QN => n_1075);
   clock_r_REG307_S2 : DFF_X1 port map( D => n67, CK => clock, Q => 
                           address_1_port, QN => n_1076);
   clock_r_REG22_S2 : DFF_X1 port map( D => n68, CK => clock, Q => 
                           address_0_port, QN => n_1077);
   add_38 : counter_address_generator_2_DW01_inc_0 port map( A(7) => 
                           address_7_port, A(6) => address_6_port, A(5) => 
                           address_5_port, A(4) => address_4_port, A(3) => 
                           address_3_port, A(2) => address_2_port, A(1) => 
                           address_1_port, A(0) => address_0_port, SUM(7) => 
                           N17, SUM(6) => N16, SUM(5) => N15, SUM(4) => N14, 
                           SUM(3) => N13, SUM(2) => N12, SUM(1) => N11, SUM(0) 
                           => N10);

end SYN_counter_address_generator;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity ramA is

   port( clock, write_enable, read_enable : in std_logic;  address : in 
         std_logic_vector (2 downto 0);  datain : in std_logic_vector (7 downto
         0);  dataout : out std_logic_vector (7 downto 0));

end ramA;

architecture SYN_ramA of ramA is

   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n511, n512, n513, n514, n222, n515, n516, n517, ram_0_7_port, 
      ram_0_6_port, ram_0_5_port, ram_0_4_port, ram_0_3_port, ram_0_2_port, 
      ram_0_1_port, ram_0_0_port, ram_1_7_port, ram_1_6_port, ram_1_5_port, 
      ram_1_4_port, ram_1_3_port, ram_1_2_port, ram_1_1_port, ram_1_0_port, 
      ram_2_7_port, ram_2_6_port, ram_2_5_port, ram_2_4_port, ram_2_3_port, 
      ram_2_2_port, ram_2_1_port, ram_2_0_port, ram_3_7_port, ram_3_6_port, 
      ram_3_5_port, ram_3_4_port, ram_3_3_port, ram_3_2_port, ram_3_1_port, 
      ram_3_0_port, ram_4_7_port, ram_4_6_port, ram_4_5_port, ram_4_4_port, 
      ram_4_3_port, ram_4_2_port, ram_4_1_port, ram_4_0_port, ram_5_7_port, 
      ram_5_6_port, ram_5_5_port, ram_5_4_port, ram_5_3_port, ram_5_2_port, 
      ram_5_1_port, ram_5_0_port, ram_6_7_port, ram_6_6_port, ram_6_5_port, 
      ram_6_4_port, ram_6_3_port, ram_6_2_port, ram_6_1_port, ram_6_0_port, 
      ram_7_7_port, ram_7_6_port, ram_7_5_port, ram_7_4_port, ram_7_3_port, 
      ram_7_2_port, ram_7_1_port, ram_7_0_port, N33, N34, N35, N36, N37, N38, 
      N39, N40, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33_port, n34_port, n35_port, n36_port, n37_port, n38_port, n39_port, 
      n40_port, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53
      , n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, 
      n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n100, n101, n102
      , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n94, n95, n96, n97, n98, n99, n167, n168, n169, n170, n171
      , n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196, n199, n200, n201, n202, n203, n212, n213, n214, n215, n216, n217, 
      n218, n219, n220, n221, n295, n296, n297, n298, n299, n300, n301, n302, 
      n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, 
      n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, 
      n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, 
      n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, 
      n351, n352, n353, n354, n355, n356, n357, n358, dataout_4_port, n360, 
      dataout_2_port, dataout_1_port, dataout_0_port, dataout_5_port, 
      dataout_7_port, dataout_6_port, n_1078, n_1079, n_1080, n_1081, n_1082, 
      n_1083, n_1084, n_1085, n_1086, n_1087, n_1088, n_1089, n_1090, n_1091, 
      n_1092, n_1093, n_1094, n_1095, n_1096, n_1097, n_1098, n_1099, n_1100, 
      n_1101, n_1102, n_1103, n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, 
      n_1110, n_1111, n_1112, n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, 
      n_1119, n_1120, n_1121, n_1122, n_1123, n_1124, n_1125, n_1126, n_1127, 
      n_1128, n_1129, n_1130, n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, 
      n_1137, n_1138, n_1139, n_1140, n_1141, n_1142, n_1143, n_1144, n_1145, 
      n_1146, n_1147, n_1148, n_1149 : std_logic;

begin
   dataout <= ( dataout_7_port, dataout_6_port, dataout_5_port, dataout_4_port,
      n360, dataout_2_port, dataout_1_port, dataout_0_port );
   
   U161 : NAND3_X1 port map( A1 => address(0), A2 => n29, A3 => address(1), ZN 
                           => n20);
   U163 : NAND3_X1 port map( A1 => n29, A2 => n213, A3 => address(0), ZN => 
                           n39_port);
   U167 : NAND3_X1 port map( A1 => address(0), A2 => n213, A3 => n66, ZN => n76
                           );
   U3 : NOR2_X2 port map( A1 => n179, A2 => address(1), ZN => n176);
   U4 : NOR2_X2 port map( A1 => address(1), A2 => address(2), ZN => n173);
   U5 : NOR2_X1 port map( A1 => read_enable, A2 => write_enable, ZN => n1);
   U6 : NOR2_X2 port map( A1 => n179, A2 => n213, ZN => n175);
   U7 : NAND3_X1 port map( A1 => n180, A2 => n213, A3 => n66, ZN => n85);
   U8 : NAND3_X1 port map( A1 => n180, A2 => n213, A3 => n29, ZN => n48);
   U9 : NAND3_X1 port map( A1 => address(1), A2 => address(0), A3 => n66, ZN =>
                           n57);
   U10 : NOR2_X1 port map( A1 => n212, A2 => address(2), ZN => n66);
   U11 : INV_X1 port map( A => write_enable, ZN => n212);
   U12 : NAND3_X1 port map( A1 => address(1), A2 => n180, A3 => n66, ZN => n67)
                           ;
   U13 : NAND3_X1 port map( A1 => n29, A2 => n180, A3 => address(1), ZN => n30)
                           ;
   U14 : NOR2_X2 port map( A1 => n213, A2 => address(2), ZN => n172);
   U15 : INV_X1 port map( A => n174, ZN => n196);
   U16 : INV_X1 port map( A => n97, ZN => n194);
   U17 : INV_X1 port map( A => n7, ZN => n190);
   U18 : INV_X1 port map( A => n3, ZN => n189);
   U19 : INV_X1 port map( A => n11, ZN => n191);
   U20 : INV_X1 port map( A => n15, ZN => n192);
   U21 : INV_X1 port map( A => n19, ZN => n193);
   U22 : INV_X1 port map( A => n168, ZN => n195);
   U23 : OAI21_X1 port map( B1 => n20, B2 => n221, A => n21, ZN => ram_7_0_port
                           );
   U24 : NAND2_X1 port map( A1 => n358, A2 => n20, ZN => n21);
   U25 : OAI21_X1 port map( B1 => n20, B2 => n220, A => n22, ZN => ram_7_1_port
                           );
   U26 : NAND2_X1 port map( A1 => n357, A2 => n20, ZN => n22);
   U27 : OAI21_X1 port map( B1 => n20, B2 => n219, A => n23, ZN => ram_7_2_port
                           );
   U28 : NAND2_X1 port map( A1 => n356, A2 => n20, ZN => n23);
   U29 : OAI21_X1 port map( B1 => n20, B2 => n218, A => n24, ZN => ram_7_3_port
                           );
   U30 : NAND2_X1 port map( A1 => n355, A2 => n20, ZN => n24);
   U31 : OAI21_X1 port map( B1 => n20, B2 => n217, A => n25, ZN => ram_7_4_port
                           );
   U32 : NAND2_X1 port map( A1 => n354, A2 => n20, ZN => n25);
   U33 : OAI21_X1 port map( B1 => n20, B2 => n216, A => n26, ZN => ram_7_5_port
                           );
   U34 : NAND2_X1 port map( A1 => n353, A2 => n20, ZN => n26);
   U35 : OAI21_X1 port map( B1 => n20, B2 => n215, A => n27, ZN => ram_7_6_port
                           );
   U36 : NAND2_X1 port map( A1 => n352, A2 => n20, ZN => n27);
   U37 : OAI21_X1 port map( B1 => n20, B2 => n214, A => n28, ZN => ram_7_7_port
                           );
   U38 : NAND2_X1 port map( A1 => n351, A2 => n20, ZN => n28);
   U39 : OAI21_X1 port map( B1 => n221, B2 => n76, A => n77, ZN => ram_1_0_port
                           );
   U40 : NAND2_X1 port map( A1 => n350, A2 => n76, ZN => n77);
   U41 : OAI21_X1 port map( B1 => n220, B2 => n76, A => n78, ZN => ram_1_1_port
                           );
   U42 : NAND2_X1 port map( A1 => n349, A2 => n76, ZN => n78);
   U43 : OAI21_X1 port map( B1 => n219, B2 => n76, A => n79, ZN => ram_1_2_port
                           );
   U44 : NAND2_X1 port map( A1 => n348, A2 => n76, ZN => n79);
   U45 : OAI21_X1 port map( B1 => n218, B2 => n76, A => n80, ZN => ram_1_3_port
                           );
   U46 : NAND2_X1 port map( A1 => n347, A2 => n76, ZN => n80);
   U47 : OAI21_X1 port map( B1 => n217, B2 => n76, A => n81, ZN => ram_1_4_port
                           );
   U48 : NAND2_X1 port map( A1 => n346, A2 => n76, ZN => n81);
   U49 : OAI21_X1 port map( B1 => n216, B2 => n76, A => n82, ZN => ram_1_5_port
                           );
   U50 : NAND2_X1 port map( A1 => n345, A2 => n76, ZN => n82);
   U51 : OAI21_X1 port map( B1 => n215, B2 => n76, A => n83, ZN => ram_1_6_port
                           );
   U52 : NAND2_X1 port map( A1 => n344, A2 => n76, ZN => n83);
   U53 : OAI21_X1 port map( B1 => n214, B2 => n76, A => n84, ZN => ram_1_7_port
                           );
   U54 : NAND2_X1 port map( A1 => n343, A2 => n76, ZN => n84);
   U55 : OAI21_X1 port map( B1 => n221, B2 => n39_port, A => n40_port, ZN => 
                           ram_5_0_port);
   U56 : NAND2_X1 port map( A1 => n342, A2 => n39_port, ZN => n40_port);
   U57 : OAI21_X1 port map( B1 => n220, B2 => n39_port, A => n41, ZN => 
                           ram_5_1_port);
   U58 : NAND2_X1 port map( A1 => n341, A2 => n39_port, ZN => n41);
   U59 : OAI21_X1 port map( B1 => n219, B2 => n39_port, A => n42, ZN => 
                           ram_5_2_port);
   U60 : NAND2_X1 port map( A1 => n340, A2 => n39_port, ZN => n42);
   U61 : OAI21_X1 port map( B1 => n218, B2 => n39_port, A => n43, ZN => 
                           ram_5_3_port);
   U62 : NAND2_X1 port map( A1 => n339, A2 => n39_port, ZN => n43);
   U63 : OAI21_X1 port map( B1 => n217, B2 => n39_port, A => n44, ZN => 
                           ram_5_4_port);
   U64 : NAND2_X1 port map( A1 => n338, A2 => n39_port, ZN => n44);
   U65 : OAI21_X1 port map( B1 => n216, B2 => n39_port, A => n45, ZN => 
                           ram_5_5_port);
   U66 : NAND2_X1 port map( A1 => n337, A2 => n39_port, ZN => n45);
   U67 : OAI21_X1 port map( B1 => n215, B2 => n39_port, A => n46, ZN => 
                           ram_5_6_port);
   U68 : NAND2_X1 port map( A1 => n336, A2 => n39_port, ZN => n46);
   U69 : OAI21_X1 port map( B1 => n214, B2 => n39_port, A => n47, ZN => 
                           ram_5_7_port);
   U70 : NAND2_X1 port map( A1 => n335, A2 => n39_port, ZN => n47);
   U71 : INV_X1 port map( A => address(0), ZN => n180);
   U72 : INV_X1 port map( A => address(1), ZN => n213);
   U73 : AND2_X1 port map( A1 => write_enable, A2 => address(2), ZN => n29);
   U74 : OAI21_X1 port map( B1 => n221, B2 => n57, A => n58, ZN => ram_3_0_port
                           );
   U75 : NAND2_X1 port map( A1 => n334, A2 => n57, ZN => n58);
   U76 : OAI21_X1 port map( B1 => n220, B2 => n57, A => n59, ZN => ram_3_1_port
                           );
   U77 : NAND2_X1 port map( A1 => n333, A2 => n57, ZN => n59);
   U78 : OAI21_X1 port map( B1 => n219, B2 => n57, A => n60, ZN => ram_3_2_port
                           );
   U79 : NAND2_X1 port map( A1 => n332, A2 => n57, ZN => n60);
   U80 : OAI21_X1 port map( B1 => n218, B2 => n57, A => n61, ZN => ram_3_3_port
                           );
   U81 : NAND2_X1 port map( A1 => n331, A2 => n57, ZN => n61);
   U82 : OAI21_X1 port map( B1 => n217, B2 => n57, A => n62, ZN => ram_3_4_port
                           );
   U83 : NAND2_X1 port map( A1 => n330, A2 => n57, ZN => n62);
   U84 : OAI21_X1 port map( B1 => n216, B2 => n57, A => n63, ZN => ram_3_5_port
                           );
   U85 : NAND2_X1 port map( A1 => n329, A2 => n57, ZN => n63);
   U86 : OAI21_X1 port map( B1 => n215, B2 => n57, A => n64, ZN => ram_3_6_port
                           );
   U87 : NAND2_X1 port map( A1 => n328, A2 => n57, ZN => n64);
   U88 : OAI21_X1 port map( B1 => n214, B2 => n57, A => n65, ZN => ram_3_7_port
                           );
   U89 : NAND2_X1 port map( A1 => n327, A2 => n57, ZN => n65);
   U90 : OAI21_X1 port map( B1 => n221, B2 => n67, A => n68, ZN => ram_2_0_port
                           );
   U91 : NAND2_X1 port map( A1 => n326, A2 => n67, ZN => n68);
   U92 : OAI21_X1 port map( B1 => n220, B2 => n67, A => n69, ZN => ram_2_1_port
                           );
   U93 : NAND2_X1 port map( A1 => n325, A2 => n67, ZN => n69);
   U94 : OAI21_X1 port map( B1 => n219, B2 => n67, A => n70, ZN => ram_2_2_port
                           );
   U95 : NAND2_X1 port map( A1 => n324, A2 => n67, ZN => n70);
   U96 : OAI21_X1 port map( B1 => n218, B2 => n67, A => n71, ZN => ram_2_3_port
                           );
   U97 : NAND2_X1 port map( A1 => n323, A2 => n67, ZN => n71);
   U98 : OAI21_X1 port map( B1 => n217, B2 => n67, A => n72, ZN => ram_2_4_port
                           );
   U99 : NAND2_X1 port map( A1 => n322, A2 => n67, ZN => n72);
   U100 : OAI21_X1 port map( B1 => n216, B2 => n67, A => n73, ZN => 
                           ram_2_5_port);
   U101 : NAND2_X1 port map( A1 => n321, A2 => n67, ZN => n73);
   U102 : OAI21_X1 port map( B1 => n215, B2 => n67, A => n74, ZN => 
                           ram_2_6_port);
   U103 : NAND2_X1 port map( A1 => n320, A2 => n67, ZN => n74);
   U104 : OAI21_X1 port map( B1 => n214, B2 => n67, A => n75, ZN => 
                           ram_2_7_port);
   U105 : NAND2_X1 port map( A1 => n319, A2 => n67, ZN => n75);
   U106 : OAI21_X1 port map( B1 => n221, B2 => n30, A => n31, ZN => 
                           ram_6_0_port);
   U107 : NAND2_X1 port map( A1 => n318, A2 => n30, ZN => n31);
   U108 : OAI21_X1 port map( B1 => n220, B2 => n30, A => n32, ZN => 
                           ram_6_1_port);
   U109 : NAND2_X1 port map( A1 => n317, A2 => n30, ZN => n32);
   U110 : OAI21_X1 port map( B1 => n219, B2 => n30, A => n33_port, ZN => 
                           ram_6_2_port);
   U111 : NAND2_X1 port map( A1 => n316, A2 => n30, ZN => n33_port);
   U112 : OAI21_X1 port map( B1 => n218, B2 => n30, A => n34_port, ZN => 
                           ram_6_3_port);
   U113 : NAND2_X1 port map( A1 => n315, A2 => n30, ZN => n34_port);
   U114 : OAI21_X1 port map( B1 => n217, B2 => n30, A => n35_port, ZN => 
                           ram_6_4_port);
   U115 : NAND2_X1 port map( A1 => n314, A2 => n30, ZN => n35_port);
   U116 : OAI21_X1 port map( B1 => n216, B2 => n30, A => n36_port, ZN => 
                           ram_6_5_port);
   U117 : NAND2_X1 port map( A1 => n313, A2 => n30, ZN => n36_port);
   U118 : OAI21_X1 port map( B1 => n215, B2 => n30, A => n37_port, ZN => 
                           ram_6_6_port);
   U119 : NAND2_X1 port map( A1 => n312, A2 => n30, ZN => n37_port);
   U120 : OAI21_X1 port map( B1 => n214, B2 => n30, A => n38_port, ZN => 
                           ram_6_7_port);
   U121 : NAND2_X1 port map( A1 => n311, A2 => n30, ZN => n38_port);
   U122 : OAI21_X1 port map( B1 => n221, B2 => n85, A => n86, ZN => 
                           ram_0_0_port);
   U123 : NAND2_X1 port map( A1 => n310, A2 => n85, ZN => n86);
   U124 : OAI21_X1 port map( B1 => n220, B2 => n85, A => n87, ZN => 
                           ram_0_1_port);
   U125 : NAND2_X1 port map( A1 => n309, A2 => n85, ZN => n87);
   U126 : OAI21_X1 port map( B1 => n219, B2 => n85, A => n88, ZN => 
                           ram_0_2_port);
   U127 : NAND2_X1 port map( A1 => n308, A2 => n85, ZN => n88);
   U128 : OAI21_X1 port map( B1 => n218, B2 => n85, A => n89, ZN => 
                           ram_0_3_port);
   U129 : NAND2_X1 port map( A1 => n307, A2 => n85, ZN => n89);
   U130 : OAI21_X1 port map( B1 => n217, B2 => n85, A => n90, ZN => 
                           ram_0_4_port);
   U131 : NAND2_X1 port map( A1 => n306, A2 => n85, ZN => n90);
   U132 : OAI21_X1 port map( B1 => n216, B2 => n85, A => n91, ZN => 
                           ram_0_5_port);
   U133 : NAND2_X1 port map( A1 => n305, A2 => n85, ZN => n91);
   U134 : OAI21_X1 port map( B1 => n215, B2 => n85, A => n92, ZN => 
                           ram_0_6_port);
   U135 : NAND2_X1 port map( A1 => n304, A2 => n85, ZN => n92);
   U136 : OAI21_X1 port map( B1 => n214, B2 => n85, A => n93, ZN => 
                           ram_0_7_port);
   U137 : NAND2_X1 port map( A1 => n303, A2 => n85, ZN => n93);
   U138 : OAI21_X1 port map( B1 => n221, B2 => n48, A => n49, ZN => 
                           ram_4_0_port);
   U139 : NAND2_X1 port map( A1 => n302, A2 => n48, ZN => n49);
   U140 : OAI21_X1 port map( B1 => n220, B2 => n48, A => n50, ZN => 
                           ram_4_1_port);
   U141 : NAND2_X1 port map( A1 => n301, A2 => n48, ZN => n50);
   U142 : OAI21_X1 port map( B1 => n219, B2 => n48, A => n51, ZN => 
                           ram_4_2_port);
   U143 : NAND2_X1 port map( A1 => n300, A2 => n48, ZN => n51);
   U144 : OAI21_X1 port map( B1 => n218, B2 => n48, A => n52, ZN => 
                           ram_4_3_port);
   U145 : NAND2_X1 port map( A1 => n299, A2 => n48, ZN => n52);
   U146 : OAI21_X1 port map( B1 => n217, B2 => n48, A => n53, ZN => 
                           ram_4_4_port);
   U147 : NAND2_X1 port map( A1 => n298, A2 => n48, ZN => n53);
   U148 : OAI21_X1 port map( B1 => n216, B2 => n48, A => n54, ZN => 
                           ram_4_5_port);
   U149 : NAND2_X1 port map( A1 => n297, A2 => n48, ZN => n54);
   U150 : OAI21_X1 port map( B1 => n215, B2 => n48, A => n55, ZN => 
                           ram_4_6_port);
   U151 : NAND2_X1 port map( A1 => n296, A2 => n48, ZN => n55);
   U152 : OAI21_X1 port map( B1 => n214, B2 => n48, A => n56, ZN => 
                           ram_4_7_port);
   U153 : NAND2_X1 port map( A1 => n295, A2 => n48, ZN => n56);
   U154 : INV_X1 port map( A => address(2), ZN => n179);
   U155 : INV_X1 port map( A => n171, ZN => n188);
   U156 : INV_X1 port map( A => n96, ZN => n186);
   U157 : INV_X1 port map( A => n6, ZN => n182);
   U158 : INV_X1 port map( A => n2, ZN => n181);
   U159 : INV_X1 port map( A => n10, ZN => n183);
   U160 : INV_X1 port map( A => n14, ZN => n184);
   U162 : INV_X1 port map( A => n18, ZN => n185);
   U164 : INV_X1 port map( A => n167, ZN => n187);
   U165 : INV_X1 port map( A => n101, ZN => n512);
   U166 : AOI22_X1 port map( A1 => N34, A2 => read_enable, B1 => dataout_6_port
                           , B2 => n1, ZN => n101);
   U168 : INV_X1 port map( A => datain(0), ZN => n221);
   U169 : INV_X1 port map( A => datain(1), ZN => n220);
   U170 : INV_X1 port map( A => datain(2), ZN => n219);
   U171 : INV_X1 port map( A => datain(3), ZN => n218);
   U172 : INV_X1 port map( A => datain(4), ZN => n217);
   U173 : INV_X1 port map( A => datain(5), ZN => n216);
   U174 : INV_X1 port map( A => datain(6), ZN => n215);
   U175 : INV_X1 port map( A => datain(7), ZN => n214);
   U176 : AOI22_X1 port map( A1 => n350, A2 => n173, B1 => n334, B2 => n172, ZN
                           => n2);
   U177 : AOI221_X1 port map( B1 => n342, B2 => n176, C1 => n358, C2 => n175, A
                           => n181, ZN => n5);
   U178 : AOI22_X1 port map( A1 => n310, A2 => n173, B1 => n326, B2 => n172, ZN
                           => n3);
   U179 : AOI221_X1 port map( B1 => n302, B2 => n176, C1 => n318, C2 => n175, A
                           => n189, ZN => n4);
   U180 : OAI22_X1 port map( A1 => n180, A2 => n5, B1 => address(0), B2 => n4, 
                           ZN => N40);
   U181 : AOI22_X1 port map( A1 => n349, A2 => n173, B1 => n333, B2 => n172, ZN
                           => n6);
   U182 : AOI221_X1 port map( B1 => n341, B2 => n176, C1 => n357, C2 => n175, A
                           => n182, ZN => n9);
   U183 : AOI22_X1 port map( A1 => n309, A2 => n173, B1 => n325, B2 => n172, ZN
                           => n7);
   U184 : AOI221_X1 port map( B1 => n301, B2 => n176, C1 => n317, C2 => n175, A
                           => n190, ZN => n8);
   U185 : OAI22_X1 port map( A1 => n180, A2 => n9, B1 => address(0), B2 => n8, 
                           ZN => N39);
   U186 : AOI22_X1 port map( A1 => n348, A2 => n173, B1 => n332, B2 => n172, ZN
                           => n10);
   U187 : AOI221_X1 port map( B1 => n340, B2 => n176, C1 => n356, C2 => n175, A
                           => n183, ZN => n13);
   U188 : AOI22_X1 port map( A1 => n308, A2 => n173, B1 => n324, B2 => n172, ZN
                           => n11);
   U189 : AOI221_X1 port map( B1 => n300, B2 => n176, C1 => n316, C2 => n175, A
                           => n191, ZN => n12);
   U190 : OAI22_X1 port map( A1 => n180, A2 => n13, B1 => address(0), B2 => n12
                           , ZN => N38);
   U191 : AOI22_X1 port map( A1 => n347, A2 => n173, B1 => n331, B2 => n172, ZN
                           => n14);
   U192 : AOI221_X1 port map( B1 => n339, B2 => n176, C1 => n355, C2 => n175, A
                           => n184, ZN => n17);
   U193 : AOI22_X1 port map( A1 => n307, A2 => n173, B1 => n323, B2 => n172, ZN
                           => n15);
   U194 : AOI221_X1 port map( B1 => n299, B2 => n176, C1 => n315, C2 => n175, A
                           => n192, ZN => n16);
   U195 : OAI22_X1 port map( A1 => n180, A2 => n17, B1 => address(0), B2 => n16
                           , ZN => N37);
   U196 : AOI22_X1 port map( A1 => n346, A2 => n173, B1 => n330, B2 => n172, ZN
                           => n18);
   U197 : AOI221_X1 port map( B1 => n338, B2 => n176, C1 => n354, C2 => n175, A
                           => n185, ZN => n95);
   U198 : AOI22_X1 port map( A1 => n306, A2 => n173, B1 => n322, B2 => n172, ZN
                           => n19);
   U199 : AOI221_X1 port map( B1 => n298, B2 => n176, C1 => n314, C2 => n175, A
                           => n193, ZN => n94);
   U200 : OAI22_X1 port map( A1 => n180, A2 => n95, B1 => address(0), B2 => n94
                           , ZN => N36);
   U201 : AOI22_X1 port map( A1 => n345, A2 => n173, B1 => n329, B2 => n172, ZN
                           => n96);
   U202 : AOI221_X1 port map( B1 => n337, B2 => n176, C1 => n353, C2 => n175, A
                           => n186, ZN => n99);
   U203 : AOI22_X1 port map( A1 => n305, A2 => n173, B1 => n321, B2 => n172, ZN
                           => n97);
   U204 : AOI221_X1 port map( B1 => n297, B2 => n176, C1 => n313, C2 => n175, A
                           => n194, ZN => n98);
   U205 : OAI22_X1 port map( A1 => n180, A2 => n99, B1 => address(0), B2 => n98
                           , ZN => N35);
   U206 : AOI22_X1 port map( A1 => n344, A2 => n173, B1 => n328, B2 => n172, ZN
                           => n167);
   U207 : AOI221_X1 port map( B1 => n336, B2 => n176, C1 => n352, C2 => n175, A
                           => n187, ZN => n170);
   U208 : AOI22_X1 port map( A1 => n304, A2 => n173, B1 => n320, B2 => n172, ZN
                           => n168);
   U209 : AOI221_X1 port map( B1 => n296, B2 => n176, C1 => n312, C2 => n175, A
                           => n195, ZN => n169);
   U210 : OAI22_X1 port map( A1 => n180, A2 => n170, B1 => address(0), B2 => 
                           n169, ZN => N34);
   U211 : AOI22_X1 port map( A1 => n343, A2 => n173, B1 => n327, B2 => n172, ZN
                           => n171);
   U212 : AOI221_X1 port map( B1 => n335, B2 => n176, C1 => n351, C2 => n175, A
                           => n188, ZN => n178);
   U213 : AOI22_X1 port map( A1 => n303, A2 => n173, B1 => n319, B2 => n172, ZN
                           => n174);
   U214 : AOI221_X1 port map( B1 => n295, B2 => n176, C1 => n311, C2 => n175, A
                           => n196, ZN => n177);
   U215 : OAI22_X1 port map( A1 => n178, A2 => n180, B1 => address(0), B2 => 
                           n177, ZN => N33);
   U216 : INV_X1 port map( A => n102, ZN => n511);
   U218 : INV_X1 port map( A => n100, ZN => n513);
   U219 : AOI22_X1 port map( A1 => N33, A2 => read_enable, B1 => dataout_7_port
                           , B2 => n1, ZN => n102);
   U220 : AOI22_X1 port map( A1 => N35, A2 => read_enable, B1 => dataout_5_port
                           , B2 => n1, ZN => n100);
   U221 : AOI22_X1 port map( A1 => N40, A2 => read_enable, B1 => dataout_0_port
                           , B2 => n1, ZN => n199);
   U222 : INV_X1 port map( A => n199, ZN => n517);
   U223 : AOI22_X1 port map( A1 => N39, A2 => read_enable, B1 => dataout_1_port
                           , B2 => n1, ZN => n200);
   U224 : INV_X1 port map( A => n200, ZN => n516);
   U225 : AOI22_X1 port map( A1 => N38, A2 => read_enable, B1 => dataout_2_port
                           , B2 => n1, ZN => n201);
   U226 : INV_X1 port map( A => n201, ZN => n515);
   U227 : AOI22_X1 port map( A1 => N37, A2 => read_enable, B1 => n360, B2 => n1
                           , ZN => n202);
   U228 : INV_X1 port map( A => n202, ZN => n222);
   U229 : AOI22_X1 port map( A1 => N36, A2 => read_enable, B1 => dataout_4_port
                           , B2 => n1, ZN => n203);
   U230 : INV_X1 port map( A => n203, ZN => n514);
   clock_r_REG209_S3 : DFF_X1 port map( D => n512, CK => clock, Q => 
                           dataout_6_port, QN => n_1078);
   clock_r_REG202_S3 : DFF_X1 port map( D => n511, CK => clock, Q => 
                           dataout_7_port, QN => n_1079);
   clock_r_REG213_S3 : DFF_X1 port map( D => n513, CK => clock, Q => 
                           dataout_5_port, QN => n_1080);
   clock_r_REG233_S3 : DFF_X1 port map( D => n517, CK => clock, Q => 
                           dataout_0_port, QN => n_1081);
   clock_r_REG229_S3 : DFF_X1 port map( D => n516, CK => clock, Q => 
                           dataout_1_port, QN => n_1082);
   clock_r_REG225_S3 : DFF_X1 port map( D => n515, CK => clock, Q => 
                           dataout_2_port, QN => n_1083);
   clock_r_REG221_S3 : DFF_X1 port map( D => n222, CK => clock, Q => n360, QN 
                           => n_1084);
   clock_r_REG217_S3 : DFF_X1 port map( D => n514, CK => clock, Q => 
                           dataout_4_port, QN => n_1085);
   clock_r_REG232_S2 : DFF_X1 port map( D => ram_7_0_port, CK => clock, Q => 
                           n358, QN => n_1086);
   clock_r_REG228_S2 : DFF_X1 port map( D => ram_7_1_port, CK => clock, Q => 
                           n357, QN => n_1087);
   clock_r_REG224_S2 : DFF_X1 port map( D => ram_7_2_port, CK => clock, Q => 
                           n356, QN => n_1088);
   clock_r_REG220_S2 : DFF_X1 port map( D => ram_7_3_port, CK => clock, Q => 
                           n355, QN => n_1089);
   clock_r_REG216_S2 : DFF_X1 port map( D => ram_7_4_port, CK => clock, Q => 
                           n354, QN => n_1090);
   clock_r_REG212_S2 : DFF_X1 port map( D => ram_7_5_port, CK => clock, Q => 
                           n353, QN => n_1091);
   clock_r_REG208_S2 : DFF_X1 port map( D => ram_7_6_port, CK => clock, Q => 
                           n352, QN => n_1092);
   clock_r_REG201_S2 : DFF_X1 port map( D => ram_7_7_port, CK => clock, Q => 
                           n351, QN => n_1093);
   clock_r_REG267_S2 : DFF_X1 port map( D => ram_1_0_port, CK => clock, Q => 
                           n350, QN => n_1094);
   clock_r_REG266_S2 : DFF_X1 port map( D => ram_1_1_port, CK => clock, Q => 
                           n349, QN => n_1095);
   clock_r_REG265_S2 : DFF_X1 port map( D => ram_1_2_port, CK => clock, Q => 
                           n348, QN => n_1096);
   clock_r_REG264_S2 : DFF_X1 port map( D => ram_1_3_port, CK => clock, Q => 
                           n347, QN => n_1097);
   clock_r_REG263_S2 : DFF_X1 port map( D => ram_1_4_port, CK => clock, Q => 
                           n346, QN => n_1098);
   clock_r_REG262_S2 : DFF_X1 port map( D => ram_1_5_port, CK => clock, Q => 
                           n345, QN => n_1099);
   clock_r_REG261_S2 : DFF_X1 port map( D => ram_1_6_port, CK => clock, Q => 
                           n344, QN => n_1100);
   clock_r_REG260_S2 : DFF_X1 port map( D => ram_1_7_port, CK => clock, Q => 
                           n343, QN => n_1101);
   clock_r_REG243_S2 : DFF_X1 port map( D => ram_5_0_port, CK => clock, Q => 
                           n342, QN => n_1102);
   clock_r_REG242_S2 : DFF_X1 port map( D => ram_5_1_port, CK => clock, Q => 
                           n341, QN => n_1103);
   clock_r_REG241_S2 : DFF_X1 port map( D => ram_5_2_port, CK => clock, Q => 
                           n340, QN => n_1104);
   clock_r_REG240_S2 : DFF_X1 port map( D => ram_5_3_port, CK => clock, Q => 
                           n339, QN => n_1105);
   clock_r_REG239_S2 : DFF_X1 port map( D => ram_5_4_port, CK => clock, Q => 
                           n338, QN => n_1106);
   clock_r_REG238_S2 : DFF_X1 port map( D => ram_5_5_port, CK => clock, Q => 
                           n337, QN => n_1107);
   clock_r_REG237_S2 : DFF_X1 port map( D => ram_5_6_port, CK => clock, Q => 
                           n336, QN => n_1108);
   clock_r_REG236_S2 : DFF_X1 port map( D => ram_5_7_port, CK => clock, Q => 
                           n335, QN => n_1109);
   clock_r_REG283_S2 : DFF_X1 port map( D => ram_3_0_port, CK => clock, Q => 
                           n334, QN => n_1110);
   clock_r_REG282_S2 : DFF_X1 port map( D => ram_3_1_port, CK => clock, Q => 
                           n333, QN => n_1111);
   clock_r_REG281_S2 : DFF_X1 port map( D => ram_3_2_port, CK => clock, Q => 
                           n332, QN => n_1112);
   clock_r_REG280_S2 : DFF_X1 port map( D => ram_3_3_port, CK => clock, Q => 
                           n331, QN => n_1113);
   clock_r_REG279_S2 : DFF_X1 port map( D => ram_3_4_port, CK => clock, Q => 
                           n330, QN => n_1114);
   clock_r_REG278_S2 : DFF_X1 port map( D => ram_3_5_port, CK => clock, Q => 
                           n329, QN => n_1115);
   clock_r_REG277_S2 : DFF_X1 port map( D => ram_3_6_port, CK => clock, Q => 
                           n328, QN => n_1116);
   clock_r_REG276_S2 : DFF_X1 port map( D => ram_3_7_port, CK => clock, Q => 
                           n327, QN => n_1117);
   clock_r_REG275_S2 : DFF_X1 port map( D => ram_2_0_port, CK => clock, Q => 
                           n326, QN => n_1118);
   clock_r_REG274_S2 : DFF_X1 port map( D => ram_2_1_port, CK => clock, Q => 
                           n325, QN => n_1119);
   clock_r_REG273_S2 : DFF_X1 port map( D => ram_2_2_port, CK => clock, Q => 
                           n324, QN => n_1120);
   clock_r_REG272_S2 : DFF_X1 port map( D => ram_2_3_port, CK => clock, Q => 
                           n323, QN => n_1121);
   clock_r_REG271_S2 : DFF_X1 port map( D => ram_2_4_port, CK => clock, Q => 
                           n322, QN => n_1122);
   clock_r_REG270_S2 : DFF_X1 port map( D => ram_2_5_port, CK => clock, Q => 
                           n321, QN => n_1123);
   clock_r_REG269_S2 : DFF_X1 port map( D => ram_2_6_port, CK => clock, Q => 
                           n320, QN => n_1124);
   clock_r_REG268_S2 : DFF_X1 port map( D => ram_2_7_port, CK => clock, Q => 
                           n319, QN => n_1125);
   clock_r_REG251_S2 : DFF_X1 port map( D => ram_6_0_port, CK => clock, Q => 
                           n318, QN => n_1126);
   clock_r_REG250_S2 : DFF_X1 port map( D => ram_6_1_port, CK => clock, Q => 
                           n317, QN => n_1127);
   clock_r_REG249_S2 : DFF_X1 port map( D => ram_6_2_port, CK => clock, Q => 
                           n316, QN => n_1128);
   clock_r_REG248_S2 : DFF_X1 port map( D => ram_6_3_port, CK => clock, Q => 
                           n315, QN => n_1129);
   clock_r_REG247_S2 : DFF_X1 port map( D => ram_6_4_port, CK => clock, Q => 
                           n314, QN => n_1130);
   clock_r_REG246_S2 : DFF_X1 port map( D => ram_6_5_port, CK => clock, Q => 
                           n313, QN => n_1131);
   clock_r_REG245_S2 : DFF_X1 port map( D => ram_6_6_port, CK => clock, Q => 
                           n312, QN => n_1132);
   clock_r_REG244_S2 : DFF_X1 port map( D => ram_6_7_port, CK => clock, Q => 
                           n311, QN => n_1133);
   clock_r_REG291_S2 : DFF_X1 port map( D => ram_0_0_port, CK => clock, Q => 
                           n310, QN => n_1134);
   clock_r_REG290_S2 : DFF_X1 port map( D => ram_0_1_port, CK => clock, Q => 
                           n309, QN => n_1135);
   clock_r_REG289_S2 : DFF_X1 port map( D => ram_0_2_port, CK => clock, Q => 
                           n308, QN => n_1136);
   clock_r_REG288_S2 : DFF_X1 port map( D => ram_0_3_port, CK => clock, Q => 
                           n307, QN => n_1137);
   clock_r_REG287_S2 : DFF_X1 port map( D => ram_0_4_port, CK => clock, Q => 
                           n306, QN => n_1138);
   clock_r_REG286_S2 : DFF_X1 port map( D => ram_0_5_port, CK => clock, Q => 
                           n305, QN => n_1139);
   clock_r_REG285_S2 : DFF_X1 port map( D => ram_0_6_port, CK => clock, Q => 
                           n304, QN => n_1140);
   clock_r_REG284_S2 : DFF_X1 port map( D => ram_0_7_port, CK => clock, Q => 
                           n303, QN => n_1141);
   clock_r_REG259_S2 : DFF_X1 port map( D => ram_4_0_port, CK => clock, Q => 
                           n302, QN => n_1142);
   clock_r_REG258_S2 : DFF_X1 port map( D => ram_4_1_port, CK => clock, Q => 
                           n301, QN => n_1143);
   clock_r_REG257_S2 : DFF_X1 port map( D => ram_4_2_port, CK => clock, Q => 
                           n300, QN => n_1144);
   clock_r_REG256_S2 : DFF_X1 port map( D => ram_4_3_port, CK => clock, Q => 
                           n299, QN => n_1145);
   clock_r_REG255_S2 : DFF_X1 port map( D => ram_4_4_port, CK => clock, Q => 
                           n298, QN => n_1146);
   clock_r_REG254_S2 : DFF_X1 port map( D => ram_4_5_port, CK => clock, Q => 
                           n297, QN => n_1147);
   clock_r_REG253_S2 : DFF_X1 port map( D => ram_4_6_port, CK => clock, Q => 
                           n296, QN => n_1148);
   clock_r_REG252_S2 : DFF_X1 port map( D => ram_4_7_port, CK => clock, Q => 
                           n295, QN => n_1149);

end SYN_ramA;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity counter_address_generator_0 is

   port( clock, reset, need_to_reset, enable, read_enable : in std_logic;  
         address : out std_logic_vector (7 downto 0));

end counter_address_generator_0;

architecture SYN_counter_address_generator of counter_address_generator_0 is

   component counter_address_generator_0_DW01_inc_0
      port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n51, n52, n53, n54, n55, n56, n57, n58, N10, N11, N12, N13, N14, N15,
      N16, N17, n9, n10_port, n11_port, n12_port, n13_port, n14_port, n15_port,
      n16_port, n17_port, n18, address_0_port, address_1_port, address_2_port, 
      address_3_port, address_4_port, address_5_port, address_6_port, 
      address_7_port, n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156, 
      n_1157 : std_logic;

begin
   address <= ( address_7_port, address_6_port, address_5_port, address_4_port,
      address_3_port, address_2_port, address_1_port, address_0_port );
   
   U3 : NOR3_X2 port map( A1 => reset, A2 => need_to_reset, A3 => n11_port, ZN 
                           => n10_port);
   U4 : NOR3_X2 port map( A1 => reset, A2 => read_enable, A3 => enable, ZN => 
                           n11_port);
   U5 : INV_X1 port map( A => n9, ZN => n51);
   U6 : AOI22_X1 port map( A1 => N17, A2 => n10_port, B1 => address_7_port, B2 
                           => n11_port, ZN => n9);
   U7 : INV_X1 port map( A => n12_port, ZN => n52);
   U8 : AOI22_X1 port map( A1 => N16, A2 => n10_port, B1 => address_6_port, B2 
                           => n11_port, ZN => n12_port);
   U9 : INV_X1 port map( A => n13_port, ZN => n53);
   U10 : AOI22_X1 port map( A1 => N15, A2 => n10_port, B1 => address_5_port, B2
                           => n11_port, ZN => n13_port);
   U11 : INV_X1 port map( A => n14_port, ZN => n54);
   U12 : AOI22_X1 port map( A1 => N14, A2 => n10_port, B1 => address_4_port, B2
                           => n11_port, ZN => n14_port);
   U13 : INV_X1 port map( A => n15_port, ZN => n55);
   U14 : AOI22_X1 port map( A1 => N13, A2 => n10_port, B1 => address_3_port, B2
                           => n11_port, ZN => n15_port);
   U15 : INV_X1 port map( A => n16_port, ZN => n56);
   U16 : AOI22_X1 port map( A1 => N12, A2 => n10_port, B1 => address_2_port, B2
                           => n11_port, ZN => n16_port);
   U17 : INV_X1 port map( A => n17_port, ZN => n57);
   U18 : AOI22_X1 port map( A1 => N11, A2 => n10_port, B1 => address_1_port, B2
                           => n11_port, ZN => n17_port);
   U19 : INV_X1 port map( A => n18, ZN => n58);
   U20 : AOI22_X1 port map( A1 => N10, A2 => n10_port, B1 => address_0_port, B2
                           => n11_port, ZN => n18);
   clock_r_REG299_S3 : DFF_X1 port map( D => n51, CK => clock, Q => 
                           address_7_port, QN => n_1150);
   clock_r_REG298_S3 : DFF_X1 port map( D => n52, CK => clock, Q => 
                           address_6_port, QN => n_1151);
   clock_r_REG297_S3 : DFF_X1 port map( D => n53, CK => clock, Q => 
                           address_5_port, QN => n_1152);
   clock_r_REG296_S3 : DFF_X1 port map( D => n54, CK => clock, Q => 
                           address_4_port, QN => n_1153);
   clock_r_REG295_S3 : DFF_X1 port map( D => n55, CK => clock, Q => 
                           address_3_port, QN => n_1154);
   clock_r_REG294_S3 : DFF_X1 port map( D => n56, CK => clock, Q => 
                           address_2_port, QN => n_1155);
   clock_r_REG293_S3 : DFF_X1 port map( D => n57, CK => clock, Q => 
                           address_1_port, QN => n_1156);
   clock_r_REG292_S3 : DFF_X1 port map( D => n58, CK => clock, Q => 
                           address_0_port, QN => n_1157);
   add_38 : counter_address_generator_0_DW01_inc_0 port map( A(7) => 
                           address_7_port, A(6) => address_6_port, A(5) => 
                           address_5_port, A(4) => address_4_port, A(3) => 
                           address_3_port, A(2) => address_2_port, A(1) => 
                           address_1_port, A(0) => address_0_port, SUM(7) => 
                           N17, SUM(6) => N16, SUM(5) => N15, SUM(4) => N14, 
                           SUM(3) => N13, SUM(2) => N12, SUM(1) => N11, SUM(0) 
                           => N10);

end SYN_counter_address_generator;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_project2.all;

entity project2 is

   port( clock, reset, valid, hold_me : in std_logic;  data_in : in 
         std_logic_vector (7 downto 0);  data_out : out std_logic_vector (18 
         downto 0);  hold_prev : out std_logic);

end project2;

architecture SYN_project_2 of project2 is

   component ramR
      port( clock, write_enable, read_enable : in std_logic;  address : in 
            std_logic_vector (2 downto 0);  datain : in std_logic_vector (18 
            downto 0);  dataout : out std_logic_vector (18 downto 0));
   end component;
   
   component counter_address_generator_1
      port( clock, reset, need_to_reset, enable, read_enable : in std_logic;  
            address : out std_logic_vector (7 downto 0));
   end component;
   
   component fsm
      port( clock, reset : in std_logic;  ramA_address : in std_logic_vector (4
            downto 0);  ramR_address, rom_address : in std_logic_vector (7 
            downto 0);  hold_me : in std_logic;  ramR_readEnable, 
            ramA_writeEnable, ramA_readEnable, ramR_writeEnable, rom_enable, 
            counterAddressGen_H_enable, counterAddressGen_R_enable, 
            counterAddressGen_A_restart, counterAddressGen_R_restart, 
            counterAddressGen_H_restart, mac_clean, reset_fsm, hold_prev : out 
            std_logic);
   end component;
   
   component mac
      port( clock : in std_logic;  ai, xi : in std_logic_vector (7 downto 0);  
            mac_clean : in std_logic;  data_out : out std_logic_vector (18 
            downto 0));
   end component;
   
   component rom
      port( clock : in std_logic;  address : in std_logic_vector (5 downto 0); 
            rom_enable : in std_logic;  data : out std_logic_vector (7 downto 
            0));
   end component;
   
   component counter_address_generator_2
      port( clock, reset, need_to_reset, enable, read_enable : in std_logic;  
            address : out std_logic_vector (7 downto 0));
   end component;
   
   component ramA
      port( clock, write_enable, read_enable : in std_logic;  address : in 
            std_logic_vector (2 downto 0);  datain : in std_logic_vector (7 
            downto 0);  dataout : out std_logic_vector (7 downto 0));
   end component;
   
   component counter_address_generator_0
      port( clock, reset, need_to_reset, enable, read_enable : in std_logic;  
            address : out std_logic_vector (7 downto 0));
   end component;
   
   signal reset_fsm, CAG_A_restart, ramA_read_enable, addressA_7_port, 
      addressA_6_port, addressA_5_port, addressA_4_port, addressA_3_port, 
      addressA_2_port, addressA_1_port, addressA_0_port, ramA_write_enable, 
      Ai_7_port, Ai_6_port, Ai_5_port, Ai_4_port, Ai_3_port, Ai_2_port, 
      Ai_1_port, Ai_0_port, CAG_H_restart, CAG_H_enable, addressH_7_port, 
      addressH_6_port, addressH_5_port, addressH_4_port, addressH_3_port, 
      addressH_2_port, addressH_1_port, addressH_0_port, romH_enable, Hi_7_port
      , Hi_6_port, Hi_5_port, Hi_4_port, Hi_3_port, Hi_2_port, Hi_1_port, 
      Hi_0_port, clear_register, Ri_18_port, Ri_17_port, Ri_16_port, Ri_15_port
      , Ri_14_port, Ri_13_port, Ri_12_port, Ri_11_port, Ri_10_port, Ri_9_port, 
      Ri_8_port, Ri_7_port, Ri_6_port, Ri_5_port, Ri_4_port, Ri_3_port, 
      Ri_2_port, Ri_1_port, Ri_0_port, addressR_7_port, addressR_6_port, 
      addressR_5_port, addressR_4_port, addressR_3_port, addressR_2_port, 
      addressR_1_port, addressR_0_port, ramR_read_enable, ramR_write_enable, 
      CAG_R_enable, CAG_R_restart, n1, n2, n3, n4, n5, n6, n7, n_1158, n_1159, 
      n_1160, n_1161, n_1162, n_1163, n_1164 : std_logic;

begin
   
   Hi_0_port <= '0';
   Hi_1_port <= '0';
   Hi_2_port <= '0';
   Hi_3_port <= '0';
   Hi_4_port <= '0';
   Hi_5_port <= '0';
   Hi_6_port <= '0';
   n1 <= '0';
   n2 <= '0';
   n3 <= '0';
   n4 <= '0';
   n5 <= '0';
   n6 <= '0';
   counterAddressGenA : counter_address_generator_0 port map( clock => clock, 
                           reset => reset_fsm, need_to_reset => CAG_A_restart, 
                           enable => valid, read_enable => ramA_read_enable, 
                           address(7) => addressA_7_port, address(6) => 
                           addressA_6_port, address(5) => addressA_5_port, 
                           address(4) => addressA_4_port, address(3) => 
                           addressA_3_port, address(2) => addressA_2_port, 
                           address(1) => addressA_1_port, address(0) => 
                           addressA_0_port);
   RAMA_UNIT : ramA port map( clock => clock, write_enable => ramA_write_enable
                           , read_enable => ramA_read_enable, address(2) => 
                           addressA_2_port, address(1) => addressA_1_port, 
                           address(0) => addressA_0_port, datain(7) => 
                           data_in(7), datain(6) => data_in(6), datain(5) => 
                           data_in(5), datain(4) => data_in(4), datain(3) => 
                           data_in(3), datain(2) => data_in(2), datain(1) => 
                           data_in(1), datain(0) => data_in(0), dataout(7) => 
                           Ai_7_port, dataout(6) => Ai_6_port, dataout(5) => 
                           Ai_5_port, dataout(4) => Ai_4_port, dataout(3) => 
                           Ai_3_port, dataout(2) => Ai_2_port, dataout(1) => 
                           Ai_1_port, dataout(0) => Ai_0_port);
   counterAddressGenH : counter_address_generator_2 port map( clock => clock, 
                           reset => reset_fsm, need_to_reset => CAG_H_restart, 
                           enable => CAG_H_enable, read_enable => CAG_H_enable,
                           address(7) => addressH_7_port, address(6) => 
                           addressH_6_port, address(5) => addressH_5_port, 
                           address(4) => addressH_4_port, address(3) => 
                           addressH_3_port, address(2) => addressH_2_port, 
                           address(1) => addressH_1_port, address(0) => 
                           addressH_0_port);
   ROMH : rom port map( clock => n7, address(5) => n1, address(4) => n2, 
                           address(3) => n3, address(2) => n4, address(1) => n5
                           , address(0) => n6, rom_enable => romH_enable, 
                           data(7) => Hi_7_port, data(6) => n_1158, data(5) => 
                           n_1159, data(4) => n_1160, data(3) => n_1161, 
                           data(2) => n_1162, data(1) => n_1163, data(0) => 
                           n_1164);
   MAC_UNIT : mac port map( clock => clock, ai(7) => Ai_7_port, ai(6) => 
                           Ai_6_port, ai(5) => Ai_5_port, ai(4) => Ai_4_port, 
                           ai(3) => Ai_3_port, ai(2) => Ai_2_port, ai(1) => 
                           Ai_1_port, ai(0) => Ai_0_port, xi(7) => Hi_7_port, 
                           xi(6) => Hi_6_port, xi(5) => Hi_5_port, xi(4) => 
                           Hi_4_port, xi(3) => Hi_3_port, xi(2) => Hi_2_port, 
                           xi(1) => Hi_1_port, xi(0) => Hi_0_port, mac_clean =>
                           clear_register, data_out(18) => Ri_18_port, 
                           data_out(17) => Ri_17_port, data_out(16) => 
                           Ri_16_port, data_out(15) => Ri_15_port, data_out(14)
                           => Ri_14_port, data_out(13) => Ri_13_port, 
                           data_out(12) => Ri_12_port, data_out(11) => 
                           Ri_11_port, data_out(10) => Ri_10_port, data_out(9) 
                           => Ri_9_port, data_out(8) => Ri_8_port, data_out(7) 
                           => Ri_7_port, data_out(6) => Ri_6_port, data_out(5) 
                           => Ri_5_port, data_out(4) => Ri_4_port, data_out(3) 
                           => Ri_3_port, data_out(2) => Ri_2_port, data_out(1) 
                           => Ri_1_port, data_out(0) => Ri_0_port);
   FSM_UNIT : fsm port map( clock => clock, reset => reset, ramA_address(4) => 
                           addressA_7_port, ramA_address(3) => addressA_6_port,
                           ramA_address(2) => addressA_5_port, ramA_address(1) 
                           => addressA_4_port, ramA_address(0) => 
                           addressA_3_port, ramR_address(7) => addressR_7_port,
                           ramR_address(6) => addressR_6_port, ramR_address(5) 
                           => addressR_5_port, ramR_address(4) => 
                           addressR_4_port, ramR_address(3) => addressR_3_port,
                           ramR_address(2) => addressR_2_port, ramR_address(1) 
                           => addressR_1_port, ramR_address(0) => 
                           addressR_0_port, rom_address(7) => addressH_7_port, 
                           rom_address(6) => addressH_6_port, rom_address(5) =>
                           addressH_5_port, rom_address(4) => addressH_4_port, 
                           rom_address(3) => addressH_3_port, rom_address(2) =>
                           addressH_2_port, rom_address(1) => addressH_1_port, 
                           rom_address(0) => addressH_0_port, hold_me => 
                           hold_me, ramR_readEnable => ramR_read_enable, 
                           ramA_writeEnable => ramA_write_enable, 
                           ramA_readEnable => ramA_read_enable, 
                           ramR_writeEnable => ramR_write_enable, rom_enable =>
                           romH_enable, counterAddressGen_H_enable => 
                           CAG_H_enable, counterAddressGen_R_enable => 
                           CAG_R_enable, counterAddressGen_A_restart => 
                           CAG_A_restart, counterAddressGen_R_restart => 
                           CAG_R_restart, counterAddressGen_H_restart => 
                           CAG_H_restart, mac_clean => clear_register, 
                           reset_fsm => reset_fsm, hold_prev => hold_prev);
   counterAddressGenR : counter_address_generator_1 port map( clock => clock, 
                           reset => reset_fsm, need_to_reset => CAG_R_restart, 
                           enable => CAG_R_enable, read_enable => 
                           ramR_read_enable, address(7) => addressR_7_port, 
                           address(6) => addressR_6_port, address(5) => 
                           addressR_5_port, address(4) => addressR_4_port, 
                           address(3) => addressR_3_port, address(2) => 
                           addressR_2_port, address(1) => addressR_1_port, 
                           address(0) => addressR_0_port);
   RAMR_UNIT : ramR port map( clock => clock, write_enable => ramR_write_enable
                           , read_enable => ramR_read_enable, address(2) => 
                           addressR_2_port, address(1) => addressR_1_port, 
                           address(0) => addressR_0_port, datain(18) => 
                           Ri_18_port, datain(17) => Ri_17_port, datain(16) => 
                           Ri_16_port, datain(15) => Ri_15_port, datain(14) => 
                           Ri_14_port, datain(13) => Ri_13_port, datain(12) => 
                           Ri_12_port, datain(11) => Ri_11_port, datain(10) => 
                           Ri_10_port, datain(9) => Ri_9_port, datain(8) => 
                           Ri_8_port, datain(7) => Ri_7_port, datain(6) => 
                           Ri_6_port, datain(5) => Ri_5_port, datain(4) => 
                           Ri_4_port, datain(3) => Ri_3_port, datain(2) => 
                           Ri_2_port, datain(1) => Ri_1_port, datain(0) => 
                           Ri_0_port, dataout(18) => data_out(18), dataout(17) 
                           => data_out(17), dataout(16) => data_out(16), 
                           dataout(15) => data_out(15), dataout(14) => 
                           data_out(14), dataout(13) => data_out(13), 
                           dataout(12) => data_out(12), dataout(11) => 
                           data_out(11), dataout(10) => data_out(10), 
                           dataout(9) => data_out(9), dataout(8) => data_out(8)
                           , dataout(7) => data_out(7), dataout(6) => 
                           data_out(6), dataout(5) => data_out(5), dataout(4) 
                           => data_out(4), dataout(3) => data_out(3), 
                           dataout(2) => data_out(2), dataout(1) => data_out(1)
                           , dataout(0) => data_out(0));
   n7 <= '0';

end SYN_project_2;
