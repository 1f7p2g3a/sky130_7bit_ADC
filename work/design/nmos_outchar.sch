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
N -80 -190 -80 -150 {
lab=VSS}
N 60 -310 60 -270 {
lab=VDS}
N 180 -310 180 -270 {
lab=VBS}
N -80 -190 60 -190 {
lab=VSS}
N 60 -190 180 -190 {
lab=VSS}
N 60 -210 60 -190 {
lab=VSS}
N 180 -210 180 -190 {
lab=VSS}
N 80 140 80 160 {
lab=VSS}
N -80 140 -80 160 {
lab=VSS}
N -80 40 -80 80 {
lab=VGS}
N -80 -90 -80 -70 {
lab=GND}
N -80 160 80 160 {
lab=VSS}
N 360 40 440 40 {
lab=VBS}
N 360 70 360 140 {
lab=VSS}
N 360 -60 360 10 {
lab=VDS}
N 360 140 360 160 {
lab=VSS}
N 180 160 360 160 {
lab=VSS}
N 240 40 320 40 {
lab=VGS}
N 80 160 180 160 {
lab=VSS}
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
C {sky130_fd_pr/corner.sym} 320 -410 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 360 -130 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} -80 110 0 0 {name=V1 value=\{vgs\} savecurrent=false}
C {devices/vsource.sym} 180 -240 0 0 {name=V4 value=\{vbs\} savecurrent=false}
C {devices/vsource.sym} -80 -120 0 0 {name=V7 value=0 savecurrent=false}
C {devices/vsource.sym} 60 -240 0 0 {name=vds value=0 savecurrent=false}
C {devices/gnd.sym} -80 -70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -310 0 0 {name=p1 sig_type=std_logic lab=VDS}
C {devices/lab_wire.sym} 180 -310 0 0 {name=p2 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} 150 40 0 1 {name=p7 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} -80 160 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 0 -190 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/simulator_commands_shown.sym} 290 -220 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include nmos_outchar_param.spice
.include nmos_outchar_ctrl.spice
"}
C {devices/lab_wire.sym} -40 40 0 1 {name=p12 sig_type=std_logic lab=VGS}
C {devices/lab_wire.sym} 80 -60 0 1 {name=p3 sig_type=std_logic lab=VDS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 340 40 0 0 {name=M2
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
C {devices/lab_wire.sym} 430 40 0 1 {name=p4 sig_type=std_logic lab=VBS}
C {devices/lab_wire.sym} 360 -60 0 1 {name=p5 sig_type=std_logic lab=VDS}
C {devices/lab_wire.sym} 240 40 0 1 {name=p6 sig_type=std_logic lab=VGS}
