v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 390 -730 {}
N 350 -550 350 -510 {lab=VSS}
N 350 -660 350 -610 {lab=Ilocal}
N 350 -690 350 -660 {lab=Ilocal}
N 350 -660 430 -660 {lab=Ilocal}
N 430 -660 430 -580 {lab=Ilocal}
N 390 -580 430 -580 {lab=Ilocal}
N 330 -580 350 -580 {lab=VSS}
N 330 -580 330 -530 {lab=VSS}
N 330 -530 330 -510 {lab=VSS}
N 330 -510 350 -510 {lab=VSS}
N 430 -580 500 -580 {lab=Ilocal}
N 350 -720 350 -690 {lab=Ilocal}
N 1090 -1090 1090 -1050 {lab=VSS}
N 1090 -1200 1090 -1150 {lab=Itail_mix1}
N 1090 -1120 1110 -1120 {lab=VSS}
N 1110 -1120 1110 -1050 {lab=VSS}
N 940 -1120 1050 -1120 {lab=#net1}
N 780 -1230 780 -1200 {lab=VDD}
N 600 -1120 600 -840 {lab=Ilocal}
N 600 -1120 720 -1120 {lab=Ilocal}
N 600 -600 600 -580 {lab=Ilocal}
N 600 -840 600 -600 {lab=Ilocal}
N 780 -1040 780 -1010 {lab=VSS}
N 840 -1260 840 -1200 {lab=EN_mix}
N 840 -1040 840 -1000 {lab=EN_B_mix}
N 350 -510 380 -510 {lab=VSS}
N 1090 -1050 1110 -1050 {lab=VSS}
N 500 -580 600 -580 {lab=Ilocal}
N 990 -1120 990 -900 {lab=#net1}
N 1090 -850 1090 -810 {lab=VSS}
N 1090 -960 1090 -910 {lab=Itail_mix2}
N 1090 -880 1110 -880 {lab=VSS}
N 1110 -880 1110 -810 {lab=VSS}
N 1090 -810 1110 -810 {lab=VSS}
N 990 -900 990 -880 {lab=#net1}
N 990 -880 1050 -880 {lab=#net1}
N 1090 -610 1090 -570 {lab=VSS}
N 1090 -720 1090 -670 {lab=Itail_mix3}
N 1090 -640 1110 -640 {lab=VSS}
N 1110 -640 1110 -570 {lab=VSS}
N 1090 -570 1110 -570 {lab=VSS}
N 990 -880 990 -640 {lab=#net1}
N 990 -640 1050 -640 {lab=#net1}
N 1090 -370 1090 -330 {lab=VSS}
N 1090 -480 1090 -430 {lab=Itail_mix4}
N 1090 -400 1110 -400 {lab=VSS}
N 1110 -400 1110 -330 {lab=VSS}
N 1090 -330 1110 -330 {lab=VSS}
N 990 -400 1050 -400 {lab=#net1}
N 990 -640 990 -400 {lab=#net1}
C {symbols/nfet_03v3.sym} 370 -580 0 1 {name=M1
L=0.5u
W=8u
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
C {iopin.sym} 350 -720 0 0 {name=p5 lab=Ilocal}
C {title.sym} 190 -60 0 0 {name=l1 author="Stefan Schippers"}
C {symbols/nfet_03v3.sym} 1070 -1120 0 0 {name=M6
L=0.5u
W=40u
nf=10
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
C {iopin.sym} 1090 -1200 0 0 {name=p12 lab=Itail_mix1}
C {iopin.sym} 780 -1230 0 0 {name=p13 lab=VDD}
C {iopin.sym} 380 -510 0 0 {name=p2 lab=VSS}
C {lab_wire.sym} 780 -1020 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1090 -1060 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {iopin.sym} 840 -1250 0 0 {name=p16 lab=EN_mix}
C {iopin.sym} 840 -1020 0 0 {name=p17 lab=EN_B_mix}
C {designs/digital/schematic/transmission_gate.sym} 840 -1120 0 0 {name=x1}
C {symbols/nfet_03v3.sym} 1070 -880 0 0 {name=M2
L=0.5u
W=40u
nf=10
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
C {iopin.sym} 1090 -960 0 0 {name=p1 lab=Itail_mix2}
C {lab_wire.sym} 1090 -820 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 1070 -640 0 0 {name=M3
L=0.5u
W=40u
nf=10
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
C {iopin.sym} 1090 -720 0 0 {name=p4 lab=Itail_mix3}
C {lab_wire.sym} 1090 -580 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 1070 -400 0 0 {name=M4
L=0.5u
W=40u
nf=10
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
C {iopin.sym} 1090 -480 0 0 {name=p7 lab=Itail_mix4}
C {lab_wire.sym} 1090 -340 0 0 {name=p8 sig_type=std_logic lab=VSS}
