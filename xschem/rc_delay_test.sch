v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 780 -610 1580 -210 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0043379e-09
x2=1.0096754e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
out
vtes"
color="4 6 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 460 -460 520 -460 {lab=VTES}
C {sky130_stdcells/inv_1.sym} 420 -460 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hs__ }
C {sky130_stdcells/inv_1.sym} 560 -460 0 0 {name=x2[0:4] VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hs__ }
C {devices/lab_wire.sym} 380 -460 0 0 {name=p1 lab=IN}
C {devices/code.sym} 165 -315 0 0 {name=TT_MODELS
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
C {sky130_fd_pr/corner.sym} 20 -320 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 340 -310 0 0 {name=s1 only_toplevel=false value="
VD VDD VSS 1.8
VS VSS 0 0
VCLK IN VSS PULSE 0 1.8 0 1p 1p 1n 2n
.tran 1p 4n
.control
save IN VTES OUT
run
remzerovec
write rc_delay_test.raw
quit 0
.endc
"}
C {devices/launcher.sym} 390 -370 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/rc_delay_test.raw tran"
}
C {devices/lab_wire.sym} 470 -460 0 1 {name=p3 lab=VTES}
C {devices/noconn.sym} 600 -460 0 1 {name=l1[0:4]}
