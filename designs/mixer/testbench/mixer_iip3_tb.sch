v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 420 -1030 460 -1030 {lab=RF_p}
N 420 -1010 460 -1010 {lab=RF_m}
N 420 -990 460 -990 {lab=LO_p}
N 430 -970 460 -970 {lab=LO_m}
N 760 -1020 800 -1020 {lab=IFp}
N 760 -980 800 -980 {lab=IFm}
N 1120 -1030 1120 -1000 {lab=0}
N 1120 -1110 1120 -1090 {lab=VDD}
N 1210 -1030 1210 -1000 {lab=0}
N 1210 -1000 1260 -1000 {lab=0}
N 1260 -1000 1300 -1000 {lab=0}
N 1550 -870 1550 -840 {lab=0}
N 1550 -840 1660 -840 {lab=0}
N 1660 -870 1660 -840 {lab=0}
N 1210 -1130 1210 -1090 {lab=RF_p}
N 1460 -1130 1460 -1090 {lab=RF_m}
N 1550 -970 1550 -930 {lab=LO_p}
N 1660 -970 1660 -930 {lab=LO_m}
N 800 -1020 840 -1020 {lab=IFp}
N 800 -980 840 -980 {lab=IFm}
N 610 -1110 610 -1070 {lab=VDD}
N 840 -1020 930 -1020 {lab=IFp}
N 930 -1020 930 -1010 {lab=IFp}
N 840 -980 840 -970 {lab=IFm}
N 500 -510 500 -460 {lab=#net1}
N 370 -580 370 -560 {lab=0}
N 370 -580 390 -580 {lab=0}
N 360 -700 360 -690 {lab=VDD}
N 360 -690 390 -690 {lab=VDD}
N 500 -400 500 -380 {lab=0}
N 810 -830 810 -810 {lab=#net2}
N 590 -930 590 -900 {lab=0}
N 630 -930 640 -930 {lab=#net3}
N 750 -810 810 -810 {lab=#net2}
N 750 -810 750 -760 {lab=#net2}
N 810 -810 860 -810 {lab=#net2}
N 860 -810 860 -760 {lab=#net2}
N 860 -810 970 -810 {lab=#net2}
N 970 -810 970 -760 {lab=#net2}
N 1090 -700 1130 -700 {lab=EN0}
N 1090 -680 1130 -680 {lab=EN1}
N 1090 -660 1130 -660 {lab=EN2}
N 1090 -600 1130 -600 {lab=EN0_B}
N 1090 -580 1130 -580 {lab=EN1_B}
N 1090 -560 1130 -560 {lab=EN2_B}
N 1730 -600 1730 -560 {lab=C0}
N 1620 -600 1620 -560 {lab=C1}
N 1730 -500 1730 -460 {lab=0}
N 1620 -460 1730 -460 {lab=0}
N 1620 -500 1620 -460 {lab=0}
N 1620 -460 1620 -450 {lab=0}
N 630 -870 640 -870 {lab=#net4}
N 630 -870 630 -760 {lab=#net4}
N 1570 -660 1730 -660 {lab=C0}
N 1730 -660 1730 -600 {lab=C0}
N 1570 -600 1620 -600 {lab=C1}
N 1510 -660 1570 -660 {lab=C0}
N 1510 -600 1570 -600 {lab=C1}
N 1480 -600 1510 -600 {lab=C1}
N 1480 -660 1510 -660 {lab=C0}
N 1330 -510 1330 -480 {lab=0}
N 1330 -770 1330 -740 {lab=VDD}
N 1130 -700 1180 -700 {lab=EN0}
N 1130 -680 1160 -680 {lab=EN1}
N 1160 -680 1160 -670 {lab=EN1}
N 1160 -670 1180 -670 {lab=EN1}
N 1130 -660 1160 -660 {lab=EN2}
N 1160 -660 1160 -640 {lab=EN2}
N 1160 -640 1180 -640 {lab=EN2}
N 1130 -600 1150 -600 {lab=EN0_B}
N 1150 -610 1150 -600 {lab=EN0_B}
N 1150 -610 1180 -610 {lab=EN0_B}
N 1130 -580 1180 -580 {lab=EN1_B}
N 1130 -560 1160 -560 {lab=EN2_B}
N 1160 -560 1160 -550 {lab=EN2_B}
N 1160 -550 1180 -550 {lab=EN2_B}
N 1300 -1000 1460 -1000 {lab=0}
N 1460 -1030 1460 -1000 {lab=0}
N 1360 -1000 1360 -980 {lab=0}
N 1600 -840 1600 -820 {lab=0}
C {vsource.sym} 1120 -1060 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/code_shown.sym} 220 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vdd.sym} 610 -1110 0 0 {name=l3 lab=VDD}
C {vdd.sym} 1120 -1110 0 0 {name=l4 lab=VDD}
C {gnd.sym} 1120 -1000 0 0 {name=l5 lab=0}
C {gnd.sym} 1360 -980 0 0 {name=l6 lab=0}
C {vsource.sym} 1550 -900 0 0 {name=Vlop value= "AC pulse(0 3.3 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {vsource.sym} 1660 -900 0 0 {name=Vlom value="AC pulse(3.3 0 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {lab_wire.sym} 1210 -1120 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1460 -1110 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 1550 -950 0 0 {name=p3 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 1660 -950 0 0 {name=p4 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 440 -1030 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 430 -1010 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 430 -990 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 430 -970 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 800 -1020 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 790 -980 0 0 {name=p10 sig_type=std_logic lab=IFm}
C {capa.sym} 930 -980 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 840 -940 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 930 -950 0 0 {name=l7 lab=0}
C {gnd.sym} 840 -910 0 0 {name=l8 lab=0}
C {netlist_not_shown.sym} 930 -330 0 0 {name=netlist only_toplevel=false value="
.param Arf=10m
.control

destroy all

op
echo Itail
print i(vmeas)

foreach A 3m 4m 175m
	alterparam Arf = $A
	reset
	save v(ifp) v(ifm)
	tran 0.05n 25u ;transient sim

	let vif = V(IFp)-V(IFm)

	fft vif
	plot db(mag(vif)) vs frequency xlimit 20Meg 30Meg
	plot mag(vif) vs frequency xlimit 20Meg 30Meg
end

.endc
"}
C {isource.sym} 500 -430 0 0 {name=I0 value=100u}
C {gnd.sym} 370 -560 0 0 {name=l2 lab=0}
C {vdd.sym} 360 -700 0 0 {name=l9 lab=VDD}
C {gnd.sym} 500 -380 0 0 {name=l10 lab=0}
C {noconn.sym} 810 -830 0 0 {name=l11}
C {gnd.sym} 590 -900 0 0 {name=l12 lab=0}
C {/foss/designs/NYCMOS/designs/mixer/schematic/mixer.sym} 610 -1000 0 0 {name=x1}
C {ammeter.sym} 640 -900 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/mirror_network_with_enable.sym} 10 -530 0 0 {name=x2}
C {lab_wire.sym} 1110 -700 0 0 {name=p11 sig_type=std_logic lab=EN0}
C {lab_wire.sym} 1130 -680 0 0 {name=p12 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 1130 -660 0 0 {name=p13 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 1120 -600 0 0 {name=p14 sig_type=std_logic lab=EN0_B}
C {lab_wire.sym} 1120 -580 0 0 {name=p15 sig_type=std_logic lab=EN1_B}
C {lab_wire.sym} 1120 -560 0 0 {name=p16 sig_type=std_logic lab=EN2_B}
C {vsource.sym} 1730 -530 0 1 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 1620 -530 0 1 {name=V3 value=3.3 savecurrent=false}
C {lab_wire.sym} 1730 -590 0 1 {name=p23 sig_type=std_logic lab=C0}
C {lab_wire.sym} 1620 -580 0 1 {name=p24 sig_type=std_logic lab=C1}
C {gnd.sym} 1620 -450 0 0 {name=l15 lab=0}
C {/foss/designs/NYCMOS/designs/digital/schematic/decoder.sym} 1330 -630 0 1 {name=x3}
C {gnd.sym} 1330 -480 0 0 {name=l13 lab=0}
C {vdd.sym} 1330 -770 0 0 {name=l14 lab=VDD}
C {title.sym} 240 -50 0 0 {name=l1 author="Charbel El Haddad"}
C {bsource.sym} 1210 -1060 0 0 {name=B_RFp VAR=V FUNC="1.3 + Arf*sin(2*pi*100Meg*time) + Arf*sin(2*pi*101Meg*time)" m=1}
C {bsource.sym} 1460 -1060 0 0 {name=B_RFm VAR=V FUNC="1.3 - Arf*sin(2*pi*100Meg*time) - Arf*sin(2*pi*101Meg*time)" m=1}
C {gnd.sym} 1600 -820 0 0 {name=l16 lab=0}
