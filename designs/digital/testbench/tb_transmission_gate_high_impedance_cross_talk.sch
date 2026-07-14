v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -940 560 -940 {lab=Vout}
N 620 -940 620 -690 {lab=Vout}
N 460 -690 560 -690 {lab=Vout}
N 560 -940 620 -940 {lab=Vout}
N 560 -690 620 -690 {lab=Vout}
N 900 -490 900 -440 {lab=0}
N 900 -440 1260 -440 {lab=0}
N 1260 -490 1260 -440 {lab=0}
N 1170 -490 1170 -440 {lab=0}
N 1090 -490 1090 -440 {lab=0}
N 990 -490 990 -450 {lab=0}
N 990 -450 990 -440 {lab=0}
N 900 -630 900 -550 {lab=VDD}
N 990 -630 990 -550 {lab=Vi_1}
N 1090 -630 1090 -550 {lab=Vi_2}
N 1170 -630 1170 -550 {lab=V_en_1}
N 1260 -630 1260 -550 {lab=V_en_2}
N 620 -800 670 -800 {lab=Vout}
N 760 -800 760 -790 {lab=#net1}
N 740 -800 760 -800 {lab=#net1}
N 670 -800 680 -800 {lab=Vout}
N 760 -730 760 -690 {lab=0}
N 360 -800 360 -780 {lab=VDD}
N 330 -800 360 -800 {lab=VDD}
N 360 -850 360 -840 {lab=0}
N 330 -840 360 -840 {lab=0}
N 360 -1040 360 -1030 {lab=VDD}
N 340 -1040 360 -1040 {lab=VDD}
N 230 -910 260 -910 {lab=V_en_1}
N 230 -660 260 -660 {lab=V_en_2}
N 360 -600 360 -580 {lab=0}
N 310 -580 360 -580 {lab=0}
N 230 -940 260 -940 {lab=#net2}
N 140 -940 170 -940 {lab=Vi_1}
N 230 -690 260 -690 {lab=#net3}
N 140 -690 170 -690 {lab=Vi_2}
N 1350 -630 1350 -550 {lab=Vi_ac}
N 1350 -490 1350 -440 {lab=0}
N 1260 -440 1350 -440 {lab=0}
N 170 -380 260 -380 {lab=Vi_ac}
N 360 -290 360 -240 {lab=0}
N 360 -480 360 -470 {lab=VDD}
N 360 -480 390 -480 {lab=VDD}
N 460 -380 520 -380 {lab=Vo_ac}
N 200 -350 260 -350 {lab=VDD}
N 520 -320 520 -290 {lab=0}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {digital/schematic/transmission_gate_high_impedance.sym} 360 -940 0 0 {name=x1}
C {digital/schematic/transmission_gate_high_impedance.sym} 360 -690 0 0 {name=x2}
C {vsource.sym} 900 -520 0 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {vsource.sym} 990 -520 0 0 {name=Vi_1 value="pulse(0 3.3 0 500p 500p 7n 13n)" savecurrent=false}
C {vsource.sym} 1090 -520 0 0 {name=Vi_2 value="DC 0 AC 0 pulse(0 3.3 2n 500p 500p 5n 19n)" savecurrent=false}
C {vsource.sym} 1170 -520 0 0 {name=V_en_1 value="DC 0 AC 0 pulse(0 3.3 1u 500p 500p 1u 2u)" savecurrent=false}
C {vsource.sym} 1260 -520 0 0 {name=V_en_2 value="pulse(0 3.3 0 500p 500p 1u 2u)" savecurrent=false}
C {lab_wire.sym} 900 -610 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 1040 -440 0 0 {name=l2 lab=0}
C {lab_wire.sym} 990 -610 0 0 {name=p2 sig_type=std_logic lab=Vi_1}
C {lab_wire.sym} 1090 -610 0 0 {name=p3 sig_type=std_logic lab=Vi_2}
C {lab_wire.sym} 1170 -610 0 0 {name=p4 sig_type=std_logic lab=V_en_1}
C {lab_wire.sym} 1260 -610 0 0 {name=p5 sig_type=std_logic lab=V_en_2}
C {ammeter.sym} 710 -800 3 0 {name=V_i_load savecurrent=true spice_ignore=0}
C {lab_wire.sym} 350 -1040 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -800 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -840 0 0 {name=p8 sig_type=std_logic lab=0}
C {lab_wire.sym} 340 -580 0 0 {name=p9 sig_type=std_logic lab=0}
C {lab_wire.sym} 150 -940 0 0 {name=p10 sig_type=std_logic lab=Vi_1}
C {lab_wire.sym} 150 -690 0 0 {name=p11 sig_type=std_logic lab=Vi_2}
C {lab_wire.sym} 240 -910 0 0 {name=p12 sig_type=std_logic lab=V_en_1}
C {lab_wire.sym} 250 -660 0 0 {name=p13 sig_type=std_logic lab=V_en_2}
C {ammeter.sym} 200 -940 3 0 {name=V_i_1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 200 -690 3 0 {name=V_i_2 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 760 -700 0 0 {name=p14 sig_type=std_logic lab=0}
C {lab_wire.sym} 620 -800 0 1 {name=p15 sig_type=std_logic lab=Vout}
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

write tb_transmission_gate_high_impedance_cross_talk.raw

tran 0.1n 10u

plot vi_1 vi_2 v_en_1 v_en_2 vout xlimit 20n 40n
plot i(v_i_1) i(v_i_2) i(v_i_load) xlimit 20n 40n

ac dec 10 1 10G
plot vdb(vo_ac) vs frequency
meas ac f_3db when vdb(vo_ac)=-3
.endc
"
}
C {capa.sym} 760 -760 0 0 {name=C1
m=1
value=4p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 1350 -520 0 0 {name=V_ac value="DC 0 AC 1" savecurrent=false}
C {lab_wire.sym} 1350 -600 0 1 {name=p16 sig_type=std_logic lab=Vi_ac}
C {digital/schematic/transmission_gate_high_impedance.sym} 360 -380 0 0 {name=x3}
C {capa.sym} 520 -350 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 360 -260 0 0 {name=p17 sig_type=std_logic lab=0}
C {lab_wire.sym} 390 -480 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 240 -350 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 210 -380 0 1 {name=p20 sig_type=std_logic lab=Vi_ac}
C {lab_wire.sym} 480 -380 0 1 {name=p21 sig_type=std_logic lab=Vo_ac}
C {lab_wire.sym} 520 -300 0 0 {name=p22 sig_type=std_logic lab=0}
