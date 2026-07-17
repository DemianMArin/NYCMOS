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
 1  |    1    |    1    |    1    |      0     |      0     |      0     |      0    |    0    |    0    |    0  | Unused } -2020 -550 0 0 0.5 0.5 {}
N 930 -1160 930 -1110 {lab=VDD_on_chip}
N 930 -870 930 -830 {lab=0}
N 710 -990 780 -990 {lab=V_EN}
N 710 -970 780 -970 {lab=V_sel_0}
N 710 -950 780 -950 {lab=V_sel_1}
N 710 -930 780 -930 {lab=V_sel_2}
N 710 -910 780 -910 {lab=i_ref_100u}
N 710 -1070 780 -1070 {lab=V_RF_p}
N 710 -1050 780 -1050 {lab=V_RF_m}
N 710 -1030 780 -1030 {lab=V_LO_1}
N 710 -1010 780 -1010 {lab=V_LO_2}
N 1170 -1070 1240 -1070 {lab=IF_I_p}
N 1170 -1050 1240 -1050 {lab=IF_I_m}
N 1170 -1030 1240 -1030 {lab=IF_Q_p}
N 1170 -1010 1240 -1010 {lab=IF_Q_m}
N 1170 -970 1240 -970 {lab=BB_I_p}
N 1170 -950 1240 -950 {lab=BB_I_m}
N 1170 -930 1240 -930 {lab=BB_Q_p}
N 1170 -910 1240 -910 {lab=BB_Q_m}
N 480 -1320 540 -1320 {lab=0}
N 930 -1200 930 -1160 {lab=VDD_on_chip}
N 840 -1320 860 -1320 {lab=VDD}
N 50 -1190 50 -1150 {lab=V_RF_p}
N 50 -1190 100 -1190 {lab=V_RF_p}
N 50 -1090 50 -1050 {lab=0}
N 150 -1190 150 -1150 {lab=V_RF_m}
N 150 -1190 200 -1190 {lab=V_RF_m}
N 150 -1090 150 -1050 {lab=0}
N 50 -890 50 -850 {lab=V_LO_1_off_chip}
N 50 -890 100 -890 {lab=V_LO_1_off_chip}
N 50 -790 50 -750 {lab=0}
N 350 -890 350 -850 {lab=V_LO_2_off_chip}
N 350 -890 400 -890 {lab=V_LO_2_off_chip}
N 350 -790 350 -750 {lab=0}
N 50 -520 50 -480 {lab=#net1}
N 50 -520 100 -520 {lab=#net1}
N 50 -420 50 -380 {lab=0}
N 260 -520 260 -480 {lab=#net2}
N 260 -520 310 -520 {lab=#net2}
N 260 -420 260 -380 {lab=0}
N 490 -520 490 -480 {lab=#net3}
N 490 -520 540 -520 {lab=#net3}
N 490 -420 490 -380 {lab=0}
N 750 -520 750 -480 {lab=#net4}
N 750 -520 800 -520 {lab=#net4}
N 750 -420 750 -380 {lab=0}
N 50 -250 50 -210 {lab=0}
N 50 -330 50 -310 {lab=i_ref_100u}
N 50 -330 80 -330 {lab=i_ref_100u}
N 200 -890 240 -890 {lab=V_LO_1}
N 500 -890 530 -890 {lab=V_LO_2}
N 450 -850 450 -810 {lab=0}
N 450 -970 450 -930 {lab=VDD}
N 150 -970 150 -930 {lab=VDD}
N 150 -850 150 -820 {lab=0}
N 750 -1320 840 -1320 {lab=VDD}
N 150 -590 150 -560 {lab=VDD}
N 150 -590 850 -590 {lab=VDD}
N 850 -590 850 -560 {lab=VDD}
N 590 -590 590 -560 {lab=VDD}
N 360 -590 360 -560 {lab=VDD}
N 150 -480 150 -450 {lab=0}
N 360 -480 360 -450 {lab=0}
N 590 -480 590 -450 {lab=0}
N 850 -480 850 -450 {lab=0}
N 200 -520 230 -520 {lab=V_EN}
N 410 -520 450 -520 {lab=V_sel_2}
N 640 -520 680 -520 {lab=V_sel_1}
N 900 -520 940 -520 {lab=V_sel_0}
N 1530 -1230 1580 -1230 {lab=IF_I_p}
N 1670 -1290 1670 -1260 {lab=0}
N 1530 -1110 1580 -1110 {lab=IF_I_m}
N 1670 -1080 1670 -1050 {lab=0}
N 1740 -1110 1790 -1110 {lab=IF_I_m_scope}
N 1740 -1230 1790 -1230 {lab=IF_I_p_scope}
N 1840 -1230 1890 -1230 {lab=IF_Q_p}
N 1980 -1290 1980 -1260 {lab=0}
N 1840 -1110 1890 -1110 {lab=IF_Q_m}
N 1980 -1080 1980 -1050 {lab=0}
N 2050 -1110 2100 -1110 {lab=IF_Q_m_scope}
N 2050 -1230 2100 -1230 {lab=IF_Q_p_scope}
N 1530 -940 1580 -940 {lab=BB_I_p}
N 1670 -1000 1670 -970 {lab=0}
N 1530 -820 1580 -820 {lab=BB_I_m}
N 1670 -790 1670 -760 {lab=0}
N 1740 -820 1790 -820 {lab=BB_I_m_scope}
N 1740 -940 1790 -940 {lab=BB_I_p_scope}
N 1840 -940 1890 -940 {lab=BB_Q_p}
N 1980 -1000 1980 -970 {lab=0}
N 1840 -820 1890 -820 {lab=BB_Q_m}
N 1980 -790 1980 -760 {lab=0}
N 2050 -820 2100 -820 {lab=BB_Q_m_scope}
N 2050 -940 2100 -940 {lab=BB_Q_p_scope}
N 1670 -1000 1980 -1000 {lab=0}
N 1670 -760 1980 -760 {lab=0}
N 1670 -1050 1980 -1050 {lab=0}
N 1670 -1290 1980 -1290 {lab=0}
N 600 -1320 640 -1320 {lab=VDD}
N 700 -1320 750 -1320 {lab=VDD}
N 920 -1320 930 -1320 {lab=#net5}
N 930 -1220 930 -1200 {lab=VDD_on_chip}
N 930 -1320 930 -1280 {lab=#net5}
N 640 -1320 700 -1320 {lab=VDD}
N 1080 -1070 1110 -1070 {lab=#net6}
N 1080 -1050 1110 -1050 {lab=#net7}
N 1080 -1030 1110 -1030 {lab=#net8}
N 1080 -1010 1110 -1010 {lab=#net9}
N 1080 -970 1110 -970 {lab=#net10}
N 1080 -950 1110 -950 {lab=#net11}
N 1080 -930 1110 -930 {lab=#net12}
N 1080 -910 1110 -910 {lab=#net13}
N 1240 -1050 1290 -1050 {lab=IF_I_m}
N 1240 -1070 1290 -1070 {lab=IF_I_p}
C {title.sym} 160 -30 0 0 {name=l1 author="Lei Chen"}
C {vsource.sym} 570 -1320 1 0 {name=VDD value="PAR_VDD" savecurrent=false}
C {vsource.sym} 50 -1120 0 0 {name=V_RF_p value="dc 0..85 ac 0.5 sin(0.85 5m 65Meg 0 0 0)" savecurrent=false}
C {res.sym} 890 -1320 1 0 {name=R_wire_sim
value=10
footprint=1206
device=resistor
m=1}
C {gnd.sym} 480 -1320 0 0 {name=l2 lab=0}
C {lab_wire.sym} 930 -830 0 0 {name=p1 sig_type=std_logic lab=0}
C {lab_wire.sym} 50 -1050 0 0 {name=p2 sig_type=std_logic lab=0}
C {vsource.sym} 150 -1120 0 0 {name=V_RF_m value="dc 0..85 ac 0.5 sin(0.85 5m 65Meg 0 0 180)" savecurrent=false}
C {lab_wire.sym} 150 -1050 0 0 {name=p3 sig_type=std_logic lab=0}
C {vsource.sym} 50 -820 0 0 {name=V_LO_1 value="DC 0 pulse(0 3.3 0 500p 500p 5n 10n)" savecurrent=false}
C {lab_wire.sym} 50 -750 0 0 {name=p4 sig_type=std_logic lab=0}
C {vsource.sym} 350 -820 0 0 {name=V_LO_2 value=0 savecurrent=false}
C {lab_wire.sym} 350 -750 0 0 {name=p5 sig_type=std_logic lab=0}
C {vsource.sym} 50 -450 0 0 {name=V_EN value=0 savecurrent=false}
C {lab_wire.sym} 50 -380 0 0 {name=p6 sig_type=std_logic lab=0}
C {vsource.sym} 260 -450 0 0 {name=V_sel_2 value=3 savecurrent=false}
C {lab_wire.sym} 260 -380 0 0 {name=p7 sig_type=std_logic lab=0}
C {vsource.sym} 490 -450 0 0 {name=V_sel_1 value=3 savecurrent=false}
C {lab_wire.sym} 490 -380 0 0 {name=p8 sig_type=std_logic lab=0}
C {vsource.sym} 750 -450 0 0 {name=V_sel_0 value=3 savecurrent=false}
C {lab_wire.sym} 750 -380 0 0 {name=p9 sig_type=std_logic lab=0}
C {isource.sym} 50 -280 2 0 {name=i_ref_100u value=100u}
C {lab_wire.sym} 50 -210 0 0 {name=p10 sig_type=std_logic lab=0}
C {lab_wire.sym} 80 -1190 0 0 {name=p11 sig_type=std_logic lab=V_RF_p}
C {lab_wire.sym} 930 -1190 0 1 {name=p12 sig_type=std_logic lab=VDD_on_chip}
C {lab_wire.sym} 190 -1190 0 0 {name=p13 sig_type=std_logic lab=V_RF_m}
C {lab_wire.sym} 210 -890 0 1 {name=p14 sig_type=std_logic lab=V_LO_1}
C {lab_wire.sym} 510 -890 0 1 {name=p15 sig_type=std_logic lab=V_LO_2
}
C {lab_wire.sym} 210 -520 0 1 {name=p16 sig_type=std_logic lab=V_EN}
C {lab_wire.sym} 920 -520 0 1 {name=p19 sig_type=std_logic lab=V_sel_0}
C {lab_wire.sym} 650 -520 0 1 {name=p17 sig_type=std_logic lab=V_sel_1}
C {lab_wire.sym} 420 -520 0 1 {name=p18 sig_type=std_logic lab=V_sel_2}
C {lab_wire.sym} 70 -330 0 0 {name=p20 sig_type=std_logic lab=i_ref_100u}
C {lab_wire.sym} 1170 -1070 0 1 {name=p21 sig_type=std_logic lab=IF_I_p}
C {lab_wire.sym} 1170 -1050 0 1 {name=p22 sig_type=std_logic lab=IF_I_m}
C {lab_wire.sym} 1170 -1030 0 1 {name=p23 sig_type=std_logic lab=IF_Q_p}
C {lab_wire.sym} 1170 -1010 0 1 {name=p24 sig_type=std_logic lab=IF_Q_m}
C {lab_wire.sym} 1170 -970 0 1 {name=p25 sig_type=std_logic lab=BB_I_p}
C {lab_wire.sym} 1170 -930 0 1 {name=p26 sig_type=std_logic lab=BB_Q_p}
C {lab_wire.sym} 1170 -950 0 1 {name=p27 sig_type=std_logic lab=BB_I_m}
C {lab_wire.sym} 1170 -910 0 1 {name=p28 sig_type=std_logic lab=BB_Q_m}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 150 -520 0 0 {name=x2}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 360 -520 0 0 {name=x3}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 590 -520 0 0 {name=x4}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 850 -520 0 0 {name=x5}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 450 -890 0 0 {name=x6}
C {simulation_parasitics/schematics/digital_input_buffer.sym} 150 -890 0 0 {name=x7}
C {lab_wire.sym} 800 -1320 0 1 {name=p29 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -950 0 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 450 -940 0 1 {name=p31 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -820 0 0 {name=p32 sig_type=std_logic lab=0}
C {lab_wire.sym} 450 -810 0 0 {name=p33 sig_type=std_logic lab=0}
C {lab_wire.sym} 490 -590 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -450 0 0 {name=p35 sig_type=std_logic lab=0}
C {lab_wire.sym} 360 -450 0 0 {name=p36 sig_type=std_logic lab=0}
C {lab_wire.sym} 590 -450 0 0 {name=p37 sig_type=std_logic lab=0}
C {lab_wire.sym} 850 -450 0 0 {name=p38 sig_type=std_logic lab=0}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1680 -1230 2 0 {name=x8}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1680 -1110 0 1 {name=x9}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1990 -1230 2 0 {name=x10}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1990 -1110 0 1 {name=x11}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1680 -940 2 0 {name=x12}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1680 -820 0 1 {name=x13}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1990 -940 2 0 {name=x14}
C {simulation_parasitics/schematics/10x_attenuation_probe.sym} 1990 -820 0 1 {name=x15}
C {lab_wire.sym} 1530 -1230 0 1 {name=p39 sig_type=std_logic lab=IF_I_p}
C {lab_wire.sym} 1530 -1110 0 1 {name=p40 sig_type=std_logic lab=IF_I_m}
C {lab_wire.sym} 1840 -1230 0 1 {name=p41 sig_type=std_logic lab=IF_Q_p}
C {lab_wire.sym} 1840 -1110 0 1 {name=p42 sig_type=std_logic lab=IF_Q_m}
C {lab_wire.sym} 1530 -940 0 1 {name=p43 sig_type=std_logic lab=BB_I_p}
C {lab_wire.sym} 1530 -820 0 1 {name=p44 sig_type=std_logic lab=BB_I_m}
C {lab_wire.sym} 1840 -940 0 1 {name=p45 sig_type=std_logic lab=BB_Q_p}
C {lab_wire.sym} 1840 -820 0 1 {name=p46 sig_type=std_logic lab=BB_Q_m}
C {lab_wire.sym} 1820 -1290 0 0 {name=p47 sig_type=std_logic lab=0}
C {lab_wire.sym} 1820 -1050 0 0 {name=p48 sig_type=std_logic lab=0}
C {lab_wire.sym} 1820 -1000 0 0 {name=p49 sig_type=std_logic lab=0}
C {lab_wire.sym} 1830 -760 0 0 {name=p50 sig_type=std_logic lab=0}
C {lab_wire.sym} 1750 -1230 0 1 {name=p51 sig_type=std_logic lab=IF_I_p_scope}
C {lab_wire.sym} 1750 -1110 0 1 {name=p52 sig_type=std_logic lab=IF_I_m_scope}
C {lab_wire.sym} 2060 -1110 0 1 {name=p53 sig_type=std_logic lab=IF_Q_m_scope}
C {lab_wire.sym} 2060 -1230 0 1 {name=p54 sig_type=std_logic lab=IF_Q_p_scope}
C {lab_wire.sym} 1750 -940 0 1 {name=p55 sig_type=std_logic lab=BB_I_p_scope}
C {lab_wire.sym} 1750 -820 0 1 {name=p56 sig_type=std_logic lab=BB_I_m_scope}
C {lab_wire.sym} 2060 -940 0 1 {name=p57 sig_type=std_logic lab=BB_Q_p_scope}
C {lab_wire.sym} 2060 -820 0 1 {name=p58 sig_type=std_logic lab=BB_Q_m_scope}
C {code_shown.sym} 0 60 0 0 {name=MODELS5 only_toplevel=true  
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
C {code_shown.sym} 0 310 0 0 {name="OP Analysis" only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all

write tb_top_pmos_mixer.raw

op

echo 'Chip Current'
print i(v_i_vdd_on_chip)

echo 'VDD_on_chip'
print vdd_on_chip

echo 'Internal ENABLE Status'
print x1.EN_mix_div_1
print x1.EN_mix_2
print x1.EN_mix_3
print x1.EN_mix_4
print x1.EN_div_2
print x1.EN_div_3


echo 'Internal Tail Currents'
print i(v.x1.v_i_mix_1)
print i(v.x1.v_i_mix_2)
print i(v.x1.v_i_mix_3)
print i(v.x1.v_i_mix_4)
print i(v.x1.v_i_div_1)
print i(v.x1.v_i_div_2)
print i(v.x1.v_i_div_3)
print i(v.x1.v_i_tail_total)
print i(v.x1.v_i_buf_mix_1_p)
print i(v.x1.v_i_buf_mix_1_m)
print i(v.x1.v_i_buf_mix_2_p)
print i(v.x1.v_i_buf_mix_2_m)
print i(v.x1.v_i_buf_mix_3_p)
print i(v.x1.v_i_buf_mix_3_m)
print i(v.x1.v_i_buf_mix_4_p)
print i(v.x1.v_i_buf_mix_4_m)
print i(v.x1.v_i_tx_gate_set_1)
print i(v.x1.v_i_tx_gate_set_2)

echo 'OUTPUT DC Current'
print i(v_i_IF_I_p)
print i(v_i_IF_I_m)
print i(v_i_IF_Q_p)
print i(v_i_IF_Q_m)
print i(v_i_BB_I_p)
print i(v_i_BB_I_m)
print i(v_i_BB_Q_p)
print i(v_i_BB_Q_m)

echo 'MIXER DC VOLTAGE'
print x1.mix_1_if_p
print x1.mix_1_if_m
print x1.mix_2_if_p
print x1.mix_2_if_m
print x1.mix_3_if_p
print x1.mix_3_if_m
print x1.mix_4_if_p
print x1.mix_4_if_m

echo 'BUFFER DC VOLTAGE'
print if_i_p
print if_i_m
print if_q_p
print if_q_m
print bb_i_p
print bb_i_m
print bb_q_p
print bb_q_m

.endc
"
spice_ignore=true}
C {lab_wire.sym} 770 -1070 0 0 {name=p59 sig_type=std_logic lab=V_RF_p}
C {lab_wire.sym} 770 -1050 0 0 {name=p60 sig_type=std_logic lab=V_RF_m}
C {lab_wire.sym} 770 -1030 0 0 {name=p61 sig_type=std_logic lab=V_LO_1}
C {lab_wire.sym} 770 -1010 0 0 {name=p62 sig_type=std_logic lab=V_LO_2
}
C {lab_wire.sym} 770 -990 0 0 {name=p63 sig_type=std_logic lab=V_EN}
C {lab_wire.sym} 770 -930 0 0 {name=p64 sig_type=std_logic lab=V_sel_2}
C {lab_wire.sym} 770 -950 0 0 {name=p65 sig_type=std_logic lab=V_sel_1}
C {lab_wire.sym} 770 -970 0 0 {name=p66 sig_type=std_logic lab=V_sel_0}
C {lab_wire.sym} 770 -910 0 0 {name=p67 sig_type=std_logic lab=i_ref_100u}
C {ammeter.sym} 930 -1250 0 0 {name=v_i_vdd_on_chip savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1070 3 0 {name=v_i_IF_I_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1050 3 0 {name=v_i_IF_I_m savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1030 3 0 {name=v_i_IF_Q_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -1010 3 0 {name=v_i_IF_Q_m savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -970 3 0 {name=v_i_BB_I_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -950 3 0 {name=v_i_BB_I_m savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -930 3 0 {name=v_i_BB_Q_p savecurrent=true spice_ignore=0}
C {ammeter.sym} 1140 -910 3 0 {name=v_i_BB_Q_m savecurrent=true spice_ignore=0}
C {top_level/schematic/top_pmos_mixer.sym} 930 -990 0 0 {name=x1}
C {code_shown.sym} 330 310 0 0 {name="Transient Analysis" only_toplevel=false value="
** PARAMS 

.PARAM PAR_VDD=3.3

.control
destroy all
save all

write tb_top_pmos_mixer.raw

tran .1n 2u 

let vrf = V_rf_p - V_rf_m
let vif_i = if_i_p - if_i_m
let vif_q = if_q_p - if_q_m
let vbb_i = bb_i_p - bb_i_m
let vbb_q = bb_q_p - bb_q_m

plot vrf   ;input signal
plot vif_i ;output in phase
plot vif_q ;output q phase
plot v_lo_1 v_lo_1_off_chip x1.div_1_lo_i_p x1.div_1_lo_i_m ;clock divider

.endc
"
}
C {lab_wire.sym} 60 -890 0 0 {name=p68 sig_type=std_logic lab=V_LO_1_off_chip}
C {lab_wire.sym} 350 -870 0 0 {name=p69 sig_type=std_logic lab=V_LO_2_off_chip}
