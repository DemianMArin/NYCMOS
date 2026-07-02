v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 430 -700 430 -680 {lab=#net1}
N 430 -700 500 -700 {lab=#net1}
N 430 -620 430 -590 {lab=0}
N 550 -560 550 -510 {lab=#net2}
N 550 -450 550 -410 {lab=#net3}
N 660 -480 660 -440 {lab=#net4}
N 550 -350 550 -320 {lab=0}
N 660 -560 660 -540 {lab=#net5}
N 660 -380 660 -360 {lab=0}
C {/foss/designs/NYCMOS/designs/mirrors/schematic/pmos_mirror.sym} -40 -300 0 0 {name=x1}
C {vsource.sym} 430 -650 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 430 -590 0 0 {name=l1 lab=0}
C {isource.sym} 550 -480 0 0 {name=I0 value=100u}
C {gnd.sym} 550 -320 0 0 {name=l2 lab=0}
C {title.sym} 180 -40 0 0 {name=l3 author="Charbel El Haddad"}
C {res.sym} 660 -510 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 660 -410 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 550 -380 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} 920 -680 0 0 {name=NGSPICE only_toplevel=true
value="

.control
op
print i(Vmeas)
print i(Vmeas1)

print @m.x1.xm1.m0[vgs]
print @m.x1.xm1.m0[vds]
print @m.x1.xm1.m0[vdsat]

print @m.x1.xm2.m0[vgs]
print @m.x1.xm2.m0[vds]
print @m.x1.xm2.m0[vdsat]
.endc
"}
C {devices/code_shown.sym} 0 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {gnd.sym} 660 -360 0 0 {name=l4 lab=0}
