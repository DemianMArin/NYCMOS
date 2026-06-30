v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 550 -520 590 -520 {lab=outp}
N 550 -480 590 -480 {lab=outn}
N 930 -660 930 -630 {lab=0}
N 930 -740 930 -720 {lab=VDD}
N 1020 -660 1020 -630 {lab=0}
N 1020 -630 1070 -630 {lab=0}
N 1070 -630 1110 -630 {lab=0}
N 1110 -660 1110 -630 {lab=0}
N 1020 -760 1020 -720 {lab=inp}
N 1110 -760 1110 -720 {lab=inn}
N 590 -520 630 -520 {lab=outp}
N 590 -480 630 -480 {lab=outn}
N 350 -640 350 -600 {lab=VDD}
N 400 -460 400 -450 {lab=#net1}
N 400 -390 400 -370 {lab=0}
N 630 -520 720 -520 {lab=outp}
N 720 -520 720 -510 {lab=outp}
N 630 -480 630 -470 {lab=outn}
N 520 -520 550 -520 {lab=outp}
N 550 -500 550 -480 {lab=outn}
N 520 -500 550 -500 {lab=outn}
N 370 -460 370 -380 {lab=0}
N 370 -380 400 -380 {lab=0}
N 270 -520 290 -520 {lab=inp}
N 260 -520 270 -520 {lab=inp}
N 270 -500 290 -500 {lab=inn}
N 260 -500 270 -500 {lab=inn}
C {vsource.sym} 930 -690 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1020 -690 0 0 {name=Vsourcep value="DC 'PAR_VCM' SIN('PAR_VCM' 'PAR_AMP' 'PAR_FREQ' 0 0 0)" savecurrent=false}
C {vsource.sym} 1110 -690 0 0 {name=Vsourcen value="DC 'PAR_VCM' SIN('PAR_VCM' 'PAR_AMP' 'PAR_FREQ' 0 0 180)" savecurrent=false}
C {title.sym} 180 -40 0 0 {name=l1 author="Demian"}
C {gnd.sym} 400 -370 0 0 {name=l2 lab=0}
C {devices/code_shown.sym} 40 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -1480 0 0 {name=NGSPICE only_toplevel=true
value="
** PARAMETERS
.PARAM PAR_VCM=1.1
.PARAM PAR_AMP=5m
.PARAM PAR_FREQ=100Meg
.PARAM PAR_PER='1/PAR_FREQ'

.control
destroy all
save all

op
echo Diff Pair op-point
print @m.x1.xm1.m0[gm]
print @m.x1.xm1.m0[id]
print @m.x1.xm1.m0[vgs]
print @m.x1.xm1.m0[vds]
print @m.x1.xm1.m0[vdsat]
print @m.x1.xm2.m0[gm]
print @m.x1.xm2.m0[id]
print @m.x1.xm2.m0[vgs]
print @m.x1.xm2.m0[vds]
print @m.x1.xm2.m0[vdsat]

tran 0.01n 2u
write diffpair_tb.raw

let vin  = V(inp)-V(inn)
let vout = V(outp)-V(outn)

** Output swing
.MEASURE TRAN vout_max MAX v(outp)-v(outn) FROM=0 TO=2u
.MEASURE TRAN vout_min MIN v(outp)-v(outn) FROM=0 TO=2u
.MEASURE TRAN vout_pp PARAM='vout_ax-voutmin'

** Common-mode output
.MEASURE TRAN voutcm_avg AVG '(v(outp)+v(outn))/2' FROM=PAR_PER TO=2u

** Gain estimate (vout_pp / vin_pp, vin_pp = 2*PAR_AMP)
.MEASURE TRAN gain_diff PARAM='vout_pp/(2*PAR_AMP)'

;plot v(inp) v(inn)
;plot v(outp) v(outn)
;plot vin
;plot vout

.endc
"}
C {vdd.sym} 350 -640 0 0 {name=l3 lab=VDD}
C {vdd.sym} 930 -740 0 0 {name=l4 lab=VDD}
C {gnd.sym} 930 -630 0 0 {name=l5 lab=0}
C {gnd.sym} 1070 -630 0 0 {name=l6 lab=0}
C {lab_wire.sym} 1020 -750 0 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_wire.sym} 1110 -740 0 0 {name=p2 sig_type=std_logic lab=inn
}
C {lab_wire.sym} 590 -520 0 0 {name=p9 sig_type=std_logic lab=outp}
C {lab_wire.sym} 600 -480 0 0 {name=p10 sig_type=std_logic lab=outn}
C {isource.sym} 400 -420 0 0 {name=I0 value=500u}
C {capa.sym} 720 -480 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 630 -440 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 720 -450 0 0 {name=l7 lab=0}
C {gnd.sym} 630 -410 0 0 {name=l8 lab=0}
C {bufferOut.sym} 440 -530 0 0 {name=x1}
C {lab_wire.sym} 260 -520 0 0 {name=p3 sig_type=std_logic lab=inp}
C {lab_wire.sym} 260 -500 0 0 {name=p4 sig_type=std_logic lab=inn}
