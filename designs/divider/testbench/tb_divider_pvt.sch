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
C {title.sym} 160 -30 0 0 {name=LO Divider author="Lei Chen"}
C {code_shown.sym} 0 570 0 0 {name=NGSPICE only_toplevel=false value="
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
 
let V_LOI = v_loi_p - v_loi_n
let V_LOQ = v_loq_p - v_loq_n

plot v(V_LO_REF) v(V_LOI_p)+4 v(V_LOI_n)+4  v(V_LOQ_p)-4 v(V_LOQ_n)-4 xlimit 10n 20n;plot divider output
plot v(V_LO_REF) V_LOI V_LOQ xlimit 10n 20n; plot differential output
;plot v(V_EN) v(x1.EN_BAR) v(x1.LO_REF_GATED) v(x1.LO_REF_BAR); plot enable signal and clock signal status

plot i(vdd)*3.3 ;transient power

;plot i(v.x1.v1) plot i(v.x1.v2)
;plot v(V_LO_REF) v(x1.LO_REF_BAR)

meas tran t_diff TRIG v(V_LOI) VAL=0 TD=10n RISE=1 TARG v(V_LOQ) VAL=0 TD=10n RISE=1 ; time difference between first rising 0 crossing of V_LOI and first rising 0 cross of V_LOQ after 10ns

;fft of input and output 
linearize v(V_LOI) v(v_loq)
fft v(V_LOI) v(v_loq)
plot mag(v(V_LOI)) vs frequency mag(v(v_loq)) vs frequency


let V_LOI_MAG = mag(V_LOI)
let V_LOQ_MAG = mag(V_LOQ)
let V_LOI_MAX = maximum(V_LOI_MAG)-0.001; subtract small amount so that meas can find it
meas sp f_har_1 WHEN v(V_LOI_MAG)=V_LOI_MAX; measure first harmonic frequency by measuring frequency of the largest voltage component

;calculate phase error with transient data
let phase_diff_transient = tran1.t_diff * f_har_1 * 360; phase difference = t_diff/t_period = t_diff * f * 360 deg/1
;print phase_diff_transient


;calculate phase error with FFT
let phase_diff_fft = (cph(V_LOI)-cph(V_LOQ))*360/2/pi
meas sp phase_diff_har_1 FIND phase_diff_fft WHEN frequency=f_har_1
;print phase_diff_har_1

echo 'Phase Error with Transient (deg)' 
print phase_diff_transient-90
echo 'Phase Error with FFT (deg)' 
print phase_diff_har_1-90
echo 'I/Q Amplitude Error (%)'
print (maximum(V_LOQ_MAG)/maximum(V_LOI_MAG)-1)*100

.endc
"
}
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
C {divider/schematic/divider.sym} 550 -380 0 0 {name=x1}
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
spice_ignore=true}
C {code_shown.sym} 560 70 0 0 {name=MODELS1 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - ff - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ff
.lib $::180MCU_MODELS/smbb000149.ngspice ff
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_ff
.lib $::180MCU_MODELS/sm141064.ngspice moscap_ff
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_ff
"
spice_ignore=true}
C {code_shown.sym} 1130 70 0 0 {name=MODELS2 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - ss - 27c
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
.lib $::180MCU_MODELS/smbb000149.ngspice ss
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_ss
.lib $::180MCU_MODELS/sm141064.ngspice moscap_ss
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_ss
"
spice_ignore=true}
C {code_shown.sym} 0 320 0 0 {name=MODELS3 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - sf - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice sf
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"
spice_ignore=true}
C {code_shown.sym} 570 330 0 0 {name=MODELS4 only_toplevel=true  
format="tcleval( @value )" 
value="
; PVT - fs - 27C
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice fs
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"
}
