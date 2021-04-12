module vm (clk,
    reset,
    VPWR,
    VGND,
    change,
    choice,
    coin,
    out);
 input clk;
 input reset;
 input VPWR;
 input VGND;
 output [1:0] change;
 input [2:0] choice;
 input [1:0] coin;
 output [2:0] out;

 sky130_fd_sc_hd__inv_2 _075_ (.A(reset),
    .Y(_019_));
 sky130_fd_sc_hd__buf_2 _076_ (.A(_019_),
    .X(_020_));
 sky130_fd_sc_hd__buf_2 _077_ (.A(_020_),
    .X(_021_));
 sky130_fd_sc_hd__or2_4 _078_ (.A(coin[0]),
    .B(coin[1]),
    .X(_022_));
 sky130_fd_sc_hd__inv_2 _079_ (.A(_022_),
    .Y(_023_));
 sky130_fd_sc_hd__buf_2 _080_ (.A(\state[7] ),
    .X(_024_));
 sky130_fd_sc_hd__or2_4 _081_ (.A(\state[4] ),
    .B(\state[5] ),
    .X(_025_));
 sky130_fd_sc_hd__or3_4 _082_ (.A(\state[1] ),
    .B(\state[3] ),
    .C(\state[6] ),
    .X(_026_));
 sky130_fd_sc_hd__or4_4 _083_ (.A(_024_),
    .B(_025_),
    .C(\state[2] ),
    .D(_026_),
    .X(_027_));
 sky130_fd_sc_hd__or4_4 _084_ (.A(\state[1] ),
    .B(\state[3] ),
    .C(\state[2] ),
    .D(_025_),
    .X(_028_));
 sky130_fd_sc_hd__or4_4 _085_ (.A(\state[6] ),
    .B(\state[7] ),
    .C(\state[0] ),
    .D(_028_),
    .X(_029_));
 sky130_fd_sc_hd__inv_2 _086_ (.A(_029_),
    .Y(_030_));
 sky130_fd_sc_hd__a21o_4 _087_ (.A1(_023_),
    .A2(_027_),
    .B1(_030_),
    .X(_031_));
 sky130_fd_sc_hd__inv_2 _088_ (.A(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__or2_4 _089_ (.A(change[0]),
    .B(_032_),
    .X(_033_));
 sky130_fd_sc_hd__buf_2 _090_ (.A(coin[0]),
    .X(_034_));
 sky130_fd_sc_hd__inv_2 _091_ (.A(coin[1]),
    .Y(_035_));
 sky130_fd_sc_hd__buf_2 _092_ (.A(_035_),
    .X(_036_));
 sky130_fd_sc_hd__or2_4 _093_ (.A(_034_),
    .B(_036_),
    .X(_037_));
 sky130_fd_sc_hd__inv_2 _094_ (.A(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__and2_4 _095_ (.A(coin[0]),
    .B(_035_),
    .X(_039_));
 sky130_fd_sc_hd__inv_2 _096_ (.A(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__or2_4 _097_ (.A(_024_),
    .B(_025_),
    .X(_041_));
 sky130_fd_sc_hd__and3_4 _098_ (.A(_040_),
    .B(_037_),
    .C(_041_),
    .X(_042_));
 sky130_fd_sc_hd__a211o_4 _099_ (.A1(_026_),
    .A2(_038_),
    .B1(_042_),
    .C1(_031_),
    .X(_043_));
 sky130_fd_sc_hd__and3_4 _100_ (.A(_021_),
    .B(_033_),
    .C(_043_),
    .X(_011_));
 sky130_fd_sc_hd__a21oi_4 _101_ (.A1(_036_),
    .A2(_028_),
    .B1(_024_),
    .Y(_044_));
 sky130_fd_sc_hd__or2_4 _102_ (.A(\state[6] ),
    .B(_024_),
    .X(_045_));
 sky130_fd_sc_hd__a21o_4 _103_ (.A1(_045_),
    .A2(_023_),
    .B1(_030_),
    .X(_046_));
 sky130_fd_sc_hd__inv_2 _104_ (.A(_046_),
    .Y(_047_));
 sky130_fd_sc_hd__o21a_4 _105_ (.A1(_039_),
    .A2(_044_),
    .B1(_047_),
    .X(_048_));
 sky130_fd_sc_hd__a21oi_4 _106_ (.A1(_024_),
    .A2(_047_),
    .B1(out[2]),
    .Y(_049_));
 sky130_fd_sc_hd__or3_4 _107_ (.A(reset),
    .B(_048_),
    .C(_049_),
    .X(_050_));
 sky130_fd_sc_hd__inv_2 _108_ (.A(_050_),
    .Y(_010_));
 sky130_fd_sc_hd__a21o_4 _109_ (.A1(_029_),
    .A2(_022_),
    .B1(out[1]),
    .X(_051_));
 sky130_fd_sc_hd__buf_2 _110_ (.A(\state[2] ),
    .X(_052_));
 sky130_fd_sc_hd__and2_4 _111_ (.A(_052_),
    .B(_034_),
    .X(_053_));
 sky130_fd_sc_hd__o21a_4 _112_ (.A1(\state[5] ),
    .A2(_053_),
    .B1(_040_),
    .X(_054_));
 sky130_fd_sc_hd__or3_4 _113_ (.A(\state[1] ),
    .B(_052_),
    .C(\state[4] ),
    .X(_055_));
 sky130_fd_sc_hd__and2_4 _114_ (.A(_023_),
    .B(_055_),
    .X(_056_));
 sky130_fd_sc_hd__or2_4 _115_ (.A(\state[6] ),
    .B(_046_),
    .X(_057_));
 sky130_fd_sc_hd__or4_4 _116_ (.A(\state[3] ),
    .B(_054_),
    .C(_056_),
    .D(_057_),
    .X(_058_));
 sky130_fd_sc_hd__and3_4 _117_ (.A(_021_),
    .B(_051_),
    .C(_058_),
    .X(_009_));
 sky130_fd_sc_hd__or2_4 _118_ (.A(out[0]),
    .B(_047_),
    .X(_059_));
 sky130_fd_sc_hd__or3_4 _119_ (.A(\state[2] ),
    .B(\state[3] ),
    .C(\state[5] ),
    .X(_060_));
 sky130_fd_sc_hd__and2_4 _120_ (.A(_035_),
    .B(_060_),
    .X(_061_));
 sky130_fd_sc_hd__o21a_4 _121_ (.A1(\state[4] ),
    .A2(_061_),
    .B1(_040_),
    .X(_062_));
 sky130_fd_sc_hd__o22a_4 _122_ (.A1(\state[1] ),
    .A2(_062_),
    .B1(out[0]),
    .B2(_022_),
    .X(_063_));
 sky130_fd_sc_hd__or2_4 _123_ (.A(_057_),
    .B(_063_),
    .X(_064_));
 sky130_fd_sc_hd__and3_4 _124_ (.A(_021_),
    .B(_059_),
    .C(_064_),
    .X(_008_));
 sky130_fd_sc_hd__inv_2 _125_ (.A(choice[0]),
    .Y(_065_));
 sky130_fd_sc_hd__or3_4 _126_ (.A(choice[2]),
    .B(choice[1]),
    .C(_065_),
    .X(_066_));
 sky130_fd_sc_hd__inv_2 _127_ (.A(_066_),
    .Y(_067_));
 sky130_fd_sc_hd__and3_4 _128_ (.A(_021_),
    .B(\state[0] ),
    .C(_067_),
    .X(_002_));
 sky130_fd_sc_hd__inv_2 _129_ (.A(choice[2]),
    .Y(_068_));
 sky130_fd_sc_hd__and3_4 _130_ (.A(_019_),
    .B(\state[0] ),
    .C(_066_),
    .X(_069_));
 sky130_fd_sc_hd__and4_4 _131_ (.A(_068_),
    .B(choice[1]),
    .C(_069_),
    .D(_065_),
    .X(_001_));
 sky130_fd_sc_hd__and4_4 _132_ (.A(_034_),
    .B(_036_),
    .C(_020_),
    .D(_052_),
    .X(_003_));
 sky130_fd_sc_hd__and4_4 _133_ (.A(_034_),
    .B(_036_),
    .C(_020_),
    .D(\state[4] ),
    .X(_000_));
 sky130_fd_sc_hd__and4_4 _134_ (.A(_068_),
    .B(choice[1]),
    .C(_069_),
    .D(choice[0]),
    .X(_004_));
 sky130_fd_sc_hd__inv_2 _135_ (.A(choice[1]),
    .Y(_070_));
 sky130_fd_sc_hd__and4_4 _136_ (.A(choice[2]),
    .B(_070_),
    .C(_065_),
    .D(_069_),
    .X(_005_));
 sky130_fd_sc_hd__and4_4 _137_ (.A(_034_),
    .B(_036_),
    .C(_020_),
    .D(\state[5] ),
    .X(_071_));
 sky130_fd_sc_hd__and4_4 _138_ (.A(_020_),
    .B(_040_),
    .C(_052_),
    .D(_038_),
    .X(_072_));
 sky130_fd_sc_hd__or2_4 _139_ (.A(_071_),
    .B(_072_),
    .X(_007_));
 sky130_fd_sc_hd__o32a_4 _140_ (.A1(_068_),
    .A2(choice[1]),
    .A3(choice[0]),
    .B1(choice[2]),
    .B2(_070_),
    .X(_073_));
 sky130_fd_sc_hd__or4_4 _141_ (.A(\state[1] ),
    .B(\state[3] ),
    .C(reset),
    .D(_045_),
    .X(_074_));
 sky130_fd_sc_hd__a21oi_4 _142_ (.A1(_052_),
    .A2(_037_),
    .B1(_025_),
    .Y(_013_));
 sky130_fd_sc_hd__or3_4 _143_ (.A(reset),
    .B(_039_),
    .C(_013_),
    .X(_014_));
 sky130_fd_sc_hd__inv_2 _144_ (.A(_014_),
    .Y(_015_));
 sky130_fd_sc_hd__a211o_4 _145_ (.A1(_069_),
    .A2(_073_),
    .B1(_074_),
    .C1(_015_),
    .X(_006_));
 sky130_fd_sc_hd__or2_4 _146_ (.A(change[1]),
    .B(_032_),
    .X(_016_));
 sky130_fd_sc_hd__and3_4 _147_ (.A(_040_),
    .B(_037_),
    .C(_026_),
    .X(_017_));
 sky130_fd_sc_hd__or2_4 _148_ (.A(_031_),
    .B(_017_),
    .X(_018_));
 sky130_fd_sc_hd__and3_4 _149_ (.A(_021_),
    .B(_016_),
    .C(_018_),
    .X(_012_));
 sky130_fd_sc_hd__dfxtp_4 _150_ (.D(_006_),
    .Q(\state[0] ),
    .CLK(clknet_1_1_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _151_ (.D(_000_),
    .Q(\state[1] ),
    .CLK(clknet_1_0_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _152_ (.D(_001_),
    .Q(\state[2] ),
    .CLK(clknet_1_1_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _153_ (.D(_007_),
    .Q(\state[3] ),
    .CLK(clknet_1_1_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _154_ (.D(_002_),
    .Q(\state[4] ),
    .CLK(clknet_1_0_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _155_ (.D(_003_),
    .Q(\state[5] ),
    .CLK(clknet_1_0_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _156_ (.D(_004_),
    .Q(\state[6] ),
    .CLK(clknet_1_1_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _157_ (.D(_005_),
    .Q(\state[7] ),
    .CLK(clknet_1_0_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _158_ (.D(_008_),
    .Q(out[0]),
    .CLK(clknet_1_1_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _159_ (.D(_009_),
    .Q(out[1]),
    .CLK(clknet_1_0_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _160_ (.D(_010_),
    .Q(out[2]),
    .CLK(clknet_1_0_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _161_ (.D(_011_),
    .Q(change[0]),
    .CLK(clknet_1_1_0_clk));
 sky130_fd_sc_hd__dfxtp_4 _162_ (.D(_012_),
    .Q(change[1]),
    .CLK(clknet_1_1_0_clk));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_209 ();
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_0_0_clk (.A(clknet_0_clk),
    .X(clknet_1_0_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_1_0_clk (.A(clknet_0_clk),
    .X(clknet_1_1_0_clk));
endmodule
