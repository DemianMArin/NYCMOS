v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 100 -400 {}
N 300 -690 300 -600 {lab=IF_m}
N 300 -540 300 -510 {lab=#net1}
N 300 -510 470 -510 {lab=#net1}
N 470 -540 470 -510 {lab=#net1}
N 400 -510 400 -460 {lab=#net1}
N 990 -690 990 -600 {lab=IF_p}
N 400 -460 400 -440 {lab=#net1}
N 400 -380 400 -360 {lab=Itail}
N 770 -540 770 -510 {lab=#net2}
N 770 -510 990 -510 {lab=#net2}
N 990 -540 990 -510 {lab=#net2}
N 870 -510 870 -450 {lab=#net2}
N 300 -670 770 -630 {lab=IF_m}
N 770 -630 770 -600 {lab=IF_m}
N 470 -630 470 -600 {lab=IF_p}
N 470 -630 990 -670 {lab=IF_p}
N 400 -410 460 -410 {lab=VSS}
N 820 -420 870 -420 {lab=VSS}
N 960 -570 990 -570 {lab=VSS}
N 770 -570 810 -570 {lab=VSS}
N 300 -570 330 -570 {lab=VSS}
N 430 -570 470 -570 {lab=VSS}
N 990 -800 990 -750 {lab=VDD}
N 300 -800 300 -750 {lab=VDD}
N 220 -570 260 -570 {lab=LO_p}
N 510 -570 550 -570 {lab=LO_m}
N 700 -570 730 -570 {lab=LO_m}
N 1030 -570 1070 -570 {lab=LO_p}
N 330 -410 360 -410 {lab=RF_p}
N 910 -420 940 -420 {lab=RF_m}
N 550 -570 700 -570 {lab=LO_m}
N 300 -840 300 -800 {lab=VDD}
N 990 -840 990 -800 {lab=VDD}
N 190 -570 220 -570 {lab=LO_p}
N 940 -420 960 -420 {lab=RF_m}
N 400 -360 650 -360 {lab=Itail}
N 650 -360 870 -360 {lab=Itail}
N 870 -390 870 -360 {lab=Itail}
C {title.sym} 160 -40 0 0 {name=l1 author="NYCMOS-Charbel El Haddad"}
C {symbols/nfet_03v3.sym} 380 -410 0 0 {name=M1
L=0.28u
W=36u
nf=6
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
C {symbols/nfet_03v3.sym} 890 -420 0 1 {name=M2
L=0.28u
W=36u
nf=6
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
C {symbols/nfet_03v3.sym} 280 -570 0 0 {name=M3
L=0.28u
W=21u
nf=7
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
C {symbols/nfet_03v3.sym} 490 -570 0 1 {name=M4
L=0.28u
W=21u
nf=7
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
C {symbols/nfet_03v3.sym} 750 -570 0 0 {name=M5
L=0.28u
W=21u
nf=7
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
C {symbols/nfet_03v3.sym} 1010 -570 0 1 {name=M6
L=0.28u
W=21u
nf=7
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
C {res.sym} 300 -720 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {res.sym} 990 -720 0 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1060 -570 0 0 {name=p4 sig_type=std_logic lab=LO_p}
C {iopin.sym} 1140 -760 0 0 {name=p8 lab=VDD}
C {ipin.sym} 1280 -700 0 0 {name=p3 lab=LO_p}
C {ipin.sym} 1280 -670 0 0 {name=p1 lab=LO_m}
C {iopin.sym} 1140 -700 0 0 {name=p2 lab=Itail}
C {opin.sym} 1320 -730 0 0 {name=p7 lab=IF_m}
C {opin.sym} 1320 -760 0 0 {name=p9 lab=IF_p}
C {iopin.sym} 1140 -730 0 0 {name=p10 lab=VSS}
C {lab_wire.sym} 840 -420 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -410 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 980 -570 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -570 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -570 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 800 -570 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {ipin.sym} 1280 -760 0 0 {name=p17 lab=RF_p}
C {ipin.sym} 1280 -730 0 0 {name=p5 lab=RF_m}
C {lab_wire.sym} 300 -810 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 990 -820 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 -570 0 0 {name=p19 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 220 -570 0 0 {name=p20 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 350 -410 0 0 {name=p21 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 950 -420 0 0 {name=p22 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 650 -360 0 0 {name=p23 sig_type=std_logic lab=Itail}
C {lab_wire.sym} 300 -640 0 0 {name=p24 sig_type=std_logic lab=IF_m}
C {lab_wire.sym} 990 -640 0 0 {name=p25 sig_type=std_logic lab=IF_p}
