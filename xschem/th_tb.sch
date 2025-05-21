v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1150 -430 1950 -30 {flags=graph
y1=1.7440128

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.6329355e-06
x2=3.6524791e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


hilight_wave=0
color="18 6 7 4"
node="vcn
vin
vcp
vip"
y2=1.7534576}
B 2 1150 -20 1950 380 {flags=graph
y1=-2.1031396
y2=5.064889
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3.6329355e-06
x2=3.6524791e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


hilight_wave=0

color=4
node=clk}
N 200 -230 200 -210 {
lab=#net1}
N 200 -210 320 -210 {
lab=#net1}
N 320 -230 320 -210 {
lab=#net1}
C {devices/vsource.sym} 540 -120 0 0 {name=VS value=0 savecurrent=false}
C {devices/vsource.sym} 540 -250 0 0 {name=VDA value=1.8 savecurrent=false}
C {devices/gnd.sym} 540 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 540 -150 0 0 {name=p1 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 540 -220 2 1 {name=p2 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 580 -550 0 0 {name=p6 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 540 -280 0 0 {name=p7 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 580 -570 0 0 {name=p8 sig_type=std_logic lab=VDDA}
C {devices/lab_wire.sym} 580 -530 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 200 -260 0 0 {name=VSS1 value="SIN(0 0.9 191.556490k)" savecurrent=false}
C {devices/vsource.sym} 320 -260 0 0 {name=VSS2 value="SIN(0 -0.9 191.556490k)" savecurrent=false}
C {devices/vsource.sym} 260 -180 0 0 {name=VSS3 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 320 -350 0 0 {name=p15 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 200 -350 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 580 -490 0 0 {name=p18 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 580 -470 0 0 {name=p19 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 880 -570 0 1 {name=p21 sig_type=std_logic lab=VCP}
C {devices/lab_wire.sym} 880 -550 0 1 {name=p22 sig_type=std_logic lab=VCN}
C {devices/code.sym} 185 -565 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
* .lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $PDK_ROOT/$PDK/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code.sym} 345 -565 0 0 {name=s2 only_toplevel=false value="
.option wnflag=0 bypass=1
.options method=gear rawfile=binary
.options solver=klu nomod 
.control  
set num_threads=6
save CLK CLKB VIP VIN VCP VCN
global netlist_dir .  
set wr_singlescale  
tran 100p 535u  ; Mengubah start time menjadi 1n  
remzerovec 
write th_tb.raw
wrdata th_tb.txt CLK CLKB VIP VIN VCP VCN 
quit 0
.endc  "}
C {devices/vsource.sym} 640 -250 0 0 {name=VCLK value="PULSE(0 1.8 0 0 0 260n 520n)" savecurrent=false}
C {devices/lab_wire.sym} 640 -280 0 1 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 640 -220 2 1 {name=p24 sig_type=std_logic lab=VSSA}
C {sky130_fd_pr/corner.sym} 40 -570 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/res.sym} 200 -320 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 320 -320 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 260 -150 2 1 {name=p3 sig_type=std_logic lab=VSSA}
C {devices/vsource.sym} 640 -130 0 0 {name=VDA1 value="PULSE(1.8 0 0 0 0 260n 520n)" savecurrent=false}
C {devices/lab_wire.sym} 640 -100 2 1 {name=p5 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 640 -160 0 1 {name=p9 sig_type=std_logic lab=CLKB}
C {th_dif_sw.sym} 730 -520 0 0 {name=x1}
C {devices/lab_wire.sym} 580 -510 0 0 {name=p4 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} 570 100 2 1 {name=p10 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 570 40 0 1 {name=p11 sig_type=std_logic lab=VCP}
C {devices/lab_wire.sym} 730 100 2 1 {name=p13 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 730 40 0 1 {name=p14 sig_type=std_logic lab=VCN}
C {devices/launcher.sym} 1220 -480 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/th_tb.raw tran"
}
C {devices/vsource.sym} 890 50 0 0 {name=VDA2 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 890 80 2 1 {name=p17 sig_type=std_logic lab=VSSA}
C {devices/lab_wire.sym} 890 20 0 0 {name=p20 sig_type=std_logic lab=VCM}
C {sky130_fd_pr/cap_mim_m3_1.sym} 570 70 0 0 {name=C3 model=cap_mim_m3_1 W=4 L=4 MF=1024 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 730 70 0 0 {name=C1 model=cap_mim_m3_1 W=4 L=4 MF=1024 spiceprefix=X}
