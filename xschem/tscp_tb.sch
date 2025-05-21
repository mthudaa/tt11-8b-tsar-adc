v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1000 -520 1800 -120 {flags=graph
y1=0
y2=2
ypos1=-0.12797311
ypos2=1.1839787
divy=5
subdivy=1
unity=1
x1=5.2228906e-06
x2=5.2786557e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
digital=1

color="4 4 4 4"
node="comp_n
comp_p
in
rdy"}
B 2 1000 -940 1800 -540 {flags=graph
y1=0.89993551
y2=0.90006335
ypos1=0.13441726
ypos2=1.4463691
divy=5
subdivy=1
unity=1
x1=5.2228906e-06
x2=5.2786557e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
digital=0


color="4 4"
node="vinn
vinp"}
C {sky130_fd_pr/corner.sym} 30 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 240 -530 0 0 {name=s1 only_toplevel=false value="
.option wnflag=0 bypass=1
.options method=gear reltol=1e-5 rawfile=binary
.options solver=klu nomod
.control
save IN VINP VINN I(VD) VDD COMP_P COMP_N RDY
tran 10p 10u
let pow = -i(vd)*vdd
meas tran inst_pow MAX pow from=1n to=10u
meas tran avg_pow  AVG pow from=1n to=10u
remzerovec
write tscp_tb.raw
.endc
"}
C {devices/launcher.sym} 300 -580 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tscp_tb.raw tran"
}
C {devices/vsource.sym} 280 -190 0 0 {name=VS value=0 savecurrent=false}
C {devices/vsource.sym} 380 -190 0 0 {name=VD value=1.8 savecurrent=false}
C {devices/vsource.sym} 480 -190 0 0 {name=VCLK value="PULSE(0 1.8 1n 50p 50p 10n 20n)" savecurrent=false}
C {devices/vsource.sym} 280 -70 0 0 {name=VC value=0.9 savecurrent=false}
C {devices/gnd.sym} 280 -160 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 280 -220 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -220 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 380 -160 2 1 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -160 2 1 {name=p42 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -40 2 1 {name=p43 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -220 0 0 {name=p44 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 280 -100 0 0 {name=p45 sig_type=std_logic lab=VCM}
C {devices/code.sym} 20 -350 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value="
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"
spice_ignore=false
place=header}
C {devices/vsource.sym} 380 -70 0 0 {name=VP value="PWL(0 0.001, 10u -0.001)" savecurrent=false}
C {devices/vsource.sym} 560 -70 0 0 {name=VN value="PWL(0 -0.001, 10u 0.001)" savecurrent=false}
C {devices/lab_wire.sym} 380 -40 2 1 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 560 -40 2 1 {name=p10 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 380 -100 0 0 {name=p13 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 560 -100 0 0 {name=p14 sig_type=std_logic lab=VINN}
C {tdc_hs.sym} 390 -710 0 0 {name=x2}
C {devices/lab_wire.sym} 240 -750 0 0 {name=p11 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 240 -690 0 0 {name=p12 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 240 -670 0 0 {name=p15 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 240 -710 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -730 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 540 -750 0 1 {name=p18 sig_type=std_logic lab=COMP_P}
C {devices/lab_wire.sym} 540 -730 0 1 {name=p21 sig_type=std_logic lab=COMP_N}
C {devices/lab_wire.sym} 540 -710 0 1 {name=p22 sig_type=std_logic lab=RDY}
C {devices/noconn.sym} 540 -750 1 0 {name=l2}
C {devices/noconn.sym} 540 -730 1 0 {name=l3}
C {devices/noconn.sym} 540 -710 1 0 {name=l4}
