v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 890 -100 950 -100 {lab=#net1}
N 650 -100 710 -100 {lab=#net2}
N 410 -100 470 -100 {lab=#net3}
N 180 -80 230 -80 {lab=#net4}
N 180 -80 180 -40 {lab=#net4}
N 180 -40 410 -40 {lab=#net4}
N 410 -80 410 -40 {lab=#net4}
N 420 -80 470 -80 {lab=#net5}
N 420 -80 420 -40 {lab=#net5}
N 420 -40 650 -40 {lab=#net5}
N 650 -80 650 -40 {lab=#net5}
N 660 -80 710 -80 {lab=#net6}
N 660 -80 660 -40 {lab=#net6}
N 660 -40 890 -40 {lab=#net6}
N 890 -80 890 -40 {lab=#net6}
N 900 -80 950 -80 {lab=#net7}
N 900 -80 900 -40 {lab=#net7}
N 900 -40 1130 -40 {lab=#net7}
N 1130 -80 1130 -40 {lab=#net7}
N 1140 -80 1190 -80 {lab=CKSB}
N 1140 -40 1370 -40 {lab=CKSB}
N 1370 -80 1370 -40 {lab=CKSB}
N 1130 -100 1190 -100 {lab=#net8}
N 1140 -80 1140 -40 {lab=CKSB}
C {sky130_stdcells/dfrbp_1.sym} 320 -80 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 560 -80 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 800 -80 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 1040 -80 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 230 -100 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 230 -60 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 470 -60 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 710 -60 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 950 -60 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 100 -140 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 100 -120 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 100 -100 0 0 {name=p21 sig_type=std_logic lab=CLK}
C {devices/opin.sym} 80 -80 0 0 {name=p4 sig_type=std_logic lab=CKS}
C {devices/opin.sym} 80 -60 0 0 {name=p5 sig_type=std_logic lab=CKSB}
C {devices/lab_wire.sym} 1370 -100 0 1 {name=p13 sig_type=std_logic lab=CKS}
C {devices/lab_wire.sym} 1370 -80 0 1 {name=p14 sig_type=std_logic lab=CKSB}
C {sky130_stdcells/dfrbp_1.sym} 1280 -80 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 1190 -60 0 0 {name=p15 sig_type=std_logic lab=VDD}
