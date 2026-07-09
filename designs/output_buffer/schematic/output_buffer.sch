v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 750 -500 800 -500 {lab=VSS
}
N 750 -580 750 -530 {lab=#net1
}
N 660 -500 710 -500 {lab=Vin
}
N 750 -470 750 -430 {lab=#net2
}
N 1060 -460 1060 -430 {lab=Vout
}
N 750 -600 1020 -600 {lab=#net1
}
N 750 -600 750 -580 {lab=#net1
}
N 1060 -670 1060 -630 {lab=VDD
}
N 750 -640 750 -600 {lab=#net1
}
N 440 -770 580 -770 {lab=i_ref_100u
}
N 400 -830 400 -800 {lab=VDD
}
N 400 -830 620 -830 {lab=VDD
}
N 750 -830 750 -800 {lab=VDD
}
N 400 -740 400 -680 {lab=i_ref_100u
}
N 400 -680 470 -680 {lab=i_ref_100u
}
N 470 -770 470 -680 {lab=i_ref_100u
}
N 400 -680 400 -640 {lab=i_ref_100u
}
N 1060 -250 1060 -220 {lab=VSS
}
N 870 -600 870 -520 {lab=#net1
}
N 870 -410 870 -280 {lab=#net3
}
N 710 -280 720 -280 {lab=#net4
}
N 1060 -280 1140 -280 {lab=VSS
}
N 1140 -280 1140 -220 {lab=VSS
}
N 1060 -220 1140 -220 {lab=VSS
}
N 1060 -600 1130 -600 {lab=VDD
}
N 1130 -650 1130 -600 {lab=VDD
}
N 1060 -650 1130 -650 {lab=VDD
}
N 750 -770 800 -770 {lab=VDD
}
N 800 -830 800 -770 {lab=VDD
}
N 750 -830 800 -830 {lab=VDD
}
N 340 -770 400 -770 {lab=VDD
}
N 340 -830 340 -770 {lab=VDD
}
N 340 -830 400 -830 {lab=VDD
}
N 1060 -570 1060 -540 {lab=#net5
}
N 1060 -480 1060 -460 {lab=Vout
}
N 870 -460 870 -410 {lab=#net3
}
N 1060 -330 1060 -310 {lab=#net6
}
N 1060 -420 1060 -390 {lab=Vout
}
N 1060 -430 1060 -420 {lab=Vout
}
N 620 -830 750 -830 {lab=VDD
}
N 620 -830 620 -800 {lab=VDD
}
N 870 -280 1020 -280 {lab=#net3
}
N 620 -770 660 -770 {lab=VDD
}
N 660 -830 660 -770 {lab=VDD
}
N 620 -740 620 -310 {lab=#net4
}
N 550 -280 620 -280 {lab=VSS
}
N 550 -220 1060 -220 {lab=VSS
}
N 550 -280 550 -220 {lab=VSS
}
N 620 -250 620 -220 {lab=VSS
}
N 660 -280 710 -280 {lab=#net4
}
N 720 -280 730 -280 {lab=#net4
}
N 730 -280 740 -280 {lab=#net4
}
N 700 -340 700 -280 {lab=#net4
}
N 620 -340 700 -340 {lab=#net4
}
N 800 -280 870 -280 {lab=#net3
}
N 710 -770 710 -710 {lab=i_ref_100u
}
N 570 -710 710 -710 {lab=i_ref_100u
}
N 570 -770 570 -710 {lab=i_ref_100u
}
N 750 -740 750 -700 {lab=#net1
}
N 1010 -430 1060 -430 {lab=Vout
}
N 750 -430 950 -430 {lab=#net2
}
N 750 -700 750 -640 {lab=#net1
}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {symbols/nfet_03v3.sym} 730 -500 0 0 {name=M1
L=0.28u
W=80u
nf=8
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
C {ipin.sym} 100 -470 0 0 {name=p1 lab=Vin}
C {opin.sym} 160 -470 0 0 {name=p2 lab=Vout}
C {ipin.sym} 100 -440 0 0 {name=p3 lab=i_ref_100u}
C {iopin.sym} 100 -400 0 1 {name=p4 lab=VDD}
C {iopin.sym} 100 -370 0 1 {name=p5 lab=VSS}
C {lab_wire.sym} 680 -500 0 0 {name=p6 sig_type=std_logic lab=Vin
}
C {lab_wire.sym} 790 -500 0 1 {name=p9 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 1060 -430 0 1 {name=p8 sig_type=std_logic lab=Vout
}
C {symbols/pfet_03v3.sym} 1040 -600 0 0 {name=M2
L=0.28u
W=25u
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
C {lab_wire.sym} 1080 -650 0 1 {name=p7 sig_type=std_logic lab=VDD
}
C {symbols/pfet_03v3.sym} 730 -770 0 0 {name=M3
L=1u
W=20u
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
C {symbols/pfet_03v3.sym} 420 -770 0 1 {name=M4
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
C {lab_wire.sym} 400 -640 0 1 {name=p10 sig_type=std_logic lab=i_ref_100u
}
C {symbols/nfet_03v3.sym} 1040 -280 0 0 {name=M5
L=1u
W=40u
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
C {lab_wire.sym} 1060 -220 0 1 {name=p11 sig_type=std_logic lab=VSS
}
C {res.sym} 770 -280 3 0 {name=R1
value=10G
footprint=1206
device=resistor
m=1
}
C {lab_wire.sym} 700 -830 0 1 {name=p12 sig_type=std_logic lab=VDD
}
C {ammeter.sym} 1060 -510 0 0 {name=vmeas2 savecurrent=true }
C {ammeter.sym} 1060 -360 0 0 {name=Vmeas1 savecurrent=true }
C {capa.sym} 870 -490 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"
}
C {symbols/pfet_03v3.sym} 600 -770 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 640 -280 0 1 {name=M7
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
C {ammeter.sym} 980 -430 3 0 {name=Vmeas3 savecurrent=true }
