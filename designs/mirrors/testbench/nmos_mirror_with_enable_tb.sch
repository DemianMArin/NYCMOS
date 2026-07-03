v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 -670 500 -640 {lab=VDD}
N 500 -670 600 -670 {lab=VDD}
N 500 -580 500 -480 {lab=0}
N 500 -500 600 -500 {lab=0}
N 740 -760 740 -720 {lab=EN1}
N 860 -780 860 -720 {lab=EN2}
N 980 -770 980 -720 {lab=EN3}
N 740 -450 740 -390 {lab=EN1_B}
N 860 -450 860 -400 {lab=EN2_B}
N 980 -450 980 -400 {lab=EN3_B}
N 1190 -780 1240 -780 {lab=EN1}
N 1430 -780 1470 -780 {lab=EN1_B}
N 1190 -520 1240 -520 {lab=EN2}
N 1430 -520 1470 -520 {lab=EN2_B}
N 1200 -290 1240 -290 {lab=EN3}
N 1430 -290 1470 -290 {lab=EN3_B}
N 930 -1080 930 -1070 {lab=VDD}
N 1050 -840 1050 -720 {lab=#net1}
N 930 -830 930 -720 {lab=#net1}
N 930 -1070 930 -1010 {lab=VDD}
N 810 -840 810 -720 {lab=#net1}
N 200 -700 200 -640 {lab=EN1}
N 280 -700 280 -640 {lab=EN2}
N 370 -700 370 -640 {lab=EN3}
N 200 -580 200 -500 {lab=0}
N 200 -500 500 -500 {lab=0}
N 280 -580 280 -500 {lab=0}
N 370 -580 370 -500 {lab=0}
N 810 -840 930 -840 {lab=#net1}
N 930 -840 1050 -840 {lab=#net1}
N 660 -870 660 -840 {lab=VDD}
N 660 -780 660 -720 {lab=#net2}
N 930 -1010 930 -1000 {lab=VDD}
N 930 -940 930 -930 {lab=#net3}
N 930 -870 930 -840 {lab=#net1}
N 930 -840 930 -830 {lab=#net1}
N 600 -670 600 -650 {lab=VDD}
N 600 -520 600 -500 {lab=0}
C {title.sym} 170 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/nmos_mirror_with_enable.sym} 360 -540 0 0 {name=x1}
C {vsource.sym} 500 -610 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 500 -480 0 0 {name=l2 lab=0}
C {lab_wire.sym} 740 -750 0 0 {name=p1 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 740 -420 0 0 {name=p2 sig_type=std_logic lab=EN1_B}
C {lab_wire.sym} 860 -760 0 0 {name=p3 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 980 -750 0 0 {name=p4 sig_type=std_logic lab=EN3}
C {lab_wire.sym} 860 -420 0 0 {name=p5 sig_type=std_logic lab=EN2_B}
C {lab_wire.sym} 980 -420 0 0 {name=p6 sig_type=std_logic lab=EN3_B}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1340 -790 0 0 {name=x2}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1340 -530 0 0 {name=x3}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1340 -300 0 0 {name=x4}
C {vdd.sym} 500 -670 0 0 {name=l3 lab=VDD}
C {vdd.sym} 1340 -850 0 0 {name=l4 lab=VDD}
C {vdd.sym} 1340 -590 0 0 {name=l5 lab=VDD}
C {vdd.sym} 1340 -360 0 0 {name=l6 lab=VDD}
C {gnd.sym} 1340 -700 0 0 {name=l7 lab=0}
C {gnd.sym} 1340 -440 0 0 {name=l8 lab=0}
C {gnd.sym} 1340 -210 0 0 {name=l9 lab=0}
C {lab_wire.sym} 1210 -780 0 0 {name=p7 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 1450 -780 0 0 {name=p8 sig_type=std_logic lab=EN1_B}
C {lab_wire.sym} 1210 -520 0 0 {name=p9 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 1460 -520 0 0 {name=p10 sig_type=std_logic lab=EN2_B}
C {lab_wire.sym} 1220 -290 0 0 {name=p11 sig_type=std_logic lab=EN3}
C {lab_wire.sym} 1460 -290 0 0 {name=p12 sig_type=std_logic lab=EN3_B}
C {ammeter.sym} 930 -900 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {vdd.sym} 930 -1080 0 0 {name=l10 lab=VDD}
C {devices/code_shown.sym} 110 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1520 -990 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all
tran 10n 50u
plot v(en1) v(en2) v(en3)
plot i(vmeas1)
write nmos_mirror_with_enable_tb.raw
.endc
"}
C {vsource.sym} 370 -610 0 0 {name=V2 value="pulse(0 3.3 0 500p 500p 15u 30u)" savecurrent=false}
C {vsource.sym} 280 -610 0 0 {name=V3 value="pulse(0 3.3 0 500p 500p 10u 20u)" savecurrent=false}
C {vsource.sym} 200 -610 0 0 {name=V4 value="pulse(0 3.3 0 500p 500p 20u 40u)" savecurrent=false}
C {lab_wire.sym} 200 -680 0 0 {name=p13 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 280 -680 0 0 {name=p14 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 370 -680 0 0 {name=p15 sig_type=std_logic lab=EN3}
C {isource.sym} 660 -810 0 0 {name=I0 value=100u}
C {vdd.sym} 660 -870 0 0 {name=l11 lab=VDD}
C {res.sym} 930 -970 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
