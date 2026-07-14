v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 -530 310 -530 {lab=V_i_ref}
N 260 -530 260 -520 {lab=V_i_ref}
N 140 -550 310 -550 {lab=Vin}
N 140 -490 140 -430 {lab=0}
N 140 -380 260 -380 {lab=0}
N 40 -630 40 -550 {lab=VDD}
N 40 -630 350 -630 {lab=VDD}
N 350 -630 350 -610 {lab=VDD}
N 350 -470 350 -430 {lab=0}
N 260 -380 350 -380 {lab=0}
N 40 -380 140 -380 {lab=0}
N 40 -490 40 -430 {lab=0}
N 480 -540 580 -540 {lab=Vout}
N 580 -480 580 -430 {lab=0}
N 350 -380 580 -380 {lab=0}
N 40 -430 40 -380 {lab=0}
N 140 -430 140 -380 {lab=0}
N 260 -460 260 -440 {lab=#net1}
N 350 -430 350 -380 {lab=0}
N 580 -430 580 -380 {lab=0}
N 580 -540 680 -540 {lab=Vout}
N 680 -480 680 -380 {lab=0}
N 580 -380 680 -380 {lab=0}
N 680 -540 780 -540 {lab=Vout}
N 780 -480 780 -380 {lab=0}
N 680 -380 780 -380 {lab=0}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {output_buffer/schematic/output_buffer.sym} 390 -540 0 0 {name=x1}
C {isource.sym} 260 -490 0 0 {name=I_ref_100u value=100u
}
C {vsource.sym} 140 -520 0 0 {name=Vin value="DC 1.35 AC 1" savecurrent=false}
C {vsource.sym} 40 -520 0 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {gnd.sym} 180 -380 0 0 {name=l2 lab=0}
C {res.sym} 580 -510 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1
}
C {code_shown.sym} 0 100 0 0 {name=MODELS5 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - typical - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"
}
C {code_shown.sym} 0 350 0 0 {name=NGSPICE only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
save @m.x1.xm1.m0[gm]
save @m.x1.xm2.m0[gm]
save @m.x1.xm2.m0[gds]
save @m.x1.xm5.m0[gds]

write tb_output_buffer.raw

dc Vin 0.1 3.3 0.01
let gain_slope = deriv(vout)

plot Vin Vout ; input, output
plot Vout vs Vin gain_slope vs vin; output vs input and slope of gain
plot vdb(gain_slope) vs vin; gain slope in db
plot i(vmeas2) i(v.x1.vmeas1) i(v.x1.vmeas2) i(v.x1.vmeas3); internal current biases

plot @m.x1.xm1.m0[gm] @m.x1.xm2.m0[gm]
plot 1/@m.x1.xm2.m0[gds] 1/@m.x1.xm5.m0[gds]

ac dec 10 1 10G
let gain = vout/vin;

plot vdb(gain) ; ac gain
.endc
"
}
C {lab_wire.sym} 200 -630 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 200 -550 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 550 -540 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {ammeter.sym} 260 -410 0 0 {name=vmeas2 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 280 -530 0 0 {name=p4 sig_type=std_logic lab=V_i_ref}
C {res.sym} 680 -510 0 0 {name=R2
value=9Meg
footprint=1206
device=resistor
m=1
}
C {capa.sym} 780 -510 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
