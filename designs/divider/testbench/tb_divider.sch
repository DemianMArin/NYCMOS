v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -340 10 -290 {lab=0}
N 550 -300 550 -170 {lab=0}
N 550 -480 550 -460 {lab=VDD}
N 120 -210 120 -170 {lab=0}
N 10 -170 210 -170 {lab=0}
N 10 -290 10 -170 {lab=0}
N 210 -170 550 -170 {lab=0}
N 10 -470 10 -400 {lab=VDD}
N 10 -480 10 -470 {lab=VDD}
N 10 -480 550 -480 {lab=VDD}
N 210 -380 400 -380 {lab=V_LO_REF}
N 700 -420 810 -420 {lab=V_LOI+}
N 810 -520 810 -420 {lab=V_LOI+}
N 700 -400 830 -400 {lab=V_LOI-}
N 830 -400 840 -400 {lab=V_LOI-}
N 840 -520 840 -400 {lab=V_LOI-}
N 900 -520 940 -520 {lab=0}
N 710 -520 750 -520 {lab=0}
N 900 -260 940 -260 {lab=0}
N 710 -260 750 -260 {lab=0}
N 700 -360 840 -360 {lab=V_LOQ+}
N 840 -360 840 -260 {lab=V_LOQ+}
N 700 -340 810 -340 {lab=V_LOQ-}
N 810 -340 810 -260 {lab=V_LOQ-}
N 120 -380 210 -380 {lab=V_LO_REF}
N 120 -320 120 -210 {lab=0}
N 230 -220 230 -170 {lab=0}
N 230 -350 230 -280 {lab=V_EN}
N 230 -350 400 -350 {lab=V_EN}
C {title.sym} 160 -30 0 0 {name=LO Divider author="Lei Chen"}
C {code_shown.sym} 0 60 0 0 {name=MODELS only_toplevel=true  
format="tcleval( @value )" 
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {code_shown.sym} 0 360 0 0 {name=NGSPICE only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
write tb_divider.raw
wrdata /foss/designs/Divider_design/tb_divider.txt

op
print v(V_LOI+) v(V_LOI-)


;transient analysis
tran 0.01ns 10us 


plot v(V_LO_REF) v(x1.LOI+_INTERNAL) v(x1.LOI-_INTERNAL) v(x1.LOQ+_INTERNAL) v(x1.LOQ-_INTERNAL) ;plot internal signals
plot v(V_LO_REF) v(V_LOI+)+3 v(V_LOI-)+3  v(V_LOQ+)-3 v(V_LOQ-)-3 ;plot divider output
plot v(V_LO_REF) v(V_LOI+)-v(V_LOI-) v(V_LOQ+)-v(V_LOQ-); plot differential output
;plot v(V_EN) v(x1.EN_BAR) v(x1.LO_REF_GATED) v(x1.LO_REF_BAR); plot enable signal and clock signal status

plot i(vdd)*2.5 ;transient power

;plot i(v.x1.v1) plot i(v.x1.v2)
;plot v(V_LO_REF) v(x1.LO_REF_BAR)


;fft of input and output 
;let V_LOI = v(V_LOI+,V_LOI-)
;let V_LOQ = v(V_LOQ+, V_LOQ-)
;let LO_REF_slice = v(V_LO_REF)[1000,9000] ; LO_REF transient output from t=10ns to t=100ns (0.01ns resolution at index 100 to index 10000)
;let LOI_slice = v(V_LOI)[1000,9000];
;let LOQ_slice = v(V_LOQ)[1000,9000];
;linearize np=auto2n v(LO_REF_slice) v(LOI_slice) v(LOQ__slice)
;fft v(LO_REF_slice) v(LOI_slice) v(LOQ_slice)
;plot mag(LO_REF_slice) mag(LOI_slice) mag(LOQ_slice)



.endc
"}
C {vsource.sym} 10 -370 0 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {vsource.sym} 120 -350 0 0 {name=V_LO_REF value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 2.5n 5n )" savecurrent=false}
C {Divider_design/divider.sym} 550 -380 0 0 {name=x1}
C {gnd.sym} 230 -170 0 0 {name=l1 lab=0}
C {lab_wire.sym} 290 -380 0 0 {name=p1 sig_type=std_logic lab=V_LO_REF}
C {lab_wire.sym} 290 -480 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {capa.sym} 870 -520 3 0 {name=C1
m=1
value=30f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 780 -520 1 0 {name=C2
m=1
value=30f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 870 -260 3 0 {name=C3
m=1
value=30f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 780 -260 1 0 {name=C4
m=1
value=30f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 750 -420 0 0 {name=p3 sig_type=std_logic lab=V_LOI+}
C {lab_wire.sym} 790 -400 0 0 {name=p4 sig_type=std_logic lab=V_LOI-}
C {lab_wire.sym} 760 -360 0 0 {name=p5 sig_type=std_logic lab=V_LOQ+}
C {lab_wire.sym} 800 -340 0 0 {name=p6 sig_type=std_logic lab=V_LOQ-}
C {lab_wire.sym} 730 -260 0 0 {name=p7 sig_type=std_logic lab=0}
C {lab_wire.sym} 920 -260 0 0 {name=p8 sig_type=std_logic lab=0}
C {lab_wire.sym} 740 -520 0 0 {name=p9 sig_type=std_logic lab=0}
C {lab_wire.sym} 930 -520 0 0 {name=p10 sig_type=std_logic lab=0}
C {vsource.sym} 350 -250 0 0 {name=V_EN value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 25n 50n )" savecurrent=false
spice_ignore=true}
C {lab_wire.sym} 330 -350 0 0 {name=p11 sig_type=std_logic lab=V_EN}
C {vsource.sym} 230 -250 0 0 {name=VDD1 value="PAR_VDD" savecurrent=false}
