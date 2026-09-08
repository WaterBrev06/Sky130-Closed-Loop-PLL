v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -40 -90 -40 {lab=VPWR}
N -160 40 -90 40 {lab=VPWR}
N 90 -60 120 -60 {lab=UP}
N 120 -60 120 -40 {lab=UP}
N 120 -40 150 -40 {lab=UP}
N 90 20 120 20 {lab=DN}
N 120 0 120 20 {lab=DN}
N 120 0 150 0 {lab=DN}
N -160 -20 -90 -20 {lab=RST_B}
N -160 60 -90 60 {lab=RST_B}
N -160 -60 -90 -60 {lab=REF_CLK}
N -160 20 -90 20 {lab=FB_CLK}
N -380 -40 -380 -10 {lab=FB_CLK}
N -380 -150 -380 -120 {lab=REF_CLK}
N -430 -60 -380 -60 {lab=VGND}
N -430 50 -380 50 {lab=VGND}
N 630 -230 670 -230 {lab=VPWR}
N 670 -170 670 -110 {lab=0}
N 770 -150 770 -110 {lab=0}
N 770 -230 770 -210 {lab=VGND}
N 400 -20 420 -20 {lab=#net1}
N 500 -20 570 -20 {lab=RST_B}
N 290 -20 320 -20 {lab=RST_RAW}
N 290 -20 290 -0 {lab=RST_RAW}
N 270 -20 290 -20 {lab=RST_RAW}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/dfrtp_1.sym} 0 -40 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/dfrtp_1.sym} 0 40 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/nand2_1.sym} 210 -20 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 630 -230 0 0 {name=p1 sig_type=std_logic lab=VPWR}
C {gnd.sym} 670 -110 0 0 {name=l1 lab=0}
C {lab_pin.sym} -160 -40 0 0 {name=p3 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} -160 40 0 0 {name=p4 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 570 -20 0 0 {name=p5 sig_type=std_logic lab=RST_B}
C {lab_pin.sym} -160 -20 0 0 {name=p6 sig_type=std_logic lab=RST_B}
C {lab_pin.sym} -160 60 0 0 {name=p7 sig_type=std_logic lab=RST_B}
C {lab_pin.sym} -160 -60 0 0 {name=p8 sig_type=std_logic lab=REF_CLK}
C {lab_pin.sym} -160 20 0 0 {name=p9 sig_type=std_logic lab=FB_CLK}
C {code_shown.sym} 200 100 0 0 {name=sim_commands only_toplevel=false value=".option scale=1u
.option method=gear reltol=1e-3
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

VVPB VPB 0 1.8
VVNB VNB 0 0

.ic v(UP)=0 v(DN)=0 v(RST_B)=1.8 v(RST_RAW)=1.8


.tran 10p 12n uic

.control
	run
	let v_ref = v(REF_CLK)
	let v_fb = v(FB_CLK) + 2
	let v_up = v(UP) + 4
	let v_dn = v(DN) + 6
	let v_rst = v(RST_B) + 8

	plot v_ref v_fb v_up v_dn v_rst title 'PFD Operation (REF Leads FB)'
.endc"}
C {lab_pin.sym} 120 -40 0 0 {name=p10 sig_type=std_logic lab=UP
}
C {lab_pin.sym} 120 0 0 0 {name=p11 sig_type=std_logic lab=DN}
C {vsource.sym} -380 -90 0 0 {name=V2 value="PULSE(0 1.8 0 100p 100p 1.2n 10n)" savecurrent=false}
C {vsource.sym} -380 20 0 0 {name=V3 value="PULSE(0 1.8 2n 100p 100p 1.2n 10n)" savecurrent=false}
C {lab_pin.sym} -380 -150 0 0 {name=p12 sig_type=std_logic lab=REF_CLK}
C {lab_pin.sym} -380 -40 0 0 {name=p13 sig_type=std_logic lab=FB_CLK}
C {lab_pin.sym} -430 -60 0 0 {name=p14 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -430 50 0 0 {name=p15 sig_type=std_logic lab=VGND}
C {vsource.sym} 670 -200 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 770 -110 0 0 {name=l2 lab=0}
C {lab_pin.sym} 770 -230 0 0 {name=p2 sig_type=std_logic lab=VGND}
C {vsource.sym} 770 -180 0 0 {name=V4 value=0 savecurrent=false}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 360 -20 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_stdcells/inv_1.sym} 460 -20 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 290 0 0 0 {name=p16 sig_type=std_logic lab=RST_RAW}
