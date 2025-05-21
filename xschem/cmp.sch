v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 500 -500 500 -440 {lab=ON}
N 500 -500 660 -500 {lab=ON}
N 860 -500 1020 -500 {lab=OP}
N 1020 -500 1020 -440 {lab=OP}
N 500 -380 500 -340 {lab=#net1}
N 1020 -380 1020 -340 {lab=#net2}
N 660 -500 820 -530 {lab=ON}
N 700 -530 860 -500 {lab=OP}
N 540 -410 1020 -500 {lab=OP}
N 500 -500 980 -410 {lab=ON}
N 500 -560 1020 -560 {lab=VDD}
N 500 -280 1020 -280 {lab=#net3}
N 320 -500 320 -380 {lab=#net1}
N 320 -380 500 -380 {lab=#net1}
N 1220 -500 1220 -380 {lab=#net2}
N 1020 -380 1220 -380 {lab=#net2}
N 720 -140 760 -140 {lab=#net4}
N 720 -100 760 -100 {lab=#net5}
C {sky130_fd_pr/pfet3_01v8.sym} 480 -530 0 0 {name=M1
L=0.15
W=3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 480 -310 0 0 {name=M2
L=0.15
W=1
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 680 -530 0 1 {name=M3
L=0.15
W=3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1040 -530 0 1 {name=M4
L=0.15
W=3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1040 -310 0 1 {name=M5
L=0.15
W=1
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 840 -530 0 0 {name=M6
L=0.15
W=3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 520 -410 0 1 {name=M7
L=0.15
W=1
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1000 -410 0 0 {name=M8
L=0.15
W=1
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 740 -250 0 0 {name=M9
L=0.15
W=1
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 760 -220 2 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 760 -560 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 460 -530 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1060 -530 0 1 {name=p3 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 720 -250 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 460 -310 0 0 {name=p5 sig_type=std_logic lab=VP}
C {devices/lab_wire.sym} 1060 -310 0 1 {name=p6 sig_type=std_logic lab=VN}
C {devices/lab_wire.sym} 500 -460 0 0 {name=p7 sig_type=std_logic lab=ON}
C {devices/lab_wire.sym} 1020 -460 0 1 {name=p8 sig_type=std_logic lab=OP}
C {devices/ipin.sym} 100 -500 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 100 -480 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 100 -460 0 0 {name=p11 sig_type=std_logic lab=VP}
C {devices/ipin.sym} 100 -440 0 0 {name=p12 sig_type=std_logic lab=VN}
C {devices/opin.sym} 100 -400 0 0 {name=p13 sig_type=std_logic lab=OP}
C {devices/opin.sym} 100 -380 0 0 {name=p14 sig_type=std_logic lab=ON}
C {devices/opin.sym} 100 -360 0 0 {name=p18 sig_type=std_logic lab=RDY}
C {devices/ipin.sym} 100 -420 0 0 {name=p20 sig_type=std_logic lab=CLK}
C {sky130_fd_pr/pfet3_01v8.sym} 300 -530 0 0 {name=M10
L=0.15
W=3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1240 -530 0 1 {name=M11
L=0.15
W=3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 320 -560 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1220 -560 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 280 -530 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1260 -530 0 1 {name=p24 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 640 -140 0 0 {name=p25 sig_type=std_logic lab=ON}
C {devices/lab_wire.sym} 640 -100 0 0 {name=p26 sig_type=std_logic lab=OP}
C {devices/lab_wire.sym} 880 -120 0 1 {name=p27 sig_type=std_logic lab=RDY}
C {sky130_stdcells/or2_1.sym} 820 -120 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__}
C {sky130_stdcells/inv_1.sym} 680 -140 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__}
C {sky130_stdcells/inv_1.sym} 680 -100 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__}
