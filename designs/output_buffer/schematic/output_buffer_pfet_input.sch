v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 590 -680 640 -680 {lab=Vin}
N 680 -680 750 -680 {lab=VDD}
N 680 -580 870 -580 {lab=V_feedback_gate}
N 910 -550 910 -510 {lab=VSS}
N 910 -580 970 -580 {lab=VSS}
N 970 -580 970 -510 {lab=VSS}
N 910 -510 970 -510 {lab=VSS}
N 680 -750 680 -710 {lab=#net1}
N 800 -660 800 -580 {lab=V_feedback_gate}
N 800 -840 800 -720 {lab=#net3
spice_ignore=true}
N 800 -1060 870 -1060 {lab=#net3
spice_ignore=true}
N 800 -1060 800 -1040 {lab=#net3
spice_ignore=true}
N 910 -1060 960 -1060 {lab=VDD
spice_ignore=true}
N 910 -1130 910 -1090 {lab=VDD
spice_ignore=true}
N 760 -1060 800 -1060 {lab=#net3
spice_ignore=true}
N 620 -1060 700 -1060 {lab=#net4
spice_ignore=true}
N 680 -320 680 -290 {lab=VSS
spice_ignore=true}
N 680 -290 730 -290 {lab=VSS
spice_ignore=true}
N 730 -350 730 -290 {lab=VSS
spice_ignore=true}
N 680 -350 730 -350 {lab=VSS
spice_ignore=true}
N 410 -320 410 -290 {lab=VSS
spice_ignore=true}
N 360 -350 410 -350 {lab=VSS
spice_ignore=true}
N 360 -350 360 -290 {lab=VSS
spice_ignore=true}
N 360 -290 410 -290 {lab=VSS
spice_ignore=true}
N 410 -500 410 -380 {lab=i_ref_100u
spice_ignore=true}
N 410 -440 470 -440 {lab=i_ref_100u
spice_ignore=true}
N 470 -440 470 -350 {lab=i_ref_100u
spice_ignore=true}
N 450 -350 500 -350 {lab=i_ref_100u
spice_ignore=true}
N 540 -350 560 -350 {lab=VSS
spice_ignore=true}
N 560 -350 560 -290 {lab=VSS
spice_ignore=true}
N 540 -320 540 -290 {lab=VSS
spice_ignore=true}
N 490 -390 490 -350 {lab=i_ref_100u
spice_ignore=true}
N 490 -400 490 -390 {lab=i_ref_100u
spice_ignore=true}
N 490 -400 630 -400 {lab=i_ref_100u
spice_ignore=true}
N 630 -400 630 -350 {lab=i_ref_100u
spice_ignore=true}
N 630 -350 640 -350 {lab=i_ref_100u
spice_ignore=true}
N 540 -1030 540 -1010 {lab=#net4
spice_ignore=true}
N 580 -1060 620 -1060 {lab=#net4
spice_ignore=true}
N 610 -1060 610 -1020 {lab=#net4
spice_ignore=true}
N 540 -1020 610 -1020 {lab=#net4
spice_ignore=true}
N 540 -1130 540 -1100 {lab=VDD
spice_ignore=true}
N 540 -1100 540 -1090 {lab=VDD
spice_ignore=true}
N 540 -1130 910 -1130 {lab=VDD
spice_ignore=true}
N 490 -1060 540 -1060 {lab=VDD
spice_ignore=true}
N 490 -1130 490 -1060 {lab=VDD
spice_ignore=true}
N 490 -1130 540 -1130 {lab=VDD
spice_ignore=true}
N 960 -1130 960 -1060 {lab=VDD
spice_ignore=true}
N 910 -1130 960 -1130 {lab=VDD
spice_ignore=true}
N 880 -750 910 -750 {lab=Vout}
N 680 -750 820 -750 {lab=#net1}
N 910 -750 910 -720 {lab=Vout}
N 910 -760 910 -750 {lab=Vout}
N 910 -830 910 -820 {lab=#net2}
N 540 -810 540 -770 {lab=#net4
spice_ignore=true}
N 540 -540 540 -380 {lab=#net7
spice_ignore=true}
N 540 -710 540 -640 {lab=#net8
spice_ignore=true}
N 680 -650 680 -580 {lab=V_feedback_gate}
N 680 -400 680 -380 {lab=#net9
spice_ignore=true}
N 680 -580 680 -560 {lab=V_feedback_gate}
N 800 -1040 800 -930 {lab=#net3
spice_ignore=true}
N 540 -1010 540 -900 {lab=#net4
spice_ignore=true}
N 910 -920 910 -890 {lab=VDD}
N 680 -500 680 -470 {lab=VSS}
N 680 -470 740 -470 {lab=VSS}
N 910 -660 910 -610 {lab=#net3}
N 410 -290 680 -290 {lab=#net5
spice_ignore=true}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {ipin.sym} 100 -470 0 0 {name=p1 lab=Vin}
C {opin.sym} 160 -470 0 0 {name=p2 lab=Vout}
C {ipin.sym} 100 -440 0 0 {name=p3 lab=i_ref_100u}
C {iopin.sym} 100 -400 0 1 {name=p4 lab=VDD}
C {iopin.sym} 100 -370 0 1 {name=p5 lab=VSS}
C {symbols/pfet_03v3.sym} 660 -680 0 0 {name=M8
L=0.28u
W=80u
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
C {symbols/nfet_03v3.sym} 890 -580 0 0 {name=M9
L=.28u
W=45u
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
C {capa.sym} 800 -690 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {symbols/pfet_03v3.sym} 890 -1060 0 0 {name=M10
L=1u
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
spice_ignore=true}
C {res.sym} 730 -1060 3 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {symbols/nfet_03v3.sym} 660 -350 0 0 {name=M11
L=1u
W=50u
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
spice_ignore=true}
C {symbols/nfet_03v3.sym} 430 -350 0 1 {name=M12
L=1u
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
spice_ignore=true}
C {symbols/nfet_03v3.sym} 520 -350 0 0 {name=M13
L=1u
W=5u
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
spice_ignore=true}
C {symbols/pfet_03v3.sym} 560 -1060 0 1 {name=M14
L=1u
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
spice_ignore=true}
C {lab_wire.sym} 410 -490 0 0 {name=p13 sig_type=std_logic lab=i_ref_100u
spice_ignore=true}
C {lab_wire.sym} 610 -680 0 0 {name=p14 sig_type=std_logic lab=Vin
}
C {lab_wire.sym} 580 -290 0 1 {name=p15 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 920 -510 0 1 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 720 -1130 0 1 {name=p17 sig_type=std_logic lab=VDD
spice_ignore=true}
C {lab_wire.sym} 910 -740 0 1 {name=p18 sig_type=std_logic lab=Vout
}
C {ammeter.sym} 850 -750 1 1 {name=Vmeas4 savecurrent=true }
C {ammeter.sym} 910 -790 0 0 {name=vmeas5 savecurrent=true }
C {ammeter.sym} 910 -690 0 0 {name=vmeas6 savecurrent=true }
C {ammeter.sym} 540 -740 0 0 {name=v_i_bias_pmos savecurrent=true spice_ignore=true}
C {ammeter.sym} 680 -430 0 0 {name=v_i_bias_nmos savecurrent=true spice_ignore=true}
C {isource.sym} 680 -530 0 0 {name=I0 value=10m}
C {isource.sym} 910 -860 0 0 {name=I1 value=20m}
C {lab_wire.sym} 700 -470 0 1 {name=p6 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 910 -900 0 1 {name=p7 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 720 -680 0 1 {name=p8 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 740 -580 0 1 {name=p9 sig_type=std_logic lab=V_feedback_gate
}
