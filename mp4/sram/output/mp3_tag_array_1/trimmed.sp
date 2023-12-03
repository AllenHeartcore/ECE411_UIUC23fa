**************************************************
* OpenRAM generated memory.
* Words: 16
* Data bits: 24
* Banks: 1
* Column mux: 1:1
* Trimmed: True
* LVS: False
**************************************************
* File: DFFPOSX1.pex.netlist
* Created: Wed Jan  2 18:36:24 2008
* Program "Calibre xRC"
* Version "v2007.2_34.24"
*
.subckt dff D Q clk vdd gnd
*
MM21 Q a_66_6# gnd gnd NMOS_VTG L=5e-08 W=5e-07
MM19 a_76_6# a_2_6# a_66_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM20 gnd Q a_76_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM18 a_66_6# clk a_61_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM17 a_61_6# a_34_4# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM10 gnd clk a_2_6# gnd NMOS_VTG L=5e-08 W=5e-07
MM16 a_34_4# a_22_6# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM15 gnd a_34_4# a_31_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM14 a_31_6# clk a_22_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM13 a_22_6# a_2_6# a_17_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM12 a_17_6# D gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM11 Q a_66_6# vdd vdd PMOS_VTG L=5e-08 W=1e-06
MM9 vdd Q a_76_84# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM8 a_76_84# clk a_66_6# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM7 a_66_6# a_2_6# a_61_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM6 a_61_74# a_34_4# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM0 vdd clk a_2_6# vdd PMOS_VTG L=5e-08 W=1e-06
MM5 a_34_4# a_22_6# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM4 vdd a_34_4# a_31_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM3 a_31_74# a_2_6# a_22_6# vdd PMOS_VTG L=5e-08 W=5e-07
MM2 a_22_6# clk a_17_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM1 a_17_74# D vdd vdd PMOS_VTG L=5e-08 W=5e-07
* c_9 a_66_6# 0 0.271997f
* c_20 clk 0 0.350944f
* c_27 Q 0 0.202617f
* c_32 a_76_84# 0 0.0210573f
* c_38 a_76_6# 0 0.0204911f
* c_45 a_34_4# 0 0.172306f
* c_55 a_2_6# 0 0.283119f
* c_59 a_22_6# 0 0.157312f
* c_64 D 0 0.0816386f
* c_73 gnd 0 0.254131f
* c_81 vdd 0 0.23624f
*
*.include "dff.pex.netlist.dff.pxi"
*
.ends
*
*

.SUBCKT mp3_tag_array_1_row_addr_dff
+ din_0 din_1 din_2 din_3 dout_0 dout_1 dout_2 dout_3 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 4 cols: 1
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r1_c0
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r2_c0
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r3_c0
+ din_3 dout_3 clk vdd gnd
+ dff
.ENDS mp3_tag_array_1_row_addr_dff

.SUBCKT mp3_tag_array_1_data_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6
+ dout_7 dout_8 dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15
+ dout_16 dout_17 dout_18 dout_19 dout_20 dout_21 dout_22 dout_23 clk
+ vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 24
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r0_c1
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r0_c2
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r0_c3
+ din_3 dout_3 clk vdd gnd
+ dff
Xdff_r0_c4
+ din_4 dout_4 clk vdd gnd
+ dff
Xdff_r0_c5
+ din_5 dout_5 clk vdd gnd
+ dff
Xdff_r0_c6
+ din_6 dout_6 clk vdd gnd
+ dff
Xdff_r0_c7
+ din_7 dout_7 clk vdd gnd
+ dff
Xdff_r0_c8
+ din_8 dout_8 clk vdd gnd
+ dff
Xdff_r0_c9
+ din_9 dout_9 clk vdd gnd
+ dff
Xdff_r0_c10
+ din_10 dout_10 clk vdd gnd
+ dff
Xdff_r0_c11
+ din_11 dout_11 clk vdd gnd
+ dff
Xdff_r0_c12
+ din_12 dout_12 clk vdd gnd
+ dff
Xdff_r0_c13
+ din_13 dout_13 clk vdd gnd
+ dff
Xdff_r0_c14
+ din_14 dout_14 clk vdd gnd
+ dff
Xdff_r0_c15
+ din_15 dout_15 clk vdd gnd
+ dff
Xdff_r0_c16
+ din_16 dout_16 clk vdd gnd
+ dff
Xdff_r0_c17
+ din_17 dout_17 clk vdd gnd
+ dff
Xdff_r0_c18
+ din_18 dout_18 clk vdd gnd
+ dff
Xdff_r0_c19
+ din_19 dout_19 clk vdd gnd
+ dff
Xdff_r0_c20
+ din_20 dout_20 clk vdd gnd
+ dff
Xdff_r0_c21
+ din_21 dout_21 clk vdd gnd
+ dff
Xdff_r0_c22
+ din_22 dout_22 clk vdd gnd
+ dff
Xdff_r0_c23
+ din_23 dout_23 clk vdd gnd
+ dff
.ENDS mp3_tag_array_1_data_dff

* spice ptx M{0} {1} nmos_vtg m=16 w=0.2925u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=16 w=0.8775000000000001u l=0.05u pd=1.86u ps=1.86u as=0.11p ad=0.11p

.SUBCKT mp3_tag_array_1_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 52
Mpinv_pmos Z A vdd vdd pmos_vtg m=16 w=0.8775000000000001u l=0.05u pd=1.86u ps=1.86u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=16 w=0.2925u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p
.ENDS mp3_tag_array_1_pinv_10

* spice ptx M{0} {1} nmos_vtg m=2 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=2 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT mp3_tag_array_1_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 6
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_tag_array_1_pinv_8

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT mp3_tag_array_1_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_tag_array_1_pinv_7

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p

.SUBCKT mp3_tag_array_1_pinv_6
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_tag_array_1_pinv_6

* spice ptx M{0} {1} nmos_vtg m=5 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=5 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p

.SUBCKT mp3_tag_array_1_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 17
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_tag_array_1_pinv_9

.SUBCKT mp3_tag_array_1_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 2, 6, 17, 52]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_tag_array_1_pinv_6
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ mp3_tag_array_1_pinv_6
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ mp3_tag_array_1_pinv_7
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ mp3_tag_array_1_pinv_8
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ mp3_tag_array_1_pinv_9
Xbuf_inv6
+ Zb5_int Z vdd gnd
+ mp3_tag_array_1_pinv_10
.ENDS mp3_tag_array_1_pdriver_0

* spice ptx M{0} {1} pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_tag_array_1_pinv_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_tag_array_1_pinv_3

.SUBCKT mp3_tag_array_1_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_tag_array_1_pinv_3
.ENDS mp3_tag_array_1_pdriver

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_tag_array_1_pnand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_tag_array_1_pnand2_0

.SUBCKT mp3_tag_array_1_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ mp3_tag_array_1_pnand2_0
Xpand2_inv
+ zb_int Z vdd gnd
+ mp3_tag_array_1_pdriver
.ENDS mp3_tag_array_1_pand2

* spice ptx M{0} {1} nmos_vtg m=8 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=8 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT mp3_tag_array_1_pinv_13
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 24
Mpinv_pmos Z A vdd vdd pmos_vtg m=8 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=8 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_tag_array_1_pinv_13

.SUBCKT mp3_tag_array_1_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [24]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_tag_array_1_pinv_13
.ENDS mp3_tag_array_1_pdriver_3

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_tag_array_1_pnand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_tag_array_1_pnand3_0

.SUBCKT mp3_tag_array_1_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 24
Xpand3_nand
+ A B C zb_int vdd gnd
+ mp3_tag_array_1_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ mp3_tag_array_1_pdriver_3
.ENDS mp3_tag_array_1_pand3_0

* spice ptx M{0} {1} pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p

* spice ptx M{0} {1} nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p

.SUBCKT mp3_tag_array_1_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 5
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p
.ENDS mp3_tag_array_1_pinv_11

.SUBCKT mp3_tag_array_1_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 5]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_tag_array_1_pinv_6
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ mp3_tag_array_1_pinv_11
.ENDS mp3_tag_array_1_pdriver_1

* spice ptx M{0} {1} pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_tag_array_1_pinv_15
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 3
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_tag_array_1_pinv_15

* spice ptx M{0} {1} nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p

.SUBCKT mp3_tag_array_1_pinv_16
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p
.ENDS mp3_tag_array_1_pinv_16

.SUBCKT mp3_tag_array_1_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 3, 8]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_tag_array_1_pinv_6
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ mp3_tag_array_1_pinv_6
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ mp3_tag_array_1_pinv_15
Xbuf_inv4
+ Zb3_int Z vdd gnd
+ mp3_tag_array_1_pinv_16
.ENDS mp3_tag_array_1_pdriver_4

.SUBCKT mp3_tag_array_1_pnand2_1
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_tag_array_1_pnand2_1

.SUBCKT mp3_tag_array_1_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_tag_array_1_pinv_1

* spice ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

* spice ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_tag_array_1_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_tag_array_1_pinv_2

.SUBCKT mp3_tag_array_1_dff_buf_0
+ D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff
+ D qint clk vdd gnd
+ dff
Xdff_buf_inv1
+ qint Qb vdd gnd
+ mp3_tag_array_1_pinv_1
Xdff_buf_inv2
+ Qb Q vdd gnd
+ mp3_tag_array_1_pinv_2
.ENDS mp3_tag_array_1_dff_buf_0

.SUBCKT mp3_tag_array_1_dff_buf_array
+ din_0 din_1 dout_0 dout_bar_0 dout_1 dout_bar_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* OUTPUT: dout_1 
* OUTPUT: dout_bar_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 2 cols: 1
* inv1: 2 inv2: 4
Xdff_r0_c0
+ din_0 dout_0 dout_bar_0 clk vdd gnd
+ mp3_tag_array_1_dff_buf_0
Xdff_r1_c0
+ din_1 dout_1 dout_bar_1 clk vdd gnd
+ mp3_tag_array_1_dff_buf_0
.ENDS mp3_tag_array_1_dff_buf_array

* spice ptx M{0} {1} nmos_vtg m=10 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=10 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p

.SUBCKT mp3_tag_array_1_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 32
Mpinv_pmos Z A vdd vdd pmos_vtg m=10 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=10 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p
.ENDS mp3_tag_array_1_pinv_12

.SUBCKT mp3_tag_array_1_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [32]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_tag_array_1_pinv_12
.ENDS mp3_tag_array_1_pdriver_2

.SUBCKT mp3_tag_array_1_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 32
Xpand3_nand
+ A B C zb_int vdd gnd
+ mp3_tag_array_1_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ mp3_tag_array_1_pdriver_2
.ENDS mp3_tag_array_1_pand3

.SUBCKT mp3_tag_array_1_pinv_14
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_tag_array_1_pinv_14

.SUBCKT mp3_tag_array_1_pinv_17
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_tag_array_1_pinv_17

.SUBCKT mp3_tag_array_1_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv1
+ dout_1 dout_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv2
+ dout_2 dout_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv3
+ dout_3 dout_4 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv4
+ dout_4 dout_5 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv5
+ dout_5 dout_6 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv6
+ dout_6 dout_7 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv7
+ dout_7 dout_8 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdinv8
+ dout_8 out vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_8_0
+ out n_8_0 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_8_1
+ out n_8_1 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_8_2
+ out n_8_2 vdd gnd
+ mp3_tag_array_1_pinv_17
Xdload_8_3
+ out n_8_3 vdd gnd
+ mp3_tag_array_1_pinv_17
.ENDS mp3_tag_array_1_delay_chain

.SUBCKT mp3_tag_array_1_control_logic_rw
+ csb web clk rbl_bl s_en w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : web 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* num_rows: 16
* words_per_row: 1
* word_size 24
Xctrl_dffs
+ csb web cs_bar cs we_bar we clk_buf vdd gnd
+ mp3_tag_array_1_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ mp3_tag_array_1_pdriver_0
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ mp3_tag_array_1_pinv_14
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ mp3_tag_array_1_pand2
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ mp3_tag_array_1_pand2
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ mp3_tag_array_1_pdriver_1
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ mp3_tag_array_1_pinv_14
Xw_en_and
+ we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ mp3_tag_array_1_pand3
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd
+ mp3_tag_array_1_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ mp3_tag_array_1_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ mp3_tag_array_1_pnand2_1
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ mp3_tag_array_1_pdriver_4
.ENDS mp3_tag_array_1_control_logic_rw

.SUBCKT mp3_tag_array_1_pnand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_tag_array_1_pnand2

.SUBCKT mp3_tag_array_1_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_tag_array_1_pinv

.SUBCKT mp3_tag_array_1_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ mp3_tag_array_1_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ mp3_tag_array_1_pinv
.ENDS mp3_tag_array_1_and2_dec

.SUBCKT mp3_tag_array_1_hierarchical_predecode2x4
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ mp3_tag_array_1_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ mp3_tag_array_1_pinv
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ mp3_tag_array_1_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ mp3_tag_array_1_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ mp3_tag_array_1_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ mp3_tag_array_1_and2_dec
.ENDS mp3_tag_array_1_hierarchical_predecode2x4

.SUBCKT mp3_tag_array_1_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 decode_0 decode_1 decode_2 decode_3
+ decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10
+ decode_11 decode_12 decode_13 decode_14 decode_15 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ mp3_tag_array_1_hierarchical_predecode2x4
Xpre_1
+ addr_2 addr_3 out_4 out_5 out_6 out_7 vdd gnd
+ mp3_tag_array_1_hierarchical_predecode2x4
XDEC_AND_0
+ out_0 out_4 decode_0 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_4
+ out_0 out_5 decode_4 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_8
+ out_0 out_6 decode_8 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_12
+ out_0 out_7 decode_12 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_1
+ out_1 out_4 decode_1 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_5
+ out_1 out_5 decode_5 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_9
+ out_1 out_6 decode_9 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_13
+ out_1 out_7 decode_13 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_2
+ out_2 out_4 decode_2 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_6
+ out_2 out_5 decode_6 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_10
+ out_2 out_6 decode_10 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_14
+ out_2 out_7 decode_14 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_3
+ out_3 out_4 decode_3 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_7
+ out_3 out_5 decode_7 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_11
+ out_3 out_6 decode_11 vdd gnd
+ mp3_tag_array_1_and2_dec
XDEC_AND_15
+ out_3 out_7 decode_15 vdd gnd
+ mp3_tag_array_1_and2_dec
.ENDS mp3_tag_array_1_hierarchical_decoder

* spice ptx M{0} {1} pmos_vtg m=5 w=0.325u l=0.05u pd=0.75u ps=0.75u as=0.04p ad=0.04p

* spice ptx M{0} {1} nmos_vtg m=5 w=0.1075u l=0.05u pd=0.32u ps=0.32u as=0.01p ad=0.01p

.SUBCKT mp3_tag_array_1_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 6
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.325u l=0.05u pd=0.75u ps=0.75u as=0.04p ad=0.04p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.1075u l=0.05u pd=0.32u ps=0.32u as=0.01p ad=0.01p
.ENDS mp3_tag_array_1_pinv_0

.SUBCKT mp3_tag_array_1_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 6
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ mp3_tag_array_1_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ mp3_tag_array_1_pinv_0
.ENDS mp3_tag_array_1_and2_dec_0

.SUBCKT mp3_tag_array_1_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 24
Xwld_nand
+ A B zb_int vdd gnd
+ mp3_tag_array_1_pnand2
Xwl_driver
+ zb_int Z vdd gnd
+ mp3_tag_array_1_pinv_0
.ENDS mp3_tag_array_1_wordline_driver

.SUBCKT mp3_tag_array_1_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9
+ wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 24
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ mp3_tag_array_1_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ mp3_tag_array_1_wordline_driver
.ENDS mp3_tag_array_1_wordline_driver_array

.SUBCKT mp3_tag_array_1_port_address
+ addr_0 addr_1 addr_2 addr_3 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 dec_out_0 dec_out_1 dec_out_2 dec_out_3
+ dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10
+ dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 vdd gnd
+ mp3_tag_array_1_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_en vdd gnd
+ mp3_tag_array_1_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ mp3_tag_array_1_and2_dec_0
.ENDS mp3_tag_array_1_port_address

.SUBCKT dummy_cell_1rw bl br wl vdd gnd
* Inverter 1
MM0 Q_bar Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 Q_bar Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q Q_bar gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q Q_bar vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl_noconn wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br_noconn wl Q_bar gnd NMOS_VTG W=135.00n L=50n
.ENDS dummy_cell_1rw


.SUBCKT mp3_tag_array_1_dummy_array_3
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ dummy_cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ dummy_cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ dummy_cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ dummy_cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ dummy_cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ dummy_cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ dummy_cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ dummy_cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ dummy_cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ dummy_cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ dummy_cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ dummy_cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ dummy_cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ dummy_cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ dummy_cell_1rw
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ dummy_cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ dummy_cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_tag_array_1_dummy_array_3

.SUBCKT mp3_tag_array_1_dummy_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_tag_array_1_dummy_array

.SUBCKT cell_1rw bl br wl vdd gnd
* Inverter 1
MM0 Q_bar Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 Q_bar Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q Q_bar gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q Q_bar vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br wl Q_bar gnd NMOS_VTG W=135.00n L=50n
.ENDS cell_1rw


.SUBCKT mp3_tag_array_1_bitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 24
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c1
*+ bl_0_1 br_0_1 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c1
*+ bl_0_1 br_0_1 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c1
*+ bl_0_1 br_0_1 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c1
*+ bl_0_1 br_0_1 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c1
*+ bl_0_1 br_0_1 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c1
*+ bl_0_1 br_0_1 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c1
*+ bl_0_1 br_0_1 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c1
*+ bl_0_1 br_0_1 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c1
*+ bl_0_1 br_0_1 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c1
*+ bl_0_1 br_0_1 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c1
*+ bl_0_1 br_0_1 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c1
*+ bl_0_1 br_0_1 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c1
*+ bl_0_1 br_0_1 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c1
*+ bl_0_1 br_0_1 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c1
+ bl_0_1 br_0_1 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c2
*+ bl_0_2 br_0_2 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c2
*+ bl_0_2 br_0_2 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c2
*+ bl_0_2 br_0_2 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c2
*+ bl_0_2 br_0_2 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c2
*+ bl_0_2 br_0_2 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c2
*+ bl_0_2 br_0_2 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c2
*+ bl_0_2 br_0_2 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c2
*+ bl_0_2 br_0_2 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c2
*+ bl_0_2 br_0_2 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c2
*+ bl_0_2 br_0_2 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c2
*+ bl_0_2 br_0_2 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c2
*+ bl_0_2 br_0_2 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c2
*+ bl_0_2 br_0_2 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c2
*+ bl_0_2 br_0_2 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c2
+ bl_0_2 br_0_2 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c3
*+ bl_0_3 br_0_3 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c3
*+ bl_0_3 br_0_3 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c3
*+ bl_0_3 br_0_3 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c3
*+ bl_0_3 br_0_3 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c3
*+ bl_0_3 br_0_3 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c3
*+ bl_0_3 br_0_3 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c3
*+ bl_0_3 br_0_3 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c3
*+ bl_0_3 br_0_3 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c3
*+ bl_0_3 br_0_3 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c3
*+ bl_0_3 br_0_3 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c3
*+ bl_0_3 br_0_3 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c3
*+ bl_0_3 br_0_3 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c3
*+ bl_0_3 br_0_3 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c3
*+ bl_0_3 br_0_3 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c3
+ bl_0_3 br_0_3 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c4
*+ bl_0_4 br_0_4 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c4
*+ bl_0_4 br_0_4 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c4
*+ bl_0_4 br_0_4 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c4
*+ bl_0_4 br_0_4 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c4
*+ bl_0_4 br_0_4 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c4
*+ bl_0_4 br_0_4 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c4
*+ bl_0_4 br_0_4 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c4
*+ bl_0_4 br_0_4 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c4
*+ bl_0_4 br_0_4 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c4
*+ bl_0_4 br_0_4 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c4
*+ bl_0_4 br_0_4 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c4
*+ bl_0_4 br_0_4 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c4
*+ bl_0_4 br_0_4 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c4
*+ bl_0_4 br_0_4 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c4
+ bl_0_4 br_0_4 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c5
*+ bl_0_5 br_0_5 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c5
*+ bl_0_5 br_0_5 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c5
*+ bl_0_5 br_0_5 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c5
*+ bl_0_5 br_0_5 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c5
*+ bl_0_5 br_0_5 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c5
*+ bl_0_5 br_0_5 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c5
*+ bl_0_5 br_0_5 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c5
*+ bl_0_5 br_0_5 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c5
*+ bl_0_5 br_0_5 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c5
*+ bl_0_5 br_0_5 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c5
*+ bl_0_5 br_0_5 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c5
*+ bl_0_5 br_0_5 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c5
*+ bl_0_5 br_0_5 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c5
*+ bl_0_5 br_0_5 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c5
+ bl_0_5 br_0_5 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c6
*+ bl_0_6 br_0_6 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c6
*+ bl_0_6 br_0_6 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c6
*+ bl_0_6 br_0_6 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c6
*+ bl_0_6 br_0_6 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c6
*+ bl_0_6 br_0_6 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c6
*+ bl_0_6 br_0_6 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c6
*+ bl_0_6 br_0_6 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c6
*+ bl_0_6 br_0_6 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c6
*+ bl_0_6 br_0_6 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c6
*+ bl_0_6 br_0_6 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c6
*+ bl_0_6 br_0_6 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c6
*+ bl_0_6 br_0_6 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c6
*+ bl_0_6 br_0_6 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c6
*+ bl_0_6 br_0_6 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c6
+ bl_0_6 br_0_6 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c7
*+ bl_0_7 br_0_7 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c7
*+ bl_0_7 br_0_7 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c7
*+ bl_0_7 br_0_7 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c7
*+ bl_0_7 br_0_7 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c7
*+ bl_0_7 br_0_7 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c7
*+ bl_0_7 br_0_7 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c7
*+ bl_0_7 br_0_7 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c7
*+ bl_0_7 br_0_7 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c7
*+ bl_0_7 br_0_7 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c7
*+ bl_0_7 br_0_7 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c7
*+ bl_0_7 br_0_7 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c7
*+ bl_0_7 br_0_7 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c7
*+ bl_0_7 br_0_7 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c7
*+ bl_0_7 br_0_7 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c7
+ bl_0_7 br_0_7 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c8
*+ bl_0_8 br_0_8 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c8
*+ bl_0_8 br_0_8 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c8
*+ bl_0_8 br_0_8 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c8
*+ bl_0_8 br_0_8 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c8
*+ bl_0_8 br_0_8 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c8
*+ bl_0_8 br_0_8 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c8
*+ bl_0_8 br_0_8 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c8
*+ bl_0_8 br_0_8 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c8
*+ bl_0_8 br_0_8 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c8
*+ bl_0_8 br_0_8 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c8
*+ bl_0_8 br_0_8 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c8
*+ bl_0_8 br_0_8 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c8
*+ bl_0_8 br_0_8 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c8
*+ bl_0_8 br_0_8 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c8
+ bl_0_8 br_0_8 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c9
*+ bl_0_9 br_0_9 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c9
*+ bl_0_9 br_0_9 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c9
*+ bl_0_9 br_0_9 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c9
*+ bl_0_9 br_0_9 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c9
*+ bl_0_9 br_0_9 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c9
*+ bl_0_9 br_0_9 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c9
*+ bl_0_9 br_0_9 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c9
*+ bl_0_9 br_0_9 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c9
*+ bl_0_9 br_0_9 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c9
*+ bl_0_9 br_0_9 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c9
*+ bl_0_9 br_0_9 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c9
*+ bl_0_9 br_0_9 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c9
*+ bl_0_9 br_0_9 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c9
*+ bl_0_9 br_0_9 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c9
+ bl_0_9 br_0_9 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c10
*+ bl_0_10 br_0_10 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c10
*+ bl_0_10 br_0_10 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c10
*+ bl_0_10 br_0_10 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c10
*+ bl_0_10 br_0_10 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c10
*+ bl_0_10 br_0_10 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c10
*+ bl_0_10 br_0_10 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c10
*+ bl_0_10 br_0_10 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c10
*+ bl_0_10 br_0_10 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c10
*+ bl_0_10 br_0_10 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c10
*+ bl_0_10 br_0_10 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c10
*+ bl_0_10 br_0_10 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c10
*+ bl_0_10 br_0_10 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c10
*+ bl_0_10 br_0_10 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c10
*+ bl_0_10 br_0_10 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c10
+ bl_0_10 br_0_10 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c11
*+ bl_0_11 br_0_11 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c11
*+ bl_0_11 br_0_11 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c11
*+ bl_0_11 br_0_11 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c11
*+ bl_0_11 br_0_11 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c11
*+ bl_0_11 br_0_11 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c11
*+ bl_0_11 br_0_11 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c11
*+ bl_0_11 br_0_11 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c11
*+ bl_0_11 br_0_11 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c11
*+ bl_0_11 br_0_11 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c11
*+ bl_0_11 br_0_11 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c11
*+ bl_0_11 br_0_11 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c11
*+ bl_0_11 br_0_11 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c11
*+ bl_0_11 br_0_11 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c11
*+ bl_0_11 br_0_11 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c11
+ bl_0_11 br_0_11 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c12
*+ bl_0_12 br_0_12 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c12
*+ bl_0_12 br_0_12 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c12
*+ bl_0_12 br_0_12 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c12
*+ bl_0_12 br_0_12 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c12
*+ bl_0_12 br_0_12 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c12
*+ bl_0_12 br_0_12 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c12
*+ bl_0_12 br_0_12 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c12
*+ bl_0_12 br_0_12 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c12
*+ bl_0_12 br_0_12 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c12
*+ bl_0_12 br_0_12 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c12
*+ bl_0_12 br_0_12 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c12
*+ bl_0_12 br_0_12 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c12
*+ bl_0_12 br_0_12 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c12
*+ bl_0_12 br_0_12 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c12
+ bl_0_12 br_0_12 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c13
*+ bl_0_13 br_0_13 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c13
*+ bl_0_13 br_0_13 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c13
*+ bl_0_13 br_0_13 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c13
*+ bl_0_13 br_0_13 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c13
*+ bl_0_13 br_0_13 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c13
*+ bl_0_13 br_0_13 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c13
*+ bl_0_13 br_0_13 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c13
*+ bl_0_13 br_0_13 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c13
*+ bl_0_13 br_0_13 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c13
*+ bl_0_13 br_0_13 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c13
*+ bl_0_13 br_0_13 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c13
*+ bl_0_13 br_0_13 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c13
*+ bl_0_13 br_0_13 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c13
*+ bl_0_13 br_0_13 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c13
+ bl_0_13 br_0_13 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c14
*+ bl_0_14 br_0_14 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c14
*+ bl_0_14 br_0_14 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c14
*+ bl_0_14 br_0_14 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c14
*+ bl_0_14 br_0_14 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c14
*+ bl_0_14 br_0_14 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c14
*+ bl_0_14 br_0_14 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c14
*+ bl_0_14 br_0_14 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c14
*+ bl_0_14 br_0_14 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c14
*+ bl_0_14 br_0_14 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c14
*+ bl_0_14 br_0_14 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c14
*+ bl_0_14 br_0_14 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c14
*+ bl_0_14 br_0_14 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c14
*+ bl_0_14 br_0_14 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c14
*+ bl_0_14 br_0_14 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c14
+ bl_0_14 br_0_14 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c15
*+ bl_0_15 br_0_15 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c15
*+ bl_0_15 br_0_15 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c15
*+ bl_0_15 br_0_15 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c15
*+ bl_0_15 br_0_15 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c15
*+ bl_0_15 br_0_15 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c15
*+ bl_0_15 br_0_15 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c15
*+ bl_0_15 br_0_15 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c15
*+ bl_0_15 br_0_15 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c15
*+ bl_0_15 br_0_15 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c15
*+ bl_0_15 br_0_15 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c15
*+ bl_0_15 br_0_15 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c15
*+ bl_0_15 br_0_15 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c15
*+ bl_0_15 br_0_15 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c15
*+ bl_0_15 br_0_15 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c15
+ bl_0_15 br_0_15 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c16
*+ bl_0_16 br_0_16 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c16
*+ bl_0_16 br_0_16 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c16
*+ bl_0_16 br_0_16 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c16
*+ bl_0_16 br_0_16 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c16
*+ bl_0_16 br_0_16 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c16
*+ bl_0_16 br_0_16 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c16
*+ bl_0_16 br_0_16 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c16
*+ bl_0_16 br_0_16 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c16
*+ bl_0_16 br_0_16 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c16
*+ bl_0_16 br_0_16 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c16
*+ bl_0_16 br_0_16 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c16
*+ bl_0_16 br_0_16 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c16
*+ bl_0_16 br_0_16 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c16
*+ bl_0_16 br_0_16 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c16
+ bl_0_16 br_0_16 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c17
*+ bl_0_17 br_0_17 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c17
*+ bl_0_17 br_0_17 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c17
*+ bl_0_17 br_0_17 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c17
*+ bl_0_17 br_0_17 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c17
*+ bl_0_17 br_0_17 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c17
*+ bl_0_17 br_0_17 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c17
*+ bl_0_17 br_0_17 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c17
*+ bl_0_17 br_0_17 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c17
*+ bl_0_17 br_0_17 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c17
*+ bl_0_17 br_0_17 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c17
*+ bl_0_17 br_0_17 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c17
*+ bl_0_17 br_0_17 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c17
*+ bl_0_17 br_0_17 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c17
*+ bl_0_17 br_0_17 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c17
+ bl_0_17 br_0_17 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c18
*+ bl_0_18 br_0_18 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c18
*+ bl_0_18 br_0_18 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c18
*+ bl_0_18 br_0_18 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c18
*+ bl_0_18 br_0_18 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c18
*+ bl_0_18 br_0_18 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c18
*+ bl_0_18 br_0_18 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c18
*+ bl_0_18 br_0_18 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c18
*+ bl_0_18 br_0_18 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c18
*+ bl_0_18 br_0_18 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c18
*+ bl_0_18 br_0_18 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c18
*+ bl_0_18 br_0_18 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c18
*+ bl_0_18 br_0_18 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c18
*+ bl_0_18 br_0_18 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c18
*+ bl_0_18 br_0_18 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c18
+ bl_0_18 br_0_18 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c19
*+ bl_0_19 br_0_19 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c19
*+ bl_0_19 br_0_19 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c19
*+ bl_0_19 br_0_19 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c19
*+ bl_0_19 br_0_19 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c19
*+ bl_0_19 br_0_19 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c19
*+ bl_0_19 br_0_19 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c19
*+ bl_0_19 br_0_19 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c19
*+ bl_0_19 br_0_19 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c19
*+ bl_0_19 br_0_19 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c19
*+ bl_0_19 br_0_19 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c19
*+ bl_0_19 br_0_19 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c19
*+ bl_0_19 br_0_19 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c19
*+ bl_0_19 br_0_19 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c19
*+ bl_0_19 br_0_19 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c19
+ bl_0_19 br_0_19 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c20
*+ bl_0_20 br_0_20 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c20
*+ bl_0_20 br_0_20 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c20
*+ bl_0_20 br_0_20 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c20
*+ bl_0_20 br_0_20 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c20
*+ bl_0_20 br_0_20 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c20
*+ bl_0_20 br_0_20 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c20
*+ bl_0_20 br_0_20 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c20
*+ bl_0_20 br_0_20 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c20
*+ bl_0_20 br_0_20 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c20
*+ bl_0_20 br_0_20 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c20
*+ bl_0_20 br_0_20 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c20
*+ bl_0_20 br_0_20 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c20
*+ bl_0_20 br_0_20 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c20
*+ bl_0_20 br_0_20 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c20
+ bl_0_20 br_0_20 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c21
*+ bl_0_21 br_0_21 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c21
*+ bl_0_21 br_0_21 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c21
*+ bl_0_21 br_0_21 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c21
*+ bl_0_21 br_0_21 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c21
*+ bl_0_21 br_0_21 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c21
*+ bl_0_21 br_0_21 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c21
*+ bl_0_21 br_0_21 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c21
*+ bl_0_21 br_0_21 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c21
*+ bl_0_21 br_0_21 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c21
*+ bl_0_21 br_0_21 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c21
*+ bl_0_21 br_0_21 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c21
*+ bl_0_21 br_0_21 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c21
*+ bl_0_21 br_0_21 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c21
*+ bl_0_21 br_0_21 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c21
+ bl_0_21 br_0_21 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c22
*+ bl_0_22 br_0_22 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c22
*+ bl_0_22 br_0_22 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c22
*+ bl_0_22 br_0_22 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c22
*+ bl_0_22 br_0_22 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c22
*+ bl_0_22 br_0_22 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c22
*+ bl_0_22 br_0_22 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c22
*+ bl_0_22 br_0_22 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c22
*+ bl_0_22 br_0_22 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c22
*+ bl_0_22 br_0_22 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c22
*+ bl_0_22 br_0_22 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c22
*+ bl_0_22 br_0_22 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c22
*+ bl_0_22 br_0_22 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c22
*+ bl_0_22 br_0_22 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c22
*+ bl_0_22 br_0_22 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c22
+ bl_0_22 br_0_22 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c23
+ bl_0_23 br_0_23 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c23
+ bl_0_23 br_0_23 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c23
+ bl_0_23 br_0_23 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c23
+ bl_0_23 br_0_23 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c23
+ bl_0_23 br_0_23 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c23
+ bl_0_23 br_0_23 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c23
+ bl_0_23 br_0_23 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c23
+ bl_0_23 br_0_23 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c23
+ bl_0_23 br_0_23 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c23
+ bl_0_23 br_0_23 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c23
+ bl_0_23 br_0_23 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c23
+ bl_0_23 br_0_23 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c23
+ bl_0_23 br_0_23 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c23
+ bl_0_23 br_0_23 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c23
+ bl_0_23 br_0_23 wl_0_15 vdd gnd
+ cell_1rw
.ENDS mp3_tag_array_1_bitcell_array

.SUBCKT replica_cell_1rw bl br wl vdd gnd
* Inverter 1
MM0 vdd Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 vdd Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q vdd gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q vdd vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br wl vdd gnd NMOS_VTG W=135.00n L=50n
.ENDS cell_1rw


.SUBCKT mp3_tag_array_1_replica_column
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ replica_cell_1rw
Xrbc_1
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ replica_cell_1rw
Xrbc_2
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ replica_cell_1rw
Xrbc_3
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ replica_cell_1rw
Xrbc_4
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ replica_cell_1rw
Xrbc_5
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ replica_cell_1rw
Xrbc_6
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ replica_cell_1rw
Xrbc_7
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ replica_cell_1rw
Xrbc_8
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ replica_cell_1rw
Xrbc_9
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ replica_cell_1rw
Xrbc_10
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ replica_cell_1rw
Xrbc_11
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ replica_cell_1rw
Xrbc_12
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ replica_cell_1rw
Xrbc_13
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ replica_cell_1rw
Xrbc_14
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ replica_cell_1rw
Xrbc_15
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ replica_cell_1rw
Xrbc_16
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ replica_cell_1rw
.ENDS mp3_tag_array_1_replica_column

.SUBCKT mp3_tag_array_1_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 rbl_wl_0_0 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 24
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xbitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 vdd gnd
+ mp3_tag_array_1_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_br_0_0 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 vdd gnd
+ mp3_tag_array_1_replica_column
Xdummy_row_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 rbl_wl_0_0 vdd gnd
+ mp3_tag_array_1_dummy_array
.ENDS mp3_tag_array_1_replica_bitcell_array

.SUBCKT mp3_tag_array_1_dummy_array_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_tag_array_1_dummy_array_0

.SUBCKT mp3_tag_array_1_dummy_array_1
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 wl_0_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INPUT : wl_0_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c23
+ bl_0_23 br_0_23 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_tag_array_1_dummy_array_1

.SUBCKT mp3_tag_array_1_dummy_array_2
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 vdd gnd
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r1_c0
+ bl_0_0 br_0_0 wl_0_1 vdd gnd
+ dummy_cell_1rw
Xbit_r2_c0
+ bl_0_0 br_0_0 wl_0_2 vdd gnd
+ dummy_cell_1rw
Xbit_r3_c0
+ bl_0_0 br_0_0 wl_0_3 vdd gnd
+ dummy_cell_1rw
Xbit_r4_c0
+ bl_0_0 br_0_0 wl_0_4 vdd gnd
+ dummy_cell_1rw
Xbit_r5_c0
+ bl_0_0 br_0_0 wl_0_5 vdd gnd
+ dummy_cell_1rw
Xbit_r6_c0
+ bl_0_0 br_0_0 wl_0_6 vdd gnd
+ dummy_cell_1rw
Xbit_r7_c0
+ bl_0_0 br_0_0 wl_0_7 vdd gnd
+ dummy_cell_1rw
Xbit_r8_c0
+ bl_0_0 br_0_0 wl_0_8 vdd gnd
+ dummy_cell_1rw
Xbit_r9_c0
+ bl_0_0 br_0_0 wl_0_9 vdd gnd
+ dummy_cell_1rw
Xbit_r10_c0
+ bl_0_0 br_0_0 wl_0_10 vdd gnd
+ dummy_cell_1rw
Xbit_r11_c0
+ bl_0_0 br_0_0 wl_0_11 vdd gnd
+ dummy_cell_1rw
Xbit_r12_c0
+ bl_0_0 br_0_0 wl_0_12 vdd gnd
+ dummy_cell_1rw
Xbit_r13_c0
+ bl_0_0 br_0_0 wl_0_13 vdd gnd
+ dummy_cell_1rw
Xbit_r14_c0
+ bl_0_0 br_0_0 wl_0_14 vdd gnd
+ dummy_cell_1rw
Xbit_r15_c0
+ bl_0_0 br_0_0 wl_0_15 vdd gnd
+ dummy_cell_1rw
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ dummy_cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ dummy_cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_tag_array_1_dummy_array_2

.SUBCKT mp3_tag_array_1_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 rbl_wl_0_0 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_br_0_0 
* INOUT : bl_0_0 
* INOUT : br_0_0 
* INOUT : bl_0_1 
* INOUT : br_0_1 
* INOUT : bl_0_2 
* INOUT : br_0_2 
* INOUT : bl_0_3 
* INOUT : br_0_3 
* INOUT : bl_0_4 
* INOUT : br_0_4 
* INOUT : bl_0_5 
* INOUT : br_0_5 
* INOUT : bl_0_6 
* INOUT : br_0_6 
* INOUT : bl_0_7 
* INOUT : br_0_7 
* INOUT : bl_0_8 
* INOUT : br_0_8 
* INOUT : bl_0_9 
* INOUT : br_0_9 
* INOUT : bl_0_10 
* INOUT : br_0_10 
* INOUT : bl_0_11 
* INOUT : br_0_11 
* INOUT : bl_0_12 
* INOUT : br_0_12 
* INOUT : bl_0_13 
* INOUT : br_0_13 
* INOUT : bl_0_14 
* INOUT : br_0_14 
* INOUT : bl_0_15 
* INOUT : br_0_15 
* INOUT : bl_0_16 
* INOUT : br_0_16 
* INOUT : bl_0_17 
* INOUT : br_0_17 
* INOUT : bl_0_18 
* INOUT : br_0_18 
* INOUT : bl_0_19 
* INOUT : br_0_19 
* INOUT : bl_0_20 
* INOUT : br_0_20 
* INOUT : bl_0_21 
* INOUT : br_0_21 
* INOUT : bl_0_22 
* INOUT : br_0_22 
* INOUT : bl_0_23 
* INOUT : br_0_23 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_0_1 
* INPUT : wl_0_2 
* INPUT : wl_0_3 
* INPUT : wl_0_4 
* INPUT : wl_0_5 
* INPUT : wl_0_6 
* INPUT : wl_0_7 
* INPUT : wl_0_8 
* INPUT : wl_0_9 
* INPUT : wl_0_10 
* INPUT : wl_0_11 
* INPUT : wl_0_12 
* INPUT : wl_0_13 
* INPUT : wl_0_14 
* INPUT : wl_0_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 24
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 rbl_wl_0_0 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
+ mp3_tag_array_1_replica_bitcell_array
Xdummy_row_bot
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 gnd vdd gnd
+ mp3_tag_array_1_dummy_array_1
Xdummy_row_top
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 gnd vdd gnd
+ mp3_tag_array_1_dummy_array_0
Xdummy_col_left
+ dummy_left_bl_0_0 dummy_left_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd
+ mp3_tag_array_1_dummy_array_2
Xdummy_col_right
+ dummy_right_bl_0_0 dummy_right_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd
+ mp3_tag_array_1_dummy_array_3
.ENDS mp3_tag_array_1_capped_replica_bitcell_array

.SUBCKT mp3_tag_array_1_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos1 bl en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos2 br en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_tag_array_1_precharge_0

.SUBCKT mp3_tag_array_1_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* INPUT : en_bar 
* POWER : vdd 
* cols: 25 size: 1 bl: bl br: br
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ mp3_tag_array_1_precharge_0
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ mp3_tag_array_1_precharge_0
.ENDS mp3_tag_array_1_precharge_array

.SUBCKT sense_amp bl br dout en vdd gnd
M_1 dint net_1 vdd vdd pmos_vtg w=540.0n l=50.0n
M_3 net_1 dint vdd vdd pmos_vtg w=540.0n l=50.0n
M_2 dint net_1 net_2 gnd nmos_vtg w=270.0n l=50.0n
M_8 net_1 dint net_2 gnd nmos_vtg w=270.0n l=50.0n
M_5 bl en dint vdd pmos_vtg w=720.0n l=50.0n
M_6 br en net_1 vdd pmos_vtg w=720.0n l=50.0n
M_7 net_2 en gnd gnd nmos_vtg w=270.0n l=50.0n

M_9 dout_bar dint vdd vdd pmos_vtg w=180.0n l=50.0n
M_10 dout_bar dint gnd gnd nmos_vtg w=90.0n l=50.0n
M_11 dout dout_bar vdd vdd pmos_vtg w=540.0n l=50.0n
M_12 dout dout_bar gnd gnd nmos_vtg w=270.0n l=50.0n
.ENDS sense_amp


.SUBCKT mp3_tag_array_1_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3
+ data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7
+ data_8 bl_8 br_8 data_9 bl_9 br_9 data_10 bl_10 br_10 data_11 bl_11
+ br_11 data_12 bl_12 br_12 data_13 bl_13 br_13 data_14 bl_14 br_14
+ data_15 bl_15 br_15 data_16 bl_16 br_16 data_17 bl_17 br_17 data_18
+ bl_18 br_18 data_19 bl_19 br_19 data_20 bl_20 br_20 data_21 bl_21
+ br_21 data_22 bl_22 br_22 data_23 bl_23 br_23 en vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* OUTPUT: data_8 
* INPUT : bl_8 
* INPUT : br_8 
* OUTPUT: data_9 
* INPUT : bl_9 
* INPUT : br_9 
* OUTPUT: data_10 
* INPUT : bl_10 
* INPUT : br_10 
* OUTPUT: data_11 
* INPUT : bl_11 
* INPUT : br_11 
* OUTPUT: data_12 
* INPUT : bl_12 
* INPUT : br_12 
* OUTPUT: data_13 
* INPUT : bl_13 
* INPUT : br_13 
* OUTPUT: data_14 
* INPUT : bl_14 
* INPUT : br_14 
* OUTPUT: data_15 
* INPUT : bl_15 
* INPUT : br_15 
* OUTPUT: data_16 
* INPUT : bl_16 
* INPUT : br_16 
* OUTPUT: data_17 
* INPUT : bl_17 
* INPUT : br_17 
* OUTPUT: data_18 
* INPUT : bl_18 
* INPUT : br_18 
* OUTPUT: data_19 
* INPUT : bl_19 
* INPUT : br_19 
* OUTPUT: data_20 
* INPUT : bl_20 
* INPUT : br_20 
* OUTPUT: data_21 
* INPUT : bl_21 
* INPUT : br_21 
* OUTPUT: data_22 
* INPUT : bl_22 
* INPUT : br_22 
* OUTPUT: data_23 
* INPUT : bl_23 
* INPUT : br_23 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 24
* words_per_row: 1
Xsa_d0
+ bl_0 br_0 data_0 en vdd gnd
+ sense_amp
Xsa_d1
+ bl_1 br_1 data_1 en vdd gnd
+ sense_amp
Xsa_d2
+ bl_2 br_2 data_2 en vdd gnd
+ sense_amp
Xsa_d3
+ bl_3 br_3 data_3 en vdd gnd
+ sense_amp
Xsa_d4
+ bl_4 br_4 data_4 en vdd gnd
+ sense_amp
Xsa_d5
+ bl_5 br_5 data_5 en vdd gnd
+ sense_amp
Xsa_d6
+ bl_6 br_6 data_6 en vdd gnd
+ sense_amp
Xsa_d7
+ bl_7 br_7 data_7 en vdd gnd
+ sense_amp
Xsa_d8
+ bl_8 br_8 data_8 en vdd gnd
+ sense_amp
Xsa_d9
+ bl_9 br_9 data_9 en vdd gnd
+ sense_amp
Xsa_d10
+ bl_10 br_10 data_10 en vdd gnd
+ sense_amp
Xsa_d11
+ bl_11 br_11 data_11 en vdd gnd
+ sense_amp
Xsa_d12
+ bl_12 br_12 data_12 en vdd gnd
+ sense_amp
Xsa_d13
+ bl_13 br_13 data_13 en vdd gnd
+ sense_amp
Xsa_d14
+ bl_14 br_14 data_14 en vdd gnd
+ sense_amp
Xsa_d15
+ bl_15 br_15 data_15 en vdd gnd
+ sense_amp
Xsa_d16
+ bl_16 br_16 data_16 en vdd gnd
+ sense_amp
Xsa_d17
+ bl_17 br_17 data_17 en vdd gnd
+ sense_amp
Xsa_d18
+ bl_18 br_18 data_18 en vdd gnd
+ sense_amp
Xsa_d19
+ bl_19 br_19 data_19 en vdd gnd
+ sense_amp
Xsa_d20
+ bl_20 br_20 data_20 en vdd gnd
+ sense_amp
Xsa_d21
+ bl_21 br_21 data_21 en vdd gnd
+ sense_amp
Xsa_d22
+ bl_22 br_22 data_22 en vdd gnd
+ sense_amp
Xsa_d23
+ bl_23 br_23 data_23 en vdd gnd
+ sense_amp
.ENDS mp3_tag_array_1_sense_amp_array

.SUBCKT write_driver din bl br en vdd gnd
*inverters for enable and data input
minP bl_bar din vdd vdd pmos_vtg w=360.000000n l=50.000000n
minN bl_bar din gnd gnd nmos_vtg w=180.000000n l=50.000000n
moutP en_bar en vdd vdd pmos_vtg w=360.000000n l=50.000000n
moutN en_bar en gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BL
mout0P int1 bl_bar vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout0P2 bl en_bar int1 vdd pmos_vtg w=360.000000n l=50.000000n
mout0N bl en int2 gnd nmos_vtg w=180.000000n l=50.000000n
mout0N2 int2 bl_bar gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BR
mout1P int3 din vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout1P2 br en_bar int3 vdd pmos_vtg w=360.000000n l=50.000000n
mout1N br en int4 gnd nmos_vtg w=180.000000n l=50.000000n
mout1N2 int4 din gnd gnd nmos_vtg w=180.000000n l=50.000000n
.ENDS write_driver


.SUBCKT mp3_tag_array_1_write_driver_array
+ data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 data_8 data_9
+ data_10 data_11 data_12 data_13 data_14 data_15 data_16 data_17
+ data_18 data_19 data_20 data_21 data_22 data_23 bl_0 br_0 bl_1 br_1
+ bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8
+ bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14
+ bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20
+ br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 en vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
* INPUT : data_8 
* INPUT : data_9 
* INPUT : data_10 
* INPUT : data_11 
* INPUT : data_12 
* INPUT : data_13 
* INPUT : data_14 
* INPUT : data_15 
* INPUT : data_16 
* INPUT : data_17 
* INPUT : data_18 
* INPUT : data_19 
* INPUT : data_20 
* INPUT : data_21 
* INPUT : data_22 
* INPUT : data_23 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* columns: 24
* word_size 24
Xwrite_driver0
+ data_0 bl_0 br_0 en vdd gnd
+ write_driver
Xwrite_driver1
+ data_1 bl_1 br_1 en vdd gnd
+ write_driver
Xwrite_driver2
+ data_2 bl_2 br_2 en vdd gnd
+ write_driver
Xwrite_driver3
+ data_3 bl_3 br_3 en vdd gnd
+ write_driver
Xwrite_driver4
+ data_4 bl_4 br_4 en vdd gnd
+ write_driver
Xwrite_driver5
+ data_5 bl_5 br_5 en vdd gnd
+ write_driver
Xwrite_driver6
+ data_6 bl_6 br_6 en vdd gnd
+ write_driver
Xwrite_driver7
+ data_7 bl_7 br_7 en vdd gnd
+ write_driver
Xwrite_driver8
+ data_8 bl_8 br_8 en vdd gnd
+ write_driver
Xwrite_driver9
+ data_9 bl_9 br_9 en vdd gnd
+ write_driver
Xwrite_driver10
+ data_10 bl_10 br_10 en vdd gnd
+ write_driver
Xwrite_driver11
+ data_11 bl_11 br_11 en vdd gnd
+ write_driver
Xwrite_driver12
+ data_12 bl_12 br_12 en vdd gnd
+ write_driver
Xwrite_driver13
+ data_13 bl_13 br_13 en vdd gnd
+ write_driver
Xwrite_driver14
+ data_14 bl_14 br_14 en vdd gnd
+ write_driver
Xwrite_driver15
+ data_15 bl_15 br_15 en vdd gnd
+ write_driver
Xwrite_driver16
+ data_16 bl_16 br_16 en vdd gnd
+ write_driver
Xwrite_driver17
+ data_17 bl_17 br_17 en vdd gnd
+ write_driver
Xwrite_driver18
+ data_18 bl_18 br_18 en vdd gnd
+ write_driver
Xwrite_driver19
+ data_19 bl_19 br_19 en vdd gnd
+ write_driver
Xwrite_driver20
+ data_20 bl_20 br_20 en vdd gnd
+ write_driver
Xwrite_driver21
+ data_21 bl_21 br_21 en vdd gnd
+ write_driver
Xwrite_driver22
+ data_22 bl_22 br_22 en vdd gnd
+ write_driver
Xwrite_driver23
+ data_23 bl_23 br_23 en vdd gnd
+ write_driver
.ENDS mp3_tag_array_1_write_driver_array

.SUBCKT mp3_tag_array_1_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7
+ dout_8 dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 dout_16
+ dout_17 dout_18 dout_19 dout_20 dout_21 dout_22 dout_23 din_0 din_1
+ din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10 din_11 din_12
+ din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20 din_21 din_22
+ din_23 s_en p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 p_en_bar vdd
+ mp3_tag_array_1_precharge_array
Xsense_amp_array0
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 dout_2 bl_2 br_2 dout_3 bl_3 br_3
+ dout_4 bl_4 br_4 dout_5 bl_5 br_5 dout_6 bl_6 br_6 dout_7 bl_7 br_7
+ dout_8 bl_8 br_8 dout_9 bl_9 br_9 dout_10 bl_10 br_10 dout_11 bl_11
+ br_11 dout_12 bl_12 br_12 dout_13 bl_13 br_13 dout_14 bl_14 br_14
+ dout_15 bl_15 br_15 dout_16 bl_16 br_16 dout_17 bl_17 br_17 dout_18
+ bl_18 br_18 dout_19 bl_19 br_19 dout_20 bl_20 br_20 dout_21 bl_21
+ br_21 dout_22 bl_22 br_22 dout_23 bl_23 br_23 s_en vdd gnd
+ mp3_tag_array_1_sense_amp_array
Xwrite_driver_array0
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4
+ bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11
+ br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16
+ bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22
+ br_22 bl_23 br_23 w_en vdd gnd
+ mp3_tag_array_1_write_driver_array
.ENDS mp3_tag_array_1_port_data

.SUBCKT mp3_tag_array_1_bank
+ dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7
+ dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15
+ dout0_16 dout0_17 dout0_18 dout0_19 dout0_20 dout0_21 dout0_22
+ dout0_23 rbl_bl_0_0 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6
+ din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15
+ din0_16 din0_17 din0_18 din0_19 din0_20 din0_21 din0_22 din0_23
+ addr0_0 addr0_1 addr0_2 addr0_3 s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: dout0_2 
* OUTPUT: dout0_3 
* OUTPUT: dout0_4 
* OUTPUT: dout0_5 
* OUTPUT: dout0_6 
* OUTPUT: dout0_7 
* OUTPUT: dout0_8 
* OUTPUT: dout0_9 
* OUTPUT: dout0_10 
* OUTPUT: dout0_11 
* OUTPUT: dout0_12 
* OUTPUT: dout0_13 
* OUTPUT: dout0_14 
* OUTPUT: dout0_15 
* OUTPUT: dout0_16 
* OUTPUT: dout0_17 
* OUTPUT: dout0_18 
* OUTPUT: dout0_19 
* OUTPUT: dout0_20 
* OUTPUT: dout0_21 
* OUTPUT: dout0_22 
* OUTPUT: dout0_23 
* OUTPUT: rbl_bl_0_0 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : din0_8 
* INPUT : din0_9 
* INPUT : din0_10 
* INPUT : din0_11 
* INPUT : din0_12 
* INPUT : din0_13 
* INPUT : din0_14 
* INPUT : din0_15 
* INPUT : din0_16 
* INPUT : din0_17 
* INPUT : din0_18 
* INPUT : din0_19 
* INPUT : din0_20 
* INPUT : din0_21 
* INPUT : din0_22 
* INPUT : din0_23 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 rbl_wl0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
+ mp3_tag_array_1_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 dout0_0 dout0_1
+ dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 dout0_8 dout0_9
+ dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15 dout0_16
+ dout0_17 dout0_18 dout0_19 dout0_20 dout0_21 dout0_22 dout0_23 din0_0
+ din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10
+ din0_11 din0_12 din0_13 din0_14 din0_15 din0_16 din0_17 din0_18
+ din0_19 din0_20 din0_21 din0_22 din0_23 s_en0 p_en_bar0 w_en0 vdd gnd
+ mp3_tag_array_1_port_data
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 wl_en0 wl_0_0 wl_0_1 wl_0_2 wl_0_3
+ wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12
+ wl_0_13 wl_0_14 wl_0_15 rbl_wl0 vdd gnd
+ mp3_tag_array_1_port_address
.ENDS mp3_tag_array_1_bank

.SUBCKT mp3_tag_array_1
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] addr0[0] addr0[1] addr0[2] addr0[3] csb0 web0 clk0 dout0[0]
+ dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6] dout0[7]
+ dout0[8] dout0[9] dout0[10] dout0[11] dout0[12] dout0[13] dout0[14]
+ dout0[15] dout0[16] dout0[17] dout0[18] dout0[19] dout0[20] dout0[21]
+ dout0[22] dout0[23] vdd gnd
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : din0[8] 
* INPUT : din0[9] 
* INPUT : din0[10] 
* INPUT : din0[11] 
* INPUT : din0[12] 
* INPUT : din0[13] 
* INPUT : din0[14] 
* INPUT : din0[15] 
* INPUT : din0[16] 
* INPUT : din0[17] 
* INPUT : din0[18] 
* INPUT : din0[19] 
* INPUT : din0[20] 
* INPUT : din0[21] 
* INPUT : din0[22] 
* INPUT : din0[23] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* OUTPUT: dout0[2] 
* OUTPUT: dout0[3] 
* OUTPUT: dout0[4] 
* OUTPUT: dout0[5] 
* OUTPUT: dout0[6] 
* OUTPUT: dout0[7] 
* OUTPUT: dout0[8] 
* OUTPUT: dout0[9] 
* OUTPUT: dout0[10] 
* OUTPUT: dout0[11] 
* OUTPUT: dout0[12] 
* OUTPUT: dout0[13] 
* OUTPUT: dout0[14] 
* OUTPUT: dout0[15] 
* OUTPUT: dout0[16] 
* OUTPUT: dout0[17] 
* OUTPUT: dout0[18] 
* OUTPUT: dout0[19] 
* OUTPUT: dout0[20] 
* OUTPUT: dout0[21] 
* OUTPUT: dout0[22] 
* OUTPUT: dout0[23] 
* POWER : vdd 
* GROUND: gnd 
Xbank0
+ dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6]
+ dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12] dout0[13]
+ dout0[14] dout0[15] dout0[16] dout0[17] dout0[18] dout0[19] dout0[20]
+ dout0[21] dout0[22] dout0[23] rbl_bl0 bank_din0_0 bank_din0_1
+ bank_din0_2 bank_din0_3 bank_din0_4 bank_din0_5 bank_din0_6
+ bank_din0_7 bank_din0_8 bank_din0_9 bank_din0_10 bank_din0_11
+ bank_din0_12 bank_din0_13 bank_din0_14 bank_din0_15 bank_din0_16
+ bank_din0_17 bank_din0_18 bank_din0_19 bank_din0_20 bank_din0_21
+ bank_din0_22 bank_din0_23 a0_0 a0_1 a0_2 a0_3 s_en0 p_en_bar0 w_en0
+ wl_en0 vdd gnd
+ mp3_tag_array_1_bank
Xcontrol0
+ csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd
+ mp3_tag_array_1_control_logic_rw
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] a0_0 a0_1 a0_2 a0_3 clk_buf0 vdd
+ gnd
+ mp3_tag_array_1_row_addr_dff
Xdata_dff0
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4
+ bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9
+ bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14
+ bank_din0_15 bank_din0_16 bank_din0_17 bank_din0_18 bank_din0_19
+ bank_din0_20 bank_din0_21 bank_din0_22 bank_din0_23 clk_buf0 vdd gnd
+ mp3_tag_array_1_data_dff
.ENDS mp3_tag_array_1
