// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Sat Apr 17 21:44:48 2021
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
    wire [3:0]r_Pos_Edge;   // c:/devel/diamond/pce_save128/firmware/save128.v(99[14:24])
    
    wire trigger_write;
    wire [7:0]ram_data;   // c:/devel/diamond/pce_save128/firmware/save128.v(127[13:21])
    wire [15:0]wr_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(137[15:21])
    
    wire n10483, n3566, n10479, n9074, n6335, n10454, n1373, n1296, 
        n9075, n9597, n10834, n10431, n3461, n3242, n10487;
    
    VHI i5 (.Z(VCC_net));
    OSCH internal_oscillator_inst (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam internal_oscillator_inst.NOM_FREQ = "44.33";
    MB128 MB128 (.GND_net(GND_net), .n1296(n1296), .clk(clk), .r_State({r_State}), 
          .sp_mosi_c(sp_mosi_c), .clk_sample(clk_sample), .i_Clk_c(i_Clk_c), 
          .\r_Pos_Edge[0] (r_Pos_Edge[0]), .trigger_write(trigger_write), 
          .\wr_buf[6] (wr_buf[6]), .n10834(n10834), .i_Data_c(i_Data_c), 
          .sp_hold_n_c(sp_hold_n_c), .reset_n_c(reset_n_c), .n9075(n9075), 
          .n10483(n10483), .\ram_data[6] (ram_data[6]), .n3461(n3461), 
          .sp_clk_c(sp_clk_c), .sp_miso_c(sp_miso_c), .\r_Pos_Edge[2] (r_Pos_Edge[2]), 
          .n10479(n10479), .n10454(n10454), .n1373(n1373), .o_WriteLED_c(o_WriteLED_c), 
          .n6335(n6335), .o_ReadLED_c(o_ReadLED_c), .o_Active_c(o_Active_c), 
          .n10487(n10487), .n9074(n9074), .n10431(n10431), .sp_cs_n_c(sp_cs_n_c), 
          .n9597(n9597), .n3242(n3242), .n3566(n3566)) /* synthesis syn_module_defined=1 */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(36[7] 59[4])
    OB o_Active_pad (.I(o_Active_c), .O(o_Active));   // c:/devel/diamond/pce_save128/firmware/top.v(2[10:18])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // c:/devel/diamond/pce_save128/firmware/top.v(3[10:17])
    OB sp_hold_n_pad (.I(sp_hold_n_c), .O(sp_hold_n));   // c:/devel/diamond/pce_save128/firmware/top.v(15[10:19])
    OB sp_mosi_pad (.I(sp_mosi_c), .O(sp_mosi));   // c:/devel/diamond/pce_save128/firmware/top.v(14[10:17])
    OB sp_clk_pad (.I(sp_clk_c), .O(sp_clk));   // c:/devel/diamond/pce_save128/firmware/top.v(12[10:16])
    OB sp_cs_n_pad (.I(sp_cs_n_c), .O(sp_cs_n));   // c:/devel/diamond/pce_save128/firmware/top.v(11[10:17])
    VLO i1 (.Z(GND_net));
    OB o_ReadLED_pad (.I(o_ReadLED_c), .O(o_ReadLED));   // c:/devel/diamond/pce_save128/firmware/top.v(9[10:19])
    OB o_WriteLED_pad (.I(o_WriteLED_c), .O(o_WriteLED));   // c:/devel/diamond/pce_save128/firmware/top.v(8[10:20])
    OB o_Ident_pad (.I(r_Pos_Edge[2]), .O(o_Ident));   // c:/devel/diamond/pce_save128/firmware/top.v(7[10:17])
    OB o_Data_pad (.I(r_Pos_Edge[0]), .O(o_Data));   // c:/devel/diamond/pce_save128/firmware/top.v(6[10:16])
    IB i_Clk_pad (.I(i_Clk), .O(i_Clk_c));   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    IB i_Data_pad (.I(i_Data), .O(i_Data_c));   // c:/devel/diamond/pce_save128/firmware/top.v(5[10:16])
    IB sp_miso_pad (.I(sp_miso), .O(sp_miso_c));   // c:/devel/diamond/pce_save128/firmware/top.v(13[10:17])
    PFUMX i8270 (.BLUT(n9597), .ALUT(n9074), .C0(r_State[3]), .Z(n9075));
    LUT4 i1463_2_lut_rep_205 (.A(r_State[1]), .B(r_State[0]), .Z(n10479)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1463_2_lut_rep_205.init = 16'heeee;
    LUT4 i6090_2_lut_rep_180_3_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .Z(n10454)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i6090_2_lut_rep_180_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_157_3_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[3]), 
         .Z(n10431)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_rep_157_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .D(r_State[3]), .Z(n3566)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i5544_3_lut (.A(wr_buf[6]), .B(ram_data[6]), .C(trigger_write), 
         .Z(n6335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(123[9:22])
    defparam i5544_3_lut.init = 16'hcaca;
    LUT4 i707_4_lut (.A(n10487), .B(n3461), .C(r_State[3]), .D(r_State[1]), 
         .Z(n3242)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i707_4_lut.init = 16'hc5cf;
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2390_4_lut (.A(clk_sample), .B(n1373), .C(n10483), .D(n3566), 
         .Z(n1296)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2390_4_lut.init = 16'ha088;
    LUT4 m1_lut (.Z(n10834)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    
endmodule
//
// Verilog Description of module MB128
//

module MB128 (GND_net, n1296, clk, r_State, sp_mosi_c, clk_sample, 
            i_Clk_c, \r_Pos_Edge[0] , trigger_write, \wr_buf[6] , n10834, 
            i_Data_c, sp_hold_n_c, reset_n_c, n9075, n10483, \ram_data[6] , 
            n3461, sp_clk_c, sp_miso_c, \r_Pos_Edge[2] , n10479, n10454, 
            n1373, o_WriteLED_c, n6335, o_ReadLED_c, o_Active_c, n10487, 
            n9074, n10431, sp_cs_n_c, n9597, n3242, n3566) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input n1296;
    input clk;
    output [3:0]r_State;
    output sp_mosi_c;
    output clk_sample;
    input i_Clk_c;
    output \r_Pos_Edge[0] ;
    output trigger_write;
    output \wr_buf[6] ;
    input n10834;
    input i_Data_c;
    output sp_hold_n_c;
    input reset_n_c;
    input n9075;
    output n10483;
    output \ram_data[6] ;
    output n3461;
    output sp_clk_c;
    input sp_miso_c;
    output \r_Pos_Edge[2] ;
    input n10479;
    input n10454;
    output n1373;
    output o_WriteLED_c;
    input n6335;
    output o_ReadLED_c;
    output o_Active_c;
    output n10487;
    output n9074;
    input n10431;
    output sp_cs_n_c;
    output n9597;
    input n3242;
    input n3566;
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(26[8:11])
    wire [16:0]r_MB128_Bytes;   // c:/devel/diamond/pce_save128/firmware/save128.v(97[14:27])
    wire [16:0]n1;
    
    wire n8791;
    wire [7:0]n1450;
    
    wire n2026, n1459;
    wire [7:0]ram_data_7__N_115;
    wire [16:0]n1243;
    wire [16:0]n1262;
    wire [16:0]n1297;
    wire [16:0]r_MB128_Addr;   // c:/devel/diamond/pce_save128/firmware/save128.v(95[14:26])
    
    wire clk_enable_163, n4523;
    wire [5:0]r_Bit_Count;   // c:/devel/diamond/pce_save128/firmware/save128.v(94[14:25])
    
    wire n1914, n9864, n9859, n9860, n9861, clk_enable_2, sp_mosi_N_740, 
        i_Clk_Prev;
    wire [16:0]r_MB128_Addr_Curr;   // c:/devel/diamond/pce_save128/firmware/save128.v(96[14:31])
    
    wire clk_enable_81;
    wire [7:0]r_Write_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(105[14:26])
    
    wire clk_enable_9, n9584, clk_enable_10, n9588, clk_enable_11, 
        n9583, clk_enable_12, n9587, n8790;
    wire [16:0]n356;
    
    wire n3, n9638, n7;
    wire [7:0]r_FetchWrite_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(106[14:31])
    
    wire clk_enable_111;
    wire [15:0]rd_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(136[15:21])
    
    wire clk_enable_14;
    wire [3:0]r_Pos_Edge_3__N_83;
    wire [7:0]ram_data;   // c:/devel/diamond/pce_save128/firmware/save128.v(127[13:21])
    
    wire trigger_read, trigger_read_N_638, trigger_write_N_652, trigger_fetchwrite, 
        trigger_fetchwrite_N_692, clk_samplediv_5__N_331;
    wire [1:0]sp_phase;   // c:/devel/diamond/pce_save128/firmware/save128.v(148[13:21])
    
    wire n10480;
    wire [15:0]wr_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(137[15:21])
    
    wire wr_buf_7__N_231, wr_buf_6__N_246, wr_buf_5__N_257, wr_buf_4__N_268, 
        wr_buf_3__N_279, wr_buf_2__N_290, wr_buf_1__N_301, n15;
    wire [31:0]cmd_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(135[15:22])
    
    wire clk_enable_86;
    wire [31:0]cmd_buf_31__N_332;
    wire [3:0]r_State_Prev;   // c:/devel/diamond/pce_save128/firmware/save128.v(81[14:26])
    
    wire clk_enable_121;
    wire [31:0]n518;
    
    wire sp_active_N_733, clk_enable_49, n2462, read_in_transit, n10382, 
        fetchwrt_in_transit, n3617, write_in_transit, n3616;
    wire [5:0]clk_samplediv;   // c:/devel/diamond/pce_save128/firmware/save128.v(24[15:28])
    wire [6:0]clk_samplediv_5__N_325;
    wire [5:0]cmd_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(133[14:21])
    
    wire clk_enable_136;
    wire [5:0]cmd_len_5__N_370;
    wire [4:0]rw_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    
    wire clk_enable_134;
    wire [4:0]rw_len_4__N_381;
    wire [7:0]r_Read_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(104[14:25])
    
    wire clk_enable_127;
    wire [7:0]n1504;
    
    wire trigger_read_N_650, clk_enable_40;
    wire [31:0]n842;
    
    wire n1242, clk_enable_41, n9582, n29, n35, n10484, n56, clk_enable_42, 
        n9586, trigger_wren, n9634, clk_enable_43, sp_hold_n_N_726, 
        n4556, sp_end_desel, n10446, n10426, n17, n1486;
    wire [7:0]ram_data_7__N_447;
    
    wire n3811, n10452, n10488, clk_enable_153, n4524, n10422, n10492, 
        n15_adj_763, n10491, n10481, n9776, n9628, n10460, o_ReadLED_N_622, 
        n10495, rd_buf_7__N_178, n10421, n10494, n13, n26, o_Active_N_604, 
        n10497, n10407, n10386, n42, n9750, n10501, n10500;
    wire [7:0]r_Register;   // c:/devel/diamond/pce_save128/firmware/save128.v(82[14:24])
    
    wire clk_enable_58, n1916, n1791, n1792, n1793, n1794, n1795, 
        n1796, n1797, clk_enable_63;
    wire [31:0]trigger_write_N_659;
    
    wire n10413, n1753, n1503, n8828, n10450, n9549, n27, n10405, 
        n10400, n8812, n10390, n10409, n8996, n6619, n9674, n51, 
        n10380, n10381, n9768, n1449, n9051, n10486, n10469, n10470, 
        n10471, n10437, n10436, n3312, n10438, n10444, n10472, 
        n4, n10395, wr_buf_2__N_295, n9644, clk_enable_87;
    wire [3:0]r_State_3__N_7;
    
    wire n98, clk_enable_88, wr_buf_7__N_236, n9646, clk_enable_89, 
        clk_enable_161;
    wire [2:0]r_MB128_Bits;   // c:/devel/diamond/pce_save128/firmware/save128.v(98[14:26])
    
    wire clk_enable_152, n6586, n10443, n10440, n4049, wr_buf_3__N_284, 
        n9645, n3096, n6108, n3481, n3742, n4051, n10473;
    wire [2:0]n1701;
    
    wire n6176, n10398, n9868, n4547, n3503, n3477, n10474, n10442, 
        n10419, n24, n10451, n10427, n10475, n10476, n10420, n23, 
        n9594;
    wire [16:0]n1146;
    
    wire n5727, n12, n9665, n14, n25, n3268, n10423, n10404, 
        n101, n10489, n10412, n8840, n10462, n10389, n33, n34, 
        n8789, n10499, n3489, n24_adj_764, clk_enable_99, clk_enable_100, 
        sp_active_N_732, clk_enable_101, n2471, clk_enable_133, n6104;
    wire [2:0]n1094;
    
    wire clk_enable_112, clk_enable_113;
    wire [31:0]sp_phase_1__N_323;
    
    wire n97, n10482, n10428, n10391, n10198, n10199, n10453, 
        n9811, n10457, n10459;
    wire [3:0]n1661;
    
    wire n10401, n6, n10490, n33_adj_765, n4_adj_766, n10432, n15_adj_767, 
        n15_adj_768, n10394, n10188, n10434, n10399, n2790, n21, 
        n10383, n9596, n8, n13_adj_769, n25_adj_770, n6921, n7_adj_771, 
        n31, n8_adj_772, n9626, n10493, n10, n1789, n2983;
    wire [4:0]n792;
    
    wire n10461, n10_adj_773, n10379, n1320, n4_adj_774, n10465, 
        n10415, n9607, n21_adj_775, n10402, n51_adj_776, n10416, 
        n10403, n10327, n10328, n8845, n10418, n20, clk_enable_143, 
        o_WriteLED_N_631, n9562, n10485, n3687, n10408, n8891, n10448;
    wire [0:0]n1547;
    
    wire n6774, clk_enable_159, n8788, n10417, n17_adj_777, n10189, 
        n10190, n10326, n8787, n8786, n8785, n8777, n8778, n8776, 
        n9825, n8784, n9548, n9711, n6575, n10429, n7_adj_778, 
        n43, n69, clk_enable_147, n10393, n9845, n73, n10456, 
        n2027, n10325, n10424, n8773, n8783, n9718, n3756, n8798, 
        n21_adj_779, n18, n9631, r_Stop_Active, clk_enable_150, r_Stop_Active_N_613, 
        n9700, n76, n64, n2029, clk_enable_151, o_Active_N_595, 
        n14_adj_780, n26_adj_781, n39, n9552, n1213, n12_adj_782, 
        n9756, n8780, n9615, n9556, n8775, n7_adj_783, n9742, 
        n10384, n8774, n10324, n10329, n10458, n2028, n10387, 
        n9554, n9691;
    wire [3:0]r_State_3__N_399;
    
    wire n9519, n8859, n7_adj_784, n9678, n18_adj_785, n9670, n2024, 
        n9730, n49, n9639, n9647, n4458, n10463, n10_adj_786, 
        n10466, n10425, n10464, n2977, n9688, n10411, n10396, 
        wr_buf_6__N_252, n87, n8797, n18_adj_787, n9601, n6_adj_788, 
        n9585, n3672, n2854, n13_adj_789, n8796, n8779, n35_adj_790, 
        n9736, n19, n9796, n49_adj_791, n9794, n9728, n9661, n6796, 
        n9660, n6_adj_792, n10496, n17_adj_793, n69_adj_794, n6_adj_795, 
        n4270, n10468, n20_adj_796, n10385, n9611, n8795;
    wire [3:0]n79;
    
    wire n2030, n10197, n2025, n8864, n9558, n9841, n1167, n1145, 
        n17_adj_797, n30, n26_adj_798, n18_adj_799, n3709, n28, 
        n22, n10378, n10406, n10441, n10414, n22_adj_800, n4_adj_801, 
        n36, n9839, n9533, n8980, n4_adj_802, n10435, n6915, n33_adj_803, 
        n10455, n10430, n9790, n47, n7_adj_804, n9837, n13_adj_805, 
        n8794, n8793, n8792, o_Active_N_601, n14_adj_806, n9580;
    
    CCU2D sub_486_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(r_MB128_Bytes[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8791), .S1(n1[0]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_1.INIT0 = 16'hF000;
    defparam sub_486_add_2_1.INIT1 = 16'h5555;
    defparam sub_486_add_2_1.INJECT1_0 = "NO";
    defparam sub_486_add_2_1.INJECT1_1 = "NO";
    PFUMX mux_846_i5 (.BLUT(n1450[4]), .ALUT(n2026), .C0(n1459), .Z(ram_data_7__N_115[4]));
    PFUMX mux_730_i10 (.BLUT(n1243[9]), .ALUT(n1262[9]), .C0(n1296), .Z(n1297[9]));
    FD1P3IX r_MB128_Addr_i0_i6 (.D(r_MB128_Addr[7]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i6.GSR = "ENABLED";
    FD1S3IX r_Bit_Count__i0 (.D(n9864), .CK(clk), .CD(n1914), .Q(r_Bit_Count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Bit_Count__i0.GSR = "ENABLED";
    PFUMX i9049 (.BLUT(n9859), .ALUT(n9860), .C0(r_State[1]), .Z(n9861));
    FD1P3AX sp_mosi_710 (.D(sp_mosi_N_740), .SP(clk_enable_2), .CK(clk), 
            .Q(sp_mosi_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_mosi_710.GSR = "ENABLED";
    FD1P3AX i_Clk_Prev_716 (.D(i_Clk_c), .SP(clk_sample), .CK(clk), .Q(i_Clk_Prev)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i_Clk_Prev_716.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i0 (.D(n1297[0]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i0.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i5 (.D(r_MB128_Addr[6]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i5.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i4 (.D(r_MB128_Addr[5]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i4.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i3 (.D(r_MB128_Addr[4]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i3.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i2 (.D(r_MB128_Addr[3]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i2.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i1 (.D(r_MB128_Addr[2]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i1.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i6 (.D(n9584), .SP(clk_enable_9), .CK(clk), 
            .Q(r_Write_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Write_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i5 (.D(n9588), .SP(clk_enable_10), .CK(clk), 
            .Q(r_Write_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Write_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i4 (.D(n9583), .SP(clk_enable_11), .CK(clk), 
            .Q(r_Write_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Write_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i3 (.D(n9587), .SP(clk_enable_12), .CK(clk), 
            .Q(r_Write_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Write_Byte_i0_i3.GSR = "ENABLED";
    CCU2D add_70_18 (.A0(r_MB128_Addr[16]), .B0(r_MB128_Bytes[16]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8790), .S0(n356[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_18.INIT0 = 16'h5666;
    defparam add_70_18.INIT1 = 16'h0000;
    defparam add_70_18.INJECT1_0 = "NO";
    defparam add_70_18.INJECT1_1 = "NO";
    PFUMX mux_528_Mux_1_i7 (.BLUT(n3), .ALUT(n9638), .C0(r_State[3]), 
          .Z(n7)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;
    FD1P3AX r_FetchWrite_Byte_i0_i0 (.D(rd_buf[0]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i0.GSR = "ENABLED";
    FD1P3AX r_Pos_Edge_i0 (.D(r_Pos_Edge_3__N_83[0]), .SP(clk_enable_14), 
            .CK(clk), .Q(\r_Pos_Edge[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Pos_Edge_i0.GSR = "ENABLED";
    FD1S3AX ram_data_i0 (.D(ram_data_7__N_115[0]), .CK(clk), .Q(ram_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i0.GSR = "ENABLED";
    FD1S3AX trigger_read_672 (.D(trigger_read_N_638), .CK(clk), .Q(trigger_read)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam trigger_read_672.GSR = "ENABLED";
    FD1S3AX trigger_write_673 (.D(trigger_write_N_652), .CK(clk), .Q(trigger_write)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam trigger_write_673.GSR = "ENABLED";
    FD1S3AX trigger_fetchwrite_674 (.D(trigger_fetchwrite_N_692), .CK(clk), 
            .Q(trigger_fetchwrite)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam trigger_fetchwrite_674.GSR = "ENABLED";
    FD1S3AX clk_sample_676 (.D(clk_samplediv_5__N_331), .CK(clk), .Q(clk_sample)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam clk_sample_676.GSR = "ENABLED";
    FD1S3AX sp_phase_i0 (.D(n10480), .CK(clk), .Q(sp_phase[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_phase_i0.GSR = "ENABLED";
    FD1S3AX wr_buf_7__686 (.D(wr_buf_7__N_231), .CK(clk), .Q(wr_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_7__686.GSR = "ENABLED";
    FD1S3AX wr_buf_6__687 (.D(wr_buf_6__N_246), .CK(clk), .Q(\wr_buf[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_6__687.GSR = "ENABLED";
    FD1S3AX wr_buf_5__688 (.D(wr_buf_5__N_257), .CK(clk), .Q(wr_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_5__688.GSR = "ENABLED";
    FD1S3AX wr_buf_4__689 (.D(wr_buf_4__N_268), .CK(clk), .Q(wr_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_4__689.GSR = "ENABLED";
    FD1S3AX wr_buf_3__690 (.D(wr_buf_3__N_279), .CK(clk), .Q(wr_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_3__690.GSR = "ENABLED";
    FD1S3AX wr_buf_2__691 (.D(wr_buf_2__N_290), .CK(clk), .Q(wr_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_2__691.GSR = "ENABLED";
    FD1S3AX wr_buf_1__692 (.D(wr_buf_1__N_301), .CK(clk), .Q(wr_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_1__692.GSR = "ENABLED";
    FD1P3IX wr_buf_0__693 (.D(ram_data[0]), .SP(trigger_write), .CD(n15), 
            .CK(clk), .Q(wr_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam wr_buf_0__693.GSR = "ENABLED";
    FD1P3AX cmd_buf_i0 (.D(cmd_buf_31__N_332[0]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i0.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i0 (.D(r_State[0]), .SP(clk_enable_121), .CK(clk), 
            .Q(r_State_Prev[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_Prev_i0_i0.GSR = "ENABLED";
    LUT4 i3652_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[1]), 
         .D(n356[1]), .Z(n518[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3652_3_lut_4_lut.init = 16'hf4b0;
    FD1P3IX sp_go_705 (.D(n10834), .SP(clk_enable_49), .CD(n2462), .CK(clk), 
            .Q(sp_active_N_733)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_go_705.GSR = "ENABLED";
    FD1P3IX read_in_transit_706 (.D(n10834), .SP(trigger_read), .CD(n10382), 
            .CK(clk), .Q(read_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam read_in_transit_706.GSR = "ENABLED";
    FD1P3IX fetchwrt_in_transit_707 (.D(n10834), .SP(trigger_fetchwrite), 
            .CD(n3617), .CK(clk), .Q(fetchwrt_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam fetchwrt_in_transit_707.GSR = "ENABLED";
    FD1P3IX write_in_transit_708 (.D(n10834), .SP(trigger_write), .CD(n3616), 
            .CK(clk), .Q(write_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam write_in_transit_708.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i0 (.D(clk_samplediv_5__N_325[0]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam clk_samplediv_i0.GSR = "ENABLED";
    FD1S3JX clk_samplediv_i1 (.D(clk_samplediv_5__N_325[1]), .CK(clk), .PD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam clk_samplediv_i1.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i2 (.D(clk_samplediv_5__N_325[2]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam clk_samplediv_i2.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i3 (.D(clk_samplediv_5__N_325[3]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam clk_samplediv_i3.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i4 (.D(clk_samplediv_5__N_325[4]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam clk_samplediv_i4.GSR = "ENABLED";
    FD1S3IX clk_samplediv_i5 (.D(clk_samplediv_5__N_325[5]), .CK(clk), .CD(clk_samplediv_5__N_331), 
            .Q(clk_samplediv[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam clk_samplediv_i5.GSR = "ENABLED";
    FD1P3AX cmd_len_i3 (.D(cmd_len_5__N_370[3]), .SP(clk_enable_136), .CK(clk), 
            .Q(cmd_len[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_len_i3.GSR = "ENABLED";
    FD1P3AY cmd_len_i5 (.D(cmd_len_5__N_370[5]), .SP(clk_enable_136), .CK(clk), 
            .Q(cmd_len[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_len_i5.GSR = "ENABLED";
    FD1P3AY rw_len_i3 (.D(rw_len_4__N_381[3]), .SP(clk_enable_134), .CK(clk), 
            .Q(rw_len[3])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rw_len_i3.GSR = "ENABLED";
    FD1P3AX cmd_buf_i1 (.D(cmd_buf_31__N_332[1]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i1.GSR = "ENABLED";
    FD1P3AX cmd_buf_i2 (.D(cmd_buf_31__N_332[2]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i2.GSR = "ENABLED";
    FD1P3AX cmd_buf_i3 (.D(cmd_buf_31__N_332[3]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i3.GSR = "ENABLED";
    FD1P3AX cmd_buf_i4 (.D(cmd_buf_31__N_332[4]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i4.GSR = "ENABLED";
    FD1P3AX cmd_buf_i5 (.D(cmd_buf_31__N_332[5]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i5.GSR = "ENABLED";
    FD1P3AX cmd_buf_i6 (.D(cmd_buf_31__N_332[6]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i6.GSR = "ENABLED";
    FD1P3AX cmd_buf_i7 (.D(cmd_buf_31__N_332[7]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i7.GSR = "ENABLED";
    FD1P3AX cmd_buf_i8 (.D(cmd_buf_31__N_332[8]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i8.GSR = "ENABLED";
    FD1P3AX cmd_buf_i9 (.D(cmd_buf_31__N_332[9]), .SP(clk_enable_86), .CK(clk), 
            .Q(cmd_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i9.GSR = "ENABLED";
    FD1P3AX cmd_buf_i10 (.D(cmd_buf_31__N_332[10]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i10.GSR = "ENABLED";
    FD1P3AX cmd_buf_i11 (.D(cmd_buf_31__N_332[11]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i11.GSR = "ENABLED";
    FD1P3AX cmd_buf_i12 (.D(cmd_buf_31__N_332[12]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i12.GSR = "ENABLED";
    FD1P3AX cmd_buf_i13 (.D(cmd_buf_31__N_332[13]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i13.GSR = "ENABLED";
    FD1P3AX cmd_buf_i14 (.D(cmd_buf_31__N_332[14]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i14.GSR = "ENABLED";
    FD1P3AX cmd_buf_i15 (.D(cmd_buf_31__N_332[15]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i15.GSR = "ENABLED";
    FD1P3AX cmd_buf_i16 (.D(cmd_buf_31__N_332[16]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i16.GSR = "ENABLED";
    FD1P3AY cmd_buf_i24 (.D(cmd_buf_31__N_332[24]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[24])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i24.GSR = "ENABLED";
    FD1P3AX cmd_buf_i26 (.D(cmd_buf_31__N_332[26]), .SP(clk_enable_86), 
            .CK(clk), .Q(cmd_buf[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i26.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i0 (.D(n1504[0]), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i0.GSR = "ENABLED";
    FD1P3AY r_Req_719 (.D(i_Data_c), .SP(clk_enable_40), .CK(clk), .Q(trigger_read_N_650)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Req_719.GSR = "ENABLED";
    PFUMX mux_730_i9 (.BLUT(n1243[8]), .ALUT(n1262[8]), .C0(n1296), .Z(n1297[8]));
    LUT4 i5993_2_lut (.A(n842[8]), .B(n1242), .Z(n1243[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5993_2_lut.init = 16'h8888;
    FD1P3AX r_Write_Byte_i0_i2 (.D(n9582), .SP(clk_enable_41), .CK(clk), 
            .Q(r_Write_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Write_Byte_i0_i2.GSR = "ENABLED";
    PFUMX i58 (.BLUT(n29), .ALUT(n35), .C0(n10484), .Z(n56));
    FD1P3AX r_Write_Byte_i0_i1 (.D(n9586), .SP(clk_enable_42), .CK(clk), 
            .Q(r_Write_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Write_Byte_i0_i1.GSR = "ENABLED";
    PFUMX mux_730_i8 (.BLUT(n1243[7]), .ALUT(n1262[7]), .C0(n1296), .Z(n1297[7]));
    FD1S3IX trigger_wren_709 (.D(n9634), .CK(clk), .CD(trigger_read_N_650), 
            .Q(trigger_wren)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam trigger_wren_709.GSR = "ENABLED";
    FD1P3AX sp_hold_n_679 (.D(sp_hold_n_N_726), .SP(clk_enable_43), .CK(clk), 
            .Q(sp_hold_n_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_hold_n_679.GSR = "ENABLED";
    FD1P3IX cmd_buf_i31 (.D(cmd_buf[30]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i31.GSR = "ENABLED";
    FD1P3IX cmd_buf_i30 (.D(cmd_buf[29]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i30.GSR = "ENABLED";
    FD1P3IX cmd_buf_i29 (.D(cmd_buf[28]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i29.GSR = "ENABLED";
    LUT4 i3660_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[5]), 
         .D(n356[5]), .Z(n518[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3660_3_lut_4_lut.init = 16'hf4b0;
    FD1P3IX cmd_buf_i28 (.D(cmd_buf[27]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i28.GSR = "ENABLED";
    FD1P3IX cmd_buf_i27 (.D(cmd_buf[26]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i27.GSR = "ENABLED";
    FD1P3AX sp_end_desel_695 (.D(n10834), .SP(clk_enable_49), .CK(clk), 
            .Q(sp_end_desel)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_end_desel_695.GSR = "ENABLED";
    FD1P3JX cmd_buf_i25 (.D(cmd_buf[24]), .SP(clk_enable_86), .PD(n4556), 
            .CK(clk), .Q(cmd_buf[25])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i25.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_172_2_lut (.A(r_State[1]), .B(r_State[2]), .Z(n10446)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_172_2_lut.init = 16'h4444;
    PFUMX mux_730_i7 (.BLUT(n1243[6]), .ALUT(n1262[6]), .C0(n1296), .Z(n1297[6]));
    LUT4 i34_4_lut (.A(n10426), .B(r_Read_Byte[0]), .C(r_State[0]), .D(trigger_read_N_650), 
         .Z(n17)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i34_4_lut.init = 16'hc5c0;
    LUT4 mux_378_i4_4_lut (.A(ram_data[3]), .B(r_FetchWrite_Byte[3]), .C(n1486), 
         .D(reset_n_c), .Z(ram_data_7__N_447[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(504[2] 505[43])
    defparam mux_378_i4_4_lut.init = 16'hcac0;
    LUT4 i691_3_lut_4_lut_4_lut (.A(r_State[1]), .B(r_State[2]), .C(r_State[0]), 
         .D(r_State[3]), .Z(n3811)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i691_3_lut_4_lut_4_lut.init = 16'h0280;
    LUT4 i1_4_lut_else_4_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[3]), 
         .D(n10452), .Z(n10488)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h4000;
    FD1P3IX cmd_buf_i23 (.D(cmd_buf[22]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i23.GSR = "ENABLED";
    LUT4 i9118_2_lut_2_lut_3_lut (.A(clk_sample), .B(n9075), .C(clk_enable_153), 
         .Z(n4524)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i9118_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i3_4_lut_then_2_lut (.A(n10422), .B(r_State[2]), .Z(n10492)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3_4_lut_then_2_lut.init = 16'h7777;
    LUT4 i3_4_lut_else_2_lut (.A(n10422), .B(r_State[0]), .C(r_State[2]), 
         .D(n15_adj_763), .Z(n10491)) /* synthesis lut_function=((B (D)+!B ((D)+!C))+!A) */ ;
    defparam i3_4_lut_else_2_lut.init = 16'hff57;
    LUT4 i3_3_lut_4_lut (.A(i_Data_c), .B(n10452), .C(n10481), .D(n9776), 
         .Z(r_Pos_Edge_3__N_83[2])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0080;
    LUT4 i3662_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[6]), 
         .D(n356[6]), .Z(n518[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3662_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3_3_lut_4_lut_adj_115 (.A(i_Data_c), .B(n10452), .C(n9628), 
         .D(n10460), .Z(o_ReadLED_N_622)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_3_lut_4_lut_adj_115.init = 16'h0080;
    LUT4 i32_4_lut_3_lut_then_1_lut (.A(sp_phase[1]), .Z(n10495)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(415[13:30])
    defparam i32_4_lut_3_lut_then_1_lut.init = 16'h5555;
    LUT4 i32_4_lut_3_lut_else_1_lut (.A(sp_phase[1]), .B(rd_buf_7__N_178), 
         .C(sp_hold_n_N_726), .D(n10421), .Z(n10494)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(415[13:30])
    defparam i32_4_lut_3_lut_else_1_lut.init = 16'hefff;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(r_State[0]), .B(n13), .C(r_State[1]), 
         .D(r_State[2]), .Z(n26)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0084;
    LUT4 i61_4_lut_else_2_lut (.A(r_State[1]), .B(n10483), .C(r_State[0]), 
         .D(o_Active_N_604), .Z(n10497)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i61_4_lut_else_2_lut.init = 16'hccc8;
    LUT4 mux_137_i12_4_lut (.A(n518[11]), .B(cmd_buf[10]), .C(n10407), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i12_4_lut.init = 16'hc0ca;
    LUT4 i62_4_lut_4_lut (.A(n10386), .B(n42), .C(r_State[1]), .D(n9750), 
         .Z(n29)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D))))) */ ;
    defparam i62_4_lut_4_lut.init = 16'h5f5c;
    LUT4 mux_137_i13_4_lut (.A(n518[12]), .B(cmd_buf[11]), .C(n10407), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[12])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i13_4_lut.init = 16'hc0ca;
    LUT4 i2_4_lut_then_4_lut (.A(n10452), .B(r_State[3]), .C(r_State[0]), 
         .D(r_State[2]), .Z(n10501)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_4_lut_then_4_lut.init = 16'h2000;
    LUT4 i2_4_lut_else_4_lut (.A(n10452), .B(r_State[3]), .C(r_State[0]), 
         .D(r_State[2]), .Z(n10500)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_4_lut_else_4_lut.init = 16'h0008;
    FD1P3IX r_Register__i1 (.D(n1791), .SP(clk_enable_58), .CD(n1916), 
            .CK(clk), .Q(r_Register[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Register__i1.GSR = "ENABLED";
    PFUMX mux_730_i6 (.BLUT(n1243[5]), .ALUT(n1262[5]), .C0(n1296), .Z(n1297[5]));
    LUT4 i5995_2_lut (.A(n842[10]), .B(n1242), .Z(n1243[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5995_2_lut.init = 16'h8888;
    FD1P3IX r_Register__i2 (.D(n1792), .SP(clk_enable_58), .CD(n1916), 
            .CK(clk), .Q(r_Register[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Register__i2.GSR = "ENABLED";
    FD1P3IX r_Register__i3 (.D(n1793), .SP(clk_enable_58), .CD(n1916), 
            .CK(clk), .Q(r_Register[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Register__i3.GSR = "ENABLED";
    FD1P3IX r_Register__i4 (.D(n1794), .SP(clk_enable_58), .CD(n1916), 
            .CK(clk), .Q(r_Register[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Register__i4.GSR = "ENABLED";
    FD1P3IX r_Register__i5 (.D(n1795), .SP(clk_enable_58), .CD(n1916), 
            .CK(clk), .Q(r_Register[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Register__i5.GSR = "ENABLED";
    FD1P3IX r_Register__i6 (.D(n1796), .SP(clk_enable_58), .CD(n1916), 
            .CK(clk), .Q(r_Register[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Register__i6.GSR = "ENABLED";
    FD1P3IX r_Register__i7 (.D(n1797), .SP(clk_enable_58), .CD(n1916), 
            .CK(clk), .Q(r_Register[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Register__i7.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i1 (.D(trigger_write_N_659[1]), .SP(clk_enable_63), 
            .CD(n1914), .CK(clk), .Q(r_Bit_Count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Bit_Count__i1.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i2 (.D(trigger_write_N_659[2]), .SP(clk_enable_63), 
            .CD(n1914), .CK(clk), .Q(r_Bit_Count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Bit_Count__i2.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i3 (.D(trigger_write_N_659[3]), .SP(clk_enable_63), 
            .CD(n1914), .CK(clk), .Q(r_Bit_Count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Bit_Count__i3.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i4 (.D(trigger_write_N_659[4]), .SP(clk_enable_63), 
            .CD(n1914), .CK(clk), .Q(r_Bit_Count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Bit_Count__i4.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i5 (.D(trigger_write_N_659[5]), .SP(clk_enable_63), 
            .CD(n1914), .CK(clk), .Q(r_Bit_Count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Bit_Count__i5.GSR = "ENABLED";
    LUT4 i3664_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[7]), 
         .D(n356[7]), .Z(n518[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3664_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3666_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[8]), 
         .D(n356[8]), .Z(n518[8])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3666_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_712_i12_4_lut (.A(n842[11]), .B(r_MB128_Addr[12]), .C(n10413), 
         .D(n1753), .Z(n1262[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i12_4_lut.init = 16'hcac0;
    LUT4 mux_137_i14_4_lut (.A(n518[13]), .B(cmd_buf[12]), .C(n10407), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[13])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i14_4_lut.init = 16'hc0ca;
    LUT4 i3668_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[9]), 
         .D(n356[9]), .Z(n518[9])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3668_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_4_lut (.A(n10382), .B(n10452), .C(rd_buf[7]), .D(n1503), 
         .Z(n8828)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h00b0;
    LUT4 i5996_2_lut (.A(n842[11]), .B(n1242), .Z(n1243[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5996_2_lut.init = 16'h8888;
    LUT4 mux_378_i3_4_lut (.A(reset_n_c), .B(r_FetchWrite_Byte[2]), .C(n1486), 
         .D(ram_data[2]), .Z(ram_data_7__N_447[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(504[2] 505[43])
    defparam mux_378_i3_4_lut.init = 16'hcac0;
    FD1P3AX r_MB128_Addr_Curr_i0_i1 (.D(n1297[1]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(r_State[1]), .B(n10450), .C(r_State[0]), .D(n9549), 
         .Z(n27)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'ha8a0;
    LUT4 i3670_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[10]), 
         .D(n356[10]), .Z(n518[10])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3670_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3672_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[11]), 
         .D(n356[11]), .Z(n518[11])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3672_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3674_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[12]), 
         .D(n356[12]), .Z(n518[12])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3674_3_lut_4_lut.init = 16'hf4b0;
    PFUMX mux_730_i5 (.BLUT(n1243[4]), .ALUT(n1262[4]), .C0(n1296), .Z(n1297[4]));
    LUT4 i3676_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[13]), 
         .D(n356[13]), .Z(n518[13])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3676_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_712_i13_4_lut (.A(n842[12]), .B(r_MB128_Addr[13]), .C(n10413), 
         .D(n1753), .Z(n1262[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i13_4_lut.init = 16'hcac0;
    LUT4 mux_137_i15_4_lut (.A(n518[14]), .B(cmd_buf[13]), .C(n10407), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i15_4_lut.init = 16'hc0ca;
    LUT4 i5997_2_lut (.A(n842[12]), .B(n1242), .Z(n1243[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5997_2_lut.init = 16'h8888;
    LUT4 i6566_4_lut (.A(n10405), .B(n10400), .C(r_State[2]), .D(r_State[0]), 
         .Z(n8812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i6566_4_lut.init = 16'hcfca;
    LUT4 i3678_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[14]), 
         .D(n356[14]), .Z(n518[14])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3678_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_137_i16_4_lut (.A(n518[15]), .B(cmd_buf[14]), .C(n10407), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i16_4_lut.init = 16'hc0ca;
    LUT4 i9047_3_lut_4_lut (.A(n10390), .B(r_State[0]), .C(reset_n_c), 
         .D(n10409), .Z(n9859)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(721[7] 748[14])
    defparam i9047_3_lut_4_lut.init = 16'h7340;
    LUT4 i54_4_lut (.A(n8996), .B(n6619), .C(r_State[2]), .D(n9674), 
         .Z(n51)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i54_4_lut.init = 16'hfa3a;
    FD1P3IX cmd_buf_i22 (.D(cmd_buf[21]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i22.GSR = "ENABLED";
    FD1P3IX cmd_buf_i21 (.D(cmd_buf[20]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i21.GSR = "ENABLED";
    LUT4 mux_137_i17_4_lut (.A(n518[16]), .B(cmd_buf[15]), .C(n10407), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i17_4_lut.init = 16'hc0ca;
    LUT4 mux_712_i14_4_lut (.A(n842[13]), .B(r_MB128_Addr[14]), .C(n10413), 
         .D(n1753), .Z(n1262[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i14_4_lut.init = 16'hcac0;
    LUT4 i5998_2_lut (.A(n842[13]), .B(n1242), .Z(n1243[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5998_2_lut.init = 16'h8888;
    LUT4 mux_712_i15_4_lut (.A(n842[14]), .B(r_MB128_Addr[15]), .C(n10413), 
         .D(n1753), .Z(n1262[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i15_4_lut.init = 16'hcac0;
    LUT4 mux_378_i2_4_lut (.A(reset_n_c), .B(r_FetchWrite_Byte[1]), .C(n1486), 
         .D(ram_data[1]), .Z(ram_data_7__N_447[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(504[2] 505[43])
    defparam mux_378_i2_4_lut.init = 16'hcac0;
    LUT4 mux_378_i7_4_lut (.A(reset_n_c), .B(r_FetchWrite_Byte[6]), .C(n1486), 
         .D(\ram_data[6] ), .Z(ram_data_7__N_447[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(504[2] 505[43])
    defparam mux_378_i7_4_lut.init = 16'hcac0;
    LUT4 i5999_2_lut (.A(n842[14]), .B(n1242), .Z(n1243[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5999_2_lut.init = 16'h8888;
    LUT4 mux_378_i1_4_lut (.A(ram_data[0]), .B(r_FetchWrite_Byte[0]), .C(n1486), 
         .D(reset_n_c), .Z(ram_data_7__N_447[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(504[2] 505[43])
    defparam mux_378_i1_4_lut.init = 16'hcac0;
    PFUMX mux_730_i4 (.BLUT(n1243[3]), .ALUT(n1262[3]), .C0(n1296), .Z(n1297[3]));
    LUT4 mux_874_i1_4_lut (.A(rd_buf[0]), .B(r_Read_Byte[1]), .C(n1503), 
         .D(n10380), .Z(n1504[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_874_i1_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_116 (.A(n10452), .B(n10381), .C(n9768), .D(r_State[3]), 
         .Z(clk_enable_41)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_116.init = 16'h0a88;
    LUT4 mux_712_i16_4_lut (.A(n842[15]), .B(r_MB128_Addr[16]), .C(n10413), 
         .D(n1753), .Z(n1262[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i16_4_lut.init = 16'hcac0;
    LUT4 i3680_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[15]), 
         .D(n356[15]), .Z(n518[15])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3680_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_844_i1_3_lut (.A(ram_data_7__N_447[0]), .B(r_Write_Byte[0]), 
         .C(n1449), .Z(n1450[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_844_i1_3_lut.init = 16'hcaca;
    FD1P3AX r_MB128_Addr_Curr_i0_i2 (.D(n1297[2]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i2.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i3 (.D(n1297[3]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i3.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i4 (.D(n1297[4]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i4.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i5 (.D(n1297[5]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i5.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i6 (.D(n1297[6]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i6.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i7 (.D(n1297[7]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i7.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i8 (.D(n1297[8]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i8.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i9 (.D(n1297[9]), .SP(clk_enable_81), .CK(clk), 
            .Q(r_MB128_Addr_Curr[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i9.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i10 (.D(n1297[10]), .SP(clk_enable_81), 
            .CK(clk), .Q(r_MB128_Addr_Curr[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i10.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i11 (.D(n1297[11]), .SP(clk_enable_81), 
            .CK(clk), .Q(r_MB128_Addr_Curr[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i11.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i12 (.D(n1297[12]), .SP(clk_enable_81), 
            .CK(clk), .Q(r_MB128_Addr_Curr[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i12.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i13 (.D(n1297[13]), .SP(clk_enable_81), 
            .CK(clk), .Q(r_MB128_Addr_Curr[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i13.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i14 (.D(n1297[14]), .SP(clk_enable_81), 
            .CK(clk), .Q(r_MB128_Addr_Curr[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i14.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i15 (.D(n1297[15]), .SP(clk_enable_81), 
            .CK(clk), .Q(r_MB128_Addr_Curr[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i15.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i16 (.D(n1297[16]), .SP(clk_enable_81), 
            .CK(clk), .Q(r_MB128_Addr_Curr[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_Curr_i0_i16.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n9051), .B(n10486), .C(sp_hold_n_N_726), .D(n10484), 
         .Z(n1486)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i3_4_lut.init = 16'h0008;
    FD1P3IX cmd_buf_i20 (.D(cmd_buf[19]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i20.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_117 (.A(r_State_Prev[2]), .B(r_State_Prev[0]), .C(r_State_Prev[3]), 
         .D(r_State_Prev[1]), .Z(n9051)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_117.init = 16'hbfff;
    LUT4 i3682_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[16]), 
         .D(n356[16]), .Z(n518[16])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3682_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_rep_195 (.A(trigger_wren), .B(trigger_write), .Z(n10469)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(125[9:21])
    defparam i1_2_lut_rep_195.init = 16'heeee;
    FD1P3IX cmd_buf_i19 (.D(cmd_buf[18]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i19.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_196 (.A(trigger_fetchwrite), .B(trigger_read), .Z(n10470)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(124[9:27])
    defparam i1_2_lut_rep_196.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(trigger_fetchwrite), .B(trigger_read), 
         .C(trigger_write), .D(trigger_wren), .Z(clk_enable_49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(124[9:27])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_197 (.A(rw_len[2]), .B(rw_len[1]), .Z(n10471)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    defparam i1_2_lut_rep_197.init = 16'heeee;
    LUT4 i2445_3_lut_4_lut_4_lut (.A(n10437), .B(n13), .C(r_State[0]), 
         .D(n10436), .Z(n3312)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i2445_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i1_2_lut_rep_164_3_lut (.A(rw_len[2]), .B(rw_len[1]), .C(rw_len[0]), 
         .Z(n10438)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    defparam i1_2_lut_rep_164_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_rep_170_4_lut (.A(rw_len[2]), .B(rw_len[1]), .C(rw_len[4]), 
         .D(rw_len[3]), .Z(n10444)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    defparam i2_3_lut_rep_170_4_lut.init = 16'hfffe;
    LUT4 sp_phase_1__I_0_740_i3_2_lut_rep_198 (.A(sp_phase[0]), .B(sp_phase[1]), 
         .Z(n10472)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(368[8:25])
    defparam sp_phase_1__I_0_740_i3_2_lut_rep_198.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n10437), .B(n10483), .C(r_State[0]), 
         .D(n10436), .Z(n42)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hf070;
    LUT4 i9228_3_lut_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_end_desel), 
         .D(sp_hold_n_N_726), .Z(clk_enable_43)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(368[8:25])
    defparam i9228_3_lut_3_lut_4_lut.init = 16'h1101;
    LUT4 i6014_2_lut_3_lut_4_lut_4_lut (.A(n10437), .B(n10483), .C(r_State[0]), 
         .D(n10436), .Z(n4)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i6014_2_lut_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_4_lut (.A(trigger_wren), .B(n10395), .C(sp_phase[1]), 
         .D(wr_buf_2__N_295), .Z(n9644)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h1500;
    FD1P3IX cmd_buf_i18 (.D(cmd_buf[17]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i18.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i7 (.D(n8828), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i7.GSR = "ENABLED";
    FD1P3IX cmd_buf_i17 (.D(cmd_buf[16]), .SP(clk_enable_86), .CD(n4556), 
            .CK(clk), .Q(cmd_buf[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_buf_i17.GSR = "ENABLED";
    FD1P3AX r_State_i3 (.D(r_State_3__N_7[3]), .SP(clk_enable_87), .CK(clk), 
            .Q(r_State[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_hold_n_N_726), 
         .Z(n98)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(368[8:25])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    FD1P3AX r_State_i2 (.D(r_State_3__N_7[2]), .SP(clk_enable_88), .CK(clk), 
            .Q(r_State[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_118 (.A(trigger_wren), .B(n10395), .C(sp_phase[1]), 
         .D(wr_buf_7__N_236), .Z(n9646)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_118.init = 16'h1500;
    FD1P3AX r_State_i1 (.D(r_State_3__N_7[1]), .SP(clk_enable_89), .CK(clk), 
            .Q(r_State[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_i1.GSR = "ENABLED";
    LUT4 i1623_2_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_end_desel), 
         .Z(clk_enable_161)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(368[8:25])
    defparam i1623_2_lut_3_lut.init = 16'h1010;
    FD1P3IX r_MB128_Bits_i0_i1 (.D(r_MB128_Bits[2]), .SP(clk_enable_152), 
            .CD(n6586), .CK(clk), .Q(r_MB128_Bits[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bits_i0_i1.GSR = "ENABLED";
    LUT4 i3243_3_lut_4_lut (.A(n10443), .B(n10436), .C(n3461), .D(n10440), 
         .Z(n4049)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(761[11:27])
    defparam i3243_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i1_2_lut_4_lut_adj_119 (.A(trigger_wren), .B(n10395), .C(sp_phase[1]), 
         .D(wr_buf_3__N_284), .Z(n9645)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_119.init = 16'h1500;
    LUT4 i6000_2_lut (.A(n842[15]), .B(n1242), .Z(n1243[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i6000_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_133_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(rd_buf_7__N_178), .D(sp_hold_n_N_726), .Z(n10407)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(368[8:25])
    defparam i1_2_lut_rep_133_3_lut_4_lut.init = 16'h1000;
    PFUMX mux_730_i3 (.BLUT(n1243[2]), .ALUT(n1262[2]), .C0(n1296), .Z(n1297[2]));
    LUT4 i2108_3_lut_4_lut (.A(n10443), .B(n10436), .C(r_State[0]), .D(n13), 
         .Z(n3096)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(761[11:27])
    defparam i2108_3_lut_4_lut.init = 16'hfd0d;
    FD1P3IX rw_len_i4 (.D(n3481), .SP(clk_enable_134), .CD(n6108), .CK(clk), 
            .Q(rw_len[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rw_len_i4.GSR = "ENABLED";
    LUT4 mux_844_i6_3_lut (.A(ram_data_7__N_447[5]), .B(r_Write_Byte[5]), 
         .C(n1449), .Z(n1450[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_844_i6_3_lut.init = 16'hcaca;
    LUT4 i3245_3_lut_4_lut (.A(n10443), .B(n10436), .C(n3461), .D(n3742), 
         .Z(n4051)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(761[11:27])
    defparam i3245_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i2_3_lut_rep_199 (.A(r_MB128_Bits[1]), .B(r_MB128_Bits[2]), .C(r_MB128_Bits[0]), 
         .Z(n10473)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(682[13:30])
    defparam i2_3_lut_rep_199.init = 16'hfefe;
    LUT4 i5919_2_lut_4_lut (.A(r_MB128_Bits[1]), .B(r_MB128_Bits[2]), .C(r_MB128_Bits[0]), 
         .D(trigger_read_N_650), .Z(n1701[1])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(682[13:30])
    defparam i5919_2_lut_4_lut.init = 16'h00fe;
    LUT4 mux_712_i17_4_lut (.A(n842[16]), .B(i_Data_c), .C(n10413), .D(n1753), 
         .Z(n1262[16])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i17_4_lut.init = 16'hcac0;
    LUT4 mux_844_i7_3_lut (.A(ram_data_7__N_447[6]), .B(r_Write_Byte[6]), 
         .C(n1449), .Z(n1450[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_844_i7_3_lut.init = 16'hcaca;
    FD1P3IX rw_len_i2 (.D(n6176), .SP(clk_enable_134), .CD(n6108), .CK(clk), 
            .Q(rw_len[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rw_len_i2.GSR = "ENABLED";
    LUT4 i6124_4_lut_3_lut_4_lut (.A(read_in_transit), .B(n10398), .C(n1503), 
         .D(n10452), .Z(clk_enable_127)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i6124_4_lut_3_lut_4_lut.init = 16'hf888;
    FD1P3IX rw_len_i1 (.D(n9868), .SP(clk_enable_134), .CD(n6108), .CK(clk), 
            .Q(rw_len[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rw_len_i1.GSR = "ENABLED";
    FD1P3IX cmd_len_i4 (.D(n3503), .SP(clk_enable_136), .CD(n4547), .CK(clk), 
            .Q(cmd_len[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_len_i4.GSR = "ENABLED";
    FD1P3IX cmd_len_i2 (.D(n3477), .SP(clk_enable_136), .CD(n4547), .CK(clk), 
            .Q(cmd_len[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_len_i2.GSR = "ENABLED";
    LUT4 i9233_2_lut_rep_200 (.A(r_State[2]), .B(r_State[3]), .Z(n10474)) /* synthesis lut_function=((B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i9233_2_lut_rep_200.init = 16'hdddd;
    LUT4 mux_844_i2_3_lut (.A(ram_data_7__N_447[1]), .B(r_Write_Byte[1]), 
         .C(n1449), .Z(n1450[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_844_i2_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(clk_samplediv[3]), .B(n10442), .C(clk_samplediv[4]), 
         .D(clk_samplediv[5]), .Z(clk_samplediv_5__N_325[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:38])
    defparam i1_3_lut_4_lut.init = 16'hfe01;
    LUT4 i9195_3_lut_4_lut_4_lut (.A(n10381), .B(r_State[3]), .C(n4051), 
         .D(n10452), .Z(clk_enable_10)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A ((C+!(D))+!B))) */ ;
    defparam i9195_3_lut_4_lut_4_lut.init = 16'h2e00;
    LUT4 i6001_2_lut (.A(n842[16]), .B(n1242), .Z(n1243[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i6001_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_145_3_lut_3_lut_3_lut_4_lut (.A(r_State[2]), .B(r_State[3]), 
         .C(r_State[0]), .D(r_State[1]), .Z(n10419)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i1_2_lut_rep_145_3_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    PFUMX i37 (.BLUT(n24), .ALUT(n9645), .C0(sp_phase[0]), .Z(wr_buf_3__N_279));
    LUT4 i1_2_lut_rep_177_3_lut (.A(r_State[2]), .B(r_State[3]), .C(clk_sample), 
         .Z(n10451)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i1_2_lut_rep_177_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_153_3_lut_4_lut (.A(r_State[2]), .B(r_State[3]), .C(n10483), 
         .D(clk_sample), .Z(n10427)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i1_2_lut_rep_153_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_201 (.A(r_State[2]), .B(r_State[1]), .Z(n10475)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_201.init = 16'h8888;
    LUT4 i9158_2_lut_rep_202 (.A(sp_phase[0]), .B(sp_phase[1]), .Z(n10476)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i9158_2_lut_rep_202.init = 16'h7777;
    LUT4 i1_2_lut_rep_146 (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), .Z(n10420)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_146.init = 16'h8888;
    LUT4 i1_4_lut_adj_120 (.A(n10426), .B(n10475), .C(n23), .D(r_State[0]), 
         .Z(n9594)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_120.init = 16'hc088;
    FD1P3IX r_MB128_Bytes_i0_i16 (.D(n1146[16]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i16.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n5727), .B(n12), .C(n9665), .D(n14), .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i5832_2_lut (.A(n3268), .B(r_State[1]), .Z(n6619)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5832_2_lut.init = 16'heeee;
    LUT4 i2486_4_lut (.A(n10483), .B(n10423), .C(n10404), .D(r_State[0]), 
         .Z(n3268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i2486_4_lut.init = 16'h0a22;
    LUT4 i1_3_lut_4_lut_adj_121 (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), 
         .C(n10472), .D(cmd_buf[23]), .Z(n101)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_3_lut_4_lut_adj_121.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_adj_122 (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_active_N_733), 
         .Z(n2462)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_122.init = 16'h8080;
    LUT4 i1_4_lut_then_4_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[3]), 
         .D(n10452), .Z(n10489)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0400;
    LUT4 i2_3_lut_4_lut_adj_123 (.A(sp_phase[0]), .B(sp_phase[1]), .C(n10412), 
         .D(wr_buf[5]), .Z(n8840)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_123.init = 16'h1000;
    LUT4 i1_2_lut_rep_115_3_lut_4_lut (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), 
         .C(n10412), .D(n10462), .Z(n10389)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_115_3_lut_4_lut.init = 16'h0070;
    LUT4 i1_3_lut (.A(clk_sample), .B(n33), .C(n8812), .Z(n34)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_3_lut.init = 16'h8080;
    CCU2D add_70_16 (.A0(r_MB128_Addr[14]), .B0(r_MB128_Bytes[14]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[15]), .B1(r_MB128_Bytes[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8789), .COUT(n8790), .S0(n356[14]), 
          .S1(n356[15]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_16.INIT0 = 16'h5666;
    defparam add_70_16.INIT1 = 16'h5666;
    defparam add_70_16.INJECT1_0 = "NO";
    defparam add_70_16.INJECT1_1 = "NO";
    LUT4 r_State_1__bdd_4_lut (.A(r_State[1]), .B(n3268), .C(n10497), 
         .D(r_State[2]), .Z(n10499)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam r_State_1__bdd_4_lut.init = 16'heef0;
    FD1P3IX r_MB128_Bytes_i0_i15 (.D(n1146[15]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i15.GSR = "ENABLED";
    FD1P3IX cmd_len_i1 (.D(n3489), .SP(clk_enable_136), .CD(n4547), .CK(clk), 
            .Q(cmd_len[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_len_i1.GSR = "ENABLED";
    PFUMX i37_adj_124 (.BLUT(n24_adj_764), .ALUT(n9646), .C0(sp_phase[0]), 
          .Z(wr_buf_7__N_231));
    FD1P3AX r_State_i0 (.D(r_State_3__N_7[0]), .SP(clk_enable_99), .CK(clk), 
            .Q(r_State[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_i0.GSR = "ENABLED";
    FD1P3AX sp_active_712 (.D(sp_active_N_732), .SP(clk_enable_100), .CK(clk), 
            .Q(sp_hold_n_N_726)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_active_712.GSR = "ENABLED";
    FD1P3AX sp_clk_711 (.D(n2471), .SP(clk_enable_101), .CK(clk), .Q(sp_clk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_clk_711.GSR = "ENABLED";
    FD1P3IX rd_buf_0__704 (.D(sp_miso_c), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_0__704.GSR = "ENABLED";
    FD1P3IX rd_buf_1__703 (.D(rd_buf[0]), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_1__703.GSR = "ENABLED";
    LUT4 i1420_1_lut_rep_206 (.A(sp_phase[0]), .Z(n10480)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(415[13:30])
    defparam i1420_1_lut_rep_206.init = 16'h5555;
    LUT4 i3737_2_lut_3_lut_4_lut (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), 
         .C(clk_enable_49), .D(n10462), .Z(n4547)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i3737_2_lut_3_lut_4_lut.init = 16'hf070;
    FD1P3AX r_MB128_Bits_i0_i2 (.D(n1094[2]), .SP(clk_enable_152), .CK(clk), 
            .Q(r_MB128_Bits[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bits_i0_i2.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i1 (.D(rd_buf[1]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i2 (.D(rd_buf[2]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i3 (.D(rd_buf[3]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i4 (.D(rd_buf[4]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i5 (.D(rd_buf[5]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i6 (.D(rd_buf[6]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i7 (.D(rd_buf[7]), .SP(clk_enable_111), 
            .CK(clk), .Q(r_FetchWrite_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_FetchWrite_Byte_i0_i7.GSR = "ENABLED";
    FD1P3AX r_Pos_Edge_i2 (.D(r_Pos_Edge_3__N_83[2]), .SP(clk_enable_112), 
            .CK(clk), .Q(\r_Pos_Edge[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Pos_Edge_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_207 (.A(r_State[1]), .B(r_State[2]), .Z(n10481)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_207.init = 16'h2222;
    FD1S3AX ram_data_i1 (.D(ram_data_7__N_115[1]), .CK(clk), .Q(ram_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i1.GSR = "ENABLED";
    FD1S3AX ram_data_i2 (.D(ram_data_7__N_115[2]), .CK(clk), .Q(ram_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i2.GSR = "ENABLED";
    FD1S3AX ram_data_i3 (.D(ram_data_7__N_115[3]), .CK(clk), .Q(ram_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i3.GSR = "ENABLED";
    FD1S3AX ram_data_i4 (.D(ram_data_7__N_115[4]), .CK(clk), .Q(ram_data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i4.GSR = "ENABLED";
    FD1S3AX ram_data_i5 (.D(ram_data_7__N_115[5]), .CK(clk), .Q(ram_data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i5.GSR = "ENABLED";
    FD1S3AX ram_data_i6 (.D(ram_data_7__N_115[6]), .CK(clk), .Q(\ram_data[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i6.GSR = "ENABLED";
    FD1P3AX ram_data_i7 (.D(ram_data_7__N_115[7]), .SP(clk_enable_113), 
            .CK(clk), .Q(ram_data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam ram_data_i7.GSR = "ENABLED";
    FD1S3AX sp_phase_i1 (.D(sp_phase_1__N_323[1]), .CK(clk), .Q(sp_phase[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_phase_i1.GSR = "ENABLED";
    FD1P3IX rd_buf_2__702 (.D(rd_buf[1]), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_2__702.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i14 (.D(n1146[14]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i14.GSR = "ENABLED";
    FD1P3IX rd_buf_3__701 (.D(rd_buf[2]), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_3__701.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i13 (.D(n1146[13]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i13.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), 
         .C(clk_enable_49), .D(n10462), .Z(clk_enable_136)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf0f8;
    FD1P3IX r_MB128_Bytes_i0_i12 (.D(n1146[12]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i12.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i1 (.D(r_State[1]), .SP(clk_enable_121), .CK(clk), 
            .Q(r_State_Prev[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_Prev_i0_i1.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i2 (.D(r_State[2]), .SP(clk_enable_121), .CK(clk), 
            .Q(r_State_Prev[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_Prev_i0_i2.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i3 (.D(r_State[3]), .SP(clk_enable_121), .CK(clk), 
            .Q(r_State_Prev[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_State_Prev_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_125 (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), 
         .C(clk_enable_49), .D(n10472), .Z(clk_enable_86)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_125.init = 16'hf0f8;
    FD1P3AX r_Read_Byte_i0_i1 (.D(n1504[1]), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i2 (.D(n1504[2]), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i3 (.D(n1504[3]), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i4 (.D(n1504[4]), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i5 (.D(n1504[5]), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i6 (.D(n1504[6]), .SP(clk_enable_127), .CK(clk), 
            .Q(r_Read_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Read_Byte_i0_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_126 (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), 
         .C(cmd_buf[23]), .D(n10472), .Z(n97)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_126.init = 16'h0080;
    LUT4 i5798_2_lut_rep_208 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .Z(n10482)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5798_2_lut_rep_208.init = 16'heeee;
    LUT4 i8930_2_lut_rep_154_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10428)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i8930_2_lut_rep_154_3_lut.init = 16'he0e0;
    LUT4 i3742_2_lut_3_lut_4_lut (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), 
         .C(clk_enable_49), .D(n10472), .Z(n4556)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i3742_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i8011_4_lut_rep_112 (.A(n10483), .B(n10391), .C(n13), .D(r_State[0]), 
         .Z(n10386)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i8011_4_lut_rep_112.init = 16'h0a22;
    LUT4 i9139_2_lut_rep_176_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10450)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i9139_2_lut_rep_176_3_lut.init = 16'h0101;
    PFUMX i9281 (.BLUT(n10198), .ALUT(n14), .C0(r_State[3]), .Z(n10199));
    LUT4 i2_3_lut_rep_138_4_lut (.A(rw_len[0]), .B(n10444), .C(sp_hold_n_N_726), 
         .D(rd_buf_7__N_178), .Z(n10412)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_3_lut_rep_138_4_lut.init = 16'h00e0;
    LUT4 i9189_2_lut_rep_179_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10453)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i9189_2_lut_rep_179_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_209 (.A(i_Clk_c), .B(i_Clk_Prev), .Z(n10483)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_rep_209.init = 16'h2222;
    LUT4 i9003_2_lut_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(r_State[1]), 
         .D(n10423), .Z(n9811)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i9003_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_127 (.A(i_Clk_c), .B(i_Clk_Prev), .C(n10486), 
         .D(n10391), .Z(n9674)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_3_lut_4_lut_adj_127.init = 16'hf0d0;
    LUT4 i197_2_lut_rep_135_4_lut (.A(r_Bit_Count[3]), .B(n10457), .C(n10459), 
         .D(n10483), .Z(n10409)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i197_2_lut_rep_135_4_lut.init = 16'h0800;
    LUT4 mux_528_Mux_2_i6_4_lut (.A(n3268), .B(n1661[2]), .C(r_State[1]), 
         .D(n10401), .Z(n6)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam mux_528_Mux_2_i6_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_127_3_lut_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), 
         .C(n10426), .D(r_State[0]), .Z(n10401)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_rep_127_3_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_4_lut_4_lut (.A(n10437), .B(n10490), .C(n33_adj_765), .D(n10436), 
         .Z(n4_adj_766)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i1_4_lut_4_lut.init = 16'hfcf4;
    LUT4 i3_4_lut_adj_128 (.A(n10432), .B(n3096), .C(clk_sample), .D(n10484), 
         .Z(trigger_write_N_652)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut_adj_128.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.A(r_State[3]), .B(n10452), .C(n10423), 
         .D(n10446), .Z(n15_adj_767)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_129.init = 16'h4000;
    LUT4 mux_844_i5_3_lut (.A(ram_data_7__N_447[4]), .B(r_Write_Byte[4]), 
         .C(n1449), .Z(n1450[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_844_i5_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_158_3_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(r_State[1]), 
         .Z(n10432)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_rep_158_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(n3312), 
         .D(r_State[1]), .Z(n15_adj_768)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h00fd;
    LUT4 i205_2_lut_rep_120_3_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(n13), 
         .Z(n10394)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i205_2_lut_rep_120_3_lut.init = 16'h0202;
    LUT4 i3022_3_lut_rep_131_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(o_Active_N_604), 
         .D(r_State[1]), .Z(n10405)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i3022_3_lut_rep_131_4_lut.init = 16'h2220;
    LUT4 n11_bdd_4_lut_9283 (.A(n10413), .B(n10474), .C(n10479), .D(n1296), 
         .Z(n10188)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)+!B ((D)+!C)))) */ ;
    defparam n11_bdd_4_lut_9283.init = 16'h5703;
    LUT4 i2_3_lut_rep_107_4_lut (.A(n10434), .B(n10404), .C(r_State[2]), 
         .D(trigger_read_N_650), .Z(n10381)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_rep_107_4_lut.init = 16'h0020;
    LUT4 i2055_3_lut_4_lut (.A(n10434), .B(n10404), .C(r_State[2]), .D(n10399), 
         .Z(n2790)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i2055_3_lut_4_lut.init = 16'hf202;
    PFUMX i9389 (.BLUT(n10488), .ALUT(n10489), .C0(r_State[2]), .Z(n10490));
    LUT4 i1_4_lut_adj_130 (.A(n21), .B(n10475), .C(n10383), .D(r_State[0]), 
         .Z(n9596)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_4_lut_adj_130.init = 16'hc088;
    LUT4 i30_4_lut (.A(n10454), .B(n8), .C(r_State[3]), .D(n13_adj_769), 
         .Z(n25_adj_770)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i30_4_lut.init = 16'hfaca;
    LUT4 i6132_3_lut_4_lut_4_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(n10412), .Z(n6921)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam i6132_3_lut_4_lut_4_lut_3_lut.init = 16'h9898;
    LUT4 i5_4_lut (.A(n10426), .B(n7_adj_771), .C(r_State[0]), .D(n1701[1]), 
         .Z(trigger_fetchwrite_N_692)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i5_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_4_lut_4_lut (.A(r_State[1]), .B(reset_n_c), .C(r_State[0]), 
         .D(n10390), .Z(n31)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_131 (.A(n10460), .B(n10486), .C(n10483), 
         .D(n13), .Z(n14)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_131.init = 16'h4404;
    LUT4 i6009_2_lut_3_lut_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(n13), 
         .D(r_State[0]), .Z(n8_adj_772)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i6009_2_lut_3_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i9132_4_lut (.A(r_State[2]), .B(reset_n_c), .C(n9626), .D(n10493), 
         .Z(n1916)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i9132_4_lut.init = 16'h23af;
    LUT4 mux_844_i3_3_lut (.A(ram_data_7__N_447[2]), .B(r_Write_Byte[2]), 
         .C(n1449), .Z(n1450[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_844_i3_3_lut.init = 16'hcaca;
    FD1P3IX r_MB128_Bytes_i0_i11 (.D(n1146[11]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i11.GSR = "ENABLED";
    FD1P3IX rd_buf_4__700 (.D(rd_buf[3]), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_4__700.GSR = "ENABLED";
    LUT4 i9169_3_lut (.A(clk_samplediv[3]), .B(n10), .C(clk_samplediv[4]), 
         .Z(clk_samplediv_5__N_331)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(203[6:27])
    defparam i9169_3_lut.init = 16'h0101;
    FD1P3IX rd_buf_5__699 (.D(rd_buf[4]), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_5__699.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i10 (.D(n1146[10]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i10.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(clk_samplediv[2]), .B(clk_samplediv[5]), .C(clk_samplediv[0]), 
         .D(clk_samplediv[1]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(203[6:27])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(n1789), .B(r_Register[2]), .Z(n1791)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1_2_lut.init = 16'h4444;
    FD1P3IX rd_buf_6__698 (.D(rd_buf[5]), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_6__698.GSR = "ENABLED";
    LUT4 i1080_4_lut (.A(n2983), .B(reset_n_c), .C(n8), .D(r_State[3]), 
         .Z(n1789)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1080_4_lut.init = 16'hc088;
    FD1P3IX rd_buf_7__697 (.D(rd_buf[6]), .SP(clk_enable_133), .CD(n6104), 
            .CK(clk), .Q(rd_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rd_buf_7__697.GSR = "ENABLED";
    PFUMX mux_730_i2 (.BLUT(n1243[1]), .ALUT(n1262[1]), .C0(n1296), .Z(n1297[1]));
    FD1P3IX rw_len_i0 (.D(n792[0]), .SP(clk_enable_134), .CD(n6108), .CK(clk), 
            .Q(rw_len[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam rw_len_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_121_3_lut_4_lut (.A(n10461), .B(n10444), .C(write_in_transit), 
         .D(rd_buf_7__N_178), .Z(n10395)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_rep_121_3_lut_4_lut.init = 16'h0020;
    LUT4 i866_2_lut_rep_178_3_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(clk_sample), 
         .Z(n10452)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i866_2_lut_rep_178_3_lut.init = 16'h2020;
    LUT4 i9200_2_lut_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(r_State[0]), 
         .D(n13), .Z(n9750)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i9200_2_lut_3_lut_4_lut.init = 16'h0f0d;
    FD1P3IX r_MB128_Bytes_i0_i9 (.D(n1146[9]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i9.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(r_Bit_Count[2]), .B(n10_adj_773), .C(r_Bit_Count[0]), 
         .Z(n1373)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i5_3_lut.init = 16'h4040;
    LUT4 i4_4_lut_adj_132 (.A(n10483), .B(n10459), .C(r_Bit_Count[3]), 
         .D(r_Bit_Count[1]), .Z(n10_adj_773)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i4_4_lut_adj_132.init = 16'h0020;
    LUT4 i1255_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10443), .C(r_Bit_Count[4]), 
         .D(r_Bit_Count[5]), .Z(trigger_write_N_659[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i1255_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_105_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(n10473), 
         .D(n10391), .Z(n10379)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_rep_105_3_lut_4_lut.init = 16'h0020;
    FD1P3IX cmd_len_i0 (.D(n1320), .SP(clk_enable_136), .CD(n4547), .CK(clk), 
            .Q(cmd_len[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam cmd_len_i0.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i8 (.D(n1146[8]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(r_State[2]), 
         .D(r_State[1]), .Z(n4_adj_774)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i91_2_lut_rep_141_4_lut (.A(n10465), .B(n10450), .C(r_Bit_Count[4]), 
         .D(n10483), .Z(n10415)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i91_2_lut_rep_141_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(r_State[2]), 
         .D(r_State[1]), .Z(n9607)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'h0d00;
    PFUMX i36 (.BLUT(n21_adj_775), .ALUT(n9644), .C0(sp_phase[0]), .Z(wr_buf_2__N_290));
    FD1P3IX r_MB128_Bytes_i0_i7 (.D(n1146[7]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i7.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i6 (.D(n1146[6]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i6.GSR = "ENABLED";
    LUT4 i9217_2_lut_rep_128_4_lut (.A(n10465), .B(n10450), .C(r_Bit_Count[4]), 
         .D(r_State[0]), .Z(n10402)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i9217_2_lut_rep_128_4_lut.init = 16'hff40;
    LUT4 i1_2_lut_adj_133 (.A(read_in_transit), .B(write_in_transit), .Z(n51_adj_776)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(155[7:22])
    defparam i1_2_lut_adj_133.init = 16'heeee;
    FD1P3IX r_MB128_Bytes_i0_i5 (.D(n1146[5]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_148_3_lut_4_lut (.A(i_Clk_c), .B(i_Clk_Prev), .C(r_State[3]), 
         .D(clk_sample), .Z(n10422)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_rep_148_3_lut_4_lut.init = 16'h2000;
    LUT4 i30_4_lut_adj_134 (.A(n10416), .B(r_State[0]), .C(r_State[2]), 
         .D(n10404), .Z(n15_adj_763)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i30_4_lut_adj_134.init = 16'h2c20;
    LUT4 i2_3_lut_4_lut_adj_135 (.A(i_Data_c), .B(n10403), .C(n4049), 
         .D(n10440), .Z(n9584)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_135.init = 16'h0008;
    LUT4 n12_bdd_2_lut_9366 (.A(n10327), .B(r_State[0]), .Z(n10328)) /* synthesis lut_function=(A (B)) */ ;
    defparam n12_bdd_2_lut_9366.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_136 (.A(n10452), .B(r_State[2]), .C(r_State[3]), 
         .D(n10486), .Z(n1459)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_3_lut_4_lut_adj_136.init = 16'h2000;
    LUT4 i2_3_lut_4_lut_adj_137 (.A(i_Data_c), .B(n10403), .C(n4051), 
         .D(n3742), .Z(n9588)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_137.init = 16'h0008;
    LUT4 i9184_3_lut_4_lut_4_lut (.A(n10457), .B(n8845), .C(n10418), .D(r_State[3]), 
         .Z(clk_enable_42)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i9184_3_lut_4_lut_4_lut.init = 16'h8ccc;
    FD1P3IX r_MB128_Bytes_i0_i4 (.D(n1146[4]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_138 (.A(i_Clk_c), .B(i_Clk_Prev), .C(n20), 
         .D(clk_sample), .Z(r_Pos_Edge_3__N_83[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_3_lut_4_lut_adj_138.init = 16'h2000;
    FD1P3IX r_MB128_Bytes_i0_i3 (.D(n1146[3]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i3.GSR = "ENABLED";
    LUT4 i9241_2_lut_rep_210 (.A(r_State[3]), .B(r_State[2]), .Z(n10484)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i9241_2_lut_rep_210.init = 16'hdddd;
    FD1P3AX o_WriteLED_671 (.D(o_WriteLED_N_631), .SP(clk_enable_143), .CK(clk), 
            .Q(o_WriteLED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam o_WriteLED_671.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i2 (.D(n1146[2]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i2.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i1 (.D(n1146[1]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut_4_lut (.A(r_State[3]), .B(r_State[2]), .C(r_State[1]), 
         .D(n10386), .Z(n9562)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i3_1_lut_rep_211 (.A(r_State[3]), .Z(n10485)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i3_1_lut_rep_211.init = 16'h5555;
    LUT4 i2_4_lut_4_lut_4_lut (.A(r_State[3]), .B(n3687), .C(n10483), 
         .D(clk_sample), .Z(o_WriteLED_N_631)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_4_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i2_4_lut_adj_139 (.A(n10418), .B(r_State[0]), .C(n10473), .D(n10408), 
         .Z(n8891)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i2_4_lut_adj_139.init = 16'h4440;
    LUT4 i1_2_lut_rep_174_3_lut_3_lut (.A(r_State[3]), .B(r_State[1]), .C(r_State[2]), 
         .Z(n10448)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_rep_174_3_lut_3_lut.init = 16'h4040;
    LUT4 mux_378_i5_4_lut (.A(ram_data[4]), .B(r_FetchWrite_Byte[4]), .C(n1486), 
         .D(reset_n_c), .Z(ram_data_7__N_447[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(504[2] 505[43])
    defparam mux_378_i5_4_lut.init = 16'hcac0;
    LUT4 i9197_3_lut_4_lut_4_lut (.A(n10381), .B(r_State[3]), .C(n4049), 
         .D(n10452), .Z(clk_enable_9)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A ((C+!(D))+!B))) */ ;
    defparam i9197_3_lut_4_lut_4_lut.init = 16'h2e00;
    LUT4 mux_844_i4_3_lut (.A(ram_data_7__N_447[3]), .B(r_Write_Byte[3]), 
         .C(n1449), .Z(n1450[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_844_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_140 (.A(n1789), .B(r_Register[3]), .Z(n1792)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1_2_lut_adj_140.init = 16'h4444;
    LUT4 mux_899_i1_4_lut (.A(n6335), .B(n1547[0]), .C(n6921), .D(trigger_wren), 
         .Z(wr_buf_6__N_246)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_899_i1_4_lut.init = 16'hc0ca;
    LUT4 i8960_3_lut_4_lut_4_lut (.A(n10437), .B(n3461), .C(n10436), .D(n10443), 
         .Z(n9768)) /* synthesis lut_function=(A (B)+!A (B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i8960_3_lut_4_lut_4_lut.init = 16'hdcdd;
    LUT4 i5985_4_lut_4_lut (.A(r_State[3]), .B(r_State[2]), .C(n6619), 
         .D(n8996), .Z(n6774)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i5985_4_lut_4_lut.init = 16'h1504;
    LUT4 i1_2_lut_adj_141 (.A(n1789), .B(r_Register[4]), .Z(n1793)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1_2_lut_adj_141.init = 16'h4444;
    LUT4 i9112_3_lut_4_lut_4_lut (.A(n10450), .B(n8845), .C(n10418), .D(r_State[3]), 
         .Z(clk_enable_159)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i9112_3_lut_4_lut_4_lut.init = 16'h8ccc;
    CCU2D add_70_14 (.A0(r_MB128_Addr[12]), .B0(r_MB128_Bytes[12]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[13]), .B1(r_MB128_Bytes[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8788), .COUT(n8789), .S0(n356[12]), 
          .S1(n356[13]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_14.INIT0 = 16'h5666;
    defparam add_70_14.INIT1 = 16'h5666;
    defparam add_70_14.INJECT1_0 = "NO";
    defparam add_70_14.INJECT1_1 = "NO";
    LUT4 i32_4_lut_4_lut (.A(r_State[3]), .B(n10417), .C(i_Data_c), .D(n2790), 
         .Z(n17_adj_777)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i32_4_lut_4_lut.init = 16'hba10;
    PFUMX i9276 (.BLUT(n10189), .ALUT(n10188), .C0(n10423), .Z(n10190));
    LUT4 o_Active_N_607_bdd_4_lut_3_lut (.A(r_State[3]), .B(r_State[1]), 
         .C(clk_sample), .Z(n10326)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam o_Active_N_607_bdd_4_lut_3_lut.init = 16'hd8d8;
    CCU2D add_70_12 (.A0(r_MB128_Addr[10]), .B0(r_MB128_Bytes[10]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[11]), .B1(r_MB128_Bytes[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8787), .COUT(n8788), .S0(n356[10]), 
          .S1(n356[11]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_12.INIT0 = 16'h5666;
    defparam add_70_12.INIT1 = 16'h5666;
    defparam add_70_12.INJECT1_0 = "NO";
    defparam add_70_12.INJECT1_1 = "NO";
    LUT4 mux_712_i1_4_lut (.A(n842[0]), .B(r_MB128_Addr[1]), .C(n10413), 
         .D(n1753), .Z(n1262[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i1_4_lut.init = 16'hcac0;
    CCU2D add_70_10 (.A0(r_MB128_Addr[8]), .B0(r_MB128_Bytes[8]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[9]), .B1(r_MB128_Bytes[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8786), .COUT(n8787), .S0(n356[8]), .S1(n356[9]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_10.INIT0 = 16'h5666;
    defparam add_70_10.INIT1 = 16'h5666;
    defparam add_70_10.INJECT1_0 = "NO";
    defparam add_70_10.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_142 (.A(n1789), .B(r_Register[5]), .Z(n1794)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1_2_lut_adj_142.init = 16'h4444;
    CCU2D add_70_8 (.A0(r_MB128_Addr[6]), .B0(r_MB128_Bytes[6]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[7]), .B1(r_MB128_Bytes[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8785), .COUT(n8786), .S0(n356[6]), .S1(n356[7]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_8.INIT0 = 16'h5666;
    defparam add_70_8.INIT1 = 16'h5666;
    defparam add_70_8.INJECT1_0 = "NO";
    defparam add_70_8.INJECT1_1 = "NO";
    CCU2D add_836_11 (.A0(r_MB128_Addr_Curr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8777), .COUT(n8778), .S0(n842[9]), .S1(n842[10]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_11.INIT0 = 16'h5aaa;
    defparam add_836_11.INIT1 = 16'h5aaa;
    defparam add_836_11.INJECT1_0 = "NO";
    defparam add_836_11.INJECT1_1 = "NO";
    CCU2D add_836_9 (.A0(r_MB128_Addr_Curr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8776), .COUT(n8777), .S0(n842[7]), .S1(n842[8]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_9.INIT0 = 16'h5aaa;
    defparam add_836_9.INIT1 = 16'h5aaa;
    defparam add_836_9.INJECT1_0 = "NO";
    defparam add_836_9.INJECT1_1 = "NO";
    LUT4 i9016_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10482), .C(n10436), 
         .D(n10479), .Z(n9825)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i9016_2_lut_3_lut_4_lut.init = 16'hfff8;
    CCU2D add_70_6 (.A0(r_MB128_Addr[4]), .B0(r_MB128_Bytes[4]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[5]), .B1(r_MB128_Bytes[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8784), .COUT(n8785), .S0(n356[4]), .S1(n356[5]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_6.INIT0 = 16'h5666;
    defparam add_70_6.INIT1 = 16'h5666;
    defparam add_70_6.INJECT1_0 = "NO";
    defparam add_70_6.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_143 (.A(r_State[3]), .B(r_State[2]), .C(r_State[0]), 
         .D(r_State[1]), .Z(n9548)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_4_lut_4_lut_adj_143.init = 16'h1040;
    LUT4 i5789_3_lut_3_lut (.A(r_State[3]), .B(n9711), .C(reset_n_c), 
         .Z(n6575)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i5789_3_lut_3_lut.init = 16'h4040;
    LUT4 i8946_2_lut_rep_155_2_lut (.A(r_State[3]), .B(r_State[1]), .Z(n10429)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i8946_2_lut_rep_155_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut (.A(r_State[3]), .B(r_State[0]), .Z(n9628)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    PFUMX i61 (.BLUT(n7_adj_778), .ALUT(n43), .C0(r_State[2]), .Z(n33));
    LUT4 i60_3_lut_4_lut_4_lut_4_lut (.A(r_State[3]), .B(n10399), .C(n10499), 
         .D(n10483), .Z(n35)) /* synthesis lut_function=(!(A (B (D))+!A (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i60_3_lut_4_lut_4_lut_4_lut.init = 16'h27af;
    FD1P3IX r_MB128_Addr_i0_i16 (.D(i_Data_c), .SP(clk_enable_163), .CD(n4523), 
            .CK(clk), .Q(r_MB128_Addr[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i16.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(r_State[3]), .B(n9861), .C(n69), .D(r_State[1]), 
         .Z(n43)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i1456_2_lut (.A(sp_phase[0]), .B(sp_phase[1]), .Z(sp_phase_1__N_323[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(291[15:27])
    defparam i1456_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_144 (.A(n1789), .B(r_Register[6]), .Z(n1795)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1_2_lut_adj_144.init = 16'h4444;
    FD1P3AX o_ReadLED_670 (.D(o_ReadLED_N_622), .SP(clk_enable_147), .CK(clk), 
            .Q(o_ReadLED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam o_ReadLED_670.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_119_3_lut_4_lut_4_lut (.A(r_State[3]), .B(n10483), 
         .C(n10426), .D(n10475), .Z(n10393)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_rep_119_3_lut_4_lut_4_lut.init = 16'h5100;
    LUT4 i1_4_lut_4_lut_4_lut (.A(r_State[3]), .B(r_State[1]), .C(n9845), 
         .D(r_State[0]), .Z(n73)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A !(B+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h46ff;
    LUT4 i5811_2_lut_rep_212 (.A(r_State[1]), .B(r_State[0]), .Z(n10486)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5811_2_lut_rep_212.init = 16'h8888;
    LUT4 i502_3_lut_4_lut (.A(r_Bit_Count[1]), .B(n10456), .C(i_Data_c), 
         .D(ram_data_7__N_447[3]), .Z(n2027)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i502_3_lut_4_lut.init = 16'hfd20;
    LUT4 o_Active_N_607_bdd_3_lut (.A(r_State[1]), .B(r_State[3]), .C(n13), 
         .Z(n10325)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam o_Active_N_607_bdd_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_150_3_lut_3_lut_3_lut (.A(r_State[1]), .B(r_State[0]), 
         .C(r_State[2]), .Z(n10424)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_150_3_lut_3_lut_3_lut.init = 16'h0808;
    FD1P3IX r_MB128_Addr_i0_i15 (.D(r_MB128_Addr[16]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_145 (.A(r_State[1]), .B(r_State[0]), .C(i_Clk_Prev), 
         .D(i_Clk_c), .Z(n8996)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_145.init = 16'h8088;
    CCU2D add_836_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(r_MB128_Addr_Curr[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8773), .S1(n842[0]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_1.INIT0 = 16'hF000;
    defparam add_836_1.INIT1 = 16'h5555;
    defparam add_836_1.INJECT1_0 = "NO";
    defparam add_836_1.INJECT1_1 = "NO";
    CCU2D add_70_4 (.A0(r_MB128_Addr[2]), .B0(r_MB128_Bytes[2]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[3]), .B1(r_MB128_Bytes[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8783), .COUT(n8784), .S0(n356[2]), .S1(n356[3]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_4.INIT0 = 16'h5666;
    defparam add_70_4.INIT1 = 16'h5666;
    defparam add_70_4.INJECT1_0 = "NO";
    defparam add_70_4.INJECT1_1 = "NO";
    LUT4 i28_3_lut_4_lut_3_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .Z(n9718)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i28_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i2_3_lut_4_lut_adj_146 (.A(r_State[3]), .B(n10479), .C(r_State[2]), 
         .D(n10483), .Z(n3756)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i2_3_lut_4_lut_adj_146.init = 16'hfeff;
    CCU2D add_70_2 (.A0(r_MB128_Addr[0]), .B0(r_MB128_Bytes[0]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[1]), .B1(r_MB128_Bytes[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8783), .S1(n356[1]));   // c:/devel/diamond/pce_save128/firmware/save128.v(321[23:51])
    defparam add_70_2.INIT0 = 16'h7000;
    defparam add_70_2.INIT1 = 16'h5666;
    defparam add_70_2.INJECT1_0 = "NO";
    defparam add_70_2.INJECT1_1 = "NO";
    CCU2D sub_486_add_2_17 (.A0(r_MB128_Bytes[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8798), .S0(n1[15]), .S1(n1[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_17.INIT0 = 16'h5555;
    defparam sub_486_add_2_17.INIT1 = 16'h5555;
    defparam sub_486_add_2_17.INJECT1_0 = "NO";
    defparam sub_486_add_2_17.INJECT1_1 = "NO";
    FD1P3IX r_MB128_Addr_i0_i14 (.D(r_MB128_Addr[15]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i14.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_147 (.A(n1789), .B(r_Register[7]), .Z(n1796)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1_2_lut_adj_147.init = 16'h4444;
    LUT4 i1_4_lut_adj_148 (.A(sp_phase[1]), .B(n21_adj_779), .C(n18), 
         .D(n9631), .Z(wr_buf_5__N_257)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_148.init = 16'hdc50;
    FD1P3AX r_Stop_Active_667 (.D(r_Stop_Active_N_613), .SP(clk_enable_150), 
            .CK(clk), .Q(r_Stop_Active)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Stop_Active_667.GSR = "ENABLED";
    LUT4 i5851_2_lut (.A(i_Data_c), .B(n1789), .Z(n1797)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5851_2_lut.init = 16'h2222;
    LUT4 i1227_2_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .Z(trigger_write_N_659[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i1227_2_lut.init = 16'h6666;
    LUT4 i39_4_lut (.A(wr_buf[4]), .B(n9631), .C(sp_phase[0]), .D(n10412), 
         .Z(n18)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i39_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_rep_149_4_lut (.A(r_Bit_Count[1]), .B(n10456), .C(n10459), 
         .D(r_Bit_Count[3]), .Z(n10423)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i2_3_lut_rep_149_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_109_4_lut (.A(n9700), .B(n10408), .C(n10443), .D(n10483), 
         .Z(n10383)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_109_4_lut.init = 16'h1000;
    PFUMX i97 (.BLUT(n73), .ALUT(n76), .C0(r_State[2]), .Z(n64));
    LUT4 i2_3_lut_4_lut_adj_149 (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .D(i_Data_c), .Z(n3687)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_149.init = 16'h0008;
    LUT4 i504_3_lut_4_lut (.A(r_Bit_Count[1]), .B(n10456), .C(i_Data_c), 
         .D(ram_data_7__N_447[1]), .Z(n2029)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i504_3_lut_4_lut.init = 16'hfe10;
    LUT4 i5804_2_lut (.A(n842[0]), .B(n1242), .Z(n1243[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5804_2_lut.init = 16'h8888;
    FD1P3AX r_Active_666 (.D(o_Active_N_595), .SP(clk_enable_151), .CK(clk), 
            .Q(o_Active_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Active_666.GSR = "ENABLED";
    LUT4 i6010_4_lut_4_lut (.A(r_State[2]), .B(r_State[1]), .C(n10386), 
         .D(n8_adj_772), .Z(n14_adj_780)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i6010_4_lut_4_lut.init = 16'h5140;
    FD1P3IX r_MB128_Bits_i0_i0 (.D(r_MB128_Bits[1]), .SP(clk_enable_152), 
            .CD(n6586), .CK(clk), .Q(r_MB128_Bits[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bits_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut_adj_150 (.A(r_State[2]), .B(n26_adj_781), 
         .C(n39), .D(clk_sample), .Z(n9552)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_4_lut_4_lut_4_lut_adj_150.init = 16'h1000;
    FD1P3IX r_MB128_Bytes_i0_i0 (.D(n1146[0]), .SP(clk_enable_153), .CD(n4524), 
            .CK(clk), .Q(r_MB128_Bytes[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Bytes_i0_i0.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i0 (.D(r_MB128_Addr[1]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i0.GSR = "ENABLED";
    LUT4 i5824_2_lut_rep_213 (.A(r_State[2]), .B(r_State[0]), .Z(n10487)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5824_2_lut_rep_213.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_151 (.A(r_State[2]), .B(r_State[0]), .C(n1213), 
         .D(r_State[1]), .Z(n9074)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_151.init = 16'h1000;
    FD1P3IX r_MB128_Addr_i0_i13 (.D(r_MB128_Addr[14]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i13.GSR = "ENABLED";
    LUT4 i27_4_lut_3_lut (.A(r_State[2]), .B(r_State[0]), .C(r_State[3]), 
         .Z(n12_adj_782)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i27_4_lut_3_lut.init = 16'h1818;
    LUT4 i8948_2_lut_3_lut (.A(r_State[2]), .B(r_State[0]), .C(r_State[1]), 
         .Z(n9756)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8948_2_lut_3_lut.init = 16'hfefe;
    CCU2D add_836_17 (.A0(r_MB128_Addr_Curr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8780), .S0(n842[15]), .S1(n842[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_17.INIT0 = 16'h5aaa;
    defparam add_836_17.INIT1 = 16'h5aaa;
    defparam add_836_17.INJECT1_0 = "NO";
    defparam add_836_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_152 (.A(trigger_wren), .B(wr_buf[5]), .C(ram_data[5]), 
         .D(trigger_write), .Z(n9631)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_152.init = 16'h5044;
    PFUMX i33 (.BLUT(n9615), .ALUT(n9556), .C0(r_State[2]), .Z(n20));
    CCU2D add_836_7 (.A0(r_MB128_Addr_Curr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8775), .COUT(n8776), .S0(n842[5]), .S1(n842[6]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_7.INIT0 = 16'h5aaa;
    defparam add_836_7.INIT1 = 16'h5aaa;
    defparam add_836_7.INJECT1_0 = "NO";
    defparam add_836_7.INJECT1_1 = "NO";
    LUT4 i199_2_lut_rep_116_3_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10459), 
         .C(n10483), .D(n10437), .Z(n10390)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i199_2_lut_rep_116_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i5_4_lut_adj_153 (.A(cmd_len[3]), .B(n7_adj_783), .C(cmd_len[4]), 
         .D(n9742), .Z(rd_buf_7__N_178)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(456[39:53])
    defparam i5_4_lut_adj_153.init = 16'hfffe;
    LUT4 i1_2_lut_rep_110_4_lut (.A(n9700), .B(n10408), .C(n10443), .D(n10483), 
         .Z(n10384)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_110_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_rep_125_3_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10459), 
         .C(n10479), .D(n10453), .Z(n10399)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i1_2_lut_rep_125_3_lut_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i1_2_lut_adj_154 (.A(cmd_len[2]), .B(cmd_len[0]), .Z(n7_adj_783)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(456[39:53])
    defparam i1_2_lut_adj_154.init = 16'heeee;
    CCU2D add_836_5 (.A0(r_MB128_Addr_Curr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8774), .COUT(n8775), .S0(n842[3]), .S1(n842[4]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_5.INIT0 = 16'h5aaa;
    defparam add_836_5.INIT1 = 16'h5aaa;
    defparam add_836_5.INJECT1_0 = "NO";
    defparam add_836_5.INJECT1_1 = "NO";
    PFUMX i9364 (.BLUT(n10328), .ALUT(n10324), .C0(r_State[2]), .Z(n10329));
    LUT4 i3_4_lut_adj_155 (.A(n10408), .B(n10436), .C(n10443), .D(n10483), 
         .Z(n1213)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[7:28])
    defparam i3_4_lut_adj_155.init = 16'h2000;
    LUT4 i1_4_lut_adj_156 (.A(r_State[3]), .B(n10402), .C(n9825), .D(r_State[1]), 
         .Z(n76)) /* synthesis lut_function=(!(A (C)+!A !(B (D)))) */ ;
    defparam i1_4_lut_adj_156.init = 16'h4e0a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(r_State[3]), .B(n10418), .C(n10457), 
         .D(i_Data_c), .Z(n9586)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'h8000;
    LUT4 i1_2_lut_rep_129_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10459), .C(r_State[3]), 
         .D(n10443), .Z(n10403)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i1_2_lut_rep_129_3_lut_4_lut.init = 16'he0f0;
    FD1P3IX r_MB128_Addr_i0_i12 (.D(r_MB128_Addr[13]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i12.GSR = "ENABLED";
    LUT4 i8934_2_lut (.A(cmd_len[5]), .B(cmd_len[1]), .Z(n9742)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8934_2_lut.init = 16'heeee;
    LUT4 mux_378_i6_4_lut (.A(ram_data[5]), .B(r_FetchWrite_Byte[5]), .C(n1486), 
         .D(reset_n_c), .Z(ram_data_7__N_447[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(504[2] 505[43])
    defparam mux_378_i6_4_lut.init = 16'hcac0;
    LUT4 i503_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10458), .C(i_Data_c), 
         .D(ram_data_7__N_447[2]), .Z(n2028)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i503_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_113_4_lut (.A(n9700), .B(n10408), .C(n10443), .D(n10473), 
         .Z(n10387)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_113_4_lut.init = 16'hffef;
    LUT4 i9101_2_lut_4_lut (.A(reset_n_c), .B(n9554), .C(n10452), .D(r_Bit_Count[0]), 
         .Z(n9864)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i9101_2_lut_4_lut.init = 16'h8a75;
    LUT4 i9206_4_lut (.A(reset_n_c), .B(n9691), .C(clk_sample), .D(n56), 
         .Z(clk_enable_87)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i9206_4_lut.init = 16'h5575;
    LUT4 i5950_4_lut (.A(r_State_3__N_399[3]), .B(n9519), .C(n9562), .D(clk_sample), 
         .Z(r_State_3__N_7[3])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i5950_4_lut.init = 16'h0200;
    FD1P3IX r_MB128_Addr_i0_i11 (.D(r_MB128_Addr[12]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i11.GSR = "ENABLED";
    LUT4 r_Bit_Count_5__I_0_802_i11_2_lut_rep_130_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), 
         .B(n10458), .C(n10459), .D(r_Bit_Count[3]), .Z(n10404)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam r_Bit_Count_5__I_0_802_i11_2_lut_rep_130_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_158 (.A(n5727), .B(n10384), .C(n10448), .D(r_State[0]), 
         .Z(n9691)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_158.init = 16'heaaa;
    LUT4 i1_3_lut_4_lut_adj_159 (.A(rw_len[0]), .B(n10471), .C(rw_len[3]), 
         .D(rw_len[4]), .Z(n3481)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(125[9:21])
    defparam i1_3_lut_4_lut_adj_159.init = 16'hfe01;
    LUT4 i9076_3_lut_4_lut (.A(n10483), .B(n10486), .C(r_State[3]), .D(n8859), 
         .Z(n7_adj_784)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i9076_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_160 (.A(n13), .B(n10483), .C(n10424), 
         .D(r_State[3]), .Z(n9678)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i1_2_lut_3_lut_4_lut_adj_160.init = 16'hb000;
    PFUMX mux_730_i1 (.BLUT(n1243[0]), .ALUT(n1262[0]), .C0(n1296), .Z(n1297[0]));
    LUT4 i1_4_lut_adj_161 (.A(sp_phase[1]), .B(n21_adj_779), .C(n18_adj_785), 
         .D(n9670), .Z(wr_buf_4__N_268)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_161.init = 16'hdc50;
    LUT4 mux_712_i2_4_lut (.A(n842[1]), .B(r_MB128_Addr[2]), .C(n10413), 
         .D(n1753), .Z(n1262[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i2_4_lut.init = 16'hcac0;
    LUT4 i5986_2_lut (.A(n842[1]), .B(n1242), .Z(n1243[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5986_2_lut.init = 16'h8888;
    LUT4 i499_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10458), .C(ram_data_7__N_447[6]), 
         .D(i_Data_c), .Z(n2024)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam i499_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i39_4_lut_adj_162 (.A(wr_buf[3]), .B(n9670), .C(sp_phase[0]), 
         .D(n10412), .Z(n18_adj_785)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i39_4_lut_adj_162.init = 16'hcac0;
    LUT4 i9210_4_lut (.A(reset_n_c), .B(clk_sample), .C(n9730), .D(n49), 
         .Z(clk_enable_88)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i9210_4_lut.init = 16'h55d5;
    LUT4 i1_4_lut_adj_163 (.A(wr_buf[1]), .B(wr_buf_2__N_295), .C(n9639), 
         .D(n9647), .Z(n21_adj_775)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_163.init = 16'heca0;
    LUT4 i8923_4_lut (.A(r_State[2]), .B(r_State[1]), .C(n10483), .D(n4458), 
         .Z(n9730)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i8923_4_lut.init = 16'hfeee;
    LUT4 i1_4_lut_adj_164 (.A(trigger_wren), .B(wr_buf[4]), .C(ram_data[4]), 
         .D(trigger_write), .Z(n9670)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_164.init = 16'h5044;
    LUT4 i32_4_lut (.A(r_State[0]), .B(n3312), .C(r_State[3]), .D(o_Active_N_604), 
         .Z(n4458)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i32_4_lut.init = 16'h3f3a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(cmd_len[2]), .B(n10463), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n3503)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(430[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'hf0e1;
    FD1P3IX r_MB128_Addr_i0_i10 (.D(r_MB128_Addr[11]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i10.GSR = "ENABLED";
    LUT4 i1339_2_lut_3_lut_4_lut (.A(cmd_len[2]), .B(n10463), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n10_adj_786)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(430[17:31])
    defparam i1339_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_166 (.A(clk_samplediv[2]), .B(n10466), 
         .C(clk_samplediv[4]), .D(clk_samplediv[3]), .Z(clk_samplediv_5__N_325[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:38])
    defparam i1_2_lut_3_lut_4_lut_adj_166.init = 16'hf0e1;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_167 (.A(n10476), .B(write_in_transit), 
         .C(n10425), .D(rd_buf_7__N_178), .Z(n3616)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_167.init = 16'h0040;
    LUT4 i6021_2_lut_3_lut_4_lut_4_lut (.A(n10474), .B(n10452), .C(i_Data_c), 
         .D(n10434), .Z(n1094[2])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i6021_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i9127_2_lut_2_lut_3_lut_4_lut_4_lut (.A(n10474), .B(n10452), .C(clk_enable_152), 
         .D(n10434), .Z(n6586)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i9127_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'hb0f0;
    LUT4 i2_3_lut_4_lut_adj_168 (.A(rd_buf_7__N_178), .B(n10425), .C(fetchwrt_in_transit), 
         .D(n10476), .Z(clk_enable_111)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_168.init = 16'h0040;
    LUT4 equal_15_i11_2_lut_rep_144_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10464), 
         .C(n10459), .D(r_Bit_Count[3]), .Z(n10418)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam equal_15_i11_2_lut_rep_144_3_lut_4_lut.init = 16'hfff7;
    LUT4 i2242_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10464), .C(n1459), 
         .D(n1449), .Z(n2977)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i2242_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_4_lut_adj_169 (.A(r_State_3__N_399[2]), .B(n9688), .C(n9678), 
         .D(n6774), .Z(r_State_3__N_7[2])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i1_4_lut_adj_169.init = 16'h0002;
    LUT4 i1248_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10464), .C(r_Bit_Count[4]), 
         .D(r_Bit_Count[3]), .Z(trigger_write_N_659[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1248_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_147_4_lut (.A(n10471), .B(rw_len[3]), .C(rw_len[4]), 
         .D(rw_len[0]), .Z(n10421)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_147_4_lut.init = 16'hfffe;
    LUT4 i38_3_lut_4_lut (.A(write_in_transit), .B(n10411), .C(sp_phase[0]), 
         .D(n10396), .Z(n21_adj_779)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i38_3_lut_4_lut.init = 16'h7f70;
    LUT4 i1_3_lut_4_lut_adj_170 (.A(write_in_transit), .B(n10411), .C(trigger_wren), 
         .D(n6335), .Z(wr_buf_6__N_252)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_3_lut_4_lut_adj_170.init = 16'h0700;
    LUT4 i1_2_lut_4_lut_adj_171 (.A(n10471), .B(rw_len[3]), .C(rw_len[4]), 
         .D(rd_buf_7__N_178), .Z(n87)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_4_lut_adj_171.init = 16'hfffe;
    CCU2D sub_486_add_2_15 (.A0(r_MB128_Bytes[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8797), .COUT(n8798), .S0(n1[13]), .S1(n1[14]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_15.INIT0 = 16'h5555;
    defparam sub_486_add_2_15.INIT1 = 16'h5555;
    defparam sub_486_add_2_15.INJECT1_0 = "NO";
    defparam sub_486_add_2_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_151_4_lut (.A(n10471), .B(rw_len[3]), .C(rw_len[4]), 
         .D(n10461), .Z(n10425)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_151_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_172 (.A(sp_phase[1]), .B(n21_adj_779), .C(n18_adj_787), 
         .D(n9601), .Z(wr_buf_1__N_301)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_172.init = 16'hdc50;
    LUT4 i1_2_lut_3_lut_4_lut_adj_173 (.A(r_Bit_Count[3]), .B(n10459), .C(n10464), 
         .D(r_Bit_Count[2]), .Z(n6_adj_788)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_173.init = 16'h1000;
    PFUMX mux_846_i4 (.BLUT(n1450[3]), .ALUT(n2027), .C0(n1459), .Z(ram_data_7__N_115[3]));
    LUT4 i1_4_lut_adj_174 (.A(clk_sample), .B(r_State[3]), .C(n5727), 
         .D(n9665), .Z(n9688)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_4_lut_adj_174.init = 16'hfdf5;
    LUT4 i39_4_lut_adj_175 (.A(wr_buf[0]), .B(n9601), .C(sp_phase[0]), 
         .D(n10412), .Z(n18_adj_787)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i39_4_lut_adj_175.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_176 (.A(r_State[3]), .B(n10418), .C(n10450), 
         .D(i_Data_c), .Z(n9585)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_176.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_177 (.A(r_Bit_Count[3]), .B(n10459), .C(n10464), 
         .D(r_Bit_Count[2]), .Z(n23)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_177.init = 16'hefff;
    PFUMX i2119 (.BLUT(n3672), .ALUT(n8891), .C0(r_State[1]), .Z(n2854));
    LUT4 i1_4_lut_adj_178 (.A(trigger_wren), .B(wr_buf[1]), .C(ram_data[1]), 
         .D(trigger_write), .Z(n9601)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_178.init = 16'h5044;
    LUT4 i1_4_lut_adj_179 (.A(reset_n_c), .B(n10452), .C(r_State[3]), 
         .D(n9718), .Z(clk_enable_163)) /* synthesis lut_function=(!(A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_179.init = 16'h5d55;
    LUT4 i9115_4_lut (.A(r_State[2]), .B(reset_n_c), .C(n9626), .D(n13_adj_789), 
         .Z(n4523)) /* synthesis lut_function=(!(A (B+(C))+!A (B (D)))) */ ;
    defparam i9115_4_lut.init = 16'h1357;
    LUT4 i1_2_lut_3_lut_adj_180 (.A(sp_phase[1]), .B(n10412), .C(trigger_wren), 
         .Z(n9647)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_180.init = 16'h0b0b;
    CCU2D sub_486_add_2_13 (.A0(r_MB128_Bytes[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8796), .COUT(n8797), .S0(n1[11]), .S1(n1[12]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_13.INIT0 = 16'h5555;
    defparam sub_486_add_2_13.INIT1 = 16'h5555;
    defparam sub_486_add_2_13.INJECT1_0 = "NO";
    defparam sub_486_add_2_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_108_3_lut_4_lut_4_lut (.A(n10476), .B(read_in_transit), 
         .C(n10425), .D(rd_buf_7__N_178), .Z(n10382)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_108_3_lut_4_lut_4_lut.init = 16'h0040;
    CCU2D add_836_15 (.A0(r_MB128_Addr_Curr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8779), .COUT(n8780), .S0(n842[13]), .S1(n842[14]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_15.INIT0 = 16'h5aaa;
    defparam add_836_15.INIT1 = 16'h5aaa;
    defparam add_836_15.INJECT1_0 = "NO";
    defparam add_836_15.INJECT1_1 = "NO";
    LUT4 i9145_4_lut (.A(clk_enable_63), .B(r_State[0]), .C(n4_adj_766), 
         .D(n35_adj_790), .Z(n1914)) /* synthesis lut_function=(!((B (C)+!B (C+(D)))+!A)) */ ;
    defparam i9145_4_lut.init = 16'h080a;
    LUT4 i1_4_lut_adj_181 (.A(n15_adj_767), .B(n10422), .C(n9736), .D(n19), 
         .Z(n35_adj_790)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_181.init = 16'haaea;
    LUT4 i1_4_lut_adj_182 (.A(n10452), .B(n9796), .C(n49_adj_791), .D(n9794), 
         .Z(n33_adj_765)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_182.init = 16'ha0a2;
    LUT4 i8988_4_lut (.A(n10431), .B(n10443), .C(n9728), .D(n9661), 
         .Z(n9796)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;
    defparam i8988_4_lut.init = 16'haeaa;
    FD1P3AX r_Write_Byte_i0_i0 (.D(n9585), .SP(clk_enable_159), .CK(clk), 
            .Q(r_Write_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_Write_Byte_i0_i0.GSR = "ENABLED";
    LUT4 i8928_4_lut (.A(n10436), .B(n10443), .C(n10453), .D(r_State[2]), 
         .Z(n9736)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i8928_4_lut.init = 16'hafbb;
    LUT4 i8921_4_lut (.A(r_Register[7]), .B(r_Register[5]), .C(r_Register[3]), 
         .D(r_Register[1]), .Z(n9728)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8921_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_183 (.A(i_Data_c), .B(r_Register[6]), .C(r_Register[4]), 
         .D(r_Register[2]), .Z(n9661)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_183.init = 16'h0080;
    PFUMX i6580 (.BLUT(n9596), .ALUT(n14_adj_780), .C0(r_State[3]), .Z(r_State_3__N_399[3]));
    LUT4 i2_4_lut_adj_184 (.A(o_Active_N_604), .B(n6796), .C(n10436), 
         .D(n10479), .Z(n9554)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i2_4_lut_adj_184.init = 16'h0010;
    LUT4 i2_4_lut_adj_185 (.A(n9661), .B(n10443), .C(n9728), .D(n9700), 
         .Z(o_Active_N_604)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_4_lut_adj_185.init = 16'h0a08;
    LUT4 i6007_2_lut (.A(r_State[2]), .B(r_State[3]), .Z(n6796)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6007_2_lut.init = 16'heeee;
    PFUMX mux_528_Mux_1_i6 (.BLUT(n4), .ALUT(n9660), .C0(r_State[1]), 
          .Z(n6_adj_792)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;
    LUT4 i2_4_lut_adj_186 (.A(sp_hold_n_N_726), .B(rd_buf_7__N_178), .C(n10472), 
         .D(n10421), .Z(clk_enable_2)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_4_lut_adj_186.init = 16'h0a08;
    LUT4 i5384_3_lut (.A(wr_buf[7]), .B(cmd_buf[31]), .C(rd_buf_7__N_178), 
         .Z(sp_mosi_N_740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(136[15:21])
    defparam i5384_3_lut.init = 16'hcaca;
    LUT4 i1141_2_lut_rep_106_3_lut_4_lut_4_lut (.A(n10476), .B(read_in_transit), 
         .C(n10452), .D(n10411), .Z(n10380)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i1141_2_lut_rep_106_3_lut_4_lut_4_lut.init = 16'h4f0f;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_187 (.A(n10476), .B(n51_adj_776), 
         .C(n10425), .D(rd_buf_7__N_178), .Z(n1753)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_187.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_188 (.A(n10462), .B(n10420), .C(clk_enable_49), 
         .D(n10412), .Z(clk_enable_134)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_188.init = 16'hf1f0;
    LUT4 i2_4_lut_adj_189 (.A(n10452), .B(reset_n_c), .C(n10190), .D(n1753), 
         .Z(clk_enable_81)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!B)) */ ;
    defparam i2_4_lut_adj_189.init = 16'hff3b;
    LUT4 i1_4_lut_adj_190 (.A(\wr_buf[6] ), .B(wr_buf_7__N_236), .C(n9639), 
         .D(n9647), .Z(n24_adj_764)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_190.init = 16'heca0;
    LUT4 i9224_4_lut (.A(trigger_wren), .B(n10395), .C(n10496), .D(n10476), 
         .Z(n15)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;
    defparam i9224_4_lut.init = 16'hafae;
    LUT4 i1_4_lut_adj_191 (.A(wr_buf[2]), .B(wr_buf_3__N_284), .C(n9639), 
         .D(n9647), .Z(n24)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_191.init = 16'heca0;
    LUT4 i1_3_lut_4_lut_adj_192 (.A(n10462), .B(n10420), .C(n10412), .D(trigger_wren), 
         .Z(n17_adj_793)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_192.init = 16'h00ef;
    LUT4 i8985_2_lut_3_lut_4_lut (.A(n10462), .B(n10420), .C(clk_enable_49), 
         .D(n10412), .Z(n6108)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i8985_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i1_4_lut_adj_193 (.A(reset_n_c), .B(n69_adj_794), .C(n6_adj_795), 
         .D(r_State[3]), .Z(clk_enable_89)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam i1_4_lut_adj_193.init = 16'h4ccc;
    LUT4 i1_4_lut_adj_194 (.A(n4270), .B(reset_n_c), .C(n6575), .D(n10199), 
         .Z(n69_adj_794)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_194.init = 16'habaf;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_195 (.A(n10476), .B(fetchwrt_in_transit), 
         .C(n10425), .D(rd_buf_7__N_178), .Z(n3617)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_195.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_196 (.A(n10462), .B(n10420), .C(n10470), 
         .D(n10412), .Z(clk_enable_133)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_196.init = 16'hf1f0;
    LUT4 i128_2_lut_3_lut_4_lut (.A(n10462), .B(n10420), .C(n10470), .D(n10412), 
         .Z(n6104)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i128_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i27_4_lut (.A(r_MB128_Addr[0]), .B(r_MB128_Addr_Curr[0]), .C(n10468), 
         .D(r_MB128_Bytes[0]), .Z(n20_adj_796)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i27_4_lut.init = 16'h3a35;
    FD1P3IX r_MB128_Addr_i0_i9 (.D(r_MB128_Addr[10]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i9.GSR = "ENABLED";
    LUT4 mux_712_i3_4_lut (.A(n842[2]), .B(r_MB128_Addr[3]), .C(n10413), 
         .D(n1753), .Z(n1262[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i3_4_lut.init = 16'hcac0;
    CCU2D add_836_13 (.A0(r_MB128_Addr_Curr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8778), .COUT(n8779), .S0(n842[11]), .S1(n842[12]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_13.INIT0 = 16'h5aaa;
    defparam add_836_13.INIT1 = 16'h5aaa;
    defparam add_836_13.INJECT1_0 = "NO";
    defparam add_836_13.INJECT1_1 = "NO";
    LUT4 i5987_2_lut (.A(n842[2]), .B(n1242), .Z(n1243[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5987_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_197 (.A(clk_sample), .B(n15_adj_768), .C(n10385), 
         .D(r_State[2]), .Z(n6_adj_795)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_197.init = 16'ha088;
    LUT4 i1_2_lut_rep_124_3_lut_4_lut_4_lut (.A(n10476), .B(rd_buf_7__N_178), 
         .C(n10444), .D(n10461), .Z(n10398)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_124_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i2_4_lut_adj_198 (.A(n8996), .B(n9674), .C(n9611), .D(r_State[2]), 
         .Z(n9711)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_198.init = 16'hfcfa;
    LUT4 i2_4_lut_4_lut (.A(n10381), .B(r_State[3]), .C(n3461), .D(n10452), 
         .Z(n8845)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h2e00;
    PFUMX mux_846_i3 (.BLUT(n1450[2]), .ALUT(n2028), .C0(n1459), .Z(ram_data_7__N_115[2]));
    CCU2D sub_486_add_2_11 (.A0(r_MB128_Bytes[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8795), .COUT(n8796), .S0(n1[9]), .S1(n1[10]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_11.INIT0 = 16'h5555;
    defparam sub_486_add_2_11.INIT1 = 16'h5555;
    defparam sub_486_add_2_11.INJECT1_0 = "NO";
    defparam sub_486_add_2_11.INJECT1_1 = "NO";
    LUT4 i9073_3_lut_4_lut (.A(n10483), .B(n10387), .C(r_State[0]), .D(n79[0]), 
         .Z(n9860)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i9073_3_lut_4_lut.init = 16'h2f20;
    LUT4 i505_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10482), .C(i_Data_c), 
         .D(ram_data_7__N_447[0]), .Z(n2030)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i505_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut_adj_199 (.A(n9628), .B(n9688), .C(n10390), .D(n10446), 
         .Z(n4270)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_4_lut_adj_199.init = 16'hcecc;
    LUT4 n10197_bdd_2_lut (.A(n10197), .B(r_State[2]), .Z(n10198)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n10197_bdd_2_lut.init = 16'h2222;
    LUT4 mux_712_i4_4_lut (.A(n842[3]), .B(r_MB128_Addr[4]), .C(n10413), 
         .D(n1753), .Z(n1262[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i4_4_lut.init = 16'hcac0;
    LUT4 i5988_2_lut (.A(n842[3]), .B(n1242), .Z(n1243[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5988_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_152_4_lut (.A(r_Bit_Count[2]), .B(n10482), .C(r_Bit_Count[4]), 
         .D(n10465), .Z(n10426)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i2_3_lut_rep_152_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_200 (.A(reset_n_c), .B(n10452), .C(n10419), .D(n9548), 
         .Z(clk_enable_152)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_200.init = 16'hddd5;
    LUT4 i2_3_lut_rep_139_4_lut (.A(clk_sample), .B(n10474), .C(n1373), 
         .D(n10479), .Z(n10413)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_3_lut_rep_139_4_lut.init = 16'h0020;
    LUT4 i500_3_lut (.A(i_Data_c), .B(ram_data_7__N_447[5]), .C(n3742), 
         .Z(n2025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:15])
    defparam i500_3_lut.init = 16'hcaca;
    LUT4 i5383_3_lut (.A(rw_len[1]), .B(rw_len[2]), .C(rw_len[0]), .Z(n6176)) /* synthesis lut_function=(A (B)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    defparam i5383_3_lut.init = 16'hc9c9;
    FD1P3IX sp_cs_n_678 (.D(n10834), .SP(clk_enable_161), .CD(n98), .CK(clk), 
            .Q(sp_cs_n_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam sp_cs_n_678.GSR = "ENABLED";
    LUT4 i9105_2_lut (.A(rw_len[1]), .B(rw_len[0]), .Z(n9868)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    defparam i9105_2_lut.init = 16'h9999;
    LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(clk_sample), .B(n10474), .C(n2854), 
         .D(n10483), .Z(trigger_read_N_638)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'h2000;
    LUT4 i1356_1_lut (.A(clk_samplediv[0]), .Z(clk_samplediv_5__N_325[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:38])
    defparam i1356_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_202 (.A(clk_sample), .B(n10474), .C(r_State[1]), 
         .D(n10483), .Z(n7_adj_771)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_202.init = 16'h2000;
    LUT4 i1_2_lut_adj_203 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), .Z(clk_samplediv_5__N_325[1])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_203.init = 16'h9999;
    FD1P3IX r_MB128_Addr_i0_i8 (.D(r_MB128_Addr[9]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i8.GSR = "ENABLED";
    LUT4 wr_buf_3__I_0_3_lut (.A(wr_buf[3]), .B(ram_data[3]), .C(trigger_write), 
         .Z(wr_buf_3__N_284)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam wr_buf_3__I_0_3_lut.init = 16'hcaca;
    PFUMX mux_905_i1 (.BLUT(wr_buf_6__N_252), .ALUT(n8840), .C0(n10476), 
          .Z(n1547[0]));
    LUT4 mux_712_i5_4_lut (.A(n842[4]), .B(r_MB128_Addr[5]), .C(n10413), 
         .D(n1753), .Z(n1262[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i5_4_lut.init = 16'hcac0;
    LUT4 o_Active_N_607_bdd_4_lut_9361 (.A(n10483), .B(o_Active_N_604), 
         .C(r_State[1]), .D(r_State[0]), .Z(n10197)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam o_Active_N_607_bdd_4_lut_9361.init = 16'h0007;
    LUT4 i1_4_lut_adj_204 (.A(n10483), .B(n10475), .C(n1213), .D(r_State[0]), 
         .Z(n9597)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_204.init = 16'hc088;
    LUT4 i5989_2_lut (.A(n842[4]), .B(n1242), .Z(n1243[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5989_2_lut.init = 16'h8888;
    LUT4 i9161_3_lut_4_lut (.A(clk_sample), .B(n10483), .C(n25_adj_770), 
         .D(reset_n_c), .Z(clk_enable_58)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i9161_3_lut_4_lut.init = 16'h08ff;
    LUT4 mux_712_i6_4_lut (.A(n842[5]), .B(r_MB128_Addr[6]), .C(n10413), 
         .D(n1753), .Z(n1262[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i6_4_lut.init = 16'hcac0;
    LUT4 mux_137_i2_4_lut (.A(n518[1]), .B(cmd_buf[0]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i2_4_lut.init = 16'hc0ca;
    LUT4 i9179_4_lut (.A(n8864), .B(reset_n_c), .C(n10452), .D(n9558), 
         .Z(clk_enable_153)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;
    defparam i9179_4_lut.init = 16'h1151;
    LUT4 i9134_3_lut_4_lut (.A(clk_sample), .B(n10483), .C(n9841), .D(reset_n_c), 
         .Z(clk_enable_143)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i9134_3_lut_4_lut.init = 16'h80ff;
    LUT4 i2_4_lut_adj_205 (.A(n3242), .B(n1167), .C(reset_n_c), .D(n10452), 
         .Z(n8864)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i2_4_lut_adj_205.init = 16'h2000;
    LUT4 i9166_3_lut_rep_118_4_lut (.A(clk_sample), .B(n10483), .C(n9554), 
         .D(reset_n_c), .Z(clk_enable_63)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i9166_3_lut_rep_118_4_lut.init = 16'h08ff;
    LUT4 i1_4_lut_adj_206 (.A(r_State[1]), .B(n12_adj_782), .C(n10408), 
         .D(n10418), .Z(n9558)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i1_4_lut_adj_206.init = 16'h8808;
    LUT4 i5990_2_lut (.A(n842[5]), .B(n1242), .Z(n1243[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5990_2_lut.init = 16'h8888;
    LUT4 mux_647_i17_3_lut (.A(i_Data_c), .B(n1[16]), .C(n1145), .Z(n1146[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i17_3_lut.init = 16'hcaca;
    LUT4 i15_4_lut (.A(n17_adj_797), .B(n30), .C(n26_adj_798), .D(n18_adj_799), 
         .Z(n3709)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_207 (.A(r_MB128_Bytes[7]), .B(r_MB128_Bytes[9]), .Z(n17_adj_797)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i1_2_lut_adj_207.init = 16'heeee;
    L6MUX21 mux_528_Mux_1_i15 (.D0(n6_adj_792), .D1(n7), .SD(n10474), 
            .Z(r_State_3__N_399[1])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;
    LUT4 i14_4_lut (.A(r_MB128_Bytes[14]), .B(n28), .C(n22), .D(r_MB128_Bytes[2]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i14_4_lut.init = 16'hfffe;
    PFUMX i9362 (.BLUT(n10326), .ALUT(n10325), .C0(n10483), .Z(n10327));
    LUT4 i1_3_lut_4_lut_adj_208 (.A(clk_sample), .B(n10483), .C(n64), 
         .D(reset_n_c), .Z(clk_enable_14)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_3_lut_4_lut_adj_208.init = 16'h80ff;
    LUT4 i1_3_lut_4_lut_adj_209 (.A(clk_sample), .B(n10483), .C(n17_adj_777), 
         .D(reset_n_c), .Z(clk_enable_147)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_3_lut_4_lut_adj_209.init = 16'h80ff;
    LUT4 i2_3_lut (.A(n1213), .B(clk_sample), .C(n3811), .Z(n1145)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i10_4_lut (.A(r_MB128_Bytes[5]), .B(r_MB128_Bytes[1]), .C(r_MB128_Bytes[13]), 
         .D(r_MB128_Bytes[3]), .Z(n26_adj_798)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_3_lut_4_lut_adj_210 (.A(clk_sample), .B(n10483), .C(n6796), 
         .D(n10486), .Z(clk_enable_40)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_2_lut_3_lut_4_lut_adj_210.init = 16'h0800;
    LUT4 i1_2_lut_adj_211 (.A(clk_sample), .B(n9075), .Z(n1167)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_211.init = 16'h8888;
    LUT4 mux_647_i16_3_lut (.A(r_MB128_Bytes[16]), .B(n1[15]), .C(n1145), 
         .Z(n1146[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i16_3_lut.init = 16'hcaca;
    FD1P3IX r_MB128_Addr_i0_i7 (.D(r_MB128_Addr[8]), .SP(clk_enable_163), 
            .CD(n4523), .CK(clk), .Q(r_MB128_Addr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam r_MB128_Addr_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_212 (.A(clk_sample), .B(n10483), .C(n10479), 
         .D(r_State[3]), .Z(n9626)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_212.init = 16'h0008;
    LUT4 i2_2_lut_3_lut_4_lut_adj_213 (.A(clk_sample), .B(n10483), .C(r_State[3]), 
         .D(n10486), .Z(n13_adj_789)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_2_lut_3_lut_4_lut_adj_213.init = 16'hf7ff;
    LUT4 i1_2_lut_adj_214 (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n3489)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_214.init = 16'h9999;
    LUT4 i501_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10482), .C(i_Data_c), 
         .D(ram_data_7__N_447[4]), .Z(n2026)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i501_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_528_Mux_2_i15 (.BLUT(n6), .ALUT(n7_adj_784), .C0(n10474), 
          .Z(r_State_3__N_399[2])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;
    LUT4 r_Bit_Count_5__I_0_784_i11_2_lut_rep_142_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), 
         .B(n10482), .C(n10459), .D(r_Bit_Count[3]), .Z(n10416)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam r_Bit_Count_5__I_0_784_i11_2_lut_rep_142_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i9213_2_lut_rep_111_3_lut_4_lut_4_lut_4_lut (.A(n10483), .B(n10436), 
         .C(n10479), .D(n10453), .Z(n10385)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D))))) */ ;
    defparam i9213_2_lut_rep_111_3_lut_4_lut_4_lut_4_lut.init = 16'h5d5f;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_215 (.A(n10483), .B(r_State[2]), 
         .C(n10416), .D(n10479), .Z(n12)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_215.init = 16'h44c4;
    LUT4 n3230_bdd_3_lut_4_lut_4_lut (.A(n10483), .B(clk_sample), .C(r_State[3]), 
         .D(n10399), .Z(n10324)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C)))) */ ;
    defparam n3230_bdd_3_lut_4_lut_4_lut.init = 16'h40c0;
    LUT4 i2248_2_lut_3_lut_4_lut (.A(r_State[2]), .B(n10479), .C(n10483), 
         .D(clk_sample), .Z(n2983)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2248_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i2_3_lut_rep_104_4_lut_4_lut (.A(r_State[0]), .B(r_State[1]), .C(n10391), 
         .D(n10483), .Z(n10378)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i2_3_lut_rep_104_4_lut_4_lut.init = 16'h4044;
    LUT4 mux_180_i4_4_lut (.A(trigger_wren), .B(cmd_len[3]), .C(n10406), 
         .D(n10441), .Z(cmd_len_5__N_370[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(433[10] 438[10])
    defparam mux_180_i4_4_lut.init = 16'hca3a;
    LUT4 mux_712_i7_4_lut (.A(n842[6]), .B(r_MB128_Addr[7]), .C(n10413), 
         .D(n1753), .Z(n1262[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i7_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut_4_lut_4_lut_adj_216 (.A(r_State[0]), .B(n1701[1]), .C(n10414), 
         .D(n10415), .Z(n9660)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_3_lut_4_lut_4_lut_adj_216.init = 16'h5400;
    LUT4 i5991_2_lut (.A(n842[6]), .B(n1242), .Z(n1243[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5991_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_217 (.A(r_State[0]), .B(n10452), 
         .C(r_State[2]), .D(r_State[1]), .Z(n8)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_217.init = 16'h0c04;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_218 (.A(r_State[0]), .B(n10448), 
         .C(n10426), .D(n10483), .Z(n5727)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_218.init = 16'h4044;
    LUT4 i1_4_lut_4_lut_adj_219 (.A(r_State[0]), .B(n10393), .C(n9607), 
         .D(n51), .Z(n22_adj_800)) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_4_lut_4_lut_adj_219.init = 16'hff54;
    LUT4 wr_buf_7__I_0_3_lut (.A(wr_buf[7]), .B(ram_data[7]), .C(trigger_write), 
         .Z(wr_buf_7__N_236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam wr_buf_7__I_0_3_lut.init = 16'hcaca;
    LUT4 i9142_4_lut (.A(reset_n_c), .B(n9519), .C(n10329), .D(n4_adj_801), 
         .Z(clk_enable_99)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i9142_4_lut.init = 16'h5557;
    LUT4 i2_2_lut (.A(r_MB128_Bytes[6]), .B(r_MB128_Bytes[11]), .Z(n18_adj_799)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_4_lut_adj_220 (.A(r_State[0]), .B(o_Active_N_604), 
         .C(n10483), .D(r_State[1]), .Z(n7_adj_778)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_2_lut_4_lut_4_lut_adj_220.init = 16'h5040;
    PFUMX i60 (.BLUT(n36), .ALUT(n31), .C0(r_State[0]), .Z(n39));
    LUT4 i1_4_lut_adj_221 (.A(n10484), .B(clk_sample), .C(n10378), .D(n9839), 
         .Z(n4_adj_801)) /* synthesis lut_function=(!(A (B (D))+!A !((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_221.init = 16'h73ff;
    LUT4 i12_4_lut (.A(r_MB128_Bytes[10]), .B(r_MB128_Bytes[12]), .C(r_MB128_Bytes[15]), 
         .D(r_MB128_Bytes[16]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(r_MB128_Bytes[8]), .B(r_MB128_Bytes[4]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_222 (.A(r_Bit_Count[3]), .B(n9533), .C(n10443), 
         .D(n10459), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(796[11:44])
    defparam i3_4_lut_adj_222.init = 16'hfffe;
    LUT4 i2_4_lut_adj_223 (.A(r_Bit_Count[0]), .B(n8980), .C(n4_adj_802), 
         .D(r_MB128_Bits[0]), .Z(n9533)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(796[11:44])
    defparam i2_4_lut_adj_223.init = 16'hfedf;
    LUT4 i9028_4_lut (.A(n10405), .B(n9776), .C(n9811), .D(r_State[2]), 
         .Z(n9839)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i9028_4_lut.init = 16'hfcee;
    LUT4 mux_180_i6_4_lut (.A(trigger_wren), .B(cmd_len[5]), .C(n10406), 
         .D(n10_adj_786), .Z(cmd_len_5__N_370[5])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(433[10] 438[10])
    defparam mux_180_i6_4_lut.init = 16'hc535;
    LUT4 i2_3_lut_4_lut_4_lut (.A(r_State[0]), .B(n10481), .C(n10383), 
         .D(n10473), .Z(n9638)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i8968_2_lut (.A(r_State[0]), .B(r_State[3]), .Z(n9776)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8968_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_224 (.A(n10476), .B(n87), .C(sp_active_N_733), .D(n10461), 
         .Z(clk_enable_100)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_224.init = 16'h5150;
    LUT4 i1_4_lut_4_lut_adj_225 (.A(r_State[0]), .B(n10435), .C(n6915), 
         .D(r_State[2]), .Z(n33_adj_803)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i1_4_lut_4_lut_adj_225.init = 16'h005d;
    LUT4 mux_712_i8_4_lut (.A(n842[7]), .B(r_MB128_Addr[8]), .C(n10413), 
         .D(n1753), .Z(n1262[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i8_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_226 (.A(r_Bit_Count[1]), .B(r_MB128_Bits[1]), .Z(n4_adj_802)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i1_2_lut_adj_226.init = 16'h6666;
    LUT4 i9244_3_lut_4_lut (.A(n10472), .B(n10420), .C(trigger_wren), 
         .D(n20_adj_796), .Z(cmd_buf_31__N_332[0])) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(429[9:35])
    defparam i9244_3_lut_4_lut.init = 16'h000b;
    LUT4 i5992_2_lut (.A(n842[7]), .B(n1242), .Z(n1243[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5992_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_227 (.A(n10473), .B(n10415), .C(trigger_read_N_650), 
         .D(n10414), .Z(n79[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[7:47])
    defparam i1_4_lut_adj_227.init = 16'hc048;
    LUT4 i3_3_lut_4_lut_4_lut (.A(r_State[0]), .B(n10446), .C(n10483), 
         .D(n10423), .Z(n9611)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i3_3_lut_4_lut_4_lut.init = 16'h4404;
    LUT4 i1_4_lut_4_lut_adj_228 (.A(r_State[1]), .B(reset_n_c), .C(r_State[0]), 
         .D(n10483), .Z(n3)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(171[4] 192[7])
    defparam i1_4_lut_4_lut_adj_228.init = 16'h5a08;
    LUT4 i4042_3_lut_4_lut (.A(r_State[1]), .B(reset_n_c), .C(r_State_3__N_399[1]), 
         .D(n4270), .Z(r_State_3__N_7[1])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(171[4] 192[7])
    defparam i4042_3_lut_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_rep_181 (.A(r_State[3]), .B(clk_sample), .Z(n10455)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_181.init = 16'h8888;
    LUT4 i2_4_lut_4_lut_adj_229 (.A(r_State[3]), .B(clk_sample), .C(n10483), 
         .D(n2790), .Z(r_Stop_Active_N_613)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_4_lut_adj_229.init = 16'h8000;
    LUT4 i1_2_lut_rep_182 (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .Z(n10456)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i1_2_lut_rep_182.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_230 (.A(sp_phase[0]), .B(sp_hold_n_N_726), .Z(clk_enable_101)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_adj_230.init = 16'h8888;
    PFUMX i62 (.BLUT(n34), .ALUT(n9552), .C0(r_State[3]), .Z(r_State_3__N_7[0]));
    LUT4 i3628_2_lut (.A(sp_phase[0]), .B(sp_phase[1]), .Z(n2471)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3628_2_lut.init = 16'h2222;
    LUT4 i9182_2_lut_rep_156_3_lut (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[1]), .Z(n10430)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i9182_2_lut_rep_156_3_lut.init = 16'h4040;
    LUT4 mux_137_i27_3_lut_4_lut (.A(n10472), .B(n10420), .C(cmd_buf[25]), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[26])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(429[9:35])
    defparam mux_137_i27_3_lut_4_lut.init = 16'hfb40;
    LUT4 i8982_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[4]), .D(r_Bit_Count[1]), .Z(n9790)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i8982_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i9125_2_lut_rep_183 (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .C(r_Bit_Count[1]), 
         .Z(n10457)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i9125_2_lut_rep_183.init = 16'h0404;
    LUT4 i1_2_lut_4_lut_adj_231 (.A(r_State[3]), .B(n10479), .C(n10409), 
         .D(r_State[2]), .Z(n26_adj_781)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_231.init = 16'h0100;
    LUT4 i1_2_lut_rep_134 (.A(r_MB128_Bytes[0]), .B(n3709), .Z(n10408)) /* synthesis lut_function=((B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i1_2_lut_rep_134.init = 16'hdddd;
    LUT4 i4_4_lut_adj_232 (.A(n10432), .B(n10455), .C(n10487), .D(n6_adj_788), 
         .Z(n1449)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4_4_lut_adj_232.init = 16'h0800;
    LUT4 i6134_4_lut_4_lut (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .C(r_Bit_Count[1]), 
         .D(n10436), .Z(n6915)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i6134_4_lut_4_lut.init = 16'hffea;
    LUT4 i1_4_lut_adj_233 (.A(reset_n_c), .B(n10452), .C(n33_adj_803), 
         .D(n47), .Z(clk_enable_112)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_233.init = 16'hddd5;
    LUT4 i1_2_lut_rep_184 (.A(r_Bit_Count[0]), .B(r_Bit_Count[1]), .Z(n10458)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_184.init = 16'hbbbb;
    LUT4 i2_3_lut_rep_117_4_lut (.A(r_MB128_Bytes[0]), .B(n3709), .C(n10443), 
         .D(n9700), .Z(n10391)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i2_3_lut_rep_117_4_lut.init = 16'hffdf;
    LUT4 i9175_2_lut_rep_163_3_lut (.A(r_Bit_Count[0]), .B(r_Bit_Count[1]), 
         .C(r_Bit_Count[2]), .Z(n10437)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i9175_2_lut_rep_163_3_lut.init = 16'h0404;
    LUT4 i1_4_lut_adj_234 (.A(n17_adj_793), .B(n10389), .C(n10438), .D(rw_len[3]), 
         .Z(rw_len_4__N_381[3])) /* synthesis lut_function=(A+(B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(125[9:21])
    defparam i1_4_lut_adj_234.init = 16'heaae;
    LUT4 i2_3_lut_4_lut_adj_235 (.A(n10426), .B(r_State[0]), .C(n17), 
         .D(n10429), .Z(n9556)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i2_3_lut_4_lut_adj_235.init = 16'hd000;
    LUT4 i1_2_lut_rep_143_3_lut_3_lut_3_lut (.A(r_State[1]), .B(r_State[2]), 
         .C(r_State[0]), .Z(n10417)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_143_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i2_3_lut_adj_236 (.A(n1486), .B(n2977), .C(reset_n_c), .Z(clk_enable_113)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut_adj_236.init = 16'hefef;
    LUT4 mux_712_i9_4_lut (.A(n842[8]), .B(r_MB128_Addr[9]), .C(n10413), 
         .D(n1753), .Z(n1262[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i9_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_2_lut_adj_237 (.A(r_State[1]), .B(n15_adj_763), .Z(n13_adj_769)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_2_lut_adj_237.init = 16'h4444;
    LUT4 i8986_2_lut_3_lut_4_lut (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .C(r_State[2]), .D(r_Bit_Count[3]), .Z(n9794)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam i8986_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_238 (.A(n10387), .B(n4_adj_774), .C(n13), .D(r_State[0]), 
         .Z(n8859)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i2_4_lut_adj_238.init = 16'h0c44;
    LUT4 r_Bit_Count_5__I_0_802_i10_2_lut_rep_162_3_lut (.A(r_Bit_Count[4]), 
         .B(r_Bit_Count[5]), .C(r_Bit_Count[3]), .Z(n10436)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam r_Bit_Count_5__I_0_802_i10_2_lut_rep_162_3_lut.init = 16'hfefe;
    LUT4 mux_846_i8_4_lut (.A(r_FetchWrite_Byte[7]), .B(i_Data_c), .C(n2977), 
         .D(n1486), .Z(ram_data_7__N_115[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_846_i8_4_lut.init = 16'hcac0;
    LUT4 mux_647_i15_3_lut (.A(r_MB128_Bytes[15]), .B(n1[14]), .C(n1145), 
         .Z(n1146[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i15_3_lut.init = 16'hcaca;
    PFUMX i52 (.BLUT(n22_adj_800), .ALUT(n25), .C0(r_State[3]), .Z(n49));
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(r_State[1]), .B(r_State[3]), .C(r_Read_Byte[0]), 
         .D(r_State[0]), .Z(n9615)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 mux_137_i3_4_lut (.A(n518[2]), .B(cmd_buf[1]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i3_4_lut.init = 16'hc0ca;
    LUT4 mux_647_i14_3_lut (.A(r_MB128_Bytes[14]), .B(n1[13]), .C(n1145), 
         .Z(n1146[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i14_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_161_2_lut (.A(r_State[1]), .B(r_State[3]), .Z(n10435)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_161_2_lut.init = 16'h4444;
    LUT4 mux_647_i13_3_lut (.A(r_MB128_Bytes[13]), .B(n1[12]), .C(n1145), 
         .Z(n1146[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i13_3_lut.init = 16'hcaca;
    LUT4 mux_137_i4_4_lut (.A(n518[3]), .B(cmd_buf[2]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i4_4_lut.init = 16'hc0ca;
    LUT4 i3_3_lut_rep_126_4_lut (.A(n10423), .B(n10483), .C(n10479), .D(r_State[3]), 
         .Z(n10400)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(520[4] 865[11])
    defparam i3_3_lut_rep_126_4_lut.init = 16'hfff4;
    LUT4 r_Bit_Count_5__I_0_802_i9_2_lut_rep_185 (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .Z(n10459)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(735[6:11])
    defparam r_Bit_Count_5__I_0_802_i9_2_lut_rep_185.init = 16'heeee;
    LUT4 mux_874_i2_4_lut (.A(rd_buf[1]), .B(r_Read_Byte[2]), .C(n1503), 
         .D(n10380), .Z(n1504[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_874_i2_4_lut.init = 16'hcac0;
    LUT4 mux_874_i3_4_lut (.A(rd_buf[2]), .B(r_Read_Byte[3]), .C(n1503), 
         .D(n10380), .Z(n1504[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_874_i3_4_lut.init = 16'hcac0;
    PFUMX i53 (.BLUT(n26), .ALUT(n9594), .C0(n10485), .Z(n49_adj_791));
    LUT4 i1_2_lut_rep_166_3_lut (.A(r_Bit_Count[0]), .B(r_Bit_Count[1]), 
         .C(r_Bit_Count[2]), .Z(n10440)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_166_3_lut.init = 16'hbfbf;
    LUT4 mux_137_i5_4_lut (.A(n518[4]), .B(cmd_buf[3]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i5_4_lut.init = 16'hc0ca;
    LUT4 mux_874_i4_4_lut (.A(rd_buf[3]), .B(r_Read_Byte[4]), .C(n1503), 
         .D(n10380), .Z(n1504[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_874_i4_4_lut.init = 16'hcac0;
    PFUMX mux_730_i17 (.BLUT(n1243[16]), .ALUT(n1262[16]), .C0(n1296), 
          .Z(n1297[16]));
    LUT4 mux_874_i5_4_lut (.A(rd_buf[4]), .B(r_Read_Byte[5]), .C(n1503), 
         .D(n10380), .Z(n1504[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_874_i5_4_lut.init = 16'hcac0;
    LUT4 mux_874_i6_4_lut (.A(rd_buf[5]), .B(r_Read_Byte[6]), .C(n1503), 
         .D(n10380), .Z(n1504[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_874_i6_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_122_4_lut (.A(n10421), .B(rd_buf_7__N_178), .C(sp_hold_n_N_726), 
         .D(sp_phase[1]), .Z(n10396)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(433[14:57])
    defparam i1_2_lut_rep_122_4_lut.init = 16'hffdf;
    PFUMX i32 (.BLUT(n101), .ALUT(n97), .C0(n10469), .Z(cmd_buf_31__N_332[24]));
    LUT4 mux_874_i7_4_lut (.A(rd_buf[6]), .B(r_Read_Byte[7]), .C(n1503), 
         .D(n10380), .Z(n1504[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_874_i7_4_lut.init = 16'hcac0;
    LUT4 mux_647_i12_3_lut (.A(r_MB128_Bytes[12]), .B(n1[11]), .C(n1145), 
         .Z(n1146[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i12_3_lut.init = 16'hcaca;
    LUT4 mux_137_i6_4_lut (.A(n518[5]), .B(cmd_buf[4]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i6_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_4_lut_adj_239 (.A(n10421), .B(rd_buf_7__N_178), .C(sp_hold_n_N_726), 
         .D(sp_phase[1]), .Z(n9639)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(433[14:57])
    defparam i1_2_lut_4_lut_adj_239.init = 16'h0020;
    LUT4 mux_647_i11_3_lut (.A(r_MB128_Bytes[11]), .B(n1[10]), .C(n1145), 
         .Z(n1146[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i11_3_lut.init = 16'hcaca;
    LUT4 mux_137_i7_4_lut (.A(n518[6]), .B(cmd_buf[5]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i7_4_lut.init = 16'hc0ca;
    LUT4 i1268_1_lut (.A(rw_len[0]), .Z(n792[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(437[21:34])
    defparam i1268_1_lut.init = 16'h5555;
    LUT4 mux_647_i10_3_lut (.A(r_MB128_Bytes[10]), .B(n1[9]), .C(n1145), 
         .Z(n1146[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i10_3_lut.init = 16'hcaca;
    LUT4 i737_1_lut (.A(cmd_len[0]), .Z(n1320)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i737_1_lut.init = 16'h5555;
    LUT4 i32_2_lut_2_lut (.A(r_State[1]), .B(r_State[2]), .Z(n19)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i32_2_lut_2_lut.init = 16'h9999;
    LUT4 i4_4_lut_adj_240 (.A(n7_adj_804), .B(n10425), .C(n51_adj_776), 
         .D(cmd_len[0]), .Z(n1242)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut_adj_240.init = 16'h0080;
    LUT4 i2_4_lut_adj_241 (.A(cmd_len[2]), .B(n10476), .C(n9837), .D(cmd_len[4]), 
         .Z(n7_adj_804)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2_4_lut_adj_241.init = 16'h0001;
    PFUMX mux_846_i2 (.BLUT(n1450[1]), .ALUT(n2029), .C0(n1459), .Z(ram_data_7__N_115[1]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_242 (.A(r_State[3]), .B(n10418), .C(n10437), 
         .D(i_Data_c), .Z(n9582)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_242.init = 16'h8000;
    LUT4 i9026_4_lut (.A(cmd_len[3]), .B(n9742), .C(n13_adj_805), .D(n10452), 
         .Z(n9837)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i9026_4_lut.init = 16'hfeee;
    LUT4 i1_4_lut_adj_243 (.A(r_Bit_Count[5]), .B(n3566), .C(n9790), .D(r_Bit_Count[3]), 
         .Z(n13_adj_805)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(23[9:19])
    defparam i1_4_lut_adj_243.init = 16'hcdcc;
    LUT4 i1_2_lut_3_lut_3_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .Z(n3461)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hfdfd;
    LUT4 mux_647_i9_3_lut (.A(r_MB128_Bytes[9]), .B(n1[8]), .C(n1145), 
         .Z(n1146[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i9_3_lut.init = 16'hcaca;
    LUT4 i5563_3_lut (.A(wr_buf[2]), .B(ram_data[2]), .C(trigger_write), 
         .Z(wr_buf_2__N_295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(123[9:22])
    defparam i5563_3_lut.init = 16'hcaca;
    LUT4 n11_bdd_2_lut_9284_4_lut (.A(n10451), .B(n10479), .C(n1373), 
         .D(n1296), .Z(n10189)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam n11_bdd_2_lut_9284_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_rep_140 (.A(i_Data_c), .B(n3709), .Z(n10414)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i1_2_lut_rep_140.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_244 (.A(r_State[3]), .B(n10418), .C(n10453), 
         .D(i_Data_c), .Z(n9583)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_244.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_245 (.A(r_State[1]), .B(n10484), .C(n9691), 
         .D(n9750), .Z(n9519)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_4_lut_4_lut_adj_245.init = 16'hf1f0;
    LUT4 mux_431_i3_3_lut_4_lut (.A(i_Data_c), .B(n3709), .C(trigger_read_N_650), 
         .D(n10473), .Z(n1661[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam mux_431_i3_3_lut_4_lut.init = 16'he0e1;
    LUT4 mux_647_i1_3_lut (.A(r_MB128_Bytes[1]), .B(n1[0]), .C(n1145), 
         .Z(n1146[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i1_3_lut.init = 16'hcaca;
    LUT4 mux_647_i8_3_lut (.A(r_MB128_Bytes[8]), .B(n1[7]), .C(n1145), 
         .Z(n1146[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i8_3_lut.init = 16'hcaca;
    CCU2D sub_486_add_2_9 (.A0(r_MB128_Bytes[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8794), .COUT(n8795), .S0(n1[7]), .S1(n1[8]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_9.INIT0 = 16'h5555;
    defparam sub_486_add_2_9.INIT1 = 16'h5555;
    defparam sub_486_add_2_9.INJECT1_0 = "NO";
    defparam sub_486_add_2_9.INJECT1_1 = "NO";
    PFUMX mux_846_i7 (.BLUT(n1450[6]), .ALUT(n2024), .C0(n1459), .Z(ram_data_7__N_115[6]));
    LUT4 i1_2_lut_rep_160_2_lut (.A(r_State[1]), .B(r_State[0]), .Z(n10434)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_160_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_246 (.A(i_Data_c), .B(n3709), .C(trigger_read_N_650), 
         .D(n10415), .Z(n21)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(652[12:53])
    defparam i1_3_lut_4_lut_adj_246.init = 16'h1f00;
    LUT4 mux_137_i8_4_lut (.A(n518[7]), .B(cmd_buf[6]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i8_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_186 (.A(r_State[1]), .B(r_State[2]), .Z(n10460)) /* synthesis lut_function=((B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_186.init = 16'hdddd;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(r_State[1]), .B(r_State[2]), .C(n10384), 
         .D(r_State[0]), .Z(n9665)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 mux_647_i7_3_lut (.A(r_MB128_Bytes[7]), .B(n1[6]), .C(n1145), 
         .Z(n1146[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i7_3_lut.init = 16'hcaca;
    LUT4 mux_647_i6_3_lut (.A(r_MB128_Bytes[6]), .B(n1[5]), .C(n1145), 
         .Z(n1146[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i6_3_lut.init = 16'hcaca;
    PFUMX mux_846_i6 (.BLUT(n1450[5]), .ALUT(n2025), .C0(n1459), .Z(ram_data_7__N_115[5]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_247 (.A(r_State[3]), .B(n10418), .C(n10430), 
         .D(i_Data_c), .Z(n9587)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_3_lut_4_lut_adj_247.init = 16'h8000;
    PFUMX mux_730_i16 (.BLUT(n1243[15]), .ALUT(n1262[15]), .C0(n1296), 
          .Z(n1297[15]));
    LUT4 i1_2_lut_rep_187 (.A(sp_hold_n_N_726), .B(rw_len[0]), .Z(n10461)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_187.init = 16'h2222;
    LUT4 i1_2_lut_rep_137_3_lut_4_lut (.A(sp_hold_n_N_726), .B(rw_len[0]), 
         .C(rd_buf_7__N_178), .D(n10444), .Z(n10411)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_2_lut_rep_137_3_lut_4_lut.init = 16'h0002;
    CCU2D sub_486_add_2_7 (.A0(r_MB128_Bytes[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8793), .COUT(n8794), .S0(n1[5]), .S1(n1[6]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_7.INIT0 = 16'h5555;
    defparam sub_486_add_2_7.INIT1 = 16'h5555;
    defparam sub_486_add_2_7.INJECT1_0 = "NO";
    defparam sub_486_add_2_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_248 (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .C(r_Bit_Count[1]), 
         .Z(n3742)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(836[6:12])
    defparam i2_3_lut_adj_248.init = 16'hf7f7;
    LUT4 i64_3_lut_4_lut_4_lut (.A(n10483), .B(n10426), .C(r_State[0]), 
         .D(n10391), .Z(n69)) /* synthesis lut_function=((B ((D)+!C)+!B (C (D)))+!A) */ ;
    defparam i64_3_lut_4_lut_4_lut.init = 16'hfd5d;
    LUT4 mux_647_i5_3_lut (.A(r_MB128_Bytes[5]), .B(n1[4]), .C(n1145), 
         .Z(n1146[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i5_3_lut.init = 16'hcaca;
    LUT4 mux_647_i4_3_lut (.A(r_MB128_Bytes[4]), .B(n1[3]), .C(n1145), 
         .Z(n1146[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i4_3_lut.init = 16'hcaca;
    LUT4 sp_phase_1__I_0_727_i3_2_lut_rep_188 (.A(sp_phase[0]), .B(sp_phase[1]), 
         .Z(n10462)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(426[13:30])
    defparam sp_phase_1__I_0_727_i3_2_lut_rep_188.init = 16'hbbbb;
    CCU2D sub_486_add_2_5 (.A0(r_MB128_Bytes[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8792), .COUT(n8793), .S0(n1[3]), .S1(n1[4]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_5.INIT0 = 16'h5555;
    defparam sub_486_add_2_5.INIT1 = 16'h5555;
    defparam sub_486_add_2_5.INJECT1_0 = "NO";
    defparam sub_486_add_2_5.INJECT1_1 = "NO";
    LUT4 i29_3_lut (.A(n3687), .B(n2790), .C(r_State[3]), .Z(n9841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_132_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(rd_buf_7__N_178), .D(sp_hold_n_N_726), .Z(n10406)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(426[13:30])
    defparam i1_2_lut_rep_132_3_lut_4_lut.init = 16'h4000;
    CCU2D sub_486_add_2_3 (.A0(r_MB128_Bytes[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8791), .COUT(n8792), .S0(n1[1]), .S1(n1[2]));   // c:/devel/diamond/pce_save128/firmware/save128.v(780[26:46])
    defparam sub_486_add_2_3.INIT0 = 16'h5555;
    defparam sub_486_add_2_3.INIT1 = 16'h5555;
    defparam sub_486_add_2_3.INJECT1_0 = "NO";
    defparam sub_486_add_2_3.INJECT1_1 = "NO";
    LUT4 mux_712_i10_4_lut (.A(n842[9]), .B(r_MB128_Addr[10]), .C(n10413), 
         .D(n1753), .Z(n1262[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i10_4_lut.init = 16'hcac0;
    LUT4 i1315_2_lut_rep_189 (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n10463)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(430[17:31])
    defparam i1315_2_lut_rep_189.init = 16'heeee;
    CCU2D add_836_3 (.A0(r_MB128_Addr_Curr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8773), .COUT(n8774), .S0(n842[1]), .S1(n842[2]));   // c:/devel/diamond/pce_save128/firmware/save128.v(466[28:49])
    defparam add_836_3.INIT0 = 16'h5aaa;
    defparam add_836_3.INIT1 = 16'h5aaa;
    defparam add_836_3.INJECT1_0 = "NO";
    defparam add_836_3.INJECT1_1 = "NO";
    LUT4 mux_137_i9_4_lut (.A(n518[8]), .B(cmd_buf[7]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i9_4_lut.init = 16'hc0ca;
    LUT4 i1323_2_lut_rep_167_3_lut (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n10441)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(430[17:31])
    defparam i1323_2_lut_rep_167_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_249 (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n3477)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(430[17:31])
    defparam i1_2_lut_3_lut_adj_249.init = 16'he1e1;
    PFUMX mux_846_i1 (.BLUT(n1450[0]), .ALUT(n2030), .C0(n1459), .Z(ram_data_7__N_115[0]));
    LUT4 i1229_2_lut_rep_190 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .Z(n10464)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i1229_2_lut_rep_190.init = 16'h8888;
    LUT4 i2_2_lut_rep_169_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10443)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i2_2_lut_rep_169_3_lut.init = 16'h8080;
    LUT4 mux_647_i3_3_lut (.A(r_MB128_Bytes[3]), .B(n1[2]), .C(n1145), 
         .Z(n1146[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i3_3_lut.init = 16'hcaca;
    PFUMX mux_730_i15 (.BLUT(n1243[14]), .ALUT(n1262[14]), .C0(n1296), 
          .Z(n1297[14]));
    LUT4 i1241_2_lut_3_lut_4_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[3]), .D(r_Bit_Count[2]), .Z(trigger_write_N_659[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i1241_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 mux_647_i2_3_lut (.A(r_MB128_Bytes[2]), .B(n1[1]), .C(n1145), 
         .Z(n1146[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_647_i2_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_250 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_MB128_Bits[2]), .D(r_Bit_Count[2]), .Z(n8980)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i2_3_lut_4_lut_adj_250.init = 16'h8778;
    LUT4 i1234_2_lut_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .C(r_Bit_Count[2]), 
         .Z(trigger_write_N_659[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(808[24:42])
    defparam i1234_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_3_lut_4_lut_adj_251 (.A(r_State[0]), .B(n10423), .C(r_State[1]), 
         .D(n10427), .Z(n9634)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_251.init = 16'h0100;
    LUT4 i1_2_lut_rep_191 (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), .Z(n10465)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_191.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_252 (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[4]), .Z(n9549)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_252.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_253 (.A(r_State[0]), .B(n10423), .C(trigger_read_N_650), 
         .Z(n3672)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_253.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_254 (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[4]), .Z(n9700)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_254.init = 16'hfefe;
    LUT4 i1_4_lut_adj_255 (.A(reset_n_c), .B(clk_sample), .C(o_Active_N_601), 
         .D(n14_adj_806), .Z(clk_enable_150)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_255.init = 16'hddd5;
    LUT4 i1_4_lut_adj_256 (.A(n10483), .B(n9756), .C(n2790), .D(r_State[3]), 
         .Z(n14_adj_806)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_256.init = 16'ha022;
    PFUMX mux_730_i14 (.BLUT(n1243[13]), .ALUT(n1262[13]), .C0(n1296), 
          .Z(n1297[13]));
    PFUMX mux_730_i13 (.BLUT(n1243[12]), .ALUT(n1262[12]), .C0(n1296), 
          .Z(n1297[12]));
    LUT4 i1363_2_lut_rep_192 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .Z(n10466)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:38])
    defparam i1363_2_lut_rep_192.init = 16'heeee;
    LUT4 i5994_2_lut (.A(n842[9]), .B(n1242), .Z(n1243[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam i5994_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_257 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .C(clk_samplediv[2]), .Z(clk_samplediv_5__N_325[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:38])
    defparam i1_2_lut_3_lut_adj_257.init = 16'he1e1;
    LUT4 i3656_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[3]), 
         .D(n356[3]), .Z(n518[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3656_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_adj_258 (.A(i_Clk_c), .B(r_Stop_Active), .Z(o_Active_N_601)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    defparam i1_2_lut_adj_258.init = 16'h4444;
    LUT4 i1371_2_lut_rep_168_3_lut (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .C(clk_samplediv[2]), .Z(n10442)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:38])
    defparam i1371_2_lut_rep_168_3_lut.init = 16'hfefe;
    LUT4 i9033_4_lut (.A(n10459), .B(r_Bit_Count[2]), .C(n10464), .D(r_Bit_Count[3]), 
         .Z(n9845)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9033_4_lut.init = 16'hfffe;
    LUT4 mux_137_i10_4_lut (.A(n518[9]), .B(cmd_buf[8]), .C(n10407), .D(trigger_wren), 
         .Z(cmd_buf_31__N_332[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i10_4_lut.init = 16'hc0ca;
    PFUMX i51 (.BLUT(n27), .ALUT(n9580), .C0(r_State[3]), .Z(n47));
    LUT4 i1_2_lut_3_lut_4_lut_adj_259 (.A(clk_samplediv[1]), .B(clk_samplediv[0]), 
         .C(clk_samplediv[3]), .D(clk_samplediv[2]), .Z(clk_samplediv_5__N_325[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(209[21:38])
    defparam i1_2_lut_3_lut_4_lut_adj_259.init = 16'hf0e1;
    LUT4 i2_3_lut_4_lut_adj_260 (.A(n10479), .B(n10436), .C(n10428), .D(r_State[2]), 
         .Z(n9580)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_260.init = 16'h0100;
    LUT4 i63_4_lut (.A(n10394), .B(n10384), .C(r_State[1]), .D(n10379), 
         .Z(n36)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(507[2] 869[7])
    defparam i63_4_lut.init = 16'h3a0a;
    LUT4 i9129_4_lut (.A(n3756), .B(reset_n_c), .C(clk_sample), .D(o_Active_N_601), 
         .Z(clk_enable_151)) /* synthesis lut_function=(A ((C (D))+!B)+!A ((C)+!B)) */ ;
    defparam i9129_4_lut.init = 16'hf373;
    LUT4 i2_3_lut_adj_261 (.A(n3756), .B(o_Active_N_604), .C(clk_sample), 
         .Z(o_Active_N_595)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i2_3_lut_adj_261.init = 16'h4040;
    LUT4 i3658_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[4]), 
         .D(n356[4]), .Z(n518[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3658_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i989_1_lut_rep_193 (.A(sp_hold_n_N_726), .Z(clk_enable_121)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i989_1_lut_rep_193.init = 16'h5555;
    LUT4 mux_137_i11_4_lut (.A(n518[10]), .B(cmd_buf[9]), .C(n10407), 
         .D(trigger_wren), .Z(cmd_buf_31__N_332[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(391[11] 396[11])
    defparam mux_137_i11_4_lut.init = 16'hc0ca;
    LUT4 mux_712_i11_4_lut (.A(n842[10]), .B(r_MB128_Addr[11]), .C(n10413), 
         .D(n1753), .Z(n1262[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(517[3] 867[8])
    defparam mux_712_i11_4_lut.init = 16'hcac0;
    PFUMX mux_730_i12 (.BLUT(n1243[11]), .ALUT(n1262[11]), .C0(n1296), 
          .Z(n1297[11]));
    LUT4 i9191_3_lut_4_lut_4_lut (.A(n10430), .B(n8845), .C(n10418), .D(r_State[3]), 
         .Z(clk_enable_12)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i9191_3_lut_4_lut_4_lut.init = 16'h8ccc;
    PFUMX i9397 (.BLUT(n10500), .ALUT(n10501), .C0(r_State[1]), .Z(n1503));
    LUT4 i1_4_lut_4_lut_adj_262 (.A(sp_hold_n_N_726), .B(rw_len[0]), .C(n87), 
         .D(sp_active_N_733), .Z(sp_active_N_732)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 872[5])
    defparam i1_4_lut_4_lut_adj_262.init = 16'hfd00;
    PFUMX mux_730_i11 (.BLUT(n1243[10]), .ALUT(n1262[10]), .C0(n1296), 
          .Z(n1297[10]));
    LUT4 i3663_2_lut_rep_194 (.A(trigger_write), .B(trigger_fetchwrite), 
         .Z(n10468)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3663_2_lut_rep_194.init = 16'hbbbb;
    LUT4 i9193_3_lut_4_lut_4_lut (.A(n10453), .B(n8845), .C(n10418), .D(r_State[3]), 
         .Z(clk_enable_11)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(794[7:28])
    defparam i9193_3_lut_4_lut_4_lut.init = 16'h8ccc;
    PFUMX i9393 (.BLUT(n10494), .ALUT(n10495), .C0(sp_phase[0]), .Z(n10496));
    PFUMX i9391 (.BLUT(n10491), .ALUT(n10492), .C0(r_State[1]), .Z(n10493));
    LUT4 i3654_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[2]), 
         .D(n356[2]), .Z(n518[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(331[4] 347[9])
    defparam i3654_3_lut_4_lut.init = 16'hf4b0;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

