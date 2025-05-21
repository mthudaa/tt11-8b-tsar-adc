v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 400 -420 640 -420 {lab=VDD}
N 400 -160 640 -160 {lab=VSS}
N 400 -260 400 -220 {lab=#net1}
N 400 -360 400 -320 {lab=#net2}
N 640 -360 640 -320 {lab=OUT}
N 640 -260 640 -220 {lab=#net3}
N 320 -390 360 -390 {lab=D}
N 320 -190 360 -190 {lab=D}
N 320 -390 320 -190 {lab=D}
N 540 -390 600 -390 {lab=#net1}
N 540 -390 540 -190 {lab=#net1}
N 540 -190 600 -190 {lab=#net1}
N 400 -240 540 -240 {lab=#net1}
C {sky130_fd_pr/pfet3_01v8.sym} 380 -390 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 380 -290 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 620 -390 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 380 -190 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8.sym} 620 -290 0 0 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 620 -190 0 0 {name=M6
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
C {devices/lab_wire.sym} 360 -290 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 600 -290 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 320 -390 0 0 {name=p3 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} 640 -330 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 540 -420 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 540 -160 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 200 -400 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 200 -380 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 200 -360 0 0 {name=p9 sig_type=std_logic lab=D}
C {devices/ipin.sym} 200 -340 0 0 {name=p10 sig_type=std_logic lab=CLK}
C {devices/opin.sym} 200 -320 0 0 {name=p11 sig_type=std_logic lab=OUT}
