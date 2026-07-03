v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -930 280 -930 {lab=RF_p}
N 240 -910 280 -910 {lab=RF_m}
N 240 -890 280 -890 {lab=LO_p}
N 250 -870 280 -870 {lab=LO_m}
N 580 -920 620 -920 {lab=IFp}
N 580 -880 620 -880 {lab=IFm}
N 940 -930 940 -900 {lab=0}
N 940 -1010 940 -990 {lab=VDD}
N 1030 -930 1030 -900 {lab=0}
N 1030 -900 1080 -900 {lab=0}
N 1080 -900 1120 -900 {lab=0}
N 1120 -930 1120 -900 {lab=0}
N 1120 -900 1220 -900 {lab=0}
N 1220 -930 1220 -900 {lab=0}
N 1220 -900 1330 -900 {lab=0}
N 1330 -930 1330 -900 {lab=0}
N 1030 -1030 1030 -990 {lab=RF_p}
N 1120 -1030 1120 -990 {lab=RF_m}
N 1220 -1030 1220 -990 {lab=LO_p}
N 1330 -1030 1330 -990 {lab=LO_m}
N 620 -920 660 -920 {lab=IFp}
N 620 -880 660 -880 {lab=IFm}
N 430 -1010 430 -970 {lab=VDD}
N 660 -920 750 -920 {lab=IFp}
N 750 -920 750 -910 {lab=IFp}
N 660 -880 660 -870 {lab=IFm}
N 320 -410 320 -360 {lab=#net1}
N 190 -480 190 -460 {lab=0}
N 190 -480 210 -480 {lab=0}
N 180 -600 180 -590 {lab=VDD}
N 180 -590 210 -590 {lab=VDD}
N 320 -300 320 -280 {lab=0}
N 630 -730 630 -710 {lab=#net2}
N 410 -830 410 -800 {lab=0}
N 450 -830 460 -830 {lab=#net3}
N 570 -710 630 -710 {lab=#net2}
N 570 -710 570 -660 {lab=#net2}
N 630 -710 680 -710 {lab=#net2}
N 680 -710 680 -660 {lab=#net2}
N 680 -710 790 -710 {lab=#net2}
N 790 -710 790 -660 {lab=#net2}
N 1150 -790 1150 -720 {lab=VDD}
N 1150 -790 1420 -790 {lab=VDD}
N 1420 -790 1710 -790 {lab=VDD}
N 1710 -790 1710 -730 {lab=VDD}
N 1420 -790 1420 -720 {lab=VDD}
N 1150 -570 1150 -530 {lab=0}
N 1150 -530 1420 -530 {lab=0}
N 1420 -570 1420 -530 {lab=0}
N 1420 -530 1710 -530 {lab=0}
N 1710 -580 1710 -530 {lab=0}
N 1320 -530 1320 -500 {lab=0}
N 910 -600 950 -600 {lab=EN0}
N 910 -580 950 -580 {lab=EN1}
N 910 -560 950 -560 {lab=EN2}
N 910 -500 950 -500 {lab=EN0_B}
N 910 -480 950 -480 {lab=EN1_B}
N 910 -460 950 -460 {lab=EN2_B}
N 1010 -650 1050 -650 {lab=EN0}
N 1240 -650 1270 -650 {lab=EN0_B}
N 1300 -650 1320 -650 {lab=EN1}
N 1510 -650 1540 -650 {lab=EN1_B}
N 1570 -660 1610 -660 {lab=EN2}
N 1800 -660 1830 -660 {lab=EN2_B}
N 1230 -420 1230 -380 {lab=EN0}
N 1340 -420 1340 -380 {lab=EN1}
N 1440 -420 1440 -380 {lab=EN2}
N 1230 -320 1230 -280 {lab=0}
N 1230 -280 1340 -280 {lab=0}
N 1340 -280 1440 -280 {lab=0}
N 1440 -320 1440 -280 {lab=0}
N 1340 -320 1340 -280 {lab=0}
N 1340 -280 1340 -270 {lab=0}
N 450 -770 460 -770 {lab=#net4}
N 450 -770 450 -660 {lab=#net4}
C {vsource.sym} 940 -960 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1030 -960 0 0 {name=Vrfp value="DC 1.3 AC SIN(1.3 5m 100MMeg 0 0 0)" savecurrent=false}
C {vsource.sym} 1120 -960 0 0 {name=Vrfm value="DC 1.3 AC SIN(1.3 5m 100Meg 0 0 180)" savecurrent=false}
C {title.sym} 180 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {devices/code_shown.sym} 40 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vdd.sym} 430 -1010 0 0 {name=l3 lab=VDD}
C {vdd.sym} 940 -1010 0 0 {name=l4 lab=VDD}
C {gnd.sym} 940 -900 0 0 {name=l5 lab=0}
C {gnd.sym} 1170 -900 0 0 {name=l6 lab=0}
C {vsource.sym} 1220 -960 0 0 {name=Vlop value= "DC 1.65 AC pulse(0 3.3 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {vsource.sym} 1330 -960 0 0 {name=Vlom value="DC 1.65 AC pulse(3.3 0 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {lab_wire.sym} 1030 -1020 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1120 -1010 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 1220 -1010 0 0 {name=p3 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 1330 -1010 0 0 {name=p4 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 260 -930 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 250 -910 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 250 -890 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 250 -870 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 620 -920 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 610 -880 0 0 {name=p10 sig_type=std_logic lab=IFm}
C {capa.sym} 750 -880 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 660 -840 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 750 -850 0 0 {name=l7 lab=0}
C {gnd.sym} 660 -810 0 0 {name=l8 lab=0}
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
print @m.x2.x2.xm2.m0[gm]
print @m.x2.x2.xm2.m0[id]
print @m.x2.x2.xm2.m0[vgs]
print @m.x2.x2.xm2.m0[vds]
print @m.x2.x2.xm2.m0[vdsat]

print i(vmeas)
tran 0.01n 2u ;transient sim
let vrf = V(RF_p)-V(RF_m)
let vif = V(IFp)-V(IFm)

plot V(LO_p)
plot vrf
plot vif

fft vif vrf

plot mag(vif) vs frequency
.endc
"}
C {isource.sym} 320 -330 0 0 {name=I0 value=100u}
C {gnd.sym} 190 -460 0 0 {name=l2 lab=0}
C {vdd.sym} 180 -600 0 0 {name=l9 lab=VDD}
C {gnd.sym} 320 -280 0 0 {name=l10 lab=0}
C {noconn.sym} 630 -730 0 0 {name=l11}
C {gnd.sym} 410 -800 0 0 {name=l12 lab=0}
C {/foss/designs/NYCMOS/designs/mixer/schematic/mixer.sym} 430 -900 0 0 {name=x1}
C {ammeter.sym} 460 -800 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/mirror_network_with_enable.sym} -170 -430 0 0 {name=x2}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1420 -660 0 0 {name=x3}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1150 -660 0 0 {name=x4}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/inv.sym} 1710 -670 0 0 {name=x5}
C {vdd.sym} 1420 -790 0 0 {name=l13 lab=VDD}
C {gnd.sym} 1320 -500 0 0 {name=l14 lab=0}
C {lab_wire.sym} 930 -600 0 0 {name=p11 sig_type=std_logic lab=EN0}
C {lab_wire.sym} 950 -580 0 0 {name=p12 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 950 -560 0 0 {name=p13 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 940 -500 0 0 {name=p14 sig_type=std_logic lab=EN0_B}
C {lab_wire.sym} 940 -480 0 0 {name=p15 sig_type=std_logic lab=EN1_B}
C {lab_wire.sym} 940 -460 0 0 {name=p16 sig_type=std_logic lab=EN2_B}
C {lab_wire.sym} 1030 -650 0 0 {name=p17 sig_type=std_logic lab=EN0}
C {lab_wire.sym} 1260 -650 0 0 {name=p18 sig_type=std_logic lab=EN0_B}
C {lab_wire.sym} 1310 -650 0 0 {name=p19 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 1530 -650 0 0 {name=p20 sig_type=std_logic lab=EN1_B}
C {lab_wire.sym} 1590 -660 0 0 {name=p21 sig_type=std_logic lab=EN2}
C {lab_wire.sym} 1820 -660 0 0 {name=p22 sig_type=std_logic lab=EN2_B}
C {vsource.sym} 1230 -350 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 1340 -350 0 0 {name=V3 value=3.3 savecurrent=false}
C {vsource.sym} 1440 -350 0 0 {name=V4 value=3.3 savecurrent=false}
C {lab_wire.sym} 1230 -410 0 0 {name=p23 sig_type=std_logic lab=EN0}
C {lab_wire.sym} 1340 -400 0 0 {name=p24 sig_type=std_logic lab=EN1}
C {lab_wire.sym} 1440 -400 0 0 {name=p25 sig_type=std_logic lab=EN2}
C {gnd.sym} 1340 -270 0 0 {name=l15 lab=0}
