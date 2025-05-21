v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1000 -480 1800 -80 {flags=graph
y1=-0.31933505
y2=1.9708556
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.8359387e-07
x2=1.1509301e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


hilight_wave=0
color="18 6 11 7 8"
node="x1.vcn
x1.vcp
vip
vin
vcm"}
B 2 1820 -480 2620 -80 {flags=graph
y1=0
y2=2
ypos1=0.084216068
ypos2=3.1138986
divy=5
subdivy=1
unity=1
x1=5.8359387e-07
x2=1.1509301e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cko
clk
BUS_NAME;dout0,dout1,dout2,dout3,dout4,dout5,dout6,dout7
dout7
dout6
dout5
dout4
dout3
dout2
dout1
dout0
x1.cks
x1.cksb"
color="4 4 4 4 4 4 4 4 4 4 4 4 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
digital=1
sim_type=tran
autoload=0}
N 200 -210 320 -210 {
lab=#net1}
N 320 -230 320 -210 {
lab=#net1}
N 60 -240 60 -210 {lab=#net1}
N 60 -210 200 -210 {lab=#net1}
C {devices/vsource.sym} 540 -130 0 0 {name=VS value=0 savecurrent=false}
C {devices/vsource.sym} 540 -250 0 0 {name=VD value=1.8 savecurrent=false}
C {devices/gnd.sym} 540 -100 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 540 -160 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 540 -220 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -500 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 540 -280 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 570 -520 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 570 -480 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 60 -270 0 0 {name=VSS1 value="SIN(0 -0.9 \{FIN\})" savecurrent=false}
C {devices/vsource.sym} 320 -260 0 0 {name=VSS2 value="SIN(0 0.9 \{FIN\})" savecurrent=false}
C {devices/vsource.sym} 180 -180 0 0 {name=VSS3 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 320 -350 0 0 {name=p15 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 60 -360 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 570 -460 0 0 {name=p18 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 570 -440 0 0 {name=p19 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 870 -520 0 1 {name=p21 sig_type=std_logic lab=DOUT[0..7]}
C {devices/lab_wire.sym} 870 -500 0 1 {name=p22 sig_type=std_logic lab=CKO}
C {devices/code.sym} 185 -565 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
* .lib $::SKYWATER_MODELS/sky130.lib.spice tt
*.include $PDK_ROOT/$PDK/libs.ref/sky130_fd_sc_hdll/spice/sky130_fd_sc_hdll.spice
.include $PDK_ROOT/$PDK/libs.ref/sky130_fd_sc_hs/spice/sky130_fd_sc_hs.spice
*.include $PDK_ROOT/$PDK/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code.sym} 345 -565 0 0 {name=s2 only_toplevel=false value="
.option wnflag=0 bypass=1
.options method=gear rawfile=binary
.options solver=klu nomod  
.control  
global netlist_dir .  
set num_threads=32
set wr_singlescale
save x1.vcp x1.vcn vip vin clk vcm cko x1.cks x1.cksb vdd i(vd)
+ dout0 dout1 dout2 dout3 dout4 dout5 dout6 dout7 dout8 dout9
tran 1n 535u 0 1n uic ; Mengubah start time menjadi 10n
rusage traniter trantime
let pow = -i(vd)*vdd
meas tran inst_pow MAX pow from=1n to=535u
meas tran avg_pow  AVG pow from=1n to=535u
remzerovec  
write adc10b_tb_dynamic.raw  
wrdata adc10b_tb_dynamic.txt cko dout0 dout1 dout2 dout3 dout4 dout5 dout6 dout7 dout8 dout9 pow
quit 1
.endc
"}
C {devices/vsource.sym} 640 -250 0 0 {name=VCLK value="PULSE(0 1.8 0 0 0 10n 20n)" savecurrent=false}
C {devices/lab_wire.sym} 640 -280 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 640 -220 2 1 {name=p24 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 40 -570 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 1060 -520 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/adc10b_tb_dynamic.raw tran"
}
C {devices/res.sym} 60 -330 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 320 -320 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {8b_adc.sym} 720 -460 0 0 {name=x1}
C {devices/lab_wire.sym} 180 -150 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -420 0 0 {name=p4 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 640 -130 0 0 {name=VC value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 640 -100 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 640 -160 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 570 -400 0 0 {name=p10 sig_type=std_logic lab=EN}
C {devices/vsource.sym} 740 -130 0 0 {name=VDA2 value="PWL(0 0 10n 1.8)" savecurrent=false}
C {devices/lab_wire.sym} 740 -100 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 740 -160 0 0 {name=p13 sig_type=std_logic lab=EN}
C {devices/param.sym} 80 -60 0 0 {name=s1 value="FIN=250k"}
