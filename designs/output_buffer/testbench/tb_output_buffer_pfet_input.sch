v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -390 140 -330 {lab=0}
N 140 -280 260 -280 {lab=0}
N 40 -630 40 -550 {lab=VDD}
N 40 -630 350 -630 {lab=VDD}
N 350 -630 350 -610 {lab=VDD}
N 350 -370 350 -330 {lab=0}
N 260 -280 350 -280 {lab=0}
N 40 -280 140 -280 {lab=0}
N 40 -390 40 -330 {lab=0}
N 480 -520 580 -520 {lab=Vout}
N 580 -380 580 -330 {lab=0}
N 350 -280 580 -280 {lab=0}
N 40 -330 40 -280 {lab=0}
N 140 -330 140 -280 {lab=0}
N 260 -360 260 -340 {lab=#net1}
N 350 -330 350 -280 {lab=0}
N 580 -330 580 -280 {lab=0}
N 580 -520 680 -520 {lab=Vout}
N 680 -380 680 -280 {lab=0}
N 580 -280 680 -280 {lab=0}
N 680 -520 780 -520 {lab=Vout}
N 780 -380 780 -280 {lab=0}
N 680 -280 780 -280 {lab=0}
N 40 -490 40 -390 {lab=0}
N 260 -510 260 -420 {lab=V_i_ref}
N 260 -510 300 -510 {lab=V_i_ref}
N 140 -530 140 -450 {lab=Vin}
N 140 -530 300 -530 {lab=Vin}
N 470 -520 480 -520 {lab=Vout}
N 580 -460 580 -380 {lab=0}
N 680 -460 680 -380 {lab=0}
N 780 -460 780 -380 {lab=0}
N 350 -430 350 -370 {lab=0}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {isource.sym} 260 -390 2 0 {name=I_ref_100u value=1m
}
C {vsource.sym} 140 -420 0 0 {name=Vin value="DC 1.1 AC 1" savecurrent=false}
C {vsource.sym} 40 -520 0 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {gnd.sym} 180 -280 0 0 {name=l2 lab=0}
C {res.sym} 580 -490 0 0 {name=R1
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
save @m.x1.xm8.m0[gm]
save @m.x1.xm9.m0[gm]
save @m.x1.xm9.m0[gds]
save @m.x1.xm10.m0[gds]

write tb_output_buffer.raw

dc Vin 0.1 3.3 0.01

plot Vout Vin ; input, output
plot Vout vs Vin ; transfer function
plot i(vmeas2) i(v.x1.vmeas4) i(v.x1.vmeas5) i(v.x1.vmeas6) i(v.x1.v_i_bias_pmos) i(v.x1.v_i_bias_nmos); internal current biases 

plot @m.x1.xm8.m0[gm] @m.x1.xm9.m0[gm]
plot 1/@m.x1.xm9.m0[gds] 1/@m.x1.xm10.m0[gds]

;ac dec 10 1 200Meg
;let gain = vout/vin;

;plot vdb(gain) ; ac gain
.endc
"
}
C {lab_wire.sym} 200 -630 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 200 -530 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 550 -520 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {ammeter.sym} 260 -310 0 0 {name=vmeas2 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 260 -440 0 0 {name=p4 sig_type=std_logic lab=V_i_ref}
C {res.sym} 680 -490 0 0 {name=R2
value=9Meg
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {capa.sym} 780 -490 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {output_buffer/schematic/output_buffer_pfet_input.sym} 320 -520 0 0 {name=x1}
