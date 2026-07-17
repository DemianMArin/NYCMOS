v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -400 240 -400 {lab=Vin}
N 220 -400 220 -300 {lab=Vin}
N 220 -300 240 -300 {lab=Vin}
N 280 -370 280 -330 {lab=#net1}
N 280 -350 410 -350 {lab=#net1}
N 410 -400 410 -350 {lab=#net1}
N 410 -400 430 -400 {lab=#net1}
N 410 -350 410 -300 {lab=#net1}
N 410 -300 430 -300 {lab=#net1}
N 470 -370 470 -330 {lab=Vout}
N 470 -400 510 -400 {lab=VDD}
N 510 -460 510 -400 {lab=VDD}
N 280 -460 510 -460 {lab=VDD}
N 280 -460 280 -430 {lab=VDD}
N 280 -400 310 -400 {lab=VDD}
N 310 -450 310 -400 {lab=VDD}
N 310 -460 310 -450 {lab=VDD}
N 470 -460 470 -430 {lab=VDD}
N 280 -270 280 -240 {lab=VSS}
N 280 -240 510 -240 {lab=VSS}
N 510 -300 510 -240 {lab=VSS}
N 470 -300 510 -300 {lab=VSS}
N 470 -270 470 -240 {lab=VSS}
N 280 -300 310 -300 {lab=VSS}
N 310 -300 310 -240 {lab=VSS}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {symbols/nfet_03v3.sym} 260 -300 0 0 {name=M1
L=0.28u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 450 -300 0 0 {name=M2
L=0.28u
W=6u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 450 -400 0 0 {name=M3
L=0.28u
W=12u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 260 -400 0 0 {name=M4
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 370 -460 3 0 {name=p1 lab=VDD}
C {iopin.sym} 370 -240 3 1 {name=p2 lab=VSS}
C {ipin.sym} 220 -350 0 0 {name=p3 lab=Vin}
C {opin.sym} 470 -350 0 0 {name=p4 lab=Vout}
