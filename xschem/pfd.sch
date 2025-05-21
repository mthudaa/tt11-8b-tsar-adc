v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -910 440 -870 {lab=#net1}
N 440 -810 440 -770 {lab=#net2}
N 640 -910 640 -870 {lab=#net3}
N 840 -1130 840 -1090 {lab=#net4}
N 1040 -1130 1040 -970 {lab=#net5}
N 640 -1130 640 -970 {lab=X1}
N 440 -1130 440 -970 {lab=#net6}
N 640 -1030 840 -1030 {lab=X1}
N 560 -1160 600 -1160 {lab=#net6}
N 560 -1160 560 -840 {lab=#net6}
N 560 -840 600 -840 {lab=#net6}
N 440 -1030 560 -1030 {lab=#net6}
N 300 -1160 400 -1160 {lab=INP}
N 300 -1160 300 -740 {lab=INP}
N 300 -740 400 -740 {lab=INP}
N 800 -1060 800 -1030 {lab=X1}
N 1000 -1160 1000 -940 {lab=X1}
N 1000 -940 1000 -840 {lab=X1}
N 840 -1030 1000 -1030 {lab=X1}
N 440 -1190 1040 -1190 {lab=VDD}
N 440 -710 1040 -710 {lab=VSS}
N 1040 -810 1040 -710 {lab=VSS}
N 640 -810 640 -710 {lab=VSS}
N 1040 -910 1040 -870 {lab=#net7}
N 1040 -1030 1220 -1030 {lab=#net5}
N 1040 -710 1220 -710 {lab=VSS}
N 1220 -970 1220 -710 {lab=VSS}
N 1220 -1030 1320 -1030 {lab=#net5}
N 440 -350 440 -310 {lab=#net8}
N 440 -250 440 -210 {lab=#net9}
N 640 -350 640 -310 {lab=#net10}
N 840 -570 840 -530 {lab=#net11}
N 1040 -570 1040 -410 {lab=#net12}
N 640 -570 640 -410 {lab=X2}
N 440 -570 440 -410 {lab=#net13}
N 640 -470 840 -470 {lab=X2}
N 560 -600 600 -600 {lab=#net13}
N 560 -600 560 -280 {lab=#net13}
N 560 -280 600 -280 {lab=#net13}
N 440 -470 560 -470 {lab=#net13}
N 300 -600 400 -600 {lab=INN}
N 300 -600 300 -180 {lab=INN}
N 300 -180 400 -180 {lab=INN}
N 800 -500 800 -470 {lab=X2}
N 1000 -600 1000 -380 {lab=X2}
N 1000 -380 1000 -280 {lab=X2}
N 840 -470 1000 -470 {lab=X2}
N 440 -630 1040 -630 {lab=VDD}
N 440 -150 1040 -150 {lab=VSS}
N 1040 -250 1040 -150 {lab=VSS}
N 640 -250 640 -150 {lab=VSS}
N 1040 -350 1040 -310 {lab=#net14}
N 1040 -470 1220 -470 {lab=#net12}
N 1040 -150 1220 -150 {lab=VSS}
N 1220 -410 1220 -150 {lab=VSS}
N 1220 -470 1320 -470 {lab=#net12}
N 1400 -1030 1500 -1030 {lab=#net15}
N 1400 -470 1500 -470 {lab=#net16}
C {sky130_fd_pr/pfet3_01v8.sym} 420 -1160 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 420 -940 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_01v8.sym} 620 -1160 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_01v8.sym} 820 -1160 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_01v8.sym} 820 -1060 0 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 1020 -1160 0 0 {name=M6
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
C {sky130_fd_pr/nfet3_01v8.sym} 420 -840 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8.sym} 420 -740 0 0 {name=M8
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
C {sky130_fd_pr/nfet3_01v8.sym} 620 -940 0 0 {name=M9
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
C {sky130_fd_pr/nfet3_01v8.sym} 620 -840 0 0 {name=M10
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
C {sky130_fd_pr/nfet3_01v8.sym} 1020 -940 0 0 {name=M11
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
C {sky130_fd_pr/nfet3_01v8.sym} 1020 -840 0 0 {name=M12
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
C {sky130_fd_pr/nfet3_01v8.sym} 1200 -1000 0 0 {name=M13
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
C {devices/lab_wire.sym} 760 -1190 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 770 -710 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 300 -1160 0 0 {name=p1 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} 600 -940 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} 950 -1030 0 0 {name=p7 sig_type=std_logic lab=X1}
C {sky130_fd_pr/pfet3_01v8.sym} 420 -600 0 0 {name=M14
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
C {sky130_fd_pr/nfet3_01v8.sym} 420 -380 0 0 {name=M15
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
C {sky130_fd_pr/pfet3_01v8.sym} 620 -600 0 0 {name=M16
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
C {sky130_fd_pr/pfet3_01v8.sym} 820 -600 0 0 {name=M17
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
C {sky130_fd_pr/pfet3_01v8.sym} 820 -500 0 0 {name=M18
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
C {sky130_fd_pr/pfet3_01v8.sym} 1020 -600 0 0 {name=M19
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
C {sky130_fd_pr/nfet3_01v8.sym} 420 -280 0 0 {name=M20
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
C {sky130_fd_pr/nfet3_01v8.sym} 420 -180 0 0 {name=M21
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
C {sky130_fd_pr/nfet3_01v8.sym} 620 -380 0 0 {name=M22
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
C {sky130_fd_pr/nfet3_01v8.sym} 620 -280 0 0 {name=M23
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
C {sky130_fd_pr/nfet3_01v8.sym} 1020 -380 0 0 {name=M24
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
C {sky130_fd_pr/nfet3_01v8.sym} 1020 -280 0 0 {name=M25
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
C {sky130_fd_pr/nfet3_01v8.sym} 1200 -440 0 0 {name=M26
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
C {devices/lab_wire.sym} 760 -630 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 770 -150 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 300 -600 0 0 {name=p10 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} 600 -380 0 0 {name=p11 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} 950 -470 0 0 {name=p14 sig_type=std_logic lab=X2}
C {sky130_stdcells/inv_1.sym} 820 -860 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 780 -860 0 0 {name=p15 sig_type=std_logic lab=X1}
C {devices/lab_wire.sym} 860 -860 0 1 {name=p16 sig_type=std_logic lab=X1B}
C {sky130_stdcells/inv_1.sym} 820 -300 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 780 -300 0 0 {name=p17 sig_type=std_logic lab=X2}
C {devices/lab_wire.sym} 860 -300 0 1 {name=p18 sig_type=std_logic lab=X2B}
C {devices/lab_wire.sym} 400 -940 0 0 {name=p19 sig_type=std_logic lab=X2B}
C {devices/lab_wire.sym} 400 -840 0 0 {name=p20 sig_type=std_logic lab=X1B}
C {devices/lab_wire.sym} 400 -380 0 0 {name=p21 sig_type=std_logic lab=X1B}
C {devices/lab_wire.sym} 400 -280 0 0 {name=p22 sig_type=std_logic lab=X2B}
C {devices/lab_wire.sym} 800 -1160 0 0 {name=p23 sig_type=std_logic lab=X2}
C {devices/lab_wire.sym} 800 -600 0 0 {name=p24 sig_type=std_logic lab=X1}
C {devices/lab_wire.sym} 1180 -1000 0 0 {name=p25 sig_type=std_logic lab=X2B}
C {devices/lab_wire.sym} 1180 -440 0 0 {name=p26 sig_type=std_logic lab=X1B}
C {devices/lab_wire.sym} 1620 -490 0 1 {name=p27 sig_type=std_logic lab=UP}
C {devices/lab_wire.sym} 1620 -1010 0 1 {name=p28 sig_type=std_logic lab=DN}
C {devices/ipin.sym} 160 -1160 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 160 -1140 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 160 -1120 0 0 {name=p12 sig_type=std_logic lab=INP}
C {devices/ipin.sym} 160 -1100 0 0 {name=p13 sig_type=std_logic lab=INN}
C {devices/opin.sym} 160 -1060 0 0 {name=p29 sig_type=std_logic lab=UP}
C {devices/opin.sym} 160 -1040 0 0 {name=p30 sig_type=std_logic lab=DN}
C {sky130_stdcells/inv_2.sym} 1360 -1030 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 1360 -470 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_2.sym} 1560 -1010 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_2.sym} 1560 -490 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 1500 -510 0 0 {name=p31 sig_type=std_logic lab=DN}
C {devices/lab_wire.sym} 1500 -990 0 0 {name=p32 sig_type=std_logic lab=UP}
