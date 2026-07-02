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
N 550 -440 550 -400 {lab=0}
N 550 -530 550 -500 {lab=#net1}
N 1120 -510 1120 -480 {lab=#net2}
N 1120 -420 1120 -390 {lab=#net3}
N 1150 -510 1150 -480 {lab=#net4}
N 1150 -420 1150 -390 {lab=#net5}
N 1180 -510 1180 -480 {lab=#net6}
N 1180 -420 1180 -390 {lab=#net7}
N 1240 -510 1240 -480 {lab=#net8}
N 1270 -510 1270 -480 {lab=#net9}
N 1300 -510 1300 -480 {lab=#net10}
N 1350 -510 1350 -480 {lab=#net11}
N 1380 -510 1380 -480 {lab=#net12}
N 1410 -510 1410 -480 {lab=#net13}
N 1490 -510 1490 -480 {lab=#net14}
N 1460 -510 1460 -480 {lab=#net15}
N 1520 -510 1520 -480 {lab=#net16}
N 1240 -420 1240 -390 {lab=#net17}
N 1270 -420 1270 -390 {lab=#net18}
N 1300 -420 1300 -390 {lab=#net19}
N 1350 -420 1350 -390 {lab=#net20}
N 1380 -420 1380 -390 {lab=#net21}
N 1410 -420 1410 -390 {lab=#net22}
N 1460 -420 1460 -400 {lab=#net23}
N 1490 -420 1490 -390 {lab=#net24}
N 1520 -420 1520 -390 {lab=#net25}
N 1120 -330 1120 -280 {lab=VDD}
N 1120 -280 1320 -280 {lab=VDD}
N 1320 -280 1520 -280 {lab=VDD}
N 1520 -330 1520 -280 {lab=VDD}
N 1490 -330 1490 -280 {lab=VDD}
N 1460 -340 1460 -280 {lab=VDD}
N 1410 -330 1410 -280 {lab=VDD}
N 1380 -330 1380 -280 {lab=VDD}
N 1350 -330 1350 -280 {lab=VDD}
N 1300 -330 1300 -280 {lab=VDD}
N 1270 -330 1270 -280 {lab=VDD}
N 1240 -330 1240 -280 {lab=VDD}
N 1180 -330 1180 -280 {lab=VDD}
N 1150 -330 1150 -280 {lab=VDD}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/mirror_network.sym} 260 -660 0 0 {name=x1}
C {title.sym} 260 -40 0 0 {name=l1 author="Charbel El Haddad"}
C {vsource.sym} 380 -720 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 380 -580 0 0 {name=l2 lab=0}
C {isource.sym} 550 -470 0 0 {name=I0 value=100u}
C {gnd.sym} 550 -400 0 0 {name=l3 lab=0}
C {res.sym} 1120 -450 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1150 -450 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1180 -450 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1240 -450 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1270 -450 0 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1300 -450 0 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1350 -450 0 0 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1380 -450 0 0 {name=R8
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1410 -450 0 0 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1460 -450 0 0 {name=R10
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1490 -450 0 0 {name=R11
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1520 -450 0 0 {name=R12
value=1k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 1120 -360 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 1150 -360 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1180 -360 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1240 -360 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1270 -360 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1300 -360 0 0 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1350 -360 0 0 {name=Vmeas6 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1380 -360 0 0 {name=Vmeas7 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1410 -360 0 0 {name=Vmeas8 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1460 -370 0 0 {name=Vmeas9 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1490 -360 0 0 {name=Vmeas10 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1520 -360 0 0 {name=Vmeas11 savecurrent=true spice_ignore=0}
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
C {vdd.sym} 1330 -280 2 0 {name=l5 lab=VDD}
