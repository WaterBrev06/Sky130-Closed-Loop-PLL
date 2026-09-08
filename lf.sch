v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -30 -130 10 {lab=#net1}
N -130 70 -130 90 {lab=VGND}
N 40 30 40 90 {lab=VGND}
N 40 -100 40 -30 {lab=VCTRL}
N -130 -100 -130 -90 {lab=VCTRL}
N 160 -90 190 -90 {lab=VGND}
N -40 90 -40 110 {lab=VGND}
N -130 90 -40 90 {lab=VGND}
N -40 90 40 90 {lab=VGND}
N 160 -70 190 -70 {lab=VCTRL}
N -50 -120 -50 -100 {lab=VCTRL}
N -130 -100 -50 -100 {lab=VCTRL}
N -50 -100 40 -100 {lab=VCTRL}
N -170 -60 -150 -60 {lab=VPWR}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} -130 40 0 0 {name=C1 model=cap_mim_m3_1 W=225 L=225 MF=1 spiceprefix=X}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} 40 0 0 0 {name=C2 model=cap_mim_m3_1 W=71 L=71 MF=1 spiceprefix=X}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po.sym} -130 -60 0 0 {name=R1
W=1
L=61.9
model=res_high_po
spiceprefix=X
mult=1}
C {iopin.sym} 190 -90 0 0 {name=p4 lab=VGND}
C {lab_pin.sym} 160 -90 2 1 {name=p10 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -40 110 2 1 {name=p1 sig_type=std_logic lab=VGND}
C {iopin.sym} 190 -70 0 0 {name=p2 lab=VCTRL}
C {lab_pin.sym} 160 -70 2 1 {name=p3 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} -50 -120 2 1 {name=p5 sig_type=std_logic lab=VCTRL}
C {iopin.sym} -170 -60 0 1 {name=p6 lab=VPWR}
