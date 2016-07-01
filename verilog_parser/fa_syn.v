/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Oct  2 15:45:45 2015
/////////////////////////////////////////////////////////////


module fa32 ( a, b, cin, sum, cout, co15 );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input cin;
  output cout, co15;
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
         n189, n190;

  ao22f01 U1 ( .a(n1), .b(n2), .c(n3), .d(n4), .o(sum[9]) );
  ao22f01 U2 ( .a(n5), .b(n6), .c(n7), .d(n8), .o(sum[8]) );
  ao22f01 U3 ( .a(n9), .b(n10), .c(n11), .d(n12), .o(sum[7]) );
  ao22f01 U4 ( .a(n13), .b(n14), .c(n15), .d(n16), .o(sum[6]) );
  ao22f01 U5 ( .a(n17), .b(n18), .c(n19), .d(n20), .o(sum[5]) );
  ao22f01 U6 ( .a(n21), .b(n22), .c(n23), .d(n24), .o(sum[4]) );
  ao22f01 U7 ( .a(n25), .b(n26), .c(n27), .d(n28), .o(sum[3]) );
  ao22f01 U8 ( .a(n29), .b(n30), .c(n31), .d(n32), .o(sum[31]) );
  ao22f01 U9 ( .a(n33), .b(n34), .c(n35), .d(n36), .o(sum[30]) );
  ao22f01 U10 ( .a(n37), .b(n38), .c(n39), .d(n40), .o(sum[2]) );
  ao22f01 U11 ( .a(n41), .b(n42), .c(n43), .d(n44), .o(sum[29]) );
  ao22f01 U12 ( .a(n45), .b(n46), .c(n47), .d(n48), .o(sum[28]) );
  ao22f01 U13 ( .a(n49), .b(n50), .c(n51), .d(n52), .o(sum[27]) );
  ao22f01 U14 ( .a(n53), .b(n54), .c(n55), .d(n56), .o(sum[26]) );
  ao22f01 U15 ( .a(n57), .b(n58), .c(n59), .d(n60), .o(sum[25]) );
  ao22f01 U16 ( .a(n61), .b(n62), .c(n63), .d(n64), .o(sum[24]) );
  ao22f01 U17 ( .a(n65), .b(n66), .c(n67), .d(n68), .o(sum[23]) );
  ao22f01 U18 ( .a(n69), .b(n70), .c(n71), .d(n72), .o(sum[22]) );
  ao22f01 U19 ( .a(n73), .b(n74), .c(n75), .d(n76), .o(sum[21]) );
  ao22f01 U20 ( .a(n77), .b(n78), .c(n79), .d(n80), .o(sum[20]) );
  ao22f01 U21 ( .a(n81), .b(n82), .c(n83), .d(n84), .o(sum[1]) );
  ao22f01 U22 ( .a(n85), .b(n86), .c(n87), .d(n88), .o(sum[19]) );
  ao22f01 U23 ( .a(n89), .b(n90), .c(n91), .d(n92), .o(sum[18]) );
  ao22f01 U24 ( .a(n93), .b(n94), .c(n95), .d(n96), .o(sum[17]) );
  ao22f01 U25 ( .a(n97), .b(n98), .c(n99), .d(co15), .o(sum[16]) );
  ao22f01 U26 ( .a(n100), .b(n101), .c(n102), .d(n103), .o(sum[15]) );
  ao22f01 U27 ( .a(n104), .b(n105), .c(n106), .d(n107), .o(sum[14]) );
  ao22f01 U28 ( .a(n108), .b(n109), .c(n110), .d(n111), .o(sum[13]) );
  ao22f01 U29 ( .a(n112), .b(n113), .c(n114), .d(n115), .o(sum[12]) );
  ao22f01 U30 ( .a(n116), .b(n117), .c(n118), .d(n119), .o(sum[11]) );
  ao22f01 U31 ( .a(n120), .b(n121), .c(n122), .d(n123), .o(sum[10]) );
  oa22f01 U32 ( .a(cin), .b(n124), .c(n125), .d(n126), .o(sum[0]) );
  oa22f01 U33 ( .a(n127), .b(n128), .c(n29), .d(n30), .o(cout) );
  in01f01 U34 ( .a(n31), .o(n30) );
  oa22f01 U35 ( .a(b[31]), .b(n128), .c(a[31]), .d(n127), .o(n31) );
  in01f01 U36 ( .a(n32), .o(n29) );
  oa22f01 U37 ( .a(n129), .b(n130), .c(n33), .d(n34), .o(n32) );
  in01f01 U38 ( .a(n35), .o(n34) );
  oa22f01 U39 ( .a(b[30]), .b(n130), .c(a[30]), .d(n129), .o(n35) );
  in01f01 U40 ( .a(n36), .o(n33) );
  oa22f01 U41 ( .a(n131), .b(n132), .c(n41), .d(n42), .o(n36) );
  in01f01 U42 ( .a(n43), .o(n42) );
  oa22f01 U43 ( .a(b[29]), .b(n132), .c(a[29]), .d(n131), .o(n43) );
  in01f01 U44 ( .a(n44), .o(n41) );
  oa22f01 U45 ( .a(n133), .b(n134), .c(n45), .d(n46), .o(n44) );
  in01f01 U46 ( .a(n47), .o(n46) );
  oa22f01 U47 ( .a(b[28]), .b(n134), .c(a[28]), .d(n133), .o(n47) );
  in01f01 U48 ( .a(n48), .o(n45) );
  oa22f01 U49 ( .a(n135), .b(n136), .c(n49), .d(n50), .o(n48) );
  in01f01 U50 ( .a(n51), .o(n50) );
  oa22f01 U51 ( .a(b[27]), .b(n136), .c(a[27]), .d(n135), .o(n51) );
  in01f01 U52 ( .a(n52), .o(n49) );
  oa22f01 U53 ( .a(n137), .b(n138), .c(n53), .d(n54), .o(n52) );
  in01f01 U54 ( .a(n55), .o(n54) );
  oa22f01 U55 ( .a(b[26]), .b(n138), .c(a[26]), .d(n137), .o(n55) );
  in01f01 U56 ( .a(n56), .o(n53) );
  oa22f01 U57 ( .a(n139), .b(n140), .c(n57), .d(n58), .o(n56) );
  in01f01 U58 ( .a(n59), .o(n58) );
  oa22f01 U59 ( .a(b[25]), .b(n140), .c(a[25]), .d(n139), .o(n59) );
  in01f01 U60 ( .a(n60), .o(n57) );
  oa22f01 U61 ( .a(n141), .b(n142), .c(n61), .d(n62), .o(n60) );
  in01f01 U62 ( .a(n63), .o(n62) );
  oa22f01 U63 ( .a(b[24]), .b(n142), .c(a[24]), .d(n141), .o(n63) );
  in01f01 U64 ( .a(n64), .o(n61) );
  oa22f01 U65 ( .a(n143), .b(n144), .c(n65), .d(n66), .o(n64) );
  in01f01 U66 ( .a(n67), .o(n66) );
  oa22f01 U67 ( .a(b[23]), .b(n144), .c(a[23]), .d(n143), .o(n67) );
  in01f01 U68 ( .a(n68), .o(n65) );
  oa22f01 U69 ( .a(n145), .b(n146), .c(n69), .d(n70), .o(n68) );
  in01f01 U70 ( .a(n71), .o(n70) );
  oa22f01 U71 ( .a(b[22]), .b(n146), .c(a[22]), .d(n145), .o(n71) );
  in01f01 U72 ( .a(n72), .o(n69) );
  oa22f01 U73 ( .a(n147), .b(n148), .c(n73), .d(n74), .o(n72) );
  in01f01 U74 ( .a(n75), .o(n74) );
  oa22f01 U75 ( .a(b[21]), .b(n148), .c(a[21]), .d(n147), .o(n75) );
  in01f01 U76 ( .a(n76), .o(n73) );
  oa22f01 U77 ( .a(n149), .b(n150), .c(n77), .d(n78), .o(n76) );
  in01f01 U78 ( .a(n79), .o(n78) );
  oa22f01 U79 ( .a(b[20]), .b(n150), .c(a[20]), .d(n149), .o(n79) );
  in01f01 U80 ( .a(n80), .o(n77) );
  oa22f01 U81 ( .a(n151), .b(n152), .c(n85), .d(n86), .o(n80) );
  in01f01 U82 ( .a(n87), .o(n86) );
  oa22f01 U83 ( .a(b[19]), .b(n152), .c(a[19]), .d(n151), .o(n87) );
  in01f01 U84 ( .a(n88), .o(n85) );
  oa22f01 U85 ( .a(n153), .b(n154), .c(n89), .d(n90), .o(n88) );
  in01f01 U86 ( .a(n91), .o(n90) );
  oa22f01 U87 ( .a(b[18]), .b(n154), .c(a[18]), .d(n153), .o(n91) );
  in01f01 U88 ( .a(n92), .o(n89) );
  oa22f01 U89 ( .a(n155), .b(n156), .c(n93), .d(n94), .o(n92) );
  in01f01 U90 ( .a(n95), .o(n94) );
  oa22f01 U91 ( .a(b[17]), .b(n156), .c(a[17]), .d(n155), .o(n95) );
  in01f01 U92 ( .a(n96), .o(n93) );
  oa22f01 U93 ( .a(n157), .b(n158), .c(n98), .d(n97), .o(n96) );
  in01f01 U94 ( .a(n99), .o(n97) );
  oa22f01 U95 ( .a(b[16]), .b(n158), .c(a[16]), .d(n157), .o(n99) );
  in01f01 U96 ( .a(co15), .o(n98) );
  in01f01 U97 ( .a(a[16]), .o(n158) );
  in01f01 U98 ( .a(b[16]), .o(n157) );
  in01f01 U99 ( .a(a[17]), .o(n156) );
  in01f01 U100 ( .a(b[17]), .o(n155) );
  in01f01 U101 ( .a(a[18]), .o(n154) );
  in01f01 U102 ( .a(b[18]), .o(n153) );
  in01f01 U103 ( .a(a[19]), .o(n152) );
  in01f01 U104 ( .a(b[19]), .o(n151) );
  in01f01 U105 ( .a(a[20]), .o(n150) );
  in01f01 U106 ( .a(b[20]), .o(n149) );
  in01f01 U107 ( .a(a[21]), .o(n148) );
  in01f01 U108 ( .a(b[21]), .o(n147) );
  in01f01 U109 ( .a(a[22]), .o(n146) );
  in01f01 U110 ( .a(b[22]), .o(n145) );
  in01f01 U111 ( .a(a[23]), .o(n144) );
  in01f01 U112 ( .a(b[23]), .o(n143) );
  in01f01 U113 ( .a(a[24]), .o(n142) );
  in01f01 U114 ( .a(b[24]), .o(n141) );
  in01f01 U115 ( .a(a[25]), .o(n140) );
  in01f01 U116 ( .a(b[25]), .o(n139) );
  in01f01 U117 ( .a(a[26]), .o(n138) );
  in01f01 U118 ( .a(b[26]), .o(n137) );
  in01f01 U119 ( .a(a[27]), .o(n136) );
  in01f01 U120 ( .a(b[27]), .o(n135) );
  in01f01 U121 ( .a(a[28]), .o(n134) );
  in01f01 U122 ( .a(b[28]), .o(n133) );
  in01f01 U123 ( .a(a[29]), .o(n132) );
  in01f01 U124 ( .a(b[29]), .o(n131) );
  in01f01 U125 ( .a(a[30]), .o(n130) );
  in01f01 U126 ( .a(b[30]), .o(n129) );
  in01f01 U127 ( .a(a[31]), .o(n128) );
  in01f01 U128 ( .a(b[31]), .o(n127) );
  oa22f01 U129 ( .a(n159), .b(n160), .c(n100), .d(n101), .o(co15) );
  in01f01 U130 ( .a(n102), .o(n101) );
  oa22f01 U131 ( .a(b[15]), .b(n160), .c(a[15]), .d(n159), .o(n102) );
  in01f01 U132 ( .a(n103), .o(n100) );
  oa22f01 U133 ( .a(n161), .b(n162), .c(n104), .d(n105), .o(n103) );
  in01f01 U134 ( .a(n106), .o(n105) );
  oa22f01 U135 ( .a(b[14]), .b(n162), .c(a[14]), .d(n161), .o(n106) );
  in01f01 U136 ( .a(n107), .o(n104) );
  oa22f01 U137 ( .a(n163), .b(n164), .c(n108), .d(n109), .o(n107) );
  in01f01 U138 ( .a(n110), .o(n109) );
  oa22f01 U139 ( .a(b[13]), .b(n164), .c(a[13]), .d(n163), .o(n110) );
  in01f01 U140 ( .a(n111), .o(n108) );
  oa22f01 U141 ( .a(n165), .b(n166), .c(n112), .d(n113), .o(n111) );
  in01f01 U142 ( .a(n114), .o(n113) );
  oa22f01 U143 ( .a(b[12]), .b(n166), .c(a[12]), .d(n165), .o(n114) );
  in01f01 U144 ( .a(n115), .o(n112) );
  oa22f01 U145 ( .a(n167), .b(n168), .c(n116), .d(n117), .o(n115) );
  in01f01 U146 ( .a(n118), .o(n117) );
  oa22f01 U147 ( .a(b[11]), .b(n168), .c(a[11]), .d(n167), .o(n118) );
  in01f01 U148 ( .a(n119), .o(n116) );
  oa22f01 U149 ( .a(n169), .b(n170), .c(n120), .d(n121), .o(n119) );
  in01f01 U150 ( .a(n122), .o(n121) );
  oa22f01 U151 ( .a(b[10]), .b(n170), .c(a[10]), .d(n169), .o(n122) );
  in01f01 U152 ( .a(n123), .o(n120) );
  oa22f01 U153 ( .a(n171), .b(n172), .c(n1), .d(n2), .o(n123) );
  in01f01 U154 ( .a(n3), .o(n2) );
  oa22f01 U155 ( .a(b[9]), .b(n172), .c(a[9]), .d(n171), .o(n3) );
  in01f01 U156 ( .a(n4), .o(n1) );
  oa22f01 U157 ( .a(n173), .b(n174), .c(n5), .d(n6), .o(n4) );
  in01f01 U158 ( .a(n7), .o(n6) );
  oa22f01 U159 ( .a(b[8]), .b(n174), .c(a[8]), .d(n173), .o(n7) );
  in01f01 U160 ( .a(n8), .o(n5) );
  oa22f01 U161 ( .a(n175), .b(n176), .c(n9), .d(n10), .o(n8) );
  in01f01 U162 ( .a(n11), .o(n10) );
  oa22f01 U163 ( .a(b[7]), .b(n176), .c(a[7]), .d(n175), .o(n11) );
  in01f01 U164 ( .a(n12), .o(n9) );
  oa22f01 U165 ( .a(n177), .b(n178), .c(n13), .d(n14), .o(n12) );
  in01f01 U166 ( .a(n15), .o(n14) );
  oa22f01 U167 ( .a(b[6]), .b(n178), .c(a[6]), .d(n177), .o(n15) );
  in01f01 U168 ( .a(n16), .o(n13) );
  oa22f01 U169 ( .a(n179), .b(n180), .c(n17), .d(n18), .o(n16) );
  in01f01 U170 ( .a(n19), .o(n18) );
  oa22f01 U171 ( .a(b[5]), .b(n180), .c(a[5]), .d(n179), .o(n19) );
  in01f01 U172 ( .a(n20), .o(n17) );
  oa22f01 U173 ( .a(n181), .b(n182), .c(n21), .d(n22), .o(n20) );
  in01f01 U174 ( .a(n23), .o(n22) );
  oa22f01 U175 ( .a(b[4]), .b(n182), .c(a[4]), .d(n181), .o(n23) );
  in01f01 U176 ( .a(n24), .o(n21) );
  oa22f01 U177 ( .a(n183), .b(n184), .c(n25), .d(n26), .o(n24) );
  in01f01 U178 ( .a(n27), .o(n26) );
  oa22f01 U179 ( .a(b[3]), .b(n184), .c(a[3]), .d(n183), .o(n27) );
  in01f01 U180 ( .a(n28), .o(n25) );
  oa22f01 U181 ( .a(n185), .b(n186), .c(n37), .d(n38), .o(n28) );
  in01f01 U182 ( .a(n39), .o(n38) );
  oa22f01 U183 ( .a(b[2]), .b(n186), .c(a[2]), .d(n185), .o(n39) );
  in01f01 U184 ( .a(n40), .o(n37) );
  oa22f01 U185 ( .a(n187), .b(n188), .c(n81), .d(n82), .o(n40) );
  in01f01 U186 ( .a(n83), .o(n82) );
  oa22f01 U187 ( .a(b[1]), .b(n188), .c(a[1]), .d(n187), .o(n83) );
  in01f01 U188 ( .a(n84), .o(n81) );
  oa22f01 U189 ( .a(n124), .b(n125), .c(n189), .d(n190), .o(n84) );
  in01f01 U190 ( .a(cin), .o(n125) );
  in01f01 U191 ( .a(n126), .o(n124) );
  oa22f01 U192 ( .a(b[0]), .b(n189), .c(a[0]), .d(n190), .o(n126) );
  in01f01 U193 ( .a(b[0]), .o(n190) );
  in01f01 U194 ( .a(a[0]), .o(n189) );
  in01f01 U195 ( .a(a[1]), .o(n188) );
  in01f01 U196 ( .a(b[1]), .o(n187) );
  in01f01 U197 ( .a(a[2]), .o(n186) );
  in01f01 U198 ( .a(b[2]), .o(n185) );
  in01f01 U199 ( .a(a[3]), .o(n184) );
  in01f01 U200 ( .a(b[3]), .o(n183) );
  in01f01 U201 ( .a(a[4]), .o(n182) );
  in01f01 U202 ( .a(b[4]), .o(n181) );
  in01f01 U203 ( .a(a[5]), .o(n180) );
  in01f01 U204 ( .a(b[5]), .o(n179) );
  in01f01 U205 ( .a(a[6]), .o(n178) );
  in01f01 U206 ( .a(b[6]), .o(n177) );
  in01f01 U207 ( .a(a[7]), .o(n176) );
  in01f01 U208 ( .a(b[7]), .o(n175) );
  in01f01 U209 ( .a(a[8]), .o(n174) );
  in01f01 U210 ( .a(b[8]), .o(n173) );
  in01f01 U211 ( .a(a[9]), .o(n172) );
  in01f01 U212 ( .a(b[9]), .o(n171) );
  in01f01 U213 ( .a(a[10]), .o(n170) );
  in01f01 U214 ( .a(b[10]), .o(n169) );
  in01f01 U215 ( .a(a[11]), .o(n168) );
  in01f01 U216 ( .a(b[11]), .o(n167) );
  in01f01 U217 ( .a(a[12]), .o(n166) );
  in01f01 U218 ( .a(b[12]), .o(n165) );
  in01f01 U219 ( .a(a[13]), .o(n164) );
  in01f01 U220 ( .a(b[13]), .o(n163) );
  in01f01 U221 ( .a(a[14]), .o(n162) );
  in01f01 U222 ( .a(b[14]), .o(n161) );
  in01f01 U223 ( .a(a[15]), .o(n160) );
  in01f01 U224 ( .a(b[15]), .o(n159) );
endmodule

