v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 380 -190 380 -170 {lab=CF[0]}
N 380 -170 440 -170 {lab=CF[0]}
N 620 -190 620 -170 {lab=CF[1]}
N 620 -170 680 -170 {lab=CF[1]}
N 860 -190 860 -170 {lab=CF[2]}
N 860 -170 920 -170 {lab=CF[2]}
N 1100 -190 1100 -170 {lab=CF[3]}
N 1100 -170 1160 -170 {lab=CF[3]}
N 1340 -190 1340 -170 {lab=CF[4]}
N 480 -80 520 -80 {lab=FINAL}
N 359.8676304921169 -80 400 -80 {lab=FINAL_BUFF}
N 1580 -190 1580 -170 {lab=CF[5]}
N 1580 -170 1640 -170 {lab=CF[5]}
N 1820 -190 1820 -170 {lab=CF[6]}
N 1820 -170 1880 -170 {lab=CF[6]}
N 2060 -190 2060 -170 {lab=CF[7]}
N 1340 -170 1400 -170 {lab=CF[4]}
N 2300 -190 2300 -170 {lab=FINAL_BUFF}
N 2060 -170 2120 -170 {lab=CF[7]}
C {sky130_stdcells/dfrtp_1.sym} 290 -170 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 530 -170 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 770 -170 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 1010 -170 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 1250 -170 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 200 -190 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 440 -190 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 680 -190 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 920 -190 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1160 -190 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 200 -170 0 0 {name=p6 sig_type=std_logic lab=EN}
C {devices/lab_wire.sym} 200 -150 0 0 {name=p7 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 440 -150 0 0 {name=p8 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 680 -150 0 0 {name=p9 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 920 -150 0 0 {name=p10 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 1160 -150 0 0 {name=p11 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 380 -170 0 1 {name=p12 sig_type=std_logic lab=CF[0]}
C {devices/lab_wire.sym} 620 -170 0 1 {name=p13 sig_type=std_logic lab=CF[1]}
C {devices/lab_wire.sym} 860 -170 0 1 {name=p14 sig_type=std_logic lab=CF[2]}
C {devices/lab_wire.sym} 1100 -170 0 1 {name=p15 sig_type=std_logic lab=CF[3]}
C {devices/lab_wire.sym} 1340 -170 0 1 {name=p16 sig_type=std_logic lab=CF[4]}
C {devices/lab_wire.sym} 519.8676304921169 -80 0 1 {name=p18 sig_type=std_logic lab=FINAL}
C {devices/lab_wire.sym} 359.8676304921169 -80 0 0 {name=p19 sig_type=std_logic lab=FINAL_BUFF}
C {devices/ipin.sym} 100 -200 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 100 -180 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 100 -140 0 0 {name=p21 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} 100 -120 0 0 {name=p22 sig_type=std_logic lab=CKSB}
C {devices/opin.sym} 100 -100 0 0 {name=p23 sig_type=std_logic lab=CF[0:7]}
C {devices/opin.sym} 99.86763049211686 -80 0 0 {name=p24 sig_type=std_logic lab=FINAL}
C {sky130_stdcells/buf_1.sym} 440 -80 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 1490 -170 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 1730 -170 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 1970 -170 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 1400 -190 0 0 {name=p25 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1640 -190 0 0 {name=p26 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1880 -190 0 0 {name=p27 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1400 -150 0 0 {name=p28 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 1640 -150 0 0 {name=p29 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 1880 -150 0 0 {name=p30 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 1580 -170 0 1 {name=p31 sig_type=std_logic lab=CF[5]}
C {devices/lab_wire.sym} 1820 -170 0 1 {name=p32 sig_type=std_logic lab=CF[6]}
C {devices/lab_wire.sym} 2060 -170 0 1 {name=p33 sig_type=std_logic lab=CF[7]}
C {devices/ipin.sym} 100 -160 0 0 {name=p34 sig_type=std_logic lab=EN}
C {sky130_stdcells/dfrtp_1.sym} 2210 -170 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 2120 -190 0 0 {name=p35 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 2120 -150 0 0 {name=p36 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 2300 -170 0 1 {name=p37 sig_type=std_logic lab=FINAL_BUFF}
