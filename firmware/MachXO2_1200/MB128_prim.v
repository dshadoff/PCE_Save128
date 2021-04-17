// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Mon Apr 12 00:06:00 2021
//
// Verilog Description of module MB128
//

module MB128 (pin1, pin2, pin3_sn, pin4_mosi, pin5, pin6, pin7_done, 
            pin8_pgmn, pin9_jtgnb, pin10_sda, pin11_scl, pin16, pin17, 
            pin18_cs, pin19_sclk, pin20_miso, pin21, pin22) /* synthesis syn_module_defined=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(1[8:13])
    output pin1 /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(2[9:13])
    output pin2 /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(3[9:13])
    output pin3_sn /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(4[9:16])
    output pin4_mosi /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(5[9:18])
    output pin5 /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(6[9:13])
    output pin6 /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(7[9:13])
    output pin7_done /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(8[9:18])
    output pin8_pgmn /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(9[9:18])
    output pin9_jtgnb /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(10[9:19])
    output pin10_sda /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(11[9:18])
    output pin11_scl /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(12[9:18])
    output pin16 /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(17[9:14])
    input pin17;   // c:/devel/diamond/pce_save128/firmware/save128.v(18[14:19])
    output pin18_cs /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(19[9:17])
    output pin19_sclk /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(20[9:19])
    input pin20_miso;   // c:/devel/diamond/pce_save128/firmware/save128.v(21[14:24])
    output pin21 /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(22[9:14])
    output pin22 /* synthesis .original_dir=IN_OUT */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(23[9:14])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(49[8:11])
    
    wire GND_net, VCC_net, pin1_c_23, pin2_c, pin3_sn_c, pin4_mosi_c, 
        pin5_c, pin6_c, pin7_done_c, pin8_pgmn_c, pin9_jtgnb_c, pin10_sda_c, 
        pin11_scl_c, pin17_c, pin18_cs_c, pin19_sclk_c, pin20_miso_c, 
        pin21_c, pin22_c;
    wire [5:0]cmd_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(60[14:21])
    wire [4:0]rw_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(61[14:20])
    wire [31:0]cmd_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(62[14:21])
    
    wire sp_go;
    wire [23:0]spi_uberclock;   // c:/devel/diamond/pce_save128/firmware/save128.v(68[14:27])
    
    wire init, n1497, sp_end_desel, sp_miso, n2106, n34, n2096, 
        n2105, n1528, n10;
    wire [5:0]cmd_len_5__N_218;
    
    wire n10_adj_1, wr_buf_7__N_79, n32, pin21_N_314, clk_enable_48, 
        n1902, clk_enable_34, clk_enable_51, pin22_N_319, n6, n1485, 
        n1010, clk_enable_12, n259, n2185, n269, clk_enable_53, 
        n2184, n2183, sp_active_N_63, clk_enable_58, clk_enable_54, 
        n6_adj_2, n40, clk_enable_15, n28, clk_enable_21, n27, pin18_cs_N_299, 
        pin22_N_316;
    wire [31:0]cmd_buf_31__N_12;
    
    wire clk_enable_3, n2182, n2181;
    wire [5:0]cmd_len_5__N_1;
    wire [4:0]rw_len_4__N_7;
    
    wire n38, n2008, n2007, n2006, n2180, n1281, n2179, n1277, 
        n1275, n2178, n2005, n774, n2004, n1271, n1269, n1267, 
        n1505, n102, n103, n104, n105, n106, n107, n108, n109, 
        n110, n111, n112, n113, n114, n115, n116, n117, n118, 
        n119, n120, n121, n122, n123, n124, n125, n1501, n2177, 
        n2116, n2003, n2002, n2001, n2000, clk_enable_6, n1999, 
        n1998, clk_enable_55, n1997, n36, n2216, n24, n2175, n2174, 
        n2173;
    
    VHI i2 (.Z(VCC_net));
    FD1P3IX rd_buf_5__266 (.D(pin7_done_c), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin6_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_5__266.GSR = "ENABLED";
    FD1P3IX rd_buf_6__265 (.D(pin6_c), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin5_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_6__265.GSR = "ENABLED";
    FD1P3AX sp_active_277 (.D(sp_active_N_63), .SP(clk_enable_3), .CK(clk), 
            .Q(pin22_N_319)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_active_277.GSR = "ENABLED";
    OSCH internal_oscillator_inst (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam internal_oscillator_inst.NOM_FREQ = "53.20";
    FD1P3IX rd_buf_7__264 (.D(pin5_c), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin4_mosi_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_7__264.GSR = "ENABLED";
    LUT4 i525_2_lut_rep_13_3_lut (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n2182)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[17:31])
    defparam i525_2_lut_rep_13_3_lut.init = 16'hfefe;
    OB pin1_pad (.I(pin1_c_23), .O(pin1));   // c:/devel/diamond/pce_save128/firmware/save128.v(2[9:13])
    FD1S3AX sp_phase_i1 (.D(spi_uberclock[21]), .CK(clk), .Q(pin3_sn_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_phase_i1.GSR = "ENABLED";
    LUT4 spi_uberclock_10__I_0_2_lut_rep_17 (.A(spi_uberclock[10]), .B(init), 
         .Z(clk_enable_12)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(88[7:33])
    defparam spi_uberclock_10__I_0_2_lut_rep_17.init = 16'h2222;
    FD1P3IX cmd_buf_i0 (.D(n2216), .SP(cmd_len_5__N_218[3]), .CD(n2173), 
            .CK(clk), .Q(cmd_buf[0])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i0.GSR = "ENABLED";
    FD1P3AX sp_end_desel_262 (.D(n2216), .SP(clk_enable_6), .CK(clk), 
            .Q(sp_end_desel)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_end_desel_262.GSR = "ENABLED";
    FD1P3IX sp_go_263 (.D(n2216), .SP(clk_enable_6), .CD(n2105), .CK(clk), 
            .Q(sp_go)) /* synthesis lse_init_val=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_go_263.GSR = "ENABLED";
    LUT4 i1734_4_lut (.A(clk_enable_12), .B(n2175), .C(pin22_N_319), .D(sp_end_desel), 
         .Z(clk_enable_34)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;
    defparam i1734_4_lut.init = 16'heaee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2178), .B(n2183), .C(cmd_len_5__N_218[3]), 
         .D(n2179), .Z(clk_enable_48)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_1 (.A(spi_uberclock[10]), .B(init), .C(n774), 
         .D(cmd_len_5__N_218[3]), .Z(clk_enable_53)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(88[7:33])
    defparam i1_2_lut_3_lut_4_lut_adj_1.init = 16'hfff2;
    FD1S3AX sp_miso_274 (.D(pin20_miso_c), .CK(clk), .Q(sp_miso)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_miso_274.GSR = "ENABLED";
    LUT4 i1115_2_lut_3_lut_4_lut (.A(spi_uberclock[10]), .B(init), .C(n774), 
         .D(cmd_len_5__N_218[3]), .Z(n1497)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(88[7:33])
    defparam i1115_2_lut_3_lut_4_lut.init = 16'h0f02;
    FD1P3AX cmd_len_i3 (.D(cmd_len_5__N_1[3]), .SP(clk_enable_53), .CK(clk), 
            .Q(cmd_len[3])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_len_i3.GSR = "ENABLED";
    FD1P3AY cmd_len_i5 (.D(cmd_len_5__N_1[5]), .SP(clk_enable_53), .CK(clk), 
            .Q(cmd_len[5])) /* synthesis lse_init_val=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_len_i5.GSR = "ENABLED";
    FD1P3AY rw_len_i3 (.D(rw_len_4__N_7[3]), .SP(clk_enable_51), .CK(clk), 
            .Q(rw_len[3])) /* synthesis lse_init_val=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rw_len_i3.GSR = "ENABLED";
    LUT4 mux_74_i25_3_lut_4_lut (.A(n2179), .B(n2175), .C(cmd_buf[23]), 
         .D(cmd_len_5__N_218[3]), .Z(cmd_buf_31__N_12[24])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[3] 235[8])
    defparam mux_74_i25_3_lut_4_lut.init = 16'hf780;
    LUT4 i1740_2_lut_2_lut_3_lut_4_lut (.A(n2178), .B(n2183), .C(cmd_len_5__N_218[3]), 
         .D(n2179), .Z(n1505)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i1740_2_lut_2_lut_3_lut_4_lut.init = 16'hd0f0;
    LUT4 i1731_4_lut (.A(n2096), .B(rw_len[0]), .C(n2106), .D(n6_adj_2), 
         .Z(sp_active_N_63)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(75[7:16])
    defparam i1731_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n1277)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i510_1_lut (.A(cmd_len[0]), .Z(n259)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[17:31])
    defparam i510_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_2 (.A(rw_len[1]), .B(rw_len[0]), .Z(n1271)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'h9999;
    FD1P3AY cmd_buf_i24 (.D(cmd_buf_31__N_12[24]), .SP(clk_enable_21), .CK(clk), 
            .Q(cmd_buf[24])) /* synthesis lse_init_val=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i24.GSR = "ENABLED";
    LUT4 mux_74_i27_3_lut_4_lut (.A(n2179), .B(n2175), .C(cmd_buf[25]), 
         .D(cmd_len_5__N_218[3]), .Z(cmd_buf_31__N_12[26])) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[3] 235[8])
    defparam mux_74_i27_3_lut_4_lut.init = 16'h80f7;
    FD1P3AX cmd_buf_i26 (.D(cmd_buf_31__N_12[26]), .SP(clk_enable_21), .CK(clk), 
            .Q(cmd_buf[26])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i26.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_3 (.A(cmd_len_5__N_218[3]), .B(n2174), .Z(clk_enable_58)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'heeee;
    LUT4 i763_2_lut_rep_7_3_lut (.A(spi_uberclock[10]), .B(init), .C(cmd_len_5__N_218[3]), 
         .Z(clk_enable_6)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(88[7:33])
    defparam i763_2_lut_rep_7_3_lut.init = 16'hf2f2;
    FD1S3AX spi_uberclock_449__i0 (.D(n125), .CK(clk), .Q(spi_uberclock[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i0.GSR = "ENABLED";
    LUT4 i1713_2_lut (.A(rw_len[2]), .B(rw_len[4]), .Z(n2106)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1713_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(spi_uberclock[10]), .B(init), .C(n2174), 
         .D(cmd_len_5__N_218[3]), .Z(clk_enable_51)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(88[7:33])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'hfff2;
    FD1P3AX init_249 (.D(n2216), .SP(clk_enable_12), .CK(clk), .Q(init)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam init_249.GSR = "ENABLED";
    LUT4 i1101_2_lut_3_lut_4_lut (.A(spi_uberclock[10]), .B(init), .C(n2174), 
         .D(cmd_len_5__N_218[3]), .Z(n1501)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(88[7:33])
    defparam i1101_2_lut_3_lut_4_lut.init = 16'h0f02;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(pin3_sn_c), .B(n2178), .C(sp_go), 
         .D(pin2_c), .Z(n2105)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h8000;
    LUT4 i1_2_lut_rep_9 (.A(init), .B(n1902), .Z(n2178)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_9.init = 16'h2222;
    LUT4 i2_4_lut (.A(n2175), .B(wr_buf_7__N_79), .C(pin22_N_319), .D(n2180), 
         .Z(clk_enable_54)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1719_4_lut (.A(clk_enable_12), .B(sp_end_desel), .C(n2175), 
         .D(pin22_N_319), .Z(clk_enable_55)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1719_4_lut.init = 16'hfaea;
    LUT4 i1496_2_lut_3_lut_4_lut (.A(init), .B(n1902), .C(pin22_N_319), 
         .D(n2183), .Z(pin22_N_316)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1496_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i1495_4_lut (.A(clk_enable_12), .B(n2175), .C(pin22_N_319), .D(sp_end_desel), 
         .Z(pin18_cs_N_299)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i1495_4_lut.init = 16'h3f3b;
    LUT4 i1_2_lut_adj_6 (.A(rw_len[3]), .B(rw_len[1]), .Z(n6_adj_2)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'heeee;
    FD1S3AX spi_uberclock_449__i23 (.D(n102), .CK(clk), .Q(pin1_c_23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i23.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(init), .B(n1902), .C(pin22_N_319), 
         .D(pin3_sn_c), .Z(clk_enable_15)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h2000;
    LUT4 i1_2_lut_rep_8_3_lut (.A(init), .B(n1902), .C(pin3_sn_c), .Z(n2177)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_8_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_4_3_lut_4_lut (.A(init), .B(n1902), .C(n2179), .D(n2183), 
         .Z(n2173)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_4_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut (.A(init), .B(n1902), .C(wr_buf_7__N_79), .Z(n6)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1723_3_lut_4_lut (.A(pin22_N_319), .B(n2180), .C(pin2_c), .D(pin3_sn_c), 
         .Z(n2116)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(201[9:35])
    defparam i1723_3_lut_4_lut.init = 16'hff8f;
    LUT4 i20_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(n1902)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(spi_uberclock[14]), .B(spi_uberclock[13]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_rep_5 (.A(n2183), .B(n2096), .C(n2116), .D(n6), .Z(n2174)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[14:57])
    defparam i4_4_lut_rep_5.init = 16'h0800;
    CCU2D spi_uberclock_449_add_4_25 (.A0(pin1_c_23), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2008), .S0(n102));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_25.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_25.INIT1 = 16'h0000;
    defparam spi_uberclock_449_add_4_25.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_25.INJECT1_1 = "NO";
    LUT4 i19_4_lut (.A(spi_uberclock[16]), .B(n38), .C(n32), .D(spi_uberclock[11]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    CCU2D spi_uberclock_449_add_4_23 (.A0(spi_uberclock[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2007), .COUT(n2008), .S0(n104), 
          .S1(n103));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_23.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_23.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_23.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_23.INJECT1_1 = "NO";
    FD1P3IX rw_len_i0 (.D(n269), .SP(clk_enable_51), .CD(n1501), .CK(clk), 
            .Q(rw_len[0])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rw_len_i0.GSR = "ENABLED";
    CCU2D spi_uberclock_449_add_4_21 (.A0(spi_uberclock[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2006), .COUT(n2007), .S0(n106), 
          .S1(n105));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_21.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_21.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_21.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_21.INJECT1_1 = "NO";
    LUT4 mux_117_i4_4_lut (.A(cmd_len_5__N_218[3]), .B(cmd_len[3]), .C(n774), 
         .D(n2182), .Z(cmd_len_5__N_1[3])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[10] 210[10])
    defparam mux_117_i4_4_lut.init = 16'hc535;
    CCU2D spi_uberclock_449_add_4_19 (.A0(spi_uberclock[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2005), .COUT(n2006), .S0(n108), 
          .S1(n107));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_19.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_19.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_19.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_19.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(n2179), .B(pin3_sn_c), .C(n2178), .D(pin2_c), 
         .Z(n774)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[3] 235[8])
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i5_3_lut_rep_11 (.A(cmd_len[3]), .B(n10), .C(cmd_len[4]), .Z(n2180)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[27:41])
    defparam i5_3_lut_rep_11.init = 16'hfefe;
    CCU2D spi_uberclock_449_add_4_17 (.A0(spi_uberclock[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2004), .COUT(n2005), .S0(n110), 
          .S1(n109));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_17.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_17.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_17.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_17.INJECT1_1 = "NO";
    OB pin2_pad (.I(pin2_c), .O(pin2));   // c:/devel/diamond/pce_save128/firmware/save128.v(3[9:13])
    CCU2D spi_uberclock_449_add_4_15 (.A0(spi_uberclock[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2003), .COUT(n2004), .S0(n112), 
          .S1(n111));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_15.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_15.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_15.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_15.INJECT1_1 = "NO";
    FD1S3AX spi_uberclock_449__i22 (.D(n103), .CK(clk), .Q(spi_uberclock[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i22.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i21 (.D(n104), .CK(clk), .Q(spi_uberclock[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i21.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i20 (.D(n105), .CK(clk), .Q(spi_uberclock[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i20.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i19 (.D(n106), .CK(clk), .Q(spi_uberclock[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i19.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i18 (.D(n107), .CK(clk), .Q(spi_uberclock[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i18.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i17 (.D(n108), .CK(clk), .Q(spi_uberclock[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i17.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i16 (.D(n109), .CK(clk), .Q(spi_uberclock[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i16.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i15 (.D(n110), .CK(clk), .Q(spi_uberclock[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i15.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i14 (.D(n111), .CK(clk), .Q(spi_uberclock[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i14.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i13 (.D(n112), .CK(clk), .Q(spi_uberclock[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i13.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i12 (.D(n113), .CK(clk), .Q(spi_uberclock[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i12.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i11 (.D(n114), .CK(clk), .Q(spi_uberclock[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i11.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i10 (.D(n115), .CK(clk), .Q(spi_uberclock[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i10.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i9 (.D(n116), .CK(clk), .Q(spi_uberclock[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i9.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i8 (.D(n117), .CK(clk), .Q(spi_uberclock[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i8.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i7 (.D(n118), .CK(clk), .Q(spi_uberclock[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i7.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i6 (.D(n119), .CK(clk), .Q(spi_uberclock[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i6.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i5 (.D(n120), .CK(clk), .Q(spi_uberclock[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i5.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i4 (.D(n121), .CK(clk), .Q(spi_uberclock[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i4.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i3 (.D(n122), .CK(clk), .Q(spi_uberclock[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i3.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i2 (.D(n123), .CK(clk), .Q(spi_uberclock[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i2.GSR = "ENABLED";
    FD1S3AX spi_uberclock_449__i1 (.D(n124), .CK(clk), .Q(spi_uberclock[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449__i1.GSR = "ENABLED";
    FD1S3AX sp_phase_i2 (.D(spi_uberclock[22]), .CK(clk), .Q(pin2_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_phase_i2.GSR = "ENABLED";
    FD1P3IX rd_buf_3__268 (.D(pin9_jtgnb_c), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin8_pgmn_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_3__268.GSR = "ENABLED";
    LUT4 mux_117_i6_4_lut (.A(cmd_len_5__N_218[3]), .B(cmd_len[5]), .C(n774), 
         .D(n10_adj_1), .Z(cmd_len_5__N_1[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[10] 210[10])
    defparam mux_117_i6_4_lut.init = 16'hca3a;
    FD1P3AX sp_clk_276 (.D(n1010), .SP(clk_enable_15), .CK(clk), .Q(pin19_sclk_c));   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_clk_276.GSR = "ENABLED";
    FD1P3IX cmd_buf_i31 (.D(cmd_buf[30]), .SP(clk_enable_21), .CD(n1528), 
            .CK(clk), .Q(cmd_buf[31])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i31.GSR = "ENABLED";
    FD1P3IX cmd_buf_i30 (.D(cmd_buf[29]), .SP(clk_enable_21), .CD(n1528), 
            .CK(clk), .Q(cmd_buf[30])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i30.GSR = "ENABLED";
    FD1P3IX cmd_buf_i29 (.D(cmd_buf[28]), .SP(clk_enable_21), .CD(n1528), 
            .CK(clk), .Q(cmd_buf[29])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i29.GSR = "ENABLED";
    FD1P3IX cmd_buf_i28 (.D(cmd_buf[27]), .SP(clk_enable_21), .CD(n1528), 
            .CK(clk), .Q(cmd_buf[28])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i28.GSR = "ENABLED";
    FD1P3IX cmd_buf_i27 (.D(cmd_buf[26]), .SP(clk_enable_21), .CD(n1528), 
            .CK(clk), .Q(cmd_buf[27])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i27.GSR = "ENABLED";
    FD1P3JX cmd_buf_i25 (.D(cmd_buf[24]), .SP(clk_enable_21), .PD(n1528), 
            .CK(clk), .Q(cmd_buf[25])) /* synthesis lse_init_val=1 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i25.GSR = "ENABLED";
    FD1P3IX rd_buf_4__267 (.D(pin8_pgmn_c), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin7_done_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_4__267.GSR = "ENABLED";
    FD1P3IX cmd_buf_i23 (.D(cmd_buf[22]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[23])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i23.GSR = "ENABLED";
    FD1P3IX cmd_buf_i22 (.D(cmd_buf[21]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[22])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i22.GSR = "ENABLED";
    FD1P3IX cmd_buf_i21 (.D(cmd_buf[20]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[21])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i21.GSR = "ENABLED";
    FD1P3IX cmd_buf_i20 (.D(cmd_buf[19]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[20])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i20.GSR = "ENABLED";
    FD1P3IX cmd_buf_i19 (.D(cmd_buf[18]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[19])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i19.GSR = "ENABLED";
    FD1P3IX cmd_buf_i18 (.D(cmd_buf[17]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[18])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i18.GSR = "ENABLED";
    FD1P3IX cmd_buf_i17 (.D(cmd_buf[16]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[17])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i17.GSR = "ENABLED";
    FD1P3IX cmd_buf_i16 (.D(cmd_buf[15]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[16])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i16.GSR = "ENABLED";
    FD1P3IX cmd_buf_i15 (.D(cmd_buf[14]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[15])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i15.GSR = "ENABLED";
    OB pin3_sn_pad (.I(pin3_sn_c), .O(pin3_sn));   // c:/devel/diamond/pce_save128/firmware/save128.v(4[9:16])
    OB pin4_mosi_pad (.I(pin4_mosi_c), .O(pin4_mosi));   // c:/devel/diamond/pce_save128/firmware/save128.v(5[9:18])
    OB pin5_pad (.I(pin5_c), .O(pin5));   // c:/devel/diamond/pce_save128/firmware/save128.v(6[9:13])
    OB pin6_pad (.I(pin6_c), .O(pin6));   // c:/devel/diamond/pce_save128/firmware/save128.v(7[9:13])
    OB pin7_done_pad (.I(pin7_done_c), .O(pin7_done));   // c:/devel/diamond/pce_save128/firmware/save128.v(8[9:18])
    OB pin8_pgmn_pad (.I(pin8_pgmn_c), .O(pin8_pgmn));   // c:/devel/diamond/pce_save128/firmware/save128.v(9[9:18])
    OB pin9_jtgnb_pad (.I(pin9_jtgnb_c), .O(pin9_jtgnb));   // c:/devel/diamond/pce_save128/firmware/save128.v(10[9:19])
    OB pin10_sda_pad (.I(pin10_sda_c), .O(pin10_sda));   // c:/devel/diamond/pce_save128/firmware/save128.v(11[9:18])
    OB pin11_scl_pad (.I(pin11_scl_c), .O(pin11_scl));   // c:/devel/diamond/pce_save128/firmware/save128.v(12[9:18])
    OBZ pin16_pad (.I(GND_net), .T(VCC_net), .O(pin16));   // c:/devel/diamond/pce_save128/firmware/save128.v(41[10:15])
    OB pin18_cs_pad (.I(pin18_cs_c), .O(pin18_cs));   // c:/devel/diamond/pce_save128/firmware/save128.v(19[9:17])
    OB pin19_sclk_pad (.I(pin19_sclk_c), .O(pin19_sclk));   // c:/devel/diamond/pce_save128/firmware/save128.v(20[9:19])
    OB pin21_pad (.I(pin21_c), .O(pin21));   // c:/devel/diamond/pce_save128/firmware/save128.v(22[9:14])
    OB pin22_pad (.I(pin22_c), .O(pin22));   // c:/devel/diamond/pce_save128/firmware/save128.v(23[9:14])
    IB pin17_pad (.I(pin17), .O(pin17_c));   // c:/devel/diamond/pce_save128/firmware/save128.v(18[14:19])
    IB pin20_miso_pad (.I(pin20_miso), .O(pin20_miso_c));   // c:/devel/diamond/pce_save128/firmware/save128.v(21[14:24])
    FD1P3IX cmd_buf_i14 (.D(cmd_buf[13]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[14])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i14.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(spi_uberclock[0]), .B(spi_uberclock[8]), .C(spi_uberclock[20]), 
         .D(spi_uberclock[12]), .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    FD1P3IX cmd_buf_i13 (.D(cmd_buf[12]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[13])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i13.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(pin2_c), .B(n2177), .C(sp_active_N_63), .D(sp_go), 
         .Z(clk_enable_3)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8808;
    CCU2D spi_uberclock_449_add_4_13 (.A0(spi_uberclock[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2002), .COUT(n2003), .S0(n114), 
          .S1(n113));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_13.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_13.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_13.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_13.INJECT1_1 = "NO";
    LUT4 i7_2_lut (.A(spi_uberclock[1]), .B(spi_uberclock[2]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    FD1P3AX sp_hold_n_248 (.D(pin22_N_316), .SP(clk_enable_34), .CK(clk), 
            .Q(pin22_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_hold_n_248.GSR = "ENABLED";
    CCU2D spi_uberclock_449_add_4_11 (.A0(spi_uberclock[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2001), .COUT(n2002), .S0(n116), 
          .S1(n115));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_11.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_11.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_11.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_11.INJECT1_1 = "NO";
    LUT4 i1463_2_lut_4_lut (.A(cmd_len[3]), .B(n10), .C(cmd_len[4]), .D(cmd_buf[31]), 
         .Z(pin21_N_314)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[27:41])
    defparam i1463_2_lut_4_lut.init = 16'hfe00;
    LUT4 mux_116_i4_4_lut (.A(cmd_len_5__N_218[3]), .B(rw_len[3]), .C(n2174), 
         .D(n2181), .Z(rw_len_4__N_7[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[10] 210[10])
    defparam mux_116_i4_4_lut.init = 16'hca3a;
    LUT4 sp_active_I_0_2_lut_rep_10_4_lut (.A(cmd_len[3]), .B(n10), .C(cmd_len[4]), 
         .D(pin22_N_319), .Z(n2179)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[27:41])
    defparam sp_active_I_0_2_lut_rep_10_4_lut.init = 16'hfe00;
    CCU2D spi_uberclock_449_add_4_9 (.A0(spi_uberclock[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2000), .COUT(n2001), .S0(n118), 
          .S1(n117));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_9.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_9.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_9.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(cmd_len[3]), .B(n10), .C(cmd_len[4]), .D(pin22_N_319), 
         .Z(n2096)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[27:41])
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i17_4_lut (.A(spi_uberclock[9]), .B(n34), .C(n24), .D(spi_uberclock[17]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_8 (.A(rw_len[2]), .B(n2184), .C(rw_len[3]), 
         .D(rw_len[4]), .Z(n1267)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:34])
    defparam i1_3_lut_4_lut_adj_8.init = 16'hfe01;
    FD1P3IX cmd_buf_i12 (.D(cmd_buf[11]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[12])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i12.GSR = "ENABLED";
    LUT4 i1148_2_lut_3_lut_4_lut (.A(n2178), .B(n2183), .C(clk_enable_6), 
         .D(n2179), .Z(n1528)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i1148_2_lut_3_lut_4_lut.init = 16'hd0f0;
    FD1P3IX cmd_len_i1 (.D(n1277), .SP(clk_enable_53), .CD(n1497), .CK(clk), 
            .Q(cmd_len[1])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_len_i1.GSR = "ENABLED";
    FD1P3IX cmd_buf_i11 (.D(cmd_buf[10]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[11])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i11.GSR = "ENABLED";
    FD1P3IX cmd_buf_i10 (.D(cmd_buf[9]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[10])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i10.GSR = "ENABLED";
    FD1P3IX cmd_buf_i9 (.D(cmd_buf[8]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[9])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i9.GSR = "ENABLED";
    FD1P3IX cmd_buf_i8 (.D(cmd_buf[7]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[8])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i8.GSR = "ENABLED";
    FD1P3IX cmd_buf_i7 (.D(cmd_buf[6]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[7])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i7.GSR = "ENABLED";
    FD1P3IX cmd_buf_i6 (.D(cmd_buf[5]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[6])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i6.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(rw_len[2]), .B(rw_len[4]), .C(rw_len[0]), .D(n6_adj_2), 
         .Z(wr_buf_7__N_79)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(cmd_len[2]), .B(n2185), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n1281)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'hf0e1;
    FD1P3IX cmd_buf_i5 (.D(cmd_buf[4]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[5])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i5.GSR = "ENABLED";
    FD1P3IX cmd_buf_i4 (.D(cmd_buf[3]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[4])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i4.GSR = "ENABLED";
    FD1P3IX cmd_buf_i3 (.D(cmd_buf[2]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[3])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i3.GSR = "ENABLED";
    FD1P3IX cmd_len_i0 (.D(n259), .SP(clk_enable_53), .CD(n1497), .CK(clk), 
            .Q(cmd_len[0])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_len_i0.GSR = "ENABLED";
    FD1P3IX cmd_buf_i2 (.D(cmd_buf[1]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[2])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i2.GSR = "ENABLED";
    LUT4 i541_2_lut_3_lut_4_lut (.A(cmd_len[2]), .B(n2185), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n10_adj_1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[17:31])
    defparam i541_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i11_3_lut (.A(spi_uberclock[6]), .B(spi_uberclock[3]), .C(spi_uberclock[18]), 
         .Z(n32)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i11_3_lut.init = 16'hfefe;
    FD1P3IX cmd_buf_i1 (.D(cmd_buf[0]), .SP(clk_enable_48), .CD(n1505), 
            .CK(clk), .Q(cmd_buf[1])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_buf_i1.GSR = "ENABLED";
    LUT4 pin2_I_0_i3_2_lut_rep_14 (.A(pin3_sn_c), .B(pin2_c), .Z(n2183)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(140[8:25])
    defparam pin2_I_0_i3_2_lut_rep_14.init = 16'heeee;
    LUT4 i13_4_lut (.A(spi_uberclock[10]), .B(spi_uberclock[4]), .C(spi_uberclock[15]), 
         .D(spi_uberclock[7]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_6_3_lut_4_lut (.A(pin3_sn_c), .B(pin2_c), .C(n1902), 
         .D(init), .Z(n2175)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(140[8:25])
    defparam i1_2_lut_rep_6_3_lut_4_lut.init = 16'h0100;
    FD1P3IX rw_len_i4 (.D(n1267), .SP(clk_enable_51), .CD(n1501), .CK(clk), 
            .Q(rw_len[4])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rw_len_i4.GSR = "ENABLED";
    LUT4 i477_2_lut_rep_15 (.A(rw_len[1]), .B(rw_len[0]), .Z(n2184)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:34])
    defparam i477_2_lut_rep_15.init = 16'heeee;
    FD1P3IX rw_len_i2 (.D(n1269), .SP(clk_enable_51), .CD(n1501), .CK(clk), 
            .Q(rw_len[2])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rw_len_i2.GSR = "ENABLED";
    LUT4 i3_2_lut (.A(spi_uberclock[19]), .B(spi_uberclock[5]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_adj_10 (.A(cmd_len[2]), .B(cmd_len[5]), .C(cmd_len[0]), 
         .D(cmd_len[1]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(205[27:41])
    defparam i4_4_lut_adj_10.init = 16'hfffe;
    FD1P3IX rw_len_i1 (.D(n1271), .SP(clk_enable_51), .CD(n1501), .CK(clk), 
            .Q(rw_len[1])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rw_len_i1.GSR = "ENABLED";
    FD1P3IX cmd_len_i4 (.D(n1281), .SP(clk_enable_53), .CD(n1497), .CK(clk), 
            .Q(cmd_len[4])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_len_i4.GSR = "ENABLED";
    FD1P3IX cmd_len_i2 (.D(n1275), .SP(clk_enable_53), .CD(n1497), .CK(clk), 
            .Q(cmd_len[2])) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam cmd_len_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_11 (.A(rw_len[1]), .B(rw_len[0]), .C(rw_len[2]), 
         .Z(n1269)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:34])
    defparam i1_2_lut_3_lut_adj_11.init = 16'he1e1;
    LUT4 i1757_4_lut (.A(n1902), .B(pin17_c), .C(spi_uberclock[21]), .D(pin22_N_319), 
         .Z(cmd_len_5__N_218[3])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1757_4_lut.init = 16'h0001;
    FD1P3AX sp_mosi_275 (.D(pin21_N_314), .SP(clk_enable_54), .CK(clk), 
            .Q(pin21_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_mosi_275.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D spi_uberclock_449_add_4_7 (.A0(spi_uberclock[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1999), .COUT(n2000), .S0(n120), 
          .S1(n119));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_7.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_7.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_7.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_7.INJECT1_1 = "NO";
    LUT4 i1737_2_lut_2_lut (.A(n2174), .B(cmd_len_5__N_218[3]), .Z(n1485)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1737_2_lut_2_lut.init = 16'h4444;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n2216)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D spi_uberclock_449_add_4_5 (.A0(spi_uberclock[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1998), .COUT(n1999), .S0(n122), 
          .S1(n121));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_5.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_5.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_5.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_5.INJECT1_1 = "NO";
    FD1P3AX sp_cs_n_247 (.D(pin18_cs_N_299), .SP(clk_enable_55), .CK(clk), 
            .Q(pin18_cs_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam sp_cs_n_247.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_12 (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n1275)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[17:31])
    defparam i1_2_lut_3_lut_adj_12.init = 16'he1e1;
    FD1P3IX rd_buf_0__271 (.D(sp_miso), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin11_scl_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_0__271.GSR = "ENABLED";
    LUT4 i517_2_lut_rep_16 (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n2185)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[17:31])
    defparam i517_2_lut_rep_16.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(n2178), .B(n2183), .C(clk_enable_6), 
         .D(n2179), .Z(clk_enable_21)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'hf2f0;
    LUT4 i1095_2_lut (.A(pin3_sn_c), .B(pin2_c), .Z(n1010)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1095_2_lut.init = 16'h2222;
    CCU2D spi_uberclock_449_add_4_3 (.A0(spi_uberclock[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(spi_uberclock[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1997), .COUT(n1998), .S0(n124), 
          .S1(n123));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_3.INIT0 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_3.INIT1 = 16'hfaaa;
    defparam spi_uberclock_449_add_4_3.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_3.INJECT1_1 = "NO";
    FD1P3IX rd_buf_1__270 (.D(pin11_scl_c), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin10_sda_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_1__270.GSR = "ENABLED";
    CCU2D spi_uberclock_449_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_uberclock[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1997), .S1(n125));   // c:/devel/diamond/pce_save128/firmware/save128.v(129[21:41])
    defparam spi_uberclock_449_add_4_1.INIT0 = 16'hF000;
    defparam spi_uberclock_449_add_4_1.INIT1 = 16'h0555;
    defparam spi_uberclock_449_add_4_1.INJECT1_0 = "NO";
    defparam spi_uberclock_449_add_4_1.INJECT1_1 = "NO";
    FD1P3IX rd_buf_2__269 (.D(pin10_sda_c), .SP(clk_enable_58), .CD(n1485), 
            .CK(clk), .Q(pin9_jtgnb_c)) /* synthesis lse_init_val=0 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(85[10] 236[5])
    defparam rd_buf_2__269.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    LUT4 i470_1_lut (.A(rw_len[0]), .Z(n269)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:34])
    defparam i470_1_lut.init = 16'h5555;
    LUT4 i485_2_lut_rep_12_3_lut (.A(rw_len[1]), .B(rw_len[0]), .C(rw_len[2]), 
         .Z(n2181)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:34])
    defparam i485_2_lut_rep_12_3_lut.init = 16'hfefe;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

