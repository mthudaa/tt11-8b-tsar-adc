v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1160 -450 1960 -50 {flags=graph
y1=-0.30446823
y2=2.1010514
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001024
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vcp
vcn
vip
vin"
color="4 10 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1160 -30 1960 370 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001024
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="11 7"
node="clk
clkb"}
N 280 -200 280 -180 {
lab=#net1}
N 280 -180 400 -180 {
lab=#net1}
N 400 -200 400 -180 {
lab=#net1}
C {devices/vsource.sym} 620 -90 0 0 {name=VS value=0 savecurrent=false}
C {devices/vsource.sym} 620 -220 0 0 {name=VDA value=1.8 savecurrent=false}
C {devices/gnd.sym} 620 -60 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 620 -120 0 0 {name=p1 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 620 -190 2 1 {name=p2 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 670 -500 0 0 {name=p6 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 620 -250 0 0 {name=p7 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 670 -520 0 0 {name=p8 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 670 -480 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 280 -230 0 0 {name=VSS1 value="SIN(0 0.9 FIN)" savecurrent=false}
C {devices/vsource.sym} 400 -230 0 0 {name=VSS2 value="SIN(0 -0.9 FIN)" savecurrent=false}
C {devices/vsource.sym} 340 -150 0 0 {name=VSS3 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 280 -320 0 0 {name=p15 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 400 -320 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 670 -440 0 0 {name=p18 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 670 -420 0 0 {name=p19 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 970 -520 0 1 {name=p21 sig_type=std_logic lab=VCP}
C {devices/lab_wire.sym} 970 -500 0 1 {name=p22 sig_type=std_logic lab=VCN}
C {devices/code.sym} 265 -535 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
* .lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $PDK_ROOT/$PDK/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code.sym} 425 -535 0 0 {name=s2 only_toplevel=false value="
.option wnflag=0  
.option savecurrents  
.options method=trapezoid  
.options solver=iterative  
.control  
global netlist_dir .  
set wr_singlescale  
save all  
tran 100p 102.4u  ; Mengubah start time menjadi 1n  
remzerovec  
write th_sw_tb.raw  
exit 1  
.endc  "}
C {devices/vsource.sym} 720 -220 0 0 {name=VCLK value="PULSE(0 1.8 10n 50p 50p 200n 400n)" savecurrent=false}
C {devices/lab_wire.sym} 720 -250 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 720 -190 2 1 {name=p24 sig_type=std_logic lab=VSSA}
C {sky130_fd_pr/corner.sym} 120 -540 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/res.sym} 280 -290 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 400 -290 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 340 -120 2 1 {name=p3 sig_type=std_logic lab=VSSA}
C {th_dif_sw.sym} 820 -470 0 0 {name=x1}
C {devices/lab_wire.sym} 670 -460 0 0 {name=p4 sig_type=std_logic lab=CLKB}
C {devices/vsource.sym} 720 -90 0 0 {name=VCLK1 value="PULSE(1.8 0 10n 50p 50p 200n 400n)" savecurrent=false}
C {devices/lab_wire.sym} 720 -120 0 0 {name=p5 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} 720 -60 2 1 {name=p9 sig_type=std_logic lab=VSSA}
C {devices/launcher.sym} 1230 -530 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/th_sw_tb.raw tran"
}
C {devices/lab_wire.sym} 830 -300 2 0 {name=p10 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 980 -300 2 0 {name=p11 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 830 -360 0 1 {name=p13 sig_type=std_logic lab=VCP}
C {devices/lab_wire.sym} 980 -360 0 1 {name=p14 sig_type=std_logic lab=VCN}
C {sky130_fd_pr/cap_mim_m3_1.sym} 830 -330 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=256 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 980 -330 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=256 spiceprefix=X}
C {devices/param.sym} 110 -30 0 0 {name=s1 value="FIN=251k"}
