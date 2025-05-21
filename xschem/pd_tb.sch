v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1180 -460 1980 -60 {flags=graph
y1=-0.074690676
y2=2.1371493
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.6498283e-06
x2=3.7660188e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=4
node=up}
B 2 2000 -460 2800 -60 {flags=graph
y1=-0.074690676
y2=2.1371493
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.6498283e-06
x2=3.7660188e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=7
node=dn}
N 200 -220 200 -200 {
lab=#net1}
N 200 -200 320 -200 {
lab=#net1}
N 320 -220 320 -200 {
lab=#net1}
C {devices/vsource.sym} 540 -120 0 0 {name=VS value=0 savecurrent=false}
C {devices/vsource.sym} 540 -240 0 0 {name=VDA value=1.8 savecurrent=false}
C {devices/gnd.sym} 540 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 540 -150 0 0 {name=p1 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 540 -210 2 1 {name=p2 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 560 -510 0 0 {name=p6 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 540 -270 0 0 {name=p7 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 560 -530 0 0 {name=p8 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 560 -490 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 200 -250 0 0 {name=VSS1 value="SIN(0 -0.9 100k)" savecurrent=false}
C {devices/vsource.sym} 320 -250 0 0 {name=VSS2 value="SIN(0 0.9 100k)" savecurrent=false}
C {devices/vsource.sym} 260 -170 0 0 {name=VSS3 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 320 -340 0 0 {name=p15 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 200 -340 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 860 -530 0 1 {name=p21 sig_type=std_logic lab=UP}
C {devices/lab_wire.sym} 860 -510 0 1 {name=p22 sig_type=std_logic lab=DN}
C {devices/code.sym} 185 -555 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
* .lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $PDK_ROOT/$PDK/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code.sym} 345 -555 0 0 {name=s2 only_toplevel=false value="
.option wnflag=0  
.option savecurrents  
.options method=trapezoid  
.options solver=iterative  
.control  
global netlist_dir .  
set wr_singlescale  
save all
tran 1n 10u  ; Mengubah start time menjadi 10n 
remzerovec  
write pd_tb.raw  
wrdata pd_tb.txt up dn
quit 1
.endc
"}
C {devices/vsource.sym} 640 -240 0 0 {name=VCLK value="PULSE(0 1.8 1n 50p 50p 50n 100n)" savecurrent=false}
C {devices/lab_wire.sym} 900 -270 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 640 -210 2 1 {name=p24 sig_type=std_logic lab=VSSA}
C {sky130_fd_pr/corner.sym} 40 -560 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/res.sym} 200 -310 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 320 -310 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 260 -140 2 1 {name=p3 sig_type=std_logic lab=VSSA}
C {devices/vsource.sym} 640 -120 0 0 {name=VDA1 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 640 -90 2 1 {name=p5 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 640 -150 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 740 -120 0 0 {name=VDA2 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 740 -90 2 1 {name=p11 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 740 -150 0 0 {name=p13 sig_type=std_logic lab=EN}
C {phase_detector.sym} 710 -500 0 0 {name=x1}
C {devices/vsource.sym} 900 -240 0 0 {name=VCLK1 value="PULSE(0 1.8 2n 50p 50p 50n 100n)" savecurrent=false}
C {devices/lab_wire.sym} 640 -270 0 0 {name=p4 sig_type=std_logic lab=CLK1}
C {devices/lab_wire.sym} 900 -210 2 1 {name=p10 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 560 -470 0 0 {name=p14 sig_type=std_logic lab=CLK1}
C {devices/launcher.sym} 1230 -510 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pd_tb.raw tran"
}
