v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -690 180 -600 {lab=IF_m}
N 180 -540 180 -510 {lab=#net1}
N 300 -510 470 -510 {lab=#net1}
N 470 -540 470 -510 {lab=#net1}
N 1090 -690 1090 -600 {lab=IF_p}
N 330 -470 330 -450 {lab=#net1}
N 770 -540 770 -510 {lab=#net2}
N 770 -510 990 -510 {lab=#net2}
N 1090 -540 1090 -510 {lab=#net2}
N 930 -510 930 -450 {lab=#net2
spice_ignore=short}
N 770 -630 770 -600 {lab=IF_m}
N 470 -630 470 -600 {lab=IF_p}
N 880 -420 930 -420 {lab=VSS
spice_ignore=short}
N 1060 -570 1090 -570 {lab=VSS}
N 770 -570 810 -570 {lab=VSS}
N 180 -570 210 -570 {lab=VSS}
N 430 -570 470 -570 {lab=VSS}
N 1090 -800 1090 -750 {lab=VDD}
N 180 -800 180 -750 {lab=VDD}
N 100 -570 140 -570 {lab=LO_p}
N 510 -570 550 -570 {lab=LO_m}
N 700 -570 730 -570 {lab=LO_m}
N 1130 -570 1170 -570 {lab=LO_p}
N 970 -420 1000 -420 {lab=RF_m
spice_ignore=short}
N 550 -570 700 -570 {lab=LO_m}
N 180 -840 180 -800 {lab=VDD}
N 1090 -840 1090 -800 {lab=VDD}
N 70 -570 100 -570 {lab=LO_p}
N 1000 -420 1020 -420 {lab=RF_m}
N 710 -360 930 -360 {lab=Itail}
N 930 -390 930 -360 {lab=Itail
spice_ignore=short}
N 620 -360 620 -310 {lab=Itail}
N 620 -250 620 -220 {lab=Itail}
N 470 -630 760 -660 {lab=IF_p}
N 760 -660 990 -660 {lab=IF_p}
N 470 -670 770 -630 {lab=IF_m}
N 300 -670 470 -670 {lab=IF_m}
N 620 -310 620 -250 {lab=Itail}
N 990 -660 1090 -660 {lab=IF_p}
N 230 -670 300 -670 {lab=IF_m}
N 990 -510 1090 -510 {lab=#net2}
N 620 -360 710 -360 {lab=Itail}
N 230 -510 300 -510 {lab=#net1}
N 190 -510 230 -510 {lab=#net1}
N 180 -510 190 -510 {lab=#net1}
N 180 -670 230 -670 {lab=IF_m}
N 260 -420 290 -420 {lab=RF_p}
N 330 -510 330 -470 {lab=#net1}
N 330 -360 620 -360 {lab=Itail}
N 330 -390 330 -360 {lab=Itail}
N 330 -420 410 -420 {lab=VSS}
N 200 -720 1070 -720 {lab=VSS}
C {title.sym} 160 -40 0 0 {name=l1 author="NYCMOS-Charbel El Haddad"}
C {symbols/nfet_03v3.sym} 310 -420 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 950 -420 0 1 {name=M2
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
C {symbols/nfet_03v3.sym} 160 -570 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 1110 -570 0 1 {name=M6
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
C {lab_wire.sym} 1160 -570 0 0 {name=p4 sig_type=std_logic lab=LO_p}
C {iopin.sym} 1230 -850 0 0 {name=p8 lab=VDD}
C {ipin.sym} 1430 -790 0 0 {name=p3 lab=LO_p}
C {ipin.sym} 1430 -760 0 0 {name=p1 lab=LO_m}
C {iopin.sym} 1230 -790 0 0 {name=p2 lab=Itail}
C {opin.sym} 1470 -820 0 0 {name=p7 lab=IF_m}
C {opin.sym} 1470 -850 0 0 {name=p9 lab=IF_p}
C {iopin.sym} 1230 -820 0 0 {name=p10 lab=VSS}
C {lab_wire.sym} 900 -420 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1080 -570 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -570 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 -570 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 800 -570 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {ipin.sym} 1430 -850 0 0 {name=p17 lab=RF_p}
C {ipin.sym} 1430 -820 0 0 {name=p5 lab=RF_m}
C {lab_wire.sym} 180 -810 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1090 -820 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 -570 0 0 {name=p19 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 100 -570 0 0 {name=p20 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 280 -420 0 0 {name=p21 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1010 -420 0 0 {name=p22 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 180 -640 0 0 {name=p24 sig_type=std_logic lab=IF_m}
C {lab_wire.sym} 1090 -640 0 0 {name=p25 sig_type=std_logic lab=IF_p}
C {lab_wire.sym} 620 -230 0 0 {name=p23 sig_type=std_logic lab=Itail}
C {lab_wire.sym} 390 -420 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k.sym} 1090 -720 0 0 {name=R1
W=1e-6
L=7.4e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 180 -720 0 1 {name=R2
W=1e-6
L=7.4e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 850 -720 0 0 {name=p26 sig_type=std_logic lab=VSS}
