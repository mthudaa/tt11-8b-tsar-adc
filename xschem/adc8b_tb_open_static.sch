v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 640 -430 1440 -30 {flags=graph
y1=-0.11800712
y2=2.0331987
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.3699884e-07
x2=3.6920773e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


hilight_wave=1
color="18 6 11 7 8"
node="x1.vcn
x1.vcp
vip
vin
vcm"}
B 2 1460 -430 2260 -30 {flags=graph
y1=0
y2=2
ypos1=0.36838086
ypos2=2.6291767
divy=5
subdivy=1
unity=1
x1=5.3699884e-07
x2=3.6920773e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cko
clk
BUS_NAME;dout0,dout1,dout2,dout3,dout4,dout5,dout6,dout7
dout7
dout6
dout5
dout4
dout3
dout2
dout1
dout0
x1.cks
x1.cksb"
color="4 4 4 4 4 4 4 4 4 4 4 4 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
digital=1
sim_type=tran
autoload=0}
C {devices/netlist_not_shown.sym} 310 -390 0 0 {name=s1 only_toplevel=false value="** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/adc_tb.sch
**.subckt adc_tb
VS VSS GND 0
VDA VDD VSS 1.8
VSS1 net2 net1 PWL(0 -0.9 1.6u -0.9 820.8u 0.9 822.4u 0.9)
VSS2 net3 net1 PWL(0 0.9 1.6u 0.9 820.8u -0.9 822.4u -0.9)
VSS3 net1 VSS 0.9
VCLK CLK VSS PULSE(0 1.8 10n 50p 50p 50n 100n)
R1 VIN net2 50 m=1
R2 VIP net3 50 m=1
x1 VDD VSS CLK VIP VIN VCM EN DOUT0 DOUT1 DOUT2 DOUT3 DOUT4 DOUT5 DOUT6 DOUT7 CKO 8b_adc
VDA1 VCM VSS 0.9
VDA2 EN VSS PWL(0 0 10n 1.8)
**** begin user architecture code

** opencircuitdesign pdks install
* .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.option wnflag=0 bypass=1
.options method=gear reltol=1e-5 rawfile=binary
.options solver=klu nomod
.control
set num_threads=48
global netlist_dir .
set wr_singlescale
save x1.vcp x1.vcn vip vin clk vcm cko x1.cks x1.cksb
+ dout0 dout1 dout2 dout3 dout4 dout5 dout6 dout7
tran 100p 822.4u 0 100p uic ; Mengubah start time menjadi 10n
remzerovec
write adc8b_tb_open_static.raw
wrdata adc8b_tb_open_static.txt cko dout0 dout1 dout2 dout3 dout4 dout5 dout6 dout7 vip vin
quit 1
.endc

.param mc_mm_switch=0
.param mc_pr_switch=0
.include /usr/local/share/pdk/sky130A/libs.tech/ngspice/corners/tt.spice
.include /usr/local/share/pdk/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical.spice
.include /usr/local/share/pdk/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice
.include /usr/local/share/pdk/sky130A/libs.tech/ngspice/corners/tt/specialized_cells.spice

**** end user architecture code
**.ends

* expanding   symbol:  8b_adc.sym # of pins=9
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/8b_adc.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/8b_adc.sch
.subckt 8b_adc VDD VSS CLK VINP VINN VCM EN DOUT[0] DOUT[1] DOUT[2] DOUT[3] DOUT[4] DOUT[5] DOUT[6] DOUT[7] CKO
*.ipin VDD
*.ipin VSS
*.ipin CLK
*.ipin VINP
*.ipin VINN
*.opin DOUT[0],DOUT[1],DOUT[2],DOUT[3],DOUT[4],DOUT[5],DOUT[6],DOUT[7]
*.opin CKO
*.ipin VCM
*.ipin EN
x2 VDD VSS VCM CF[0] CF[1] CF[2] CF[3] CF[4] CF[5] CF[6] CF[7] SWP[0] SWP[1] SWP[2] SWP[3] SWP[4] SWP[5] SWP[6] SWP[7] SWN[0]
+ SWN[1] SWN[2] SWN[3] SWN[4] SWN[5] SWN[6] SWN[7] VCP VCN cdac
x3 VDD VSS CKS CKSB VINP VINN VCP VCN th_dif_sw
x4 CF[0] CF[1] CF[2] CF[3] CF[4] CF[5] CF[6] CF[7] CKO CKS CKSB CLK CMP_N
+ CMP_P DOUT[0] DOUT[1] DOUT[2] DOUT[3] DOUT[4] DOUT[5] DOUT[6] DOUT[7] EN RDY SWN[0]
+ SWN[1] SWN[2] SWN[3] SWN[4] SWN[5] SWN[6] SWN[7] SWP[0] SWP[1] SWP[2] SWP[3] SWP[4]
+ SWP[5] SWP[6] SWP[7] VSS VDD sar8b
x1 CLK VDD VSS VCP VCN CMP_P CMP_N RDY tdc
.ends


* expanding   symbol:  cdac.sym # of pins=8
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/cdac.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/cdac.sch
.subckt cdac VDD VSS VCM CF[0] CF[1] CF[2] CF[3] CF[4] CF[5] CF[6] CF[7] SWP_IN[0] SWP_IN[1] SWP_IN[2] SWP_IN[3] SWP_IN[4]
+ SWP_IN[5] SWP_IN[6] SWP_IN[7] SWN_IN[0] SWN_IN[1] SWN_IN[2] SWN_IN[3] SWN_IN[4] SWN_IN[5] SWN_IN[6] SWN_IN[7] VCP VCN
*.ipin VDD
*.ipin VCM
*.ipin VSS
*.ipin CF[0],CF[1],CF[2],CF[3],CF[4],CF[5],CF[6],CF[7]
*.ipin SWP_IN[0],SWP_IN[1],SWP_IN[2],SWP_IN[3],SWP_IN[4],SWP_IN[5],SWP_IN[6],SWP_IN[7]
*.ipin SWN_IN[0],SWN_IN[1],SWN_IN[2],SWN_IN[3],SWN_IN[4],SWN_IN[5],SWN_IN[6],SWN_IN[7]
*.opin VCP
*.opin VCN
x3 VDD CF[0] CF[1] CF[2] CF[3] CF[4] CF[5] CF[6] CF[7] SWP_IN[0] SWP_IN[1] SWP_IN[2] SWP_IN[3] SWP_IN[4] SWP_IN[5] SWP_IN[6]
+ SWP_IN[7] VCM VSS VCP single_8b_cdac
x4 VDD CF[0] CF[1] CF[2] CF[3] CF[4] CF[5] CF[6] CF[7] SWN_IN[0] SWN_IN[1] SWN_IN[2] SWN_IN[3] SWN_IN[4] SWN_IN[5] SWN_IN[6]
+ SWN_IN[7] VCM VSS VCN single_8b_cdac
.ends


* expanding   symbol:  th_dif_sw.sym # of pins=8
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/th_dif_sw.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/th_dif_sw.sch
.subckt th_dif_sw VDD VSS CK CKB VIP VIN VCP VCN
*.ipin VDD
*.ipin VSS
*.ipin CK
*.ipin CKB
*.ipin VIP
*.ipin VIN
*.opin VCP
*.opin VCN
x1 VDD VSS CK CKB VIP VCP th_sw
x2 VDD VSS CK CKB VIN VCN th_sw
.ends

* NGSPICE file created from sar8b.ext - technology: sky130A

* Black-box entry subcircuit for sky130_fd_sc_hd__dfrtp_1 abstract view
.subckt sky130_fd_sc_hd__dfrtp_1 CLK D RESET_B VGND VNB VPB VPWR Q
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__dfxtp_1 abstract view
.subckt sky130_fd_sc_hd__dfxtp_1 CLK D VGND VNB VPB VPWR Q
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__tapvpwrvgnd_1 abstract view
.subckt sky130_fd_sc_hd__tapvpwrvgnd_1 VGND VPWR
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__buf_1 abstract view
.subckt sky130_fd_sc_hd__buf_1 A VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__decap_3 abstract view
.subckt sky130_fd_sc_hd__decap_3 VGND VNB VPB VPWR
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__fill_1 abstract view
.subckt sky130_fd_sc_hd__fill_1 VGND VNB VPB VPWR
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__decap_8 abstract view
.subckt sky130_fd_sc_hd__decap_8 VGND VNB VPB VPWR
.ends

* Black-box entry subcircuit for sky130_ef_sc_hd__decap_12 abstract view
.subckt sky130_ef_sc_hd__decap_12 VPWR VGND VPB VNB
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__clkbuf_1 abstract view
.subckt sky130_fd_sc_hd__clkbuf_1 A VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__decap_4 abstract view
.subckt sky130_fd_sc_hd__decap_4 VGND VNB VPB VPWR
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__a21o_1 abstract view
.subckt sky130_fd_sc_hd__a21o_1 A1 A2 B1 VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__fill_2 abstract view
.subckt sky130_fd_sc_hd__fill_2 VGND VNB VPB VPWR
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__nand3_1 abstract view
.subckt sky130_fd_sc_hd__nand3_1 A B C VGND VNB VPB VPWR Y
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__dfrtp_2 abstract view
.subckt sky130_fd_sc_hd__dfrtp_2 CLK D RESET_B VGND VNB VPB VPWR Q
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__clkbuf_4 abstract view
.subckt sky130_fd_sc_hd__clkbuf_4 A VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__clkbuf_16 abstract view
.subckt sky130_fd_sc_hd__clkbuf_16 A VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__a21oi_1 abstract view
.subckt sky130_fd_sc_hd__a21oi_1 A1 A2 B1 VGND VNB VPB VPWR Y
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__decap_6 abstract view
.subckt sky130_fd_sc_hd__decap_6 VGND VNB VPB VPWR
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__o21ai_1 abstract view
.subckt sky130_fd_sc_hd__o21ai_1 A1 A2 B1 VGND VNB VPB VPWR Y
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__and2b_1 abstract view
.subckt sky130_fd_sc_hd__and2b_1 A_N B VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__nand2_1 abstract view
.subckt sky130_fd_sc_hd__nand2_1 A B VGND VNB VPB VPWR Y
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__xnor2_1 abstract view
.subckt sky130_fd_sc_hd__xnor2_1 A B VGND VNB VPB VPWR Y
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__clkbuf_2 abstract view
.subckt sky130_fd_sc_hd__clkbuf_2 A VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__dfxtp_4 abstract view
.subckt sky130_fd_sc_hd__dfxtp_4 CLK D VGND VNB VPB VPWR Q
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__and4_1 abstract view
.subckt sky130_fd_sc_hd__and4_1 A B C D VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__and2_1 abstract view
.subckt sky130_fd_sc_hd__and2_1 A B VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__and3b_1 abstract view
.subckt sky130_fd_sc_hd__and3b_1 A_N B C VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__a31o_1 abstract view
.subckt sky130_fd_sc_hd__a31o_1 A1 A2 A3 B1 VGND VNB VPB VPWR X
.ends

* Black-box entry subcircuit for sky130_fd_sc_hd__and3_1 abstract view
.subckt sky130_fd_sc_hd__and3_1 A B C VGND VNB VPB VPWR X
.ends

.subckt sar8b CF[0] CF[1] CF[2] CF[3] CF[4] CF[5] CF[6] CF[7] CKO CKS CKSB CLK CMP_N
+ CMP_P DATA[0] DATA[1] DATA[2] DATA[3] DATA[4] DATA[5] DATA[6] DATA[7] EN RDY SWN[0]
+ SWN[1] SWN[2] SWN[3] SWN[4] SWN[5] SWN[6] SWN[7] SWP[0] SWP[1] SWP[2] SWP[3] SWP[4]
+ SWP[5] SWP[6] SWP[7] VGND VPWR
XFILLER_0_10_85 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_49_ net4 net8 net14 VGND VGND VPWR VPWR net9 sky130_fd_sc_hd__dfrtp_1
X_66_ net12 net1 net14 VGND VGND VPWR VPWR net31 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_0_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_0_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_16_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_16_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XTAP_TAPCELL_ROW_5_45 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
Xoutput7 net7 VGND VGND VPWR VPWR CF[2] sky130_fd_sc_hd__buf_1
Xoutput20 net20 VGND VGND VPWR VPWR DATA[4] sky130_fd_sc_hd__buf_1
XFILLER_0_7_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xoutput31 net31 VGND VGND VPWR VPWR SWN[7] sky130_fd_sc_hd__buf_1
X_65_ net5 net2 net14 VGND VGND VPWR VPWR net32 sky130_fd_sc_hd__dfrtp_1
XPHY_EDGE_ROW_12_Right_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XTAP_TAPCELL_ROW_12_55 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_48_ net4 net7 net14 VGND VGND VPWR VPWR net8 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_10_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_10_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_EDGE_ROW_8_Left_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
Xoutput10 net10 VGND VGND VPWR VPWR CF[5] sky130_fd_sc_hd__buf_1
Xoutput8 net8 VGND VGND VPWR VPWR CF[3] sky130_fd_sc_hd__buf_1
Xoutput32 net32 VGND VGND VPWR VPWR SWP[0] sky130_fd_sc_hd__clkbuf_1
XFILLER_0_16_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xoutput21 net21 VGND VGND VPWR VPWR DATA[5] sky130_fd_sc_hd__buf_1
XPHY_EDGE_ROW_6_Right_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_81_ cyclic_flag_0.FINAL net32 net3 VGND VGND VPWR VPWR net16 sky130_fd_sc_hd__dfrtp_1
XTAP_TAPCELL_ROW_12_56 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_2_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_64_ net6 net2 net14 VGND VGND VPWR VPWR net33 sky130_fd_sc_hd__dfrtp_1
X_47_ net4 net6 net14 VGND VGND VPWR VPWR net7 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_10_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_9_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_6_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
Xoutput9 net9 VGND VGND VPWR VPWR CF[4] sky130_fd_sc_hd__buf_1
Xoutput11 net11 VGND VGND VPWR VPWR CF[6] sky130_fd_sc_hd__buf_1
Xoutput33 net33 VGND VGND VPWR VPWR SWP[1] sky130_fd_sc_hd__buf_1
Xoutput22 net22 VGND VGND VPWR VPWR DATA[6] sky130_fd_sc_hd__buf_1
X_63_ net7 net2 net14 VGND VGND VPWR VPWR net34 sky130_fd_sc_hd__dfrtp_1
X_80_ cyclic_flag_0.FINAL net33 net3 VGND VGND VPWR VPWR net17 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_4_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_46_ net4 net5 net14 VGND VGND VPWR VPWR net6 sky130_fd_sc_hd__dfrtp_1
Xoutput23 net23 VGND VGND VPWR VPWR DATA[7] sky130_fd_sc_hd__buf_1
Xoutput12 net12 VGND VGND VPWR VPWR CF[7] sky130_fd_sc_hd__buf_1
Xoutput34 net34 VGND VGND VPWR VPWR SWP[2] sky130_fd_sc_hd__buf_1
X_29_ net14 net3 VGND VGND VPWR VPWR _12_ sky130_fd_sc_hd__and2_1
XFILLER_0_1_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_62_ net8 net2 net14 VGND VGND VPWR VPWR net35 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_10_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_45_ net4 net14 net14 VGND VGND VPWR VPWR net5 sky130_fd_sc_hd__dfrtp_1
X_28_ net14 net3 VGND VGND VPWR VPWR _11_ sky130_fd_sc_hd__and2b_1
Xclkload0 clknet_1_0__leaf_CLK VGND VGND VPWR VPWR clkload0/X sky130_fd_sc_hd__clkbuf_4
Xoutput13 net13 VGND VGND VPWR VPWR CKO sky130_fd_sc_hd__buf_1
Xoutput35 net35 VGND VGND VPWR VPWR SWP[3] sky130_fd_sc_hd__buf_1
XFILLER_0_7_31 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_7_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
Xoutput24 net24 VGND VGND VPWR VPWR SWN[0] sky130_fd_sc_hd__buf_1
X_61_ net9 net2 net14 VGND VGND VPWR VPWR net36 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_13_23 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XTAP_TAPCELL_ROW_8_49 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_44_ clknet_1_1__leaf_CLK _01_ VGND VGND VPWR VPWR net14 sky130_fd_sc_hd__dfxtp_4
Xclkbuf_1_1__f_CLK clknet_0_CLK VGND VGND VPWR VPWR clknet_1_1__leaf_CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_0_4_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_16_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_27_ _10_ VGND VGND VPWR VPWR _00_ sky130_fd_sc_hd__clkbuf_1
XFILLER_0_1_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xoutput36 net36 VGND VGND VPWR VPWR SWP[4] sky130_fd_sc_hd__buf_1
Xoutput14 net14 VGND VGND VPWR VPWR CKS sky130_fd_sc_hd__buf_1
XPHY_EDGE_ROW_15_Left_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_13_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_13_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_7_43 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_7_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
Xoutput25 net25 VGND VGND VPWR VPWR SWN[1] sky130_fd_sc_hd__buf_1
X_60_ net10 net2 net14 VGND VGND VPWR VPWR net37 sky130_fd_sc_hd__dfrtp_1
XPHY_EDGE_ROW_0_Left_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_4_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_43_ clknet_1_0__leaf_CLK _00_ VGND VGND VPWR VPWR net15 sky130_fd_sc_hd__dfxtp_1
X_26_ _07_ _08_ _09_ VGND VGND VPWR VPWR _10_ sky130_fd_sc_hd__mux2_1
XPHY_EDGE_ROW_3_Left_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
Xoutput37 net37 VGND VGND VPWR VPWR SWP[5] sky130_fd_sc_hd__buf_1
Xoutput15 net15 VGND VGND VPWR VPWR CKSB sky130_fd_sc_hd__buf_1
XFILLER_0_16_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xoutput26 net26 VGND VGND VPWR VPWR SWN[2] sky130_fd_sc_hd__buf_1
XPHY_EDGE_ROW_1_Right_1 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_7_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_42_ _20_ VGND VGND VPWR VPWR _05_ sky130_fd_sc_hd__clkbuf_1
XFILLER_0_12_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_1_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_1_57 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_25_ clk_div_0.COUNT\\[0\\] clk_div_0.COUNT\\[1\\] clk_div_0.COUNT\\[2\\] clk_div_0.COUNT\\[3\\]
+ VGND VGND VPWR VPWR _09_ sky130_fd_sc_hd__nand4_2
Xoutput38 net38 VGND VGND VPWR VPWR SWP[6] sky130_fd_sc_hd__buf_1
XPHY_EDGE_ROW_15_Right_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
Xoutput27 net27 VGND VGND VPWR VPWR SWN[3] sky130_fd_sc_hd__buf_1
Xoutput16 net16 VGND VGND VPWR VPWR DATA[0] sky130_fd_sc_hd__buf_1
XFILLER_0_4_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_10_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XTAP_TAPCELL_ROW_9_51 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_24_ net15 net3 VGND VGND VPWR VPWR _08_ sky130_fd_sc_hd__or2b_1
XFILLER_0_1_69 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_41_ net3 _09_ _19_ VGND VGND VPWR VPWR _20_ sky130_fd_sc_hd__and3_1
Xoutput39 net39 VGND VGND VPWR VPWR SWP[7] sky130_fd_sc_hd__buf_1
Xoutput28 net28 VGND VGND VPWR VPWR SWN[4] sky130_fd_sc_hd__buf_1
Xoutput17 net17 VGND VGND VPWR VPWR DATA[1] sky130_fd_sc_hd__buf_1
XTAP_TAPCELL_ROW_16_61 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_7_57 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XTAP_TAPCELL_ROW_3_42 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_40_ clk_div_0.COUNT\\[0\\] clk_div_0.COUNT\\[1\\] clk_div_0.COUNT\\[2\\] clk_div_0.COUNT\\[3\\]
+ VGND VGND VPWR VPWR _19_ sky130_fd_sc_hd__a31o_1
XFILLER_0_16_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XTAP_TAPCELL_ROW_10_52 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_23_ net14 net3 VGND VGND VPWR VPWR _07_ sky130_fd_sc_hd__or2b_1
XPHY_EDGE_ROW_7_Left_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_17_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XTAP_TAPCELL_ROW_16_62 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_7_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_7_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_EDGE_ROW_5_Right_5 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
Xoutput29 net29 VGND VGND VPWR VPWR SWN[5] sky130_fd_sc_hd__buf_1
Xoutput18 net18 VGND VGND VPWR VPWR DATA[2] sky130_fd_sc_hd__buf_1
X_22_ _06_ VGND VGND VPWR VPWR net13 sky130_fd_sc_hd__clkbuf_1
XFILLER_0_10_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_5_91 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XTAP_TAPCELL_ROW_10_53 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
Xoutput19 net19 VGND VGND VPWR VPWR DATA[3] sky130_fd_sc_hd__buf_1
XPHY_EDGE_ROW_11_Right_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_14_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_4_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_4_49 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_16_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_15_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_21_ net14 cyclic_flag_0.FINAL VGND VGND VPWR VPWR _06_ sky130_fd_sc_hd__and2_1
XFILLER_0_11_84 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_11_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_17_94 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_16_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_14_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
Xinput1 CMP_N VGND VGND VPWR VPWR net1 sky130_fd_sc_hd__clkbuf_2
XFILLER_0_2_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_EDGE_ROW_9_Right_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_14_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_8_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_5_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XTAP_TAPCELL_ROW_0_36 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
Xinput2 CMP_P VGND VGND VPWR VPWR net2 sky130_fd_sc_hd__clkbuf_2
X_79_ cyclic_flag_0.FINAL net34 net3 VGND VGND VPWR VPWR net18 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_17_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_EDGE_ROW_11_Left_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XTAP_TAPCELL_ROW_6_46 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_EDGE_ROW_14_Left_32 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XTAP_TAPCELL_ROW_0_37 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_78_ cyclic_flag_0.FINAL net35 net3 VGND VGND VPWR VPWR net19 sky130_fd_sc_hd__dfrtp_1
XTAP_TAPCELL_ROW_6_47 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
Xinput3 EN VGND VGND VPWR VPWR net3 sky130_fd_sc_hd__buf_4
XPHY_EDGE_ROW_2_Left_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_EDGE_ROW_0_Right_0 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_2_85 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XTAP_TAPCELL_ROW_13_57 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_TAPCELL_ROW_0_38 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_11_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_77_ cyclic_flag_0.FINAL net36 net3 VGND VGND VPWR VPWR net20 sky130_fd_sc_hd__dfrtp_1
Xinput4 RDY VGND VGND VPWR VPWR net4 sky130_fd_sc_hd__clkbuf_2
XFILLER_0_1_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_2_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_17_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_17_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_8_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_8_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_8_41 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_5_42 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_76_ cyclic_flag_0.FINAL net37 net3 VGND VGND VPWR VPWR net21 sky130_fd_sc_hd__dfrtp_1
X_59_ net11 net2 net14 VGND VGND VPWR VPWR net38 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_14_67 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_8_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_11_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_5_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_58_ net12 net2 net14 VGND VGND VPWR VPWR net39 sky130_fd_sc_hd__dfrtp_1
XPHY_EDGE_ROW_14_Right_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_75_ cyclic_flag_0.FINAL net38 net3 VGND VGND VPWR VPWR net22 sky130_fd_sc_hd__dfrtp_1
XPHY_EDGE_ROW_6_Left_24 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_EDGE_ROW_4_Right_4 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_14_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_74_ cyclic_flag_0.FINAL net39 net3 VGND VGND VPWR VPWR net23 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_5_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_17_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_11_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_57_ clknet_1_0__leaf_CLK _05_ VGND VGND VPWR VPWR clk_div_0.COUNT\\[3\\] sky130_fd_sc_hd__dfxtp_1
XFILLER_0_2_67 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_14_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_12_7 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_11_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_73_ net5 net1 net14 VGND VGND VPWR VPWR net24 sky130_fd_sc_hd__dfrtp_1
X_56_ clknet_1_0__leaf_CLK _04_ VGND VGND VPWR VPWR clk_div_0.COUNT\\[2\\] sky130_fd_sc_hd__dfxtp_1
XFILLER_0_2_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_39_ _18_ VGND VGND VPWR VPWR _04_ sky130_fd_sc_hd__clkbuf_1
X_72_ net6 net1 net14 VGND VGND VPWR VPWR net25 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_5_57 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_EDGE_ROW_10_Right_10 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_55_ clknet_1_1__leaf_CLK _03_ VGND VGND VPWR VPWR clk_div_0.COUNT\\[1\\] sky130_fd_sc_hd__dfxtp_1
X_38_ net3 _16_ _17_ VGND VGND VPWR VPWR _18_ sky130_fd_sc_hd__and3_1
XPHY_EDGE_ROW_8_Right_8 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_5_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_14_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_11_39 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_71_ net7 net1 net14 VGND VGND VPWR VPWR net26 sky130_fd_sc_hd__dfrtp_1
X_54_ clknet_1_1__leaf_CLK _02_ VGND VGND VPWR VPWR clk_div_0.COUNT\\[0\\] sky130_fd_sc_hd__dfxtp_1
XFILLER_0_17_49 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_EDGE_ROW_10_Left_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_37_ clk_div_0.COUNT\\[0\\] clk_div_0.COUNT\\[1\\] clk_div_0.COUNT\\[2\\] VGND VGND VPWR
+ VPWR _17_ sky130_fd_sc_hd__a21o_1
XPHY_EDGE_ROW_13_Left_31 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XTAP_TAPCELL_ROW_4_43 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_70_ net8 net1 net14 VGND VGND VPWR VPWR net27 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_17_17 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_12_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_53_ net4 net12 net14 VGND VGND VPWR VPWR cyclic_flag_0.FINAL sky130_fd_sc_hd__dfrtp_2
XFILLER_0_6_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_6_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_2_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_0_CLK CLK VGND VGND VPWR VPWR clknet_0_CLK sky130_fd_sc_hd__clkbuf_16
XTAP_TAPCELL_ROW_17_63 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_36_ clk_div_0.COUNT\\[0\\] clk_div_0.COUNT\\[1\\] clk_div_0.COUNT\\[2\\] VGND VGND VPWR
+ VPWR _16_ sky130_fd_sc_hd__nand3_1
XFILLER_0_3_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_14_29 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_9_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_0_60 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_0_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_0_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XTAP_TAPCELL_ROW_4_44 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_52_ net4 net11 net14 VGND VGND VPWR VPWR net12 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_2_39 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XTAP_TAPCELL_ROW_11_54 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_35_ clk_div_0.COUNT\\[0\\] clk_div_0.COUNT\\[1\\] _15_ VGND VGND VPWR VPWR _03_ sky130_fd_sc_hd__a21oi_1
XTAP_TAPCELL_ROW_17_64 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_8_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_EDGE_ROW_17_Right_17 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_17_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_12_85 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_12_41 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_51_ net4 net10 net14 VGND VGND VPWR VPWR net11 sky130_fd_sc_hd__dfrtp_1
XTAP_TAPCELL_ROW_17_65 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_34_ clk_div_0.COUNT\\[0\\] clk_div_0.COUNT\\[1\\] net3 VGND VGND VPWR VPWR _15_ sky130_fd_sc_hd__o21ai_1
XFILLER_0_5_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_EDGE_ROW_17_Left_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_12_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_12_53 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_50_ net4 net9 net14 VGND VGND VPWR VPWR net10 sky130_fd_sc_hd__dfrtp_1
X_33_ _14_ VGND VGND VPWR VPWR _02_ sky130_fd_sc_hd__clkbuf_1
XFILLER_0_8_29 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_EDGE_ROW_5_Left_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_9_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_8_7 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_0_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_EDGE_ROW_3_Right_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_12_65 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_8_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_32_ clk_div_0.COUNT\\[0\\] net3 VGND VGND VPWR VPWR _14_ sky130_fd_sc_hd__and2b_1
XFILLER_0_15_43 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_EDGE_ROW_13_Right_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_6_85 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_12_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_10_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XTAP_TAPCELL_ROW_7_48 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_31_ _13_ VGND VGND VPWR VPWR _01_ sky130_fd_sc_hd__clkbuf_1
XFILLER_0_15_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_15_3 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XTAP_TAPCELL_ROW_14_58 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_TAPCELL_ROW_1_39 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_0_98 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_6_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_4_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_30_ _11_ _12_ _09_ VGND VGND VPWR VPWR _13_ sky130_fd_sc_hd__mux2_1
XFILLER_0_3_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_9_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_EDGE_ROW_9_Left_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_0_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_0_66 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XTAP_TAPCELL_ROW_14_59 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_EDGE_ROW_7_Right_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_15_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_0_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_0_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_0_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_EDGE_ROW_12_Left_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XTAP_TAPCELL_ROW_2_40 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_2_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_17_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XTAP_TAPCELL_ROW_8_50 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_TAPCELL_ROW_15_60 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XTAP_TAPCELL_ROW_2_41 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_0_13_80 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_3_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_3_57 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_15_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_9_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_13_92 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_12_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_3_69 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
X_69_ net9 net1 net14 VGND VGND VPWR VPWR net28 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_0_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_9_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_EDGE_ROW_16_Left_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_5_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_EDGE_ROW_1_Left_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_EDGE_ROW_16_Right_16 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_10_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_10_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_0_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_EDGE_ROW_4_Left_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_68_ net10 net1 net14 VGND VGND VPWR VPWR net29 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_4_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_1_81 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_EDGE_ROW_2_Right_2 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
Xoutput5 net5 VGND VGND VPWR VPWR CF[0] sky130_fd_sc_hd__buf_1
XFILLER_0_12_29 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_11_3 VPWR VGND VPWR VGND sky130_ef_sc_hd__decap_12
Xclkbuf_1_0__f_CLK clknet_0_CLK VGND VGND VPWR VPWR clknet_1_0__leaf_CLK sky130_fd_sc_hd__clkbuf_16
X_67_ net11 net1 net14 VGND VGND VPWR VPWR net30 sky130_fd_sc_hd__dfrtp_1
XFILLER_0_1_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xoutput6 net6 VGND VGND VPWR VPWR CF[1] sky130_fd_sc_hd__buf_1
XFILLER_0_16_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_12_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_6_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_6_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xoutput30 net30 VGND VGND VPWR VPWR SWN[6] sky130_fd_sc_hd__buf_1
.ends

* expanding   symbol:  tdc.sym # of pins=8
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/tdc.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/tdc.sch
.subckt tdc CLK VDD VSS VINP VINN OUTP OUTN RDY
*.ipin VDD
*.ipin VSS
*.ipin VINP
*.ipin VINN
*.ipin CLK
*.opin OUTP
*.opin OUTN
*.opin RDY
x9 CLK VDD VSS VINP VINN INP delay_gate
x10 CLK VDD VSS VINN VINP INN delay_gate
x1 VDD VSS INP INN OUTP OUTN phase_detector
x2 INP INN VSS VSS VDD VDD RDY sky130_fd_sc_hd__or2_1
.ends


* expanding   symbol:  single_8b_cdac.sym # of pins=6
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/single_8b_cdac.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/single_8b_cdac.sch
.subckt single_8b_cdac VDD CF[0] CF[1] CF[2] CF[3] CF[4] CF[5] CF[6] CF[7] SW_IN[0] SW_IN[1] SW_IN[2] SW_IN[3] SW_IN[4] SW_IN[5]
+ SW_IN[6] SW_IN[7] VCM VSS VC
*.ipin VDD
*.ipin CF[0],CF[1],CF[2],CF[3],CF[4],CF[5],CF[6],CF[7]
*.ipin SW_IN[0],SW_IN[1],SW_IN[2],SW_IN[3],SW_IN[4],SW_IN[5],SW_IN[6],SW_IN[7]
*.ipin VCM
*.ipin VSS
*.iopin VC
x2 VCM SWN[0] SWN[1] SWN[2] SWN[3] SWN[4] SWN[5] SWN[6] SWN[7] VC x8b_cap_array
x10[0] VDD CF[0] SW_IN[0] VCM VSS SWN[0] cdac_sw_1
x10[1] VDD CF[1] SW_IN[1] VCM VSS SWN[1] cdac_sw_1
x10[2] VDD CF[2] SW_IN[2] VCM VSS SWN[2] cdac_sw_1
x10[3] VDD CF[3] SW_IN[3] VCM VSS SWN[3] cdac_sw_1
x10[4] VDD CF[4] SW_IN[4] VCM VSS SWN[4] cdac_sw_1
x10[5] VDD CF[5] SW_IN[5] VCM VSS SWN[5] cdac_sw_1
x10[6] VDD CF[6] SW_IN[6] VCM VSS SWN[6] cdac_sw_1
x10[7] VDD CF[7] SW_IN[7] VCM VSS SWN[7] cdac_sw_1
.ends


* expanding   symbol:  th_sw.sym # of pins=6
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/th_sw.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/th_sw.sch
.subckt th_sw VDD VSS CK CKB IN OUT
*.ipin VDD
*.ipin VSS
*.ipin CK
*.ipin CKB
*.ipin IN
*.opin OUT
XM1 net1 CKB VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM2 net2 net3 VDD net2 sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM3 net3 net1 net2 net2 sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 net1 CKB net5 VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM5 net5 CK VSS VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM6 net1 net3 net5 VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM7 net5 net3 IN VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM8 net3 VDD net4 VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM9 net4 CK VSS VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XC1 net2 net5 sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=4 m=4
XM10 OUT net3 IN VSS sky130_fd_pr__nfet_01v8 L=0.15 W=8 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
.ends

* expanding   symbol:  delay_gate.sym # of pins=6
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/delay_gate.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/delay_gate.sch
.subckt delay_gate IN VDD VSS VINP VINN OUT
*.ipin VINP
*.ipin VINN
*.ipin IN
*.ipin VSS
*.ipin VDD
*.opin OUT
XM1 net3 VINP net8 VDD sky130_fd_pr__pfet_01v8 L=1 W=9 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM2 net2 net1 net3 VDD sky130_fd_pr__pfet_01v8 L=1 W=9 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM3 net2 net1 net6 VSS sky130_fd_pr__nfet_01v8 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 net1 IN net5 VDD sky130_fd_pr__pfet_01v8 L=1 W=9 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM5 net1 IN net4 VSS sky130_fd_pr__nfet_01v8 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM6 net4 VINN net7 VSS sky130_fd_pr__nfet_01v8 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
x6 net2 VSS VSS VDD VDD OUT sky130_fd_sc_hd__buf_4
XM7 net5 VSS VDD VDD sky130_fd_pr__pfet_01v8 L=1 W=9 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM8 net6 VDD VSS VSS sky130_fd_pr__nfet_01v8 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM9 net7 VDD VSS VSS sky130_fd_pr__nfet_01v8 L=1 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM10 net8 VSS VDD VDD sky130_fd_pr__pfet_01v8 L=1 W=9 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
.ends


* expanding   symbol:  phase_detector.sym # of pins=6
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/phase_detector.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/phase_detector.sch
.subckt phase_detector VDD VSS INP INN OUTP OUTN
*.ipin VDD
*.ipin INP
*.ipin INN
*.ipin VSS
*.opin OUTP
*.opin OUTN
XM7 net4 INP VSS VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM6 net3 net5 net4 VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM9 net5 net3 net6 VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM10 net6 INN VSS VSS sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM1 net1 INN VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM2 net3 INP net1 VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM3 net2 INP VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM4 net5 INN net2 VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM5 net3 net5 VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
XM8 net5 net3 VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1 m=1
x1 OUTP net3 VSS VSS VDD VDD OUTN sky130_fd_sc_hd__nand2_1
x2 net5 OUTN VSS VSS VDD VDD OUTP sky130_fd_sc_hd__nand2_1
.ends


* expanding   symbol:  x8b_cap_array.sym # of pins=3
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/x8b_cap_array.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/x8b_cap_array.sch
.subckt x8b_cap_array vcm sw[0] sw[1] sw[2] sw[3] sw[4] sw[5] sw[6] sw[7] vc
*.ipin sw[0],sw[1],sw[2],sw[3],sw[4],sw[5],sw[6],sw[7]
*.ipin vcm
*.iopin vc
XC3 vc sw[0] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=128 m=128
XC4 vc sw[1] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=64 m=64
XC5 vc sw[2] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=32 m=32
XC6 vc sw[3] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=16 m=16
XC7 vc sw[4] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=8 m=8
XC8 vc sw[5] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=4 m=4
XC9 vc sw[6] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=2 m=2
XC10 vc sw[7] sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=1 m=1
XC11 vc vcm sky130_fd_pr__cap_mim_m3_1 W=4 L=4 MF=1 m=1
.ends


* expanding   symbol:  cdac_sw_1.sym # of pins=6
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/cdac_sw_1.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/cdac_sw_1.sch
.subckt cdac_sw_1 vdda cki bi vcm vssa dac_out
*.ipin vdda
*.ipin cki
*.ipin bi
*.ipin vcm
*.ipin vssa
*.opin dac_out
x1 vdda cki vssa clk0 clkb0 clk1 clkb1 nooverlap_clk
x2 vdda clkb1 clk1 vssa vcm dac_out tg_sw_1
x3 vdda bi clk0 clkb0 vssa dac_out dac_sw_1
.ends


* expanding   symbol:  nooverlap_clk.sym # of pins=7
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/nooverlap_clk.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/nooverlap_clk.sch
.subckt nooverlap_clk vdda in vssa clk0 clkb0 clk1 clkb1
*.ipin vdda
*.ipin in
*.ipin vssa
*.opin clk0
*.opin clkb0
*.opin clk1
*.opin clkb1
x1 in a vssa vssa vdda vdda net5 sky130_fd_sc_hd__nand2_1
x2 b net1 vssa vssa vdda vdda net2 sky130_fd_sc_hd__nand2_1
x3 in vssa vssa vdda vdda net1 sky130_fd_sc_hd__inv_1
x4 net5 vssa vssa vdda vdda net4 sky130_fd_sc_hd__inv_1
x5 net2 vssa vssa vdda vdda net3 sky130_fd_sc_hd__inv_1
x6 net4 vssa vssa vdda vdda b sky130_fd_sc_hd__inv_1
x7 net3 vssa vssa vdda vdda a sky130_fd_sc_hd__inv_1
x8 b vssa vssa vdda vdda net6 sky130_fd_sc_hd__inv_4
x9 a vssa vssa vdda vdda net7 sky130_fd_sc_hd__inv_4
x10 net6 vssa vssa vdda vdda clkb0 sky130_fd_sc_hd__inv_8
x11 net7 vssa vssa vdda vdda clkb1 sky130_fd_sc_hd__inv_8
x12 clkb0 vssa vssa vdda vdda clk0 sky130_fd_sc_hd__inv_8
x13 clkb1 vssa vssa vdda vdda clk1 sky130_fd_sc_hd__inv_8
.ends


* expanding   symbol:  tg_sw_1.sym # of pins=6
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/tg_sw_1.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/tg_sw_1.sch
.subckt tg_sw_1 vdda swp swn vssa in out
*.ipin vdda
*.ipin swp
*.ipin swn
*.ipin vssa
*.iopin in
*.iopin out
XM1 in swp out vdda sky130_fd_pr__pfet_01v8 L=0.5 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8
XM2 in swn out vssa sky130_fd_pr__nfet_01v8 L=0.5 W=0.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8
.ends


* expanding   symbol:  dac_sw_1.sym # of pins=6
** sym_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/dac_sw_1.sym
** sch_path: /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/xschem/dac_sw_1.sch
.subckt dac_sw_1 vdda in ck ckb vssa out
*.ipin vdda
*.ipin in
*.ipin ck
*.ipin ckb
*.ipin vssa
*.opin out
XM1 net1 in vdda vdda sky130_fd_pr__pfet_01v8 L=0.5 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8
XM2 out ckb net1 vdda sky130_fd_pr__pfet_01v8 L=0.5 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8
XM3 out ck net2 vssa sky130_fd_pr__nfet_01v8 L=0.5 W=0.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8
XM4 net2 in vssa vssa sky130_fd_pr__nfet_01v8 L=0.5 W=0.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
+ ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=8 m=8
.ends

.GLOBAL GND
.end
"}
C {devices/launcher.sym} 700 -470 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/adc8b_tb_open_static.raw tran"
}
