v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 40 -20 40 {
lab=VGS}
N 80 40 160 40 {
lab=VBS}
N 80 70 80 140 {
lab=VSS}
N -20 40 40 40 {
lab=VGS}
N 80 -60 80 10 {
lab=VDS}
N -320 -120 -320 -80 {
lab=VSS}
N -180 -240 -180 -200 {
lab=VDS}
N -60 -240 -60 -200 {
lab=VBS}
N -320 -120 -180 -120 {
lab=VSS}
N -180 -120 -60 -120 {
lab=VSS}
N -180 -140 -180 -120 {
lab=VSS}
N -60 -140 -60 -120 {
lab=VSS}
N 80 140 80 160 {
lab=VSS}
N -80 140 -80 160 {
lab=VSS}
N -80 40 -80 80 {
lab=VGS}
N -320 -20 -320 0 {
lab=GND}
N -80 160 80 160 {
lab=VSS}
N 440 40 520 40 {
lab=VBS}
N 440 70 440 140 {
lab=VSS}
N 440 -60 440 10 {
lab=VDS}
N 440 140 440 160 {
lab=VSS}
N 80 160 260 160 {
lab=VSS}
N 260 160 440 160 {
lab=VSS}
N 320 40 400 40 {
lab=VGS}
C {sky130_fd_pr/nfet_01v8.sym} 60 40 0 0 {name=M1
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
C {sky130_fd_pr/corner.sym} 660 -280 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 700 50 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} -80 110 0 0 {name=vgs value=0 savecurrent=false}
C {devices/vsource.sym} -60 -170 0 0 {name=V4 value=\{vbs\} savecurrent=false}
C {devices/vsource.sym} -320 -50 0 0 {name=V7 value=0 savecurrent=false}
C {devices/vsource.sym} -180 -170 0 0 {name=V8 value=\{vds\} savecurrent=false}
C {devices/gnd.sym} -320 0 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -180 -240 0 0 {name=p1 sig_type=std_logic lab=VDS}
C {devices/lab_wire.sym} -60 -240 0 0 {name=p2 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} 150 40 0 1 {name=p7 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} -80 160 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -240 -120 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/simulator_commands_shown.sym} 630 -90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include nmos_param.spice
.include nmos_ctrl.spice
"}
C {devices/lab_wire.sym} -40 40 0 1 {name=p12 sig_type=std_logic lab=VGS}
C {devices/lab_wire.sym} 80 -60 0 1 {name=p3 sig_type=std_logic lab=VDS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 420 40 0 0 {name=M2
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
C {devices/lab_wire.sym} 510 40 0 1 {name=p4 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} 440 -60 0 1 {name=p5 sig_type=std_logic lab=VDS}
C {devices/lab_wire.sym} 320 40 0 1 {name=p6 sig_type=std_logic lab=VGS}
