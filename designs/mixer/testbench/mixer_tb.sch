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
N 880 -580 880 -550 {lab=0}
N 880 -660 880 -640 {lab=VDD}
N 970 -580 970 -550 {lab=0}
N 970 -550 1020 -550 {lab=0}
N 1020 -550 1060 -550 {lab=0}
N 1170 -580 1170 -550 {lab=0}
N 1060 -550 1160 -550 {lab=0}
N 950 -390 950 -360 {lab=0}
N 950 -360 1060 -360 {lab=0}
N 1190 -390 1190 -360 {lab=0}
N 970 -680 970 -640 {lab=RF_p}
N 1170 -690 1170 -650 {lab=RF_m}
N 950 -490 950 -450 {lab=LO_p}
N 1190 -490 1190 -450 {lab=LO_m}
N 610 -560 650 -560 {lab=IFp}
N 610 -520 650 -520 {lab=IFm}
N 420 -650 420 -610 {lab=VDD}
N 440 -470 440 -440 {lab=Vtail}
N 440 -440 440 -430 {lab=Vtail}
N 440 -370 440 -350 {lab=0}
N 400 -370 400 -360 {lab=0}
N 400 -360 440 -360 {lab=0}
N 650 -560 740 -560 {lab=IFp}
N 740 -560 740 -550 {lab=IFp}
N 650 -520 650 -510 {lab=IFm}
N 1160 -550 1170 -550 {lab=0}
N 1170 -590 1170 -580 {lab=0}
N 1060 -360 1190 -360 {lab=0}
C {vsource.sym} 880 -610 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 970 -610 0 0 {name=Vrfp value="DC 1.3 AC SIN(1.3 .5m 100Meg 0 0 0)" savecurrent=false}
C {vsource.sym} 1170 -620 0 0 {name=Vrfm value="DC 1.3 AC SIN(1.3 .5m 100Meg 0 0 180)" savecurrent=false}
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
C {devices/code_shown.sym} 0 -1410 0 0 {name=NGSPICE only_toplevel=true
value="

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

print V(Vtail)
print V(IFp)

tran 1n 20u ;transient sim
let vrf = V(RF_p)-V(RF_m)
let vif = V(IFp)-V(IFm)

plot V(LO_p)
plot vrf
plot vif

fft vif vrf

plot db(mag(vif)/1e-3) vs frequency xlimit 0 125Meg
.endc
"}
C {vdd.sym} 420 -650 0 0 {name=l3 lab=VDD}
C {vdd.sym} 880 -660 0 0 {name=l4 lab=VDD}
C {gnd.sym} 880 -550 0 0 {name=l5 lab=0}
C {gnd.sym} 1110 -550 0 0 {name=l6 lab=0}
C {vsource.sym} 950 -420 0 0 {name=Vlop value= "DC 1.65 AC pulse(0 3.3 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {vsource.sym} 1190 -420 0 0 {name=Vlom value="DC 1.65 AC pulse(3.3 0 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {lab_wire.sym} 970 -670 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 1170 -670 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 950 -470 0 0 {name=p3 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 1190 -470 0 0 {name=p4 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 250 -570 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 240 -550 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 240 -530 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 240 -510 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 610 -560 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 600 -520 0 0 {name=p10 sig_type=std_logic lab=IFm}
C {designs/mixer/schematic/mixer.sym} 420 -540 0 0 {name=x1}
C {isource.sym} 440 -400 0 0 {name=I0 value=500u}
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
C {gnd.sym} 1100 -360 0 0 {name=l9 lab=0}
C {lab_wire.sym} 440 -450 0 0 {name=p11 sig_type=std_logic lab=Vtail}
