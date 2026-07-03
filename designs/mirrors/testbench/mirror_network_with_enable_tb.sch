v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 320 -430 320 -370 {lab=0}
N 320 -400 430 -400 {lab=0}
N 320 -510 430 -510 {lab=VDD}
N 320 -510 320 -490 {lab=VDD}
N 540 -240 540 -210 {lab=0}
N 540 -330 540 -300 {lab=#net1}
N 380 -550 380 -510 {lab=VDD}
N 670 -830 1010 -830 {lab=VDD}
N 1010 -830 1010 -820 {lab=VDD}
N 900 -830 900 -820 {lab=VDD}
N 820 -850 820 -830 {lab=VDD}
N 790 -830 790 -820 {lab=VDD}
N 790 -770 790 -730 {lab=#net2}
N 670 -770 670 -730 {lab=#net3}
N 900 -760 900 -730 {lab=#net4}
N 1010 -760 1010 -730 {lab=#net5}
N 670 -670 670 -580 {lab=#net6}
N 790 -670 790 -580 {lab=#net7}
N 900 -670 900 -580 {lab=#net8}
N 1010 -670 1010 -580 {lab=#net9}
N 1290 -880 1290 -810 {lab=VDD}
N 1290 -880 1560 -880 {lab=VDD}
N 1560 -880 1850 -880 {lab=VDD}
N 1850 -880 1850 -820 {lab=VDD}
N 1560 -880 1560 -810 {lab=VDD}
N 1290 -660 1290 -620 {lab=0}
N 1290 -620 1560 -620 {lab=0}
N 1560 -660 1560 -620 {lab=0}
N 1560 -620 1850 -620 {lab=0}
N 1850 -670 1850 -620 {lab=0}
N 1460 -620 1460 -590 {lab=0}
N 1130 -520 1170 -520 {lab=EN0}
N 1130 -500 1170 -500 {lab=EN1}
N 1130 -480 1170 -480 {lab=EN2}
N 1130 -420 1170 -420 {lab=EN0_B}
N 1130 -400 1170 -400 {lab=EN1_B}
N 1130 -380 1170 -380 {lab=EN2_B}
N 1150 -740 1190 -740 {lab=EN0}
N 1380 -740 1410 -740 {lab=EN0_B}
N 1440 -740 1460 -740 {lab=EN1}
N 1650 -740 1680 -740 {lab=EN1_B}
N 1710 -750 1750 -750 {lab=EN2}
N 1940 -750 1970 -750 {lab=EN2_B}
N 1370 -510 1370 -470 {lab=EN0}
N 1480 -510 1480 -470 {lab=EN1}
N 1580 -510 1580 -470 {lab=EN2}
N 1370 -410 1370 -370 {lab=0}
N 1370 -370 1480 -370 {lab=0}
N 1480 -370 1580 -370 {lab=0}
N 1580 -410 1580 -370 {lab=0}
N 1480 -410 1480 -370 {lab=0}
N 1480 -370 1480 -360 {lab=0}
C {title.sym} 200 -60 0 0 {name=l1 author="Charbel El Haddad"}
C {devices/code_shown.sym} 290 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 250 -920 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10n 80u
plot i(vmeas)
plot i(vmeas1)
plot i(vmeas2)
plot i(vmeas3)

write mirror_network_with_enable_tb.raw
.endc
"}
C {vsource.sym} 320 -460 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 320 -370 0 0 {name=l2 lab=0}
C {isource.sym} 540 -270 0 0 {name=I0 value=100u}
C {gnd.sym} 540 -210 0 0 {name=l3 lab=0}
C {res.sym} 670 -700 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 790 -700 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 900 -700 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1010 -700 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 670 -800 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 790 -790 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 900 -790 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1010 -790 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {vdd.sym} 380 -550 0 0 {name=l4 lab=VDD}
C {vdd.sym} 820 -850 0 0 {name=l5 lab=VDD}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1560 -750 0 0 {name=x2}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1290 -750 0 0 {name=x3}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1850 -760 0 0 {name=x4}
C {vdd.sym} 1560 -880 0 0 {name=l6 lab=VDD}
C {gnd.sym} 1460 -590 0 0 {name=l7 lab=0}
C {lab_wire.sym} 1150 -520 0 0 {name=p1 sig_type=std_logic lab=EN0}
C {lab_wire.sym} 1170 -500 0 0 {name=p2 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 1170 -480 0 0 {name=p3 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 1160 -420 0 0 {name=p4 sig_type=std_logic lab=EN0_B}
C {lab_wire.sym} 1160 -400 0 0 {name=p5 sig_type=std_logic lab=EN1_B}
C {lab_wire.sym} 1160 -380 0 0 {name=p6 sig_type=std_logic lab=EN2_B}
C {lab_wire.sym} 1170 -740 0 0 {name=p7 sig_type=std_logic lab=EN0}
C {lab_wire.sym} 1400 -740 0 0 {name=p8 sig_type=std_logic lab=EN0_B}
C {lab_wire.sym} 1450 -740 0 0 {name=p9 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 1670 -740 0 0 {name=p10 sig_type=std_logic lab=EN1_B}
C {lab_wire.sym} 1730 -750 0 0 {name=p11 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 1960 -750 0 0 {name=p12 sig_type=std_logic lab=EN2_B}
C {vsource.sym} 1370 -440 0 0 {name=V2 value="pulse(0 3.3 0 500p 500p 10u 20u)" savecurrent=false}
C {vsource.sym} 1480 -440 0 0 {name=V3 value="pulse(0 3.3 20u 500p 500p 10u 20u)" savecurrent=false}
C {vsource.sym} 1580 -440 0 0 {name=V4 value="pulse(0 3.3 40u 500p 500p 10u 20u)" savecurrent=false}
C {lab_wire.sym} 1370 -500 0 0 {name=p13 sig_type=std_logic lab=EN0}
C {lab_wire.sym} 1480 -490 0 0 {name=p14 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 1580 -490 0 0 {name=p15 sig_type=std_logic lab=EN2}
C {gnd.sym} 1480 -360 0 0 {name=l8 lab=0}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/mirror_network_with_enable.sym} 50 -350 0 0 {name=x1}
