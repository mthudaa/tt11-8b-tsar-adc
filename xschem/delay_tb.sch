v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1010 -410 1810 -10 {flags=graph
y1=-0.069444355
y2=1.9305556
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
vinp
vinn"
color="7 12 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 760 -410 820 -410 {lab=OUT}
C {delay_gate.sym} 610 -370 0 0 {name=x1}
C {devices/vsource.sym} 60 -190 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 160 -190 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} 260 -190 0 0 {name=V3 value="PULSE(0 1.8 10n 50p 50p 0.5u 1u)" savecurrent=false}
C {devices/vsource.sym} 60 -70 0 0 {name=V4 value=0.9 savecurrent=false}
C {devices/gnd.sym} 60 -160 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 160 -220 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 -160 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -160 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 -40 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -220 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 60 -100 0 0 {name=p7 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 160 -70 0 0 {name=V5 value="PWL(0 0.01, 20u -0.01)" savecurrent=false}
C {devices/vsource.sym} 340 -70 0 0 {name=V6 value="PWL(0 -0.01, 20u 0.01)" savecurrent=false}
C {devices/lab_wire.sym} 160 -40 2 1 {name=p8 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 340 -40 2 1 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 460 -370 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 460 -390 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 460 -410 0 0 {name=p12 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 160 -100 0 0 {name=p13 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 340 -100 0 0 {name=p14 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 460 -350 0 0 {name=p15 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 460 -330 0 0 {name=p16 sig_type=std_logic lab=VINN}
C {sky130_fd_pr/corner.sym} 170 -410 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands_shown.sym} 500 -200 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="* .measure tran trise 
* + TRIG v(z[6]) TD=10.5n VAL=0.1 RISE=1
* + TARG v(z[6]) TD=10.5n VAL=1.7 RISE=1
**** interactive sim
.option wnflag=0 bypass=1
.options method=gear reltol=1e-5 rawfile=binary
.options solver=klu nomod
.control
  save IN OUT OUTN VINP VINN
  set appendwrite
  set wr_singlescale
  set wr_vecnames
  op
  tran 10p 20u 0 100p
  write delay_tb.raw
  set altshow
  show >> delay.lis
  quit 1
.endc
"}
C {devices/launcher.sym} 1070 -450 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/delay_tb.raw tran"
}
C {devices/lab_wire.sym} 820 -410 0 1 {name=p23 sig_type=std_logic lab=OUT}
C {devices/noconn.sym} 820 -410 1 1 {name=l3}
C {devices/code.sym} 20 -410 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"
spice_ignore=false
place=header}
