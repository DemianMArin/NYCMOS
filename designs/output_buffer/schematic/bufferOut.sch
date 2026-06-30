v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 100 -400 {}
N 300 -690 300 -600 {lab=Voutp}
N 300 -540 300 -510 {lab=Itail}
N 300 -510 470 -510 {lab=Itail}
N 470 -540 470 -510 {lab=Itail}
N 400 -510 400 -460 {lab=Itail}
N 470 -630 470 -600 {lab=Voutn}
N 300 -570 330 -570 {lab=VSS}
N 430 -570 470 -570 {lab=VSS}
N 300 -800 300 -750 {lab=VDD}
N 220 -570 260 -570 {lab=Vinp}
N 510 -570 550 -570 {lab=Vinn}
N 300 -840 300 -800 {lab=VDD}
N 190 -570 220 -570 {lab=Vinp}
N 400 -460 400 -430 {lab=Itail}
N 470 -660 470 -630 {lab=Voutn}
N 470 -680 470 -660 {lab=Voutn}
N 470 -690 470 -680 {lab=Voutn}
N 470 -840 470 -790 {lab=VDD}
N 470 -790 470 -780 {lab=VDD}
N 470 -780 470 -770 {lab=VDD}
N 470 -770 470 -750 {lab=VDD}
N 550 -570 560 -570 {lab=Vinn}
N 560 -570 570 -570 {lab=Vinn}
N 320 -720 450 -720 {lab=VSS}
C {title.sym} 160 -40 0 0 {name=l1 author="Demian"}
C {symbols/nfet_03v3.sym} 280 -570 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 490 -570 0 1 {name=M2
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
C {iopin.sym} 750 -760 0 0 {name=p8 lab=VDD}
C {iopin.sym} 750 -700 0 0 {name=p2 lab=Itail}
C {iopin.sym} 750 -730 0 0 {name=p10 lab=VSS}
C {lab_wire.sym} 440 -570 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -570 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -810 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 400 -440 0 0 {name=p23 sig_type=std_logic lab=Itail}
C {symbols/ppolyf_u_1k.sym} 300 -720 0 1 {name=R1
W=1e-6
L=1.8e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 470 -720 0 0 {name=R2
W=1e-6
L=1.8e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 470 -810 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {ipin.sym} 190 -570 0 0 {name=p1 lab=Vinp}
C {ipin.sym} 570 -570 2 0 {name=p3 lab=Vinn}
C {lab_wire.sym} 390 -720 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {opin.sym} 760 -660 0 0 {name=p7 lab=Voutp}
C {opin.sym} 760 -620 0 0 {name=p9 lab=Voutn
}
C {lab_wire.sym} 300 -640 0 0 {name=p11 sig_type=std_logic lab=Voutp
}
C {lab_wire.sym} 470 -640 0 0 {name=p12 sig_type=std_logic lab=Voutn}
