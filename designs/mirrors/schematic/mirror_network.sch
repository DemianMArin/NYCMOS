v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -730 270 -600 {lab=#net1}
N 270 -680 670 -680 {lab=#net1}
N 670 -680 670 -590 {lab=#net1}
N 670 -680 1070 -680 {lab=#net1}
N 1070 -680 1080 -680 {lab=#net1}
N 1080 -680 1080 -590 {lab=#net1}
N 1460 -680 1470 -680 {lab=#net1}
N 1470 -680 1470 -590 {lab=#net1}
N 270 -600 270 -510 {lab=#net1}
N 670 -590 670 -510 {lab=#net1}
N 1080 -590 1080 -520 {lab=#net1}
N 1470 -590 1470 -530 {lab=#net1}
N 1080 -680 1460 -680 {lab=#net1}
N 540 -330 540 -270 {lab=VSS}
N 540 -270 540 -260 {lab=VSS}
N 210 -260 540 -260 {lab=VSS}
N 540 -260 1740 -260 {lab=VSS}
N 1740 -350 1740 -260 {lab=VSS}
N 1350 -340 1350 -260 {lab=VSS}
N 940 -330 940 -260 {lab=VSS}
N 60 -870 110 -870 {lab=VDD}
N 160 -730 160 -640 {lab=Iglobal}
N 350 -550 350 -510 {lab=mix1_I1}
N 410 -550 410 -510 {lab=mix1_I2}
N 470 -550 470 -510 {lab=mix1_I3}
N 1160 -560 1160 -520 {lab=mix3_I1}
N 1220 -560 1220 -520 {lab=mix3_I2}
N 1280 -560 1280 -520 {lab=mix3_I3}
N 1540 -570 1540 -530 {lab=mix4_I1}
N 1540 -530 1550 -530 {lab=mix4_I1}
N 1610 -570 1610 -530 {lab=mix4_I2}
N 1670 -570 1670 -530 {lab=mix4_I3}
N 750 -550 750 -510 {lab=mix2_I1}
N 810 -550 810 -510 {lab=mix2_I2}
N 870 -550 880 -550 {lab=mix2_I3}
N 870 -550 870 -510 {lab=mix2_I3}
N 350 -600 350 -550 {lab=mix1_I1}
N 410 -570 410 -550 {lab=mix1_I2}
N 750 -590 750 -550 {lab=mix2_I1}
N 810 -570 810 -550 {lab=mix2_I2}
N 1160 -600 1160 -560 {lab=mix3_I1}
N 1220 -580 1220 -560 {lab=mix3_I2}
N 1540 -600 1540 -570 {lab=mix4_I1}
N 1610 -580 1610 -570 {lab=mix4_I2}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/pmos_mirror.sym} -430 -470 0 0 {name=x1}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/nmos_mirror.sym} -20 -200 0 0 {name=x2}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/nmos_mirror.sym} 380 -200 0 0 {name=x3}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/nmos_mirror.sym} 790 -210 0 0 {name=x4}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/nmos_mirror.sym} 1180 -220 0 0 {name=x5}
C {title.sym} 190 -60 0 0 {name=l1 author="Charbel El Haddad"}
C {iopin.sym} 210 -260 2 0 {name=p1 lab=VSS}
C {iopin.sym} 60 -870 2 0 {name=p2 lab=VDD}
C {iopin.sym} 160 -640 0 0 {name=p3 lab=Iglobal}
C {iopin.sym} 350 -600 0 0 {name=p4 lab=mix1_I1}
C {iopin.sym} 410 -570 0 0 {name=p5 lab=mix1_I2}
C {iopin.sym} 470 -550 0 0 {name=p6 lab=mix1_I3}
C {iopin.sym} 750 -590 0 0 {name=p7 lab=mix2_I1}
C {iopin.sym} 810 -570 0 0 {name=p8 lab=mix2_I2}
C {iopin.sym} 880 -550 0 0 {name=p9 lab=mix2_I3}
C {iopin.sym} 1160 -600 0 0 {name=p10 lab=mix3_I1}
C {iopin.sym} 1220 -580 0 0 {name=p11 lab=mix3_I2}
C {iopin.sym} 1280 -560 0 0 {name=p12 lab=mix3_I3}
C {iopin.sym} 1540 -600 0 0 {name=p13 lab=mix4_I1}
C {iopin.sym} 1610 -580 0 0 {name=p14 lab=mix4_I2}
C {iopin.sym} 1670 -570 0 0 {name=p15 lab=mix4_I3}
