v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 400 -660 400 -610 {lab=VDD}
N 450 -630 600 -630 {lab=VDD}
N 600 -630 600 -610 {lab=VDD}
N 400 -580 430 -580 {lab=VDD}
N 430 -630 430 -580 {lab=VDD}
N 600 -580 630 -580 {lab=VDD}
N 630 -630 630 -580 {lab=VDD}
N 600 -630 630 -630 {lab=VDD}
N 400 -550 400 -460 {lab=E2}
N 400 -630 450 -630 {lab=VDD}
N 400 -400 400 -360 {lab=#net1}
N 400 -300 400 -250 {lab=VSS}
N 400 -330 460 -330 {lab=VSS}
N 460 -330 460 -280 {lab=VSS}
N 400 -280 460 -280 {lab=VSS}
N 400 -430 460 -430 {lab=VSS}
N 460 -430 460 -330 {lab=VSS}
N 320 -580 360 -580 {lab=C0}
N 520 -580 560 -580 {lab=C1}
N 320 -430 360 -430 {lab=C0}
N 320 -330 360 -330 {lab=C1}
N 270 -580 320 -580 {lab=C0}
N 320 -580 320 -430 {lab=C0}
N 400 -490 530 -490 {lab=E2}
N 600 -550 600 -520 {lab=E2}
N 400 -520 600 -520 {lab=E2}
C {symbols/pfet_03v3.sym} 380 -580 0 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {title.sym} 170 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {symbols/pfet_03v3.sym} 580 -580 0 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 380 -430 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 380 -330 0 0 {name=M5
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
C {iopin.sym} 400 -660 0 0 {name=p1 lab=VDD}
C {iopin.sym} 400 -250 0 0 {name=p2 lab=VSS}
C {ipin.sym} 270 -580 0 0 {name=p3 lab=C0}
C {opin.sym} 530 -490 0 0 {name=p4 lab=E2}
C {ipin.sym} 320 -330 0 0 {name=p5 lab=C1}
C {lab_wire.sym} 530 -580 0 0 {name=p6 sig_type=std_logic lab=C1}
