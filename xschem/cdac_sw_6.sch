v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -60 160 -60 {
lab=dac_out}
N 200 -60 200 40 {
lab=dac_out}
N 160 -60 200 -60 {
lab=dac_out}
N 120 40 200 40 {
lab=dac_out}
C {nooverlap_clk.sym} -30 -170 0 0 {name=x1}
C {tg_sw_5.sym} -30 -50 0 0 {name=x2}
C {dac_sw_5.sym} -30 80 0 0 {name=x3}
C {devices/lab_wire.sym} -180 -200 0 0 {name=p1 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -180 -80 0 0 {name=p2 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -180 40 0 0 {name=p3 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} -180 -160 0 0 {name=p4 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -180 -20 0 0 {name=p5 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -180 120 0 0 {name=p6 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} -180 100 0 0 {name=p7 sig_type=std_logic lab=clkb0}
C {devices/lab_wire.sym} -180 80 0 0 {name=p8 sig_type=std_logic lab=clk0}
C {devices/lab_wire.sym} 120 -200 0 1 {name=p9 sig_type=std_logic lab=clk0}
C {devices/lab_wire.sym} 120 -180 0 1 {name=p10 sig_type=std_logic lab=clkb0}
C {devices/lab_wire.sym} -180 -40 0 0 {name=p11 sig_type=std_logic lab=clk1}
C {devices/lab_wire.sym} -180 -60 0 0 {name=p12 sig_type=std_logic lab=clkb1}
C {devices/lab_wire.sym} 120 -160 0 1 {name=p13 sig_type=std_logic lab=clk1}
C {devices/lab_wire.sym} 120 -140 0 1 {name=p14 sig_type=std_logic lab=clkb1}
C {devices/lab_wire.sym} 120 -80 0 1 {name=p15 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} -180 60 0 0 {name=p16 sig_type=std_logic lab=bi}
C {devices/lab_wire.sym} -180 -180 0 0 {name=p17 sig_type=std_logic lab=cki}
C {devices/ipin.sym} -320 -210 0 0 {name=p18 lab=vdda}
C {devices/ipin.sym} -320 -170 0 0 {name=p19 lab=cki}
C {devices/ipin.sym} -320 -130 0 0 {name=p20 lab=bi}
C {devices/ipin.sym} -320 -90 0 0 {name=p21 lab=vcm}
C {devices/lab_wire.sym} 200 -60 0 1 {name=p22 sig_type=std_logic lab=dac_out}
C {devices/ipin.sym} -320 -50 0 0 {name=p23 lab=vssa}
C {devices/opin.sym} -340 -10 0 0 {name=p24 lab=dac_out}
