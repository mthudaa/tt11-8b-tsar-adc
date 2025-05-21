v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 330 -310 330 -270 {
lab=#net1}
N 510 -500 510 -470 {
lab=#net2}
N 630 -370 660 -370 {
lab=#net2}
N 660 -330 660 -270 {
lab=#net1}
N 330 -470 330 -370 {
lab=VDD}
N 550 -500 830 -500 {
lab=VGS}
N 890 -500 930 -500 {
lab=#net3}
N 690 -370 730 -370 {
lab=VGS}
N 730 -500 730 -370 {
lab=VGS}
N 780 -500 780 -210 {
lab=VGS}
N 700 -240 780 -240 {
lab=VGS}
N 330 -210 330 -170 {
lab=#net4}
N 330 -170 750 -170 {
lab=#net4}
N 660 -210 660 -170 {
lab=#net4}
N 510 -370 630 -370 {
lab=#net2}
N 510 -470 510 -370 {
lab=#net2}
N 330 -310 660 -310 {
lab=#net1}
N 290 -340 290 -240 {
lab=CKB}
N 510 -170 510 -130 {
lab=#net4}
N 430 -100 470 -100 {
lab=CK}
N 250 -290 290 -290 {
lab=CKB}
N 510 -550 510 -530 {
lab=VDD}
N 510 -550 860 -550 {
lab=VDD}
N 860 -550 860 -540 {
lab=VDD}
N 330 -550 330 -470 {
lab=VDD}
N 330 -550 510 -550 {
lab=VDD}
N 510 -370 510 -300 {
lab=#net2}
N 510 -240 510 -170 {
lab=#net4}
N 510 -70 510 -30 {
lab=VSS}
N 780 -170 780 -100 {
lab=VSS}
N 1230 -320 1230 -250 {
lab=VSS}
N 610 -240 660 -240 {
lab=VSS}
N 330 -240 390 -240 {
lab=VSS}
N 330 -340 390 -340 {
lab=VDD}
N 860 -500 860 -450 {
lab=VSS}
N 960 -500 960 -450 {
lab=VSS}
N 510 -100 570 -100 {
lab=VSS}
N 960 -580 960 -540 {
lab=CK}
N 990 -500 1030 -500 {
lab=VSS}
N 1100 -320 1100 -250 {
lab=VSS}
N 1360 -320 1360 -250 {
lab=VSS}
N 1260 -320 1330 -320 {lab=OUT}
N 1130 -320 1200 -320 {lab=IN}
C {devices/ipin.sym} 80 -380 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 80 -360 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 80 -340 0 0 {name=p13 sig_type=std_logic lab=CK}
C {devices/ipin.sym} 80 -320 0 0 {name=p14 sig_type=std_logic lab=CKB}
C {devices/ipin.sym} 80 -300 0 0 {name=p15 sig_type=std_logic lab=IN}
C {devices/opin.sym} 80 -260 0 0 {name=p16 sig_type=std_logic lab=OUT}
C {sky130_fd_pr/pfet_01v8.sym} 310 -340 0 0 {name=M1
L=0.15
W=3
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
C {sky130_fd_pr/pfet_01v8.sym} 530 -500 0 1 {name=M2
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 660 -350 3 0 {name=M3
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 310 -240 0 0 {name=M4
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 490 -100 0 0 {name=M5
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 680 -240 0 1 {name=M6
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 780 -190 1 0 {name=M7
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 860 -520 3 1 {name=M8
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 960 -520 3 1 {name=M9
L=0.15
W=1
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 510 -270 0 0 {name=C1 model=cap_mim_m3_1 W=4 L=4 MF=8 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 1230 -340 1 0 {name=M10
L=0.15
W=8
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
C {devices/lab_wire.sym} 390 -340 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 390 -240 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -100 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 610 -240 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 780 -100 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1230 -250 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 860 -450 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 960 -450 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1030 -500 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 960 -580 0 1 {name=p10 sig_type=std_logic lab=CK}
C {devices/lab_wire.sym} 250 -290 0 0 {name=p17 sig_type=std_logic lab=CKB}
C {devices/lab_wire.sym} 430 -100 0 0 {name=p18 sig_type=std_logic lab=CK}
C {devices/lab_wire.sym} 510 -30 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 810 -170 2 0 {name=p20 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 570 -550 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1230 -360 0 1 {name=p23 sig_type=std_logic lab=VGS}
C {devices/lab_wire.sym} 780 -380 0 1 {name=p24 sig_type=std_logic lab=VGS}
C {sky130_fd_pr/nfet_01v8.sym} 1100 -340 1 0 {name=M11
L=0.15
W=8
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
C {devices/lab_wire.sym} 1100 -250 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1100 -360 0 1 {name=p28 sig_type=std_logic lab=CK}
C {devices/lab_wire.sym} 1070 -320 2 1 {name=p29 sig_type=std_logic lab=IN}
C {sky130_fd_pr/nfet_01v8.sym} 1360 -340 1 0 {name=M12
L=0.15
W=8
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
C {devices/lab_wire.sym} 1360 -250 2 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1390 -320 2 0 {name=p31 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 1360 -360 0 1 {name=p32 sig_type=std_logic lab=CK}
C {devices/lab_wire.sym} 1170 -320 2 1 {name=p21 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 1280 -320 2 0 {name=p25 sig_type=std_logic lab=OUT}
