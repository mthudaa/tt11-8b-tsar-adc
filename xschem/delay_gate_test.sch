v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 80 -200 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 180 -200 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} 280 -200 0 0 {name=V3 value="PWL(0 0, 25n 0, 25.05n 1.8)" savecurrent=false}
C {devices/vsource.sym} 80 -80 0 0 {name=V4 value=0.9 savecurrent=false}
C {devices/gnd.sym} 80 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -230 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 -170 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -170 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -50 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -230 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 80 -110 0 0 {name=p7 sig_type=std_logic lab=VCM}
C {sky130_fd_pr/corner.sym} 190 -420 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 40 -420 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice"
spice_ignore=false
place=header}
C {devices/lab_wire.sym} 400 -570 0 0 {name=p10 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 400 -510 0 0 {name=p11 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 400 -490 0 0 {name=p12 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 400 -530 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 400 -550 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 700 -570 0 1 {name=p17 sig_type=std_logic lab=OUT_P}
C {devices/noconn.sym} 700 -570 1 0 {name=l2}
C {delay_gate.sym} 550 -530 0 0 {name=x1}
C {devices/simulator_commands_shown.sym} 780 -350 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value=".option wnflag=0 bypass=1
.options method=gear reltol=1e-5 rawfile=binary
.options solver=klu nomod

.control
  set num_threads=36
  let vin = -0.9
  while vin <= 0.95
	reset
	alter VP dc -\{$&vin\}
    	alter VN dc \{$&vin\}
  	save VINP VINN IN OUT_P OUT_N
  	tran 10p 500n 0 100p uic
  	* Hitung delay antara rising edge IN dan RDY (contoh: threshold 50% VDD)
  	meas tran del_p
  	+ TRIG v(IN) TD=5n VAL=0.9 RISE=1
  	+ TARG v(OUT_P) TD=5n VAL=0.9 RISE=1
	meas tran del_n
  	+ TRIG v(IN) TD=5n VAL=0.9 RISE=1
  	+ TARG v(OUT_N) TD=5n VAL=0.9 RISE=1
	echo \\"Tegangan Input: $&vin | Delay Positif: $&del_p | Delay Negatif: $&del_n\\" >> /home/$USER/vlsi/8bit_SAR-ADC_ITS/xschem/delay_gate_sweep/sweep_results.txt
	let vin = vin + 0.05
	plot VINP VINN OUP_P OUT_N
  end
.endc
"}
C {devices/vsource.sym} 180 -80 0 0 {name=VP value=0.0017578125 savecurrent=false}
C {devices/vsource.sym} 360 -80 0 0 {name=VN value=-0.0017578125 savecurrent=false}
C {devices/lab_wire.sym} 180 -50 2 1 {name=p8 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 360 -50 2 1 {name=p9 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 180 -110 0 0 {name=p13 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 360 -110 0 0 {name=p14 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 400 -450 0 0 {name=p18 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 400 -370 0 0 {name=p19 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 400 -390 0 0 {name=p20 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} 400 -410 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 400 -430 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 700 -450 0 1 {name=p23 sig_type=std_logic lab=OUT_N}
C {devices/noconn.sym} 700 -450 1 0 {name=l3}
C {delay_gate.sym} 550 -410 0 0 {name=x2}
