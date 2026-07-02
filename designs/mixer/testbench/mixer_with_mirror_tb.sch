v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 230 -570 270 -570 {lab=RF_p}
N 230 -550 270 -550 {lab=RF_m}
N 230 -530 270 -530 {lab=LO_p}
N 240 -510 270 -510 {lab=LO_m}
N 400 -470 400 -370 {lab=0}
N 570 -560 610 -560 {lab=IFp}
N 570 -520 610 -520 {lab=IFm}
N 930 -660 930 -630 {lab=0}
N 930 -740 930 -720 {lab=VDD}
N 1020 -660 1020 -630 {lab=0}
N 1020 -630 1070 -630 {lab=0}
N 1070 -630 1110 -630 {lab=0}
N 1110 -660 1110 -630 {lab=0}
N 1110 -630 1210 -630 {lab=0}
N 1210 -660 1210 -630 {lab=0}
N 1210 -630 1320 -630 {lab=0}
N 1320 -660 1320 -630 {lab=0}
N 1020 -760 1020 -720 {lab=RF_p}
N 1110 -760 1110 -720 {lab=RF_m}
N 1210 -760 1210 -720 {lab=LO_p}
N 1320 -760 1320 -720 {lab=LO_m}
N 610 -560 650 -560 {lab=IFp}
N 610 -520 650 -520 {lab=IFm}
N 400 -650 400 -610 {lab=VDD}
N 440 -630 440 -610 {lab=EN}
N 940 -560 940 -530 {lab=EN}
N 940 -470 940 -450 {lab=0}
N 440 -650 440 -630 {lab=EN}
N 440 -470 440 -440 {lab=#net1}
N 440 -440 440 -430 {lab=#net1}
N 440 -370 440 -350 {lab=0}
N 400 -370 400 -360 {lab=0}
N 400 -360 440 -360 {lab=0}
N 650 -560 740 -560 {lab=IFp}
N 740 -560 740 -550 {lab=IFp}
N 650 -520 650 -510 {lab=IFm}
C {vsource.sym} 930 -690 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1020 -690 0 0 {name=Vrfp value="DC 1.1 AC SIN(1.1 5m 100MMeg 0 0 0)" savecurrent=false}
C {vsource.sym} 1110 -690 0 0 {name=Vrfm value="DC 1.1 AC SIN(1.1 5m 100Meg 0 0 180)" savecurrent=false}
C {title.sym} 180 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {gnd.sym} 440 -350 0 0 {name=l2 lab=0}
C {devices/code_shown.sym} 40 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {vdd.sym} 400 -650 0 0 {name=l3 lab=VDD}
C {vdd.sym} 930 -740 0 0 {name=l4 lab=VDD}
C {gnd.sym} 930 -630 0 0 {name=l5 lab=0}
C {gnd.sym} 1160 -630 0 0 {name=l6 lab=0}
C {vsource.sym} 1210 -690 0 0 {name=Vlop value= "DC 1.65 AC pulse(0 3.3 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {vsource.sym} 1320 -690 0 0 {name=Vlom value="DC 1.65 AC pulse(3.3 0 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {lab_wire.sym} 1020 -750 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1110 -740 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 1210 -740 0 0 {name=p3 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 1320 -740 0 0 {name=p4 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 250 -570 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 240 -550 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 240 -530 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 240 -510 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 610 -560 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 600 -520 0 0 {name=p10 sig_type=std_logic lab=IFm}
C {vsource.sym} 940 -500 0 0 {name=Ven value=3.3 savecurrent=false}
C {gnd.sym} 940 -450 0 0 {name=l10 lab=0}
C {lab_wire.sym} 940 -550 0 0 {name=p11 sig_type=std_logic lab=EN}
C {lab_wire.sym} 440 -630 0 0 {name=p12 sig_type=std_logic lab=EN}
C {/foss/designs/NYCMOS/designs/mixer/schematic/mixer.sym} 420 -540 0 0 {name=mix1}
C {isource.sym} 440 -400 0 0 {name=I0 value=125u}
C {capa.sym} 740 -520 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 650 -480 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 740 -490 0 0 {name=l7 lab=0}
C {gnd.sym} 650 -450 0 0 {name=l8 lab=0}
C {netlist_not_shown.sym} 1460 -200 0 0 {name=netlist only_toplevel=false value="

.control

destroy all

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
