v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 390 -450 390 -420 {lab=VDD}
N 390 -360 390 -310 {lab=out}
N 320 -390 350 -390 {lab=in}
N 320 -390 320 -330 {lab=in}
N 300 -330 320 -330 {lab=in}
N 320 -330 320 -280 {lab=in}
N 320 -280 350 -280 {lab=in}
N 390 -250 390 -220 {lab=VSS}
N 390 -340 530 -340 {lab=out}
N 390 -390 420 -390 {lab=VDD}
N 420 -400 420 -390 {lab=VDD}
N 420 -430 420 -400 {lab=VDD}
N 390 -430 420 -430 {lab=VDD}
N 390 -280 430 -280 {lab=VSS}
N 430 -280 430 -230 {lab=VSS}
N 390 -230 430 -230 {lab=VSS}
C {symbols/pfet_03v3.sym} 370 -390 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 370 -280 0 0 {name=M2
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
C {iopin.sym} 390 -450 0 0 {name=p1 lab=VDD}
C {iopin.sym} 390 -220 0 0 {name=p2 lab=VSS}
C {iopin.sym} 300 -330 2 0 {name=p3 lab=in}
C {iopin.sym} 530 -340 0 0 {name=p4 lab=out}
C {title.sym} 210 -40 0 0 {name=l1 author="Charbel El Haddad"}
