v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -540 440 -500 {lab=#net1}
N 440 -440 440 -400 {lab=OUT}
N 440 -340 440 -300 {lab=#net2}
N 300 -570 400 -570 {lab=IN}
N 300 -570 300 -270 {lab=IN}
N 300 -270 400 -270 {lab=IN}
N 440 -420 560 -420 {lab=OUT}
C {sky130_fd_pr/pfet3_01v8.sym} 420 -570 0 0 {name=M1
L=0.15
W=3
body=VDD
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 420 -470 0 0 {name=M2
L=0.15
W=3
body=VDD
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 420 -370 0 0 {name=M3
L=0.15
W=1
body=VSS
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 420 -270 0 0 {name=M4
L=0.15
W=1
body=VSS
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 440 -600 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 440 -240 2 1 {name=p2 sig_type=std_logic lab=VSS
W=6}
C {devices/lab_wire.sym} 300 -420 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 400 -470 0 0 {name=p4 sig_type=std_logic lab=CKB}
C {devices/lab_wire.sym} 400 -370 0 0 {name=p5 sig_type=std_logic lab=CK}
C {devices/lab_wire.sym} 560 -420 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {devices/ipin.sym} 140 -540 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 140 -520 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 140 -500 0 0 {name=p9 sig_type=std_logic lab=IN}
C {devices/ipin.sym} 140 -480 0 0 {name=p10 sig_type=std_logic lab=CKB}
C {devices/ipin.sym} 140 -460 0 0 {name=p11 sig_type=std_logic lab=CK}
C {devices/opin.sym} 140 -440 0 0 {name=p12 sig_type=std_logic lab=OUT}
