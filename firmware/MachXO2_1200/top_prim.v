// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Sat Apr 17 23:03:11 2021
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
        VCC_net, i_Clk_Prev, i_Clk_Debounce;
    wire [3:0]r_State;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    wire [3:0]r_Pos_Edge;   // c:/devel/diamond/pce_save128/firmware/save128.v(99[14:24])
    wire [5:0]cmd_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(133[14:21])
    wire [4:0]rw_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    
    wire sp_hold_n_N_713, n9031, n10171, n1136, n9588, n9539, n3248, 
        n10294, n10703, n10289, n10284, n9032, n9030, n10, n6, 
        n10243, n9610, n3257, n8, n10237;
    
    VHI i5 (.Z(VCC_net));
    OSCH internal_oscillator_inst (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam internal_oscillator_inst.NOM_FREQ = "44.33";
    MB128 MB128 (.clk(clk), .GND_net(GND_net), .i_Data_c(i_Data_c), .r_State({r_State}), 
          .sp_hold_n_c(sp_hold_n_c), .sp_hold_n_N_713(sp_hold_n_N_713), 
          .\r_Pos_Edge[0] (r_Pos_Edge[0]), .i_Clk_c(i_Clk_c), .i_Clk_Debounce(i_Clk_Debounce), 
          .n10703(n10703), .i_Clk_Prev(i_Clk_Prev), .cmd_len({cmd_len}), 
          .sp_mosi_c(sp_mosi_c), .reset_n_c(reset_n_c), .n9032(n9032), 
          .sp_cs_n_c(sp_cs_n_c), .n3257(n3257), .n10294(n10294), .\rw_len[0] (rw_len[0]), 
          .n10284(n10284), .n9031(n9031), .\rw_len[4] (rw_len[4]), .\rw_len[2] (rw_len[2]), 
          .sp_clk_c(sp_clk_c), .\r_Pos_Edge[2] (r_Pos_Edge[2]), .sp_miso_c(sp_miso_c), 
          .o_WriteLED_c(o_WriteLED_c), .o_ReadLED_c(o_ReadLED_c), .n1136(n1136), 
          .n6(n6), .n10237(n10237), .n10243(n10243), .o_Active_c(o_Active_c), 
          .n8(n8), .n10289(n10289), .n9030(n9030), .n9539(n9539), .n3248(n3248), 
          .n10171(n10171)) /* synthesis syn_module_defined=1 */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(36[7] 59[4])
    OB o_Active_pad (.I(o_Active_c), .O(o_Active));   // c:/devel/diamond/pce_save128/firmware/top.v(2[10:18])
    VLO i1 (.Z(GND_net));
    OB o_Data_pad (.I(r_Pos_Edge[0]), .O(o_Data));   // c:/devel/diamond/pce_save128/firmware/top.v(6[10:16])
    OB o_Ident_pad (.I(r_Pos_Edge[2]), .O(o_Ident));   // c:/devel/diamond/pce_save128/firmware/top.v(7[10:17])
    OB o_WriteLED_pad (.I(o_WriteLED_c), .O(o_WriteLED));   // c:/devel/diamond/pce_save128/firmware/top.v(8[10:20])
    OB o_ReadLED_pad (.I(o_ReadLED_c), .O(o_ReadLED));   // c:/devel/diamond/pce_save128/firmware/top.v(9[10:19])
    OB sp_cs_n_pad (.I(sp_cs_n_c), .O(sp_cs_n));   // c:/devel/diamond/pce_save128/firmware/top.v(11[10:17])
    OB sp_clk_pad (.I(sp_clk_c), .O(sp_clk));   // c:/devel/diamond/pce_save128/firmware/top.v(12[10:16])
    OB sp_mosi_pad (.I(sp_mosi_c), .O(sp_mosi));   // c:/devel/diamond/pce_save128/firmware/top.v(14[10:17])
    OB sp_hold_n_pad (.I(sp_hold_n_c), .O(sp_hold_n));   // c:/devel/diamond/pce_save128/firmware/top.v(15[10:19])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // c:/devel/diamond/pce_save128/firmware/top.v(3[10:17])
    IB i_Clk_pad (.I(i_Clk), .O(i_Clk_c));   // c:/devel/diamond/pce_save128/firmware/top.v(4[10:15])
    IB i_Data_pad (.I(i_Data), .O(i_Data_c));   // c:/devel/diamond/pce_save128/firmware/top.v(5[10:16])
    IB sp_miso_pad (.I(sp_miso), .O(sp_miso_c));   // c:/devel/diamond/pce_save128/firmware/top.v(13[10:17])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i4_4_lut (.A(cmd_len[0]), .B(n8), .C(n9588), .D(n10), .Z(n1136)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i4_4_lut.init = 16'h0400;
    LUT4 i8907_2_lut (.A(cmd_len[5]), .B(cmd_len[4]), .Z(n9588)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8907_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_adj_260 (.A(n3248), .B(cmd_len[1]), .C(cmd_len[3]), 
         .D(cmd_len[2]), .Z(n10)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_260.init = 16'h0002;
    LUT4 i3_4_lut (.A(i_Clk_Prev), .B(n10289), .C(i_Clk_Debounce), .D(n10237), 
         .Z(n9539)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i3_4_lut.init = 16'hffbf;
    LUT4 r_State_2__bdd_4_lut_9293 (.A(r_State[2]), .B(r_State[3]), .C(r_State[1]), 
         .D(r_State[0]), .Z(n10171)) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B !(C (D)))) */ ;
    defparam r_State_2__bdd_4_lut_9293.init = 16'hcf9f;
    LUT4 i2_3_lut_rep_144_4_lut (.A(r_State[2]), .B(n10284), .C(n10294), 
         .D(r_State[3]), .Z(n10243)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_3_lut_rep_144_4_lut.init = 16'hffbf;
    PFUMX i8352 (.BLUT(n9030), .ALUT(n9031), .C0(r_State[3]), .Z(n9032));
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i2_4_lut (.A(n9610), .B(sp_hold_n_N_713), .C(n6), .D(rw_len[0]), 
         .Z(n3257)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    LUT4 i8928_2_lut (.A(rw_len[4]), .B(rw_len[2]), .Z(n9610)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8928_2_lut.init = 16'heeee;
    LUT4 m1_lut (.Z(n10703)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    
endmodule
//
// Verilog Description of module MB128
//

module MB128 (clk, GND_net, i_Data_c, r_State, sp_hold_n_c, sp_hold_n_N_713, 
            \r_Pos_Edge[0] , i_Clk_c, i_Clk_Debounce, n10703, i_Clk_Prev, 
            cmd_len, sp_mosi_c, reset_n_c, n9032, sp_cs_n_c, n3257, 
            n10294, \rw_len[0] , n10284, n9031, \rw_len[4] , \rw_len[2] , 
            sp_clk_c, \r_Pos_Edge[2] , sp_miso_c, o_WriteLED_c, o_ReadLED_c, 
            n1136, n6, n10237, n10243, o_Active_c, n8, n10289, 
            n9030, n9539, n3248, n10171) /* synthesis syn_module_defined=1 */ ;
    input clk;
    input GND_net;
    input i_Data_c;
    output [3:0]r_State;
    output sp_hold_n_c;
    output sp_hold_n_N_713;
    output \r_Pos_Edge[0] ;
    input i_Clk_c;
    output i_Clk_Debounce;
    input n10703;
    output i_Clk_Prev;
    output [5:0]cmd_len;
    output sp_mosi_c;
    input reset_n_c;
    input n9032;
    output sp_cs_n_c;
    input n3257;
    output n10294;
    output \rw_len[0] ;
    output n10284;
    output n9031;
    output \rw_len[4] ;
    output \rw_len[2] ;
    output sp_clk_c;
    output \r_Pos_Edge[2] ;
    input sp_miso_c;
    output o_WriteLED_c;
    output o_ReadLED_c;
    input n1136;
    output n6;
    output n10237;
    input n10243;
    output o_Active_c;
    output n8;
    output n10289;
    output n9030;
    input n9539;
    output n3248;
    input n10171;
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/devel/diamond/pce_save128/firmware/top.v(26[8:11])
    wire [16:0]r_MB128_Bytes;   // c:/devel/diamond/pce_save128/firmware/save128.v(97[14:27])
    
    wire clk_enable_160, n4190;
    wire [16:0]n1042;
    
    wire n8758;
    wire [16:0]n1909;
    
    wire n8759, n8738;
    wire [16:0]r_MB128_Addr_Curr;   // c:/devel/diamond/pce_save128/firmware/save128.v(96[14:31])
    wire [31:0]n830;
    
    wire n8739, trigger_read_N_634, clk_enable_4, clk_enable_76;
    wire [16:0]n1191;
    
    wire n10219, n8996, n8757, clk_enable_11;
    wire [16:0]r_MB128_Addr;   // c:/devel/diamond/pce_save128/firmware/save128.v(95[14:26])
    
    wire clk_enable_135, n4234;
    wire [31:0]cmd_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(135[15:22])
    
    wire clk_enable_61, n4224, n10240;
    wire [1:0]sp_phase;   // c:/devel/diamond/pce_save128/firmware/save128.v(148[13:21])
    
    wire write_in_transit;
    wire [7:0]ram_data;   // c:/devel/diamond/pce_save128/firmware/save128.v(127[13:21])
    
    wire n62, n9470, n2042, n2043;
    wire [7:0]r_FetchWrite_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(106[14:31])
    
    wire clk_enable_102;
    wire [15:0]rd_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(136[15:21])
    
    wire clk_enable_15;
    wire [3:0]r_Pos_Edge_3__N_77;
    wire [7:0]ram_data_7__N_109;
    
    wire trigger_read, trigger_read_N_623, trigger_write, trigger_write_N_636, 
        trigger_fetchwrite, trigger_fetchwrite_N_675;
    wire [29:0]i_Clk_ShiftReg;   // c:/devel/diamond/pce_save128/firmware/save128.v(66[14:28])
    
    wire n10278, clk_enable_16, i_Clk_Debounce_N_595;
    wire [15:0]wr_buf;   // c:/devel/diamond/pce_save128/firmware/save128.v(137[15:21])
    
    wire wr_buf_7__N_225, wr_buf_6__N_240, wr_buf_5__N_251, wr_buf_4__N_262, 
        wr_buf_3__N_273, wr_buf_2__N_284, wr_buf_1__N_295, n8863, clk_enable_17;
    wire [31:0]cmd_buf_31__N_319;
    wire [3:0]r_State_Prev;   // c:/devel/diamond/pce_save128/firmware/save128.v(81[14:26])
    
    wire r_State_Prev_3__N_381, sp_active_N_720, clk_enable_46, n2297, 
        read_in_transit, n10221, fetchwrt_in_transit, trigger_wren_N_686, 
        clk_enable_87;
    wire [5:0]cmd_len_5__N_357;
    wire [4:0]rw_len;   // c:/devel/diamond/pce_save128/firmware/save128.v(134[14:20])
    
    wire clk_enable_132;
    wire [4:0]rw_len_4__N_368;
    
    wire clk_enable_38;
    wire [7:0]r_Read_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(104[14:25])
    
    wire clk_enable_136;
    wire [7:0]n1394;
    
    wire clk_enable_41, sp_mosi_N_727;
    wire [7:0]n1341;
    
    wire n2020, n10234, n10261, n10228, n10260;
    wire [7:0]r_Register;   // c:/devel/diamond/pce_save128/firmware/save128.v(82[14:24])
    
    wire n1651, n1653, n2821, n8_c, n13, n89, n10296, n56, n3160;
    wire [3:0]r_State_3__N_386;
    
    wire n27, n9531;
    wire [3:0]r_State_3__N_1;
    
    wire n37, n10223, n10, n1, n8_adj_750, n3510, n10273, n10230, 
        trigger_wren, n2904, n8747;
    wire [16:0]n344;
    
    wire n8748, n9410, n9494, n52, n9472, n2285, n2286, n12, 
        n10233, n10241, n9418, n117, n10224, n1155, n1190, n9420, 
        n10252, n8785, clk_enable_89, n10297, n10222, n1654;
    wire [16:0]n1137;
    wire [16:0]n1156;
    
    wire n2058;
    wire [31:0]n506;
    
    wire n1655, n10226, n3759, n10270;
    wire [7:0]r_Write_Byte_7__N_452;
    
    wire n8737, clk_enable_43, n1791, n10254, sp_active_N_719, n1656, 
        n10265, n3136, n1657, n3757, n10269, n10235, n2896, n1658, 
        n1659, n9466, n2357, n2358, n1393, n10210;
    wire [5:0]r_Bit_Count;   // c:/devel/diamond/pce_save128/firmware/save128.v(94[14:25])
    wire [31:0]trigger_write_N_642;
    
    wire n10_adj_751, sp_end_desel, clk_enable_57, n1786, n10268, 
        n2223, clk_enable_153, n4192, n10220, n10271, n42, n10238, 
        n17, n1219, n3354, n2567, n9620, n10231;
    wire [7:0]ram_data_7__N_436;
    wire [7:0]r_Write_Byte;   // c:/devel/diamond/pce_save128/firmware/save128.v(105[14:26])
    
    wire n1340, n9447, n10227, n10258, n2472, n9604, n4, n5, 
        clk_enable_138, n2, n3936, n10214, n38, n9398, n10026, 
        n10025, n10027, n48, n10301, n4_adj_752, n7, n10229, n4_adj_753, 
        n9558, n10170, n4_adj_754, clk_enable_139, rd_buf_7__N_170, 
        n10245, n9496, n3976, n9525, n10263, n9480, n10272, n10215, 
        n9458, n22, n10292, n9515, n10283, n10232, n4_adj_755, 
        n8746, n8756, n10291, n91, n4_adj_756, clk_enable_140, n10266, 
        n4218, n3164, n8745, n8755, n8754, n3152, n3158, n10236, 
        wr_buf_7__N_230, wr_buf_1__N_300, n4216, n3168, wr_buf_4__N_267, 
        n10262, n3162, n1214, clk_enable_88, n10249, clk_enable_147, 
        wr_buf_3__N_278, n2321, clk_enable_146, n8744, n10267, clk_enable_145, 
        n8844, wr_buf_2__N_289, n2325, n34, n8753, wr_buf_5__N_256, 
        n2351, n8752, n10248, clk_enable_144, n10257, o_ReadLED_N_609, 
        clk_enable_91, clk_enable_93, n10277, n10275, n2019;
    wire [2:0]r_MB128_Bits;   // c:/devel/diamond/pce_save128/firmware/save128.v(98[14:26])
    
    wire clk_enable_154;
    wire [2:0]n991;
    
    wire clk_enable_103, n9381, clk_enable_130, n4201, clk_enable_106;
    wire [31:0]sp_phase_1__N_317;
    
    wire n9462, n10225, n11, n10246, clk_enable_114, n1788, n1480, 
        n10298, n10299, n9401, n9402, n1041, r_Stop_Active, n13_adj_757, 
        clk_enable_149, n9442, n9400, n20, n9580, n10280, n7756, 
        n10165, n10169, n10300, n10276, n2022, n10281, n9632, 
        n9438, n9444, n10286, n6246, n8734, n8735, n2023, n9, 
        n37_adj_758, n6532, n6556, n7495, n36, n3694, clk_enable_142, 
        n4846, n10279, n9416, n3415, n35, n10_adj_759, n10239, 
        clk_enable_143, n10282, n6457, n10290, clk_enable_137, o_WriteLED_N_617, 
        n10168, n10167, clk_enable_141, n10218, n9625, n9501, n10288, 
        n9482, n71, n17_adj_760, n30, n26, n18, n10145, n10213, 
        n28, n22_adj_761, n18_adj_762, n10287, n2021, n7_adj_763, 
        n14, n10247, n4854, n9628, n9508, n66, n9627, n8751, 
        n63, n65, n8808, n10_adj_764, n8859, n2018, n2017, n10295, 
        n4_adj_765, n9388, n10259, r_Stop_Active_N_601, n10146, n10147, 
        n8950, n9624, n9626, n9386, n3823, n29, n10253, n8875, 
        n6_adj_766, n3350, n34_adj_768, n39, n1266, n10255, n9380, 
        n10250, n68, n10217, n10212;
    wire [3:0]n3;
    
    wire n45, n58, n54, n46, n19, n8936, n9603, n10023, n10216, 
        n9445, n10244, n2670, n40, n31, n3901, n9_adj_770, n10303, 
        n9629, n50, n38_adj_771, n4_adj_772, n9389, n56_adj_773, 
        n9469, n2352, n37_adj_774, n56_adj_775, n50_adj_776, n38_adj_777, 
        n48_adj_778, n34_adj_779, n8750, n52_adj_780, n42_adj_781, 
        n9456, n10274, n9465, n2326, n8741, n6_adj_782, n23, n9467, 
        n2322, n10251, n8749, n9408, n9536, n9750, n45_adj_783, 
        n58_adj_784, n54_adj_785, n46_adj_786, n8838, n10024, n1063, 
        n30_adj_787, n39_adj_788, n25, n8736, n8740, n17_adj_789, 
        n37_adj_790, n10211, n8969, n10302;
    
    FD1P3IX r_MB128_Bytes_i0_i8 (.D(n1042[8]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i8.GSR = "ENABLED";
    CCU2D sub_492_add_2_15 (.A0(r_MB128_Bytes[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8758), .COUT(n8759), .S0(n1909[13]), .S1(n1909[14]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_15.INIT0 = 16'h5555;
    defparam sub_492_add_2_15.INIT1 = 16'h5555;
    defparam sub_492_add_2_15.INJECT1_0 = "NO";
    defparam sub_492_add_2_15.INJECT1_1 = "NO";
    FD1P3IX r_MB128_Bytes_i0_i7 (.D(n1042[7]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i7.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i6 (.D(n1042[6]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i6.GSR = "ENABLED";
    CCU2D add_813_11 (.A0(r_MB128_Addr_Curr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8738), .COUT(n8739), .S0(n830[9]), .S1(n830[10]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_11.INIT0 = 16'h5aaa;
    defparam add_813_11.INIT1 = 16'h5aaa;
    defparam add_813_11.INJECT1_0 = "NO";
    defparam add_813_11.INJECT1_1 = "NO";
    FD1P3AY r_Req_702 (.D(i_Data_c), .SP(clk_enable_4), .CK(clk), .Q(trigger_read_N_634)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Req_702.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i0 (.D(n1191[0]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_4_lut (.A(r_State[1]), .B(n10219), .C(r_State[3]), 
         .D(r_State[2]), .Z(n8996)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0400;
    CCU2D sub_492_add_2_13 (.A0(r_MB128_Bytes[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8757), .COUT(n8758), .S0(n1909[11]), .S1(n1909[12]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_13.INIT0 = 16'h5555;
    defparam sub_492_add_2_13.INIT1 = 16'h5555;
    defparam sub_492_add_2_13.INJECT1_0 = "NO";
    defparam sub_492_add_2_13.INJECT1_1 = "NO";
    FD1P3IX r_MB128_Bytes_i0_i5 (.D(n1042[5]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i5.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i4 (.D(n1042[4]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i4.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i3 (.D(n1042[3]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i3.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i2 (.D(n1042[2]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i2.GSR = "ENABLED";
    FD1P3IX r_MB128_Bytes_i0_i1 (.D(n1042[1]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i1.GSR = "ENABLED";
    FD1P3AX sp_hold_n_662 (.D(sp_hold_n_N_713), .SP(clk_enable_11), .CK(clk), 
            .Q(sp_hold_n_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_hold_n_662.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i0 (.D(r_MB128_Addr[1]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i0.GSR = "ENABLED";
    FD1P3IX cmd_buf_i31 (.D(cmd_buf[30]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i31.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n10240), .B(sp_phase[0]), .C(write_in_transit), 
         .D(ram_data[6]), .Z(n62)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hbf00;
    PFUMX i1383 (.BLUT(n9470), .ALUT(n2042), .C0(sp_phase[1]), .Z(n2043));
    FD1P3AX r_FetchWrite_Byte_i0_i0 (.D(rd_buf[0]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i0.GSR = "ENABLED";
    FD1P3AX r_Pos_Edge_i0 (.D(r_Pos_Edge_3__N_77[0]), .SP(clk_enable_15), 
            .CK(clk), .Q(\r_Pos_Edge[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Pos_Edge_i0.GSR = "ENABLED";
    FD1S3AX ram_data_i0 (.D(ram_data_7__N_109[0]), .CK(clk), .Q(ram_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i0.GSR = "ENABLED";
    FD1S3AX trigger_read_655 (.D(trigger_read_N_623), .CK(clk), .Q(trigger_read)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam trigger_read_655.GSR = "ENABLED";
    FD1S3AX trigger_write_656 (.D(trigger_write_N_636), .CK(clk), .Q(trigger_write)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam trigger_write_656.GSR = "ENABLED";
    FD1S3AX trigger_fetchwrite_657 (.D(trigger_fetchwrite_N_675), .CK(clk), 
            .Q(trigger_fetchwrite)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam trigger_fetchwrite_657.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i0 (.D(i_Clk_c), .CK(clk), .Q(i_Clk_ShiftReg[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i0.GSR = "ENABLED";
    FD1S3AX sp_phase_i0 (.D(n10278), .CK(clk), .Q(sp_phase[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_phase_i0.GSR = "ENABLED";
    FD1P3AX i_Clk_Debounce_660 (.D(i_Clk_Debounce_N_595), .SP(clk_enable_16), 
            .CK(clk), .Q(i_Clk_Debounce)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_Debounce_660.GSR = "ENABLED";
    FD1S3AX wr_buf_7__669 (.D(wr_buf_7__N_225), .CK(clk), .Q(wr_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_7__669.GSR = "ENABLED";
    FD1S3AX wr_buf_6__670 (.D(wr_buf_6__N_240), .CK(clk), .Q(wr_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_6__670.GSR = "ENABLED";
    FD1S3AX wr_buf_5__671 (.D(wr_buf_5__N_251), .CK(clk), .Q(wr_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_5__671.GSR = "ENABLED";
    FD1S3AX wr_buf_4__672 (.D(wr_buf_4__N_262), .CK(clk), .Q(wr_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_4__672.GSR = "ENABLED";
    FD1S3AX wr_buf_3__673 (.D(wr_buf_3__N_273), .CK(clk), .Q(wr_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_3__673.GSR = "ENABLED";
    FD1S3AX wr_buf_2__674 (.D(wr_buf_2__N_284), .CK(clk), .Q(wr_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_2__674.GSR = "ENABLED";
    FD1S3AX wr_buf_1__675 (.D(wr_buf_1__N_295), .CK(clk), .Q(wr_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_1__675.GSR = "ENABLED";
    FD1P3IX wr_buf_0__676 (.D(ram_data[0]), .SP(trigger_write), .CD(n8863), 
            .CK(clk), .Q(wr_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam wr_buf_0__676.GSR = "ENABLED";
    FD1P3AX cmd_buf_i0 (.D(cmd_buf_31__N_319[0]), .SP(clk_enable_17), .CK(clk), 
            .Q(cmd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i0.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i0 (.D(r_State[0]), .SP(r_State_Prev_3__N_381), 
            .CK(clk), .Q(r_State_Prev[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_Prev_i0_i0.GSR = "ENABLED";
    FD1P3IX sp_go_688 (.D(n10703), .SP(clk_enable_46), .CD(n2297), .CK(clk), 
            .Q(sp_active_N_720)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_go_688.GSR = "ENABLED";
    FD1P3IX read_in_transit_689 (.D(n10703), .SP(trigger_read), .CD(n10221), 
            .CK(clk), .Q(read_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam read_in_transit_689.GSR = "ENABLED";
    FD1P3IX fetchwrt_in_transit_690 (.D(n10703), .SP(trigger_fetchwrite), 
            .CD(clk_enable_102), .CK(clk), .Q(fetchwrt_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam fetchwrt_in_transit_690.GSR = "ENABLED";
    FD1P3IX write_in_transit_691 (.D(n10703), .SP(trigger_write), .CD(trigger_wren_N_686), 
            .CK(clk), .Q(write_in_transit)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam write_in_transit_691.GSR = "ENABLED";
    FD1S3AX i_Clk_Prev_699 (.D(i_Clk_Debounce), .CK(clk), .Q(i_Clk_Prev)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_Prev_699.GSR = "ENABLED";
    FD1P3AX cmd_len_i3 (.D(cmd_len_5__N_357[3]), .SP(clk_enable_87), .CK(clk), 
            .Q(cmd_len[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_len_i3.GSR = "ENABLED";
    FD1P3AY cmd_len_i5 (.D(cmd_len_5__N_357[5]), .SP(clk_enable_87), .CK(clk), 
            .Q(cmd_len[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_len_i5.GSR = "ENABLED";
    FD1P3AY rw_len_i3 (.D(rw_len_4__N_368[3]), .SP(clk_enable_132), .CK(clk), 
            .Q(rw_len[3])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rw_len_i3.GSR = "ENABLED";
    FD1P3AX cmd_buf_i1 (.D(cmd_buf_31__N_319[1]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i1.GSR = "ENABLED";
    FD1P3AX cmd_buf_i2 (.D(cmd_buf_31__N_319[2]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i2.GSR = "ENABLED";
    FD1P3AX cmd_buf_i3 (.D(cmd_buf_31__N_319[3]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i3.GSR = "ENABLED";
    FD1P3AX cmd_buf_i4 (.D(cmd_buf_31__N_319[4]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i4.GSR = "ENABLED";
    FD1P3AX cmd_buf_i5 (.D(cmd_buf_31__N_319[5]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i5.GSR = "ENABLED";
    FD1P3AX cmd_buf_i6 (.D(cmd_buf_31__N_319[6]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i6.GSR = "ENABLED";
    FD1P3AX cmd_buf_i7 (.D(cmd_buf_31__N_319[7]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i7.GSR = "ENABLED";
    FD1P3AX cmd_buf_i8 (.D(cmd_buf_31__N_319[8]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i8.GSR = "ENABLED";
    FD1P3AX cmd_buf_i9 (.D(cmd_buf_31__N_319[9]), .SP(clk_enable_38), .CK(clk), 
            .Q(cmd_buf[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i9.GSR = "ENABLED";
    FD1P3AX cmd_buf_i10 (.D(cmd_buf_31__N_319[10]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i10.GSR = "ENABLED";
    FD1P3AX cmd_buf_i11 (.D(cmd_buf_31__N_319[11]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i11.GSR = "ENABLED";
    FD1P3AX cmd_buf_i12 (.D(cmd_buf_31__N_319[12]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i12.GSR = "ENABLED";
    FD1P3AX cmd_buf_i13 (.D(cmd_buf_31__N_319[13]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i13.GSR = "ENABLED";
    FD1P3AX cmd_buf_i14 (.D(cmd_buf_31__N_319[14]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i14.GSR = "ENABLED";
    FD1P3AX cmd_buf_i15 (.D(cmd_buf_31__N_319[15]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i15.GSR = "ENABLED";
    FD1P3AX cmd_buf_i16 (.D(cmd_buf_31__N_319[16]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i16.GSR = "ENABLED";
    FD1P3AY cmd_buf_i24 (.D(cmd_buf_31__N_319[24]), .SP(clk_enable_38), 
            .CK(clk), .Q(cmd_buf[24])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i24.GSR = "ENABLED";
    FD1P3AX cmd_buf_i26 (.D(cmd_buf_31__N_319[26]), .SP(clk_enable_61), 
            .CK(clk), .Q(cmd_buf[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i26.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i0 (.D(n1394[0]), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i0.GSR = "ENABLED";
    FD1P3AX sp_mosi_693 (.D(sp_mosi_N_727), .SP(clk_enable_41), .CK(clk), 
            .Q(sp_mosi_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_mosi_693.GSR = "ENABLED";
    PFUMX mux_804_i4 (.BLUT(n1341[3]), .ALUT(n2020), .C0(n10234), .Z(ram_data_7__N_109[3]));
    LUT4 i2025_3_lut_rep_120_4_lut_4_lut (.A(n10261), .B(n10228), .C(r_State[0]), 
         .D(n10260), .Z(n10219)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i2025_3_lut_rep_120_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i5749_2_lut (.A(r_Register[2]), .B(n1651), .Z(n1653)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5749_2_lut.init = 16'h2222;
    LUT4 i1009_4_lut (.A(n2821), .B(reset_n_c), .C(n8_c), .D(r_State[3]), 
         .Z(n1651)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1009_4_lut.init = 16'hc088;
    LUT4 i90_4_lut_3_lut_4_lut (.A(r_State[3]), .B(r_State[1]), .C(n13), 
         .D(r_State[2]), .Z(n89)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i90_4_lut_3_lut_4_lut.init = 16'haa5d;
    FD1P3IX cmd_buf_i30 (.D(cmd_buf[29]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i30.GSR = "ENABLED";
    LUT4 i1249_2_lut_rep_197 (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n10296)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(437[17:31])
    defparam i1249_2_lut_rep_197.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n10261), .B(n89), .C(r_State[1]), .D(n10260), 
         .Z(n56)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hccce;
    LUT4 i1_2_lut_3_lut (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n3160)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(437[17:31])
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    LUT4 i5567_2_lut_3_lut (.A(r_State_3__N_386[0]), .B(n27), .C(n9531), 
         .Z(r_State_3__N_1[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5567_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_4_lut_4_lut_adj_120 (.A(n10261), .B(r_State[0]), .C(r_State[2]), 
         .D(n10260), .Z(n37)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_3_lut_4_lut_4_lut_adj_120.init = 16'h0c8c;
    LUT4 i1_4_lut (.A(r_State[1]), .B(n10223), .C(n10), .D(r_State[0]), 
         .Z(n1)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i1_4_lut_4_lut (.A(r_State[3]), .B(r_State[1]), .C(r_State[0]), 
         .D(r_State[2]), .Z(n8_adj_750)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfebf;
    LUT4 i653_3_lut_4_lut_4_lut (.A(r_State[1]), .B(r_State[2]), .C(r_State[0]), 
         .D(r_State[3]), .Z(n3510)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i653_3_lut_4_lut_4_lut.init = 16'h0280;
    LUT4 i9014_2_lut_2_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n9032), 
         .D(clk_enable_160), .Z(n4190)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i9014_2_lut_2_lut_4_lut.init = 16'hbf00;
    LUT4 i1257_2_lut_rep_174_3_lut (.A(cmd_len[1]), .B(cmd_len[0]), .C(cmd_len[2]), 
         .Z(n10273)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(437[17:31])
    defparam i1257_2_lut_rep_174_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut (.A(sp_phase[1]), .B(n10230), .C(trigger_wren), 
         .D(trigger_wren_N_686), .Z(n8863)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(148[13:21])
    defparam i2_3_lut_4_lut.init = 16'hfff4;
    LUT4 i2020_3_lut_4_lut_4_lut (.A(n10261), .B(n13), .C(r_State[0]), 
         .D(n10260), .Z(n2904)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i2020_3_lut_4_lut_4_lut.init = 16'hfc5c;
    CCU2D add_71_10 (.A0(r_MB128_Addr[8]), .B0(r_MB128_Bytes[8]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[9]), .B1(r_MB128_Bytes[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8747), .COUT(n8748), .S0(n344[8]), .S1(n344[9]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_10.INIT0 = 16'h5666;
    defparam add_71_10.INIT1 = 16'h5666;
    defparam add_71_10.INJECT1_0 = "NO";
    defparam add_71_10.INJECT1_1 = "NO";
    PFUMX i4072 (.BLUT(n9410), .ALUT(n9494), .C0(r_State[3]), .Z(r_State_3__N_1[3]));
    LUT4 i22_4_lut (.A(i_Clk_ShiftReg[25]), .B(i_Clk_ShiftReg[6]), .C(i_Clk_ShiftReg[27]), 
         .D(i_Clk_ShiftReg[17]), .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i22_4_lut.init = 16'hfffe;
    PFUMX i1625 (.BLUT(n9472), .ALUT(n2285), .C0(sp_phase[1]), .Z(n2286));
    LUT4 i1_4_lut_adj_121 (.A(r_State[1]), .B(n12), .C(n10233), .D(n10241), 
         .Z(n9418)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_4_lut_adj_121.init = 16'h8808;
    LUT4 i1_3_lut_4_lut (.A(n117), .B(n10224), .C(n1155), .D(n1190), 
         .Z(n9420)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0700;
    LUT4 i9037_3_lut_4_lut_4_lut (.A(n10252), .B(n8785), .C(n10241), .D(r_State[3]), 
         .Z(clk_enable_89)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i9037_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i3489_2_lut_rep_198 (.A(trigger_write), .B(trigger_fetchwrite), 
         .Z(n10297)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3489_2_lut_rep_198.init = 16'hbbbb;
    LUT4 i5768_4_lut (.A(n344[0]), .B(n10222), .C(r_MB128_Addr_Curr[0]), 
         .D(n10297), .Z(cmd_buf_31__N_319[0])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam i5768_4_lut.init = 16'h3022;
    LUT4 i8080_2_lut (.A(r_MB128_Addr[0]), .B(r_MB128_Bytes[0]), .Z(n344[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i8080_2_lut.init = 16'h6666;
    LUT4 i5750_2_lut (.A(r_Register[3]), .B(n1651), .Z(n1654)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5750_2_lut.init = 16'h2222;
    PFUMX mux_691_i17 (.BLUT(n1137[16]), .ALUT(n1156[16]), .C0(n1190), 
          .Z(n1191[16]));
    LUT4 i1398_2_lut (.A(trigger_read), .B(trigger_fetchwrite), .Z(n2058)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(321[4] 336[9])
    defparam i1398_2_lut.init = 16'heeee;
    PFUMX mux_691_i16 (.BLUT(n1137[15]), .ALUT(n1156[15]), .C0(n1190), 
          .Z(n1191[15]));
    LUT4 i3494_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[1]), 
         .D(n344[1]), .Z(n506[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3494_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3492_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[2]), 
         .D(n344[2]), .Z(n506[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3492_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i5751_2_lut (.A(r_Register[4]), .B(n1651), .Z(n1655)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5751_2_lut.init = 16'h2222;
    LUT4 i944_1_lut (.A(sp_hold_n_N_713), .Z(r_State_Prev_3__N_381)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i944_1_lut.init = 16'h5555;
    LUT4 i3490_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[3]), 
         .D(n344[3]), .Z(n506[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3490_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_4_lut_adj_122 (.A(i_Data_c), .B(n10226), .C(n3759), 
         .D(n10270), .Z(r_Write_Byte_7__N_452[6])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_122.init = 16'h0008;
    CCU2D add_813_9 (.A0(r_MB128_Addr_Curr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8737), .COUT(n8738), .S0(n830[7]), .S1(n830[8]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_9.INIT0 = 16'h5aaa;
    defparam add_813_9.INIT1 = 16'h5aaa;
    defparam add_813_9.INJECT1_0 = "NO";
    defparam add_813_9.INJECT1_1 = "NO";
    LUT4 i3488_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[4]), 
         .D(n344[4]), .Z(n506[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3488_3_lut_4_lut.init = 16'hf4b0;
    FD1P3IX sp_cs_n_661 (.D(n10703), .SP(clk_enable_43), .CD(n1791), .CK(clk), 
            .Q(sp_cs_n_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_cs_n_661.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_123 (.A(n10254), .B(n3257), .C(sp_active_N_720), 
         .Z(sp_active_N_719)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_123.init = 16'hb0b0;
    LUT4 i3486_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[5]), 
         .D(n344[5]), .Z(n506[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3486_3_lut_4_lut.init = 16'hf4b0;
    PFUMX mux_691_i15 (.BLUT(n1137[14]), .ALUT(n1156[14]), .C0(n1190), 
          .Z(n1191[14]));
    LUT4 i3484_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[6]), 
         .D(n344[6]), .Z(n506[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3484_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i5752_2_lut (.A(r_Register[5]), .B(n1651), .Z(n1656)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5752_2_lut.init = 16'h2222;
    LUT4 i3066_3_lut_4_lut (.A(n10265), .B(n10260), .C(n3136), .D(n10270), 
         .Z(n3759)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(769[11:27])
    defparam i3066_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i5753_2_lut (.A(r_Register[6]), .B(n1651), .Z(n1657)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5753_2_lut.init = 16'h2222;
    LUT4 i3482_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[7]), 
         .D(n344[7]), .Z(n506[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3482_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_4_lut_adj_124 (.A(i_Data_c), .B(n10226), .C(n3757), 
         .D(n10269), .Z(r_Write_Byte_7__N_452[5])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_124.init = 16'h0008;
    FD1P3IX cmd_buf_i29 (.D(cmd_buf[28]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i29.GSR = "ENABLED";
    PFUMX mux_691_i14 (.BLUT(n1137[13]), .ALUT(n1156[13]), .C0(n1190), 
          .Z(n1191[13]));
    LUT4 mux_181_i4_4_lut (.A(trigger_wren), .B(cmd_len[3]), .C(n10235), 
         .D(n10273), .Z(cmd_len_5__N_357[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(440[10] 445[10])
    defparam mux_181_i4_4_lut.init = 16'hca3a;
    LUT4 i3480_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[8]), 
         .D(n344[8]), .Z(n506[8])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3480_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1953_3_lut_4_lut (.A(n10265), .B(n10260), .C(r_State[0]), .D(n13), 
         .Z(n2896)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(769[11:27])
    defparam i1953_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i3478_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[9]), 
         .D(n344[9]), .Z(n506[9])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3478_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3064_3_lut_4_lut (.A(n10265), .B(n10260), .C(n3136), .D(n10269), 
         .Z(n3757)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(769[11:27])
    defparam i3064_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i3476_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[10]), 
         .D(n344[10]), .Z(n506[10])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3476_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3474_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[11]), 
         .D(n344[11]), .Z(n506[11])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3474_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3432_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[12]), 
         .D(n344[12]), .Z(n506[12])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3432_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i5754_2_lut (.A(r_Register[7]), .B(n1651), .Z(n1658)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5754_2_lut.init = 16'h2222;
    LUT4 i5755_2_lut (.A(i_Data_c), .B(n1651), .Z(n1659)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5755_2_lut.init = 16'h2222;
    PFUMX i1696 (.BLUT(n9466), .ALUT(n2357), .C0(sp_phase[1]), .Z(n2358));
    LUT4 mux_831_i2_4_lut (.A(rd_buf[1]), .B(r_Read_Byte[2]), .C(n1393), 
         .D(n10210), .Z(n1394[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_831_i2_4_lut.init = 16'hcac0;
    LUT4 mux_831_i3_4_lut (.A(rd_buf[2]), .B(r_Read_Byte[3]), .C(n1393), 
         .D(n10210), .Z(n1394[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_831_i3_4_lut.init = 16'hcac0;
    LUT4 mux_831_i4_4_lut (.A(rd_buf[3]), .B(r_Read_Byte[4]), .C(n1393), 
         .D(n10210), .Z(n1394[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_831_i4_4_lut.init = 16'hcac0;
    LUT4 mux_831_i5_4_lut (.A(rd_buf[4]), .B(r_Read_Byte[5]), .C(n1393), 
         .D(n10210), .Z(n1394[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_831_i5_4_lut.init = 16'hcac0;
    LUT4 mux_831_i6_4_lut (.A(rd_buf[5]), .B(r_Read_Byte[6]), .C(n1393), 
         .D(n10210), .Z(n1394[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_831_i6_4_lut.init = 16'hcac0;
    LUT4 i1189_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10265), .C(r_Bit_Count[4]), 
         .D(r_Bit_Count[5]), .Z(trigger_write_N_642[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(816[24:42])
    defparam i1189_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX cmd_buf_i28 (.D(cmd_buf[27]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i28.GSR = "ENABLED";
    LUT4 i3434_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[13]), 
         .D(n344[13]), .Z(n506[13])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3434_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_831_i7_4_lut (.A(rd_buf[6]), .B(r_Read_Byte[7]), .C(n1393), 
         .D(n10210), .Z(n1394[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_831_i7_4_lut.init = 16'hcac0;
    LUT4 mux_181_i6_4_lut (.A(trigger_wren), .B(cmd_len[5]), .C(n10235), 
         .D(n10_adj_751), .Z(cmd_len_5__N_357[5])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(440[10] 445[10])
    defparam mux_181_i6_4_lut.init = 16'hc535;
    LUT4 i3436_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[14]), 
         .D(n344[14]), .Z(n506[14])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3436_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3438_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[15]), 
         .D(n344[15]), .Z(n506[15])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3438_3_lut_4_lut.init = 16'hf4b0;
    FD1P3AX sp_end_desel_678 (.D(n10703), .SP(clk_enable_46), .CK(clk), 
            .Q(sp_end_desel)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_end_desel_678.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i1 (.D(trigger_write_N_642[1]), .SP(clk_enable_57), 
            .CD(n1786), .CK(clk), .Q(r_Bit_Count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Bit_Count__i1.GSR = "ENABLED";
    FD1P3IX cmd_buf_i27 (.D(cmd_buf[26]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i27.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_125 (.A(n10268), .B(r_State[3]), .C(n10294), 
         .D(n2223), .Z(clk_enable_153)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_2_lut_4_lut_adj_125.init = 16'hff10;
    FD1P3JX cmd_buf_i25 (.D(cmd_buf[24]), .SP(clk_enable_61), .PD(n4224), 
            .CK(clk), .Q(cmd_buf[25])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i25.GSR = "ENABLED";
    FD1P3IX cmd_buf_i23 (.D(cmd_buf[22]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i23.GSR = "ENABLED";
    LUT4 i3440_3_lut_4_lut (.A(trigger_write), .B(trigger_fetchwrite), .C(r_MB128_Addr_Curr[16]), 
         .D(n344[16]), .Z(n506[16])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam i3440_3_lut_4_lut.init = 16'hf4b0;
    PFUMX mux_691_i13 (.BLUT(n1137[12]), .ALUT(n1156[12]), .C0(n1190), 
          .Z(n1191[12]));
    LUT4 i3497_2_lut_4_lut (.A(n10268), .B(r_State[3]), .C(n10294), .D(n2223), 
         .Z(n4192)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i3497_2_lut_4_lut.init = 16'hef00;
    LUT4 mux_180_i4_4_lut (.A(trigger_wren), .B(rw_len[3]), .C(n10220), 
         .D(n10271), .Z(rw_len_4__N_368[3])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(440[10] 445[10])
    defparam mux_180_i4_4_lut.init = 16'hc535;
    LUT4 i12_2_lut (.A(i_Clk_ShiftReg[16]), .B(i_Clk_ShiftReg[3]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i12_2_lut.init = 16'heeee;
    LUT4 i34_4_lut (.A(n10238), .B(r_Read_Byte[0]), .C(r_State[0]), .D(trigger_read_N_634), 
         .Z(n17)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i34_4_lut.init = 16'hc5c0;
    FD1P3IX cmd_buf_i22 (.D(cmd_buf[21]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i22.GSR = "ENABLED";
    FD1P3IX cmd_buf_i21 (.D(cmd_buf[20]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i21.GSR = "ENABLED";
    LUT4 i703_1_lut (.A(\rw_len[0] ), .Z(n1219)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i703_1_lut.init = 16'h5555;
    PFUMX mux_691_i12 (.BLUT(n1137[11]), .ALUT(n1156[11]), .C0(n1190), 
          .Z(n1191[11]));
    LUT4 i29_3_lut (.A(n3354), .B(n2567), .C(r_State[3]), .Z(n9620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i29_3_lut.init = 16'hcaca;
    FD1P3IX cmd_buf_i20 (.D(cmd_buf[19]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i20.GSR = "ENABLED";
    LUT4 mux_138_i2_4_lut (.A(n506[1]), .B(cmd_buf[0]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i2_4_lut.init = 16'hc0ca;
    LUT4 mux_802_i2_3_lut (.A(ram_data_7__N_436[1]), .B(r_Write_Byte[1]), 
         .C(n1340), .Z(n1341[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_802_i2_3_lut.init = 16'hcaca;
    LUT4 i31_4_lut (.A(n9447), .B(n10284), .C(r_State[2]), .D(n10227), 
         .Z(n2567)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i31_4_lut.init = 16'h3afa;
    LUT4 i2_3_lut_4_lut_adj_126 (.A(r_State[1]), .B(n10258), .C(r_State[3]), 
         .D(n2896), .Z(trigger_write_N_636)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_126.init = 16'h0080;
    LUT4 i1806_2_lut (.A(trigger_write), .B(trigger_wren), .Z(n2472)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(356[4] 370[9])
    defparam i1806_2_lut.init = 16'heeee;
    LUT4 i9046_4_lut (.A(n9604), .B(reset_n_c), .C(n4), .D(n5), .Z(clk_enable_138)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (D)))) */ ;
    defparam i9046_4_lut.init = 16'h135f;
    LUT4 i1_4_lut_adj_127 (.A(n2), .B(n3936), .C(r_State[3]), .D(n10214), 
         .Z(n5)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_4_lut_adj_127.init = 16'hfeee;
    LUT4 i1_4_lut_adj_128 (.A(n8996), .B(n10294), .C(n38), .D(n10284), 
         .Z(n2)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_128.init = 16'hc888;
    LUT4 mux_138_i3_4_lut (.A(n506[2]), .B(cmd_buf[1]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i3_4_lut.init = 16'hc0ca;
    LUT4 r_State_0__bdd_4_lut_9296 (.A(r_State[0]), .B(r_State[1]), .C(r_State[3]), 
         .D(n9398), .Z(n10026)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))) */ ;
    defparam r_State_0__bdd_4_lut_9296.init = 16'ha282;
    LUT4 mux_138_i4_4_lut (.A(n506[3]), .B(cmd_buf[2]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i4_4_lut.init = 16'hc0ca;
    LUT4 n10026_bdd_3_lut (.A(n10026), .B(n10025), .C(r_State[2]), .Z(n10027)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n10026_bdd_3_lut.init = 16'hcaca;
    LUT4 i18_4_lut (.A(i_Clk_ShiftReg[2]), .B(i_Clk_ShiftReg[18]), .C(i_Clk_ShiftReg[11]), 
         .D(i_Clk_ShiftReg[22]), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 mux_138_i5_4_lut (.A(n506[4]), .B(cmd_buf[3]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i5_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut_4_lut_adj_129 (.A(r_State[1]), .B(n10258), .C(r_State[0]), 
         .D(r_State[3]), .Z(clk_enable_4)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_129.init = 16'h0080;
    LUT4 i1_4_lut_4_lut_adj_130 (.A(n10261), .B(n10301), .C(n4_adj_752), 
         .D(n10260), .Z(n7)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (B (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_4_lut_4_lut_adj_130.init = 16'hcce0;
    LUT4 i1_2_lut_4_lut_adj_131 (.A(r_State[2]), .B(n10229), .C(r_State[3]), 
         .D(n10260), .Z(n4_adj_753)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_131.init = 16'h0100;
    LUT4 i9107_4_lut (.A(reset_n_c), .B(n9558), .C(n10170), .D(n4_adj_754), 
         .Z(clk_enable_139)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i9107_4_lut.init = 16'h5557;
    LUT4 mux_138_i6_4_lut (.A(n506[5]), .B(cmd_buf[4]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i6_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut_rep_146 (.A(sp_hold_n_N_713), .B(n10254), .C(rd_buf_7__N_170), 
         .Z(n10245)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(408[7] 414[10])
    defparam i2_3_lut_rep_146.init = 16'h2020;
    LUT4 i1_2_lut_rep_131_4_lut (.A(sp_hold_n_N_713), .B(n10254), .C(rd_buf_7__N_170), 
         .D(sp_phase[0]), .Z(n10230)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(408[7] 414[10])
    defparam i1_2_lut_rep_131_4_lut.init = 16'h0020;
    LUT4 i9111_3_lut_4_lut (.A(n10284), .B(n13), .C(r_State[2]), .D(n3936), 
         .Z(n9604)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i9111_3_lut_4_lut.init = 16'h0007;
    LUT4 i1_4_lut_adj_132 (.A(n8996), .B(n9496), .C(n3976), .D(n9525), 
         .Z(n4_adj_754)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_132.init = 16'hfefa;
    LUT4 i1_2_lut_4_lut_adj_133 (.A(n10263), .B(n10233), .C(n10265), .D(r_State[1]), 
         .Z(n9480)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_133.init = 16'h1000;
    LUT4 mux_138_i7_4_lut (.A(n506[6]), .B(cmd_buf[5]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i7_4_lut.init = 16'hc0ca;
    LUT4 i2_4_lut (.A(n10272), .B(n10215), .C(r_State[2]), .D(r_State[1]), 
         .Z(n3976)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0800;
    FD1P3IX r_Bit_Count__i2 (.D(trigger_write_N_642[2]), .SP(clk_enable_57), 
            .CD(n1786), .CK(clk), .Q(r_Bit_Count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Bit_Count__i2.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i3 (.D(trigger_write_N_642[3]), .SP(clk_enable_57), 
            .CD(n1786), .CK(clk), .Q(r_Bit_Count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Bit_Count__i3.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i4 (.D(trigger_write_N_642[4]), .SP(clk_enable_57), 
            .CD(n1786), .CK(clk), .Q(r_Bit_Count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Bit_Count__i4.GSR = "ENABLED";
    FD1P3IX r_Bit_Count__i5 (.D(trigger_write_N_642[5]), .SP(clk_enable_57), 
            .CD(n1786), .CK(clk), .Q(r_Bit_Count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Bit_Count__i5.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i1 (.D(n1191[1]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i1.GSR = "ENABLED";
    LUT4 mux_138_i8_4_lut (.A(n506[7]), .B(cmd_buf[6]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i8_4_lut.init = 16'hc0ca;
    PFUMX mux_691_i11 (.BLUT(n1137[10]), .ALUT(n1156[10]), .C0(n1190), 
          .Z(n1191[10]));
    LUT4 i1_2_lut_4_lut_adj_134 (.A(n10263), .B(n10233), .C(n10265), .D(r_State[2]), 
         .Z(n9458)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_134.init = 16'hef00;
    LUT4 mux_138_i9_4_lut (.A(n506[8]), .B(cmd_buf[7]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i9_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_135 (.A(n22), .B(n10292), .C(n13), .D(r_State[0]), 
         .Z(n9515)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_4_lut_adj_135.init = 16'h0c88;
    LUT4 i1_2_lut_4_lut_adj_136 (.A(n10283), .B(n10232), .C(r_State[1]), 
         .D(n10294), .Z(n4_adj_755)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_2_lut_4_lut_adj_136.init = 16'h7f00;
    LUT4 mux_138_i10_4_lut (.A(n506[9]), .B(cmd_buf[8]), .C(n10231), .D(trigger_wren), 
         .Z(cmd_buf_31__N_319[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i10_4_lut.init = 16'hc0ca;
    CCU2D add_71_8 (.A0(r_MB128_Addr[6]), .B0(r_MB128_Bytes[6]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[7]), .B1(r_MB128_Bytes[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8746), .COUT(n8747), .S0(n344[6]), .S1(n344[7]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_8.INIT0 = 16'h5666;
    defparam add_71_8.INIT1 = 16'h5666;
    defparam add_71_8.INJECT1_0 = "NO";
    defparam add_71_8.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_137 (.A(n10283), .B(n10232), .C(r_State[1]), 
         .D(n10294), .Z(n9558)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_2_lut_4_lut_adj_137.init = 16'h80ff;
    CCU2D sub_492_add_2_11 (.A0(r_MB128_Bytes[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8756), .COUT(n8757), .S0(n1909[9]), .S1(n1909[10]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_11.INIT0 = 16'h5555;
    defparam sub_492_add_2_11.INIT1 = 16'h5555;
    defparam sub_492_add_2_11.INJECT1_0 = "NO";
    defparam sub_492_add_2_11.INJECT1_1 = "NO";
    LUT4 i1410_2_lut_rep_123_3_lut_4_lut (.A(sp_hold_n_N_713), .B(n10254), 
         .C(trigger_wren), .D(n10291), .Z(n10222)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(436[9:35])
    defparam i1410_2_lut_rep_123_3_lut_4_lut.init = 16'hf0f8;
    LUT4 mux_138_i11_4_lut (.A(n506[10]), .B(cmd_buf[9]), .C(n10231), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i11_4_lut.init = 16'hc0ca;
    FD1P3IX cmd_buf_i19 (.D(cmd_buf[18]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i19.GSR = "ENABLED";
    FD1P3IX cmd_buf_i18 (.D(cmd_buf[17]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i18.GSR = "ENABLED";
    FD1P3IX cmd_buf_i17 (.D(cmd_buf[16]), .SP(clk_enable_61), .CD(n4224), 
            .CK(clk), .Q(cmd_buf[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_buf_i17.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(sp_hold_n_N_713), .B(n10254), .C(clk_enable_46), 
         .D(n10291), .Z(clk_enable_61)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(436[9:35])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i3526_2_lut_3_lut_4_lut (.A(sp_hold_n_N_713), .B(n10254), .C(clk_enable_46), 
         .D(n10291), .Z(n4224)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(436[9:35])
    defparam i3526_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 mux_138_i12_4_lut (.A(n506[11]), .B(cmd_buf[10]), .C(n10231), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i12_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_138 (.A(reset_n_c), .B(n91), .C(n4_adj_755), .D(n4_adj_756), 
         .Z(clk_enable_140)) /* synthesis lut_function=((B (C)+!B (C (D)))+!A) */ ;
    defparam i1_4_lut_adj_138.init = 16'hf5d5;
    LUT4 i1_2_lut_4_lut_adj_139 (.A(n10265), .B(n10260), .C(n10233), .D(n10266), 
         .Z(n9031)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_4_lut_adj_139.init = 16'h2000;
    FD1P3AX r_MB128_Addr_Curr_i0_i2 (.D(n1191[2]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i2.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i3 (.D(n1191[3]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i3.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i4 (.D(n1191[4]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i4.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i5 (.D(n1191[5]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i5.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i6 (.D(n1191[6]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i6.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i7 (.D(n1191[7]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i7.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i8 (.D(n1191[8]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i8.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i9 (.D(n1191[9]), .SP(clk_enable_76), .CK(clk), 
            .Q(r_MB128_Addr_Curr[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i9.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i10 (.D(n1191[10]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i10.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i11 (.D(n1191[11]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i11.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i12 (.D(n1191[12]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i12.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i13 (.D(n1191[13]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i13.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i14 (.D(n1191[14]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i14.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i15 (.D(n1191[15]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i15.GSR = "ENABLED";
    FD1P3AX r_MB128_Addr_Curr_i0_i16 (.D(n1191[16]), .SP(clk_enable_76), 
            .CK(clk), .Q(r_MB128_Addr_Curr[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_Curr_i0_i16.GSR = "ENABLED";
    FD1P3IX rw_len_i4 (.D(n3164), .SP(clk_enable_132), .CD(n4218), .CK(clk), 
            .Q(\rw_len[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rw_len_i4.GSR = "ENABLED";
    CCU2D add_71_6 (.A0(r_MB128_Addr[4]), .B0(r_MB128_Bytes[4]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[5]), .B1(r_MB128_Bytes[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8745), .COUT(n8746), .S0(n344[4]), .S1(n344[5]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_6.INIT0 = 16'h5666;
    defparam add_71_6.INIT1 = 16'h5666;
    defparam add_71_6.INJECT1_0 = "NO";
    defparam add_71_6.INJECT1_1 = "NO";
    CCU2D sub_492_add_2_9 (.A0(r_MB128_Bytes[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8755), .COUT(n8756), .S0(n1909[7]), .S1(n1909[8]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_9.INIT0 = 16'h5555;
    defparam sub_492_add_2_9.INIT1 = 16'h5555;
    defparam sub_492_add_2_9.INJECT1_0 = "NO";
    defparam sub_492_add_2_9.INJECT1_1 = "NO";
    PFUMX mux_691_i10 (.BLUT(n1137[9]), .ALUT(n1156[9]), .C0(n1190), .Z(n1191[9]));
    CCU2D sub_492_add_2_7 (.A0(r_MB128_Bytes[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8754), .COUT(n8755), .S0(n1909[5]), .S1(n1909[6]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_7.INIT0 = 16'h5555;
    defparam sub_492_add_2_7.INIT1 = 16'h5555;
    defparam sub_492_add_2_7.INJECT1_0 = "NO";
    defparam sub_492_add_2_7.INJECT1_1 = "NO";
    LUT4 mux_138_i13_4_lut (.A(n506[12]), .B(cmd_buf[11]), .C(n10231), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[12])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i13_4_lut.init = 16'hc0ca;
    LUT4 mux_802_i1_3_lut (.A(ram_data_7__N_436[0]), .B(r_Write_Byte[0]), 
         .C(n1340), .Z(n1341[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_802_i1_3_lut.init = 16'hcaca;
    FD1P3IX rw_len_i2 (.D(n3152), .SP(clk_enable_132), .CD(n4218), .CK(clk), 
            .Q(\rw_len[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rw_len_i2.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i16 (.D(i_Data_c), .SP(clk_enable_135), .CD(n4234), 
            .CK(clk), .Q(r_MB128_Addr[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i16.GSR = "ENABLED";
    FD1P3IX rw_len_i1 (.D(n3158), .SP(clk_enable_132), .CD(n4218), .CK(clk), 
            .Q(rw_len[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rw_len_i1.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i15 (.D(r_MB128_Addr[16]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i15.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i14 (.D(r_MB128_Addr[15]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i14.GSR = "ENABLED";
    LUT4 i5843_2_lut_4_lut (.A(sp_phase[0]), .B(n10236), .C(trigger_wren), 
         .D(wr_buf_7__N_230), .Z(n2042)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i5843_2_lut_4_lut.init = 16'h0200;
    LUT4 i5852_2_lut_4_lut (.A(sp_phase[0]), .B(n10236), .C(trigger_wren), 
         .D(wr_buf_1__N_300), .Z(n2357)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i5852_2_lut_4_lut.init = 16'h0200;
    LUT4 mux_138_i14_4_lut (.A(n506[13]), .B(cmd_buf[12]), .C(n10231), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[13])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i14_4_lut.init = 16'hc0ca;
    FD1P3IX r_MB128_Addr_i0_i13 (.D(r_MB128_Addr[14]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i13.GSR = "ENABLED";
    FD1P3IX cmd_len_i4 (.D(n3168), .SP(clk_enable_87), .CD(n4216), .CK(clk), 
            .Q(cmd_len[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_len_i4.GSR = "ENABLED";
    LUT4 i5788_2_lut_4_lut (.A(sp_phase[0]), .B(n10236), .C(trigger_wren), 
         .D(wr_buf_4__N_267), .Z(n2285)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i5788_2_lut_4_lut.init = 16'h0200;
    LUT4 mux_138_i15_4_lut (.A(n506[14]), .B(cmd_buf[13]), .C(n10231), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i15_4_lut.init = 16'hc0ca;
    FD1P3IX cmd_len_i2 (.D(n3160), .SP(clk_enable_87), .CD(n4216), .CK(clk), 
            .Q(cmd_len[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_len_i2.GSR = "ENABLED";
    LUT4 i9043_2_lut_2_lut_4_lut (.A(n10262), .B(n10283), .C(r_State[0]), 
         .D(clk_enable_135), .Z(n4234)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i9043_2_lut_2_lut_4_lut.init = 16'hf700;
    FD1P3IX cmd_len_i1 (.D(n3162), .SP(clk_enable_87), .CD(n4216), .CK(clk), 
            .Q(cmd_len[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_len_i1.GSR = "ENABLED";
    FD1P3IX cmd_len_i0 (.D(n1214), .SP(clk_enable_87), .CD(n4216), .CK(clk), 
            .Q(cmd_len[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam cmd_len_i0.GSR = "ENABLED";
    FD1P3AX r_State_i0 (.D(r_State_3__N_1[0]), .SP(clk_enable_88), .CK(clk), 
            .Q(r_State[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_i0.GSR = "ENABLED";
    FD1P3AX r_Write_Byte_i0_i0 (.D(r_Write_Byte_7__N_452[0]), .SP(clk_enable_89), 
            .CK(clk), .Q(r_Write_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Write_Byte_i0_i0.GSR = "ENABLED";
    LUT4 i9094_3_lut_4_lut_4_lut (.A(n10249), .B(n8785), .C(n10241), .D(r_State[3]), 
         .Z(clk_enable_147)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i9094_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i5844_2_lut_4_lut (.A(sp_phase[0]), .B(n10236), .C(trigger_wren), 
         .D(wr_buf_3__N_278), .Z(n2321)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i5844_2_lut_4_lut.init = 16'h0200;
    LUT4 i9096_3_lut_4_lut_4_lut (.A(n10261), .B(n8785), .C(n10241), .D(r_State[3]), 
         .Z(clk_enable_146)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i9096_3_lut_4_lut_4_lut.init = 16'h8ccc;
    PFUMX mux_691_i9 (.BLUT(n1137[8]), .ALUT(n1156[8]), .C0(n1190), .Z(n1191[8]));
    CCU2D add_71_4 (.A0(r_MB128_Addr[2]), .B0(r_MB128_Bytes[2]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[3]), .B1(r_MB128_Bytes[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8744), .COUT(n8745), .S0(n344[2]), .S1(n344[3]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_4.INIT0 = 16'h5666;
    defparam add_71_4.INIT1 = 16'h5666;
    defparam add_71_4.INJECT1_0 = "NO";
    defparam add_71_4.INJECT1_1 = "NO";
    LUT4 i9098_3_lut_4_lut_4_lut (.A(n10267), .B(n8785), .C(n10241), .D(r_State[3]), 
         .Z(clk_enable_145)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i9098_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i2_3_lut_4_lut_adj_140 (.A(n10294), .B(n10221), .C(n1393), .D(rd_buf[7]), 
         .Z(n8844)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_140.init = 16'h0d00;
    LUT4 mux_138_i16_4_lut (.A(n506[15]), .B(cmd_buf[14]), .C(n10231), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i16_4_lut.init = 16'hc0ca;
    LUT4 i5845_2_lut_4_lut (.A(sp_phase[0]), .B(n10236), .C(trigger_wren), 
         .D(wr_buf_2__N_289), .Z(n2325)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i5845_2_lut_4_lut.init = 16'h0200;
    LUT4 i4_2_lut (.A(i_Clk_ShiftReg[23]), .B(i_Clk_ShiftReg[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i4_2_lut.init = 16'heeee;
    CCU2D sub_492_add_2_5 (.A0(r_MB128_Bytes[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8753), .COUT(n8754), .S0(n1909[3]), .S1(n1909[4]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_5.INIT0 = 16'h5555;
    defparam sub_492_add_2_5.INIT1 = 16'h5555;
    defparam sub_492_add_2_5.INJECT1_0 = "NO";
    defparam sub_492_add_2_5.INJECT1_1 = "NO";
    LUT4 i5851_2_lut_4_lut (.A(sp_phase[0]), .B(n10236), .C(trigger_wren), 
         .D(wr_buf_5__N_256), .Z(n2351)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i5851_2_lut_4_lut.init = 16'h0200;
    CCU2D add_71_2 (.A0(r_MB128_Addr[0]), .B0(r_MB128_Bytes[0]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[1]), .B1(r_MB128_Bytes[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n8744), .S1(n344[1]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_2.INIT0 = 16'h7000;
    defparam add_71_2.INIT1 = 16'h5666;
    defparam add_71_2.INJECT1_0 = "NO";
    defparam add_71_2.INJECT1_1 = "NO";
    PFUMX mux_691_i8 (.BLUT(n1137[7]), .ALUT(n1156[7]), .C0(n1190), .Z(n1191[7]));
    FD1P3IX r_MB128_Addr_i0_i12 (.D(r_MB128_Addr[13]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i12.GSR = "ENABLED";
    CCU2D sub_492_add_2_3 (.A0(r_MB128_Bytes[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8752), .COUT(n8753), .S0(n1909[1]), .S1(n1909[2]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_3.INIT0 = 16'h5555;
    defparam sub_492_add_2_3.INIT1 = 16'h5555;
    defparam sub_492_add_2_3.INJECT1_0 = "NO";
    defparam sub_492_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_492_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(r_MB128_Bytes[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8752), .S1(n1909[0]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_1.INIT0 = 16'hF000;
    defparam sub_492_add_2_1.INIT1 = 16'h5555;
    defparam sub_492_add_2_1.INJECT1_0 = "NO";
    defparam sub_492_add_2_1.INJECT1_1 = "NO";
    LUT4 mux_138_i17_4_lut (.A(n506[16]), .B(cmd_buf[15]), .C(n10231), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam mux_138_i17_4_lut.init = 16'hc0ca;
    LUT4 i9100_3_lut_4_lut_4_lut (.A(n10248), .B(n8785), .C(n10241), .D(r_State[3]), 
         .Z(clk_enable_144)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i9100_3_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i9092_4_lut_4_lut (.A(i_Data_c), .B(n10257), .C(n10294), .D(r_State[3]), 
         .Z(o_ReadLED_N_609)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam i9092_4_lut_4_lut.init = 16'h0020;
    FD1P3AX sp_active_695 (.D(sp_active_N_719), .SP(clk_enable_91), .CK(clk), 
            .Q(sp_hold_n_N_713)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_active_695.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i11 (.D(r_MB128_Addr[12]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i11.GSR = "ENABLED";
    FD1P3AX sp_clk_694 (.D(n10277), .SP(clk_enable_93), .CK(clk), .Q(sp_clk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_clk_694.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i10 (.D(r_MB128_Addr[11]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i10.GSR = "ENABLED";
    LUT4 i507_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10275), .C(i_Data_c), 
         .D(ram_data_7__N_436[4]), .Z(n2019)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i507_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_831_i1_4_lut (.A(rd_buf[0]), .B(r_Read_Byte[1]), .C(n1393), 
         .D(n10210), .Z(n1394[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_831_i1_4_lut.init = 16'hcac0;
    PFUMX mux_691_i7 (.BLUT(n1137[6]), .ALUT(n1156[6]), .C0(n1190), .Z(n1191[6]));
    FD1P3AX r_MB128_Bits_i0_i2 (.D(n991[2]), .SP(clk_enable_154), .CK(clk), 
            .Q(r_MB128_Bits[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bits_i0_i2.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i1 (.D(rd_buf[1]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i2 (.D(rd_buf[2]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i3 (.D(rd_buf[3]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i4 (.D(rd_buf[4]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i5 (.D(rd_buf[5]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i6 (.D(rd_buf[6]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX r_FetchWrite_Byte_i0_i7 (.D(rd_buf[7]), .SP(clk_enable_102), 
            .CK(clk), .Q(r_FetchWrite_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_FetchWrite_Byte_i0_i7.GSR = "ENABLED";
    FD1P3AX r_Pos_Edge_i2 (.D(r_Pos_Edge_3__N_77[2]), .SP(clk_enable_103), 
            .CK(clk), .Q(\r_Pos_Edge[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Pos_Edge_i2.GSR = "ENABLED";
    FD1S3JX trigger_wren_692 (.D(trigger_wren_N_686), .CK(clk), .PD(n9381), 
            .Q(trigger_wren)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam trigger_wren_692.GSR = "ENABLED";
    FD1P3IX rd_buf_0__687 (.D(sp_miso_c), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_0__687.GSR = "ENABLED";
    FD1P3IX rd_buf_1__686 (.D(rd_buf[0]), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_1__686.GSR = "ENABLED";
    FD1S3AX ram_data_i1 (.D(ram_data_7__N_109[1]), .CK(clk), .Q(ram_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i1.GSR = "ENABLED";
    FD1S3AX ram_data_i2 (.D(ram_data_7__N_109[2]), .CK(clk), .Q(ram_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i2.GSR = "ENABLED";
    FD1S3AX ram_data_i3 (.D(ram_data_7__N_109[3]), .CK(clk), .Q(ram_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i3.GSR = "ENABLED";
    FD1S3AX ram_data_i4 (.D(ram_data_7__N_109[4]), .CK(clk), .Q(ram_data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i4.GSR = "ENABLED";
    FD1S3AX ram_data_i5 (.D(ram_data_7__N_109[5]), .CK(clk), .Q(ram_data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i5.GSR = "ENABLED";
    FD1S3AX ram_data_i6 (.D(ram_data_7__N_109[6]), .CK(clk), .Q(ram_data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i6.GSR = "ENABLED";
    FD1P3AX ram_data_i7 (.D(ram_data_7__N_109[7]), .SP(clk_enable_106), 
            .CK(clk), .Q(ram_data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam ram_data_i7.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i1 (.D(i_Clk_ShiftReg[0]), .CK(clk), .Q(i_Clk_ShiftReg[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i1.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i2 (.D(i_Clk_ShiftReg[1]), .CK(clk), .Q(i_Clk_ShiftReg[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i2.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i3 (.D(i_Clk_ShiftReg[2]), .CK(clk), .Q(i_Clk_ShiftReg[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i3.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i4 (.D(i_Clk_ShiftReg[3]), .CK(clk), .Q(i_Clk_ShiftReg[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i4.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i5 (.D(i_Clk_ShiftReg[4]), .CK(clk), .Q(i_Clk_ShiftReg[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i5.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i6 (.D(i_Clk_ShiftReg[5]), .CK(clk), .Q(i_Clk_ShiftReg[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i6.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i7 (.D(i_Clk_ShiftReg[6]), .CK(clk), .Q(i_Clk_ShiftReg[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i7.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i8 (.D(i_Clk_ShiftReg[7]), .CK(clk), .Q(i_Clk_ShiftReg[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i8.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i9 (.D(i_Clk_ShiftReg[8]), .CK(clk), .Q(i_Clk_ShiftReg[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i9.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i10 (.D(i_Clk_ShiftReg[9]), .CK(clk), .Q(i_Clk_ShiftReg[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i10.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i11 (.D(i_Clk_ShiftReg[10]), .CK(clk), .Q(i_Clk_ShiftReg[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i11.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i12 (.D(i_Clk_ShiftReg[11]), .CK(clk), .Q(i_Clk_ShiftReg[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i12.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i13 (.D(i_Clk_ShiftReg[12]), .CK(clk), .Q(i_Clk_ShiftReg[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i13.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i14 (.D(i_Clk_ShiftReg[13]), .CK(clk), .Q(i_Clk_ShiftReg[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i14.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i15 (.D(i_Clk_ShiftReg[14]), .CK(clk), .Q(i_Clk_ShiftReg[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i15.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i16 (.D(i_Clk_ShiftReg[15]), .CK(clk), .Q(i_Clk_ShiftReg[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i16.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i17 (.D(i_Clk_ShiftReg[16]), .CK(clk), .Q(i_Clk_ShiftReg[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i17.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i18 (.D(i_Clk_ShiftReg[17]), .CK(clk), .Q(i_Clk_ShiftReg[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i18.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i19 (.D(i_Clk_ShiftReg[18]), .CK(clk), .Q(i_Clk_ShiftReg[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i19.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i20 (.D(i_Clk_ShiftReg[19]), .CK(clk), .Q(i_Clk_ShiftReg[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i20.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i21 (.D(i_Clk_ShiftReg[20]), .CK(clk), .Q(i_Clk_ShiftReg[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i21.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i22 (.D(i_Clk_ShiftReg[21]), .CK(clk), .Q(i_Clk_ShiftReg[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i22.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i23 (.D(i_Clk_ShiftReg[22]), .CK(clk), .Q(i_Clk_ShiftReg[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i23.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i24 (.D(i_Clk_ShiftReg[23]), .CK(clk), .Q(i_Clk_ShiftReg[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i24.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i25 (.D(i_Clk_ShiftReg[24]), .CK(clk), .Q(i_Clk_ShiftReg[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i25.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i26 (.D(i_Clk_ShiftReg[25]), .CK(clk), .Q(i_Clk_ShiftReg[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i26.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i27 (.D(i_Clk_ShiftReg[26]), .CK(clk), .Q(i_Clk_ShiftReg[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i27.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i28 (.D(i_Clk_ShiftReg[27]), .CK(clk), .Q(i_Clk_ShiftReg[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i28.GSR = "ENABLED";
    FD1S3AX i_Clk_ShiftReg_i29 (.D(i_Clk_ShiftReg[28]), .CK(clk), .Q(i_Clk_ShiftReg[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i_Clk_ShiftReg_i29.GSR = "ENABLED";
    FD1S3AX sp_phase_i1 (.D(sp_phase_1__N_317[1]), .CK(clk), .Q(sp_phase[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam sp_phase_i1.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i1 (.D(r_State[1]), .SP(r_State_Prev_3__N_381), 
            .CK(clk), .Q(r_State_Prev[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_Prev_i0_i1.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i2 (.D(r_State[2]), .SP(r_State_Prev_3__N_381), 
            .CK(clk), .Q(r_State_Prev[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_Prev_i0_i2.GSR = "ENABLED";
    FD1P3AX r_State_Prev_i0_i3 (.D(r_State[3]), .SP(r_State_Prev_3__N_381), 
            .CK(clk), .Q(r_State_Prev[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_Prev_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_141 (.A(n10229), .B(n10284), .C(n10228), .D(r_State[2]), 
         .Z(n9462)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_141.init = 16'hc044;
    LUT4 i1_2_lut_4_lut_adj_142 (.A(n10228), .B(n10225), .C(r_State[0]), 
         .D(r_State[2]), .Z(n11)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam i1_2_lut_4_lut_adj_142.init = 16'h3500;
    LUT4 i1_2_lut_rep_124_3_lut_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10275), 
         .C(n10260), .D(r_State[2]), .Z(n10223)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_2_lut_rep_124_3_lut_3_lut_4_lut.init = 16'hfd00;
    LUT4 i3511_2_lut_4_lut (.A(n10230), .B(n10246), .C(sp_phase[1]), .D(n2058), 
         .Z(n4201)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i3511_2_lut_4_lut.init = 16'hdf00;
    FD1P3IX rd_buf_2__685 (.D(rd_buf[1]), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_2__685.GSR = "ENABLED";
    FD1P3IX r_Register__i1 (.D(n1653), .SP(clk_enable_114), .CD(n1788), 
            .CK(clk), .Q(r_Register[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Register__i1.GSR = "ENABLED";
    FD1P3IX r_Register__i2 (.D(n1654), .SP(clk_enable_114), .CD(n1788), 
            .CK(clk), .Q(r_Register[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Register__i2.GSR = "ENABLED";
    FD1P3IX r_Register__i3 (.D(n1655), .SP(clk_enable_114), .CD(n1788), 
            .CK(clk), .Q(r_Register[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Register__i3.GSR = "ENABLED";
    FD1P3IX r_Register__i4 (.D(n1656), .SP(clk_enable_114), .CD(n1788), 
            .CK(clk), .Q(r_Register[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Register__i4.GSR = "ENABLED";
    FD1P3IX r_Register__i5 (.D(n1657), .SP(clk_enable_114), .CD(n1788), 
            .CK(clk), .Q(r_Register[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Register__i5.GSR = "ENABLED";
    FD1P3IX r_Register__i6 (.D(n1658), .SP(clk_enable_114), .CD(n1788), 
            .CK(clk), .Q(r_Register[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Register__i6.GSR = "ENABLED";
    FD1P3IX r_Register__i7 (.D(n1659), .SP(clk_enable_114), .CD(n1788), 
            .CK(clk), .Q(r_Register[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Register__i7.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i1 (.D(n1394[1]), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i2 (.D(n1394[2]), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i3 (.D(n1394[3]), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i4 (.D(n1394[4]), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i5 (.D(n1394[5]), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_Read_Byte_i0_i6 (.D(n1394[6]), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_143 (.A(n10230), .B(n10246), .C(sp_phase[1]), 
         .D(n2058), .Z(clk_enable_130)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_4_lut_adj_143.init = 16'hff20;
    LUT4 mux_385_i1_4_lut (.A(ram_data[0]), .B(r_FetchWrite_Byte[0]), .C(n1480), 
         .D(reset_n_c), .Z(ram_data_7__N_436[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[2] 513[43])
    defparam mux_385_i1_4_lut.init = 16'hcac0;
    LUT4 r_State_0__bdd_4_lut (.A(r_State[0]), .B(n13), .C(r_State[1]), 
         .D(r_State[2]), .Z(n10298)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C+(D))+!B)) */ ;
    defparam r_State_0__bdd_4_lut.init = 16'hff7b;
    LUT4 mux_802_i6_3_lut (.A(ram_data_7__N_436[5]), .B(r_Write_Byte[5]), 
         .C(n1340), .Z(n1341[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_802_i6_3_lut.init = 16'hcaca;
    LUT4 i3524_2_lut_4_lut (.A(n10230), .B(n10246), .C(sp_phase[1]), .D(clk_enable_46), 
         .Z(n4218)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i3524_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1_2_lut_4_lut_adj_144 (.A(n10230), .B(n10246), .C(sp_phase[1]), 
         .D(clk_enable_46), .Z(clk_enable_132)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_4_lut_adj_144.init = 16'hff20;
    LUT4 i2_4_lut_adj_145 (.A(n10291), .B(rd_buf_7__N_170), .C(sp_hold_n_N_713), 
         .D(n10254), .Z(clk_enable_41)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i2_4_lut_adj_145.init = 16'h5040;
    LUT4 i5_4_lut_else_4_lut (.A(r_State[0]), .B(n10294), .C(r_State[3]), 
         .D(r_State[1]), .Z(n10299)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i5_4_lut_else_4_lut.init = 16'hff7f;
    LUT4 sp_mosi_I_109_3_lut (.A(wr_buf[7]), .B(cmd_buf[31]), .C(n10254), 
         .Z(sp_mosi_N_727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam sp_mosi_I_109_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(r_State[3]), .B(r_Bit_Count[1]), .C(r_Bit_Count[0]), 
         .D(n9401), .Z(n9402)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0200;
    LUT4 mux_610_i9_3_lut (.A(r_MB128_Bytes[9]), .B(n1909[8]), .C(n1041), 
         .Z(n1042[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i9_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_146 (.A(reset_n_c), .B(r_Stop_Active), .C(n13_adj_757), 
         .D(i_Clk_c), .Z(clk_enable_149)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_146.init = 16'hf5fd;
    PFUMX i33 (.BLUT(n9442), .ALUT(n9400), .C0(r_State[2]), .Z(n20));
    LUT4 i1_4_lut_adj_147 (.A(n10294), .B(n9580), .C(n2567), .D(r_State[3]), 
         .Z(n13_adj_757)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_147.init = 16'ha022;
    LUT4 i7089_3_lut_4_lut (.A(n10280), .B(n10215), .C(r_State[1]), .D(n13), 
         .Z(n7756)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;
    defparam i7089_3_lut_4_lut.init = 16'h202f;
    LUT4 mux_610_i17_3_lut (.A(i_Data_c), .B(n1909[16]), .C(n1041), .Z(n1042[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i17_3_lut.init = 16'hcaca;
    LUT4 mux_385_i4_4_lut (.A(ram_data[3]), .B(r_FetchWrite_Byte[3]), .C(n1480), 
         .D(reset_n_c), .Z(ram_data_7__N_436[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[2] 513[43])
    defparam mux_385_i4_4_lut.init = 16'hcac0;
    LUT4 mux_610_i16_3_lut (.A(r_MB128_Bytes[16]), .B(n1909[15]), .C(n1041), 
         .Z(n1042[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i16_3_lut.init = 16'hcaca;
    LUT4 n10169_bdd_3_lut_4_lut (.A(n10165), .B(r_State[1]), .C(r_State[3]), 
         .D(n10169), .Z(n10170)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam n10169_bdd_3_lut_4_lut.init = 16'h2f20;
    PFUMX i9297 (.BLUT(n10299), .ALUT(n10300), .C0(r_State[2]), .Z(n10301));
    LUT4 i510_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10276), .C(i_Data_c), 
         .D(ram_data_7__N_436[1]), .Z(n2022)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i510_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_129_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10276), .C(n10281), 
         .D(r_Bit_Count[3]), .Z(n10228)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_2_lut_rep_129_3_lut_4_lut.init = 16'hfeff;
    LUT4 mux_610_i15_3_lut (.A(r_MB128_Bytes[15]), .B(n1909[14]), .C(n1041), 
         .Z(n1042[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i15_3_lut.init = 16'hcaca;
    LUT4 mux_385_i3_4_lut (.A(ram_data[2]), .B(r_FetchWrite_Byte[2]), .C(n1480), 
         .D(reset_n_c), .Z(ram_data_7__N_436[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[2] 513[43])
    defparam mux_385_i3_4_lut.init = 16'hcac0;
    LUT4 i1562_3_lut (.A(reset_n_c), .B(i_Clk_c), .C(r_Stop_Active), .Z(n2223)) /* synthesis lut_function=(!(A (B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(518[3] 522[8])
    defparam i1562_3_lut.init = 16'h7575;
    LUT4 mux_610_i1_3_lut (.A(r_MB128_Bytes[1]), .B(n1909[0]), .C(n1041), 
         .Z(n1042[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i1_3_lut.init = 16'hcaca;
    LUT4 mux_385_i7_4_lut (.A(reset_n_c), .B(r_FetchWrite_Byte[6]), .C(n1480), 
         .D(ram_data[6]), .Z(ram_data_7__N_436[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[2] 513[43])
    defparam mux_385_i7_4_lut.init = 16'hcac0;
    LUT4 mux_385_i6_4_lut (.A(ram_data[5]), .B(r_FetchWrite_Byte[5]), .C(n1480), 
         .D(reset_n_c), .Z(ram_data_7__N_436[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[2] 513[43])
    defparam mux_385_i6_4_lut.init = 16'hcac0;
    LUT4 mux_610_i14_3_lut (.A(r_MB128_Bytes[14]), .B(n1909[13]), .C(n1041), 
         .Z(n1042[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i14_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_3_lut (.A(n10215), .B(r_State[3]), .C(n10280), 
         .Z(n22)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_4_lut_3_lut.init = 16'h0404;
    LUT4 i8994_2_lut (.A(r_Bit_Count[0]), .B(clk_enable_57), .Z(n9632)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i8994_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_148 (.A(n10266), .B(n9438), .C(n10265), .D(n9444), 
         .Z(n1340)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(818[7] 858[14])
    defparam i3_4_lut_adj_148.init = 16'h8000;
    FD1P3IX rd_buf_3__684 (.D(rd_buf[2]), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_3__684.GSR = "ENABLED";
    LUT4 i5762_2_lut_3_lut_4_lut (.A(n10283), .B(n10286), .C(i_Data_c), 
         .D(n10294), .Z(n991[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5762_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i9027_2_lut_2_lut_3_lut_4_lut (.A(n10283), .B(n10286), .C(clk_enable_154), 
         .D(n10294), .Z(n6246)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i9027_2_lut_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 mux_802_i7_3_lut (.A(ram_data_7__N_436[6]), .B(r_Write_Byte[6]), 
         .C(n1340), .Z(n1341[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_802_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(r_State[3]), .B(r_Bit_Count[3]), .Z(n9444)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_149 (.A(trigger_wren), .B(n10231), .C(trigger_write), 
         .D(n2058), .Z(clk_enable_17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(398[11] 403[11])
    defparam i2_3_lut_4_lut_adj_149.init = 16'hfffe;
    FD1P3IX rd_buf_4__683 (.D(rd_buf[3]), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_4__683.GSR = "ENABLED";
    FD1P3IX rd_buf_5__682 (.D(rd_buf[4]), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_5__682.GSR = "ENABLED";
    CCU2D add_813_3 (.A0(r_MB128_Addr_Curr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8734), .COUT(n8735), .S0(n830[1]), .S1(n830[2]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_3.INIT0 = 16'h5aaa;
    defparam add_813_3.INIT1 = 16'h5aaa;
    defparam add_813_3.INJECT1_0 = "NO";
    defparam add_813_3.INJECT1_1 = "NO";
    LUT4 i511_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10275), .C(i_Data_c), 
         .D(ram_data_7__N_436[0]), .Z(n2023)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i511_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_610_i13_3_lut (.A(r_MB128_Bytes[13]), .B(n1909[12]), .C(n1041), 
         .Z(n1042[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i13_3_lut.init = 16'hcaca;
    LUT4 mux_610_i12_3_lut (.A(r_MB128_Bytes[12]), .B(n1909[11]), .C(n1041), 
         .Z(n1042[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i12_3_lut.init = 16'hcaca;
    LUT4 i56_4_lut (.A(r_State[0]), .B(n10238), .C(r_State[2]), .D(n9), 
         .Z(n37_adj_758)) /* synthesis lut_function=(!(A (C)+!A (B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i56_4_lut.init = 16'h1a0a;
    LUT4 mux_610_i11_3_lut (.A(r_MB128_Bytes[11]), .B(n1909[10]), .C(n1041), 
         .Z(n1042[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i11_3_lut.init = 16'hcaca;
    PFUMX mux_691_i6 (.BLUT(n1137[5]), .ALUT(n1156[5]), .C0(n1190), .Z(n1191[5]));
    LUT4 mux_610_i10_3_lut (.A(r_MB128_Bytes[10]), .B(n1909[9]), .C(n1041), 
         .Z(n1042[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i10_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut_adj_150 (.A(r_State[2]), .B(n10227), .C(r_State[3]), 
         .D(n10229), .Z(n38)) /* synthesis lut_function=(A (B (C))+!A !(C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_3_lut_4_lut_4_lut_adj_150.init = 16'h8085;
    LUT4 mux_385_i2_4_lut (.A(ram_data[1]), .B(r_FetchWrite_Byte[1]), .C(n1480), 
         .D(reset_n_c), .Z(ram_data_7__N_436[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[2] 513[43])
    defparam mux_385_i2_4_lut.init = 16'hcac0;
    LUT4 mux_534_Mux_3_i5_4_lut (.A(n6532), .B(n10215), .C(r_State[0]), 
         .D(n10238), .Z(n6556)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam mux_534_Mux_3_i5_4_lut.init = 16'hcfca;
    PFUMX mux_691_i5 (.BLUT(n1137[4]), .ALUT(n1156[4]), .C0(n1190), .Z(n1191[4]));
    LUT4 n2904_bdd_4_lut (.A(n2904), .B(n7495), .C(r_State[2]), .D(n10294), 
         .Z(n10165)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n2904_bdd_4_lut.init = 16'hca00;
    FD1P3IX r_MB128_Addr_i0_i9 (.D(r_MB128_Addr[10]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i9.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_151 (.A(n9496), .B(n9531), .C(n36), .D(r_State[1]), 
         .Z(n3936)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_151.init = 16'heccc;
    FD1P3IX r_MB128_Addr_i0_i8 (.D(r_MB128_Addr[9]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i8.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i7 (.D(r_MB128_Addr[8]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i7.GSR = "ENABLED";
    LUT4 i9104_3_lut_4_lut (.A(n3694), .B(n10294), .C(r_State[3]), .D(n3759), 
         .Z(clk_enable_142)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i9104_3_lut_4_lut.init = 16'h0888;
    FD1P3IX r_MB128_Addr_i0_i6 (.D(r_MB128_Addr[7]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i6.GSR = "ENABLED";
    LUT4 i5775_3_lut_4_lut (.A(sp_phase[0]), .B(n10245), .C(wr_buf[6]), 
         .D(wr_buf[5]), .Z(n4846)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(136[15:21])
    defparam i5775_3_lut_4_lut.init = 16'hf4b0;
    FD1P3IX rd_buf_6__681 (.D(rd_buf[5]), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_6__681.GSR = "ENABLED";
    LUT4 wr_buf_3__I_0_3_lut (.A(wr_buf[3]), .B(ram_data[3]), .C(trigger_write), 
         .Z(wr_buf_3__N_278)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam wr_buf_3__I_0_3_lut.init = 16'hcaca;
    FD1P3IX r_MB128_Addr_i0_i5 (.D(r_MB128_Addr[6]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i5.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_139_4_lut (.A(r_Bit_Count[2]), .B(n10275), .C(r_Bit_Count[4]), 
         .D(n10279), .Z(n10238)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i2_3_lut_rep_139_4_lut.init = 16'hffef;
    FD1P3IX rd_buf_7__680 (.D(rd_buf[6]), .SP(clk_enable_130), .CD(n4201), 
            .CK(clk), .Q(rd_buf[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rd_buf_7__680.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i4 (.D(r_MB128_Addr[5]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_152 (.A(r_Bit_Count[2]), .B(n10275), .C(n10279), 
         .D(r_Bit_Count[4]), .Z(n9416)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_3_lut_4_lut_adj_152.init = 16'h0100;
    LUT4 i4111_3_lut (.A(n10215), .B(n13), .C(r_State[0]), .Z(n36)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i4111_3_lut.init = 16'hcaca;
    LUT4 mux_802_i3_3_lut (.A(ram_data_7__N_436[2]), .B(r_Write_Byte[2]), 
         .C(n1340), .Z(n1341[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_802_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_153 (.A(n10280), .B(trigger_read_N_634), 
         .C(n3415), .D(i_Data_c), .Z(n35)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_153.init = 16'hfff2;
    LUT4 i5_3_lut_rep_155 (.A(cmd_len[3]), .B(n10_adj_759), .C(cmd_len[4]), 
         .Z(n10254)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i5_3_lut_rep_155.init = 16'hfefe;
    LUT4 mux_610_i8_3_lut (.A(r_MB128_Bytes[8]), .B(n1909[7]), .C(n1041), 
         .Z(n1042[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i8_3_lut.init = 16'hcaca;
    FD1P3IX rw_len_i0 (.D(n1219), .SP(clk_enable_132), .CD(n4218), .CK(clk), 
            .Q(\rw_len[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam rw_len_i0.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i3 (.D(r_MB128_Addr[4]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_140_4_lut (.A(cmd_len[3]), .B(n10_adj_759), .C(cmd_len[4]), 
         .D(n3257), .Z(n10239)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_2_lut_rep_140_4_lut.init = 16'h0100;
    FD1P3IX r_MB128_Addr_i0_i2 (.D(r_MB128_Addr[3]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i2.GSR = "ENABLED";
    FD1P3IX r_MB128_Addr_i0_i1 (.D(r_MB128_Addr[2]), .SP(clk_enable_135), 
            .CD(n4234), .CK(clk), .Q(r_MB128_Addr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Addr_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_141_4_lut (.A(cmd_len[3]), .B(n10_adj_759), .C(cmd_len[4]), 
         .D(n3257), .Z(n10240)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_2_lut_rep_141_4_lut.init = 16'hfeff;
    FD1P3AX r_Read_Byte_i0_i7 (.D(n8844), .SP(clk_enable_136), .CK(clk), 
            .Q(r_Read_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Read_Byte_i0_i7.GSR = "ENABLED";
    LUT4 sp_active_I_0_720_2_lut_rep_147_4_lut (.A(cmd_len[3]), .B(n10_adj_759), 
         .C(cmd_len[4]), .D(sp_hold_n_N_713), .Z(n10246)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam sp_active_I_0_720_2_lut_rep_147_4_lut.init = 16'hfe00;
    LUT4 i9102_3_lut_4_lut (.A(n3694), .B(n10294), .C(r_State[3]), .D(n3757), 
         .Z(clk_enable_143)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i9102_3_lut_4_lut.init = 16'h0888;
    LUT4 i1_2_lut_adj_154 (.A(r_State[3]), .B(r_State[2]), .Z(n9496)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_adj_154.init = 16'h2222;
    PFUMX mux_691_i4 (.BLUT(n1137[3]), .ALUT(n1156[3]), .C0(n1190), .Z(n1191[3]));
    LUT4 i1_2_lut_rep_111_3_lut_4_lut (.A(n10239), .B(n10282), .C(n10294), 
         .D(read_in_transit), .Z(n10210)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[9] 493[9])
    defparam i1_2_lut_rep_111_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i5780_2_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10281), .C(n10292), 
         .D(n10265), .Z(n6457)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i5780_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i1_4_lut_adj_155 (.A(n9458), .B(n9558), .C(r_State[3]), .D(n10290), 
         .Z(n9531)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_155.init = 16'hcecc;
    FD1P3AX o_WriteLED_654 (.D(o_WriteLED_N_617), .SP(clk_enable_137), .CK(clk), 
            .Q(o_WriteLED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam o_WriteLED_654.GSR = "ENABLED";
    LUT4 mux_802_i5_3_lut (.A(ram_data_7__N_436[4]), .B(r_Write_Byte[4]), 
         .C(n1340), .Z(n1341[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_802_i5_3_lut.init = 16'hcaca;
    FD1P3AX r_State_i3 (.D(r_State_3__N_1[3]), .SP(clk_enable_138), .CK(clk), 
            .Q(r_State[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_i3.GSR = "ENABLED";
    FD1P3AX r_State_i2 (.D(r_State_3__N_1[2]), .SP(clk_enable_139), .CK(clk), 
            .Q(r_State[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_i2.GSR = "ENABLED";
    CCU2D add_813_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(r_MB128_Addr_Curr[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8734), .S1(n830[0]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_1.INIT0 = 16'hF000;
    defparam add_813_1.INIT1 = 16'h5555;
    defparam add_813_1.INJECT1_0 = "NO";
    defparam add_813_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_156 (.A(n10239), .B(n10282), .C(n1393), 
         .D(read_in_transit), .Z(clk_enable_136)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[9] 493[9])
    defparam i1_2_lut_3_lut_4_lut_adj_156.init = 16'hf8f0;
    FD1P3AX r_State_i1 (.D(r_State_3__N_1[1]), .SP(clk_enable_140), .CK(clk), 
            .Q(r_State[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_State_i1.GSR = "ENABLED";
    PFUMX i9272 (.BLUT(n10168), .ALUT(n10167), .C0(r_State[0]), .Z(n10169));
    PFUMX mux_691_i3 (.BLUT(n1137[2]), .ALUT(n1156[2]), .C0(n1190), .Z(n1191[2]));
    FD1P3AX o_ReadLED_653 (.D(o_ReadLED_N_609), .SP(clk_enable_141), .CK(clk), 
            .Q(o_ReadLED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam o_ReadLED_653.GSR = "ENABLED";
    LUT4 i8940_3_lut_4_lut_4_lut (.A(n10215), .B(n10218), .C(r_State[1]), 
         .D(n10280), .Z(n9625)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i8940_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 i1_2_lut_rep_135_3_lut_4_lut (.A(n10294), .B(r_State[2]), .C(n9501), 
         .D(r_State[1]), .Z(n10234)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_rep_135_3_lut_4_lut.init = 16'h2000;
    FD1P3AX r_Write_Byte_i0_i6 (.D(r_Write_Byte_7__N_452[6]), .SP(clk_enable_142), 
            .CK(clk), .Q(r_Write_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Write_Byte_i0_i6.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_157 (.A(r_Bit_Count[3]), .B(n10281), .C(r_Bit_Count[2]), 
         .D(n10288), .Z(n9398)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(826[6:12])
    defparam i2_3_lut_4_lut_adj_157.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10281), .C(n10286), 
         .D(n10261), .Z(n9447)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(826[6:12])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_158 (.A(r_Bit_Count[3]), .B(n10281), 
         .C(r_State[2]), .D(n10261), .Z(n10)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(826[6:12])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_158.init = 16'h0e0f;
    LUT4 i1_4_lut_adj_159 (.A(n9482), .B(n9480), .C(n13), .D(r_State[2]), 
         .Z(n71)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_159.init = 16'hccce;
    LUT4 i15_4_lut (.A(n17_adj_760), .B(n30), .C(n26), .D(n18), .Z(n3415)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_160 (.A(r_MB128_Bytes[7]), .B(r_MB128_Bytes[9]), .Z(n17_adj_760)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i1_2_lut_adj_160.init = 16'heeee;
    FD1P3AX r_Write_Byte_i0_i5 (.D(r_Write_Byte_7__N_452[5]), .SP(clk_enable_143), 
            .CK(clk), .Q(r_Write_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Write_Byte_i0_i5.GSR = "ENABLED";
    LUT4 n33_bdd_4_lut (.A(n10233), .B(n10241), .C(n10280), .D(r_State[0]), 
         .Z(n10145)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;
    defparam n33_bdd_4_lut.init = 16'h3200;
    LUT4 mux_673_i1_4_lut (.A(n830[0]), .B(r_MB128_Addr[1]), .C(n1155), 
         .D(n10213), .Z(n1156[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i1_4_lut.init = 16'hcac0;
    LUT4 i14_4_lut (.A(r_MB128_Bytes[14]), .B(n28), .C(n22_adj_761), .D(r_MB128_Bytes[2]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_119_3_lut_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10281), 
         .C(reset_n_c), .D(n10261), .Z(n10218)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(826[6:12])
    defparam i1_2_lut_rep_119_3_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i5579_2_lut (.A(n830[0]), .B(n1136), .Z(n1137[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5579_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_127_3_lut_4_lut (.A(r_Bit_Count[3]), .B(n10281), .C(r_State[3]), 
         .D(n10265), .Z(n10226)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(826[6:12])
    defparam i1_2_lut_rep_127_3_lut_4_lut.init = 16'he0f0;
    LUT4 mux_673_i2_4_lut (.A(n830[1]), .B(r_MB128_Addr[2]), .C(n1155), 
         .D(n10213), .Z(n1156[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i2_4_lut.init = 16'hcac0;
    LUT4 i5732_2_lut (.A(n830[1]), .B(n1136), .Z(n1137[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5732_2_lut.init = 16'h8888;
    LUT4 r_Bit_Count_5__I_0_765_i11_2_lut_rep_128_2_lut_3_lut_4_lut (.A(r_Bit_Count[3]), 
         .B(n10281), .C(n10275), .D(r_Bit_Count[2]), .Z(n10227)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(826[6:12])
    defparam r_Bit_Count_5__I_0_765_i11_2_lut_rep_128_2_lut_3_lut_4_lut.init = 16'hfeff;
    FD1P3AX r_Write_Byte_i0_i4 (.D(r_Write_Byte_7__N_452[4]), .SP(clk_enable_144), 
            .CK(clk), .Q(r_Write_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Write_Byte_i0_i4.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(n13), .B(r_State[1]), .C(r_State[0]), .Z(n18_adj_762)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_3_lut.init = 16'h4141;
    LUT4 i509_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10287), .C(i_Data_c), 
         .D(ram_data_7__N_436[2]), .Z(n2021)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i509_3_lut_4_lut.init = 16'hfe10;
    LUT4 o_Active_N_592_bdd_4_lut (.A(n10229), .B(r_State[1]), .C(r_State[2]), 
         .D(n10294), .Z(n10168)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam o_Active_N_592_bdd_4_lut.init = 16'h0100;
    PFUMX mux_691_i2 (.BLUT(n1137[1]), .ALUT(n1156[1]), .C0(n1190), .Z(n1191[1]));
    LUT4 r_Bit_Count_5__I_0_780_i11_2_lut_rep_126_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), 
         .B(n10287), .C(n10281), .D(r_Bit_Count[3]), .Z(n10225)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam r_Bit_Count_5__I_0_780_i11_2_lut_rep_126_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX r_Write_Byte_i0_i3 (.D(r_Write_Byte_7__N_452[3]), .SP(clk_enable_145), 
            .CK(clk), .Q(r_Write_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Write_Byte_i0_i3.GSR = "ENABLED";
    LUT4 o_Active_N_592_bdd_3_lut (.A(n10215), .B(r_State[1]), .C(r_State[2]), 
         .Z(n10167)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam o_Active_N_592_bdd_3_lut.init = 16'h8080;
    PFUMX mux_534_Mux_0_i15 (.BLUT(n7_adj_763), .ALUT(n14), .C0(r_State[3]), 
          .Z(r_State_3__N_386[0])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;
    LUT4 mux_673_i3_4_lut (.A(n830[2]), .B(r_MB128_Addr[3]), .C(n1155), 
         .D(n10213), .Z(n1156[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i3_4_lut.init = 16'hcac0;
    LUT4 i5733_2_lut (.A(n830[2]), .B(n1136), .Z(n1137[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5733_2_lut.init = 16'h8888;
    LUT4 mux_802_i4_3_lut (.A(ram_data_7__N_436[3]), .B(r_Write_Byte[3]), 
         .C(n1340), .Z(n1341[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_802_i4_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_148_4_lut (.A(n10294), .B(r_State[1]), .C(r_State[0]), 
         .D(n10283), .Z(n10247)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_rep_148_4_lut.init = 16'h0200;
    PFUMX mux_691_i1 (.BLUT(n1137[0]), .ALUT(n1156[0]), .C0(n1190), .Z(n1191[0]));
    LUT4 mux_673_i4_4_lut (.A(n830[3]), .B(r_MB128_Addr[4]), .C(n1155), 
         .D(n10213), .Z(n1156[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i4_4_lut.init = 16'hcac0;
    PFUMX i8943 (.BLUT(n4854), .ALUT(n62), .C0(sp_phase[1]), .Z(n9628));
    LUT4 i5734_2_lut (.A(n830[3]), .B(n1136), .Z(n1137[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5734_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_rep_130_4_lut (.A(r_Bit_Count[4]), .B(n10279), .C(n9508), 
         .D(n10265), .Z(n10229)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_rep_130_4_lut.init = 16'hf0e0;
    FD1P3AX r_Write_Byte_i0_i2 (.D(r_Write_Byte_7__N_452[2]), .SP(clk_enable_146), 
            .CK(clk), .Q(r_Write_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Write_Byte_i0_i2.GSR = "ENABLED";
    LUT4 mux_673_i5_4_lut (.A(n830[4]), .B(r_MB128_Addr[5]), .C(n1155), 
         .D(n10213), .Z(n1156[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i5_4_lut.init = 16'hcac0;
    PFUMX i8942 (.BLUT(n4846), .ALUT(n66), .C0(sp_phase[1]), .Z(n9627));
    FD1P3AX r_Write_Byte_i0_i1 (.D(r_Write_Byte_7__N_452[1]), .SP(clk_enable_147), 
            .CK(clk), .Q(r_Write_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Write_Byte_i0_i1.GSR = "ENABLED";
    PFUMX mux_804_i1 (.BLUT(n1341[0]), .ALUT(n2023), .C0(n10234), .Z(ram_data_7__N_109[0]));
    LUT4 i1_2_lut_rep_143_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10288), .C(n10281), 
         .D(r_Bit_Count[3]), .Z(n10241)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(816[24:42])
    defparam i1_2_lut_rep_143_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1182_2_lut_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10288), .C(r_Bit_Count[4]), 
         .D(r_Bit_Count[3]), .Z(trigger_write_N_642[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(816[24:42])
    defparam i1182_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i8945 (.BLUT(n71), .ALUT(n56), .C0(r_State[0]), .Z(n4_adj_756));
    LUT4 i5735_2_lut (.A(n830[4]), .B(n1136), .Z(n1137[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5735_2_lut.init = 16'h8888;
    CCU2D add_71_18 (.A0(r_MB128_Addr[16]), .B0(r_MB128_Bytes[16]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8751), .S0(n344[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_18.INIT0 = 16'h5666;
    defparam add_71_18.INIT1 = 16'h0000;
    defparam add_71_18.INJECT1_0 = "NO";
    defparam add_71_18.INJECT1_1 = "NO";
    FD1P3IX r_MB128_Bits_i0_i1 (.D(r_MB128_Bits[2]), .SP(clk_enable_154), 
            .CD(n6246), .CK(clk), .Q(r_MB128_Bits[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bits_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_161 (.A(r_State[3]), .B(n10241), .C(n10252), 
         .D(i_Data_c), .Z(r_Write_Byte_7__N_452[0])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_3_lut_4_lut_adj_161.init = 16'h8000;
    LUT4 i508_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10288), .C(i_Data_c), 
         .D(ram_data_7__N_436[3]), .Z(n2020)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i508_3_lut_4_lut.init = 16'hfb40;
    LUT4 i9008_4_lut (.A(reset_n_c), .B(n10284), .C(n10294), .D(n4_adj_753), 
         .Z(clk_enable_57)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i9008_4_lut.init = 16'h75f5;
    LUT4 mux_673_i6_4_lut (.A(n830[5]), .B(r_MB128_Addr[6]), .C(n1155), 
         .D(n10213), .Z(n1156[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i6_4_lut.init = 16'hcac0;
    LUT4 i5736_2_lut (.A(n830[5]), .B(n1136), .Z(n1137[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5736_2_lut.init = 16'h8888;
    PFUMX i92 (.BLUT(n63), .ALUT(n65), .C0(r_State[2]), .Z(n91));
    LUT4 i10_4_lut (.A(r_MB128_Bytes[5]), .B(r_MB128_Bytes[1]), .C(r_MB128_Bytes[13]), 
         .D(r_MB128_Bytes[3]), .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 mux_673_i7_4_lut (.A(n830[6]), .B(r_MB128_Addr[7]), .C(n1155), 
         .D(n10213), .Z(n1156[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i7_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_162 (.A(clk_enable_57), .B(n8808), .C(n10_adj_764), 
         .D(n8859), .Z(n1786)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_162.init = 16'h2000;
    LUT4 i506_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10276), .C(ram_data_7__N_436[5]), 
         .D(i_Data_c), .Z(n2018)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam i506_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i505_3_lut_4_lut (.A(r_Bit_Count[2]), .B(n10287), .C(ram_data_7__N_436[6]), 
         .D(i_Data_c), .Z(n2017)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i505_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i5737_2_lut (.A(n830[6]), .B(n1136), .Z(n1137[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5737_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_163 (.A(\rw_len[2] ), .B(n10295), .C(rw_len[3]), 
         .D(\rw_len[4] ), .Z(n3164)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(444[21:34])
    defparam i1_3_lut_4_lut_adj_163.init = 16'hfe01;
    LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.A(cmd_len[2]), .B(n10296), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n3168)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(437[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_164.init = 16'hf0e1;
    LUT4 i1273_2_lut_3_lut_4_lut (.A(cmd_len[2]), .B(n10296), .C(cmd_len[4]), 
         .D(cmd_len[3]), .Z(n10_adj_751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(437[17:31])
    defparam i1273_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5600_2_lut_rep_176 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .Z(n10275)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5600_2_lut_rep_176.init = 16'heeee;
    LUT4 i9079_2_lut_rep_149_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10248)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i9079_2_lut_rep_149_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut_adj_165 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(n10284), .D(r_Bit_Count[2]), .Z(n4_adj_765)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i1_3_lut_4_lut_adj_165.init = 16'hef0f;
    LUT4 i9004_2_lut_rep_153_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10252)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i9004_2_lut_rep_153_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_adj_166 (.A(r_State[3]), .B(r_State[0]), .Z(n9501)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam i1_2_lut_adj_166.init = 16'h8888;
    LUT4 mux_610_i6_3_lut (.A(r_MB128_Bytes[6]), .B(n1909[5]), .C(n1041), 
         .Z(n1042[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i6_3_lut.init = 16'hcaca;
    LUT4 mux_610_i5_3_lut (.A(r_MB128_Bytes[5]), .B(n1909[4]), .C(n1041), 
         .Z(n1042[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i5_3_lut.init = 16'hcaca;
    LUT4 mux_610_i4_3_lut (.A(r_MB128_Bytes[4]), .B(n1909[3]), .C(n1041), 
         .Z(n1042[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i4_3_lut.init = 16'hcaca;
    LUT4 mux_610_i3_3_lut (.A(r_MB128_Bytes[3]), .B(n1909[2]), .C(n1041), 
         .Z(n1042[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i3_3_lut.init = 16'hcaca;
    LUT4 mux_610_i2_3_lut (.A(r_MB128_Bytes[2]), .B(n1909[1]), .C(n1041), 
         .Z(n1042[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i2_3_lut.init = 16'hcaca;
    LUT4 i9057_4_lut (.A(reset_n_c), .B(n10294), .C(n10247), .D(n8_adj_750), 
         .Z(clk_enable_135)) /* synthesis lut_function=((B (C+!(D)))+!A) */ ;
    defparam i9057_4_lut.init = 16'hd5dd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_167 (.A(r_State[3]), .B(n10241), .C(n10248), 
         .D(i_Data_c), .Z(r_Write_Byte_7__N_452[4])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_3_lut_4_lut_adj_167.init = 16'h8000;
    LUT4 i1_2_lut_rep_177 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .Z(n10276)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_177.init = 16'hbbbb;
    LUT4 i4_4_lut (.A(n7), .B(n9388), .C(n10259), .D(n10298), .Z(n10_adj_764)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i4_4_lut.init = 16'h2202;
    LUT4 i3_4_lut_adj_168 (.A(trigger_fetchwrite), .B(trigger_read), .C(trigger_wren), 
         .D(trigger_write), .Z(clk_enable_46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(356[4] 370[9])
    defparam i3_4_lut_adj_168.init = 16'hfffe;
    FD1P3AX r_Stop_Active_650 (.D(r_Stop_Active_N_601), .SP(clk_enable_149), 
            .CK(clk), .Q(r_Stop_Active)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Stop_Active_650.GSR = "ENABLED";
    LUT4 i9065_2_lut_rep_150_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10249)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i9065_2_lut_rep_150_3_lut.init = 16'h0404;
    LUT4 i4_4_lut_adj_169 (.A(\rw_len[2] ), .B(\rw_len[4] ), .C(\rw_len[0] ), 
         .D(n6), .Z(rd_buf_7__N_170)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[22:35])
    defparam i4_4_lut_adj_169.init = 16'hfffe;
    LUT4 wr_buf_7__I_0_3_lut (.A(wr_buf[7]), .B(ram_data[7]), .C(trigger_write), 
         .Z(wr_buf_7__N_230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam wr_buf_7__I_0_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(r_State[3]), .B(n10241), .C(n10267), 
         .D(i_Data_c), .Z(r_Write_Byte_7__N_452[3])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'h8000;
    PFUMX i9259 (.BLUT(n10146), .ALUT(n10145), .C0(r_State[1]), .Z(n10147));
    FD1P3IX r_MB128_Bytes_i0_i16 (.D(n1042[16]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i16.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(r_State[3]), .B(n10241), .C(n10249), 
         .D(i_Data_c), .Z(r_Write_Byte_7__N_452[1])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'h8000;
    LUT4 i2_4_lut_adj_172 (.A(r_State[1]), .B(n10260), .C(r_State[2]), 
         .D(n10248), .Z(n8950)) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;
    defparam i2_4_lut_adj_172.init = 16'h4050;
    FD1P3IX r_MB128_Bytes_i0_i15 (.D(n1042[15]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i15.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(r_MB128_Bytes[6]), .B(r_MB128_Bytes[11]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i12_4_lut (.A(r_MB128_Bytes[10]), .B(r_MB128_Bytes[12]), .C(r_MB128_Bytes[15]), 
         .D(r_MB128_Bytes[16]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(r_MB128_Bytes[8]), .B(r_MB128_Bytes[4]), .Z(n22_adj_761)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i6_2_lut.init = 16'heeee;
    PFUMX i8941 (.BLUT(n9624), .ALUT(n9625), .C0(r_State[0]), .Z(n9626));
    LUT4 mux_610_i7_3_lut (.A(r_MB128_Bytes[7]), .B(n1909[6]), .C(n1041), 
         .Z(n1042[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_610_i7_3_lut.init = 16'hcaca;
    LUT4 mux_673_i8_4_lut (.A(n830[7]), .B(r_MB128_Addr[8]), .C(n1155), 
         .D(n10213), .Z(n1156[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i8_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_173 (.A(n9386), .B(n10238), .C(n10241), .D(r_State[0]), 
         .Z(n9388)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_173.init = 16'ha088;
    LUT4 i1_2_lut_rep_138_3_lut_4_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[3]), .D(r_Bit_Count[2]), .Z(n10237)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_2_lut_rep_138_3_lut_4_lut.init = 16'hffbf;
    LUT4 i5738_2_lut (.A(n830[7]), .B(n1136), .Z(n1137[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5738_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_170_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10269)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_170_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_178 (.A(sp_phase[1]), .B(sp_phase[0]), .Z(n10277)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_rep_178.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_174 (.A(r_State[3]), .B(n10241), .C(n10261), 
         .D(i_Data_c), .Z(r_Write_Byte_7__N_452[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_2_lut_3_lut_4_lut_adj_174.init = 16'h8000;
    LUT4 i1_4_lut_adj_175 (.A(n10243), .B(n10288), .C(r_Bit_Count[2]), 
         .D(n9508), .Z(n4_adj_752)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_175.init = 16'heaaa;
    LUT4 mux_673_i9_4_lut (.A(n830[8]), .B(r_MB128_Addr[9]), .C(n1155), 
         .D(n10213), .Z(n1156[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i9_4_lut.init = 16'hcac0;
    LUT4 i5739_2_lut (.A(n830[8]), .B(n1136), .Z(n1137[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5739_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_3_lut (.A(sp_phase[1]), .B(sp_phase[0]), .C(n10245), 
         .Z(n3823)) /* synthesis lut_function=(!(A (B)+!A !(B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i1_4_lut_3_lut.init = 16'h6767;
    LUT4 i1161_2_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .Z(trigger_write_N_642[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(816[24:42])
    defparam i1161_2_lut.init = 16'h6666;
    LUT4 i1306_1_lut_rep_179 (.A(sp_phase[0]), .Z(n10278)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[13:30])
    defparam i1306_1_lut_rep_179.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_4_lut (.A(sp_phase[0]), .B(clk_enable_46), .C(sp_phase[1]), 
         .D(n10246), .Z(clk_enable_87)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[13:30])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hdccc;
    FD1P3IX r_MB128_Bytes_i0_i14 (.D(n1042[14]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i14.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_136_4_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(n10254), .D(sp_hold_n_N_713), .Z(n10235)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[13:30])
    defparam i2_3_lut_rep_136_4_lut_4_lut.init = 16'h4000;
    PFUMX i54 (.BLUT(n11), .ALUT(n37_adj_758), .C0(r_State[1]), .Z(n29));
    PFUMX mux_804_i3 (.BLUT(n1341[2]), .ALUT(n2021), .C0(n10234), .Z(ram_data_7__N_109[2]));
    LUT4 mux_673_i10_4_lut (.A(n830[9]), .B(r_MB128_Addr[10]), .C(n1155), 
         .D(n10213), .Z(n1156[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i10_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_176 (.A(r_State[3]), .B(r_State[1]), .Z(n9482)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_176.init = 16'h2222;
    LUT4 i3518_2_lut_4_lut_4_lut (.A(sp_phase[0]), .B(clk_enable_46), .C(sp_phase[1]), 
         .D(n10246), .Z(n4216)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[13:30])
    defparam i3518_2_lut_4_lut_4_lut.init = 16'h8ccc;
    LUT4 i1_2_lut_rep_180 (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), .Z(n10279)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_180.init = 16'heeee;
    FD1P3IX r_Active_649 (.D(n10229), .SP(clk_enable_153), .CD(n4192), 
            .CK(clk), .Q(o_Active_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Active_649.GSR = "ENABLED";
    FD1P3IX r_MB128_Bits_i0_i0 (.D(r_MB128_Bits[1]), .SP(clk_enable_154), 
            .CD(n6246), .CK(clk), .Q(r_MB128_Bits[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bits_i0_i0.GSR = "ENABLED";
    LUT4 i5740_2_lut (.A(n830[9]), .B(n1136), .Z(n1137[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5740_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_164_3_lut (.A(r_Bit_Count[3]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[4]), .Z(n10263)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_164_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_rep_181 (.A(r_MB128_Bits[2]), .B(r_MB128_Bits[0]), .C(r_MB128_Bits[1]), 
         .Z(n10280)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_181.init = 16'hfefe;
    LUT4 mux_673_i11_4_lut (.A(n830[10]), .B(r_MB128_Addr[11]), .C(n1155), 
         .D(n10213), .Z(n1156[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i11_4_lut.init = 16'hcac0;
    LUT4 i5741_2_lut (.A(n830[10]), .B(n1136), .Z(n1137[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5741_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_154_4_lut (.A(r_MB128_Bits[2]), .B(r_MB128_Bits[0]), 
         .C(r_MB128_Bits[1]), .D(trigger_read_N_634), .Z(n10253)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1_2_lut_rep_154_4_lut.init = 16'h00fe;
    FD1P3IX r_MB128_Bytes_i0_i0 (.D(n1042[0]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i0.GSR = "ENABLED";
    LUT4 r_Bit_Count_5__I_0_765_i9_2_lut_rep_182 (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .Z(n10281)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(844[6:12])
    defparam r_Bit_Count_5__I_0_765_i9_2_lut_rep_182.init = 16'heeee;
    LUT4 i20_3_lut_4_lut (.A(i_Data_c), .B(n3415), .C(trigger_read_N_634), 
         .D(n10280), .Z(n9)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i20_3_lut_4_lut.init = 16'he0e1;
    LUT4 equal_518_i10_2_lut_rep_161_3_lut (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[3]), .Z(n10260)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(844[6:12])
    defparam equal_518_i10_2_lut_rep_161_3_lut.init = 16'hfefe;
    PFUMX mux_804_i7 (.BLUT(n1341[6]), .ALUT(n2017), .C0(n10234), .Z(ram_data_7__N_109[6]));
    LUT4 i3_4_lut_adj_177 (.A(i_Data_c), .B(r_Register[4]), .C(r_Register[6]), 
         .D(n8875), .Z(n9508)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_177.init = 16'h0080;
    LUT4 i4_4_lut_adj_178 (.A(r_Register[7]), .B(r_Register[1]), .C(r_Register[2]), 
         .D(n6_adj_766), .Z(n8875)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_178.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_179 (.A(n10281), .B(n10237), .C(r_State[0]), 
         .D(n3350), .Z(n8859)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(606[11:27])
    defparam i2_3_lut_4_lut_adj_179.init = 16'hf1ff;
    LUT4 i1_2_lut_adj_180 (.A(r_Register[5]), .B(r_Register[3]), .Z(n6_adj_766)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_180.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_181 (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .C(r_Bit_Count[2]), .D(r_Bit_Count[3]), .Z(n9401)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(844[6:12])
    defparam i1_2_lut_3_lut_4_lut_adj_181.init = 16'h0010;
    LUT4 i1_2_lut_rep_183 (.A(sp_phase[1]), .B(sp_phase[0]), .Z(n10282)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_183.init = 16'h8888;
    LUT4 i1_2_lut_rep_125_3_lut_4_lut (.A(sp_phase[1]), .B(sp_phase[0]), 
         .C(n10254), .D(n3257), .Z(n10224)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_125_3_lut_4_lut.init = 16'h0800;
    LUT4 i3_3_lut_4_lut (.A(sp_phase[1]), .B(sp_phase[0]), .C(n3257), 
         .D(n117), .Z(n8)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_182 (.A(sp_phase[1]), .B(sp_phase[0]), .C(sp_active_N_720), 
         .Z(n2297)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_182.init = 16'h8080;
    PFUMX mux_804_i6 (.BLUT(n1341[5]), .ALUT(n2018), .C0(n10234), .Z(ram_data_7__N_109[5]));
    LUT4 i1_2_lut_rep_184 (.A(r_State[2]), .B(r_State[3]), .Z(n10283)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_184.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_183 (.A(r_State[2]), .B(r_State[3]), .C(r_State[1]), 
         .D(n10294), .Z(n3350)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_183.init = 16'h0200;
    LUT4 i2_3_lut_4_lut_adj_184 (.A(r_State[2]), .B(r_State[3]), .C(n10294), 
         .D(n10147), .Z(trigger_read_N_623)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_184.init = 16'h2000;
    LUT4 mux_673_i12_4_lut (.A(n830[11]), .B(r_MB128_Addr[12]), .C(n1155), 
         .D(n10213), .Z(n1156[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i12_4_lut.init = 16'hcac0;
    LUT4 i9060_4_lut (.A(reset_n_c), .B(n9420), .C(n34_adj_768), .D(n39), 
         .Z(clk_enable_76)) /* synthesis lut_function=(!(A (B+(C (D))))) */ ;
    defparam i9060_4_lut.init = 16'h5777;
    LUT4 i5742_2_lut (.A(n830[11]), .B(n1136), .Z(n1137[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5742_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_185 (.A(r_State[2]), .B(r_State[3]), .C(n1266), 
         .D(n10284), .Z(n1155)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_185.init = 16'h2000;
    FD1P3IX r_MB128_Bytes_i0_i13 (.D(n1042[13]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i13.GSR = "ENABLED";
    LUT4 i9025_2_lut_rep_185 (.A(r_State[1]), .B(r_State[0]), .Z(n10284)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9025_2_lut_rep_185.init = 16'h1111;
    LUT4 i2_3_lut_rep_115_4_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .D(n13), .Z(n10214)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_115_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_169_3_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .Z(n10268)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_169_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_156_3_lut_4_lut (.A(r_State[1]), .B(r_State[0]), .C(r_State[3]), 
         .D(r_State[2]), .Z(n10255)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_156_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_4_lut_adj_186 (.A(r_State[1]), .B(r_State[0]), .C(r_State[2]), 
         .D(r_State[3]), .Z(n9380)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut_adj_186.init = 16'hffef;
    LUT4 i2154_2_lut_3_lut_4_lut (.A(r_State[1]), .B(r_State[0]), .C(n10294), 
         .D(r_State[2]), .Z(n2821)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i2154_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_3_lut_adj_187 (.A(r_State[2]), .B(r_State[1]), .C(r_State[0]), 
         .Z(n3136)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam i1_2_lut_3_lut_adj_187.init = 16'hfbfb;
    LUT4 mux_138_i27_3_lut_4_lut (.A(n10246), .B(n10291), .C(cmd_buf[25]), 
         .D(trigger_wren), .Z(cmd_buf_31__N_319[26])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[9] 493[9])
    defparam mux_138_i27_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_187 (.A(r_State[0]), .B(r_State[1]), .Z(n10286)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam i1_2_lut_rep_187.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_188 (.A(n10281), .B(n10237), .C(n10255), .D(n10294), 
         .Z(n34_adj_768)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(606[11:27])
    defparam i1_3_lut_4_lut_adj_188.init = 16'he0ff;
    LUT4 i1_2_lut_rep_151_3_lut_4_lut (.A(r_State[0]), .B(r_State[1]), .C(r_State[3]), 
         .D(r_State[2]), .Z(n10250)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam i1_2_lut_rep_151_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_3_lut_4_lut_adj_189 (.A(n10281), .B(n10237), .C(r_State[1]), 
         .D(r_State[3]), .Z(n68)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(606[11:27])
    defparam i1_3_lut_4_lut_adj_189.init = 16'hf0f1;
    LUT4 i1_2_lut_rep_118_4_lut (.A(n10265), .B(n9508), .C(n10263), .D(r_State[1]), 
         .Z(n10217)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_rep_118_4_lut.init = 16'hffc8;
    LUT4 mux_673_i13_4_lut (.A(n830[12]), .B(r_MB128_Addr[13]), .C(n1155), 
         .D(n10213), .Z(n1156[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i13_4_lut.init = 16'hcac0;
    FD1S3IX r_Bit_Count__i0 (.D(n9632), .CK(clk), .CD(n1786), .Q(r_Bit_Count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_Bit_Count__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_190 (.A(sp_phase[0]), .B(n10240), .C(sp_phase[1]), 
         .D(n117), .Z(n39)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_190.init = 16'hdfff;
    LUT4 i5743_2_lut (.A(n830[12]), .B(n1136), .Z(n1137[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5743_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_188 (.A(r_Bit_Count[0]), .B(r_Bit_Count[1]), .Z(n10287)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_2_lut_rep_188.init = 16'hbbbb;
    LUT4 mux_138_i25_3_lut_4_lut (.A(n10246), .B(n10291), .C(cmd_buf[23]), 
         .D(n2472), .Z(cmd_buf_31__N_319[24])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[9] 493[9])
    defparam mux_138_i25_3_lut_4_lut.init = 16'h20fd;
    LUT4 i9071_2_lut_rep_162_3_lut (.A(r_Bit_Count[0]), .B(r_Bit_Count[1]), 
         .C(r_Bit_Count[2]), .Z(n10261)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i9071_2_lut_rep_162_3_lut.init = 16'h0404;
    LUT4 i2_3_lut_rep_121_4_lut (.A(sp_phase[0]), .B(n10245), .C(sp_phase[1]), 
         .D(n10246), .Z(n10220)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_rep_121_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_171_3_lut (.A(r_Bit_Count[0]), .B(r_Bit_Count[1]), 
         .C(r_Bit_Count[2]), .Z(n10270)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(802[7:28])
    defparam i1_2_lut_rep_171_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_113_3_lut (.A(sp_phase[0]), .B(n10245), .C(sp_phase[1]), 
         .Z(n10212)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_rep_113_3_lut.init = 16'h0404;
    LUT4 i2_2_lut_rep_189 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .Z(n10288)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_189.init = 16'h8888;
    FD1P3IX r_MB128_Bytes_i0_i12 (.D(n1042[12]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i12.GSR = "ENABLED";
    LUT4 i21_3_lut_4_lut (.A(i_Data_c), .B(n3415), .C(n10280), .D(trigger_read_N_634), 
         .Z(n3[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i21_3_lut_4_lut.init = 16'hef10;
    LUT4 i5855_2_lut_3_lut (.A(i_Data_c), .B(n3415), .C(trigger_read_N_634), 
         .Z(n6532)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i5855_2_lut_3_lut.init = 16'he0e0;
    LUT4 mux_673_i14_4_lut (.A(n830[13]), .B(r_MB128_Addr[14]), .C(n1155), 
         .D(n10213), .Z(n1156[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i14_4_lut.init = 16'hcac0;
    LUT4 i1175_2_lut_3_lut_4_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[3]), .D(r_Bit_Count[2]), .Z(trigger_write_N_642[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1175_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i29_4_lut (.A(n45), .B(n58), .C(n54), .D(n46), .Z(i_Clk_Debounce_N_595)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i29_4_lut.init = 16'h8000;
    PFUMX i33_adj_191 (.BLUT(n9462), .ALUT(n19), .C0(r_State[3]), .Z(n27));
    LUT4 i5744_2_lut (.A(n830[13]), .B(n1136), .Z(n1137[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5744_2_lut.init = 16'h8888;
    LUT4 i1170_2_lut_rep_166_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10265)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1170_2_lut_rep_166_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_192 (.A(rw_len[1]), .B(\rw_len[0] ), .Z(n3158)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_192.init = 16'h9999;
    PFUMX mux_804_i5 (.BLUT(n1341[4]), .ALUT(n2019), .C0(n10234), .Z(ram_data_7__N_109[4]));
    LUT4 i2_3_lut_4_lut_adj_193 (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_MB128_Bits[2]), .D(r_Bit_Count[2]), .Z(n8936)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;
    defparam i2_3_lut_4_lut_adj_193.init = 16'h8778;
    LUT4 i1_2_lut_rep_134 (.A(r_MB128_Bytes[0]), .B(n3415), .Z(n10233)) /* synthesis lut_function=((B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i1_2_lut_rep_134.init = 16'hdddd;
    LUT4 mux_673_i15_4_lut (.A(n830[14]), .B(r_MB128_Addr[15]), .C(n1155), 
         .D(n10213), .Z(n1156[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i15_4_lut.init = 16'hcac0;
    FD1P3IX r_MB128_Bytes_i0_i11 (.D(n1042[11]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i11.GSR = "ENABLED";
    LUT4 i1168_2_lut_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .C(r_Bit_Count[2]), 
         .Z(trigger_write_N_642[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1168_2_lut_3_lut.init = 16'h7878;
    LUT4 i8921_2_lut_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), .C(r_Bit_Count[2]), 
         .Z(n9603)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i8921_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_adj_194 (.A(write_in_transit), .B(read_in_transit), .Z(n117)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_194.init = 16'heeee;
    FD1P3IX r_MB128_Bytes_i0_i10 (.D(n1042[10]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i10.GSR = "ENABLED";
    LUT4 i9074_2_lut_rep_168_3_lut (.A(r_Bit_Count[1]), .B(r_Bit_Count[0]), 
         .C(r_Bit_Count[2]), .Z(n10267)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i9074_2_lut_rep_168_3_lut.init = 16'h0808;
    LUT4 i9085_2_lut_rep_190 (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), .Z(n10289)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9085_2_lut_rep_190.init = 16'h1111;
    LUT4 i5745_2_lut (.A(n830[14]), .B(n1136), .Z(n1137[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5745_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_116_4_lut (.A(r_MB128_Bytes[0]), .B(n3415), .C(n10265), 
         .D(n10263), .Z(n10215)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i2_3_lut_rep_116_4_lut.init = 16'hffdf;
    LUT4 r_State_0__bdd_2_lut_3_lut_4_lut (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .C(n4_adj_765), .D(r_Bit_Count[3]), .Z(n10023)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam r_State_0__bdd_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_195 (.A(cmd_len[2]), .B(cmd_len[5]), .C(cmd_len[0]), 
         .D(cmd_len[1]), .Z(n10_adj_759)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i4_4_lut_adj_195.init = 16'hfffe;
    LUT4 mux_673_i16_4_lut (.A(n830[15]), .B(r_MB128_Addr[16]), .C(n1155), 
         .D(n10213), .Z(n1156[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i16_4_lut.init = 16'hcac0;
    FD1P3IX r_MB128_Bytes_i0_i9 (.D(n1042[9]), .SP(clk_enable_160), .CD(n4190), 
            .CK(clk), .Q(r_MB128_Bytes[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=36, LSE_RLINE=59 */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam r_MB128_Bytes_i0_i9.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_117_4_lut (.A(r_MB128_Bytes[0]), .B(n3415), .C(n10260), 
         .D(n10265), .Z(n10216)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(660[12:53])
    defparam i2_3_lut_rep_117_4_lut.init = 16'h0d00;
    LUT4 i5746_2_lut (.A(n830[15]), .B(n1136), .Z(n1137[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5746_2_lut.init = 16'h8888;
    LUT4 i3_3_lut_4_lut_adj_196 (.A(r_Bit_Count[4]), .B(r_Bit_Count[5]), 
         .C(n9444), .D(n4_adj_765), .Z(n9445)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_3_lut_4_lut_adj_196.init = 16'h0010;
    LUT4 i2003_3_lut_4_lut (.A(n10244), .B(n9501), .C(n10265), .D(n1340), 
         .Z(n2670)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i2003_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_adj_197 (.A(cmd_len[1]), .B(cmd_len[0]), .Z(n3162)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_197.init = 16'h9999;
    LUT4 i698_1_lut (.A(cmd_len[0]), .Z(n1214)) /* synthesis lut_function=(!(A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(168[10] 880[5])
    defparam i698_1_lut.init = 16'h5555;
    PFUMX i53 (.BLUT(n37), .ALUT(n40), .C0(r_State[1]), .Z(n31));
    LUT4 i1_2_lut_rep_191 (.A(r_State[1]), .B(r_State[0]), .Z(n10290)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_2_lut_rep_191.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_198 (.A(r_State[1]), .B(r_State[0]), .C(n13), 
         .Z(n9525)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_2_lut_3_lut_adj_198.init = 16'h8080;
    LUT4 i8939_4_lut_4_lut_4_lut (.A(n10238), .B(n3[0]), .C(r_State[1]), 
         .D(n10228), .Z(n9624)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(651[11:28])
    defparam i8939_4_lut_4_lut_4_lut.init = 16'h404f;
    LUT4 i9040_4_lut (.A(reset_n_c), .B(n3901), .C(r_State[3]), .D(n9_adj_770), 
         .Z(clk_enable_88)) /* synthesis lut_function=(!(A (B+(C (D))))) */ ;
    defparam i9040_4_lut.init = 16'h5777;
    LUT4 mux_673_i17_4_lut (.A(n830[16]), .B(i_Data_c), .C(n1155), .D(n10213), 
         .Z(n1156[16])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_673_i17_4_lut.init = 16'hcac0;
    LUT4 i5747_2_lut (.A(n830[16]), .B(n1136), .Z(n1137[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i5747_2_lut.init = 16'h8888;
    LUT4 i21_4_lut (.A(n9525), .B(n7495), .C(r_State[2]), .D(n10262), 
         .Z(n9_adj_770)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i21_4_lut.init = 16'hca0a;
    LUT4 sp_phase_1__I_0_722_i3_2_lut_rep_192 (.A(sp_phase[0]), .B(sp_phase[1]), 
         .Z(n10291)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(375[8:25])
    defparam sp_phase_1__I_0_722_i3_2_lut_rep_192.init = 16'heeee;
    LUT4 i1_4_lut_then_4_lut (.A(n10294), .B(r_State[3]), .C(r_State[2]), 
         .D(r_State[0]), .Z(n10303)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_4_lut_then_4_lut.init = 16'h2000;
    LUT4 i9053_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_hold_n_N_713), 
         .D(sp_end_desel), .Z(clk_enable_11)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(375[8:25])
    defparam i9053_3_lut_4_lut.init = 16'h1011;
    LUT4 i1133_2_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_hold_n_N_713), 
         .Z(n1791)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(375[8:25])
    defparam i1133_2_lut_3_lut.init = 16'h1010;
    L6MUX21 i8944 (.D0(n9627), .D1(n9628), .SD(trigger_write), .Z(n9629));
    LUT4 i1_2_lut_adj_199 (.A(rw_len[3]), .B(rw_len[1]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[22:35])
    defparam i1_2_lut_adj_199.init = 16'heeee;
    LUT4 i1542_2_lut_3_lut (.A(sp_phase[0]), .B(sp_phase[1]), .C(sp_end_desel), 
         .Z(clk_enable_43)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(375[8:25])
    defparam i1542_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_adj_200 (.A(n27), .B(n9531), .Z(n3901)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_200.init = 16'heeee;
    LUT4 i152_2_lut_rep_132_3_lut_4_lut (.A(sp_phase[0]), .B(sp_phase[1]), 
         .C(n10254), .D(sp_hold_n_N_713), .Z(n10231)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(375[8:25])
    defparam i152_2_lut_rep_132_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_193 (.A(r_State[1]), .B(r_State[2]), .Z(n10292)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_2_lut_rep_193.init = 16'h2222;
    LUT4 i20_4_lut (.A(i_Clk_ShiftReg[12]), .B(i_Clk_ShiftReg[20]), .C(i_Clk_ShiftReg[19]), 
         .D(i_Clk_ShiftReg[24]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(i_Clk_ShiftReg[28]), .B(i_Clk_ShiftReg[10]), .Z(n38_adj_771)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_201 (.A(r_Bit_Count[0]), .B(n8936), .C(n4_adj_772), 
         .D(r_MB128_Bits[0]), .Z(n9389)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(804[11:44])
    defparam i2_4_lut_adj_201.init = 16'hfedf;
    LUT4 i15_2_lut (.A(i_Clk_ShiftReg[5]), .B(i_Clk_ShiftReg[21]), .Z(n45)) /* synthesis lut_function=(A (B)) */ ;
    defparam i15_2_lut.init = 16'h8888;
    LUT4 i26_4_lut (.A(i_Clk_ShiftReg[8]), .B(n52), .C(n42), .D(i_Clk_ShiftReg[9]), 
         .Z(n56_adj_773)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i26_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_158_3_lut_3_lut (.A(r_State[0]), .B(r_State[1]), .C(r_State[2]), 
         .Z(n10257)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_rep_158_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut_adj_202 (.A(sp_phase[0]), .B(n10245), .C(wr_buf[0]), 
         .Z(n9466)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_202.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_4_lut_adj_203 (.A(r_State[0]), .B(n10215), .C(n10214), 
         .D(n10292), .Z(n19)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_3_lut_4_lut_4_lut_adj_203.init = 16'hf4f0;
    LUT4 i5779_3_lut_4_lut (.A(sp_phase[0]), .B(n10245), .C(ram_data[6]), 
         .D(wr_buf[5]), .Z(n4854)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(136[15:21])
    defparam i5779_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i1690 (.BLUT(n9469), .ALUT(n2351), .C0(sp_phase[1]), .Z(n2352));
    LUT4 i1_2_lut_4_lut_adj_204 (.A(n10240), .B(sp_phase[0]), .C(write_in_transit), 
         .D(wr_buf[6]), .Z(n66)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_4_lut_adj_204.init = 16'hbf00;
    LUT4 i28_4_lut (.A(n37_adj_774), .B(n56_adj_775), .C(n50_adj_776), 
         .D(n38_adj_777), .Z(n58)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i28_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_adj_205 (.A(n3694), .B(n10294), .C(n3136), .D(r_State[3]), 
         .Z(n8785)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_205.init = 16'h0888;
    LUT4 i24_4_lut (.A(i_Clk_ShiftReg[29]), .B(n48_adj_778), .C(n34_adj_779), 
         .D(i_Clk_ShiftReg[13]), .Z(n54)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i24_4_lut.init = 16'h8000;
    LUT4 i16_4_lut (.A(i_Clk_ShiftReg[14]), .B(i_Clk_ShiftReg[1]), .C(i_Clk_ShiftReg[4]), 
         .D(i_Clk_ShiftReg[0]), .Z(n46)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'h8000;
    LUT4 i7_2_lut (.A(i_Clk_ShiftReg[7]), .B(i_Clk_ShiftReg[15]), .Z(n37_adj_774)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7_2_lut.init = 16'h8888;
    CCU2D add_71_16 (.A0(r_MB128_Addr[14]), .B0(r_MB128_Bytes[14]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[15]), .B1(r_MB128_Bytes[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8750), .COUT(n8751), .S0(n344[14]), 
          .S1(n344[15]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_16.INIT0 = 16'h5666;
    defparam add_71_16.INIT1 = 16'h5666;
    defparam add_71_16.INJECT1_0 = "NO";
    defparam add_71_16.INJECT1_1 = "NO";
    LUT4 i26_4_lut_adj_206 (.A(i_Clk_ShiftReg[8]), .B(n52_adj_780), .C(n42_adj_781), 
         .D(i_Clk_ShiftReg[9]), .Z(n56_adj_775)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i26_4_lut_adj_206.init = 16'h8000;
    LUT4 i1_4_lut_adj_207 (.A(n9447), .B(r_State[3]), .C(trigger_read_N_634), 
         .D(r_State[2]), .Z(n3694)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_207.init = 16'hcecc;
    LUT4 i1_2_lut_adj_208 (.A(r_Bit_Count[1]), .B(r_MB128_Bits[1]), .Z(n4_adj_772)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(816[24:42])
    defparam i1_2_lut_adj_208.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_adj_209 (.A(sp_phase[0]), .B(n10245), .C(wr_buf[3]), 
         .Z(n9472)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_209.init = 16'h4040;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(r_State[0]), .B(n10280), .C(n10215), 
         .D(n10292), .Z(n9456)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i4_4_lut_adj_210 (.A(n9386), .B(n10238), .C(r_State[0]), .D(n10253), 
         .Z(trigger_fetchwrite_N_675)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_210.init = 16'h0200;
    LUT4 i3_4_lut_adj_211 (.A(r_Bit_Count[3]), .B(n9389), .C(n10265), 
         .D(n10289), .Z(n13)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(804[11:44])
    defparam i3_4_lut_adj_211.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(r_State[0]), .B(n10294), .C(r_State[2]), 
         .D(r_State[1]), .Z(n8_c)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0c04;
    LUT4 i1376_2_lut_rep_175_2_lut (.A(r_State[0]), .B(r_State[1]), .Z(n10274)) /* synthesis lut_function=((B)+!A) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1376_2_lut_rep_175_2_lut.init = 16'hdddd;
    LUT4 i20_4_lut_adj_212 (.A(i_Clk_ShiftReg[12]), .B(i_Clk_ShiftReg[20]), 
         .C(i_Clk_ShiftReg[19]), .D(i_Clk_ShiftReg[24]), .Z(n50_adj_776)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20_4_lut_adj_212.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_213 (.A(r_State[1]), .B(r_State[2]), .C(r_State[0]), 
         .D(i_Data_c), .Z(n3354)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i2_3_lut_4_lut_adj_213.init = 16'h0020;
    LUT4 n33_bdd_3_lut_4_lut_4_lut (.A(r_State[0]), .B(trigger_read_N_634), 
         .C(n10237), .D(n10281), .Z(n10146)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam n33_bdd_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_4_lut_adj_214 (.A(r_State[0]), .B(n9480), .C(n18_adj_762), 
         .D(n9604), .Z(n9494)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_4_lut_4_lut_adj_214.init = 16'hf400;
    PFUMX i1664 (.BLUT(n9465), .ALUT(n2325), .C0(sp_phase[1]), .Z(n2326));
    LUT4 i1_2_lut_adj_215 (.A(sp_phase[0]), .B(sp_hold_n_N_713), .Z(clk_enable_93)) /* synthesis lut_function=(A (B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(148[13:21])
    defparam i1_2_lut_adj_215.init = 16'h8888;
    LUT4 i8_2_lut_adj_216 (.A(i_Clk_ShiftReg[28]), .B(i_Clk_ShiftReg[10]), 
         .Z(n38_adj_777)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8_2_lut_adj_216.init = 16'h8888;
    LUT4 i2_4_lut_4_lut (.A(r_State[0]), .B(n9480), .C(n68), .D(n9402), 
         .Z(n65)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_4_lut_4_lut.init = 16'hffdc;
    CCU2D add_813_17 (.A0(r_MB128_Addr_Curr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8741), .S0(n830[15]), .S1(n830[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_17.INIT0 = 16'h5aaa;
    defparam add_813_17.INIT1 = 16'h5aaa;
    defparam add_813_17.INJECT1_0 = "NO";
    defparam add_813_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(r_State[1]), .B(r_State[3]), .C(r_Read_Byte[0]), 
         .D(r_State[0]), .Z(n9442)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i22_4_lut_adj_217 (.A(i_Clk_ShiftReg[25]), .B(i_Clk_ShiftReg[6]), 
         .C(i_Clk_ShiftReg[27]), .D(i_Clk_ShiftReg[17]), .Z(n52_adj_780)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i22_4_lut_adj_217.init = 16'h8000;
    LUT4 i1_2_lut_rep_173_2_lut (.A(r_State[0]), .B(r_State[3]), .Z(n10272)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_rep_173_2_lut.init = 16'h4444;
    LUT4 mux_534_Mux_0_i7_4_lut_4_lut (.A(r_State[0]), .B(r_State[2]), .C(n9626), 
         .D(n10217), .Z(n7_adj_763)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam mux_534_Mux_0_i7_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i4_4_lut_adj_218 (.A(r_Bit_Count[3]), .B(n9438), .C(r_Bit_Count[1]), 
         .D(n6_adj_782), .Z(n1266)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4_4_lut_adj_218.init = 16'h0800;
    LUT4 i1_2_lut_adj_219 (.A(r_Bit_Count[2]), .B(r_Bit_Count[0]), .Z(n6_adj_782)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_219.init = 16'h4444;
    LUT4 i12_2_lut_adj_220 (.A(i_Clk_ShiftReg[16]), .B(i_Clk_ShiftReg[3]), 
         .Z(n42_adj_781)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12_2_lut_adj_220.init = 16'h8888;
    LUT4 i18_4_lut_adj_221 (.A(i_Clk_ShiftReg[2]), .B(i_Clk_ShiftReg[18]), 
         .C(i_Clk_ShiftReg[11]), .D(i_Clk_ShiftReg[22]), .Z(n48_adj_778)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i18_4_lut_adj_221.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_222 (.A(r_State[0]), .B(n9603), .C(n9482), 
         .D(n10260), .Z(n23)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_4_lut_4_lut_adj_222.init = 16'h5575;
    LUT4 i2_4_lut_4_lut_adj_223 (.A(r_State[0]), .B(n6457), .C(n8950), 
         .D(n10259), .Z(n8808)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_4_lut_4_lut_adj_223.init = 16'h5400;
    LUT4 i4_2_lut_adj_224 (.A(i_Clk_ShiftReg[23]), .B(i_Clk_ShiftReg[26]), 
         .Z(n34_adj_779)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut_adj_224.init = 16'h8888;
    PFUMX i1660 (.BLUT(n9467), .ALUT(n2321), .C0(sp_phase[1]), .Z(n2322));
    LUT4 i2_3_lut_4_lut_4_lut_adj_225 (.A(r_State[0]), .B(n10251), .C(i_Data_c), 
         .D(n10292), .Z(r_Pos_Edge_3__N_77[2])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_3_lut_4_lut_4_lut_adj_225.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(r_State[0]), .B(n10260), .C(n10275), 
         .D(r_Bit_Count[2]), .Z(n7495)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h5455;
    LUT4 i2_3_lut_4_lut_adj_226 (.A(r_State[1]), .B(r_State[2]), .C(n3936), 
         .D(n6556), .Z(n9410)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_226.init = 16'h0008;
    PFUMX mux_804_i2 (.BLUT(n1341[1]), .ALUT(n2022), .C0(n10234), .Z(ram_data_7__N_109[1]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_227 (.A(r_State[1]), .B(r_State[2]), .C(r_State[3]), 
         .D(n10294), .Z(n9386)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_227.init = 16'h0800;
    LUT4 mux_884_i1_4_lut (.A(n2043), .B(wr_buf_7__N_230), .C(n3823), 
         .D(trigger_wren), .Z(wr_buf_7__N_225)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_884_i1_4_lut.init = 16'h0aca;
    CCU2D add_71_14 (.A0(r_MB128_Addr[12]), .B0(r_MB128_Bytes[12]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[13]), .B1(r_MB128_Bytes[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8749), .COUT(n8750), .S0(n344[12]), 
          .S1(n344[13]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_14.INIT0 = 16'h5666;
    defparam add_71_14.INIT1 = 16'h5666;
    defparam add_71_14.INJECT1_0 = "NO";
    defparam add_71_14.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_228 (.A(sp_phase[0]), .B(n10245), .C(wr_buf[6]), 
         .Z(n9470)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_228.init = 16'h4040;
    LUT4 i1_3_lut_3_lut_4_lut (.A(r_State[1]), .B(r_State[2]), .C(n10216), 
         .D(r_State[0]), .Z(n9030)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h8088;
    LUT4 i5_4_lut_then_4_lut (.A(r_State[0]), .B(n10294), .C(r_State[3]), 
         .D(r_State[1]), .Z(n10300)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i5_4_lut_then_4_lut.init = 16'hfff7;
    LUT4 i1_2_lut_rep_167_3_lut (.A(r_State[2]), .B(r_State[0]), .C(r_State[1]), 
         .Z(n10266)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_167_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_229 (.A(reset_n_c), .B(n10294), .C(n10250), .D(n9408), 
         .Z(clk_enable_154)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_229.init = 16'hddd5;
    LUT4 i3082_2_lut_rep_133_4_lut (.A(n10279), .B(n10252), .C(r_Bit_Count[4]), 
         .D(r_State[0]), .Z(n10232)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i3082_2_lut_rep_133_4_lut.init = 16'h00bf;
    LUT4 i8900_2_lut_3_lut (.A(r_State[2]), .B(r_State[0]), .C(r_State[1]), 
         .Z(n9580)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8900_2_lut_3_lut.init = 16'hfefe;
    LUT4 i755_2_lut_rep_195 (.A(i_Clk_Prev), .B(i_Clk_Debounce), .Z(n10294)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i755_2_lut_rep_195.init = 16'h4444;
    LUT4 i1_2_lut_4_lut_4_lut_adj_230 (.A(r_State[1]), .B(r_State[3]), .C(r_State[0]), 
         .D(n10218), .Z(n4)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i1_2_lut_4_lut_4_lut_adj_230.init = 16'h4000;
    LUT4 i1_4_lut_adj_231 (.A(r_State[3]), .B(r_State[1]), .C(r_State[0]), 
         .D(r_State[2]), .Z(n9408)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i1_4_lut_adj_231.init = 16'h1040;
    LUT4 i2_3_lut_4_lut_adj_232 (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n3510), 
         .D(n10216), .Z(n1041)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i2_3_lut_4_lut_adj_232.init = 16'h4000;
    LUT4 i2570_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n9380), 
         .D(n9539), .Z(n3248)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i2570_3_lut_4_lut.init = 16'hbfb0;
    LUT4 i1_2_lut_rep_152_3_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(r_State[3]), 
         .Z(n10251)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_rep_152_3_lut.init = 16'h0404;
    LUT4 i9030_4_lut (.A(n10251), .B(reset_n_c), .C(n10268), .D(n9536), 
         .Z(n1788)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (D)))) */ ;
    defparam i9030_4_lut.init = 16'h31f5;
    LUT4 i9113_2_lut (.A(n9750), .B(i_Clk_Debounce_N_595), .Z(clk_enable_16)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9113_2_lut.init = 16'heeee;
    LUT4 i4175_4_lut (.A(n9629), .B(n10212), .C(trigger_wren), .D(wr_buf[5]), 
         .Z(wr_buf_6__N_240)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(125[9:21])
    defparam i4175_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_3_lut_adj_233 (.A(sp_phase[0]), .B(n10245), .C(wr_buf[2]), 
         .Z(n9467)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_233.init = 16'h4040;
    LUT4 mux_864_i1_4_lut (.A(n2352), .B(wr_buf_5__N_256), .C(n3823), 
         .D(trigger_wren), .Z(wr_buf_5__N_251)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_864_i1_4_lut.init = 16'h0aca;
    LUT4 i2_4_lut_adj_234 (.A(n10259), .B(n1), .C(n10274), .D(r_State[2]), 
         .Z(n9536)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_234.init = 16'hddfd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_235 (.A(n3257), .B(n10254), .C(n10282), 
         .D(write_in_transit), .Z(trigger_wren_N_686)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_2_lut_3_lut_4_lut_adj_235.init = 16'h2000;
    LUT4 i9112_4_lut (.A(n45_adj_783), .B(n58_adj_784), .C(n54_adj_785), 
         .D(n46_adj_786), .Z(n9750)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9112_4_lut.init = 16'h0001;
    LUT4 wr_buf_5__I_0_3_lut (.A(wr_buf[5]), .B(ram_data[5]), .C(trigger_write), 
         .Z(wr_buf_5__N_256)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam wr_buf_5__I_0_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_236 (.A(i_Clk_Prev), .B(i_Clk_Debounce), 
         .C(r_Bit_Count[5]), .D(r_Bit_Count[4]), .Z(n9438)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_3_lut_4_lut_adj_236.init = 16'h0004;
    LUT4 i9123_4_lut (.A(n8838), .B(reset_n_c), .C(n10294), .D(n9418), 
         .Z(clk_enable_160)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;
    defparam i9123_4_lut.init = 16'h1151;
    LUT4 i9032_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n9620), 
         .D(reset_n_c), .Z(clk_enable_137)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i9032_3_lut_4_lut.init = 16'h40ff;
    PFUMX i9203 (.BLUT(n10024), .ALUT(n10023), .C0(r_State[3]), .Z(n10025));
    LUT4 i1_2_lut_rep_137_3_lut (.A(n3257), .B(n10254), .C(write_in_transit), 
         .Z(n10236)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_2_lut_rep_137_3_lut.init = 16'h2020;
    LUT4 i2_4_lut_adj_237 (.A(n10171), .B(n1063), .C(reset_n_c), .D(n10294), 
         .Z(n8838)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i2_4_lut_adj_237.init = 16'h2000;
    LUT4 i15_2_lut_adj_238 (.A(i_Clk_ShiftReg[5]), .B(i_Clk_ShiftReg[21]), 
         .Z(n45_adj_783)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i15_2_lut_adj_238.init = 16'heeee;
    LUT4 mux_385_i5_4_lut (.A(ram_data[4]), .B(r_FetchWrite_Byte[4]), .C(n1480), 
         .D(reset_n_c), .Z(ram_data_7__N_436[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(512[2] 513[43])
    defparam mux_385_i5_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_145_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), 
         .C(r_State[1]), .D(r_State[2]), .Z(n10244)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_rep_145_3_lut_4_lut.init = 16'h0040;
    LUT4 i9017_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n10027), 
         .D(reset_n_c), .Z(clk_enable_15)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i9017_3_lut_4_lut.init = 16'h04ff;
    LUT4 i2_3_lut_4_lut_adj_239 (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(r_State[3]), 
         .D(n2567), .Z(r_Stop_Active_N_601)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i2_3_lut_4_lut_adj_239.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_adj_240 (.A(sp_phase[0]), .B(n10245), .C(wr_buf[1]), 
         .Z(n9465)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_240.init = 16'h4040;
    LUT4 i1_4_lut_adj_241 (.A(reset_n_c), .B(n10294), .C(n30_adj_787), 
         .D(n39_adj_788), .Z(clk_enable_103)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_241.init = 16'hddd5;
    LUT4 i1_2_lut_rep_159_3_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(r_State[2]), 
         .Z(n10258)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_rep_159_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_242 (.A(sp_phase[0]), .B(n10245), .C(wr_buf[4]), 
         .Z(n9469)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_242.init = 16'h4040;
    LUT4 i9050_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n25), 
         .D(reset_n_c), .Z(clk_enable_114)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i9050_3_lut_4_lut.init = 16'h04ff;
    LUT4 mux_934_i1_4_lut (.A(n2286), .B(wr_buf_4__N_267), .C(n3823), 
         .D(trigger_wren), .Z(wr_buf_4__N_262)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_934_i1_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_122_3_lut_4_lut (.A(n3257), .B(n10254), .C(read_in_transit), 
         .D(n10282), .Z(n10221)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_2_lut_rep_122_3_lut_4_lut.init = 16'h2000;
    CCU2D add_813_7 (.A0(r_MB128_Addr_Curr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8736), .COUT(n8737), .S0(n830[5]), .S1(n830[6]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_7.INIT0 = 16'h5aaa;
    defparam add_813_7.INIT1 = 16'h5aaa;
    defparam add_813_7.INJECT1_0 = "NO";
    defparam add_813_7.INJECT1_1 = "NO";
    CCU2D add_813_15 (.A0(r_MB128_Addr_Curr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8740), .COUT(n8741), .S0(n830[13]), .S1(n830[14]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_15.INIT0 = 16'h5aaa;
    defparam add_813_15.INIT1 = 16'h5aaa;
    defparam add_813_15.INJECT1_0 = "NO";
    defparam add_813_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_243 (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n17_adj_789), 
         .D(reset_n_c), .Z(clk_enable_141)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B !(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_3_lut_4_lut_adj_243.init = 16'h40ff;
    CCU2D add_813_13 (.A0(r_MB128_Addr_Curr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8739), .COUT(n8740), .S0(n830[11]), .S1(n830[12]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_13.INIT0 = 16'h5aaa;
    defparam add_813_13.INIT1 = 16'h5aaa;
    defparam add_813_13.INJECT1_0 = "NO";
    defparam add_813_13.INJECT1_1 = "NO";
    CCU2D add_813_5 (.A0(r_MB128_Addr_Curr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr_Curr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8735), .COUT(n8736), .S0(n830[3]), .S1(n830[4]));   // c:/devel/diamond/pce_save128/firmware/save128.v(473[28:49])
    defparam add_813_5.INIT0 = 16'h5aaa;
    defparam add_813_5.INIT1 = 16'h5aaa;
    defparam add_813_5.INJECT1_0 = "NO";
    defparam add_813_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_244 (.A(n9416), .B(r_State[3]), .C(r_State[0]), 
         .D(r_State[1]), .Z(n30_adj_787)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_244.init = 16'h3200;
    LUT4 i1_3_lut_4_lut_adj_245 (.A(n3257), .B(n10254), .C(n10282), .D(sp_active_N_720), 
         .Z(clk_enable_91)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_3_lut_4_lut_adj_245.init = 16'hf020;
    LUT4 i28_4_lut_adj_246 (.A(n37_adj_790), .B(n56_adj_773), .C(n50), 
         .D(n38_adj_771), .Z(n58_adj_784)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i28_4_lut_adj_246.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_247 (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n9032), 
         .Z(n1063)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_3_lut_adj_247.init = 16'h4040;
    PFUMX i44 (.BLUT(n23), .ALUT(n9445), .C0(r_State[2]), .Z(n39_adj_788));
    LUT4 i24_4_lut_adj_248 (.A(i_Clk_ShiftReg[29]), .B(n48), .C(n34), 
         .D(i_Clk_ShiftReg[13]), .Z(n54_adj_785)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i24_4_lut_adj_248.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_249 (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n20), 
         .Z(r_Pos_Edge_3__N_77[0])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_3_lut_adj_249.init = 16'h4040;
    LUT4 i1_2_lut_rep_160_3_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(r_State[3]), 
         .Z(n10259)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_rep_160_3_lut.init = 16'h4040;
    LUT4 i2177_3_lut_4_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(n9380), 
         .D(n1266), .Z(n1190)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i2177_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_rep_163_3_lut (.A(i_Clk_Prev), .B(i_Clk_Debounce), .C(r_State[1]), 
         .Z(n10262)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_2_lut_rep_163_3_lut.init = 16'h0404;
    LUT4 i2_3_lut_4_lut_adj_250 (.A(n10246), .B(n10291), .C(n2472), .D(n2058), 
         .Z(clk_enable_38)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(422[9] 493[9])
    defparam i2_3_lut_4_lut_adj_250.init = 16'hfff2;
    LUT4 wr_buf_4__I_0_3_lut (.A(wr_buf[4]), .B(ram_data[4]), .C(trigger_write), 
         .Z(wr_buf_4__N_267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam wr_buf_4__I_0_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_251 (.A(n3257), .B(n10254), .C(fetchwrt_in_transit), 
         .D(n10282), .Z(clk_enable_102)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_2_lut_3_lut_4_lut_adj_251.init = 16'h2000;
    LUT4 mux_874_i1_4_lut (.A(n2322), .B(wr_buf_3__N_278), .C(n3823), 
         .D(trigger_wren), .Z(wr_buf_3__N_273)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_874_i1_4_lut.init = 16'h0aca;
    LUT4 i9035_4_lut (.A(trigger_read_N_634), .B(n10294), .C(n10228), 
         .D(n9380), .Z(n9381)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i9035_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_4_lut_4_lut (.A(r_State[2]), .B(n10211), .C(n7756), 
         .D(r_State[0]), .Z(n14)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4454;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(r_State[2]), .B(n10238), .C(n35), 
         .D(r_State[0]), .Z(n40)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0075;
    LUT4 i27_4_lut_3_lut (.A(r_State[2]), .B(r_State[0]), .C(r_State[3]), 
         .Z(n12)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i27_4_lut_3_lut.init = 16'h1818;
    CCU2D add_71_12 (.A0(r_MB128_Addr[10]), .B0(r_MB128_Bytes[10]), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Addr[11]), .B1(r_MB128_Bytes[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n8748), .COUT(n8749), .S0(n344[10]), 
          .S1(n344[11]));   // c:/devel/diamond/pce_save128/firmware/save128.v(328[23:51])
    defparam add_71_12.INIT0 = 16'h5666;
    defparam add_71_12.INIT1 = 16'h5666;
    defparam add_71_12.INJECT1_0 = "NO";
    defparam add_71_12.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_252 (.A(n8969), .B(n10292), .C(sp_hold_n_N_713), 
         .D(n9501), .Z(n1480)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(528[4] 873[11])
    defparam i3_4_lut_adj_252.init = 16'h0800;
    LUT4 i2_3_lut (.A(n1480), .B(n2670), .C(reset_n_c), .Z(clk_enable_106)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut.init = 16'hefef;
    LUT4 i1209_2_lut_rep_196 (.A(rw_len[1]), .B(\rw_len[0] ), .Z(n10295)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(444[21:34])
    defparam i1209_2_lut_rep_196.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_253 (.A(rw_len[1]), .B(\rw_len[0] ), .C(\rw_len[2] ), 
         .Z(n3152)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(444[21:34])
    defparam i1_2_lut_3_lut_adj_253.init = 16'he1e1;
    LUT4 i1_2_lut_rep_114_3_lut_4_lut (.A(n3257), .B(n10254), .C(n117), 
         .D(n10282), .Z(n10213)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(463[39:53])
    defparam i1_2_lut_rep_114_3_lut_4_lut.init = 16'h2000;
    CCU2D sub_492_add_2_17 (.A0(r_MB128_Bytes[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_MB128_Bytes[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8759), .S0(n1909[15]), .S1(n1909[16]));   // c:/devel/diamond/pce_save128/firmware/save128.v(788[26:46])
    defparam sub_492_add_2_17.INIT0 = 16'h5555;
    defparam sub_492_add_2_17.INIT1 = 16'h5555;
    defparam sub_492_add_2_17.INJECT1_0 = "NO";
    defparam sub_492_add_2_17.INJECT1_1 = "NO";
    LUT4 mux_804_i8_4_lut (.A(r_FetchWrite_Byte[7]), .B(i_Data_c), .C(n2670), 
         .D(n1480), .Z(ram_data_7__N_109[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam mux_804_i8_4_lut.init = 16'hcac0;
    LUT4 mux_924_i1_4_lut (.A(n2326), .B(wr_buf_2__N_289), .C(n3823), 
         .D(trigger_wren), .Z(wr_buf_2__N_284)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_924_i1_4_lut.init = 16'h0aca;
    LUT4 i16_4_lut_adj_254 (.A(i_Clk_ShiftReg[14]), .B(i_Clk_ShiftReg[1]), 
         .C(i_Clk_ShiftReg[4]), .D(i_Clk_ShiftReg[0]), .Z(n46_adj_786)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i16_4_lut_adj_254.init = 16'hfffe;
    LUT4 wr_buf_2__I_0_3_lut (.A(wr_buf[2]), .B(ram_data[2]), .C(trigger_write), 
         .Z(wr_buf_2__N_289)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam wr_buf_2__I_0_3_lut.init = 16'hcaca;
    LUT4 i1217_2_lut_rep_172_3_lut (.A(rw_len[1]), .B(\rw_len[0] ), .C(\rw_len[2] ), 
         .Z(n10271)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(444[21:34])
    defparam i1217_2_lut_rep_172_3_lut.init = 16'hfefe;
    LUT4 i1368_2_lut (.A(sp_phase[0]), .B(sp_phase[1]), .Z(sp_phase_1__N_317[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(298[15:27])
    defparam i1368_2_lut.init = 16'h6666;
    LUT4 i2_4_lut_4_lut_4_lut (.A(r_State[3]), .B(n3354), .C(i_Clk_Debounce), 
         .D(i_Clk_Prev), .Z(o_WriteLED_N_617)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i2_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_else_4_lut (.A(n10294), .B(r_State[3]), .C(r_State[2]), 
         .D(r_State[0]), .Z(n10302)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[7:37])
    defparam i1_4_lut_else_4_lut.init = 16'h0008;
    LUT4 i1_4_lut_4_lut_adj_255 (.A(r_State[3]), .B(n31), .C(n4_adj_755), 
         .D(n9456), .Z(r_State_3__N_1[1])) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_4_lut_4_lut_adj_255.init = 16'hf040;
    LUT4 i1_4_lut_4_lut_adj_256 (.A(r_State[3]), .B(r_State[1]), .C(n10232), 
         .D(n17), .Z(n9400)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_4_lut_4_lut_adj_256.init = 16'h0400;
    LUT4 i32_3_lut_4_lut_4_lut (.A(r_State[3]), .B(n2567), .C(n10257), 
         .D(i_Data_c), .Z(n17_adj_789)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i32_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i1_2_lut_3_lut_3_lut (.A(r_State[3]), .B(r_State[1]), .C(n10229), 
         .Z(n63)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 mux_914_i1_4_lut (.A(n2358), .B(wr_buf_1__N_300), .C(n3823), 
         .D(trigger_wren), .Z(wr_buf_1__N_295)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_914_i1_4_lut.init = 16'h0aca;
    LUT4 i7_2_lut_adj_257 (.A(i_Clk_ShiftReg[7]), .B(i_Clk_ShiftReg[15]), 
         .Z(n37_adj_790)) /* synthesis lut_function=(A+(B)) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(202[6:61])
    defparam i7_2_lut_adj_257.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_258 (.A(r_State[3]), .B(n29), .C(n9515), .D(n4_adj_755), 
         .Z(r_State_3__N_1[2])) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(525[3] 875[8])
    defparam i1_4_lut_4_lut_adj_258.init = 16'hf400;
    LUT4 i3_4_lut_adj_259 (.A(r_State_Prev[2]), .B(r_State_Prev[0]), .C(r_State_Prev[3]), 
         .D(r_State_Prev[1]), .Z(n8969)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_259.init = 16'hbfff;
    LUT4 i2_3_lut_rep_112_4_lut_4_lut (.A(r_State[1]), .B(r_State[0]), .C(n10225), 
         .D(reset_n_c), .Z(n10211)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(80[14:21])
    defparam i2_3_lut_rep_112_4_lut_4_lut.init = 16'h4000;
    LUT4 wr_buf_1__I_0_3_lut (.A(wr_buf[1]), .B(ram_data[1]), .C(trigger_write), 
         .Z(wr_buf_1__N_300)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/devel/diamond/pce_save128/firmware/save128.v(338[4] 354[9])
    defparam wr_buf_1__I_0_3_lut.init = 16'hcaca;
    LUT4 i30_4_lut (.A(n10268), .B(n8_c), .C(r_State[3]), .D(n1), .Z(n25)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i30_4_lut.init = 16'hfaca;
    PFUMX i9299 (.BLUT(n10302), .ALUT(n10303), .C0(r_State[1]), .Z(n1393));
    LUT4 r_State_0__bdd_3_lut_9240 (.A(r_State[0]), .B(n10238), .C(r_State[1]), 
         .Z(n10024)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;
    defparam r_State_0__bdd_3_lut_9240.init = 16'h4f4f;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

