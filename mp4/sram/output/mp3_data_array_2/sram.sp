**************************************************
* OpenRAM generated memory.
* Words: 32
* Data bits: 128
* Banks: 1
* Column mux: 1:1
* Trimmed: False
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

.SUBCKT mp3_data_array_2_row_addr_dff
+ din_0 din_1 din_2 din_3 din_4 dout_0 dout_1 dout_2 dout_3 dout_4 clk
+ vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 5 cols: 1
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
Xdff_r4_c0
+ din_4 dout_4 clk vdd gnd
+ dff
.ENDS mp3_data_array_2_row_addr_dff

.SUBCKT mp3_data_array_2_data_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 din_32 din_33 din_34 din_35 din_36 din_37 din_38 din_39 din_40
+ din_41 din_42 din_43 din_44 din_45 din_46 din_47 din_48 din_49 din_50
+ din_51 din_52 din_53 din_54 din_55 din_56 din_57 din_58 din_59 din_60
+ din_61 din_62 din_63 din_64 din_65 din_66 din_67 din_68 din_69 din_70
+ din_71 din_72 din_73 din_74 din_75 din_76 din_77 din_78 din_79 din_80
+ din_81 din_82 din_83 din_84 din_85 din_86 din_87 din_88 din_89 din_90
+ din_91 din_92 din_93 din_94 din_95 din_96 din_97 din_98 din_99 din_100
+ din_101 din_102 din_103 din_104 din_105 din_106 din_107 din_108
+ din_109 din_110 din_111 din_112 din_113 din_114 din_115 din_116
+ din_117 din_118 din_119 din_120 din_121 din_122 din_123 din_124
+ din_125 din_126 din_127 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5
+ dout_6 dout_7 dout_8 dout_9 dout_10 dout_11 dout_12 dout_13 dout_14
+ dout_15 dout_16 dout_17 dout_18 dout_19 dout_20 dout_21 dout_22
+ dout_23 dout_24 dout_25 dout_26 dout_27 dout_28 dout_29 dout_30
+ dout_31 dout_32 dout_33 dout_34 dout_35 dout_36 dout_37 dout_38
+ dout_39 dout_40 dout_41 dout_42 dout_43 dout_44 dout_45 dout_46
+ dout_47 dout_48 dout_49 dout_50 dout_51 dout_52 dout_53 dout_54
+ dout_55 dout_56 dout_57 dout_58 dout_59 dout_60 dout_61 dout_62
+ dout_63 dout_64 dout_65 dout_66 dout_67 dout_68 dout_69 dout_70
+ dout_71 dout_72 dout_73 dout_74 dout_75 dout_76 dout_77 dout_78
+ dout_79 dout_80 dout_81 dout_82 dout_83 dout_84 dout_85 dout_86
+ dout_87 dout_88 dout_89 dout_90 dout_91 dout_92 dout_93 dout_94
+ dout_95 dout_96 dout_97 dout_98 dout_99 dout_100 dout_101 dout_102
+ dout_103 dout_104 dout_105 dout_106 dout_107 dout_108 dout_109
+ dout_110 dout_111 dout_112 dout_113 dout_114 dout_115 dout_116
+ dout_117 dout_118 dout_119 dout_120 dout_121 dout_122 dout_123
+ dout_124 dout_125 dout_126 dout_127 clk vdd gnd
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
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* INPUT : din_32 
* INPUT : din_33 
* INPUT : din_34 
* INPUT : din_35 
* INPUT : din_36 
* INPUT : din_37 
* INPUT : din_38 
* INPUT : din_39 
* INPUT : din_40 
* INPUT : din_41 
* INPUT : din_42 
* INPUT : din_43 
* INPUT : din_44 
* INPUT : din_45 
* INPUT : din_46 
* INPUT : din_47 
* INPUT : din_48 
* INPUT : din_49 
* INPUT : din_50 
* INPUT : din_51 
* INPUT : din_52 
* INPUT : din_53 
* INPUT : din_54 
* INPUT : din_55 
* INPUT : din_56 
* INPUT : din_57 
* INPUT : din_58 
* INPUT : din_59 
* INPUT : din_60 
* INPUT : din_61 
* INPUT : din_62 
* INPUT : din_63 
* INPUT : din_64 
* INPUT : din_65 
* INPUT : din_66 
* INPUT : din_67 
* INPUT : din_68 
* INPUT : din_69 
* INPUT : din_70 
* INPUT : din_71 
* INPUT : din_72 
* INPUT : din_73 
* INPUT : din_74 
* INPUT : din_75 
* INPUT : din_76 
* INPUT : din_77 
* INPUT : din_78 
* INPUT : din_79 
* INPUT : din_80 
* INPUT : din_81 
* INPUT : din_82 
* INPUT : din_83 
* INPUT : din_84 
* INPUT : din_85 
* INPUT : din_86 
* INPUT : din_87 
* INPUT : din_88 
* INPUT : din_89 
* INPUT : din_90 
* INPUT : din_91 
* INPUT : din_92 
* INPUT : din_93 
* INPUT : din_94 
* INPUT : din_95 
* INPUT : din_96 
* INPUT : din_97 
* INPUT : din_98 
* INPUT : din_99 
* INPUT : din_100 
* INPUT : din_101 
* INPUT : din_102 
* INPUT : din_103 
* INPUT : din_104 
* INPUT : din_105 
* INPUT : din_106 
* INPUT : din_107 
* INPUT : din_108 
* INPUT : din_109 
* INPUT : din_110 
* INPUT : din_111 
* INPUT : din_112 
* INPUT : din_113 
* INPUT : din_114 
* INPUT : din_115 
* INPUT : din_116 
* INPUT : din_117 
* INPUT : din_118 
* INPUT : din_119 
* INPUT : din_120 
* INPUT : din_121 
* INPUT : din_122 
* INPUT : din_123 
* INPUT : din_124 
* INPUT : din_125 
* INPUT : din_126 
* INPUT : din_127 
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
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* OUTPUT: dout_32 
* OUTPUT: dout_33 
* OUTPUT: dout_34 
* OUTPUT: dout_35 
* OUTPUT: dout_36 
* OUTPUT: dout_37 
* OUTPUT: dout_38 
* OUTPUT: dout_39 
* OUTPUT: dout_40 
* OUTPUT: dout_41 
* OUTPUT: dout_42 
* OUTPUT: dout_43 
* OUTPUT: dout_44 
* OUTPUT: dout_45 
* OUTPUT: dout_46 
* OUTPUT: dout_47 
* OUTPUT: dout_48 
* OUTPUT: dout_49 
* OUTPUT: dout_50 
* OUTPUT: dout_51 
* OUTPUT: dout_52 
* OUTPUT: dout_53 
* OUTPUT: dout_54 
* OUTPUT: dout_55 
* OUTPUT: dout_56 
* OUTPUT: dout_57 
* OUTPUT: dout_58 
* OUTPUT: dout_59 
* OUTPUT: dout_60 
* OUTPUT: dout_61 
* OUTPUT: dout_62 
* OUTPUT: dout_63 
* OUTPUT: dout_64 
* OUTPUT: dout_65 
* OUTPUT: dout_66 
* OUTPUT: dout_67 
* OUTPUT: dout_68 
* OUTPUT: dout_69 
* OUTPUT: dout_70 
* OUTPUT: dout_71 
* OUTPUT: dout_72 
* OUTPUT: dout_73 
* OUTPUT: dout_74 
* OUTPUT: dout_75 
* OUTPUT: dout_76 
* OUTPUT: dout_77 
* OUTPUT: dout_78 
* OUTPUT: dout_79 
* OUTPUT: dout_80 
* OUTPUT: dout_81 
* OUTPUT: dout_82 
* OUTPUT: dout_83 
* OUTPUT: dout_84 
* OUTPUT: dout_85 
* OUTPUT: dout_86 
* OUTPUT: dout_87 
* OUTPUT: dout_88 
* OUTPUT: dout_89 
* OUTPUT: dout_90 
* OUTPUT: dout_91 
* OUTPUT: dout_92 
* OUTPUT: dout_93 
* OUTPUT: dout_94 
* OUTPUT: dout_95 
* OUTPUT: dout_96 
* OUTPUT: dout_97 
* OUTPUT: dout_98 
* OUTPUT: dout_99 
* OUTPUT: dout_100 
* OUTPUT: dout_101 
* OUTPUT: dout_102 
* OUTPUT: dout_103 
* OUTPUT: dout_104 
* OUTPUT: dout_105 
* OUTPUT: dout_106 
* OUTPUT: dout_107 
* OUTPUT: dout_108 
* OUTPUT: dout_109 
* OUTPUT: dout_110 
* OUTPUT: dout_111 
* OUTPUT: dout_112 
* OUTPUT: dout_113 
* OUTPUT: dout_114 
* OUTPUT: dout_115 
* OUTPUT: dout_116 
* OUTPUT: dout_117 
* OUTPUT: dout_118 
* OUTPUT: dout_119 
* OUTPUT: dout_120 
* OUTPUT: dout_121 
* OUTPUT: dout_122 
* OUTPUT: dout_123 
* OUTPUT: dout_124 
* OUTPUT: dout_125 
* OUTPUT: dout_126 
* OUTPUT: dout_127 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 128
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
Xdff_r0_c24
+ din_24 dout_24 clk vdd gnd
+ dff
Xdff_r0_c25
+ din_25 dout_25 clk vdd gnd
+ dff
Xdff_r0_c26
+ din_26 dout_26 clk vdd gnd
+ dff
Xdff_r0_c27
+ din_27 dout_27 clk vdd gnd
+ dff
Xdff_r0_c28
+ din_28 dout_28 clk vdd gnd
+ dff
Xdff_r0_c29
+ din_29 dout_29 clk vdd gnd
+ dff
Xdff_r0_c30
+ din_30 dout_30 clk vdd gnd
+ dff
Xdff_r0_c31
+ din_31 dout_31 clk vdd gnd
+ dff
Xdff_r0_c32
+ din_32 dout_32 clk vdd gnd
+ dff
Xdff_r0_c33
+ din_33 dout_33 clk vdd gnd
+ dff
Xdff_r0_c34
+ din_34 dout_34 clk vdd gnd
+ dff
Xdff_r0_c35
+ din_35 dout_35 clk vdd gnd
+ dff
Xdff_r0_c36
+ din_36 dout_36 clk vdd gnd
+ dff
Xdff_r0_c37
+ din_37 dout_37 clk vdd gnd
+ dff
Xdff_r0_c38
+ din_38 dout_38 clk vdd gnd
+ dff
Xdff_r0_c39
+ din_39 dout_39 clk vdd gnd
+ dff
Xdff_r0_c40
+ din_40 dout_40 clk vdd gnd
+ dff
Xdff_r0_c41
+ din_41 dout_41 clk vdd gnd
+ dff
Xdff_r0_c42
+ din_42 dout_42 clk vdd gnd
+ dff
Xdff_r0_c43
+ din_43 dout_43 clk vdd gnd
+ dff
Xdff_r0_c44
+ din_44 dout_44 clk vdd gnd
+ dff
Xdff_r0_c45
+ din_45 dout_45 clk vdd gnd
+ dff
Xdff_r0_c46
+ din_46 dout_46 clk vdd gnd
+ dff
Xdff_r0_c47
+ din_47 dout_47 clk vdd gnd
+ dff
Xdff_r0_c48
+ din_48 dout_48 clk vdd gnd
+ dff
Xdff_r0_c49
+ din_49 dout_49 clk vdd gnd
+ dff
Xdff_r0_c50
+ din_50 dout_50 clk vdd gnd
+ dff
Xdff_r0_c51
+ din_51 dout_51 clk vdd gnd
+ dff
Xdff_r0_c52
+ din_52 dout_52 clk vdd gnd
+ dff
Xdff_r0_c53
+ din_53 dout_53 clk vdd gnd
+ dff
Xdff_r0_c54
+ din_54 dout_54 clk vdd gnd
+ dff
Xdff_r0_c55
+ din_55 dout_55 clk vdd gnd
+ dff
Xdff_r0_c56
+ din_56 dout_56 clk vdd gnd
+ dff
Xdff_r0_c57
+ din_57 dout_57 clk vdd gnd
+ dff
Xdff_r0_c58
+ din_58 dout_58 clk vdd gnd
+ dff
Xdff_r0_c59
+ din_59 dout_59 clk vdd gnd
+ dff
Xdff_r0_c60
+ din_60 dout_60 clk vdd gnd
+ dff
Xdff_r0_c61
+ din_61 dout_61 clk vdd gnd
+ dff
Xdff_r0_c62
+ din_62 dout_62 clk vdd gnd
+ dff
Xdff_r0_c63
+ din_63 dout_63 clk vdd gnd
+ dff
Xdff_r0_c64
+ din_64 dout_64 clk vdd gnd
+ dff
Xdff_r0_c65
+ din_65 dout_65 clk vdd gnd
+ dff
Xdff_r0_c66
+ din_66 dout_66 clk vdd gnd
+ dff
Xdff_r0_c67
+ din_67 dout_67 clk vdd gnd
+ dff
Xdff_r0_c68
+ din_68 dout_68 clk vdd gnd
+ dff
Xdff_r0_c69
+ din_69 dout_69 clk vdd gnd
+ dff
Xdff_r0_c70
+ din_70 dout_70 clk vdd gnd
+ dff
Xdff_r0_c71
+ din_71 dout_71 clk vdd gnd
+ dff
Xdff_r0_c72
+ din_72 dout_72 clk vdd gnd
+ dff
Xdff_r0_c73
+ din_73 dout_73 clk vdd gnd
+ dff
Xdff_r0_c74
+ din_74 dout_74 clk vdd gnd
+ dff
Xdff_r0_c75
+ din_75 dout_75 clk vdd gnd
+ dff
Xdff_r0_c76
+ din_76 dout_76 clk vdd gnd
+ dff
Xdff_r0_c77
+ din_77 dout_77 clk vdd gnd
+ dff
Xdff_r0_c78
+ din_78 dout_78 clk vdd gnd
+ dff
Xdff_r0_c79
+ din_79 dout_79 clk vdd gnd
+ dff
Xdff_r0_c80
+ din_80 dout_80 clk vdd gnd
+ dff
Xdff_r0_c81
+ din_81 dout_81 clk vdd gnd
+ dff
Xdff_r0_c82
+ din_82 dout_82 clk vdd gnd
+ dff
Xdff_r0_c83
+ din_83 dout_83 clk vdd gnd
+ dff
Xdff_r0_c84
+ din_84 dout_84 clk vdd gnd
+ dff
Xdff_r0_c85
+ din_85 dout_85 clk vdd gnd
+ dff
Xdff_r0_c86
+ din_86 dout_86 clk vdd gnd
+ dff
Xdff_r0_c87
+ din_87 dout_87 clk vdd gnd
+ dff
Xdff_r0_c88
+ din_88 dout_88 clk vdd gnd
+ dff
Xdff_r0_c89
+ din_89 dout_89 clk vdd gnd
+ dff
Xdff_r0_c90
+ din_90 dout_90 clk vdd gnd
+ dff
Xdff_r0_c91
+ din_91 dout_91 clk vdd gnd
+ dff
Xdff_r0_c92
+ din_92 dout_92 clk vdd gnd
+ dff
Xdff_r0_c93
+ din_93 dout_93 clk vdd gnd
+ dff
Xdff_r0_c94
+ din_94 dout_94 clk vdd gnd
+ dff
Xdff_r0_c95
+ din_95 dout_95 clk vdd gnd
+ dff
Xdff_r0_c96
+ din_96 dout_96 clk vdd gnd
+ dff
Xdff_r0_c97
+ din_97 dout_97 clk vdd gnd
+ dff
Xdff_r0_c98
+ din_98 dout_98 clk vdd gnd
+ dff
Xdff_r0_c99
+ din_99 dout_99 clk vdd gnd
+ dff
Xdff_r0_c100
+ din_100 dout_100 clk vdd gnd
+ dff
Xdff_r0_c101
+ din_101 dout_101 clk vdd gnd
+ dff
Xdff_r0_c102
+ din_102 dout_102 clk vdd gnd
+ dff
Xdff_r0_c103
+ din_103 dout_103 clk vdd gnd
+ dff
Xdff_r0_c104
+ din_104 dout_104 clk vdd gnd
+ dff
Xdff_r0_c105
+ din_105 dout_105 clk vdd gnd
+ dff
Xdff_r0_c106
+ din_106 dout_106 clk vdd gnd
+ dff
Xdff_r0_c107
+ din_107 dout_107 clk vdd gnd
+ dff
Xdff_r0_c108
+ din_108 dout_108 clk vdd gnd
+ dff
Xdff_r0_c109
+ din_109 dout_109 clk vdd gnd
+ dff
Xdff_r0_c110
+ din_110 dout_110 clk vdd gnd
+ dff
Xdff_r0_c111
+ din_111 dout_111 clk vdd gnd
+ dff
Xdff_r0_c112
+ din_112 dout_112 clk vdd gnd
+ dff
Xdff_r0_c113
+ din_113 dout_113 clk vdd gnd
+ dff
Xdff_r0_c114
+ din_114 dout_114 clk vdd gnd
+ dff
Xdff_r0_c115
+ din_115 dout_115 clk vdd gnd
+ dff
Xdff_r0_c116
+ din_116 dout_116 clk vdd gnd
+ dff
Xdff_r0_c117
+ din_117 dout_117 clk vdd gnd
+ dff
Xdff_r0_c118
+ din_118 dout_118 clk vdd gnd
+ dff
Xdff_r0_c119
+ din_119 dout_119 clk vdd gnd
+ dff
Xdff_r0_c120
+ din_120 dout_120 clk vdd gnd
+ dff
Xdff_r0_c121
+ din_121 dout_121 clk vdd gnd
+ dff
Xdff_r0_c122
+ din_122 dout_122 clk vdd gnd
+ dff
Xdff_r0_c123
+ din_123 dout_123 clk vdd gnd
+ dff
Xdff_r0_c124
+ din_124 dout_124 clk vdd gnd
+ dff
Xdff_r0_c125
+ din_125 dout_125 clk vdd gnd
+ dff
Xdff_r0_c126
+ din_126 dout_126 clk vdd gnd
+ dff
Xdff_r0_c127
+ din_127 dout_127 clk vdd gnd
+ dff
.ENDS mp3_data_array_2_data_dff

* spice ptx M{0} {1} nmos_vtg m=3 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=3 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_2_pinv_13
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 10
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p
.ENDS mp3_data_array_2_pinv_13

* spice ptx M{0} {1} nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT mp3_data_array_2_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 3
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_data_array_2_pinv_8

.SUBCKT mp3_data_array_2_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [3, 10]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_data_array_2_pinv_8
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ mp3_data_array_2_pinv_13
.ENDS mp3_data_array_2_pdriver_2

* spice ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_data_array_2_pinv_21
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_2_pinv_21

.SUBCKT mp3_data_array_2_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv1
+ dout_1 dout_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv2
+ dout_2 dout_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv3
+ dout_3 dout_4 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv4
+ dout_4 dout_5 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv5
+ dout_5 dout_6 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv6
+ dout_6 dout_7 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv7
+ dout_7 dout_8 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ mp3_data_array_2_pinv_21
Xdinv8
+ dout_8 out vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_8_0
+ out n_8_0 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_8_1
+ out n_8_1 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_8_2
+ out n_8_2 vdd gnd
+ mp3_data_array_2_pinv_21
Xdload_8_3
+ out n_8_3 vdd gnd
+ mp3_data_array_2_pinv_21
.ENDS mp3_data_array_2_delay_chain

* spice ptx M{0} {1} nmos_vtg m=67 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=67 w=0.915u l=0.05u pd=1.93u ps=1.93u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_2_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 227
Mpinv_pmos Z A vdd vdd pmos_vtg m=67 w=0.915u l=0.05u pd=1.93u ps=1.93u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=67 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_data_array_2_pinv_12

* spice ptx M{0} {1} pmos_vtg m=8 w=0.845u l=0.05u pd=1.79u ps=1.79u as=0.11p ad=0.11p

* spice ptx M{0} {1} nmos_vtg m=8 w=0.28u l=0.05u pd=0.66u ps=0.66u as=0.04p ad=0.04p

.SUBCKT mp3_data_array_2_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 25
Mpinv_pmos Z A vdd vdd pmos_vtg m=8 w=0.845u l=0.05u pd=1.79u ps=1.79u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=8 w=0.28u l=0.05u pd=0.66u ps=0.66u as=0.04p ad=0.04p
.ENDS mp3_data_array_2_pinv_10

* spice ptx M{0} {1} pmos_vtg m=23 w=0.8925000000000001u l=0.05u pd=1.89u ps=1.89u as=0.11p ad=0.11p

* spice ptx M{0} {1} nmos_vtg m=23 w=0.2975u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p

.SUBCKT mp3_data_array_2_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 76
Mpinv_pmos Z A vdd vdd pmos_vtg m=23 w=0.8925000000000001u l=0.05u pd=1.89u ps=1.89u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=23 w=0.2975u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p
.ENDS mp3_data_array_2_pinv_11

.SUBCKT mp3_data_array_2_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_2_pinv_7

* spice ptx M{0} {1} nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p

.SUBCKT mp3_data_array_2_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p
.ENDS mp3_data_array_2_pinv_9

.SUBCKT mp3_data_array_2_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 1, 1, 1, 3, 8, 25, 76, 227]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_data_array_2_pinv_7
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ mp3_data_array_2_pinv_7
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ mp3_data_array_2_pinv_7
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ mp3_data_array_2_pinv_7
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ mp3_data_array_2_pinv_7
Xbuf_inv6
+ Zb5_int Zb6_int vdd gnd
+ mp3_data_array_2_pinv_8
Xbuf_inv7
+ Zb6_int Zb7_int vdd gnd
+ mp3_data_array_2_pinv_9
Xbuf_inv8
+ Zb7_int Zb8_int vdd gnd
+ mp3_data_array_2_pinv_10
Xbuf_inv9
+ Zb8_int Zb9_int vdd gnd
+ mp3_data_array_2_pinv_11
Xbuf_inv10
+ Zb9_int Z vdd gnd
+ mp3_data_array_2_pinv_12
.ENDS mp3_data_array_2_pdriver_1

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_data_array_2_pnand2_2
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
.ENDS mp3_data_array_2_pnand2_2

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_data_array_2_pnand3_0
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
.ENDS mp3_data_array_2_pnand3_0

* spice ptx M{0} {1} pmos_vtg m=38 w=0.91u l=0.05u pd=1.92u ps=1.92u as=0.11p ad=0.11p

* spice ptx M{0} {1} nmos_vtg m=38 w=0.3025u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

.SUBCKT mp3_data_array_2_pinv_15
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 128
Mpinv_pmos Z A vdd vdd pmos_vtg m=38 w=0.91u l=0.05u pd=1.92u ps=1.92u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=38 w=0.3025u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p
.ENDS mp3_data_array_2_pinv_15

.SUBCKT mp3_data_array_2_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [128]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_2_pinv_15
.ENDS mp3_data_array_2_pdriver_4

.SUBCKT mp3_data_array_2_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 128
Xpand3_nand
+ A B C zb_int vdd gnd
+ mp3_data_array_2_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ mp3_data_array_2_pdriver_4
.ENDS mp3_data_array_2_pand3_0

.SUBCKT mp3_data_array_2_pnand2_1
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
.ENDS mp3_data_array_2_pnand2_1

* spice ptx M{0} {1} pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_data_array_2_pinv_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_data_array_2_pinv_4

.SUBCKT mp3_data_array_2_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_2_pinv_4
.ENDS mp3_data_array_2_pdriver_0

.SUBCKT mp3_data_array_2_pand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ mp3_data_array_2_pnand2_1
Xpand2_inv
+ zb_int Z vdd gnd
+ mp3_data_array_2_pdriver_0
.ENDS mp3_data_array_2_pand2_0

* spice ptx M{0} {1} pmos_vtg m=40 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p

* spice ptx M{0} {1} nmos_vtg m=40 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

.SUBCKT mp3_data_array_2_pinv_14
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 136
Mpinv_pmos Z A vdd vdd pmos_vtg m=40 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=40 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_data_array_2_pinv_14

.SUBCKT mp3_data_array_2_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [136]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_2_pinv_14
.ENDS mp3_data_array_2_pdriver_3

.SUBCKT mp3_data_array_2_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 136
Xpand3_nand
+ A B C zb_int vdd gnd
+ mp3_data_array_2_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ mp3_data_array_2_pdriver_3
.ENDS mp3_data_array_2_pand3

* spice ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT mp3_data_array_2_pinv_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_2_pinv_3

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT mp3_data_array_2_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_2_pinv_2

.SUBCKT mp3_data_array_2_dff_buf_0
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
+ mp3_data_array_2_pinv_2
Xdff_buf_inv2
+ Qb Q vdd gnd
+ mp3_data_array_2_pinv_3
.ENDS mp3_data_array_2_dff_buf_0

.SUBCKT mp3_data_array_2_dff_buf_array
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
+ mp3_data_array_2_dff_buf_0
Xdff_r1_c0
+ din_1 dout_1 dout_bar_1 clk vdd gnd
+ mp3_data_array_2_dff_buf_0
.ENDS mp3_data_array_2_dff_buf_array

* spice ptx M{0} {1} nmos_vtg m=5 w=0.2525u l=0.05u pd=0.60u ps=0.60u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=5 w=0.755u l=0.05u pd=1.61u ps=1.61u as=0.09p ad=0.09p

.SUBCKT mp3_data_array_2_pinv_19
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 14
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.755u l=0.05u pd=1.61u ps=1.61u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.2525u l=0.05u pd=0.60u ps=0.60u as=0.03p ad=0.03p
.ENDS mp3_data_array_2_pinv_19

.SUBCKT mp3_data_array_2_pinv_17
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_2_pinv_17

* spice ptx M{0} {1} pmos_vtg m=13 w=0.8925000000000001u l=0.05u pd=1.89u ps=1.89u as=0.11p ad=0.11p

* spice ptx M{0} {1} nmos_vtg m=13 w=0.2975u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p

.SUBCKT mp3_data_array_2_pinv_20
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 43
Mpinv_pmos Z A vdd vdd pmos_vtg m=13 w=0.8925000000000001u l=0.05u pd=1.89u ps=1.89u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=13 w=0.2975u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p
.ENDS mp3_data_array_2_pinv_20

* spice ptx M{0} {1} nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p

.SUBCKT mp3_data_array_2_pinv_18
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 5
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p
.ENDS mp3_data_array_2_pinv_18

.SUBCKT mp3_data_array_2_pdriver_5
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 2, 5, 14, 43]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_data_array_2_pinv_7
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ mp3_data_array_2_pinv_7
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ mp3_data_array_2_pinv_17
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ mp3_data_array_2_pinv_18
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ mp3_data_array_2_pinv_19
Xbuf_inv6
+ Zb5_int Z vdd gnd
+ mp3_data_array_2_pinv_20
.ENDS mp3_data_array_2_pdriver_5

.SUBCKT mp3_data_array_2_pinv_16
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_2_pinv_16

.SUBCKT mp3_data_array_2_control_logic_rw
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
* num_rows: 32
* words_per_row: 1
* word_size 128
Xctrl_dffs
+ csb web cs_bar cs we_bar we clk_buf vdd gnd
+ mp3_data_array_2_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ mp3_data_array_2_pdriver_1
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ mp3_data_array_2_pinv_16
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ mp3_data_array_2_pand2_0
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ mp3_data_array_2_pand2_0
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ mp3_data_array_2_pdriver_2
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ mp3_data_array_2_pinv_16
Xw_en_and
+ we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ mp3_data_array_2_pand3
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd
+ mp3_data_array_2_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ mp3_data_array_2_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ mp3_data_array_2_pnand2_2
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ mp3_data_array_2_pdriver_5
.ENDS mp3_data_array_2_control_logic_rw

.SUBCKT mp3_data_array_2_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_2_pinv

.SUBCKT mp3_data_array_2_pnand2
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
.ENDS mp3_data_array_2_pnand2

.SUBCKT mp3_data_array_2_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ mp3_data_array_2_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ mp3_data_array_2_pinv
.ENDS mp3_data_array_2_and2_dec

.SUBCKT mp3_data_array_2_hierarchical_predecode2x4
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
+ mp3_data_array_2_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ mp3_data_array_2_pinv
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ mp3_data_array_2_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ mp3_data_array_2_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ mp3_data_array_2_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ mp3_data_array_2_and2_dec
.ENDS mp3_data_array_2_hierarchical_predecode2x4

.SUBCKT mp3_data_array_2_pnand3
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
.ENDS mp3_data_array_2_pnand3

.SUBCKT mp3_data_array_2_and3_dec
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand3_dec_nand
+ A B C zb_int vdd gnd
+ mp3_data_array_2_pnand3
Xpand3_dec_inv
+ zb_int Z vdd gnd
+ mp3_data_array_2_pinv
.ENDS mp3_data_array_2_and3_dec

.SUBCKT mp3_data_array_2_hierarchical_predecode3x8
+ in_0 in_1 in_2 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ mp3_data_array_2_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ mp3_data_array_2_pinv
Xpre_inv_2
+ in_2 inbar_2 vdd gnd
+ mp3_data_array_2_pinv
XXpre3x8_and_0
+ inbar_0 inbar_1 inbar_2 out_0 vdd gnd
+ mp3_data_array_2_and3_dec
XXpre3x8_and_1
+ in_0 inbar_1 inbar_2 out_1 vdd gnd
+ mp3_data_array_2_and3_dec
XXpre3x8_and_2
+ inbar_0 in_1 inbar_2 out_2 vdd gnd
+ mp3_data_array_2_and3_dec
XXpre3x8_and_3
+ in_0 in_1 inbar_2 out_3 vdd gnd
+ mp3_data_array_2_and3_dec
XXpre3x8_and_4
+ inbar_0 inbar_1 in_2 out_4 vdd gnd
+ mp3_data_array_2_and3_dec
XXpre3x8_and_5
+ in_0 inbar_1 in_2 out_5 vdd gnd
+ mp3_data_array_2_and3_dec
XXpre3x8_and_6
+ inbar_0 in_1 in_2 out_6 vdd gnd
+ mp3_data_array_2_and3_dec
XXpre3x8_and_7
+ in_0 in_1 in_2 out_7 vdd gnd
+ mp3_data_array_2_and3_dec
.ENDS mp3_data_array_2_hierarchical_predecode3x8

.SUBCKT mp3_data_array_2_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 decode_0 decode_1 decode_2 decode_3
+ decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10
+ decode_11 decode_12 decode_13 decode_14 decode_15 decode_16 decode_17
+ decode_18 decode_19 decode_20 decode_21 decode_22 decode_23 decode_24
+ decode_25 decode_26 decode_27 decode_28 decode_29 decode_30 decode_31
+ vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
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
* OUTPUT: decode_16 
* OUTPUT: decode_17 
* OUTPUT: decode_18 
* OUTPUT: decode_19 
* OUTPUT: decode_20 
* OUTPUT: decode_21 
* OUTPUT: decode_22 
* OUTPUT: decode_23 
* OUTPUT: decode_24 
* OUTPUT: decode_25 
* OUTPUT: decode_26 
* OUTPUT: decode_27 
* OUTPUT: decode_28 
* OUTPUT: decode_29 
* OUTPUT: decode_30 
* OUTPUT: decode_31 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ mp3_data_array_2_hierarchical_predecode2x4
Xpre3x8_0
+ addr_2 addr_3 addr_4 out_4 out_5 out_6 out_7 out_8 out_9 out_10 out_11
+ vdd gnd
+ mp3_data_array_2_hierarchical_predecode3x8
XDEC_AND_0
+ out_0 out_4 decode_0 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_4
+ out_0 out_5 decode_4 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_8
+ out_0 out_6 decode_8 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_12
+ out_0 out_7 decode_12 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_16
+ out_0 out_8 decode_16 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_20
+ out_0 out_9 decode_20 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_24
+ out_0 out_10 decode_24 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_28
+ out_0 out_11 decode_28 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_1
+ out_1 out_4 decode_1 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_5
+ out_1 out_5 decode_5 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_9
+ out_1 out_6 decode_9 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_13
+ out_1 out_7 decode_13 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_17
+ out_1 out_8 decode_17 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_21
+ out_1 out_9 decode_21 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_25
+ out_1 out_10 decode_25 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_29
+ out_1 out_11 decode_29 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_2
+ out_2 out_4 decode_2 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_6
+ out_2 out_5 decode_6 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_10
+ out_2 out_6 decode_10 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_14
+ out_2 out_7 decode_14 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_18
+ out_2 out_8 decode_18 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_22
+ out_2 out_9 decode_22 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_26
+ out_2 out_10 decode_26 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_30
+ out_2 out_11 decode_30 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_3
+ out_3 out_4 decode_3 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_7
+ out_3 out_5 decode_7 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_11
+ out_3 out_6 decode_11 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_15
+ out_3 out_7 decode_15 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_19
+ out_3 out_8 decode_19 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_23
+ out_3 out_9 decode_23 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_27
+ out_3 out_10 decode_27 vdd gnd
+ mp3_data_array_2_and2_dec
XDEC_AND_31
+ out_3 out_11 decode_31 vdd gnd
+ mp3_data_array_2_and2_dec
.ENDS mp3_data_array_2_hierarchical_decoder

* spice ptx M{0} {1} pmos_vtg m=24 w=0.36u l=0.05u pd=0.82u ps=0.82u as=0.04p ad=0.04p

* spice ptx M{0} {1} nmos_vtg m=24 w=0.12u l=0.05u pd=0.34u ps=0.34u as=0.01p ad=0.01p

.SUBCKT mp3_data_array_2_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 32
Mpinv_pmos Z A vdd vdd pmos_vtg m=24 w=0.36u l=0.05u pd=0.82u ps=0.82u as=0.04p ad=0.04p
Mpinv_nmos Z A gnd gnd nmos_vtg m=24 w=0.12u l=0.05u pd=0.34u ps=0.34u as=0.01p ad=0.01p
.ENDS mp3_data_array_2_pinv_0

.SUBCKT mp3_data_array_2_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 32
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ mp3_data_array_2_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ mp3_data_array_2_pinv_0
.ENDS mp3_data_array_2_and2_dec_0

.SUBCKT mp3_data_array_2_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 128
Xwld_nand
+ A B zb_int vdd gnd
+ mp3_data_array_2_pnand2
Xwl_driver
+ zb_int Z vdd gnd
+ mp3_data_array_2_pinv_0
.ENDS mp3_data_array_2_wordline_driver

.SUBCKT mp3_data_array_2_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 in_16 in_17 in_18 in_19 in_20 in_21 in_22 in_23
+ in_24 in_25 in_26 in_27 in_28 in_29 in_30 in_31 wl_0 wl_1 wl_2 wl_3
+ wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15
+ wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26
+ wl_27 wl_28 wl_29 wl_30 wl_31 en vdd gnd
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
* INPUT : in_16 
* INPUT : in_17 
* INPUT : in_18 
* INPUT : in_19 
* INPUT : in_20 
* INPUT : in_21 
* INPUT : in_22 
* INPUT : in_23 
* INPUT : in_24 
* INPUT : in_25 
* INPUT : in_26 
* INPUT : in_27 
* INPUT : in_28 
* INPUT : in_29 
* INPUT : in_30 
* INPUT : in_31 
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
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 128
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and16
+ in_16 en wl_16 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and17
+ in_17 en wl_17 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and18
+ in_18 en wl_18 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and19
+ in_19 en wl_19 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and20
+ in_20 en wl_20 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and21
+ in_21 en wl_21 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and22
+ in_22 en wl_22 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and23
+ in_23 en wl_23 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and24
+ in_24 en wl_24 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and25
+ in_25 en wl_25 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and26
+ in_26 en wl_26 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and27
+ in_27 en wl_27 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and28
+ in_28 en wl_28 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and29
+ in_29 en wl_29 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and30
+ in_30 en wl_30 vdd gnd
+ mp3_data_array_2_wordline_driver
Xwl_driver_and31
+ in_31 en wl_31 vdd gnd
+ mp3_data_array_2_wordline_driver
.ENDS mp3_data_array_2_wordline_driver_array

.SUBCKT mp3_data_array_2_port_address
+ addr_0 addr_1 addr_2 addr_3 addr_4 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5
+ wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17
+ wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28
+ wl_29 wl_30 wl_31 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
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
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 dec_out_0 dec_out_1 dec_out_2
+ dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9
+ dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15
+ dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21
+ dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27
+ dec_out_28 dec_out_29 dec_out_30 dec_out_31 vdd gnd
+ mp3_data_array_2_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18
+ dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24
+ dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30
+ dec_out_31 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10
+ wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21
+ wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_en vdd
+ gnd
+ mp3_data_array_2_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ mp3_data_array_2_and2_dec_0
.ENDS mp3_data_array_2_port_address

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


.SUBCKT mp3_data_array_2_dummy_array_1
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33
+ bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36 bl_0_37 br_0_37
+ bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40 bl_0_41 br_0_41
+ bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44 bl_0_45 br_0_45
+ bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48 bl_0_49 br_0_49
+ bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52 bl_0_53 br_0_53
+ bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56 bl_0_57 br_0_57
+ bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60 bl_0_61 br_0_61
+ bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64 bl_0_65 br_0_65
+ bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68 bl_0_69 br_0_69
+ bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72 bl_0_73 br_0_73
+ bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76 bl_0_77 br_0_77
+ bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80 bl_0_81 br_0_81
+ bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84 bl_0_85 br_0_85
+ bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88 bl_0_89 br_0_89
+ bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92 bl_0_93 br_0_93
+ bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96 bl_0_97 br_0_97
+ bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100 bl_0_101 br_0_101
+ bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104 br_0_104 bl_0_105
+ br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107 bl_0_108 br_0_108
+ bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111 br_0_111 bl_0_112
+ br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114 bl_0_115 br_0_115
+ bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118 br_0_118 bl_0_119
+ br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121 bl_0_122 br_0_122
+ bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125 br_0_125 bl_0_126
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 wl_0_0 vdd gnd
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
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* INOUT : bl_0_34 
* INOUT : br_0_34 
* INOUT : bl_0_35 
* INOUT : br_0_35 
* INOUT : bl_0_36 
* INOUT : br_0_36 
* INOUT : bl_0_37 
* INOUT : br_0_37 
* INOUT : bl_0_38 
* INOUT : br_0_38 
* INOUT : bl_0_39 
* INOUT : br_0_39 
* INOUT : bl_0_40 
* INOUT : br_0_40 
* INOUT : bl_0_41 
* INOUT : br_0_41 
* INOUT : bl_0_42 
* INOUT : br_0_42 
* INOUT : bl_0_43 
* INOUT : br_0_43 
* INOUT : bl_0_44 
* INOUT : br_0_44 
* INOUT : bl_0_45 
* INOUT : br_0_45 
* INOUT : bl_0_46 
* INOUT : br_0_46 
* INOUT : bl_0_47 
* INOUT : br_0_47 
* INOUT : bl_0_48 
* INOUT : br_0_48 
* INOUT : bl_0_49 
* INOUT : br_0_49 
* INOUT : bl_0_50 
* INOUT : br_0_50 
* INOUT : bl_0_51 
* INOUT : br_0_51 
* INOUT : bl_0_52 
* INOUT : br_0_52 
* INOUT : bl_0_53 
* INOUT : br_0_53 
* INOUT : bl_0_54 
* INOUT : br_0_54 
* INOUT : bl_0_55 
* INOUT : br_0_55 
* INOUT : bl_0_56 
* INOUT : br_0_56 
* INOUT : bl_0_57 
* INOUT : br_0_57 
* INOUT : bl_0_58 
* INOUT : br_0_58 
* INOUT : bl_0_59 
* INOUT : br_0_59 
* INOUT : bl_0_60 
* INOUT : br_0_60 
* INOUT : bl_0_61 
* INOUT : br_0_61 
* INOUT : bl_0_62 
* INOUT : br_0_62 
* INOUT : bl_0_63 
* INOUT : br_0_63 
* INOUT : bl_0_64 
* INOUT : br_0_64 
* INOUT : bl_0_65 
* INOUT : br_0_65 
* INOUT : bl_0_66 
* INOUT : br_0_66 
* INOUT : bl_0_67 
* INOUT : br_0_67 
* INOUT : bl_0_68 
* INOUT : br_0_68 
* INOUT : bl_0_69 
* INOUT : br_0_69 
* INOUT : bl_0_70 
* INOUT : br_0_70 
* INOUT : bl_0_71 
* INOUT : br_0_71 
* INOUT : bl_0_72 
* INOUT : br_0_72 
* INOUT : bl_0_73 
* INOUT : br_0_73 
* INOUT : bl_0_74 
* INOUT : br_0_74 
* INOUT : bl_0_75 
* INOUT : br_0_75 
* INOUT : bl_0_76 
* INOUT : br_0_76 
* INOUT : bl_0_77 
* INOUT : br_0_77 
* INOUT : bl_0_78 
* INOUT : br_0_78 
* INOUT : bl_0_79 
* INOUT : br_0_79 
* INOUT : bl_0_80 
* INOUT : br_0_80 
* INOUT : bl_0_81 
* INOUT : br_0_81 
* INOUT : bl_0_82 
* INOUT : br_0_82 
* INOUT : bl_0_83 
* INOUT : br_0_83 
* INOUT : bl_0_84 
* INOUT : br_0_84 
* INOUT : bl_0_85 
* INOUT : br_0_85 
* INOUT : bl_0_86 
* INOUT : br_0_86 
* INOUT : bl_0_87 
* INOUT : br_0_87 
* INOUT : bl_0_88 
* INOUT : br_0_88 
* INOUT : bl_0_89 
* INOUT : br_0_89 
* INOUT : bl_0_90 
* INOUT : br_0_90 
* INOUT : bl_0_91 
* INOUT : br_0_91 
* INOUT : bl_0_92 
* INOUT : br_0_92 
* INOUT : bl_0_93 
* INOUT : br_0_93 
* INOUT : bl_0_94 
* INOUT : br_0_94 
* INOUT : bl_0_95 
* INOUT : br_0_95 
* INOUT : bl_0_96 
* INOUT : br_0_96 
* INOUT : bl_0_97 
* INOUT : br_0_97 
* INOUT : bl_0_98 
* INOUT : br_0_98 
* INOUT : bl_0_99 
* INOUT : br_0_99 
* INOUT : bl_0_100 
* INOUT : br_0_100 
* INOUT : bl_0_101 
* INOUT : br_0_101 
* INOUT : bl_0_102 
* INOUT : br_0_102 
* INOUT : bl_0_103 
* INOUT : br_0_103 
* INOUT : bl_0_104 
* INOUT : br_0_104 
* INOUT : bl_0_105 
* INOUT : br_0_105 
* INOUT : bl_0_106 
* INOUT : br_0_106 
* INOUT : bl_0_107 
* INOUT : br_0_107 
* INOUT : bl_0_108 
* INOUT : br_0_108 
* INOUT : bl_0_109 
* INOUT : br_0_109 
* INOUT : bl_0_110 
* INOUT : br_0_110 
* INOUT : bl_0_111 
* INOUT : br_0_111 
* INOUT : bl_0_112 
* INOUT : br_0_112 
* INOUT : bl_0_113 
* INOUT : br_0_113 
* INOUT : bl_0_114 
* INOUT : br_0_114 
* INOUT : bl_0_115 
* INOUT : br_0_115 
* INOUT : bl_0_116 
* INOUT : br_0_116 
* INOUT : bl_0_117 
* INOUT : br_0_117 
* INOUT : bl_0_118 
* INOUT : br_0_118 
* INOUT : bl_0_119 
* INOUT : br_0_119 
* INOUT : bl_0_120 
* INOUT : br_0_120 
* INOUT : bl_0_121 
* INOUT : br_0_121 
* INOUT : bl_0_122 
* INOUT : br_0_122 
* INOUT : bl_0_123 
* INOUT : br_0_123 
* INOUT : bl_0_124 
* INOUT : br_0_124 
* INOUT : bl_0_125 
* INOUT : br_0_125 
* INOUT : bl_0_126 
* INOUT : br_0_126 
* INOUT : bl_0_127 
* INOUT : br_0_127 
* INOUT : bl_0_128 
* INOUT : br_0_128 
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
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c32
+ bl_0_32 br_0_32 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c33
+ bl_0_33 br_0_33 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c34
+ bl_0_34 br_0_34 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c35
+ bl_0_35 br_0_35 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c36
+ bl_0_36 br_0_36 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c37
+ bl_0_37 br_0_37 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c38
+ bl_0_38 br_0_38 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c39
+ bl_0_39 br_0_39 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c40
+ bl_0_40 br_0_40 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c41
+ bl_0_41 br_0_41 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c42
+ bl_0_42 br_0_42 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c43
+ bl_0_43 br_0_43 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c44
+ bl_0_44 br_0_44 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c45
+ bl_0_45 br_0_45 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c46
+ bl_0_46 br_0_46 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c47
+ bl_0_47 br_0_47 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c48
+ bl_0_48 br_0_48 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c49
+ bl_0_49 br_0_49 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c50
+ bl_0_50 br_0_50 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c51
+ bl_0_51 br_0_51 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c52
+ bl_0_52 br_0_52 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c53
+ bl_0_53 br_0_53 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c54
+ bl_0_54 br_0_54 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c55
+ bl_0_55 br_0_55 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c56
+ bl_0_56 br_0_56 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c57
+ bl_0_57 br_0_57 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c58
+ bl_0_58 br_0_58 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c59
+ bl_0_59 br_0_59 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c60
+ bl_0_60 br_0_60 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c61
+ bl_0_61 br_0_61 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c62
+ bl_0_62 br_0_62 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c63
+ bl_0_63 br_0_63 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c64
+ bl_0_64 br_0_64 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c65
+ bl_0_65 br_0_65 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c66
+ bl_0_66 br_0_66 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c67
+ bl_0_67 br_0_67 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c68
+ bl_0_68 br_0_68 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c69
+ bl_0_69 br_0_69 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c70
+ bl_0_70 br_0_70 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c71
+ bl_0_71 br_0_71 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c72
+ bl_0_72 br_0_72 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c73
+ bl_0_73 br_0_73 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c74
+ bl_0_74 br_0_74 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c75
+ bl_0_75 br_0_75 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c76
+ bl_0_76 br_0_76 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c77
+ bl_0_77 br_0_77 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c78
+ bl_0_78 br_0_78 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c79
+ bl_0_79 br_0_79 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c80
+ bl_0_80 br_0_80 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c81
+ bl_0_81 br_0_81 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c82
+ bl_0_82 br_0_82 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c83
+ bl_0_83 br_0_83 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c84
+ bl_0_84 br_0_84 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c85
+ bl_0_85 br_0_85 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c86
+ bl_0_86 br_0_86 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c87
+ bl_0_87 br_0_87 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c88
+ bl_0_88 br_0_88 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c89
+ bl_0_89 br_0_89 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c90
+ bl_0_90 br_0_90 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c91
+ bl_0_91 br_0_91 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c92
+ bl_0_92 br_0_92 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c93
+ bl_0_93 br_0_93 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c94
+ bl_0_94 br_0_94 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c95
+ bl_0_95 br_0_95 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c96
+ bl_0_96 br_0_96 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c97
+ bl_0_97 br_0_97 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c98
+ bl_0_98 br_0_98 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c99
+ bl_0_99 br_0_99 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c100
+ bl_0_100 br_0_100 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c101
+ bl_0_101 br_0_101 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c102
+ bl_0_102 br_0_102 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c103
+ bl_0_103 br_0_103 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c104
+ bl_0_104 br_0_104 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c105
+ bl_0_105 br_0_105 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c106
+ bl_0_106 br_0_106 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c107
+ bl_0_107 br_0_107 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c108
+ bl_0_108 br_0_108 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c109
+ bl_0_109 br_0_109 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c110
+ bl_0_110 br_0_110 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c111
+ bl_0_111 br_0_111 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c112
+ bl_0_112 br_0_112 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c113
+ bl_0_113 br_0_113 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c114
+ bl_0_114 br_0_114 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c115
+ bl_0_115 br_0_115 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c116
+ bl_0_116 br_0_116 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c117
+ bl_0_117 br_0_117 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c118
+ bl_0_118 br_0_118 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c119
+ bl_0_119 br_0_119 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c120
+ bl_0_120 br_0_120 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c121
+ bl_0_121 br_0_121 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c122
+ bl_0_122 br_0_122 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c123
+ bl_0_123 br_0_123 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c124
+ bl_0_124 br_0_124 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c125
+ bl_0_125 br_0_125 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c126
+ bl_0_126 br_0_126 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c127
+ bl_0_127 br_0_127 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c128
+ bl_0_128 br_0_128 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_2_dummy_array_1

.SUBCKT mp3_data_array_2_dummy_array_2
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32
+ wl_0_33 wl_0_34 vdd gnd
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
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
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
Xbit_r19_c0
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ dummy_cell_1rw
Xbit_r20_c0
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ dummy_cell_1rw
Xbit_r21_c0
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ dummy_cell_1rw
Xbit_r22_c0
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ dummy_cell_1rw
Xbit_r23_c0
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ dummy_cell_1rw
Xbit_r24_c0
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ dummy_cell_1rw
Xbit_r25_c0
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ dummy_cell_1rw
Xbit_r26_c0
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ dummy_cell_1rw
Xbit_r27_c0
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ dummy_cell_1rw
Xbit_r28_c0
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ dummy_cell_1rw
Xbit_r29_c0
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ dummy_cell_1rw
Xbit_r30_c0
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ dummy_cell_1rw
Xbit_r31_c0
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ dummy_cell_1rw
Xbit_r32_c0
+ bl_0_0 br_0_0 wl_0_32 vdd gnd
+ dummy_cell_1rw
Xbit_r33_c0
+ bl_0_0 br_0_0 wl_0_33 vdd gnd
+ dummy_cell_1rw
Xbit_r34_c0
+ bl_0_0 br_0_0 wl_0_34 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_2_dummy_array_2

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


.SUBCKT mp3_data_array_2_bitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33
+ bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36 bl_0_37 br_0_37
+ bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40 bl_0_41 br_0_41
+ bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44 bl_0_45 br_0_45
+ bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48 bl_0_49 br_0_49
+ bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52 bl_0_53 br_0_53
+ bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56 bl_0_57 br_0_57
+ bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60 bl_0_61 br_0_61
+ bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64 bl_0_65 br_0_65
+ bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68 bl_0_69 br_0_69
+ bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72 bl_0_73 br_0_73
+ bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76 bl_0_77 br_0_77
+ bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80 bl_0_81 br_0_81
+ bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84 bl_0_85 br_0_85
+ bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88 bl_0_89 br_0_89
+ bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92 bl_0_93 br_0_93
+ bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96 bl_0_97 br_0_97
+ bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100 bl_0_101 br_0_101
+ bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104 br_0_104 bl_0_105
+ br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107 bl_0_108 br_0_108
+ bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111 br_0_111 bl_0_112
+ br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114 bl_0_115 br_0_115
+ bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118 br_0_118 bl_0_119
+ br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121 bl_0_122 br_0_122
+ bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125 br_0_125 bl_0_126
+ br_0_126 bl_0_127 br_0_127 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5
+ wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14
+ wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22
+ wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30
+ wl_0_31 vdd gnd
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
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* INOUT : bl_0_34 
* INOUT : br_0_34 
* INOUT : bl_0_35 
* INOUT : br_0_35 
* INOUT : bl_0_36 
* INOUT : br_0_36 
* INOUT : bl_0_37 
* INOUT : br_0_37 
* INOUT : bl_0_38 
* INOUT : br_0_38 
* INOUT : bl_0_39 
* INOUT : br_0_39 
* INOUT : bl_0_40 
* INOUT : br_0_40 
* INOUT : bl_0_41 
* INOUT : br_0_41 
* INOUT : bl_0_42 
* INOUT : br_0_42 
* INOUT : bl_0_43 
* INOUT : br_0_43 
* INOUT : bl_0_44 
* INOUT : br_0_44 
* INOUT : bl_0_45 
* INOUT : br_0_45 
* INOUT : bl_0_46 
* INOUT : br_0_46 
* INOUT : bl_0_47 
* INOUT : br_0_47 
* INOUT : bl_0_48 
* INOUT : br_0_48 
* INOUT : bl_0_49 
* INOUT : br_0_49 
* INOUT : bl_0_50 
* INOUT : br_0_50 
* INOUT : bl_0_51 
* INOUT : br_0_51 
* INOUT : bl_0_52 
* INOUT : br_0_52 
* INOUT : bl_0_53 
* INOUT : br_0_53 
* INOUT : bl_0_54 
* INOUT : br_0_54 
* INOUT : bl_0_55 
* INOUT : br_0_55 
* INOUT : bl_0_56 
* INOUT : br_0_56 
* INOUT : bl_0_57 
* INOUT : br_0_57 
* INOUT : bl_0_58 
* INOUT : br_0_58 
* INOUT : bl_0_59 
* INOUT : br_0_59 
* INOUT : bl_0_60 
* INOUT : br_0_60 
* INOUT : bl_0_61 
* INOUT : br_0_61 
* INOUT : bl_0_62 
* INOUT : br_0_62 
* INOUT : bl_0_63 
* INOUT : br_0_63 
* INOUT : bl_0_64 
* INOUT : br_0_64 
* INOUT : bl_0_65 
* INOUT : br_0_65 
* INOUT : bl_0_66 
* INOUT : br_0_66 
* INOUT : bl_0_67 
* INOUT : br_0_67 
* INOUT : bl_0_68 
* INOUT : br_0_68 
* INOUT : bl_0_69 
* INOUT : br_0_69 
* INOUT : bl_0_70 
* INOUT : br_0_70 
* INOUT : bl_0_71 
* INOUT : br_0_71 
* INOUT : bl_0_72 
* INOUT : br_0_72 
* INOUT : bl_0_73 
* INOUT : br_0_73 
* INOUT : bl_0_74 
* INOUT : br_0_74 
* INOUT : bl_0_75 
* INOUT : br_0_75 
* INOUT : bl_0_76 
* INOUT : br_0_76 
* INOUT : bl_0_77 
* INOUT : br_0_77 
* INOUT : bl_0_78 
* INOUT : br_0_78 
* INOUT : bl_0_79 
* INOUT : br_0_79 
* INOUT : bl_0_80 
* INOUT : br_0_80 
* INOUT : bl_0_81 
* INOUT : br_0_81 
* INOUT : bl_0_82 
* INOUT : br_0_82 
* INOUT : bl_0_83 
* INOUT : br_0_83 
* INOUT : bl_0_84 
* INOUT : br_0_84 
* INOUT : bl_0_85 
* INOUT : br_0_85 
* INOUT : bl_0_86 
* INOUT : br_0_86 
* INOUT : bl_0_87 
* INOUT : br_0_87 
* INOUT : bl_0_88 
* INOUT : br_0_88 
* INOUT : bl_0_89 
* INOUT : br_0_89 
* INOUT : bl_0_90 
* INOUT : br_0_90 
* INOUT : bl_0_91 
* INOUT : br_0_91 
* INOUT : bl_0_92 
* INOUT : br_0_92 
* INOUT : bl_0_93 
* INOUT : br_0_93 
* INOUT : bl_0_94 
* INOUT : br_0_94 
* INOUT : bl_0_95 
* INOUT : br_0_95 
* INOUT : bl_0_96 
* INOUT : br_0_96 
* INOUT : bl_0_97 
* INOUT : br_0_97 
* INOUT : bl_0_98 
* INOUT : br_0_98 
* INOUT : bl_0_99 
* INOUT : br_0_99 
* INOUT : bl_0_100 
* INOUT : br_0_100 
* INOUT : bl_0_101 
* INOUT : br_0_101 
* INOUT : bl_0_102 
* INOUT : br_0_102 
* INOUT : bl_0_103 
* INOUT : br_0_103 
* INOUT : bl_0_104 
* INOUT : br_0_104 
* INOUT : bl_0_105 
* INOUT : br_0_105 
* INOUT : bl_0_106 
* INOUT : br_0_106 
* INOUT : bl_0_107 
* INOUT : br_0_107 
* INOUT : bl_0_108 
* INOUT : br_0_108 
* INOUT : bl_0_109 
* INOUT : br_0_109 
* INOUT : bl_0_110 
* INOUT : br_0_110 
* INOUT : bl_0_111 
* INOUT : br_0_111 
* INOUT : bl_0_112 
* INOUT : br_0_112 
* INOUT : bl_0_113 
* INOUT : br_0_113 
* INOUT : bl_0_114 
* INOUT : br_0_114 
* INOUT : bl_0_115 
* INOUT : br_0_115 
* INOUT : bl_0_116 
* INOUT : br_0_116 
* INOUT : bl_0_117 
* INOUT : br_0_117 
* INOUT : bl_0_118 
* INOUT : br_0_118 
* INOUT : bl_0_119 
* INOUT : br_0_119 
* INOUT : bl_0_120 
* INOUT : br_0_120 
* INOUT : bl_0_121 
* INOUT : br_0_121 
* INOUT : bl_0_122 
* INOUT : br_0_122 
* INOUT : bl_0_123 
* INOUT : br_0_123 
* INOUT : bl_0_124 
* INOUT : br_0_124 
* INOUT : bl_0_125 
* INOUT : br_0_125 
* INOUT : bl_0_126 
* INOUT : br_0_126 
* INOUT : bl_0_127 
* INOUT : br_0_127 
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
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 128
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
Xbit_r16_c0
+ bl_0_0 br_0_0 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c0
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c0
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c0
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c0
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c0
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c0
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c0
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c0
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c0
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c0
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c0
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c0
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c0
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c0
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c0
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c1
+ bl_0_1 br_0_1 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c1
+ bl_0_1 br_0_1 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c1
+ bl_0_1 br_0_1 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c1
+ bl_0_1 br_0_1 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c1
+ bl_0_1 br_0_1 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c1
+ bl_0_1 br_0_1 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c1
+ bl_0_1 br_0_1 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c1
+ bl_0_1 br_0_1 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c1
+ bl_0_1 br_0_1 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c1
+ bl_0_1 br_0_1 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c1
+ bl_0_1 br_0_1 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c1
+ bl_0_1 br_0_1 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c1
+ bl_0_1 br_0_1 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c1
+ bl_0_1 br_0_1 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c1
+ bl_0_1 br_0_1 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c1
+ bl_0_1 br_0_1 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c1
+ bl_0_1 br_0_1 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c1
+ bl_0_1 br_0_1 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c1
+ bl_0_1 br_0_1 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c1
+ bl_0_1 br_0_1 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c1
+ bl_0_1 br_0_1 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c1
+ bl_0_1 br_0_1 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c1
+ bl_0_1 br_0_1 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c1
+ bl_0_1 br_0_1 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c1
+ bl_0_1 br_0_1 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c1
+ bl_0_1 br_0_1 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c1
+ bl_0_1 br_0_1 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c1
+ bl_0_1 br_0_1 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c1
+ bl_0_1 br_0_1 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c1
+ bl_0_1 br_0_1 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c1
+ bl_0_1 br_0_1 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c1
+ bl_0_1 br_0_1 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c2
+ bl_0_2 br_0_2 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c2
+ bl_0_2 br_0_2 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c2
+ bl_0_2 br_0_2 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c2
+ bl_0_2 br_0_2 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c2
+ bl_0_2 br_0_2 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c2
+ bl_0_2 br_0_2 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c2
+ bl_0_2 br_0_2 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c2
+ bl_0_2 br_0_2 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c2
+ bl_0_2 br_0_2 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c2
+ bl_0_2 br_0_2 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c2
+ bl_0_2 br_0_2 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c2
+ bl_0_2 br_0_2 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c2
+ bl_0_2 br_0_2 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c2
+ bl_0_2 br_0_2 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c2
+ bl_0_2 br_0_2 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c2
+ bl_0_2 br_0_2 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c2
+ bl_0_2 br_0_2 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c2
+ bl_0_2 br_0_2 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c2
+ bl_0_2 br_0_2 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c2
+ bl_0_2 br_0_2 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c2
+ bl_0_2 br_0_2 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c2
+ bl_0_2 br_0_2 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c2
+ bl_0_2 br_0_2 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c2
+ bl_0_2 br_0_2 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c2
+ bl_0_2 br_0_2 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c2
+ bl_0_2 br_0_2 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c2
+ bl_0_2 br_0_2 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c2
+ bl_0_2 br_0_2 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c2
+ bl_0_2 br_0_2 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c2
+ bl_0_2 br_0_2 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c2
+ bl_0_2 br_0_2 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c2
+ bl_0_2 br_0_2 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c3
+ bl_0_3 br_0_3 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c3
+ bl_0_3 br_0_3 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c3
+ bl_0_3 br_0_3 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c3
+ bl_0_3 br_0_3 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c3
+ bl_0_3 br_0_3 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c3
+ bl_0_3 br_0_3 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c3
+ bl_0_3 br_0_3 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c3
+ bl_0_3 br_0_3 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c3
+ bl_0_3 br_0_3 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c3
+ bl_0_3 br_0_3 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c3
+ bl_0_3 br_0_3 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c3
+ bl_0_3 br_0_3 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c3
+ bl_0_3 br_0_3 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c3
+ bl_0_3 br_0_3 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c3
+ bl_0_3 br_0_3 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c3
+ bl_0_3 br_0_3 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c3
+ bl_0_3 br_0_3 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c3
+ bl_0_3 br_0_3 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c3
+ bl_0_3 br_0_3 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c3
+ bl_0_3 br_0_3 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c3
+ bl_0_3 br_0_3 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c3
+ bl_0_3 br_0_3 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c3
+ bl_0_3 br_0_3 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c3
+ bl_0_3 br_0_3 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c3
+ bl_0_3 br_0_3 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c3
+ bl_0_3 br_0_3 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c3
+ bl_0_3 br_0_3 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c3
+ bl_0_3 br_0_3 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c3
+ bl_0_3 br_0_3 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c3
+ bl_0_3 br_0_3 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c3
+ bl_0_3 br_0_3 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c3
+ bl_0_3 br_0_3 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c4
+ bl_0_4 br_0_4 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c4
+ bl_0_4 br_0_4 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c4
+ bl_0_4 br_0_4 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c4
+ bl_0_4 br_0_4 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c4
+ bl_0_4 br_0_4 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c4
+ bl_0_4 br_0_4 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c4
+ bl_0_4 br_0_4 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c4
+ bl_0_4 br_0_4 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c4
+ bl_0_4 br_0_4 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c4
+ bl_0_4 br_0_4 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c4
+ bl_0_4 br_0_4 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c4
+ bl_0_4 br_0_4 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c4
+ bl_0_4 br_0_4 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c4
+ bl_0_4 br_0_4 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c4
+ bl_0_4 br_0_4 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c4
+ bl_0_4 br_0_4 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c4
+ bl_0_4 br_0_4 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c4
+ bl_0_4 br_0_4 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c4
+ bl_0_4 br_0_4 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c4
+ bl_0_4 br_0_4 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c4
+ bl_0_4 br_0_4 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c4
+ bl_0_4 br_0_4 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c4
+ bl_0_4 br_0_4 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c4
+ bl_0_4 br_0_4 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c4
+ bl_0_4 br_0_4 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c4
+ bl_0_4 br_0_4 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c4
+ bl_0_4 br_0_4 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c4
+ bl_0_4 br_0_4 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c4
+ bl_0_4 br_0_4 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c4
+ bl_0_4 br_0_4 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c4
+ bl_0_4 br_0_4 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c4
+ bl_0_4 br_0_4 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c5
+ bl_0_5 br_0_5 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c5
+ bl_0_5 br_0_5 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c5
+ bl_0_5 br_0_5 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c5
+ bl_0_5 br_0_5 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c5
+ bl_0_5 br_0_5 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c5
+ bl_0_5 br_0_5 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c5
+ bl_0_5 br_0_5 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c5
+ bl_0_5 br_0_5 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c5
+ bl_0_5 br_0_5 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c5
+ bl_0_5 br_0_5 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c5
+ bl_0_5 br_0_5 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c5
+ bl_0_5 br_0_5 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c5
+ bl_0_5 br_0_5 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c5
+ bl_0_5 br_0_5 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c5
+ bl_0_5 br_0_5 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c5
+ bl_0_5 br_0_5 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c5
+ bl_0_5 br_0_5 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c5
+ bl_0_5 br_0_5 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c5
+ bl_0_5 br_0_5 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c5
+ bl_0_5 br_0_5 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c5
+ bl_0_5 br_0_5 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c5
+ bl_0_5 br_0_5 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c5
+ bl_0_5 br_0_5 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c5
+ bl_0_5 br_0_5 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c5
+ bl_0_5 br_0_5 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c5
+ bl_0_5 br_0_5 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c5
+ bl_0_5 br_0_5 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c5
+ bl_0_5 br_0_5 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c5
+ bl_0_5 br_0_5 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c5
+ bl_0_5 br_0_5 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c5
+ bl_0_5 br_0_5 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c5
+ bl_0_5 br_0_5 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c6
+ bl_0_6 br_0_6 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c6
+ bl_0_6 br_0_6 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c6
+ bl_0_6 br_0_6 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c6
+ bl_0_6 br_0_6 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c6
+ bl_0_6 br_0_6 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c6
+ bl_0_6 br_0_6 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c6
+ bl_0_6 br_0_6 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c6
+ bl_0_6 br_0_6 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c6
+ bl_0_6 br_0_6 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c6
+ bl_0_6 br_0_6 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c6
+ bl_0_6 br_0_6 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c6
+ bl_0_6 br_0_6 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c6
+ bl_0_6 br_0_6 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c6
+ bl_0_6 br_0_6 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c6
+ bl_0_6 br_0_6 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c6
+ bl_0_6 br_0_6 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c6
+ bl_0_6 br_0_6 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c6
+ bl_0_6 br_0_6 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c6
+ bl_0_6 br_0_6 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c6
+ bl_0_6 br_0_6 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c6
+ bl_0_6 br_0_6 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c6
+ bl_0_6 br_0_6 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c6
+ bl_0_6 br_0_6 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c6
+ bl_0_6 br_0_6 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c6
+ bl_0_6 br_0_6 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c6
+ bl_0_6 br_0_6 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c6
+ bl_0_6 br_0_6 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c6
+ bl_0_6 br_0_6 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c6
+ bl_0_6 br_0_6 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c6
+ bl_0_6 br_0_6 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c6
+ bl_0_6 br_0_6 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c6
+ bl_0_6 br_0_6 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c7
+ bl_0_7 br_0_7 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c7
+ bl_0_7 br_0_7 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c7
+ bl_0_7 br_0_7 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c7
+ bl_0_7 br_0_7 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c7
+ bl_0_7 br_0_7 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c7
+ bl_0_7 br_0_7 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c7
+ bl_0_7 br_0_7 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c7
+ bl_0_7 br_0_7 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c7
+ bl_0_7 br_0_7 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c7
+ bl_0_7 br_0_7 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c7
+ bl_0_7 br_0_7 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c7
+ bl_0_7 br_0_7 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c7
+ bl_0_7 br_0_7 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c7
+ bl_0_7 br_0_7 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c7
+ bl_0_7 br_0_7 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c7
+ bl_0_7 br_0_7 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c7
+ bl_0_7 br_0_7 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c7
+ bl_0_7 br_0_7 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c7
+ bl_0_7 br_0_7 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c7
+ bl_0_7 br_0_7 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c7
+ bl_0_7 br_0_7 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c7
+ bl_0_7 br_0_7 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c7
+ bl_0_7 br_0_7 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c7
+ bl_0_7 br_0_7 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c7
+ bl_0_7 br_0_7 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c7
+ bl_0_7 br_0_7 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c7
+ bl_0_7 br_0_7 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c7
+ bl_0_7 br_0_7 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c7
+ bl_0_7 br_0_7 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c7
+ bl_0_7 br_0_7 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c7
+ bl_0_7 br_0_7 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c7
+ bl_0_7 br_0_7 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c8
+ bl_0_8 br_0_8 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c8
+ bl_0_8 br_0_8 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c8
+ bl_0_8 br_0_8 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c8
+ bl_0_8 br_0_8 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c8
+ bl_0_8 br_0_8 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c8
+ bl_0_8 br_0_8 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c8
+ bl_0_8 br_0_8 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c8
+ bl_0_8 br_0_8 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c8
+ bl_0_8 br_0_8 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c8
+ bl_0_8 br_0_8 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c8
+ bl_0_8 br_0_8 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c8
+ bl_0_8 br_0_8 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c8
+ bl_0_8 br_0_8 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c8
+ bl_0_8 br_0_8 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c8
+ bl_0_8 br_0_8 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c8
+ bl_0_8 br_0_8 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c8
+ bl_0_8 br_0_8 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c8
+ bl_0_8 br_0_8 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c8
+ bl_0_8 br_0_8 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c8
+ bl_0_8 br_0_8 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c8
+ bl_0_8 br_0_8 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c8
+ bl_0_8 br_0_8 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c8
+ bl_0_8 br_0_8 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c8
+ bl_0_8 br_0_8 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c8
+ bl_0_8 br_0_8 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c8
+ bl_0_8 br_0_8 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c8
+ bl_0_8 br_0_8 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c8
+ bl_0_8 br_0_8 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c8
+ bl_0_8 br_0_8 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c8
+ bl_0_8 br_0_8 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c8
+ bl_0_8 br_0_8 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c8
+ bl_0_8 br_0_8 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c9
+ bl_0_9 br_0_9 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c9
+ bl_0_9 br_0_9 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c9
+ bl_0_9 br_0_9 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c9
+ bl_0_9 br_0_9 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c9
+ bl_0_9 br_0_9 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c9
+ bl_0_9 br_0_9 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c9
+ bl_0_9 br_0_9 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c9
+ bl_0_9 br_0_9 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c9
+ bl_0_9 br_0_9 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c9
+ bl_0_9 br_0_9 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c9
+ bl_0_9 br_0_9 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c9
+ bl_0_9 br_0_9 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c9
+ bl_0_9 br_0_9 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c9
+ bl_0_9 br_0_9 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c9
+ bl_0_9 br_0_9 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c9
+ bl_0_9 br_0_9 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c9
+ bl_0_9 br_0_9 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c9
+ bl_0_9 br_0_9 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c9
+ bl_0_9 br_0_9 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c9
+ bl_0_9 br_0_9 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c9
+ bl_0_9 br_0_9 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c9
+ bl_0_9 br_0_9 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c9
+ bl_0_9 br_0_9 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c9
+ bl_0_9 br_0_9 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c9
+ bl_0_9 br_0_9 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c9
+ bl_0_9 br_0_9 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c9
+ bl_0_9 br_0_9 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c9
+ bl_0_9 br_0_9 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c9
+ bl_0_9 br_0_9 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c9
+ bl_0_9 br_0_9 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c9
+ bl_0_9 br_0_9 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c9
+ bl_0_9 br_0_9 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c10
+ bl_0_10 br_0_10 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c10
+ bl_0_10 br_0_10 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c10
+ bl_0_10 br_0_10 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c10
+ bl_0_10 br_0_10 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c10
+ bl_0_10 br_0_10 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c10
+ bl_0_10 br_0_10 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c10
+ bl_0_10 br_0_10 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c10
+ bl_0_10 br_0_10 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c10
+ bl_0_10 br_0_10 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c10
+ bl_0_10 br_0_10 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c10
+ bl_0_10 br_0_10 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c10
+ bl_0_10 br_0_10 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c10
+ bl_0_10 br_0_10 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c10
+ bl_0_10 br_0_10 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c10
+ bl_0_10 br_0_10 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c10
+ bl_0_10 br_0_10 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c10
+ bl_0_10 br_0_10 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c10
+ bl_0_10 br_0_10 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c10
+ bl_0_10 br_0_10 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c10
+ bl_0_10 br_0_10 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c10
+ bl_0_10 br_0_10 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c10
+ bl_0_10 br_0_10 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c10
+ bl_0_10 br_0_10 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c10
+ bl_0_10 br_0_10 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c10
+ bl_0_10 br_0_10 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c10
+ bl_0_10 br_0_10 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c10
+ bl_0_10 br_0_10 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c10
+ bl_0_10 br_0_10 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c10
+ bl_0_10 br_0_10 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c10
+ bl_0_10 br_0_10 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c10
+ bl_0_10 br_0_10 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c10
+ bl_0_10 br_0_10 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c11
+ bl_0_11 br_0_11 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c11
+ bl_0_11 br_0_11 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c11
+ bl_0_11 br_0_11 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c11
+ bl_0_11 br_0_11 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c11
+ bl_0_11 br_0_11 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c11
+ bl_0_11 br_0_11 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c11
+ bl_0_11 br_0_11 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c11
+ bl_0_11 br_0_11 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c11
+ bl_0_11 br_0_11 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c11
+ bl_0_11 br_0_11 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c11
+ bl_0_11 br_0_11 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c11
+ bl_0_11 br_0_11 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c11
+ bl_0_11 br_0_11 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c11
+ bl_0_11 br_0_11 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c11
+ bl_0_11 br_0_11 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c11
+ bl_0_11 br_0_11 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c11
+ bl_0_11 br_0_11 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c11
+ bl_0_11 br_0_11 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c11
+ bl_0_11 br_0_11 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c11
+ bl_0_11 br_0_11 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c11
+ bl_0_11 br_0_11 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c11
+ bl_0_11 br_0_11 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c11
+ bl_0_11 br_0_11 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c11
+ bl_0_11 br_0_11 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c11
+ bl_0_11 br_0_11 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c11
+ bl_0_11 br_0_11 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c11
+ bl_0_11 br_0_11 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c11
+ bl_0_11 br_0_11 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c11
+ bl_0_11 br_0_11 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c11
+ bl_0_11 br_0_11 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c11
+ bl_0_11 br_0_11 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c11
+ bl_0_11 br_0_11 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c12
+ bl_0_12 br_0_12 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c12
+ bl_0_12 br_0_12 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c12
+ bl_0_12 br_0_12 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c12
+ bl_0_12 br_0_12 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c12
+ bl_0_12 br_0_12 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c12
+ bl_0_12 br_0_12 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c12
+ bl_0_12 br_0_12 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c12
+ bl_0_12 br_0_12 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c12
+ bl_0_12 br_0_12 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c12
+ bl_0_12 br_0_12 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c12
+ bl_0_12 br_0_12 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c12
+ bl_0_12 br_0_12 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c12
+ bl_0_12 br_0_12 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c12
+ bl_0_12 br_0_12 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c12
+ bl_0_12 br_0_12 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c12
+ bl_0_12 br_0_12 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c12
+ bl_0_12 br_0_12 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c12
+ bl_0_12 br_0_12 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c12
+ bl_0_12 br_0_12 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c12
+ bl_0_12 br_0_12 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c12
+ bl_0_12 br_0_12 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c12
+ bl_0_12 br_0_12 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c12
+ bl_0_12 br_0_12 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c12
+ bl_0_12 br_0_12 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c12
+ bl_0_12 br_0_12 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c12
+ bl_0_12 br_0_12 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c12
+ bl_0_12 br_0_12 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c12
+ bl_0_12 br_0_12 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c12
+ bl_0_12 br_0_12 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c12
+ bl_0_12 br_0_12 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c12
+ bl_0_12 br_0_12 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c12
+ bl_0_12 br_0_12 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c13
+ bl_0_13 br_0_13 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c13
+ bl_0_13 br_0_13 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c13
+ bl_0_13 br_0_13 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c13
+ bl_0_13 br_0_13 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c13
+ bl_0_13 br_0_13 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c13
+ bl_0_13 br_0_13 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c13
+ bl_0_13 br_0_13 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c13
+ bl_0_13 br_0_13 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c13
+ bl_0_13 br_0_13 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c13
+ bl_0_13 br_0_13 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c13
+ bl_0_13 br_0_13 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c13
+ bl_0_13 br_0_13 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c13
+ bl_0_13 br_0_13 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c13
+ bl_0_13 br_0_13 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c13
+ bl_0_13 br_0_13 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c13
+ bl_0_13 br_0_13 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c13
+ bl_0_13 br_0_13 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c13
+ bl_0_13 br_0_13 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c13
+ bl_0_13 br_0_13 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c13
+ bl_0_13 br_0_13 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c13
+ bl_0_13 br_0_13 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c13
+ bl_0_13 br_0_13 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c13
+ bl_0_13 br_0_13 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c13
+ bl_0_13 br_0_13 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c13
+ bl_0_13 br_0_13 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c13
+ bl_0_13 br_0_13 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c13
+ bl_0_13 br_0_13 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c13
+ bl_0_13 br_0_13 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c13
+ bl_0_13 br_0_13 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c13
+ bl_0_13 br_0_13 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c13
+ bl_0_13 br_0_13 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c13
+ bl_0_13 br_0_13 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c14
+ bl_0_14 br_0_14 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c14
+ bl_0_14 br_0_14 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c14
+ bl_0_14 br_0_14 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c14
+ bl_0_14 br_0_14 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c14
+ bl_0_14 br_0_14 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c14
+ bl_0_14 br_0_14 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c14
+ bl_0_14 br_0_14 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c14
+ bl_0_14 br_0_14 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c14
+ bl_0_14 br_0_14 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c14
+ bl_0_14 br_0_14 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c14
+ bl_0_14 br_0_14 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c14
+ bl_0_14 br_0_14 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c14
+ bl_0_14 br_0_14 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c14
+ bl_0_14 br_0_14 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c14
+ bl_0_14 br_0_14 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c14
+ bl_0_14 br_0_14 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c14
+ bl_0_14 br_0_14 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c14
+ bl_0_14 br_0_14 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c14
+ bl_0_14 br_0_14 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c14
+ bl_0_14 br_0_14 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c14
+ bl_0_14 br_0_14 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c14
+ bl_0_14 br_0_14 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c14
+ bl_0_14 br_0_14 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c14
+ bl_0_14 br_0_14 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c14
+ bl_0_14 br_0_14 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c14
+ bl_0_14 br_0_14 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c14
+ bl_0_14 br_0_14 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c14
+ bl_0_14 br_0_14 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c14
+ bl_0_14 br_0_14 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c14
+ bl_0_14 br_0_14 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c14
+ bl_0_14 br_0_14 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c14
+ bl_0_14 br_0_14 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c15
+ bl_0_15 br_0_15 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c15
+ bl_0_15 br_0_15 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c15
+ bl_0_15 br_0_15 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c15
+ bl_0_15 br_0_15 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c15
+ bl_0_15 br_0_15 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c15
+ bl_0_15 br_0_15 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c15
+ bl_0_15 br_0_15 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c15
+ bl_0_15 br_0_15 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c15
+ bl_0_15 br_0_15 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c15
+ bl_0_15 br_0_15 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c15
+ bl_0_15 br_0_15 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c15
+ bl_0_15 br_0_15 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c15
+ bl_0_15 br_0_15 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c15
+ bl_0_15 br_0_15 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c15
+ bl_0_15 br_0_15 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c15
+ bl_0_15 br_0_15 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c15
+ bl_0_15 br_0_15 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c15
+ bl_0_15 br_0_15 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c15
+ bl_0_15 br_0_15 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c15
+ bl_0_15 br_0_15 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c15
+ bl_0_15 br_0_15 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c15
+ bl_0_15 br_0_15 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c15
+ bl_0_15 br_0_15 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c15
+ bl_0_15 br_0_15 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c15
+ bl_0_15 br_0_15 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c15
+ bl_0_15 br_0_15 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c15
+ bl_0_15 br_0_15 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c15
+ bl_0_15 br_0_15 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c15
+ bl_0_15 br_0_15 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c15
+ bl_0_15 br_0_15 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c15
+ bl_0_15 br_0_15 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c15
+ bl_0_15 br_0_15 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c16
+ bl_0_16 br_0_16 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c16
+ bl_0_16 br_0_16 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c16
+ bl_0_16 br_0_16 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c16
+ bl_0_16 br_0_16 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c16
+ bl_0_16 br_0_16 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c16
+ bl_0_16 br_0_16 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c16
+ bl_0_16 br_0_16 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c16
+ bl_0_16 br_0_16 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c16
+ bl_0_16 br_0_16 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c16
+ bl_0_16 br_0_16 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c16
+ bl_0_16 br_0_16 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c16
+ bl_0_16 br_0_16 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c16
+ bl_0_16 br_0_16 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c16
+ bl_0_16 br_0_16 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c16
+ bl_0_16 br_0_16 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c16
+ bl_0_16 br_0_16 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c16
+ bl_0_16 br_0_16 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c16
+ bl_0_16 br_0_16 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c16
+ bl_0_16 br_0_16 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c16
+ bl_0_16 br_0_16 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c16
+ bl_0_16 br_0_16 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c16
+ bl_0_16 br_0_16 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c16
+ bl_0_16 br_0_16 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c16
+ bl_0_16 br_0_16 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c16
+ bl_0_16 br_0_16 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c16
+ bl_0_16 br_0_16 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c16
+ bl_0_16 br_0_16 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c16
+ bl_0_16 br_0_16 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c16
+ bl_0_16 br_0_16 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c16
+ bl_0_16 br_0_16 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c16
+ bl_0_16 br_0_16 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c16
+ bl_0_16 br_0_16 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c17
+ bl_0_17 br_0_17 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c17
+ bl_0_17 br_0_17 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c17
+ bl_0_17 br_0_17 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c17
+ bl_0_17 br_0_17 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c17
+ bl_0_17 br_0_17 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c17
+ bl_0_17 br_0_17 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c17
+ bl_0_17 br_0_17 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c17
+ bl_0_17 br_0_17 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c17
+ bl_0_17 br_0_17 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c17
+ bl_0_17 br_0_17 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c17
+ bl_0_17 br_0_17 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c17
+ bl_0_17 br_0_17 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c17
+ bl_0_17 br_0_17 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c17
+ bl_0_17 br_0_17 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c17
+ bl_0_17 br_0_17 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c17
+ bl_0_17 br_0_17 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c17
+ bl_0_17 br_0_17 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c17
+ bl_0_17 br_0_17 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c17
+ bl_0_17 br_0_17 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c17
+ bl_0_17 br_0_17 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c17
+ bl_0_17 br_0_17 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c17
+ bl_0_17 br_0_17 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c17
+ bl_0_17 br_0_17 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c17
+ bl_0_17 br_0_17 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c17
+ bl_0_17 br_0_17 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c17
+ bl_0_17 br_0_17 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c17
+ bl_0_17 br_0_17 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c17
+ bl_0_17 br_0_17 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c17
+ bl_0_17 br_0_17 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c17
+ bl_0_17 br_0_17 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c17
+ bl_0_17 br_0_17 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c17
+ bl_0_17 br_0_17 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c18
+ bl_0_18 br_0_18 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c18
+ bl_0_18 br_0_18 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c18
+ bl_0_18 br_0_18 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c18
+ bl_0_18 br_0_18 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c18
+ bl_0_18 br_0_18 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c18
+ bl_0_18 br_0_18 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c18
+ bl_0_18 br_0_18 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c18
+ bl_0_18 br_0_18 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c18
+ bl_0_18 br_0_18 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c18
+ bl_0_18 br_0_18 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c18
+ bl_0_18 br_0_18 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c18
+ bl_0_18 br_0_18 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c18
+ bl_0_18 br_0_18 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c18
+ bl_0_18 br_0_18 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c18
+ bl_0_18 br_0_18 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c18
+ bl_0_18 br_0_18 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c18
+ bl_0_18 br_0_18 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c18
+ bl_0_18 br_0_18 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c18
+ bl_0_18 br_0_18 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c18
+ bl_0_18 br_0_18 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c18
+ bl_0_18 br_0_18 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c18
+ bl_0_18 br_0_18 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c18
+ bl_0_18 br_0_18 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c18
+ bl_0_18 br_0_18 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c18
+ bl_0_18 br_0_18 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c18
+ bl_0_18 br_0_18 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c18
+ bl_0_18 br_0_18 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c18
+ bl_0_18 br_0_18 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c18
+ bl_0_18 br_0_18 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c18
+ bl_0_18 br_0_18 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c18
+ bl_0_18 br_0_18 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c18
+ bl_0_18 br_0_18 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c19
+ bl_0_19 br_0_19 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c19
+ bl_0_19 br_0_19 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c19
+ bl_0_19 br_0_19 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c19
+ bl_0_19 br_0_19 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c19
+ bl_0_19 br_0_19 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c19
+ bl_0_19 br_0_19 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c19
+ bl_0_19 br_0_19 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c19
+ bl_0_19 br_0_19 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c19
+ bl_0_19 br_0_19 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c19
+ bl_0_19 br_0_19 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c19
+ bl_0_19 br_0_19 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c19
+ bl_0_19 br_0_19 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c19
+ bl_0_19 br_0_19 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c19
+ bl_0_19 br_0_19 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c19
+ bl_0_19 br_0_19 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c19
+ bl_0_19 br_0_19 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c19
+ bl_0_19 br_0_19 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c19
+ bl_0_19 br_0_19 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c19
+ bl_0_19 br_0_19 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c19
+ bl_0_19 br_0_19 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c19
+ bl_0_19 br_0_19 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c19
+ bl_0_19 br_0_19 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c19
+ bl_0_19 br_0_19 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c19
+ bl_0_19 br_0_19 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c19
+ bl_0_19 br_0_19 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c19
+ bl_0_19 br_0_19 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c19
+ bl_0_19 br_0_19 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c19
+ bl_0_19 br_0_19 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c19
+ bl_0_19 br_0_19 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c19
+ bl_0_19 br_0_19 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c19
+ bl_0_19 br_0_19 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c19
+ bl_0_19 br_0_19 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c20
+ bl_0_20 br_0_20 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c20
+ bl_0_20 br_0_20 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c20
+ bl_0_20 br_0_20 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c20
+ bl_0_20 br_0_20 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c20
+ bl_0_20 br_0_20 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c20
+ bl_0_20 br_0_20 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c20
+ bl_0_20 br_0_20 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c20
+ bl_0_20 br_0_20 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c20
+ bl_0_20 br_0_20 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c20
+ bl_0_20 br_0_20 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c20
+ bl_0_20 br_0_20 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c20
+ bl_0_20 br_0_20 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c20
+ bl_0_20 br_0_20 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c20
+ bl_0_20 br_0_20 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c20
+ bl_0_20 br_0_20 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c20
+ bl_0_20 br_0_20 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c20
+ bl_0_20 br_0_20 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c20
+ bl_0_20 br_0_20 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c20
+ bl_0_20 br_0_20 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c20
+ bl_0_20 br_0_20 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c20
+ bl_0_20 br_0_20 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c20
+ bl_0_20 br_0_20 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c20
+ bl_0_20 br_0_20 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c20
+ bl_0_20 br_0_20 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c20
+ bl_0_20 br_0_20 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c20
+ bl_0_20 br_0_20 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c20
+ bl_0_20 br_0_20 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c20
+ bl_0_20 br_0_20 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c20
+ bl_0_20 br_0_20 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c20
+ bl_0_20 br_0_20 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c20
+ bl_0_20 br_0_20 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c20
+ bl_0_20 br_0_20 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c21
+ bl_0_21 br_0_21 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c21
+ bl_0_21 br_0_21 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c21
+ bl_0_21 br_0_21 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c21
+ bl_0_21 br_0_21 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c21
+ bl_0_21 br_0_21 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c21
+ bl_0_21 br_0_21 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c21
+ bl_0_21 br_0_21 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c21
+ bl_0_21 br_0_21 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c21
+ bl_0_21 br_0_21 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c21
+ bl_0_21 br_0_21 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c21
+ bl_0_21 br_0_21 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c21
+ bl_0_21 br_0_21 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c21
+ bl_0_21 br_0_21 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c21
+ bl_0_21 br_0_21 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c21
+ bl_0_21 br_0_21 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c21
+ bl_0_21 br_0_21 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c21
+ bl_0_21 br_0_21 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c21
+ bl_0_21 br_0_21 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c21
+ bl_0_21 br_0_21 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c21
+ bl_0_21 br_0_21 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c21
+ bl_0_21 br_0_21 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c21
+ bl_0_21 br_0_21 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c21
+ bl_0_21 br_0_21 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c21
+ bl_0_21 br_0_21 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c21
+ bl_0_21 br_0_21 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c21
+ bl_0_21 br_0_21 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c21
+ bl_0_21 br_0_21 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c21
+ bl_0_21 br_0_21 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c21
+ bl_0_21 br_0_21 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c21
+ bl_0_21 br_0_21 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c21
+ bl_0_21 br_0_21 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c21
+ bl_0_21 br_0_21 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c22
+ bl_0_22 br_0_22 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c22
+ bl_0_22 br_0_22 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c22
+ bl_0_22 br_0_22 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c22
+ bl_0_22 br_0_22 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c22
+ bl_0_22 br_0_22 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c22
+ bl_0_22 br_0_22 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c22
+ bl_0_22 br_0_22 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c22
+ bl_0_22 br_0_22 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c22
+ bl_0_22 br_0_22 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c22
+ bl_0_22 br_0_22 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c22
+ bl_0_22 br_0_22 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c22
+ bl_0_22 br_0_22 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c22
+ bl_0_22 br_0_22 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c22
+ bl_0_22 br_0_22 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c22
+ bl_0_22 br_0_22 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c22
+ bl_0_22 br_0_22 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c22
+ bl_0_22 br_0_22 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c22
+ bl_0_22 br_0_22 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c22
+ bl_0_22 br_0_22 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c22
+ bl_0_22 br_0_22 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c22
+ bl_0_22 br_0_22 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c22
+ bl_0_22 br_0_22 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c22
+ bl_0_22 br_0_22 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c22
+ bl_0_22 br_0_22 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c22
+ bl_0_22 br_0_22 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c22
+ bl_0_22 br_0_22 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c22
+ bl_0_22 br_0_22 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c22
+ bl_0_22 br_0_22 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c22
+ bl_0_22 br_0_22 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c22
+ bl_0_22 br_0_22 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c22
+ bl_0_22 br_0_22 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c22
+ bl_0_22 br_0_22 wl_0_31 vdd gnd
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
Xbit_r16_c23
+ bl_0_23 br_0_23 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c23
+ bl_0_23 br_0_23 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c23
+ bl_0_23 br_0_23 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c23
+ bl_0_23 br_0_23 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c23
+ bl_0_23 br_0_23 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c23
+ bl_0_23 br_0_23 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c23
+ bl_0_23 br_0_23 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c23
+ bl_0_23 br_0_23 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c23
+ bl_0_23 br_0_23 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c23
+ bl_0_23 br_0_23 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c23
+ bl_0_23 br_0_23 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c23
+ bl_0_23 br_0_23 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c23
+ bl_0_23 br_0_23 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c23
+ bl_0_23 br_0_23 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c23
+ bl_0_23 br_0_23 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c23
+ bl_0_23 br_0_23 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c24
+ bl_0_24 br_0_24 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c24
+ bl_0_24 br_0_24 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c24
+ bl_0_24 br_0_24 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c24
+ bl_0_24 br_0_24 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c24
+ bl_0_24 br_0_24 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c24
+ bl_0_24 br_0_24 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c24
+ bl_0_24 br_0_24 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c24
+ bl_0_24 br_0_24 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c24
+ bl_0_24 br_0_24 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c24
+ bl_0_24 br_0_24 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c24
+ bl_0_24 br_0_24 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c24
+ bl_0_24 br_0_24 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c24
+ bl_0_24 br_0_24 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c24
+ bl_0_24 br_0_24 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c24
+ bl_0_24 br_0_24 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c24
+ bl_0_24 br_0_24 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c24
+ bl_0_24 br_0_24 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c24
+ bl_0_24 br_0_24 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c24
+ bl_0_24 br_0_24 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c24
+ bl_0_24 br_0_24 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c24
+ bl_0_24 br_0_24 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c24
+ bl_0_24 br_0_24 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c24
+ bl_0_24 br_0_24 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c24
+ bl_0_24 br_0_24 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c24
+ bl_0_24 br_0_24 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c24
+ bl_0_24 br_0_24 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c24
+ bl_0_24 br_0_24 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c24
+ bl_0_24 br_0_24 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c24
+ bl_0_24 br_0_24 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c24
+ bl_0_24 br_0_24 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c24
+ bl_0_24 br_0_24 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c25
+ bl_0_25 br_0_25 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c25
+ bl_0_25 br_0_25 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c25
+ bl_0_25 br_0_25 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c25
+ bl_0_25 br_0_25 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c25
+ bl_0_25 br_0_25 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c25
+ bl_0_25 br_0_25 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c25
+ bl_0_25 br_0_25 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c25
+ bl_0_25 br_0_25 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c25
+ bl_0_25 br_0_25 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c25
+ bl_0_25 br_0_25 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c25
+ bl_0_25 br_0_25 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c25
+ bl_0_25 br_0_25 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c25
+ bl_0_25 br_0_25 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c25
+ bl_0_25 br_0_25 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c25
+ bl_0_25 br_0_25 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c25
+ bl_0_25 br_0_25 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c25
+ bl_0_25 br_0_25 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c25
+ bl_0_25 br_0_25 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c25
+ bl_0_25 br_0_25 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c25
+ bl_0_25 br_0_25 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c25
+ bl_0_25 br_0_25 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c25
+ bl_0_25 br_0_25 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c25
+ bl_0_25 br_0_25 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c25
+ bl_0_25 br_0_25 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c25
+ bl_0_25 br_0_25 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c25
+ bl_0_25 br_0_25 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c25
+ bl_0_25 br_0_25 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c25
+ bl_0_25 br_0_25 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c25
+ bl_0_25 br_0_25 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c25
+ bl_0_25 br_0_25 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c25
+ bl_0_25 br_0_25 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c26
+ bl_0_26 br_0_26 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c26
+ bl_0_26 br_0_26 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c26
+ bl_0_26 br_0_26 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c26
+ bl_0_26 br_0_26 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c26
+ bl_0_26 br_0_26 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c26
+ bl_0_26 br_0_26 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c26
+ bl_0_26 br_0_26 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c26
+ bl_0_26 br_0_26 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c26
+ bl_0_26 br_0_26 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c26
+ bl_0_26 br_0_26 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c26
+ bl_0_26 br_0_26 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c26
+ bl_0_26 br_0_26 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c26
+ bl_0_26 br_0_26 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c26
+ bl_0_26 br_0_26 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c26
+ bl_0_26 br_0_26 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c26
+ bl_0_26 br_0_26 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c26
+ bl_0_26 br_0_26 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c26
+ bl_0_26 br_0_26 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c26
+ bl_0_26 br_0_26 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c26
+ bl_0_26 br_0_26 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c26
+ bl_0_26 br_0_26 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c26
+ bl_0_26 br_0_26 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c26
+ bl_0_26 br_0_26 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c26
+ bl_0_26 br_0_26 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c26
+ bl_0_26 br_0_26 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c26
+ bl_0_26 br_0_26 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c26
+ bl_0_26 br_0_26 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c26
+ bl_0_26 br_0_26 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c26
+ bl_0_26 br_0_26 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c26
+ bl_0_26 br_0_26 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c26
+ bl_0_26 br_0_26 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c27
+ bl_0_27 br_0_27 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c27
+ bl_0_27 br_0_27 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c27
+ bl_0_27 br_0_27 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c27
+ bl_0_27 br_0_27 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c27
+ bl_0_27 br_0_27 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c27
+ bl_0_27 br_0_27 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c27
+ bl_0_27 br_0_27 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c27
+ bl_0_27 br_0_27 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c27
+ bl_0_27 br_0_27 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c27
+ bl_0_27 br_0_27 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c27
+ bl_0_27 br_0_27 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c27
+ bl_0_27 br_0_27 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c27
+ bl_0_27 br_0_27 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c27
+ bl_0_27 br_0_27 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c27
+ bl_0_27 br_0_27 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c27
+ bl_0_27 br_0_27 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c27
+ bl_0_27 br_0_27 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c27
+ bl_0_27 br_0_27 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c27
+ bl_0_27 br_0_27 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c27
+ bl_0_27 br_0_27 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c27
+ bl_0_27 br_0_27 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c27
+ bl_0_27 br_0_27 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c27
+ bl_0_27 br_0_27 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c27
+ bl_0_27 br_0_27 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c27
+ bl_0_27 br_0_27 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c27
+ bl_0_27 br_0_27 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c27
+ bl_0_27 br_0_27 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c27
+ bl_0_27 br_0_27 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c27
+ bl_0_27 br_0_27 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c27
+ bl_0_27 br_0_27 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c27
+ bl_0_27 br_0_27 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c28
+ bl_0_28 br_0_28 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c28
+ bl_0_28 br_0_28 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c28
+ bl_0_28 br_0_28 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c28
+ bl_0_28 br_0_28 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c28
+ bl_0_28 br_0_28 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c28
+ bl_0_28 br_0_28 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c28
+ bl_0_28 br_0_28 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c28
+ bl_0_28 br_0_28 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c28
+ bl_0_28 br_0_28 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c28
+ bl_0_28 br_0_28 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c28
+ bl_0_28 br_0_28 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c28
+ bl_0_28 br_0_28 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c28
+ bl_0_28 br_0_28 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c28
+ bl_0_28 br_0_28 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c28
+ bl_0_28 br_0_28 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c28
+ bl_0_28 br_0_28 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c28
+ bl_0_28 br_0_28 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c28
+ bl_0_28 br_0_28 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c28
+ bl_0_28 br_0_28 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c28
+ bl_0_28 br_0_28 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c28
+ bl_0_28 br_0_28 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c28
+ bl_0_28 br_0_28 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c28
+ bl_0_28 br_0_28 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c28
+ bl_0_28 br_0_28 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c28
+ bl_0_28 br_0_28 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c28
+ bl_0_28 br_0_28 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c28
+ bl_0_28 br_0_28 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c28
+ bl_0_28 br_0_28 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c28
+ bl_0_28 br_0_28 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c28
+ bl_0_28 br_0_28 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c28
+ bl_0_28 br_0_28 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c29
+ bl_0_29 br_0_29 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c29
+ bl_0_29 br_0_29 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c29
+ bl_0_29 br_0_29 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c29
+ bl_0_29 br_0_29 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c29
+ bl_0_29 br_0_29 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c29
+ bl_0_29 br_0_29 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c29
+ bl_0_29 br_0_29 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c29
+ bl_0_29 br_0_29 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c29
+ bl_0_29 br_0_29 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c29
+ bl_0_29 br_0_29 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c29
+ bl_0_29 br_0_29 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c29
+ bl_0_29 br_0_29 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c29
+ bl_0_29 br_0_29 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c29
+ bl_0_29 br_0_29 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c29
+ bl_0_29 br_0_29 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c29
+ bl_0_29 br_0_29 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c29
+ bl_0_29 br_0_29 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c29
+ bl_0_29 br_0_29 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c29
+ bl_0_29 br_0_29 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c29
+ bl_0_29 br_0_29 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c29
+ bl_0_29 br_0_29 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c29
+ bl_0_29 br_0_29 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c29
+ bl_0_29 br_0_29 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c29
+ bl_0_29 br_0_29 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c29
+ bl_0_29 br_0_29 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c29
+ bl_0_29 br_0_29 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c29
+ bl_0_29 br_0_29 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c29
+ bl_0_29 br_0_29 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c29
+ bl_0_29 br_0_29 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c29
+ bl_0_29 br_0_29 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c29
+ bl_0_29 br_0_29 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c30
+ bl_0_30 br_0_30 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c30
+ bl_0_30 br_0_30 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c30
+ bl_0_30 br_0_30 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c30
+ bl_0_30 br_0_30 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c30
+ bl_0_30 br_0_30 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c30
+ bl_0_30 br_0_30 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c30
+ bl_0_30 br_0_30 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c30
+ bl_0_30 br_0_30 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c30
+ bl_0_30 br_0_30 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c30
+ bl_0_30 br_0_30 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c30
+ bl_0_30 br_0_30 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c30
+ bl_0_30 br_0_30 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c30
+ bl_0_30 br_0_30 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c30
+ bl_0_30 br_0_30 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c30
+ bl_0_30 br_0_30 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c30
+ bl_0_30 br_0_30 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c30
+ bl_0_30 br_0_30 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c30
+ bl_0_30 br_0_30 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c30
+ bl_0_30 br_0_30 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c30
+ bl_0_30 br_0_30 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c30
+ bl_0_30 br_0_30 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c30
+ bl_0_30 br_0_30 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c30
+ bl_0_30 br_0_30 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c30
+ bl_0_30 br_0_30 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c30
+ bl_0_30 br_0_30 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c30
+ bl_0_30 br_0_30 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c30
+ bl_0_30 br_0_30 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c30
+ bl_0_30 br_0_30 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c30
+ bl_0_30 br_0_30 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c30
+ bl_0_30 br_0_30 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c30
+ bl_0_30 br_0_30 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c31
+ bl_0_31 br_0_31 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c31
+ bl_0_31 br_0_31 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c31
+ bl_0_31 br_0_31 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c31
+ bl_0_31 br_0_31 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c31
+ bl_0_31 br_0_31 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c31
+ bl_0_31 br_0_31 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c31
+ bl_0_31 br_0_31 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c31
+ bl_0_31 br_0_31 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c31
+ bl_0_31 br_0_31 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c31
+ bl_0_31 br_0_31 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c31
+ bl_0_31 br_0_31 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c31
+ bl_0_31 br_0_31 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c31
+ bl_0_31 br_0_31 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c31
+ bl_0_31 br_0_31 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c31
+ bl_0_31 br_0_31 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c31
+ bl_0_31 br_0_31 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c31
+ bl_0_31 br_0_31 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c31
+ bl_0_31 br_0_31 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c31
+ bl_0_31 br_0_31 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c31
+ bl_0_31 br_0_31 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c31
+ bl_0_31 br_0_31 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c31
+ bl_0_31 br_0_31 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c31
+ bl_0_31 br_0_31 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c31
+ bl_0_31 br_0_31 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c31
+ bl_0_31 br_0_31 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c31
+ bl_0_31 br_0_31 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c31
+ bl_0_31 br_0_31 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c31
+ bl_0_31 br_0_31 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c31
+ bl_0_31 br_0_31 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c31
+ bl_0_31 br_0_31 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c31
+ bl_0_31 br_0_31 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c32
+ bl_0_32 br_0_32 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c32
+ bl_0_32 br_0_32 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c32
+ bl_0_32 br_0_32 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c32
+ bl_0_32 br_0_32 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c32
+ bl_0_32 br_0_32 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c32
+ bl_0_32 br_0_32 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c32
+ bl_0_32 br_0_32 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c32
+ bl_0_32 br_0_32 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c32
+ bl_0_32 br_0_32 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c32
+ bl_0_32 br_0_32 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c32
+ bl_0_32 br_0_32 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c32
+ bl_0_32 br_0_32 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c32
+ bl_0_32 br_0_32 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c32
+ bl_0_32 br_0_32 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c32
+ bl_0_32 br_0_32 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c32
+ bl_0_32 br_0_32 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c32
+ bl_0_32 br_0_32 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c32
+ bl_0_32 br_0_32 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c32
+ bl_0_32 br_0_32 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c32
+ bl_0_32 br_0_32 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c32
+ bl_0_32 br_0_32 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c32
+ bl_0_32 br_0_32 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c32
+ bl_0_32 br_0_32 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c32
+ bl_0_32 br_0_32 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c32
+ bl_0_32 br_0_32 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c32
+ bl_0_32 br_0_32 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c32
+ bl_0_32 br_0_32 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c32
+ bl_0_32 br_0_32 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c32
+ bl_0_32 br_0_32 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c32
+ bl_0_32 br_0_32 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c32
+ bl_0_32 br_0_32 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c32
+ bl_0_32 br_0_32 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c33
+ bl_0_33 br_0_33 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c33
+ bl_0_33 br_0_33 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c33
+ bl_0_33 br_0_33 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c33
+ bl_0_33 br_0_33 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c33
+ bl_0_33 br_0_33 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c33
+ bl_0_33 br_0_33 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c33
+ bl_0_33 br_0_33 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c33
+ bl_0_33 br_0_33 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c33
+ bl_0_33 br_0_33 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c33
+ bl_0_33 br_0_33 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c33
+ bl_0_33 br_0_33 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c33
+ bl_0_33 br_0_33 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c33
+ bl_0_33 br_0_33 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c33
+ bl_0_33 br_0_33 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c33
+ bl_0_33 br_0_33 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c33
+ bl_0_33 br_0_33 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c33
+ bl_0_33 br_0_33 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c33
+ bl_0_33 br_0_33 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c33
+ bl_0_33 br_0_33 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c33
+ bl_0_33 br_0_33 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c33
+ bl_0_33 br_0_33 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c33
+ bl_0_33 br_0_33 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c33
+ bl_0_33 br_0_33 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c33
+ bl_0_33 br_0_33 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c33
+ bl_0_33 br_0_33 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c33
+ bl_0_33 br_0_33 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c33
+ bl_0_33 br_0_33 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c33
+ bl_0_33 br_0_33 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c33
+ bl_0_33 br_0_33 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c33
+ bl_0_33 br_0_33 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c33
+ bl_0_33 br_0_33 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c33
+ bl_0_33 br_0_33 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c34
+ bl_0_34 br_0_34 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c34
+ bl_0_34 br_0_34 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c34
+ bl_0_34 br_0_34 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c34
+ bl_0_34 br_0_34 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c34
+ bl_0_34 br_0_34 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c34
+ bl_0_34 br_0_34 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c34
+ bl_0_34 br_0_34 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c34
+ bl_0_34 br_0_34 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c34
+ bl_0_34 br_0_34 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c34
+ bl_0_34 br_0_34 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c34
+ bl_0_34 br_0_34 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c34
+ bl_0_34 br_0_34 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c34
+ bl_0_34 br_0_34 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c34
+ bl_0_34 br_0_34 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c34
+ bl_0_34 br_0_34 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c34
+ bl_0_34 br_0_34 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c34
+ bl_0_34 br_0_34 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c34
+ bl_0_34 br_0_34 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c34
+ bl_0_34 br_0_34 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c34
+ bl_0_34 br_0_34 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c34
+ bl_0_34 br_0_34 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c34
+ bl_0_34 br_0_34 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c34
+ bl_0_34 br_0_34 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c34
+ bl_0_34 br_0_34 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c34
+ bl_0_34 br_0_34 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c34
+ bl_0_34 br_0_34 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c34
+ bl_0_34 br_0_34 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c34
+ bl_0_34 br_0_34 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c34
+ bl_0_34 br_0_34 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c34
+ bl_0_34 br_0_34 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c34
+ bl_0_34 br_0_34 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c34
+ bl_0_34 br_0_34 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c35
+ bl_0_35 br_0_35 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c35
+ bl_0_35 br_0_35 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c35
+ bl_0_35 br_0_35 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c35
+ bl_0_35 br_0_35 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c35
+ bl_0_35 br_0_35 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c35
+ bl_0_35 br_0_35 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c35
+ bl_0_35 br_0_35 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c35
+ bl_0_35 br_0_35 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c35
+ bl_0_35 br_0_35 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c35
+ bl_0_35 br_0_35 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c35
+ bl_0_35 br_0_35 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c35
+ bl_0_35 br_0_35 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c35
+ bl_0_35 br_0_35 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c35
+ bl_0_35 br_0_35 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c35
+ bl_0_35 br_0_35 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c35
+ bl_0_35 br_0_35 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c35
+ bl_0_35 br_0_35 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c35
+ bl_0_35 br_0_35 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c35
+ bl_0_35 br_0_35 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c35
+ bl_0_35 br_0_35 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c35
+ bl_0_35 br_0_35 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c35
+ bl_0_35 br_0_35 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c35
+ bl_0_35 br_0_35 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c35
+ bl_0_35 br_0_35 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c35
+ bl_0_35 br_0_35 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c35
+ bl_0_35 br_0_35 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c35
+ bl_0_35 br_0_35 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c35
+ bl_0_35 br_0_35 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c35
+ bl_0_35 br_0_35 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c35
+ bl_0_35 br_0_35 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c35
+ bl_0_35 br_0_35 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c35
+ bl_0_35 br_0_35 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c36
+ bl_0_36 br_0_36 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c36
+ bl_0_36 br_0_36 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c36
+ bl_0_36 br_0_36 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c36
+ bl_0_36 br_0_36 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c36
+ bl_0_36 br_0_36 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c36
+ bl_0_36 br_0_36 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c36
+ bl_0_36 br_0_36 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c36
+ bl_0_36 br_0_36 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c36
+ bl_0_36 br_0_36 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c36
+ bl_0_36 br_0_36 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c36
+ bl_0_36 br_0_36 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c36
+ bl_0_36 br_0_36 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c36
+ bl_0_36 br_0_36 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c36
+ bl_0_36 br_0_36 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c36
+ bl_0_36 br_0_36 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c36
+ bl_0_36 br_0_36 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c36
+ bl_0_36 br_0_36 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c36
+ bl_0_36 br_0_36 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c36
+ bl_0_36 br_0_36 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c36
+ bl_0_36 br_0_36 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c36
+ bl_0_36 br_0_36 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c36
+ bl_0_36 br_0_36 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c36
+ bl_0_36 br_0_36 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c36
+ bl_0_36 br_0_36 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c36
+ bl_0_36 br_0_36 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c36
+ bl_0_36 br_0_36 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c36
+ bl_0_36 br_0_36 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c36
+ bl_0_36 br_0_36 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c36
+ bl_0_36 br_0_36 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c36
+ bl_0_36 br_0_36 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c36
+ bl_0_36 br_0_36 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c36
+ bl_0_36 br_0_36 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c37
+ bl_0_37 br_0_37 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c37
+ bl_0_37 br_0_37 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c37
+ bl_0_37 br_0_37 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c37
+ bl_0_37 br_0_37 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c37
+ bl_0_37 br_0_37 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c37
+ bl_0_37 br_0_37 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c37
+ bl_0_37 br_0_37 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c37
+ bl_0_37 br_0_37 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c37
+ bl_0_37 br_0_37 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c37
+ bl_0_37 br_0_37 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c37
+ bl_0_37 br_0_37 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c37
+ bl_0_37 br_0_37 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c37
+ bl_0_37 br_0_37 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c37
+ bl_0_37 br_0_37 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c37
+ bl_0_37 br_0_37 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c37
+ bl_0_37 br_0_37 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c37
+ bl_0_37 br_0_37 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c37
+ bl_0_37 br_0_37 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c37
+ bl_0_37 br_0_37 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c37
+ bl_0_37 br_0_37 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c37
+ bl_0_37 br_0_37 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c37
+ bl_0_37 br_0_37 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c37
+ bl_0_37 br_0_37 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c37
+ bl_0_37 br_0_37 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c37
+ bl_0_37 br_0_37 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c37
+ bl_0_37 br_0_37 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c37
+ bl_0_37 br_0_37 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c37
+ bl_0_37 br_0_37 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c37
+ bl_0_37 br_0_37 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c37
+ bl_0_37 br_0_37 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c37
+ bl_0_37 br_0_37 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c37
+ bl_0_37 br_0_37 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c38
+ bl_0_38 br_0_38 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c38
+ bl_0_38 br_0_38 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c38
+ bl_0_38 br_0_38 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c38
+ bl_0_38 br_0_38 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c38
+ bl_0_38 br_0_38 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c38
+ bl_0_38 br_0_38 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c38
+ bl_0_38 br_0_38 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c38
+ bl_0_38 br_0_38 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c38
+ bl_0_38 br_0_38 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c38
+ bl_0_38 br_0_38 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c38
+ bl_0_38 br_0_38 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c38
+ bl_0_38 br_0_38 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c38
+ bl_0_38 br_0_38 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c38
+ bl_0_38 br_0_38 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c38
+ bl_0_38 br_0_38 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c38
+ bl_0_38 br_0_38 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c38
+ bl_0_38 br_0_38 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c38
+ bl_0_38 br_0_38 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c38
+ bl_0_38 br_0_38 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c38
+ bl_0_38 br_0_38 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c38
+ bl_0_38 br_0_38 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c38
+ bl_0_38 br_0_38 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c38
+ bl_0_38 br_0_38 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c38
+ bl_0_38 br_0_38 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c38
+ bl_0_38 br_0_38 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c38
+ bl_0_38 br_0_38 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c38
+ bl_0_38 br_0_38 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c38
+ bl_0_38 br_0_38 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c38
+ bl_0_38 br_0_38 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c38
+ bl_0_38 br_0_38 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c38
+ bl_0_38 br_0_38 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c38
+ bl_0_38 br_0_38 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c39
+ bl_0_39 br_0_39 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c39
+ bl_0_39 br_0_39 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c39
+ bl_0_39 br_0_39 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c39
+ bl_0_39 br_0_39 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c39
+ bl_0_39 br_0_39 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c39
+ bl_0_39 br_0_39 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c39
+ bl_0_39 br_0_39 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c39
+ bl_0_39 br_0_39 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c39
+ bl_0_39 br_0_39 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c39
+ bl_0_39 br_0_39 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c39
+ bl_0_39 br_0_39 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c39
+ bl_0_39 br_0_39 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c39
+ bl_0_39 br_0_39 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c39
+ bl_0_39 br_0_39 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c39
+ bl_0_39 br_0_39 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c39
+ bl_0_39 br_0_39 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c39
+ bl_0_39 br_0_39 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c39
+ bl_0_39 br_0_39 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c39
+ bl_0_39 br_0_39 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c39
+ bl_0_39 br_0_39 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c39
+ bl_0_39 br_0_39 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c39
+ bl_0_39 br_0_39 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c39
+ bl_0_39 br_0_39 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c39
+ bl_0_39 br_0_39 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c39
+ bl_0_39 br_0_39 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c39
+ bl_0_39 br_0_39 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c39
+ bl_0_39 br_0_39 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c39
+ bl_0_39 br_0_39 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c39
+ bl_0_39 br_0_39 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c39
+ bl_0_39 br_0_39 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c39
+ bl_0_39 br_0_39 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c39
+ bl_0_39 br_0_39 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c40
+ bl_0_40 br_0_40 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c40
+ bl_0_40 br_0_40 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c40
+ bl_0_40 br_0_40 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c40
+ bl_0_40 br_0_40 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c40
+ bl_0_40 br_0_40 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c40
+ bl_0_40 br_0_40 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c40
+ bl_0_40 br_0_40 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c40
+ bl_0_40 br_0_40 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c40
+ bl_0_40 br_0_40 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c40
+ bl_0_40 br_0_40 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c40
+ bl_0_40 br_0_40 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c40
+ bl_0_40 br_0_40 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c40
+ bl_0_40 br_0_40 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c40
+ bl_0_40 br_0_40 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c40
+ bl_0_40 br_0_40 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c40
+ bl_0_40 br_0_40 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c40
+ bl_0_40 br_0_40 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c40
+ bl_0_40 br_0_40 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c40
+ bl_0_40 br_0_40 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c40
+ bl_0_40 br_0_40 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c40
+ bl_0_40 br_0_40 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c40
+ bl_0_40 br_0_40 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c40
+ bl_0_40 br_0_40 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c40
+ bl_0_40 br_0_40 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c40
+ bl_0_40 br_0_40 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c40
+ bl_0_40 br_0_40 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c40
+ bl_0_40 br_0_40 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c40
+ bl_0_40 br_0_40 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c40
+ bl_0_40 br_0_40 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c40
+ bl_0_40 br_0_40 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c40
+ bl_0_40 br_0_40 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c40
+ bl_0_40 br_0_40 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c41
+ bl_0_41 br_0_41 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c41
+ bl_0_41 br_0_41 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c41
+ bl_0_41 br_0_41 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c41
+ bl_0_41 br_0_41 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c41
+ bl_0_41 br_0_41 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c41
+ bl_0_41 br_0_41 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c41
+ bl_0_41 br_0_41 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c41
+ bl_0_41 br_0_41 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c41
+ bl_0_41 br_0_41 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c41
+ bl_0_41 br_0_41 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c41
+ bl_0_41 br_0_41 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c41
+ bl_0_41 br_0_41 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c41
+ bl_0_41 br_0_41 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c41
+ bl_0_41 br_0_41 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c41
+ bl_0_41 br_0_41 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c41
+ bl_0_41 br_0_41 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c41
+ bl_0_41 br_0_41 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c41
+ bl_0_41 br_0_41 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c41
+ bl_0_41 br_0_41 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c41
+ bl_0_41 br_0_41 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c41
+ bl_0_41 br_0_41 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c41
+ bl_0_41 br_0_41 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c41
+ bl_0_41 br_0_41 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c41
+ bl_0_41 br_0_41 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c41
+ bl_0_41 br_0_41 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c41
+ bl_0_41 br_0_41 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c41
+ bl_0_41 br_0_41 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c41
+ bl_0_41 br_0_41 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c41
+ bl_0_41 br_0_41 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c41
+ bl_0_41 br_0_41 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c41
+ bl_0_41 br_0_41 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c41
+ bl_0_41 br_0_41 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c42
+ bl_0_42 br_0_42 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c42
+ bl_0_42 br_0_42 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c42
+ bl_0_42 br_0_42 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c42
+ bl_0_42 br_0_42 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c42
+ bl_0_42 br_0_42 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c42
+ bl_0_42 br_0_42 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c42
+ bl_0_42 br_0_42 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c42
+ bl_0_42 br_0_42 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c42
+ bl_0_42 br_0_42 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c42
+ bl_0_42 br_0_42 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c42
+ bl_0_42 br_0_42 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c42
+ bl_0_42 br_0_42 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c42
+ bl_0_42 br_0_42 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c42
+ bl_0_42 br_0_42 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c42
+ bl_0_42 br_0_42 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c42
+ bl_0_42 br_0_42 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c42
+ bl_0_42 br_0_42 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c42
+ bl_0_42 br_0_42 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c42
+ bl_0_42 br_0_42 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c42
+ bl_0_42 br_0_42 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c42
+ bl_0_42 br_0_42 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c42
+ bl_0_42 br_0_42 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c42
+ bl_0_42 br_0_42 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c42
+ bl_0_42 br_0_42 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c42
+ bl_0_42 br_0_42 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c42
+ bl_0_42 br_0_42 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c42
+ bl_0_42 br_0_42 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c42
+ bl_0_42 br_0_42 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c42
+ bl_0_42 br_0_42 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c42
+ bl_0_42 br_0_42 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c42
+ bl_0_42 br_0_42 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c42
+ bl_0_42 br_0_42 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c43
+ bl_0_43 br_0_43 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c43
+ bl_0_43 br_0_43 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c43
+ bl_0_43 br_0_43 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c43
+ bl_0_43 br_0_43 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c43
+ bl_0_43 br_0_43 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c43
+ bl_0_43 br_0_43 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c43
+ bl_0_43 br_0_43 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c43
+ bl_0_43 br_0_43 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c43
+ bl_0_43 br_0_43 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c43
+ bl_0_43 br_0_43 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c43
+ bl_0_43 br_0_43 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c43
+ bl_0_43 br_0_43 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c43
+ bl_0_43 br_0_43 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c43
+ bl_0_43 br_0_43 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c43
+ bl_0_43 br_0_43 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c43
+ bl_0_43 br_0_43 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c43
+ bl_0_43 br_0_43 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c43
+ bl_0_43 br_0_43 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c43
+ bl_0_43 br_0_43 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c43
+ bl_0_43 br_0_43 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c43
+ bl_0_43 br_0_43 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c43
+ bl_0_43 br_0_43 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c43
+ bl_0_43 br_0_43 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c43
+ bl_0_43 br_0_43 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c43
+ bl_0_43 br_0_43 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c43
+ bl_0_43 br_0_43 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c43
+ bl_0_43 br_0_43 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c43
+ bl_0_43 br_0_43 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c43
+ bl_0_43 br_0_43 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c43
+ bl_0_43 br_0_43 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c43
+ bl_0_43 br_0_43 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c43
+ bl_0_43 br_0_43 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c44
+ bl_0_44 br_0_44 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c44
+ bl_0_44 br_0_44 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c44
+ bl_0_44 br_0_44 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c44
+ bl_0_44 br_0_44 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c44
+ bl_0_44 br_0_44 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c44
+ bl_0_44 br_0_44 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c44
+ bl_0_44 br_0_44 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c44
+ bl_0_44 br_0_44 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c44
+ bl_0_44 br_0_44 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c44
+ bl_0_44 br_0_44 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c44
+ bl_0_44 br_0_44 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c44
+ bl_0_44 br_0_44 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c44
+ bl_0_44 br_0_44 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c44
+ bl_0_44 br_0_44 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c44
+ bl_0_44 br_0_44 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c44
+ bl_0_44 br_0_44 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c44
+ bl_0_44 br_0_44 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c44
+ bl_0_44 br_0_44 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c44
+ bl_0_44 br_0_44 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c44
+ bl_0_44 br_0_44 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c44
+ bl_0_44 br_0_44 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c44
+ bl_0_44 br_0_44 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c44
+ bl_0_44 br_0_44 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c44
+ bl_0_44 br_0_44 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c44
+ bl_0_44 br_0_44 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c44
+ bl_0_44 br_0_44 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c44
+ bl_0_44 br_0_44 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c44
+ bl_0_44 br_0_44 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c44
+ bl_0_44 br_0_44 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c44
+ bl_0_44 br_0_44 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c44
+ bl_0_44 br_0_44 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c44
+ bl_0_44 br_0_44 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c45
+ bl_0_45 br_0_45 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c45
+ bl_0_45 br_0_45 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c45
+ bl_0_45 br_0_45 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c45
+ bl_0_45 br_0_45 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c45
+ bl_0_45 br_0_45 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c45
+ bl_0_45 br_0_45 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c45
+ bl_0_45 br_0_45 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c45
+ bl_0_45 br_0_45 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c45
+ bl_0_45 br_0_45 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c45
+ bl_0_45 br_0_45 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c45
+ bl_0_45 br_0_45 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c45
+ bl_0_45 br_0_45 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c45
+ bl_0_45 br_0_45 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c45
+ bl_0_45 br_0_45 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c45
+ bl_0_45 br_0_45 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c45
+ bl_0_45 br_0_45 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c45
+ bl_0_45 br_0_45 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c45
+ bl_0_45 br_0_45 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c45
+ bl_0_45 br_0_45 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c45
+ bl_0_45 br_0_45 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c45
+ bl_0_45 br_0_45 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c45
+ bl_0_45 br_0_45 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c45
+ bl_0_45 br_0_45 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c45
+ bl_0_45 br_0_45 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c45
+ bl_0_45 br_0_45 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c45
+ bl_0_45 br_0_45 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c45
+ bl_0_45 br_0_45 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c45
+ bl_0_45 br_0_45 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c45
+ bl_0_45 br_0_45 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c45
+ bl_0_45 br_0_45 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c45
+ bl_0_45 br_0_45 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c45
+ bl_0_45 br_0_45 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c46
+ bl_0_46 br_0_46 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c46
+ bl_0_46 br_0_46 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c46
+ bl_0_46 br_0_46 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c46
+ bl_0_46 br_0_46 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c46
+ bl_0_46 br_0_46 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c46
+ bl_0_46 br_0_46 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c46
+ bl_0_46 br_0_46 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c46
+ bl_0_46 br_0_46 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c46
+ bl_0_46 br_0_46 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c46
+ bl_0_46 br_0_46 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c46
+ bl_0_46 br_0_46 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c46
+ bl_0_46 br_0_46 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c46
+ bl_0_46 br_0_46 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c46
+ bl_0_46 br_0_46 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c46
+ bl_0_46 br_0_46 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c46
+ bl_0_46 br_0_46 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c46
+ bl_0_46 br_0_46 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c46
+ bl_0_46 br_0_46 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c46
+ bl_0_46 br_0_46 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c46
+ bl_0_46 br_0_46 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c46
+ bl_0_46 br_0_46 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c46
+ bl_0_46 br_0_46 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c46
+ bl_0_46 br_0_46 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c46
+ bl_0_46 br_0_46 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c46
+ bl_0_46 br_0_46 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c46
+ bl_0_46 br_0_46 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c46
+ bl_0_46 br_0_46 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c46
+ bl_0_46 br_0_46 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c46
+ bl_0_46 br_0_46 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c46
+ bl_0_46 br_0_46 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c46
+ bl_0_46 br_0_46 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c46
+ bl_0_46 br_0_46 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c47
+ bl_0_47 br_0_47 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c47
+ bl_0_47 br_0_47 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c47
+ bl_0_47 br_0_47 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c47
+ bl_0_47 br_0_47 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c47
+ bl_0_47 br_0_47 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c47
+ bl_0_47 br_0_47 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c47
+ bl_0_47 br_0_47 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c47
+ bl_0_47 br_0_47 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c47
+ bl_0_47 br_0_47 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c47
+ bl_0_47 br_0_47 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c47
+ bl_0_47 br_0_47 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c47
+ bl_0_47 br_0_47 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c47
+ bl_0_47 br_0_47 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c47
+ bl_0_47 br_0_47 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c47
+ bl_0_47 br_0_47 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c47
+ bl_0_47 br_0_47 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c47
+ bl_0_47 br_0_47 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c47
+ bl_0_47 br_0_47 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c47
+ bl_0_47 br_0_47 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c47
+ bl_0_47 br_0_47 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c47
+ bl_0_47 br_0_47 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c47
+ bl_0_47 br_0_47 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c47
+ bl_0_47 br_0_47 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c47
+ bl_0_47 br_0_47 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c47
+ bl_0_47 br_0_47 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c47
+ bl_0_47 br_0_47 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c47
+ bl_0_47 br_0_47 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c47
+ bl_0_47 br_0_47 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c47
+ bl_0_47 br_0_47 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c47
+ bl_0_47 br_0_47 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c47
+ bl_0_47 br_0_47 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c47
+ bl_0_47 br_0_47 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c48
+ bl_0_48 br_0_48 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c48
+ bl_0_48 br_0_48 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c48
+ bl_0_48 br_0_48 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c48
+ bl_0_48 br_0_48 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c48
+ bl_0_48 br_0_48 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c48
+ bl_0_48 br_0_48 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c48
+ bl_0_48 br_0_48 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c48
+ bl_0_48 br_0_48 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c48
+ bl_0_48 br_0_48 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c48
+ bl_0_48 br_0_48 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c48
+ bl_0_48 br_0_48 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c48
+ bl_0_48 br_0_48 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c48
+ bl_0_48 br_0_48 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c48
+ bl_0_48 br_0_48 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c48
+ bl_0_48 br_0_48 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c48
+ bl_0_48 br_0_48 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c48
+ bl_0_48 br_0_48 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c48
+ bl_0_48 br_0_48 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c48
+ bl_0_48 br_0_48 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c48
+ bl_0_48 br_0_48 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c48
+ bl_0_48 br_0_48 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c48
+ bl_0_48 br_0_48 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c48
+ bl_0_48 br_0_48 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c48
+ bl_0_48 br_0_48 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c48
+ bl_0_48 br_0_48 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c48
+ bl_0_48 br_0_48 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c48
+ bl_0_48 br_0_48 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c48
+ bl_0_48 br_0_48 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c48
+ bl_0_48 br_0_48 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c48
+ bl_0_48 br_0_48 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c48
+ bl_0_48 br_0_48 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c48
+ bl_0_48 br_0_48 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c49
+ bl_0_49 br_0_49 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c49
+ bl_0_49 br_0_49 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c49
+ bl_0_49 br_0_49 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c49
+ bl_0_49 br_0_49 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c49
+ bl_0_49 br_0_49 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c49
+ bl_0_49 br_0_49 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c49
+ bl_0_49 br_0_49 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c49
+ bl_0_49 br_0_49 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c49
+ bl_0_49 br_0_49 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c49
+ bl_0_49 br_0_49 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c49
+ bl_0_49 br_0_49 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c49
+ bl_0_49 br_0_49 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c49
+ bl_0_49 br_0_49 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c49
+ bl_0_49 br_0_49 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c49
+ bl_0_49 br_0_49 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c49
+ bl_0_49 br_0_49 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c49
+ bl_0_49 br_0_49 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c49
+ bl_0_49 br_0_49 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c49
+ bl_0_49 br_0_49 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c49
+ bl_0_49 br_0_49 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c49
+ bl_0_49 br_0_49 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c49
+ bl_0_49 br_0_49 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c49
+ bl_0_49 br_0_49 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c49
+ bl_0_49 br_0_49 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c49
+ bl_0_49 br_0_49 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c49
+ bl_0_49 br_0_49 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c49
+ bl_0_49 br_0_49 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c49
+ bl_0_49 br_0_49 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c49
+ bl_0_49 br_0_49 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c49
+ bl_0_49 br_0_49 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c49
+ bl_0_49 br_0_49 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c49
+ bl_0_49 br_0_49 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c50
+ bl_0_50 br_0_50 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c50
+ bl_0_50 br_0_50 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c50
+ bl_0_50 br_0_50 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c50
+ bl_0_50 br_0_50 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c50
+ bl_0_50 br_0_50 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c50
+ bl_0_50 br_0_50 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c50
+ bl_0_50 br_0_50 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c50
+ bl_0_50 br_0_50 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c50
+ bl_0_50 br_0_50 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c50
+ bl_0_50 br_0_50 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c50
+ bl_0_50 br_0_50 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c50
+ bl_0_50 br_0_50 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c50
+ bl_0_50 br_0_50 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c50
+ bl_0_50 br_0_50 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c50
+ bl_0_50 br_0_50 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c50
+ bl_0_50 br_0_50 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c50
+ bl_0_50 br_0_50 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c50
+ bl_0_50 br_0_50 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c50
+ bl_0_50 br_0_50 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c50
+ bl_0_50 br_0_50 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c50
+ bl_0_50 br_0_50 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c50
+ bl_0_50 br_0_50 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c50
+ bl_0_50 br_0_50 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c50
+ bl_0_50 br_0_50 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c50
+ bl_0_50 br_0_50 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c50
+ bl_0_50 br_0_50 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c50
+ bl_0_50 br_0_50 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c50
+ bl_0_50 br_0_50 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c50
+ bl_0_50 br_0_50 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c50
+ bl_0_50 br_0_50 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c50
+ bl_0_50 br_0_50 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c50
+ bl_0_50 br_0_50 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c51
+ bl_0_51 br_0_51 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c51
+ bl_0_51 br_0_51 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c51
+ bl_0_51 br_0_51 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c51
+ bl_0_51 br_0_51 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c51
+ bl_0_51 br_0_51 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c51
+ bl_0_51 br_0_51 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c51
+ bl_0_51 br_0_51 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c51
+ bl_0_51 br_0_51 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c51
+ bl_0_51 br_0_51 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c51
+ bl_0_51 br_0_51 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c51
+ bl_0_51 br_0_51 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c51
+ bl_0_51 br_0_51 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c51
+ bl_0_51 br_0_51 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c51
+ bl_0_51 br_0_51 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c51
+ bl_0_51 br_0_51 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c51
+ bl_0_51 br_0_51 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c51
+ bl_0_51 br_0_51 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c51
+ bl_0_51 br_0_51 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c51
+ bl_0_51 br_0_51 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c51
+ bl_0_51 br_0_51 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c51
+ bl_0_51 br_0_51 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c51
+ bl_0_51 br_0_51 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c51
+ bl_0_51 br_0_51 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c51
+ bl_0_51 br_0_51 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c51
+ bl_0_51 br_0_51 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c51
+ bl_0_51 br_0_51 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c51
+ bl_0_51 br_0_51 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c51
+ bl_0_51 br_0_51 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c51
+ bl_0_51 br_0_51 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c51
+ bl_0_51 br_0_51 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c51
+ bl_0_51 br_0_51 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c51
+ bl_0_51 br_0_51 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c52
+ bl_0_52 br_0_52 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c52
+ bl_0_52 br_0_52 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c52
+ bl_0_52 br_0_52 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c52
+ bl_0_52 br_0_52 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c52
+ bl_0_52 br_0_52 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c52
+ bl_0_52 br_0_52 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c52
+ bl_0_52 br_0_52 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c52
+ bl_0_52 br_0_52 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c52
+ bl_0_52 br_0_52 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c52
+ bl_0_52 br_0_52 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c52
+ bl_0_52 br_0_52 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c52
+ bl_0_52 br_0_52 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c52
+ bl_0_52 br_0_52 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c52
+ bl_0_52 br_0_52 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c52
+ bl_0_52 br_0_52 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c52
+ bl_0_52 br_0_52 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c52
+ bl_0_52 br_0_52 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c52
+ bl_0_52 br_0_52 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c52
+ bl_0_52 br_0_52 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c52
+ bl_0_52 br_0_52 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c52
+ bl_0_52 br_0_52 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c52
+ bl_0_52 br_0_52 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c52
+ bl_0_52 br_0_52 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c52
+ bl_0_52 br_0_52 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c52
+ bl_0_52 br_0_52 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c52
+ bl_0_52 br_0_52 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c52
+ bl_0_52 br_0_52 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c52
+ bl_0_52 br_0_52 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c52
+ bl_0_52 br_0_52 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c52
+ bl_0_52 br_0_52 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c52
+ bl_0_52 br_0_52 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c52
+ bl_0_52 br_0_52 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c53
+ bl_0_53 br_0_53 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c53
+ bl_0_53 br_0_53 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c53
+ bl_0_53 br_0_53 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c53
+ bl_0_53 br_0_53 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c53
+ bl_0_53 br_0_53 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c53
+ bl_0_53 br_0_53 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c53
+ bl_0_53 br_0_53 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c53
+ bl_0_53 br_0_53 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c53
+ bl_0_53 br_0_53 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c53
+ bl_0_53 br_0_53 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c53
+ bl_0_53 br_0_53 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c53
+ bl_0_53 br_0_53 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c53
+ bl_0_53 br_0_53 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c53
+ bl_0_53 br_0_53 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c53
+ bl_0_53 br_0_53 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c53
+ bl_0_53 br_0_53 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c53
+ bl_0_53 br_0_53 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c53
+ bl_0_53 br_0_53 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c53
+ bl_0_53 br_0_53 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c53
+ bl_0_53 br_0_53 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c53
+ bl_0_53 br_0_53 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c53
+ bl_0_53 br_0_53 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c53
+ bl_0_53 br_0_53 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c53
+ bl_0_53 br_0_53 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c53
+ bl_0_53 br_0_53 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c53
+ bl_0_53 br_0_53 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c53
+ bl_0_53 br_0_53 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c53
+ bl_0_53 br_0_53 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c53
+ bl_0_53 br_0_53 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c53
+ bl_0_53 br_0_53 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c53
+ bl_0_53 br_0_53 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c53
+ bl_0_53 br_0_53 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c54
+ bl_0_54 br_0_54 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c54
+ bl_0_54 br_0_54 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c54
+ bl_0_54 br_0_54 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c54
+ bl_0_54 br_0_54 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c54
+ bl_0_54 br_0_54 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c54
+ bl_0_54 br_0_54 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c54
+ bl_0_54 br_0_54 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c54
+ bl_0_54 br_0_54 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c54
+ bl_0_54 br_0_54 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c54
+ bl_0_54 br_0_54 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c54
+ bl_0_54 br_0_54 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c54
+ bl_0_54 br_0_54 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c54
+ bl_0_54 br_0_54 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c54
+ bl_0_54 br_0_54 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c54
+ bl_0_54 br_0_54 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c54
+ bl_0_54 br_0_54 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c54
+ bl_0_54 br_0_54 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c54
+ bl_0_54 br_0_54 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c54
+ bl_0_54 br_0_54 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c54
+ bl_0_54 br_0_54 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c54
+ bl_0_54 br_0_54 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c54
+ bl_0_54 br_0_54 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c54
+ bl_0_54 br_0_54 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c54
+ bl_0_54 br_0_54 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c54
+ bl_0_54 br_0_54 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c54
+ bl_0_54 br_0_54 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c54
+ bl_0_54 br_0_54 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c54
+ bl_0_54 br_0_54 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c54
+ bl_0_54 br_0_54 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c54
+ bl_0_54 br_0_54 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c54
+ bl_0_54 br_0_54 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c54
+ bl_0_54 br_0_54 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c55
+ bl_0_55 br_0_55 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c55
+ bl_0_55 br_0_55 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c55
+ bl_0_55 br_0_55 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c55
+ bl_0_55 br_0_55 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c55
+ bl_0_55 br_0_55 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c55
+ bl_0_55 br_0_55 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c55
+ bl_0_55 br_0_55 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c55
+ bl_0_55 br_0_55 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c55
+ bl_0_55 br_0_55 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c55
+ bl_0_55 br_0_55 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c55
+ bl_0_55 br_0_55 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c55
+ bl_0_55 br_0_55 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c55
+ bl_0_55 br_0_55 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c55
+ bl_0_55 br_0_55 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c55
+ bl_0_55 br_0_55 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c55
+ bl_0_55 br_0_55 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c55
+ bl_0_55 br_0_55 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c55
+ bl_0_55 br_0_55 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c55
+ bl_0_55 br_0_55 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c55
+ bl_0_55 br_0_55 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c55
+ bl_0_55 br_0_55 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c55
+ bl_0_55 br_0_55 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c55
+ bl_0_55 br_0_55 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c55
+ bl_0_55 br_0_55 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c55
+ bl_0_55 br_0_55 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c55
+ bl_0_55 br_0_55 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c55
+ bl_0_55 br_0_55 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c55
+ bl_0_55 br_0_55 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c55
+ bl_0_55 br_0_55 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c55
+ bl_0_55 br_0_55 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c55
+ bl_0_55 br_0_55 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c55
+ bl_0_55 br_0_55 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c56
+ bl_0_56 br_0_56 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c56
+ bl_0_56 br_0_56 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c56
+ bl_0_56 br_0_56 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c56
+ bl_0_56 br_0_56 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c56
+ bl_0_56 br_0_56 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c56
+ bl_0_56 br_0_56 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c56
+ bl_0_56 br_0_56 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c56
+ bl_0_56 br_0_56 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c56
+ bl_0_56 br_0_56 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c56
+ bl_0_56 br_0_56 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c56
+ bl_0_56 br_0_56 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c56
+ bl_0_56 br_0_56 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c56
+ bl_0_56 br_0_56 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c56
+ bl_0_56 br_0_56 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c56
+ bl_0_56 br_0_56 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c56
+ bl_0_56 br_0_56 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c56
+ bl_0_56 br_0_56 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c56
+ bl_0_56 br_0_56 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c56
+ bl_0_56 br_0_56 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c56
+ bl_0_56 br_0_56 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c56
+ bl_0_56 br_0_56 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c56
+ bl_0_56 br_0_56 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c56
+ bl_0_56 br_0_56 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c56
+ bl_0_56 br_0_56 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c56
+ bl_0_56 br_0_56 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c56
+ bl_0_56 br_0_56 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c56
+ bl_0_56 br_0_56 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c56
+ bl_0_56 br_0_56 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c56
+ bl_0_56 br_0_56 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c56
+ bl_0_56 br_0_56 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c56
+ bl_0_56 br_0_56 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c56
+ bl_0_56 br_0_56 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c57
+ bl_0_57 br_0_57 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c57
+ bl_0_57 br_0_57 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c57
+ bl_0_57 br_0_57 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c57
+ bl_0_57 br_0_57 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c57
+ bl_0_57 br_0_57 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c57
+ bl_0_57 br_0_57 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c57
+ bl_0_57 br_0_57 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c57
+ bl_0_57 br_0_57 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c57
+ bl_0_57 br_0_57 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c57
+ bl_0_57 br_0_57 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c57
+ bl_0_57 br_0_57 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c57
+ bl_0_57 br_0_57 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c57
+ bl_0_57 br_0_57 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c57
+ bl_0_57 br_0_57 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c57
+ bl_0_57 br_0_57 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c57
+ bl_0_57 br_0_57 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c57
+ bl_0_57 br_0_57 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c57
+ bl_0_57 br_0_57 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c57
+ bl_0_57 br_0_57 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c57
+ bl_0_57 br_0_57 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c57
+ bl_0_57 br_0_57 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c57
+ bl_0_57 br_0_57 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c57
+ bl_0_57 br_0_57 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c57
+ bl_0_57 br_0_57 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c57
+ bl_0_57 br_0_57 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c57
+ bl_0_57 br_0_57 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c57
+ bl_0_57 br_0_57 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c57
+ bl_0_57 br_0_57 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c57
+ bl_0_57 br_0_57 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c57
+ bl_0_57 br_0_57 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c57
+ bl_0_57 br_0_57 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c57
+ bl_0_57 br_0_57 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c58
+ bl_0_58 br_0_58 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c58
+ bl_0_58 br_0_58 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c58
+ bl_0_58 br_0_58 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c58
+ bl_0_58 br_0_58 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c58
+ bl_0_58 br_0_58 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c58
+ bl_0_58 br_0_58 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c58
+ bl_0_58 br_0_58 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c58
+ bl_0_58 br_0_58 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c58
+ bl_0_58 br_0_58 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c58
+ bl_0_58 br_0_58 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c58
+ bl_0_58 br_0_58 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c58
+ bl_0_58 br_0_58 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c58
+ bl_0_58 br_0_58 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c58
+ bl_0_58 br_0_58 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c58
+ bl_0_58 br_0_58 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c58
+ bl_0_58 br_0_58 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c58
+ bl_0_58 br_0_58 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c58
+ bl_0_58 br_0_58 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c58
+ bl_0_58 br_0_58 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c58
+ bl_0_58 br_0_58 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c58
+ bl_0_58 br_0_58 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c58
+ bl_0_58 br_0_58 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c58
+ bl_0_58 br_0_58 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c58
+ bl_0_58 br_0_58 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c58
+ bl_0_58 br_0_58 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c58
+ bl_0_58 br_0_58 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c58
+ bl_0_58 br_0_58 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c58
+ bl_0_58 br_0_58 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c58
+ bl_0_58 br_0_58 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c58
+ bl_0_58 br_0_58 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c58
+ bl_0_58 br_0_58 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c58
+ bl_0_58 br_0_58 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c59
+ bl_0_59 br_0_59 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c59
+ bl_0_59 br_0_59 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c59
+ bl_0_59 br_0_59 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c59
+ bl_0_59 br_0_59 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c59
+ bl_0_59 br_0_59 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c59
+ bl_0_59 br_0_59 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c59
+ bl_0_59 br_0_59 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c59
+ bl_0_59 br_0_59 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c59
+ bl_0_59 br_0_59 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c59
+ bl_0_59 br_0_59 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c59
+ bl_0_59 br_0_59 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c59
+ bl_0_59 br_0_59 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c59
+ bl_0_59 br_0_59 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c59
+ bl_0_59 br_0_59 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c59
+ bl_0_59 br_0_59 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c59
+ bl_0_59 br_0_59 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c59
+ bl_0_59 br_0_59 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c59
+ bl_0_59 br_0_59 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c59
+ bl_0_59 br_0_59 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c59
+ bl_0_59 br_0_59 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c59
+ bl_0_59 br_0_59 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c59
+ bl_0_59 br_0_59 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c59
+ bl_0_59 br_0_59 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c59
+ bl_0_59 br_0_59 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c59
+ bl_0_59 br_0_59 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c59
+ bl_0_59 br_0_59 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c59
+ bl_0_59 br_0_59 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c59
+ bl_0_59 br_0_59 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c59
+ bl_0_59 br_0_59 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c59
+ bl_0_59 br_0_59 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c59
+ bl_0_59 br_0_59 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c59
+ bl_0_59 br_0_59 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c60
+ bl_0_60 br_0_60 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c60
+ bl_0_60 br_0_60 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c60
+ bl_0_60 br_0_60 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c60
+ bl_0_60 br_0_60 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c60
+ bl_0_60 br_0_60 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c60
+ bl_0_60 br_0_60 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c60
+ bl_0_60 br_0_60 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c60
+ bl_0_60 br_0_60 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c60
+ bl_0_60 br_0_60 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c60
+ bl_0_60 br_0_60 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c60
+ bl_0_60 br_0_60 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c60
+ bl_0_60 br_0_60 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c60
+ bl_0_60 br_0_60 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c60
+ bl_0_60 br_0_60 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c60
+ bl_0_60 br_0_60 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c60
+ bl_0_60 br_0_60 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c60
+ bl_0_60 br_0_60 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c60
+ bl_0_60 br_0_60 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c60
+ bl_0_60 br_0_60 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c60
+ bl_0_60 br_0_60 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c60
+ bl_0_60 br_0_60 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c60
+ bl_0_60 br_0_60 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c60
+ bl_0_60 br_0_60 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c60
+ bl_0_60 br_0_60 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c60
+ bl_0_60 br_0_60 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c60
+ bl_0_60 br_0_60 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c60
+ bl_0_60 br_0_60 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c60
+ bl_0_60 br_0_60 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c60
+ bl_0_60 br_0_60 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c60
+ bl_0_60 br_0_60 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c60
+ bl_0_60 br_0_60 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c60
+ bl_0_60 br_0_60 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c61
+ bl_0_61 br_0_61 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c61
+ bl_0_61 br_0_61 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c61
+ bl_0_61 br_0_61 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c61
+ bl_0_61 br_0_61 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c61
+ bl_0_61 br_0_61 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c61
+ bl_0_61 br_0_61 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c61
+ bl_0_61 br_0_61 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c61
+ bl_0_61 br_0_61 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c61
+ bl_0_61 br_0_61 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c61
+ bl_0_61 br_0_61 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c61
+ bl_0_61 br_0_61 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c61
+ bl_0_61 br_0_61 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c61
+ bl_0_61 br_0_61 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c61
+ bl_0_61 br_0_61 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c61
+ bl_0_61 br_0_61 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c61
+ bl_0_61 br_0_61 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c61
+ bl_0_61 br_0_61 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c61
+ bl_0_61 br_0_61 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c61
+ bl_0_61 br_0_61 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c61
+ bl_0_61 br_0_61 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c61
+ bl_0_61 br_0_61 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c61
+ bl_0_61 br_0_61 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c61
+ bl_0_61 br_0_61 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c61
+ bl_0_61 br_0_61 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c61
+ bl_0_61 br_0_61 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c61
+ bl_0_61 br_0_61 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c61
+ bl_0_61 br_0_61 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c61
+ bl_0_61 br_0_61 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c61
+ bl_0_61 br_0_61 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c61
+ bl_0_61 br_0_61 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c61
+ bl_0_61 br_0_61 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c61
+ bl_0_61 br_0_61 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c62
+ bl_0_62 br_0_62 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c62
+ bl_0_62 br_0_62 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c62
+ bl_0_62 br_0_62 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c62
+ bl_0_62 br_0_62 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c62
+ bl_0_62 br_0_62 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c62
+ bl_0_62 br_0_62 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c62
+ bl_0_62 br_0_62 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c62
+ bl_0_62 br_0_62 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c62
+ bl_0_62 br_0_62 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c62
+ bl_0_62 br_0_62 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c62
+ bl_0_62 br_0_62 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c62
+ bl_0_62 br_0_62 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c62
+ bl_0_62 br_0_62 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c62
+ bl_0_62 br_0_62 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c62
+ bl_0_62 br_0_62 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c62
+ bl_0_62 br_0_62 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c62
+ bl_0_62 br_0_62 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c62
+ bl_0_62 br_0_62 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c62
+ bl_0_62 br_0_62 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c62
+ bl_0_62 br_0_62 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c62
+ bl_0_62 br_0_62 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c62
+ bl_0_62 br_0_62 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c62
+ bl_0_62 br_0_62 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c62
+ bl_0_62 br_0_62 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c62
+ bl_0_62 br_0_62 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c62
+ bl_0_62 br_0_62 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c62
+ bl_0_62 br_0_62 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c62
+ bl_0_62 br_0_62 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c62
+ bl_0_62 br_0_62 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c62
+ bl_0_62 br_0_62 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c62
+ bl_0_62 br_0_62 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c62
+ bl_0_62 br_0_62 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c63
+ bl_0_63 br_0_63 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c63
+ bl_0_63 br_0_63 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c63
+ bl_0_63 br_0_63 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c63
+ bl_0_63 br_0_63 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c63
+ bl_0_63 br_0_63 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c63
+ bl_0_63 br_0_63 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c63
+ bl_0_63 br_0_63 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c63
+ bl_0_63 br_0_63 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c63
+ bl_0_63 br_0_63 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c63
+ bl_0_63 br_0_63 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c63
+ bl_0_63 br_0_63 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c63
+ bl_0_63 br_0_63 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c63
+ bl_0_63 br_0_63 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c63
+ bl_0_63 br_0_63 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c63
+ bl_0_63 br_0_63 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c63
+ bl_0_63 br_0_63 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c63
+ bl_0_63 br_0_63 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c63
+ bl_0_63 br_0_63 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c63
+ bl_0_63 br_0_63 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c63
+ bl_0_63 br_0_63 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c63
+ bl_0_63 br_0_63 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c63
+ bl_0_63 br_0_63 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c63
+ bl_0_63 br_0_63 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c63
+ bl_0_63 br_0_63 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c63
+ bl_0_63 br_0_63 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c63
+ bl_0_63 br_0_63 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c63
+ bl_0_63 br_0_63 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c63
+ bl_0_63 br_0_63 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c63
+ bl_0_63 br_0_63 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c63
+ bl_0_63 br_0_63 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c63
+ bl_0_63 br_0_63 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c63
+ bl_0_63 br_0_63 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c64
+ bl_0_64 br_0_64 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c64
+ bl_0_64 br_0_64 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c64
+ bl_0_64 br_0_64 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c64
+ bl_0_64 br_0_64 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c64
+ bl_0_64 br_0_64 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c64
+ bl_0_64 br_0_64 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c64
+ bl_0_64 br_0_64 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c64
+ bl_0_64 br_0_64 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c64
+ bl_0_64 br_0_64 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c64
+ bl_0_64 br_0_64 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c64
+ bl_0_64 br_0_64 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c64
+ bl_0_64 br_0_64 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c64
+ bl_0_64 br_0_64 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c64
+ bl_0_64 br_0_64 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c64
+ bl_0_64 br_0_64 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c64
+ bl_0_64 br_0_64 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c64
+ bl_0_64 br_0_64 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c64
+ bl_0_64 br_0_64 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c64
+ bl_0_64 br_0_64 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c64
+ bl_0_64 br_0_64 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c64
+ bl_0_64 br_0_64 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c64
+ bl_0_64 br_0_64 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c64
+ bl_0_64 br_0_64 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c64
+ bl_0_64 br_0_64 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c64
+ bl_0_64 br_0_64 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c64
+ bl_0_64 br_0_64 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c64
+ bl_0_64 br_0_64 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c64
+ bl_0_64 br_0_64 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c64
+ bl_0_64 br_0_64 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c64
+ bl_0_64 br_0_64 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c64
+ bl_0_64 br_0_64 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c64
+ bl_0_64 br_0_64 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c65
+ bl_0_65 br_0_65 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c65
+ bl_0_65 br_0_65 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c65
+ bl_0_65 br_0_65 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c65
+ bl_0_65 br_0_65 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c65
+ bl_0_65 br_0_65 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c65
+ bl_0_65 br_0_65 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c65
+ bl_0_65 br_0_65 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c65
+ bl_0_65 br_0_65 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c65
+ bl_0_65 br_0_65 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c65
+ bl_0_65 br_0_65 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c65
+ bl_0_65 br_0_65 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c65
+ bl_0_65 br_0_65 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c65
+ bl_0_65 br_0_65 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c65
+ bl_0_65 br_0_65 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c65
+ bl_0_65 br_0_65 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c65
+ bl_0_65 br_0_65 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c65
+ bl_0_65 br_0_65 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c65
+ bl_0_65 br_0_65 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c65
+ bl_0_65 br_0_65 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c65
+ bl_0_65 br_0_65 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c65
+ bl_0_65 br_0_65 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c65
+ bl_0_65 br_0_65 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c65
+ bl_0_65 br_0_65 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c65
+ bl_0_65 br_0_65 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c65
+ bl_0_65 br_0_65 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c65
+ bl_0_65 br_0_65 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c65
+ bl_0_65 br_0_65 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c65
+ bl_0_65 br_0_65 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c65
+ bl_0_65 br_0_65 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c65
+ bl_0_65 br_0_65 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c65
+ bl_0_65 br_0_65 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c65
+ bl_0_65 br_0_65 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c66
+ bl_0_66 br_0_66 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c66
+ bl_0_66 br_0_66 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c66
+ bl_0_66 br_0_66 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c66
+ bl_0_66 br_0_66 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c66
+ bl_0_66 br_0_66 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c66
+ bl_0_66 br_0_66 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c66
+ bl_0_66 br_0_66 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c66
+ bl_0_66 br_0_66 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c66
+ bl_0_66 br_0_66 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c66
+ bl_0_66 br_0_66 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c66
+ bl_0_66 br_0_66 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c66
+ bl_0_66 br_0_66 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c66
+ bl_0_66 br_0_66 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c66
+ bl_0_66 br_0_66 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c66
+ bl_0_66 br_0_66 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c66
+ bl_0_66 br_0_66 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c66
+ bl_0_66 br_0_66 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c66
+ bl_0_66 br_0_66 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c66
+ bl_0_66 br_0_66 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c66
+ bl_0_66 br_0_66 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c66
+ bl_0_66 br_0_66 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c66
+ bl_0_66 br_0_66 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c66
+ bl_0_66 br_0_66 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c66
+ bl_0_66 br_0_66 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c66
+ bl_0_66 br_0_66 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c66
+ bl_0_66 br_0_66 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c66
+ bl_0_66 br_0_66 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c66
+ bl_0_66 br_0_66 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c66
+ bl_0_66 br_0_66 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c66
+ bl_0_66 br_0_66 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c66
+ bl_0_66 br_0_66 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c66
+ bl_0_66 br_0_66 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c67
+ bl_0_67 br_0_67 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c67
+ bl_0_67 br_0_67 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c67
+ bl_0_67 br_0_67 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c67
+ bl_0_67 br_0_67 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c67
+ bl_0_67 br_0_67 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c67
+ bl_0_67 br_0_67 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c67
+ bl_0_67 br_0_67 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c67
+ bl_0_67 br_0_67 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c67
+ bl_0_67 br_0_67 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c67
+ bl_0_67 br_0_67 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c67
+ bl_0_67 br_0_67 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c67
+ bl_0_67 br_0_67 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c67
+ bl_0_67 br_0_67 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c67
+ bl_0_67 br_0_67 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c67
+ bl_0_67 br_0_67 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c67
+ bl_0_67 br_0_67 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c67
+ bl_0_67 br_0_67 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c67
+ bl_0_67 br_0_67 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c67
+ bl_0_67 br_0_67 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c67
+ bl_0_67 br_0_67 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c67
+ bl_0_67 br_0_67 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c67
+ bl_0_67 br_0_67 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c67
+ bl_0_67 br_0_67 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c67
+ bl_0_67 br_0_67 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c67
+ bl_0_67 br_0_67 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c67
+ bl_0_67 br_0_67 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c67
+ bl_0_67 br_0_67 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c67
+ bl_0_67 br_0_67 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c67
+ bl_0_67 br_0_67 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c67
+ bl_0_67 br_0_67 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c67
+ bl_0_67 br_0_67 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c67
+ bl_0_67 br_0_67 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c68
+ bl_0_68 br_0_68 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c68
+ bl_0_68 br_0_68 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c68
+ bl_0_68 br_0_68 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c68
+ bl_0_68 br_0_68 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c68
+ bl_0_68 br_0_68 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c68
+ bl_0_68 br_0_68 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c68
+ bl_0_68 br_0_68 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c68
+ bl_0_68 br_0_68 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c68
+ bl_0_68 br_0_68 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c68
+ bl_0_68 br_0_68 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c68
+ bl_0_68 br_0_68 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c68
+ bl_0_68 br_0_68 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c68
+ bl_0_68 br_0_68 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c68
+ bl_0_68 br_0_68 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c68
+ bl_0_68 br_0_68 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c68
+ bl_0_68 br_0_68 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c68
+ bl_0_68 br_0_68 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c68
+ bl_0_68 br_0_68 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c68
+ bl_0_68 br_0_68 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c68
+ bl_0_68 br_0_68 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c68
+ bl_0_68 br_0_68 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c68
+ bl_0_68 br_0_68 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c68
+ bl_0_68 br_0_68 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c68
+ bl_0_68 br_0_68 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c68
+ bl_0_68 br_0_68 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c68
+ bl_0_68 br_0_68 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c68
+ bl_0_68 br_0_68 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c68
+ bl_0_68 br_0_68 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c68
+ bl_0_68 br_0_68 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c68
+ bl_0_68 br_0_68 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c68
+ bl_0_68 br_0_68 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c68
+ bl_0_68 br_0_68 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c69
+ bl_0_69 br_0_69 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c69
+ bl_0_69 br_0_69 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c69
+ bl_0_69 br_0_69 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c69
+ bl_0_69 br_0_69 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c69
+ bl_0_69 br_0_69 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c69
+ bl_0_69 br_0_69 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c69
+ bl_0_69 br_0_69 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c69
+ bl_0_69 br_0_69 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c69
+ bl_0_69 br_0_69 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c69
+ bl_0_69 br_0_69 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c69
+ bl_0_69 br_0_69 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c69
+ bl_0_69 br_0_69 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c69
+ bl_0_69 br_0_69 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c69
+ bl_0_69 br_0_69 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c69
+ bl_0_69 br_0_69 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c69
+ bl_0_69 br_0_69 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c69
+ bl_0_69 br_0_69 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c69
+ bl_0_69 br_0_69 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c69
+ bl_0_69 br_0_69 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c69
+ bl_0_69 br_0_69 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c69
+ bl_0_69 br_0_69 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c69
+ bl_0_69 br_0_69 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c69
+ bl_0_69 br_0_69 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c69
+ bl_0_69 br_0_69 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c69
+ bl_0_69 br_0_69 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c69
+ bl_0_69 br_0_69 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c69
+ bl_0_69 br_0_69 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c69
+ bl_0_69 br_0_69 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c69
+ bl_0_69 br_0_69 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c69
+ bl_0_69 br_0_69 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c69
+ bl_0_69 br_0_69 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c69
+ bl_0_69 br_0_69 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c70
+ bl_0_70 br_0_70 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c70
+ bl_0_70 br_0_70 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c70
+ bl_0_70 br_0_70 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c70
+ bl_0_70 br_0_70 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c70
+ bl_0_70 br_0_70 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c70
+ bl_0_70 br_0_70 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c70
+ bl_0_70 br_0_70 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c70
+ bl_0_70 br_0_70 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c70
+ bl_0_70 br_0_70 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c70
+ bl_0_70 br_0_70 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c70
+ bl_0_70 br_0_70 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c70
+ bl_0_70 br_0_70 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c70
+ bl_0_70 br_0_70 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c70
+ bl_0_70 br_0_70 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c70
+ bl_0_70 br_0_70 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c70
+ bl_0_70 br_0_70 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c70
+ bl_0_70 br_0_70 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c70
+ bl_0_70 br_0_70 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c70
+ bl_0_70 br_0_70 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c70
+ bl_0_70 br_0_70 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c70
+ bl_0_70 br_0_70 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c70
+ bl_0_70 br_0_70 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c70
+ bl_0_70 br_0_70 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c70
+ bl_0_70 br_0_70 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c70
+ bl_0_70 br_0_70 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c70
+ bl_0_70 br_0_70 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c70
+ bl_0_70 br_0_70 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c70
+ bl_0_70 br_0_70 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c70
+ bl_0_70 br_0_70 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c70
+ bl_0_70 br_0_70 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c70
+ bl_0_70 br_0_70 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c70
+ bl_0_70 br_0_70 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c71
+ bl_0_71 br_0_71 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c71
+ bl_0_71 br_0_71 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c71
+ bl_0_71 br_0_71 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c71
+ bl_0_71 br_0_71 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c71
+ bl_0_71 br_0_71 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c71
+ bl_0_71 br_0_71 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c71
+ bl_0_71 br_0_71 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c71
+ bl_0_71 br_0_71 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c71
+ bl_0_71 br_0_71 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c71
+ bl_0_71 br_0_71 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c71
+ bl_0_71 br_0_71 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c71
+ bl_0_71 br_0_71 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c71
+ bl_0_71 br_0_71 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c71
+ bl_0_71 br_0_71 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c71
+ bl_0_71 br_0_71 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c71
+ bl_0_71 br_0_71 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c71
+ bl_0_71 br_0_71 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c71
+ bl_0_71 br_0_71 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c71
+ bl_0_71 br_0_71 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c71
+ bl_0_71 br_0_71 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c71
+ bl_0_71 br_0_71 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c71
+ bl_0_71 br_0_71 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c71
+ bl_0_71 br_0_71 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c71
+ bl_0_71 br_0_71 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c71
+ bl_0_71 br_0_71 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c71
+ bl_0_71 br_0_71 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c71
+ bl_0_71 br_0_71 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c71
+ bl_0_71 br_0_71 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c71
+ bl_0_71 br_0_71 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c71
+ bl_0_71 br_0_71 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c71
+ bl_0_71 br_0_71 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c71
+ bl_0_71 br_0_71 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c72
+ bl_0_72 br_0_72 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c72
+ bl_0_72 br_0_72 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c72
+ bl_0_72 br_0_72 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c72
+ bl_0_72 br_0_72 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c72
+ bl_0_72 br_0_72 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c72
+ bl_0_72 br_0_72 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c72
+ bl_0_72 br_0_72 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c72
+ bl_0_72 br_0_72 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c72
+ bl_0_72 br_0_72 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c72
+ bl_0_72 br_0_72 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c72
+ bl_0_72 br_0_72 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c72
+ bl_0_72 br_0_72 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c72
+ bl_0_72 br_0_72 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c72
+ bl_0_72 br_0_72 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c72
+ bl_0_72 br_0_72 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c72
+ bl_0_72 br_0_72 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c72
+ bl_0_72 br_0_72 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c72
+ bl_0_72 br_0_72 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c72
+ bl_0_72 br_0_72 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c72
+ bl_0_72 br_0_72 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c72
+ bl_0_72 br_0_72 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c72
+ bl_0_72 br_0_72 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c72
+ bl_0_72 br_0_72 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c72
+ bl_0_72 br_0_72 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c72
+ bl_0_72 br_0_72 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c72
+ bl_0_72 br_0_72 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c72
+ bl_0_72 br_0_72 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c72
+ bl_0_72 br_0_72 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c72
+ bl_0_72 br_0_72 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c72
+ bl_0_72 br_0_72 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c72
+ bl_0_72 br_0_72 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c72
+ bl_0_72 br_0_72 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c73
+ bl_0_73 br_0_73 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c73
+ bl_0_73 br_0_73 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c73
+ bl_0_73 br_0_73 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c73
+ bl_0_73 br_0_73 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c73
+ bl_0_73 br_0_73 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c73
+ bl_0_73 br_0_73 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c73
+ bl_0_73 br_0_73 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c73
+ bl_0_73 br_0_73 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c73
+ bl_0_73 br_0_73 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c73
+ bl_0_73 br_0_73 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c73
+ bl_0_73 br_0_73 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c73
+ bl_0_73 br_0_73 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c73
+ bl_0_73 br_0_73 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c73
+ bl_0_73 br_0_73 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c73
+ bl_0_73 br_0_73 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c73
+ bl_0_73 br_0_73 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c73
+ bl_0_73 br_0_73 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c73
+ bl_0_73 br_0_73 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c73
+ bl_0_73 br_0_73 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c73
+ bl_0_73 br_0_73 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c73
+ bl_0_73 br_0_73 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c73
+ bl_0_73 br_0_73 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c73
+ bl_0_73 br_0_73 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c73
+ bl_0_73 br_0_73 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c73
+ bl_0_73 br_0_73 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c73
+ bl_0_73 br_0_73 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c73
+ bl_0_73 br_0_73 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c73
+ bl_0_73 br_0_73 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c73
+ bl_0_73 br_0_73 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c73
+ bl_0_73 br_0_73 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c73
+ bl_0_73 br_0_73 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c73
+ bl_0_73 br_0_73 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c74
+ bl_0_74 br_0_74 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c74
+ bl_0_74 br_0_74 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c74
+ bl_0_74 br_0_74 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c74
+ bl_0_74 br_0_74 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c74
+ bl_0_74 br_0_74 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c74
+ bl_0_74 br_0_74 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c74
+ bl_0_74 br_0_74 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c74
+ bl_0_74 br_0_74 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c74
+ bl_0_74 br_0_74 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c74
+ bl_0_74 br_0_74 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c74
+ bl_0_74 br_0_74 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c74
+ bl_0_74 br_0_74 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c74
+ bl_0_74 br_0_74 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c74
+ bl_0_74 br_0_74 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c74
+ bl_0_74 br_0_74 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c74
+ bl_0_74 br_0_74 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c74
+ bl_0_74 br_0_74 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c74
+ bl_0_74 br_0_74 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c74
+ bl_0_74 br_0_74 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c74
+ bl_0_74 br_0_74 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c74
+ bl_0_74 br_0_74 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c74
+ bl_0_74 br_0_74 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c74
+ bl_0_74 br_0_74 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c74
+ bl_0_74 br_0_74 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c74
+ bl_0_74 br_0_74 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c74
+ bl_0_74 br_0_74 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c74
+ bl_0_74 br_0_74 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c74
+ bl_0_74 br_0_74 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c74
+ bl_0_74 br_0_74 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c74
+ bl_0_74 br_0_74 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c74
+ bl_0_74 br_0_74 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c74
+ bl_0_74 br_0_74 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c75
+ bl_0_75 br_0_75 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c75
+ bl_0_75 br_0_75 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c75
+ bl_0_75 br_0_75 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c75
+ bl_0_75 br_0_75 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c75
+ bl_0_75 br_0_75 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c75
+ bl_0_75 br_0_75 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c75
+ bl_0_75 br_0_75 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c75
+ bl_0_75 br_0_75 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c75
+ bl_0_75 br_0_75 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c75
+ bl_0_75 br_0_75 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c75
+ bl_0_75 br_0_75 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c75
+ bl_0_75 br_0_75 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c75
+ bl_0_75 br_0_75 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c75
+ bl_0_75 br_0_75 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c75
+ bl_0_75 br_0_75 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c75
+ bl_0_75 br_0_75 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c75
+ bl_0_75 br_0_75 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c75
+ bl_0_75 br_0_75 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c75
+ bl_0_75 br_0_75 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c75
+ bl_0_75 br_0_75 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c75
+ bl_0_75 br_0_75 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c75
+ bl_0_75 br_0_75 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c75
+ bl_0_75 br_0_75 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c75
+ bl_0_75 br_0_75 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c75
+ bl_0_75 br_0_75 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c75
+ bl_0_75 br_0_75 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c75
+ bl_0_75 br_0_75 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c75
+ bl_0_75 br_0_75 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c75
+ bl_0_75 br_0_75 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c75
+ bl_0_75 br_0_75 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c75
+ bl_0_75 br_0_75 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c75
+ bl_0_75 br_0_75 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c76
+ bl_0_76 br_0_76 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c76
+ bl_0_76 br_0_76 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c76
+ bl_0_76 br_0_76 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c76
+ bl_0_76 br_0_76 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c76
+ bl_0_76 br_0_76 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c76
+ bl_0_76 br_0_76 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c76
+ bl_0_76 br_0_76 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c76
+ bl_0_76 br_0_76 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c76
+ bl_0_76 br_0_76 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c76
+ bl_0_76 br_0_76 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c76
+ bl_0_76 br_0_76 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c76
+ bl_0_76 br_0_76 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c76
+ bl_0_76 br_0_76 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c76
+ bl_0_76 br_0_76 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c76
+ bl_0_76 br_0_76 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c76
+ bl_0_76 br_0_76 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c76
+ bl_0_76 br_0_76 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c76
+ bl_0_76 br_0_76 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c76
+ bl_0_76 br_0_76 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c76
+ bl_0_76 br_0_76 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c76
+ bl_0_76 br_0_76 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c76
+ bl_0_76 br_0_76 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c76
+ bl_0_76 br_0_76 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c76
+ bl_0_76 br_0_76 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c76
+ bl_0_76 br_0_76 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c76
+ bl_0_76 br_0_76 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c76
+ bl_0_76 br_0_76 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c76
+ bl_0_76 br_0_76 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c76
+ bl_0_76 br_0_76 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c76
+ bl_0_76 br_0_76 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c76
+ bl_0_76 br_0_76 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c76
+ bl_0_76 br_0_76 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c77
+ bl_0_77 br_0_77 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c77
+ bl_0_77 br_0_77 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c77
+ bl_0_77 br_0_77 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c77
+ bl_0_77 br_0_77 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c77
+ bl_0_77 br_0_77 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c77
+ bl_0_77 br_0_77 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c77
+ bl_0_77 br_0_77 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c77
+ bl_0_77 br_0_77 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c77
+ bl_0_77 br_0_77 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c77
+ bl_0_77 br_0_77 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c77
+ bl_0_77 br_0_77 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c77
+ bl_0_77 br_0_77 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c77
+ bl_0_77 br_0_77 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c77
+ bl_0_77 br_0_77 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c77
+ bl_0_77 br_0_77 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c77
+ bl_0_77 br_0_77 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c77
+ bl_0_77 br_0_77 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c77
+ bl_0_77 br_0_77 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c77
+ bl_0_77 br_0_77 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c77
+ bl_0_77 br_0_77 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c77
+ bl_0_77 br_0_77 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c77
+ bl_0_77 br_0_77 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c77
+ bl_0_77 br_0_77 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c77
+ bl_0_77 br_0_77 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c77
+ bl_0_77 br_0_77 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c77
+ bl_0_77 br_0_77 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c77
+ bl_0_77 br_0_77 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c77
+ bl_0_77 br_0_77 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c77
+ bl_0_77 br_0_77 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c77
+ bl_0_77 br_0_77 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c77
+ bl_0_77 br_0_77 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c77
+ bl_0_77 br_0_77 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c78
+ bl_0_78 br_0_78 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c78
+ bl_0_78 br_0_78 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c78
+ bl_0_78 br_0_78 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c78
+ bl_0_78 br_0_78 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c78
+ bl_0_78 br_0_78 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c78
+ bl_0_78 br_0_78 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c78
+ bl_0_78 br_0_78 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c78
+ bl_0_78 br_0_78 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c78
+ bl_0_78 br_0_78 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c78
+ bl_0_78 br_0_78 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c78
+ bl_0_78 br_0_78 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c78
+ bl_0_78 br_0_78 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c78
+ bl_0_78 br_0_78 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c78
+ bl_0_78 br_0_78 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c78
+ bl_0_78 br_0_78 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c78
+ bl_0_78 br_0_78 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c78
+ bl_0_78 br_0_78 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c78
+ bl_0_78 br_0_78 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c78
+ bl_0_78 br_0_78 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c78
+ bl_0_78 br_0_78 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c78
+ bl_0_78 br_0_78 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c78
+ bl_0_78 br_0_78 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c78
+ bl_0_78 br_0_78 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c78
+ bl_0_78 br_0_78 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c78
+ bl_0_78 br_0_78 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c78
+ bl_0_78 br_0_78 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c78
+ bl_0_78 br_0_78 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c78
+ bl_0_78 br_0_78 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c78
+ bl_0_78 br_0_78 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c78
+ bl_0_78 br_0_78 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c78
+ bl_0_78 br_0_78 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c78
+ bl_0_78 br_0_78 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c79
+ bl_0_79 br_0_79 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c79
+ bl_0_79 br_0_79 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c79
+ bl_0_79 br_0_79 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c79
+ bl_0_79 br_0_79 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c79
+ bl_0_79 br_0_79 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c79
+ bl_0_79 br_0_79 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c79
+ bl_0_79 br_0_79 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c79
+ bl_0_79 br_0_79 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c79
+ bl_0_79 br_0_79 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c79
+ bl_0_79 br_0_79 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c79
+ bl_0_79 br_0_79 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c79
+ bl_0_79 br_0_79 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c79
+ bl_0_79 br_0_79 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c79
+ bl_0_79 br_0_79 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c79
+ bl_0_79 br_0_79 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c79
+ bl_0_79 br_0_79 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c79
+ bl_0_79 br_0_79 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c79
+ bl_0_79 br_0_79 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c79
+ bl_0_79 br_0_79 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c79
+ bl_0_79 br_0_79 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c79
+ bl_0_79 br_0_79 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c79
+ bl_0_79 br_0_79 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c79
+ bl_0_79 br_0_79 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c79
+ bl_0_79 br_0_79 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c79
+ bl_0_79 br_0_79 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c79
+ bl_0_79 br_0_79 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c79
+ bl_0_79 br_0_79 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c79
+ bl_0_79 br_0_79 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c79
+ bl_0_79 br_0_79 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c79
+ bl_0_79 br_0_79 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c79
+ bl_0_79 br_0_79 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c79
+ bl_0_79 br_0_79 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c80
+ bl_0_80 br_0_80 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c80
+ bl_0_80 br_0_80 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c80
+ bl_0_80 br_0_80 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c80
+ bl_0_80 br_0_80 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c80
+ bl_0_80 br_0_80 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c80
+ bl_0_80 br_0_80 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c80
+ bl_0_80 br_0_80 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c80
+ bl_0_80 br_0_80 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c80
+ bl_0_80 br_0_80 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c80
+ bl_0_80 br_0_80 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c80
+ bl_0_80 br_0_80 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c80
+ bl_0_80 br_0_80 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c80
+ bl_0_80 br_0_80 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c80
+ bl_0_80 br_0_80 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c80
+ bl_0_80 br_0_80 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c80
+ bl_0_80 br_0_80 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c80
+ bl_0_80 br_0_80 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c80
+ bl_0_80 br_0_80 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c80
+ bl_0_80 br_0_80 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c80
+ bl_0_80 br_0_80 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c80
+ bl_0_80 br_0_80 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c80
+ bl_0_80 br_0_80 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c80
+ bl_0_80 br_0_80 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c80
+ bl_0_80 br_0_80 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c80
+ bl_0_80 br_0_80 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c80
+ bl_0_80 br_0_80 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c80
+ bl_0_80 br_0_80 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c80
+ bl_0_80 br_0_80 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c80
+ bl_0_80 br_0_80 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c80
+ bl_0_80 br_0_80 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c80
+ bl_0_80 br_0_80 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c80
+ bl_0_80 br_0_80 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c81
+ bl_0_81 br_0_81 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c81
+ bl_0_81 br_0_81 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c81
+ bl_0_81 br_0_81 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c81
+ bl_0_81 br_0_81 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c81
+ bl_0_81 br_0_81 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c81
+ bl_0_81 br_0_81 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c81
+ bl_0_81 br_0_81 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c81
+ bl_0_81 br_0_81 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c81
+ bl_0_81 br_0_81 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c81
+ bl_0_81 br_0_81 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c81
+ bl_0_81 br_0_81 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c81
+ bl_0_81 br_0_81 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c81
+ bl_0_81 br_0_81 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c81
+ bl_0_81 br_0_81 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c81
+ bl_0_81 br_0_81 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c81
+ bl_0_81 br_0_81 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c81
+ bl_0_81 br_0_81 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c81
+ bl_0_81 br_0_81 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c81
+ bl_0_81 br_0_81 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c81
+ bl_0_81 br_0_81 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c81
+ bl_0_81 br_0_81 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c81
+ bl_0_81 br_0_81 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c81
+ bl_0_81 br_0_81 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c81
+ bl_0_81 br_0_81 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c81
+ bl_0_81 br_0_81 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c81
+ bl_0_81 br_0_81 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c81
+ bl_0_81 br_0_81 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c81
+ bl_0_81 br_0_81 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c81
+ bl_0_81 br_0_81 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c81
+ bl_0_81 br_0_81 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c81
+ bl_0_81 br_0_81 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c81
+ bl_0_81 br_0_81 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c82
+ bl_0_82 br_0_82 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c82
+ bl_0_82 br_0_82 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c82
+ bl_0_82 br_0_82 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c82
+ bl_0_82 br_0_82 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c82
+ bl_0_82 br_0_82 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c82
+ bl_0_82 br_0_82 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c82
+ bl_0_82 br_0_82 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c82
+ bl_0_82 br_0_82 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c82
+ bl_0_82 br_0_82 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c82
+ bl_0_82 br_0_82 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c82
+ bl_0_82 br_0_82 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c82
+ bl_0_82 br_0_82 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c82
+ bl_0_82 br_0_82 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c82
+ bl_0_82 br_0_82 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c82
+ bl_0_82 br_0_82 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c82
+ bl_0_82 br_0_82 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c82
+ bl_0_82 br_0_82 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c82
+ bl_0_82 br_0_82 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c82
+ bl_0_82 br_0_82 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c82
+ bl_0_82 br_0_82 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c82
+ bl_0_82 br_0_82 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c82
+ bl_0_82 br_0_82 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c82
+ bl_0_82 br_0_82 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c82
+ bl_0_82 br_0_82 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c82
+ bl_0_82 br_0_82 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c82
+ bl_0_82 br_0_82 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c82
+ bl_0_82 br_0_82 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c82
+ bl_0_82 br_0_82 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c82
+ bl_0_82 br_0_82 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c82
+ bl_0_82 br_0_82 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c82
+ bl_0_82 br_0_82 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c82
+ bl_0_82 br_0_82 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c83
+ bl_0_83 br_0_83 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c83
+ bl_0_83 br_0_83 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c83
+ bl_0_83 br_0_83 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c83
+ bl_0_83 br_0_83 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c83
+ bl_0_83 br_0_83 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c83
+ bl_0_83 br_0_83 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c83
+ bl_0_83 br_0_83 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c83
+ bl_0_83 br_0_83 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c83
+ bl_0_83 br_0_83 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c83
+ bl_0_83 br_0_83 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c83
+ bl_0_83 br_0_83 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c83
+ bl_0_83 br_0_83 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c83
+ bl_0_83 br_0_83 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c83
+ bl_0_83 br_0_83 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c83
+ bl_0_83 br_0_83 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c83
+ bl_0_83 br_0_83 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c83
+ bl_0_83 br_0_83 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c83
+ bl_0_83 br_0_83 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c83
+ bl_0_83 br_0_83 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c83
+ bl_0_83 br_0_83 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c83
+ bl_0_83 br_0_83 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c83
+ bl_0_83 br_0_83 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c83
+ bl_0_83 br_0_83 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c83
+ bl_0_83 br_0_83 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c83
+ bl_0_83 br_0_83 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c83
+ bl_0_83 br_0_83 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c83
+ bl_0_83 br_0_83 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c83
+ bl_0_83 br_0_83 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c83
+ bl_0_83 br_0_83 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c83
+ bl_0_83 br_0_83 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c83
+ bl_0_83 br_0_83 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c83
+ bl_0_83 br_0_83 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c84
+ bl_0_84 br_0_84 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c84
+ bl_0_84 br_0_84 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c84
+ bl_0_84 br_0_84 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c84
+ bl_0_84 br_0_84 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c84
+ bl_0_84 br_0_84 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c84
+ bl_0_84 br_0_84 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c84
+ bl_0_84 br_0_84 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c84
+ bl_0_84 br_0_84 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c84
+ bl_0_84 br_0_84 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c84
+ bl_0_84 br_0_84 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c84
+ bl_0_84 br_0_84 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c84
+ bl_0_84 br_0_84 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c84
+ bl_0_84 br_0_84 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c84
+ bl_0_84 br_0_84 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c84
+ bl_0_84 br_0_84 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c84
+ bl_0_84 br_0_84 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c84
+ bl_0_84 br_0_84 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c84
+ bl_0_84 br_0_84 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c84
+ bl_0_84 br_0_84 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c84
+ bl_0_84 br_0_84 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c84
+ bl_0_84 br_0_84 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c84
+ bl_0_84 br_0_84 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c84
+ bl_0_84 br_0_84 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c84
+ bl_0_84 br_0_84 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c84
+ bl_0_84 br_0_84 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c84
+ bl_0_84 br_0_84 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c84
+ bl_0_84 br_0_84 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c84
+ bl_0_84 br_0_84 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c84
+ bl_0_84 br_0_84 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c84
+ bl_0_84 br_0_84 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c84
+ bl_0_84 br_0_84 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c84
+ bl_0_84 br_0_84 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c85
+ bl_0_85 br_0_85 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c85
+ bl_0_85 br_0_85 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c85
+ bl_0_85 br_0_85 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c85
+ bl_0_85 br_0_85 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c85
+ bl_0_85 br_0_85 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c85
+ bl_0_85 br_0_85 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c85
+ bl_0_85 br_0_85 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c85
+ bl_0_85 br_0_85 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c85
+ bl_0_85 br_0_85 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c85
+ bl_0_85 br_0_85 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c85
+ bl_0_85 br_0_85 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c85
+ bl_0_85 br_0_85 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c85
+ bl_0_85 br_0_85 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c85
+ bl_0_85 br_0_85 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c85
+ bl_0_85 br_0_85 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c85
+ bl_0_85 br_0_85 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c85
+ bl_0_85 br_0_85 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c85
+ bl_0_85 br_0_85 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c85
+ bl_0_85 br_0_85 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c85
+ bl_0_85 br_0_85 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c85
+ bl_0_85 br_0_85 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c85
+ bl_0_85 br_0_85 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c85
+ bl_0_85 br_0_85 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c85
+ bl_0_85 br_0_85 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c85
+ bl_0_85 br_0_85 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c85
+ bl_0_85 br_0_85 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c85
+ bl_0_85 br_0_85 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c85
+ bl_0_85 br_0_85 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c85
+ bl_0_85 br_0_85 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c85
+ bl_0_85 br_0_85 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c85
+ bl_0_85 br_0_85 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c85
+ bl_0_85 br_0_85 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c86
+ bl_0_86 br_0_86 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c86
+ bl_0_86 br_0_86 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c86
+ bl_0_86 br_0_86 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c86
+ bl_0_86 br_0_86 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c86
+ bl_0_86 br_0_86 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c86
+ bl_0_86 br_0_86 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c86
+ bl_0_86 br_0_86 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c86
+ bl_0_86 br_0_86 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c86
+ bl_0_86 br_0_86 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c86
+ bl_0_86 br_0_86 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c86
+ bl_0_86 br_0_86 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c86
+ bl_0_86 br_0_86 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c86
+ bl_0_86 br_0_86 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c86
+ bl_0_86 br_0_86 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c86
+ bl_0_86 br_0_86 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c86
+ bl_0_86 br_0_86 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c86
+ bl_0_86 br_0_86 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c86
+ bl_0_86 br_0_86 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c86
+ bl_0_86 br_0_86 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c86
+ bl_0_86 br_0_86 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c86
+ bl_0_86 br_0_86 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c86
+ bl_0_86 br_0_86 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c86
+ bl_0_86 br_0_86 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c86
+ bl_0_86 br_0_86 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c86
+ bl_0_86 br_0_86 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c86
+ bl_0_86 br_0_86 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c86
+ bl_0_86 br_0_86 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c86
+ bl_0_86 br_0_86 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c86
+ bl_0_86 br_0_86 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c86
+ bl_0_86 br_0_86 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c86
+ bl_0_86 br_0_86 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c86
+ bl_0_86 br_0_86 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c87
+ bl_0_87 br_0_87 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c87
+ bl_0_87 br_0_87 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c87
+ bl_0_87 br_0_87 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c87
+ bl_0_87 br_0_87 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c87
+ bl_0_87 br_0_87 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c87
+ bl_0_87 br_0_87 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c87
+ bl_0_87 br_0_87 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c87
+ bl_0_87 br_0_87 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c87
+ bl_0_87 br_0_87 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c87
+ bl_0_87 br_0_87 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c87
+ bl_0_87 br_0_87 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c87
+ bl_0_87 br_0_87 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c87
+ bl_0_87 br_0_87 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c87
+ bl_0_87 br_0_87 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c87
+ bl_0_87 br_0_87 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c87
+ bl_0_87 br_0_87 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c87
+ bl_0_87 br_0_87 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c87
+ bl_0_87 br_0_87 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c87
+ bl_0_87 br_0_87 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c87
+ bl_0_87 br_0_87 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c87
+ bl_0_87 br_0_87 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c87
+ bl_0_87 br_0_87 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c87
+ bl_0_87 br_0_87 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c87
+ bl_0_87 br_0_87 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c87
+ bl_0_87 br_0_87 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c87
+ bl_0_87 br_0_87 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c87
+ bl_0_87 br_0_87 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c87
+ bl_0_87 br_0_87 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c87
+ bl_0_87 br_0_87 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c87
+ bl_0_87 br_0_87 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c87
+ bl_0_87 br_0_87 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c87
+ bl_0_87 br_0_87 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c88
+ bl_0_88 br_0_88 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c88
+ bl_0_88 br_0_88 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c88
+ bl_0_88 br_0_88 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c88
+ bl_0_88 br_0_88 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c88
+ bl_0_88 br_0_88 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c88
+ bl_0_88 br_0_88 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c88
+ bl_0_88 br_0_88 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c88
+ bl_0_88 br_0_88 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c88
+ bl_0_88 br_0_88 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c88
+ bl_0_88 br_0_88 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c88
+ bl_0_88 br_0_88 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c88
+ bl_0_88 br_0_88 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c88
+ bl_0_88 br_0_88 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c88
+ bl_0_88 br_0_88 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c88
+ bl_0_88 br_0_88 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c88
+ bl_0_88 br_0_88 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c88
+ bl_0_88 br_0_88 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c88
+ bl_0_88 br_0_88 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c88
+ bl_0_88 br_0_88 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c88
+ bl_0_88 br_0_88 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c88
+ bl_0_88 br_0_88 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c88
+ bl_0_88 br_0_88 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c88
+ bl_0_88 br_0_88 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c88
+ bl_0_88 br_0_88 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c88
+ bl_0_88 br_0_88 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c88
+ bl_0_88 br_0_88 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c88
+ bl_0_88 br_0_88 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c88
+ bl_0_88 br_0_88 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c88
+ bl_0_88 br_0_88 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c88
+ bl_0_88 br_0_88 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c88
+ bl_0_88 br_0_88 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c88
+ bl_0_88 br_0_88 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c89
+ bl_0_89 br_0_89 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c89
+ bl_0_89 br_0_89 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c89
+ bl_0_89 br_0_89 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c89
+ bl_0_89 br_0_89 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c89
+ bl_0_89 br_0_89 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c89
+ bl_0_89 br_0_89 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c89
+ bl_0_89 br_0_89 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c89
+ bl_0_89 br_0_89 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c89
+ bl_0_89 br_0_89 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c89
+ bl_0_89 br_0_89 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c89
+ bl_0_89 br_0_89 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c89
+ bl_0_89 br_0_89 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c89
+ bl_0_89 br_0_89 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c89
+ bl_0_89 br_0_89 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c89
+ bl_0_89 br_0_89 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c89
+ bl_0_89 br_0_89 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c89
+ bl_0_89 br_0_89 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c89
+ bl_0_89 br_0_89 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c89
+ bl_0_89 br_0_89 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c89
+ bl_0_89 br_0_89 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c89
+ bl_0_89 br_0_89 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c89
+ bl_0_89 br_0_89 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c89
+ bl_0_89 br_0_89 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c89
+ bl_0_89 br_0_89 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c89
+ bl_0_89 br_0_89 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c89
+ bl_0_89 br_0_89 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c89
+ bl_0_89 br_0_89 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c89
+ bl_0_89 br_0_89 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c89
+ bl_0_89 br_0_89 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c89
+ bl_0_89 br_0_89 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c89
+ bl_0_89 br_0_89 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c89
+ bl_0_89 br_0_89 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c90
+ bl_0_90 br_0_90 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c90
+ bl_0_90 br_0_90 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c90
+ bl_0_90 br_0_90 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c90
+ bl_0_90 br_0_90 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c90
+ bl_0_90 br_0_90 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c90
+ bl_0_90 br_0_90 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c90
+ bl_0_90 br_0_90 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c90
+ bl_0_90 br_0_90 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c90
+ bl_0_90 br_0_90 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c90
+ bl_0_90 br_0_90 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c90
+ bl_0_90 br_0_90 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c90
+ bl_0_90 br_0_90 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c90
+ bl_0_90 br_0_90 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c90
+ bl_0_90 br_0_90 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c90
+ bl_0_90 br_0_90 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c90
+ bl_0_90 br_0_90 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c90
+ bl_0_90 br_0_90 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c90
+ bl_0_90 br_0_90 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c90
+ bl_0_90 br_0_90 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c90
+ bl_0_90 br_0_90 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c90
+ bl_0_90 br_0_90 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c90
+ bl_0_90 br_0_90 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c90
+ bl_0_90 br_0_90 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c90
+ bl_0_90 br_0_90 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c90
+ bl_0_90 br_0_90 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c90
+ bl_0_90 br_0_90 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c90
+ bl_0_90 br_0_90 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c90
+ bl_0_90 br_0_90 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c90
+ bl_0_90 br_0_90 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c90
+ bl_0_90 br_0_90 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c90
+ bl_0_90 br_0_90 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c90
+ bl_0_90 br_0_90 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c91
+ bl_0_91 br_0_91 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c91
+ bl_0_91 br_0_91 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c91
+ bl_0_91 br_0_91 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c91
+ bl_0_91 br_0_91 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c91
+ bl_0_91 br_0_91 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c91
+ bl_0_91 br_0_91 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c91
+ bl_0_91 br_0_91 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c91
+ bl_0_91 br_0_91 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c91
+ bl_0_91 br_0_91 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c91
+ bl_0_91 br_0_91 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c91
+ bl_0_91 br_0_91 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c91
+ bl_0_91 br_0_91 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c91
+ bl_0_91 br_0_91 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c91
+ bl_0_91 br_0_91 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c91
+ bl_0_91 br_0_91 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c91
+ bl_0_91 br_0_91 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c91
+ bl_0_91 br_0_91 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c91
+ bl_0_91 br_0_91 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c91
+ bl_0_91 br_0_91 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c91
+ bl_0_91 br_0_91 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c91
+ bl_0_91 br_0_91 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c91
+ bl_0_91 br_0_91 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c91
+ bl_0_91 br_0_91 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c91
+ bl_0_91 br_0_91 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c91
+ bl_0_91 br_0_91 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c91
+ bl_0_91 br_0_91 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c91
+ bl_0_91 br_0_91 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c91
+ bl_0_91 br_0_91 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c91
+ bl_0_91 br_0_91 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c91
+ bl_0_91 br_0_91 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c91
+ bl_0_91 br_0_91 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c91
+ bl_0_91 br_0_91 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c92
+ bl_0_92 br_0_92 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c92
+ bl_0_92 br_0_92 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c92
+ bl_0_92 br_0_92 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c92
+ bl_0_92 br_0_92 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c92
+ bl_0_92 br_0_92 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c92
+ bl_0_92 br_0_92 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c92
+ bl_0_92 br_0_92 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c92
+ bl_0_92 br_0_92 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c92
+ bl_0_92 br_0_92 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c92
+ bl_0_92 br_0_92 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c92
+ bl_0_92 br_0_92 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c92
+ bl_0_92 br_0_92 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c92
+ bl_0_92 br_0_92 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c92
+ bl_0_92 br_0_92 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c92
+ bl_0_92 br_0_92 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c92
+ bl_0_92 br_0_92 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c92
+ bl_0_92 br_0_92 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c92
+ bl_0_92 br_0_92 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c92
+ bl_0_92 br_0_92 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c92
+ bl_0_92 br_0_92 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c92
+ bl_0_92 br_0_92 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c92
+ bl_0_92 br_0_92 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c92
+ bl_0_92 br_0_92 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c92
+ bl_0_92 br_0_92 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c92
+ bl_0_92 br_0_92 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c92
+ bl_0_92 br_0_92 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c92
+ bl_0_92 br_0_92 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c92
+ bl_0_92 br_0_92 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c92
+ bl_0_92 br_0_92 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c92
+ bl_0_92 br_0_92 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c92
+ bl_0_92 br_0_92 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c92
+ bl_0_92 br_0_92 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c93
+ bl_0_93 br_0_93 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c93
+ bl_0_93 br_0_93 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c93
+ bl_0_93 br_0_93 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c93
+ bl_0_93 br_0_93 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c93
+ bl_0_93 br_0_93 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c93
+ bl_0_93 br_0_93 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c93
+ bl_0_93 br_0_93 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c93
+ bl_0_93 br_0_93 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c93
+ bl_0_93 br_0_93 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c93
+ bl_0_93 br_0_93 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c93
+ bl_0_93 br_0_93 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c93
+ bl_0_93 br_0_93 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c93
+ bl_0_93 br_0_93 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c93
+ bl_0_93 br_0_93 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c93
+ bl_0_93 br_0_93 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c93
+ bl_0_93 br_0_93 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c93
+ bl_0_93 br_0_93 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c93
+ bl_0_93 br_0_93 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c93
+ bl_0_93 br_0_93 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c93
+ bl_0_93 br_0_93 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c93
+ bl_0_93 br_0_93 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c93
+ bl_0_93 br_0_93 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c93
+ bl_0_93 br_0_93 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c93
+ bl_0_93 br_0_93 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c93
+ bl_0_93 br_0_93 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c93
+ bl_0_93 br_0_93 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c93
+ bl_0_93 br_0_93 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c93
+ bl_0_93 br_0_93 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c93
+ bl_0_93 br_0_93 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c93
+ bl_0_93 br_0_93 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c93
+ bl_0_93 br_0_93 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c93
+ bl_0_93 br_0_93 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c94
+ bl_0_94 br_0_94 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c94
+ bl_0_94 br_0_94 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c94
+ bl_0_94 br_0_94 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c94
+ bl_0_94 br_0_94 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c94
+ bl_0_94 br_0_94 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c94
+ bl_0_94 br_0_94 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c94
+ bl_0_94 br_0_94 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c94
+ bl_0_94 br_0_94 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c94
+ bl_0_94 br_0_94 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c94
+ bl_0_94 br_0_94 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c94
+ bl_0_94 br_0_94 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c94
+ bl_0_94 br_0_94 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c94
+ bl_0_94 br_0_94 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c94
+ bl_0_94 br_0_94 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c94
+ bl_0_94 br_0_94 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c94
+ bl_0_94 br_0_94 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c94
+ bl_0_94 br_0_94 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c94
+ bl_0_94 br_0_94 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c94
+ bl_0_94 br_0_94 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c94
+ bl_0_94 br_0_94 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c94
+ bl_0_94 br_0_94 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c94
+ bl_0_94 br_0_94 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c94
+ bl_0_94 br_0_94 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c94
+ bl_0_94 br_0_94 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c94
+ bl_0_94 br_0_94 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c94
+ bl_0_94 br_0_94 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c94
+ bl_0_94 br_0_94 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c94
+ bl_0_94 br_0_94 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c94
+ bl_0_94 br_0_94 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c94
+ bl_0_94 br_0_94 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c94
+ bl_0_94 br_0_94 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c94
+ bl_0_94 br_0_94 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c95
+ bl_0_95 br_0_95 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c95
+ bl_0_95 br_0_95 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c95
+ bl_0_95 br_0_95 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c95
+ bl_0_95 br_0_95 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c95
+ bl_0_95 br_0_95 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c95
+ bl_0_95 br_0_95 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c95
+ bl_0_95 br_0_95 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c95
+ bl_0_95 br_0_95 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c95
+ bl_0_95 br_0_95 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c95
+ bl_0_95 br_0_95 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c95
+ bl_0_95 br_0_95 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c95
+ bl_0_95 br_0_95 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c95
+ bl_0_95 br_0_95 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c95
+ bl_0_95 br_0_95 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c95
+ bl_0_95 br_0_95 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c95
+ bl_0_95 br_0_95 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c95
+ bl_0_95 br_0_95 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c95
+ bl_0_95 br_0_95 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c95
+ bl_0_95 br_0_95 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c95
+ bl_0_95 br_0_95 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c95
+ bl_0_95 br_0_95 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c95
+ bl_0_95 br_0_95 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c95
+ bl_0_95 br_0_95 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c95
+ bl_0_95 br_0_95 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c95
+ bl_0_95 br_0_95 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c95
+ bl_0_95 br_0_95 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c95
+ bl_0_95 br_0_95 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c95
+ bl_0_95 br_0_95 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c95
+ bl_0_95 br_0_95 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c95
+ bl_0_95 br_0_95 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c95
+ bl_0_95 br_0_95 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c95
+ bl_0_95 br_0_95 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c96
+ bl_0_96 br_0_96 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c96
+ bl_0_96 br_0_96 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c96
+ bl_0_96 br_0_96 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c96
+ bl_0_96 br_0_96 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c96
+ bl_0_96 br_0_96 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c96
+ bl_0_96 br_0_96 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c96
+ bl_0_96 br_0_96 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c96
+ bl_0_96 br_0_96 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c96
+ bl_0_96 br_0_96 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c96
+ bl_0_96 br_0_96 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c96
+ bl_0_96 br_0_96 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c96
+ bl_0_96 br_0_96 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c96
+ bl_0_96 br_0_96 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c96
+ bl_0_96 br_0_96 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c96
+ bl_0_96 br_0_96 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c96
+ bl_0_96 br_0_96 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c96
+ bl_0_96 br_0_96 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c96
+ bl_0_96 br_0_96 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c96
+ bl_0_96 br_0_96 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c96
+ bl_0_96 br_0_96 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c96
+ bl_0_96 br_0_96 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c96
+ bl_0_96 br_0_96 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c96
+ bl_0_96 br_0_96 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c96
+ bl_0_96 br_0_96 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c96
+ bl_0_96 br_0_96 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c96
+ bl_0_96 br_0_96 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c96
+ bl_0_96 br_0_96 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c96
+ bl_0_96 br_0_96 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c96
+ bl_0_96 br_0_96 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c96
+ bl_0_96 br_0_96 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c96
+ bl_0_96 br_0_96 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c96
+ bl_0_96 br_0_96 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c97
+ bl_0_97 br_0_97 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c97
+ bl_0_97 br_0_97 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c97
+ bl_0_97 br_0_97 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c97
+ bl_0_97 br_0_97 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c97
+ bl_0_97 br_0_97 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c97
+ bl_0_97 br_0_97 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c97
+ bl_0_97 br_0_97 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c97
+ bl_0_97 br_0_97 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c97
+ bl_0_97 br_0_97 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c97
+ bl_0_97 br_0_97 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c97
+ bl_0_97 br_0_97 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c97
+ bl_0_97 br_0_97 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c97
+ bl_0_97 br_0_97 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c97
+ bl_0_97 br_0_97 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c97
+ bl_0_97 br_0_97 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c97
+ bl_0_97 br_0_97 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c97
+ bl_0_97 br_0_97 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c97
+ bl_0_97 br_0_97 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c97
+ bl_0_97 br_0_97 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c97
+ bl_0_97 br_0_97 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c97
+ bl_0_97 br_0_97 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c97
+ bl_0_97 br_0_97 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c97
+ bl_0_97 br_0_97 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c97
+ bl_0_97 br_0_97 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c97
+ bl_0_97 br_0_97 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c97
+ bl_0_97 br_0_97 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c97
+ bl_0_97 br_0_97 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c97
+ bl_0_97 br_0_97 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c97
+ bl_0_97 br_0_97 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c97
+ bl_0_97 br_0_97 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c97
+ bl_0_97 br_0_97 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c97
+ bl_0_97 br_0_97 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c98
+ bl_0_98 br_0_98 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c98
+ bl_0_98 br_0_98 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c98
+ bl_0_98 br_0_98 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c98
+ bl_0_98 br_0_98 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c98
+ bl_0_98 br_0_98 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c98
+ bl_0_98 br_0_98 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c98
+ bl_0_98 br_0_98 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c98
+ bl_0_98 br_0_98 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c98
+ bl_0_98 br_0_98 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c98
+ bl_0_98 br_0_98 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c98
+ bl_0_98 br_0_98 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c98
+ bl_0_98 br_0_98 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c98
+ bl_0_98 br_0_98 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c98
+ bl_0_98 br_0_98 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c98
+ bl_0_98 br_0_98 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c98
+ bl_0_98 br_0_98 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c98
+ bl_0_98 br_0_98 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c98
+ bl_0_98 br_0_98 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c98
+ bl_0_98 br_0_98 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c98
+ bl_0_98 br_0_98 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c98
+ bl_0_98 br_0_98 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c98
+ bl_0_98 br_0_98 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c98
+ bl_0_98 br_0_98 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c98
+ bl_0_98 br_0_98 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c98
+ bl_0_98 br_0_98 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c98
+ bl_0_98 br_0_98 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c98
+ bl_0_98 br_0_98 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c98
+ bl_0_98 br_0_98 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c98
+ bl_0_98 br_0_98 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c98
+ bl_0_98 br_0_98 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c98
+ bl_0_98 br_0_98 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c98
+ bl_0_98 br_0_98 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c99
+ bl_0_99 br_0_99 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c99
+ bl_0_99 br_0_99 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c99
+ bl_0_99 br_0_99 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c99
+ bl_0_99 br_0_99 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c99
+ bl_0_99 br_0_99 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c99
+ bl_0_99 br_0_99 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c99
+ bl_0_99 br_0_99 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c99
+ bl_0_99 br_0_99 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c99
+ bl_0_99 br_0_99 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c99
+ bl_0_99 br_0_99 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c99
+ bl_0_99 br_0_99 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c99
+ bl_0_99 br_0_99 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c99
+ bl_0_99 br_0_99 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c99
+ bl_0_99 br_0_99 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c99
+ bl_0_99 br_0_99 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c99
+ bl_0_99 br_0_99 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c99
+ bl_0_99 br_0_99 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c99
+ bl_0_99 br_0_99 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c99
+ bl_0_99 br_0_99 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c99
+ bl_0_99 br_0_99 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c99
+ bl_0_99 br_0_99 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c99
+ bl_0_99 br_0_99 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c99
+ bl_0_99 br_0_99 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c99
+ bl_0_99 br_0_99 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c99
+ bl_0_99 br_0_99 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c99
+ bl_0_99 br_0_99 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c99
+ bl_0_99 br_0_99 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c99
+ bl_0_99 br_0_99 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c99
+ bl_0_99 br_0_99 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c99
+ bl_0_99 br_0_99 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c99
+ bl_0_99 br_0_99 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c99
+ bl_0_99 br_0_99 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c100
+ bl_0_100 br_0_100 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c100
+ bl_0_100 br_0_100 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c100
+ bl_0_100 br_0_100 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c100
+ bl_0_100 br_0_100 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c100
+ bl_0_100 br_0_100 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c100
+ bl_0_100 br_0_100 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c100
+ bl_0_100 br_0_100 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c100
+ bl_0_100 br_0_100 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c100
+ bl_0_100 br_0_100 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c100
+ bl_0_100 br_0_100 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c100
+ bl_0_100 br_0_100 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c100
+ bl_0_100 br_0_100 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c100
+ bl_0_100 br_0_100 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c100
+ bl_0_100 br_0_100 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c100
+ bl_0_100 br_0_100 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c100
+ bl_0_100 br_0_100 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c100
+ bl_0_100 br_0_100 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c100
+ bl_0_100 br_0_100 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c100
+ bl_0_100 br_0_100 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c100
+ bl_0_100 br_0_100 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c100
+ bl_0_100 br_0_100 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c100
+ bl_0_100 br_0_100 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c100
+ bl_0_100 br_0_100 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c100
+ bl_0_100 br_0_100 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c100
+ bl_0_100 br_0_100 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c100
+ bl_0_100 br_0_100 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c100
+ bl_0_100 br_0_100 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c100
+ bl_0_100 br_0_100 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c100
+ bl_0_100 br_0_100 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c100
+ bl_0_100 br_0_100 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c100
+ bl_0_100 br_0_100 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c100
+ bl_0_100 br_0_100 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c101
+ bl_0_101 br_0_101 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c101
+ bl_0_101 br_0_101 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c101
+ bl_0_101 br_0_101 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c101
+ bl_0_101 br_0_101 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c101
+ bl_0_101 br_0_101 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c101
+ bl_0_101 br_0_101 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c101
+ bl_0_101 br_0_101 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c101
+ bl_0_101 br_0_101 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c101
+ bl_0_101 br_0_101 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c101
+ bl_0_101 br_0_101 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c101
+ bl_0_101 br_0_101 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c101
+ bl_0_101 br_0_101 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c101
+ bl_0_101 br_0_101 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c101
+ bl_0_101 br_0_101 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c101
+ bl_0_101 br_0_101 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c101
+ bl_0_101 br_0_101 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c101
+ bl_0_101 br_0_101 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c101
+ bl_0_101 br_0_101 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c101
+ bl_0_101 br_0_101 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c101
+ bl_0_101 br_0_101 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c101
+ bl_0_101 br_0_101 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c101
+ bl_0_101 br_0_101 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c101
+ bl_0_101 br_0_101 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c101
+ bl_0_101 br_0_101 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c101
+ bl_0_101 br_0_101 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c101
+ bl_0_101 br_0_101 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c101
+ bl_0_101 br_0_101 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c101
+ bl_0_101 br_0_101 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c101
+ bl_0_101 br_0_101 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c101
+ bl_0_101 br_0_101 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c101
+ bl_0_101 br_0_101 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c101
+ bl_0_101 br_0_101 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c102
+ bl_0_102 br_0_102 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c102
+ bl_0_102 br_0_102 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c102
+ bl_0_102 br_0_102 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c102
+ bl_0_102 br_0_102 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c102
+ bl_0_102 br_0_102 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c102
+ bl_0_102 br_0_102 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c102
+ bl_0_102 br_0_102 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c102
+ bl_0_102 br_0_102 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c102
+ bl_0_102 br_0_102 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c102
+ bl_0_102 br_0_102 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c102
+ bl_0_102 br_0_102 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c102
+ bl_0_102 br_0_102 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c102
+ bl_0_102 br_0_102 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c102
+ bl_0_102 br_0_102 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c102
+ bl_0_102 br_0_102 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c102
+ bl_0_102 br_0_102 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c102
+ bl_0_102 br_0_102 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c102
+ bl_0_102 br_0_102 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c102
+ bl_0_102 br_0_102 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c102
+ bl_0_102 br_0_102 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c102
+ bl_0_102 br_0_102 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c102
+ bl_0_102 br_0_102 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c102
+ bl_0_102 br_0_102 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c102
+ bl_0_102 br_0_102 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c102
+ bl_0_102 br_0_102 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c102
+ bl_0_102 br_0_102 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c102
+ bl_0_102 br_0_102 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c102
+ bl_0_102 br_0_102 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c102
+ bl_0_102 br_0_102 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c102
+ bl_0_102 br_0_102 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c102
+ bl_0_102 br_0_102 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c102
+ bl_0_102 br_0_102 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c103
+ bl_0_103 br_0_103 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c103
+ bl_0_103 br_0_103 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c103
+ bl_0_103 br_0_103 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c103
+ bl_0_103 br_0_103 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c103
+ bl_0_103 br_0_103 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c103
+ bl_0_103 br_0_103 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c103
+ bl_0_103 br_0_103 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c103
+ bl_0_103 br_0_103 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c103
+ bl_0_103 br_0_103 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c103
+ bl_0_103 br_0_103 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c103
+ bl_0_103 br_0_103 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c103
+ bl_0_103 br_0_103 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c103
+ bl_0_103 br_0_103 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c103
+ bl_0_103 br_0_103 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c103
+ bl_0_103 br_0_103 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c103
+ bl_0_103 br_0_103 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c103
+ bl_0_103 br_0_103 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c103
+ bl_0_103 br_0_103 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c103
+ bl_0_103 br_0_103 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c103
+ bl_0_103 br_0_103 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c103
+ bl_0_103 br_0_103 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c103
+ bl_0_103 br_0_103 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c103
+ bl_0_103 br_0_103 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c103
+ bl_0_103 br_0_103 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c103
+ bl_0_103 br_0_103 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c103
+ bl_0_103 br_0_103 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c103
+ bl_0_103 br_0_103 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c103
+ bl_0_103 br_0_103 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c103
+ bl_0_103 br_0_103 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c103
+ bl_0_103 br_0_103 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c103
+ bl_0_103 br_0_103 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c103
+ bl_0_103 br_0_103 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c104
+ bl_0_104 br_0_104 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c104
+ bl_0_104 br_0_104 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c104
+ bl_0_104 br_0_104 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c104
+ bl_0_104 br_0_104 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c104
+ bl_0_104 br_0_104 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c104
+ bl_0_104 br_0_104 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c104
+ bl_0_104 br_0_104 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c104
+ bl_0_104 br_0_104 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c104
+ bl_0_104 br_0_104 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c104
+ bl_0_104 br_0_104 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c104
+ bl_0_104 br_0_104 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c104
+ bl_0_104 br_0_104 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c104
+ bl_0_104 br_0_104 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c104
+ bl_0_104 br_0_104 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c104
+ bl_0_104 br_0_104 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c104
+ bl_0_104 br_0_104 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c104
+ bl_0_104 br_0_104 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c104
+ bl_0_104 br_0_104 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c104
+ bl_0_104 br_0_104 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c104
+ bl_0_104 br_0_104 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c104
+ bl_0_104 br_0_104 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c104
+ bl_0_104 br_0_104 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c104
+ bl_0_104 br_0_104 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c104
+ bl_0_104 br_0_104 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c104
+ bl_0_104 br_0_104 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c104
+ bl_0_104 br_0_104 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c104
+ bl_0_104 br_0_104 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c104
+ bl_0_104 br_0_104 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c104
+ bl_0_104 br_0_104 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c104
+ bl_0_104 br_0_104 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c104
+ bl_0_104 br_0_104 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c104
+ bl_0_104 br_0_104 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c105
+ bl_0_105 br_0_105 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c105
+ bl_0_105 br_0_105 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c105
+ bl_0_105 br_0_105 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c105
+ bl_0_105 br_0_105 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c105
+ bl_0_105 br_0_105 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c105
+ bl_0_105 br_0_105 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c105
+ bl_0_105 br_0_105 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c105
+ bl_0_105 br_0_105 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c105
+ bl_0_105 br_0_105 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c105
+ bl_0_105 br_0_105 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c105
+ bl_0_105 br_0_105 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c105
+ bl_0_105 br_0_105 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c105
+ bl_0_105 br_0_105 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c105
+ bl_0_105 br_0_105 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c105
+ bl_0_105 br_0_105 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c105
+ bl_0_105 br_0_105 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c105
+ bl_0_105 br_0_105 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c105
+ bl_0_105 br_0_105 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c105
+ bl_0_105 br_0_105 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c105
+ bl_0_105 br_0_105 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c105
+ bl_0_105 br_0_105 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c105
+ bl_0_105 br_0_105 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c105
+ bl_0_105 br_0_105 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c105
+ bl_0_105 br_0_105 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c105
+ bl_0_105 br_0_105 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c105
+ bl_0_105 br_0_105 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c105
+ bl_0_105 br_0_105 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c105
+ bl_0_105 br_0_105 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c105
+ bl_0_105 br_0_105 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c105
+ bl_0_105 br_0_105 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c105
+ bl_0_105 br_0_105 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c105
+ bl_0_105 br_0_105 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c106
+ bl_0_106 br_0_106 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c106
+ bl_0_106 br_0_106 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c106
+ bl_0_106 br_0_106 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c106
+ bl_0_106 br_0_106 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c106
+ bl_0_106 br_0_106 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c106
+ bl_0_106 br_0_106 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c106
+ bl_0_106 br_0_106 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c106
+ bl_0_106 br_0_106 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c106
+ bl_0_106 br_0_106 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c106
+ bl_0_106 br_0_106 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c106
+ bl_0_106 br_0_106 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c106
+ bl_0_106 br_0_106 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c106
+ bl_0_106 br_0_106 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c106
+ bl_0_106 br_0_106 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c106
+ bl_0_106 br_0_106 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c106
+ bl_0_106 br_0_106 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c106
+ bl_0_106 br_0_106 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c106
+ bl_0_106 br_0_106 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c106
+ bl_0_106 br_0_106 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c106
+ bl_0_106 br_0_106 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c106
+ bl_0_106 br_0_106 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c106
+ bl_0_106 br_0_106 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c106
+ bl_0_106 br_0_106 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c106
+ bl_0_106 br_0_106 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c106
+ bl_0_106 br_0_106 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c106
+ bl_0_106 br_0_106 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c106
+ bl_0_106 br_0_106 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c106
+ bl_0_106 br_0_106 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c106
+ bl_0_106 br_0_106 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c106
+ bl_0_106 br_0_106 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c106
+ bl_0_106 br_0_106 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c106
+ bl_0_106 br_0_106 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c107
+ bl_0_107 br_0_107 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c107
+ bl_0_107 br_0_107 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c107
+ bl_0_107 br_0_107 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c107
+ bl_0_107 br_0_107 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c107
+ bl_0_107 br_0_107 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c107
+ bl_0_107 br_0_107 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c107
+ bl_0_107 br_0_107 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c107
+ bl_0_107 br_0_107 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c107
+ bl_0_107 br_0_107 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c107
+ bl_0_107 br_0_107 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c107
+ bl_0_107 br_0_107 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c107
+ bl_0_107 br_0_107 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c107
+ bl_0_107 br_0_107 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c107
+ bl_0_107 br_0_107 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c107
+ bl_0_107 br_0_107 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c107
+ bl_0_107 br_0_107 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c107
+ bl_0_107 br_0_107 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c107
+ bl_0_107 br_0_107 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c107
+ bl_0_107 br_0_107 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c107
+ bl_0_107 br_0_107 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c107
+ bl_0_107 br_0_107 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c107
+ bl_0_107 br_0_107 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c107
+ bl_0_107 br_0_107 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c107
+ bl_0_107 br_0_107 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c107
+ bl_0_107 br_0_107 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c107
+ bl_0_107 br_0_107 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c107
+ bl_0_107 br_0_107 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c107
+ bl_0_107 br_0_107 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c107
+ bl_0_107 br_0_107 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c107
+ bl_0_107 br_0_107 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c107
+ bl_0_107 br_0_107 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c107
+ bl_0_107 br_0_107 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c108
+ bl_0_108 br_0_108 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c108
+ bl_0_108 br_0_108 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c108
+ bl_0_108 br_0_108 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c108
+ bl_0_108 br_0_108 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c108
+ bl_0_108 br_0_108 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c108
+ bl_0_108 br_0_108 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c108
+ bl_0_108 br_0_108 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c108
+ bl_0_108 br_0_108 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c108
+ bl_0_108 br_0_108 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c108
+ bl_0_108 br_0_108 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c108
+ bl_0_108 br_0_108 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c108
+ bl_0_108 br_0_108 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c108
+ bl_0_108 br_0_108 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c108
+ bl_0_108 br_0_108 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c108
+ bl_0_108 br_0_108 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c108
+ bl_0_108 br_0_108 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c108
+ bl_0_108 br_0_108 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c108
+ bl_0_108 br_0_108 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c108
+ bl_0_108 br_0_108 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c108
+ bl_0_108 br_0_108 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c108
+ bl_0_108 br_0_108 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c108
+ bl_0_108 br_0_108 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c108
+ bl_0_108 br_0_108 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c108
+ bl_0_108 br_0_108 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c108
+ bl_0_108 br_0_108 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c108
+ bl_0_108 br_0_108 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c108
+ bl_0_108 br_0_108 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c108
+ bl_0_108 br_0_108 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c108
+ bl_0_108 br_0_108 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c108
+ bl_0_108 br_0_108 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c108
+ bl_0_108 br_0_108 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c108
+ bl_0_108 br_0_108 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c109
+ bl_0_109 br_0_109 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c109
+ bl_0_109 br_0_109 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c109
+ bl_0_109 br_0_109 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c109
+ bl_0_109 br_0_109 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c109
+ bl_0_109 br_0_109 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c109
+ bl_0_109 br_0_109 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c109
+ bl_0_109 br_0_109 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c109
+ bl_0_109 br_0_109 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c109
+ bl_0_109 br_0_109 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c109
+ bl_0_109 br_0_109 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c109
+ bl_0_109 br_0_109 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c109
+ bl_0_109 br_0_109 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c109
+ bl_0_109 br_0_109 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c109
+ bl_0_109 br_0_109 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c109
+ bl_0_109 br_0_109 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c109
+ bl_0_109 br_0_109 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c109
+ bl_0_109 br_0_109 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c109
+ bl_0_109 br_0_109 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c109
+ bl_0_109 br_0_109 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c109
+ bl_0_109 br_0_109 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c109
+ bl_0_109 br_0_109 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c109
+ bl_0_109 br_0_109 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c109
+ bl_0_109 br_0_109 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c109
+ bl_0_109 br_0_109 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c109
+ bl_0_109 br_0_109 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c109
+ bl_0_109 br_0_109 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c109
+ bl_0_109 br_0_109 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c109
+ bl_0_109 br_0_109 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c109
+ bl_0_109 br_0_109 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c109
+ bl_0_109 br_0_109 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c109
+ bl_0_109 br_0_109 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c109
+ bl_0_109 br_0_109 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c110
+ bl_0_110 br_0_110 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c110
+ bl_0_110 br_0_110 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c110
+ bl_0_110 br_0_110 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c110
+ bl_0_110 br_0_110 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c110
+ bl_0_110 br_0_110 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c110
+ bl_0_110 br_0_110 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c110
+ bl_0_110 br_0_110 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c110
+ bl_0_110 br_0_110 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c110
+ bl_0_110 br_0_110 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c110
+ bl_0_110 br_0_110 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c110
+ bl_0_110 br_0_110 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c110
+ bl_0_110 br_0_110 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c110
+ bl_0_110 br_0_110 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c110
+ bl_0_110 br_0_110 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c110
+ bl_0_110 br_0_110 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c110
+ bl_0_110 br_0_110 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c110
+ bl_0_110 br_0_110 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c110
+ bl_0_110 br_0_110 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c110
+ bl_0_110 br_0_110 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c110
+ bl_0_110 br_0_110 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c110
+ bl_0_110 br_0_110 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c110
+ bl_0_110 br_0_110 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c110
+ bl_0_110 br_0_110 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c110
+ bl_0_110 br_0_110 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c110
+ bl_0_110 br_0_110 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c110
+ bl_0_110 br_0_110 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c110
+ bl_0_110 br_0_110 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c110
+ bl_0_110 br_0_110 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c110
+ bl_0_110 br_0_110 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c110
+ bl_0_110 br_0_110 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c110
+ bl_0_110 br_0_110 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c110
+ bl_0_110 br_0_110 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c111
+ bl_0_111 br_0_111 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c111
+ bl_0_111 br_0_111 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c111
+ bl_0_111 br_0_111 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c111
+ bl_0_111 br_0_111 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c111
+ bl_0_111 br_0_111 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c111
+ bl_0_111 br_0_111 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c111
+ bl_0_111 br_0_111 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c111
+ bl_0_111 br_0_111 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c111
+ bl_0_111 br_0_111 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c111
+ bl_0_111 br_0_111 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c111
+ bl_0_111 br_0_111 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c111
+ bl_0_111 br_0_111 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c111
+ bl_0_111 br_0_111 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c111
+ bl_0_111 br_0_111 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c111
+ bl_0_111 br_0_111 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c111
+ bl_0_111 br_0_111 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c111
+ bl_0_111 br_0_111 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c111
+ bl_0_111 br_0_111 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c111
+ bl_0_111 br_0_111 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c111
+ bl_0_111 br_0_111 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c111
+ bl_0_111 br_0_111 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c111
+ bl_0_111 br_0_111 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c111
+ bl_0_111 br_0_111 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c111
+ bl_0_111 br_0_111 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c111
+ bl_0_111 br_0_111 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c111
+ bl_0_111 br_0_111 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c111
+ bl_0_111 br_0_111 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c111
+ bl_0_111 br_0_111 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c111
+ bl_0_111 br_0_111 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c111
+ bl_0_111 br_0_111 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c111
+ bl_0_111 br_0_111 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c111
+ bl_0_111 br_0_111 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c112
+ bl_0_112 br_0_112 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c112
+ bl_0_112 br_0_112 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c112
+ bl_0_112 br_0_112 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c112
+ bl_0_112 br_0_112 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c112
+ bl_0_112 br_0_112 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c112
+ bl_0_112 br_0_112 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c112
+ bl_0_112 br_0_112 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c112
+ bl_0_112 br_0_112 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c112
+ bl_0_112 br_0_112 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c112
+ bl_0_112 br_0_112 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c112
+ bl_0_112 br_0_112 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c112
+ bl_0_112 br_0_112 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c112
+ bl_0_112 br_0_112 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c112
+ bl_0_112 br_0_112 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c112
+ bl_0_112 br_0_112 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c112
+ bl_0_112 br_0_112 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c112
+ bl_0_112 br_0_112 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c112
+ bl_0_112 br_0_112 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c112
+ bl_0_112 br_0_112 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c112
+ bl_0_112 br_0_112 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c112
+ bl_0_112 br_0_112 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c112
+ bl_0_112 br_0_112 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c112
+ bl_0_112 br_0_112 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c112
+ bl_0_112 br_0_112 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c112
+ bl_0_112 br_0_112 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c112
+ bl_0_112 br_0_112 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c112
+ bl_0_112 br_0_112 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c112
+ bl_0_112 br_0_112 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c112
+ bl_0_112 br_0_112 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c112
+ bl_0_112 br_0_112 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c112
+ bl_0_112 br_0_112 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c112
+ bl_0_112 br_0_112 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c113
+ bl_0_113 br_0_113 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c113
+ bl_0_113 br_0_113 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c113
+ bl_0_113 br_0_113 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c113
+ bl_0_113 br_0_113 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c113
+ bl_0_113 br_0_113 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c113
+ bl_0_113 br_0_113 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c113
+ bl_0_113 br_0_113 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c113
+ bl_0_113 br_0_113 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c113
+ bl_0_113 br_0_113 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c113
+ bl_0_113 br_0_113 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c113
+ bl_0_113 br_0_113 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c113
+ bl_0_113 br_0_113 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c113
+ bl_0_113 br_0_113 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c113
+ bl_0_113 br_0_113 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c113
+ bl_0_113 br_0_113 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c113
+ bl_0_113 br_0_113 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c113
+ bl_0_113 br_0_113 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c113
+ bl_0_113 br_0_113 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c113
+ bl_0_113 br_0_113 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c113
+ bl_0_113 br_0_113 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c113
+ bl_0_113 br_0_113 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c113
+ bl_0_113 br_0_113 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c113
+ bl_0_113 br_0_113 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c113
+ bl_0_113 br_0_113 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c113
+ bl_0_113 br_0_113 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c113
+ bl_0_113 br_0_113 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c113
+ bl_0_113 br_0_113 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c113
+ bl_0_113 br_0_113 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c113
+ bl_0_113 br_0_113 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c113
+ bl_0_113 br_0_113 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c113
+ bl_0_113 br_0_113 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c113
+ bl_0_113 br_0_113 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c114
+ bl_0_114 br_0_114 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c114
+ bl_0_114 br_0_114 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c114
+ bl_0_114 br_0_114 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c114
+ bl_0_114 br_0_114 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c114
+ bl_0_114 br_0_114 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c114
+ bl_0_114 br_0_114 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c114
+ bl_0_114 br_0_114 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c114
+ bl_0_114 br_0_114 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c114
+ bl_0_114 br_0_114 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c114
+ bl_0_114 br_0_114 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c114
+ bl_0_114 br_0_114 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c114
+ bl_0_114 br_0_114 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c114
+ bl_0_114 br_0_114 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c114
+ bl_0_114 br_0_114 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c114
+ bl_0_114 br_0_114 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c114
+ bl_0_114 br_0_114 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c114
+ bl_0_114 br_0_114 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c114
+ bl_0_114 br_0_114 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c114
+ bl_0_114 br_0_114 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c114
+ bl_0_114 br_0_114 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c114
+ bl_0_114 br_0_114 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c114
+ bl_0_114 br_0_114 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c114
+ bl_0_114 br_0_114 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c114
+ bl_0_114 br_0_114 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c114
+ bl_0_114 br_0_114 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c114
+ bl_0_114 br_0_114 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c114
+ bl_0_114 br_0_114 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c114
+ bl_0_114 br_0_114 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c114
+ bl_0_114 br_0_114 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c114
+ bl_0_114 br_0_114 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c114
+ bl_0_114 br_0_114 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c114
+ bl_0_114 br_0_114 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c115
+ bl_0_115 br_0_115 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c115
+ bl_0_115 br_0_115 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c115
+ bl_0_115 br_0_115 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c115
+ bl_0_115 br_0_115 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c115
+ bl_0_115 br_0_115 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c115
+ bl_0_115 br_0_115 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c115
+ bl_0_115 br_0_115 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c115
+ bl_0_115 br_0_115 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c115
+ bl_0_115 br_0_115 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c115
+ bl_0_115 br_0_115 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c115
+ bl_0_115 br_0_115 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c115
+ bl_0_115 br_0_115 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c115
+ bl_0_115 br_0_115 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c115
+ bl_0_115 br_0_115 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c115
+ bl_0_115 br_0_115 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c115
+ bl_0_115 br_0_115 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c115
+ bl_0_115 br_0_115 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c115
+ bl_0_115 br_0_115 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c115
+ bl_0_115 br_0_115 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c115
+ bl_0_115 br_0_115 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c115
+ bl_0_115 br_0_115 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c115
+ bl_0_115 br_0_115 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c115
+ bl_0_115 br_0_115 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c115
+ bl_0_115 br_0_115 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c115
+ bl_0_115 br_0_115 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c115
+ bl_0_115 br_0_115 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c115
+ bl_0_115 br_0_115 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c115
+ bl_0_115 br_0_115 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c115
+ bl_0_115 br_0_115 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c115
+ bl_0_115 br_0_115 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c115
+ bl_0_115 br_0_115 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c115
+ bl_0_115 br_0_115 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c116
+ bl_0_116 br_0_116 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c116
+ bl_0_116 br_0_116 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c116
+ bl_0_116 br_0_116 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c116
+ bl_0_116 br_0_116 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c116
+ bl_0_116 br_0_116 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c116
+ bl_0_116 br_0_116 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c116
+ bl_0_116 br_0_116 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c116
+ bl_0_116 br_0_116 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c116
+ bl_0_116 br_0_116 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c116
+ bl_0_116 br_0_116 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c116
+ bl_0_116 br_0_116 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c116
+ bl_0_116 br_0_116 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c116
+ bl_0_116 br_0_116 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c116
+ bl_0_116 br_0_116 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c116
+ bl_0_116 br_0_116 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c116
+ bl_0_116 br_0_116 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c116
+ bl_0_116 br_0_116 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c116
+ bl_0_116 br_0_116 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c116
+ bl_0_116 br_0_116 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c116
+ bl_0_116 br_0_116 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c116
+ bl_0_116 br_0_116 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c116
+ bl_0_116 br_0_116 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c116
+ bl_0_116 br_0_116 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c116
+ bl_0_116 br_0_116 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c116
+ bl_0_116 br_0_116 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c116
+ bl_0_116 br_0_116 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c116
+ bl_0_116 br_0_116 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c116
+ bl_0_116 br_0_116 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c116
+ bl_0_116 br_0_116 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c116
+ bl_0_116 br_0_116 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c116
+ bl_0_116 br_0_116 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c116
+ bl_0_116 br_0_116 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c117
+ bl_0_117 br_0_117 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c117
+ bl_0_117 br_0_117 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c117
+ bl_0_117 br_0_117 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c117
+ bl_0_117 br_0_117 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c117
+ bl_0_117 br_0_117 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c117
+ bl_0_117 br_0_117 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c117
+ bl_0_117 br_0_117 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c117
+ bl_0_117 br_0_117 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c117
+ bl_0_117 br_0_117 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c117
+ bl_0_117 br_0_117 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c117
+ bl_0_117 br_0_117 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c117
+ bl_0_117 br_0_117 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c117
+ bl_0_117 br_0_117 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c117
+ bl_0_117 br_0_117 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c117
+ bl_0_117 br_0_117 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c117
+ bl_0_117 br_0_117 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c117
+ bl_0_117 br_0_117 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c117
+ bl_0_117 br_0_117 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c117
+ bl_0_117 br_0_117 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c117
+ bl_0_117 br_0_117 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c117
+ bl_0_117 br_0_117 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c117
+ bl_0_117 br_0_117 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c117
+ bl_0_117 br_0_117 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c117
+ bl_0_117 br_0_117 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c117
+ bl_0_117 br_0_117 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c117
+ bl_0_117 br_0_117 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c117
+ bl_0_117 br_0_117 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c117
+ bl_0_117 br_0_117 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c117
+ bl_0_117 br_0_117 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c117
+ bl_0_117 br_0_117 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c117
+ bl_0_117 br_0_117 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c117
+ bl_0_117 br_0_117 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c118
+ bl_0_118 br_0_118 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c118
+ bl_0_118 br_0_118 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c118
+ bl_0_118 br_0_118 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c118
+ bl_0_118 br_0_118 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c118
+ bl_0_118 br_0_118 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c118
+ bl_0_118 br_0_118 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c118
+ bl_0_118 br_0_118 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c118
+ bl_0_118 br_0_118 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c118
+ bl_0_118 br_0_118 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c118
+ bl_0_118 br_0_118 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c118
+ bl_0_118 br_0_118 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c118
+ bl_0_118 br_0_118 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c118
+ bl_0_118 br_0_118 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c118
+ bl_0_118 br_0_118 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c118
+ bl_0_118 br_0_118 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c118
+ bl_0_118 br_0_118 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c118
+ bl_0_118 br_0_118 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c118
+ bl_0_118 br_0_118 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c118
+ bl_0_118 br_0_118 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c118
+ bl_0_118 br_0_118 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c118
+ bl_0_118 br_0_118 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c118
+ bl_0_118 br_0_118 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c118
+ bl_0_118 br_0_118 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c118
+ bl_0_118 br_0_118 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c118
+ bl_0_118 br_0_118 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c118
+ bl_0_118 br_0_118 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c118
+ bl_0_118 br_0_118 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c118
+ bl_0_118 br_0_118 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c118
+ bl_0_118 br_0_118 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c118
+ bl_0_118 br_0_118 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c118
+ bl_0_118 br_0_118 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c118
+ bl_0_118 br_0_118 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c119
+ bl_0_119 br_0_119 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c119
+ bl_0_119 br_0_119 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c119
+ bl_0_119 br_0_119 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c119
+ bl_0_119 br_0_119 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c119
+ bl_0_119 br_0_119 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c119
+ bl_0_119 br_0_119 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c119
+ bl_0_119 br_0_119 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c119
+ bl_0_119 br_0_119 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c119
+ bl_0_119 br_0_119 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c119
+ bl_0_119 br_0_119 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c119
+ bl_0_119 br_0_119 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c119
+ bl_0_119 br_0_119 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c119
+ bl_0_119 br_0_119 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c119
+ bl_0_119 br_0_119 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c119
+ bl_0_119 br_0_119 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c119
+ bl_0_119 br_0_119 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c119
+ bl_0_119 br_0_119 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c119
+ bl_0_119 br_0_119 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c119
+ bl_0_119 br_0_119 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c119
+ bl_0_119 br_0_119 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c119
+ bl_0_119 br_0_119 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c119
+ bl_0_119 br_0_119 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c119
+ bl_0_119 br_0_119 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c119
+ bl_0_119 br_0_119 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c119
+ bl_0_119 br_0_119 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c119
+ bl_0_119 br_0_119 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c119
+ bl_0_119 br_0_119 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c119
+ bl_0_119 br_0_119 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c119
+ bl_0_119 br_0_119 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c119
+ bl_0_119 br_0_119 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c119
+ bl_0_119 br_0_119 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c119
+ bl_0_119 br_0_119 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c120
+ bl_0_120 br_0_120 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c120
+ bl_0_120 br_0_120 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c120
+ bl_0_120 br_0_120 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c120
+ bl_0_120 br_0_120 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c120
+ bl_0_120 br_0_120 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c120
+ bl_0_120 br_0_120 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c120
+ bl_0_120 br_0_120 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c120
+ bl_0_120 br_0_120 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c120
+ bl_0_120 br_0_120 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c120
+ bl_0_120 br_0_120 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c120
+ bl_0_120 br_0_120 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c120
+ bl_0_120 br_0_120 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c120
+ bl_0_120 br_0_120 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c120
+ bl_0_120 br_0_120 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c120
+ bl_0_120 br_0_120 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c120
+ bl_0_120 br_0_120 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c120
+ bl_0_120 br_0_120 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c120
+ bl_0_120 br_0_120 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c120
+ bl_0_120 br_0_120 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c120
+ bl_0_120 br_0_120 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c120
+ bl_0_120 br_0_120 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c120
+ bl_0_120 br_0_120 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c120
+ bl_0_120 br_0_120 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c120
+ bl_0_120 br_0_120 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c120
+ bl_0_120 br_0_120 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c120
+ bl_0_120 br_0_120 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c120
+ bl_0_120 br_0_120 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c120
+ bl_0_120 br_0_120 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c120
+ bl_0_120 br_0_120 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c120
+ bl_0_120 br_0_120 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c120
+ bl_0_120 br_0_120 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c120
+ bl_0_120 br_0_120 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c121
+ bl_0_121 br_0_121 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c121
+ bl_0_121 br_0_121 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c121
+ bl_0_121 br_0_121 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c121
+ bl_0_121 br_0_121 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c121
+ bl_0_121 br_0_121 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c121
+ bl_0_121 br_0_121 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c121
+ bl_0_121 br_0_121 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c121
+ bl_0_121 br_0_121 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c121
+ bl_0_121 br_0_121 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c121
+ bl_0_121 br_0_121 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c121
+ bl_0_121 br_0_121 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c121
+ bl_0_121 br_0_121 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c121
+ bl_0_121 br_0_121 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c121
+ bl_0_121 br_0_121 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c121
+ bl_0_121 br_0_121 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c121
+ bl_0_121 br_0_121 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c121
+ bl_0_121 br_0_121 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c121
+ bl_0_121 br_0_121 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c121
+ bl_0_121 br_0_121 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c121
+ bl_0_121 br_0_121 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c121
+ bl_0_121 br_0_121 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c121
+ bl_0_121 br_0_121 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c121
+ bl_0_121 br_0_121 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c121
+ bl_0_121 br_0_121 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c121
+ bl_0_121 br_0_121 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c121
+ bl_0_121 br_0_121 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c121
+ bl_0_121 br_0_121 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c121
+ bl_0_121 br_0_121 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c121
+ bl_0_121 br_0_121 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c121
+ bl_0_121 br_0_121 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c121
+ bl_0_121 br_0_121 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c121
+ bl_0_121 br_0_121 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c122
+ bl_0_122 br_0_122 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c122
+ bl_0_122 br_0_122 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c122
+ bl_0_122 br_0_122 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c122
+ bl_0_122 br_0_122 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c122
+ bl_0_122 br_0_122 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c122
+ bl_0_122 br_0_122 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c122
+ bl_0_122 br_0_122 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c122
+ bl_0_122 br_0_122 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c122
+ bl_0_122 br_0_122 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c122
+ bl_0_122 br_0_122 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c122
+ bl_0_122 br_0_122 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c122
+ bl_0_122 br_0_122 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c122
+ bl_0_122 br_0_122 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c122
+ bl_0_122 br_0_122 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c122
+ bl_0_122 br_0_122 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c122
+ bl_0_122 br_0_122 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c122
+ bl_0_122 br_0_122 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c122
+ bl_0_122 br_0_122 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c122
+ bl_0_122 br_0_122 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c122
+ bl_0_122 br_0_122 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c122
+ bl_0_122 br_0_122 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c122
+ bl_0_122 br_0_122 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c122
+ bl_0_122 br_0_122 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c122
+ bl_0_122 br_0_122 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c122
+ bl_0_122 br_0_122 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c122
+ bl_0_122 br_0_122 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c122
+ bl_0_122 br_0_122 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c122
+ bl_0_122 br_0_122 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c122
+ bl_0_122 br_0_122 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c122
+ bl_0_122 br_0_122 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c122
+ bl_0_122 br_0_122 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c122
+ bl_0_122 br_0_122 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c123
+ bl_0_123 br_0_123 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c123
+ bl_0_123 br_0_123 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c123
+ bl_0_123 br_0_123 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c123
+ bl_0_123 br_0_123 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c123
+ bl_0_123 br_0_123 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c123
+ bl_0_123 br_0_123 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c123
+ bl_0_123 br_0_123 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c123
+ bl_0_123 br_0_123 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c123
+ bl_0_123 br_0_123 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c123
+ bl_0_123 br_0_123 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c123
+ bl_0_123 br_0_123 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c123
+ bl_0_123 br_0_123 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c123
+ bl_0_123 br_0_123 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c123
+ bl_0_123 br_0_123 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c123
+ bl_0_123 br_0_123 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c123
+ bl_0_123 br_0_123 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c123
+ bl_0_123 br_0_123 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c123
+ bl_0_123 br_0_123 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c123
+ bl_0_123 br_0_123 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c123
+ bl_0_123 br_0_123 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c123
+ bl_0_123 br_0_123 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c123
+ bl_0_123 br_0_123 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c123
+ bl_0_123 br_0_123 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c123
+ bl_0_123 br_0_123 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c123
+ bl_0_123 br_0_123 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c123
+ bl_0_123 br_0_123 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c123
+ bl_0_123 br_0_123 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c123
+ bl_0_123 br_0_123 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c123
+ bl_0_123 br_0_123 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c123
+ bl_0_123 br_0_123 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c123
+ bl_0_123 br_0_123 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c123
+ bl_0_123 br_0_123 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c124
+ bl_0_124 br_0_124 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c124
+ bl_0_124 br_0_124 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c124
+ bl_0_124 br_0_124 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c124
+ bl_0_124 br_0_124 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c124
+ bl_0_124 br_0_124 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c124
+ bl_0_124 br_0_124 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c124
+ bl_0_124 br_0_124 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c124
+ bl_0_124 br_0_124 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c124
+ bl_0_124 br_0_124 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c124
+ bl_0_124 br_0_124 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c124
+ bl_0_124 br_0_124 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c124
+ bl_0_124 br_0_124 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c124
+ bl_0_124 br_0_124 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c124
+ bl_0_124 br_0_124 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c124
+ bl_0_124 br_0_124 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c124
+ bl_0_124 br_0_124 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c124
+ bl_0_124 br_0_124 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c124
+ bl_0_124 br_0_124 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c124
+ bl_0_124 br_0_124 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c124
+ bl_0_124 br_0_124 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c124
+ bl_0_124 br_0_124 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c124
+ bl_0_124 br_0_124 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c124
+ bl_0_124 br_0_124 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c124
+ bl_0_124 br_0_124 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c124
+ bl_0_124 br_0_124 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c124
+ bl_0_124 br_0_124 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c124
+ bl_0_124 br_0_124 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c124
+ bl_0_124 br_0_124 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c124
+ bl_0_124 br_0_124 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c124
+ bl_0_124 br_0_124 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c124
+ bl_0_124 br_0_124 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c124
+ bl_0_124 br_0_124 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c125
+ bl_0_125 br_0_125 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c125
+ bl_0_125 br_0_125 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c125
+ bl_0_125 br_0_125 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c125
+ bl_0_125 br_0_125 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c125
+ bl_0_125 br_0_125 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c125
+ bl_0_125 br_0_125 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c125
+ bl_0_125 br_0_125 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c125
+ bl_0_125 br_0_125 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c125
+ bl_0_125 br_0_125 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c125
+ bl_0_125 br_0_125 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c125
+ bl_0_125 br_0_125 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c125
+ bl_0_125 br_0_125 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c125
+ bl_0_125 br_0_125 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c125
+ bl_0_125 br_0_125 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c125
+ bl_0_125 br_0_125 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c125
+ bl_0_125 br_0_125 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c125
+ bl_0_125 br_0_125 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c125
+ bl_0_125 br_0_125 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c125
+ bl_0_125 br_0_125 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c125
+ bl_0_125 br_0_125 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c125
+ bl_0_125 br_0_125 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c125
+ bl_0_125 br_0_125 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c125
+ bl_0_125 br_0_125 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c125
+ bl_0_125 br_0_125 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c125
+ bl_0_125 br_0_125 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c125
+ bl_0_125 br_0_125 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c125
+ bl_0_125 br_0_125 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c125
+ bl_0_125 br_0_125 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c125
+ bl_0_125 br_0_125 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c125
+ bl_0_125 br_0_125 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c125
+ bl_0_125 br_0_125 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c125
+ bl_0_125 br_0_125 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c126
+ bl_0_126 br_0_126 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c126
+ bl_0_126 br_0_126 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c126
+ bl_0_126 br_0_126 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c126
+ bl_0_126 br_0_126 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c126
+ bl_0_126 br_0_126 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c126
+ bl_0_126 br_0_126 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c126
+ bl_0_126 br_0_126 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c126
+ bl_0_126 br_0_126 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c126
+ bl_0_126 br_0_126 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c126
+ bl_0_126 br_0_126 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c126
+ bl_0_126 br_0_126 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c126
+ bl_0_126 br_0_126 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c126
+ bl_0_126 br_0_126 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c126
+ bl_0_126 br_0_126 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c126
+ bl_0_126 br_0_126 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c126
+ bl_0_126 br_0_126 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c126
+ bl_0_126 br_0_126 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c126
+ bl_0_126 br_0_126 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c126
+ bl_0_126 br_0_126 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c126
+ bl_0_126 br_0_126 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c126
+ bl_0_126 br_0_126 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c126
+ bl_0_126 br_0_126 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c126
+ bl_0_126 br_0_126 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c126
+ bl_0_126 br_0_126 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c126
+ bl_0_126 br_0_126 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c126
+ bl_0_126 br_0_126 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c126
+ bl_0_126 br_0_126 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c126
+ bl_0_126 br_0_126 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c126
+ bl_0_126 br_0_126 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c126
+ bl_0_126 br_0_126 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c126
+ bl_0_126 br_0_126 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c126
+ bl_0_126 br_0_126 wl_0_31 vdd gnd
+ cell_1rw
Xbit_r0_c127
+ bl_0_127 br_0_127 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c127
+ bl_0_127 br_0_127 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c127
+ bl_0_127 br_0_127 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c127
+ bl_0_127 br_0_127 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c127
+ bl_0_127 br_0_127 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c127
+ bl_0_127 br_0_127 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c127
+ bl_0_127 br_0_127 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c127
+ bl_0_127 br_0_127 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c127
+ bl_0_127 br_0_127 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c127
+ bl_0_127 br_0_127 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c127
+ bl_0_127 br_0_127 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c127
+ bl_0_127 br_0_127 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c127
+ bl_0_127 br_0_127 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c127
+ bl_0_127 br_0_127 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c127
+ bl_0_127 br_0_127 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c127
+ bl_0_127 br_0_127 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r16_c127
+ bl_0_127 br_0_127 wl_0_16 vdd gnd
+ cell_1rw
Xbit_r17_c127
+ bl_0_127 br_0_127 wl_0_17 vdd gnd
+ cell_1rw
Xbit_r18_c127
+ bl_0_127 br_0_127 wl_0_18 vdd gnd
+ cell_1rw
Xbit_r19_c127
+ bl_0_127 br_0_127 wl_0_19 vdd gnd
+ cell_1rw
Xbit_r20_c127
+ bl_0_127 br_0_127 wl_0_20 vdd gnd
+ cell_1rw
Xbit_r21_c127
+ bl_0_127 br_0_127 wl_0_21 vdd gnd
+ cell_1rw
Xbit_r22_c127
+ bl_0_127 br_0_127 wl_0_22 vdd gnd
+ cell_1rw
Xbit_r23_c127
+ bl_0_127 br_0_127 wl_0_23 vdd gnd
+ cell_1rw
Xbit_r24_c127
+ bl_0_127 br_0_127 wl_0_24 vdd gnd
+ cell_1rw
Xbit_r25_c127
+ bl_0_127 br_0_127 wl_0_25 vdd gnd
+ cell_1rw
Xbit_r26_c127
+ bl_0_127 br_0_127 wl_0_26 vdd gnd
+ cell_1rw
Xbit_r27_c127
+ bl_0_127 br_0_127 wl_0_27 vdd gnd
+ cell_1rw
Xbit_r28_c127
+ bl_0_127 br_0_127 wl_0_28 vdd gnd
+ cell_1rw
Xbit_r29_c127
+ bl_0_127 br_0_127 wl_0_29 vdd gnd
+ cell_1rw
Xbit_r30_c127
+ bl_0_127 br_0_127 wl_0_30 vdd gnd
+ cell_1rw
Xbit_r31_c127
+ bl_0_127 br_0_127 wl_0_31 vdd gnd
+ cell_1rw
.ENDS mp3_data_array_2_bitcell_array

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


.SUBCKT mp3_data_array_2_replica_column
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 vdd
+ gnd
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
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
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
Xrbc_17
+ bl_0_0 br_0_0 wl_0_17 vdd gnd
+ replica_cell_1rw
Xrbc_18
+ bl_0_0 br_0_0 wl_0_18 vdd gnd
+ replica_cell_1rw
Xrbc_19
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ replica_cell_1rw
Xrbc_20
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ replica_cell_1rw
Xrbc_21
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ replica_cell_1rw
Xrbc_22
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ replica_cell_1rw
Xrbc_23
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ replica_cell_1rw
Xrbc_24
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ replica_cell_1rw
Xrbc_25
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ replica_cell_1rw
Xrbc_26
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ replica_cell_1rw
Xrbc_27
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ replica_cell_1rw
Xrbc_28
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ replica_cell_1rw
Xrbc_29
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ replica_cell_1rw
Xrbc_30
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ replica_cell_1rw
Xrbc_31
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ replica_cell_1rw
Xrbc_32
+ bl_0_0 br_0_0 wl_0_32 vdd gnd
+ replica_cell_1rw
.ENDS mp3_data_array_2_replica_column

.SUBCKT mp3_data_array_2_dummy_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33
+ bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36 bl_0_37 br_0_37
+ bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40 bl_0_41 br_0_41
+ bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44 bl_0_45 br_0_45
+ bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48 bl_0_49 br_0_49
+ bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52 bl_0_53 br_0_53
+ bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56 bl_0_57 br_0_57
+ bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60 bl_0_61 br_0_61
+ bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64 bl_0_65 br_0_65
+ bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68 bl_0_69 br_0_69
+ bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72 bl_0_73 br_0_73
+ bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76 bl_0_77 br_0_77
+ bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80 bl_0_81 br_0_81
+ bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84 bl_0_85 br_0_85
+ bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88 bl_0_89 br_0_89
+ bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92 bl_0_93 br_0_93
+ bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96 bl_0_97 br_0_97
+ bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100 bl_0_101 br_0_101
+ bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104 br_0_104 bl_0_105
+ br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107 bl_0_108 br_0_108
+ bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111 br_0_111 bl_0_112
+ br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114 bl_0_115 br_0_115
+ bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118 br_0_118 bl_0_119
+ br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121 bl_0_122 br_0_122
+ bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125 br_0_125 bl_0_126
+ br_0_126 bl_0_127 br_0_127 wl_0_0 vdd gnd
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
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* INOUT : bl_0_34 
* INOUT : br_0_34 
* INOUT : bl_0_35 
* INOUT : br_0_35 
* INOUT : bl_0_36 
* INOUT : br_0_36 
* INOUT : bl_0_37 
* INOUT : br_0_37 
* INOUT : bl_0_38 
* INOUT : br_0_38 
* INOUT : bl_0_39 
* INOUT : br_0_39 
* INOUT : bl_0_40 
* INOUT : br_0_40 
* INOUT : bl_0_41 
* INOUT : br_0_41 
* INOUT : bl_0_42 
* INOUT : br_0_42 
* INOUT : bl_0_43 
* INOUT : br_0_43 
* INOUT : bl_0_44 
* INOUT : br_0_44 
* INOUT : bl_0_45 
* INOUT : br_0_45 
* INOUT : bl_0_46 
* INOUT : br_0_46 
* INOUT : bl_0_47 
* INOUT : br_0_47 
* INOUT : bl_0_48 
* INOUT : br_0_48 
* INOUT : bl_0_49 
* INOUT : br_0_49 
* INOUT : bl_0_50 
* INOUT : br_0_50 
* INOUT : bl_0_51 
* INOUT : br_0_51 
* INOUT : bl_0_52 
* INOUT : br_0_52 
* INOUT : bl_0_53 
* INOUT : br_0_53 
* INOUT : bl_0_54 
* INOUT : br_0_54 
* INOUT : bl_0_55 
* INOUT : br_0_55 
* INOUT : bl_0_56 
* INOUT : br_0_56 
* INOUT : bl_0_57 
* INOUT : br_0_57 
* INOUT : bl_0_58 
* INOUT : br_0_58 
* INOUT : bl_0_59 
* INOUT : br_0_59 
* INOUT : bl_0_60 
* INOUT : br_0_60 
* INOUT : bl_0_61 
* INOUT : br_0_61 
* INOUT : bl_0_62 
* INOUT : br_0_62 
* INOUT : bl_0_63 
* INOUT : br_0_63 
* INOUT : bl_0_64 
* INOUT : br_0_64 
* INOUT : bl_0_65 
* INOUT : br_0_65 
* INOUT : bl_0_66 
* INOUT : br_0_66 
* INOUT : bl_0_67 
* INOUT : br_0_67 
* INOUT : bl_0_68 
* INOUT : br_0_68 
* INOUT : bl_0_69 
* INOUT : br_0_69 
* INOUT : bl_0_70 
* INOUT : br_0_70 
* INOUT : bl_0_71 
* INOUT : br_0_71 
* INOUT : bl_0_72 
* INOUT : br_0_72 
* INOUT : bl_0_73 
* INOUT : br_0_73 
* INOUT : bl_0_74 
* INOUT : br_0_74 
* INOUT : bl_0_75 
* INOUT : br_0_75 
* INOUT : bl_0_76 
* INOUT : br_0_76 
* INOUT : bl_0_77 
* INOUT : br_0_77 
* INOUT : bl_0_78 
* INOUT : br_0_78 
* INOUT : bl_0_79 
* INOUT : br_0_79 
* INOUT : bl_0_80 
* INOUT : br_0_80 
* INOUT : bl_0_81 
* INOUT : br_0_81 
* INOUT : bl_0_82 
* INOUT : br_0_82 
* INOUT : bl_0_83 
* INOUT : br_0_83 
* INOUT : bl_0_84 
* INOUT : br_0_84 
* INOUT : bl_0_85 
* INOUT : br_0_85 
* INOUT : bl_0_86 
* INOUT : br_0_86 
* INOUT : bl_0_87 
* INOUT : br_0_87 
* INOUT : bl_0_88 
* INOUT : br_0_88 
* INOUT : bl_0_89 
* INOUT : br_0_89 
* INOUT : bl_0_90 
* INOUT : br_0_90 
* INOUT : bl_0_91 
* INOUT : br_0_91 
* INOUT : bl_0_92 
* INOUT : br_0_92 
* INOUT : bl_0_93 
* INOUT : br_0_93 
* INOUT : bl_0_94 
* INOUT : br_0_94 
* INOUT : bl_0_95 
* INOUT : br_0_95 
* INOUT : bl_0_96 
* INOUT : br_0_96 
* INOUT : bl_0_97 
* INOUT : br_0_97 
* INOUT : bl_0_98 
* INOUT : br_0_98 
* INOUT : bl_0_99 
* INOUT : br_0_99 
* INOUT : bl_0_100 
* INOUT : br_0_100 
* INOUT : bl_0_101 
* INOUT : br_0_101 
* INOUT : bl_0_102 
* INOUT : br_0_102 
* INOUT : bl_0_103 
* INOUT : br_0_103 
* INOUT : bl_0_104 
* INOUT : br_0_104 
* INOUT : bl_0_105 
* INOUT : br_0_105 
* INOUT : bl_0_106 
* INOUT : br_0_106 
* INOUT : bl_0_107 
* INOUT : br_0_107 
* INOUT : bl_0_108 
* INOUT : br_0_108 
* INOUT : bl_0_109 
* INOUT : br_0_109 
* INOUT : bl_0_110 
* INOUT : br_0_110 
* INOUT : bl_0_111 
* INOUT : br_0_111 
* INOUT : bl_0_112 
* INOUT : br_0_112 
* INOUT : bl_0_113 
* INOUT : br_0_113 
* INOUT : bl_0_114 
* INOUT : br_0_114 
* INOUT : bl_0_115 
* INOUT : br_0_115 
* INOUT : bl_0_116 
* INOUT : br_0_116 
* INOUT : bl_0_117 
* INOUT : br_0_117 
* INOUT : bl_0_118 
* INOUT : br_0_118 
* INOUT : bl_0_119 
* INOUT : br_0_119 
* INOUT : bl_0_120 
* INOUT : br_0_120 
* INOUT : bl_0_121 
* INOUT : br_0_121 
* INOUT : bl_0_122 
* INOUT : br_0_122 
* INOUT : bl_0_123 
* INOUT : br_0_123 
* INOUT : bl_0_124 
* INOUT : br_0_124 
* INOUT : bl_0_125 
* INOUT : br_0_125 
* INOUT : bl_0_126 
* INOUT : br_0_126 
* INOUT : bl_0_127 
* INOUT : br_0_127 
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
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c32
+ bl_0_32 br_0_32 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c33
+ bl_0_33 br_0_33 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c34
+ bl_0_34 br_0_34 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c35
+ bl_0_35 br_0_35 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c36
+ bl_0_36 br_0_36 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c37
+ bl_0_37 br_0_37 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c38
+ bl_0_38 br_0_38 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c39
+ bl_0_39 br_0_39 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c40
+ bl_0_40 br_0_40 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c41
+ bl_0_41 br_0_41 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c42
+ bl_0_42 br_0_42 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c43
+ bl_0_43 br_0_43 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c44
+ bl_0_44 br_0_44 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c45
+ bl_0_45 br_0_45 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c46
+ bl_0_46 br_0_46 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c47
+ bl_0_47 br_0_47 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c48
+ bl_0_48 br_0_48 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c49
+ bl_0_49 br_0_49 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c50
+ bl_0_50 br_0_50 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c51
+ bl_0_51 br_0_51 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c52
+ bl_0_52 br_0_52 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c53
+ bl_0_53 br_0_53 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c54
+ bl_0_54 br_0_54 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c55
+ bl_0_55 br_0_55 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c56
+ bl_0_56 br_0_56 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c57
+ bl_0_57 br_0_57 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c58
+ bl_0_58 br_0_58 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c59
+ bl_0_59 br_0_59 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c60
+ bl_0_60 br_0_60 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c61
+ bl_0_61 br_0_61 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c62
+ bl_0_62 br_0_62 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c63
+ bl_0_63 br_0_63 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c64
+ bl_0_64 br_0_64 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c65
+ bl_0_65 br_0_65 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c66
+ bl_0_66 br_0_66 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c67
+ bl_0_67 br_0_67 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c68
+ bl_0_68 br_0_68 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c69
+ bl_0_69 br_0_69 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c70
+ bl_0_70 br_0_70 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c71
+ bl_0_71 br_0_71 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c72
+ bl_0_72 br_0_72 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c73
+ bl_0_73 br_0_73 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c74
+ bl_0_74 br_0_74 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c75
+ bl_0_75 br_0_75 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c76
+ bl_0_76 br_0_76 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c77
+ bl_0_77 br_0_77 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c78
+ bl_0_78 br_0_78 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c79
+ bl_0_79 br_0_79 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c80
+ bl_0_80 br_0_80 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c81
+ bl_0_81 br_0_81 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c82
+ bl_0_82 br_0_82 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c83
+ bl_0_83 br_0_83 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c84
+ bl_0_84 br_0_84 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c85
+ bl_0_85 br_0_85 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c86
+ bl_0_86 br_0_86 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c87
+ bl_0_87 br_0_87 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c88
+ bl_0_88 br_0_88 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c89
+ bl_0_89 br_0_89 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c90
+ bl_0_90 br_0_90 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c91
+ bl_0_91 br_0_91 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c92
+ bl_0_92 br_0_92 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c93
+ bl_0_93 br_0_93 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c94
+ bl_0_94 br_0_94 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c95
+ bl_0_95 br_0_95 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c96
+ bl_0_96 br_0_96 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c97
+ bl_0_97 br_0_97 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c98
+ bl_0_98 br_0_98 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c99
+ bl_0_99 br_0_99 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c100
+ bl_0_100 br_0_100 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c101
+ bl_0_101 br_0_101 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c102
+ bl_0_102 br_0_102 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c103
+ bl_0_103 br_0_103 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c104
+ bl_0_104 br_0_104 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c105
+ bl_0_105 br_0_105 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c106
+ bl_0_106 br_0_106 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c107
+ bl_0_107 br_0_107 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c108
+ bl_0_108 br_0_108 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c109
+ bl_0_109 br_0_109 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c110
+ bl_0_110 br_0_110 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c111
+ bl_0_111 br_0_111 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c112
+ bl_0_112 br_0_112 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c113
+ bl_0_113 br_0_113 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c114
+ bl_0_114 br_0_114 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c115
+ bl_0_115 br_0_115 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c116
+ bl_0_116 br_0_116 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c117
+ bl_0_117 br_0_117 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c118
+ bl_0_118 br_0_118 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c119
+ bl_0_119 br_0_119 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c120
+ bl_0_120 br_0_120 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c121
+ bl_0_121 br_0_121 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c122
+ bl_0_122 br_0_122 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c123
+ bl_0_123 br_0_123 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c124
+ bl_0_124 br_0_124 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c125
+ bl_0_125 br_0_125 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c126
+ bl_0_126 br_0_126 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c127
+ bl_0_127 br_0_127 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_2_dummy_array

.SUBCKT mp3_data_array_2_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72
+ bl_0_73 br_0_73 bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76
+ bl_0_77 br_0_77 bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80
+ bl_0_81 br_0_81 bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84
+ bl_0_85 br_0_85 bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88
+ bl_0_89 br_0_89 bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92
+ bl_0_93 br_0_93 bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96
+ bl_0_97 br_0_97 bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100
+ bl_0_101 br_0_101 bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104
+ br_0_104 bl_0_105 br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107
+ bl_0_108 br_0_108 bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111
+ br_0_111 bl_0_112 br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114
+ bl_0_115 br_0_115 bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118
+ br_0_118 bl_0_119 br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121
+ bl_0_122 br_0_122 bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
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
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* INOUT : bl_0_34 
* INOUT : br_0_34 
* INOUT : bl_0_35 
* INOUT : br_0_35 
* INOUT : bl_0_36 
* INOUT : br_0_36 
* INOUT : bl_0_37 
* INOUT : br_0_37 
* INOUT : bl_0_38 
* INOUT : br_0_38 
* INOUT : bl_0_39 
* INOUT : br_0_39 
* INOUT : bl_0_40 
* INOUT : br_0_40 
* INOUT : bl_0_41 
* INOUT : br_0_41 
* INOUT : bl_0_42 
* INOUT : br_0_42 
* INOUT : bl_0_43 
* INOUT : br_0_43 
* INOUT : bl_0_44 
* INOUT : br_0_44 
* INOUT : bl_0_45 
* INOUT : br_0_45 
* INOUT : bl_0_46 
* INOUT : br_0_46 
* INOUT : bl_0_47 
* INOUT : br_0_47 
* INOUT : bl_0_48 
* INOUT : br_0_48 
* INOUT : bl_0_49 
* INOUT : br_0_49 
* INOUT : bl_0_50 
* INOUT : br_0_50 
* INOUT : bl_0_51 
* INOUT : br_0_51 
* INOUT : bl_0_52 
* INOUT : br_0_52 
* INOUT : bl_0_53 
* INOUT : br_0_53 
* INOUT : bl_0_54 
* INOUT : br_0_54 
* INOUT : bl_0_55 
* INOUT : br_0_55 
* INOUT : bl_0_56 
* INOUT : br_0_56 
* INOUT : bl_0_57 
* INOUT : br_0_57 
* INOUT : bl_0_58 
* INOUT : br_0_58 
* INOUT : bl_0_59 
* INOUT : br_0_59 
* INOUT : bl_0_60 
* INOUT : br_0_60 
* INOUT : bl_0_61 
* INOUT : br_0_61 
* INOUT : bl_0_62 
* INOUT : br_0_62 
* INOUT : bl_0_63 
* INOUT : br_0_63 
* INOUT : bl_0_64 
* INOUT : br_0_64 
* INOUT : bl_0_65 
* INOUT : br_0_65 
* INOUT : bl_0_66 
* INOUT : br_0_66 
* INOUT : bl_0_67 
* INOUT : br_0_67 
* INOUT : bl_0_68 
* INOUT : br_0_68 
* INOUT : bl_0_69 
* INOUT : br_0_69 
* INOUT : bl_0_70 
* INOUT : br_0_70 
* INOUT : bl_0_71 
* INOUT : br_0_71 
* INOUT : bl_0_72 
* INOUT : br_0_72 
* INOUT : bl_0_73 
* INOUT : br_0_73 
* INOUT : bl_0_74 
* INOUT : br_0_74 
* INOUT : bl_0_75 
* INOUT : br_0_75 
* INOUT : bl_0_76 
* INOUT : br_0_76 
* INOUT : bl_0_77 
* INOUT : br_0_77 
* INOUT : bl_0_78 
* INOUT : br_0_78 
* INOUT : bl_0_79 
* INOUT : br_0_79 
* INOUT : bl_0_80 
* INOUT : br_0_80 
* INOUT : bl_0_81 
* INOUT : br_0_81 
* INOUT : bl_0_82 
* INOUT : br_0_82 
* INOUT : bl_0_83 
* INOUT : br_0_83 
* INOUT : bl_0_84 
* INOUT : br_0_84 
* INOUT : bl_0_85 
* INOUT : br_0_85 
* INOUT : bl_0_86 
* INOUT : br_0_86 
* INOUT : bl_0_87 
* INOUT : br_0_87 
* INOUT : bl_0_88 
* INOUT : br_0_88 
* INOUT : bl_0_89 
* INOUT : br_0_89 
* INOUT : bl_0_90 
* INOUT : br_0_90 
* INOUT : bl_0_91 
* INOUT : br_0_91 
* INOUT : bl_0_92 
* INOUT : br_0_92 
* INOUT : bl_0_93 
* INOUT : br_0_93 
* INOUT : bl_0_94 
* INOUT : br_0_94 
* INOUT : bl_0_95 
* INOUT : br_0_95 
* INOUT : bl_0_96 
* INOUT : br_0_96 
* INOUT : bl_0_97 
* INOUT : br_0_97 
* INOUT : bl_0_98 
* INOUT : br_0_98 
* INOUT : bl_0_99 
* INOUT : br_0_99 
* INOUT : bl_0_100 
* INOUT : br_0_100 
* INOUT : bl_0_101 
* INOUT : br_0_101 
* INOUT : bl_0_102 
* INOUT : br_0_102 
* INOUT : bl_0_103 
* INOUT : br_0_103 
* INOUT : bl_0_104 
* INOUT : br_0_104 
* INOUT : bl_0_105 
* INOUT : br_0_105 
* INOUT : bl_0_106 
* INOUT : br_0_106 
* INOUT : bl_0_107 
* INOUT : br_0_107 
* INOUT : bl_0_108 
* INOUT : br_0_108 
* INOUT : bl_0_109 
* INOUT : br_0_109 
* INOUT : bl_0_110 
* INOUT : br_0_110 
* INOUT : bl_0_111 
* INOUT : br_0_111 
* INOUT : bl_0_112 
* INOUT : br_0_112 
* INOUT : bl_0_113 
* INOUT : br_0_113 
* INOUT : bl_0_114 
* INOUT : br_0_114 
* INOUT : bl_0_115 
* INOUT : br_0_115 
* INOUT : bl_0_116 
* INOUT : br_0_116 
* INOUT : bl_0_117 
* INOUT : br_0_117 
* INOUT : bl_0_118 
* INOUT : br_0_118 
* INOUT : bl_0_119 
* INOUT : br_0_119 
* INOUT : bl_0_120 
* INOUT : br_0_120 
* INOUT : bl_0_121 
* INOUT : br_0_121 
* INOUT : bl_0_122 
* INOUT : br_0_122 
* INOUT : bl_0_123 
* INOUT : br_0_123 
* INOUT : bl_0_124 
* INOUT : br_0_124 
* INOUT : bl_0_125 
* INOUT : br_0_125 
* INOUT : bl_0_126 
* INOUT : br_0_126 
* INOUT : bl_0_127 
* INOUT : br_0_127 
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
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 128
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xbitcell_array
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33
+ bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36 bl_0_37 br_0_37
+ bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40 bl_0_41 br_0_41
+ bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44 bl_0_45 br_0_45
+ bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48 bl_0_49 br_0_49
+ bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52 bl_0_53 br_0_53
+ bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56 bl_0_57 br_0_57
+ bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60 bl_0_61 br_0_61
+ bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64 bl_0_65 br_0_65
+ bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68 bl_0_69 br_0_69
+ bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72 bl_0_73 br_0_73
+ bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76 bl_0_77 br_0_77
+ bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80 bl_0_81 br_0_81
+ bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84 bl_0_85 br_0_85
+ bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88 bl_0_89 br_0_89
+ bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92 bl_0_93 br_0_93
+ bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96 bl_0_97 br_0_97
+ bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100 bl_0_101 br_0_101
+ bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104 br_0_104 bl_0_105
+ br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107 bl_0_108 br_0_108
+ bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111 br_0_111 bl_0_112
+ br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114 bl_0_115 br_0_115
+ bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118 br_0_118 bl_0_119
+ br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121 bl_0_122 br_0_122
+ bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125 br_0_125 bl_0_126
+ br_0_126 bl_0_127 br_0_127 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5
+ wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14
+ wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22
+ wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30
+ wl_0_31 vdd gnd
+ mp3_data_array_2_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_br_0_0 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21
+ wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29
+ wl_0_30 wl_0_31 vdd gnd
+ mp3_data_array_2_replica_column
Xdummy_row_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33
+ bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36 bl_0_37 br_0_37
+ bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40 bl_0_41 br_0_41
+ bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44 bl_0_45 br_0_45
+ bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48 bl_0_49 br_0_49
+ bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52 bl_0_53 br_0_53
+ bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56 bl_0_57 br_0_57
+ bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60 bl_0_61 br_0_61
+ bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64 bl_0_65 br_0_65
+ bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68 bl_0_69 br_0_69
+ bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72 bl_0_73 br_0_73
+ bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76 bl_0_77 br_0_77
+ bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80 bl_0_81 br_0_81
+ bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84 bl_0_85 br_0_85
+ bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88 bl_0_89 br_0_89
+ bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92 bl_0_93 br_0_93
+ bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96 bl_0_97 br_0_97
+ bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100 bl_0_101 br_0_101
+ bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104 br_0_104 bl_0_105
+ br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107 bl_0_108 br_0_108
+ bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111 br_0_111 bl_0_112
+ br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114 bl_0_115 br_0_115
+ bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118 br_0_118 bl_0_119
+ br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121 bl_0_122 br_0_122
+ bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125 br_0_125 bl_0_126
+ br_0_126 bl_0_127 br_0_127 rbl_wl_0_0 vdd gnd
+ mp3_data_array_2_dummy_array
.ENDS mp3_data_array_2_replica_bitcell_array

.SUBCKT mp3_data_array_2_dummy_array_0
+ bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3 br_0_3 bl_0_4 br_0_4
+ bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8 br_0_8 bl_0_9 br_0_9
+ bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12 bl_0_13 br_0_13
+ bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16 bl_0_17 br_0_17
+ bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20 bl_0_21 br_0_21
+ bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24 bl_0_25 br_0_25
+ bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28 bl_0_29 br_0_29
+ bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32 bl_0_33 br_0_33
+ bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36 bl_0_37 br_0_37
+ bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40 bl_0_41 br_0_41
+ bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44 bl_0_45 br_0_45
+ bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48 bl_0_49 br_0_49
+ bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52 bl_0_53 br_0_53
+ bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56 bl_0_57 br_0_57
+ bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60 bl_0_61 br_0_61
+ bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64 bl_0_65 br_0_65
+ bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68 bl_0_69 br_0_69
+ bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72 bl_0_73 br_0_73
+ bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76 bl_0_77 br_0_77
+ bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80 bl_0_81 br_0_81
+ bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84 bl_0_85 br_0_85
+ bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88 bl_0_89 br_0_89
+ bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92 bl_0_93 br_0_93
+ bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96 bl_0_97 br_0_97
+ bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100 bl_0_101 br_0_101
+ bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104 br_0_104 bl_0_105
+ br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107 bl_0_108 br_0_108
+ bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111 br_0_111 bl_0_112
+ br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114 bl_0_115 br_0_115
+ bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118 br_0_118 bl_0_119
+ br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121 bl_0_122 br_0_122
+ bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125 br_0_125 bl_0_126
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 wl_0_0 vdd gnd
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
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* INOUT : bl_0_34 
* INOUT : br_0_34 
* INOUT : bl_0_35 
* INOUT : br_0_35 
* INOUT : bl_0_36 
* INOUT : br_0_36 
* INOUT : bl_0_37 
* INOUT : br_0_37 
* INOUT : bl_0_38 
* INOUT : br_0_38 
* INOUT : bl_0_39 
* INOUT : br_0_39 
* INOUT : bl_0_40 
* INOUT : br_0_40 
* INOUT : bl_0_41 
* INOUT : br_0_41 
* INOUT : bl_0_42 
* INOUT : br_0_42 
* INOUT : bl_0_43 
* INOUT : br_0_43 
* INOUT : bl_0_44 
* INOUT : br_0_44 
* INOUT : bl_0_45 
* INOUT : br_0_45 
* INOUT : bl_0_46 
* INOUT : br_0_46 
* INOUT : bl_0_47 
* INOUT : br_0_47 
* INOUT : bl_0_48 
* INOUT : br_0_48 
* INOUT : bl_0_49 
* INOUT : br_0_49 
* INOUT : bl_0_50 
* INOUT : br_0_50 
* INOUT : bl_0_51 
* INOUT : br_0_51 
* INOUT : bl_0_52 
* INOUT : br_0_52 
* INOUT : bl_0_53 
* INOUT : br_0_53 
* INOUT : bl_0_54 
* INOUT : br_0_54 
* INOUT : bl_0_55 
* INOUT : br_0_55 
* INOUT : bl_0_56 
* INOUT : br_0_56 
* INOUT : bl_0_57 
* INOUT : br_0_57 
* INOUT : bl_0_58 
* INOUT : br_0_58 
* INOUT : bl_0_59 
* INOUT : br_0_59 
* INOUT : bl_0_60 
* INOUT : br_0_60 
* INOUT : bl_0_61 
* INOUT : br_0_61 
* INOUT : bl_0_62 
* INOUT : br_0_62 
* INOUT : bl_0_63 
* INOUT : br_0_63 
* INOUT : bl_0_64 
* INOUT : br_0_64 
* INOUT : bl_0_65 
* INOUT : br_0_65 
* INOUT : bl_0_66 
* INOUT : br_0_66 
* INOUT : bl_0_67 
* INOUT : br_0_67 
* INOUT : bl_0_68 
* INOUT : br_0_68 
* INOUT : bl_0_69 
* INOUT : br_0_69 
* INOUT : bl_0_70 
* INOUT : br_0_70 
* INOUT : bl_0_71 
* INOUT : br_0_71 
* INOUT : bl_0_72 
* INOUT : br_0_72 
* INOUT : bl_0_73 
* INOUT : br_0_73 
* INOUT : bl_0_74 
* INOUT : br_0_74 
* INOUT : bl_0_75 
* INOUT : br_0_75 
* INOUT : bl_0_76 
* INOUT : br_0_76 
* INOUT : bl_0_77 
* INOUT : br_0_77 
* INOUT : bl_0_78 
* INOUT : br_0_78 
* INOUT : bl_0_79 
* INOUT : br_0_79 
* INOUT : bl_0_80 
* INOUT : br_0_80 
* INOUT : bl_0_81 
* INOUT : br_0_81 
* INOUT : bl_0_82 
* INOUT : br_0_82 
* INOUT : bl_0_83 
* INOUT : br_0_83 
* INOUT : bl_0_84 
* INOUT : br_0_84 
* INOUT : bl_0_85 
* INOUT : br_0_85 
* INOUT : bl_0_86 
* INOUT : br_0_86 
* INOUT : bl_0_87 
* INOUT : br_0_87 
* INOUT : bl_0_88 
* INOUT : br_0_88 
* INOUT : bl_0_89 
* INOUT : br_0_89 
* INOUT : bl_0_90 
* INOUT : br_0_90 
* INOUT : bl_0_91 
* INOUT : br_0_91 
* INOUT : bl_0_92 
* INOUT : br_0_92 
* INOUT : bl_0_93 
* INOUT : br_0_93 
* INOUT : bl_0_94 
* INOUT : br_0_94 
* INOUT : bl_0_95 
* INOUT : br_0_95 
* INOUT : bl_0_96 
* INOUT : br_0_96 
* INOUT : bl_0_97 
* INOUT : br_0_97 
* INOUT : bl_0_98 
* INOUT : br_0_98 
* INOUT : bl_0_99 
* INOUT : br_0_99 
* INOUT : bl_0_100 
* INOUT : br_0_100 
* INOUT : bl_0_101 
* INOUT : br_0_101 
* INOUT : bl_0_102 
* INOUT : br_0_102 
* INOUT : bl_0_103 
* INOUT : br_0_103 
* INOUT : bl_0_104 
* INOUT : br_0_104 
* INOUT : bl_0_105 
* INOUT : br_0_105 
* INOUT : bl_0_106 
* INOUT : br_0_106 
* INOUT : bl_0_107 
* INOUT : br_0_107 
* INOUT : bl_0_108 
* INOUT : br_0_108 
* INOUT : bl_0_109 
* INOUT : br_0_109 
* INOUT : bl_0_110 
* INOUT : br_0_110 
* INOUT : bl_0_111 
* INOUT : br_0_111 
* INOUT : bl_0_112 
* INOUT : br_0_112 
* INOUT : bl_0_113 
* INOUT : br_0_113 
* INOUT : bl_0_114 
* INOUT : br_0_114 
* INOUT : bl_0_115 
* INOUT : br_0_115 
* INOUT : bl_0_116 
* INOUT : br_0_116 
* INOUT : bl_0_117 
* INOUT : br_0_117 
* INOUT : bl_0_118 
* INOUT : br_0_118 
* INOUT : bl_0_119 
* INOUT : br_0_119 
* INOUT : bl_0_120 
* INOUT : br_0_120 
* INOUT : bl_0_121 
* INOUT : br_0_121 
* INOUT : bl_0_122 
* INOUT : br_0_122 
* INOUT : bl_0_123 
* INOUT : br_0_123 
* INOUT : bl_0_124 
* INOUT : br_0_124 
* INOUT : bl_0_125 
* INOUT : br_0_125 
* INOUT : bl_0_126 
* INOUT : br_0_126 
* INOUT : bl_0_127 
* INOUT : br_0_127 
* INOUT : bl_0_128 
* INOUT : br_0_128 
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
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c32
+ bl_0_32 br_0_32 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c33
+ bl_0_33 br_0_33 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c34
+ bl_0_34 br_0_34 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c35
+ bl_0_35 br_0_35 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c36
+ bl_0_36 br_0_36 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c37
+ bl_0_37 br_0_37 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c38
+ bl_0_38 br_0_38 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c39
+ bl_0_39 br_0_39 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c40
+ bl_0_40 br_0_40 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c41
+ bl_0_41 br_0_41 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c42
+ bl_0_42 br_0_42 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c43
+ bl_0_43 br_0_43 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c44
+ bl_0_44 br_0_44 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c45
+ bl_0_45 br_0_45 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c46
+ bl_0_46 br_0_46 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c47
+ bl_0_47 br_0_47 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c48
+ bl_0_48 br_0_48 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c49
+ bl_0_49 br_0_49 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c50
+ bl_0_50 br_0_50 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c51
+ bl_0_51 br_0_51 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c52
+ bl_0_52 br_0_52 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c53
+ bl_0_53 br_0_53 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c54
+ bl_0_54 br_0_54 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c55
+ bl_0_55 br_0_55 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c56
+ bl_0_56 br_0_56 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c57
+ bl_0_57 br_0_57 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c58
+ bl_0_58 br_0_58 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c59
+ bl_0_59 br_0_59 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c60
+ bl_0_60 br_0_60 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c61
+ bl_0_61 br_0_61 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c62
+ bl_0_62 br_0_62 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c63
+ bl_0_63 br_0_63 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c64
+ bl_0_64 br_0_64 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c65
+ bl_0_65 br_0_65 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c66
+ bl_0_66 br_0_66 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c67
+ bl_0_67 br_0_67 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c68
+ bl_0_68 br_0_68 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c69
+ bl_0_69 br_0_69 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c70
+ bl_0_70 br_0_70 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c71
+ bl_0_71 br_0_71 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c72
+ bl_0_72 br_0_72 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c73
+ bl_0_73 br_0_73 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c74
+ bl_0_74 br_0_74 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c75
+ bl_0_75 br_0_75 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c76
+ bl_0_76 br_0_76 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c77
+ bl_0_77 br_0_77 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c78
+ bl_0_78 br_0_78 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c79
+ bl_0_79 br_0_79 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c80
+ bl_0_80 br_0_80 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c81
+ bl_0_81 br_0_81 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c82
+ bl_0_82 br_0_82 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c83
+ bl_0_83 br_0_83 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c84
+ bl_0_84 br_0_84 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c85
+ bl_0_85 br_0_85 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c86
+ bl_0_86 br_0_86 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c87
+ bl_0_87 br_0_87 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c88
+ bl_0_88 br_0_88 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c89
+ bl_0_89 br_0_89 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c90
+ bl_0_90 br_0_90 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c91
+ bl_0_91 br_0_91 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c92
+ bl_0_92 br_0_92 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c93
+ bl_0_93 br_0_93 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c94
+ bl_0_94 br_0_94 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c95
+ bl_0_95 br_0_95 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c96
+ bl_0_96 br_0_96 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c97
+ bl_0_97 br_0_97 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c98
+ bl_0_98 br_0_98 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c99
+ bl_0_99 br_0_99 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c100
+ bl_0_100 br_0_100 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c101
+ bl_0_101 br_0_101 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c102
+ bl_0_102 br_0_102 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c103
+ bl_0_103 br_0_103 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c104
+ bl_0_104 br_0_104 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c105
+ bl_0_105 br_0_105 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c106
+ bl_0_106 br_0_106 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c107
+ bl_0_107 br_0_107 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c108
+ bl_0_108 br_0_108 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c109
+ bl_0_109 br_0_109 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c110
+ bl_0_110 br_0_110 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c111
+ bl_0_111 br_0_111 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c112
+ bl_0_112 br_0_112 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c113
+ bl_0_113 br_0_113 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c114
+ bl_0_114 br_0_114 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c115
+ bl_0_115 br_0_115 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c116
+ bl_0_116 br_0_116 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c117
+ bl_0_117 br_0_117 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c118
+ bl_0_118 br_0_118 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c119
+ bl_0_119 br_0_119 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c120
+ bl_0_120 br_0_120 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c121
+ bl_0_121 br_0_121 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c122
+ bl_0_122 br_0_122 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c123
+ bl_0_123 br_0_123 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c124
+ bl_0_124 br_0_124 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c125
+ bl_0_125 br_0_125 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c126
+ bl_0_126 br_0_126 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c127
+ bl_0_127 br_0_127 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c128
+ bl_0_128 br_0_128 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_2_dummy_array_0

.SUBCKT mp3_data_array_2_dummy_array_3
+ bl_0_0 br_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7
+ wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16
+ wl_0_17 wl_0_18 wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24
+ wl_0_25 wl_0_26 wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32
+ wl_0_33 wl_0_34 vdd gnd
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
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* INPUT : wl_0_32 
* INPUT : wl_0_33 
* INPUT : wl_0_34 
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
Xbit_r19_c0
+ bl_0_0 br_0_0 wl_0_19 vdd gnd
+ dummy_cell_1rw
Xbit_r20_c0
+ bl_0_0 br_0_0 wl_0_20 vdd gnd
+ dummy_cell_1rw
Xbit_r21_c0
+ bl_0_0 br_0_0 wl_0_21 vdd gnd
+ dummy_cell_1rw
Xbit_r22_c0
+ bl_0_0 br_0_0 wl_0_22 vdd gnd
+ dummy_cell_1rw
Xbit_r23_c0
+ bl_0_0 br_0_0 wl_0_23 vdd gnd
+ dummy_cell_1rw
Xbit_r24_c0
+ bl_0_0 br_0_0 wl_0_24 vdd gnd
+ dummy_cell_1rw
Xbit_r25_c0
+ bl_0_0 br_0_0 wl_0_25 vdd gnd
+ dummy_cell_1rw
Xbit_r26_c0
+ bl_0_0 br_0_0 wl_0_26 vdd gnd
+ dummy_cell_1rw
Xbit_r27_c0
+ bl_0_0 br_0_0 wl_0_27 vdd gnd
+ dummy_cell_1rw
Xbit_r28_c0
+ bl_0_0 br_0_0 wl_0_28 vdd gnd
+ dummy_cell_1rw
Xbit_r29_c0
+ bl_0_0 br_0_0 wl_0_29 vdd gnd
+ dummy_cell_1rw
Xbit_r30_c0
+ bl_0_0 br_0_0 wl_0_30 vdd gnd
+ dummy_cell_1rw
Xbit_r31_c0
+ bl_0_0 br_0_0 wl_0_31 vdd gnd
+ dummy_cell_1rw
Xbit_r32_c0
+ bl_0_0 br_0_0 wl_0_32 vdd gnd
+ dummy_cell_1rw
Xbit_r33_c0
+ bl_0_0 br_0_0 wl_0_33 vdd gnd
+ dummy_cell_1rw
Xbit_r34_c0
+ bl_0_0 br_0_0 wl_0_34 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_2_dummy_array_3

.SUBCKT mp3_data_array_2_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72
+ bl_0_73 br_0_73 bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76
+ bl_0_77 br_0_77 bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80
+ bl_0_81 br_0_81 bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84
+ bl_0_85 br_0_85 bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88
+ bl_0_89 br_0_89 bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92
+ bl_0_93 br_0_93 bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96
+ bl_0_97 br_0_97 bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100
+ bl_0_101 br_0_101 bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104
+ br_0_104 bl_0_105 br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107
+ bl_0_108 br_0_108 bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111
+ br_0_111 bl_0_112 br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114
+ bl_0_115 br_0_115 bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118
+ br_0_118 bl_0_119 br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121
+ bl_0_122 br_0_122 bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
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
* INOUT : bl_0_24 
* INOUT : br_0_24 
* INOUT : bl_0_25 
* INOUT : br_0_25 
* INOUT : bl_0_26 
* INOUT : br_0_26 
* INOUT : bl_0_27 
* INOUT : br_0_27 
* INOUT : bl_0_28 
* INOUT : br_0_28 
* INOUT : bl_0_29 
* INOUT : br_0_29 
* INOUT : bl_0_30 
* INOUT : br_0_30 
* INOUT : bl_0_31 
* INOUT : br_0_31 
* INOUT : bl_0_32 
* INOUT : br_0_32 
* INOUT : bl_0_33 
* INOUT : br_0_33 
* INOUT : bl_0_34 
* INOUT : br_0_34 
* INOUT : bl_0_35 
* INOUT : br_0_35 
* INOUT : bl_0_36 
* INOUT : br_0_36 
* INOUT : bl_0_37 
* INOUT : br_0_37 
* INOUT : bl_0_38 
* INOUT : br_0_38 
* INOUT : bl_0_39 
* INOUT : br_0_39 
* INOUT : bl_0_40 
* INOUT : br_0_40 
* INOUT : bl_0_41 
* INOUT : br_0_41 
* INOUT : bl_0_42 
* INOUT : br_0_42 
* INOUT : bl_0_43 
* INOUT : br_0_43 
* INOUT : bl_0_44 
* INOUT : br_0_44 
* INOUT : bl_0_45 
* INOUT : br_0_45 
* INOUT : bl_0_46 
* INOUT : br_0_46 
* INOUT : bl_0_47 
* INOUT : br_0_47 
* INOUT : bl_0_48 
* INOUT : br_0_48 
* INOUT : bl_0_49 
* INOUT : br_0_49 
* INOUT : bl_0_50 
* INOUT : br_0_50 
* INOUT : bl_0_51 
* INOUT : br_0_51 
* INOUT : bl_0_52 
* INOUT : br_0_52 
* INOUT : bl_0_53 
* INOUT : br_0_53 
* INOUT : bl_0_54 
* INOUT : br_0_54 
* INOUT : bl_0_55 
* INOUT : br_0_55 
* INOUT : bl_0_56 
* INOUT : br_0_56 
* INOUT : bl_0_57 
* INOUT : br_0_57 
* INOUT : bl_0_58 
* INOUT : br_0_58 
* INOUT : bl_0_59 
* INOUT : br_0_59 
* INOUT : bl_0_60 
* INOUT : br_0_60 
* INOUT : bl_0_61 
* INOUT : br_0_61 
* INOUT : bl_0_62 
* INOUT : br_0_62 
* INOUT : bl_0_63 
* INOUT : br_0_63 
* INOUT : bl_0_64 
* INOUT : br_0_64 
* INOUT : bl_0_65 
* INOUT : br_0_65 
* INOUT : bl_0_66 
* INOUT : br_0_66 
* INOUT : bl_0_67 
* INOUT : br_0_67 
* INOUT : bl_0_68 
* INOUT : br_0_68 
* INOUT : bl_0_69 
* INOUT : br_0_69 
* INOUT : bl_0_70 
* INOUT : br_0_70 
* INOUT : bl_0_71 
* INOUT : br_0_71 
* INOUT : bl_0_72 
* INOUT : br_0_72 
* INOUT : bl_0_73 
* INOUT : br_0_73 
* INOUT : bl_0_74 
* INOUT : br_0_74 
* INOUT : bl_0_75 
* INOUT : br_0_75 
* INOUT : bl_0_76 
* INOUT : br_0_76 
* INOUT : bl_0_77 
* INOUT : br_0_77 
* INOUT : bl_0_78 
* INOUT : br_0_78 
* INOUT : bl_0_79 
* INOUT : br_0_79 
* INOUT : bl_0_80 
* INOUT : br_0_80 
* INOUT : bl_0_81 
* INOUT : br_0_81 
* INOUT : bl_0_82 
* INOUT : br_0_82 
* INOUT : bl_0_83 
* INOUT : br_0_83 
* INOUT : bl_0_84 
* INOUT : br_0_84 
* INOUT : bl_0_85 
* INOUT : br_0_85 
* INOUT : bl_0_86 
* INOUT : br_0_86 
* INOUT : bl_0_87 
* INOUT : br_0_87 
* INOUT : bl_0_88 
* INOUT : br_0_88 
* INOUT : bl_0_89 
* INOUT : br_0_89 
* INOUT : bl_0_90 
* INOUT : br_0_90 
* INOUT : bl_0_91 
* INOUT : br_0_91 
* INOUT : bl_0_92 
* INOUT : br_0_92 
* INOUT : bl_0_93 
* INOUT : br_0_93 
* INOUT : bl_0_94 
* INOUT : br_0_94 
* INOUT : bl_0_95 
* INOUT : br_0_95 
* INOUT : bl_0_96 
* INOUT : br_0_96 
* INOUT : bl_0_97 
* INOUT : br_0_97 
* INOUT : bl_0_98 
* INOUT : br_0_98 
* INOUT : bl_0_99 
* INOUT : br_0_99 
* INOUT : bl_0_100 
* INOUT : br_0_100 
* INOUT : bl_0_101 
* INOUT : br_0_101 
* INOUT : bl_0_102 
* INOUT : br_0_102 
* INOUT : bl_0_103 
* INOUT : br_0_103 
* INOUT : bl_0_104 
* INOUT : br_0_104 
* INOUT : bl_0_105 
* INOUT : br_0_105 
* INOUT : bl_0_106 
* INOUT : br_0_106 
* INOUT : bl_0_107 
* INOUT : br_0_107 
* INOUT : bl_0_108 
* INOUT : br_0_108 
* INOUT : bl_0_109 
* INOUT : br_0_109 
* INOUT : bl_0_110 
* INOUT : br_0_110 
* INOUT : bl_0_111 
* INOUT : br_0_111 
* INOUT : bl_0_112 
* INOUT : br_0_112 
* INOUT : bl_0_113 
* INOUT : br_0_113 
* INOUT : bl_0_114 
* INOUT : br_0_114 
* INOUT : bl_0_115 
* INOUT : br_0_115 
* INOUT : bl_0_116 
* INOUT : br_0_116 
* INOUT : bl_0_117 
* INOUT : br_0_117 
* INOUT : bl_0_118 
* INOUT : br_0_118 
* INOUT : bl_0_119 
* INOUT : br_0_119 
* INOUT : bl_0_120 
* INOUT : br_0_120 
* INOUT : bl_0_121 
* INOUT : br_0_121 
* INOUT : bl_0_122 
* INOUT : br_0_122 
* INOUT : bl_0_123 
* INOUT : br_0_123 
* INOUT : bl_0_124 
* INOUT : br_0_124 
* INOUT : bl_0_125 
* INOUT : br_0_125 
* INOUT : bl_0_126 
* INOUT : br_0_126 
* INOUT : bl_0_127 
* INOUT : br_0_127 
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
* INPUT : wl_0_16 
* INPUT : wl_0_17 
* INPUT : wl_0_18 
* INPUT : wl_0_19 
* INPUT : wl_0_20 
* INPUT : wl_0_21 
* INPUT : wl_0_22 
* INPUT : wl_0_23 
* INPUT : wl_0_24 
* INPUT : wl_0_25 
* INPUT : wl_0_26 
* INPUT : wl_0_27 
* INPUT : wl_0_28 
* INPUT : wl_0_29 
* INPUT : wl_0_30 
* INPUT : wl_0_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 128
* rbl: [1, 0] left_rbl: [0] right_rbl: []
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72
+ bl_0_73 br_0_73 bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76
+ bl_0_77 br_0_77 bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80
+ bl_0_81 br_0_81 bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84
+ bl_0_85 br_0_85 bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88
+ bl_0_89 br_0_89 bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92
+ bl_0_93 br_0_93 bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96
+ bl_0_97 br_0_97 bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100
+ bl_0_101 br_0_101 bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104
+ br_0_104 bl_0_105 br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107
+ bl_0_108 br_0_108 bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111
+ br_0_111 bl_0_112 br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114
+ bl_0_115 br_0_115 bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118
+ br_0_118 bl_0_119 br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121
+ bl_0_122 br_0_122 bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
+ mp3_data_array_2_replica_bitcell_array
Xdummy_row_bot
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72
+ bl_0_73 br_0_73 bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76
+ bl_0_77 br_0_77 bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80
+ bl_0_81 br_0_81 bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84
+ bl_0_85 br_0_85 bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88
+ bl_0_89 br_0_89 bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92
+ bl_0_93 br_0_93 bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96
+ bl_0_97 br_0_97 bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100
+ bl_0_101 br_0_101 bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104
+ br_0_104 bl_0_105 br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107
+ bl_0_108 br_0_108 bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111
+ br_0_111 bl_0_112 br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114
+ bl_0_115 br_0_115 bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118
+ br_0_118 bl_0_119 br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121
+ bl_0_122 br_0_122 bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 gnd vdd gnd
+ mp3_data_array_2_dummy_array_1
Xdummy_row_top
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72
+ bl_0_73 br_0_73 bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76
+ bl_0_77 br_0_77 bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80
+ bl_0_81 br_0_81 bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84
+ bl_0_85 br_0_85 bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88
+ bl_0_89 br_0_89 bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92
+ bl_0_93 br_0_93 bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96
+ bl_0_97 br_0_97 bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100
+ bl_0_101 br_0_101 bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104
+ br_0_104 bl_0_105 br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107
+ bl_0_108 br_0_108 bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111
+ br_0_111 bl_0_112 br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114
+ bl_0_115 br_0_115 bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118
+ br_0_118 bl_0_119 br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121
+ bl_0_122 br_0_122 bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 gnd vdd gnd
+ mp3_data_array_2_dummy_array_0
Xdummy_col_left
+ dummy_left_bl_0_0 dummy_left_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 gnd vdd gnd
+ mp3_data_array_2_dummy_array_2
Xdummy_col_right
+ dummy_right_bl_0_0 dummy_right_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 gnd vdd gnd
+ mp3_data_array_2_dummy_array_3
.ENDS mp3_data_array_2_capped_replica_bitcell_array

.SUBCKT mp3_data_array_2_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos1 bl en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos2 br en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_data_array_2_precharge_0

.SUBCKT mp3_data_array_2_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34
+ bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40
+ br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45
+ bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51
+ br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56
+ bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62
+ br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66 bl_67 br_67
+ bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 bl_72 br_72 bl_73
+ br_73 bl_74 br_74 bl_75 br_75 bl_76 br_76 bl_77 br_77 bl_78 br_78
+ bl_79 br_79 bl_80 br_80 bl_81 br_81 bl_82 br_82 bl_83 br_83 bl_84
+ br_84 bl_85 br_85 bl_86 br_86 bl_87 br_87 bl_88 br_88 bl_89 br_89
+ bl_90 br_90 bl_91 br_91 bl_92 br_92 bl_93 br_93 bl_94 br_94 bl_95
+ br_95 bl_96 br_96 bl_97 br_97 bl_98 br_98 bl_99 br_99 bl_100 br_100
+ bl_101 br_101 bl_102 br_102 bl_103 br_103 bl_104 br_104 bl_105 br_105
+ bl_106 br_106 bl_107 br_107 bl_108 br_108 bl_109 br_109 bl_110 br_110
+ bl_111 br_111 bl_112 br_112 bl_113 br_113 bl_114 br_114 bl_115 br_115
+ bl_116 br_116 bl_117 br_117 bl_118 br_118 bl_119 br_119 bl_120 br_120
+ bl_121 br_121 bl_122 br_122 bl_123 br_123 bl_124 br_124 bl_125 br_125
+ bl_126 br_126 bl_127 br_127 bl_128 br_128 en_bar vdd
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
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* OUTPUT: bl_33 
* OUTPUT: br_33 
* OUTPUT: bl_34 
* OUTPUT: br_34 
* OUTPUT: bl_35 
* OUTPUT: br_35 
* OUTPUT: bl_36 
* OUTPUT: br_36 
* OUTPUT: bl_37 
* OUTPUT: br_37 
* OUTPUT: bl_38 
* OUTPUT: br_38 
* OUTPUT: bl_39 
* OUTPUT: br_39 
* OUTPUT: bl_40 
* OUTPUT: br_40 
* OUTPUT: bl_41 
* OUTPUT: br_41 
* OUTPUT: bl_42 
* OUTPUT: br_42 
* OUTPUT: bl_43 
* OUTPUT: br_43 
* OUTPUT: bl_44 
* OUTPUT: br_44 
* OUTPUT: bl_45 
* OUTPUT: br_45 
* OUTPUT: bl_46 
* OUTPUT: br_46 
* OUTPUT: bl_47 
* OUTPUT: br_47 
* OUTPUT: bl_48 
* OUTPUT: br_48 
* OUTPUT: bl_49 
* OUTPUT: br_49 
* OUTPUT: bl_50 
* OUTPUT: br_50 
* OUTPUT: bl_51 
* OUTPUT: br_51 
* OUTPUT: bl_52 
* OUTPUT: br_52 
* OUTPUT: bl_53 
* OUTPUT: br_53 
* OUTPUT: bl_54 
* OUTPUT: br_54 
* OUTPUT: bl_55 
* OUTPUT: br_55 
* OUTPUT: bl_56 
* OUTPUT: br_56 
* OUTPUT: bl_57 
* OUTPUT: br_57 
* OUTPUT: bl_58 
* OUTPUT: br_58 
* OUTPUT: bl_59 
* OUTPUT: br_59 
* OUTPUT: bl_60 
* OUTPUT: br_60 
* OUTPUT: bl_61 
* OUTPUT: br_61 
* OUTPUT: bl_62 
* OUTPUT: br_62 
* OUTPUT: bl_63 
* OUTPUT: br_63 
* OUTPUT: bl_64 
* OUTPUT: br_64 
* OUTPUT: bl_65 
* OUTPUT: br_65 
* OUTPUT: bl_66 
* OUTPUT: br_66 
* OUTPUT: bl_67 
* OUTPUT: br_67 
* OUTPUT: bl_68 
* OUTPUT: br_68 
* OUTPUT: bl_69 
* OUTPUT: br_69 
* OUTPUT: bl_70 
* OUTPUT: br_70 
* OUTPUT: bl_71 
* OUTPUT: br_71 
* OUTPUT: bl_72 
* OUTPUT: br_72 
* OUTPUT: bl_73 
* OUTPUT: br_73 
* OUTPUT: bl_74 
* OUTPUT: br_74 
* OUTPUT: bl_75 
* OUTPUT: br_75 
* OUTPUT: bl_76 
* OUTPUT: br_76 
* OUTPUT: bl_77 
* OUTPUT: br_77 
* OUTPUT: bl_78 
* OUTPUT: br_78 
* OUTPUT: bl_79 
* OUTPUT: br_79 
* OUTPUT: bl_80 
* OUTPUT: br_80 
* OUTPUT: bl_81 
* OUTPUT: br_81 
* OUTPUT: bl_82 
* OUTPUT: br_82 
* OUTPUT: bl_83 
* OUTPUT: br_83 
* OUTPUT: bl_84 
* OUTPUT: br_84 
* OUTPUT: bl_85 
* OUTPUT: br_85 
* OUTPUT: bl_86 
* OUTPUT: br_86 
* OUTPUT: bl_87 
* OUTPUT: br_87 
* OUTPUT: bl_88 
* OUTPUT: br_88 
* OUTPUT: bl_89 
* OUTPUT: br_89 
* OUTPUT: bl_90 
* OUTPUT: br_90 
* OUTPUT: bl_91 
* OUTPUT: br_91 
* OUTPUT: bl_92 
* OUTPUT: br_92 
* OUTPUT: bl_93 
* OUTPUT: br_93 
* OUTPUT: bl_94 
* OUTPUT: br_94 
* OUTPUT: bl_95 
* OUTPUT: br_95 
* OUTPUT: bl_96 
* OUTPUT: br_96 
* OUTPUT: bl_97 
* OUTPUT: br_97 
* OUTPUT: bl_98 
* OUTPUT: br_98 
* OUTPUT: bl_99 
* OUTPUT: br_99 
* OUTPUT: bl_100 
* OUTPUT: br_100 
* OUTPUT: bl_101 
* OUTPUT: br_101 
* OUTPUT: bl_102 
* OUTPUT: br_102 
* OUTPUT: bl_103 
* OUTPUT: br_103 
* OUTPUT: bl_104 
* OUTPUT: br_104 
* OUTPUT: bl_105 
* OUTPUT: br_105 
* OUTPUT: bl_106 
* OUTPUT: br_106 
* OUTPUT: bl_107 
* OUTPUT: br_107 
* OUTPUT: bl_108 
* OUTPUT: br_108 
* OUTPUT: bl_109 
* OUTPUT: br_109 
* OUTPUT: bl_110 
* OUTPUT: br_110 
* OUTPUT: bl_111 
* OUTPUT: br_111 
* OUTPUT: bl_112 
* OUTPUT: br_112 
* OUTPUT: bl_113 
* OUTPUT: br_113 
* OUTPUT: bl_114 
* OUTPUT: br_114 
* OUTPUT: bl_115 
* OUTPUT: br_115 
* OUTPUT: bl_116 
* OUTPUT: br_116 
* OUTPUT: bl_117 
* OUTPUT: br_117 
* OUTPUT: bl_118 
* OUTPUT: br_118 
* OUTPUT: bl_119 
* OUTPUT: br_119 
* OUTPUT: bl_120 
* OUTPUT: br_120 
* OUTPUT: bl_121 
* OUTPUT: br_121 
* OUTPUT: bl_122 
* OUTPUT: br_122 
* OUTPUT: bl_123 
* OUTPUT: br_123 
* OUTPUT: bl_124 
* OUTPUT: br_124 
* OUTPUT: bl_125 
* OUTPUT: br_125 
* OUTPUT: bl_126 
* OUTPUT: br_126 
* OUTPUT: bl_127 
* OUTPUT: br_127 
* OUTPUT: bl_128 
* OUTPUT: br_128 
* INPUT : en_bar 
* POWER : vdd 
* cols: 129 size: 1 bl: bl br: br
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_33
+ bl_33 br_33 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_34
+ bl_34 br_34 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_35
+ bl_35 br_35 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_36
+ bl_36 br_36 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_37
+ bl_37 br_37 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_38
+ bl_38 br_38 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_39
+ bl_39 br_39 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_40
+ bl_40 br_40 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_41
+ bl_41 br_41 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_42
+ bl_42 br_42 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_43
+ bl_43 br_43 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_44
+ bl_44 br_44 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_45
+ bl_45 br_45 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_46
+ bl_46 br_46 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_47
+ bl_47 br_47 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_48
+ bl_48 br_48 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_49
+ bl_49 br_49 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_50
+ bl_50 br_50 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_51
+ bl_51 br_51 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_52
+ bl_52 br_52 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_53
+ bl_53 br_53 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_54
+ bl_54 br_54 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_55
+ bl_55 br_55 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_56
+ bl_56 br_56 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_57
+ bl_57 br_57 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_58
+ bl_58 br_58 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_59
+ bl_59 br_59 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_60
+ bl_60 br_60 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_61
+ bl_61 br_61 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_62
+ bl_62 br_62 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_63
+ bl_63 br_63 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_64
+ bl_64 br_64 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_65
+ bl_65 br_65 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_66
+ bl_66 br_66 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_67
+ bl_67 br_67 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_68
+ bl_68 br_68 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_69
+ bl_69 br_69 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_70
+ bl_70 br_70 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_71
+ bl_71 br_71 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_72
+ bl_72 br_72 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_73
+ bl_73 br_73 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_74
+ bl_74 br_74 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_75
+ bl_75 br_75 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_76
+ bl_76 br_76 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_77
+ bl_77 br_77 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_78
+ bl_78 br_78 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_79
+ bl_79 br_79 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_80
+ bl_80 br_80 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_81
+ bl_81 br_81 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_82
+ bl_82 br_82 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_83
+ bl_83 br_83 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_84
+ bl_84 br_84 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_85
+ bl_85 br_85 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_86
+ bl_86 br_86 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_87
+ bl_87 br_87 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_88
+ bl_88 br_88 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_89
+ bl_89 br_89 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_90
+ bl_90 br_90 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_91
+ bl_91 br_91 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_92
+ bl_92 br_92 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_93
+ bl_93 br_93 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_94
+ bl_94 br_94 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_95
+ bl_95 br_95 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_96
+ bl_96 br_96 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_97
+ bl_97 br_97 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_98
+ bl_98 br_98 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_99
+ bl_99 br_99 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_100
+ bl_100 br_100 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_101
+ bl_101 br_101 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_102
+ bl_102 br_102 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_103
+ bl_103 br_103 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_104
+ bl_104 br_104 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_105
+ bl_105 br_105 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_106
+ bl_106 br_106 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_107
+ bl_107 br_107 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_108
+ bl_108 br_108 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_109
+ bl_109 br_109 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_110
+ bl_110 br_110 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_111
+ bl_111 br_111 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_112
+ bl_112 br_112 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_113
+ bl_113 br_113 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_114
+ bl_114 br_114 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_115
+ bl_115 br_115 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_116
+ bl_116 br_116 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_117
+ bl_117 br_117 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_118
+ bl_118 br_118 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_119
+ bl_119 br_119 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_120
+ bl_120 br_120 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_121
+ bl_121 br_121 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_122
+ bl_122 br_122 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_123
+ bl_123 br_123 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_124
+ bl_124 br_124 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_125
+ bl_125 br_125 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_126
+ bl_126 br_126 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_127
+ bl_127 br_127 en_bar vdd
+ mp3_data_array_2_precharge_0
Xpre_column_128
+ bl_128 br_128 en_bar vdd
+ mp3_data_array_2_precharge_0
.ENDS mp3_data_array_2_precharge_array

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


.SUBCKT mp3_data_array_2_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3
+ data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7
+ data_8 bl_8 br_8 data_9 bl_9 br_9 data_10 bl_10 br_10 data_11 bl_11
+ br_11 data_12 bl_12 br_12 data_13 bl_13 br_13 data_14 bl_14 br_14
+ data_15 bl_15 br_15 data_16 bl_16 br_16 data_17 bl_17 br_17 data_18
+ bl_18 br_18 data_19 bl_19 br_19 data_20 bl_20 br_20 data_21 bl_21
+ br_21 data_22 bl_22 br_22 data_23 bl_23 br_23 data_24 bl_24 br_24
+ data_25 bl_25 br_25 data_26 bl_26 br_26 data_27 bl_27 br_27 data_28
+ bl_28 br_28 data_29 bl_29 br_29 data_30 bl_30 br_30 data_31 bl_31
+ br_31 data_32 bl_32 br_32 data_33 bl_33 br_33 data_34 bl_34 br_34
+ data_35 bl_35 br_35 data_36 bl_36 br_36 data_37 bl_37 br_37 data_38
+ bl_38 br_38 data_39 bl_39 br_39 data_40 bl_40 br_40 data_41 bl_41
+ br_41 data_42 bl_42 br_42 data_43 bl_43 br_43 data_44 bl_44 br_44
+ data_45 bl_45 br_45 data_46 bl_46 br_46 data_47 bl_47 br_47 data_48
+ bl_48 br_48 data_49 bl_49 br_49 data_50 bl_50 br_50 data_51 bl_51
+ br_51 data_52 bl_52 br_52 data_53 bl_53 br_53 data_54 bl_54 br_54
+ data_55 bl_55 br_55 data_56 bl_56 br_56 data_57 bl_57 br_57 data_58
+ bl_58 br_58 data_59 bl_59 br_59 data_60 bl_60 br_60 data_61 bl_61
+ br_61 data_62 bl_62 br_62 data_63 bl_63 br_63 data_64 bl_64 br_64
+ data_65 bl_65 br_65 data_66 bl_66 br_66 data_67 bl_67 br_67 data_68
+ bl_68 br_68 data_69 bl_69 br_69 data_70 bl_70 br_70 data_71 bl_71
+ br_71 data_72 bl_72 br_72 data_73 bl_73 br_73 data_74 bl_74 br_74
+ data_75 bl_75 br_75 data_76 bl_76 br_76 data_77 bl_77 br_77 data_78
+ bl_78 br_78 data_79 bl_79 br_79 data_80 bl_80 br_80 data_81 bl_81
+ br_81 data_82 bl_82 br_82 data_83 bl_83 br_83 data_84 bl_84 br_84
+ data_85 bl_85 br_85 data_86 bl_86 br_86 data_87 bl_87 br_87 data_88
+ bl_88 br_88 data_89 bl_89 br_89 data_90 bl_90 br_90 data_91 bl_91
+ br_91 data_92 bl_92 br_92 data_93 bl_93 br_93 data_94 bl_94 br_94
+ data_95 bl_95 br_95 data_96 bl_96 br_96 data_97 bl_97 br_97 data_98
+ bl_98 br_98 data_99 bl_99 br_99 data_100 bl_100 br_100 data_101 bl_101
+ br_101 data_102 bl_102 br_102 data_103 bl_103 br_103 data_104 bl_104
+ br_104 data_105 bl_105 br_105 data_106 bl_106 br_106 data_107 bl_107
+ br_107 data_108 bl_108 br_108 data_109 bl_109 br_109 data_110 bl_110
+ br_110 data_111 bl_111 br_111 data_112 bl_112 br_112 data_113 bl_113
+ br_113 data_114 bl_114 br_114 data_115 bl_115 br_115 data_116 bl_116
+ br_116 data_117 bl_117 br_117 data_118 bl_118 br_118 data_119 bl_119
+ br_119 data_120 bl_120 br_120 data_121 bl_121 br_121 data_122 bl_122
+ br_122 data_123 bl_123 br_123 data_124 bl_124 br_124 data_125 bl_125
+ br_125 data_126 bl_126 br_126 data_127 bl_127 br_127 en vdd gnd
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
* OUTPUT: data_24 
* INPUT : bl_24 
* INPUT : br_24 
* OUTPUT: data_25 
* INPUT : bl_25 
* INPUT : br_25 
* OUTPUT: data_26 
* INPUT : bl_26 
* INPUT : br_26 
* OUTPUT: data_27 
* INPUT : bl_27 
* INPUT : br_27 
* OUTPUT: data_28 
* INPUT : bl_28 
* INPUT : br_28 
* OUTPUT: data_29 
* INPUT : bl_29 
* INPUT : br_29 
* OUTPUT: data_30 
* INPUT : bl_30 
* INPUT : br_30 
* OUTPUT: data_31 
* INPUT : bl_31 
* INPUT : br_31 
* OUTPUT: data_32 
* INPUT : bl_32 
* INPUT : br_32 
* OUTPUT: data_33 
* INPUT : bl_33 
* INPUT : br_33 
* OUTPUT: data_34 
* INPUT : bl_34 
* INPUT : br_34 
* OUTPUT: data_35 
* INPUT : bl_35 
* INPUT : br_35 
* OUTPUT: data_36 
* INPUT : bl_36 
* INPUT : br_36 
* OUTPUT: data_37 
* INPUT : bl_37 
* INPUT : br_37 
* OUTPUT: data_38 
* INPUT : bl_38 
* INPUT : br_38 
* OUTPUT: data_39 
* INPUT : bl_39 
* INPUT : br_39 
* OUTPUT: data_40 
* INPUT : bl_40 
* INPUT : br_40 
* OUTPUT: data_41 
* INPUT : bl_41 
* INPUT : br_41 
* OUTPUT: data_42 
* INPUT : bl_42 
* INPUT : br_42 
* OUTPUT: data_43 
* INPUT : bl_43 
* INPUT : br_43 
* OUTPUT: data_44 
* INPUT : bl_44 
* INPUT : br_44 
* OUTPUT: data_45 
* INPUT : bl_45 
* INPUT : br_45 
* OUTPUT: data_46 
* INPUT : bl_46 
* INPUT : br_46 
* OUTPUT: data_47 
* INPUT : bl_47 
* INPUT : br_47 
* OUTPUT: data_48 
* INPUT : bl_48 
* INPUT : br_48 
* OUTPUT: data_49 
* INPUT : bl_49 
* INPUT : br_49 
* OUTPUT: data_50 
* INPUT : bl_50 
* INPUT : br_50 
* OUTPUT: data_51 
* INPUT : bl_51 
* INPUT : br_51 
* OUTPUT: data_52 
* INPUT : bl_52 
* INPUT : br_52 
* OUTPUT: data_53 
* INPUT : bl_53 
* INPUT : br_53 
* OUTPUT: data_54 
* INPUT : bl_54 
* INPUT : br_54 
* OUTPUT: data_55 
* INPUT : bl_55 
* INPUT : br_55 
* OUTPUT: data_56 
* INPUT : bl_56 
* INPUT : br_56 
* OUTPUT: data_57 
* INPUT : bl_57 
* INPUT : br_57 
* OUTPUT: data_58 
* INPUT : bl_58 
* INPUT : br_58 
* OUTPUT: data_59 
* INPUT : bl_59 
* INPUT : br_59 
* OUTPUT: data_60 
* INPUT : bl_60 
* INPUT : br_60 
* OUTPUT: data_61 
* INPUT : bl_61 
* INPUT : br_61 
* OUTPUT: data_62 
* INPUT : bl_62 
* INPUT : br_62 
* OUTPUT: data_63 
* INPUT : bl_63 
* INPUT : br_63 
* OUTPUT: data_64 
* INPUT : bl_64 
* INPUT : br_64 
* OUTPUT: data_65 
* INPUT : bl_65 
* INPUT : br_65 
* OUTPUT: data_66 
* INPUT : bl_66 
* INPUT : br_66 
* OUTPUT: data_67 
* INPUT : bl_67 
* INPUT : br_67 
* OUTPUT: data_68 
* INPUT : bl_68 
* INPUT : br_68 
* OUTPUT: data_69 
* INPUT : bl_69 
* INPUT : br_69 
* OUTPUT: data_70 
* INPUT : bl_70 
* INPUT : br_70 
* OUTPUT: data_71 
* INPUT : bl_71 
* INPUT : br_71 
* OUTPUT: data_72 
* INPUT : bl_72 
* INPUT : br_72 
* OUTPUT: data_73 
* INPUT : bl_73 
* INPUT : br_73 
* OUTPUT: data_74 
* INPUT : bl_74 
* INPUT : br_74 
* OUTPUT: data_75 
* INPUT : bl_75 
* INPUT : br_75 
* OUTPUT: data_76 
* INPUT : bl_76 
* INPUT : br_76 
* OUTPUT: data_77 
* INPUT : bl_77 
* INPUT : br_77 
* OUTPUT: data_78 
* INPUT : bl_78 
* INPUT : br_78 
* OUTPUT: data_79 
* INPUT : bl_79 
* INPUT : br_79 
* OUTPUT: data_80 
* INPUT : bl_80 
* INPUT : br_80 
* OUTPUT: data_81 
* INPUT : bl_81 
* INPUT : br_81 
* OUTPUT: data_82 
* INPUT : bl_82 
* INPUT : br_82 
* OUTPUT: data_83 
* INPUT : bl_83 
* INPUT : br_83 
* OUTPUT: data_84 
* INPUT : bl_84 
* INPUT : br_84 
* OUTPUT: data_85 
* INPUT : bl_85 
* INPUT : br_85 
* OUTPUT: data_86 
* INPUT : bl_86 
* INPUT : br_86 
* OUTPUT: data_87 
* INPUT : bl_87 
* INPUT : br_87 
* OUTPUT: data_88 
* INPUT : bl_88 
* INPUT : br_88 
* OUTPUT: data_89 
* INPUT : bl_89 
* INPUT : br_89 
* OUTPUT: data_90 
* INPUT : bl_90 
* INPUT : br_90 
* OUTPUT: data_91 
* INPUT : bl_91 
* INPUT : br_91 
* OUTPUT: data_92 
* INPUT : bl_92 
* INPUT : br_92 
* OUTPUT: data_93 
* INPUT : bl_93 
* INPUT : br_93 
* OUTPUT: data_94 
* INPUT : bl_94 
* INPUT : br_94 
* OUTPUT: data_95 
* INPUT : bl_95 
* INPUT : br_95 
* OUTPUT: data_96 
* INPUT : bl_96 
* INPUT : br_96 
* OUTPUT: data_97 
* INPUT : bl_97 
* INPUT : br_97 
* OUTPUT: data_98 
* INPUT : bl_98 
* INPUT : br_98 
* OUTPUT: data_99 
* INPUT : bl_99 
* INPUT : br_99 
* OUTPUT: data_100 
* INPUT : bl_100 
* INPUT : br_100 
* OUTPUT: data_101 
* INPUT : bl_101 
* INPUT : br_101 
* OUTPUT: data_102 
* INPUT : bl_102 
* INPUT : br_102 
* OUTPUT: data_103 
* INPUT : bl_103 
* INPUT : br_103 
* OUTPUT: data_104 
* INPUT : bl_104 
* INPUT : br_104 
* OUTPUT: data_105 
* INPUT : bl_105 
* INPUT : br_105 
* OUTPUT: data_106 
* INPUT : bl_106 
* INPUT : br_106 
* OUTPUT: data_107 
* INPUT : bl_107 
* INPUT : br_107 
* OUTPUT: data_108 
* INPUT : bl_108 
* INPUT : br_108 
* OUTPUT: data_109 
* INPUT : bl_109 
* INPUT : br_109 
* OUTPUT: data_110 
* INPUT : bl_110 
* INPUT : br_110 
* OUTPUT: data_111 
* INPUT : bl_111 
* INPUT : br_111 
* OUTPUT: data_112 
* INPUT : bl_112 
* INPUT : br_112 
* OUTPUT: data_113 
* INPUT : bl_113 
* INPUT : br_113 
* OUTPUT: data_114 
* INPUT : bl_114 
* INPUT : br_114 
* OUTPUT: data_115 
* INPUT : bl_115 
* INPUT : br_115 
* OUTPUT: data_116 
* INPUT : bl_116 
* INPUT : br_116 
* OUTPUT: data_117 
* INPUT : bl_117 
* INPUT : br_117 
* OUTPUT: data_118 
* INPUT : bl_118 
* INPUT : br_118 
* OUTPUT: data_119 
* INPUT : bl_119 
* INPUT : br_119 
* OUTPUT: data_120 
* INPUT : bl_120 
* INPUT : br_120 
* OUTPUT: data_121 
* INPUT : bl_121 
* INPUT : br_121 
* OUTPUT: data_122 
* INPUT : bl_122 
* INPUT : br_122 
* OUTPUT: data_123 
* INPUT : bl_123 
* INPUT : br_123 
* OUTPUT: data_124 
* INPUT : bl_124 
* INPUT : br_124 
* OUTPUT: data_125 
* INPUT : bl_125 
* INPUT : br_125 
* OUTPUT: data_126 
* INPUT : bl_126 
* INPUT : br_126 
* OUTPUT: data_127 
* INPUT : bl_127 
* INPUT : br_127 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 128
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
Xsa_d24
+ bl_24 br_24 data_24 en vdd gnd
+ sense_amp
Xsa_d25
+ bl_25 br_25 data_25 en vdd gnd
+ sense_amp
Xsa_d26
+ bl_26 br_26 data_26 en vdd gnd
+ sense_amp
Xsa_d27
+ bl_27 br_27 data_27 en vdd gnd
+ sense_amp
Xsa_d28
+ bl_28 br_28 data_28 en vdd gnd
+ sense_amp
Xsa_d29
+ bl_29 br_29 data_29 en vdd gnd
+ sense_amp
Xsa_d30
+ bl_30 br_30 data_30 en vdd gnd
+ sense_amp
Xsa_d31
+ bl_31 br_31 data_31 en vdd gnd
+ sense_amp
Xsa_d32
+ bl_32 br_32 data_32 en vdd gnd
+ sense_amp
Xsa_d33
+ bl_33 br_33 data_33 en vdd gnd
+ sense_amp
Xsa_d34
+ bl_34 br_34 data_34 en vdd gnd
+ sense_amp
Xsa_d35
+ bl_35 br_35 data_35 en vdd gnd
+ sense_amp
Xsa_d36
+ bl_36 br_36 data_36 en vdd gnd
+ sense_amp
Xsa_d37
+ bl_37 br_37 data_37 en vdd gnd
+ sense_amp
Xsa_d38
+ bl_38 br_38 data_38 en vdd gnd
+ sense_amp
Xsa_d39
+ bl_39 br_39 data_39 en vdd gnd
+ sense_amp
Xsa_d40
+ bl_40 br_40 data_40 en vdd gnd
+ sense_amp
Xsa_d41
+ bl_41 br_41 data_41 en vdd gnd
+ sense_amp
Xsa_d42
+ bl_42 br_42 data_42 en vdd gnd
+ sense_amp
Xsa_d43
+ bl_43 br_43 data_43 en vdd gnd
+ sense_amp
Xsa_d44
+ bl_44 br_44 data_44 en vdd gnd
+ sense_amp
Xsa_d45
+ bl_45 br_45 data_45 en vdd gnd
+ sense_amp
Xsa_d46
+ bl_46 br_46 data_46 en vdd gnd
+ sense_amp
Xsa_d47
+ bl_47 br_47 data_47 en vdd gnd
+ sense_amp
Xsa_d48
+ bl_48 br_48 data_48 en vdd gnd
+ sense_amp
Xsa_d49
+ bl_49 br_49 data_49 en vdd gnd
+ sense_amp
Xsa_d50
+ bl_50 br_50 data_50 en vdd gnd
+ sense_amp
Xsa_d51
+ bl_51 br_51 data_51 en vdd gnd
+ sense_amp
Xsa_d52
+ bl_52 br_52 data_52 en vdd gnd
+ sense_amp
Xsa_d53
+ bl_53 br_53 data_53 en vdd gnd
+ sense_amp
Xsa_d54
+ bl_54 br_54 data_54 en vdd gnd
+ sense_amp
Xsa_d55
+ bl_55 br_55 data_55 en vdd gnd
+ sense_amp
Xsa_d56
+ bl_56 br_56 data_56 en vdd gnd
+ sense_amp
Xsa_d57
+ bl_57 br_57 data_57 en vdd gnd
+ sense_amp
Xsa_d58
+ bl_58 br_58 data_58 en vdd gnd
+ sense_amp
Xsa_d59
+ bl_59 br_59 data_59 en vdd gnd
+ sense_amp
Xsa_d60
+ bl_60 br_60 data_60 en vdd gnd
+ sense_amp
Xsa_d61
+ bl_61 br_61 data_61 en vdd gnd
+ sense_amp
Xsa_d62
+ bl_62 br_62 data_62 en vdd gnd
+ sense_amp
Xsa_d63
+ bl_63 br_63 data_63 en vdd gnd
+ sense_amp
Xsa_d64
+ bl_64 br_64 data_64 en vdd gnd
+ sense_amp
Xsa_d65
+ bl_65 br_65 data_65 en vdd gnd
+ sense_amp
Xsa_d66
+ bl_66 br_66 data_66 en vdd gnd
+ sense_amp
Xsa_d67
+ bl_67 br_67 data_67 en vdd gnd
+ sense_amp
Xsa_d68
+ bl_68 br_68 data_68 en vdd gnd
+ sense_amp
Xsa_d69
+ bl_69 br_69 data_69 en vdd gnd
+ sense_amp
Xsa_d70
+ bl_70 br_70 data_70 en vdd gnd
+ sense_amp
Xsa_d71
+ bl_71 br_71 data_71 en vdd gnd
+ sense_amp
Xsa_d72
+ bl_72 br_72 data_72 en vdd gnd
+ sense_amp
Xsa_d73
+ bl_73 br_73 data_73 en vdd gnd
+ sense_amp
Xsa_d74
+ bl_74 br_74 data_74 en vdd gnd
+ sense_amp
Xsa_d75
+ bl_75 br_75 data_75 en vdd gnd
+ sense_amp
Xsa_d76
+ bl_76 br_76 data_76 en vdd gnd
+ sense_amp
Xsa_d77
+ bl_77 br_77 data_77 en vdd gnd
+ sense_amp
Xsa_d78
+ bl_78 br_78 data_78 en vdd gnd
+ sense_amp
Xsa_d79
+ bl_79 br_79 data_79 en vdd gnd
+ sense_amp
Xsa_d80
+ bl_80 br_80 data_80 en vdd gnd
+ sense_amp
Xsa_d81
+ bl_81 br_81 data_81 en vdd gnd
+ sense_amp
Xsa_d82
+ bl_82 br_82 data_82 en vdd gnd
+ sense_amp
Xsa_d83
+ bl_83 br_83 data_83 en vdd gnd
+ sense_amp
Xsa_d84
+ bl_84 br_84 data_84 en vdd gnd
+ sense_amp
Xsa_d85
+ bl_85 br_85 data_85 en vdd gnd
+ sense_amp
Xsa_d86
+ bl_86 br_86 data_86 en vdd gnd
+ sense_amp
Xsa_d87
+ bl_87 br_87 data_87 en vdd gnd
+ sense_amp
Xsa_d88
+ bl_88 br_88 data_88 en vdd gnd
+ sense_amp
Xsa_d89
+ bl_89 br_89 data_89 en vdd gnd
+ sense_amp
Xsa_d90
+ bl_90 br_90 data_90 en vdd gnd
+ sense_amp
Xsa_d91
+ bl_91 br_91 data_91 en vdd gnd
+ sense_amp
Xsa_d92
+ bl_92 br_92 data_92 en vdd gnd
+ sense_amp
Xsa_d93
+ bl_93 br_93 data_93 en vdd gnd
+ sense_amp
Xsa_d94
+ bl_94 br_94 data_94 en vdd gnd
+ sense_amp
Xsa_d95
+ bl_95 br_95 data_95 en vdd gnd
+ sense_amp
Xsa_d96
+ bl_96 br_96 data_96 en vdd gnd
+ sense_amp
Xsa_d97
+ bl_97 br_97 data_97 en vdd gnd
+ sense_amp
Xsa_d98
+ bl_98 br_98 data_98 en vdd gnd
+ sense_amp
Xsa_d99
+ bl_99 br_99 data_99 en vdd gnd
+ sense_amp
Xsa_d100
+ bl_100 br_100 data_100 en vdd gnd
+ sense_amp
Xsa_d101
+ bl_101 br_101 data_101 en vdd gnd
+ sense_amp
Xsa_d102
+ bl_102 br_102 data_102 en vdd gnd
+ sense_amp
Xsa_d103
+ bl_103 br_103 data_103 en vdd gnd
+ sense_amp
Xsa_d104
+ bl_104 br_104 data_104 en vdd gnd
+ sense_amp
Xsa_d105
+ bl_105 br_105 data_105 en vdd gnd
+ sense_amp
Xsa_d106
+ bl_106 br_106 data_106 en vdd gnd
+ sense_amp
Xsa_d107
+ bl_107 br_107 data_107 en vdd gnd
+ sense_amp
Xsa_d108
+ bl_108 br_108 data_108 en vdd gnd
+ sense_amp
Xsa_d109
+ bl_109 br_109 data_109 en vdd gnd
+ sense_amp
Xsa_d110
+ bl_110 br_110 data_110 en vdd gnd
+ sense_amp
Xsa_d111
+ bl_111 br_111 data_111 en vdd gnd
+ sense_amp
Xsa_d112
+ bl_112 br_112 data_112 en vdd gnd
+ sense_amp
Xsa_d113
+ bl_113 br_113 data_113 en vdd gnd
+ sense_amp
Xsa_d114
+ bl_114 br_114 data_114 en vdd gnd
+ sense_amp
Xsa_d115
+ bl_115 br_115 data_115 en vdd gnd
+ sense_amp
Xsa_d116
+ bl_116 br_116 data_116 en vdd gnd
+ sense_amp
Xsa_d117
+ bl_117 br_117 data_117 en vdd gnd
+ sense_amp
Xsa_d118
+ bl_118 br_118 data_118 en vdd gnd
+ sense_amp
Xsa_d119
+ bl_119 br_119 data_119 en vdd gnd
+ sense_amp
Xsa_d120
+ bl_120 br_120 data_120 en vdd gnd
+ sense_amp
Xsa_d121
+ bl_121 br_121 data_121 en vdd gnd
+ sense_amp
Xsa_d122
+ bl_122 br_122 data_122 en vdd gnd
+ sense_amp
Xsa_d123
+ bl_123 br_123 data_123 en vdd gnd
+ sense_amp
Xsa_d124
+ bl_124 br_124 data_124 en vdd gnd
+ sense_amp
Xsa_d125
+ bl_125 br_125 data_125 en vdd gnd
+ sense_amp
Xsa_d126
+ bl_126 br_126 data_126 en vdd gnd
+ sense_amp
Xsa_d127
+ bl_127 br_127 data_127 en vdd gnd
+ sense_amp
.ENDS mp3_data_array_2_sense_amp_array

.SUBCKT mp3_data_array_2_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2.0
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_2_pinv_1

.SUBCKT mp3_data_array_2_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [2.0]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_2_pinv_1
.ENDS mp3_data_array_2_pdriver

.SUBCKT mp3_data_array_2_pnand2_0
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
.ENDS mp3_data_array_2_pnand2_0

.SUBCKT mp3_data_array_2_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2.0
Xpand2_nand
+ A B zb_int vdd gnd
+ mp3_data_array_2_pnand2_0
Xpand2_inv
+ zb_int Z vdd gnd
+ mp3_data_array_2_pdriver
.ENDS mp3_data_array_2_pand2

.SUBCKT mp3_data_array_2_write_mask_and_array
+ wmask_in_0 wmask_in_1 wmask_in_2 wmask_in_3 wmask_in_4 wmask_in_5
+ wmask_in_6 wmask_in_7 wmask_in_8 wmask_in_9 wmask_in_10 wmask_in_11
+ wmask_in_12 wmask_in_13 wmask_in_14 wmask_in_15 en wmask_out_0
+ wmask_out_1 wmask_out_2 wmask_out_3 wmask_out_4 wmask_out_5
+ wmask_out_6 wmask_out_7 wmask_out_8 wmask_out_9 wmask_out_10
+ wmask_out_11 wmask_out_12 wmask_out_13 wmask_out_14 wmask_out_15 vdd
+ gnd
* INPUT : wmask_in_0 
* INPUT : wmask_in_1 
* INPUT : wmask_in_2 
* INPUT : wmask_in_3 
* INPUT : wmask_in_4 
* INPUT : wmask_in_5 
* INPUT : wmask_in_6 
* INPUT : wmask_in_7 
* INPUT : wmask_in_8 
* INPUT : wmask_in_9 
* INPUT : wmask_in_10 
* INPUT : wmask_in_11 
* INPUT : wmask_in_12 
* INPUT : wmask_in_13 
* INPUT : wmask_in_14 
* INPUT : wmask_in_15 
* INPUT : en 
* OUTPUT: wmask_out_0 
* OUTPUT: wmask_out_1 
* OUTPUT: wmask_out_2 
* OUTPUT: wmask_out_3 
* OUTPUT: wmask_out_4 
* OUTPUT: wmask_out_5 
* OUTPUT: wmask_out_6 
* OUTPUT: wmask_out_7 
* OUTPUT: wmask_out_8 
* OUTPUT: wmask_out_9 
* OUTPUT: wmask_out_10 
* OUTPUT: wmask_out_11 
* OUTPUT: wmask_out_12 
* OUTPUT: wmask_out_13 
* OUTPUT: wmask_out_14 
* OUTPUT: wmask_out_15 
* POWER : vdd 
* GROUND: gnd 
* columns: 128
* word_size 128
* write_size 8
Xand2_0
+ wmask_in_0 en wmask_out_0 vdd gnd
+ mp3_data_array_2_pand2
Xand2_1
+ wmask_in_1 en wmask_out_1 vdd gnd
+ mp3_data_array_2_pand2
Xand2_2
+ wmask_in_2 en wmask_out_2 vdd gnd
+ mp3_data_array_2_pand2
Xand2_3
+ wmask_in_3 en wmask_out_3 vdd gnd
+ mp3_data_array_2_pand2
Xand2_4
+ wmask_in_4 en wmask_out_4 vdd gnd
+ mp3_data_array_2_pand2
Xand2_5
+ wmask_in_5 en wmask_out_5 vdd gnd
+ mp3_data_array_2_pand2
Xand2_6
+ wmask_in_6 en wmask_out_6 vdd gnd
+ mp3_data_array_2_pand2
Xand2_7
+ wmask_in_7 en wmask_out_7 vdd gnd
+ mp3_data_array_2_pand2
Xand2_8
+ wmask_in_8 en wmask_out_8 vdd gnd
+ mp3_data_array_2_pand2
Xand2_9
+ wmask_in_9 en wmask_out_9 vdd gnd
+ mp3_data_array_2_pand2
Xand2_10
+ wmask_in_10 en wmask_out_10 vdd gnd
+ mp3_data_array_2_pand2
Xand2_11
+ wmask_in_11 en wmask_out_11 vdd gnd
+ mp3_data_array_2_pand2
Xand2_12
+ wmask_in_12 en wmask_out_12 vdd gnd
+ mp3_data_array_2_pand2
Xand2_13
+ wmask_in_13 en wmask_out_13 vdd gnd
+ mp3_data_array_2_pand2
Xand2_14
+ wmask_in_14 en wmask_out_14 vdd gnd
+ mp3_data_array_2_pand2
Xand2_15
+ wmask_in_15 en wmask_out_15 vdd gnd
+ mp3_data_array_2_pand2
.ENDS mp3_data_array_2_write_mask_and_array

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


.SUBCKT mp3_data_array_2_write_driver_array
+ data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 data_8 data_9
+ data_10 data_11 data_12 data_13 data_14 data_15 data_16 data_17
+ data_18 data_19 data_20 data_21 data_22 data_23 data_24 data_25
+ data_26 data_27 data_28 data_29 data_30 data_31 data_32 data_33
+ data_34 data_35 data_36 data_37 data_38 data_39 data_40 data_41
+ data_42 data_43 data_44 data_45 data_46 data_47 data_48 data_49
+ data_50 data_51 data_52 data_53 data_54 data_55 data_56 data_57
+ data_58 data_59 data_60 data_61 data_62 data_63 data_64 data_65
+ data_66 data_67 data_68 data_69 data_70 data_71 data_72 data_73
+ data_74 data_75 data_76 data_77 data_78 data_79 data_80 data_81
+ data_82 data_83 data_84 data_85 data_86 data_87 data_88 data_89
+ data_90 data_91 data_92 data_93 data_94 data_95 data_96 data_97
+ data_98 data_99 data_100 data_101 data_102 data_103 data_104 data_105
+ data_106 data_107 data_108 data_109 data_110 data_111 data_112
+ data_113 data_114 data_115 data_116 data_117 data_118 data_119
+ data_120 data_121 data_122 data_123 data_124 data_125 data_126
+ data_127 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5
+ bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12
+ br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17
+ bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23
+ br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28
+ bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34
+ br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39
+ bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45
+ br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50
+ bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56
+ br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61
+ bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66 bl_67
+ br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 bl_72 br_72
+ bl_73 br_73 bl_74 br_74 bl_75 br_75 bl_76 br_76 bl_77 br_77 bl_78
+ br_78 bl_79 br_79 bl_80 br_80 bl_81 br_81 bl_82 br_82 bl_83 br_83
+ bl_84 br_84 bl_85 br_85 bl_86 br_86 bl_87 br_87 bl_88 br_88 bl_89
+ br_89 bl_90 br_90 bl_91 br_91 bl_92 br_92 bl_93 br_93 bl_94 br_94
+ bl_95 br_95 bl_96 br_96 bl_97 br_97 bl_98 br_98 bl_99 br_99 bl_100
+ br_100 bl_101 br_101 bl_102 br_102 bl_103 br_103 bl_104 br_104 bl_105
+ br_105 bl_106 br_106 bl_107 br_107 bl_108 br_108 bl_109 br_109 bl_110
+ br_110 bl_111 br_111 bl_112 br_112 bl_113 br_113 bl_114 br_114 bl_115
+ br_115 bl_116 br_116 bl_117 br_117 bl_118 br_118 bl_119 br_119 bl_120
+ br_120 bl_121 br_121 bl_122 br_122 bl_123 br_123 bl_124 br_124 bl_125
+ br_125 bl_126 br_126 bl_127 br_127 en_0 en_1 en_2 en_3 en_4 en_5 en_6
+ en_7 en_8 en_9 en_10 en_11 en_12 en_13 en_14 en_15 vdd gnd
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
* INPUT : data_24 
* INPUT : data_25 
* INPUT : data_26 
* INPUT : data_27 
* INPUT : data_28 
* INPUT : data_29 
* INPUT : data_30 
* INPUT : data_31 
* INPUT : data_32 
* INPUT : data_33 
* INPUT : data_34 
* INPUT : data_35 
* INPUT : data_36 
* INPUT : data_37 
* INPUT : data_38 
* INPUT : data_39 
* INPUT : data_40 
* INPUT : data_41 
* INPUT : data_42 
* INPUT : data_43 
* INPUT : data_44 
* INPUT : data_45 
* INPUT : data_46 
* INPUT : data_47 
* INPUT : data_48 
* INPUT : data_49 
* INPUT : data_50 
* INPUT : data_51 
* INPUT : data_52 
* INPUT : data_53 
* INPUT : data_54 
* INPUT : data_55 
* INPUT : data_56 
* INPUT : data_57 
* INPUT : data_58 
* INPUT : data_59 
* INPUT : data_60 
* INPUT : data_61 
* INPUT : data_62 
* INPUT : data_63 
* INPUT : data_64 
* INPUT : data_65 
* INPUT : data_66 
* INPUT : data_67 
* INPUT : data_68 
* INPUT : data_69 
* INPUT : data_70 
* INPUT : data_71 
* INPUT : data_72 
* INPUT : data_73 
* INPUT : data_74 
* INPUT : data_75 
* INPUT : data_76 
* INPUT : data_77 
* INPUT : data_78 
* INPUT : data_79 
* INPUT : data_80 
* INPUT : data_81 
* INPUT : data_82 
* INPUT : data_83 
* INPUT : data_84 
* INPUT : data_85 
* INPUT : data_86 
* INPUT : data_87 
* INPUT : data_88 
* INPUT : data_89 
* INPUT : data_90 
* INPUT : data_91 
* INPUT : data_92 
* INPUT : data_93 
* INPUT : data_94 
* INPUT : data_95 
* INPUT : data_96 
* INPUT : data_97 
* INPUT : data_98 
* INPUT : data_99 
* INPUT : data_100 
* INPUT : data_101 
* INPUT : data_102 
* INPUT : data_103 
* INPUT : data_104 
* INPUT : data_105 
* INPUT : data_106 
* INPUT : data_107 
* INPUT : data_108 
* INPUT : data_109 
* INPUT : data_110 
* INPUT : data_111 
* INPUT : data_112 
* INPUT : data_113 
* INPUT : data_114 
* INPUT : data_115 
* INPUT : data_116 
* INPUT : data_117 
* INPUT : data_118 
* INPUT : data_119 
* INPUT : data_120 
* INPUT : data_121 
* INPUT : data_122 
* INPUT : data_123 
* INPUT : data_124 
* INPUT : data_125 
* INPUT : data_126 
* INPUT : data_127 
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
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* OUTPUT: bl_33 
* OUTPUT: br_33 
* OUTPUT: bl_34 
* OUTPUT: br_34 
* OUTPUT: bl_35 
* OUTPUT: br_35 
* OUTPUT: bl_36 
* OUTPUT: br_36 
* OUTPUT: bl_37 
* OUTPUT: br_37 
* OUTPUT: bl_38 
* OUTPUT: br_38 
* OUTPUT: bl_39 
* OUTPUT: br_39 
* OUTPUT: bl_40 
* OUTPUT: br_40 
* OUTPUT: bl_41 
* OUTPUT: br_41 
* OUTPUT: bl_42 
* OUTPUT: br_42 
* OUTPUT: bl_43 
* OUTPUT: br_43 
* OUTPUT: bl_44 
* OUTPUT: br_44 
* OUTPUT: bl_45 
* OUTPUT: br_45 
* OUTPUT: bl_46 
* OUTPUT: br_46 
* OUTPUT: bl_47 
* OUTPUT: br_47 
* OUTPUT: bl_48 
* OUTPUT: br_48 
* OUTPUT: bl_49 
* OUTPUT: br_49 
* OUTPUT: bl_50 
* OUTPUT: br_50 
* OUTPUT: bl_51 
* OUTPUT: br_51 
* OUTPUT: bl_52 
* OUTPUT: br_52 
* OUTPUT: bl_53 
* OUTPUT: br_53 
* OUTPUT: bl_54 
* OUTPUT: br_54 
* OUTPUT: bl_55 
* OUTPUT: br_55 
* OUTPUT: bl_56 
* OUTPUT: br_56 
* OUTPUT: bl_57 
* OUTPUT: br_57 
* OUTPUT: bl_58 
* OUTPUT: br_58 
* OUTPUT: bl_59 
* OUTPUT: br_59 
* OUTPUT: bl_60 
* OUTPUT: br_60 
* OUTPUT: bl_61 
* OUTPUT: br_61 
* OUTPUT: bl_62 
* OUTPUT: br_62 
* OUTPUT: bl_63 
* OUTPUT: br_63 
* OUTPUT: bl_64 
* OUTPUT: br_64 
* OUTPUT: bl_65 
* OUTPUT: br_65 
* OUTPUT: bl_66 
* OUTPUT: br_66 
* OUTPUT: bl_67 
* OUTPUT: br_67 
* OUTPUT: bl_68 
* OUTPUT: br_68 
* OUTPUT: bl_69 
* OUTPUT: br_69 
* OUTPUT: bl_70 
* OUTPUT: br_70 
* OUTPUT: bl_71 
* OUTPUT: br_71 
* OUTPUT: bl_72 
* OUTPUT: br_72 
* OUTPUT: bl_73 
* OUTPUT: br_73 
* OUTPUT: bl_74 
* OUTPUT: br_74 
* OUTPUT: bl_75 
* OUTPUT: br_75 
* OUTPUT: bl_76 
* OUTPUT: br_76 
* OUTPUT: bl_77 
* OUTPUT: br_77 
* OUTPUT: bl_78 
* OUTPUT: br_78 
* OUTPUT: bl_79 
* OUTPUT: br_79 
* OUTPUT: bl_80 
* OUTPUT: br_80 
* OUTPUT: bl_81 
* OUTPUT: br_81 
* OUTPUT: bl_82 
* OUTPUT: br_82 
* OUTPUT: bl_83 
* OUTPUT: br_83 
* OUTPUT: bl_84 
* OUTPUT: br_84 
* OUTPUT: bl_85 
* OUTPUT: br_85 
* OUTPUT: bl_86 
* OUTPUT: br_86 
* OUTPUT: bl_87 
* OUTPUT: br_87 
* OUTPUT: bl_88 
* OUTPUT: br_88 
* OUTPUT: bl_89 
* OUTPUT: br_89 
* OUTPUT: bl_90 
* OUTPUT: br_90 
* OUTPUT: bl_91 
* OUTPUT: br_91 
* OUTPUT: bl_92 
* OUTPUT: br_92 
* OUTPUT: bl_93 
* OUTPUT: br_93 
* OUTPUT: bl_94 
* OUTPUT: br_94 
* OUTPUT: bl_95 
* OUTPUT: br_95 
* OUTPUT: bl_96 
* OUTPUT: br_96 
* OUTPUT: bl_97 
* OUTPUT: br_97 
* OUTPUT: bl_98 
* OUTPUT: br_98 
* OUTPUT: bl_99 
* OUTPUT: br_99 
* OUTPUT: bl_100 
* OUTPUT: br_100 
* OUTPUT: bl_101 
* OUTPUT: br_101 
* OUTPUT: bl_102 
* OUTPUT: br_102 
* OUTPUT: bl_103 
* OUTPUT: br_103 
* OUTPUT: bl_104 
* OUTPUT: br_104 
* OUTPUT: bl_105 
* OUTPUT: br_105 
* OUTPUT: bl_106 
* OUTPUT: br_106 
* OUTPUT: bl_107 
* OUTPUT: br_107 
* OUTPUT: bl_108 
* OUTPUT: br_108 
* OUTPUT: bl_109 
* OUTPUT: br_109 
* OUTPUT: bl_110 
* OUTPUT: br_110 
* OUTPUT: bl_111 
* OUTPUT: br_111 
* OUTPUT: bl_112 
* OUTPUT: br_112 
* OUTPUT: bl_113 
* OUTPUT: br_113 
* OUTPUT: bl_114 
* OUTPUT: br_114 
* OUTPUT: bl_115 
* OUTPUT: br_115 
* OUTPUT: bl_116 
* OUTPUT: br_116 
* OUTPUT: bl_117 
* OUTPUT: br_117 
* OUTPUT: bl_118 
* OUTPUT: br_118 
* OUTPUT: bl_119 
* OUTPUT: br_119 
* OUTPUT: bl_120 
* OUTPUT: br_120 
* OUTPUT: bl_121 
* OUTPUT: br_121 
* OUTPUT: bl_122 
* OUTPUT: br_122 
* OUTPUT: bl_123 
* OUTPUT: br_123 
* OUTPUT: bl_124 
* OUTPUT: br_124 
* OUTPUT: bl_125 
* OUTPUT: br_125 
* OUTPUT: bl_126 
* OUTPUT: br_126 
* OUTPUT: bl_127 
* OUTPUT: br_127 
* INPUT : en_0 
* INPUT : en_1 
* INPUT : en_2 
* INPUT : en_3 
* INPUT : en_4 
* INPUT : en_5 
* INPUT : en_6 
* INPUT : en_7 
* INPUT : en_8 
* INPUT : en_9 
* INPUT : en_10 
* INPUT : en_11 
* INPUT : en_12 
* INPUT : en_13 
* INPUT : en_14 
* INPUT : en_15 
* POWER : vdd 
* GROUND: gnd 
* columns: 128
* word_size 128
Xwrite_driver0
+ data_0 bl_0 br_0 en_0 vdd gnd
+ write_driver
Xwrite_driver1
+ data_1 bl_1 br_1 en_0 vdd gnd
+ write_driver
Xwrite_driver2
+ data_2 bl_2 br_2 en_0 vdd gnd
+ write_driver
Xwrite_driver3
+ data_3 bl_3 br_3 en_0 vdd gnd
+ write_driver
Xwrite_driver4
+ data_4 bl_4 br_4 en_0 vdd gnd
+ write_driver
Xwrite_driver5
+ data_5 bl_5 br_5 en_0 vdd gnd
+ write_driver
Xwrite_driver6
+ data_6 bl_6 br_6 en_0 vdd gnd
+ write_driver
Xwrite_driver7
+ data_7 bl_7 br_7 en_0 vdd gnd
+ write_driver
Xwrite_driver8
+ data_8 bl_8 br_8 en_1 vdd gnd
+ write_driver
Xwrite_driver9
+ data_9 bl_9 br_9 en_1 vdd gnd
+ write_driver
Xwrite_driver10
+ data_10 bl_10 br_10 en_1 vdd gnd
+ write_driver
Xwrite_driver11
+ data_11 bl_11 br_11 en_1 vdd gnd
+ write_driver
Xwrite_driver12
+ data_12 bl_12 br_12 en_1 vdd gnd
+ write_driver
Xwrite_driver13
+ data_13 bl_13 br_13 en_1 vdd gnd
+ write_driver
Xwrite_driver14
+ data_14 bl_14 br_14 en_1 vdd gnd
+ write_driver
Xwrite_driver15
+ data_15 bl_15 br_15 en_1 vdd gnd
+ write_driver
Xwrite_driver16
+ data_16 bl_16 br_16 en_2 vdd gnd
+ write_driver
Xwrite_driver17
+ data_17 bl_17 br_17 en_2 vdd gnd
+ write_driver
Xwrite_driver18
+ data_18 bl_18 br_18 en_2 vdd gnd
+ write_driver
Xwrite_driver19
+ data_19 bl_19 br_19 en_2 vdd gnd
+ write_driver
Xwrite_driver20
+ data_20 bl_20 br_20 en_2 vdd gnd
+ write_driver
Xwrite_driver21
+ data_21 bl_21 br_21 en_2 vdd gnd
+ write_driver
Xwrite_driver22
+ data_22 bl_22 br_22 en_2 vdd gnd
+ write_driver
Xwrite_driver23
+ data_23 bl_23 br_23 en_2 vdd gnd
+ write_driver
Xwrite_driver24
+ data_24 bl_24 br_24 en_3 vdd gnd
+ write_driver
Xwrite_driver25
+ data_25 bl_25 br_25 en_3 vdd gnd
+ write_driver
Xwrite_driver26
+ data_26 bl_26 br_26 en_3 vdd gnd
+ write_driver
Xwrite_driver27
+ data_27 bl_27 br_27 en_3 vdd gnd
+ write_driver
Xwrite_driver28
+ data_28 bl_28 br_28 en_3 vdd gnd
+ write_driver
Xwrite_driver29
+ data_29 bl_29 br_29 en_3 vdd gnd
+ write_driver
Xwrite_driver30
+ data_30 bl_30 br_30 en_3 vdd gnd
+ write_driver
Xwrite_driver31
+ data_31 bl_31 br_31 en_3 vdd gnd
+ write_driver
Xwrite_driver32
+ data_32 bl_32 br_32 en_4 vdd gnd
+ write_driver
Xwrite_driver33
+ data_33 bl_33 br_33 en_4 vdd gnd
+ write_driver
Xwrite_driver34
+ data_34 bl_34 br_34 en_4 vdd gnd
+ write_driver
Xwrite_driver35
+ data_35 bl_35 br_35 en_4 vdd gnd
+ write_driver
Xwrite_driver36
+ data_36 bl_36 br_36 en_4 vdd gnd
+ write_driver
Xwrite_driver37
+ data_37 bl_37 br_37 en_4 vdd gnd
+ write_driver
Xwrite_driver38
+ data_38 bl_38 br_38 en_4 vdd gnd
+ write_driver
Xwrite_driver39
+ data_39 bl_39 br_39 en_4 vdd gnd
+ write_driver
Xwrite_driver40
+ data_40 bl_40 br_40 en_5 vdd gnd
+ write_driver
Xwrite_driver41
+ data_41 bl_41 br_41 en_5 vdd gnd
+ write_driver
Xwrite_driver42
+ data_42 bl_42 br_42 en_5 vdd gnd
+ write_driver
Xwrite_driver43
+ data_43 bl_43 br_43 en_5 vdd gnd
+ write_driver
Xwrite_driver44
+ data_44 bl_44 br_44 en_5 vdd gnd
+ write_driver
Xwrite_driver45
+ data_45 bl_45 br_45 en_5 vdd gnd
+ write_driver
Xwrite_driver46
+ data_46 bl_46 br_46 en_5 vdd gnd
+ write_driver
Xwrite_driver47
+ data_47 bl_47 br_47 en_5 vdd gnd
+ write_driver
Xwrite_driver48
+ data_48 bl_48 br_48 en_6 vdd gnd
+ write_driver
Xwrite_driver49
+ data_49 bl_49 br_49 en_6 vdd gnd
+ write_driver
Xwrite_driver50
+ data_50 bl_50 br_50 en_6 vdd gnd
+ write_driver
Xwrite_driver51
+ data_51 bl_51 br_51 en_6 vdd gnd
+ write_driver
Xwrite_driver52
+ data_52 bl_52 br_52 en_6 vdd gnd
+ write_driver
Xwrite_driver53
+ data_53 bl_53 br_53 en_6 vdd gnd
+ write_driver
Xwrite_driver54
+ data_54 bl_54 br_54 en_6 vdd gnd
+ write_driver
Xwrite_driver55
+ data_55 bl_55 br_55 en_6 vdd gnd
+ write_driver
Xwrite_driver56
+ data_56 bl_56 br_56 en_7 vdd gnd
+ write_driver
Xwrite_driver57
+ data_57 bl_57 br_57 en_7 vdd gnd
+ write_driver
Xwrite_driver58
+ data_58 bl_58 br_58 en_7 vdd gnd
+ write_driver
Xwrite_driver59
+ data_59 bl_59 br_59 en_7 vdd gnd
+ write_driver
Xwrite_driver60
+ data_60 bl_60 br_60 en_7 vdd gnd
+ write_driver
Xwrite_driver61
+ data_61 bl_61 br_61 en_7 vdd gnd
+ write_driver
Xwrite_driver62
+ data_62 bl_62 br_62 en_7 vdd gnd
+ write_driver
Xwrite_driver63
+ data_63 bl_63 br_63 en_7 vdd gnd
+ write_driver
Xwrite_driver64
+ data_64 bl_64 br_64 en_8 vdd gnd
+ write_driver
Xwrite_driver65
+ data_65 bl_65 br_65 en_8 vdd gnd
+ write_driver
Xwrite_driver66
+ data_66 bl_66 br_66 en_8 vdd gnd
+ write_driver
Xwrite_driver67
+ data_67 bl_67 br_67 en_8 vdd gnd
+ write_driver
Xwrite_driver68
+ data_68 bl_68 br_68 en_8 vdd gnd
+ write_driver
Xwrite_driver69
+ data_69 bl_69 br_69 en_8 vdd gnd
+ write_driver
Xwrite_driver70
+ data_70 bl_70 br_70 en_8 vdd gnd
+ write_driver
Xwrite_driver71
+ data_71 bl_71 br_71 en_8 vdd gnd
+ write_driver
Xwrite_driver72
+ data_72 bl_72 br_72 en_9 vdd gnd
+ write_driver
Xwrite_driver73
+ data_73 bl_73 br_73 en_9 vdd gnd
+ write_driver
Xwrite_driver74
+ data_74 bl_74 br_74 en_9 vdd gnd
+ write_driver
Xwrite_driver75
+ data_75 bl_75 br_75 en_9 vdd gnd
+ write_driver
Xwrite_driver76
+ data_76 bl_76 br_76 en_9 vdd gnd
+ write_driver
Xwrite_driver77
+ data_77 bl_77 br_77 en_9 vdd gnd
+ write_driver
Xwrite_driver78
+ data_78 bl_78 br_78 en_9 vdd gnd
+ write_driver
Xwrite_driver79
+ data_79 bl_79 br_79 en_9 vdd gnd
+ write_driver
Xwrite_driver80
+ data_80 bl_80 br_80 en_10 vdd gnd
+ write_driver
Xwrite_driver81
+ data_81 bl_81 br_81 en_10 vdd gnd
+ write_driver
Xwrite_driver82
+ data_82 bl_82 br_82 en_10 vdd gnd
+ write_driver
Xwrite_driver83
+ data_83 bl_83 br_83 en_10 vdd gnd
+ write_driver
Xwrite_driver84
+ data_84 bl_84 br_84 en_10 vdd gnd
+ write_driver
Xwrite_driver85
+ data_85 bl_85 br_85 en_10 vdd gnd
+ write_driver
Xwrite_driver86
+ data_86 bl_86 br_86 en_10 vdd gnd
+ write_driver
Xwrite_driver87
+ data_87 bl_87 br_87 en_10 vdd gnd
+ write_driver
Xwrite_driver88
+ data_88 bl_88 br_88 en_11 vdd gnd
+ write_driver
Xwrite_driver89
+ data_89 bl_89 br_89 en_11 vdd gnd
+ write_driver
Xwrite_driver90
+ data_90 bl_90 br_90 en_11 vdd gnd
+ write_driver
Xwrite_driver91
+ data_91 bl_91 br_91 en_11 vdd gnd
+ write_driver
Xwrite_driver92
+ data_92 bl_92 br_92 en_11 vdd gnd
+ write_driver
Xwrite_driver93
+ data_93 bl_93 br_93 en_11 vdd gnd
+ write_driver
Xwrite_driver94
+ data_94 bl_94 br_94 en_11 vdd gnd
+ write_driver
Xwrite_driver95
+ data_95 bl_95 br_95 en_11 vdd gnd
+ write_driver
Xwrite_driver96
+ data_96 bl_96 br_96 en_12 vdd gnd
+ write_driver
Xwrite_driver97
+ data_97 bl_97 br_97 en_12 vdd gnd
+ write_driver
Xwrite_driver98
+ data_98 bl_98 br_98 en_12 vdd gnd
+ write_driver
Xwrite_driver99
+ data_99 bl_99 br_99 en_12 vdd gnd
+ write_driver
Xwrite_driver100
+ data_100 bl_100 br_100 en_12 vdd gnd
+ write_driver
Xwrite_driver101
+ data_101 bl_101 br_101 en_12 vdd gnd
+ write_driver
Xwrite_driver102
+ data_102 bl_102 br_102 en_12 vdd gnd
+ write_driver
Xwrite_driver103
+ data_103 bl_103 br_103 en_12 vdd gnd
+ write_driver
Xwrite_driver104
+ data_104 bl_104 br_104 en_13 vdd gnd
+ write_driver
Xwrite_driver105
+ data_105 bl_105 br_105 en_13 vdd gnd
+ write_driver
Xwrite_driver106
+ data_106 bl_106 br_106 en_13 vdd gnd
+ write_driver
Xwrite_driver107
+ data_107 bl_107 br_107 en_13 vdd gnd
+ write_driver
Xwrite_driver108
+ data_108 bl_108 br_108 en_13 vdd gnd
+ write_driver
Xwrite_driver109
+ data_109 bl_109 br_109 en_13 vdd gnd
+ write_driver
Xwrite_driver110
+ data_110 bl_110 br_110 en_13 vdd gnd
+ write_driver
Xwrite_driver111
+ data_111 bl_111 br_111 en_13 vdd gnd
+ write_driver
Xwrite_driver112
+ data_112 bl_112 br_112 en_14 vdd gnd
+ write_driver
Xwrite_driver113
+ data_113 bl_113 br_113 en_14 vdd gnd
+ write_driver
Xwrite_driver114
+ data_114 bl_114 br_114 en_14 vdd gnd
+ write_driver
Xwrite_driver115
+ data_115 bl_115 br_115 en_14 vdd gnd
+ write_driver
Xwrite_driver116
+ data_116 bl_116 br_116 en_14 vdd gnd
+ write_driver
Xwrite_driver117
+ data_117 bl_117 br_117 en_14 vdd gnd
+ write_driver
Xwrite_driver118
+ data_118 bl_118 br_118 en_14 vdd gnd
+ write_driver
Xwrite_driver119
+ data_119 bl_119 br_119 en_14 vdd gnd
+ write_driver
Xwrite_driver120
+ data_120 bl_120 br_120 en_15 vdd gnd
+ write_driver
Xwrite_driver121
+ data_121 bl_121 br_121 en_15 vdd gnd
+ write_driver
Xwrite_driver122
+ data_122 bl_122 br_122 en_15 vdd gnd
+ write_driver
Xwrite_driver123
+ data_123 bl_123 br_123 en_15 vdd gnd
+ write_driver
Xwrite_driver124
+ data_124 bl_124 br_124 en_15 vdd gnd
+ write_driver
Xwrite_driver125
+ data_125 bl_125 br_125 en_15 vdd gnd
+ write_driver
Xwrite_driver126
+ data_126 bl_126 br_126 en_15 vdd gnd
+ write_driver
Xwrite_driver127
+ data_127 bl_127 br_127 en_15 vdd gnd
+ write_driver
.ENDS mp3_data_array_2_write_driver_array

.SUBCKT mp3_data_array_2_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33
+ bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39
+ br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44
+ bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50
+ br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55
+ bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61
+ br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66
+ bl_67 br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 bl_72
+ br_72 bl_73 br_73 bl_74 br_74 bl_75 br_75 bl_76 br_76 bl_77 br_77
+ bl_78 br_78 bl_79 br_79 bl_80 br_80 bl_81 br_81 bl_82 br_82 bl_83
+ br_83 bl_84 br_84 bl_85 br_85 bl_86 br_86 bl_87 br_87 bl_88 br_88
+ bl_89 br_89 bl_90 br_90 bl_91 br_91 bl_92 br_92 bl_93 br_93 bl_94
+ br_94 bl_95 br_95 bl_96 br_96 bl_97 br_97 bl_98 br_98 bl_99 br_99
+ bl_100 br_100 bl_101 br_101 bl_102 br_102 bl_103 br_103 bl_104 br_104
+ bl_105 br_105 bl_106 br_106 bl_107 br_107 bl_108 br_108 bl_109 br_109
+ bl_110 br_110 bl_111 br_111 bl_112 br_112 bl_113 br_113 bl_114 br_114
+ bl_115 br_115 bl_116 br_116 bl_117 br_117 bl_118 br_118 bl_119 br_119
+ bl_120 br_120 bl_121 br_121 bl_122 br_122 bl_123 br_123 bl_124 br_124
+ bl_125 br_125 bl_126 br_126 bl_127 br_127 dout_0 dout_1 dout_2 dout_3
+ dout_4 dout_5 dout_6 dout_7 dout_8 dout_9 dout_10 dout_11 dout_12
+ dout_13 dout_14 dout_15 dout_16 dout_17 dout_18 dout_19 dout_20
+ dout_21 dout_22 dout_23 dout_24 dout_25 dout_26 dout_27 dout_28
+ dout_29 dout_30 dout_31 dout_32 dout_33 dout_34 dout_35 dout_36
+ dout_37 dout_38 dout_39 dout_40 dout_41 dout_42 dout_43 dout_44
+ dout_45 dout_46 dout_47 dout_48 dout_49 dout_50 dout_51 dout_52
+ dout_53 dout_54 dout_55 dout_56 dout_57 dout_58 dout_59 dout_60
+ dout_61 dout_62 dout_63 dout_64 dout_65 dout_66 dout_67 dout_68
+ dout_69 dout_70 dout_71 dout_72 dout_73 dout_74 dout_75 dout_76
+ dout_77 dout_78 dout_79 dout_80 dout_81 dout_82 dout_83 dout_84
+ dout_85 dout_86 dout_87 dout_88 dout_89 dout_90 dout_91 dout_92
+ dout_93 dout_94 dout_95 dout_96 dout_97 dout_98 dout_99 dout_100
+ dout_101 dout_102 dout_103 dout_104 dout_105 dout_106 dout_107
+ dout_108 dout_109 dout_110 dout_111 dout_112 dout_113 dout_114
+ dout_115 dout_116 dout_117 dout_118 dout_119 dout_120 dout_121
+ dout_122 dout_123 dout_124 dout_125 dout_126 dout_127 din_0 din_1
+ din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10 din_11 din_12
+ din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20 din_21 din_22
+ din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30 din_31 din_32
+ din_33 din_34 din_35 din_36 din_37 din_38 din_39 din_40 din_41 din_42
+ din_43 din_44 din_45 din_46 din_47 din_48 din_49 din_50 din_51 din_52
+ din_53 din_54 din_55 din_56 din_57 din_58 din_59 din_60 din_61 din_62
+ din_63 din_64 din_65 din_66 din_67 din_68 din_69 din_70 din_71 din_72
+ din_73 din_74 din_75 din_76 din_77 din_78 din_79 din_80 din_81 din_82
+ din_83 din_84 din_85 din_86 din_87 din_88 din_89 din_90 din_91 din_92
+ din_93 din_94 din_95 din_96 din_97 din_98 din_99 din_100 din_101
+ din_102 din_103 din_104 din_105 din_106 din_107 din_108 din_109
+ din_110 din_111 din_112 din_113 din_114 din_115 din_116 din_117
+ din_118 din_119 din_120 din_121 din_122 din_123 din_124 din_125
+ din_126 din_127 s_en p_en_bar w_en bank_wmask_0 bank_wmask_1
+ bank_wmask_2 bank_wmask_3 bank_wmask_4 bank_wmask_5 bank_wmask_6
+ bank_wmask_7 bank_wmask_8 bank_wmask_9 bank_wmask_10 bank_wmask_11
+ bank_wmask_12 bank_wmask_13 bank_wmask_14 bank_wmask_15 vdd gnd
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
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
* INOUT : bl_64 
* INOUT : br_64 
* INOUT : bl_65 
* INOUT : br_65 
* INOUT : bl_66 
* INOUT : br_66 
* INOUT : bl_67 
* INOUT : br_67 
* INOUT : bl_68 
* INOUT : br_68 
* INOUT : bl_69 
* INOUT : br_69 
* INOUT : bl_70 
* INOUT : br_70 
* INOUT : bl_71 
* INOUT : br_71 
* INOUT : bl_72 
* INOUT : br_72 
* INOUT : bl_73 
* INOUT : br_73 
* INOUT : bl_74 
* INOUT : br_74 
* INOUT : bl_75 
* INOUT : br_75 
* INOUT : bl_76 
* INOUT : br_76 
* INOUT : bl_77 
* INOUT : br_77 
* INOUT : bl_78 
* INOUT : br_78 
* INOUT : bl_79 
* INOUT : br_79 
* INOUT : bl_80 
* INOUT : br_80 
* INOUT : bl_81 
* INOUT : br_81 
* INOUT : bl_82 
* INOUT : br_82 
* INOUT : bl_83 
* INOUT : br_83 
* INOUT : bl_84 
* INOUT : br_84 
* INOUT : bl_85 
* INOUT : br_85 
* INOUT : bl_86 
* INOUT : br_86 
* INOUT : bl_87 
* INOUT : br_87 
* INOUT : bl_88 
* INOUT : br_88 
* INOUT : bl_89 
* INOUT : br_89 
* INOUT : bl_90 
* INOUT : br_90 
* INOUT : bl_91 
* INOUT : br_91 
* INOUT : bl_92 
* INOUT : br_92 
* INOUT : bl_93 
* INOUT : br_93 
* INOUT : bl_94 
* INOUT : br_94 
* INOUT : bl_95 
* INOUT : br_95 
* INOUT : bl_96 
* INOUT : br_96 
* INOUT : bl_97 
* INOUT : br_97 
* INOUT : bl_98 
* INOUT : br_98 
* INOUT : bl_99 
* INOUT : br_99 
* INOUT : bl_100 
* INOUT : br_100 
* INOUT : bl_101 
* INOUT : br_101 
* INOUT : bl_102 
* INOUT : br_102 
* INOUT : bl_103 
* INOUT : br_103 
* INOUT : bl_104 
* INOUT : br_104 
* INOUT : bl_105 
* INOUT : br_105 
* INOUT : bl_106 
* INOUT : br_106 
* INOUT : bl_107 
* INOUT : br_107 
* INOUT : bl_108 
* INOUT : br_108 
* INOUT : bl_109 
* INOUT : br_109 
* INOUT : bl_110 
* INOUT : br_110 
* INOUT : bl_111 
* INOUT : br_111 
* INOUT : bl_112 
* INOUT : br_112 
* INOUT : bl_113 
* INOUT : br_113 
* INOUT : bl_114 
* INOUT : br_114 
* INOUT : bl_115 
* INOUT : br_115 
* INOUT : bl_116 
* INOUT : br_116 
* INOUT : bl_117 
* INOUT : br_117 
* INOUT : bl_118 
* INOUT : br_118 
* INOUT : bl_119 
* INOUT : br_119 
* INOUT : bl_120 
* INOUT : br_120 
* INOUT : bl_121 
* INOUT : br_121 
* INOUT : bl_122 
* INOUT : br_122 
* INOUT : bl_123 
* INOUT : br_123 
* INOUT : bl_124 
* INOUT : br_124 
* INOUT : bl_125 
* INOUT : br_125 
* INOUT : bl_126 
* INOUT : br_126 
* INOUT : bl_127 
* INOUT : br_127 
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
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* OUTPUT: dout_32 
* OUTPUT: dout_33 
* OUTPUT: dout_34 
* OUTPUT: dout_35 
* OUTPUT: dout_36 
* OUTPUT: dout_37 
* OUTPUT: dout_38 
* OUTPUT: dout_39 
* OUTPUT: dout_40 
* OUTPUT: dout_41 
* OUTPUT: dout_42 
* OUTPUT: dout_43 
* OUTPUT: dout_44 
* OUTPUT: dout_45 
* OUTPUT: dout_46 
* OUTPUT: dout_47 
* OUTPUT: dout_48 
* OUTPUT: dout_49 
* OUTPUT: dout_50 
* OUTPUT: dout_51 
* OUTPUT: dout_52 
* OUTPUT: dout_53 
* OUTPUT: dout_54 
* OUTPUT: dout_55 
* OUTPUT: dout_56 
* OUTPUT: dout_57 
* OUTPUT: dout_58 
* OUTPUT: dout_59 
* OUTPUT: dout_60 
* OUTPUT: dout_61 
* OUTPUT: dout_62 
* OUTPUT: dout_63 
* OUTPUT: dout_64 
* OUTPUT: dout_65 
* OUTPUT: dout_66 
* OUTPUT: dout_67 
* OUTPUT: dout_68 
* OUTPUT: dout_69 
* OUTPUT: dout_70 
* OUTPUT: dout_71 
* OUTPUT: dout_72 
* OUTPUT: dout_73 
* OUTPUT: dout_74 
* OUTPUT: dout_75 
* OUTPUT: dout_76 
* OUTPUT: dout_77 
* OUTPUT: dout_78 
* OUTPUT: dout_79 
* OUTPUT: dout_80 
* OUTPUT: dout_81 
* OUTPUT: dout_82 
* OUTPUT: dout_83 
* OUTPUT: dout_84 
* OUTPUT: dout_85 
* OUTPUT: dout_86 
* OUTPUT: dout_87 
* OUTPUT: dout_88 
* OUTPUT: dout_89 
* OUTPUT: dout_90 
* OUTPUT: dout_91 
* OUTPUT: dout_92 
* OUTPUT: dout_93 
* OUTPUT: dout_94 
* OUTPUT: dout_95 
* OUTPUT: dout_96 
* OUTPUT: dout_97 
* OUTPUT: dout_98 
* OUTPUT: dout_99 
* OUTPUT: dout_100 
* OUTPUT: dout_101 
* OUTPUT: dout_102 
* OUTPUT: dout_103 
* OUTPUT: dout_104 
* OUTPUT: dout_105 
* OUTPUT: dout_106 
* OUTPUT: dout_107 
* OUTPUT: dout_108 
* OUTPUT: dout_109 
* OUTPUT: dout_110 
* OUTPUT: dout_111 
* OUTPUT: dout_112 
* OUTPUT: dout_113 
* OUTPUT: dout_114 
* OUTPUT: dout_115 
* OUTPUT: dout_116 
* OUTPUT: dout_117 
* OUTPUT: dout_118 
* OUTPUT: dout_119 
* OUTPUT: dout_120 
* OUTPUT: dout_121 
* OUTPUT: dout_122 
* OUTPUT: dout_123 
* OUTPUT: dout_124 
* OUTPUT: dout_125 
* OUTPUT: dout_126 
* OUTPUT: dout_127 
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
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* INPUT : din_32 
* INPUT : din_33 
* INPUT : din_34 
* INPUT : din_35 
* INPUT : din_36 
* INPUT : din_37 
* INPUT : din_38 
* INPUT : din_39 
* INPUT : din_40 
* INPUT : din_41 
* INPUT : din_42 
* INPUT : din_43 
* INPUT : din_44 
* INPUT : din_45 
* INPUT : din_46 
* INPUT : din_47 
* INPUT : din_48 
* INPUT : din_49 
* INPUT : din_50 
* INPUT : din_51 
* INPUT : din_52 
* INPUT : din_53 
* INPUT : din_54 
* INPUT : din_55 
* INPUT : din_56 
* INPUT : din_57 
* INPUT : din_58 
* INPUT : din_59 
* INPUT : din_60 
* INPUT : din_61 
* INPUT : din_62 
* INPUT : din_63 
* INPUT : din_64 
* INPUT : din_65 
* INPUT : din_66 
* INPUT : din_67 
* INPUT : din_68 
* INPUT : din_69 
* INPUT : din_70 
* INPUT : din_71 
* INPUT : din_72 
* INPUT : din_73 
* INPUT : din_74 
* INPUT : din_75 
* INPUT : din_76 
* INPUT : din_77 
* INPUT : din_78 
* INPUT : din_79 
* INPUT : din_80 
* INPUT : din_81 
* INPUT : din_82 
* INPUT : din_83 
* INPUT : din_84 
* INPUT : din_85 
* INPUT : din_86 
* INPUT : din_87 
* INPUT : din_88 
* INPUT : din_89 
* INPUT : din_90 
* INPUT : din_91 
* INPUT : din_92 
* INPUT : din_93 
* INPUT : din_94 
* INPUT : din_95 
* INPUT : din_96 
* INPUT : din_97 
* INPUT : din_98 
* INPUT : din_99 
* INPUT : din_100 
* INPUT : din_101 
* INPUT : din_102 
* INPUT : din_103 
* INPUT : din_104 
* INPUT : din_105 
* INPUT : din_106 
* INPUT : din_107 
* INPUT : din_108 
* INPUT : din_109 
* INPUT : din_110 
* INPUT : din_111 
* INPUT : din_112 
* INPUT : din_113 
* INPUT : din_114 
* INPUT : din_115 
* INPUT : din_116 
* INPUT : din_117 
* INPUT : din_118 
* INPUT : din_119 
* INPUT : din_120 
* INPUT : din_121 
* INPUT : din_122 
* INPUT : din_123 
* INPUT : din_124 
* INPUT : din_125 
* INPUT : din_126 
* INPUT : din_127 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* INPUT : bank_wmask_0 
* INPUT : bank_wmask_1 
* INPUT : bank_wmask_2 
* INPUT : bank_wmask_3 
* INPUT : bank_wmask_4 
* INPUT : bank_wmask_5 
* INPUT : bank_wmask_6 
* INPUT : bank_wmask_7 
* INPUT : bank_wmask_8 
* INPUT : bank_wmask_9 
* INPUT : bank_wmask_10 
* INPUT : bank_wmask_11 
* INPUT : bank_wmask_12 
* INPUT : bank_wmask_13 
* INPUT : bank_wmask_14 
* INPUT : bank_wmask_15 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33
+ bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39
+ br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44
+ bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50
+ br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55
+ bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61
+ br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66
+ bl_67 br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 bl_72
+ br_72 bl_73 br_73 bl_74 br_74 bl_75 br_75 bl_76 br_76 bl_77 br_77
+ bl_78 br_78 bl_79 br_79 bl_80 br_80 bl_81 br_81 bl_82 br_82 bl_83
+ br_83 bl_84 br_84 bl_85 br_85 bl_86 br_86 bl_87 br_87 bl_88 br_88
+ bl_89 br_89 bl_90 br_90 bl_91 br_91 bl_92 br_92 bl_93 br_93 bl_94
+ br_94 bl_95 br_95 bl_96 br_96 bl_97 br_97 bl_98 br_98 bl_99 br_99
+ bl_100 br_100 bl_101 br_101 bl_102 br_102 bl_103 br_103 bl_104 br_104
+ bl_105 br_105 bl_106 br_106 bl_107 br_107 bl_108 br_108 bl_109 br_109
+ bl_110 br_110 bl_111 br_111 bl_112 br_112 bl_113 br_113 bl_114 br_114
+ bl_115 br_115 bl_116 br_116 bl_117 br_117 bl_118 br_118 bl_119 br_119
+ bl_120 br_120 bl_121 br_121 bl_122 br_122 bl_123 br_123 bl_124 br_124
+ bl_125 br_125 bl_126 br_126 bl_127 br_127 p_en_bar vdd
+ mp3_data_array_2_precharge_array
Xsense_amp_array0
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 dout_2 bl_2 br_2 dout_3 bl_3 br_3
+ dout_4 bl_4 br_4 dout_5 bl_5 br_5 dout_6 bl_6 br_6 dout_7 bl_7 br_7
+ dout_8 bl_8 br_8 dout_9 bl_9 br_9 dout_10 bl_10 br_10 dout_11 bl_11
+ br_11 dout_12 bl_12 br_12 dout_13 bl_13 br_13 dout_14 bl_14 br_14
+ dout_15 bl_15 br_15 dout_16 bl_16 br_16 dout_17 bl_17 br_17 dout_18
+ bl_18 br_18 dout_19 bl_19 br_19 dout_20 bl_20 br_20 dout_21 bl_21
+ br_21 dout_22 bl_22 br_22 dout_23 bl_23 br_23 dout_24 bl_24 br_24
+ dout_25 bl_25 br_25 dout_26 bl_26 br_26 dout_27 bl_27 br_27 dout_28
+ bl_28 br_28 dout_29 bl_29 br_29 dout_30 bl_30 br_30 dout_31 bl_31
+ br_31 dout_32 bl_32 br_32 dout_33 bl_33 br_33 dout_34 bl_34 br_34
+ dout_35 bl_35 br_35 dout_36 bl_36 br_36 dout_37 bl_37 br_37 dout_38
+ bl_38 br_38 dout_39 bl_39 br_39 dout_40 bl_40 br_40 dout_41 bl_41
+ br_41 dout_42 bl_42 br_42 dout_43 bl_43 br_43 dout_44 bl_44 br_44
+ dout_45 bl_45 br_45 dout_46 bl_46 br_46 dout_47 bl_47 br_47 dout_48
+ bl_48 br_48 dout_49 bl_49 br_49 dout_50 bl_50 br_50 dout_51 bl_51
+ br_51 dout_52 bl_52 br_52 dout_53 bl_53 br_53 dout_54 bl_54 br_54
+ dout_55 bl_55 br_55 dout_56 bl_56 br_56 dout_57 bl_57 br_57 dout_58
+ bl_58 br_58 dout_59 bl_59 br_59 dout_60 bl_60 br_60 dout_61 bl_61
+ br_61 dout_62 bl_62 br_62 dout_63 bl_63 br_63 dout_64 bl_64 br_64
+ dout_65 bl_65 br_65 dout_66 bl_66 br_66 dout_67 bl_67 br_67 dout_68
+ bl_68 br_68 dout_69 bl_69 br_69 dout_70 bl_70 br_70 dout_71 bl_71
+ br_71 dout_72 bl_72 br_72 dout_73 bl_73 br_73 dout_74 bl_74 br_74
+ dout_75 bl_75 br_75 dout_76 bl_76 br_76 dout_77 bl_77 br_77 dout_78
+ bl_78 br_78 dout_79 bl_79 br_79 dout_80 bl_80 br_80 dout_81 bl_81
+ br_81 dout_82 bl_82 br_82 dout_83 bl_83 br_83 dout_84 bl_84 br_84
+ dout_85 bl_85 br_85 dout_86 bl_86 br_86 dout_87 bl_87 br_87 dout_88
+ bl_88 br_88 dout_89 bl_89 br_89 dout_90 bl_90 br_90 dout_91 bl_91
+ br_91 dout_92 bl_92 br_92 dout_93 bl_93 br_93 dout_94 bl_94 br_94
+ dout_95 bl_95 br_95 dout_96 bl_96 br_96 dout_97 bl_97 br_97 dout_98
+ bl_98 br_98 dout_99 bl_99 br_99 dout_100 bl_100 br_100 dout_101 bl_101
+ br_101 dout_102 bl_102 br_102 dout_103 bl_103 br_103 dout_104 bl_104
+ br_104 dout_105 bl_105 br_105 dout_106 bl_106 br_106 dout_107 bl_107
+ br_107 dout_108 bl_108 br_108 dout_109 bl_109 br_109 dout_110 bl_110
+ br_110 dout_111 bl_111 br_111 dout_112 bl_112 br_112 dout_113 bl_113
+ br_113 dout_114 bl_114 br_114 dout_115 bl_115 br_115 dout_116 bl_116
+ br_116 dout_117 bl_117 br_117 dout_118 bl_118 br_118 dout_119 bl_119
+ br_119 dout_120 bl_120 br_120 dout_121 bl_121 br_121 dout_122 bl_122
+ br_122 dout_123 bl_123 br_123 dout_124 bl_124 br_124 dout_125 bl_125
+ br_125 dout_126 bl_126 br_126 dout_127 bl_127 br_127 s_en vdd gnd
+ mp3_data_array_2_sense_amp_array
Xwrite_driver_array0
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 din_32 din_33 din_34 din_35 din_36 din_37 din_38 din_39 din_40
+ din_41 din_42 din_43 din_44 din_45 din_46 din_47 din_48 din_49 din_50
+ din_51 din_52 din_53 din_54 din_55 din_56 din_57 din_58 din_59 din_60
+ din_61 din_62 din_63 din_64 din_65 din_66 din_67 din_68 din_69 din_70
+ din_71 din_72 din_73 din_74 din_75 din_76 din_77 din_78 din_79 din_80
+ din_81 din_82 din_83 din_84 din_85 din_86 din_87 din_88 din_89 din_90
+ din_91 din_92 din_93 din_94 din_95 din_96 din_97 din_98 din_99 din_100
+ din_101 din_102 din_103 din_104 din_105 din_106 din_107 din_108
+ din_109 din_110 din_111 din_112 din_113 din_114 din_115 din_116
+ din_117 din_118 din_119 din_120 din_121 din_122 din_123 din_124
+ din_125 din_126 din_127 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4
+ br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10
+ bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16
+ br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21
+ bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27
+ br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32
+ bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38
+ br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43
+ bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49
+ br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54
+ bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60
+ br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65
+ bl_66 br_66 bl_67 br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71
+ br_71 bl_72 br_72 bl_73 br_73 bl_74 br_74 bl_75 br_75 bl_76 br_76
+ bl_77 br_77 bl_78 br_78 bl_79 br_79 bl_80 br_80 bl_81 br_81 bl_82
+ br_82 bl_83 br_83 bl_84 br_84 bl_85 br_85 bl_86 br_86 bl_87 br_87
+ bl_88 br_88 bl_89 br_89 bl_90 br_90 bl_91 br_91 bl_92 br_92 bl_93
+ br_93 bl_94 br_94 bl_95 br_95 bl_96 br_96 bl_97 br_97 bl_98 br_98
+ bl_99 br_99 bl_100 br_100 bl_101 br_101 bl_102 br_102 bl_103 br_103
+ bl_104 br_104 bl_105 br_105 bl_106 br_106 bl_107 br_107 bl_108 br_108
+ bl_109 br_109 bl_110 br_110 bl_111 br_111 bl_112 br_112 bl_113 br_113
+ bl_114 br_114 bl_115 br_115 bl_116 br_116 bl_117 br_117 bl_118 br_118
+ bl_119 br_119 bl_120 br_120 bl_121 br_121 bl_122 br_122 bl_123 br_123
+ bl_124 br_124 bl_125 br_125 bl_126 br_126 bl_127 br_127 wdriver_sel_0
+ wdriver_sel_1 wdriver_sel_2 wdriver_sel_3 wdriver_sel_4 wdriver_sel_5
+ wdriver_sel_6 wdriver_sel_7 wdriver_sel_8 wdriver_sel_9 wdriver_sel_10
+ wdriver_sel_11 wdriver_sel_12 wdriver_sel_13 wdriver_sel_14
+ wdriver_sel_15 vdd gnd
+ mp3_data_array_2_write_driver_array
Xwrite_mask_and_array0
+ bank_wmask_0 bank_wmask_1 bank_wmask_2 bank_wmask_3 bank_wmask_4
+ bank_wmask_5 bank_wmask_6 bank_wmask_7 bank_wmask_8 bank_wmask_9
+ bank_wmask_10 bank_wmask_11 bank_wmask_12 bank_wmask_13 bank_wmask_14
+ bank_wmask_15 w_en wdriver_sel_0 wdriver_sel_1 wdriver_sel_2
+ wdriver_sel_3 wdriver_sel_4 wdriver_sel_5 wdriver_sel_6 wdriver_sel_7
+ wdriver_sel_8 wdriver_sel_9 wdriver_sel_10 wdriver_sel_11
+ wdriver_sel_12 wdriver_sel_13 wdriver_sel_14 wdriver_sel_15 vdd gnd
+ mp3_data_array_2_write_mask_and_array
.ENDS mp3_data_array_2_port_data

.SUBCKT mp3_data_array_2_bank
+ dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7
+ dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15
+ dout0_16 dout0_17 dout0_18 dout0_19 dout0_20 dout0_21 dout0_22
+ dout0_23 dout0_24 dout0_25 dout0_26 dout0_27 dout0_28 dout0_29
+ dout0_30 dout0_31 dout0_32 dout0_33 dout0_34 dout0_35 dout0_36
+ dout0_37 dout0_38 dout0_39 dout0_40 dout0_41 dout0_42 dout0_43
+ dout0_44 dout0_45 dout0_46 dout0_47 dout0_48 dout0_49 dout0_50
+ dout0_51 dout0_52 dout0_53 dout0_54 dout0_55 dout0_56 dout0_57
+ dout0_58 dout0_59 dout0_60 dout0_61 dout0_62 dout0_63 dout0_64
+ dout0_65 dout0_66 dout0_67 dout0_68 dout0_69 dout0_70 dout0_71
+ dout0_72 dout0_73 dout0_74 dout0_75 dout0_76 dout0_77 dout0_78
+ dout0_79 dout0_80 dout0_81 dout0_82 dout0_83 dout0_84 dout0_85
+ dout0_86 dout0_87 dout0_88 dout0_89 dout0_90 dout0_91 dout0_92
+ dout0_93 dout0_94 dout0_95 dout0_96 dout0_97 dout0_98 dout0_99
+ dout0_100 dout0_101 dout0_102 dout0_103 dout0_104 dout0_105 dout0_106
+ dout0_107 dout0_108 dout0_109 dout0_110 dout0_111 dout0_112 dout0_113
+ dout0_114 dout0_115 dout0_116 dout0_117 dout0_118 dout0_119 dout0_120
+ dout0_121 dout0_122 dout0_123 dout0_124 dout0_125 dout0_126 dout0_127
+ rbl_bl_0_0 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7
+ din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16
+ din0_17 din0_18 din0_19 din0_20 din0_21 din0_22 din0_23 din0_24
+ din0_25 din0_26 din0_27 din0_28 din0_29 din0_30 din0_31 din0_32
+ din0_33 din0_34 din0_35 din0_36 din0_37 din0_38 din0_39 din0_40
+ din0_41 din0_42 din0_43 din0_44 din0_45 din0_46 din0_47 din0_48
+ din0_49 din0_50 din0_51 din0_52 din0_53 din0_54 din0_55 din0_56
+ din0_57 din0_58 din0_59 din0_60 din0_61 din0_62 din0_63 din0_64
+ din0_65 din0_66 din0_67 din0_68 din0_69 din0_70 din0_71 din0_72
+ din0_73 din0_74 din0_75 din0_76 din0_77 din0_78 din0_79 din0_80
+ din0_81 din0_82 din0_83 din0_84 din0_85 din0_86 din0_87 din0_88
+ din0_89 din0_90 din0_91 din0_92 din0_93 din0_94 din0_95 din0_96
+ din0_97 din0_98 din0_99 din0_100 din0_101 din0_102 din0_103 din0_104
+ din0_105 din0_106 din0_107 din0_108 din0_109 din0_110 din0_111
+ din0_112 din0_113 din0_114 din0_115 din0_116 din0_117 din0_118
+ din0_119 din0_120 din0_121 din0_122 din0_123 din0_124 din0_125
+ din0_126 din0_127 addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 s_en0
+ p_en_bar0 w_en0 bank_wmask0_0 bank_wmask0_1 bank_wmask0_2
+ bank_wmask0_3 bank_wmask0_4 bank_wmask0_5 bank_wmask0_6 bank_wmask0_7
+ bank_wmask0_8 bank_wmask0_9 bank_wmask0_10 bank_wmask0_11
+ bank_wmask0_12 bank_wmask0_13 bank_wmask0_14 bank_wmask0_15 wl_en0 vdd
+ gnd
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
* OUTPUT: dout0_24 
* OUTPUT: dout0_25 
* OUTPUT: dout0_26 
* OUTPUT: dout0_27 
* OUTPUT: dout0_28 
* OUTPUT: dout0_29 
* OUTPUT: dout0_30 
* OUTPUT: dout0_31 
* OUTPUT: dout0_32 
* OUTPUT: dout0_33 
* OUTPUT: dout0_34 
* OUTPUT: dout0_35 
* OUTPUT: dout0_36 
* OUTPUT: dout0_37 
* OUTPUT: dout0_38 
* OUTPUT: dout0_39 
* OUTPUT: dout0_40 
* OUTPUT: dout0_41 
* OUTPUT: dout0_42 
* OUTPUT: dout0_43 
* OUTPUT: dout0_44 
* OUTPUT: dout0_45 
* OUTPUT: dout0_46 
* OUTPUT: dout0_47 
* OUTPUT: dout0_48 
* OUTPUT: dout0_49 
* OUTPUT: dout0_50 
* OUTPUT: dout0_51 
* OUTPUT: dout0_52 
* OUTPUT: dout0_53 
* OUTPUT: dout0_54 
* OUTPUT: dout0_55 
* OUTPUT: dout0_56 
* OUTPUT: dout0_57 
* OUTPUT: dout0_58 
* OUTPUT: dout0_59 
* OUTPUT: dout0_60 
* OUTPUT: dout0_61 
* OUTPUT: dout0_62 
* OUTPUT: dout0_63 
* OUTPUT: dout0_64 
* OUTPUT: dout0_65 
* OUTPUT: dout0_66 
* OUTPUT: dout0_67 
* OUTPUT: dout0_68 
* OUTPUT: dout0_69 
* OUTPUT: dout0_70 
* OUTPUT: dout0_71 
* OUTPUT: dout0_72 
* OUTPUT: dout0_73 
* OUTPUT: dout0_74 
* OUTPUT: dout0_75 
* OUTPUT: dout0_76 
* OUTPUT: dout0_77 
* OUTPUT: dout0_78 
* OUTPUT: dout0_79 
* OUTPUT: dout0_80 
* OUTPUT: dout0_81 
* OUTPUT: dout0_82 
* OUTPUT: dout0_83 
* OUTPUT: dout0_84 
* OUTPUT: dout0_85 
* OUTPUT: dout0_86 
* OUTPUT: dout0_87 
* OUTPUT: dout0_88 
* OUTPUT: dout0_89 
* OUTPUT: dout0_90 
* OUTPUT: dout0_91 
* OUTPUT: dout0_92 
* OUTPUT: dout0_93 
* OUTPUT: dout0_94 
* OUTPUT: dout0_95 
* OUTPUT: dout0_96 
* OUTPUT: dout0_97 
* OUTPUT: dout0_98 
* OUTPUT: dout0_99 
* OUTPUT: dout0_100 
* OUTPUT: dout0_101 
* OUTPUT: dout0_102 
* OUTPUT: dout0_103 
* OUTPUT: dout0_104 
* OUTPUT: dout0_105 
* OUTPUT: dout0_106 
* OUTPUT: dout0_107 
* OUTPUT: dout0_108 
* OUTPUT: dout0_109 
* OUTPUT: dout0_110 
* OUTPUT: dout0_111 
* OUTPUT: dout0_112 
* OUTPUT: dout0_113 
* OUTPUT: dout0_114 
* OUTPUT: dout0_115 
* OUTPUT: dout0_116 
* OUTPUT: dout0_117 
* OUTPUT: dout0_118 
* OUTPUT: dout0_119 
* OUTPUT: dout0_120 
* OUTPUT: dout0_121 
* OUTPUT: dout0_122 
* OUTPUT: dout0_123 
* OUTPUT: dout0_124 
* OUTPUT: dout0_125 
* OUTPUT: dout0_126 
* OUTPUT: dout0_127 
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
* INPUT : din0_24 
* INPUT : din0_25 
* INPUT : din0_26 
* INPUT : din0_27 
* INPUT : din0_28 
* INPUT : din0_29 
* INPUT : din0_30 
* INPUT : din0_31 
* INPUT : din0_32 
* INPUT : din0_33 
* INPUT : din0_34 
* INPUT : din0_35 
* INPUT : din0_36 
* INPUT : din0_37 
* INPUT : din0_38 
* INPUT : din0_39 
* INPUT : din0_40 
* INPUT : din0_41 
* INPUT : din0_42 
* INPUT : din0_43 
* INPUT : din0_44 
* INPUT : din0_45 
* INPUT : din0_46 
* INPUT : din0_47 
* INPUT : din0_48 
* INPUT : din0_49 
* INPUT : din0_50 
* INPUT : din0_51 
* INPUT : din0_52 
* INPUT : din0_53 
* INPUT : din0_54 
* INPUT : din0_55 
* INPUT : din0_56 
* INPUT : din0_57 
* INPUT : din0_58 
* INPUT : din0_59 
* INPUT : din0_60 
* INPUT : din0_61 
* INPUT : din0_62 
* INPUT : din0_63 
* INPUT : din0_64 
* INPUT : din0_65 
* INPUT : din0_66 
* INPUT : din0_67 
* INPUT : din0_68 
* INPUT : din0_69 
* INPUT : din0_70 
* INPUT : din0_71 
* INPUT : din0_72 
* INPUT : din0_73 
* INPUT : din0_74 
* INPUT : din0_75 
* INPUT : din0_76 
* INPUT : din0_77 
* INPUT : din0_78 
* INPUT : din0_79 
* INPUT : din0_80 
* INPUT : din0_81 
* INPUT : din0_82 
* INPUT : din0_83 
* INPUT : din0_84 
* INPUT : din0_85 
* INPUT : din0_86 
* INPUT : din0_87 
* INPUT : din0_88 
* INPUT : din0_89 
* INPUT : din0_90 
* INPUT : din0_91 
* INPUT : din0_92 
* INPUT : din0_93 
* INPUT : din0_94 
* INPUT : din0_95 
* INPUT : din0_96 
* INPUT : din0_97 
* INPUT : din0_98 
* INPUT : din0_99 
* INPUT : din0_100 
* INPUT : din0_101 
* INPUT : din0_102 
* INPUT : din0_103 
* INPUT : din0_104 
* INPUT : din0_105 
* INPUT : din0_106 
* INPUT : din0_107 
* INPUT : din0_108 
* INPUT : din0_109 
* INPUT : din0_110 
* INPUT : din0_111 
* INPUT : din0_112 
* INPUT : din0_113 
* INPUT : din0_114 
* INPUT : din0_115 
* INPUT : din0_116 
* INPUT : din0_117 
* INPUT : din0_118 
* INPUT : din0_119 
* INPUT : din0_120 
* INPUT : din0_121 
* INPUT : din0_122 
* INPUT : din0_123 
* INPUT : din0_124 
* INPUT : din0_125 
* INPUT : din0_126 
* INPUT : din0_127 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr0_4 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : bank_wmask0_0 
* INPUT : bank_wmask0_1 
* INPUT : bank_wmask0_2 
* INPUT : bank_wmask0_3 
* INPUT : bank_wmask0_4 
* INPUT : bank_wmask0_5 
* INPUT : bank_wmask0_6 
* INPUT : bank_wmask0_7 
* INPUT : bank_wmask0_8 
* INPUT : bank_wmask0_9 
* INPUT : bank_wmask0_10 
* INPUT : bank_wmask0_11 
* INPUT : bank_wmask0_12 
* INPUT : bank_wmask0_13 
* INPUT : bank_wmask0_14 
* INPUT : bank_wmask0_15 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72
+ bl_0_73 br_0_73 bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76
+ bl_0_77 br_0_77 bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80
+ bl_0_81 br_0_81 bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84
+ bl_0_85 br_0_85 bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88
+ bl_0_89 br_0_89 bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92
+ bl_0_93 br_0_93 bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96
+ bl_0_97 br_0_97 bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100
+ bl_0_101 br_0_101 bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104
+ br_0_104 bl_0_105 br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107
+ bl_0_108 br_0_108 bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111
+ br_0_111 bl_0_112 br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114
+ bl_0_115 br_0_115 bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118
+ br_0_118 bl_0_119 br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121
+ bl_0_122 br_0_122 bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 rbl_wl0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 vdd gnd
+ mp3_data_array_2_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 bl_0_72 br_0_72
+ bl_0_73 br_0_73 bl_0_74 br_0_74 bl_0_75 br_0_75 bl_0_76 br_0_76
+ bl_0_77 br_0_77 bl_0_78 br_0_78 bl_0_79 br_0_79 bl_0_80 br_0_80
+ bl_0_81 br_0_81 bl_0_82 br_0_82 bl_0_83 br_0_83 bl_0_84 br_0_84
+ bl_0_85 br_0_85 bl_0_86 br_0_86 bl_0_87 br_0_87 bl_0_88 br_0_88
+ bl_0_89 br_0_89 bl_0_90 br_0_90 bl_0_91 br_0_91 bl_0_92 br_0_92
+ bl_0_93 br_0_93 bl_0_94 br_0_94 bl_0_95 br_0_95 bl_0_96 br_0_96
+ bl_0_97 br_0_97 bl_0_98 br_0_98 bl_0_99 br_0_99 bl_0_100 br_0_100
+ bl_0_101 br_0_101 bl_0_102 br_0_102 bl_0_103 br_0_103 bl_0_104
+ br_0_104 bl_0_105 br_0_105 bl_0_106 br_0_106 bl_0_107 br_0_107
+ bl_0_108 br_0_108 bl_0_109 br_0_109 bl_0_110 br_0_110 bl_0_111
+ br_0_111 bl_0_112 br_0_112 bl_0_113 br_0_113 bl_0_114 br_0_114
+ bl_0_115 br_0_115 bl_0_116 br_0_116 bl_0_117 br_0_117 bl_0_118
+ br_0_118 bl_0_119 br_0_119 bl_0_120 br_0_120 bl_0_121 br_0_121
+ bl_0_122 br_0_122 bl_0_123 br_0_123 bl_0_124 br_0_124 bl_0_125
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 dout0_0 dout0_1 dout0_2
+ dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 dout0_8 dout0_9 dout0_10
+ dout0_11 dout0_12 dout0_13 dout0_14 dout0_15 dout0_16 dout0_17
+ dout0_18 dout0_19 dout0_20 dout0_21 dout0_22 dout0_23 dout0_24
+ dout0_25 dout0_26 dout0_27 dout0_28 dout0_29 dout0_30 dout0_31
+ dout0_32 dout0_33 dout0_34 dout0_35 dout0_36 dout0_37 dout0_38
+ dout0_39 dout0_40 dout0_41 dout0_42 dout0_43 dout0_44 dout0_45
+ dout0_46 dout0_47 dout0_48 dout0_49 dout0_50 dout0_51 dout0_52
+ dout0_53 dout0_54 dout0_55 dout0_56 dout0_57 dout0_58 dout0_59
+ dout0_60 dout0_61 dout0_62 dout0_63 dout0_64 dout0_65 dout0_66
+ dout0_67 dout0_68 dout0_69 dout0_70 dout0_71 dout0_72 dout0_73
+ dout0_74 dout0_75 dout0_76 dout0_77 dout0_78 dout0_79 dout0_80
+ dout0_81 dout0_82 dout0_83 dout0_84 dout0_85 dout0_86 dout0_87
+ dout0_88 dout0_89 dout0_90 dout0_91 dout0_92 dout0_93 dout0_94
+ dout0_95 dout0_96 dout0_97 dout0_98 dout0_99 dout0_100 dout0_101
+ dout0_102 dout0_103 dout0_104 dout0_105 dout0_106 dout0_107 dout0_108
+ dout0_109 dout0_110 dout0_111 dout0_112 dout0_113 dout0_114 dout0_115
+ dout0_116 dout0_117 dout0_118 dout0_119 dout0_120 dout0_121 dout0_122
+ dout0_123 dout0_124 dout0_125 dout0_126 dout0_127 din0_0 din0_1 din0_2
+ din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11
+ din0_12 din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 din0_19
+ din0_20 din0_21 din0_22 din0_23 din0_24 din0_25 din0_26 din0_27
+ din0_28 din0_29 din0_30 din0_31 din0_32 din0_33 din0_34 din0_35
+ din0_36 din0_37 din0_38 din0_39 din0_40 din0_41 din0_42 din0_43
+ din0_44 din0_45 din0_46 din0_47 din0_48 din0_49 din0_50 din0_51
+ din0_52 din0_53 din0_54 din0_55 din0_56 din0_57 din0_58 din0_59
+ din0_60 din0_61 din0_62 din0_63 din0_64 din0_65 din0_66 din0_67
+ din0_68 din0_69 din0_70 din0_71 din0_72 din0_73 din0_74 din0_75
+ din0_76 din0_77 din0_78 din0_79 din0_80 din0_81 din0_82 din0_83
+ din0_84 din0_85 din0_86 din0_87 din0_88 din0_89 din0_90 din0_91
+ din0_92 din0_93 din0_94 din0_95 din0_96 din0_97 din0_98 din0_99
+ din0_100 din0_101 din0_102 din0_103 din0_104 din0_105 din0_106
+ din0_107 din0_108 din0_109 din0_110 din0_111 din0_112 din0_113
+ din0_114 din0_115 din0_116 din0_117 din0_118 din0_119 din0_120
+ din0_121 din0_122 din0_123 din0_124 din0_125 din0_126 din0_127 s_en0
+ p_en_bar0 w_en0 bank_wmask0_0 bank_wmask0_1 bank_wmask0_2
+ bank_wmask0_3 bank_wmask0_4 bank_wmask0_5 bank_wmask0_6 bank_wmask0_7
+ bank_wmask0_8 bank_wmask0_9 bank_wmask0_10 bank_wmask0_11
+ bank_wmask0_12 bank_wmask0_13 bank_wmask0_14 bank_wmask0_15 vdd gnd
+ mp3_data_array_2_port_data
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 wl_en0 wl_0_0 wl_0_1 wl_0_2
+ wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11
+ wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19
+ wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27
+ wl_0_28 wl_0_29 wl_0_30 wl_0_31 rbl_wl0 vdd gnd
+ mp3_data_array_2_port_address
.ENDS mp3_data_array_2_bank

.SUBCKT mp3_data_array_2_wmask_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 dout_0 dout_1 dout_2 dout_3 dout_4
+ dout_5 dout_6 dout_7 dout_8 dout_9 dout_10 dout_11 dout_12 dout_13
+ dout_14 dout_15 clk vdd gnd
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
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 16
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
.ENDS mp3_data_array_2_wmask_dff

.SUBCKT mp3_data_array_2
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] din0[32] din0[33] din0[34] din0[35] din0[36]
+ din0[37] din0[38] din0[39] din0[40] din0[41] din0[42] din0[43]
+ din0[44] din0[45] din0[46] din0[47] din0[48] din0[49] din0[50]
+ din0[51] din0[52] din0[53] din0[54] din0[55] din0[56] din0[57]
+ din0[58] din0[59] din0[60] din0[61] din0[62] din0[63] din0[64]
+ din0[65] din0[66] din0[67] din0[68] din0[69] din0[70] din0[71]
+ din0[72] din0[73] din0[74] din0[75] din0[76] din0[77] din0[78]
+ din0[79] din0[80] din0[81] din0[82] din0[83] din0[84] din0[85]
+ din0[86] din0[87] din0[88] din0[89] din0[90] din0[91] din0[92]
+ din0[93] din0[94] din0[95] din0[96] din0[97] din0[98] din0[99]
+ din0[100] din0[101] din0[102] din0[103] din0[104] din0[105] din0[106]
+ din0[107] din0[108] din0[109] din0[110] din0[111] din0[112] din0[113]
+ din0[114] din0[115] din0[116] din0[117] din0[118] din0[119] din0[120]
+ din0[121] din0[122] din0[123] din0[124] din0[125] din0[126] din0[127]
+ addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] csb0 web0 clk0 wmask0[0]
+ wmask0[1] wmask0[2] wmask0[3] wmask0[4] wmask0[5] wmask0[6] wmask0[7]
+ wmask0[8] wmask0[9] wmask0[10] wmask0[11] wmask0[12] wmask0[13]
+ wmask0[14] wmask0[15] dout0[0] dout0[1] dout0[2] dout0[3] dout0[4]
+ dout0[5] dout0[6] dout0[7] dout0[8] dout0[9] dout0[10] dout0[11]
+ dout0[12] dout0[13] dout0[14] dout0[15] dout0[16] dout0[17] dout0[18]
+ dout0[19] dout0[20] dout0[21] dout0[22] dout0[23] dout0[24] dout0[25]
+ dout0[26] dout0[27] dout0[28] dout0[29] dout0[30] dout0[31] dout0[32]
+ dout0[33] dout0[34] dout0[35] dout0[36] dout0[37] dout0[38] dout0[39]
+ dout0[40] dout0[41] dout0[42] dout0[43] dout0[44] dout0[45] dout0[46]
+ dout0[47] dout0[48] dout0[49] dout0[50] dout0[51] dout0[52] dout0[53]
+ dout0[54] dout0[55] dout0[56] dout0[57] dout0[58] dout0[59] dout0[60]
+ dout0[61] dout0[62] dout0[63] dout0[64] dout0[65] dout0[66] dout0[67]
+ dout0[68] dout0[69] dout0[70] dout0[71] dout0[72] dout0[73] dout0[74]
+ dout0[75] dout0[76] dout0[77] dout0[78] dout0[79] dout0[80] dout0[81]
+ dout0[82] dout0[83] dout0[84] dout0[85] dout0[86] dout0[87] dout0[88]
+ dout0[89] dout0[90] dout0[91] dout0[92] dout0[93] dout0[94] dout0[95]
+ dout0[96] dout0[97] dout0[98] dout0[99] dout0[100] dout0[101]
+ dout0[102] dout0[103] dout0[104] dout0[105] dout0[106] dout0[107]
+ dout0[108] dout0[109] dout0[110] dout0[111] dout0[112] dout0[113]
+ dout0[114] dout0[115] dout0[116] dout0[117] dout0[118] dout0[119]
+ dout0[120] dout0[121] dout0[122] dout0[123] dout0[124] dout0[125]
+ dout0[126] dout0[127] vdd gnd
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
* INPUT : din0[24] 
* INPUT : din0[25] 
* INPUT : din0[26] 
* INPUT : din0[27] 
* INPUT : din0[28] 
* INPUT : din0[29] 
* INPUT : din0[30] 
* INPUT : din0[31] 
* INPUT : din0[32] 
* INPUT : din0[33] 
* INPUT : din0[34] 
* INPUT : din0[35] 
* INPUT : din0[36] 
* INPUT : din0[37] 
* INPUT : din0[38] 
* INPUT : din0[39] 
* INPUT : din0[40] 
* INPUT : din0[41] 
* INPUT : din0[42] 
* INPUT : din0[43] 
* INPUT : din0[44] 
* INPUT : din0[45] 
* INPUT : din0[46] 
* INPUT : din0[47] 
* INPUT : din0[48] 
* INPUT : din0[49] 
* INPUT : din0[50] 
* INPUT : din0[51] 
* INPUT : din0[52] 
* INPUT : din0[53] 
* INPUT : din0[54] 
* INPUT : din0[55] 
* INPUT : din0[56] 
* INPUT : din0[57] 
* INPUT : din0[58] 
* INPUT : din0[59] 
* INPUT : din0[60] 
* INPUT : din0[61] 
* INPUT : din0[62] 
* INPUT : din0[63] 
* INPUT : din0[64] 
* INPUT : din0[65] 
* INPUT : din0[66] 
* INPUT : din0[67] 
* INPUT : din0[68] 
* INPUT : din0[69] 
* INPUT : din0[70] 
* INPUT : din0[71] 
* INPUT : din0[72] 
* INPUT : din0[73] 
* INPUT : din0[74] 
* INPUT : din0[75] 
* INPUT : din0[76] 
* INPUT : din0[77] 
* INPUT : din0[78] 
* INPUT : din0[79] 
* INPUT : din0[80] 
* INPUT : din0[81] 
* INPUT : din0[82] 
* INPUT : din0[83] 
* INPUT : din0[84] 
* INPUT : din0[85] 
* INPUT : din0[86] 
* INPUT : din0[87] 
* INPUT : din0[88] 
* INPUT : din0[89] 
* INPUT : din0[90] 
* INPUT : din0[91] 
* INPUT : din0[92] 
* INPUT : din0[93] 
* INPUT : din0[94] 
* INPUT : din0[95] 
* INPUT : din0[96] 
* INPUT : din0[97] 
* INPUT : din0[98] 
* INPUT : din0[99] 
* INPUT : din0[100] 
* INPUT : din0[101] 
* INPUT : din0[102] 
* INPUT : din0[103] 
* INPUT : din0[104] 
* INPUT : din0[105] 
* INPUT : din0[106] 
* INPUT : din0[107] 
* INPUT : din0[108] 
* INPUT : din0[109] 
* INPUT : din0[110] 
* INPUT : din0[111] 
* INPUT : din0[112] 
* INPUT : din0[113] 
* INPUT : din0[114] 
* INPUT : din0[115] 
* INPUT : din0[116] 
* INPUT : din0[117] 
* INPUT : din0[118] 
* INPUT : din0[119] 
* INPUT : din0[120] 
* INPUT : din0[121] 
* INPUT : din0[122] 
* INPUT : din0[123] 
* INPUT : din0[124] 
* INPUT : din0[125] 
* INPUT : din0[126] 
* INPUT : din0[127] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr0[4] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* INPUT : wmask0[0] 
* INPUT : wmask0[1] 
* INPUT : wmask0[2] 
* INPUT : wmask0[3] 
* INPUT : wmask0[4] 
* INPUT : wmask0[5] 
* INPUT : wmask0[6] 
* INPUT : wmask0[7] 
* INPUT : wmask0[8] 
* INPUT : wmask0[9] 
* INPUT : wmask0[10] 
* INPUT : wmask0[11] 
* INPUT : wmask0[12] 
* INPUT : wmask0[13] 
* INPUT : wmask0[14] 
* INPUT : wmask0[15] 
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
* OUTPUT: dout0[24] 
* OUTPUT: dout0[25] 
* OUTPUT: dout0[26] 
* OUTPUT: dout0[27] 
* OUTPUT: dout0[28] 
* OUTPUT: dout0[29] 
* OUTPUT: dout0[30] 
* OUTPUT: dout0[31] 
* OUTPUT: dout0[32] 
* OUTPUT: dout0[33] 
* OUTPUT: dout0[34] 
* OUTPUT: dout0[35] 
* OUTPUT: dout0[36] 
* OUTPUT: dout0[37] 
* OUTPUT: dout0[38] 
* OUTPUT: dout0[39] 
* OUTPUT: dout0[40] 
* OUTPUT: dout0[41] 
* OUTPUT: dout0[42] 
* OUTPUT: dout0[43] 
* OUTPUT: dout0[44] 
* OUTPUT: dout0[45] 
* OUTPUT: dout0[46] 
* OUTPUT: dout0[47] 
* OUTPUT: dout0[48] 
* OUTPUT: dout0[49] 
* OUTPUT: dout0[50] 
* OUTPUT: dout0[51] 
* OUTPUT: dout0[52] 
* OUTPUT: dout0[53] 
* OUTPUT: dout0[54] 
* OUTPUT: dout0[55] 
* OUTPUT: dout0[56] 
* OUTPUT: dout0[57] 
* OUTPUT: dout0[58] 
* OUTPUT: dout0[59] 
* OUTPUT: dout0[60] 
* OUTPUT: dout0[61] 
* OUTPUT: dout0[62] 
* OUTPUT: dout0[63] 
* OUTPUT: dout0[64] 
* OUTPUT: dout0[65] 
* OUTPUT: dout0[66] 
* OUTPUT: dout0[67] 
* OUTPUT: dout0[68] 
* OUTPUT: dout0[69] 
* OUTPUT: dout0[70] 
* OUTPUT: dout0[71] 
* OUTPUT: dout0[72] 
* OUTPUT: dout0[73] 
* OUTPUT: dout0[74] 
* OUTPUT: dout0[75] 
* OUTPUT: dout0[76] 
* OUTPUT: dout0[77] 
* OUTPUT: dout0[78] 
* OUTPUT: dout0[79] 
* OUTPUT: dout0[80] 
* OUTPUT: dout0[81] 
* OUTPUT: dout0[82] 
* OUTPUT: dout0[83] 
* OUTPUT: dout0[84] 
* OUTPUT: dout0[85] 
* OUTPUT: dout0[86] 
* OUTPUT: dout0[87] 
* OUTPUT: dout0[88] 
* OUTPUT: dout0[89] 
* OUTPUT: dout0[90] 
* OUTPUT: dout0[91] 
* OUTPUT: dout0[92] 
* OUTPUT: dout0[93] 
* OUTPUT: dout0[94] 
* OUTPUT: dout0[95] 
* OUTPUT: dout0[96] 
* OUTPUT: dout0[97] 
* OUTPUT: dout0[98] 
* OUTPUT: dout0[99] 
* OUTPUT: dout0[100] 
* OUTPUT: dout0[101] 
* OUTPUT: dout0[102] 
* OUTPUT: dout0[103] 
* OUTPUT: dout0[104] 
* OUTPUT: dout0[105] 
* OUTPUT: dout0[106] 
* OUTPUT: dout0[107] 
* OUTPUT: dout0[108] 
* OUTPUT: dout0[109] 
* OUTPUT: dout0[110] 
* OUTPUT: dout0[111] 
* OUTPUT: dout0[112] 
* OUTPUT: dout0[113] 
* OUTPUT: dout0[114] 
* OUTPUT: dout0[115] 
* OUTPUT: dout0[116] 
* OUTPUT: dout0[117] 
* OUTPUT: dout0[118] 
* OUTPUT: dout0[119] 
* OUTPUT: dout0[120] 
* OUTPUT: dout0[121] 
* OUTPUT: dout0[122] 
* OUTPUT: dout0[123] 
* OUTPUT: dout0[124] 
* OUTPUT: dout0[125] 
* OUTPUT: dout0[126] 
* OUTPUT: dout0[127] 
* POWER : vdd 
* GROUND: gnd 
Xbank0
+ dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6]
+ dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12] dout0[13]
+ dout0[14] dout0[15] dout0[16] dout0[17] dout0[18] dout0[19] dout0[20]
+ dout0[21] dout0[22] dout0[23] dout0[24] dout0[25] dout0[26] dout0[27]
+ dout0[28] dout0[29] dout0[30] dout0[31] dout0[32] dout0[33] dout0[34]
+ dout0[35] dout0[36] dout0[37] dout0[38] dout0[39] dout0[40] dout0[41]
+ dout0[42] dout0[43] dout0[44] dout0[45] dout0[46] dout0[47] dout0[48]
+ dout0[49] dout0[50] dout0[51] dout0[52] dout0[53] dout0[54] dout0[55]
+ dout0[56] dout0[57] dout0[58] dout0[59] dout0[60] dout0[61] dout0[62]
+ dout0[63] dout0[64] dout0[65] dout0[66] dout0[67] dout0[68] dout0[69]
+ dout0[70] dout0[71] dout0[72] dout0[73] dout0[74] dout0[75] dout0[76]
+ dout0[77] dout0[78] dout0[79] dout0[80] dout0[81] dout0[82] dout0[83]
+ dout0[84] dout0[85] dout0[86] dout0[87] dout0[88] dout0[89] dout0[90]
+ dout0[91] dout0[92] dout0[93] dout0[94] dout0[95] dout0[96] dout0[97]
+ dout0[98] dout0[99] dout0[100] dout0[101] dout0[102] dout0[103]
+ dout0[104] dout0[105] dout0[106] dout0[107] dout0[108] dout0[109]
+ dout0[110] dout0[111] dout0[112] dout0[113] dout0[114] dout0[115]
+ dout0[116] dout0[117] dout0[118] dout0[119] dout0[120] dout0[121]
+ dout0[122] dout0[123] dout0[124] dout0[125] dout0[126] dout0[127]
+ rbl_bl0 bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4
+ bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9
+ bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14
+ bank_din0_15 bank_din0_16 bank_din0_17 bank_din0_18 bank_din0_19
+ bank_din0_20 bank_din0_21 bank_din0_22 bank_din0_23 bank_din0_24
+ bank_din0_25 bank_din0_26 bank_din0_27 bank_din0_28 bank_din0_29
+ bank_din0_30 bank_din0_31 bank_din0_32 bank_din0_33 bank_din0_34
+ bank_din0_35 bank_din0_36 bank_din0_37 bank_din0_38 bank_din0_39
+ bank_din0_40 bank_din0_41 bank_din0_42 bank_din0_43 bank_din0_44
+ bank_din0_45 bank_din0_46 bank_din0_47 bank_din0_48 bank_din0_49
+ bank_din0_50 bank_din0_51 bank_din0_52 bank_din0_53 bank_din0_54
+ bank_din0_55 bank_din0_56 bank_din0_57 bank_din0_58 bank_din0_59
+ bank_din0_60 bank_din0_61 bank_din0_62 bank_din0_63 bank_din0_64
+ bank_din0_65 bank_din0_66 bank_din0_67 bank_din0_68 bank_din0_69
+ bank_din0_70 bank_din0_71 bank_din0_72 bank_din0_73 bank_din0_74
+ bank_din0_75 bank_din0_76 bank_din0_77 bank_din0_78 bank_din0_79
+ bank_din0_80 bank_din0_81 bank_din0_82 bank_din0_83 bank_din0_84
+ bank_din0_85 bank_din0_86 bank_din0_87 bank_din0_88 bank_din0_89
+ bank_din0_90 bank_din0_91 bank_din0_92 bank_din0_93 bank_din0_94
+ bank_din0_95 bank_din0_96 bank_din0_97 bank_din0_98 bank_din0_99
+ bank_din0_100 bank_din0_101 bank_din0_102 bank_din0_103 bank_din0_104
+ bank_din0_105 bank_din0_106 bank_din0_107 bank_din0_108 bank_din0_109
+ bank_din0_110 bank_din0_111 bank_din0_112 bank_din0_113 bank_din0_114
+ bank_din0_115 bank_din0_116 bank_din0_117 bank_din0_118 bank_din0_119
+ bank_din0_120 bank_din0_121 bank_din0_122 bank_din0_123 bank_din0_124
+ bank_din0_125 bank_din0_126 bank_din0_127 a0_0 a0_1 a0_2 a0_3 a0_4
+ s_en0 p_en_bar0 w_en0 bank_wmask0_0 bank_wmask0_1 bank_wmask0_2
+ bank_wmask0_3 bank_wmask0_4 bank_wmask0_5 bank_wmask0_6 bank_wmask0_7
+ bank_wmask0_8 bank_wmask0_9 bank_wmask0_10 bank_wmask0_11
+ bank_wmask0_12 bank_wmask0_13 bank_wmask0_14 bank_wmask0_15 wl_en0 vdd
+ gnd
+ mp3_data_array_2_bank
Xcontrol0
+ csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd
+ mp3_data_array_2_control_logic_rw
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] a0_0 a0_1 a0_2 a0_3 a0_4
+ clk_buf0 vdd gnd
+ mp3_data_array_2_row_addr_dff
Xwmask_dff0
+ wmask0[0] wmask0[1] wmask0[2] wmask0[3] wmask0[4] wmask0[5] wmask0[6]
+ wmask0[7] wmask0[8] wmask0[9] wmask0[10] wmask0[11] wmask0[12]
+ wmask0[13] wmask0[14] wmask0[15] bank_wmask0_0 bank_wmask0_1
+ bank_wmask0_2 bank_wmask0_3 bank_wmask0_4 bank_wmask0_5 bank_wmask0_6
+ bank_wmask0_7 bank_wmask0_8 bank_wmask0_9 bank_wmask0_10
+ bank_wmask0_11 bank_wmask0_12 bank_wmask0_13 bank_wmask0_14
+ bank_wmask0_15 clk_buf0 vdd gnd
+ mp3_data_array_2_wmask_dff
Xdata_dff0
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] din0[32] din0[33] din0[34] din0[35] din0[36]
+ din0[37] din0[38] din0[39] din0[40] din0[41] din0[42] din0[43]
+ din0[44] din0[45] din0[46] din0[47] din0[48] din0[49] din0[50]
+ din0[51] din0[52] din0[53] din0[54] din0[55] din0[56] din0[57]
+ din0[58] din0[59] din0[60] din0[61] din0[62] din0[63] din0[64]
+ din0[65] din0[66] din0[67] din0[68] din0[69] din0[70] din0[71]
+ din0[72] din0[73] din0[74] din0[75] din0[76] din0[77] din0[78]
+ din0[79] din0[80] din0[81] din0[82] din0[83] din0[84] din0[85]
+ din0[86] din0[87] din0[88] din0[89] din0[90] din0[91] din0[92]
+ din0[93] din0[94] din0[95] din0[96] din0[97] din0[98] din0[99]
+ din0[100] din0[101] din0[102] din0[103] din0[104] din0[105] din0[106]
+ din0[107] din0[108] din0[109] din0[110] din0[111] din0[112] din0[113]
+ din0[114] din0[115] din0[116] din0[117] din0[118] din0[119] din0[120]
+ din0[121] din0[122] din0[123] din0[124] din0[125] din0[126] din0[127]
+ bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4
+ bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9
+ bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14
+ bank_din0_15 bank_din0_16 bank_din0_17 bank_din0_18 bank_din0_19
+ bank_din0_20 bank_din0_21 bank_din0_22 bank_din0_23 bank_din0_24
+ bank_din0_25 bank_din0_26 bank_din0_27 bank_din0_28 bank_din0_29
+ bank_din0_30 bank_din0_31 bank_din0_32 bank_din0_33 bank_din0_34
+ bank_din0_35 bank_din0_36 bank_din0_37 bank_din0_38 bank_din0_39
+ bank_din0_40 bank_din0_41 bank_din0_42 bank_din0_43 bank_din0_44
+ bank_din0_45 bank_din0_46 bank_din0_47 bank_din0_48 bank_din0_49
+ bank_din0_50 bank_din0_51 bank_din0_52 bank_din0_53 bank_din0_54
+ bank_din0_55 bank_din0_56 bank_din0_57 bank_din0_58 bank_din0_59
+ bank_din0_60 bank_din0_61 bank_din0_62 bank_din0_63 bank_din0_64
+ bank_din0_65 bank_din0_66 bank_din0_67 bank_din0_68 bank_din0_69
+ bank_din0_70 bank_din0_71 bank_din0_72 bank_din0_73 bank_din0_74
+ bank_din0_75 bank_din0_76 bank_din0_77 bank_din0_78 bank_din0_79
+ bank_din0_80 bank_din0_81 bank_din0_82 bank_din0_83 bank_din0_84
+ bank_din0_85 bank_din0_86 bank_din0_87 bank_din0_88 bank_din0_89
+ bank_din0_90 bank_din0_91 bank_din0_92 bank_din0_93 bank_din0_94
+ bank_din0_95 bank_din0_96 bank_din0_97 bank_din0_98 bank_din0_99
+ bank_din0_100 bank_din0_101 bank_din0_102 bank_din0_103 bank_din0_104
+ bank_din0_105 bank_din0_106 bank_din0_107 bank_din0_108 bank_din0_109
+ bank_din0_110 bank_din0_111 bank_din0_112 bank_din0_113 bank_din0_114
+ bank_din0_115 bank_din0_116 bank_din0_117 bank_din0_118 bank_din0_119
+ bank_din0_120 bank_din0_121 bank_din0_122 bank_din0_123 bank_din0_124
+ bank_din0_125 bank_din0_126 bank_din0_127 clk_buf0 vdd gnd
+ mp3_data_array_2_data_dff
.ENDS mp3_data_array_2
