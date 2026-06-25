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
N 700 -420 810 -420 {lab=V_LOI_p}
N 810 -520 810 -420 {lab=V_LOI_p}
N 700 -400 830 -400 {lab=V_LOI_n}
N 830 -400 840 -400 {lab=V_LOI_n}
N 840 -520 840 -400 {lab=V_LOI_n}
N 900 -520 940 -520 {lab=0}
N 710 -520 750 -520 {lab=0}
N 900 -260 940 -260 {lab=0}
N 710 -260 750 -260 {lab=0}
N 700 -360 840 -360 {lab=V_LOQ_p}
N 840 -360 840 -260 {lab=V_LOQ_p}
N 700 -340 810 -340 {lab=V_LOQ_n}
N 810 -340 810 -260 {lab=V_LOQ_n}
N 120 -380 210 -380 {lab=V_LO_REF}
N 120 -320 120 -210 {lab=0}
N 230 -220 230 -170 {lab=0}
N 230 -350 230 -280 {lab=V_EN}
N 230 -350 400 -350 {lab=V_EN}
N 520 -300 550 -300 {lab=0}
N 520 -460 550 -460 {lab=VDD}
N 680 -420 700 -420 {lab=V_LOI_p}
N 670 -420 680 -420 {lab=V_LOI_p}
N 670 -400 700 -400 {lab=V_LOI_n}
N 670 -360 700 -360 {lab=V_LOQ_p}
N 670 -340 700 -340 {lab=V_LOQ_n}
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

op
print v(V_LOI_p) v(V_LOI_n)


;transient analysis
tran 0.1ns 1us 

plot v(V_LO_REF) v(V_LOI_p)+4 v(V_LOI_n)+4  v(V_LOQ_p)-4 v(V_LOQ_n)-4 xlimit 10n 20n;plot divider output
plot v(V_LO_REF) v(V_LOI_p)-v(V_LOI_n) v(V_LOQ_p)-v(V_LOQ_n) xlimit 10n 20n; plot differential output
;plot v(V_EN) v(x1.EN_BAR) v(x1.LO_REF_GATED) v(x1.LO_REF_BAR); plot enable signal and clock signal status

plot i(vdd)*3.3 ;transient power

;plot i(v.x1.v1) plot i(v.x1.v2)
;plot v(V_LO_REF) v(x1.LO_REF_BAR)


;fft of input and output 
let V_LOI = v_loi_p - v_loi_n
let V_LOQ = v_loq_p - v_loq_n
linearize v(V_LOI) v(v_loq)
fft v(V_LOI) v(v_loq)
plot mag(v(V_LOI)) vs frequency mag(v(v_loq)) vs frequency



.endc
"}
C {vsource.sym} 10 -370 0 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {vsource.sym} 120 -350 0 0 {name=V_LO_REF value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 2.5n 5n )" savecurrent=false}
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
C {lab_wire.sym} 750 -420 0 0 {name=p3 sig_type=std_logic lab=V_LOI_p
}
C {lab_wire.sym} 790 -400 0 0 {name=p4 sig_type=std_logic lab=V_LOI_n}
C {lab_wire.sym} 760 -360 0 0 {name=p5 sig_type=std_logic lab=V_LOQ_p}
C {lab_wire.sym} 800 -340 0 0 {name=p6 sig_type=std_logic lab=V_LOQ_n}
C {lab_wire.sym} 730 -260 0 0 {name=p7 sig_type=std_logic lab=0}
C {lab_wire.sym} 920 -260 0 0 {name=p8 sig_type=std_logic lab=0}
C {lab_wire.sym} 740 -520 0 0 {name=p9 sig_type=std_logic lab=0}
C {lab_wire.sym} 930 -520 0 0 {name=p10 sig_type=std_logic lab=0}
C {vsource.sym} 350 -250 0 0 {name=V_EN value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 25n 50n )" savecurrent=false
spice_ignore=true}
C {lab_wire.sym} 330 -350 0 0 {name=p11 sig_type=std_logic lab=V_EN}
C {vsource.sym} 230 -250 0 0 {name=VDD1 value="PAR_VDD" savecurrent=false}
C {divider.sym} 520 -380 0 0 {name=x2}
