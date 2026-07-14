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
N 1060 -180 1060 -150 {lab=VSS
}
N 920 -600 920 -520 {lab=#net1
}
N 710 -210 720 -210 {lab=#net3
}
N 1060 -210 1140 -210 {lab=VSS
}
N 1140 -210 1140 -150 {lab=VSS
}
N 1060 -150 1140 -150 {lab=VSS
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
N 1060 -570 1060 -540 {lab=#net4
}
N 1060 -480 1060 -460 {lab=Vout
}
N 920 -460 920 -410 {lab=#net5
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
N 870 -210 1020 -210 {lab=#net5
}
N 620 -770 660 -770 {lab=VDD
}
N 660 -830 660 -770 {lab=VDD
}
N 620 -740 620 -310 {lab=#net3
}
N 550 -210 620 -210 {lab=VSS
}
N 550 -150 1060 -150 {lab=VSS
}
N 550 -210 550 -150 {lab=VSS
}
N 620 -180 620 -150 {lab=VSS
}
N 660 -210 710 -210 {lab=#net3
}
N 720 -210 730 -210 {lab=#net3
}
N 730 -210 740 -210 {lab=#net3
}
N 700 -270 700 -210 {lab=#net3
}
N 620 -270 700 -270 {lab=#net3
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
N 620 -310 620 -240 {lab=#net3}
N 1060 -310 1060 -240 {lab=#net6}
N 1230 -280 1230 -240 {lab=#net6}
N 1060 -280 1230 -280 {lab=#net6}
N 1230 -180 1230 -150 {lab=VSS}
N 1140 -150 1230 -150 {lab=VSS}
N 1230 -210 1280 -210 {lab=VSS}
N 1280 -210 1280 -150 {lab=VSS}
N 1230 -150 1280 -150 {lab=VSS}
N 1170 -210 1190 -210 {lab=#net5}
N 1170 -250 1170 -210 {lab=#net5}
N 990 -250 1170 -250 {lab=#net5}
N 990 -250 990 -210 {lab=#net5}
N 770 -270 770 -250 {lab=#net3}
N 700 -270 770 -270 {lab=#net3}
N 770 -210 770 -150 {lab=VSS}
N 920 -410 920 -210 {lab=#net5}
N 800 -210 810 -210 {lab=#net7}
N 800 -270 800 -210 {lab=#net7}
N 800 -270 840 -270 {lab=#net7}
N 840 -270 840 -250 {lab=#net7}
N 840 -210 840 -150 {lab=VSS}
N 730 -430 750 -430 {lab=#net2}
N 660 -430 670 -430 {lab=Vin}
N 660 -500 660 -430 {lab=Vin}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {symbols/nfet_03v3.sym} 730 -500 0 0 {name=M1
L=0.28u
W=45u
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
W=40u
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
L=0.5u
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
C {symbols/pfet_03v3.sym} 420 -770 0 1 {name=M4
L=.5u
W=4u
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
C {symbols/nfet_03v3.sym} 1040 -210 0 0 {name=M5
L=.5u
W=20u
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
C {lab_wire.sym} 1060 -150 0 1 {name=p11 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 700 -830 0 1 {name=p12 sig_type=std_logic lab=VDD
}
C {ammeter.sym} 1060 -510 0 0 {name=vmeas2 savecurrent=true }
C {ammeter.sym} 1060 -360 0 0 {name=Vmeas1 savecurrent=true }
C {capa.sym} 920 -490 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {symbols/pfet_03v3.sym} 600 -770 0 0 {name=M6
L=0.5u
W=16u
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
C {symbols/nfet_03v3.sym} 640 -210 0 1 {name=M7
L=0.5u
W=4u
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
C {symbols/nfet_03v3.sym} 1210 -210 0 0 {name=M8
L=.5u
W=80u
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
C {symbols/nfet_03v3.sym} 770 -230 1 0 {name=M9
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 840 -230 1 0 {name=M10
L=0.28u
W=0.22u
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
C {capa.sym} 700 -430 1 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"
}
