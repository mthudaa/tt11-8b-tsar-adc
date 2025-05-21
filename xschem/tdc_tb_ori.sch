v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1280 -480 2080 -80 {flags=graph
y1=0
y2=2
ypos1=-0.0033485557
ypos2=1.5656332
divy=5
subdivy=1
unity=1
x1=-1.6475433e-08
x2=9.9919257e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="comp_p
comp_n
in
rdy
x1.x1.a
x1.x1.b"
color="4 4 4 4 4 4"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 1280 -900 2080 -500 {flags=graph
y1=0.89986889
y2=0.90011388
ypos1=-0.11204623
ypos2=1.3822222
divy=5
subdivy=1
unity=1
x1=-1.6475433e-08
x2=9.9919257e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
digital=0
color="7 4"
node="vinn
vinp"}
C {devices/vsource.sym} 80 -200 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 180 -200 0 0 {name=VD value=1.8 savecurrent=false}
C {devices/vsource.sym} 280 -200 0 0 {name=V3 value="PULSE(0 1.8 0 1p 1p 10n 20n)" savecurrent=false}
C {devices/vsource.sym} 80 -80 0 0 {name=V4 value=0.9 savecurrent=false}
C {devices/gnd.sym} 80 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -230 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 -170 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -170 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -50 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -230 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 80 -110 0 0 {name=p7 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 180 -80 0 0 {name=V5 value="PWL(0 0.001, 1u -0.001)" savecurrent=false}
C {devices/vsource.sym} 360 -80 0 0 {name=V6 value="PWL(0 -0.001, 1u 0.001)" savecurrent=false}
C {devices/lab_wire.sym} 180 -50 2 1 {name=p8 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 360 -50 2 1 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 180 -110 0 0 {name=p13 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 360 -110 0 0 {name=p14 sig_type=std_logic lab=VINN}
C {sky130_fd_pr/corner.sym} 190 -420 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 40 -420 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"
spice_ignore=false
place=header}
C {tdc.sym} 590 -430 0 0 {name=x1}
C {devices/lab_wire.sym} 440 -470 0 0 {name=p10 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 440 -410 0 0 {name=p11 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 440 -390 0 0 {name=p12 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 440 -430 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -450 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 740 -470 0 1 {name=p17 sig_type=std_logic lab=COMP_P}
C {devices/lab_wire.sym} 740 -450 0 1 {name=p18 sig_type=std_logic lab=COMP_N}
C {devices/lab_wire.sym} 740 -430 0 1 {name=p19 sig_type=std_logic lab=RDY}
C {devices/noconn.sym} 740 -470 1 0 {name=l2}
C {devices/noconn.sym} 740 -450 1 0 {name=l3}
C {devices/noconn.sym} 740 -430 1 0 {name=l4}
C {devices/simulator_commands_shown.sym} 680 -300 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value=".option wnflag=0 bypass=1
.options method=gear reltol=1e-5 rawfile=binary
.options solver=klu nomod
.control
  set num_threads=36
  save IN VINP VINN I(VD) VDD COMP_P COMP_N RDY X1.X1.A X1.X1.B
  tran 10p 1u 0 100p
  let pow = -i(vd)*vdd
  meas tran inst_pow MAX pow from=1n to=1u
  meas tran avg_pow  AVG pow from=1n to=1u
  write tdc_tb_ori.raw
.endc
"}
C {devices/launcher.sym} 540 -270 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tdc_tb_ori.raw tran"
}
