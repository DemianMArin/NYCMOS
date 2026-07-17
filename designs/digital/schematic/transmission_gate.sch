v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 320 -420 410 -420 {lab=in}
N 320 -420 320 -230 {lab=in}
N 320 -230 410 -230 {lab=in}
N 470 -420 580 -420 {lab=out}
N 580 -420 580 -240 {lab=out}
N 580 -240 580 -230 {lab=out}
N 470 -230 580 -230 {lab=out}
N 440 -420 440 -370 {lab=VDD}
N 440 -300 440 -230 {lab=VSS}
N 270 -320 310 -320 {lab=in}
N 310 -320 320 -320 {lab=in}
N 580 -320 650 -320 {lab=out}
N 440 -520 440 -460 {lab=EN_B}
N 440 -190 440 -130 {lab=EN}
N 580 -230 580 -190 {lab=out}
N 580 -130 580 -100 {lab=VSS}
N 580 -160 630 -160 {lab=VSS}
N 500 -160 540 -160 {lab=EN_B}
N 240 -600 250 -600 {lab=EN}
N 240 -600 240 -490 {lab=EN}
N 240 -490 250 -490 {lab=EN}
N 290 -570 290 -520 {lab=EN_B}
N 290 -540 440 -540 {lab=EN_B}
N 440 -540 440 -520 {lab=EN_B}
N 210 -540 240 -540 {lab=EN}
N 290 -670 290 -630 {lab=VDD}
N 290 -670 330 -670 {lab=VDD}
N 330 -670 330 -600 {lab=VDD}
N 290 -600 330 -600 {lab=VDD}
N 290 -460 290 -440 {lab=VSS}
N 290 -440 340 -440 {lab=VSS}
N 340 -490 340 -440 {lab=VSS}
N 290 -490 340 -490 {lab=VSS}
C {symbols/pfet_03v3.sym} 440 -440 1 0 {name=M1
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
C {symbols/nfet_03v3.sym} 440 -210 3 0 {name=M2
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
C {title.sym} 230 -50 0 0 {name=l1 author="Charbel El Haddad"}
C {iopin.sym} 440 -370 0 0 {name=p1 lab=VDD}
C {iopin.sym} 440 -300 0 0 {name=p2 lab=VSS}
C {iopin.sym} 270 -320 2 0 {name=p3 lab=in}
C {iopin.sym} 650 -320 0 0 {name=p4 lab=out}
C {iopin.sym} 440 -130 0 0 {name=p6 lab=EN}
C {symbols/nfet_03v3.sym} 560 -160 0 0 {name=M3
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
C {lab_wire.sym} 580 -110 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 630 -160 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 520 -160 0 0 {name=p9 sig_type=std_logic lab=EN_B}
C {symbols/pfet_03v3.sym} 270 -600 0 0 {name=M4
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 270 -490 0 0 {name=M5
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
C {lab_wire.sym} 390 -540 0 0 {name=p5 sig_type=std_logic lab=EN_B}
C {lab_wire.sym} 230 -540 0 0 {name=p11 sig_type=std_logic lab=EN}
C {lab_wire.sym} 340 -440 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 330 -670 0 0 {name=p13 sig_type=std_logic lab=VDD}
