v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -550 310 -550 {lab=Vin}
N 140 -380 350 -380 {lab=0}
N 40 -630 40 -550 {lab=VDD}
N 350 -630 350 -610 {lab=#net1}
N 350 -470 350 -380 {lab=0}
N 40 -380 140 -380 {lab=0}
N 40 -490 40 -380 {lab=0}
N 480 -540 780 -540 {lab=Vout}
N 580 -480 580 -380 {lab=0}
N 350 -380 580 -380 {lab=0}
N 680 -480 680 -380 {lab=0}
N 580 -380 680 -380 {lab=0}
N 780 -480 780 -380 {lab=0}
N 680 -380 780 -380 {lab=0}
N 40 -630 240 -630 {lab=VDD}
N 300 -630 350 -630 {lab=#net1}
N 260 -450 260 -440 {lab=#net2}
N 260 -530 310 -530 {lab=V_i_ref}
N 260 -530 260 -510 {lab=V_i_ref}
N 140 -550 140 -540 {lab=Vin}
N 140 -480 140 -380 {lab=0}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {output_buffer/schematic/output_buffer.sym} 390 -540 0 0 {name=x1
}
C {isource.sym} 260 -480 0 0 {name=I_ref_100u value=100u
}
C {vsource.sym} 140 -510 0 0 {name=Vin value="DC 1.25 AC 1 SIN(1.25 30m 50MEG 0 0 0)" savecurrent=false
}
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

.PARAM PAR_VDD=3.27

.control
destroy all
save all
save @m.x1.xm1.m0[gm]
save @m.x1.xm2.m0[gm]
save @m.x1.xm2.m0[gds]
save @m.x1.xm5.m0[gds]

write tb_output_buffer.raw
op 

print i(v_i_vdd)
dc Vin 0.1 3.3 0.01
let gain_slope = deriv(vout)

plot Vin Vout ; input, output
plot Vout vs Vin gain_slope vs vin; output vs input and slope of gain
plot vdb(gain_slope) vs vin; gain slope in db
plot i(v_i_vdd) i(vmeas2) i(v.x1.vmeas1) i(v.x1.vmeas2) i(v.x1.vmeas3); internal current biases

plot @m.x1.xm1.m0[gm] @m.x1.xm2.m0[gm]
;plot 1/@m.x1.xm2.m0[gds] 1/@m.x1.xm5.m0[gds]

ac dec 100 1 10G
let gain = vout/vin
let gain_db = db(gain)
plot gain_db
 
tran 0.1n 10u
plot vin vout
linearize vin vout
fft vin vout
plot db(vin) vs frequency db(vout) vs frequency xlimit 0 120MEG


;parametric sweep for compensation capacitor

;setplot const 
;let start_c = 100f
;let stop_c = 3p
;let delta_c = 300f
;let current_c = start_c

;while current_c le stop_c
;	print current_c
;	alter c.x1.c2 = current_c
;	ac dec 100 1 10G
;	let gain = vout/vin;
;	let gain_db = db(gain)
;
;	let current_c = current_c + delta_c
;end
;plot  ac2.gain_db ac3.gain_db ac4.gain_db ac5.gain_db ac6.gain_db ac7.gain_db ac8.gain_db ac9.gain_db ac10.gain_db ac11.gain_db
.endc
"
}
C {lab_wire.sym} 130 -630 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 200 -550 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 550 -540 0 0 {name=p3 sig_type=std_logic lab=Vout}
C {ammeter.sym} 260 -410 0 0 {name=vmeas2 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 270 -530 0 0 {name=p4 sig_type=std_logic lab=V_i_ref}
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
C {ammeter.sym} 270 -630 3 0 {name=v_i_vdd savecurrent=true spice_ignore=0}
C {code_shown.sym} 920 360 0 0 {name="Parametric Sweep for compensation capacitor" only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
save @m.x1.xm1.m0[gm]
save @m.x1.xm2.m0[gm]
save @m.x1.xm2.m0[gds]
save @m.x1.xm5.m0[gds]

let start_c = 100f
let stop_c = 5p
let delta_c = 500f
let current_c = start_c

write tb_output_buffer.raw

while current_c le stop_c
	print current_c
	alter c.x1.c2 = current_c
	ac dec 100 1 10G
	let gain = vout/vin;
	let gain_db = db(gain)

	let current_c = current_c + delta_c
end
plot ac1.gain_db ac2.gain_db ac3.gain_db ac4.gain_db ac5.gain_db ac6.gain_db ac7.gain_db ac8.gain_db ac9.gain_db ac10.gain_db

.endc
"
spice_ignore=true}
