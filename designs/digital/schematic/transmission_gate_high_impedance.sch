v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 390 -620 480 -620 {lab=in}
N 390 -620 390 -430 {lab=in}
N 390 -430 480 -430 {lab=in}
N 540 -620 650 -620 {lab=out}
N 650 -620 650 -440 {lab=out}
N 650 -440 650 -430 {lab=out}
N 540 -430 650 -430 {lab=out}
N 510 -620 510 -570 {lab=VDD}
N 510 -500 510 -430 {lab=VSS}
N 340 -520 380 -520 {lab=in}
N 380 -520 390 -520 {lab=in}
N 650 -520 720 -520 {lab=out}
N 510 -720 510 -660 {lab=#net1}
N 510 -390 510 -330 {lab=EN}
N 350 -800 360 -800 {lab=EN}
N 360 -850 360 -800 {lab=EN}
N 360 -800 360 -750 {lab=EN}
N 400 -820 400 -780 {lab=#net1}
N 400 -800 510 -800 {lab=#net1}
N 510 -800 510 -720 {lab=#net1}
N 400 -750 430 -750 {lab=VSS}
N 430 -750 430 -690 {lab=VSS}
N 400 -690 430 -690 {lab=VSS}
N 400 -720 400 -690 {lab=VSS}
N 400 -910 400 -880 {lab=VDD}
N 400 -910 430 -910 {lab=VDD}
N 430 -910 430 -850 {lab=VDD}
N 400 -850 430 -850 {lab=VDD}
C {title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {symbols/pfet_03v3.sym} 510 -640 1 0 {name=M1
L=0.28u
W=12u
nf=4
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
C {symbols/nfet_03v3.sym} 510 -410 3 0 {name=M2
L=0.28u
W=6u
nf=2
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
C {iopin.sym} 510 -570 0 0 {name=p1 lab=VDD}
C {iopin.sym} 510 -500 0 0 {name=p2 lab=VSS}
C {iopin.sym} 340 -520 2 0 {name=p3 lab=in}
C {iopin.sym} 720 -520 0 0 {name=p4 lab=out}
C {iopin.sym} 510 -330 0 0 {name=p6 lab=EN}
C {symbols/nfet_03v3.sym} 380 -850 2 1 {name=M3
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
C {symbols/nfet_03v3.sym} 380 -750 0 0 {name=M4
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
C {lab_wire.sym} 430 -690 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 430 -910 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -800 0 0 {name=p8 sig_type=std_logic lab=EN}
