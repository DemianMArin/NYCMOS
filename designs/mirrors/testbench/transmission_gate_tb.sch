v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -350 330 -330 {lab=0}
N 380 -600 380 -590 {lab=0}
N 380 -680 380 -660 {lab=VDD}
N 330 -540 330 -510 {lab=VDD}
N 490 -720 490 -680 {lab=EN}
N 490 -610 490 -580 {lab=0}
N 490 -680 490 -670 {lab=EN}
N 390 -540 390 -510 {lab=EN}
N 390 -350 390 -330 {lab=EN_B}
N 700 -540 700 -520 {lab=VDD}
N 700 -370 700 -350 {lab=0}
N 560 -450 600 -450 {lab=EN}
N 790 -450 830 -450 {lab=EN_B}
N 240 -430 270 -430 {lab=in}
N 490 -430 520 -430 {lab=out}
N 230 -430 230 -420 {lab=in}
N 230 -420 230 -410 {lab=in}
N 230 -430 240 -430 {lab=in}
N 230 -350 230 -330 {lab=0}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/transmission_gate.sym} 390 -430 0 0 {name=x1}
C {devices/code_shown.sym} 40 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 620 -270 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
write test_pfet_03v3.raw
tran 50n 20u
plot v(in) v(EN) v(EN_B)
plot v(out)
.endc
"}
C {vsource.sym} 380 -630 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 330 -330 0 0 {name=l1 lab=0}
C {gnd.sym} 380 -590 0 0 {name=l2 lab=0}
C {vdd.sym} 380 -680 0 0 {name=l3 lab=VDD}
C {vdd.sym} 330 -540 0 0 {name=l4 lab=VDD}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 700 -460 0 0 {name=x2}
C {title.sym} 180 -50 0 0 {name=l5 author="Charbel El Haddad"}
C {vsource.sym} 490 -640 0 0 {name=V2 value="AC pulse(0 3.3 0 500n 500n 10u 20u)" savecurrent=false}
C {gnd.sym} 490 -580 0 0 {name=l6 lab=0}
C {lab_wire.sym} 490 -690 0 0 {name=p1 sig_type=std_logic lab=EN}
C {lab_wire.sym} 390 -530 0 0 {name=p2 sig_type=std_logic lab=EN}
C {lab_wire.sym} 390 -340 0 0 {name=p3 sig_type=std_logic lab=EN_B}
C {vdd.sym} 700 -540 0 0 {name=l7 lab=VDD}
C {gnd.sym} 700 -350 0 0 {name=l8 lab=0}
C {lab_wire.sym} 250 -430 0 0 {name=p4 sig_type=std_logic lab=in}
C {lab_wire.sym} 510 -430 0 0 {name=p5 sig_type=std_logic lab=out}
C {lab_wire.sym} 580 -450 0 0 {name=p6 sig_type=std_logic lab=EN}
C {lab_wire.sym} 820 -450 0 0 {name=p7 sig_type=std_logic lab=EN_B}
C {vsource.sym} 230 -380 0 0 {name=V3 value="AC pulse(900m 2.5 500n 500n 500n 5u 10u)" savecurrent=false}
C {gnd.sym} 230 -330 0 0 {name=l9 lab=0}
