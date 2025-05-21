v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 -210 650 -110 {
lab=GND}
N 650 -240 720 -240 {
lab=b}
N 650 -350 780 -350 {
lab=d}
N 520 -240 610 -240 {
lab=g}
N 650 -350 650 -270 {
lab=d}
N 780 -350 780 -270 {
lab=d}
N 720 -130 720 -110 {
lab=GND}
N 720 -240 720 -190 {
lab=b}
N 780 -210 780 -110 {
lab=GND}
N 520 -240 520 -190 {
lab=g}
N 520 -130 520 -110 {
lab=GND}
N 870 -130 870 -110 {
lab=GND}
N 870 -230 870 -190 {
lab=n}
C {devices/code_shown.sym} 10 -1200 0 0 {name=NGSPICE_CTRL only_toplevel=true 
value="
.option sparse
.temp 27
.param wx=5 lx=0.15 vbx=0
.noise v(n) vg lin 1 1 1 1
.control
option numdgt=3
set wr_singlescale
set wr_vecnames

compose l_vec  start=0.15 stop=2 step=0.05
compose vg_vec start= 0 stop=1.8  step=25m
compose vd_vec start= 0 stop=1.8  step=25m
compose vb_vec start=0 stop=1.8 step=0.1

foreach var1 $&l_vec
  alterparam lx=$var1
  reset
  foreach var2 $&vg_vec
    alter vg $var2
    foreach var3 $&vd_vec
      alter vd $var3
      foreach var4 $&vb_vec
        alter vsb $var4
	run 
	remzerovec
	wrdata /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/program/lookup_table/nmos1v8.txt noise1.all
	destroy all
	set appendwrite
	unset set wr_vecnames
      end
    end
  end
end

set appendwrite=0

alterparam lx=0.15
alterparam vbx=0
reset
op
*showmod
show
write nmos1v8.raw
.endc
"}
C {devices/gnd.sym} 650 -110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 520 -110 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 520 -160 0 0 {name=vg value="0.65 AC 1"}
C {devices/vsource.sym} 780 -240 0 0 {name=vd value=0.9}
C {devices/gnd.sym} 780 -110 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 720 -110 0 0 {name=l4 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="(c) 2024 H. Pretl, Apache-2.0 license (adapted from B. Murmann)"}
C {devices/launcher.sym} 270 -190 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 270 -140 0 0 {name=h3
descr="annotate OP" 
tclcommand="xschem raw_read /home/mthudaa/vlsi/8bit_SAR-ADC_ITS/program/lookup_table/nmos1v8.raw; set show_hidden_texts 1; xschem annotate_op"
}
C {devices/ngspice_get_value.sym} 1020 -300 0 1 {name=r2 node=@n.xm1.nsg13_lv_nmos[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 1020 -330 0 1 {name=r4 node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 1020 -270 0 1 {name=r5 node=v(@n.xm1.nsg13_lv_nmos[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 1020 -210 0 1 {name=r6 node=@n.xm1.nsg13_lv_nmos[cgg]
descr="cgs="}
C {devices/ngspice_get_value.sym} 1020 -240 0 1 {name=r7 node=v(@n.xm1.nsg13_lv_nmos[vdss])
descr="vdss(vds_sat)="}
C {devices/ngspice_get_value.sym} 1020 -180 0 1 {name=r8 node=v(@n.xm1.nsg13_lv_nmos[fug])
descr="fug(f_t)="}
C {devices/ngspice_get_value.sym} 1020 -150 0 1 {name=r9 node=@n.xm1.nsg13_lv_nmos[cgd]
descr="cdg="}
C {devices/ngspice_get_value.sym} 1020 -90 0 1 {name=r10 node=v(@n.xm1.nsg13_lv_nmos[sid])
descr="sid="}
C {devices/ngspice_get_value.sym} 1020 -120 0 1 {name=r11 node=v(@n.xm1.nsg13_lv_nmos[rg])
descr="rg="}
C {devices/vsource.sym} 720 -160 2 1 {name=vsb value=\{vbx\}}
C {devices/lab_wire.sym} 520 -240 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 650 -350 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 720 -240 0 1 {name=p3 sig_type=std_logic lab=b}
C {devices/code_shown.sym} 940 -920 0 0 {name=NGSPICE_SAVE only_toplevel=true 
value="
.save b d g n
.save @m.xm1.msky130_fd_pr__nfet_01v8[cgso]
.save @m.xm1.msky130_fd_pr__nfet_01v8[cgdo]
.save @m.xm1.msky130_fd_pr__nfet_01v8[cdd]
.save @m.xm1.msky130_fd_pr__nfet_01v8[cgb]
.save @m.xm1.msky130_fd_pr__nfet_01v8[cgd]
.save @m.xm1.msky130_fd_pr__nfet_01v8[cgg]
.save @m.xm1.msky130_fd_pr__nfet_01v8[cgs]
.save @m.xm1.msky130_fd_pr__nfet_01v8[css]
.save @m.xm1.msky130_fd_pr__nfet_01v8[gds]
.save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
.save @m.xm1.msky130_fd_pr__nfet_01v8[gmbs]
.save @m.xm1.msky130_fd_pr__nfet_01v8[id]
.save @m.xm1.msky130_fd_pr__nfet_01v8[l]
.save @m.xm1.msky130_fd_pr__nfet_01v8[vgs]
.save @m.xm1.msky130_fd_pr__nfet_01v8[vds]
.save @m.xm1.msky130_fd_pr__nfet_01v8[vbs]
.save @m.xm1.msky130_fd_pr__nfet_01v8[vth]
.save @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
"}
C {devices/ccvs.sym} 870 -160 0 0 {name=H4 vnam=vd value=1}
C {devices/gnd.sym} 870 -110 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 870 -220 0 0 {name=p4 sig_type=std_logic lab=n
}
C {sky130_fd_pr/nfet_01v8.sym} 630 -240 0 0 {name=M1
L=\{lx\}
W=\{wx\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/corner.sym} 40 -270 0 0 {name=CORNER only_toplevel=false corner=tt}
