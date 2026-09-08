v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 -30 60 -30 {lab=UP}
N -10 -10 60 -10 {lab=DN}
N 360 -30 420 -30 {lab=VCTRL}
N 410 230 410 260 {lab=VCO_OUT}
N -350 -30 -350 260 {lab=VCO_OUT}
N -350 -30 -310 -30 {lab=VCO_OUT}
N -10 -90 -10 -50 {lab=VPWR}
N 360 -10 410 -10 {lab=VPWR}
N 360 10 410 10 {lab=VGND}
N 360 30 410 30 {lab=VPB}
N -10 50 60 50 {lab=VNB}
N 360 50 410 50 {lab=VNB}
N -10 10 60 10 {lab=VGND}
N -10 30 60 30 {lab=VPB}
N -350 -50 -310 -50 {lab=REF_CLK}
N 60 130 60 150 {lab=VCTRL}
N 360 150 430 150 {lab=VPWR}
N 360 170 430 170 {lab=VGND}
N 360 190 430 190 {lab=VPB}
N 360 210 430 210 {lab=VNB}
N 360 230 410 230 {lab=VCO_OUT}
N 340 70 350 70 {lab=VGND}
N 420 -30 420 90 {lab=VCTRL}
N 340 90 420 90 {lab=VCTRL}
N 340 110 360 110 {lab=VPWR}
N 60 130 420 130 {lab=VCTRL}
N 420 90 420 130 {lab=VCTRL}
N -350 260 410 260 {lab=VCO_OUT}
C {cp.sym} 210 10 0 0 {name=x1}
C {lab_pin.sym} -280 -240 0 0 {name=p1 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} -280 -210 0 0 {name=p2 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -280 -180 0 0 {name=p3 sig_type=std_logic lab=VPB}
C {lab_pin.sym} -280 -150 0 0 {name=p4 sig_type=std_logic lab=VNB}
C {lab_pin.sym} -10 -90 0 0 {name=p5 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 410 -10 0 0 {name=p6 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 430 150 0 0 {name=p7 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 60 10 0 0 {name=p8 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 410 10 0 0 {name=p9 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 350 70 0 1 {name=p10 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 430 170 0 0 {name=p11 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 60 30 0 0 {name=p12 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 410 30 0 0 {name=p13 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 430 190 0 0 {name=p14 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 60 50 0 0 {name=p15 sig_type=std_logic lab=VNB}
C {lab_pin.sym} 410 50 0 0 {name=p16 sig_type=std_logic lab=VNB}
C {lab_pin.sym} 430 210 0 0 {name=p17 sig_type=std_logic lab=VNB}
C {ipin.sym} -350 -50 0 0 {name=p18 lab=REF_CLK}
C {code_shown.sym} 520 -30 0 0 {name=sim_commands
value="
.option scale=1u
.option method=gear reltol=1e-3
.option rshunt=1e12

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* System Power Supplies
VVPWR VPWR 0 1.8
VVGND VGND 0 0
VVPB  VPB  0 1.8
VVNB  VNB  0 0

* Reference Clock Input (e.g., 20 MHz, 50% Duty Cycle)
VREF REF_CLK 0 PULSE(0 1.8 0 100p 100p 25n 50n)

* Set Initial Condition for Loop Filter Capacitors to zero
.ic v(vctrl) = 0
* Long Transient Simulation to observe loop settling/locking
.tran 50p 8u 

.control
  run
  plot v(VCTRL) title 'PLL Control Voltage Lock Transient (Vctrl vs Time)'
  plot v(REF_CLK) v(VCO_OUT) xl 1.8u 2.0u title 'Phase Alignment at Lock'
.endc
"}
C {vco.sym} 210 190 0 0 {name=x4}
C {pfd.sym} -160 0 0 0 {name=x3}
C {lf.sym} 190 90 0 0 {name=x2}
C {lab_pin.sym} 360 110 0 1 {name=p19 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 420 -30 1 0 {name=p20 sig_type=std_logic lab=VCTRL}
C {lab_pin.sym} 260 260 3 0 {name=p21 sig_type=std_logic lab=VCO_OUT}
C {lab_wire.sym} 30 -30 0 0 {name=p22 sig_type=std_logic lab=UP}
C {lab_wire.sym} 30 -10 0 0 {name=p23 sig_type=std_logic lab=DN}
