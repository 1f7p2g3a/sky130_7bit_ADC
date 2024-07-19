v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -160 160 -160 {
lab=VGS}
N 260 -160 340 -160 {
lab=VBS}
N 260 -130 260 -60 {
lab=VSS}
N 160 -160 220 -160 {
lab=VGS}
N 260 -260 260 -190 {
lab=VDS}
N 100 -390 100 -350 {
lab=VSS}
N 240 -510 240 -470 {
lab=VDS}
N 360 -510 360 -470 {
lab=VBS}
N 100 -390 240 -390 {
lab=VSS}
N 240 -390 360 -390 {
lab=VSS}
N 240 -410 240 -390 {
lab=VSS}
N 360 -410 360 -390 {
lab=VSS}
N 260 -60 260 -40 {
lab=VSS}
N 100 -60 100 -40 {
lab=VSS}
N 100 -160 100 -120 {
lab=VGS}
N 100 -290 100 -270 {
lab=GND}
N 100 -40 260 -40 {
lab=VSS}
N 540 -160 620 -160 {
lab=VBS}
N 540 -130 540 -60 {
lab=VSS}
N 540 -260 540 -190 {
lab=VDS}
N 540 -60 540 -40 {
lab=VSS}
N 360 -40 540 -40 {
lab=VSS}
N 420 -160 500 -160 {
lab=VGS}
N 260 -40 360 -40 {
lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 240 -160 0 0 {name=M1
L=\{L\}
W=\{W\}
nf=\{F\} 
mult=\{M\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/corner.sym} 500 -610 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 540 -330 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 100 -90 0 0 {name=V1 value=\{vgs\} savecurrent=false}
C {devices/vsource.sym} 360 -440 0 0 {name=V4 value=\{vbs\} savecurrent=false}
C {devices/vsource.sym} 100 -320 0 0 {name=V7 value=0 savecurrent=false}
C {devices/vsource.sym} 240 -440 0 0 {name=vds value=0 savecurrent=false}
C {devices/gnd.sym} 100 -270 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 240 -510 0 0 {name=p1 sig_type=std_logic lab=VDS}
C {devices/lab_wire.sym} 360 -510 0 0 {name=p2 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} 330 -160 0 1 {name=p7 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} 100 -40 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 180 -390 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/simulator_commands_shown.sym} 470 -420 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include nmos_outchar_param.spice
.include nmos_outchar_ctrl.spice
"}
C {devices/lab_wire.sym} 140 -160 0 1 {name=p12 sig_type=std_logic lab=VGS}
C {devices/lab_wire.sym} 260 -260 0 1 {name=p3 sig_type=std_logic lab=VDS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 520 -160 0 0 {name=M2
L=\{L\}
W=\{W\}
nf=\{F\} 
mult=\{M\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} 610 -160 0 1 {name=p4 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} 540 -260 0 1 {name=p5 sig_type=std_logic lab=VDS}
C {devices/lab_wire.sym} 420 -160 0 1 {name=p6 sig_type=std_logic lab=VGS}
