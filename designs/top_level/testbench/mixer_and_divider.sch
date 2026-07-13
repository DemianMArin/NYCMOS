v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 880 -1120 920 -1120 {lab=RF_p}
N 880 -1100 920 -1100 {lab=RF_m}
N 880 -1080 920 -1080 {lab=LO_p}
N 890 -1060 920 -1060 {lab=LO_m}
N 1220 -1110 1260 -1110 {lab=IFp}
N 1220 -1070 1260 -1070 {lab=IFm}
N 1580 -1120 1580 -1090 {lab=0}
N 1580 -1200 1580 -1180 {lab=VDD}
N 1670 -1120 1670 -1090 {lab=0}
N 1670 -1090 1720 -1090 {lab=0}
N 1720 -1090 1760 -1090 {lab=0}
N 1760 -1120 1760 -1090 {lab=0}
N 1670 -1220 1670 -1180 {lab=RF_p}
N 1760 -1220 1760 -1180 {lab=RF_m}
N 1260 -1110 1300 -1110 {lab=IFp}
N 1260 -1070 1300 -1070 {lab=IFm}
N 1070 -1200 1070 -1160 {lab=VDD}
N 1300 -1110 1390 -1110 {lab=IFp}
N 1390 -1110 1390 -1100 {lab=IFp}
N 1300 -1070 1300 -1060 {lab=IFm}
N 1050 -1020 1050 -990 {lab=0}
N 240 -1040 430 -1040 {lab=V_LO_REF}
N 730 -1080 840 -1080 {lab=LO_p}
N 730 -1060 860 -1060 {lab=LO_m}
N 730 -1020 870 -1020 {lab=#net1}
N 730 -1000 840 -1000 {lab=#net2}
N 150 -1040 240 -1040 {lab=V_LO_REF}
N 840 -1080 880 -1080 {lab=LO_p}
N 860 -1060 890 -1060 {lab=LO_m}
N 150 -980 150 -960 {lab=0}
N 580 -960 580 -940 {lab=0}
N 580 -1160 580 -1120 {lab=VDD}
N 1090 -1020 1090 -1000 {lab=#net3}
N 330 -1010 330 -990 {lab=EN}
N 330 -1010 430 -1010 {lab=EN}
N 330 -930 330 -910 {lab=0}
N 510 -650 510 -590 {lab=#net4}
N 510 -530 510 -490 {lab=0}
N 390 -790 460 -790 {lab=VDD}
N 620 -650 690 -650 {lab=#net5}
N 1100 -880 1100 -730 {lab=#net6}
N 1100 -730 1140 -730 {lab=#net6}
N 1140 -730 1140 -670 {lab=#net6}
N 1070 -730 1070 -670 {lab=EN}
N 1070 -400 1070 -360 {lab=EN_B}
N 1260 -750 1260 -670 {lab=#net7}
N 1260 -750 1380 -750 {lab=#net7}
N 1380 -750 1490 -750 {lab=#net7}
N 1490 -750 1490 -670 {lab=#net7}
N 1380 -750 1380 -670 {lab=#net7}
N 890 -600 930 -600 {lab=VDD}
N 890 -470 930 -470 {lab=0}
N 990 -810 990 -670 {lab=#net5}
N 880 -810 990 -810 {lab=#net5}
N 690 -650 830 -650 {lab=#net5}
N 830 -810 830 -650 {lab=#net5}
N 830 -810 880 -810 {lab=#net5}
N 1100 -940 1100 -880 {lab=#net6}
N 1090 -940 1100 -940 {lab=#net6}
N 750 -600 750 -540 {lab=VDD}
N 750 -600 890 -600 {lab=VDD}
N 750 -540 750 -410 {lab=VDD}
N 840 -340 1070 -340 {lab=EN_B}
N 1070 -360 1070 -340 {lab=EN_B}
N 590 -340 650 -340 {lab=EN}
C {vsource.sym} 1580 -1150 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1670 -1150 0 0 {name=Vrfp value="DC 1.3 AC SIN(1.3 0.5m 125Meg 0 0 0)" savecurrent=false}
C {vsource.sym} 1760 -1150 0 0 {name=Vrfm value="DC 1.3 AC SIN(1.3 0.5m 125Meg 0 0 180)" savecurrent=false}
C {devices/code_shown.sym} 120 -270 0 0 {name=MODELS only_toplevel=true
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
C {vdd.sym} 1070 -1200 0 0 {name=l3 lab=VDD}
C {vdd.sym} 1580 -1200 0 0 {name=l4 lab=VDD}
C {gnd.sym} 1580 -1090 0 0 {name=l5 lab=0}
C {gnd.sym} 1720 -1090 0 0 {name=l6 lab=0}
C {lab_wire.sym} 1670 -1210 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1760 -1200 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 900 -1120 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 890 -1100 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 890 -1080 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 890 -1060 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 1260 -1110 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 1250 -1070 0 0 {name=p10 sig_type=std_logic lab=IFm}
C {capa.sym} 1390 -1070 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1300 -1030 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1390 -1040 0 0 {name=l7 lab=0}
C {gnd.sym} 1300 -1000 0 0 {name=l8 lab=0}
C {netlist_not_shown.sym} 1050 -270 0 0 {name=netlist only_toplevel=false value="

.control
op
destroy all
save all
write mixer_tb.raw


tran 0.01n 2u  ;transient sim

let vrf = V(RF_p)-V(RF_m)
let vlo = v(LO_p)-v(LO_m)
let vif = V(IFp)-V(IFm)

plot V(LO_p) V(LO_m)+3.3
plot vlo
plot vrf
plot V(RF_p) V(RF_m)+1m
plot vif
plot v(ifp)
plot i(vmeas)

fft V(LO_p) V(LO_m) vlo vif vrf

plot mag(vlo) vs frequency

plot mag(vif) vs frequency

plot mag(vrf) vs frequency
.endc
"}
C {gnd.sym} 1050 -990 0 0 {name=l12 lab=0}
C {designs/mixer/schematic/mixer.sym} 1070 -1090 0 0 {name=x1}
C {vsource.sym} 150 -1010 0 0 {name=V_LO_REF value="DC 0 AC 0 pulse( 0m 3.3 0 100p 100p 2.5n 5n )" savecurrent=false}
C {lab_wire.sym} 320 -1040 0 0 {name=p17 sig_type=std_logic lab=V_LO_REF}
C {designs/divider/schematic/divider.sym} 580 -1040 0 0 {name=x4}
C {noconn.sym} 870 -1020 0 0 {name=l1}
C {noconn.sym} 840 -1000 0 0 {name=l16}
C {gnd.sym} 150 -960 0 0 {name=l17 lab=0}
C {gnd.sym} 580 -940 0 0 {name=l18 lab=0}
C {vdd.sym} 580 -1150 0 0 {name=l19 lab=VDD}
C {vsource.sym} 330 -960 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 330 -910 0 0 {name=l20 lab=0}
C {designs/mirrors/schematic/pmos_mirror.sym} -80 -390 0 0 {name=x3}
C {isource.sym} 510 -560 0 0 {name=I0 value=100u}
C {vdd.sym} 390 -790 0 0 {name=l9 lab=VDD}
C {gnd.sym} 510 -490 0 0 {name=l14 lab=0}
C {title.sym} 270 -40 0 0 {name=l2 author="Charbel El Haddad"}
C {designs/mirrors/schematic/nmos_mirror_with_enable.sym} 690 -490 0 0 {name=x2}
C {lab_wire.sym} 1070 -700 0 0 {name=p11 sig_type=std_logic lab=EN}
C {lab_wire.sym} 1070 -380 0 0 {name=p12 sig_type=std_logic lab=EN_B}
C {noconn.sym} 1370 -750 0 0 {name=l10}
C {vdd.sym} 890 -600 0 0 {name=l11 lab=VDD}
C {gnd.sym} 890 -470 0 0 {name=l13 lab=0}
C {lab_wire.sym} 390 -1010 0 0 {name=p3 sig_type=std_logic lab=EN}
C {designs/digital/schematic/inv.sym} 750 -350 0 0 {name=x5}
C {gnd.sym} 750 -260 0 0 {name=l21 lab=0}
C {lab_wire.sym} 620 -340 0 0 {name=p4 sig_type=std_logic lab=EN}
C {ammeter.sym} 1090 -970 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
