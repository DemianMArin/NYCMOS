v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -400 630 -400 {lab=Vin}
N 670 -400 740 -400 {lab=#net1}
N 670 -300 860 -300 {lab=#net2}
N 900 -270 900 -230 {lab=VSS}
N 900 -300 960 -300 {lab=VSS}
N 960 -300 960 -230 {lab=VSS}
N 900 -230 960 -230 {lab=VSS}
N 670 -470 670 -430 {lab=#net1}
N 790 -380 790 -300 {lab=#net2}
N 790 -560 790 -440 {lab=#net3}
N 790 -580 860 -580 {lab=#net3}
N 790 -580 790 -560 {lab=#net3}
N 900 -580 950 -580 {lab=VDD}
N 900 -650 900 -610 {lab=VDD}
N 750 -580 790 -580 {lab=#net3}
N 610 -580 690 -580 {lab=#net4}
N 670 -140 670 -110 {lab=VSS}
N 670 -110 720 -110 {lab=VSS}
N 720 -170 720 -110 {lab=VSS}
N 670 -170 720 -170 {lab=VSS}
N 400 -140 400 -110 {lab=VSS}
N 400 -110 670 -110 {lab=VSS}
N 350 -170 400 -170 {lab=VSS}
N 350 -170 350 -110 {lab=VSS}
N 350 -110 400 -110 {lab=VSS}
N 400 -320 400 -200 {lab=i_ref_100u}
N 400 -260 460 -260 {lab=i_ref_100u}
N 460 -260 460 -170 {lab=i_ref_100u}
N 440 -170 490 -170 {lab=i_ref_100u}
N 530 -170 550 -170 {lab=VSS}
N 550 -170 550 -110 {lab=VSS}
N 530 -140 530 -110 {lab=VSS}
N 480 -210 480 -170 {lab=i_ref_100u}
N 480 -220 480 -210 {lab=i_ref_100u}
N 480 -220 620 -220 {lab=i_ref_100u}
N 620 -220 620 -170 {lab=i_ref_100u}
N 620 -170 630 -170 {lab=i_ref_100u}
N 530 -550 530 -530 {lab=#net4}
N 570 -580 610 -580 {lab=#net4}
N 600 -580 600 -540 {lab=#net4}
N 530 -540 600 -540 {lab=#net4}
N 530 -650 530 -620 {lab=VDD}
N 530 -620 530 -610 {lab=VDD}
N 530 -650 900 -650 {lab=VDD}
N 480 -580 530 -580 {lab=VDD}
N 480 -650 480 -580 {lab=VDD}
N 480 -650 530 -650 {lab=VDD}
N 950 -650 950 -580 {lab=VDD}
N 900 -650 950 -650 {lab=VDD}
N 870 -470 900 -470 {lab=Vout}
N 670 -470 810 -470 {lab=#net1}
N 900 -380 900 -330 {lab=#net5}
N 900 -470 900 -440 {lab=Vout}
N 900 -480 900 -470 {lab=Vout}
N 900 -550 900 -540 {lab=#net6}
N 740 -470 740 -400 {lab=#net1}
N 530 -530 530 -490 {lab=#net4}
N 530 -360 530 -200 {lab=#net7}
N 530 -430 530 -360 {lab=#net7}
N 670 -370 670 -300 {lab=#net2}
N 670 -220 670 -200 {lab=#net8}
N 670 -300 670 -280 {lab=#net2}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {ipin.sym} 100 -470 0 0 {name=p1 lab=Vin}
C {opin.sym} 160 -470 0 0 {name=p2 lab=Vout}
C {ipin.sym} 100 -440 0 0 {name=p3 lab=i_ref_100u}
C {iopin.sym} 100 -400 0 1 {name=p4 lab=VDD}
C {iopin.sym} 100 -370 0 1 {name=p5 lab=VSS}
C {symbols/pfet_03v3.sym} 650 -400 0 0 {name=M8
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
C {symbols/nfet_03v3.sym} 880 -300 0 0 {name=M9
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
C {capa.sym} 790 -410 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"
}
C {symbols/pfet_03v3.sym} 880 -580 0 0 {name=M10
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
}
C {res.sym} 720 -580 3 0 {name=R2
value=10G
footprint=1206
device=resistor
m=1
}
C {symbols/nfet_03v3.sym} 650 -170 0 0 {name=M11
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
}
C {symbols/nfet_03v3.sym} 420 -170 0 1 {name=M12
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
}
C {symbols/nfet_03v3.sym} 510 -170 0 0 {name=M13
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
}
C {symbols/pfet_03v3.sym} 550 -580 0 1 {name=M14
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
}
C {lab_wire.sym} 400 -310 0 0 {name=p13 sig_type=std_logic lab=i_ref_100u
}
C {lab_wire.sym} 600 -400 0 0 {name=p14 sig_type=std_logic lab=Vin
}
C {lab_wire.sym} 570 -110 0 1 {name=p15 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 910 -230 0 1 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 710 -650 0 1 {name=p17 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 900 -460 0 1 {name=p18 sig_type=std_logic lab=Vout
}
C {ammeter.sym} 840 -470 1 1 {name=Vmeas4 savecurrent=true }
C {ammeter.sym} 900 -510 0 0 {name=vmeas5 savecurrent=true }
C {ammeter.sym} 900 -410 0 0 {name=vmeas6 savecurrent=true }
C {ammeter.sym} 530 -460 0 0 {name=v_i_bias_pmos savecurrent=true }
C {ammeter.sym} 670 -250 0 0 {name=v_i_bias_nmos savecurrent=true }
