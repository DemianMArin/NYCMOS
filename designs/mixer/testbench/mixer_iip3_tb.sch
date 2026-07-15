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
N 1210 -1130 1210 -1090 {lab=RF_p}
N 1460 -1130 1460 -1090 {lab=RF_m}
N 800 -1020 840 -1020 {lab=IFp}
N 800 -980 840 -980 {lab=IFm}
N 610 -1110 610 -1070 {lab=VDD}
N 840 -1020 930 -1020 {lab=IFp}
N 930 -1020 930 -1010 {lab=IFp}
N 840 -980 840 -970 {lab=IFm}
N 590 -930 590 -900 {lab=0}
N 1300 -1000 1460 -1000 {lab=0}
N 1460 -1030 1460 -1000 {lab=0}
N 1360 -1000 1360 -980 {lab=0}
N -240 -950 -50 -950 {lab=V_LO_REF}
N 250 -990 360 -990 {lab=LO_p}
N 250 -970 380 -970 {lab=LO_m}
N 250 -930 390 -930 {lab=#net1}
N 250 -910 360 -910 {lab=#net2}
N -330 -950 -240 -950 {lab=V_LO_REF}
N 360 -990 400 -990 {lab=LO_p}
N -330 -890 -330 -870 {lab=0}
N 100 -870 100 -850 {lab=0}
N 100 -1070 100 -1030 {lab=VDD}
N -150 -920 -150 -900 {lab=EN}
N -150 -920 -50 -920 {lab=EN}
N -150 -840 -150 -820 {lab=0}
N 400 -990 420 -990 {lab=LO_p}
N 380 -970 430 -970 {lab=LO_m}
N 20 -600 20 -540 {lab=#net3}
N 20 -480 20 -440 {lab=0}
N -100 -740 -30 -740 {lab=VDD}
N 130 -600 200 -600 {lab=#net4}
N 650 -680 650 -620 {lab=#net5}
N 580 -680 580 -620 {lab=EN}
N 580 -350 580 -310 {lab=EN_B}
N 770 -700 770 -620 {lab=#net6}
N 770 -700 890 -700 {lab=#net6}
N 890 -700 1000 -700 {lab=#net6}
N 1000 -700 1000 -620 {lab=#net6}
N 890 -700 890 -620 {lab=#net6}
N 400 -550 440 -550 {lab=VDD}
N 400 -420 440 -420 {lab=0}
N 500 -760 500 -620 {lab=#net4}
N 390 -760 500 -760 {lab=#net4}
N 200 -600 340 -600 {lab=#net4}
N 340 -760 340 -600 {lab=#net4}
N 340 -760 390 -760 {lab=#net4}
N 260 -550 260 -490 {lab=VDD}
N 260 -550 400 -550 {lab=VDD}
N 260 -490 260 -360 {lab=VDD}
N 350 -290 580 -290 {lab=EN_B}
N 580 -310 580 -290 {lab=EN_B}
N 100 -290 160 -290 {lab=EN}
N 630 -930 630 -900 {lab=#net7}
N 630 -840 630 -700 {lab=#net5}
N 630 -700 650 -700 {lab=#net5}
N 650 -700 650 -680 {lab=#net5}
C {vsource.sym} 1120 -1060 0 0 {name=V1 value=3.3 savecurrent=false}
C {vdd.sym} 610 -1110 0 0 {name=l3 lab=VDD}
C {vdd.sym} 1120 -1110 0 0 {name=l4 lab=VDD}
C {gnd.sym} 1120 -1000 0 0 {name=l5 lab=0}
C {gnd.sym} 1360 -980 0 0 {name=l6 lab=0}
C {lab_wire.sym} 1210 -1120 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1460 -1110 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
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
C {netlist_not_shown.sym} 1880 -480 0 0 {name=netlist only_toplevel=false value="
.param Arf=10m
.control

destroy all

op
echo Itail
print i(vmeas)

foreach A 30m 
	alterparam Arf = $A
	reset
	save v(ifp) v(ifm)
	tran 0.1n 25u ;transient sim

	let vif = V(IFp)-V(IFm)

	fft vif
	plot db(mag(vif)) vs frequency xlimit 20Meg 30Meg
	plot mag(vif) vs frequency xlimit 20Meg 30Meg
end

.endc
"}
C {gnd.sym} 590 -900 0 0 {name=l12 lab=0}
C {designs/mixer/schematic/mixer.sym} 610 -1000 0 0 {name=x1}
C {title.sym} 240 -50 0 0 {name=l1 author="Charbel El Haddad"}
C {bsource.sym} 1210 -1060 0 0 {name=B_RFp VAR=V FUNC="1.3 + Arf*sin(2*pi*125Meg*time) + Arf*sin(2*pi*126Meg*time)" m=1}
C {bsource.sym} 1460 -1060 0 0 {name=B_RFm VAR=V FUNC="1.3 - Arf*sin(2*pi*125Meg*time) - Arf*sin(2*pi*126Meg*time)" m=1}
C {vsource.sym} -330 -920 0 0 {name=V_LO_REF value="DC 0 AC 0 pulse( 0m 3.3 0 100p 100p 2.5n 5n )" savecurrent=false}
C {lab_wire.sym} -160 -950 0 0 {name=p17 sig_type=std_logic lab=V_LO_REF}
C {designs/divider/schematic/divider.sym} 100 -950 0 0 {name=x4}
C {noconn.sym} 390 -930 0 0 {name=l2}
C {noconn.sym} 360 -910 0 0 {name=l16}
C {gnd.sym} -330 -870 0 0 {name=l17 lab=0}
C {gnd.sym} 100 -850 0 0 {name=l18 lab=0}
C {vdd.sym} 100 -1060 0 0 {name=l19 lab=VDD}
C {vsource.sym} -150 -870 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} -150 -820 0 0 {name=l20 lab=0}
C {lab_wire.sym} -90 -920 0 0 {name=p3 sig_type=std_logic lab=EN}
C {designs/mirrors/schematic/pmos_mirror.sym} -570 -340 0 0 {name=x3}
C {isource.sym} 20 -510 0 0 {name=I0 value=100u}
C {vdd.sym} -100 -740 0 0 {name=l9 lab=VDD}
C {gnd.sym} 20 -440 0 0 {name=l14 lab=0}
C {designs/mirrors/schematic/nmos_mirror_with_enable.sym} 200 -440 0 0 {name=x2}
C {lab_wire.sym} 580 -650 0 0 {name=p11 sig_type=std_logic lab=EN}
C {lab_wire.sym} 580 -330 0 0 {name=p12 sig_type=std_logic lab=EN_B}
C {noconn.sym} 880 -700 0 0 {name=l10}
C {vdd.sym} 400 -550 0 0 {name=l11 lab=VDD}
C {gnd.sym} 400 -420 0 0 {name=l13 lab=0}
C {designs/digital/schematic/inv.sym} 260 -300 0 0 {name=x5}
C {gnd.sym} 260 -210 0 0 {name=l21 lab=0}
C {lab_wire.sym} 130 -290 0 0 {name=p4 sig_type=std_logic lab=EN}
C {ammeter.sym} 630 -870 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} 1220 -340 0 0 {name=MODELS1 only_toplevel=true
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
