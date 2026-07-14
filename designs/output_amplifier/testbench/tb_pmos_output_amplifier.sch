v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -540 130 -530 {lab=#net1}
N 130 -540 200 -540 {lab=#net1}
N 200 -550 200 -540 {lab=#net1}
N 200 -540 200 -530 {lab=#net1}
N 440 -610 440 -560 {lab=Vi_p}
N 460 -560 470 -560 {lab=Vi_p}
N 200 -470 440 -470 {lab=Vi_m}
N 440 -540 440 -470 {lab=Vi_m}
N 440 -540 470 -540 {lab=Vi_m}
N 440 -620 440 -610 {lab=Vi_p}
N 200 -620 440 -620 {lab=Vi_p}
N 200 -620 200 -610 {lab=Vi_p}
N 130 -470 130 -370 {lab=0}
N 130 -370 520 -370 {lab=0}
N 520 -440 520 -370 {lab=0}
N 80 -610 80 -370 {lab=0}
N 80 -370 130 -370 {lab=0}
N 80 -690 80 -670 {lab=xxx}
N 80 -690 520 -690 {lab=xxx}
N 520 -690 520 -660 {lab=xxx}
N 440 -560 460 -560 {lab=Vi_p}
N 650 -530 750 -530 {lab=Vo_m}
N 650 -570 750 -570 {lab=Vo_p}
N 750 -470 750 -450 {lab=0}
N 750 -650 750 -630 {lab=0}
N 460 -410 460 -370 {lab=0}
N 460 -510 460 -470 {lab=i_tail}
N 460 -510 470 -510 {lab=i_tail}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {output_amplifier/schematic/pmos_output_buffer.sym} 490 -550 0 0 {name=x1}
C {vsource.sym} 80 -640 0 0 {name=VDD value='PAR_VDD' savecurrent=false}
C {vsource.sym} 130 -500 0 0 {name=VCM value=2.85 savecurrent=false}
C {vsource.sym} 200 -580 0 0 {name=Vi_p value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} 200 -500 0 0 {name=Vi_m value="DC 0 AC 0.5" savecurrent=false}
C {capa.sym} 750 -600 2 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 750 -500 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 310 -470 0 0 {name=p1 sig_type=std_logic lab=Vi_m}
C {lab_wire.sym} 310 -620 0 0 {name=p2 sig_type=std_logic lab=Vi_p}
C {lab_wire.sym} 300 -690 0 0 {name=p3 sig_type=std_logic lab=xxx}
C {lab_wire.sym} 710 -570 0 0 {name=p4 sig_type=std_logic lab=Vo_p}
C {lab_wire.sym} 710 -530 0 0 {name=p5 sig_type=std_logic lab=Vo_m}
C {lab_wire.sym} 750 -640 0 0 {name=p6 sig_type=std_logic lab=0}
C {lab_wire.sym} 750 -450 0 0 {name=p7 sig_type=std_logic lab=0}
C {gnd.sym} 300 -370 0 0 {name=l2 lab=0}
C {code_shown.sym} 0 70 0 0 {name=MODELS5 only_toplevel=true  
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
C {code_shown.sym} 0 320 0 0 {name=NGSPICE only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
save @m.x1.xm1.m0[gm]
save @m.x1.xm2.m0[gm]
save @m.x1.xm1.m0[gds]
save @m.x1.xm2.m0[gds]
save @m.x1.xm1.m0[vdsat]
save @m.x1.xm2.m0[vdsat]
save @m.x1.xm1.m0[vth]
save @m.x1.xm2.m0[vth]

write tb_pmos_output_amplifier.raw

dc Vcm 0.1 3.3 0.01
let vi = vi_p - vi_m
let vo = vo_p - vo_m
let vsg_p = i_tail - vi_p
let v_ov_p = vsg_p - @m.x1.xm1.m0[vth]

plot Vi Vo ; input, output
plot i_tail vi_p vi_m vo_p vo_m; virtual ground node, gate voltage and output voltage
plot v_ov_p @m.x1.xm1.m0[vdsat]; v_overdrive vs vdsat
plot i(v.x1.v_i_bias_800u)

plot @m.x1.xm1.m0[gm] @m.x1.xm2.m0[gm]
plot 1/@m.x1.xm1.m0[gds] 1/@m.x1.xm2.m0[gds]

;ac dec 10 1 10G
;let gain = vout/vin;

;plot vdb(gain) ; ac gain
.endc
"
}
C {isource.sym} 460 -440 0 0 {name=I0 value=100u}
C {lab_wire.sym} 460 -510 0 0 {name=p8 sig_type=std_logic lab=i_tail}
