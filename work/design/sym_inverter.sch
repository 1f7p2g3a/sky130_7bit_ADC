v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -240 -180 -180 {
lab=VOUT}
N -180 -150 -100 -150 {
lab=VSS}
N -180 -270 -100 -270 {
lab=VDD}
N -180 -360 -180 -300 {
lab=VDD}
N -180 -120 -180 -60 {
lab=VSS}
N -260 -60 -180 -60 {
lab=VSS}
N -260 -360 -180 -360 {
lab=VDD}
N -240 -270 -220 -270 {
lab=VIN}
N -240 -270 -240 -150 {
lab=VIN}
N -240 -150 -220 -150 {
lab=VIN}
N -300 -210 -240 -210 {
lab=VIN}
N -180 -210 -60 -210 {
lab=VOUT}
N 40 -300 40 -260 {
lab=VSS}
N 40 -200 40 -180 {
lab=GND}
N 140 -200 140 -180 {
lab=VSS}
N 140 -180 240 -180 {
lab=VSS}
N 240 -200 240 -180 {
lab=VSS}
N 140 -300 140 -260 {
lab=VDD}
N 240 -300 240 -260 {
lab=VIN}
C {sky130_fd_pr/corner.sym} 330 -450 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} 40 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 40 -230 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_wire.sym} -260 -360 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 140 -230 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} 240 -230 0 0 {name=vin value=0 savecurrent=false}
C {devices/lab_wire.sym} 40 -300 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 -180 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -300 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 240 -300 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} -60 -210 0 0 {name=p6 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} -300 -210 0 0 {name=p7 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} -100 -270 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -260 -60 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -150 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 380 -90 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/simulator_commands_shown.sym} 310 -230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include sym_inverter_param.spice
.include sym_inverter_ctrl.spice
"}
C {sky130_fd_pr/nfet_01v8.sym} -200 -150 0 0 {name=M2
L=\{Lnm\}
W=\{Wnm\}
nf=\{Fnm\} 
mult=\{Mnm\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -200 -270 0 0 {name=M1
L=\{Lpm\}
W=\{Wpm\}
nf=\{Fpm\}
mult=\{Wpm\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
