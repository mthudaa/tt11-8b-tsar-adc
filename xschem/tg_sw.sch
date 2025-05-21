v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 -340 250 -340 {lab=IN}
N 220 -340 220 -160 {lab=IN}
N 220 -160 250 -160 {lab=IN}
N 310 -160 340 -160 {lab=OUT}
N 340 -340 340 -160 {lab=OUT}
N 310 -340 340 -340 {lab=OUT}
C {sky130_fd_pr/pfet3_01v8.sym} 280 -360 1 0 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 280 -140 3 0 {name=M2
L=0.15
W=1
body=VSS
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf *z 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 220 -250 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 340 -250 0 1 {name=p1 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 280 -380 0 0 {name=p2 sig_type=std_logic lab=CKCM}
C {devices/lab_wire.sym} 280 -120 2 1 {name=p4 sig_type=std_logic lab=CKCMB}
C {devices/ipin.sym} 100 -340 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 100 -320 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 100 -300 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/ipin.sym} 100 -280 0 0 {name=p8 sig_type=std_logic lab=CKCM}
C {devices/ipin.sym} 100 -260 0 0 {name=p9 sig_type=std_logic lab=CKCMB}
C {devices/opin.sym} 100 -240 0 0 {name=p10 sig_type=std_logic lab=OUT}
