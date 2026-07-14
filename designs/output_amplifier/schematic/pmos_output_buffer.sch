v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 350 -750 350 -700 {lab=#net1}
N 350 -750 600 -750 {lab=#net1}
N 600 -750 600 -700 {lab=#net1}
N 350 -640 350 -570 {lab=Vo_p}
N 600 -640 600 -570 {lab=Vo_m}
N 260 -670 310 -670 {lab=Vi_p}
N 640 -670 690 -670 {lab=Vi_m}
N 350 -510 350 -430 {lab=VSS}
N 350 -430 600 -430 {lab=VSS}
N 600 -510 600 -430 {lab=VSS}
N 350 -670 600 -670 {lab=VDD}
N 230 -860 230 -790 {lab=i_tail_100u}
N 230 -820 280 -820 {lab=i_tail_100u}
N 280 -890 280 -820 {lab=i_tail_100u}
N 270 -890 280 -890 {lab=i_tail_100u}
N 280 -890 440 -890 {lab=i_tail_100u}
N 230 -950 230 -920 {lab=VDD}
N 230 -950 480 -950 {lab=VDD}
N 480 -950 480 -920 {lab=VDD}
N 180 -890 230 -890 {lab=VDD}
N 180 -950 180 -890 {lab=VDD}
N 180 -950 230 -950 {lab=VDD}
N 480 -950 520 -950 {lab=VDD}
N 520 -950 520 -890 {lab=VDD}
N 480 -890 520 -890 {lab=VDD}
N 480 -860 480 -830 {lab=#net2}
N 480 -770 480 -750 {lab=#net1}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {symbols/pfet_03v3.sym} 330 -670 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 620 -670 0 1 {name=M2
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
C {res.sym} 600 -540 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {res.sym} 350 -540 0 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 680 -670 0 0 {name=p1 sig_type=std_logic lab=Vi_m}
C {lab_wire.sym} 290 -670 0 0 {name=p2 sig_type=std_logic lab=Vi_p}
C {lab_wire.sym} 230 -800 0 0 {name=p3 sig_type=std_logic lab=i_tail_100u}
C {lab_wire.sym} 350 -600 0 0 {name=p4 sig_type=std_logic lab=Vo_p}
C {lab_wire.sym} 600 -600 0 0 {name=p5 sig_type=std_logic lab=Vo_m}
C {lab_wire.sym} 480 -670 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 -430 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {iopin.sym} 150 -470 0 0 {name=p8 lab=VDD}
C {iopin.sym} 150 -430 0 0 {name=p9 lab=VSS}
C {ipin.sym} 70 -470 0 0 {name=p10 lab=Vi_p}
C {ipin.sym} 70 -430 0 0 {name=p11 lab=Vi_m}
C {opin.sym} 50 -390 0 0 {name=p12 lab=Vo_p}
C {opin.sym} 50 -350 0 0 {name=p13 lab=Vo_m}
C {ipin.sym} 70 -510 0 0 {name=p14 lab=i_tail_100u}
C {symbols/pfet_03v3.sym} 460 -890 0 0 {name=M3
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 250 -890 0 1 {name=M4
L=0.5u
W=4u
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
C {lab_wire.sym} 340 -950 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {ammeter.sym} 480 -800 0 0 {name=V_i_bias_800u savecurrent=true spice_ignore=0}
