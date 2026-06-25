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
N 440 -470 440 -450 {lab=#net1}
N 400 -470 400 -370 {lab=0}
N 400 -370 440 -370 {lab=0}
N 440 -390 440 -350 {lab=0}
N 420 -650 420 -610 {lab=VDD}
N 570 -560 610 -560 {lab=IFp}
N 570 -520 610 -520 {lab=IFm}
N 720 -570 720 -540 {lab=0}
N 720 -650 720 -630 {lab=VDD}
N 810 -570 810 -540 {lab=0}
N 810 -540 860 -540 {lab=0}
N 860 -540 900 -540 {lab=0}
N 900 -570 900 -540 {lab=0}
N 900 -540 1000 -540 {lab=0}
N 1000 -570 1000 -540 {lab=0}
N 1000 -540 1110 -540 {lab=0}
N 1110 -570 1110 -540 {lab=0}
N 810 -670 810 -630 {lab=RF_p}
N 900 -670 900 -630 {lab=RF_m}
N 1000 -670 1000 -630 {lab=LO_p}
N 1110 -670 1110 -630 {lab=LO_m}
N 610 -560 650 -560 {lab=IFp}
N 610 -520 650 -520 {lab=IFm}
C {vsource.sym} 720 -600 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 810 -600 0 0 {name=Vrfp value="DC 1.1 AC SIN(1.1 5m 100MMeg 0 0 0)" savecurrent=false}
C {vsource.sym} 900 -600 0 0 {name=Vrfm value="DC 1.1 AC SIN(1.1 5m 100Meg 0 0 180)" savecurrent=false}
C {title.sym} 180 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {isource.sym} 440 -420 0 0 {name=I0 value=1m}
C {gnd.sym} 440 -350 0 0 {name=l2 lab=0}
C {devices/code_shown.sym} 40 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 0 -1410 0 0 {name=NGSPICE only_toplevel=true
value="

.control

destroy all
save all
write mixer_tb.raw

op
tran 0.01n 2u

echo RF pair ;print operating points
print @m.xm1_x1.m0[gm]
print @m.xm1_x1.m0[id]
print @m.xm1_x1.m0[vgs]
print @m.xm1_x1.m0[vds]
print @m.xm1_x1.m0[vdsat]

echo LO pair
print @m.xm4_x1.m0[gm]
print @m.xm4_x1.m0[vgs]
print @m.xm4_x1.m0[vds]
print @m.xm4_x1.m0[vdsat]

print @m.xm3_x1.m0[gm]
print @m.xm3_x1.m0[vgs]
print @m.xm3_x1.m0[vds]
print @m.xm3_x1.m0[vdsat]

let vrf = V(RF_p)-V(RF_m)
let vif = V(IFp)-V(IFm)

plot V(LO_p)
plot vrf
plot vif

fft vif vrf

plot mag(vif) vs frequency
.endc
"}
C {vdd.sym} 420 -650 0 0 {name=l3 lab=VDD}
C {vdd.sym} 720 -650 0 0 {name=l4 lab=VDD}
C {gnd.sym} 720 -540 0 0 {name=l5 lab=0}
C {gnd.sym} 950 -540 0 0 {name=l6 lab=0}
C {vsource.sym} 1000 -600 0 0 {name=Vlop value= "DC 1.65 AC pulse(0 3.3 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {vsource.sym} 1110 -600 0 0 {name=Vlom value="DC 1.65 AC pulse(3.3 0 0 200p 200p 6.65n 13.3n)" savecurrent=false}
C {lab_wire.sym} 810 -660 0 0 {name=p1 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 900 -650 0 0 {name=p2 sig_type=std_logic lab=RF_m
}
C {lab_wire.sym} 1000 -650 0 0 {name=p3 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 1110 -650 0 0 {name=p4 sig_type=std_logic lab=LO_m}
C {lab_wire.sym} 250 -570 0 0 {name=p5 sig_type=std_logic lab=RF_p}
C {lab_wire.sym} 240 -550 0 0 {name=p6 sig_type=std_logic lab=RF_m}
C {lab_wire.sym} 240 -530 0 0 {name=p7 sig_type=std_logic lab=LO_p}
C {lab_wire.sym} 240 -510 0 0 {name=p8 sig_type=std_logic lab=LO_m}
C {noconn.sym} 650 -560 0 0 {name=l7}
C {noconn.sym} 650 -520 0 0 {name=l8}
C {/foss/designs/NYCMOS/designs/mixer/schematic/mixer.sym} 420 -540 0 0 {name=x1}
C {lab_wire.sym} 610 -560 0 0 {name=p9 sig_type=std_logic lab=IFp}
C {lab_wire.sym} 600 -520 0 0 {name=p10 sig_type=std_logic lab=IFm}
