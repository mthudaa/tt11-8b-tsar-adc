v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 80 -200 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 180 -200 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} 280 -200 0 0 {name=V3 value="PULSE(0 1.8 1n 50p 50p 50n 100n)" savecurrent=false}
C {devices/vsource.sym} 80 -80 0 0 {name=V4 value=0.9 savecurrent=false}
C {devices/gnd.sym} 80 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -230 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 -170 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -170 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -50 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -230 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 80 -110 0 0 {name=p7 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 180 -80 0 0 {name=V5 value="PWL(0 0.025, 10u -0.025)" savecurrent=false}
C {devices/vsource.sym} 360 -80 0 0 {name=V6 value="PWL(0 -0.025, 10u 0.025)" savecurrent=false}
C {devices/lab_wire.sym} 180 -50 2 1 {name=p8 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 360 -50 2 1 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 180 -110 0 0 {name=p13 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 360 -110 0 0 {name=p14 sig_type=std_logic lab=VINN}
C {sky130_fd_pr/corner.sym} 190 -420 0 0 {name=CORNER only_toplevel=true corner=mc}
C {devices/simulator_commands_shown.sym} 840 -420 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value=".option wnflag=0 bypass=1
.options method=gear reltol=1e-5 rawfile=binary
.options solver=klu nomod
.control
  set num_threads=36
  * Loop 100 iterasi
  let iter = 1
  while iter <= 100
    reset
    save VINP VINN IN COMP_P COMP_N
    * Jalankan simulasi transien
    tran 100p 10u 0 100p uic
    * Simpan data sementara ke file iterasi
    wrdata /home/$USER/vlsi/8bit_SAR-ADC_ITS/xschem/tdc_monte/tdc_monte_\{$&iter\}.txt VINP VINN IN COMP_P COMP_N
    let iter = iter + 1
  end
  quit 1
.endc
"}
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
