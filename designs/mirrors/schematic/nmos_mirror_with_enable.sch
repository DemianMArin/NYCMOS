v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 380 -570 {}
N 340 -390 340 -350 {lab=VSS}
N 1090 -390 1090 -350 {lab=VSS}
N 340 -500 340 -450 {lab=Ilocal}
N 340 -530 340 -500 {lab=Ilocal}
N 340 -500 420 -500 {lab=Ilocal}
N 420 -500 420 -420 {lab=Ilocal}
N 380 -420 420 -420 {lab=Ilocal}
N 320 -420 340 -420 {lab=VSS}
N 320 -420 320 -370 {lab=VSS}
N 320 -370 320 -350 {lab=VSS}
N 320 -350 340 -350 {lab=VSS}
N 420 -420 490 -420 {lab=Ilocal}
N 1090 -500 1090 -450 {lab=I1_250u}
N 1090 -420 1110 -420 {lab=VSS}
N 1110 -420 1110 -350 {lab=VSS}
N 340 -560 340 -530 {lab=Ilocal}
N 630 -420 720 -420 {lab=Ilocal}
N 940 -420 1050 -420 {lab=#net1}
N 780 -530 780 -500 {lab=VDD}
N 490 -420 630 -420 {lab=Ilocal}
N 1090 -660 1090 -620 {lab=VSS}
N 1090 -770 1090 -720 {lab=I2_250u}
N 1090 -690 1110 -690 {lab=VSS}
N 1110 -690 1110 -620 {lab=VSS}
N 630 -690 720 -690 {lab=Ilocal}
N 940 -690 1050 -690 {lab=#net2}
N 780 -800 780 -770 {lab=VDD}
N 590 -690 630 -690 {lab=Ilocal}
N 1080 -930 1080 -890 {lab=VSS}
N 1080 -1040 1080 -990 {lab=I3_250u}
N 1080 -960 1100 -960 {lab=VSS}
N 1100 -960 1100 -890 {lab=VSS}
N 930 -960 1040 -960 {lab=#net3}
N 770 -1070 770 -1040 {lab=VDD}
N 590 -960 590 -680 {lab=Ilocal}
N 590 -960 710 -960 {lab=Ilocal}
N 590 -440 590 -420 {lab=Ilocal}
N 590 -680 590 -440 {lab=Ilocal}
N 770 -880 770 -850 {lab=VSS}
N 780 -610 780 -580 {lab=VSS}
N 780 -340 780 -310 {lab=VSS}
N 840 -540 840 -500 {lab=EN_I1}
N 840 -340 840 -300 {lab=EN_I1_B}
N 830 -1100 830 -1040 {lab=EN_I3}
N 830 -880 830 -840 {lab=EN_I3_B}
N 840 -810 840 -770 {lab=EN_I2}
N 840 -610 840 -570 {lab=EN_I2_B}
N 340 -350 370 -350 {lab=VSS}
N 1090 -350 1110 -350 {lab=VSS}
N 1090 -620 1110 -620 {lab=VSS}
N 1080 -890 1100 -890 {lab=VSS}
C {symbols/nfet_03v3.sym} 360 -420 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 1070 -420 0 0 {name=M2
L=0.5u
W=20u
nf=5
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
C {iopin.sym} 340 -560 0 0 {name=p5 lab=Ilocal}
C {iopin.sym} 1090 -500 0 0 {name=p6 lab=I1_250u}
C {title.sym} 190 -60 0 0 {name=l1 author="Stefan Schippers"}
C {lab_wire.sym} 660 -420 0 0 {name=p1 sig_type=std_logic lab=Ilocal}
C {symbols/nfet_03v3.sym} 1070 -690 0 0 {name=M5
L=0.5u
W=20u
nf=5
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
C {iopin.sym} 1090 -770 0 0 {name=p9 lab=I2_250u}
C {symbols/nfet_03v3.sym} 1060 -960 0 0 {name=M6
L=0.5u
W=20u
nf=5
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
C {iopin.sym} 1080 -1040 0 0 {name=p12 lab=I3_250u}
C {iopin.sym} 770 -1070 0 0 {name=p13 lab=VDD}
C {iopin.sym} 370 -350 0 0 {name=p2 lab=VSS}
C {lab_wire.sym} 780 -320 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1090 -360 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1110 -620 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 780 -580 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 770 -860 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1080 -900 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {iopin.sym} 830 -1090 0 0 {name=p16 lab=EN_I3}
C {iopin.sym} 830 -860 0 0 {name=p17 lab=EN_I3_B}
C {iopin.sym} 840 -580 0 0 {name=p18 lab=EN_I2_B}
C {iopin.sym} 840 -800 0 0 {name=p19 lab=EN_I2}
C {iopin.sym} 840 -520 0 0 {name=p20 lab=EN_I1}
C {iopin.sym} 840 -320 0 0 {name=p21 lab=EN_I1_B}
C {lab_wire.sym} 780 -790 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 780 -520 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {/foss/designs/NYCMOS/designs/digital/schematic/transmission_gate.sym} 830 -960 0 0 {name=x1}
C {/foss/designs/NYCMOS/designs/digital/schematic/transmission_gate.sym} 840 -690 0 0 {name=x2}
C {/foss/designs/NYCMOS/designs/digital/schematic/transmission_gate.sym} 840 -420 0 0 {name=x3}
