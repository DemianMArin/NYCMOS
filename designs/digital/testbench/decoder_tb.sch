v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 490 -430 490 -400 {lab=VDD}
N 490 -210 490 -180 {lab=0}
N 70 -350 70 -320 {lab=VDD}
N 70 -260 70 -240 {lab=0}
N 300 -300 340 -300 {lab=C1}
N 180 -360 340 -360 {lab=C0}
N 300 -240 300 -210 {lab=0}
N 180 -300 180 -280 {lab=0}
N 640 -340 730 -340 {lab=E2}
N 640 -370 810 -370 {lab=E1}
N 640 -400 880 -400 {lab=E0}
N 1000 -340 1000 -310 {lab=0}
N 950 -310 950 -280 {lab=0}
N 900 -280 900 -260 {lab=0}
N 880 -400 1000 -400 {lab=E0}
N 810 -370 950 -370 {lab=E1}
N 730 -340 900 -340 {lab=E2}
N 850 -250 850 -230 {lab=0}
N 800 -220 800 -200 {lab=0}
N 740 -190 740 -170 {lab=0}
N 640 -310 850 -310 {lab=E0_B}
N 640 -280 800 -280 {lab=E1_B}
N 640 -250 740 -250 {lab=E2_B}
C {/foss/designs/NYCMOS/designs/digital/schematic/decoder.sym} 490 -330 0 0 {name=x1}
C {title.sym} 170 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {vdd.sym} 490 -430 0 0 {name=l2 lab=VDD}
C {gnd.sym} 490 -180 0 0 {name=l3 lab=0}
C {vsource.sym} 70 -290 0 0 {name=V1 value=3.3 savecurrent=false}
C {vdd.sym} 70 -350 0 0 {name=l4 lab=VDD}
C {gnd.sym} 70 -240 0 0 {name=l5 lab=0}
C {devices/code_shown.sym} 110 -150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1070 -620 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
write decoder_tb.raw
tran 100n 80u
plot v(E0) v(E0_B) 
plot v(E1) v(E1_B)
plot v(E2) v(E2_B)
plot v(C0) v(C1)
.endc
"}
C {vsource.sym} 180 -330 0 0 {name=V2 value="pulse(0 3.3 0 500n 500n 10u 20u)" savecurrent=false}
C {vsource.sym} 300 -270 0 0 {name=V3 value="pulse(3.3 0 0 500n 500n 20u 40u)" savecurrent=false}
C {gnd.sym} 180 -280 0 0 {name=l6 lab=0}
C {gnd.sym} 300 -210 0 0 {name=l7 lab=0}
C {capa.sym} 900 -310 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 950 -340 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1000 -370 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 900 -260 0 0 {name=l8 lab=0}
C {gnd.sym} 950 -280 0 0 {name=l9 lab=0}
C {gnd.sym} 1000 -310 0 0 {name=l10 lab=0}
C {lab_wire.sym} 760 -400 0 0 {name=p1 sig_type=std_logic lab=E0}
C {lab_wire.sym} 770 -370 0 0 {name=p2 sig_type=std_logic lab=E1}
C {lab_wire.sym} 710 -340 0 0 {name=p3 sig_type=std_logic lab=E2}
C {lab_wire.sym} 260 -360 0 0 {name=p4 sig_type=std_logic lab=C0}
C {lab_wire.sym} 330 -300 0 0 {name=p5 sig_type=std_logic lab=C1}
C {capa.sym} 850 -280 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 850 -230 0 0 {name=l11 lab=0}
C {capa.sym} 800 -250 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 800 -200 0 0 {name=l12 lab=0}
C {capa.sym} 740 -220 0 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 740 -170 0 0 {name=l13 lab=0}
C {lab_wire.sym} 740 -310 0 0 {name=p6 sig_type=std_logic lab=E0_B}
C {lab_wire.sym} 720 -280 0 0 {name=p7 sig_type=std_logic lab=E1_B}
C {lab_wire.sym} 710 -250 0 0 {name=p8 sig_type=std_logic lab=E2_B}
