v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -440 380 -440 {lab=C0}
N 350 -420 380 -420 {lab=C1}
N 370 -1110 400 -1110 {lab=C1}
N 340 -1130 400 -1130 {lab=C0}
N 340 -1110 370 -1110 {lab=C1}
N 610 -430 660 -430 {lab=E2_B}
N 850 -430 870 -430 {lab=E2}
N 590 -1120 650 -1120 {lab=E0_B}
N 840 -1120 870 -1120 {lab=E0}
N 490 -540 490 -500 {lab=VDD}
N 490 -350 490 -320 {lab=VSS}
N 500 -1210 500 -1190 {lab=VDD}
N 500 -1050 500 -1020 {lab=VSS}
N 500 -1210 750 -1210 {lab=VDD}
N 750 -1210 750 -1190 {lab=VDD}
N 500 -1020 750 -1020 {lab=VSS}
N 750 -1040 750 -1020 {lab=VSS}
N 490 -340 760 -340 {lab=VSS}
N 760 -350 760 -340 {lab=VSS}
N 490 -530 760 -530 {lab=VDD}
N 760 -530 760 -500 {lab=VDD}
N 300 -795 420 -795 {lab=C1}
N 745 -900 745 -870 {lab=VDD}
N 520 -900 520 -865 {lab=VDD}
N 520 -710 745 -710 {lab=#net1}
N 745 -715 745 -710 {lab=#net1}
N 520 -715 520 -710 {lab=#net1}
N 610 -795 640 -795 {lab=E1_B}
N 835 -795 865 -795 {lab=E1}
N 745 -870 745 -865 {lab=VDD}
N 640 -795 645 -795 {lab=E1_B}
N 640 -795 640 -670 {lab=E1_B}
N 640 -670 870 -670 {lab=E1_B}
N 520 -900 740 -900 {lab=VDD}
N 740 -900 750 -900 {lab=VDD}
N 620 -1120 620 -990 {lab=E0_B}
N 620 -990 620 -980 {lab=E0_B}
N 620 -980 860 -980 {lab=E0_B}
N 640 -430 640 -300 {lab=E2_B}
N 640 -300 640 -290 {lab=E2_B}
N 640 -290 870 -290 {lab=E2_B}
C {title.sym} 170 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {/foss/designs/NYCMOS/designs/digital/schematic/nand.sym} 490 -400 0 0 {name=x1}
C {/foss/designs/NYCMOS/designs/digital/schematic/nor.sym} 500 -1120 0 0 {name=x2}
C {ipin.sym} 300 -440 0 0 {name=p1 lab=C0}
C {ipin.sym} 350 -420 0 0 {name=p2 lab=C1}
C {lab_wire.sym} 360 -1130 0 0 {name=p3 sig_type=std_logic lab=C0}
C {lab_wire.sym} 350 -1110 0 0 {name=p4 sig_type=std_logic lab=C1}
C {opin.sym} 870 -430 0 0 {name=p5 lab=E2}
C {opin.sym} 870 -1120 0 0 {name=p6 lab=E0}
C {/foss/designs/NYCMOS/designs/digital/schematic/inv.sym} 760 -440 0 0 {name=x3}
C {/foss/designs/NYCMOS/designs/digital/schematic/inv.sym} 750 -1130 0 0 {name=x4}
C {iopin.sym} 490 -540 0 0 {name=p7 lab=VDD}
C {iopin.sym} 490 -320 0 0 {name=p8 lab=VSS}
C {lab_wire.sym} 500 -1030 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 500 -1200 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 320 -795 0 0 {name=p12 sig_type=std_logic lab=C1}
C {/foss/designs/NYCMOS/designs/digital/schematic/inv.sym} 520 -805 0 0 {name=x5}
C {/foss/designs/NYCMOS/designs/digital/schematic/inv.sym} 745 -805 0 0 {name=x6}
C {opin.sym} 865 -795 0 0 {name=p11 lab=E1}
C {opin.sym} 870 -290 0 0 {name=p13 lab=E2_B}
C {opin.sym} 870 -670 0 0 {name=p14 lab=E1_B}
C {opin.sym} 860 -980 0 0 {name=p15 lab=E0_B}
C {lab_wire.sym} 570 -900 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 580 -710 0 0 {name=p17 sig_type=std_logic lab=VSS}
