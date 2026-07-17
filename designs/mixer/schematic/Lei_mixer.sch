v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 420 -950 420 -920 {lab=#net1}
N 420 -1040 700 -1040 {lab=i_tail}
N 700 -950 700 -920 {lab=#net2}
N 540 -1080 540 -1040 {lab=i_tail}
N 740 -890 820 -890 {lab=RF_m}
N 290 -890 380 -890 {lab=RF_p}
N 490 -680 620 -680 {lab=LO_m}
N 920 -680 1020 -680 {lab=LO_p}
N 110 -680 190 -680 {lab=LO_p}
N 230 -740 230 -710 {lab=#net3}
N 230 -740 450 -740 {lab=#net3}
N 450 -740 450 -710 {lab=#net3}
N 420 -860 420 -740 {lab=#net3}
N 660 -740 660 -710 {lab=#net4}
N 660 -740 880 -740 {lab=#net4}
N 880 -740 880 -710 {lab=#net4}
N 700 -860 700 -740 {lab=#net4}
N 230 -650 230 -550 {lab=IF_m}
N 450 -650 450 -560 {lab=IF_p}
N 450 -560 450 -550 {lab=IF_p}
N 660 -650 660 -550 {lab=IF_m}
N 880 -650 880 -550 {lab=IF_p}
N 230 -550 230 -450 {lab=IF_m}
N 880 -550 880 -450 {lab=IF_p}
N 450 -550 660 -490 {lab=IF_p}
N 660 -490 880 -490 {lab=IF_p}
N 450 -490 660 -550 {lab=IF_m}
N 230 -490 450 -490 {lab=IF_m}
N 230 -390 230 -310 {lab=VSS}
N 880 -390 880 -310 {lab=VSS}
N 230 -310 880 -310 {lab=VSS}
N 230 -680 450 -680 {lab=VDD}
N 660 -680 880 -680 {lab=VDD}
N 420 -890 700 -890 {lab=VDD}
N 700 -980 700 -950 {lab=#net2}
N 420 -980 420 -950 {lab=#net1}
C {symbols/pfet_03v3.sym} 400 -890 0 0 {name=M1
L=0.28u
W=35u
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
C {symbols/pfet_03v3.sym} 720 -890 0 1 {name=M2
L=0.28u
W=35u
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
C {symbols/pfet_03v3.sym} 210 -680 0 0 {name=M4
L=0.28u
W=100u
nf=10
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
C {symbols/pfet_03v3.sym} 470 -680 0 1 {name=M5
L=0.28u
W=100u
nf=10
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
C {symbols/pfet_03v3.sym} 640 -680 0 0 {name=M6
L=0.28u
W=100u
nf=10
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
C {symbols/pfet_03v3.sym} 900 -680 0 1 {name=M7
L=0.28u
W=100u
nf=10
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
C {res.sym} 230 -420 0 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 880 -420 0 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {iopin.sym} -50 -610 0 0 {name=p1 lab=VDD}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {iopin.sym} -50 -580 0 0 {name=p2 lab=VSS}
C {ipin.sym} -140 -610 0 0 {name=p3 lab=RF_p}
C {ipin.sym} -140 -580 0 0 {name=p4 lab=RF_m}
C {ipin.sym} -140 -550 0 0 {name=p5 lab=LO_p}
C {ipin.sym} -140 -520 0 0 {name=p6 lab=LO_m}
C {opin.sym} -160 -490 0 0 {name=p7 lab=IF_p}
C {opin.sym} -160 -460 0 0 {name=p8 lab=IF_m}
C {iopin.sym} -50 -550 0 0 {name=p9 lab=i_tail}
C {lab_wire.sym} 350 -680 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 780 -680 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -890 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 560 -310 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -680 0 0 {name=p14 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 150 -680 0 0 {name=p15 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 960 -680 0 1 {name=p16 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 760 -890 0 1 {name=p17 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 310 -890 0 1 {name=p18 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 540 -1060 0 1 {name=p19 sig_type=std_logic lab=i_tail}
C {lab_wire.sym} 230 -490 0 0 {name=p20 sig_type=std_logic lab=IF_m}
C {lab_wire.sym} 880 -490 0 1 {name=p21 sig_type=std_logic lab=IF_p}
C {ammeter.sym} 420 -1010 0 0 {name=v_i_branch_1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 700 -1010 0 0 {name=v_i_branch_2 savecurrent=true spice_ignore=0}
