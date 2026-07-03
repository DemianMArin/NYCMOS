v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -520 250 -480 {lab=VDD}
N 250 -450 300 -450 {lab=VDD}
N 300 -500 300 -450 {lab=VDD}
N 250 -500 300 -500 {lab=VDD}
N 250 -340 300 -340 {lab=VDD}
N 300 -450 300 -340 {lab=VDD}
N 160 -450 210 -450 {lab=C0}
N 160 -340 210 -340 {lab=C1}
N 70 -450 160 -450 {lab=C0}
N 80 -450 80 -190 {lab=C0}
N 80 -190 210 -190 {lab=C0}
N 250 -310 250 -220 {lab=E0}
N 380 -190 410 -190 {lab=C1}
N 250 -250 450 -250 {lab=E0}
N 450 -250 450 -220 {lab=E0}
N 250 -160 250 -110 {lab=VSS}
N 250 -110 460 -110 {lab=VSS}
N 450 -160 450 -110 {lab=VSS}
N 250 -190 290 -190 {lab=VSS}
N 290 -190 290 -110 {lab=VSS}
N 460 -110 500 -110 {lab=VSS}
N 450 -190 480 -190 {lab=VSS}
N 480 -190 480 -110 {lab=VSS}
N 450 -250 530 -250 {lab=E0}
N 250 -420 250 -370 {lab=#net1}
C {symbols/nfet_03v3.sym} 230 -190 0 0 {name=M1
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 430 -190 0 0 {name=M2
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 230 -340 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 230 -450 0 0 {name=M4
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
C {title.sym} 190 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {iopin.sym} 250 -520 0 0 {name=p1 lab=VDD}
C {iopin.sym} 500 -110 0 0 {name=p2 lab=VSS}
C {ipin.sym} 70 -450 0 0 {name=p3 lab=C0}
C {ipin.sym} 160 -340 0 0 {name=p4 lab=C1}
C {lab_wire.sym} 390 -190 0 0 {name=p5 sig_type=std_logic lab=C1}
C {opin.sym} 530 -250 0 0 {name=p6 lab=E0}
