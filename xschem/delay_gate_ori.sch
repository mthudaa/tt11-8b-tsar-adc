v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 540 -410 540 -310 {lab=IN}
N 760 -310 760 -210 {lab=#net1}
N 800 -280 800 -240 {lab=#net2}
N 800 -380 800 -340 {lab=#net3}
N 580 -380 580 -340 {lab=#net1}
N 580 -280 580 -240 {lab=#net4}
N 580 -480 580 -440 {lab=VDD}
N 800 -180 800 -140 {lab=VSS}
N 580 -180 580 -140 {lab=VSS}
N 580 -140 800 -140 {lab=VSS}
N 580 -480 800 -480 {lab=VDD}
N 800 -480 800 -440 {lab=VDD}
N 580 -360 680 -360 {lab=#net1}
N 680 -360 680 -260 {lab=#net1}
N 680 -260 760 -260 {lab=#net1}
N 800 -260 860 -260 {lab=#net2}
N 860 -260 920 -260 {lab=#net2}
C {sky130_fd_pr/pfet3_01v8.sym} 780 -410 0 0 {name=M1
L=0.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 780 -310 0 0 {name=M2
L=0.5
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
C {sky130_fd_pr/nfet3_01v8.sym} 780 -210 0 0 {name=M3
L=0.5
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
C {sky130_fd_pr/pfet3_01v8.sym} 560 -410 0 0 {name=M4
L=0.5
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
C {sky130_fd_pr/nfet3_01v8.sym} 560 -310 0 0 {name=M5
L=0.5
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
C {sky130_fd_pr/nfet3_01v8.sym} 560 -210 0 0 {name=M6
L=0.5
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
C {devices/lab_wire.sym} 760 -410 0 0 {name=p1 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 540 -210 0 0 {name=p2 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 540 -360 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 1040 -240 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {devices/ipin.sym} 200 -300 0 0 {name=p7 lab=VINP}
C {devices/ipin.sym} 200 -280 0 0 {name=p8 lab=VINN}
C {devices/ipin.sym} 200 -360 0 0 {name=p9 lab=IN}
C {devices/ipin.sym} 200 -320 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 200 -340 0 0 {name=p11 lab=VDD}
C {devices/opin.sym} 180 -210 0 0 {name=p12 lab=OUT}
C {devices/lab_wire.sym} 680 -480 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 680 -140 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_stdcells/and2_1.sym} 980 -240 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hs__ }
C {devices/lab_wire.sym} 920 -220 0 0 {name=p22 sig_type=std_logic lab=IN}
C {devices/code_shown.sym} 250 -90 0 0 {name=s1 only_toplevel=false value=".include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hs/spice/sky130_fd_sc_hs.spice"}
