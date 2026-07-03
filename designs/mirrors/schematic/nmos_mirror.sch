v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 500 -450 {}
N 460 -270 460 -230 {lab=VSS}
N 460 -230 960 -230 {lab=VSS}
N 960 -270 960 -230 {lab=VSS}
N 810 -270 810 -230 {lab=VSS}
N 650 -270 650 -230 {lab=VSS}
N 460 -380 460 -330 {lab=Ilocal}
N 460 -410 460 -380 {lab=Ilocal}
N 460 -380 540 -380 {lab=Ilocal}
N 540 -380 540 -300 {lab=Ilocal}
N 500 -300 540 -300 {lab=Ilocal}
N 440 -300 460 -300 {lab=VSS}
N 440 -300 440 -250 {lab=VSS}
N 830 -300 830 -230 {lab=VSS}
N 810 -300 830 -300 {lab=VSS}
N 440 -250 440 -230 {lab=VSS}
N 440 -230 460 -230 {lab=VSS}
N 960 -300 980 -300 {lab=VSS}
N 980 -300 980 -230 {lab=VSS}
N 960 -230 980 -230 {lab=VSS}
N 900 -300 920 -300 {lab=Ilocal}
N 750 -300 770 -300 {lab=Ilocal}
N 540 -300 610 -300 {lab=Ilocal}
N 650 -380 650 -330 {lab=I1_250u}
N 810 -380 810 -330 {lab=I2_250u}
N 960 -380 960 -330 {lab=I3_250u}
N 980 -230 1010 -230 {lab=VSS}
N 650 -300 670 -300 {lab=VSS}
N 670 -300 670 -230 {lab=VSS}
N 460 -440 460 -410 {lab=Ilocal}
C {title.sym} 170 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {symbols/nfet_03v3.sym} 480 -300 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 630 -300 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 790 -300 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 940 -300 0 0 {name=M4
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
C {lab_wire.sym} 760 -300 0 0 {name=p2 sig_type=std_logic lab=Ilocal}
C {lab_wire.sym} 910 -300 0 0 {name=p3 sig_type=std_logic lab=Ilocal}
C {iopin.sym} 1010 -230 0 0 {name=p4 lab=VSS}
C {iopin.sym} 460 -440 0 0 {name=p5 lab=Ilocal}
C {iopin.sym} 650 -380 0 0 {name=p6 lab=I1_250u}
C {iopin.sym} 810 -380 0 0 {name=p7 lab=I2_250u}
C {iopin.sym} 960 -380 0 0 {name=p8 lab=I3_250u}
