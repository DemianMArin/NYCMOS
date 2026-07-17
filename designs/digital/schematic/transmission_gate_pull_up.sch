v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -480 390 -480 {lab=in}
N 300 -480 300 -290 {lab=in}
N 300 -290 390 -290 {lab=in}
N 450 -480 560 -480 {lab=out}
N 560 -480 560 -300 {lab=out}
N 560 -300 560 -290 {lab=out}
N 450 -290 560 -290 {lab=out}
N 420 -480 420 -430 {lab=VDD}
N 420 -360 420 -290 {lab=VSS}
N 250 -380 290 -380 {lab=in}
N 290 -380 300 -380 {lab=in}
N 560 -380 630 -380 {lab=out}
N 420 -580 420 -520 {lab=#net1}
N 420 -250 420 -190 {lab=EN}
N 560 -570 560 -480 {lab=out}
N 560 -740 560 -630 {lab=#net2}
N 560 -600 610 -600 {lab=#net3}
N 460 -600 520 -600 {lab=EN}
N 420 -600 420 -580 {lab=#net1}
N 220 -620 230 -620 {lab=EN}
N 230 -670 230 -620 {lab=EN}
N 230 -620 230 -570 {lab=EN}
N 270 -640 270 -600 {lab=#net1}
N 270 -570 300 -570 {lab=VSS}
N 300 -570 300 -510 {lab=VSS}
N 270 -510 300 -510 {lab=VSS}
N 270 -540 270 -510 {lab=VSS}
N 270 -730 270 -700 {lab=VDD}
N 270 -730 300 -730 {lab=VDD}
N 300 -730 300 -670 {lab=VDD}
N 270 -670 300 -670 {lab=VDD}
N 270 -620 420 -620 {lab=#net1}
N 420 -620 420 -610 {lab=#net1}
N 420 -610 420 -600 {lab=#net1}
C {title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {symbols/pfet_03v3.sym} 420 -500 1 0 {name=M1
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
C {symbols/nfet_03v3.sym} 420 -270 3 0 {name=M2
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
C {iopin.sym} 420 -430 0 0 {name=p1 lab=VDD}
C {iopin.sym} 420 -360 0 0 {name=p2 lab=VSS}
C {iopin.sym} 250 -380 2 0 {name=p3 lab=in}
C {iopin.sym} 630 -380 0 0 {name=p4 lab=out}
C {iopin.sym} 420 -190 0 0 {name=p6 lab=EN}
C {symbols/pfet_03v3.sym} 540 -600 0 0 {name=M3
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
C {lab_wire.sym} 500 -600 0 0 {name=p9 sig_type=std_logic lab=EN}
C {symbols/nfet_03v3.sym} 250 -670 2 1 {name=M4
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
C {symbols/nfet_03v3.sym} 250 -570 0 0 {name=M5
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
C {lab_wire.sym} 300 -510 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -730 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 -620 0 0 {name=p11 sig_type=std_logic lab=EN}
C {lab_wire.sym} 560 -730 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 -600 0 1 {name=p8 sig_type=std_logic lab=VDD}
