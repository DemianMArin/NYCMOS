v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -690 360 -690 {lab=V_LO_p}
N 170 -670 360 -670 {lab=V_LO_m}
N 1170 -780 1170 -750 {lab=V_LO_p}
N 1070 -780 1070 -750 {lab=VDD}
N 1070 -690 1070 -660 {lab=0}
N 1070 -660 1170 -660 {lab=0}
N 1170 -690 1170 -660 {lab=0}
N 660 -720 710 -720 {lab=IF_p}
N 660 -680 710 -680 {lab=IF_m}
N 530 -630 530 -590 {lab=V_tail}
N 490 -630 490 -610 {lab=0}
N 460 -610 490 -610 {lab=0}
N 510 -790 510 -770 {lab=VDD}
N 530 -430 530 -400 {lab=VDD}
N 1170 -660 1430 -660 {lab=0}
N 1290 -680 1290 -660 {lab=0}
N 1290 -770 1290 -740 {lab=V_RF_p}
N 320 -730 360 -730 {lab=V_RF_p}
N 320 -710 360 -710 {lab=V_RF_m}
N 530 -590 530 -580 {lab=V_tail}
N 530 -520 530 -500 {lab=#net1}
N 530 -500 530 -490 {lab=#net1}
N 1170 -610 1170 -590 {lab=V_LO_m}
N 1170 -610 1240 -610 {lab=V_LO_m}
N 1170 -530 1170 -500 {lab=0}
N 1380 -680 1380 -660 {lab=0}
N 1380 -760 1380 -740 {lab=V_RF_m}
N 740 -720 770 -720 {lab=IF_p}
N 720 -720 740 -720 {lab=IF_p}
N 710 -720 720 -720 {lab=IF_p}
N 790 -830 790 -780 {lab=0}
N 790 -620 790 -550 {lab=0}
N 710 -680 780 -680 {lab=IF_m}
N 780 -680 790 -680 {lab=IF_m}
N 770 -720 790 -720 {lab=IF_p}
C {title.sym} 170 -30 0 0 {name=l1 author="Lei Chen"}
C {mixer/schematic/Lei_mixer.sym} 510 -700 0 0 {name=x1}
C {vsource.sym} 1070 -720 0 0 {name=VDD value=3.3 savecurrent=false}
C {vsource.sym} 1170 -720 0 0 {name=V2 value="dc 0 pulse(0 3.3 0 500p 500p 16.65n 33.3n)" savecurrent=false
}
C {lab_wire.sym} 1070 -760 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1170 -760 0 0 {name=p2 sig_type=std_logic lab=V_LO_p}
C {gnd.sym} 1110 -660 0 0 {name=l2 lab=0}
C {lab_wire.sym} 510 -780 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 480 -610 0 0 {name=p8 sig_type=std_logic lab=0
}
C {isource.sym} 530 -460 2 0 {name=I0 value=500u
}
C {lab_wire.sym} 530 -410 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 690 -720 0 0 {name=p12 sig_type=std_logic lab=IF_p}
C {lab_wire.sym} 690 -680 0 0 {name=p13 sig_type=std_logic lab=IF_m}
C {devices/code_shown.sym} 0 350 0 0 {name=NGSPICE only_toplevel=true
value="

.control

destroy all
save all
write tb_LEI_pmos_mixer.raw



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

save @m.x1.xm1.m0[gm]
save @m.x1.xm3.m0[gm]

dc V_RF_CM 0.01 3.3 0.1

plot V_RF_CM if_p if_m
plot i(v_i_tail) i(v.x1.v_i_branch_1) i(v.x1.v_i_branch_2)
plot @m.x1.xm1.m0[gm] @m.x1.xm3.m0[gm]



tran .1n 10u ;transient sim
let vrf = V(V_RF_p)-V(V_RF_m)
let vif = V(IF_p)-V(IF_m)
let vlo = v_lo_p - v_lo_m
;let vif_filtered = if_p_filtered - if_m_filtered

plot V(V_LO_p) v_LO_m
plot if_p if_m
plot vrf 
;plot vif vif_filtered
plot i(v_i_tail) i(v.x1.v_i_branch_1) i(v.x1.v_i_branch_2)

fft vif vrf vlo ;vif_filtered

plot db(vif) vs frequency xlimit 0 200Meg
;plot db(vif_filtered) vs frequency xlimit 0 200MEG
plot db(vrf) vs frequency xlimit 0 200Meg
plot db(vlo) vs frequency xlimit 0 1G
.endc
"}
C {vsource.sym} 1290 -710 0 0 {name=V_RF_p value="DC 0 ac 0 SIN(.85 5m 75Meg 0 0 0)" savecurrent=false}
C {vsource.sym} 1380 -710 0 0 {name=V_RF_m value="DC 0 ac 0 SIN(.85 5m 75Meg 0 0 180)" savecurrent=false}
C {lab_wire.sym} 1290 -750 0 1 {name=p14 sig_type=std_logic lab=V_RF_p}
C {lab_wire.sym} 1380 -750 0 1 {name=p15 sig_type=std_logic lab=V_RF_m}
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
C {ammeter.sym} 530 -550 2 0 {name=v_i_tail savecurrent=true spice_ignore=0}
C {vsource.sym} 1170 -560 0 0 {name=V1 value="dc 0 pulse(3.3 0 0 500p 500p 16.65n 33.3n)" savecurrent=false
}
C {lab_wire.sym} 1170 -510 0 0 {name=p5 sig_type=std_logic lab=0
}
C {lab_wire.sym} 1170 -610 0 1 {name=p6 sig_type=std_logic lab=V_LO_m}
C {lab_wire.sym} 350 -690 0 0 {name=p4 sig_type=std_logic lab=V_LO_p}
C {lab_wire.sym} 350 -670 0 0 {name=p7 sig_type=std_logic lab=V_LO_m}
C {lab_wire.sym} 350 -730 0 0 {name=p16 sig_type=std_logic lab=V_RF_p}
C {lab_wire.sym} 350 -710 0 0 {name=p17 sig_type=std_logic lab=V_RF_m}
C {capa.sym} 790 -750 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 790 -650 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 790 -570 0 0 {name=p10 sig_type=std_logic lab=0
}
C {lab_wire.sym} 790 -820 0 0 {name=p11 sig_type=std_logic lab=0
}
C {lab_wire.sym} 530 -600 0 1 {name=p18 sig_type=std_logic lab=V_tail}
