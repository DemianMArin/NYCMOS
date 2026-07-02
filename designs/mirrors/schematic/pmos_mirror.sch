v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 620 -320 620 -280 {lab=Iref}
N 620 -430 620 -380 {lab=VDD}
N 660 -350 690 -350 {lab=Iref}
N 690 -350 690 -300 {lab=Iref}
N 620 -300 690 -300 {lab=Iref}
N 690 -350 730 -350 {lab=Iref}
N 770 -430 770 -380 {lab=VDD}
N 770 -320 770 -280 {lab=Iout}
N 620 -430 770 -430 {lab=VDD}
N 770 -430 820 -430 {lab=VDD}
N 770 -350 800 -350 {lab=VDD}
N 800 -430 800 -350 {lab=VDD}
N 590 -350 620 -350 {lab=VDD}
N 590 -430 590 -350 {lab=VDD}
N 590 -430 620 -430 {lab=VDD}
N 620 -280 620 -250 {lab=Iref}
N 770 -280 770 -250 {lab=Iout}
N 730 -350 730 -340 {lab=Iref}
N 730 -340 840 -340 {lab=Iref}
N 840 -350 840 -340 {lab=Iref}
N 880 -430 880 -380 {lab=VDD}
N 880 -430 890 -430 {lab=VDD}
N 820 -430 880 -430 {lab=VDD}
N 880 -350 900 -350 {lab=VDD}
N 900 -390 900 -350 {lab=VDD}
N 880 -390 900 -390 {lab=VDD}
N 880 -320 880 -300 {lab=Iout}
N 770 -300 880 -300 {lab=Iout}
C {symbols/pfet_03v3.sym} 640 -350 0 1 {name=M1
L=0.5u
W=28u
nf=7
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
C {symbols/pfet_03v3.sym} 750 -350 0 0 {name=M2
L=0.5u
W=56u
nf=14
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
C {iopin.sym} 890 -430 0 0 {name=p1 lab=VDD}
C {iopin.sym} 620 -250 0 0 {name=p2 lab=Iref}
C {iopin.sym} 770 -250 0 0 {name=p3 lab=Iout}
C {title.sym} 190 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {symbols/pfet_03v3.sym} 860 -350 0 0 {name=M3
L=0.5u
W=56u
nf=14
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
