v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -1070 280 -1070 {lab=RF_p}
N 240 -1050 280 -1050 {lab=RF_m}
N 240 -1030 280 -1030 {lab=LO_p}
N 250 -1010 280 -1010 {lab=LO_m}
N 580 -1060 750 -1060 {lab=IFp}
N 580 -1020 660 -1020 {lab=IFm}
N 940 -1070 940 -1040 {lab=0}
N 940 -1150 940 -1130 {lab=VDD}
N 1030 -1070 1030 -1040 {lab=0}
N 1030 -1040 1120 -1040 {lab=0}
N 1120 -1070 1120 -1040 {lab=0}
N 1120 -1040 1220 -1040 {lab=0}
N 1220 -1070 1220 -1040 {lab=0}
N 1220 -1040 1330 -1040 {lab=0}
N 1330 -1070 1330 -1040 {lab=0}
N 1030 -1170 1030 -1130 {lab=RF_p}
N 1120 -1170 1120 -1130 {lab=RF_m}
N 1220 -1170 1220 -1130 {lab=LO_p}
N 1330 -1170 1330 -1130 {lab=LO_m}
N 430 -1150 430 -1110 {lab=VDD}
N 750 -1060 750 -1050 {lab=IFp}
N 660 -1020 660 -1010 {lab=IFm}
N 410 -970 410 -940 {lab=0}
N 450 -970 460 -970 {lab=#net1}
N 0 -840 0 -780 {lab=#net2}
N 0 -720 0 -680 {lab=0}
N 460 -910 460 -760 {lab=#net3}
N 460 -760 500 -760 {lab=#net3}
N 500 -760 500 -700 {lab=#net3}
N -120 -980 -50 -980 {lab=VDD}
N 430 -760 430 -700 {lab=EN}
N 430 -430 430 -390 {lab=EN_B}
N 620 -780 620 -700 {lab=#net4}
N 620 -780 740 -780 {lab=#net4}
N 740 -780 850 -780 {lab=#net4}
N 850 -780 850 -700 {lab=#net4}
N 740 -780 740 -700 {lab=#net4}
N 250 -630 290 -630 {lab=VDD}
N 250 -500 290 -500 {lab=0}
N 350 -840 350 -700 {lab=#net5}
N 1180 -900 1180 -850 {lab=EN}
N 1280 -890 1280 -850 {lab=EN_B}
N 1180 -790 1180 -750 {lab=0}
N 1180 -750 1280 -750 {lab=0}
N 1280 -790 1280 -750 {lab=0}
N 110 -840 180 -840 {lab=#net6}
N 240 -840 350 -840 {lab=#net5}
C {vsource.sym} 940 -1100 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1030 -1100 0 0 {name=Vrfp value="DC 1.3 AC SIN(1.3 5m 100Meg 0 0 0)" savecurrent=false}
C {vsource.sym} 1120 -1100 0 0 {name=Vrfm value="DC 1.3 AC SIN(1.3 5m 100Meg 0 0 180)" savecurrent=false}
C {title.sym} 180 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {devices/code_shown.sym} 40 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vdd.sym} 430 -1150 0 0 {name=l3 lab=VDD}
C {vdd.sym} 940 -1150 0 0 {name=l4 lab=VDD}
C {gnd.sym} 940 -1040 0 0 {name=l5 lab=0}
C {gnd.sym} 1170 -1040 0 0 {name=l6 lab=0}
C {vsource.sym} 1220 -1100 0 0 {name=Vlop value= "DC 1.65 AC pulse(0 3.3 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {vsource.sym} 1330 -1100 0 0 {name=Vlom value="DC 1.65 AC pulse(3.3 0 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {lab_wire.sym} 1030 -1160 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1120 -1150 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 1220 -1150 0 0 {name=p3 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 1330 -1150 0 0 {name=p4 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 260 -1070 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 250 -1050 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 250 -1030 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 250 -1010 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 620 -1060 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 610 -1020 0 0 {name=p10 sig_type=std_logic lab=IFm}
C {capa.sym} 750 -1020 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 660 -980 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 750 -990 0 0 {name=l7 lab=0}
C {gnd.sym} 660 -950 0 0 {name=l8 lab=0}
C {netlist_not_shown.sym} 750 -230 0 0 {name=netlist only_toplevel=false value="

.control

destroy all
save all
write mixer_tb.raw

op
echo RF pair
print @m.x1.xm1.m0[gm]
print @m.x1.xm1.m0[id]
print @m.x1.xm1.m0[vgs]
print @m.x1.xm1.m0[vds]
print @m.x1.xm1.m0[vdsat]

echo LO pair
print @m.x1.xm3.m0[gm]
print @m.x1.xm3.m0[id]
print @m.x1.xm3.m0[vgs]
print @m.x1.xm3.m0[vds]
print @m.x1.xm3.m0[vdsat]

echo nmos tail
print @m.x2.xm6.m0[gm]
print @m.x2.xm6.m0[id]
print @m.x2.xm6.m0[vgs]
print @m.x2.xm6.m0[vds]
print @m.x2.xm6.m0[vdsat]

print i(vmeas)
print i(vmeas1)
print v(ifp) v(ifm)


tran 0.01n 2u ;transient sim
let vrf = V(RF_p)-V(RF_m)
let vif = V(IFp)-V(IFm)

plot V(LO_p)
plot vrf
plot vif

fft vif vrf

plot mag(vif) vs frequency xlimit 0 500Meg
.endc
"}
C {gnd.sym} 410 -940 0 0 {name=l12 lab=0}
C {designs/mixer/schematic/mixer.sym} 430 -1040 0 0 {name=x1}
C {ammeter.sym} 460 -940 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {designs/mirrors/schematic/nmos_mirror_with_enable.sym} 50 -520 0 0 {name=x2}
C {designs/mirrors/schematic/pmos_mirror.sym} -590 -580 0 0 {name=x3}
C {isource.sym} 0 -750 0 0 {name=I0 value=100u}
C {lab_wire.sym} 430 -730 0 0 {name=p11 sig_type=std_logic lab=EN}
C {lab_wire.sym} 430 -410 0 0 {name=p12 sig_type=std_logic lab=EN_B}
C {noconn.sym} 730 -780 0 0 {name=l2}
C {vdd.sym} -120 -980 0 0 {name=l9 lab=VDD}
C {vdd.sym} 250 -630 0 0 {name=l10 lab=VDD}
C {gnd.sym} 250 -500 0 0 {name=l11 lab=0}
C {vsource.sym} 1180 -820 0 0 {name=V3 value=3.3 savecurrent=false}
C {vsource.sym} 1280 -820 0 0 {name=V4 value=0 savecurrent=false}
C {lab_wire.sym} 1180 -880 0 0 {name=p13 sig_type=std_logic lab=EN}
C {lab_wire.sym} 1280 -870 0 0 {name=p14 sig_type=std_logic lab=EN_B}
C {gnd.sym} 1230 -750 0 0 {name=l13 lab=0}
C {gnd.sym} 0 -680 0 0 {name=l14 lab=0}
C {ammeter.sym} 210 -840 3 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
