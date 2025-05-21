v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -410 320 -310 {lab=IN}
N 540 -310 540 -210 {lab=#net1}
N 580 -280 580 -240 {lab=#net2}
N 580 -380 580 -340 {lab=#net3}
N 360 -380 360 -340 {lab=#net1}
N 360 -280 360 -240 {lab=#net4}
N 360 -480 360 -440 {lab=#net5}
N 580 -180 580 -140 {lab=#net6}
N 360 -180 360 -140 {lab=#net7}
N 360 -80 580 -80 {lab=VSS}
N 360 -540 580 -540 {lab=VDD}
N 580 -480 580 -440 {lab=#net8}
N 360 -360 460 -360 {lab=#net1}
N 460 -360 460 -260 {lab=#net1}
N 460 -260 540 -260 {lab=#net1}
N 580 -260 640 -260 {lab=#net2}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 560 -410 0 0 {name=M1
L=1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 560 -310 0 0 {name=M2
L=1
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 560 -210 0 0 {name=M3
L=1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 340 -410 0 0 {name=M4
L=1
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 340 -310 0 0 {name=M5
L=1
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 340 -210 0 0 {name=M6
L=1
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
C {devices/lab_wire.sym} 540 -410 0 0 {name=p1 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 320 -210 0 0 {name=p2 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 320 -360 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 720 -260 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {devices/ipin.sym} 200 -300 0 0 {name=p7 lab=VINP}
C {devices/ipin.sym} 200 -280 0 0 {name=p8 lab=VINN}
C {devices/ipin.sym} 200 -360 0 0 {name=p9 lab=IN}
C {devices/ipin.sym} 200 -320 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 200 -340 0 0 {name=p11 lab=VDD}
C {devices/opin.sym} 180 -210 0 0 {name=p12 lab=OUT}
C {devices/lab_wire.sym} 460 -540 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 460 -80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_stdcells/buf_4.sym} 680 -260 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/pfet3_01v8.sym} 340 -510 0 0 {name=M7
L=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 560 -110 0 0 {name=M8
L=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 340 -110 0 0 {name=M9
L=1
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
C {sky130_fd_pr/pfet3_01v8.sym} 560 -510 0 0 {name=M10
L=1
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
C {devices/lab_wire.sym} 320 -510 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 540 -510 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 320 -110 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 540 -110 0 0 {name=p18 sig_type=std_logic lab=VDD}
