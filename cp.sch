v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 60 -150 80 {lab=VPWR}
N 310 -80 330 -80 {lab=UP}
N 410 -80 430 -80 {lab=#net1}
N -180 100 -150 100 {lab=VGND}
N -180 120 -150 120 {lab=VPB}
N 410 30 430 30 {lab=#net2}
N -180 140 -150 140 {lab=VNB}
N 160 -130 170 -130 {lab=#net3}
N 160 60 170 60 {lab=#net4}
N 160 -130 160 -100 {lab=#net3}
N 160 -100 210 -100 {lab=#net3}
N 160 30 160 60 {lab=#net4}
N 160 30 210 30 {lab=#net4}
N 210 -200 210 -160 {lab=VPWR}
N 210 90 210 150 {lab=VGND}
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
N 210 -130 300 -130 {lab=VPB}
N 470 -160 590 -160 {lab=VPB}
N 470 -80 590 -80 {lab=VPB}
N 210 60 310 60 {lab=VNB}
N 470 30 590 30 {lab=VNB}
N 470 110 590 110 {lab=VNB}
N 280 10 290 10 {lab=DN}
N 370 -20 370 10 {lab=#net5}
N 450 -20 450 -0 {lab=#net2}
N 410 0 450 -0 {lab=#net2}
N 410 0 410 30 {lab=#net2}
N 470 -110 500 -110 {lab=VPWR}
N 470 60 490 60 {lab=VGND}
N 470 -190 610 -190 {lab=#net6}
N 610 -190 610 -50 {lab=#net6}
N 470 -50 610 -50 {lab=#net6}
N 470 140 610 140 {lab=#net7}
N 610 0 610 140 {lab=#net7}
N 470 0 610 0 {lab=#net7}
N 470 80 650 80 {lab=I_OUT}
N 650 -20 650 80 {lab=I_OUT}
N 470 -130 650 -130 {lab=I_OUT}
N 590 -20 650 -20 {lab=I_OUT}
N 650 -130 650 -20 {lab=I_OUT}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 450 110 0 0 {name=MN1
W=4
L=2
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
W=14
L=2
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
L=0.5
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
L=0.5
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
C {ipin.sym} 280 10 0 0 {name=p2 lab=DN}
C {iopin.sym} -150 80 0 0 {name=p3 lab=VPWR}
C {iopin.sym} -150 100 0 0 {name=p4 lab=VGND}
C {iopin.sym} -150 120 0 0 {name=p5 lab=VPB}
C {iopin.sym} -150 140 0 0 {name=p6 lab=VNB}
C {opin.sym} 590 -20 0 1 {name=p7 lab=I_OUT}
C {lab_pin.sym} -150 60 2 1 {name=p8 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 210 -200 2 1 {name=p9 sig_type=std_logic lab=VPWR}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 370 -80 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} -180 100 2 1 {name=p10 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 210 150 2 0 {name=p11 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -180 120 2 1 {name=p13 sig_type=std_logic lab=VPB}
C {lab_pin.sym} -180 140 2 1 {name=p15 sig_type=std_logic lab=VNB}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 190 -130 0 0 {name=MP3
W=14
L=2
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
W=4
L=2
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
C {lab_pin.sym} 300 -130 2 1 {name=p17 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 310 60 2 1 {name=p18 sig_type=std_logic lab=VNB}
C {lab_pin.sym} 590 -160 2 1 {name=p12 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 590 -80 2 1 {name=p14 sig_type=std_logic lab=VPB}
C {lab_pin.sym} 590 30 2 1 {name=p16 sig_type=std_logic lab=VNB}
C {lab_pin.sym} 590 110 2 1 {name=p19 sig_type=std_logic lab=VNB}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 330 10 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 410 -20 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 500 -110 2 0 {name=p20 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 490 60 2 0 {name=p21 sig_type=std_logic lab=VGND}
