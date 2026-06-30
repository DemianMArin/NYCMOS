v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Truth Table
EN | SEL2 | SEL1 | SEL0 | Mixer4 | Mixer3 | Mixer2 | Mixer1 | Div3 | Div2 | Div1 | Description
 0  |    x    |    x    |    x    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Chip Off
 1  |    0    |    0    |    0    |      0     |      0     |      1     |      1    |    0    |    0    |    1  | Single Stage Quadrature Mixer - Mixer 1,2 On, Divider 1 On
 1  |    0    |    0    |    1    |      1     |      1     |      1     |      1    |    1    |    0    |    1  | Two Stage Quadrature Mixer - Mixer 1,2,3,4 On, Divider 1,3 On
 1  |    0    |    1    |    0    |      1     |      1     |      1     |      1    |    0    |    1    |    1  | Sliding IF Quadrature Mixer - Mixer 1,2,3,4 On, Divider 1,2 On
 1  |    0    |    1    |    1    |      0     |      0     |      0     |      1    |    0    |    0    |    1  | Single Stage Non-Quadrature Mixer = Mixer 1 On, Divider 1 On
 1  |    1    |    0    |    0    |      0     |      1     |      0     |      1    |    1    |    0    |    1  | Two Stage Non-Quadrature Mixer = Mixer 1,3 On, Divider 1,3 On
 1  |    1    |    0    |    1    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Unused
 1  |    1    |    1    |    0    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Unused
 1  |    1    |    1    |    1    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Unused } 0 -550 0 0 0.5 0.5 {}
N 1110 -990 1380 -990 {lab=M4}
N 1110 -970 1380 -970 {lab=M1D1}
N 1300 -950 1300 -910 {lab=D2}
N 1110 -950 1300 -950 {lab=D2}
N 1220 -930 1220 -880 {lab=D3}
N 1110 -930 1220 -930 {lab=D3}
N 1300 -1020 1300 -1010 {lab=M3}
N 1110 -1010 1300 -1010 {lab=M3}
N 1220 -1080 1220 -1030 {lab=M2}
N 1110 -1030 1220 -1030 {lab=M2}
N 1220 -1170 1220 -1140 {lab=0}
N 1380 -1170 1380 -1050 {lab=0}
N 1220 -1170 1380 -1170 {lab=0}
N 1300 -1170 1300 -1080 {lab=0}
N 1380 -900 1380 -800 {lab=0}
N 1220 -800 1380 -800 {lab=0}
N 1220 -820 1220 -800 {lab=0}
N 1300 -850 1300 -800 {lab=0}
N 960 -880 960 -850 {lab=0}
N 960 -1120 960 -1100 {lab=VDD}
N 390 -830 960 -830 {lab=0}
N 960 -850 960 -830 {lab=0}
N 230 -960 230 -830 {lab=0}
N 230 -830 390 -830 {lab=0}
N 230 -1080 230 -1020 {lab=VDD}
N 390 -1020 810 -1020 {lab=EN}
N 490 -1000 810 -1000 {lab=S2}
N 490 -1000 490 -990 {lab=S2}
N 580 -980 810 -980 {lab=S1}
N 580 -980 580 -960 {lab=S1}
N 670 -960 810 -960 {lab=S0}
N 670 -960 670 -940 {lab=S0}
N 390 -960 390 -830 {lab=0}
N 490 -930 490 -830 {lab=0}
N 580 -900 580 -830 {lab=0}
N 670 -880 670 -830 {lab=0}
N 960 -1150 960 -1120 {lab=VDD}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {capa.sym} 1220 -1110 2 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1300 -1050 2 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1380 -1020 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1380 -940 2 1 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1300 -880 2 1 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1220 -850 2 1 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 230 -990 0 0 {name=V1 value="PAR_VDD" savecurrent=false}
C {vsource.sym} 390 -990 0 0 {name=V2 value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 8u 16u )" savecurrent=false}
C {vsource.sym} 490 -960 0 0 {name=V3 value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 4u 8u )" savecurrent=false}
C {vsource.sym} 580 -930 0 0 {name=V4 value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 2u 4u )" savecurrent=false}
C {vsource.sym} 670 -910 0 0 {name=V5 value="DC 0 AC 0 pulse( 0m 'PAR_VDD' 0 100p 100p 1u 2u )" savecurrent=false}
C {gnd.sym} 700 -830 0 0 {name=l2 lab=0}
C {lab_wire.sym} 1260 -1170 0 0 {name=p1 sig_type=std_logic lab=0}
C {lab_wire.sym} 1280 -800 0 0 {name=p2 sig_type=std_logic lab=0}
C {lab_wire.sym} 230 -1050 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 460 -1020 0 0 {name=p5 sig_type=std_logic lab=EN}
C {lab_wire.sym} 540 -1000 0 0 {name=p6 sig_type=std_logic lab=S2}
C {lab_wire.sym} 620 -980 0 0 {name=p7 sig_type=std_logic lab=S1}
C {lab_wire.sym} 710 -960 0 0 {name=p8 sig_type=std_logic lab=S0}
C {lab_wire.sym} 1150 -1030 0 0 {name=p9 sig_type=std_logic lab=M2}
C {lab_wire.sym} 1170 -1010 0 0 {name=p10 sig_type=std_logic lab=M3}
C {lab_wire.sym} 1190 -990 0 0 {name=p11 sig_type=std_logic lab=M4}
C {lab_wire.sym} 1190 -970 0 0 {name=p12 sig_type=std_logic lab=M1D1}
C {lab_wire.sym} 1170 -950 0 0 {name=p13 sig_type=std_logic lab=D2}
C {lab_wire.sym} 1150 -930 0 0 {name=p14 sig_type=std_logic lab=D3}
C {code_shown.sym} 0 40 0 0 {name=MODELS only_toplevel=true  
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
C {code_shown.sym} 0 340 0 0 {name=NGSPICE only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all
write tb_decoder.raw

tran 0.1u 16u

plot EN/3.3+3+.3 S2/3.3+2+.2 S1/3.3+1+.1 S0/3.3 M4/3.3+9+.9 M3/3.3+8+.8 M2/3.3+7+.7 M1D1/3.3+6+.6 D2/3.3+5+.5 D3/3.3+4+.4 nogrid
;plot x1.EN_BAR/3.3+3 x1.sel_2_bar/3.3+2 x1.sel_1_bar/3.3+1 x1.sel_0_bar/3.3

.endc
"}
C {lab_wire.sym} 960 -1130 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {designs/decoder/schematic/decoder.sym} 960 -990 0 0 {name=x1}
