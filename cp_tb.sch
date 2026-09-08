v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 470 -130 470 -110 {lab=#net1}
N 370 -450 370 -430 {lab=VPWR}
N 470 -200 470 -190 {lab=VPWR}
N 470 -230 470 -200 {lab=VPWR}
N 310 -80 330 -80 {lab=UP}
N 410 -80 430 -80 {lab=#net2}
N 340 -410 370 -410 {lab=VGND}
N 470 150 470 170 {lab=VGND}
N 470 140 470 150 {lab=VGND}
N 340 -390 370 -390 {lab=VPB}
N 410 30 430 30 {lab=DN}
N 340 -370 370 -370 {lab=VNB}
N 160 -130 170 -130 {lab=#net3}
N 160 60 170 60 {lab=#net4}
N 160 -130 160 -100 {lab=#net3}
N 160 -100 210 -100 {lab=#net3}
N 160 30 160 60 {lab=#net4}
N 470 60 470 80 {lab=#net5}
N 470 -50 470 -30 {lab=I_OUT}
N 470 -30 510 -30 {lab=I_OUT}
N 470 -10 470 0 {lab=I_OUT}
N 470 -10 510 -10 {lab=I_OUT}
N 160 30 210 30 {lab=#net4}
N 210 -200 210 -160 {lab=VPWR}
N 210 -200 470 -200 {lab=VPWR}
N 210 90 210 150 {lab=VGND}
N 210 150 470 150 {lab=VGND}
N 210 -100 210 -70 {lab=#net3}
N 210 -10 210 30 {lab=#net4}
N 210 -100 340 -100 {lab=#net3}
N 340 -120 340 -100 {lab=#net3}
N 340 -120 430 -120 {lab=#net3}
N 430 -160 430 -120 {lab=#net3}
N 210 30 340 30 {lab=#net4}
N 340 30 340 50 {lab=#net4}
N 340 50 430 50 {lab=#net4}
N 430 50 430 110 {lab=#net4}
N 510 -30 510 -10 {lab=I_OUT}
N 400 -180 400 -130 {lab=VPB}
N 210 -130 400 -130 {lab=VPB}
N 470 -160 590 -160 {lab=VPB}
N 470 -80 590 -80 {lab=VPB}
N 210 60 310 60 {lab=VNB}
N 470 110 580 110 {lab=VNB}
N 470 30 580 30 {lab=VNB}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 450 110 0 0 {name=MN1
W=2
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 450 -160 0 0 {name=MP1
W=6
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {isource.sym} 210 -40 0 0 {name=Iref value=20u}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 450 30 0 0 {name=MN2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 450 -80 0 0 {name=MP2
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 310 -80 0 0 {name=p1 lab=UP
}
C {ipin.sym} 410 30 0 0 {name=p2 lab=DN}
C {iopin.sym} 370 -430 0 0 {name=p3 lab=VPWR}
C {iopin.sym} 370 -410 0 0 {name=p4 lab=VGND}
C {iopin.sym} 370 -390 0 0 {name=p5 lab=VPB}
C {iopin.sym} 370 -370 0 0 {name=p6 lab=VNB}
C {opin.sym} 510 -20 0 0 {name=p7 lab=I_OUT}
C {lab_pin.sym} 370 -450 2 1 {name=p8 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 470 -230 2 1 {name=p9 sig_type=std_logic lab=VPWR}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 370 -80 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 340 -410 2 1 {name=p10 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 470 170 2 0 {name=p11 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 340 -390 2 1 {name=p13 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 340 -370 2 1 {name=p15 sig_type=std_logic lab=VNB}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 190 -130 0 0 {name=MP3
W=6
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 190 60 0 0 {name=MN3
W=2
L=1
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 400 -180 2 1 {name=p17 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 310 60 2 1 {name=p18 sig_type=std_logic lab=VNB}
C {code_shown.sym} 640 -380 0 0 {name=sim_commands
value="
.option scale=1u
.option method=gear reltol=1e-3
.option rshunt=1e12

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

* Power and Body Bias
VVPWR VPWR 0 1.8
VVGND VGND 0 0
VVPB  VPB  0 1.8
VVNB  VNB  0 0

* Test Voltage at Output Node
VVOUT I_OUT 0 0.9

* Test Pulse Signals for UP and DN
VUP UP 0 PULSE(0 1.8 1n 100p 100p 4n 10n)
VDN DN 0 PULSE(0 1.8 6n 100p 100p 4n 10n)

.tran 10p 12n uic

.control
  run
  * Plot the charge pump output current into VOUT
  plot i(vvout) ylimit -50u 50u title 'Charge Pump Output Current'
.endc
"}
C {lab_pin.sym} 590 -160 2 1 {name=p12 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 590 -80 2 1 {name=p14 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 580 30 2 1 {name=p16 sig_type=std_logic lab=VNB}
C {lab_pin.sym} 580 110 2 1 {name=p19 sig_type=std_logic lab=VNB}
