v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 90 -60 120 -60 {lab=UP}
N 120 -60 120 -40 {lab=UP}
N 120 -40 150 -40 {lab=UP}
N 90 20 120 20 {lab=DN}
N 120 0 120 20 {lab=DN}
N 120 0 150 0 {lab=DN}
N -160 -20 -90 -20 {lab=RST_B}
N -160 60 -90 60 {lab=RST_B}
N 400 -20 420 -20 {lab=#net1}
N 500 -20 570 -20 {lab=RST_B}
N 290 -20 320 -20 {lab=RST_RAW}
N 290 -20 290 -0 {lab=RST_RAW}
N 270 -20 290 -20 {lab=RST_RAW}
N -160 -60 -90 -60 {lab=REF_CLK}
N -160 20 -90 20 {lab=FB_CLK}
N 120 -100 120 -60 {lab=UP}
N 120 20 120 60 {lab=DN}
N -280 -160 -280 -120 {lab=VPWR}
N -160 -40 -90 -40 {lab=VPWR}
N -160 40 -90 40 {lab=VPWR}
N -70 150 -60 150 {lab=VGND}
N -70 170 -60 170 {lab=VPB}
N -70 190 -60 190 {lab=VNB}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/dfrtp_1.sym} 0 -40 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/dfrtp_1.sym} 0 40 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/nand2_1.sym} 210 -20 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 570 -20 0 0 {name=p5 sig_type=std_logic lab=RST_B}
C {lab_pin.sym} -160 -20 0 0 {name=p6 sig_type=std_logic lab=RST_B}
C {lab_pin.sym} -160 60 0 0 {name=p7 sig_type=std_logic lab=RST_B}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 360 -20 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 460 -20 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 290 0 0 0 {name=p16 sig_type=std_logic lab=RST_RAW}
C {ipin.sym} -160 -60 0 0 {name=p13 lab=REF_CLK}
C {ipin.sym} -160 20 0 0 {name=p8 lab=FB_CLK}
C {iopin.sym} -60 150 0 0 {name=p9 lab=VGND}
C {iopin.sym} -60 170 0 0 {name=p14 lab=VPB}
C {iopin.sym} -60 190 0 0 {name=p15 lab=VNB}
C {iopin.sym} -280 -120 0 0 {name=p17 lab=VPWR}
C {opin.sym} 120 -100 0 0 {name=p1 lab=UP}
C {opin.sym} 120 60 0 0 {name=p2 lab=DN}
C {lab_pin.sym} -280 -160 0 0 {name=p3 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} -160 -40 0 0 {name=p4 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} -160 40 0 0 {name=p10 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} -70 150 0 0 {name=p11 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -70 170 0 0 {name=p12 sig_type=std_logic lab=VPB}
C {lab_pin.sym} -70 190 0 0 {name=p18 sig_type=std_logic lab=VNB}
