v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 950 -1120 990 -1120 {lab=RF_p}
N 950 -1100 990 -1100 {lab=RF_m}
N 950 -1080 990 -1080 {lab=LO_p}
N 960 -1060 990 -1060 {lab=LO_m}
N 1290 -1110 1330 -1110 {lab=IFp}
N 1290 -1070 1330 -1070 {lab=IFm}
N 1650 -1120 1650 -1090 {lab=0}
N 1650 -1200 1650 -1180 {lab=VDD}
N 1740 -1120 1740 -1090 {lab=0}
N 1740 -1090 1790 -1090 {lab=0}
N 1790 -1090 1830 -1090 {lab=0}
N 1830 -1120 1830 -1090 {lab=0}
N 1740 -1220 1740 -1180 {lab=RF_p}
N 1830 -1220 1830 -1180 {lab=RF_m}
N 1330 -1110 1370 -1110 {lab=IFp}
N 1330 -1070 1370 -1070 {lab=IFm}
N 1140 -1200 1140 -1160 {lab=VDD}
N 1370 -1110 1460 -1110 {lab=IFp}
N 1460 -1110 1460 -1100 {lab=IFp}
N 1370 -1070 1370 -1060 {lab=IFm}
N 1120 -1020 1120 -990 {lab=0}
N 310 -1040 500 -1040 {lab=V_LO_REF}
N 800 -1080 910 -1080 {lab=LO_p}
N 800 -1060 930 -1060 {lab=LO_m}
N 800 -1020 940 -1020 {lab=#net1}
N 800 -1000 910 -1000 {lab=#net2}
N 220 -1040 310 -1040 {lab=V_LO_REF}
N 910 -1080 950 -1080 {lab=LO_p}
N 930 -1060 960 -1060 {lab=LO_m}
N 220 -980 220 -960 {lab=0}
N 650 -960 650 -940 {lab=0}
N 650 -1160 650 -1120 {lab=VDD}
N 1160 -1020 1160 -1000 {lab=#net3}
N 400 -1010 400 -990 {lab=EN}
N 400 -1010 500 -1010 {lab=EN}
N 400 -930 400 -910 {lab=0}
N 580 -650 580 -590 {lab=#net4}
N 580 -530 580 -490 {lab=0}
N 460 -790 530 -790 {lab=VDD}
N 690 -650 760 -650 {lab=#net5}
N 1170 -880 1170 -730 {lab=#net6}
N 1170 -730 1210 -730 {lab=#net6}
N 1210 -730 1210 -670 {lab=#net6}
N 1140 -730 1140 -670 {lab=EN}
N 1140 -400 1140 -360 {lab=EN_B}
N 1330 -750 1330 -670 {lab=#net7}
N 1330 -750 1450 -750 {lab=#net7}
N 1450 -750 1560 -750 {lab=#net7}
N 1560 -750 1560 -670 {lab=#net7}
N 1450 -750 1450 -670 {lab=#net7}
N 960 -600 1000 -600 {lab=VDD}
N 960 -470 1000 -470 {lab=0}
N 1060 -810 1060 -670 {lab=#net5}
N 950 -810 1060 -810 {lab=#net5}
N 760 -650 900 -650 {lab=#net5}
N 900 -810 900 -650 {lab=#net5}
N 900 -810 950 -810 {lab=#net5}
N 1170 -940 1170 -880 {lab=#net6}
N 1160 -940 1170 -940 {lab=#net6}
N 820 -600 820 -540 {lab=VDD}
N 820 -600 960 -600 {lab=VDD}
N 820 -540 820 -410 {lab=VDD}
N 910 -340 1140 -340 {lab=EN_B}
N 1140 -360 1140 -340 {lab=EN_B}
N 660 -340 720 -340 {lab=EN}
C {vsource.sym} 1650 -1150 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1740 -1150 0 0 {name=Vrfp value="DC 1.3 AC SIN(1.3 Arf 125Meg 0 0 0)" savecurrent=false}
C {vsource.sym} 1830 -1150 0 0 {name=Vrfm value="DC 1.3 AC SIN(1.3 Arf 125Meg 0 0 180)" savecurrent=false}
C {devices/code_shown.sym} 190 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vdd.sym} 1140 -1200 0 0 {name=l3 lab=VDD}
C {vdd.sym} 1650 -1200 0 0 {name=l4 lab=VDD}
C {gnd.sym} 1650 -1090 0 0 {name=l5 lab=0}
C {gnd.sym} 1790 -1090 0 0 {name=l6 lab=0}
C {lab_wire.sym} 1740 -1210 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1830 -1200 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 970 -1120 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 960 -1100 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 960 -1080 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 960 -1060 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 1330 -1110 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 1320 -1070 0 0 {name=p10 sig_type=std_logic lab=IFm}
C {capa.sym} 1460 -1070 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1370 -1030 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1460 -1040 0 0 {name=l7 lab=0}
C {gnd.sym} 1370 -1000 0 0 {name=l8 lab=0}
C {netlist_not_shown.sym} 1120 -270 0 0 {name=netlist only_toplevel=false value="

.param Arf=10m
.control
op
destroy all
write mixer_p1db.raw

foreach A 25m
alterparam Arf=$A
reset
save v(ifp) v(ifm)
tran 0.01n 2u  ;transient sim

let vif = V(IFp)-V(IFm)


fft vif

plot mag(vif) vs frequency xlimit 0 200Meg
end
.endc
"}
C {gnd.sym} 1120 -990 0 0 {name=l12 lab=0}
C {designs/mixer/schematic/mixer.sym} 1140 -1090 0 0 {name=x1}
C {vsource.sym} 220 -1010 0 0 {name=V_LO_REF value="DC 0 AC 0 pulse( 0m 3.3 0 100p 100p 2.5n 5n )" savecurrent=false}
C {lab_wire.sym} 390 -1040 0 0 {name=p17 sig_type=std_logic lab=V_LO_REF}
C {designs/divider/schematic/divider.sym} 650 -1040 0 0 {name=x4}
C {noconn.sym} 940 -1020 0 0 {name=l1}
C {noconn.sym} 910 -1000 0 0 {name=l16}
C {gnd.sym} 220 -960 0 0 {name=l17 lab=0}
C {gnd.sym} 650 -940 0 0 {name=l18 lab=0}
C {vdd.sym} 650 -1150 0 0 {name=l19 lab=VDD}
C {vsource.sym} 400 -960 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 400 -910 0 0 {name=l20 lab=0}
C {designs/mirrors/schematic/pmos_mirror.sym} -10 -390 0 0 {name=x3}
C {isource.sym} 580 -560 0 0 {name=I0 value=100u}
C {vdd.sym} 460 -790 0 0 {name=l9 lab=VDD}
C {gnd.sym} 580 -490 0 0 {name=l14 lab=0}
C {title.sym} 340 -40 0 0 {name=l2 author="Charbel El Haddad"}
C {designs/mirrors/schematic/nmos_mirror_with_enable.sym} 760 -490 0 0 {name=x2}
C {lab_wire.sym} 1140 -700 0 0 {name=p11 sig_type=std_logic lab=EN}
C {lab_wire.sym} 1140 -380 0 0 {name=p12 sig_type=std_logic lab=EN_B}
C {noconn.sym} 1440 -750 0 0 {name=l10}
C {vdd.sym} 960 -600 0 0 {name=l11 lab=VDD}
C {gnd.sym} 960 -470 0 0 {name=l13 lab=0}
C {lab_wire.sym} 460 -1010 0 0 {name=p3 sig_type=std_logic lab=EN}
C {designs/digital/schematic/inv.sym} 820 -350 0 0 {name=x5}
C {gnd.sym} 820 -260 0 0 {name=l21 lab=0}
C {lab_wire.sym} 690 -340 0 0 {name=p4 sig_type=std_logic lab=EN}
C {ammeter.sym} 1160 -970 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {noconn.sym} 1510 -1110 0 0 {name=l15}
C {noconn.sym} 1410 -1070 0 0 {name=l22}
