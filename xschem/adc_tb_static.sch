v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1000 -480 1800 -80 {flags=graph
y1=-0.45926488
y2=1.913845
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.3371852e-08
x2=1.4327398e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


hilight_wave=3
color="18 6 11 7 8"
node="x1.vcn
x1.vcp
vip
vin
vcm"}
B 2 1820 -480 2620 -80 {flags=graph
y1=0
y2=2
ypos1=0.25534107
ypos2=2.5161369
divy=5
subdivy=1
unity=1
x1=-3.3371852e-08
x2=1.4327398e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cko
clk
BUS_NAME;dout0,dout1,dout2,dout3,dout4,dout5,dout6,dout7,dout8,dout9
dout9
dout8
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
color="4 4 4 4 4 4 4 4 4 4 4 4 4 4 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
digital=1
sim_type=tran
autoload=0}
N 240 -160 360 -160 {
lab=#net1}
N 360 -180 360 -160 {
lab=#net1}
N 100 -190 100 -160 {lab=#net1}
N 100 -160 240 -160 {lab=#net1}
C {devices/vsource.sym} 650 -150 0 0 {name=VS value=0 savecurrent=false}
C {devices/vsource.sym} 650 -270 0 0 {name=VD value=1.8 savecurrent=false}
C {devices/gnd.sym} 650 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 650 -180 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 650 -240 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -500 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 650 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 570 -520 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 570 -480 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 570 -460 0 0 {name=p18 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 570 -440 0 0 {name=p19 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 870 -520 0 1 {name=p21 sig_type=std_logic lab=DOUT[0..9]}
C {devices/lab_wire.sym} 870 -500 0 1 {name=p22 sig_type=std_logic lab=CKO}
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
global netlist_dir . 
set num_threads=36
set wr_singlescale
save x1.vcp x1.vcn vip vin clk vcm cko x1.cks x1.cksb vdd i(vd)
+ dout0 dout1 dout2 dout3 dout4 dout5 dout6 dout7 dout8 dout9
tran 1n 535u 0 0.1n uic ; Mengubah start time menjadi 10n
rusage traniter trantime
let pow = -i(vd)*vdd
meas tran inst_pow MAX pow from=1n to=535u
meas tran avg_pow  AVG pow from=1n to=535u
remzerovec  
write adc10b_tb_static.raw  
wrdata adc10b_tb_static.txt cko dout0 dout1 dout2 dout3 dout4 dout5 dout6 dout7 dout8 dout9 pow
quit 1
.endc
"}
C {sky130_fd_pr/corner.sym} 40 -570 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 1060 -520 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/adc10b_tb_static.raw tran"
}
C {8b_adc.sym} 720 -460 0 0 {name=x1}
C {devices/lab_wire.sym} 570 -420 0 0 {name=p4 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 750 -150 0 0 {name=VC value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 750 -120 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 750 -180 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 570 -400 0 0 {name=p10 sig_type=std_logic lab=EN}
C {devices/vsource.sym} 850 -150 0 0 {name=VDA2 value="PWL(0 0 10n 1.8)" savecurrent=false}
C {devices/lab_wire.sym} 850 -120 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 850 -180 0 0 {name=p13 sig_type=std_logic lab=EN}
C {devices/vsource.sym} 100 -220 0 0 {name=VSS1 value="PWL(0 0.9 0.26u 0.9 532.74u -0.9 533u -0.9)" savecurrent=false}
C {devices/vsource.sym} 360 -210 0 0 {name=VSS2 value="PWL(0 -0.9 0.26u -0.9 532.74u 0.9 533u 0.9)" savecurrent=false}
C {devices/vsource.sym} 220 -130 0 0 {name=VSS3 value=0.9 savecurrent=false}
C {devices/lab_wire.sym} 360 -300 0 0 {name=p15 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} 100 -310 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {devices/res.sym} 100 -280 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 360 -270 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 220 -100 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 750 -270 0 0 {name=VCLK value="PULSE(0 1.8 0 0 0 10n 20n)" savecurrent=false}
C {devices/lab_wire.sym} 750 -300 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 750 -240 2 1 {name=p24 sig_type=std_logic lab=VSS}
