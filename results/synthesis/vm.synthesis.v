/* Generated by Yosys 0.9+3621 (git sha1 84e9fa7, gcc 8.3.1 -fPIC -Os) */

module vm(clk, reset, coin, out, change, choice);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  output [1:0] change;
  input [2:0] choice;
  input clk;
  input [1:0] coin;
  output [2:0] out;
  input reset;
  wire \state[0] ;
  wire \state[1] ;
  wire \state[2] ;
  wire \state[3] ;
  wire \state[4] ;
  wire \state[5] ;
  wire \state[6] ;
  wire \state[7] ;
  sky130_fd_sc_hd__inv_2 _075_ (
    .A(reset),
    .Y(_019_)
  );
  sky130_fd_sc_hd__buf_2 _076_ (
    .A(_019_),
    .X(_020_)
  );
  sky130_fd_sc_hd__buf_2 _077_ (
    .A(_020_),
    .X(_021_)
  );
  sky130_fd_sc_hd__or2_4 _078_ (
    .A(coin[0]),
    .B(coin[1]),
    .X(_022_)
  );
  sky130_fd_sc_hd__inv_2 _079_ (
    .A(_022_),
    .Y(_023_)
  );
  sky130_fd_sc_hd__buf_2 _080_ (
    .A(\state[7] ),
    .X(_024_)
  );
  sky130_fd_sc_hd__or2_4 _081_ (
    .A(\state[4] ),
    .B(\state[5] ),
    .X(_025_)
  );
  sky130_fd_sc_hd__or3_4 _082_ (
    .A(\state[1] ),
    .B(\state[3] ),
    .C(\state[6] ),
    .X(_026_)
  );
  sky130_fd_sc_hd__or4_4 _083_ (
    .A(_024_),
    .B(_025_),
    .C(\state[2] ),
    .D(_026_),
    .X(_027_)
  );
  sky130_fd_sc_hd__or4_4 _084_ (
    .A(\state[1] ),
    .B(\state[3] ),
    .C(\state[2] ),
    .D(_025_),
    .X(_028_)
  );
  sky130_fd_sc_hd__or4_4 _085_ (
    .A(\state[6] ),
    .B(\state[7] ),
    .C(\state[0] ),
    .D(_028_),
    .X(_029_)
  );
  sky130_fd_sc_hd__inv_2 _086_ (
    .A(_029_),
    .Y(_030_)
  );
  sky130_fd_sc_hd__a21o_4 _087_ (
    .A1(_023_),
    .A2(_027_),
    .B1(_030_),
    .X(_031_)
  );
  sky130_fd_sc_hd__inv_2 _088_ (
    .A(_031_),
    .Y(_032_)
  );
  sky130_fd_sc_hd__or2_4 _089_ (
    .A(change[0]),
    .B(_032_),
    .X(_033_)
  );
  sky130_fd_sc_hd__buf_2 _090_ (
    .A(coin[0]),
    .X(_034_)
  );
  sky130_fd_sc_hd__inv_2 _091_ (
    .A(coin[1]),
    .Y(_035_)
  );
  sky130_fd_sc_hd__buf_2 _092_ (
    .A(_035_),
    .X(_036_)
  );
  sky130_fd_sc_hd__or2_4 _093_ (
    .A(_034_),
    .B(_036_),
    .X(_037_)
  );
  sky130_fd_sc_hd__inv_2 _094_ (
    .A(_037_),
    .Y(_038_)
  );
  sky130_fd_sc_hd__and2_4 _095_ (
    .A(coin[0]),
    .B(_035_),
    .X(_039_)
  );
  sky130_fd_sc_hd__inv_2 _096_ (
    .A(_039_),
    .Y(_040_)
  );
  sky130_fd_sc_hd__or2_4 _097_ (
    .A(_024_),
    .B(_025_),
    .X(_041_)
  );
  sky130_fd_sc_hd__and3_4 _098_ (
    .A(_040_),
    .B(_037_),
    .C(_041_),
    .X(_042_)
  );
  sky130_fd_sc_hd__a211o_4 _099_ (
    .A1(_026_),
    .A2(_038_),
    .B1(_042_),
    .C1(_031_),
    .X(_043_)
  );
  sky130_fd_sc_hd__and3_4 _100_ (
    .A(_021_),
    .B(_033_),
    .C(_043_),
    .X(_011_)
  );
  sky130_fd_sc_hd__a21oi_4 _101_ (
    .A1(_036_),
    .A2(_028_),
    .B1(_024_),
    .Y(_044_)
  );
  sky130_fd_sc_hd__or2_4 _102_ (
    .A(\state[6] ),
    .B(_024_),
    .X(_045_)
  );
  sky130_fd_sc_hd__a21o_4 _103_ (
    .A1(_045_),
    .A2(_023_),
    .B1(_030_),
    .X(_046_)
  );
  sky130_fd_sc_hd__inv_2 _104_ (
    .A(_046_),
    .Y(_047_)
  );
  sky130_fd_sc_hd__o21a_4 _105_ (
    .A1(_039_),
    .A2(_044_),
    .B1(_047_),
    .X(_048_)
  );
  sky130_fd_sc_hd__a21oi_4 _106_ (
    .A1(_024_),
    .A2(_047_),
    .B1(out[2]),
    .Y(_049_)
  );
  sky130_fd_sc_hd__or3_4 _107_ (
    .A(reset),
    .B(_048_),
    .C(_049_),
    .X(_050_)
  );
  sky130_fd_sc_hd__inv_2 _108_ (
    .A(_050_),
    .Y(_010_)
  );
  sky130_fd_sc_hd__a21o_4 _109_ (
    .A1(_029_),
    .A2(_022_),
    .B1(out[1]),
    .X(_051_)
  );
  sky130_fd_sc_hd__buf_2 _110_ (
    .A(\state[2] ),
    .X(_052_)
  );
  sky130_fd_sc_hd__and2_4 _111_ (
    .A(_052_),
    .B(_034_),
    .X(_053_)
  );
  sky130_fd_sc_hd__o21a_4 _112_ (
    .A1(\state[5] ),
    .A2(_053_),
    .B1(_040_),
    .X(_054_)
  );
  sky130_fd_sc_hd__or3_4 _113_ (
    .A(\state[1] ),
    .B(_052_),
    .C(\state[4] ),
    .X(_055_)
  );
  sky130_fd_sc_hd__and2_4 _114_ (
    .A(_023_),
    .B(_055_),
    .X(_056_)
  );
  sky130_fd_sc_hd__or2_4 _115_ (
    .A(\state[6] ),
    .B(_046_),
    .X(_057_)
  );
  sky130_fd_sc_hd__or4_4 _116_ (
    .A(\state[3] ),
    .B(_054_),
    .C(_056_),
    .D(_057_),
    .X(_058_)
  );
  sky130_fd_sc_hd__and3_4 _117_ (
    .A(_021_),
    .B(_051_),
    .C(_058_),
    .X(_009_)
  );
  sky130_fd_sc_hd__or2_4 _118_ (
    .A(out[0]),
    .B(_047_),
    .X(_059_)
  );
  sky130_fd_sc_hd__or3_4 _119_ (
    .A(\state[2] ),
    .B(\state[3] ),
    .C(\state[5] ),
    .X(_060_)
  );
  sky130_fd_sc_hd__and2_4 _120_ (
    .A(_035_),
    .B(_060_),
    .X(_061_)
  );
  sky130_fd_sc_hd__o21a_4 _121_ (
    .A1(\state[4] ),
    .A2(_061_),
    .B1(_040_),
    .X(_062_)
  );
  sky130_fd_sc_hd__o22a_4 _122_ (
    .A1(\state[1] ),
    .A2(_062_),
    .B1(out[0]),
    .B2(_022_),
    .X(_063_)
  );
  sky130_fd_sc_hd__or2_4 _123_ (
    .A(_057_),
    .B(_063_),
    .X(_064_)
  );
  sky130_fd_sc_hd__and3_4 _124_ (
    .A(_021_),
    .B(_059_),
    .C(_064_),
    .X(_008_)
  );
  sky130_fd_sc_hd__inv_2 _125_ (
    .A(choice[0]),
    .Y(_065_)
  );
  sky130_fd_sc_hd__or3_4 _126_ (
    .A(choice[2]),
    .B(choice[1]),
    .C(_065_),
    .X(_066_)
  );
  sky130_fd_sc_hd__inv_2 _127_ (
    .A(_066_),
    .Y(_067_)
  );
  sky130_fd_sc_hd__and3_4 _128_ (
    .A(_021_),
    .B(\state[0] ),
    .C(_067_),
    .X(_002_)
  );
  sky130_fd_sc_hd__inv_2 _129_ (
    .A(choice[2]),
    .Y(_068_)
  );
  sky130_fd_sc_hd__and3_4 _130_ (
    .A(_019_),
    .B(\state[0] ),
    .C(_066_),
    .X(_069_)
  );
  sky130_fd_sc_hd__and4_4 _131_ (
    .A(_068_),
    .B(choice[1]),
    .C(_069_),
    .D(_065_),
    .X(_001_)
  );
  sky130_fd_sc_hd__and4_4 _132_ (
    .A(_034_),
    .B(_036_),
    .C(_020_),
    .D(_052_),
    .X(_003_)
  );
  sky130_fd_sc_hd__and4_4 _133_ (
    .A(_034_),
    .B(_036_),
    .C(_020_),
    .D(\state[4] ),
    .X(_000_)
  );
  sky130_fd_sc_hd__and4_4 _134_ (
    .A(_068_),
    .B(choice[1]),
    .C(_069_),
    .D(choice[0]),
    .X(_004_)
  );
  sky130_fd_sc_hd__inv_2 _135_ (
    .A(choice[1]),
    .Y(_070_)
  );
  sky130_fd_sc_hd__and4_4 _136_ (
    .A(choice[2]),
    .B(_070_),
    .C(_065_),
    .D(_069_),
    .X(_005_)
  );
  sky130_fd_sc_hd__and4_4 _137_ (
    .A(_034_),
    .B(_036_),
    .C(_020_),
    .D(\state[5] ),
    .X(_071_)
  );
  sky130_fd_sc_hd__and4_4 _138_ (
    .A(_020_),
    .B(_040_),
    .C(_052_),
    .D(_038_),
    .X(_072_)
  );
  sky130_fd_sc_hd__or2_4 _139_ (
    .A(_071_),
    .B(_072_),
    .X(_007_)
  );
  sky130_fd_sc_hd__o32a_4 _140_ (
    .A1(_068_),
    .A2(choice[1]),
    .A3(choice[0]),
    .B1(choice[2]),
    .B2(_070_),
    .X(_073_)
  );
  sky130_fd_sc_hd__or4_4 _141_ (
    .A(\state[1] ),
    .B(\state[3] ),
    .C(reset),
    .D(_045_),
    .X(_074_)
  );
  sky130_fd_sc_hd__a21oi_4 _142_ (
    .A1(_052_),
    .A2(_037_),
    .B1(_025_),
    .Y(_013_)
  );
  sky130_fd_sc_hd__or3_4 _143_ (
    .A(reset),
    .B(_039_),
    .C(_013_),
    .X(_014_)
  );
  sky130_fd_sc_hd__inv_2 _144_ (
    .A(_014_),
    .Y(_015_)
  );
  sky130_fd_sc_hd__a211o_4 _145_ (
    .A1(_069_),
    .A2(_073_),
    .B1(_074_),
    .C1(_015_),
    .X(_006_)
  );
  sky130_fd_sc_hd__or2_4 _146_ (
    .A(change[1]),
    .B(_032_),
    .X(_016_)
  );
  sky130_fd_sc_hd__and3_4 _147_ (
    .A(_040_),
    .B(_037_),
    .C(_026_),
    .X(_017_)
  );
  sky130_fd_sc_hd__or2_4 _148_ (
    .A(_031_),
    .B(_017_),
    .X(_018_)
  );
  sky130_fd_sc_hd__and3_4 _149_ (
    .A(_021_),
    .B(_016_),
    .C(_018_),
    .X(_012_)
  );
  sky130_fd_sc_hd__dfxtp_4 _150_ (
    .CLK(clk),
    .D(_006_),
    .Q(\state[0] )
  );
  sky130_fd_sc_hd__dfxtp_4 _151_ (
    .CLK(clk),
    .D(_000_),
    .Q(\state[1] )
  );
  sky130_fd_sc_hd__dfxtp_4 _152_ (
    .CLK(clk),
    .D(_001_),
    .Q(\state[2] )
  );
  sky130_fd_sc_hd__dfxtp_4 _153_ (
    .CLK(clk),
    .D(_007_),
    .Q(\state[3] )
  );
  sky130_fd_sc_hd__dfxtp_4 _154_ (
    .CLK(clk),
    .D(_002_),
    .Q(\state[4] )
  );
  sky130_fd_sc_hd__dfxtp_4 _155_ (
    .CLK(clk),
    .D(_003_),
    .Q(\state[5] )
  );
  sky130_fd_sc_hd__dfxtp_4 _156_ (
    .CLK(clk),
    .D(_004_),
    .Q(\state[6] )
  );
  sky130_fd_sc_hd__dfxtp_4 _157_ (
    .CLK(clk),
    .D(_005_),
    .Q(\state[7] )
  );
  sky130_fd_sc_hd__dfxtp_4 _158_ (
    .CLK(clk),
    .D(_008_),
    .Q(out[0])
  );
  sky130_fd_sc_hd__dfxtp_4 _159_ (
    .CLK(clk),
    .D(_009_),
    .Q(out[1])
  );
  sky130_fd_sc_hd__dfxtp_4 _160_ (
    .CLK(clk),
    .D(_010_),
    .Q(out[2])
  );
  sky130_fd_sc_hd__dfxtp_4 _161_ (
    .CLK(clk),
    .D(_011_),
    .Q(change[0])
  );
  sky130_fd_sc_hd__dfxtp_4 _162_ (
    .CLK(clk),
    .D(_012_),
    .Q(change[1])
  );
endmodule
