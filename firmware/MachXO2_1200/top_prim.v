// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Sat Apr 17 18:42:37 2021
//
// Verilog Description of module top
//

module top (o_Active, reset_n, i_Clk, i_Data, o_Data, o_Ident, o_WriteLED, 
            o_ReadLED, sp_cs_n, sp_clk, sp_miso, sp_mosi, sp_hold_n) /* synthesis syn_module_defined=1 */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(1[8:11])
    output o_Active;   // c:/devel/diamond/pce_save128/firmware/top.v(2[10:18])
    input reset_n;   // c:/devel/diamond/pce_save128/firmware/top.v(3[10:17])
    input i_Clk;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    input i_Data;   // c:/devel/diamond/pce_save128/firmware/top.v(5[10:16])
    output o_Data;   // c:/devel/diamond/pce_save128/firmware/top.v(6[10:16])
    output o_Ident;   // c:/devel/diamond/pce_save128/firmware/top.v(7[10:17])
    output o_WriteLED;   // c:/devel/diamond/pce_save128/firmware/top.v(8[10:20])
    output o_ReadLED;   // c:/devel/diamond/pce_save128/firmware/top.v(9[10:19])
    output sp_cs_n;   // c:/devel/diamond/pce_save128/firmware/top.v(11[10:17])
    output sp_clk;   // c:/devel/diamond/pce_save128/firmware/top.v(12[10:16])
    input sp_miso;   // c:/devel/diamond/pce_save128/firmware/top.v(13[10:17])
    output sp_mosi;   // c:/devel/diamond/pce_save128/firmware/top.v(14[10:17])
    output sp_hold_n;   // c:/devel/diamond/pce_save128/firmware/top.v(15[10:19])
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(26[8:11])
    
    wire GND_net, o_Active_c, reset_n_c, i_Clk_c, i_Data_c, o_WriteLED_c, 
        o_ReadLED_c, sp_cs_n_c, sp_clk_c, sp_miso_c, sp_mosi_c, sp_hold_n_c, 
        VCC_net, clk_sample;
    wire [3:0]r_State;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    wire [5:0]r_Bit_Count;   // c:/devel/diamond/pce_save128/firmware/save128.v(92[14:25])
    wire [3:0]r_Pos_Edge;   // c:/devel/diamond/pce_save128/firmware/save128.v(97[14:24])
    wire [5:0]cmd_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(131[14:21])
    
    wire n9053, n8656, n7, n3526, n263, n1422, n8, n1516, n9998, 
        n9164, n9995, n1373, n9991, n1296, n1242, n9985, n10, 
        n9968, n8657, n9958, n10374, n8_adj_784, n9247, n3151, 
        n3282, n10_adj_785;
    
    VHI i5 (.Z(VCC_net));
    OSCH internal_oscillator_inst (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam internal_oscillator_inst.NOM_FREQ = "44.33";
    MB128 MB128 (.r_State({r_State}), .clk(clk), .GND_net(GND_net), .n10(n10), 
          .clk_sample(clk_sample), .i_Clk_c(i_Clk_c), .sp_mosi_c(sp_mosi_c), 
          .n1516(n1516), .\r_Pos_Edge[0] (r_Pos_Edge[0]), .n10374(n10374), 
          .cmd_len({cmd_len}), .i_Data_c(i_Data_c), .reset_n_c(reset_n_c), 
          .n8657(n8657), .n9958(n9958), .sp_hold_n_c(sp_hold_n_c), .\r_Bit_Count[1] (r_Bit_Count[1]), 
          .n9998(n9998), .n1242(n1242), .n9995(n9995), .n1422(n1422), 
          .n1296(n1296), .n9985(n9985), .\r_Pos_Edge[2] (r_Pos_Edge[2]), 
          .n9053(n9053), .n9991(n9991), .n263(n263), .n8(n8), .n3151(n3151), 
          .n9968(n9968), .sp_clk_c(sp_clk_c), .sp_miso_c(sp_miso_c), .n1373(n1373), 
          .o_WriteLED_c(o_WriteLED_c), .o_ReadLED_c(o_ReadLED_c), .n9164(n9164), 
          .sp_cs_n_c(sp_cs_n_c), .n8_adj_1(n8_adj_784), .o_Active_c(o_Active_c), 
          .n8656(n8656)) /* synthesis syn_module_defined=1 */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(36[7] 59[4])
    OB o_Active_pad (.I(o_Active_c), .O(o_Active));   // c:/devel/diamond/pce_save128/firmware/top.v(2[10:18])
    IB sp_miso_pad (.I(sp_miso), .O(sp_miso_c));   // c:/devel/diamond/pce_save128/firmware/top.v(13[10:17])
    PFUMX i7858 (.BLUT(n9164), .ALUT(n8656), .C0(r_State[3]), .Z(n8657));
    IB i_Data_pad (.I(i_Data), .O(i_Data_c));   // c:/devel/diamond/pce_save128/firmware/top.v(5[10:16])
    IB i_Clk_pad (.I(i_Clk), .O(i_Clk_c));   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // c:/devel/diamond/pce_save128/firmware/top.v(3[10:17])
    OB sp_hold_n_pad (.I(sp_hold_n_c), .O(sp_hold_n));   // c:/devel/diamond/pce_save128/firmware/top.v(15[10:19])
    LUT4 i2398_4_lut_4_lut (.A(r_State[3]), .B(r_State[1]), .C(r_State[0]), 
         .D(r_State[2]), .Z(n3151)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2398_4_lut_4_lut.init = 16'hfebf;
    OB sp_mosi_pad (.I(sp_mosi_c), .O(sp_mosi));   // c:/devel/diamond/pce_save128/firmware/top.v(14[10:17])
    OB sp_clk_pad (.I(sp_clk_c), .O(sp_clk));   // c:/devel/diamond/pce_save128/firmware/top.v(12[10:16])
    OB sp_cs_n_pad (.I(sp_cs_n_c), .O(sp_cs_n));   // c:/devel/diamond/pce_save128/firmware/top.v(11[10:17])
    OB o_ReadLED_pad (.I(o_ReadLED_c), .O(o_ReadLED));   // c:/devel/diamond/pce_save128/firmware/top.v(9[10:19])
    OB o_WriteLED_pad (.I(o_WriteLED_c), .O(o_WriteLED));   // c:/devel/diamond/pce_save128/firmware/top.v(8[10:20])
    OB o_Ident_pad (.I(r_Pos_Edge[2]), .O(o_Ident));   // c:/devel/diamond/pce_save128/firmware/top.v(7[10:17])
    OB o_Data_pad (.I(r_Pos_Edge[0]), .O(o_Data));   // c:/devel/diamond/pce_save128/firmware/top.v(6[10:16])
    LUT4 m1_lut (.Z(n10374)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i2359_4_lut (.A(clk_sample), .B(n1373), .C(n9995), .D(n3526), 
         .Z(n1296)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2359_4_lut.init = 16'ha088;
    LUT4 i842_4_lut (.A(n9968), .B(n8), .C(r_State[3]), .D(n9958), .Z(n1422)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i842_4_lut.init = 16'hcac0;
    VLO i1 (.Z(GND_net));
    LUT4 i4_4_lut (.A(n7), .B(n9991), .C(n263), .D(cmd_len[0]), .Z(n1242)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_4_lut (.A(n9053), .B(cmd_len[1]), .C(n10_adj_785), .D(cmd_len[3]), 
         .Z(n7)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0020;
    LUT4 i4_4_lut_adj_245 (.A(cmd_len[2]), .B(n9247), .C(clk_sample), 
         .D(n3282), .Z(n10_adj_785)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i4_4_lut_adj_245.init = 16'h1101;
    LUT4 i8445_2_lut (.A(cmd_len[4]), .B(cmd_len[5]), .Z(n9247)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8445_2_lut.init = 16'heeee;
    LUT4 i2492_4_lut (.A(n9998), .B(n3526), .C(n8_adj_784), .D(r_Bit_Count[1]), 
         .Z(n3282)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2492_4_lut.init = 16'h7775;
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1465_2_lut_rep_187 (.A(r_State[1]), .B(r_State[0]), .Z(n9985)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1465_2_lut_rep_187.init = 16'heeee;
    LUT4 i10_3_lut_4_lut (.A(r_State[1]), .B(r_State[0]), .C(n9995), .D(n1516), 
         .Z(n10)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i10_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i2_3_lut_4_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .D(r_State[3]), .Z(n3526)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    
endmodule
//
// Verilog Description of module MB128
//

module MB128 (r_State, clk, GND_net, n10, clk_sample, i_Clk_c, sp_mosi_c, 
            n1516, \r_Pos_Edge[0] , n10374, cmd_len, i_Data_c, reset_n_c, 
            n8657, n9958, sp_hold_n_c, \r_Bit_Count[1] , n9998, n1242, 
            n9995, n1422, n1296, n9985, \r_Pos_Edge[2] , n9053, 
            n9991, n263, n8, n3151, n9968, sp_clk_c, sp_miso_c, 
            n1373, o_WriteLED_c, o_ReadLED_c, n9164, sp_cs_n_c, n8_adj_1, 
            o_Active_c, n8656) /* synthesis syn_module_defined=1 */ ;
    output [3:0]r_State;
    input clk;
    input GND_net;
    input n10;
    output clk_sample;
    input i_Clk_c;
    output sp_mosi_c;
    output n1516;
    output \r_Pos_Edge[0] ;
    input n10374;
    output [5:0]cmd_len;
    input i_Data_c;
    input reset_n_c;
    input n8657;
    output n9958;
    output sp_hold_n_c;
    output \r_Bit_Count[1] ;
    output n9998;
    input n1242;
    output n9995;
    input n1422;
    input n1296;
    input n9985;
    output \r_Pos_Edge[2] ;
    output n9053;
    output n9991;
    output n263;
    output n8;
    input n3151;
    output n9968;
    output sp_clk_c;
    input sp_miso_c;
    output n1373;
    output o_WriteLED_c;
    output o_ReadLED_c;
    output n9164;
    output sp_cs_n_c;
    output n8_adj_1;
    output o_Active_c;
    output n8656;
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(26[8:11])
    
    wire n10_c, n37, n26, n9945, n8395, n9969, clk_enable_40;
    wire [5:0]r_Bit_Count;   // c:/devel/diamond/pce_save128/firmware/save128.v(92[14:25])
    
    wire n1916, n9371, n8373;
    wire [16:0]r_MB128_Addr;   // c:/devel/diamond/pce_save128/firmware/save128.v(93[14:26])
    wire [16:0]r_MB128_Bytes;   // c:/devel/diamond/pce_save128/firmware/save128.v(95[14:27])
    wire [16:0]n354;
    
    wire n8374, n34, n27;
    wire [1:0]sp_phase;   // c:/devel/diamond/pce_save128/firmware/save128.v(146[13:21])
    
    wire n9965, sp_hold_n_N_709, n9938, n59, n57, n44, i_Clk_Prev, 
        clk_enable_161, n4424, n9664, n9662, n9665;
    wire [7:0]n1450;
    
    wire n2017, n1459;
    wire [7:0]ram_data_7__N_115;
    wire [16:0]r_MB128_Addr_Curr;   // c:/devel/diamond/pce_save128/firmware/save128.v(94[14:31])
    
    wire clk_enable_76;
    wire [16:0]n1297;
    wire [7:0]r_Write_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(103[14:26])
    
    wire clk_enable_8, n9120, clk_enable_9, n9126, clk_enable_10, 
        sp_mosi_N_723, clk_enable_11, n9125, n9937, trigger_wren;
    wire [15:0]wr_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(135[15:21])
    wire [7:0]ram_data;   // c:/devel/diamond/pce_save128/firmware/save128.v(125[13:21])
    
    wire trigger_write, n9182, n9946, write_in_transit, wr_buf_6__N_251, 
        wr_buf_6__N_252;
    wire [7:0]r_FetchWrite_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(104[14:31])
    
    wire clk_enable_98;
    wire [15:0]rd_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[15:21])
    
    wire clk_enable_13;
    wire [3:0]r_Pos_Edge_3__N_83;
    
    wire trigger_read, trigger_read_N_621, trigger_fetchwrite, trigger_fetchwrite_N_675, 
        clk_samplediv_5__N_331, n9978, wr_buf_7__N_231, wr_buf_6__N_246, 
        wr_buf_5__N_257, wr_buf_4__N_268, wr_buf_3__N_279, wr_buf_2__N_290, 
        wr_buf_1__N_301, n15;
    wire [31:0]cmd_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(133[15:22])
    
    wire clk_enable_14;
    wire [31:0]cmd_buf_31__N_332;
    wire [3:0]r_State_Prev;   // c:/devel/diamond/pce_save128/firmware/save128.v(81[14:26])
    
    wire clk_enable_108, sp_active_N_716, clk_enable_46, n2456, read_in_transit, 
        n9924, fetchwrt_in_transit, n3597;
    wire [5:0]clk_samplediv;   // c:/devel/diamond/pce_save128/firmware/save128.v(24[15:28])
    wire [6:0]clk_samplediv_5__N_325;
    
    wire clk_enable_145;
    wire [5:0]cmd_len_5__N_370;
    wire [4:0]rw_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(132[14:20])
    
    wire clk_enable_144;
    wire [4:0]rw_len_4__N_381;
    
    wire clk_enable_36, clk_enable_85;
    wire [7:0]r_Read_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(102[14:25])
    
    wire clk_enable_114;
    wire [7:0]n1504;
    
    wire trigger_read_N_633, clk_enable_39, sp_end_desel, clk_enable_157, 
        n21, n49, clk_enable_87, n9163, n41, n37_adj_747, n1921, 
        n9068, n9971, n10000, n13, n9121, n9362, n9363, n9364, 
        n8659, n8660, n8370;
    wire [31:0]n840;
    
    wire n9188, n9304, n9169, n2021, n10372, n6471, n2939, n1484, 
        n9914;
    wire [3:0]n1654;
    
    wire n9932, n9988, n1520, n3747, n2018, clk_enable_151, n4425, 
        n5, n9139, n9928, n10013, n10012, n3457, n49_adj_748, 
        n9217, n4, clk_enable_105, n9917, n3720, n9314, n9950, 
        n9981, n7, n9989, n22, n8640, n10016, n10015, n10019, 
        n9962, n9961, n9919, clk_enable_41, n9122, n9949, n20, 
        n9943, rd_buf_7__N_176, n10018, n10022, n10021, n9963, n9197, 
        clk_enable_42, n9124, n9117, n10025, n10024, n9996, n9953, 
        n9997, n6469, n1, n10028, n9966, n10027, clk_enable_43, 
        n1261, n1755;
    wire [16:0]n1262;
    
    wire n9956, n9993, clk_enable_149, n6332, n9725, n41_adj_749, 
        n45;
    wire [3:0]r_State_3__N_7;
    
    wire n9350, n3284, n4_adj_750;
    wire [16:0]n1243;
    wire [2:0]n1094;
    
    wire n1503, n9913, n9980, n77, n52, n50, n4455, n9923, n9936, 
        n9974, n3992, n56, n71, n8388;
    wire [16:0]n1907;
    
    wire n3915, n3982, n3984, n9916, n10_adj_751, n3986, n69, 
        n6, clk_enable_116, n10_adj_752, n4179, n9850, n9233, n9935, 
        n9973, n9922, n9841, n9992;
    wire [31:0]n516;
    
    wire n9999, n24, n9353, n27_adj_753, n9154, n47, n8457, n9075, 
        n12, n9930, n1145;
    wire [16:0]n1146;
    wire [7:0]r_Register;   // c:/devel/diamond/pce_save128/firmware/save128.v(82[14:24])
    
    wire clk_enable_53, n1918, n1793, n1213, n1167, n9982, n4_adj_754, 
        n8423, clk_enable_120, n2467, n10001, n9918;
    wire [2:0]r_MB128_Bits;   // c:/devel/diamond/pce_save128/firmware/save128.v(96[14:26])
    
    wire n8564;
    wire [31:0]trigger_write_N_642;
    wire [7:0]ram_data_7__N_447;
    
    wire n9911, n9848, n9847, n9849, n9103, o_ReadLED_N_601, n9726, 
        n9727, n4_adj_755, n9941, n9934, n9905, n9643, n9642, 
        n9644, n9972, n9948, n25, n17, n1794, n1795, n1796, 
        n1797, n1798, n1799, clk_enable_58;
    wire [4:0]n790;
    
    wire n8387, n8386, n8385, n3594, o_WriteLED_N_614, n17_adj_759, 
        n9097, n9940, n8384, n1320, n8369, n9933, n9728, n2016, 
        n10002, n8365, n8366, n3445, n8383, n8364, n9108, n9318, 
        n10003, n9975, n8382, n27_adj_760, n9729;
    wire [3:0]r_State_3__N_399;
    
    wire n8381, n9906, n9977, n9734, n10005, n8407, n3395, n9964, 
        n8368, n9840, n9839, n4449, n3449, n3453, clk_enable_90, 
        n9951, n9737, clk_enable_99, n3443, n4446, n3471, clk_enable_103;
    wire [31:0]sp_phase_1__N_323;
    
    wire clk_enable_115, sp_active_N_715, n8468, n9976, n9912, n9967, 
        n9955, n9909, clk_enable_155, n9462, n9114, n9237, n9086, 
        n4_adj_761, n8_adj_762, n10006, n10007, n3264, n9921, n4_adj_763, 
        n7_adj_764, n9629, n8380, n17_adj_765, n30, n26_adj_766, 
        n18, n28, n22_adj_767, clk_enable_143, n4436, n9354, n19, 
        n9925, n9908, n9994, n9979, n9915, n9190, n9910, n4330;
    wire [3:0]r_State_3__N_395;
    
    wire n9328, n4_adj_768, n10_adj_769, n10_adj_770, n9990, n6172, 
        n4_adj_771, n8379, n25_adj_772, n4_adj_773, clk_enable_147, 
        n8378, n9983, n9929, n59_adj_774, n9091, n6356, n8_adj_775, 
        n9138, clk_enable_148, n2019, n9926, n13_adj_776, n9944, 
        n12_adj_777, n2020, n8377, n8367, n8363, n8394;
    wire [0:0]n1547;
    
    wire n9195, n10010, n2015, n9094, n8376, n9112, n9123, n9630, 
        n9631, n9931, n10009, n45_adj_778, n9736, n7_adj_779, n8532, 
        n74, n9661;
    wire [2:0]n1701;
    
    wire n9952, n9987, n8375, n6_adj_780, n9633, n9264, n54, n4419, 
        n9632, n4_adj_781, n9663, n10029, n8620, n10_adj_783, n9939, 
        n9085, n10020, n33;
    
    PFUMX i59 (.BLUT(n10_c), .ALUT(n37), .C0(r_State[2]), .Z(n26));
    LUT4 i8675_2_lut_3_lut_4_lut (.A(r_State[3]), .B(n9945), .C(n8395), 
         .D(n9969), .Z(clk_enable_40)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i8675_2_lut_3_lut_4_lut.init = 16'hf070;
    FD1S3IX r_Bit_Count__i0 (.D(n9371), .CK(clk), .CD(n1916), .Q(r_Bit_Count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Bit_Count__i0.GSR = "ENABLED";
    CCU2D add_68_4 (.A0(r_MB128_Addr[2]), .B0(r_MB128_Bytes[2]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[3]), .B1(r_MB128_Bytes[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8373), .COUT(n8374), .S0(n354[2]), .S1(n354[3]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_4.INIT0 = 16'h5666;
    defparam add_68_4.INIT1 = 16'h5666;
    defparam add_68_4.INJECT1_0 = "NO";
    defparam add_68_4.INJECT1_1 = "NO";
    CCU2D add_68_2 (.A0(r_MB128_Addr[0]), .B0(r_MB128_Bytes[0]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[1]), .B1(r_MB128_Bytes[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8373), .S1(n354[1]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_2.INIT0 = 16'h7000;
    defparam add_68_2.INIT1 = 16'h5666;
    defparam add_68_2.INJECT1_0 = "NO";
    defparam add_68_2.INJECT1_1 = "NO";
    PFUMX i56 (.BLUT(n10), .ALUT(n34), .C0(r_State[3]), .Z(n27));
    LUT4 i167_2_lut_rep_140_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(n9965), .D(sp_hold_n_N_709), .Z(n9938)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(366[8:25])
    defparam i167_2_lut_rep_140_3_lut_4_lut.init = 16'h1000;
    PFUMX i80 (.BLUT(n59), .ALUT(n57), .C0(r_State[1]), .Z(n44));
    FD1P3AX i_Clk_Prev_696 (.D(i_Clk_c), .SP(clk_sample), .CK(clk), .Q(i_Clk_Prev)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i_Clk_Prev_696.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i6 (.D(r_MB128_Addr[7]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i6.GSR = "ENABLED";
    PFUMX i8768 (.BLUT(n9664), .ALUT(n9662), .C0(r_State[3]), .Z(n9665));
    PFUMX mux_845_i5 (.BLUT(n1450[4]), .ALUT(n2017), .C0(n1459), .Z(ram_data_7__N_115[4]));
    FD1P3AX r_MB128_Addr_Curr_i0_i0 (.D(n1297[0]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i0.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i5 (.D(r_MB128_Addr[6]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i5.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i4 (.D(r_MB128_Addr[5]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i4.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i3 (.D(r_MB128_Addr[4]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i3.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i2 (.D(r_MB128_Addr[3]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i2.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i1 (.D(r_MB128_Addr[2]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i1.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i6 (.D(n9120), .SP(clk_enable_8), .CK(clk), 
            .Q(r_Write_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Write_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i5 (.D(n9126), .SP(clk_enable_9), .CK(clk), 
            .Q(r_Write_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Write_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX sp_mosi_690 (.D(sp_mosi_N_723), .SP(clk_enable_10), .CK(clk), 
            .Q(sp_mosi_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_mosi_690.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i4 (.D(n9125), .SP(clk_enable_11), .CK(clk), 
            .Q(r_Write_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Write_Byte_i0_i4.GSR = "ENABLED";
    LUT4 i2959_3_lut_rep_139_4_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(n1516), 
         .D(r_State[1]), .Z(n9937)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i2959_3_lut_rep_139_4_lut.init = 16'h4440;
    LUT4 i1_4_lut (.A(trigger_wren), .B(wr_buf[4]), .C(ram_data[4]), .D(trigger_write), 
         .Z(n9182)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i5347_3_lut_4_lut (.A(n9946), .B(write_in_transit), .C(trigger_wren), 
         .D(wr_buf_6__N_251), .Z(wr_buf_6__N_252)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[5] 481[10])
    defparam i5347_3_lut_4_lut.init = 16'h0700;
    FD1P3AX r_FetchWrite_Byte_i0_i0 (.D(rd_buf[0]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i0.GSR = "ENABLED";
    FD1P3AX r_Pos_Edge_i0 (.D(r_Pos_Edge_3__N_83[0]), .SP(clk_enable_13), 
            .CK(clk), .Q(\r_Pos_Edge[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Pos_Edge_i0.GSR = "ENABLED";
    FD1S3AX ram_data_i0 (.D(ram_data_7__N_115[0]), .CK(clk), .Q(ram_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i0.GSR = "ENABLED";
    FD1S3AX trigger_read_652 (.D(trigger_read_N_621), .CK(clk), .Q(trigger_read)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam trigger_read_652.GSR = "ENABLED";
    FD1S3AX trigger_fetchwrite_654 (.D(trigger_fetchwrite_N_675), .CK(clk), 
            .Q(trigger_fetchwrite)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam trigger_fetchwrite_654.GSR = "ENABLED";
    FD1S3AX clk_sample_656 (.D(clk_samplediv_5__N_331), .CK(clk), .Q(clk_sample)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam clk_sample_656.GSR = "ENABLED";
    FD1S3AX sp_phase_i0 (.D(n9978), .CK(clk), .Q(sp_phase[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_phase_i0.GSR = "ENABLED";
    FD1S3AX wr_buf_7__666 (.D(wr_buf_7__N_231), .CK(clk), .Q(wr_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_7__666.GSR = "ENABLED";
    FD1S3AX wr_buf_6__667 (.D(wr_buf_6__N_246), .CK(clk), .Q(wr_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_6__667.GSR = "ENABLED";
    FD1S3AX wr_buf_5__668 (.D(wr_buf_5__N_257), .CK(clk), .Q(wr_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_5__668.GSR = "ENABLED";
    FD1S3AX wr_buf_4__669 (.D(wr_buf_4__N_268), .CK(clk), .Q(wr_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_4__669.GSR = "ENABLED";
    FD1S3AX wr_buf_3__670 (.D(wr_buf_3__N_279), .CK(clk), .Q(wr_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_3__670.GSR = "ENABLED";
    FD1S3AX wr_buf_2__671 (.D(wr_buf_2__N_290), .CK(clk), .Q(wr_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_2__671.GSR = "ENABLED";
    FD1S3AX wr_buf_1__672 (.D(wr_buf_1__N_301), .CK(clk), .Q(wr_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_1__672.GSR = "ENABLED";
    FD1P3IX wr_buf_0__673 (.D(ram_data[0]), .SP(trigger_write), .CD(n15), 
            .CK(clk), .Q(wr_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam wr_buf_0__673.GSR = "ENABLED";
    FD1P3AX cmd_buf_i0 (.D(cmd_buf_31__N_332[0]), .SP(clk_enable_14), .CK(clk), 
            .Q(cmd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i0.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i0 (.D(r_State[0]), .SP(clk_enable_108), .CK(clk), 
            .Q(r_State_Prev[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_Prev_i0_i0.GSR = "ENABLED";
    FD1P3IX sp_go_685 (.D(n10374), .SP(clk_enable_46), .CD(n2456), .CK(clk), 
            .Q(sp_active_N_716)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_go_685.GSR = "ENABLED";
    FD1P3IX read_in_transit_686 (.D(n10374), .SP(trigger_read), .CD(n9924), 
            .CK(clk), .Q(read_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam read_in_transit_686.GSR = "ENABLED";
    FD1P3IX fetchwrt_in_transit_687 (.D(n10374), .SP(trigger_fetchwrite), 
            .CD(clk_enable_98), .CK(clk), .Q(fetchwrt_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam fetchwrt_in_transit_687.GSR = "ENABLED";
    FD1P3IX write_in_transit_688 (.D(n10374), .SP(trigger_write), .CD(n3597), 
            .CK(clk), .Q(write_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam write_in_transit_688.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i0 (.D(clk_samplediv_5__N_325[0]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam clk_samplediv_i0.GSR = "ENABLED";
    FD1S3JX clk_samplediv_i1 (.D(clk_samplediv_5__N_325[1]), .CK(clk), .PD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam clk_samplediv_i1.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i2 (.D(clk_samplediv_5__N_325[2]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam clk_samplediv_i2.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i3 (.D(clk_samplediv_5__N_325[3]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam clk_samplediv_i3.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i4 (.D(clk_samplediv_5__N_325[4]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam clk_samplediv_i4.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i5 (.D(clk_samplediv_5__N_325[5]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam clk_samplediv_i5.GSR = "ENABLED";
    FD1P3AX cmd_len_i3 (.D(cmd_len_5__N_370[3]), .SP(clk_enable_145), .CK(clk), 
            .Q(cmd_len[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_len_i3.GSR = "ENABLED";
    FD1P3AY cmd_len_i5 (.D(cmd_len_5__N_370[5]), .SP(clk_enable_145), .CK(clk), 
            .Q(cmd_len[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_len_i5.GSR = "ENABLED";
    FD1P3AY rw_len_i3 (.D(rw_len_4__N_381[3]), .SP(clk_enable_144), .CK(clk), 
            .Q(rw_len[3])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rw_len_i3.GSR = "ENABLED";
    FD1P3AX cmd_buf_i1 (.D(cmd_buf_31__N_332[1]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i1.GSR = "ENABLED";
    FD1P3AX cmd_buf_i2 (.D(cmd_buf_31__N_332[2]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i2.GSR = "ENABLED";
    FD1P3AX cmd_buf_i3 (.D(cmd_buf_31__N_332[3]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i3.GSR = "ENABLED";
    FD1P3AX cmd_buf_i4 (.D(cmd_buf_31__N_332[4]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i4.GSR = "ENABLED";
    FD1P3AX cmd_buf_i5 (.D(cmd_buf_31__N_332[5]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i5.GSR = "ENABLED";
    FD1P3AX cmd_buf_i6 (.D(cmd_buf_31__N_332[6]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i6.GSR = "ENABLED";
    FD1P3AX cmd_buf_i7 (.D(cmd_buf_31__N_332[7]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i7.GSR = "ENABLED";
    FD1P3AX cmd_buf_i8 (.D(cmd_buf_31__N_332[8]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i8.GSR = "ENABLED";
    FD1P3AX cmd_buf_i9 (.D(cmd_buf_31__N_332[9]), .SP(clk_enable_36), .CK(clk), 
            .Q(cmd_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i9.GSR = "ENABLED";
    FD1P3AX cmd_buf_i10 (.D(cmd_buf_31__N_332[10]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i10.GSR = "ENABLED";
    FD1P3AX cmd_buf_i11 (.D(cmd_buf_31__N_332[11]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i11.GSR = "ENABLED";
    FD1P3AX cmd_buf_i12 (.D(cmd_buf_31__N_332[12]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i12.GSR = "ENABLED";
    FD1P3AX cmd_buf_i13 (.D(cmd_buf_31__N_332[13]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i13.GSR = "ENABLED";
    FD1P3AX cmd_buf_i14 (.D(cmd_buf_31__N_332[14]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i14.GSR = "ENABLED";
    FD1P3AX cmd_buf_i15 (.D(cmd_buf_31__N_332[15]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i15.GSR = "ENABLED";
    FD1P3AX cmd_buf_i16 (.D(cmd_buf_31__N_332[16]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i16.GSR = "ENABLED";
    FD1P3AY cmd_buf_i24 (.D(cmd_buf_31__N_332[24]), .SP(clk_enable_36), 
            .CK(clk), .Q(cmd_buf[24])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i24.GSR = "ENABLED";
    FD1P3AX cmd_buf_i26 (.D(cmd_buf_31__N_332[26]), .SP(clk_enable_85), 
            .CK(clk), .Q(cmd_buf[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i26.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i0 (.D(n1504[0]), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i0.GSR = "ENABLED";
    FD1P3AY r_Req_699 (.D(i_Data_c), .SP(clk_enable_39), .CK(clk), .Q(trigger_read_N_633)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Req_699.GSR = "ENABLED";
    LUT4 i1625_2_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_end_desel), 
         .Z(clk_enable_157)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(366[8:25])
    defparam i1625_2_lut_3_lut.init = 16'h1010;
    LUT4 i8697_4_lut (.A(reset_n_c), .B(clk_sample), .C(n21), .D(n49), 
         .Z(clk_enable_87)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;
    defparam i8697_4_lut.init = 16'h555d;
    PFUMX i56_adj_111 (.BLUT(n9163), .ALUT(n41), .C0(r_State[3]), .Z(n37_adj_747));
    LUT4 i1197_2_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_hold_n_N_709), 
         .Z(n1921)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(366[8:25])
    defparam i1197_2_lut_3_lut.init = 16'h1010;
    LUT4 i3_4_lut (.A(r_Bit_Count[3]), .B(n9068), .C(n9971), .D(n10000), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(790[11:44])
    defparam i3_4_lut.init = 16'hfffe;
    FD1P3AX r_Write_Byte_i0_i3 (.D(n9121), .SP(clk_enable_40), .CK(clk), 
            .Q(r_Write_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Write_Byte_i0_i3.GSR = "ENABLED";
    PFUMX i8557 (.BLUT(n9362), .ALUT(n9363), .C0(r_State[1]), .Z(n9364));
    LUT4 i1_4_lut_adj_112 (.A(r_State[1]), .B(n8659), .C(n8660), .D(r_State[3]), 
         .Z(n21)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_112.init = 16'ha088;
    CCU2D add_809_17 (.A0(r_MB128_Addr_Curr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8370), .S0(n840[15]), .S1(n840[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_17.INIT0 = 16'h5aaa;
    defparam add_809_17.INIT1 = 16'h5aaa;
    defparam add_809_17.INJECT1_0 = "NO";
    defparam add_809_17.INJECT1_1 = "NO";
    LUT4 i52_4_lut (.A(n27), .B(n9188), .C(r_State[2]), .D(n9304), .Z(n49)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i52_4_lut.init = 16'hcafa;
    LUT4 i1_4_lut_adj_113 (.A(trigger_wren), .B(wr_buf[3]), .C(ram_data[3]), 
         .D(trigger_write), .Z(n9169)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_113.init = 16'h5044;
    PFUMX mux_845_i1 (.BLUT(n1450[0]), .ALUT(n2021), .C0(n1459), .Z(ram_data_7__N_115[0]));
    LUT4 i5677_3_lut_4_lut_3_lut (.A(n10372), .B(sp_phase[0]), .C(sp_phase[1]), 
         .Z(n6471)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;
    defparam i5677_3_lut_4_lut_3_lut.init = 16'hc2c2;
    LUT4 mux_845_i8_4_lut (.A(r_FetchWrite_Byte[7]), .B(i_Data_c), .C(n2939), 
         .D(n1484), .Z(ram_data_7__N_115[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_845_i8_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut_adj_114 (.A(n9914), .B(n1654[2]), .C(n9932), .D(n9988), 
         .Z(n9163)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i3_4_lut_adj_114.init = 16'h8000;
    LUT4 i7590_2_lut (.A(r_MB128_Addr[0]), .B(r_MB128_Bytes[0]), .Z(n354[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i7590_2_lut.init = 16'h6666;
    LUT4 i882_4_lut_4_lut_4_lut (.A(r_State[2]), .B(r_State[1]), .C(r_State[0]), 
         .D(r_State[3]), .Z(n1520)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i882_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i690_3_lut_4_lut_4_lut (.A(r_State[0]), .B(r_State[1]), .C(r_State[2]), 
         .D(r_State[3]), .Z(n3747)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i690_3_lut_4_lut_4_lut.init = 16'h0480;
    PFUMX mux_845_i4 (.BLUT(n1450[3]), .ALUT(n2018), .C0(n1459), .Z(ram_data_7__N_115[3]));
    LUT4 i8625_2_lut_2_lut_3_lut (.A(clk_sample), .B(n8657), .C(clk_enable_151), 
         .Z(n4425)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i8625_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut (.A(trigger_read), .B(trigger_fetchwrite), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_then_3_lut (.A(sp_phase[0]), .B(n9139), .C(n9928), .Z(n10013)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h4c4c;
    LUT4 i1_4_lut_else_3_lut (.A(n10372), .B(sp_phase[0]), .C(wr_buf[1]), 
         .D(n9139), .Z(n10012)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'hfd20;
    LUT4 i1_2_lut_adj_115 (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n3457)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_115.init = 16'h9999;
    LUT4 i8640_4_lut (.A(reset_n_c), .B(n49_adj_748), .C(n9217), .D(n4), 
         .Z(clk_enable_105)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i8640_4_lut.init = 16'h5557;
    LUT4 i204_2_lut_rep_119_3_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(n13), 
         .Z(n9917)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i204_2_lut_rep_119_3_lut.init = 16'h0404;
    LUT4 i8509_2_lut_3_lut (.A(n3720), .B(i_Data_c), .C(trigger_read_N_633), 
         .Z(n9314)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i8509_2_lut_3_lut.init = 16'he0e0;
    LUT4 mux_135_i25_3_lut_4_lut (.A(n9950), .B(n9981), .C(cmd_buf[23]), 
         .D(n7), .Z(cmd_buf_31__N_332[24])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[9] 483[9])
    defparam mux_135_i25_3_lut_4_lut.init = 16'h20fd;
    LUT4 i1_4_lut_adj_116 (.A(n9989), .B(n22), .C(r_State[3]), .D(n9937), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_116.init = 16'hcccd;
    FD1S3IX trigger_wren_689 (.D(n8640), .CK(clk), .CD(trigger_read_N_633), 
            .Q(trigger_wren)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam trigger_wren_689.GSR = "ENABLED";
    LUT4 i1_4_lut_then_3_lut_adj_117 (.A(sp_phase[0]), .B(n9169), .C(n9928), 
         .Z(n10016)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i1_4_lut_then_3_lut_adj_117.init = 16'h4c4c;
    LUT4 i1_4_lut_else_3_lut_adj_118 (.A(n10372), .B(sp_phase[0]), .C(wr_buf[2]), 
         .D(n9169), .Z(n10015)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1_4_lut_else_3_lut_adj_118.init = 16'hfd20;
    LUT4 i32_4_lut_3_lut_then_1_lut (.A(sp_phase[1]), .Z(n10019)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[13:30])
    defparam i32_4_lut_3_lut_then_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_121_3_lut_3_lut_4_lut_4_lut (.A(r_State[1]), .B(n9962), 
         .C(n9961), .D(r_State[0]), .Z(n9919)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_121_3_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    FD1P3AX r_Write_Byte_i0_i2 (.D(n9122), .SP(clk_enable_41), .CK(clk), 
            .Q(r_Write_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Write_Byte_i0_i2.GSR = "ENABLED";
    LUT4 i8637_2_lut_rep_151_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(r_State[3]), 
         .D(clk_sample), .Z(n9949)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i8637_2_lut_rep_151_3_lut_4_lut.init = 16'hbfff;
    LUT4 i1_2_lut_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(n20), .D(clk_sample), 
         .Z(r_Pos_Edge_3__N_83[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_145_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(r_State[3]), 
         .D(clk_sample), .Z(n9943)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i1_2_lut_rep_145_3_lut_4_lut.init = 16'h0400;
    LUT4 i32_4_lut_3_lut_else_1_lut (.A(sp_phase[1]), .B(sp_hold_n_N_709), 
         .C(n9965), .D(rd_buf_7__N_176), .Z(n10018)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[13:30])
    defparam i32_4_lut_3_lut_else_1_lut.init = 16'hfbff;
    LUT4 i1_2_lut_2_lut_3_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(r_State[1]), 
         .Z(n10_c)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i1_2_lut_2_lut_3_lut.init = 16'hb0b0;
    LUT4 mux_135_i27_3_lut_4_lut (.A(n9950), .B(n9981), .C(cmd_buf[25]), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[26])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[9] 483[9])
    defparam mux_135_i27_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_then_3_lut_adj_119 (.A(sp_phase[0]), .B(n9182), .C(n9928), 
         .Z(n10022)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i1_4_lut_then_3_lut_adj_119.init = 16'h4c4c;
    LUT4 i1_4_lut_else_3_lut_adj_120 (.A(n10372), .B(sp_phase[0]), .C(wr_buf[3]), 
         .D(n9182), .Z(n10021)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1_4_lut_else_3_lut_adj_120.init = 16'hfd20;
    LUT4 i2_3_lut_4_lut (.A(n9950), .B(n9981), .C(n7), .D(n5), .Z(clk_enable_36)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[9] 483[9])
    defparam i2_3_lut_4_lut.init = 16'hfff2;
    LUT4 i3_3_lut_4_lut (.A(i_Data_c), .B(n9958), .C(n9963), .D(r_State[3]), 
         .Z(r_Pos_Edge_3__N_83[2])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_2_lut_3_lut_adj_121 (.A(i_Clk_Prev), .B(i_Clk_c), .C(r_State[0]), 
         .Z(n9197)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i1_2_lut_2_lut_3_lut_adj_121.init = 16'hb0b0;
    FD1P3AX r_Write_Byte_i0_i1 (.D(n9124), .SP(clk_enable_42), .CK(clk), 
            .Q(r_Write_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Write_Byte_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_then_3_lut_adj_122 (.A(sp_phase[0]), .B(n9117), .C(n9928), 
         .Z(n10025)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i1_4_lut_then_3_lut_adj_122.init = 16'h4c4c;
    LUT4 i1_4_lut_else_3_lut_adj_123 (.A(n10372), .B(sp_phase[0]), .C(wr_buf[4]), 
         .D(n9117), .Z(n10024)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1_4_lut_else_3_lut_adj_123.init = 16'hfd20;
    LUT4 i1_2_lut_rep_198 (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .Z(n9996)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i1_2_lut_rep_198.init = 16'hbbbb;
    LUT4 i5683_4_lut_4_lut (.A(n9953), .B(n9962), .C(n9997), .D(n9961), 
         .Z(n6469)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i5683_4_lut_4_lut.init = 16'hff01;
    LUT4 i3_4_lut_adj_124 (.A(trigger_fetchwrite), .B(trigger_read), .C(trigger_wren), 
         .D(trigger_write), .Z(clk_enable_46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(347[4] 361[9])
    defparam i3_4_lut_adj_124.init = 16'hfffe;
    LUT4 i1_4_lut_then_3_lut_adj_125 (.A(r_State[2]), .B(n1), .C(r_State[1]), 
         .Z(n10028)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_4_lut_then_3_lut_adj_125.init = 16'h0404;
    LUT4 i1_4_lut_else_3_lut_adj_126 (.A(r_State[2]), .B(r_State[1]), .C(n9966), 
         .D(n9961), .Z(n10027)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_4_lut_else_3_lut_adj_126.init = 16'h2220;
    FD1P3AX sp_hold_n_659 (.D(sp_hold_n_N_709), .SP(clk_enable_43), .CK(clk), 
            .Q(sp_hold_n_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_hold_n_659.GSR = "ENABLED";
    LUT4 i1358_1_lut (.A(clk_samplediv[0]), .Z(clk_samplediv_5__N_325[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(207[21:38])
    defparam i1358_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_127 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), .Z(clk_samplediv_5__N_325[1])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_127.init = 16'h9999;
    LUT4 mux_711_i1_4_lut (.A(n840[0]), .B(r_MB128_Addr[1]), .C(n1261), 
         .D(n1755), .Z(n1262[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i1_4_lut.init = 16'hcac0;
    LUT4 i8627_2_lut_2_lut_3_lut_4_lut (.A(n9956), .B(n9993), .C(clk_enable_149), 
         .D(n9958), .Z(n6332)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i8627_2_lut_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 n4_bdd_3_lut_8841 (.A(n57), .B(r_State[1]), .C(r_State[2]), .Z(n9725)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n4_bdd_3_lut_8841.init = 16'h0808;
    LUT4 i1_2_lut_rep_171_3_lut (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), 
         .C(\r_Bit_Count[1] ), .Z(n9969)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i1_2_lut_rep_171_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_adj_128 (.A(clk_sample), .B(n41_adj_749), .C(n45), .D(r_State[3]), 
         .Z(r_State_3__N_7[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i1_4_lut_adj_128.init = 16'ha088;
    LUT4 i8717_2_lut_rep_199 (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .C(\r_Bit_Count[1] ), 
         .Z(n9997)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i8717_2_lut_rep_199.init = 16'h0404;
    LUT4 i8544_4_lut_4_lut (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .C(\r_Bit_Count[1] ), 
         .D(n10000), .Z(n9350)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i8544_4_lut_4_lut.init = 16'hffea;
    LUT4 i1_2_lut_rep_200 (.A(i_Clk_c), .B(i_Clk_Prev), .Z(n9998)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_rep_200.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(n3284), .D(r_State[1]), 
         .Z(n4_adj_750)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i1_3_lut_4_lut.init = 16'hff04;
    LUT4 i5376_2_lut (.A(n840[0]), .B(n1242), .Z(n1243[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5376_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.A(n9956), .B(n9993), .C(i_Data_c), 
         .D(n9958), .Z(n1094[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_129.init = 16'h8000;
    LUT4 i1_2_lut_adj_130 (.A(r_State[2]), .B(n44), .Z(n45)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i1_2_lut_adj_130.init = 16'h4444;
    LUT4 mux_873_i2_4_lut (.A(rd_buf[1]), .B(r_Read_Byte[2]), .C(n1503), 
         .D(n9913), .Z(n1504[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_873_i2_4_lut.init = 16'hcac0;
    LUT4 i200_2_lut_rep_134_4_lut (.A(n9980), .B(n9953), .C(r_Bit_Count[4]), 
         .D(n9995), .Z(n9932)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i200_2_lut_rep_134_4_lut.init = 16'h4000;
    LUT4 mux_873_i3_4_lut (.A(rd_buf[2]), .B(r_Read_Byte[3]), .C(n1503), 
         .D(n9913), .Z(n1504[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_873_i3_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_4_lut_adj_131 (.A(i_Clk_c), .B(i_Clk_Prev), .C(n1520), 
         .D(clk_sample), .Z(n1503)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i2_3_lut_4_lut_adj_131.init = 16'h2000;
    LUT4 mux_873_i4_4_lut (.A(rd_buf[3]), .B(r_Read_Byte[4]), .C(n1503), 
         .D(n9913), .Z(n1504[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_873_i4_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_132 (.A(n9364), .B(r_State[0]), .C(n77), .D(n52), 
         .Z(n50)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i1_4_lut_adj_132.init = 16'ha8a0;
    FD1P3IX cmd_buf_i31 (.D(cmd_buf[30]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i31.GSR = "ENABLED";
    LUT4 i77_4_lut_4_lut (.A(r_State[0]), .B(r_State[1]), .C(n9932), .D(n9923), 
         .Z(n77)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i77_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_178_i4_4_lut (.A(trigger_wren), .B(cmd_len[3]), .C(n9936), 
         .D(n9974), .Z(cmd_len_5__N_370[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[10] 436[10])
    defparam mux_178_i4_4_lut.init = 16'hca3a;
    LUT4 i3189_2_lut_4_lut (.A(n9980), .B(n9953), .C(r_Bit_Count[4]), 
         .D(r_State[0]), .Z(n3992)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i3189_2_lut_4_lut.init = 16'h00bf;
    LUT4 i1_4_lut_4_lut (.A(r_State[0]), .B(r_State[1]), .C(n56), .D(r_State[3]), 
         .Z(n71)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i1_4_lut_4_lut.init = 16'h75d5;
    LUT4 mux_873_i5_4_lut (.A(rd_buf[4]), .B(r_Read_Byte[5]), .C(n1503), 
         .D(n9913), .Z(n1504[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_873_i5_4_lut.init = 16'hcac0;
    LUT4 mux_873_i6_4_lut (.A(rd_buf[5]), .B(r_Read_Byte[6]), .C(n1503), 
         .D(n9913), .Z(n1504[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_873_i6_4_lut.init = 16'hcac0;
    CCU2D sub_477_add_2_17 (.A0(r_MB128_Bytes[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8388), .S0(n1907[15]), .S1(n1907[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_17.INIT0 = 16'h5555;
    defparam sub_477_add_2_17.INIT1 = 16'h5555;
    defparam sub_477_add_2_17.INJECT1_0 = "NO";
    defparam sub_477_add_2_17.INJECT1_1 = "NO";
    LUT4 i8681_3_lut_4_lut (.A(n3915), .B(n9958), .C(r_State[3]), .D(n3982), 
         .Z(clk_enable_8)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i8681_3_lut_4_lut.init = 16'h0888;
    FD1P3IX cmd_buf_i30 (.D(cmd_buf[29]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i30.GSR = "ENABLED";
    LUT4 i8679_3_lut_4_lut (.A(n3915), .B(n9958), .C(r_State[3]), .D(n3984), 
         .Z(clk_enable_9)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i8679_3_lut_4_lut.init = 16'h0888;
    LUT4 i8555_3_lut_4_lut_4_lut (.A(n9916), .B(n9923), .C(reset_n_c), 
         .D(r_State[0]), .Z(n9362)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i8555_3_lut_4_lut_4_lut.init = 16'h50cc;
    LUT4 mux_873_i7_4_lut (.A(rd_buf[6]), .B(r_Read_Byte[7]), .C(n1503), 
         .D(n9913), .Z(n1504[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_873_i7_4_lut.init = 16'hcac0;
    LUT4 mux_178_i6_4_lut (.A(trigger_wren), .B(cmd_len[5]), .C(n9936), 
         .D(n10_adj_751), .Z(cmd_len_5__N_370[5])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[10] 436[10])
    defparam mux_178_i6_4_lut.init = 16'hc535;
    LUT4 mux_711_i2_4_lut (.A(n840[1]), .B(r_MB128_Addr[2]), .C(n1261), 
         .D(n1755), .Z(n1262[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i2_4_lut.init = 16'hcac0;
    LUT4 i8677_3_lut_4_lut (.A(n3915), .B(n9958), .C(r_State[3]), .D(n3986), 
         .Z(clk_enable_11)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i8677_3_lut_4_lut.init = 16'h0888;
    LUT4 i1_4_lut_adj_133 (.A(r_State[3]), .B(n69), .C(n6), .D(reset_n_c), 
         .Z(clk_enable_116)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_133.init = 16'hc4cc;
    LUT4 i1_2_lut_4_lut_4_lut (.A(r_State[0]), .B(n1516), .C(n9995), .D(r_State[1]), 
         .Z(n10_adj_752)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5040;
    LUT4 i5543_2_lut (.A(n840[1]), .B(n1242), .Z(n1243[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5543_2_lut.init = 16'h8888;
    FD1P3AX sp_end_desel_675 (.D(n10374), .SP(clk_enable_46), .CK(clk), 
            .Q(sp_end_desel)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_end_desel_675.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_134 (.A(n4179), .B(n9850), .C(r_State[3]), .D(n9233), 
         .Z(n69)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_134.init = 16'hbabb;
    LUT4 mux_177_i4_4_lut (.A(trigger_wren), .B(rw_len[3]), .C(n9935), 
         .D(n9973), .Z(rw_len_4__N_381[3])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[10] 436[10])
    defparam mux_177_i4_4_lut.init = 16'hc535;
    LUT4 i2_4_lut (.A(clk_sample), .B(n4_adj_750), .C(n9922), .D(r_State[2]), 
         .Z(n6)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i2_4_lut.init = 16'hf5dd;
    LUT4 i1_4_lut_adj_135 (.A(reset_n_c), .B(n9197), .C(n9841), .D(n9992), 
         .Z(n9233)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_4_lut_adj_135.init = 16'ha8a0;
    LUT4 mux_711_i3_4_lut (.A(n840[2]), .B(r_MB128_Addr[3]), .C(n1261), 
         .D(n1755), .Z(n1262[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i3_4_lut.init = 16'hcac0;
    LUT4 i5544_2_lut (.A(n840[2]), .B(n1242), .Z(n1243[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5544_2_lut.init = 16'h8888;
    LUT4 mux_135_i2_4_lut (.A(n516[1]), .B(cmd_buf[0]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i2_4_lut.init = 16'hc0ca;
    LUT4 i79_3_lut_4_lut_4_lut (.A(n9916), .B(n9917), .C(reset_n_c), .D(r_State[0]), 
         .Z(n59)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i79_3_lut_4_lut_4_lut.init = 16'h50cc;
    LUT4 i1231_2_lut_rep_201 (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[0]), 
         .Z(n9999)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i1231_2_lut_rep_201.init = 16'h8888;
    PFUMX i52 (.BLUT(n24), .ALUT(n9353), .C0(r_State[3]), .Z(n49_adj_748));
    LUT4 i2_2_lut (.A(trigger_write), .B(trigger_wren), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    PFUMX i51 (.BLUT(n27_adj_753), .ALUT(n9154), .C0(r_State[3]), .Z(n47));
    LUT4 i2_2_lut_rep_173_3_lut (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n9971)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i2_2_lut_rep_173_3_lut.init = 16'h8080;
    LUT4 i8648_4_lut (.A(n8457), .B(reset_n_c), .C(n9958), .D(n9075), 
         .Z(clk_enable_151)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;
    defparam i8648_4_lut.init = 16'h1151;
    LUT4 i1_4_lut_adj_136 (.A(r_State[1]), .B(n12), .C(n9930), .D(n9945), 
         .Z(n9075)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i1_4_lut_adj_136.init = 16'h8808;
    LUT4 mux_135_i3_4_lut (.A(n516[2]), .B(cmd_buf[1]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i3_4_lut.init = 16'hc0ca;
    LUT4 mux_135_i4_4_lut (.A(n516[3]), .B(cmd_buf[2]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i4_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut_rep_208 (.A(rd_buf_7__N_176), .B(n9965), .C(sp_hold_n_N_709), 
         .Z(n10372)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i2_3_lut_rep_208.init = 16'h2020;
    LUT4 mux_646_i17_3_lut (.A(i_Data_c), .B(n1907[16]), .C(n1145), .Z(n1146[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i17_3_lut.init = 16'hcaca;
    LUT4 mux_711_i4_4_lut (.A(n840[3]), .B(r_MB128_Addr[4]), .C(n1261), 
         .D(n1755), .Z(n1262[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i4_4_lut.init = 16'hcac0;
    LUT4 mux_135_i5_4_lut (.A(n516[4]), .B(cmd_buf[3]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i5_4_lut.init = 16'hc0ca;
    FD1P3IX r_Register__i1 (.D(n1793), .SP(clk_enable_53), .CD(n1918), 
            .CK(clk), .Q(r_Register[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Register__i1.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(n1213), .B(clk_sample), .C(n3747), .Z(n1145)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i5545_2_lut (.A(n840[3]), .B(n1242), .Z(n1243[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5545_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_137 (.A(clk_sample), .B(n8657), .Z(n1167)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_137.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_138 (.A(n9982), .B(n4_adj_754), .C(n8423), 
         .D(n9217), .Z(n4179)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_138.init = 16'hfff4;
    LUT4 mux_646_i16_3_lut (.A(r_MB128_Bytes[16]), .B(n1907[15]), .C(n1145), 
         .Z(n1146[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i16_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_139 (.A(sp_phase[0]), .B(sp_hold_n_N_709), .Z(clk_enable_120)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(146[13:21])
    defparam i1_2_lut_adj_139.init = 16'h8888;
    LUT4 i5583_2_lut (.A(sp_phase[0]), .B(sp_phase[1]), .Z(n2467)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i5583_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_rep_137_4_lut_4_lut (.A(rd_buf_7__N_176), .B(n9965), .C(sp_hold_n_N_709), 
         .D(n10001), .Z(n9935)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i2_3_lut_rep_137_4_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(r_State[3]), .B(n9918), .C(clk_sample), 
         .D(n9988), .Z(n9217)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h1f0f;
    LUT4 mux_646_i15_3_lut (.A(r_MB128_Bytes[15]), .B(n1907[14]), .C(n1145), 
         .Z(n1146[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i15_3_lut.init = 16'hcaca;
    LUT4 mux_135_i6_4_lut (.A(n516[5]), .B(cmd_buf[4]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i6_4_lut.init = 16'hc0ca;
    LUT4 mux_646_i14_3_lut (.A(r_MB128_Bytes[14]), .B(n1907[13]), .C(n1145), 
         .Z(n1146[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i14_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_141 (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[0]), 
         .C(r_MB128_Bits[2]), .D(r_Bit_Count[2]), .Z(n8564)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i2_3_lut_4_lut_adj_141.init = 16'h8778;
    LUT4 mux_646_i13_3_lut (.A(r_MB128_Bytes[13]), .B(n1907[12]), .C(n1145), 
         .Z(n1146[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i13_3_lut.init = 16'hcaca;
    LUT4 i1236_2_lut_3_lut (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[0]), .C(r_Bit_Count[2]), 
         .Z(trigger_write_N_642[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i1236_2_lut_3_lut.init = 16'h7878;
    LUT4 mux_843_i7_3_lut (.A(ram_data_7__N_447[6]), .B(r_Write_Byte[6]), 
         .C(n9911), .Z(n1450[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_843_i7_3_lut.init = 16'hcaca;
    PFUMX i8856 (.BLUT(n9848), .ALUT(n9847), .C0(r_State[3]), .Z(n9849));
    LUT4 i3_3_lut_4_lut_4_lut (.A(n9982), .B(n9103), .C(n9958), .D(i_Data_c), 
         .Z(o_ReadLED_N_601)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1243_2_lut_3_lut_4_lut (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[3]), .D(r_Bit_Count[2]), .Z(trigger_write_N_642[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i1243_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n9726_bdd_2_lut (.A(n9726), .B(r_State[0]), .Z(n9727)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n9726_bdd_2_lut.init = 16'h2222;
    LUT4 i1257_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n9971), .C(r_Bit_Count[4]), 
         .D(r_Bit_Count[5]), .Z(trigger_write_N_642[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i1257_3_lut_4_lut.init = 16'h7f80;
    LUT4 mux_646_i12_3_lut (.A(r_MB128_Bytes[12]), .B(n1907[11]), .C(n1145), 
         .Z(n1146[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i12_3_lut.init = 16'hcaca;
    LUT4 n4_bdd_4_lut_8842 (.A(n4_adj_755), .B(reset_n_c), .C(r_State[2]), 
         .D(n9995), .Z(n9726)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam n4_bdd_4_lut_8842.init = 16'hafac;
    LUT4 mux_646_i11_3_lut (.A(r_MB128_Bytes[11]), .B(n1907[10]), .C(n1145), 
         .Z(n1146[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i11_3_lut.init = 16'hcaca;
    LUT4 mux_646_i10_3_lut (.A(r_MB128_Bytes[10]), .B(n1907[9]), .C(n1145), 
         .Z(n1146[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i10_3_lut.init = 16'hcaca;
    LUT4 mux_135_i7_4_lut (.A(n516[6]), .B(cmd_buf[5]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i7_4_lut.init = 16'hc0ca;
    LUT4 mux_646_i9_3_lut (.A(r_MB128_Bytes[9]), .B(n1907[8]), .C(n1145), 
         .Z(n1146[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i9_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_4_lut (.A(r_State[1]), .B(n9941), .C(n9934), .D(r_State[0]), 
         .Z(n8640)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 mux_646_i8_3_lut (.A(r_MB128_Bytes[8]), .B(n1907[7]), .C(n1145), 
         .Z(n1146[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i8_3_lut.init = 16'hcaca;
    LUT4 mux_646_i7_3_lut (.A(r_MB128_Bytes[7]), .B(n1907[6]), .C(n1145), 
         .Z(n1146[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i7_3_lut.init = 16'hcaca;
    LUT4 r_Bit_Count_5__I_0_775_i10_2_lut_rep_163_3_lut (.A(r_Bit_Count[4]), 
         .B(r_Bit_Count[5]), .C(r_Bit_Count[3]), .Z(n9961)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam r_Bit_Count_5__I_0_775_i10_2_lut_rep_163_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_107_3_lut_4_lut (.A(r_State[3]), .B(n9918), .C(clk_sample), 
         .D(n9988), .Z(n9905)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_rep_107_3_lut_4_lut.init = 16'he0f0;
    LUT4 mux_646_i6_3_lut (.A(r_MB128_Bytes[6]), .B(n1907[5]), .C(n1145), 
         .Z(n1146[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i6_3_lut.init = 16'hcaca;
    LUT4 mux_646_i5_3_lut (.A(r_MB128_Bytes[5]), .B(n1907[4]), .C(n1145), 
         .Z(n1146[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i5_3_lut.init = 16'hcaca;
    LUT4 mux_646_i4_3_lut (.A(r_MB128_Bytes[4]), .B(n1907[3]), .C(n1145), 
         .Z(n1146[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i4_3_lut.init = 16'hcaca;
    PFUMX i8755 (.BLUT(n9643), .ALUT(n9642), .C0(r_State[0]), .Z(n9644));
    LUT4 i1_2_lut_rep_174_3_lut (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[3]), .Z(n9972)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i1_2_lut_rep_174_3_lut.init = 16'hefef;
    LUT4 i2_4_lut_4_lut (.A(r_State[3]), .B(r_State[1]), .C(n9350), .D(r_Bit_Count[3]), 
         .Z(n56)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;
    defparam i2_4_lut_4_lut.init = 16'hdddf;
    LUT4 mux_646_i3_3_lut (.A(r_MB128_Bytes[3]), .B(n1907[2]), .C(n1145), 
         .Z(n1146[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i3_3_lut.init = 16'hcaca;
    LUT4 i32_4_lut_4_lut (.A(r_State[3]), .B(n9948), .C(i_Data_c), .D(n25), 
         .Z(n17)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam i32_4_lut_4_lut.init = 16'hba10;
    FD1P3IX r_Register__i2 (.D(n1794), .SP(clk_enable_53), .CD(n1918), 
            .CK(clk), .Q(r_Register[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Register__i2.GSR = "ENABLED";
    FD1P3IX r_Register__i3 (.D(n1795), .SP(clk_enable_53), .CD(n1918), 
            .CK(clk), .Q(r_Register[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Register__i3.GSR = "ENABLED";
    FD1P3IX r_Register__i4 (.D(n1796), .SP(clk_enable_53), .CD(n1918), 
            .CK(clk), .Q(r_Register[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Register__i4.GSR = "ENABLED";
    FD1P3IX r_Register__i5 (.D(n1797), .SP(clk_enable_53), .CD(n1918), 
            .CK(clk), .Q(r_Register[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Register__i5.GSR = "ENABLED";
    FD1P3IX r_Register__i6 (.D(n1798), .SP(clk_enable_53), .CD(n1918), 
            .CK(clk), .Q(r_Register[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Register__i6.GSR = "ENABLED";
    FD1P3IX r_Register__i7 (.D(n1799), .SP(clk_enable_53), .CD(n1918), 
            .CK(clk), .Q(r_Register[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Register__i7.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i1 (.D(trigger_write_N_642[1]), .SP(clk_enable_58), 
            .CD(n1916), .CK(clk), .Q(\r_Bit_Count[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Bit_Count__i1.GSR = "ENABLED";
    LUT4 mux_646_i2_3_lut (.A(r_MB128_Bytes[2]), .B(n1907[1]), .C(n1145), 
         .Z(n1146[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(n1422), .B(reset_n_c), .C(r_Register[5]), 
         .Z(n1796)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i1_2_lut_3_lut.init = 16'h7070;
    FD1P3IX r_Bit_Count__i2 (.D(trigger_write_N_642[2]), .SP(clk_enable_58), 
            .CD(n1916), .CK(clk), .Q(r_Bit_Count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Bit_Count__i2.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i3 (.D(trigger_write_N_642[3]), .SP(clk_enable_58), 
            .CD(n1916), .CK(clk), .Q(r_Bit_Count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Bit_Count__i3.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i4 (.D(trigger_write_N_642[4]), .SP(clk_enable_58), 
            .CD(n1916), .CK(clk), .Q(r_Bit_Count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Bit_Count__i4.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i5 (.D(trigger_write_N_642[5]), .SP(clk_enable_58), 
            .CD(n1916), .CK(clk), .Q(r_Bit_Count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Bit_Count__i5.GSR = "ENABLED";
    LUT4 i1270_1_lut (.A(rw_len[0]), .Z(n790[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(435[21:34])
    defparam i1270_1_lut.init = 16'h5555;
    CCU2D sub_477_add_2_15 (.A0(r_MB128_Bytes[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8387), .COUT(n8388), .S0(n1907[13]), .S1(n1907[14]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_15.INIT0 = 16'h5555;
    defparam sub_477_add_2_15.INIT1 = 16'h5555;
    defparam sub_477_add_2_15.INJECT1_0 = "NO";
    defparam sub_477_add_2_15.INJECT1_1 = "NO";
    LUT4 mux_711_i5_4_lut (.A(n840[4]), .B(r_MB128_Addr[5]), .C(n1261), 
         .D(n1755), .Z(n1262[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i5_4_lut.init = 16'hcac0;
    PFUMX mux_729_i17 (.BLUT(n1243[16]), .ALUT(n1262[16]), .C0(n1296), 
          .Z(n1297[16]));
    CCU2D sub_477_add_2_13 (.A0(r_MB128_Bytes[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8386), .COUT(n8387), .S0(n1907[11]), .S1(n1907[12]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_13.INIT0 = 16'h5555;
    defparam sub_477_add_2_13.INIT1 = 16'h5555;
    defparam sub_477_add_2_13.INJECT1_0 = "NO";
    defparam sub_477_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_477_add_2_11 (.A0(r_MB128_Bytes[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8385), .COUT(n8386), .S0(n1907[9]), .S1(n1907[10]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_11.INIT0 = 16'h5555;
    defparam sub_477_add_2_11.INIT1 = 16'h5555;
    defparam sub_477_add_2_11.INJECT1_0 = "NO";
    defparam sub_477_add_2_11.INJECT1_1 = "NO";
    LUT4 i2_4_lut_4_lut_4_lut (.A(r_State[3]), .B(n3594), .C(clk_sample), 
         .D(n9995), .Z(o_WriteLED_N_614)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3AX r_MB128_Addr_Curr_i0_i1 (.D(n1297[1]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i1.GSR = "ENABLED";
    LUT4 mux_135_i8_4_lut (.A(n516[7]), .B(cmd_buf[6]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i8_4_lut.init = 16'hc0ca;
    LUT4 i2_4_lut_4_lut_adj_142 (.A(r_State[3]), .B(r_State[1]), .C(n17_adj_759), 
         .D(n3992), .Z(n9097)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut_4_lut_adj_142.init = 16'h0040;
    LUT4 sp_phase_1__I_0_707_i3_2_lut_rep_203 (.A(sp_phase[0]), .B(sp_phase[1]), 
         .Z(n10001)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(424[13:30])
    defparam sp_phase_1__I_0_707_i3_2_lut_rep_203.init = 16'hbbbb;
    LUT4 i5546_2_lut (.A(n840[4]), .B(n1242), .Z(n1243[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5546_2_lut.init = 16'h8888;
    LUT4 i34_4_lut (.A(n9940), .B(r_Read_Byte[0]), .C(r_State[0]), .D(trigger_read_N_633), 
         .Z(n17_adj_759)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i34_4_lut.init = 16'hc5c0;
    LUT4 mux_376_i3_4_lut (.A(ram_data[2]), .B(r_FetchWrite_Byte[2]), .C(n1484), 
         .D(reset_n_c), .Z(ram_data_7__N_447[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[2] 503[43])
    defparam mux_376_i3_4_lut.init = 16'hcac0;
    CCU2D sub_477_add_2_9 (.A0(r_MB128_Bytes[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8384), .COUT(n8385), .S0(n1907[7]), .S1(n1907[8]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_9.INIT0 = 16'h5555;
    defparam sub_477_add_2_9.INIT1 = 16'h5555;
    defparam sub_477_add_2_9.INJECT1_0 = "NO";
    defparam sub_477_add_2_9.INJECT1_1 = "NO";
    LUT4 i736_1_lut (.A(cmd_len[0]), .Z(n1320)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i736_1_lut.init = 16'h5555;
    FD1P3IX cmd_buf_i29 (.D(cmd_buf[28]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i29.GSR = "ENABLED";
    FD1P3IX cmd_buf_i28 (.D(cmd_buf[27]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i28.GSR = "ENABLED";
    CCU2D add_809_15 (.A0(r_MB128_Addr_Curr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8369), .COUT(n8370), .S0(n840[13]), .S1(n840[14]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_15.INIT0 = 16'h5aaa;
    defparam add_809_15.INIT1 = 16'h5aaa;
    defparam add_809_15.INJECT1_0 = "NO";
    defparam add_809_15.INJECT1_1 = "NO";
    LUT4 n11_bdd_4_lut (.A(n9933), .B(r_State[2]), .C(r_State[0]), .D(n9995), 
         .Z(n9728)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam n11_bdd_4_lut.init = 16'h7000;
    PFUMX mux_845_i6 (.BLUT(n1450[5]), .ALUT(n2016), .C0(n1459), .Z(ram_data_7__N_115[5]));
    LUT4 i1_2_lut_rep_138_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(n9965), .D(sp_hold_n_N_709), .Z(n9936)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(424[13:30])
    defparam i1_2_lut_rep_138_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_adj_143 (.A(n1422), .B(reset_n_c), .C(r_Register[4]), 
         .Z(n1795)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i1_2_lut_3_lut_adj_143.init = 16'h7070;
    LUT4 i1317_2_lut_rep_204 (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n10002)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(428[17:31])
    defparam i1317_2_lut_rep_204.init = 16'heeee;
    FD1P3AX r_MB128_Addr_Curr_i0_i2 (.D(n1297[2]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i2.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i3 (.D(n1297[3]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i3.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i4 (.D(n1297[4]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i4.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i5 (.D(n1297[5]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i5.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i6 (.D(n1297[6]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i6.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i7 (.D(n1297[7]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i7.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i8 (.D(n1297[8]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i8.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i9 (.D(n1297[9]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i9.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i10 (.D(n1297[10]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i10.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i11 (.D(n1297[11]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i11.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i12 (.D(n1297[12]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i12.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i13 (.D(n1297[13]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i13.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i14 (.D(n1297[14]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i14.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i15 (.D(n1297[15]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i15.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i16 (.D(n1297[16]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_Curr_i0_i16.GSR = "ENABLED";
    PFUMX mux_729_i16 (.BLUT(n1243[15]), .ALUT(n1262[15]), .C0(n1296), 
          .Z(n1297[15]));
    FD1P3IX cmd_buf_i27 (.D(cmd_buf[26]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i27.GSR = "ENABLED";
    CCU2D add_809_7 (.A0(r_MB128_Addr_Curr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8365), .COUT(n8366), .S0(n840[5]), .S1(n840[6]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_7.INIT0 = 16'h5aaa;
    defparam add_809_7.INIT1 = 16'h5aaa;
    defparam add_809_7.INJECT1_0 = "NO";
    defparam add_809_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_144 (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n3445)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(428[17:31])
    defparam i1_2_lut_3_lut_adj_144.init = 16'he1e1;
    LUT4 i1325_2_lut_rep_176_3_lut (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n9974)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(428[17:31])
    defparam i1325_2_lut_rep_176_3_lut.init = 16'hfefe;
    CCU2D sub_477_add_2_7 (.A0(r_MB128_Bytes[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8383), .COUT(n8384), .S0(n1907[5]), .S1(n1907[6]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_7.INIT0 = 16'h5555;
    defparam sub_477_add_2_7.INIT1 = 16'h5555;
    defparam sub_477_add_2_7.INJECT1_0 = "NO";
    defparam sub_477_add_2_7.INJECT1_1 = "NO";
    CCU2D add_809_5 (.A0(r_MB128_Addr_Curr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8364), .COUT(n8365), .S0(n840[3]), .S1(n840[4]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_5.INIT0 = 16'h5aaa;
    defparam add_809_5.INIT1 = 16'h5aaa;
    defparam add_809_5.INJECT1_0 = "NO";
    defparam add_809_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_145 (.A(n9945), .B(n9992), .C(n13), .D(r_State[0]), 
         .Z(n9108)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_145.init = 16'h0c44;
    LUT4 mux_135_i9_4_lut (.A(n516[8]), .B(cmd_buf[7]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i9_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut_adj_146 (.A(n1422), .B(reset_n_c), .C(r_Register[3]), 
         .Z(n1794)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i1_2_lut_3_lut_adj_146.init = 16'h7070;
    LUT4 i2_3_lut_4_lut_adj_147 (.A(n9985), .B(n9961), .C(n9318), .D(r_State[2]), 
         .Z(n9154)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_147.init = 16'h0100;
    FD1P3JX cmd_buf_i25 (.D(cmd_buf[24]), .SP(clk_enable_85), .PD(n4455), 
            .CK(clk), .Q(cmd_buf[25])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i25.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_148 (.A(n1422), .B(reset_n_c), .C(r_Register[2]), 
         .Z(n1793)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i1_2_lut_3_lut_adj_148.init = 16'h7070;
    LUT4 i1365_2_lut_rep_205 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .Z(n10003)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(207[21:38])
    defparam i1365_2_lut_rep_205.init = 16'heeee;
    LUT4 mux_135_i10_4_lut (.A(n516[9]), .B(cmd_buf[8]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i10_4_lut.init = 16'hc0ca;
    FD1P3IX cmd_buf_i23 (.D(cmd_buf[22]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i23.GSR = "ENABLED";
    FD1P3IX cmd_buf_i22 (.D(cmd_buf[21]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i22.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_149 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .C(clk_samplediv[2]), .Z(clk_samplediv_5__N_325[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(207[21:38])
    defparam i1_2_lut_3_lut_adj_149.init = 16'he1e1;
    LUT4 mux_711_i6_4_lut (.A(n840[5]), .B(r_MB128_Addr[6]), .C(n1261), 
         .D(n1755), .Z(n1262[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i6_4_lut.init = 16'hcac0;
    LUT4 i1373_2_lut_rep_177_3_lut (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .C(clk_samplediv[2]), .Z(n9975)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(207[21:38])
    defparam i1373_2_lut_rep_177_3_lut.init = 16'hfefe;
    CCU2D sub_477_add_2_5 (.A0(r_MB128_Bytes[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8382), .COUT(n8383), .S0(n1907[3]), .S1(n1907[4]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_5.INIT0 = 16'h5555;
    defparam sub_477_add_2_5.INIT1 = 16'h5555;
    defparam sub_477_add_2_5.INJECT1_0 = "NO";
    defparam sub_477_add_2_5.INJECT1_1 = "NO";
    PFUMX mux_729_i15 (.BLUT(n1243[14]), .ALUT(n1262[14]), .C0(n1296), 
          .Z(n1297[14]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_150 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .C(clk_samplediv[3]), .D(clk_samplediv[2]), .Z(clk_samplediv_5__N_325[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(207[21:38])
    defparam i1_2_lut_3_lut_4_lut_adj_150.init = 16'hf0e1;
    LUT4 i5580_2_lut_3_lut (.A(n1422), .B(reset_n_c), .C(i_Data_c), .Z(n1799)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5580_2_lut_3_lut.init = 16'h7070;
    FD1P3IX cmd_buf_i21 (.D(cmd_buf[20]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i21.GSR = "ENABLED";
    FD1P3IX cmd_buf_i20 (.D(cmd_buf[19]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i20.GSR = "ENABLED";
    LUT4 mux_135_i11_4_lut (.A(n516[10]), .B(cmd_buf[9]), .C(n9938), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i11_4_lut.init = 16'hc0ca;
    FD1P3IX cmd_buf_i19 (.D(cmd_buf[18]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i19.GSR = "ENABLED";
    FD1P3IX cmd_buf_i18 (.D(cmd_buf[17]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i18.GSR = "ENABLED";
    LUT4 i28_3_lut (.A(n3594), .B(n25), .C(r_State[3]), .Z(n27_adj_760)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28_3_lut.init = 16'hcaca;
    LUT4 n9729_bdd_3_lut (.A(n9729), .B(n9725), .C(r_State[3]), .Z(r_State_3__N_399[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9729_bdd_3_lut.init = 16'hcaca;
    FD1P3IX cmd_buf_i17 (.D(cmd_buf[16]), .SP(clk_enable_85), .CD(n4455), 
            .CK(clk), .Q(cmd_buf[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_buf_i17.GSR = "ENABLED";
    LUT4 i2449_2_lut_rep_124_3_lut_4_lut (.A(n9966), .B(n9961), .C(n9995), 
         .D(n9985), .Z(n9922)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(830[6:12])
    defparam i2449_2_lut_rep_124_3_lut_4_lut.init = 16'hf010;
    CCU2D sub_477_add_2_3 (.A0(r_MB128_Bytes[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8381), .COUT(n8382), .S0(n1907[1]), .S1(n1907[2]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_3.INIT0 = 16'h5555;
    defparam sub_477_add_2_3.INIT1 = 16'h5555;
    defparam sub_477_add_2_3.INJECT1_0 = "NO";
    defparam sub_477_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_151 (.A(n1422), .B(reset_n_c), .C(r_Register[7]), 
         .Z(n1798)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i1_2_lut_3_lut_adj_151.init = 16'h7070;
    LUT4 mux_135_i12_4_lut (.A(n516[11]), .B(cmd_buf[10]), .C(n9938), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i12_4_lut.init = 16'hc0ca;
    LUT4 i988_1_lut_rep_206 (.A(sp_hold_n_N_709), .Z(clk_enable_108)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i988_1_lut_rep_206.init = 16'h5555;
    LUT4 i5547_2_lut (.A(n840[5]), .B(n1242), .Z(n1243[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5547_2_lut.init = 16'h8888;
    LUT4 i8660_3_lut_4_lut_4_lut (.A(sp_hold_n_N_709), .B(sp_end_desel), 
         .C(sp_phase[1]), .D(sp_phase[0]), .Z(clk_enable_43)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i8660_3_lut_4_lut_4_lut.init = 16'h000b;
    LUT4 n9260_bdd_4_lut_8838 (.A(n9906), .B(n9977), .C(n9989), .D(r_State[3]), 
         .Z(n9734)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(D)))) */ ;
    defparam n9260_bdd_4_lut_8838.init = 16'h0233;
    LUT4 i3565_2_lut_rep_207 (.A(trigger_write), .B(trigger_fetchwrite), 
         .Z(n10005)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3565_2_lut_rep_207.init = 16'hbbbb;
    LUT4 i3550_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[1]), 
         .D(n354[1]), .Z(n516[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3550_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3552_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[2]), 
         .D(n354[2]), .Z(n516[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3552_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3554_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[3]), 
         .D(n354[3]), .Z(n516[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3554_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3556_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[4]), 
         .D(n354[4]), .Z(n516[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3556_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_3_lut_adj_152 (.A(n1422), .B(reset_n_c), .C(r_Register[6]), 
         .Z(n1797)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i1_2_lut_3_lut_adj_152.init = 16'h7070;
    LUT4 i3558_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[5]), 
         .D(n354[5]), .Z(n516[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3558_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i8671_3_lut_4_lut_4_lut (.A(n9997), .B(n8395), .C(n9945), .D(r_State[3]), 
         .Z(clk_enable_42)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i8671_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i3560_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[6]), 
         .D(n354[6]), .Z(n516[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3560_3_lut_4_lut.init = 16'hf4b0;
    PFUMX mux_729_i14 (.BLUT(n1243[13]), .ALUT(n1262[13]), .C0(n1296), 
          .Z(n1297[13]));
    LUT4 i3562_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[7]), 
         .D(n354[7]), .Z(n516[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3562_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_135_i13_4_lut (.A(n516[12]), .B(cmd_buf[11]), .C(n9938), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[12])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i13_4_lut.init = 16'hc0ca;
    FD1P3AX r_Read_Byte_i0_i7 (.D(n8407), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i7.GSR = "ENABLED";
    LUT4 i3564_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[8]), 
         .D(n354[8]), .Z(n516[8])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3564_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3566_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[9]), 
         .D(n354[9]), .Z(n516[9])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3566_3_lut_4_lut.init = 16'hf4b0;
    CCU2D sub_477_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(r_MB128_Bytes[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8381), .S1(n1907[0]));   // c:/devel/diamond/pce_save128/firmware/save128.v(774[26:46])
    defparam sub_477_add_2_1.INIT0 = 16'hF000;
    defparam sub_477_add_2_1.INIT1 = 16'h5555;
    defparam sub_477_add_2_1.INJECT1_0 = "NO";
    defparam sub_477_add_2_1.INJECT1_1 = "NO";
    PFUMX mux_729_i13 (.BLUT(n1243[12]), .ALUT(n1262[12]), .C0(n1296), 
          .Z(n1297[12]));
    LUT4 i3179_3_lut_4_lut (.A(n9971), .B(n9961), .C(n3395), .D(n9964), 
         .Z(n3982)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C+!(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(755[11:27])
    defparam i3179_3_lut_4_lut.init = 16'hf0fd;
    LUT4 i3568_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[10]), 
         .D(n354[10]), .Z(n516[10])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3568_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3570_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[11]), 
         .D(n354[11]), .Z(n516[11])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3570_3_lut_4_lut.init = 16'hf4b0;
    CCU2D add_809_13 (.A0(r_MB128_Addr_Curr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8368), .COUT(n8369), .S0(n840[11]), .S1(n840[12]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_13.INIT0 = 16'h5aaa;
    defparam add_809_13.INIT1 = 16'h5aaa;
    defparam add_809_13.INJECT1_0 = "NO";
    defparam add_809_13.INJECT1_1 = "NO";
    LUT4 mux_135_i14_4_lut (.A(n516[13]), .B(cmd_buf[12]), .C(n9938), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[13])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i14_4_lut.init = 16'hc0ca;
    LUT4 i3572_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[12]), 
         .D(n354[12]), .Z(n516[12])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3572_3_lut_4_lut.init = 16'hf4b0;
    PFUMX mux_729_i12 (.BLUT(n1243[11]), .ALUT(n1262[11]), .C0(n1296), 
          .Z(n1297[11]));
    PFUMX i8851 (.BLUT(n9840), .ALUT(n9839), .C0(r_State[0]), .Z(n9841));
    FD1P3AX r_State_i3 (.D(r_State_3__N_7[3]), .SP(clk_enable_87), .CK(clk), 
            .Q(r_State[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_i3.GSR = "ENABLED";
    FD1P3IX rw_len_i4 (.D(n3449), .SP(clk_enable_144), .CD(n4449), .CK(clk), 
            .Q(rw_len[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rw_len_i4.GSR = "ENABLED";
    FD1P3IX rw_len_i2 (.D(n3453), .SP(clk_enable_144), .CD(n4449), .CK(clk), 
            .Q(rw_len[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rw_len_i2.GSR = "ENABLED";
    LUT4 i3574_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[13]), 
         .D(n354[13]), .Z(n516[13])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3574_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3183_3_lut_4_lut (.A(n9971), .B(n9961), .C(n3395), .D(n9966), 
         .Z(n3986)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(755[11:27])
    defparam i3183_3_lut_4_lut.init = 16'hfdf0;
    FD1P3AX r_State_i2 (.D(r_State_3__N_7[2]), .SP(clk_enable_90), .CK(clk), 
            .Q(r_State[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_i2.GSR = "ENABLED";
    LUT4 mux_646_i1_3_lut (.A(r_MB128_Bytes[1]), .B(n1907[0]), .C(n1145), 
         .Z(n1146[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_646_i1_3_lut.init = 16'hcaca;
    LUT4 i3576_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[14]), 
         .D(n354[14]), .Z(n516[14])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3576_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3181_3_lut_4_lut (.A(n9971), .B(n9961), .C(n3395), .D(n9951), 
         .Z(n3984)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(755[11:27])
    defparam i3181_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i3578_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[15]), 
         .D(n354[15]), .Z(n516[15])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3578_3_lut_4_lut.init = 16'hf4b0;
    LUT4 n4179_bdd_2_lut_8839 (.A(n4179), .B(r_State_3__N_399[1]), .Z(n9737)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n4179_bdd_2_lut_8839.init = 16'h4444;
    FD1P3AX r_MB128_Bits_i0_i2 (.D(n1094[2]), .SP(clk_enable_149), .CK(clk), 
            .Q(r_MB128_Bits[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bits_i0_i2.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i1 (.D(rd_buf[1]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i2 (.D(rd_buf[2]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i3 (.D(rd_buf[3]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i4 (.D(rd_buf[4]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i5 (.D(rd_buf[5]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i6 (.D(rd_buf[6]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i7 (.D(rd_buf[7]), .SP(clk_enable_98), 
            .CK(clk), .Q(r_FetchWrite_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_FetchWrite_Byte_i0_i7.GSR = "ENABLED";
    FD1P3AX r_Pos_Edge_i2 (.D(r_Pos_Edge_3__N_83[2]), .SP(clk_enable_99), 
            .CK(clk), .Q(\r_Pos_Edge[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Pos_Edge_i2.GSR = "ENABLED";
    FD1P3IX rw_len_i1 (.D(n3443), .SP(clk_enable_144), .CD(n4449), .CK(clk), 
            .Q(rw_len[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rw_len_i1.GSR = "ENABLED";
    FD1P3IX cmd_len_i4 (.D(n3471), .SP(clk_enable_145), .CD(n4446), .CK(clk), 
            .Q(cmd_len[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_len_i4.GSR = "ENABLED";
    FD1S3AX ram_data_i1 (.D(ram_data_7__N_115[1]), .CK(clk), .Q(ram_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i1.GSR = "ENABLED";
    FD1P3IX cmd_len_i2 (.D(n3445), .SP(clk_enable_145), .CD(n4446), .CK(clk), 
            .Q(cmd_len[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_len_i2.GSR = "ENABLED";
    FD1S3AX ram_data_i2 (.D(ram_data_7__N_115[2]), .CK(clk), .Q(ram_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i2.GSR = "ENABLED";
    FD1S3AX ram_data_i3 (.D(ram_data_7__N_115[3]), .CK(clk), .Q(ram_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i3.GSR = "ENABLED";
    FD1S3AX ram_data_i4 (.D(ram_data_7__N_115[4]), .CK(clk), .Q(ram_data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i4.GSR = "ENABLED";
    FD1S3AX ram_data_i5 (.D(ram_data_7__N_115[5]), .CK(clk), .Q(ram_data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i5.GSR = "ENABLED";
    FD1S3AX ram_data_i6 (.D(ram_data_7__N_115[6]), .CK(clk), .Q(ram_data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i6.GSR = "ENABLED";
    FD1P3AX ram_data_i7 (.D(ram_data_7__N_115[7]), .SP(clk_enable_103), 
            .CK(clk), .Q(ram_data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam ram_data_i7.GSR = "ENABLED";
    FD1S3AX sp_phase_i1 (.D(sp_phase_1__N_323[1]), .CK(clk), .Q(sp_phase[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_phase_i1.GSR = "ENABLED";
    FD1P3IX cmd_len_i1 (.D(n3457), .SP(clk_enable_145), .CD(n4446), .CK(clk), 
            .Q(cmd_len[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_len_i1.GSR = "ENABLED";
    FD1P3AX r_State_i0 (.D(r_State_3__N_7[0]), .SP(clk_enable_105), .CK(clk), 
            .Q(r_State[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_i0.GSR = "ENABLED";
    LUT4 i3580_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[16]), 
         .D(n354[16]), .Z(n516[16])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam i3580_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i8673_3_lut_4_lut_4_lut (.A(n9962), .B(n8395), .C(n9945), .D(r_State[3]), 
         .Z(clk_enable_41)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i8673_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i1_2_lut_rep_126_3_lut_4_lut (.A(n9965), .B(n9053), .C(read_in_transit), 
         .D(n9991), .Z(n9924)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i1_2_lut_rep_126_3_lut_4_lut.init = 16'h4000;
    FD1P3AX r_State_Prev_i0_i1 (.D(r_State[1]), .SP(clk_enable_108), .CK(clk), 
            .Q(r_State_Prev[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_Prev_i0_i1.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i2 (.D(r_State[2]), .SP(clk_enable_108), .CK(clk), 
            .Q(r_State_Prev[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_Prev_i0_i2.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i3 (.D(r_State[3]), .SP(clk_enable_108), .CK(clk), 
            .Q(r_State_Prev[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_Prev_i0_i3.GSR = "ENABLED";
    LUT4 mux_843_i2_3_lut (.A(ram_data_7__N_447[1]), .B(r_Write_Byte[1]), 
         .C(n9911), .Z(n1450[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_843_i2_3_lut.init = 16'hcaca;
    FD1P3AX r_Read_Byte_i0_i1 (.D(n1504[1]), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i2 (.D(n1504[2]), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i3 (.D(n1504[3]), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i4 (.D(n1504[4]), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i5 (.D(n1504[5]), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i6 (.D(n1504[6]), .SP(clk_enable_114), .CK(clk), 
            .Q(r_Read_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Read_Byte_i0_i6.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_153 (.A(n9924), .B(n9958), .C(rd_buf[7]), 
         .D(n1503), .Z(n8407)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_153.init = 16'h00b0;
    LUT4 mux_135_i15_4_lut (.A(n516[14]), .B(cmd_buf[13]), .C(n9938), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i15_4_lut.init = 16'hc0ca;
    LUT4 i5654_3_lut_4_lut (.A(n9965), .B(n9053), .C(n9991), .D(sp_active_N_716), 
         .Z(clk_enable_115)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i5654_3_lut_4_lut.init = 16'hf040;
    LUT4 mux_135_i16_4_lut (.A(n516[15]), .B(cmd_buf[14]), .C(n9938), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i16_4_lut.init = 16'hc0ca;
    LUT4 mux_376_i2_4_lut (.A(ram_data[1]), .B(r_FetchWrite_Byte[1]), .C(n1484), 
         .D(reset_n_c), .Z(ram_data_7__N_447[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[2] 503[43])
    defparam mux_376_i2_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_154 (.A(n9965), .B(n9053), .C(write_in_transit), 
         .D(n9991), .Z(n3597)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i1_2_lut_3_lut_4_lut_adj_154.init = 16'h4000;
    LUT4 mux_711_i7_4_lut (.A(n840[6]), .B(r_MB128_Addr[7]), .C(n1261), 
         .D(n1755), .Z(n1262[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i7_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_155 (.A(n9965), .B(n9053), .C(n263), 
         .D(n9991), .Z(n1755)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i1_2_lut_3_lut_4_lut_adj_155.init = 16'h4000;
    LUT4 i2_3_lut_4_lut_adj_156 (.A(n9965), .B(n9053), .C(fetchwrt_in_transit), 
         .D(n9991), .Z(clk_enable_98)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i2_3_lut_4_lut_adj_156.init = 16'h4000;
    LUT4 i2143_2_lut_rep_130_3_lut (.A(n9965), .B(n9053), .C(write_in_transit), 
         .Z(n9928)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i2143_2_lut_rep_130_3_lut.init = 16'h4040;
    LUT4 i5345_2_lut_3_lut (.A(n9965), .B(n9053), .C(sp_active_N_716), 
         .Z(sp_active_N_715)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i5345_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i2_3_lut_4_lut_adj_157 (.A(n9958), .B(r_State[2]), .C(r_State[3]), 
         .D(n9985), .Z(n8468)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i2_3_lut_4_lut_adj_157.init = 16'h0002;
    LUT4 mux_376_i7_4_lut (.A(ram_data[6]), .B(r_FetchWrite_Byte[6]), .C(n1484), 
         .D(reset_n_c), .Z(ram_data_7__N_447[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[2] 503[43])
    defparam mux_376_i7_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut_4_lut_adj_158 (.A(n9958), .B(r_State[2]), .C(r_State[0]), 
         .D(r_State[1]), .Z(n8)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_3_lut_4_lut_adj_158.init = 16'h2202;
    LUT4 i5548_2_lut (.A(n840[6]), .B(n1242), .Z(n1243[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5548_2_lut.init = 16'h8888;
    LUT4 mux_135_i17_4_lut (.A(n516[16]), .B(cmd_buf[15]), .C(n9938), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam mux_135_i17_4_lut.init = 16'hc0ca;
    LUT4 i1_3_lut_3_lut (.A(n9976), .B(n9912), .C(r_State[0]), .Z(n57)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_3_lut_3_lut.init = 16'h0808;
    LUT4 i8726_4_lut_4_lut_rep_149 (.A(n9958), .B(n9967), .C(n3151), .D(reset_n_c), 
         .Z(clk_enable_161)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i8726_4_lut_4_lut_rep_149.init = 16'h8aff;
    LUT4 i8622_2_lut_2_lut_3_lut_4_lut (.A(n9958), .B(n9967), .C(n3151), 
         .D(reset_n_c), .Z(n4424)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i8622_2_lut_2_lut_3_lut_4_lut.init = 16'h0277;
    LUT4 i8693_3_lut_rep_114_4_lut (.A(n9930), .B(n9955), .C(n9971), .D(n9995), 
         .Z(n9912)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(684[13] 687[11])
    defparam i8693_3_lut_rep_114_4_lut.init = 16'h1000;
    LUT4 i1_4_lut_4_lut_adj_159 (.A(n9914), .B(n9918), .C(n9909), .D(r_State[1]), 
         .Z(n37)) /* synthesis lut_function=((B (C (D))+!B (D))+!A) */ ;
    defparam i1_4_lut_4_lut_adj_159.init = 16'hf755;
    LUT4 i8613_3_lut_4_lut_4_lut (.A(n9953), .B(n8395), .C(n9945), .D(r_State[3]), 
         .Z(clk_enable_155)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;
    defparam i8613_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i8700_4_lut (.A(clk_enable_58), .B(n9462), .C(n9114), .D(n9237), 
         .Z(n1916)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i8700_4_lut.init = 16'h0888;
    LUT4 i1_3_lut_4_lut_adj_160 (.A(r_State[0]), .B(n9982), .C(n9968), 
         .D(n13), .Z(n9086)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[43:71])
    defparam i1_3_lut_4_lut_adj_160.init = 16'h2f00;
    LUT4 mux_711_i8_4_lut (.A(n840[7]), .B(r_MB128_Addr[8]), .C(n1261), 
         .D(n1755), .Z(n1262[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i8_4_lut.init = 16'hcac0;
    LUT4 i5549_2_lut (.A(n840[7]), .B(n1242), .Z(n1243[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5549_2_lut.init = 16'h8888;
    LUT4 i8558_4_lut (.A(n9972), .B(n1), .C(r_State[0]), .D(n4_adj_761), 
         .Z(n9237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i8558_4_lut.init = 16'hcfca;
    LUT4 i2_3_lut_3_lut_4_lut (.A(n9933), .B(n9995), .C(n8_adj_762), .D(n9103), 
         .Z(n8423)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i2_3_lut_3_lut_4_lut.init = 16'hb000;
    PFUMX i8893 (.BLUT(n10006), .ALUT(n10007), .C0(sp_phase[1]), .Z(wr_buf_7__N_231));
    LUT4 mux_873_i1_4_lut (.A(rd_buf[0]), .B(r_Read_Byte[1]), .C(n1503), 
         .D(n9913), .Z(n1504[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_873_i1_4_lut.init = 16'hcac0;
    LUT4 mux_711_i9_4_lut (.A(n840[8]), .B(r_MB128_Addr[9]), .C(n1261), 
         .D(n1755), .Z(n1262[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i9_4_lut.init = 16'hcac0;
    LUT4 i2202_3_lut_4_lut_4_lut (.A(n9962), .B(n9934), .C(r_State[0]), 
         .D(n9961), .Z(n3264)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i2202_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 mux_843_i3_3_lut (.A(ram_data_7__N_447[2]), .B(r_Write_Byte[2]), 
         .C(n9911), .Z(n1450[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_843_i3_3_lut.init = 16'hcaca;
    FD1P3AX sp_active_692 (.D(sp_active_N_715), .SP(clk_enable_115), .CK(clk), 
            .Q(sp_hold_n_N_709)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_active_692.GSR = "ENABLED";
    FD1P3AX r_State_i1 (.D(r_State_3__N_7[1]), .SP(clk_enable_116), .CK(clk), 
            .Q(r_State[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_State_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_161 (.A(n9945), .B(n9988), .C(n9921), .D(n4_adj_763), 
         .Z(n7_adj_764)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_161.init = 16'heca0;
    LUT4 i2409_3_lut_4_lut_4_lut (.A(n9962), .B(n13), .C(r_State[0]), 
         .D(n9961), .Z(n3284)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i2409_3_lut_4_lut_4_lut.init = 16'hfc5c;
    FD1P3IX r_MB128_Bits_i0_i1 (.D(r_MB128_Bits[2]), .SP(clk_enable_149), 
            .CD(n6332), .CK(clk), .Q(r_MB128_Bits[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bits_i0_i1.GSR = "ENABLED";
    LUT4 n33_bdd_3_lut_8812_4_lut_4_lut (.A(n9997), .B(trigger_read_N_633), 
         .C(r_State[1]), .D(n9972), .Z(n9643)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam n33_bdd_3_lut_8812_4_lut_4_lut.init = 16'h0008;
    LUT4 n56_bdd_4_lut_8749_4_lut (.A(r_State[1]), .B(r_State[2]), .C(r_State[0]), 
         .D(n9917), .Z(n9629)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam n56_bdd_4_lut_8749_4_lut.init = 16'h2000;
    FD1P3IX r_MB128_Bytes_i0_i16 (.D(n1146[16]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i16.GSR = "ENABLED";
    LUT4 n47_bdd_2_lut_8860_3_lut_4_lut_4_lut (.A(n9997), .B(n9995), .C(n8_adj_762), 
         .D(n9972), .Z(n9840)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam n47_bdd_2_lut_8860_3_lut_4_lut_4_lut.init = 16'hf070;
    LUT4 i5550_2_lut (.A(n840[8]), .B(n1242), .Z(n1243[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5550_2_lut.init = 16'h8888;
    CCU2D add_68_18 (.A0(r_MB128_Addr[16]), .B0(r_MB128_Bytes[16]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8380), .S0(n354[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_18.INIT0 = 16'h5666;
    defparam add_68_18.INIT1 = 16'h0000;
    defparam add_68_18.INJECT1_0 = "NO";
    defparam add_68_18.INJECT1_1 = "NO";
    LUT4 i8556_4_lut_4_lut (.A(n9906), .B(n9932), .C(r_State[0]), .D(n1654[0]), 
         .Z(n9363)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam i8556_4_lut_4_lut.init = 16'h5c50;
    LUT4 i15_4_lut (.A(n17_adj_765), .B(n30), .C(n26_adj_766), .D(n18), 
         .Z(n3720)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i15_4_lut.init = 16'hfffe;
    FD1P3IX r_MB128_Bytes_i0_i15 (.D(n1146[15]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_162 (.A(r_MB128_Bytes[9]), .B(r_MB128_Bytes[7]), .Z(n17_adj_765)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i1_2_lut_adj_162.init = 16'heeee;
    LUT4 i14_4_lut (.A(r_MB128_Bytes[14]), .B(n28), .C(n22_adj_767), .D(r_MB128_Bytes[2]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i14_4_lut.init = 16'hfffe;
    FD1P3AX sp_clk_691 (.D(n2467), .SP(clk_enable_120), .CK(clk), .Q(sp_clk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_clk_691.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(r_MB128_Bytes[5]), .B(r_MB128_Bytes[1]), .C(r_MB128_Bytes[13]), 
         .D(r_MB128_Bytes[3]), .Z(n26_adj_766)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i10_4_lut.init = 16'hfffe;
    FD1P3IX rd_buf_0__684 (.D(sp_miso_c), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_0__684.GSR = "ENABLED";
    FD1P3IX rd_buf_1__683 (.D(rd_buf[0]), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_1__683.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_163 (.A(n9958), .B(r_State[3]), .C(n9086), .D(n9354), 
         .Z(n19)) /* synthesis lut_function=(A (B (C)+!B !(D))) */ ;
    defparam i1_4_lut_adj_163.init = 16'h80a2;
    LUT4 i2_2_lut_adj_164 (.A(r_MB128_Bytes[6]), .B(r_MB128_Bytes[11]), 
         .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i2_2_lut_adj_164.init = 16'heeee;
    LUT4 i12_4_lut (.A(r_MB128_Bytes[10]), .B(r_MB128_Bytes[12]), .C(r_MB128_Bytes[15]), 
         .D(r_MB128_Bytes[16]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(r_MB128_Bytes[8]), .B(r_MB128_Bytes[4]), .Z(n22_adj_767)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 mux_711_i10_4_lut (.A(n840[9]), .B(r_MB128_Addr[10]), .C(n1261), 
         .D(n1755), .Z(n1262[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i10_4_lut.init = 16'hcac0;
    FD1P3IX rd_buf_2__682 (.D(rd_buf[1]), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_2__682.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i14 (.D(n1146[14]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i14.GSR = "ENABLED";
    LUT4 i5551_2_lut (.A(n840[9]), .B(n1242), .Z(n1243[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5551_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_165 (.A(clk_samplediv[3]), .B(n9975), .C(clk_samplediv[4]), 
         .D(clk_samplediv[5]), .Z(clk_samplediv_5__N_325[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(207[21:38])
    defparam i1_3_lut_4_lut_adj_165.init = 16'hfe01;
    LUT4 mux_711_i11_4_lut (.A(n840[10]), .B(r_MB128_Addr[11]), .C(n1261), 
         .D(n1755), .Z(n1262[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i11_4_lut.init = 16'hcac0;
    LUT4 i2_2_lut_3_lut_4_lut (.A(sp_hold_n_N_709), .B(n9965), .C(clk_enable_46), 
         .D(n10001), .Z(clk_enable_145)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(427[9:35])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i3639_2_lut_3_lut_4_lut (.A(sp_hold_n_N_709), .B(n9965), .C(clk_enable_46), 
         .D(n10001), .Z(n4446)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(427[9:35])
    defparam i3639_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i1_2_lut_4_lut (.A(n9912), .B(n9917), .C(r_State[0]), .D(r_State[2]), 
         .Z(n8660)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0035;
    LUT4 i5552_2_lut (.A(n840[10]), .B(n1242), .Z(n1243[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5552_2_lut.init = 16'h8888;
    LUT4 i1493_2_lut_rep_127_3_lut_4_lut (.A(sp_hold_n_N_709), .B(n9965), 
         .C(trigger_wren), .D(n9981), .Z(n9925)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(427[9:35])
    defparam i1493_2_lut_rep_127_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i1_4_lut_adj_166 (.A(n9943), .B(n9940), .C(n9945), .D(r_State[0]), 
         .Z(n4_adj_763)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_166.init = 16'ha088;
    LUT4 i2_4_lut_adj_167 (.A(n3915), .B(n9958), .C(n3395), .D(r_State[3]), 
         .Z(n8395)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_167.init = 16'h0888;
    LUT4 i2_2_lut_3_lut_4_lut_adj_168 (.A(sp_hold_n_N_709), .B(n9965), .C(clk_enable_46), 
         .D(n9981), .Z(clk_enable_85)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(427[9:35])
    defparam i2_2_lut_3_lut_4_lut_adj_168.init = 16'hf0f8;
    FD1P3IX rd_buf_3__681 (.D(rd_buf[2]), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_3__681.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i13 (.D(n1146[13]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i13.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i12 (.D(n1146[12]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i12.GSR = "ENABLED";
    LUT4 i58_3_lut_rep_110_4_lut (.A(n13), .B(n9995), .C(r_State[0]), 
         .D(n9912), .Z(n9908)) /* synthesis lut_function=(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i58_3_lut_rep_110_4_lut.init = 16'hb0bf;
    FD1P3IX r_MB128_Bytes_i0_i11 (.D(n1146[11]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i11.GSR = "ENABLED";
    LUT4 i3644_2_lut_3_lut_4_lut (.A(sp_hold_n_N_709), .B(n9965), .C(clk_enable_46), 
         .D(n9981), .Z(n4455)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(427[9:35])
    defparam i3644_2_lut_3_lut_4_lut.init = 16'hf070;
    FD1P3IX r_MB128_Bytes_i0_i10 (.D(n1146[10]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i10.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i9 (.D(n1146[9]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i9.GSR = "ENABLED";
    LUT4 i491_3_lut_4_lut (.A(r_Bit_Count[0]), .B(n9994), .C(ram_data_7__N_447[5]), 
         .D(i_Data_c), .Z(n2016)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i491_3_lut_4_lut.init = 16'hf2d0;
    FD1P3IX r_MB128_Bytes_i0_i8 (.D(n1146[8]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i8.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i7 (.D(n1146[7]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(r_State[3]), .B(n9977), .C(r_State[2]), 
         .D(n9958), .Z(n1459)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'h0800;
    FD1P3IX r_MB128_Bytes_i0_i6 (.D(n1146[6]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i6.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_142_4_lut (.A(r_Bit_Count[0]), .B(n9979), .C(r_Bit_Count[4]), 
         .D(n9980), .Z(n9940)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_142_4_lut.init = 16'hffef;
    LUT4 i496_3_lut_4_lut (.A(r_Bit_Count[0]), .B(n9979), .C(i_Data_c), 
         .D(ram_data_7__N_447[0]), .Z(n2021)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i496_3_lut_4_lut.init = 16'hfe10;
    LUT4 i8692_2_lut_rep_117_3_lut_4_lut (.A(r_Bit_Count[4]), .B(n9980), 
         .C(n3720), .D(r_MB128_Bytes[0]), .Z(n9915)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i8692_2_lut_rep_117_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_170 (.A(r_Bit_Count[4]), .B(n9980), .C(n9190), 
         .D(n9971), .Z(n1516)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_170.init = 16'hf0e0;
    LUT4 n56_bdd_3_lut_4_lut (.A(n13), .B(n9995), .C(r_State[0]), .D(n9982), 
         .Z(n9847)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam n56_bdd_3_lut_4_lut.init = 16'h00b0;
    LUT4 i2_2_lut_3_lut (.A(n9912), .B(r_State[1]), .C(n12), .Z(n22)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h4040;
    LUT4 i8547_4_lut (.A(n9968), .B(n9971), .C(n9961), .D(n9190), .Z(n9354)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i8547_4_lut.init = 16'hfefa;
    LUT4 mux_376_i1_4_lut (.A(ram_data[0]), .B(r_FetchWrite_Byte[0]), .C(n1484), 
         .D(reset_n_c), .Z(ram_data_7__N_447[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[2] 503[43])
    defparam mux_376_i1_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_112_3_lut_4_lut (.A(n9932), .B(r_State[0]), .C(n9988), 
         .D(r_State[3]), .Z(n9910)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_112_3_lut_4_lut.init = 16'h0010;
    LUT4 i3581_2_lut (.A(r_State[0]), .B(r_State[1]), .Z(n4330)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i3581_2_lut.init = 16'h6666;
    LUT4 i5388_2_lut (.A(r_State[1]), .B(reset_n_c), .Z(r_State_3__N_395[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(169[4] 190[7])
    defparam i5388_2_lut.init = 16'h8888;
    PFUMX mux_729_i11 (.BLUT(n1243[10]), .ALUT(n1262[10]), .C0(n1296), 
          .Z(n1297[10]));
    LUT4 i8523_2_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10000), .C(n9318), 
         .D(n9985), .Z(n9328)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(516[11:27])
    defparam i8523_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_376_i5_4_lut (.A(ram_data[4]), .B(r_FetchWrite_Byte[4]), .C(n1484), 
         .D(reset_n_c), .Z(ram_data_7__N_447[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[2] 503[43])
    defparam mux_376_i5_4_lut.init = 16'hcac0;
    LUT4 i8708_4_lut (.A(reset_n_c), .B(n1755), .C(n9958), .D(n4_adj_768), 
         .Z(clk_enable_76)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i8708_4_lut.init = 16'hddfd;
    LUT4 i1_4_lut_adj_171 (.A(n9934), .B(n1261), .C(n9967), .D(n1296), 
         .Z(n4_adj_768)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_171.init = 16'hb3a0;
    LUT4 i1_4_lut_4_lut_4_lut (.A(r_State[1]), .B(n9917), .C(r_State[0]), 
         .D(n9916), .Z(n34)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0151;
    LUT4 i5_3_lut (.A(r_Bit_Count[2]), .B(n10_adj_769), .C(r_Bit_Count[0]), 
         .Z(n1373)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i5_3_lut.init = 16'h4040;
    FD1P3IX r_MB128_Bytes_i0_i5 (.D(n1146[5]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i5.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i4 (.D(n1146[4]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i4.GSR = "ENABLED";
    PFUMX mux_729_i10 (.BLUT(n1243[9]), .ALUT(n1262[9]), .C0(n1296), .Z(n1297[9]));
    LUT4 i4_4_lut (.A(n9995), .B(n10000), .C(r_Bit_Count[3]), .D(\r_Bit_Count[1] ), 
         .Z(n10_adj_769)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i4_4_lut.init = 16'h0020;
    LUT4 i147_2_lut (.A(read_in_transit), .B(write_in_transit), .Z(n263)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(474[6] 479[11])
    defparam i147_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_adj_172 (.A(cmd_len[2]), .B(cmd_len[5]), .C(cmd_len[0]), 
         .D(cmd_len[1]), .Z(n10_adj_770)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[39:53])
    defparam i4_4_lut_adj_172.init = 16'hfffe;
    LUT4 i1_4_lut_adj_173 (.A(sp_hold_n_N_709), .B(rw_len[4]), .C(n9990), 
         .D(n6172), .Z(n9053)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(431[14:57])
    defparam i1_4_lut_adj_173.init = 16'h0002;
    PFUMX mux_729_i9 (.BLUT(n1243[8]), .ALUT(n1262[8]), .C0(n1296), .Z(n1297[8]));
    LUT4 i1_2_lut_2_lut (.A(r_State[1]), .B(r_State[3]), .Z(n4_adj_771)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut.init = 16'h4444;
    CCU2D add_68_16 (.A0(r_MB128_Addr[14]), .B0(r_MB128_Bytes[14]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[15]), .B1(r_MB128_Bytes[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8379), .COUT(n8380), .S0(n354[14]), 
          .S1(n354[15]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_16.INIT0 = 16'h5666;
    defparam add_68_16.INIT1 = 16'h5666;
    defparam add_68_16.INJECT1_0 = "NO";
    defparam add_68_16.INJECT1_1 = "NO";
    LUT4 i5383_2_lut (.A(rw_len[3]), .B(rw_len[2]), .Z(n6172)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5383_2_lut.init = 16'heeee;
    LUT4 i8652_3_lut_4_lut (.A(n9995), .B(clk_sample), .C(n25_adj_772), 
         .D(reset_n_c), .Z(clk_enable_53)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;
    defparam i8652_3_lut_4_lut.init = 16'h08ff;
    LUT4 i3_4_lut_adj_174 (.A(n9930), .B(n9961), .C(n9971), .D(n9998), 
         .Z(n1213)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i3_4_lut_adj_174.init = 16'h2000;
    LUT4 mux_711_i12_4_lut (.A(n840[11]), .B(r_MB128_Addr[12]), .C(n1261), 
         .D(n1755), .Z(n1262[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i12_4_lut.init = 16'hcac0;
    FD1P3IX r_MB128_Bytes_i0_i3 (.D(n1146[3]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i3.GSR = "ENABLED";
    FD1P3IX rd_buf_4__680 (.D(rd_buf[3]), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_4__680.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_175 (.A(n9995), .B(clk_sample), .C(reset_n_c), 
         .D(n1167), .Z(n4_adj_773)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_175.init = 16'h0080;
    FD1P3IX r_MB128_Bytes_i0_i2 (.D(n1146[2]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i2.GSR = "ENABLED";
    LUT4 mux_376_i4_4_lut (.A(ram_data[3]), .B(r_FetchWrite_Byte[3]), .C(n1484), 
         .D(reset_n_c), .Z(ram_data_7__N_447[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[2] 503[43])
    defparam mux_376_i4_4_lut.init = 16'hcac0;
    LUT4 i8632_3_lut_4_lut (.A(n9995), .B(clk_sample), .C(n27_adj_760), 
         .D(reset_n_c), .Z(clk_enable_147)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;
    defparam i8632_3_lut_4_lut.init = 16'h80ff;
    FD1P3IX r_MB128_Bytes_i0_i1 (.D(n1146[1]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i1.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i16 (.D(i_Data_c), .SP(clk_enable_161), .CD(n4424), 
            .CK(clk), .Q(r_MB128_Addr[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i16.GSR = "ENABLED";
    LUT4 i5553_2_lut (.A(n840[11]), .B(n1242), .Z(n1243[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5553_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_176 (.A(n9932), .B(r_State[0]), .C(r_State[1]), 
         .D(r_State[3]), .Z(n9188)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_176.init = 16'h0010;
    LUT4 n12_bdd_2_lut_8759_3_lut_4_lut (.A(n9995), .B(clk_sample), .C(n9644), 
         .D(n9993), .Z(trigger_read_N_621)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n12_bdd_2_lut_8759_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_711_i13_4_lut (.A(n840[12]), .B(r_MB128_Addr[13]), .C(n1261), 
         .D(n1755), .Z(n1262[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i13_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_adj_177 (.A(r_State[0]), .B(n9912), .C(r_State[2]), 
         .Z(n8659)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_177.init = 16'h2020;
    CCU2D add_68_14 (.A0(r_MB128_Addr[12]), .B0(r_MB128_Bytes[12]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[13]), .B1(r_MB128_Bytes[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8378), .COUT(n8379), .S0(n354[12]), 
          .S1(n354[13]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_14.INIT0 = 16'h5666;
    defparam add_68_14.INIT1 = 16'h5666;
    defparam add_68_14.INJECT1_0 = "NO";
    defparam add_68_14.INJECT1_1 = "NO";
    LUT4 i5554_2_lut (.A(n840[12]), .B(n1242), .Z(n1243[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5554_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_178 (.A(n9983), .B(r_Bit_Count[2]), .C(r_Bit_Count[3]), 
         .D(n10000), .Z(n1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_178.init = 16'hfffe;
    LUT4 i30_3_lut_4_lut (.A(n9956), .B(n9933), .C(r_State[2]), .D(n9929), 
         .Z(n25)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i30_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_123_2_lut_3_lut_4_lut (.A(n9995), .B(clk_sample), 
         .C(n9963), .D(r_State[3]), .Z(n9921)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_123_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_711_i14_4_lut (.A(n840[13]), .B(r_MB128_Addr[14]), .C(n1261), 
         .D(n1755), .Z(n1262[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i14_4_lut.init = 16'hcac0;
    LUT4 i5555_2_lut (.A(n840[13]), .B(n1242), .Z(n1243[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5555_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_179 (.A(n9995), .B(clk_sample), .C(n59_adj_774), 
         .D(reset_n_c), .Z(clk_enable_13)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;
    defparam i1_3_lut_4_lut_adj_179.init = 16'h80ff;
    FD1P3IX rd_buf_5__679 (.D(rd_buf[4]), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_5__679.GSR = "ENABLED";
    LUT4 mux_711_i15_4_lut (.A(n840[14]), .B(r_MB128_Addr[15]), .C(n1261), 
         .D(n1755), .Z(n1262[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i15_4_lut.init = 16'hcac0;
    FD1P3IX rd_buf_6__678 (.D(rd_buf[5]), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_6__678.GSR = "ENABLED";
    FD1P3IX rd_buf_7__677 (.D(rd_buf[6]), .SP(clk_enable_143), .CD(n4436), 
            .CK(clk), .Q(rd_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rd_buf_7__677.GSR = "ENABLED";
    LUT4 i5556_2_lut (.A(n840[14]), .B(n1242), .Z(n1243[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5556_2_lut.init = 16'h8888;
    LUT4 i8608_2_lut_4_lut (.A(reset_n_c), .B(n9091), .C(n9958), .D(r_Bit_Count[0]), 
         .Z(n9371)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i8608_2_lut_4_lut.init = 16'h8a75;
    LUT4 i8657_3_lut_rep_122_4_lut (.A(n9995), .B(clk_sample), .C(n9091), 
         .D(reset_n_c), .Z(clk_enable_58)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;
    defparam i8657_3_lut_rep_122_4_lut.init = 16'h08ff;
    LUT4 i2_3_lut_4_lut_adj_180 (.A(n9995), .B(clk_sample), .C(n9977), 
         .D(n6356), .Z(clk_enable_39)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_180.init = 16'h0080;
    FD1P3IX rw_len_i0 (.D(n790[0]), .SP(clk_enable_144), .CD(n4449), .CK(clk), 
            .Q(rw_len[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam rw_len_i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut_adj_181 (.A(n9995), .B(clk_sample), .C(r_State[0]), 
         .D(n9993), .Z(n8_adj_775)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_181.init = 16'h0800;
    PFUMX i33 (.BLUT(n9138), .ALUT(n9097), .C0(r_State[2]), .Z(n20));
    LUT4 i1_3_lut_4_lut_adj_182 (.A(n9995), .B(clk_sample), .C(n17), .D(reset_n_c), 
         .Z(clk_enable_148)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;
    defparam i1_3_lut_4_lut_adj_182.init = 16'h80ff;
    PFUMX mux_845_i3 (.BLUT(n1450[2]), .ALUT(n2019), .C0(n1459), .Z(ram_data_7__N_115[2]));
    LUT4 mux_711_i16_4_lut (.A(n840[15]), .B(r_MB128_Addr[16]), .C(n1261), 
         .D(n1755), .Z(n1262[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i16_4_lut.init = 16'hcac0;
    LUT4 i5557_2_lut (.A(n840[15]), .B(n1242), .Z(n1243[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5557_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_183 (.A(n9995), .B(clk_sample), .C(n8_adj_762), 
         .D(r_State[3]), .Z(n9114)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_183.init = 16'h0080;
    FD1P3IX cmd_len_i0 (.D(n1320), .SP(clk_enable_145), .CD(n4446), .CK(clk), 
            .Q(cmd_len[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam cmd_len_i0.GSR = "ENABLED";
    LUT4 i8513_3_lut (.A(r_Bit_Count[2]), .B(\r_Bit_Count[1] ), .C(r_Bit_Count[0]), 
         .Z(n9318)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i8513_3_lut.init = 16'ha8a8;
    LUT4 i54_3_lut_4_lut (.A(n9929), .B(n9995), .C(r_State[3]), .D(n9914), 
         .Z(n9304)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i54_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2_3_lut_4_lut_adj_184 (.A(i_Data_c), .B(n9926), .C(n3982), .D(n9964), 
         .Z(n9120)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_184.init = 16'h0800;
    PFUMX mux_729_i8 (.BLUT(n1243[7]), .ALUT(n1262[7]), .C0(n1296), .Z(n1297[7]));
    LUT4 i2_3_lut_4_lut_adj_185 (.A(i_Data_c), .B(n9926), .C(n3984), .D(n9951), 
         .Z(n9126)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_185.init = 16'h0008;
    LUT4 i30_4_lut (.A(n9968), .B(n8), .C(r_State[3]), .D(n13_adj_776), 
         .Z(n25_adj_772)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i30_4_lut.init = 16'hfaca;
    LUT4 i8546_4_lut (.A(n9917), .B(n9922), .C(r_State[2]), .D(n4330), 
         .Z(n9353)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i8546_4_lut.init = 16'h3035;
    LUT4 i32_4_lut (.A(n9944), .B(r_State[0]), .C(r_State[2]), .D(n9933), 
         .Z(n12_adj_777)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;
    defparam i32_4_lut.init = 16'h2c20;
    LUT4 i8630_4_lut (.A(clk_enable_53), .B(n8468), .C(reset_n_c), .D(n1422), 
         .Z(n1918)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam i8630_4_lut.init = 16'h0a22;
    LUT4 mux_711_i17_4_lut (.A(n840[16]), .B(i_Data_c), .C(n1261), .D(n1755), 
         .Z(n1262[16])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_711_i17_4_lut.init = 16'hcac0;
    FD1P3IX r_MB128_Addr_i0_i15 (.D(r_MB128_Addr[16]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i15.GSR = "ENABLED";
    FD1S3IX trigger_write_653 (.D(n9108), .CK(clk), .CD(n9949), .Q(trigger_write)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam trigger_write_653.GSR = "ENABLED";
    LUT4 i5558_2_lut (.A(n840[16]), .B(n1242), .Z(n1243[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i5558_2_lut.init = 16'h8888;
    FD1P3AX o_WriteLED_651 (.D(o_WriteLED_N_614), .SP(clk_enable_147), .CK(clk), 
            .Q(o_WriteLED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam o_WriteLED_651.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_186 (.A(i_Data_c), .B(n9926), .C(n3986), .D(n9966), 
         .Z(n9125)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_186.init = 16'h0008;
    LUT4 i54_4_lut (.A(n9197), .B(n9923), .C(r_State[2]), .D(n9985), 
         .Z(n24)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i54_4_lut.init = 16'h0a3a;
    LUT4 i2206_3_lut_4_lut (.A(n9921), .B(n9961), .C(n9971), .D(n1459), 
         .Z(n2939)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;
    defparam i2206_3_lut_4_lut.init = 16'hf020;
    LUT4 i495_3_lut_4_lut (.A(\r_Bit_Count[1] ), .B(n9996), .C(i_Data_c), 
         .D(ram_data_7__N_447[1]), .Z(n2020)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i495_3_lut_4_lut.init = 16'hfe10;
    FD1P3AX o_ReadLED_650 (.D(o_ReadLED_N_601), .SP(clk_enable_148), .CK(clk), 
            .Q(o_ReadLED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam o_ReadLED_650.GSR = "ENABLED";
    CCU2D add_68_12 (.A0(r_MB128_Addr[10]), .B0(r_MB128_Bytes[10]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[11]), .B1(r_MB128_Bytes[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8377), .COUT(n8378), .S0(n354[10]), 
          .S1(n354[11]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_12.INIT0 = 16'h5666;
    defparam add_68_12.INIT1 = 16'h5666;
    defparam add_68_12.INJECT1_0 = "NO";
    defparam add_68_12.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_125_3_lut_3_lut_4_lut (.A(\r_Bit_Count[1] ), .B(n9996), 
         .C(n9972), .D(n9995), .Z(n9923)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_rep_125_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i198_2_lut_rep_118_3_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10000), 
         .C(n9995), .D(n9962), .Z(n9916)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i198_2_lut_rep_118_3_lut_3_lut_4_lut.init = 16'h1000;
    FD1P3IX r_MB128_Bits_i0_i0 (.D(r_MB128_Bits[1]), .SP(clk_enable_149), 
            .CD(n6332), .CK(clk), .Q(r_MB128_Bits[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bits_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_131_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10000), .C(n9985), 
         .D(n9966), .Z(n9929)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i1_2_lut_rep_131_3_lut_4_lut.init = 16'hf0f1;
    CCU2D add_809_11 (.A0(r_MB128_Addr_Curr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8367), .COUT(n8368), .S0(n840[9]), .S1(n840[10]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_11.INIT0 = 16'h5aaa;
    defparam add_809_11.INIT1 = 16'h5aaa;
    defparam add_809_11.INJECT1_0 = "NO";
    defparam add_809_11.INJECT1_1 = "NO";
    PFUMX mux_729_i7 (.BLUT(n1243[6]), .ALUT(n1262[6]), .C0(n1296), .Z(n1297[6]));
    LUT4 i1_2_lut_rep_128_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10000), .C(r_State[3]), 
         .D(n9971), .Z(n9926)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(728[6:11])
    defparam i1_2_lut_rep_128_3_lut_4_lut.init = 16'he0f0;
    FD1P3IX r_MB128_Addr_i0_i14 (.D(r_MB128_Addr[15]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i14.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i0 (.D(n1146[0]), .SP(clk_enable_151), .CD(n4425), 
            .CK(clk), .Q(r_MB128_Bytes[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Bytes_i0_i0.GSR = "ENABLED";
    CCU2D add_809_3 (.A0(r_MB128_Addr_Curr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8363), .COUT(n8364), .S0(n840[1]), .S1(n840[2]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_3.INIT0 = 16'h5aaa;
    defparam add_809_3.INIT1 = 16'h5aaa;
    defparam add_809_3.INJECT1_0 = "NO";
    defparam add_809_3.INJECT1_1 = "NO";
    PFUMX mux_904_i1 (.BLUT(n8394), .ALUT(wr_buf_6__N_252), .C0(n9991), 
          .Z(n1547[0]));
    LUT4 r_Bit_Count_5__I_0_775_i11_2_lut_rep_135_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), 
         .B(n9983), .C(n10000), .D(r_Bit_Count[3]), .Z(n9933)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam r_Bit_Count_5__I_0_775_i11_2_lut_rep_135_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i494_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n9983), .C(i_Data_c), 
         .D(ram_data_7__N_447[2]), .Z(n2019)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i494_3_lut_4_lut.init = 16'hfe10;
    CCU2D add_809_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(r_MB128_Addr_Curr[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8363), .S1(n840[0]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_1.INIT0 = 16'hF000;
    defparam add_809_1.INIT1 = 16'h5555;
    defparam add_809_1.INJECT1_0 = "NO";
    defparam add_809_1.INJECT1_1 = "NO";
    FD1P3IX r_MB128_Addr_i0_i13 (.D(r_MB128_Addr[14]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i13.GSR = "ENABLED";
    LUT4 i1_4_lut_then_3_lut_adj_187 (.A(sp_phase[0]), .B(n9195), .C(n9928), 
         .Z(n10010)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i1_4_lut_then_3_lut_adj_187.init = 16'h4c4c;
    LUT4 i2_2_lut_adj_188 (.A(r_State[2]), .B(r_State[1]), .Z(n8_adj_762)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_188.init = 16'h2222;
    LUT4 i490_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n9983), .C(i_Data_c), 
         .D(ram_data_7__N_447[6]), .Z(n2015)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i490_3_lut_4_lut.init = 16'hfd20;
    LUT4 i5_3_lut_rep_167 (.A(cmd_len[3]), .B(n10_adj_770), .C(cmd_len[4]), 
         .Z(n9965)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[39:53])
    defparam i5_3_lut_rep_167.init = 16'hfefe;
    FD1P3IX r_MB128_Addr_i0_i12 (.D(r_MB128_Addr[13]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i12.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_189 (.A(r_State[1]), .B(n9953), .C(r_State[0]), 
         .D(n9094), .Z(n27_adj_753)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_189.init = 16'ha8a0;
    LUT4 i1_2_lut_adj_190 (.A(r_State[0]), .B(r_State[3]), .Z(n9103)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_190.init = 16'h2222;
    LUT4 n56_bdd_4_lut_8869 (.A(n1516), .B(n9989), .C(n9995), .D(r_State[1]), 
         .Z(n9848)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(D)))) */ ;
    defparam n56_bdd_4_lut_8869.init = 16'h0013;
    CCU2D add_68_10 (.A0(r_MB128_Addr[8]), .B0(r_MB128_Bytes[8]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[9]), .B1(r_MB128_Bytes[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8376), .COUT(n8377), .S0(n354[8]), .S1(n354[9]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_10.INIT0 = 16'h5666;
    defparam add_68_10.INIT1 = 16'h5666;
    defparam add_68_10.INJECT1_0 = "NO";
    defparam add_68_10.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_191 (.A(trigger_wren), .B(wr_buf[7]), .C(ram_data[7]), 
         .D(trigger_write), .Z(n9112)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_191.init = 16'h5044;
    FD1P3IX r_MB128_Addr_i0_i0 (.D(r_MB128_Addr[1]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_148_4_lut (.A(cmd_len[3]), .B(n10_adj_770), .C(cmd_len[4]), 
         .D(n9053), .Z(n9946)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[39:53])
    defparam i1_2_lut_rep_148_4_lut.init = 16'h0100;
    FD1P3AX r_Write_Byte_i0_i0 (.D(n9123), .SP(clk_enable_155), .CK(clk), 
            .Q(r_Write_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Write_Byte_i0_i0.GSR = "ENABLED";
    LUT4 n12_bdd_2_lut_8757_3_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(n9630), 
         .Z(n9631)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam n12_bdd_2_lut_8757_3_lut.init = 16'h4040;
    LUT4 sp_active_I_0_718_2_lut_rep_152_4_lut (.A(cmd_len[3]), .B(n10_adj_770), 
         .C(cmd_len[4]), .D(sp_hold_n_N_709), .Z(n9950)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[39:53])
    defparam sp_active_I_0_718_2_lut_rep_152_4_lut.init = 16'hfe00;
    CCU2D add_809_9 (.A0(r_MB128_Addr_Curr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8366), .COUT(n8367), .S0(n840[7]), .S1(n840[8]));   // c:/devel/diamond/pce_save128/firmware/save128.v(464[28:49])
    defparam add_809_9.INIT0 = 16'h5aaa;
    defparam add_809_9.INIT1 = 16'h5aaa;
    defparam add_809_9.INJECT1_0 = "NO";
    defparam add_809_9.INJECT1_1 = "NO";
    LUT4 i492_3_lut_4_lut (.A(r_Bit_Count[0]), .B(n9994), .C(ram_data_7__N_447[4]), 
         .D(i_Data_c), .Z(n2017)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i492_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_843_i4_3_lut (.A(ram_data_7__N_447[3]), .B(r_Write_Byte[3]), 
         .C(n9911), .Z(n1450[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_843_i4_3_lut.init = 16'hcaca;
    LUT4 n12_bdd_2_lut_8871 (.A(n9849), .B(reset_n_c), .Z(n9850)) /* synthesis lut_function=(A (B)) */ ;
    defparam n12_bdd_2_lut_8871.init = 16'h8888;
    LUT4 r_Bit_Count_5__I_0_762_i11_2_lut_rep_146_3_lut_4_lut (.A(r_Bit_Count[0]), 
         .B(n9994), .C(n10000), .D(r_Bit_Count[3]), .Z(n9944)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_Bit_Count_5__I_0_762_i11_2_lut_rep_146_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_192 (.A(n1516), .B(n6356), .C(n9961), .D(n9985), 
         .Z(n9091)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam i2_4_lut_adj_192.init = 16'h0010;
    LUT4 i2_3_lut_4_lut_adj_193 (.A(n9985), .B(n9993), .C(clk_sample), 
         .D(n1373), .Z(n1261)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_193.init = 16'h4000;
    LUT4 i5671_4_lut_3_lut_4_lut (.A(read_in_transit), .B(n9931), .C(n1503), 
         .D(n9958), .Z(clk_enable_114)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[5] 481[10])
    defparam i5671_4_lut_3_lut_4_lut.init = 16'hf888;
    LUT4 i493_3_lut_4_lut (.A(\r_Bit_Count[1] ), .B(n9996), .C(i_Data_c), 
         .D(ram_data_7__N_447[3]), .Z(n2018)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i493_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_else_3_lut_adj_194 (.A(n10372), .B(sp_phase[0]), .C(wr_buf[0]), 
         .D(n9195), .Z(n10009)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1_4_lut_else_3_lut_adj_194.init = 16'hfd20;
    LUT4 mux_898_i1_4_lut (.A(wr_buf_6__N_251), .B(n1547[0]), .C(n6471), 
         .D(trigger_wren), .Z(wr_buf_6__N_246)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_898_i1_4_lut.init = 16'hc0ca;
    LUT4 wr_buf_6__I_0_3_lut (.A(wr_buf[6]), .B(ram_data[6]), .C(trigger_write), 
         .Z(wr_buf_6__N_251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(329[4] 345[9])
    defparam wr_buf_6__I_0_3_lut.init = 16'hcaca;
    LUT4 equal_14_i11_2_lut_rep_147_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n9999), 
         .C(n10000), .D(r_Bit_Count[3]), .Z(n9945)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam equal_14_i11_2_lut_rep_147_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1458_2_lut (.A(sp_phase[0]), .B(sp_phase[1]), .Z(sp_phase_1__N_323[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(289[15:27])
    defparam i1458_2_lut.init = 16'h6666;
    LUT4 i1250_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n9999), .C(r_Bit_Count[4]), 
         .D(r_Bit_Count[3]), .Z(trigger_write_N_642[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1250_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_136_2_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10000), 
         .C(n9996), .D(\r_Bit_Count[1] ), .Z(n9934)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(591[11:27])
    defparam i1_2_lut_rep_136_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 pwr_bdd_2_lut_8808_3_lut_4_lut (.A(clk_sample), .B(n9910), .C(n45_adj_778), 
         .D(n9734), .Z(n9736)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam pwr_bdd_2_lut_8808_3_lut_4_lut.init = 16'hdfdd;
    PFUMX mux_729_i6 (.BLUT(n1243[5]), .ALUT(n1262[5]), .C0(n1296), .Z(n1297[5]));
    LUT4 i1_4_lut_adj_195 (.A(n9919), .B(r_State[3]), .C(trigger_read_N_633), 
         .D(r_State[2]), .Z(n3915)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_195.init = 16'hcecc;
    PFUMX mux_845_i2 (.BLUT(n1450[1]), .ALUT(n2020), .C0(n1459), .Z(ram_data_7__N_115[1]));
    LUT4 i5565_2_lut (.A(r_State[2]), .B(r_State[3]), .Z(n6356)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5565_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_196 (.A(rw_len[2]), .B(n9990), .C(rw_len[3]), 
         .D(rw_len[4]), .Z(n3449)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(435[21:34])
    defparam i1_3_lut_4_lut_adj_196.init = 16'hfe01;
    PFUMX i8800 (.BLUT(n9737), .ALUT(n9736), .C0(r_State_3__N_395[1]), 
          .Z(r_State_3__N_7[1]));
    LUT4 i1229_2_lut (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[0]), .Z(trigger_write_N_642[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i1229_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_197 (.A(cmd_len[2]), .B(n10002), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n3471)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(428[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_197.init = 16'hf0e1;
    LUT4 i1341_2_lut_3_lut_4_lut (.A(cmd_len[2]), .B(n10002), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n10_adj_751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(428[17:31])
    defparam i1341_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 n33_bdd_4_lut_8811 (.A(n9930), .B(n9945), .C(n9976), .D(r_State[1]), 
         .Z(n9642)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;
    defparam n33_bdd_4_lut_8811.init = 16'h3200;
    FD1P3IX r_MB128_Addr_i0_i11 (.D(r_MB128_Addr[12]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i11.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_198 (.A(clk_samplediv[2]), .B(n10003), 
         .C(clk_samplediv[4]), .D(clk_samplediv[3]), .Z(clk_samplediv_5__N_325[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(207[21:38])
    defparam i1_2_lut_3_lut_4_lut_adj_198.init = 16'hf0e1;
    LUT4 i2_3_lut_4_lut_adj_199 (.A(trigger_wren), .B(n9938), .C(trigger_write), 
         .D(n5), .Z(clk_enable_14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam i2_3_lut_4_lut_adj_199.init = 16'hfffe;
    LUT4 i4_4_lut_adj_200 (.A(n7_adj_779), .B(r_Register[7]), .C(i_Data_c), 
         .D(n8532), .Z(n9190)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(5[10:16])
    defparam i4_4_lut_adj_200.init = 16'h0020;
    PFUMX i96 (.BLUT(n71), .ALUT(n74), .C0(r_State[2]), .Z(n59_adj_774));
    LUT4 i2_2_lut_adj_201 (.A(r_Register[6]), .B(r_Register[4]), .Z(n7_adj_779)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(5[10:16])
    defparam i2_2_lut_adj_201.init = 16'h8888;
    LUT4 i3_4_lut_adj_202 (.A(r_Register[5]), .B(r_Register[3]), .C(r_Register[2]), 
         .D(r_Register[1]), .Z(n8532)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_202.init = 16'hfffe;
    LUT4 n56_bdd_4_lut_8775 (.A(n9917), .B(r_State[0]), .C(r_State[1]), 
         .D(n9912), .Z(n9661)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A !(B+!(C (D)))) */ ;
    defparam n56_bdd_4_lut_8775.init = 16'hb282;
    LUT4 mux_843_i1_3_lut (.A(ram_data_7__N_447[0]), .B(r_Write_Byte[0]), 
         .C(n9911), .Z(n1450[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_843_i1_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_178 (.A(r_MB128_Bits[1]), .B(r_MB128_Bits[2]), .C(r_MB128_Bits[0]), 
         .Z(n9976)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(675[13:30])
    defparam i2_3_lut_rep_178.init = 16'hfefe;
    LUT4 i5489_2_lut_4_lut (.A(r_MB128_Bits[1]), .B(r_MB128_Bits[2]), .C(r_MB128_Bits[0]), 
         .D(trigger_read_N_633), .Z(n1701[1])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(675[13:30])
    defparam i5489_2_lut_4_lut.init = 16'h00fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_203 (.A(r_State[3]), .B(n9945), .C(n9962), 
         .D(i_Data_c), .Z(n9122)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_3_lut_4_lut_adj_203.init = 16'h8000;
    LUT4 i1_2_lut_rep_179 (.A(r_State[1]), .B(r_State[0]), .Z(n9977)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_rep_179.init = 16'h8888;
    LUT4 i1_2_lut_rep_154_3_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[3]), 
         .Z(n9952)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_rep_154_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_204 (.A(n9995), .B(n9988), .C(n1213), .D(r_State[0]), 
         .Z(n9164)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_204.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_4_lut_adj_205 (.A(r_State[3]), .B(n9945), .C(n9969), 
         .D(i_Data_c), .Z(n9121)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_3_lut_4_lut_adj_205.init = 16'h8000;
    LUT4 n3264_bdd_4_lut_8847_4_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .D(n3264), .Z(n9630)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam n3264_bdd_4_lut_8847_4_lut.init = 16'h0858;
    FD1P3IX sp_cs_n_658 (.D(n10374), .SP(clk_enable_157), .CD(n1921), 
            .CK(clk), .Q(sp_cs_n_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam sp_cs_n_658.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut_4_lut (.A(n9995), .B(n9915), .C(n9971), .D(n9987), 
         .Z(n4_adj_754)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(684[13] 687[11])
    defparam i1_2_lut_2_lut_4_lut.init = 16'h7f00;
    LUT4 i1_4_lut_adj_206 (.A(trigger_wren), .B(wr_buf[5]), .C(ram_data[5]), 
         .D(trigger_write), .Z(n9117)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_206.init = 16'h5044;
    LUT4 i1_4_lut_then_3_lut_adj_207 (.A(sp_phase[0]), .B(n9112), .C(n9928), 
         .Z(n10007)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i1_4_lut_then_3_lut_adj_207.init = 16'h4c4c;
    LUT4 i2_3_lut_4_lut_adj_208 (.A(r_State[1]), .B(r_State[0]), .C(i_Data_c), 
         .D(r_State[2]), .Z(n3594)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i2_3_lut_4_lut_adj_208.init = 16'h0008;
    LUT4 i1422_1_lut_rep_180 (.A(sp_phase[0]), .Z(n9978)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[13:30])
    defparam i1422_1_lut_rep_180.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_209 (.A(r_State[3]), .B(n9945), .C(n9997), 
         .D(i_Data_c), .Z(n9124)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_3_lut_4_lut_adj_209.init = 16'h8000;
    LUT4 i1_2_lut_rep_181 (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[2]), .Z(n9979)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i1_2_lut_rep_181.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_210 (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[2]), 
         .C(r_Bit_Count[0]), .Z(n4_adj_761)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i1_2_lut_3_lut_adj_210.init = 16'hefef;
    FD1P3IX r_MB128_Addr_i0_i10 (.D(r_MB128_Addr[11]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_211 (.A(r_State[3]), .B(n9945), .C(n9953), 
         .D(i_Data_c), .Z(n9123)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_3_lut_4_lut_adj_211.init = 16'h8000;
    PFUMX i8794 (.BLUT(n9728), .ALUT(n9727), .C0(r_State[1]), .Z(n9729));
    LUT4 i8619_2_lut_rep_155_3_lut (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[2]), 
         .C(r_Bit_Count[0]), .Z(n9953)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i8619_2_lut_rep_155_3_lut.init = 16'h0101;
    CCU2D add_68_8 (.A0(r_MB128_Addr[6]), .B0(r_MB128_Bytes[6]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[7]), .B1(r_MB128_Bytes[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8375), .COUT(n8376), .S0(n354[6]), .S1(n354[7]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_8.INIT0 = 16'h5666;
    defparam add_68_8.INIT1 = 16'h5666;
    defparam add_68_8.INJECT1_0 = "NO";
    defparam add_68_8.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_212 (.A(n9981), .B(rd_buf_7__N_176), .C(sp_hold_n_N_709), 
         .D(n9965), .Z(clk_enable_10)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i2_4_lut_adj_212.init = 16'h5040;
    CCU2D add_68_6 (.A0(r_MB128_Addr[4]), .B0(r_MB128_Bytes[4]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[5]), .B1(r_MB128_Bytes[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8374), .COUT(n8375), .S0(n354[4]), .S1(n354[5]));   // c:/devel/diamond/pce_save128/firmware/save128.v(319[23:51])
    defparam add_68_6.INIT0 = 16'h5666;
    defparam add_68_6.INIT1 = 16'h5666;
    defparam add_68_6.INJECT1_0 = "NO";
    defparam add_68_6.INJECT1_1 = "NO";
    LUT4 sp_phase_1__I_0_720_i3_2_lut_rep_183 (.A(sp_phase[0]), .B(sp_phase[1]), 
         .Z(n9981)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(366[8:25])
    defparam sp_phase_1__I_0_720_i3_2_lut_rep_183.init = 16'heeee;
    PFUMX mux_845_i7 (.BLUT(n1450[6]), .ALUT(n2015), .C0(n1459), .Z(ram_data_7__N_115[6]));
    LUT4 i1_2_lut_adj_213 (.A(rw_len[3]), .B(rw_len[1]), .Z(n6_adj_780)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[22:35])
    defparam i1_2_lut_adj_213.init = 16'heeee;
    LUT4 i4_4_lut_adj_214 (.A(rw_len[2]), .B(rw_len[4]), .C(rw_len[0]), 
         .D(n6_adj_780), .Z(rd_buf_7__N_176)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[22:35])
    defparam i4_4_lut_adj_214.init = 16'hfffe;
    LUT4 i1_2_lut_rep_157_3_lut (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[4]), .Z(n9955)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_157_3_lut.init = 16'hfefe;
    FD1P3IX r_MB128_Addr_i0_i9 (.D(r_MB128_Addr[10]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i9.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i8 (.D(r_MB128_Addr[9]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i8.GSR = "ENABLED";
    LUT4 r_State_2__bdd_4_lut_8796_4_lut (.A(r_State[1]), .B(n9922), .C(n9908), 
         .D(r_State[2]), .Z(n9633)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A (B+!(D)))) */ ;
    defparam r_State_2__bdd_4_lut_8796_4_lut.init = 16'h33a0;
    LUT4 i1_3_lut_4_lut_adj_215 (.A(n3720), .B(i_Data_c), .C(n9932), .D(n1701[1]), 
         .Z(n4_adj_755)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam i1_3_lut_4_lut_adj_215.init = 16'hf0e0;
    PFUMX mux_729_i5 (.BLUT(n1243[4]), .ALUT(n1262[4]), .C0(n1296), .Z(n1297[4]));
    LUT4 i1_2_lut_3_lut_adj_216 (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[4]), .Z(n9094)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_216.init = 16'h1010;
    LUT4 i1_2_lut_rep_158_2_lut (.A(r_State[1]), .B(r_State[0]), .Z(n9956)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_158_2_lut.init = 16'h4444;
    LUT4 n9661_bdd_2_lut (.A(n9661), .B(r_State[2]), .Z(n9662)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n9661_bdd_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_rep_113_4_lut_4_lut (.A(n9949), .B(n9961), .C(n9971), 
         .D(n9963), .Z(n9911)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_113_4_lut_4_lut.init = 16'h1000;
    LUT4 i8643_4_lut (.A(reset_n_c), .B(clk_sample), .C(n9264), .D(n54), 
         .Z(clk_enable_90)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i8643_4_lut.init = 16'h55d5;
    LUT4 i1_4_lut_adj_217 (.A(trigger_wren), .B(wr_buf[2]), .C(ram_data[2]), 
         .D(trigger_write), .Z(n9139)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_217.init = 16'h5044;
    LUT4 i8461_4_lut (.A(r_State[1]), .B(r_State[2]), .C(n9995), .D(n4419), 
         .Z(n9264)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i8461_4_lut.init = 16'hfeee;
    PFUMX i8747 (.BLUT(n9631), .ALUT(n9629), .C0(r_State[3]), .Z(n9632));
    LUT4 mux_424_i3_3_lut_4_lut (.A(n3720), .B(i_Data_c), .C(trigger_read_N_633), 
         .D(n9976), .Z(n1654[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam mux_424_i3_3_lut_4_lut.init = 16'he0e1;
    LUT4 i1_2_lut_2_lut_adj_218 (.A(r_State[1]), .B(n12_adj_777), .Z(n13_adj_776)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut_adj_218.init = 16'h4444;
    LUT4 sp_mosi_I_101_3_lut (.A(wr_buf[7]), .B(cmd_buf[31]), .C(n9965), 
         .Z(sp_mosi_N_723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam sp_mosi_I_101_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(r_State[1]), .B(n9912), .C(r_State[0]), 
         .D(n9932), .Z(n52)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hddd5;
    FD1P3IX r_MB128_Addr_i0_i7 (.D(r_MB128_Addr[8]), .SP(clk_enable_161), 
            .CD(n4424), .CK(clk), .Q(r_MB128_Addr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam r_MB128_Addr_i0_i7.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_219 (.A(r_Bit_Count[0]), .B(n8564), .C(n4_adj_781), 
         .D(r_MB128_Bits[0]), .Z(n9068)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(790[11:44])
    defparam i2_4_lut_adj_219.init = 16'hfedf;
    LUT4 i2_2_lut_rep_150_3_lut_3_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .Z(n9948)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_rep_150_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_rep_182 (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), .Z(n9980)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_182.init = 16'heeee;
    LUT4 i56_3_lut (.A(n26), .B(n9633), .C(r_State[3]), .Z(n54)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i56_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_220 (.A(\r_Bit_Count[1] ), .B(r_MB128_Bits[1]), .Z(n4_adj_781)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[24:42])
    defparam i1_2_lut_adj_220.init = 16'h6666;
    LUT4 i2_4_lut_4_lut_adj_221 (.A(r_State[1]), .B(n9989), .C(r_State[3]), 
         .D(n4_adj_773), .Z(n8457)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (D)) */ ;
    defparam i2_4_lut_4_lut_adj_221.init = 16'hd700;
    LUT4 i1_4_lut_4_lut_adj_222 (.A(r_State[1]), .B(n4_adj_755), .C(r_State[2]), 
         .D(r_State[0]), .Z(n45_adj_778)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (D))) */ ;
    defparam i1_4_lut_4_lut_adj_222.init = 16'h0075;
    LUT4 i5633_2_lut_rep_120_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(r_State[0]), 
         .D(n9940), .Z(n9918)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i5633_2_lut_rep_120_3_lut_4_lut.init = 16'hf0f4;
    LUT4 i1_4_lut_4_lut_adj_223 (.A(r_State[1]), .B(n9328), .C(n3992), 
         .D(r_State[3]), .Z(n74)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (B+!(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_223.init = 16'h330a;
    LUT4 i1_2_lut_rep_132 (.A(r_MB128_Bytes[0]), .B(n3720), .Z(n9930)) /* synthesis lut_function=((B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(764[12:30])
    defparam i1_2_lut_rep_132.init = 16'hdddd;
    LUT4 i3258_2_lut_rep_184 (.A(r_State[1]), .B(r_State[2]), .Z(n9982)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i3258_2_lut_rep_184.init = 16'hdddd;
    PFUMX mux_729_i4 (.BLUT(n1243[3]), .ALUT(n1262[3]), .C0(n1296), .Z(n1297[3]));
    LUT4 i8534_3_lut_4_lut_4_lut_3_lut_4_lut (.A(r_State[1]), .B(r_State[2]), 
         .C(n9976), .D(n9912), .Z(n41)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i8534_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 mux_376_i6_4_lut (.A(ram_data[5]), .B(r_FetchWrite_Byte[5]), .C(n1484), 
         .D(reset_n_c), .Z(ram_data_7__N_447[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(502[2] 503[43])
    defparam mux_376_i6_4_lut.init = 16'hcac0;
    LUT4 mux_424_i1_3_lut_4_lut (.A(n3720), .B(i_Data_c), .C(trigger_read_N_633), 
         .D(n9976), .Z(n1654[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(645[12:53])
    defparam mux_424_i1_3_lut_4_lut.init = 16'he1f0;
    LUT4 i1_2_lut_rep_185 (.A(r_Bit_Count[0]), .B(\r_Bit_Count[1] ), .Z(n9983)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i1_2_lut_rep_185.init = 16'hbbbb;
    LUT4 n9162_bdd_4_lut_8870 (.A(r_State[0]), .B(n9314), .C(n9912), .D(n9932), 
         .Z(n9663)) /* synthesis lut_function=(A (C)+!A !(B+!(D))) */ ;
    defparam n9162_bdd_4_lut_8870.init = 16'hb1a0;
    LUT4 i32_4_lut_adj_224 (.A(r_State[0]), .B(n3284), .C(r_State[3]), 
         .D(n1516), .Z(n4419)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i32_4_lut_adj_224.init = 16'h3f3a;
    LUT4 n47_bdd_2_lut_8850_4_lut (.A(n9995), .B(n9915), .C(n9971), .D(n9988), 
         .Z(n9839)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(684[13] 687[11])
    defparam n47_bdd_2_lut_8850_4_lut.init = 16'h7f00;
    LUT4 i8669_2_lut_rep_164_3_lut (.A(r_Bit_Count[0]), .B(\r_Bit_Count[1] ), 
         .C(r_Bit_Count[2]), .Z(n9962)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i8669_2_lut_rep_164_3_lut.init = 16'h0404;
    LUT4 i8699_4_lut_4_lut (.A(n9949), .B(n10029), .C(n19), .D(n7_adj_764), 
         .Z(n9462)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;
    defparam i8699_4_lut_4_lut.init = 16'h000b;
    LUT4 i1_2_lut_rep_166_3_lut (.A(r_Bit_Count[0]), .B(\r_Bit_Count[1] ), 
         .C(r_Bit_Count[2]), .Z(n9964)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(788[7:28])
    defparam i1_2_lut_rep_166_3_lut.init = 16'h4040;
    LUT4 i5592_2_lut_rep_186 (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), .Z(n10000)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5592_2_lut_rep_186.init = 16'heeee;
    LUT4 i3_4_lut_adj_225 (.A(r_State[2]), .B(sp_hold_n_N_709), .C(n8620), 
         .D(n9952), .Z(n1484)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_225.init = 16'h1000;
    LUT4 mux_843_i5_3_lut (.A(ram_data_7__N_447[4]), .B(r_Write_Byte[4]), 
         .C(n9911), .Z(n1450[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_843_i5_3_lut.init = 16'hcaca;
    LUT4 i3_3_lut_4_lut_adj_226 (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .C(n9996), .D(r_Bit_Count[3]), .Z(n8_adj_1)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_3_lut_4_lut_adj_226.init = 16'hfeff;
    LUT4 i5_4_lut (.A(r_State[1]), .B(n1701[1]), .C(n9940), .D(n8_adj_775), 
         .Z(trigger_fetchwrite_N_675)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0800;
    LUT4 i3_4_lut_adj_227 (.A(r_State_Prev[2]), .B(r_State_Prev[0]), .C(r_State_Prev[3]), 
         .D(r_State_Prev[1]), .Z(n8620)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_227.init = 16'hbfff;
    PFUMX mux_729_i3 (.BLUT(n1243[2]), .ALUT(n1262[2]), .C0(n1296), .Z(n1297[2]));
    LUT4 i1_4_lut_else_3_lut_adj_228 (.A(n10372), .B(sp_phase[0]), .C(wr_buf[6]), 
         .D(n9112), .Z(n10006)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i1_4_lut_else_3_lut_adj_228.init = 16'hfd20;
    LUT4 i2_3_lut_4_lut_adj_229 (.A(sp_phase[0]), .B(sp_phase[1]), .C(n10372), 
         .D(wr_buf[5]), .Z(n8394)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_229.init = 16'h1000;
    LUT4 i1_4_lut_adj_230 (.A(r_State[0]), .B(n9905), .C(n9632), .D(n37_adj_747), 
         .Z(r_State_3__N_7[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_4_lut_adj_230.init = 16'hc4c0;
    LUT4 i1_2_lut_rep_111_4_lut (.A(n9995), .B(n9915), .C(n9971), .D(r_State[0]), 
         .Z(n9909)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(684[13] 687[11])
    defparam i1_2_lut_rep_111_4_lut.init = 16'h7f00;
    LUT4 i1_2_lut_rep_189 (.A(r_State[3]), .B(r_State[0]), .Z(n9987)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i1_2_lut_rep_189.init = 16'h2222;
    LUT4 i2_3_lut_3_lut_4_lut_adj_231 (.A(r_State[3]), .B(r_State[0]), .C(r_Read_Byte[0]), 
         .D(r_State[1]), .Z(n9138)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(505[2] 864[7])
    defparam i2_3_lut_3_lut_4_lut_adj_231.init = 16'h0020;
    LUT4 i1_2_lut_rep_190 (.A(r_State[1]), .B(r_State[2]), .Z(n9988)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_rep_190.init = 16'h8888;
    LUT4 i1_4_lut_adj_232 (.A(trigger_wren), .B(wr_buf[1]), .C(ram_data[1]), 
         .D(trigger_write), .Z(n9195)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_232.init = 16'h5044;
    LUT4 i8457_2_lut_rep_108_2_lut_4_lut (.A(n9995), .B(n9915), .C(n9971), 
         .D(n9976), .Z(n9906)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(684[13] 687[11])
    defparam i8457_2_lut_rep_108_2_lut_4_lut.init = 16'hff7f;
    PFUMX mux_729_i2 (.BLUT(n1243[1]), .ALUT(n1262[1]), .C0(n1296), .Z(n1297[1]));
    LUT4 n12_bdd_2_lut_8770_3_lut (.A(r_State[1]), .B(r_State[2]), .C(n9663), 
         .Z(n9664)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam n12_bdd_2_lut_8770_3_lut.init = 16'h8080;
    LUT4 i8663_3_lut (.A(clk_samplediv[3]), .B(n10_adj_783), .C(clk_samplediv[4]), 
         .Z(clk_samplediv_5__N_331)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(201[6:27])
    defparam i8663_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_rep_191 (.A(r_State[0]), .B(r_State[2]), .Z(n9989)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_rep_191.init = 16'heeee;
    LUT4 i4_4_lut_adj_233 (.A(clk_samplediv[2]), .B(clk_samplediv[5]), .C(clk_samplediv[0]), 
         .D(clk_samplediv[1]), .Z(n10_adj_783)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(201[6:27])
    defparam i4_4_lut_adj_233.init = 16'hfffe;
    LUT4 i1_2_lut_2_lut_3_lut_adj_234 (.A(r_State[0]), .B(r_State[2]), .C(r_State[1]), 
         .Z(n3395)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_2_lut_3_lut_adj_234.init = 16'hefef;
    LUT4 n12_bdd_2_lut_8771 (.A(n9665), .B(clk_sample), .Z(r_State_3__N_7[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam n12_bdd_2_lut_8771.init = 16'h8888;
    LUT4 i1143_2_lut_rep_115_3_lut_4_lut (.A(n9991), .B(n9946), .C(n9958), 
         .D(read_in_transit), .Z(n9913)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(454[5] 481[10])
    defparam i1143_2_lut_rep_115_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i27_4_lut_3_lut (.A(r_State[0]), .B(r_State[2]), .C(r_State[3]), 
         .Z(n12)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i27_4_lut_3_lut.init = 16'h1818;
    LUT4 i1_2_lut_3_lut_4_lut_adj_235 (.A(r_State[0]), .B(r_State[2]), .C(r_State[3]), 
         .D(r_State[1]), .Z(o_Active_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_3_lut_4_lut_adj_235.init = 16'hfffe;
    PFUMX i76 (.BLUT(n10_adj_752), .ALUT(n50), .C0(r_State[2]), .Z(n41_adj_749));
    LUT4 i1_2_lut_rep_170_3_lut (.A(r_State[0]), .B(r_State[2]), .C(r_State[1]), 
         .Z(n9968)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_rep_170_3_lut.init = 16'hfefe;
    LUT4 i1277_2_lut_rep_192 (.A(rw_len[1]), .B(rw_len[0]), .Z(n9990)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(435[21:34])
    defparam i1277_2_lut_rep_192.init = 16'heeee;
    LUT4 i1285_2_lut_rep_175_3_lut (.A(rw_len[1]), .B(rw_len[0]), .C(rw_len[2]), 
         .Z(n9973)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(435[21:34])
    defparam i1285_2_lut_rep_175_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_236 (.A(reset_n_c), .B(n9958), .C(n9939), .D(n9085), 
         .Z(clk_enable_149)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_236.init = 16'hddd5;
    LUT4 i1_2_lut_3_lut_adj_237 (.A(rw_len[1]), .B(rw_len[0]), .C(rw_len[2]), 
         .Z(n3453)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(435[21:34])
    defparam i1_2_lut_3_lut_adj_237.init = 16'he1e1;
    LUT4 i5389_2_lut_rep_193 (.A(sp_phase[0]), .B(sp_phase[1]), .Z(n9991)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5389_2_lut_rep_193.init = 16'h8888;
    LUT4 mux_843_i6_3_lut (.A(ram_data_7__N_447[5]), .B(r_Write_Byte[5]), 
         .C(n9911), .Z(n1450[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[3] 862[8])
    defparam mux_843_i6_3_lut.init = 16'hcaca;
    PFUMX mux_729_i1 (.BLUT(n1243[0]), .ALUT(n1262[0]), .C0(n1296), .Z(n1297[0]));
    LUT4 i8683_4_lut (.A(trigger_wren), .B(n9928), .C(n10020), .D(n9991), 
         .Z(n15)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;
    defparam i8683_4_lut.init = 16'haeaf;
    LUT4 i1_2_lut_rep_133_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(n9053), .D(n9965), .Z(n9931)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_133_3_lut_4_lut.init = 16'h0080;
    LUT4 i1730_2_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_active_N_716), 
         .Z(n2456)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1730_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_238 (.A(r_State[3]), .B(r_State[1]), .C(r_State[0]), 
         .D(r_State[2]), .Z(n9085)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i1_4_lut_adj_238.init = 16'h1040;
    LUT4 i1_2_lut_rep_194 (.A(r_State[1]), .B(r_State[2]), .Z(n9992)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_194.init = 16'h2222;
    LUT4 i1_2_lut_rep_165_3_lut (.A(r_State[1]), .B(r_State[2]), .C(r_State[0]), 
         .Z(n9963)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_165_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_4_lut_adj_239 (.A(r_State[1]), .B(r_State[2]), .C(n1213), 
         .D(r_State[0]), .Z(n8656)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_239.init = 16'h0020;
    LUT4 i3633_2_lut_4_lut (.A(n10001), .B(n9950), .C(n10372), .D(n5), 
         .Z(n4436)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[9] 483[9])
    defparam i3633_2_lut_4_lut.init = 16'hef00;
    LUT4 i1_4_lut_adj_240 (.A(reset_n_c), .B(n9958), .C(n33), .D(n47), 
         .Z(clk_enable_99)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_240.init = 16'hddd5;
    LUT4 i1_4_lut_adj_241 (.A(r_State[2]), .B(n6469), .C(r_State[0]), 
         .D(n4_adj_771), .Z(n33)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_adj_241.init = 16'h1505;
    LUT4 i1_2_lut_4_lut_adj_242 (.A(n10001), .B(n9950), .C(n10372), .D(n5), 
         .Z(clk_enable_143)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[9] 483[9])
    defparam i1_2_lut_4_lut_adj_242.init = 16'hff10;
    LUT4 i1_2_lut_adj_243 (.A(rw_len[1]), .B(rw_len[0]), .Z(n3443)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_243.init = 16'h9999;
    LUT4 i8553_2_lut_rep_195 (.A(r_State[3]), .B(r_State[2]), .Z(n9993)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i8553_2_lut_rep_195.init = 16'h4444;
    LUT4 i2_2_lut_rep_143_3_lut_4_lut (.A(r_State[3]), .B(r_State[2]), .C(clk_sample), 
         .D(n9995), .Z(n9941)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i2_2_lut_rep_143_3_lut_4_lut.init = 16'h4000;
    LUT4 i3642_2_lut_4_lut (.A(n10001), .B(n9950), .C(n10372), .D(clk_enable_46), 
         .Z(n4449)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[9] 483[9])
    defparam i3642_2_lut_4_lut.init = 16'hef00;
    LUT4 i1_2_lut_rep_141_3_lut_3_lut_4_lut (.A(r_State[3]), .B(r_State[2]), 
         .C(r_State[0]), .D(r_State[1]), .Z(n9939)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_rep_141_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_169_3_lut_4_lut (.A(r_State[3]), .B(r_State[2]), .C(r_State[0]), 
         .D(r_State[1]), .Z(n9967)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[4] 860[11])
    defparam i1_2_lut_rep_169_3_lut_4_lut.init = 16'h0004;
    LUT4 i2_2_lut_4_lut (.A(n10001), .B(n9950), .C(n10372), .D(clk_enable_46), 
         .Z(clk_enable_144)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(413[9] 483[9])
    defparam i2_2_lut_4_lut.init = 16'hff10;
    LUT4 i1_2_lut_rep_196 (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[2]), .Z(n9994)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_rep_196.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_153_3_lut (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[2]), 
         .C(r_Bit_Count[0]), .Z(n9951)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_rep_153_3_lut.init = 16'hbfbf;
    PFUMX i8907 (.BLUT(n10027), .ALUT(n10028), .C0(r_State[0]), .Z(n10029));
    LUT4 i1_2_lut_rep_168_3_lut (.A(\r_Bit_Count[1] ), .B(r_Bit_Count[2]), 
         .C(r_Bit_Count[0]), .Z(n9966)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(166[10] 867[5])
    defparam i1_2_lut_rep_168_3_lut.init = 16'hfbfb;
    PFUMX i8905 (.BLUT(n10024), .ALUT(n10025), .C0(sp_phase[1]), .Z(wr_buf_5__N_257));
    LUT4 r_Req_I_77_2_lut_rep_197 (.A(i_Clk_Prev), .B(i_Clk_c), .Z(n9995)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam r_Req_I_77_2_lut_rep_197.init = 16'h4444;
    PFUMX i8903 (.BLUT(n10021), .ALUT(n10022), .C0(sp_phase[1]), .Z(wr_buf_4__N_268));
    LUT4 i1_2_lut_rep_160_3_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(clk_sample), 
         .Z(n9958)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i1_2_lut_rep_160_3_lut.init = 16'h4040;
    PFUMX i8901 (.BLUT(n10018), .ALUT(n10019), .C0(sp_phase[0]), .Z(n10020));
    LUT4 i5561_4_lut (.A(n354[0]), .B(n9925), .C(r_MB128_Addr_Curr[0]), 
         .D(n10005), .Z(cmd_buf_31__N_332[0])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(389[11] 394[11])
    defparam i5561_4_lut.init = 16'h3022;
    PFUMX i8899 (.BLUT(n10015), .ALUT(n10016), .C0(sp_phase[1]), .Z(wr_buf_3__N_279));
    LUT4 i5600_3_lut_rep_116_4_lut (.A(i_Clk_Prev), .B(i_Clk_c), .C(n3264), 
         .D(r_State[1]), .Z(n9914)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(509[7:47])
    defparam i5600_3_lut_rep_116_4_lut.init = 16'hff04;
    PFUMX i8897 (.BLUT(n10012), .ALUT(n10013), .C0(sp_phase[1]), .Z(wr_buf_2__N_290));
    LUT4 i2_3_lut_adj_244 (.A(n1484), .B(n2939), .C(reset_n_c), .Z(clk_enable_103)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut_adj_244.init = 16'hefef;
    PFUMX i8895 (.BLUT(n10009), .ALUT(n10010), .C0(sp_phase[1]), .Z(wr_buf_1__N_301));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

