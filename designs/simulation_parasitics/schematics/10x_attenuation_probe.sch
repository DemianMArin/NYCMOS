v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 90 50 90 {lab=Probe_in}
N 40 0 40 90 {lab=Probe_in}
N 40 -0 50 -0 {lab=Probe_in}
N 110 0 120 0 {lab=Vout}
N 120 0 120 90 {lab=Vout}
N 110 90 120 90 {lab=Vout}
N 120 0 200 0 {lab=Vout}
N 200 60 200 130 {lab=Probe_gnd}
N 200 0 270 -0 {lab=Vout}
N -10 0 40 0 {lab=Probe_in}
C {res.sym} 80 0 1 0 {name=R1
value=9MEG
footprint=1206
device=resistor
m=1}
C {capa.sym} 80 90 1 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 200 30 0 0 {name=R2
value=1MEG
footprint=1206
device=resistor
m=1}
C {iopin.sym} 200 130 0 0 {name=p1 lab=Probe_gnd}
C {ipin.sym} -10 0 0 0 {name=p2 lab=Probe_in}
C {opin.sym} 270 0 0 0 {name=p3 lab=Scope_out}
