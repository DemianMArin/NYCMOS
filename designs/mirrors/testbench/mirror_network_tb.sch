v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 380 -690 380 -580 {lab=0}
N 380 -610 490 -610 {lab=0}
N 380 -800 380 -750 {lab=VDD}
N 380 -800 490 -800 {lab=VDD}
N 550 -400 550 -360 {lab=0}
N 700 -900 700 -870 {lab=#net1}
N 700 -990 700 -960 {lab=#net2}
N 730 -900 730 -870 {lab=#net3}
N 730 -990 730 -960 {lab=#net4}
N 760 -900 760 -870 {lab=#net5}
N 760 -990 760 -960 {lab=#net6}
N 820 -900 820 -870 {lab=#net7}
N 850 -900 850 -870 {lab=#net8}
N 880 -900 880 -870 {lab=#net9}
N 930 -900 930 -870 {lab=#net10}
N 960 -900 960 -870 {lab=#net11}
N 990 -900 990 -870 {lab=#net12}
N 1070 -900 1070 -870 {lab=#net13}
N 1040 -900 1040 -870 {lab=#net14}
N 1100 -900 1100 -870 {lab=#net15}
N 820 -990 820 -960 {lab=#net16}
N 850 -990 850 -960 {lab=#net17}
N 880 -990 880 -960 {lab=#net18}
N 930 -990 930 -960 {lab=#net19}
N 960 -990 960 -960 {lab=#net20}
N 990 -990 990 -960 {lab=#net21}
N 1040 -980 1040 -960 {lab=#net22}
N 1070 -990 1070 -960 {lab=#net23}
N 1100 -990 1100 -960 {lab=#net24}
N 700 -1100 700 -1050 {lab=VDD}
N 700 -1100 900 -1100 {lab=VDD}
N 900 -1100 1100 -1100 {lab=VDD}
N 1100 -1100 1100 -1050 {lab=VDD}
N 1070 -1100 1070 -1050 {lab=VDD}
N 1040 -1100 1040 -1040 {lab=VDD}
N 990 -1100 990 -1050 {lab=VDD}
N 960 -1100 960 -1050 {lab=VDD}
N 930 -1100 930 -1050 {lab=VDD}
N 880 -1100 880 -1050 {lab=VDD}
N 850 -1100 850 -1050 {lab=VDD}
N 820 -1100 820 -1050 {lab=VDD}
N 760 -1100 760 -1050 {lab=VDD}
N 730 -1100 730 -1050 {lab=VDD}
N 550 -490 550 -460 {lab=#net25}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/mirror_network.sym} 260 -660 0 0 {name=x1}
C {title.sym} 260 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {vsource.sym} 380 -720 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 380 -580 0 0 {name=l2 lab=0}
C {isource.sym} 550 -430 0 0 {name=I0 value=100u}
C {gnd.sym} 550 -360 0 0 {name=l3 lab=0}
C {res.sym} 700 -930 2 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 730 -930 2 1 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 760 -930 2 1 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 820 -930 2 1 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 850 -930 2 1 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 880 -930 2 1 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 930 -930 2 1 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 960 -930 2 1 {name=R8
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 990 -930 2 1 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1040 -930 2 1 {name=R10
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1070 -930 2 1 {name=R11
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1100 -930 2 1 {name=R12
value=1k
footprint=1206
device=resistor
m=1}
C {devices/code_shown.sym} 120 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1230 -890 0 0 {name=NGSPICE only_toplevel=true
value="

.control
op
print i(Vmeas)
print i(Vmeas1)
print i(Vmeas2)
print i(Vmeas3)
print i(Vmeas4)
print i(Vmeas5)
print i(Vmeas6)
print i(Vmeas7)
print i(Vmeas8)
print i(Vmeas9)
print i(Vmeas10)
print i(Vmeas11)
write mirror_network_tb.raw
.endc
"}
C {vdd.sym} 450 -800 0 0 {name=l4 lab=VDD}
C {vdd.sym} 910 -1100 0 1 {name=l5 lab=VDD}
C {ammeter.sym} 700 -1020 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 730 -1020 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 760 -1020 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 820 -1020 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 850 -1020 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {ammeter.sym} 880 -1020 0 0 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {ammeter.sym} 930 -1020 0 0 {name=Vmeas6 savecurrent=true spice_ignore=0}
C {ammeter.sym} 960 -1020 0 0 {name=Vmeas7 savecurrent=true spice_ignore=0}
C {ammeter.sym} 990 -1020 0 0 {name=Vmeas8 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1040 -1010 0 0 {name=Vmeas9 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1070 -1020 0 0 {name=Vmeas10 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1100 -1020 0 0 {name=Vmeas11 savecurrent=true spice_ignore=0}
