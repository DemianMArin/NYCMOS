v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 -670 500 -640 {lab=VDD}
N 500 -580 500 -480 {lab=0}
N 500 -500 600 -500 {lab=0}
N 840 -1010 840 -1000 {lab=VDD}
N 840 -1000 840 -940 {lab=VDD}
N 200 -700 200 -640 {lab=EN1}
N 280 -700 280 -640 {lab=EN2}
N 370 -700 370 -640 {lab=EN3}
N 200 -580 200 -500 {lab=0}
N 200 -500 500 -500 {lab=0}
N 280 -580 280 -500 {lab=0}
N 370 -580 370 -500 {lab=0}
N 660 -990 660 -960 {lab=VDD}
N 660 -900 660 -840 {lab=#net1}
N 840 -940 840 -930 {lab=VDD}
N 840 -870 840 -860 {lab=#net2}
N 900 -1010 900 -1000 {lab=VDD}
N 900 -1000 900 -940 {lab=VDD}
N 900 -940 900 -930 {lab=VDD}
N 900 -870 900 -860 {lab=#net3}
N 960 -1010 960 -1000 {lab=VDD}
N 960 -1000 960 -940 {lab=VDD}
N 960 -940 960 -930 {lab=VDD}
N 960 -870 960 -860 {lab=#net4}
N 1020 -1010 1020 -1000 {lab=VDD}
N 1020 -1000 1020 -940 {lab=VDD}
N 1020 -940 1020 -930 {lab=VDD}
N 1020 -870 1020 -860 {lab=#net5}
N 840 -800 840 -780 {lab=#net6}
N 900 -800 900 -780 {lab=#net7}
N 960 -800 960 -780 {lab=#net8}
N 1020 -800 1020 -780 {lab=#net9}
N 740 -810 740 -780 {lab=#net10}
N 660 -690 700 -690 {lab=#net1}
N 660 -840 660 -690 {lab=#net1}
N 600 -500 740 -500 {lab=0}
N 740 -520 740 -500 {lab=0}
N 430 -700 430 -640 {lab=EN4}
N 430 -580 430 -500 {lab=0}
C {title.sym} 170 -40 0 0 {name=l1 author="Lei Chen"}
C {vsource.sym} 500 -610 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 500 -480 0 0 {name=l2 lab=0}
C {vdd.sym} 500 -670 0 0 {name=l3 lab=VDD}
C {ammeter.sym} 840 -830 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {vdd.sym} 840 -1010 0 0 {name=l10 lab=VDD}
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
plot en1 en2 en3 en4
plot i(vmeas1) i(vmeas2) i(vmeas3) i(vmeas4)
write Lei_nmos_mirror_with_enable_tb.raw
.endc
"}
C {vsource.sym} 370 -610 0 0 {name=V2 value="pulse(0 3.3 0 500p 500p 20u 40u)" savecurrent=false}
C {vsource.sym} 280 -610 0 0 {name=V3 value="pulse(0 3.3 0 500p 500p 10u 20u)" savecurrent=false}
C {vsource.sym} 200 -610 0 0 {name=V4 value="pulse(0 3.3 0 500p 500p 5u 10u)" savecurrent=false}
C {lab_wire.sym} 200 -680 0 0 {name=p13 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 280 -680 0 0 {name=p14 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 370 -680 0 0 {name=p15 sig_type=std_logic lab=EN3}
C {isource.sym} 660 -930 0 0 {name=I0 value=100u}
C {vdd.sym} 660 -990 0 0 {name=l11 lab=VDD}
C {res.sym} 840 -900 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {mirrors/schematic/Lei_nmos_mirror_with_enable.sym} 890 -650 0 0 {name=x1}
C {ammeter.sym} 900 -830 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {vdd.sym} 900 -1010 0 0 {name=l4 lab=VDD}
C {res.sym} 900 -900 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 960 -830 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {vdd.sym} 960 -1010 0 0 {name=l5 lab=VDD}
C {res.sym} 960 -900 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1020 -830 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {vdd.sym} 1020 -1010 0 0 {name=l6 lab=VDD}
C {res.sym} 1020 -900 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 430 -610 0 0 {name=V5 value="pulse(0 3.3 0 500p 500p 40u 80u)" savecurrent=false}
C {lab_wire.sym} 430 -680 0 0 {name=p1 sig_type=std_logic lab=EN4}
C {lab_wire.sym} 700 -610 0 0 {name=p2 sig_type=std_logic lab=EN4}
C {lab_wire.sym} 700 -630 0 0 {name=p3 sig_type=std_logic lab=EN3}
C {lab_wire.sym} 700 -650 0 0 {name=p4 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 700 -670 0 0 {name=p5 sig_type=std_logic lab=EN1}
C {vdd.sym} 740 -810 0 0 {name=l7 lab=VDD}
