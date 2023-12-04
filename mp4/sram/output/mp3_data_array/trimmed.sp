**************************************************
* OpenRAM generated memory.
* Words: 16
* Data bits: 256
* Banks: 1
* Column mux: 1:1
* Trimmed: True
* LVS: False
**************************************************

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_data_array_pnand2
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
.ENDS mp3_data_array_pnand2

* spice ptx M{0} {1} pmos_vtg m=47 w=0.3675u l=0.05u pd=0.83u ps=0.83u as=0.05p ad=0.05p

* spice ptx M{0} {1} nmos_vtg m=47 w=0.1225u l=0.05u pd=0.34u ps=0.34u as=0.02p ad=0.02p

.SUBCKT mp3_data_array_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 64
Mpinv_pmos Z A vdd vdd pmos_vtg m=47 w=0.3675u l=0.05u pd=0.83u ps=0.83u as=0.05p ad=0.05p
Mpinv_nmos Z A gnd gnd nmos_vtg m=47 w=0.1225u l=0.05u pd=0.34u ps=0.34u as=0.02p ad=0.02p
.ENDS mp3_data_array_pinv_0

.SUBCKT mp3_data_array_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 64
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ mp3_data_array_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ mp3_data_array_pinv_0
.ENDS mp3_data_array_and2_dec_0

.SUBCKT mp3_data_array_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 256
Xwld_nand
+ A B zb_int vdd gnd
+ mp3_data_array_pnand2
Xwl_driver
+ zb_int Z vdd gnd
+ mp3_data_array_pinv_0
.ENDS mp3_data_array_wordline_driver

.SUBCKT mp3_data_array_wordline_driver_array
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
* rows: 16 cols: 256
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ mp3_data_array_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ mp3_data_array_wordline_driver
.ENDS mp3_data_array_wordline_driver_array

* spice ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_data_array_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_pinv

.SUBCKT mp3_data_array_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ mp3_data_array_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ mp3_data_array_pinv
.ENDS mp3_data_array_and2_dec

.SUBCKT mp3_data_array_hierarchical_predecode2x4
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
+ mp3_data_array_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ mp3_data_array_pinv
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ mp3_data_array_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ mp3_data_array_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ mp3_data_array_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ mp3_data_array_and2_dec
.ENDS mp3_data_array_hierarchical_predecode2x4

.SUBCKT mp3_data_array_hierarchical_decoder
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
+ mp3_data_array_hierarchical_predecode2x4
Xpre_1
+ addr_2 addr_3 out_4 out_5 out_6 out_7 vdd gnd
+ mp3_data_array_hierarchical_predecode2x4
XDEC_AND_0
+ out_0 out_4 decode_0 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_4
+ out_0 out_5 decode_4 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_8
+ out_0 out_6 decode_8 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_12
+ out_0 out_7 decode_12 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_1
+ out_1 out_4 decode_1 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_5
+ out_1 out_5 decode_5 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_9
+ out_1 out_6 decode_9 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_13
+ out_1 out_7 decode_13 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_2
+ out_2 out_4 decode_2 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_6
+ out_2 out_5 decode_6 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_10
+ out_2 out_6 decode_10 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_14
+ out_2 out_7 decode_14 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_3
+ out_3 out_4 decode_3 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_7
+ out_3 out_5 decode_7 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_11
+ out_3 out_6 decode_11 vdd gnd
+ mp3_data_array_and2_dec
XDEC_AND_15
+ out_3 out_7 decode_15 vdd gnd
+ mp3_data_array_and2_dec
.ENDS mp3_data_array_hierarchical_decoder

.SUBCKT mp3_data_array_port_address
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
+ mp3_data_array_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_en vdd gnd
+ mp3_data_array_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ mp3_data_array_and2_dec_0
.ENDS mp3_data_array_port_address

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


.SUBCKT mp3_data_array_bitcell_array
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
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 bl_0_129 br_0_129
+ bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132 br_0_132 bl_0_133
+ br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135 bl_0_136 br_0_136
+ bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139 br_0_139 bl_0_140
+ br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142 bl_0_143 br_0_143
+ bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146 br_0_146 bl_0_147
+ br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149 bl_0_150 br_0_150
+ bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153 br_0_153 bl_0_154
+ br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156 bl_0_157 br_0_157
+ bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160 br_0_160 bl_0_161
+ br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163 bl_0_164 br_0_164
+ bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167 br_0_167 bl_0_168
+ br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170 bl_0_171 br_0_171
+ bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174 br_0_174 bl_0_175
+ br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177 bl_0_178 br_0_178
+ bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181 br_0_181 bl_0_182
+ br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184 bl_0_185 br_0_185
+ bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188 br_0_188 bl_0_189
+ br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191 bl_0_192 br_0_192
+ bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195 br_0_195 bl_0_196
+ br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198 bl_0_199 br_0_199
+ bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202 br_0_202 bl_0_203
+ br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205 bl_0_206 br_0_206
+ bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209 br_0_209 bl_0_210
+ br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212 bl_0_213 br_0_213
+ bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216 br_0_216 bl_0_217
+ br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219 bl_0_220 br_0_220
+ bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223 br_0_223 bl_0_224
+ br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226 bl_0_227 br_0_227
+ bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230 br_0_230 bl_0_231
+ br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233 bl_0_234 br_0_234
+ bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237 br_0_237 bl_0_238
+ br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240 bl_0_241 br_0_241
+ bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244 br_0_244 bl_0_245
+ br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247 bl_0_248 br_0_248
+ bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251 br_0_251 bl_0_252
+ br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254 bl_0_255 br_0_255 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
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
* INOUT : bl_0_129 
* INOUT : br_0_129 
* INOUT : bl_0_130 
* INOUT : br_0_130 
* INOUT : bl_0_131 
* INOUT : br_0_131 
* INOUT : bl_0_132 
* INOUT : br_0_132 
* INOUT : bl_0_133 
* INOUT : br_0_133 
* INOUT : bl_0_134 
* INOUT : br_0_134 
* INOUT : bl_0_135 
* INOUT : br_0_135 
* INOUT : bl_0_136 
* INOUT : br_0_136 
* INOUT : bl_0_137 
* INOUT : br_0_137 
* INOUT : bl_0_138 
* INOUT : br_0_138 
* INOUT : bl_0_139 
* INOUT : br_0_139 
* INOUT : bl_0_140 
* INOUT : br_0_140 
* INOUT : bl_0_141 
* INOUT : br_0_141 
* INOUT : bl_0_142 
* INOUT : br_0_142 
* INOUT : bl_0_143 
* INOUT : br_0_143 
* INOUT : bl_0_144 
* INOUT : br_0_144 
* INOUT : bl_0_145 
* INOUT : br_0_145 
* INOUT : bl_0_146 
* INOUT : br_0_146 
* INOUT : bl_0_147 
* INOUT : br_0_147 
* INOUT : bl_0_148 
* INOUT : br_0_148 
* INOUT : bl_0_149 
* INOUT : br_0_149 
* INOUT : bl_0_150 
* INOUT : br_0_150 
* INOUT : bl_0_151 
* INOUT : br_0_151 
* INOUT : bl_0_152 
* INOUT : br_0_152 
* INOUT : bl_0_153 
* INOUT : br_0_153 
* INOUT : bl_0_154 
* INOUT : br_0_154 
* INOUT : bl_0_155 
* INOUT : br_0_155 
* INOUT : bl_0_156 
* INOUT : br_0_156 
* INOUT : bl_0_157 
* INOUT : br_0_157 
* INOUT : bl_0_158 
* INOUT : br_0_158 
* INOUT : bl_0_159 
* INOUT : br_0_159 
* INOUT : bl_0_160 
* INOUT : br_0_160 
* INOUT : bl_0_161 
* INOUT : br_0_161 
* INOUT : bl_0_162 
* INOUT : br_0_162 
* INOUT : bl_0_163 
* INOUT : br_0_163 
* INOUT : bl_0_164 
* INOUT : br_0_164 
* INOUT : bl_0_165 
* INOUT : br_0_165 
* INOUT : bl_0_166 
* INOUT : br_0_166 
* INOUT : bl_0_167 
* INOUT : br_0_167 
* INOUT : bl_0_168 
* INOUT : br_0_168 
* INOUT : bl_0_169 
* INOUT : br_0_169 
* INOUT : bl_0_170 
* INOUT : br_0_170 
* INOUT : bl_0_171 
* INOUT : br_0_171 
* INOUT : bl_0_172 
* INOUT : br_0_172 
* INOUT : bl_0_173 
* INOUT : br_0_173 
* INOUT : bl_0_174 
* INOUT : br_0_174 
* INOUT : bl_0_175 
* INOUT : br_0_175 
* INOUT : bl_0_176 
* INOUT : br_0_176 
* INOUT : bl_0_177 
* INOUT : br_0_177 
* INOUT : bl_0_178 
* INOUT : br_0_178 
* INOUT : bl_0_179 
* INOUT : br_0_179 
* INOUT : bl_0_180 
* INOUT : br_0_180 
* INOUT : bl_0_181 
* INOUT : br_0_181 
* INOUT : bl_0_182 
* INOUT : br_0_182 
* INOUT : bl_0_183 
* INOUT : br_0_183 
* INOUT : bl_0_184 
* INOUT : br_0_184 
* INOUT : bl_0_185 
* INOUT : br_0_185 
* INOUT : bl_0_186 
* INOUT : br_0_186 
* INOUT : bl_0_187 
* INOUT : br_0_187 
* INOUT : bl_0_188 
* INOUT : br_0_188 
* INOUT : bl_0_189 
* INOUT : br_0_189 
* INOUT : bl_0_190 
* INOUT : br_0_190 
* INOUT : bl_0_191 
* INOUT : br_0_191 
* INOUT : bl_0_192 
* INOUT : br_0_192 
* INOUT : bl_0_193 
* INOUT : br_0_193 
* INOUT : bl_0_194 
* INOUT : br_0_194 
* INOUT : bl_0_195 
* INOUT : br_0_195 
* INOUT : bl_0_196 
* INOUT : br_0_196 
* INOUT : bl_0_197 
* INOUT : br_0_197 
* INOUT : bl_0_198 
* INOUT : br_0_198 
* INOUT : bl_0_199 
* INOUT : br_0_199 
* INOUT : bl_0_200 
* INOUT : br_0_200 
* INOUT : bl_0_201 
* INOUT : br_0_201 
* INOUT : bl_0_202 
* INOUT : br_0_202 
* INOUT : bl_0_203 
* INOUT : br_0_203 
* INOUT : bl_0_204 
* INOUT : br_0_204 
* INOUT : bl_0_205 
* INOUT : br_0_205 
* INOUT : bl_0_206 
* INOUT : br_0_206 
* INOUT : bl_0_207 
* INOUT : br_0_207 
* INOUT : bl_0_208 
* INOUT : br_0_208 
* INOUT : bl_0_209 
* INOUT : br_0_209 
* INOUT : bl_0_210 
* INOUT : br_0_210 
* INOUT : bl_0_211 
* INOUT : br_0_211 
* INOUT : bl_0_212 
* INOUT : br_0_212 
* INOUT : bl_0_213 
* INOUT : br_0_213 
* INOUT : bl_0_214 
* INOUT : br_0_214 
* INOUT : bl_0_215 
* INOUT : br_0_215 
* INOUT : bl_0_216 
* INOUT : br_0_216 
* INOUT : bl_0_217 
* INOUT : br_0_217 
* INOUT : bl_0_218 
* INOUT : br_0_218 
* INOUT : bl_0_219 
* INOUT : br_0_219 
* INOUT : bl_0_220 
* INOUT : br_0_220 
* INOUT : bl_0_221 
* INOUT : br_0_221 
* INOUT : bl_0_222 
* INOUT : br_0_222 
* INOUT : bl_0_223 
* INOUT : br_0_223 
* INOUT : bl_0_224 
* INOUT : br_0_224 
* INOUT : bl_0_225 
* INOUT : br_0_225 
* INOUT : bl_0_226 
* INOUT : br_0_226 
* INOUT : bl_0_227 
* INOUT : br_0_227 
* INOUT : bl_0_228 
* INOUT : br_0_228 
* INOUT : bl_0_229 
* INOUT : br_0_229 
* INOUT : bl_0_230 
* INOUT : br_0_230 
* INOUT : bl_0_231 
* INOUT : br_0_231 
* INOUT : bl_0_232 
* INOUT : br_0_232 
* INOUT : bl_0_233 
* INOUT : br_0_233 
* INOUT : bl_0_234 
* INOUT : br_0_234 
* INOUT : bl_0_235 
* INOUT : br_0_235 
* INOUT : bl_0_236 
* INOUT : br_0_236 
* INOUT : bl_0_237 
* INOUT : br_0_237 
* INOUT : bl_0_238 
* INOUT : br_0_238 
* INOUT : bl_0_239 
* INOUT : br_0_239 
* INOUT : bl_0_240 
* INOUT : br_0_240 
* INOUT : bl_0_241 
* INOUT : br_0_241 
* INOUT : bl_0_242 
* INOUT : br_0_242 
* INOUT : bl_0_243 
* INOUT : br_0_243 
* INOUT : bl_0_244 
* INOUT : br_0_244 
* INOUT : bl_0_245 
* INOUT : br_0_245 
* INOUT : bl_0_246 
* INOUT : br_0_246 
* INOUT : bl_0_247 
* INOUT : br_0_247 
* INOUT : bl_0_248 
* INOUT : br_0_248 
* INOUT : bl_0_249 
* INOUT : br_0_249 
* INOUT : bl_0_250 
* INOUT : br_0_250 
* INOUT : bl_0_251 
* INOUT : br_0_251 
* INOUT : bl_0_252 
* INOUT : br_0_252 
* INOUT : bl_0_253 
* INOUT : br_0_253 
* INOUT : bl_0_254 
* INOUT : br_0_254 
* INOUT : bl_0_255 
* INOUT : br_0_255 
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
* rows: 16 cols: 256
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
* Xbit_r1_c23
*+ bl_0_23 br_0_23 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c23
*+ bl_0_23 br_0_23 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c23
*+ bl_0_23 br_0_23 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c23
*+ bl_0_23 br_0_23 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c23
*+ bl_0_23 br_0_23 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c23
*+ bl_0_23 br_0_23 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c23
*+ bl_0_23 br_0_23 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c23
*+ bl_0_23 br_0_23 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c23
*+ bl_0_23 br_0_23 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c23
*+ bl_0_23 br_0_23 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c23
*+ bl_0_23 br_0_23 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c23
*+ bl_0_23 br_0_23 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c23
*+ bl_0_23 br_0_23 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c23
*+ bl_0_23 br_0_23 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c23
+ bl_0_23 br_0_23 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c24
+ bl_0_24 br_0_24 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c24
*+ bl_0_24 br_0_24 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c24
*+ bl_0_24 br_0_24 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c24
*+ bl_0_24 br_0_24 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c24
*+ bl_0_24 br_0_24 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c24
*+ bl_0_24 br_0_24 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c24
*+ bl_0_24 br_0_24 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c24
*+ bl_0_24 br_0_24 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c24
*+ bl_0_24 br_0_24 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c24
*+ bl_0_24 br_0_24 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c24
*+ bl_0_24 br_0_24 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c24
*+ bl_0_24 br_0_24 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c24
*+ bl_0_24 br_0_24 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c24
*+ bl_0_24 br_0_24 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c24
*+ bl_0_24 br_0_24 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c24
+ bl_0_24 br_0_24 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c25
+ bl_0_25 br_0_25 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c25
*+ bl_0_25 br_0_25 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c25
*+ bl_0_25 br_0_25 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c25
*+ bl_0_25 br_0_25 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c25
*+ bl_0_25 br_0_25 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c25
*+ bl_0_25 br_0_25 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c25
*+ bl_0_25 br_0_25 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c25
*+ bl_0_25 br_0_25 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c25
*+ bl_0_25 br_0_25 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c25
*+ bl_0_25 br_0_25 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c25
*+ bl_0_25 br_0_25 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c25
*+ bl_0_25 br_0_25 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c25
*+ bl_0_25 br_0_25 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c25
*+ bl_0_25 br_0_25 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c25
*+ bl_0_25 br_0_25 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c25
+ bl_0_25 br_0_25 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c26
+ bl_0_26 br_0_26 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c26
*+ bl_0_26 br_0_26 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c26
*+ bl_0_26 br_0_26 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c26
*+ bl_0_26 br_0_26 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c26
*+ bl_0_26 br_0_26 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c26
*+ bl_0_26 br_0_26 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c26
*+ bl_0_26 br_0_26 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c26
*+ bl_0_26 br_0_26 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c26
*+ bl_0_26 br_0_26 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c26
*+ bl_0_26 br_0_26 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c26
*+ bl_0_26 br_0_26 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c26
*+ bl_0_26 br_0_26 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c26
*+ bl_0_26 br_0_26 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c26
*+ bl_0_26 br_0_26 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c26
*+ bl_0_26 br_0_26 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c26
+ bl_0_26 br_0_26 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c27
+ bl_0_27 br_0_27 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c27
*+ bl_0_27 br_0_27 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c27
*+ bl_0_27 br_0_27 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c27
*+ bl_0_27 br_0_27 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c27
*+ bl_0_27 br_0_27 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c27
*+ bl_0_27 br_0_27 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c27
*+ bl_0_27 br_0_27 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c27
*+ bl_0_27 br_0_27 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c27
*+ bl_0_27 br_0_27 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c27
*+ bl_0_27 br_0_27 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c27
*+ bl_0_27 br_0_27 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c27
*+ bl_0_27 br_0_27 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c27
*+ bl_0_27 br_0_27 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c27
*+ bl_0_27 br_0_27 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c27
*+ bl_0_27 br_0_27 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c27
+ bl_0_27 br_0_27 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c28
+ bl_0_28 br_0_28 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c28
*+ bl_0_28 br_0_28 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c28
*+ bl_0_28 br_0_28 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c28
*+ bl_0_28 br_0_28 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c28
*+ bl_0_28 br_0_28 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c28
*+ bl_0_28 br_0_28 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c28
*+ bl_0_28 br_0_28 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c28
*+ bl_0_28 br_0_28 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c28
*+ bl_0_28 br_0_28 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c28
*+ bl_0_28 br_0_28 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c28
*+ bl_0_28 br_0_28 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c28
*+ bl_0_28 br_0_28 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c28
*+ bl_0_28 br_0_28 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c28
*+ bl_0_28 br_0_28 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c28
*+ bl_0_28 br_0_28 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c28
+ bl_0_28 br_0_28 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c29
+ bl_0_29 br_0_29 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c29
*+ bl_0_29 br_0_29 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c29
*+ bl_0_29 br_0_29 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c29
*+ bl_0_29 br_0_29 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c29
*+ bl_0_29 br_0_29 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c29
*+ bl_0_29 br_0_29 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c29
*+ bl_0_29 br_0_29 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c29
*+ bl_0_29 br_0_29 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c29
*+ bl_0_29 br_0_29 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c29
*+ bl_0_29 br_0_29 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c29
*+ bl_0_29 br_0_29 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c29
*+ bl_0_29 br_0_29 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c29
*+ bl_0_29 br_0_29 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c29
*+ bl_0_29 br_0_29 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c29
*+ bl_0_29 br_0_29 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c29
+ bl_0_29 br_0_29 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c30
+ bl_0_30 br_0_30 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c30
*+ bl_0_30 br_0_30 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c30
*+ bl_0_30 br_0_30 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c30
*+ bl_0_30 br_0_30 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c30
*+ bl_0_30 br_0_30 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c30
*+ bl_0_30 br_0_30 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c30
*+ bl_0_30 br_0_30 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c30
*+ bl_0_30 br_0_30 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c30
*+ bl_0_30 br_0_30 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c30
*+ bl_0_30 br_0_30 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c30
*+ bl_0_30 br_0_30 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c30
*+ bl_0_30 br_0_30 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c30
*+ bl_0_30 br_0_30 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c30
*+ bl_0_30 br_0_30 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c30
*+ bl_0_30 br_0_30 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c30
+ bl_0_30 br_0_30 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c31
+ bl_0_31 br_0_31 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c31
*+ bl_0_31 br_0_31 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c31
*+ bl_0_31 br_0_31 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c31
*+ bl_0_31 br_0_31 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c31
*+ bl_0_31 br_0_31 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c31
*+ bl_0_31 br_0_31 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c31
*+ bl_0_31 br_0_31 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c31
*+ bl_0_31 br_0_31 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c31
*+ bl_0_31 br_0_31 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c31
*+ bl_0_31 br_0_31 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c31
*+ bl_0_31 br_0_31 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c31
*+ bl_0_31 br_0_31 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c31
*+ bl_0_31 br_0_31 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c31
*+ bl_0_31 br_0_31 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c31
*+ bl_0_31 br_0_31 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c31
+ bl_0_31 br_0_31 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c32
+ bl_0_32 br_0_32 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c32
*+ bl_0_32 br_0_32 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c32
*+ bl_0_32 br_0_32 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c32
*+ bl_0_32 br_0_32 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c32
*+ bl_0_32 br_0_32 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c32
*+ bl_0_32 br_0_32 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c32
*+ bl_0_32 br_0_32 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c32
*+ bl_0_32 br_0_32 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c32
*+ bl_0_32 br_0_32 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c32
*+ bl_0_32 br_0_32 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c32
*+ bl_0_32 br_0_32 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c32
*+ bl_0_32 br_0_32 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c32
*+ bl_0_32 br_0_32 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c32
*+ bl_0_32 br_0_32 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c32
*+ bl_0_32 br_0_32 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c32
+ bl_0_32 br_0_32 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c33
+ bl_0_33 br_0_33 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c33
*+ bl_0_33 br_0_33 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c33
*+ bl_0_33 br_0_33 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c33
*+ bl_0_33 br_0_33 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c33
*+ bl_0_33 br_0_33 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c33
*+ bl_0_33 br_0_33 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c33
*+ bl_0_33 br_0_33 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c33
*+ bl_0_33 br_0_33 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c33
*+ bl_0_33 br_0_33 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c33
*+ bl_0_33 br_0_33 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c33
*+ bl_0_33 br_0_33 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c33
*+ bl_0_33 br_0_33 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c33
*+ bl_0_33 br_0_33 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c33
*+ bl_0_33 br_0_33 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c33
*+ bl_0_33 br_0_33 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c33
+ bl_0_33 br_0_33 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c34
+ bl_0_34 br_0_34 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c34
*+ bl_0_34 br_0_34 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c34
*+ bl_0_34 br_0_34 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c34
*+ bl_0_34 br_0_34 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c34
*+ bl_0_34 br_0_34 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c34
*+ bl_0_34 br_0_34 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c34
*+ bl_0_34 br_0_34 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c34
*+ bl_0_34 br_0_34 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c34
*+ bl_0_34 br_0_34 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c34
*+ bl_0_34 br_0_34 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c34
*+ bl_0_34 br_0_34 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c34
*+ bl_0_34 br_0_34 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c34
*+ bl_0_34 br_0_34 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c34
*+ bl_0_34 br_0_34 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c34
*+ bl_0_34 br_0_34 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c34
+ bl_0_34 br_0_34 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c35
+ bl_0_35 br_0_35 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c35
*+ bl_0_35 br_0_35 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c35
*+ bl_0_35 br_0_35 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c35
*+ bl_0_35 br_0_35 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c35
*+ bl_0_35 br_0_35 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c35
*+ bl_0_35 br_0_35 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c35
*+ bl_0_35 br_0_35 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c35
*+ bl_0_35 br_0_35 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c35
*+ bl_0_35 br_0_35 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c35
*+ bl_0_35 br_0_35 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c35
*+ bl_0_35 br_0_35 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c35
*+ bl_0_35 br_0_35 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c35
*+ bl_0_35 br_0_35 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c35
*+ bl_0_35 br_0_35 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c35
*+ bl_0_35 br_0_35 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c35
+ bl_0_35 br_0_35 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c36
+ bl_0_36 br_0_36 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c36
*+ bl_0_36 br_0_36 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c36
*+ bl_0_36 br_0_36 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c36
*+ bl_0_36 br_0_36 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c36
*+ bl_0_36 br_0_36 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c36
*+ bl_0_36 br_0_36 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c36
*+ bl_0_36 br_0_36 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c36
*+ bl_0_36 br_0_36 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c36
*+ bl_0_36 br_0_36 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c36
*+ bl_0_36 br_0_36 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c36
*+ bl_0_36 br_0_36 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c36
*+ bl_0_36 br_0_36 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c36
*+ bl_0_36 br_0_36 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c36
*+ bl_0_36 br_0_36 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c36
*+ bl_0_36 br_0_36 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c36
+ bl_0_36 br_0_36 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c37
+ bl_0_37 br_0_37 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c37
*+ bl_0_37 br_0_37 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c37
*+ bl_0_37 br_0_37 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c37
*+ bl_0_37 br_0_37 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c37
*+ bl_0_37 br_0_37 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c37
*+ bl_0_37 br_0_37 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c37
*+ bl_0_37 br_0_37 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c37
*+ bl_0_37 br_0_37 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c37
*+ bl_0_37 br_0_37 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c37
*+ bl_0_37 br_0_37 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c37
*+ bl_0_37 br_0_37 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c37
*+ bl_0_37 br_0_37 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c37
*+ bl_0_37 br_0_37 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c37
*+ bl_0_37 br_0_37 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c37
*+ bl_0_37 br_0_37 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c37
+ bl_0_37 br_0_37 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c38
+ bl_0_38 br_0_38 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c38
*+ bl_0_38 br_0_38 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c38
*+ bl_0_38 br_0_38 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c38
*+ bl_0_38 br_0_38 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c38
*+ bl_0_38 br_0_38 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c38
*+ bl_0_38 br_0_38 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c38
*+ bl_0_38 br_0_38 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c38
*+ bl_0_38 br_0_38 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c38
*+ bl_0_38 br_0_38 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c38
*+ bl_0_38 br_0_38 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c38
*+ bl_0_38 br_0_38 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c38
*+ bl_0_38 br_0_38 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c38
*+ bl_0_38 br_0_38 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c38
*+ bl_0_38 br_0_38 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c38
*+ bl_0_38 br_0_38 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c38
+ bl_0_38 br_0_38 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c39
+ bl_0_39 br_0_39 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c39
*+ bl_0_39 br_0_39 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c39
*+ bl_0_39 br_0_39 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c39
*+ bl_0_39 br_0_39 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c39
*+ bl_0_39 br_0_39 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c39
*+ bl_0_39 br_0_39 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c39
*+ bl_0_39 br_0_39 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c39
*+ bl_0_39 br_0_39 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c39
*+ bl_0_39 br_0_39 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c39
*+ bl_0_39 br_0_39 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c39
*+ bl_0_39 br_0_39 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c39
*+ bl_0_39 br_0_39 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c39
*+ bl_0_39 br_0_39 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c39
*+ bl_0_39 br_0_39 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c39
*+ bl_0_39 br_0_39 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c39
+ bl_0_39 br_0_39 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c40
+ bl_0_40 br_0_40 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c40
*+ bl_0_40 br_0_40 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c40
*+ bl_0_40 br_0_40 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c40
*+ bl_0_40 br_0_40 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c40
*+ bl_0_40 br_0_40 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c40
*+ bl_0_40 br_0_40 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c40
*+ bl_0_40 br_0_40 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c40
*+ bl_0_40 br_0_40 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c40
*+ bl_0_40 br_0_40 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c40
*+ bl_0_40 br_0_40 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c40
*+ bl_0_40 br_0_40 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c40
*+ bl_0_40 br_0_40 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c40
*+ bl_0_40 br_0_40 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c40
*+ bl_0_40 br_0_40 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c40
*+ bl_0_40 br_0_40 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c40
+ bl_0_40 br_0_40 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c41
+ bl_0_41 br_0_41 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c41
*+ bl_0_41 br_0_41 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c41
*+ bl_0_41 br_0_41 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c41
*+ bl_0_41 br_0_41 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c41
*+ bl_0_41 br_0_41 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c41
*+ bl_0_41 br_0_41 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c41
*+ bl_0_41 br_0_41 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c41
*+ bl_0_41 br_0_41 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c41
*+ bl_0_41 br_0_41 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c41
*+ bl_0_41 br_0_41 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c41
*+ bl_0_41 br_0_41 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c41
*+ bl_0_41 br_0_41 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c41
*+ bl_0_41 br_0_41 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c41
*+ bl_0_41 br_0_41 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c41
*+ bl_0_41 br_0_41 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c41
+ bl_0_41 br_0_41 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c42
+ bl_0_42 br_0_42 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c42
*+ bl_0_42 br_0_42 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c42
*+ bl_0_42 br_0_42 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c42
*+ bl_0_42 br_0_42 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c42
*+ bl_0_42 br_0_42 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c42
*+ bl_0_42 br_0_42 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c42
*+ bl_0_42 br_0_42 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c42
*+ bl_0_42 br_0_42 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c42
*+ bl_0_42 br_0_42 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c42
*+ bl_0_42 br_0_42 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c42
*+ bl_0_42 br_0_42 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c42
*+ bl_0_42 br_0_42 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c42
*+ bl_0_42 br_0_42 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c42
*+ bl_0_42 br_0_42 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c42
*+ bl_0_42 br_0_42 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c42
+ bl_0_42 br_0_42 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c43
+ bl_0_43 br_0_43 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c43
*+ bl_0_43 br_0_43 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c43
*+ bl_0_43 br_0_43 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c43
*+ bl_0_43 br_0_43 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c43
*+ bl_0_43 br_0_43 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c43
*+ bl_0_43 br_0_43 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c43
*+ bl_0_43 br_0_43 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c43
*+ bl_0_43 br_0_43 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c43
*+ bl_0_43 br_0_43 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c43
*+ bl_0_43 br_0_43 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c43
*+ bl_0_43 br_0_43 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c43
*+ bl_0_43 br_0_43 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c43
*+ bl_0_43 br_0_43 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c43
*+ bl_0_43 br_0_43 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c43
*+ bl_0_43 br_0_43 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c43
+ bl_0_43 br_0_43 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c44
+ bl_0_44 br_0_44 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c44
*+ bl_0_44 br_0_44 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c44
*+ bl_0_44 br_0_44 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c44
*+ bl_0_44 br_0_44 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c44
*+ bl_0_44 br_0_44 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c44
*+ bl_0_44 br_0_44 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c44
*+ bl_0_44 br_0_44 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c44
*+ bl_0_44 br_0_44 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c44
*+ bl_0_44 br_0_44 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c44
*+ bl_0_44 br_0_44 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c44
*+ bl_0_44 br_0_44 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c44
*+ bl_0_44 br_0_44 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c44
*+ bl_0_44 br_0_44 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c44
*+ bl_0_44 br_0_44 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c44
*+ bl_0_44 br_0_44 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c44
+ bl_0_44 br_0_44 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c45
+ bl_0_45 br_0_45 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c45
*+ bl_0_45 br_0_45 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c45
*+ bl_0_45 br_0_45 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c45
*+ bl_0_45 br_0_45 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c45
*+ bl_0_45 br_0_45 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c45
*+ bl_0_45 br_0_45 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c45
*+ bl_0_45 br_0_45 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c45
*+ bl_0_45 br_0_45 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c45
*+ bl_0_45 br_0_45 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c45
*+ bl_0_45 br_0_45 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c45
*+ bl_0_45 br_0_45 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c45
*+ bl_0_45 br_0_45 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c45
*+ bl_0_45 br_0_45 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c45
*+ bl_0_45 br_0_45 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c45
*+ bl_0_45 br_0_45 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c45
+ bl_0_45 br_0_45 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c46
+ bl_0_46 br_0_46 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c46
*+ bl_0_46 br_0_46 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c46
*+ bl_0_46 br_0_46 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c46
*+ bl_0_46 br_0_46 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c46
*+ bl_0_46 br_0_46 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c46
*+ bl_0_46 br_0_46 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c46
*+ bl_0_46 br_0_46 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c46
*+ bl_0_46 br_0_46 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c46
*+ bl_0_46 br_0_46 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c46
*+ bl_0_46 br_0_46 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c46
*+ bl_0_46 br_0_46 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c46
*+ bl_0_46 br_0_46 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c46
*+ bl_0_46 br_0_46 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c46
*+ bl_0_46 br_0_46 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c46
*+ bl_0_46 br_0_46 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c46
+ bl_0_46 br_0_46 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c47
+ bl_0_47 br_0_47 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c47
*+ bl_0_47 br_0_47 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c47
*+ bl_0_47 br_0_47 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c47
*+ bl_0_47 br_0_47 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c47
*+ bl_0_47 br_0_47 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c47
*+ bl_0_47 br_0_47 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c47
*+ bl_0_47 br_0_47 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c47
*+ bl_0_47 br_0_47 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c47
*+ bl_0_47 br_0_47 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c47
*+ bl_0_47 br_0_47 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c47
*+ bl_0_47 br_0_47 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c47
*+ bl_0_47 br_0_47 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c47
*+ bl_0_47 br_0_47 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c47
*+ bl_0_47 br_0_47 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c47
*+ bl_0_47 br_0_47 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c47
+ bl_0_47 br_0_47 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c48
+ bl_0_48 br_0_48 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c48
*+ bl_0_48 br_0_48 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c48
*+ bl_0_48 br_0_48 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c48
*+ bl_0_48 br_0_48 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c48
*+ bl_0_48 br_0_48 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c48
*+ bl_0_48 br_0_48 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c48
*+ bl_0_48 br_0_48 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c48
*+ bl_0_48 br_0_48 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c48
*+ bl_0_48 br_0_48 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c48
*+ bl_0_48 br_0_48 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c48
*+ bl_0_48 br_0_48 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c48
*+ bl_0_48 br_0_48 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c48
*+ bl_0_48 br_0_48 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c48
*+ bl_0_48 br_0_48 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c48
*+ bl_0_48 br_0_48 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c48
+ bl_0_48 br_0_48 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c49
+ bl_0_49 br_0_49 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c49
*+ bl_0_49 br_0_49 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c49
*+ bl_0_49 br_0_49 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c49
*+ bl_0_49 br_0_49 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c49
*+ bl_0_49 br_0_49 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c49
*+ bl_0_49 br_0_49 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c49
*+ bl_0_49 br_0_49 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c49
*+ bl_0_49 br_0_49 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c49
*+ bl_0_49 br_0_49 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c49
*+ bl_0_49 br_0_49 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c49
*+ bl_0_49 br_0_49 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c49
*+ bl_0_49 br_0_49 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c49
*+ bl_0_49 br_0_49 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c49
*+ bl_0_49 br_0_49 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c49
*+ bl_0_49 br_0_49 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c49
+ bl_0_49 br_0_49 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c50
+ bl_0_50 br_0_50 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c50
*+ bl_0_50 br_0_50 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c50
*+ bl_0_50 br_0_50 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c50
*+ bl_0_50 br_0_50 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c50
*+ bl_0_50 br_0_50 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c50
*+ bl_0_50 br_0_50 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c50
*+ bl_0_50 br_0_50 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c50
*+ bl_0_50 br_0_50 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c50
*+ bl_0_50 br_0_50 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c50
*+ bl_0_50 br_0_50 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c50
*+ bl_0_50 br_0_50 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c50
*+ bl_0_50 br_0_50 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c50
*+ bl_0_50 br_0_50 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c50
*+ bl_0_50 br_0_50 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c50
*+ bl_0_50 br_0_50 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c50
+ bl_0_50 br_0_50 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c51
+ bl_0_51 br_0_51 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c51
*+ bl_0_51 br_0_51 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c51
*+ bl_0_51 br_0_51 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c51
*+ bl_0_51 br_0_51 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c51
*+ bl_0_51 br_0_51 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c51
*+ bl_0_51 br_0_51 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c51
*+ bl_0_51 br_0_51 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c51
*+ bl_0_51 br_0_51 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c51
*+ bl_0_51 br_0_51 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c51
*+ bl_0_51 br_0_51 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c51
*+ bl_0_51 br_0_51 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c51
*+ bl_0_51 br_0_51 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c51
*+ bl_0_51 br_0_51 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c51
*+ bl_0_51 br_0_51 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c51
*+ bl_0_51 br_0_51 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c51
+ bl_0_51 br_0_51 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c52
+ bl_0_52 br_0_52 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c52
*+ bl_0_52 br_0_52 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c52
*+ bl_0_52 br_0_52 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c52
*+ bl_0_52 br_0_52 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c52
*+ bl_0_52 br_0_52 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c52
*+ bl_0_52 br_0_52 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c52
*+ bl_0_52 br_0_52 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c52
*+ bl_0_52 br_0_52 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c52
*+ bl_0_52 br_0_52 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c52
*+ bl_0_52 br_0_52 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c52
*+ bl_0_52 br_0_52 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c52
*+ bl_0_52 br_0_52 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c52
*+ bl_0_52 br_0_52 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c52
*+ bl_0_52 br_0_52 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c52
*+ bl_0_52 br_0_52 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c52
+ bl_0_52 br_0_52 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c53
+ bl_0_53 br_0_53 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c53
*+ bl_0_53 br_0_53 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c53
*+ bl_0_53 br_0_53 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c53
*+ bl_0_53 br_0_53 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c53
*+ bl_0_53 br_0_53 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c53
*+ bl_0_53 br_0_53 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c53
*+ bl_0_53 br_0_53 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c53
*+ bl_0_53 br_0_53 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c53
*+ bl_0_53 br_0_53 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c53
*+ bl_0_53 br_0_53 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c53
*+ bl_0_53 br_0_53 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c53
*+ bl_0_53 br_0_53 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c53
*+ bl_0_53 br_0_53 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c53
*+ bl_0_53 br_0_53 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c53
*+ bl_0_53 br_0_53 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c53
+ bl_0_53 br_0_53 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c54
+ bl_0_54 br_0_54 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c54
*+ bl_0_54 br_0_54 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c54
*+ bl_0_54 br_0_54 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c54
*+ bl_0_54 br_0_54 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c54
*+ bl_0_54 br_0_54 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c54
*+ bl_0_54 br_0_54 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c54
*+ bl_0_54 br_0_54 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c54
*+ bl_0_54 br_0_54 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c54
*+ bl_0_54 br_0_54 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c54
*+ bl_0_54 br_0_54 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c54
*+ bl_0_54 br_0_54 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c54
*+ bl_0_54 br_0_54 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c54
*+ bl_0_54 br_0_54 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c54
*+ bl_0_54 br_0_54 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c54
*+ bl_0_54 br_0_54 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c54
+ bl_0_54 br_0_54 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c55
+ bl_0_55 br_0_55 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c55
*+ bl_0_55 br_0_55 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c55
*+ bl_0_55 br_0_55 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c55
*+ bl_0_55 br_0_55 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c55
*+ bl_0_55 br_0_55 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c55
*+ bl_0_55 br_0_55 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c55
*+ bl_0_55 br_0_55 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c55
*+ bl_0_55 br_0_55 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c55
*+ bl_0_55 br_0_55 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c55
*+ bl_0_55 br_0_55 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c55
*+ bl_0_55 br_0_55 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c55
*+ bl_0_55 br_0_55 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c55
*+ bl_0_55 br_0_55 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c55
*+ bl_0_55 br_0_55 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c55
*+ bl_0_55 br_0_55 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c55
+ bl_0_55 br_0_55 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c56
+ bl_0_56 br_0_56 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c56
*+ bl_0_56 br_0_56 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c56
*+ bl_0_56 br_0_56 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c56
*+ bl_0_56 br_0_56 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c56
*+ bl_0_56 br_0_56 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c56
*+ bl_0_56 br_0_56 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c56
*+ bl_0_56 br_0_56 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c56
*+ bl_0_56 br_0_56 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c56
*+ bl_0_56 br_0_56 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c56
*+ bl_0_56 br_0_56 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c56
*+ bl_0_56 br_0_56 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c56
*+ bl_0_56 br_0_56 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c56
*+ bl_0_56 br_0_56 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c56
*+ bl_0_56 br_0_56 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c56
*+ bl_0_56 br_0_56 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c56
+ bl_0_56 br_0_56 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c57
+ bl_0_57 br_0_57 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c57
*+ bl_0_57 br_0_57 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c57
*+ bl_0_57 br_0_57 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c57
*+ bl_0_57 br_0_57 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c57
*+ bl_0_57 br_0_57 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c57
*+ bl_0_57 br_0_57 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c57
*+ bl_0_57 br_0_57 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c57
*+ bl_0_57 br_0_57 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c57
*+ bl_0_57 br_0_57 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c57
*+ bl_0_57 br_0_57 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c57
*+ bl_0_57 br_0_57 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c57
*+ bl_0_57 br_0_57 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c57
*+ bl_0_57 br_0_57 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c57
*+ bl_0_57 br_0_57 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c57
*+ bl_0_57 br_0_57 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c57
+ bl_0_57 br_0_57 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c58
+ bl_0_58 br_0_58 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c58
*+ bl_0_58 br_0_58 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c58
*+ bl_0_58 br_0_58 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c58
*+ bl_0_58 br_0_58 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c58
*+ bl_0_58 br_0_58 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c58
*+ bl_0_58 br_0_58 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c58
*+ bl_0_58 br_0_58 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c58
*+ bl_0_58 br_0_58 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c58
*+ bl_0_58 br_0_58 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c58
*+ bl_0_58 br_0_58 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c58
*+ bl_0_58 br_0_58 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c58
*+ bl_0_58 br_0_58 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c58
*+ bl_0_58 br_0_58 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c58
*+ bl_0_58 br_0_58 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c58
*+ bl_0_58 br_0_58 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c58
+ bl_0_58 br_0_58 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c59
+ bl_0_59 br_0_59 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c59
*+ bl_0_59 br_0_59 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c59
*+ bl_0_59 br_0_59 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c59
*+ bl_0_59 br_0_59 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c59
*+ bl_0_59 br_0_59 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c59
*+ bl_0_59 br_0_59 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c59
*+ bl_0_59 br_0_59 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c59
*+ bl_0_59 br_0_59 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c59
*+ bl_0_59 br_0_59 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c59
*+ bl_0_59 br_0_59 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c59
*+ bl_0_59 br_0_59 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c59
*+ bl_0_59 br_0_59 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c59
*+ bl_0_59 br_0_59 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c59
*+ bl_0_59 br_0_59 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c59
*+ bl_0_59 br_0_59 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c59
+ bl_0_59 br_0_59 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c60
+ bl_0_60 br_0_60 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c60
*+ bl_0_60 br_0_60 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c60
*+ bl_0_60 br_0_60 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c60
*+ bl_0_60 br_0_60 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c60
*+ bl_0_60 br_0_60 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c60
*+ bl_0_60 br_0_60 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c60
*+ bl_0_60 br_0_60 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c60
*+ bl_0_60 br_0_60 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c60
*+ bl_0_60 br_0_60 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c60
*+ bl_0_60 br_0_60 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c60
*+ bl_0_60 br_0_60 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c60
*+ bl_0_60 br_0_60 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c60
*+ bl_0_60 br_0_60 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c60
*+ bl_0_60 br_0_60 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c60
*+ bl_0_60 br_0_60 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c60
+ bl_0_60 br_0_60 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c61
+ bl_0_61 br_0_61 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c61
*+ bl_0_61 br_0_61 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c61
*+ bl_0_61 br_0_61 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c61
*+ bl_0_61 br_0_61 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c61
*+ bl_0_61 br_0_61 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c61
*+ bl_0_61 br_0_61 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c61
*+ bl_0_61 br_0_61 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c61
*+ bl_0_61 br_0_61 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c61
*+ bl_0_61 br_0_61 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c61
*+ bl_0_61 br_0_61 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c61
*+ bl_0_61 br_0_61 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c61
*+ bl_0_61 br_0_61 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c61
*+ bl_0_61 br_0_61 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c61
*+ bl_0_61 br_0_61 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c61
*+ bl_0_61 br_0_61 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c61
+ bl_0_61 br_0_61 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c62
+ bl_0_62 br_0_62 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c62
*+ bl_0_62 br_0_62 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c62
*+ bl_0_62 br_0_62 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c62
*+ bl_0_62 br_0_62 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c62
*+ bl_0_62 br_0_62 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c62
*+ bl_0_62 br_0_62 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c62
*+ bl_0_62 br_0_62 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c62
*+ bl_0_62 br_0_62 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c62
*+ bl_0_62 br_0_62 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c62
*+ bl_0_62 br_0_62 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c62
*+ bl_0_62 br_0_62 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c62
*+ bl_0_62 br_0_62 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c62
*+ bl_0_62 br_0_62 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c62
*+ bl_0_62 br_0_62 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c62
*+ bl_0_62 br_0_62 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c62
+ bl_0_62 br_0_62 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c63
+ bl_0_63 br_0_63 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c63
*+ bl_0_63 br_0_63 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c63
*+ bl_0_63 br_0_63 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c63
*+ bl_0_63 br_0_63 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c63
*+ bl_0_63 br_0_63 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c63
*+ bl_0_63 br_0_63 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c63
*+ bl_0_63 br_0_63 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c63
*+ bl_0_63 br_0_63 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c63
*+ bl_0_63 br_0_63 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c63
*+ bl_0_63 br_0_63 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c63
*+ bl_0_63 br_0_63 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c63
*+ bl_0_63 br_0_63 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c63
*+ bl_0_63 br_0_63 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c63
*+ bl_0_63 br_0_63 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c63
*+ bl_0_63 br_0_63 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c63
+ bl_0_63 br_0_63 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c64
+ bl_0_64 br_0_64 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c64
*+ bl_0_64 br_0_64 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c64
*+ bl_0_64 br_0_64 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c64
*+ bl_0_64 br_0_64 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c64
*+ bl_0_64 br_0_64 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c64
*+ bl_0_64 br_0_64 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c64
*+ bl_0_64 br_0_64 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c64
*+ bl_0_64 br_0_64 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c64
*+ bl_0_64 br_0_64 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c64
*+ bl_0_64 br_0_64 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c64
*+ bl_0_64 br_0_64 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c64
*+ bl_0_64 br_0_64 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c64
*+ bl_0_64 br_0_64 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c64
*+ bl_0_64 br_0_64 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c64
*+ bl_0_64 br_0_64 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c64
+ bl_0_64 br_0_64 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c65
+ bl_0_65 br_0_65 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c65
*+ bl_0_65 br_0_65 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c65
*+ bl_0_65 br_0_65 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c65
*+ bl_0_65 br_0_65 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c65
*+ bl_0_65 br_0_65 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c65
*+ bl_0_65 br_0_65 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c65
*+ bl_0_65 br_0_65 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c65
*+ bl_0_65 br_0_65 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c65
*+ bl_0_65 br_0_65 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c65
*+ bl_0_65 br_0_65 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c65
*+ bl_0_65 br_0_65 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c65
*+ bl_0_65 br_0_65 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c65
*+ bl_0_65 br_0_65 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c65
*+ bl_0_65 br_0_65 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c65
*+ bl_0_65 br_0_65 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c65
+ bl_0_65 br_0_65 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c66
+ bl_0_66 br_0_66 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c66
*+ bl_0_66 br_0_66 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c66
*+ bl_0_66 br_0_66 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c66
*+ bl_0_66 br_0_66 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c66
*+ bl_0_66 br_0_66 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c66
*+ bl_0_66 br_0_66 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c66
*+ bl_0_66 br_0_66 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c66
*+ bl_0_66 br_0_66 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c66
*+ bl_0_66 br_0_66 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c66
*+ bl_0_66 br_0_66 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c66
*+ bl_0_66 br_0_66 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c66
*+ bl_0_66 br_0_66 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c66
*+ bl_0_66 br_0_66 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c66
*+ bl_0_66 br_0_66 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c66
*+ bl_0_66 br_0_66 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c66
+ bl_0_66 br_0_66 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c67
+ bl_0_67 br_0_67 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c67
*+ bl_0_67 br_0_67 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c67
*+ bl_0_67 br_0_67 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c67
*+ bl_0_67 br_0_67 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c67
*+ bl_0_67 br_0_67 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c67
*+ bl_0_67 br_0_67 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c67
*+ bl_0_67 br_0_67 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c67
*+ bl_0_67 br_0_67 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c67
*+ bl_0_67 br_0_67 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c67
*+ bl_0_67 br_0_67 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c67
*+ bl_0_67 br_0_67 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c67
*+ bl_0_67 br_0_67 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c67
*+ bl_0_67 br_0_67 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c67
*+ bl_0_67 br_0_67 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c67
*+ bl_0_67 br_0_67 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c67
+ bl_0_67 br_0_67 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c68
+ bl_0_68 br_0_68 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c68
*+ bl_0_68 br_0_68 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c68
*+ bl_0_68 br_0_68 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c68
*+ bl_0_68 br_0_68 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c68
*+ bl_0_68 br_0_68 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c68
*+ bl_0_68 br_0_68 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c68
*+ bl_0_68 br_0_68 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c68
*+ bl_0_68 br_0_68 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c68
*+ bl_0_68 br_0_68 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c68
*+ bl_0_68 br_0_68 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c68
*+ bl_0_68 br_0_68 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c68
*+ bl_0_68 br_0_68 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c68
*+ bl_0_68 br_0_68 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c68
*+ bl_0_68 br_0_68 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c68
*+ bl_0_68 br_0_68 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c68
+ bl_0_68 br_0_68 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c69
+ bl_0_69 br_0_69 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c69
*+ bl_0_69 br_0_69 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c69
*+ bl_0_69 br_0_69 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c69
*+ bl_0_69 br_0_69 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c69
*+ bl_0_69 br_0_69 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c69
*+ bl_0_69 br_0_69 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c69
*+ bl_0_69 br_0_69 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c69
*+ bl_0_69 br_0_69 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c69
*+ bl_0_69 br_0_69 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c69
*+ bl_0_69 br_0_69 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c69
*+ bl_0_69 br_0_69 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c69
*+ bl_0_69 br_0_69 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c69
*+ bl_0_69 br_0_69 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c69
*+ bl_0_69 br_0_69 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c69
*+ bl_0_69 br_0_69 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c69
+ bl_0_69 br_0_69 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c70
+ bl_0_70 br_0_70 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c70
*+ bl_0_70 br_0_70 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c70
*+ bl_0_70 br_0_70 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c70
*+ bl_0_70 br_0_70 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c70
*+ bl_0_70 br_0_70 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c70
*+ bl_0_70 br_0_70 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c70
*+ bl_0_70 br_0_70 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c70
*+ bl_0_70 br_0_70 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c70
*+ bl_0_70 br_0_70 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c70
*+ bl_0_70 br_0_70 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c70
*+ bl_0_70 br_0_70 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c70
*+ bl_0_70 br_0_70 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c70
*+ bl_0_70 br_0_70 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c70
*+ bl_0_70 br_0_70 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c70
*+ bl_0_70 br_0_70 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c70
+ bl_0_70 br_0_70 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c71
+ bl_0_71 br_0_71 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c71
*+ bl_0_71 br_0_71 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c71
*+ bl_0_71 br_0_71 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c71
*+ bl_0_71 br_0_71 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c71
*+ bl_0_71 br_0_71 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c71
*+ bl_0_71 br_0_71 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c71
*+ bl_0_71 br_0_71 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c71
*+ bl_0_71 br_0_71 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c71
*+ bl_0_71 br_0_71 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c71
*+ bl_0_71 br_0_71 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c71
*+ bl_0_71 br_0_71 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c71
*+ bl_0_71 br_0_71 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c71
*+ bl_0_71 br_0_71 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c71
*+ bl_0_71 br_0_71 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c71
*+ bl_0_71 br_0_71 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c71
+ bl_0_71 br_0_71 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c72
+ bl_0_72 br_0_72 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c72
*+ bl_0_72 br_0_72 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c72
*+ bl_0_72 br_0_72 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c72
*+ bl_0_72 br_0_72 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c72
*+ bl_0_72 br_0_72 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c72
*+ bl_0_72 br_0_72 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c72
*+ bl_0_72 br_0_72 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c72
*+ bl_0_72 br_0_72 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c72
*+ bl_0_72 br_0_72 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c72
*+ bl_0_72 br_0_72 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c72
*+ bl_0_72 br_0_72 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c72
*+ bl_0_72 br_0_72 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c72
*+ bl_0_72 br_0_72 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c72
*+ bl_0_72 br_0_72 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c72
*+ bl_0_72 br_0_72 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c72
+ bl_0_72 br_0_72 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c73
+ bl_0_73 br_0_73 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c73
*+ bl_0_73 br_0_73 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c73
*+ bl_0_73 br_0_73 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c73
*+ bl_0_73 br_0_73 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c73
*+ bl_0_73 br_0_73 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c73
*+ bl_0_73 br_0_73 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c73
*+ bl_0_73 br_0_73 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c73
*+ bl_0_73 br_0_73 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c73
*+ bl_0_73 br_0_73 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c73
*+ bl_0_73 br_0_73 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c73
*+ bl_0_73 br_0_73 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c73
*+ bl_0_73 br_0_73 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c73
*+ bl_0_73 br_0_73 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c73
*+ bl_0_73 br_0_73 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c73
*+ bl_0_73 br_0_73 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c73
+ bl_0_73 br_0_73 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c74
+ bl_0_74 br_0_74 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c74
*+ bl_0_74 br_0_74 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c74
*+ bl_0_74 br_0_74 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c74
*+ bl_0_74 br_0_74 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c74
*+ bl_0_74 br_0_74 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c74
*+ bl_0_74 br_0_74 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c74
*+ bl_0_74 br_0_74 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c74
*+ bl_0_74 br_0_74 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c74
*+ bl_0_74 br_0_74 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c74
*+ bl_0_74 br_0_74 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c74
*+ bl_0_74 br_0_74 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c74
*+ bl_0_74 br_0_74 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c74
*+ bl_0_74 br_0_74 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c74
*+ bl_0_74 br_0_74 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c74
*+ bl_0_74 br_0_74 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c74
+ bl_0_74 br_0_74 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c75
+ bl_0_75 br_0_75 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c75
*+ bl_0_75 br_0_75 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c75
*+ bl_0_75 br_0_75 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c75
*+ bl_0_75 br_0_75 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c75
*+ bl_0_75 br_0_75 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c75
*+ bl_0_75 br_0_75 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c75
*+ bl_0_75 br_0_75 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c75
*+ bl_0_75 br_0_75 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c75
*+ bl_0_75 br_0_75 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c75
*+ bl_0_75 br_0_75 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c75
*+ bl_0_75 br_0_75 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c75
*+ bl_0_75 br_0_75 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c75
*+ bl_0_75 br_0_75 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c75
*+ bl_0_75 br_0_75 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c75
*+ bl_0_75 br_0_75 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c75
+ bl_0_75 br_0_75 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c76
+ bl_0_76 br_0_76 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c76
*+ bl_0_76 br_0_76 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c76
*+ bl_0_76 br_0_76 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c76
*+ bl_0_76 br_0_76 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c76
*+ bl_0_76 br_0_76 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c76
*+ bl_0_76 br_0_76 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c76
*+ bl_0_76 br_0_76 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c76
*+ bl_0_76 br_0_76 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c76
*+ bl_0_76 br_0_76 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c76
*+ bl_0_76 br_0_76 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c76
*+ bl_0_76 br_0_76 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c76
*+ bl_0_76 br_0_76 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c76
*+ bl_0_76 br_0_76 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c76
*+ bl_0_76 br_0_76 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c76
*+ bl_0_76 br_0_76 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c76
+ bl_0_76 br_0_76 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c77
+ bl_0_77 br_0_77 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c77
*+ bl_0_77 br_0_77 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c77
*+ bl_0_77 br_0_77 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c77
*+ bl_0_77 br_0_77 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c77
*+ bl_0_77 br_0_77 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c77
*+ bl_0_77 br_0_77 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c77
*+ bl_0_77 br_0_77 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c77
*+ bl_0_77 br_0_77 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c77
*+ bl_0_77 br_0_77 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c77
*+ bl_0_77 br_0_77 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c77
*+ bl_0_77 br_0_77 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c77
*+ bl_0_77 br_0_77 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c77
*+ bl_0_77 br_0_77 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c77
*+ bl_0_77 br_0_77 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c77
*+ bl_0_77 br_0_77 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c77
+ bl_0_77 br_0_77 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c78
+ bl_0_78 br_0_78 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c78
*+ bl_0_78 br_0_78 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c78
*+ bl_0_78 br_0_78 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c78
*+ bl_0_78 br_0_78 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c78
*+ bl_0_78 br_0_78 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c78
*+ bl_0_78 br_0_78 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c78
*+ bl_0_78 br_0_78 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c78
*+ bl_0_78 br_0_78 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c78
*+ bl_0_78 br_0_78 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c78
*+ bl_0_78 br_0_78 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c78
*+ bl_0_78 br_0_78 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c78
*+ bl_0_78 br_0_78 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c78
*+ bl_0_78 br_0_78 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c78
*+ bl_0_78 br_0_78 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c78
*+ bl_0_78 br_0_78 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c78
+ bl_0_78 br_0_78 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c79
+ bl_0_79 br_0_79 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c79
*+ bl_0_79 br_0_79 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c79
*+ bl_0_79 br_0_79 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c79
*+ bl_0_79 br_0_79 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c79
*+ bl_0_79 br_0_79 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c79
*+ bl_0_79 br_0_79 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c79
*+ bl_0_79 br_0_79 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c79
*+ bl_0_79 br_0_79 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c79
*+ bl_0_79 br_0_79 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c79
*+ bl_0_79 br_0_79 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c79
*+ bl_0_79 br_0_79 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c79
*+ bl_0_79 br_0_79 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c79
*+ bl_0_79 br_0_79 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c79
*+ bl_0_79 br_0_79 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c79
*+ bl_0_79 br_0_79 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c79
+ bl_0_79 br_0_79 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c80
+ bl_0_80 br_0_80 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c80
*+ bl_0_80 br_0_80 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c80
*+ bl_0_80 br_0_80 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c80
*+ bl_0_80 br_0_80 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c80
*+ bl_0_80 br_0_80 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c80
*+ bl_0_80 br_0_80 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c80
*+ bl_0_80 br_0_80 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c80
*+ bl_0_80 br_0_80 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c80
*+ bl_0_80 br_0_80 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c80
*+ bl_0_80 br_0_80 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c80
*+ bl_0_80 br_0_80 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c80
*+ bl_0_80 br_0_80 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c80
*+ bl_0_80 br_0_80 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c80
*+ bl_0_80 br_0_80 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c80
*+ bl_0_80 br_0_80 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c80
+ bl_0_80 br_0_80 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c81
+ bl_0_81 br_0_81 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c81
*+ bl_0_81 br_0_81 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c81
*+ bl_0_81 br_0_81 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c81
*+ bl_0_81 br_0_81 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c81
*+ bl_0_81 br_0_81 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c81
*+ bl_0_81 br_0_81 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c81
*+ bl_0_81 br_0_81 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c81
*+ bl_0_81 br_0_81 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c81
*+ bl_0_81 br_0_81 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c81
*+ bl_0_81 br_0_81 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c81
*+ bl_0_81 br_0_81 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c81
*+ bl_0_81 br_0_81 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c81
*+ bl_0_81 br_0_81 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c81
*+ bl_0_81 br_0_81 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c81
*+ bl_0_81 br_0_81 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c81
+ bl_0_81 br_0_81 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c82
+ bl_0_82 br_0_82 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c82
*+ bl_0_82 br_0_82 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c82
*+ bl_0_82 br_0_82 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c82
*+ bl_0_82 br_0_82 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c82
*+ bl_0_82 br_0_82 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c82
*+ bl_0_82 br_0_82 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c82
*+ bl_0_82 br_0_82 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c82
*+ bl_0_82 br_0_82 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c82
*+ bl_0_82 br_0_82 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c82
*+ bl_0_82 br_0_82 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c82
*+ bl_0_82 br_0_82 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c82
*+ bl_0_82 br_0_82 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c82
*+ bl_0_82 br_0_82 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c82
*+ bl_0_82 br_0_82 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c82
*+ bl_0_82 br_0_82 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c82
+ bl_0_82 br_0_82 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c83
+ bl_0_83 br_0_83 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c83
*+ bl_0_83 br_0_83 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c83
*+ bl_0_83 br_0_83 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c83
*+ bl_0_83 br_0_83 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c83
*+ bl_0_83 br_0_83 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c83
*+ bl_0_83 br_0_83 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c83
*+ bl_0_83 br_0_83 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c83
*+ bl_0_83 br_0_83 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c83
*+ bl_0_83 br_0_83 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c83
*+ bl_0_83 br_0_83 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c83
*+ bl_0_83 br_0_83 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c83
*+ bl_0_83 br_0_83 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c83
*+ bl_0_83 br_0_83 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c83
*+ bl_0_83 br_0_83 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c83
*+ bl_0_83 br_0_83 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c83
+ bl_0_83 br_0_83 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c84
+ bl_0_84 br_0_84 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c84
*+ bl_0_84 br_0_84 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c84
*+ bl_0_84 br_0_84 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c84
*+ bl_0_84 br_0_84 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c84
*+ bl_0_84 br_0_84 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c84
*+ bl_0_84 br_0_84 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c84
*+ bl_0_84 br_0_84 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c84
*+ bl_0_84 br_0_84 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c84
*+ bl_0_84 br_0_84 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c84
*+ bl_0_84 br_0_84 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c84
*+ bl_0_84 br_0_84 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c84
*+ bl_0_84 br_0_84 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c84
*+ bl_0_84 br_0_84 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c84
*+ bl_0_84 br_0_84 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c84
*+ bl_0_84 br_0_84 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c84
+ bl_0_84 br_0_84 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c85
+ bl_0_85 br_0_85 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c85
*+ bl_0_85 br_0_85 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c85
*+ bl_0_85 br_0_85 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c85
*+ bl_0_85 br_0_85 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c85
*+ bl_0_85 br_0_85 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c85
*+ bl_0_85 br_0_85 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c85
*+ bl_0_85 br_0_85 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c85
*+ bl_0_85 br_0_85 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c85
*+ bl_0_85 br_0_85 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c85
*+ bl_0_85 br_0_85 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c85
*+ bl_0_85 br_0_85 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c85
*+ bl_0_85 br_0_85 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c85
*+ bl_0_85 br_0_85 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c85
*+ bl_0_85 br_0_85 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c85
*+ bl_0_85 br_0_85 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c85
+ bl_0_85 br_0_85 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c86
+ bl_0_86 br_0_86 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c86
*+ bl_0_86 br_0_86 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c86
*+ bl_0_86 br_0_86 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c86
*+ bl_0_86 br_0_86 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c86
*+ bl_0_86 br_0_86 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c86
*+ bl_0_86 br_0_86 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c86
*+ bl_0_86 br_0_86 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c86
*+ bl_0_86 br_0_86 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c86
*+ bl_0_86 br_0_86 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c86
*+ bl_0_86 br_0_86 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c86
*+ bl_0_86 br_0_86 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c86
*+ bl_0_86 br_0_86 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c86
*+ bl_0_86 br_0_86 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c86
*+ bl_0_86 br_0_86 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c86
*+ bl_0_86 br_0_86 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c86
+ bl_0_86 br_0_86 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c87
+ bl_0_87 br_0_87 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c87
*+ bl_0_87 br_0_87 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c87
*+ bl_0_87 br_0_87 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c87
*+ bl_0_87 br_0_87 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c87
*+ bl_0_87 br_0_87 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c87
*+ bl_0_87 br_0_87 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c87
*+ bl_0_87 br_0_87 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c87
*+ bl_0_87 br_0_87 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c87
*+ bl_0_87 br_0_87 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c87
*+ bl_0_87 br_0_87 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c87
*+ bl_0_87 br_0_87 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c87
*+ bl_0_87 br_0_87 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c87
*+ bl_0_87 br_0_87 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c87
*+ bl_0_87 br_0_87 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c87
*+ bl_0_87 br_0_87 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c87
+ bl_0_87 br_0_87 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c88
+ bl_0_88 br_0_88 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c88
*+ bl_0_88 br_0_88 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c88
*+ bl_0_88 br_0_88 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c88
*+ bl_0_88 br_0_88 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c88
*+ bl_0_88 br_0_88 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c88
*+ bl_0_88 br_0_88 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c88
*+ bl_0_88 br_0_88 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c88
*+ bl_0_88 br_0_88 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c88
*+ bl_0_88 br_0_88 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c88
*+ bl_0_88 br_0_88 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c88
*+ bl_0_88 br_0_88 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c88
*+ bl_0_88 br_0_88 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c88
*+ bl_0_88 br_0_88 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c88
*+ bl_0_88 br_0_88 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c88
*+ bl_0_88 br_0_88 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c88
+ bl_0_88 br_0_88 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c89
+ bl_0_89 br_0_89 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c89
*+ bl_0_89 br_0_89 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c89
*+ bl_0_89 br_0_89 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c89
*+ bl_0_89 br_0_89 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c89
*+ bl_0_89 br_0_89 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c89
*+ bl_0_89 br_0_89 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c89
*+ bl_0_89 br_0_89 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c89
*+ bl_0_89 br_0_89 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c89
*+ bl_0_89 br_0_89 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c89
*+ bl_0_89 br_0_89 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c89
*+ bl_0_89 br_0_89 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c89
*+ bl_0_89 br_0_89 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c89
*+ bl_0_89 br_0_89 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c89
*+ bl_0_89 br_0_89 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c89
*+ bl_0_89 br_0_89 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c89
+ bl_0_89 br_0_89 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c90
+ bl_0_90 br_0_90 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c90
*+ bl_0_90 br_0_90 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c90
*+ bl_0_90 br_0_90 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c90
*+ bl_0_90 br_0_90 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c90
*+ bl_0_90 br_0_90 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c90
*+ bl_0_90 br_0_90 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c90
*+ bl_0_90 br_0_90 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c90
*+ bl_0_90 br_0_90 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c90
*+ bl_0_90 br_0_90 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c90
*+ bl_0_90 br_0_90 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c90
*+ bl_0_90 br_0_90 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c90
*+ bl_0_90 br_0_90 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c90
*+ bl_0_90 br_0_90 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c90
*+ bl_0_90 br_0_90 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c90
*+ bl_0_90 br_0_90 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c90
+ bl_0_90 br_0_90 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c91
+ bl_0_91 br_0_91 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c91
*+ bl_0_91 br_0_91 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c91
*+ bl_0_91 br_0_91 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c91
*+ bl_0_91 br_0_91 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c91
*+ bl_0_91 br_0_91 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c91
*+ bl_0_91 br_0_91 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c91
*+ bl_0_91 br_0_91 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c91
*+ bl_0_91 br_0_91 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c91
*+ bl_0_91 br_0_91 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c91
*+ bl_0_91 br_0_91 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c91
*+ bl_0_91 br_0_91 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c91
*+ bl_0_91 br_0_91 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c91
*+ bl_0_91 br_0_91 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c91
*+ bl_0_91 br_0_91 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c91
*+ bl_0_91 br_0_91 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c91
+ bl_0_91 br_0_91 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c92
+ bl_0_92 br_0_92 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c92
*+ bl_0_92 br_0_92 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c92
*+ bl_0_92 br_0_92 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c92
*+ bl_0_92 br_0_92 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c92
*+ bl_0_92 br_0_92 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c92
*+ bl_0_92 br_0_92 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c92
*+ bl_0_92 br_0_92 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c92
*+ bl_0_92 br_0_92 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c92
*+ bl_0_92 br_0_92 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c92
*+ bl_0_92 br_0_92 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c92
*+ bl_0_92 br_0_92 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c92
*+ bl_0_92 br_0_92 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c92
*+ bl_0_92 br_0_92 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c92
*+ bl_0_92 br_0_92 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c92
*+ bl_0_92 br_0_92 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c92
+ bl_0_92 br_0_92 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c93
+ bl_0_93 br_0_93 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c93
*+ bl_0_93 br_0_93 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c93
*+ bl_0_93 br_0_93 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c93
*+ bl_0_93 br_0_93 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c93
*+ bl_0_93 br_0_93 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c93
*+ bl_0_93 br_0_93 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c93
*+ bl_0_93 br_0_93 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c93
*+ bl_0_93 br_0_93 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c93
*+ bl_0_93 br_0_93 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c93
*+ bl_0_93 br_0_93 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c93
*+ bl_0_93 br_0_93 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c93
*+ bl_0_93 br_0_93 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c93
*+ bl_0_93 br_0_93 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c93
*+ bl_0_93 br_0_93 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c93
*+ bl_0_93 br_0_93 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c93
+ bl_0_93 br_0_93 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c94
+ bl_0_94 br_0_94 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c94
*+ bl_0_94 br_0_94 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c94
*+ bl_0_94 br_0_94 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c94
*+ bl_0_94 br_0_94 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c94
*+ bl_0_94 br_0_94 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c94
*+ bl_0_94 br_0_94 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c94
*+ bl_0_94 br_0_94 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c94
*+ bl_0_94 br_0_94 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c94
*+ bl_0_94 br_0_94 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c94
*+ bl_0_94 br_0_94 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c94
*+ bl_0_94 br_0_94 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c94
*+ bl_0_94 br_0_94 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c94
*+ bl_0_94 br_0_94 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c94
*+ bl_0_94 br_0_94 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c94
*+ bl_0_94 br_0_94 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c94
+ bl_0_94 br_0_94 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c95
+ bl_0_95 br_0_95 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c95
*+ bl_0_95 br_0_95 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c95
*+ bl_0_95 br_0_95 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c95
*+ bl_0_95 br_0_95 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c95
*+ bl_0_95 br_0_95 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c95
*+ bl_0_95 br_0_95 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c95
*+ bl_0_95 br_0_95 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c95
*+ bl_0_95 br_0_95 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c95
*+ bl_0_95 br_0_95 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c95
*+ bl_0_95 br_0_95 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c95
*+ bl_0_95 br_0_95 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c95
*+ bl_0_95 br_0_95 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c95
*+ bl_0_95 br_0_95 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c95
*+ bl_0_95 br_0_95 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c95
*+ bl_0_95 br_0_95 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c95
+ bl_0_95 br_0_95 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c96
+ bl_0_96 br_0_96 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c96
*+ bl_0_96 br_0_96 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c96
*+ bl_0_96 br_0_96 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c96
*+ bl_0_96 br_0_96 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c96
*+ bl_0_96 br_0_96 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c96
*+ bl_0_96 br_0_96 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c96
*+ bl_0_96 br_0_96 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c96
*+ bl_0_96 br_0_96 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c96
*+ bl_0_96 br_0_96 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c96
*+ bl_0_96 br_0_96 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c96
*+ bl_0_96 br_0_96 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c96
*+ bl_0_96 br_0_96 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c96
*+ bl_0_96 br_0_96 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c96
*+ bl_0_96 br_0_96 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c96
*+ bl_0_96 br_0_96 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c96
+ bl_0_96 br_0_96 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c97
+ bl_0_97 br_0_97 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c97
*+ bl_0_97 br_0_97 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c97
*+ bl_0_97 br_0_97 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c97
*+ bl_0_97 br_0_97 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c97
*+ bl_0_97 br_0_97 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c97
*+ bl_0_97 br_0_97 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c97
*+ bl_0_97 br_0_97 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c97
*+ bl_0_97 br_0_97 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c97
*+ bl_0_97 br_0_97 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c97
*+ bl_0_97 br_0_97 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c97
*+ bl_0_97 br_0_97 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c97
*+ bl_0_97 br_0_97 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c97
*+ bl_0_97 br_0_97 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c97
*+ bl_0_97 br_0_97 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c97
*+ bl_0_97 br_0_97 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c97
+ bl_0_97 br_0_97 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c98
+ bl_0_98 br_0_98 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c98
*+ bl_0_98 br_0_98 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c98
*+ bl_0_98 br_0_98 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c98
*+ bl_0_98 br_0_98 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c98
*+ bl_0_98 br_0_98 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c98
*+ bl_0_98 br_0_98 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c98
*+ bl_0_98 br_0_98 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c98
*+ bl_0_98 br_0_98 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c98
*+ bl_0_98 br_0_98 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c98
*+ bl_0_98 br_0_98 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c98
*+ bl_0_98 br_0_98 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c98
*+ bl_0_98 br_0_98 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c98
*+ bl_0_98 br_0_98 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c98
*+ bl_0_98 br_0_98 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c98
*+ bl_0_98 br_0_98 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c98
+ bl_0_98 br_0_98 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c99
+ bl_0_99 br_0_99 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c99
*+ bl_0_99 br_0_99 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c99
*+ bl_0_99 br_0_99 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c99
*+ bl_0_99 br_0_99 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c99
*+ bl_0_99 br_0_99 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c99
*+ bl_0_99 br_0_99 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c99
*+ bl_0_99 br_0_99 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c99
*+ bl_0_99 br_0_99 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c99
*+ bl_0_99 br_0_99 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c99
*+ bl_0_99 br_0_99 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c99
*+ bl_0_99 br_0_99 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c99
*+ bl_0_99 br_0_99 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c99
*+ bl_0_99 br_0_99 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c99
*+ bl_0_99 br_0_99 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c99
*+ bl_0_99 br_0_99 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c99
+ bl_0_99 br_0_99 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c100
+ bl_0_100 br_0_100 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c100
*+ bl_0_100 br_0_100 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c100
*+ bl_0_100 br_0_100 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c100
*+ bl_0_100 br_0_100 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c100
*+ bl_0_100 br_0_100 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c100
*+ bl_0_100 br_0_100 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c100
*+ bl_0_100 br_0_100 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c100
*+ bl_0_100 br_0_100 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c100
*+ bl_0_100 br_0_100 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c100
*+ bl_0_100 br_0_100 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c100
*+ bl_0_100 br_0_100 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c100
*+ bl_0_100 br_0_100 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c100
*+ bl_0_100 br_0_100 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c100
*+ bl_0_100 br_0_100 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c100
*+ bl_0_100 br_0_100 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c100
+ bl_0_100 br_0_100 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c101
+ bl_0_101 br_0_101 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c101
*+ bl_0_101 br_0_101 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c101
*+ bl_0_101 br_0_101 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c101
*+ bl_0_101 br_0_101 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c101
*+ bl_0_101 br_0_101 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c101
*+ bl_0_101 br_0_101 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c101
*+ bl_0_101 br_0_101 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c101
*+ bl_0_101 br_0_101 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c101
*+ bl_0_101 br_0_101 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c101
*+ bl_0_101 br_0_101 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c101
*+ bl_0_101 br_0_101 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c101
*+ bl_0_101 br_0_101 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c101
*+ bl_0_101 br_0_101 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c101
*+ bl_0_101 br_0_101 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c101
*+ bl_0_101 br_0_101 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c101
+ bl_0_101 br_0_101 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c102
+ bl_0_102 br_0_102 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c102
*+ bl_0_102 br_0_102 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c102
*+ bl_0_102 br_0_102 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c102
*+ bl_0_102 br_0_102 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c102
*+ bl_0_102 br_0_102 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c102
*+ bl_0_102 br_0_102 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c102
*+ bl_0_102 br_0_102 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c102
*+ bl_0_102 br_0_102 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c102
*+ bl_0_102 br_0_102 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c102
*+ bl_0_102 br_0_102 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c102
*+ bl_0_102 br_0_102 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c102
*+ bl_0_102 br_0_102 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c102
*+ bl_0_102 br_0_102 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c102
*+ bl_0_102 br_0_102 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c102
*+ bl_0_102 br_0_102 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c102
+ bl_0_102 br_0_102 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c103
+ bl_0_103 br_0_103 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c103
*+ bl_0_103 br_0_103 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c103
*+ bl_0_103 br_0_103 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c103
*+ bl_0_103 br_0_103 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c103
*+ bl_0_103 br_0_103 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c103
*+ bl_0_103 br_0_103 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c103
*+ bl_0_103 br_0_103 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c103
*+ bl_0_103 br_0_103 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c103
*+ bl_0_103 br_0_103 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c103
*+ bl_0_103 br_0_103 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c103
*+ bl_0_103 br_0_103 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c103
*+ bl_0_103 br_0_103 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c103
*+ bl_0_103 br_0_103 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c103
*+ bl_0_103 br_0_103 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c103
*+ bl_0_103 br_0_103 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c103
+ bl_0_103 br_0_103 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c104
+ bl_0_104 br_0_104 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c104
*+ bl_0_104 br_0_104 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c104
*+ bl_0_104 br_0_104 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c104
*+ bl_0_104 br_0_104 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c104
*+ bl_0_104 br_0_104 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c104
*+ bl_0_104 br_0_104 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c104
*+ bl_0_104 br_0_104 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c104
*+ bl_0_104 br_0_104 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c104
*+ bl_0_104 br_0_104 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c104
*+ bl_0_104 br_0_104 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c104
*+ bl_0_104 br_0_104 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c104
*+ bl_0_104 br_0_104 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c104
*+ bl_0_104 br_0_104 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c104
*+ bl_0_104 br_0_104 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c104
*+ bl_0_104 br_0_104 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c104
+ bl_0_104 br_0_104 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c105
+ bl_0_105 br_0_105 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c105
*+ bl_0_105 br_0_105 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c105
*+ bl_0_105 br_0_105 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c105
*+ bl_0_105 br_0_105 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c105
*+ bl_0_105 br_0_105 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c105
*+ bl_0_105 br_0_105 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c105
*+ bl_0_105 br_0_105 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c105
*+ bl_0_105 br_0_105 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c105
*+ bl_0_105 br_0_105 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c105
*+ bl_0_105 br_0_105 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c105
*+ bl_0_105 br_0_105 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c105
*+ bl_0_105 br_0_105 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c105
*+ bl_0_105 br_0_105 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c105
*+ bl_0_105 br_0_105 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c105
*+ bl_0_105 br_0_105 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c105
+ bl_0_105 br_0_105 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c106
+ bl_0_106 br_0_106 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c106
*+ bl_0_106 br_0_106 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c106
*+ bl_0_106 br_0_106 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c106
*+ bl_0_106 br_0_106 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c106
*+ bl_0_106 br_0_106 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c106
*+ bl_0_106 br_0_106 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c106
*+ bl_0_106 br_0_106 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c106
*+ bl_0_106 br_0_106 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c106
*+ bl_0_106 br_0_106 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c106
*+ bl_0_106 br_0_106 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c106
*+ bl_0_106 br_0_106 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c106
*+ bl_0_106 br_0_106 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c106
*+ bl_0_106 br_0_106 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c106
*+ bl_0_106 br_0_106 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c106
*+ bl_0_106 br_0_106 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c106
+ bl_0_106 br_0_106 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c107
+ bl_0_107 br_0_107 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c107
*+ bl_0_107 br_0_107 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c107
*+ bl_0_107 br_0_107 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c107
*+ bl_0_107 br_0_107 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c107
*+ bl_0_107 br_0_107 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c107
*+ bl_0_107 br_0_107 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c107
*+ bl_0_107 br_0_107 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c107
*+ bl_0_107 br_0_107 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c107
*+ bl_0_107 br_0_107 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c107
*+ bl_0_107 br_0_107 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c107
*+ bl_0_107 br_0_107 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c107
*+ bl_0_107 br_0_107 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c107
*+ bl_0_107 br_0_107 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c107
*+ bl_0_107 br_0_107 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c107
*+ bl_0_107 br_0_107 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c107
+ bl_0_107 br_0_107 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c108
+ bl_0_108 br_0_108 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c108
*+ bl_0_108 br_0_108 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c108
*+ bl_0_108 br_0_108 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c108
*+ bl_0_108 br_0_108 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c108
*+ bl_0_108 br_0_108 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c108
*+ bl_0_108 br_0_108 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c108
*+ bl_0_108 br_0_108 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c108
*+ bl_0_108 br_0_108 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c108
*+ bl_0_108 br_0_108 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c108
*+ bl_0_108 br_0_108 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c108
*+ bl_0_108 br_0_108 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c108
*+ bl_0_108 br_0_108 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c108
*+ bl_0_108 br_0_108 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c108
*+ bl_0_108 br_0_108 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c108
*+ bl_0_108 br_0_108 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c108
+ bl_0_108 br_0_108 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c109
+ bl_0_109 br_0_109 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c109
*+ bl_0_109 br_0_109 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c109
*+ bl_0_109 br_0_109 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c109
*+ bl_0_109 br_0_109 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c109
*+ bl_0_109 br_0_109 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c109
*+ bl_0_109 br_0_109 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c109
*+ bl_0_109 br_0_109 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c109
*+ bl_0_109 br_0_109 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c109
*+ bl_0_109 br_0_109 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c109
*+ bl_0_109 br_0_109 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c109
*+ bl_0_109 br_0_109 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c109
*+ bl_0_109 br_0_109 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c109
*+ bl_0_109 br_0_109 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c109
*+ bl_0_109 br_0_109 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c109
*+ bl_0_109 br_0_109 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c109
+ bl_0_109 br_0_109 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c110
+ bl_0_110 br_0_110 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c110
*+ bl_0_110 br_0_110 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c110
*+ bl_0_110 br_0_110 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c110
*+ bl_0_110 br_0_110 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c110
*+ bl_0_110 br_0_110 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c110
*+ bl_0_110 br_0_110 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c110
*+ bl_0_110 br_0_110 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c110
*+ bl_0_110 br_0_110 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c110
*+ bl_0_110 br_0_110 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c110
*+ bl_0_110 br_0_110 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c110
*+ bl_0_110 br_0_110 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c110
*+ bl_0_110 br_0_110 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c110
*+ bl_0_110 br_0_110 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c110
*+ bl_0_110 br_0_110 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c110
*+ bl_0_110 br_0_110 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c110
+ bl_0_110 br_0_110 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c111
+ bl_0_111 br_0_111 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c111
*+ bl_0_111 br_0_111 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c111
*+ bl_0_111 br_0_111 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c111
*+ bl_0_111 br_0_111 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c111
*+ bl_0_111 br_0_111 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c111
*+ bl_0_111 br_0_111 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c111
*+ bl_0_111 br_0_111 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c111
*+ bl_0_111 br_0_111 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c111
*+ bl_0_111 br_0_111 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c111
*+ bl_0_111 br_0_111 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c111
*+ bl_0_111 br_0_111 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c111
*+ bl_0_111 br_0_111 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c111
*+ bl_0_111 br_0_111 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c111
*+ bl_0_111 br_0_111 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c111
*+ bl_0_111 br_0_111 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c111
+ bl_0_111 br_0_111 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c112
+ bl_0_112 br_0_112 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c112
*+ bl_0_112 br_0_112 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c112
*+ bl_0_112 br_0_112 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c112
*+ bl_0_112 br_0_112 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c112
*+ bl_0_112 br_0_112 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c112
*+ bl_0_112 br_0_112 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c112
*+ bl_0_112 br_0_112 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c112
*+ bl_0_112 br_0_112 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c112
*+ bl_0_112 br_0_112 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c112
*+ bl_0_112 br_0_112 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c112
*+ bl_0_112 br_0_112 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c112
*+ bl_0_112 br_0_112 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c112
*+ bl_0_112 br_0_112 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c112
*+ bl_0_112 br_0_112 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c112
*+ bl_0_112 br_0_112 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c112
+ bl_0_112 br_0_112 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c113
+ bl_0_113 br_0_113 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c113
*+ bl_0_113 br_0_113 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c113
*+ bl_0_113 br_0_113 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c113
*+ bl_0_113 br_0_113 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c113
*+ bl_0_113 br_0_113 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c113
*+ bl_0_113 br_0_113 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c113
*+ bl_0_113 br_0_113 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c113
*+ bl_0_113 br_0_113 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c113
*+ bl_0_113 br_0_113 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c113
*+ bl_0_113 br_0_113 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c113
*+ bl_0_113 br_0_113 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c113
*+ bl_0_113 br_0_113 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c113
*+ bl_0_113 br_0_113 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c113
*+ bl_0_113 br_0_113 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c113
*+ bl_0_113 br_0_113 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c113
+ bl_0_113 br_0_113 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c114
+ bl_0_114 br_0_114 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c114
*+ bl_0_114 br_0_114 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c114
*+ bl_0_114 br_0_114 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c114
*+ bl_0_114 br_0_114 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c114
*+ bl_0_114 br_0_114 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c114
*+ bl_0_114 br_0_114 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c114
*+ bl_0_114 br_0_114 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c114
*+ bl_0_114 br_0_114 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c114
*+ bl_0_114 br_0_114 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c114
*+ bl_0_114 br_0_114 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c114
*+ bl_0_114 br_0_114 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c114
*+ bl_0_114 br_0_114 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c114
*+ bl_0_114 br_0_114 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c114
*+ bl_0_114 br_0_114 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c114
*+ bl_0_114 br_0_114 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c114
+ bl_0_114 br_0_114 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c115
+ bl_0_115 br_0_115 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c115
*+ bl_0_115 br_0_115 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c115
*+ bl_0_115 br_0_115 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c115
*+ bl_0_115 br_0_115 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c115
*+ bl_0_115 br_0_115 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c115
*+ bl_0_115 br_0_115 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c115
*+ bl_0_115 br_0_115 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c115
*+ bl_0_115 br_0_115 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c115
*+ bl_0_115 br_0_115 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c115
*+ bl_0_115 br_0_115 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c115
*+ bl_0_115 br_0_115 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c115
*+ bl_0_115 br_0_115 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c115
*+ bl_0_115 br_0_115 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c115
*+ bl_0_115 br_0_115 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c115
*+ bl_0_115 br_0_115 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c115
+ bl_0_115 br_0_115 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c116
+ bl_0_116 br_0_116 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c116
*+ bl_0_116 br_0_116 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c116
*+ bl_0_116 br_0_116 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c116
*+ bl_0_116 br_0_116 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c116
*+ bl_0_116 br_0_116 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c116
*+ bl_0_116 br_0_116 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c116
*+ bl_0_116 br_0_116 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c116
*+ bl_0_116 br_0_116 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c116
*+ bl_0_116 br_0_116 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c116
*+ bl_0_116 br_0_116 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c116
*+ bl_0_116 br_0_116 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c116
*+ bl_0_116 br_0_116 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c116
*+ bl_0_116 br_0_116 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c116
*+ bl_0_116 br_0_116 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c116
*+ bl_0_116 br_0_116 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c116
+ bl_0_116 br_0_116 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c117
+ bl_0_117 br_0_117 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c117
*+ bl_0_117 br_0_117 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c117
*+ bl_0_117 br_0_117 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c117
*+ bl_0_117 br_0_117 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c117
*+ bl_0_117 br_0_117 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c117
*+ bl_0_117 br_0_117 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c117
*+ bl_0_117 br_0_117 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c117
*+ bl_0_117 br_0_117 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c117
*+ bl_0_117 br_0_117 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c117
*+ bl_0_117 br_0_117 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c117
*+ bl_0_117 br_0_117 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c117
*+ bl_0_117 br_0_117 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c117
*+ bl_0_117 br_0_117 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c117
*+ bl_0_117 br_0_117 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c117
*+ bl_0_117 br_0_117 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c117
+ bl_0_117 br_0_117 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c118
+ bl_0_118 br_0_118 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c118
*+ bl_0_118 br_0_118 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c118
*+ bl_0_118 br_0_118 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c118
*+ bl_0_118 br_0_118 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c118
*+ bl_0_118 br_0_118 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c118
*+ bl_0_118 br_0_118 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c118
*+ bl_0_118 br_0_118 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c118
*+ bl_0_118 br_0_118 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c118
*+ bl_0_118 br_0_118 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c118
*+ bl_0_118 br_0_118 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c118
*+ bl_0_118 br_0_118 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c118
*+ bl_0_118 br_0_118 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c118
*+ bl_0_118 br_0_118 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c118
*+ bl_0_118 br_0_118 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c118
*+ bl_0_118 br_0_118 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c118
+ bl_0_118 br_0_118 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c119
+ bl_0_119 br_0_119 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c119
*+ bl_0_119 br_0_119 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c119
*+ bl_0_119 br_0_119 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c119
*+ bl_0_119 br_0_119 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c119
*+ bl_0_119 br_0_119 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c119
*+ bl_0_119 br_0_119 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c119
*+ bl_0_119 br_0_119 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c119
*+ bl_0_119 br_0_119 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c119
*+ bl_0_119 br_0_119 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c119
*+ bl_0_119 br_0_119 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c119
*+ bl_0_119 br_0_119 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c119
*+ bl_0_119 br_0_119 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c119
*+ bl_0_119 br_0_119 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c119
*+ bl_0_119 br_0_119 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c119
*+ bl_0_119 br_0_119 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c119
+ bl_0_119 br_0_119 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c120
+ bl_0_120 br_0_120 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c120
*+ bl_0_120 br_0_120 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c120
*+ bl_0_120 br_0_120 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c120
*+ bl_0_120 br_0_120 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c120
*+ bl_0_120 br_0_120 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c120
*+ bl_0_120 br_0_120 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c120
*+ bl_0_120 br_0_120 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c120
*+ bl_0_120 br_0_120 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c120
*+ bl_0_120 br_0_120 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c120
*+ bl_0_120 br_0_120 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c120
*+ bl_0_120 br_0_120 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c120
*+ bl_0_120 br_0_120 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c120
*+ bl_0_120 br_0_120 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c120
*+ bl_0_120 br_0_120 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c120
*+ bl_0_120 br_0_120 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c120
+ bl_0_120 br_0_120 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c121
+ bl_0_121 br_0_121 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c121
*+ bl_0_121 br_0_121 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c121
*+ bl_0_121 br_0_121 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c121
*+ bl_0_121 br_0_121 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c121
*+ bl_0_121 br_0_121 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c121
*+ bl_0_121 br_0_121 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c121
*+ bl_0_121 br_0_121 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c121
*+ bl_0_121 br_0_121 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c121
*+ bl_0_121 br_0_121 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c121
*+ bl_0_121 br_0_121 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c121
*+ bl_0_121 br_0_121 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c121
*+ bl_0_121 br_0_121 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c121
*+ bl_0_121 br_0_121 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c121
*+ bl_0_121 br_0_121 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c121
*+ bl_0_121 br_0_121 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c121
+ bl_0_121 br_0_121 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c122
+ bl_0_122 br_0_122 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c122
*+ bl_0_122 br_0_122 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c122
*+ bl_0_122 br_0_122 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c122
*+ bl_0_122 br_0_122 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c122
*+ bl_0_122 br_0_122 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c122
*+ bl_0_122 br_0_122 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c122
*+ bl_0_122 br_0_122 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c122
*+ bl_0_122 br_0_122 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c122
*+ bl_0_122 br_0_122 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c122
*+ bl_0_122 br_0_122 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c122
*+ bl_0_122 br_0_122 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c122
*+ bl_0_122 br_0_122 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c122
*+ bl_0_122 br_0_122 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c122
*+ bl_0_122 br_0_122 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c122
*+ bl_0_122 br_0_122 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c122
+ bl_0_122 br_0_122 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c123
+ bl_0_123 br_0_123 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c123
*+ bl_0_123 br_0_123 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c123
*+ bl_0_123 br_0_123 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c123
*+ bl_0_123 br_0_123 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c123
*+ bl_0_123 br_0_123 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c123
*+ bl_0_123 br_0_123 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c123
*+ bl_0_123 br_0_123 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c123
*+ bl_0_123 br_0_123 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c123
*+ bl_0_123 br_0_123 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c123
*+ bl_0_123 br_0_123 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c123
*+ bl_0_123 br_0_123 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c123
*+ bl_0_123 br_0_123 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c123
*+ bl_0_123 br_0_123 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c123
*+ bl_0_123 br_0_123 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c123
*+ bl_0_123 br_0_123 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c123
+ bl_0_123 br_0_123 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c124
+ bl_0_124 br_0_124 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c124
*+ bl_0_124 br_0_124 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c124
*+ bl_0_124 br_0_124 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c124
*+ bl_0_124 br_0_124 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c124
*+ bl_0_124 br_0_124 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c124
*+ bl_0_124 br_0_124 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c124
*+ bl_0_124 br_0_124 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c124
*+ bl_0_124 br_0_124 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c124
*+ bl_0_124 br_0_124 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c124
*+ bl_0_124 br_0_124 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c124
*+ bl_0_124 br_0_124 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c124
*+ bl_0_124 br_0_124 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c124
*+ bl_0_124 br_0_124 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c124
*+ bl_0_124 br_0_124 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c124
*+ bl_0_124 br_0_124 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c124
+ bl_0_124 br_0_124 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c125
+ bl_0_125 br_0_125 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c125
*+ bl_0_125 br_0_125 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c125
*+ bl_0_125 br_0_125 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c125
*+ bl_0_125 br_0_125 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c125
*+ bl_0_125 br_0_125 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c125
*+ bl_0_125 br_0_125 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c125
*+ bl_0_125 br_0_125 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c125
*+ bl_0_125 br_0_125 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c125
*+ bl_0_125 br_0_125 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c125
*+ bl_0_125 br_0_125 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c125
*+ bl_0_125 br_0_125 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c125
*+ bl_0_125 br_0_125 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c125
*+ bl_0_125 br_0_125 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c125
*+ bl_0_125 br_0_125 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c125
*+ bl_0_125 br_0_125 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c125
+ bl_0_125 br_0_125 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c126
+ bl_0_126 br_0_126 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c126
*+ bl_0_126 br_0_126 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c126
*+ bl_0_126 br_0_126 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c126
*+ bl_0_126 br_0_126 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c126
*+ bl_0_126 br_0_126 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c126
*+ bl_0_126 br_0_126 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c126
*+ bl_0_126 br_0_126 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c126
*+ bl_0_126 br_0_126 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c126
*+ bl_0_126 br_0_126 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c126
*+ bl_0_126 br_0_126 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c126
*+ bl_0_126 br_0_126 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c126
*+ bl_0_126 br_0_126 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c126
*+ bl_0_126 br_0_126 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c126
*+ bl_0_126 br_0_126 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c126
*+ bl_0_126 br_0_126 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c126
+ bl_0_126 br_0_126 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c127
+ bl_0_127 br_0_127 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c127
*+ bl_0_127 br_0_127 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c127
*+ bl_0_127 br_0_127 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c127
*+ bl_0_127 br_0_127 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c127
*+ bl_0_127 br_0_127 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c127
*+ bl_0_127 br_0_127 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c127
*+ bl_0_127 br_0_127 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c127
*+ bl_0_127 br_0_127 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c127
*+ bl_0_127 br_0_127 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c127
*+ bl_0_127 br_0_127 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c127
*+ bl_0_127 br_0_127 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c127
*+ bl_0_127 br_0_127 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c127
*+ bl_0_127 br_0_127 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c127
*+ bl_0_127 br_0_127 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c127
*+ bl_0_127 br_0_127 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c127
+ bl_0_127 br_0_127 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c128
+ bl_0_128 br_0_128 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c128
*+ bl_0_128 br_0_128 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c128
*+ bl_0_128 br_0_128 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c128
*+ bl_0_128 br_0_128 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c128
*+ bl_0_128 br_0_128 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c128
*+ bl_0_128 br_0_128 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c128
*+ bl_0_128 br_0_128 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c128
*+ bl_0_128 br_0_128 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c128
*+ bl_0_128 br_0_128 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c128
*+ bl_0_128 br_0_128 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c128
*+ bl_0_128 br_0_128 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c128
*+ bl_0_128 br_0_128 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c128
*+ bl_0_128 br_0_128 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c128
*+ bl_0_128 br_0_128 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c128
*+ bl_0_128 br_0_128 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c128
+ bl_0_128 br_0_128 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c129
+ bl_0_129 br_0_129 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c129
*+ bl_0_129 br_0_129 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c129
*+ bl_0_129 br_0_129 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c129
*+ bl_0_129 br_0_129 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c129
*+ bl_0_129 br_0_129 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c129
*+ bl_0_129 br_0_129 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c129
*+ bl_0_129 br_0_129 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c129
*+ bl_0_129 br_0_129 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c129
*+ bl_0_129 br_0_129 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c129
*+ bl_0_129 br_0_129 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c129
*+ bl_0_129 br_0_129 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c129
*+ bl_0_129 br_0_129 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c129
*+ bl_0_129 br_0_129 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c129
*+ bl_0_129 br_0_129 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c129
*+ bl_0_129 br_0_129 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c129
+ bl_0_129 br_0_129 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c130
+ bl_0_130 br_0_130 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c130
*+ bl_0_130 br_0_130 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c130
*+ bl_0_130 br_0_130 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c130
*+ bl_0_130 br_0_130 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c130
*+ bl_0_130 br_0_130 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c130
*+ bl_0_130 br_0_130 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c130
*+ bl_0_130 br_0_130 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c130
*+ bl_0_130 br_0_130 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c130
*+ bl_0_130 br_0_130 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c130
*+ bl_0_130 br_0_130 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c130
*+ bl_0_130 br_0_130 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c130
*+ bl_0_130 br_0_130 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c130
*+ bl_0_130 br_0_130 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c130
*+ bl_0_130 br_0_130 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c130
*+ bl_0_130 br_0_130 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c130
+ bl_0_130 br_0_130 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c131
+ bl_0_131 br_0_131 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c131
*+ bl_0_131 br_0_131 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c131
*+ bl_0_131 br_0_131 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c131
*+ bl_0_131 br_0_131 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c131
*+ bl_0_131 br_0_131 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c131
*+ bl_0_131 br_0_131 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c131
*+ bl_0_131 br_0_131 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c131
*+ bl_0_131 br_0_131 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c131
*+ bl_0_131 br_0_131 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c131
*+ bl_0_131 br_0_131 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c131
*+ bl_0_131 br_0_131 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c131
*+ bl_0_131 br_0_131 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c131
*+ bl_0_131 br_0_131 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c131
*+ bl_0_131 br_0_131 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c131
*+ bl_0_131 br_0_131 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c131
+ bl_0_131 br_0_131 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c132
+ bl_0_132 br_0_132 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c132
*+ bl_0_132 br_0_132 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c132
*+ bl_0_132 br_0_132 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c132
*+ bl_0_132 br_0_132 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c132
*+ bl_0_132 br_0_132 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c132
*+ bl_0_132 br_0_132 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c132
*+ bl_0_132 br_0_132 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c132
*+ bl_0_132 br_0_132 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c132
*+ bl_0_132 br_0_132 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c132
*+ bl_0_132 br_0_132 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c132
*+ bl_0_132 br_0_132 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c132
*+ bl_0_132 br_0_132 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c132
*+ bl_0_132 br_0_132 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c132
*+ bl_0_132 br_0_132 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c132
*+ bl_0_132 br_0_132 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c132
+ bl_0_132 br_0_132 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c133
+ bl_0_133 br_0_133 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c133
*+ bl_0_133 br_0_133 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c133
*+ bl_0_133 br_0_133 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c133
*+ bl_0_133 br_0_133 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c133
*+ bl_0_133 br_0_133 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c133
*+ bl_0_133 br_0_133 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c133
*+ bl_0_133 br_0_133 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c133
*+ bl_0_133 br_0_133 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c133
*+ bl_0_133 br_0_133 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c133
*+ bl_0_133 br_0_133 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c133
*+ bl_0_133 br_0_133 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c133
*+ bl_0_133 br_0_133 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c133
*+ bl_0_133 br_0_133 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c133
*+ bl_0_133 br_0_133 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c133
*+ bl_0_133 br_0_133 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c133
+ bl_0_133 br_0_133 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c134
+ bl_0_134 br_0_134 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c134
*+ bl_0_134 br_0_134 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c134
*+ bl_0_134 br_0_134 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c134
*+ bl_0_134 br_0_134 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c134
*+ bl_0_134 br_0_134 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c134
*+ bl_0_134 br_0_134 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c134
*+ bl_0_134 br_0_134 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c134
*+ bl_0_134 br_0_134 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c134
*+ bl_0_134 br_0_134 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c134
*+ bl_0_134 br_0_134 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c134
*+ bl_0_134 br_0_134 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c134
*+ bl_0_134 br_0_134 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c134
*+ bl_0_134 br_0_134 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c134
*+ bl_0_134 br_0_134 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c134
*+ bl_0_134 br_0_134 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c134
+ bl_0_134 br_0_134 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c135
+ bl_0_135 br_0_135 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c135
*+ bl_0_135 br_0_135 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c135
*+ bl_0_135 br_0_135 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c135
*+ bl_0_135 br_0_135 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c135
*+ bl_0_135 br_0_135 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c135
*+ bl_0_135 br_0_135 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c135
*+ bl_0_135 br_0_135 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c135
*+ bl_0_135 br_0_135 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c135
*+ bl_0_135 br_0_135 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c135
*+ bl_0_135 br_0_135 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c135
*+ bl_0_135 br_0_135 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c135
*+ bl_0_135 br_0_135 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c135
*+ bl_0_135 br_0_135 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c135
*+ bl_0_135 br_0_135 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c135
*+ bl_0_135 br_0_135 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c135
+ bl_0_135 br_0_135 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c136
+ bl_0_136 br_0_136 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c136
*+ bl_0_136 br_0_136 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c136
*+ bl_0_136 br_0_136 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c136
*+ bl_0_136 br_0_136 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c136
*+ bl_0_136 br_0_136 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c136
*+ bl_0_136 br_0_136 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c136
*+ bl_0_136 br_0_136 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c136
*+ bl_0_136 br_0_136 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c136
*+ bl_0_136 br_0_136 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c136
*+ bl_0_136 br_0_136 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c136
*+ bl_0_136 br_0_136 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c136
*+ bl_0_136 br_0_136 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c136
*+ bl_0_136 br_0_136 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c136
*+ bl_0_136 br_0_136 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c136
*+ bl_0_136 br_0_136 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c136
+ bl_0_136 br_0_136 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c137
+ bl_0_137 br_0_137 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c137
*+ bl_0_137 br_0_137 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c137
*+ bl_0_137 br_0_137 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c137
*+ bl_0_137 br_0_137 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c137
*+ bl_0_137 br_0_137 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c137
*+ bl_0_137 br_0_137 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c137
*+ bl_0_137 br_0_137 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c137
*+ bl_0_137 br_0_137 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c137
*+ bl_0_137 br_0_137 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c137
*+ bl_0_137 br_0_137 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c137
*+ bl_0_137 br_0_137 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c137
*+ bl_0_137 br_0_137 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c137
*+ bl_0_137 br_0_137 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c137
*+ bl_0_137 br_0_137 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c137
*+ bl_0_137 br_0_137 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c137
+ bl_0_137 br_0_137 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c138
+ bl_0_138 br_0_138 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c138
*+ bl_0_138 br_0_138 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c138
*+ bl_0_138 br_0_138 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c138
*+ bl_0_138 br_0_138 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c138
*+ bl_0_138 br_0_138 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c138
*+ bl_0_138 br_0_138 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c138
*+ bl_0_138 br_0_138 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c138
*+ bl_0_138 br_0_138 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c138
*+ bl_0_138 br_0_138 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c138
*+ bl_0_138 br_0_138 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c138
*+ bl_0_138 br_0_138 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c138
*+ bl_0_138 br_0_138 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c138
*+ bl_0_138 br_0_138 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c138
*+ bl_0_138 br_0_138 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c138
*+ bl_0_138 br_0_138 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c138
+ bl_0_138 br_0_138 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c139
+ bl_0_139 br_0_139 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c139
*+ bl_0_139 br_0_139 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c139
*+ bl_0_139 br_0_139 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c139
*+ bl_0_139 br_0_139 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c139
*+ bl_0_139 br_0_139 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c139
*+ bl_0_139 br_0_139 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c139
*+ bl_0_139 br_0_139 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c139
*+ bl_0_139 br_0_139 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c139
*+ bl_0_139 br_0_139 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c139
*+ bl_0_139 br_0_139 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c139
*+ bl_0_139 br_0_139 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c139
*+ bl_0_139 br_0_139 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c139
*+ bl_0_139 br_0_139 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c139
*+ bl_0_139 br_0_139 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c139
*+ bl_0_139 br_0_139 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c139
+ bl_0_139 br_0_139 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c140
+ bl_0_140 br_0_140 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c140
*+ bl_0_140 br_0_140 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c140
*+ bl_0_140 br_0_140 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c140
*+ bl_0_140 br_0_140 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c140
*+ bl_0_140 br_0_140 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c140
*+ bl_0_140 br_0_140 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c140
*+ bl_0_140 br_0_140 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c140
*+ bl_0_140 br_0_140 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c140
*+ bl_0_140 br_0_140 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c140
*+ bl_0_140 br_0_140 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c140
*+ bl_0_140 br_0_140 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c140
*+ bl_0_140 br_0_140 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c140
*+ bl_0_140 br_0_140 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c140
*+ bl_0_140 br_0_140 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c140
*+ bl_0_140 br_0_140 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c140
+ bl_0_140 br_0_140 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c141
+ bl_0_141 br_0_141 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c141
*+ bl_0_141 br_0_141 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c141
*+ bl_0_141 br_0_141 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c141
*+ bl_0_141 br_0_141 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c141
*+ bl_0_141 br_0_141 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c141
*+ bl_0_141 br_0_141 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c141
*+ bl_0_141 br_0_141 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c141
*+ bl_0_141 br_0_141 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c141
*+ bl_0_141 br_0_141 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c141
*+ bl_0_141 br_0_141 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c141
*+ bl_0_141 br_0_141 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c141
*+ bl_0_141 br_0_141 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c141
*+ bl_0_141 br_0_141 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c141
*+ bl_0_141 br_0_141 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c141
*+ bl_0_141 br_0_141 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c141
+ bl_0_141 br_0_141 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c142
+ bl_0_142 br_0_142 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c142
*+ bl_0_142 br_0_142 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c142
*+ bl_0_142 br_0_142 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c142
*+ bl_0_142 br_0_142 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c142
*+ bl_0_142 br_0_142 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c142
*+ bl_0_142 br_0_142 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c142
*+ bl_0_142 br_0_142 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c142
*+ bl_0_142 br_0_142 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c142
*+ bl_0_142 br_0_142 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c142
*+ bl_0_142 br_0_142 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c142
*+ bl_0_142 br_0_142 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c142
*+ bl_0_142 br_0_142 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c142
*+ bl_0_142 br_0_142 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c142
*+ bl_0_142 br_0_142 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c142
*+ bl_0_142 br_0_142 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c142
+ bl_0_142 br_0_142 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c143
+ bl_0_143 br_0_143 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c143
*+ bl_0_143 br_0_143 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c143
*+ bl_0_143 br_0_143 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c143
*+ bl_0_143 br_0_143 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c143
*+ bl_0_143 br_0_143 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c143
*+ bl_0_143 br_0_143 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c143
*+ bl_0_143 br_0_143 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c143
*+ bl_0_143 br_0_143 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c143
*+ bl_0_143 br_0_143 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c143
*+ bl_0_143 br_0_143 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c143
*+ bl_0_143 br_0_143 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c143
*+ bl_0_143 br_0_143 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c143
*+ bl_0_143 br_0_143 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c143
*+ bl_0_143 br_0_143 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c143
*+ bl_0_143 br_0_143 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c143
+ bl_0_143 br_0_143 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c144
+ bl_0_144 br_0_144 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c144
*+ bl_0_144 br_0_144 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c144
*+ bl_0_144 br_0_144 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c144
*+ bl_0_144 br_0_144 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c144
*+ bl_0_144 br_0_144 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c144
*+ bl_0_144 br_0_144 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c144
*+ bl_0_144 br_0_144 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c144
*+ bl_0_144 br_0_144 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c144
*+ bl_0_144 br_0_144 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c144
*+ bl_0_144 br_0_144 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c144
*+ bl_0_144 br_0_144 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c144
*+ bl_0_144 br_0_144 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c144
*+ bl_0_144 br_0_144 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c144
*+ bl_0_144 br_0_144 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c144
*+ bl_0_144 br_0_144 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c144
+ bl_0_144 br_0_144 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c145
+ bl_0_145 br_0_145 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c145
*+ bl_0_145 br_0_145 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c145
*+ bl_0_145 br_0_145 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c145
*+ bl_0_145 br_0_145 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c145
*+ bl_0_145 br_0_145 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c145
*+ bl_0_145 br_0_145 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c145
*+ bl_0_145 br_0_145 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c145
*+ bl_0_145 br_0_145 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c145
*+ bl_0_145 br_0_145 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c145
*+ bl_0_145 br_0_145 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c145
*+ bl_0_145 br_0_145 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c145
*+ bl_0_145 br_0_145 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c145
*+ bl_0_145 br_0_145 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c145
*+ bl_0_145 br_0_145 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c145
*+ bl_0_145 br_0_145 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c145
+ bl_0_145 br_0_145 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c146
+ bl_0_146 br_0_146 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c146
*+ bl_0_146 br_0_146 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c146
*+ bl_0_146 br_0_146 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c146
*+ bl_0_146 br_0_146 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c146
*+ bl_0_146 br_0_146 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c146
*+ bl_0_146 br_0_146 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c146
*+ bl_0_146 br_0_146 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c146
*+ bl_0_146 br_0_146 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c146
*+ bl_0_146 br_0_146 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c146
*+ bl_0_146 br_0_146 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c146
*+ bl_0_146 br_0_146 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c146
*+ bl_0_146 br_0_146 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c146
*+ bl_0_146 br_0_146 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c146
*+ bl_0_146 br_0_146 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c146
*+ bl_0_146 br_0_146 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c146
+ bl_0_146 br_0_146 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c147
+ bl_0_147 br_0_147 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c147
*+ bl_0_147 br_0_147 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c147
*+ bl_0_147 br_0_147 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c147
*+ bl_0_147 br_0_147 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c147
*+ bl_0_147 br_0_147 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c147
*+ bl_0_147 br_0_147 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c147
*+ bl_0_147 br_0_147 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c147
*+ bl_0_147 br_0_147 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c147
*+ bl_0_147 br_0_147 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c147
*+ bl_0_147 br_0_147 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c147
*+ bl_0_147 br_0_147 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c147
*+ bl_0_147 br_0_147 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c147
*+ bl_0_147 br_0_147 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c147
*+ bl_0_147 br_0_147 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c147
*+ bl_0_147 br_0_147 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c147
+ bl_0_147 br_0_147 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c148
+ bl_0_148 br_0_148 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c148
*+ bl_0_148 br_0_148 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c148
*+ bl_0_148 br_0_148 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c148
*+ bl_0_148 br_0_148 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c148
*+ bl_0_148 br_0_148 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c148
*+ bl_0_148 br_0_148 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c148
*+ bl_0_148 br_0_148 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c148
*+ bl_0_148 br_0_148 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c148
*+ bl_0_148 br_0_148 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c148
*+ bl_0_148 br_0_148 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c148
*+ bl_0_148 br_0_148 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c148
*+ bl_0_148 br_0_148 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c148
*+ bl_0_148 br_0_148 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c148
*+ bl_0_148 br_0_148 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c148
*+ bl_0_148 br_0_148 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c148
+ bl_0_148 br_0_148 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c149
+ bl_0_149 br_0_149 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c149
*+ bl_0_149 br_0_149 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c149
*+ bl_0_149 br_0_149 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c149
*+ bl_0_149 br_0_149 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c149
*+ bl_0_149 br_0_149 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c149
*+ bl_0_149 br_0_149 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c149
*+ bl_0_149 br_0_149 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c149
*+ bl_0_149 br_0_149 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c149
*+ bl_0_149 br_0_149 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c149
*+ bl_0_149 br_0_149 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c149
*+ bl_0_149 br_0_149 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c149
*+ bl_0_149 br_0_149 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c149
*+ bl_0_149 br_0_149 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c149
*+ bl_0_149 br_0_149 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c149
*+ bl_0_149 br_0_149 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c149
+ bl_0_149 br_0_149 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c150
+ bl_0_150 br_0_150 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c150
*+ bl_0_150 br_0_150 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c150
*+ bl_0_150 br_0_150 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c150
*+ bl_0_150 br_0_150 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c150
*+ bl_0_150 br_0_150 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c150
*+ bl_0_150 br_0_150 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c150
*+ bl_0_150 br_0_150 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c150
*+ bl_0_150 br_0_150 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c150
*+ bl_0_150 br_0_150 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c150
*+ bl_0_150 br_0_150 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c150
*+ bl_0_150 br_0_150 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c150
*+ bl_0_150 br_0_150 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c150
*+ bl_0_150 br_0_150 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c150
*+ bl_0_150 br_0_150 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c150
*+ bl_0_150 br_0_150 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c150
+ bl_0_150 br_0_150 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c151
+ bl_0_151 br_0_151 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c151
*+ bl_0_151 br_0_151 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c151
*+ bl_0_151 br_0_151 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c151
*+ bl_0_151 br_0_151 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c151
*+ bl_0_151 br_0_151 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c151
*+ bl_0_151 br_0_151 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c151
*+ bl_0_151 br_0_151 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c151
*+ bl_0_151 br_0_151 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c151
*+ bl_0_151 br_0_151 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c151
*+ bl_0_151 br_0_151 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c151
*+ bl_0_151 br_0_151 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c151
*+ bl_0_151 br_0_151 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c151
*+ bl_0_151 br_0_151 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c151
*+ bl_0_151 br_0_151 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c151
*+ bl_0_151 br_0_151 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c151
+ bl_0_151 br_0_151 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c152
+ bl_0_152 br_0_152 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c152
*+ bl_0_152 br_0_152 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c152
*+ bl_0_152 br_0_152 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c152
*+ bl_0_152 br_0_152 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c152
*+ bl_0_152 br_0_152 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c152
*+ bl_0_152 br_0_152 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c152
*+ bl_0_152 br_0_152 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c152
*+ bl_0_152 br_0_152 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c152
*+ bl_0_152 br_0_152 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c152
*+ bl_0_152 br_0_152 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c152
*+ bl_0_152 br_0_152 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c152
*+ bl_0_152 br_0_152 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c152
*+ bl_0_152 br_0_152 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c152
*+ bl_0_152 br_0_152 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c152
*+ bl_0_152 br_0_152 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c152
+ bl_0_152 br_0_152 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c153
+ bl_0_153 br_0_153 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c153
*+ bl_0_153 br_0_153 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c153
*+ bl_0_153 br_0_153 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c153
*+ bl_0_153 br_0_153 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c153
*+ bl_0_153 br_0_153 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c153
*+ bl_0_153 br_0_153 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c153
*+ bl_0_153 br_0_153 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c153
*+ bl_0_153 br_0_153 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c153
*+ bl_0_153 br_0_153 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c153
*+ bl_0_153 br_0_153 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c153
*+ bl_0_153 br_0_153 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c153
*+ bl_0_153 br_0_153 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c153
*+ bl_0_153 br_0_153 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c153
*+ bl_0_153 br_0_153 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c153
*+ bl_0_153 br_0_153 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c153
+ bl_0_153 br_0_153 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c154
+ bl_0_154 br_0_154 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c154
*+ bl_0_154 br_0_154 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c154
*+ bl_0_154 br_0_154 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c154
*+ bl_0_154 br_0_154 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c154
*+ bl_0_154 br_0_154 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c154
*+ bl_0_154 br_0_154 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c154
*+ bl_0_154 br_0_154 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c154
*+ bl_0_154 br_0_154 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c154
*+ bl_0_154 br_0_154 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c154
*+ bl_0_154 br_0_154 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c154
*+ bl_0_154 br_0_154 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c154
*+ bl_0_154 br_0_154 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c154
*+ bl_0_154 br_0_154 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c154
*+ bl_0_154 br_0_154 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c154
*+ bl_0_154 br_0_154 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c154
+ bl_0_154 br_0_154 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c155
+ bl_0_155 br_0_155 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c155
*+ bl_0_155 br_0_155 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c155
*+ bl_0_155 br_0_155 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c155
*+ bl_0_155 br_0_155 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c155
*+ bl_0_155 br_0_155 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c155
*+ bl_0_155 br_0_155 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c155
*+ bl_0_155 br_0_155 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c155
*+ bl_0_155 br_0_155 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c155
*+ bl_0_155 br_0_155 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c155
*+ bl_0_155 br_0_155 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c155
*+ bl_0_155 br_0_155 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c155
*+ bl_0_155 br_0_155 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c155
*+ bl_0_155 br_0_155 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c155
*+ bl_0_155 br_0_155 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c155
*+ bl_0_155 br_0_155 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c155
+ bl_0_155 br_0_155 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c156
+ bl_0_156 br_0_156 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c156
*+ bl_0_156 br_0_156 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c156
*+ bl_0_156 br_0_156 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c156
*+ bl_0_156 br_0_156 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c156
*+ bl_0_156 br_0_156 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c156
*+ bl_0_156 br_0_156 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c156
*+ bl_0_156 br_0_156 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c156
*+ bl_0_156 br_0_156 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c156
*+ bl_0_156 br_0_156 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c156
*+ bl_0_156 br_0_156 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c156
*+ bl_0_156 br_0_156 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c156
*+ bl_0_156 br_0_156 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c156
*+ bl_0_156 br_0_156 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c156
*+ bl_0_156 br_0_156 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c156
*+ bl_0_156 br_0_156 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c156
+ bl_0_156 br_0_156 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c157
+ bl_0_157 br_0_157 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c157
*+ bl_0_157 br_0_157 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c157
*+ bl_0_157 br_0_157 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c157
*+ bl_0_157 br_0_157 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c157
*+ bl_0_157 br_0_157 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c157
*+ bl_0_157 br_0_157 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c157
*+ bl_0_157 br_0_157 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c157
*+ bl_0_157 br_0_157 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c157
*+ bl_0_157 br_0_157 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c157
*+ bl_0_157 br_0_157 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c157
*+ bl_0_157 br_0_157 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c157
*+ bl_0_157 br_0_157 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c157
*+ bl_0_157 br_0_157 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c157
*+ bl_0_157 br_0_157 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c157
*+ bl_0_157 br_0_157 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c157
+ bl_0_157 br_0_157 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c158
+ bl_0_158 br_0_158 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c158
*+ bl_0_158 br_0_158 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c158
*+ bl_0_158 br_0_158 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c158
*+ bl_0_158 br_0_158 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c158
*+ bl_0_158 br_0_158 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c158
*+ bl_0_158 br_0_158 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c158
*+ bl_0_158 br_0_158 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c158
*+ bl_0_158 br_0_158 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c158
*+ bl_0_158 br_0_158 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c158
*+ bl_0_158 br_0_158 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c158
*+ bl_0_158 br_0_158 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c158
*+ bl_0_158 br_0_158 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c158
*+ bl_0_158 br_0_158 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c158
*+ bl_0_158 br_0_158 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c158
*+ bl_0_158 br_0_158 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c158
+ bl_0_158 br_0_158 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c159
+ bl_0_159 br_0_159 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c159
*+ bl_0_159 br_0_159 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c159
*+ bl_0_159 br_0_159 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c159
*+ bl_0_159 br_0_159 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c159
*+ bl_0_159 br_0_159 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c159
*+ bl_0_159 br_0_159 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c159
*+ bl_0_159 br_0_159 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c159
*+ bl_0_159 br_0_159 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c159
*+ bl_0_159 br_0_159 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c159
*+ bl_0_159 br_0_159 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c159
*+ bl_0_159 br_0_159 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c159
*+ bl_0_159 br_0_159 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c159
*+ bl_0_159 br_0_159 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c159
*+ bl_0_159 br_0_159 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c159
*+ bl_0_159 br_0_159 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c159
+ bl_0_159 br_0_159 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c160
+ bl_0_160 br_0_160 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c160
*+ bl_0_160 br_0_160 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c160
*+ bl_0_160 br_0_160 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c160
*+ bl_0_160 br_0_160 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c160
*+ bl_0_160 br_0_160 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c160
*+ bl_0_160 br_0_160 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c160
*+ bl_0_160 br_0_160 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c160
*+ bl_0_160 br_0_160 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c160
*+ bl_0_160 br_0_160 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c160
*+ bl_0_160 br_0_160 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c160
*+ bl_0_160 br_0_160 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c160
*+ bl_0_160 br_0_160 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c160
*+ bl_0_160 br_0_160 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c160
*+ bl_0_160 br_0_160 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c160
*+ bl_0_160 br_0_160 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c160
+ bl_0_160 br_0_160 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c161
+ bl_0_161 br_0_161 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c161
*+ bl_0_161 br_0_161 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c161
*+ bl_0_161 br_0_161 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c161
*+ bl_0_161 br_0_161 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c161
*+ bl_0_161 br_0_161 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c161
*+ bl_0_161 br_0_161 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c161
*+ bl_0_161 br_0_161 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c161
*+ bl_0_161 br_0_161 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c161
*+ bl_0_161 br_0_161 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c161
*+ bl_0_161 br_0_161 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c161
*+ bl_0_161 br_0_161 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c161
*+ bl_0_161 br_0_161 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c161
*+ bl_0_161 br_0_161 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c161
*+ bl_0_161 br_0_161 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c161
*+ bl_0_161 br_0_161 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c161
+ bl_0_161 br_0_161 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c162
+ bl_0_162 br_0_162 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c162
*+ bl_0_162 br_0_162 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c162
*+ bl_0_162 br_0_162 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c162
*+ bl_0_162 br_0_162 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c162
*+ bl_0_162 br_0_162 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c162
*+ bl_0_162 br_0_162 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c162
*+ bl_0_162 br_0_162 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c162
*+ bl_0_162 br_0_162 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c162
*+ bl_0_162 br_0_162 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c162
*+ bl_0_162 br_0_162 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c162
*+ bl_0_162 br_0_162 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c162
*+ bl_0_162 br_0_162 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c162
*+ bl_0_162 br_0_162 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c162
*+ bl_0_162 br_0_162 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c162
*+ bl_0_162 br_0_162 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c162
+ bl_0_162 br_0_162 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c163
+ bl_0_163 br_0_163 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c163
*+ bl_0_163 br_0_163 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c163
*+ bl_0_163 br_0_163 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c163
*+ bl_0_163 br_0_163 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c163
*+ bl_0_163 br_0_163 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c163
*+ bl_0_163 br_0_163 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c163
*+ bl_0_163 br_0_163 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c163
*+ bl_0_163 br_0_163 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c163
*+ bl_0_163 br_0_163 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c163
*+ bl_0_163 br_0_163 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c163
*+ bl_0_163 br_0_163 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c163
*+ bl_0_163 br_0_163 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c163
*+ bl_0_163 br_0_163 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c163
*+ bl_0_163 br_0_163 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c163
*+ bl_0_163 br_0_163 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c163
+ bl_0_163 br_0_163 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c164
+ bl_0_164 br_0_164 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c164
*+ bl_0_164 br_0_164 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c164
*+ bl_0_164 br_0_164 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c164
*+ bl_0_164 br_0_164 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c164
*+ bl_0_164 br_0_164 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c164
*+ bl_0_164 br_0_164 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c164
*+ bl_0_164 br_0_164 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c164
*+ bl_0_164 br_0_164 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c164
*+ bl_0_164 br_0_164 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c164
*+ bl_0_164 br_0_164 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c164
*+ bl_0_164 br_0_164 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c164
*+ bl_0_164 br_0_164 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c164
*+ bl_0_164 br_0_164 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c164
*+ bl_0_164 br_0_164 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c164
*+ bl_0_164 br_0_164 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c164
+ bl_0_164 br_0_164 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c165
+ bl_0_165 br_0_165 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c165
*+ bl_0_165 br_0_165 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c165
*+ bl_0_165 br_0_165 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c165
*+ bl_0_165 br_0_165 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c165
*+ bl_0_165 br_0_165 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c165
*+ bl_0_165 br_0_165 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c165
*+ bl_0_165 br_0_165 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c165
*+ bl_0_165 br_0_165 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c165
*+ bl_0_165 br_0_165 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c165
*+ bl_0_165 br_0_165 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c165
*+ bl_0_165 br_0_165 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c165
*+ bl_0_165 br_0_165 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c165
*+ bl_0_165 br_0_165 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c165
*+ bl_0_165 br_0_165 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c165
*+ bl_0_165 br_0_165 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c165
+ bl_0_165 br_0_165 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c166
+ bl_0_166 br_0_166 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c166
*+ bl_0_166 br_0_166 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c166
*+ bl_0_166 br_0_166 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c166
*+ bl_0_166 br_0_166 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c166
*+ bl_0_166 br_0_166 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c166
*+ bl_0_166 br_0_166 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c166
*+ bl_0_166 br_0_166 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c166
*+ bl_0_166 br_0_166 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c166
*+ bl_0_166 br_0_166 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c166
*+ bl_0_166 br_0_166 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c166
*+ bl_0_166 br_0_166 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c166
*+ bl_0_166 br_0_166 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c166
*+ bl_0_166 br_0_166 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c166
*+ bl_0_166 br_0_166 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c166
*+ bl_0_166 br_0_166 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c166
+ bl_0_166 br_0_166 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c167
+ bl_0_167 br_0_167 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c167
*+ bl_0_167 br_0_167 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c167
*+ bl_0_167 br_0_167 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c167
*+ bl_0_167 br_0_167 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c167
*+ bl_0_167 br_0_167 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c167
*+ bl_0_167 br_0_167 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c167
*+ bl_0_167 br_0_167 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c167
*+ bl_0_167 br_0_167 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c167
*+ bl_0_167 br_0_167 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c167
*+ bl_0_167 br_0_167 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c167
*+ bl_0_167 br_0_167 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c167
*+ bl_0_167 br_0_167 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c167
*+ bl_0_167 br_0_167 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c167
*+ bl_0_167 br_0_167 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c167
*+ bl_0_167 br_0_167 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c167
+ bl_0_167 br_0_167 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c168
+ bl_0_168 br_0_168 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c168
*+ bl_0_168 br_0_168 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c168
*+ bl_0_168 br_0_168 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c168
*+ bl_0_168 br_0_168 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c168
*+ bl_0_168 br_0_168 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c168
*+ bl_0_168 br_0_168 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c168
*+ bl_0_168 br_0_168 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c168
*+ bl_0_168 br_0_168 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c168
*+ bl_0_168 br_0_168 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c168
*+ bl_0_168 br_0_168 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c168
*+ bl_0_168 br_0_168 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c168
*+ bl_0_168 br_0_168 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c168
*+ bl_0_168 br_0_168 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c168
*+ bl_0_168 br_0_168 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c168
*+ bl_0_168 br_0_168 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c168
+ bl_0_168 br_0_168 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c169
+ bl_0_169 br_0_169 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c169
*+ bl_0_169 br_0_169 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c169
*+ bl_0_169 br_0_169 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c169
*+ bl_0_169 br_0_169 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c169
*+ bl_0_169 br_0_169 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c169
*+ bl_0_169 br_0_169 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c169
*+ bl_0_169 br_0_169 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c169
*+ bl_0_169 br_0_169 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c169
*+ bl_0_169 br_0_169 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c169
*+ bl_0_169 br_0_169 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c169
*+ bl_0_169 br_0_169 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c169
*+ bl_0_169 br_0_169 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c169
*+ bl_0_169 br_0_169 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c169
*+ bl_0_169 br_0_169 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c169
*+ bl_0_169 br_0_169 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c169
+ bl_0_169 br_0_169 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c170
+ bl_0_170 br_0_170 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c170
*+ bl_0_170 br_0_170 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c170
*+ bl_0_170 br_0_170 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c170
*+ bl_0_170 br_0_170 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c170
*+ bl_0_170 br_0_170 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c170
*+ bl_0_170 br_0_170 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c170
*+ bl_0_170 br_0_170 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c170
*+ bl_0_170 br_0_170 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c170
*+ bl_0_170 br_0_170 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c170
*+ bl_0_170 br_0_170 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c170
*+ bl_0_170 br_0_170 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c170
*+ bl_0_170 br_0_170 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c170
*+ bl_0_170 br_0_170 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c170
*+ bl_0_170 br_0_170 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c170
*+ bl_0_170 br_0_170 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c170
+ bl_0_170 br_0_170 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c171
+ bl_0_171 br_0_171 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c171
*+ bl_0_171 br_0_171 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c171
*+ bl_0_171 br_0_171 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c171
*+ bl_0_171 br_0_171 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c171
*+ bl_0_171 br_0_171 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c171
*+ bl_0_171 br_0_171 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c171
*+ bl_0_171 br_0_171 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c171
*+ bl_0_171 br_0_171 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c171
*+ bl_0_171 br_0_171 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c171
*+ bl_0_171 br_0_171 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c171
*+ bl_0_171 br_0_171 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c171
*+ bl_0_171 br_0_171 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c171
*+ bl_0_171 br_0_171 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c171
*+ bl_0_171 br_0_171 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c171
*+ bl_0_171 br_0_171 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c171
+ bl_0_171 br_0_171 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c172
+ bl_0_172 br_0_172 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c172
*+ bl_0_172 br_0_172 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c172
*+ bl_0_172 br_0_172 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c172
*+ bl_0_172 br_0_172 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c172
*+ bl_0_172 br_0_172 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c172
*+ bl_0_172 br_0_172 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c172
*+ bl_0_172 br_0_172 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c172
*+ bl_0_172 br_0_172 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c172
*+ bl_0_172 br_0_172 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c172
*+ bl_0_172 br_0_172 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c172
*+ bl_0_172 br_0_172 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c172
*+ bl_0_172 br_0_172 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c172
*+ bl_0_172 br_0_172 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c172
*+ bl_0_172 br_0_172 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c172
*+ bl_0_172 br_0_172 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c172
+ bl_0_172 br_0_172 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c173
+ bl_0_173 br_0_173 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c173
*+ bl_0_173 br_0_173 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c173
*+ bl_0_173 br_0_173 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c173
*+ bl_0_173 br_0_173 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c173
*+ bl_0_173 br_0_173 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c173
*+ bl_0_173 br_0_173 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c173
*+ bl_0_173 br_0_173 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c173
*+ bl_0_173 br_0_173 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c173
*+ bl_0_173 br_0_173 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c173
*+ bl_0_173 br_0_173 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c173
*+ bl_0_173 br_0_173 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c173
*+ bl_0_173 br_0_173 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c173
*+ bl_0_173 br_0_173 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c173
*+ bl_0_173 br_0_173 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c173
*+ bl_0_173 br_0_173 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c173
+ bl_0_173 br_0_173 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c174
+ bl_0_174 br_0_174 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c174
*+ bl_0_174 br_0_174 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c174
*+ bl_0_174 br_0_174 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c174
*+ bl_0_174 br_0_174 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c174
*+ bl_0_174 br_0_174 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c174
*+ bl_0_174 br_0_174 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c174
*+ bl_0_174 br_0_174 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c174
*+ bl_0_174 br_0_174 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c174
*+ bl_0_174 br_0_174 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c174
*+ bl_0_174 br_0_174 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c174
*+ bl_0_174 br_0_174 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c174
*+ bl_0_174 br_0_174 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c174
*+ bl_0_174 br_0_174 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c174
*+ bl_0_174 br_0_174 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c174
*+ bl_0_174 br_0_174 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c174
+ bl_0_174 br_0_174 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c175
+ bl_0_175 br_0_175 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c175
*+ bl_0_175 br_0_175 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c175
*+ bl_0_175 br_0_175 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c175
*+ bl_0_175 br_0_175 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c175
*+ bl_0_175 br_0_175 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c175
*+ bl_0_175 br_0_175 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c175
*+ bl_0_175 br_0_175 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c175
*+ bl_0_175 br_0_175 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c175
*+ bl_0_175 br_0_175 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c175
*+ bl_0_175 br_0_175 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c175
*+ bl_0_175 br_0_175 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c175
*+ bl_0_175 br_0_175 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c175
*+ bl_0_175 br_0_175 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c175
*+ bl_0_175 br_0_175 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c175
*+ bl_0_175 br_0_175 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c175
+ bl_0_175 br_0_175 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c176
+ bl_0_176 br_0_176 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c176
*+ bl_0_176 br_0_176 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c176
*+ bl_0_176 br_0_176 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c176
*+ bl_0_176 br_0_176 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c176
*+ bl_0_176 br_0_176 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c176
*+ bl_0_176 br_0_176 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c176
*+ bl_0_176 br_0_176 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c176
*+ bl_0_176 br_0_176 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c176
*+ bl_0_176 br_0_176 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c176
*+ bl_0_176 br_0_176 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c176
*+ bl_0_176 br_0_176 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c176
*+ bl_0_176 br_0_176 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c176
*+ bl_0_176 br_0_176 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c176
*+ bl_0_176 br_0_176 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c176
*+ bl_0_176 br_0_176 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c176
+ bl_0_176 br_0_176 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c177
+ bl_0_177 br_0_177 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c177
*+ bl_0_177 br_0_177 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c177
*+ bl_0_177 br_0_177 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c177
*+ bl_0_177 br_0_177 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c177
*+ bl_0_177 br_0_177 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c177
*+ bl_0_177 br_0_177 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c177
*+ bl_0_177 br_0_177 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c177
*+ bl_0_177 br_0_177 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c177
*+ bl_0_177 br_0_177 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c177
*+ bl_0_177 br_0_177 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c177
*+ bl_0_177 br_0_177 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c177
*+ bl_0_177 br_0_177 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c177
*+ bl_0_177 br_0_177 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c177
*+ bl_0_177 br_0_177 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c177
*+ bl_0_177 br_0_177 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c177
+ bl_0_177 br_0_177 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c178
+ bl_0_178 br_0_178 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c178
*+ bl_0_178 br_0_178 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c178
*+ bl_0_178 br_0_178 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c178
*+ bl_0_178 br_0_178 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c178
*+ bl_0_178 br_0_178 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c178
*+ bl_0_178 br_0_178 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c178
*+ bl_0_178 br_0_178 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c178
*+ bl_0_178 br_0_178 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c178
*+ bl_0_178 br_0_178 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c178
*+ bl_0_178 br_0_178 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c178
*+ bl_0_178 br_0_178 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c178
*+ bl_0_178 br_0_178 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c178
*+ bl_0_178 br_0_178 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c178
*+ bl_0_178 br_0_178 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c178
*+ bl_0_178 br_0_178 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c178
+ bl_0_178 br_0_178 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c179
+ bl_0_179 br_0_179 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c179
*+ bl_0_179 br_0_179 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c179
*+ bl_0_179 br_0_179 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c179
*+ bl_0_179 br_0_179 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c179
*+ bl_0_179 br_0_179 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c179
*+ bl_0_179 br_0_179 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c179
*+ bl_0_179 br_0_179 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c179
*+ bl_0_179 br_0_179 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c179
*+ bl_0_179 br_0_179 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c179
*+ bl_0_179 br_0_179 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c179
*+ bl_0_179 br_0_179 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c179
*+ bl_0_179 br_0_179 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c179
*+ bl_0_179 br_0_179 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c179
*+ bl_0_179 br_0_179 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c179
*+ bl_0_179 br_0_179 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c179
+ bl_0_179 br_0_179 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c180
+ bl_0_180 br_0_180 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c180
*+ bl_0_180 br_0_180 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c180
*+ bl_0_180 br_0_180 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c180
*+ bl_0_180 br_0_180 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c180
*+ bl_0_180 br_0_180 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c180
*+ bl_0_180 br_0_180 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c180
*+ bl_0_180 br_0_180 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c180
*+ bl_0_180 br_0_180 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c180
*+ bl_0_180 br_0_180 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c180
*+ bl_0_180 br_0_180 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c180
*+ bl_0_180 br_0_180 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c180
*+ bl_0_180 br_0_180 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c180
*+ bl_0_180 br_0_180 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c180
*+ bl_0_180 br_0_180 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c180
*+ bl_0_180 br_0_180 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c180
+ bl_0_180 br_0_180 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c181
+ bl_0_181 br_0_181 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c181
*+ bl_0_181 br_0_181 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c181
*+ bl_0_181 br_0_181 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c181
*+ bl_0_181 br_0_181 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c181
*+ bl_0_181 br_0_181 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c181
*+ bl_0_181 br_0_181 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c181
*+ bl_0_181 br_0_181 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c181
*+ bl_0_181 br_0_181 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c181
*+ bl_0_181 br_0_181 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c181
*+ bl_0_181 br_0_181 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c181
*+ bl_0_181 br_0_181 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c181
*+ bl_0_181 br_0_181 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c181
*+ bl_0_181 br_0_181 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c181
*+ bl_0_181 br_0_181 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c181
*+ bl_0_181 br_0_181 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c181
+ bl_0_181 br_0_181 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c182
+ bl_0_182 br_0_182 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c182
*+ bl_0_182 br_0_182 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c182
*+ bl_0_182 br_0_182 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c182
*+ bl_0_182 br_0_182 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c182
*+ bl_0_182 br_0_182 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c182
*+ bl_0_182 br_0_182 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c182
*+ bl_0_182 br_0_182 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c182
*+ bl_0_182 br_0_182 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c182
*+ bl_0_182 br_0_182 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c182
*+ bl_0_182 br_0_182 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c182
*+ bl_0_182 br_0_182 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c182
*+ bl_0_182 br_0_182 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c182
*+ bl_0_182 br_0_182 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c182
*+ bl_0_182 br_0_182 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c182
*+ bl_0_182 br_0_182 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c182
+ bl_0_182 br_0_182 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c183
+ bl_0_183 br_0_183 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c183
*+ bl_0_183 br_0_183 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c183
*+ bl_0_183 br_0_183 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c183
*+ bl_0_183 br_0_183 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c183
*+ bl_0_183 br_0_183 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c183
*+ bl_0_183 br_0_183 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c183
*+ bl_0_183 br_0_183 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c183
*+ bl_0_183 br_0_183 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c183
*+ bl_0_183 br_0_183 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c183
*+ bl_0_183 br_0_183 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c183
*+ bl_0_183 br_0_183 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c183
*+ bl_0_183 br_0_183 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c183
*+ bl_0_183 br_0_183 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c183
*+ bl_0_183 br_0_183 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c183
*+ bl_0_183 br_0_183 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c183
+ bl_0_183 br_0_183 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c184
+ bl_0_184 br_0_184 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c184
*+ bl_0_184 br_0_184 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c184
*+ bl_0_184 br_0_184 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c184
*+ bl_0_184 br_0_184 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c184
*+ bl_0_184 br_0_184 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c184
*+ bl_0_184 br_0_184 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c184
*+ bl_0_184 br_0_184 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c184
*+ bl_0_184 br_0_184 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c184
*+ bl_0_184 br_0_184 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c184
*+ bl_0_184 br_0_184 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c184
*+ bl_0_184 br_0_184 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c184
*+ bl_0_184 br_0_184 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c184
*+ bl_0_184 br_0_184 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c184
*+ bl_0_184 br_0_184 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c184
*+ bl_0_184 br_0_184 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c184
+ bl_0_184 br_0_184 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c185
+ bl_0_185 br_0_185 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c185
*+ bl_0_185 br_0_185 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c185
*+ bl_0_185 br_0_185 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c185
*+ bl_0_185 br_0_185 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c185
*+ bl_0_185 br_0_185 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c185
*+ bl_0_185 br_0_185 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c185
*+ bl_0_185 br_0_185 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c185
*+ bl_0_185 br_0_185 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c185
*+ bl_0_185 br_0_185 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c185
*+ bl_0_185 br_0_185 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c185
*+ bl_0_185 br_0_185 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c185
*+ bl_0_185 br_0_185 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c185
*+ bl_0_185 br_0_185 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c185
*+ bl_0_185 br_0_185 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c185
*+ bl_0_185 br_0_185 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c185
+ bl_0_185 br_0_185 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c186
+ bl_0_186 br_0_186 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c186
*+ bl_0_186 br_0_186 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c186
*+ bl_0_186 br_0_186 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c186
*+ bl_0_186 br_0_186 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c186
*+ bl_0_186 br_0_186 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c186
*+ bl_0_186 br_0_186 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c186
*+ bl_0_186 br_0_186 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c186
*+ bl_0_186 br_0_186 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c186
*+ bl_0_186 br_0_186 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c186
*+ bl_0_186 br_0_186 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c186
*+ bl_0_186 br_0_186 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c186
*+ bl_0_186 br_0_186 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c186
*+ bl_0_186 br_0_186 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c186
*+ bl_0_186 br_0_186 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c186
*+ bl_0_186 br_0_186 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c186
+ bl_0_186 br_0_186 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c187
+ bl_0_187 br_0_187 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c187
*+ bl_0_187 br_0_187 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c187
*+ bl_0_187 br_0_187 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c187
*+ bl_0_187 br_0_187 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c187
*+ bl_0_187 br_0_187 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c187
*+ bl_0_187 br_0_187 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c187
*+ bl_0_187 br_0_187 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c187
*+ bl_0_187 br_0_187 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c187
*+ bl_0_187 br_0_187 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c187
*+ bl_0_187 br_0_187 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c187
*+ bl_0_187 br_0_187 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c187
*+ bl_0_187 br_0_187 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c187
*+ bl_0_187 br_0_187 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c187
*+ bl_0_187 br_0_187 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c187
*+ bl_0_187 br_0_187 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c187
+ bl_0_187 br_0_187 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c188
+ bl_0_188 br_0_188 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c188
*+ bl_0_188 br_0_188 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c188
*+ bl_0_188 br_0_188 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c188
*+ bl_0_188 br_0_188 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c188
*+ bl_0_188 br_0_188 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c188
*+ bl_0_188 br_0_188 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c188
*+ bl_0_188 br_0_188 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c188
*+ bl_0_188 br_0_188 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c188
*+ bl_0_188 br_0_188 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c188
*+ bl_0_188 br_0_188 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c188
*+ bl_0_188 br_0_188 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c188
*+ bl_0_188 br_0_188 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c188
*+ bl_0_188 br_0_188 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c188
*+ bl_0_188 br_0_188 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c188
*+ bl_0_188 br_0_188 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c188
+ bl_0_188 br_0_188 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c189
+ bl_0_189 br_0_189 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c189
*+ bl_0_189 br_0_189 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c189
*+ bl_0_189 br_0_189 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c189
*+ bl_0_189 br_0_189 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c189
*+ bl_0_189 br_0_189 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c189
*+ bl_0_189 br_0_189 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c189
*+ bl_0_189 br_0_189 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c189
*+ bl_0_189 br_0_189 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c189
*+ bl_0_189 br_0_189 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c189
*+ bl_0_189 br_0_189 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c189
*+ bl_0_189 br_0_189 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c189
*+ bl_0_189 br_0_189 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c189
*+ bl_0_189 br_0_189 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c189
*+ bl_0_189 br_0_189 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c189
*+ bl_0_189 br_0_189 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c189
+ bl_0_189 br_0_189 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c190
+ bl_0_190 br_0_190 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c190
*+ bl_0_190 br_0_190 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c190
*+ bl_0_190 br_0_190 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c190
*+ bl_0_190 br_0_190 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c190
*+ bl_0_190 br_0_190 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c190
*+ bl_0_190 br_0_190 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c190
*+ bl_0_190 br_0_190 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c190
*+ bl_0_190 br_0_190 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c190
*+ bl_0_190 br_0_190 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c190
*+ bl_0_190 br_0_190 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c190
*+ bl_0_190 br_0_190 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c190
*+ bl_0_190 br_0_190 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c190
*+ bl_0_190 br_0_190 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c190
*+ bl_0_190 br_0_190 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c190
*+ bl_0_190 br_0_190 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c190
+ bl_0_190 br_0_190 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c191
+ bl_0_191 br_0_191 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c191
*+ bl_0_191 br_0_191 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c191
*+ bl_0_191 br_0_191 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c191
*+ bl_0_191 br_0_191 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c191
*+ bl_0_191 br_0_191 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c191
*+ bl_0_191 br_0_191 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c191
*+ bl_0_191 br_0_191 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c191
*+ bl_0_191 br_0_191 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c191
*+ bl_0_191 br_0_191 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c191
*+ bl_0_191 br_0_191 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c191
*+ bl_0_191 br_0_191 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c191
*+ bl_0_191 br_0_191 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c191
*+ bl_0_191 br_0_191 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c191
*+ bl_0_191 br_0_191 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c191
*+ bl_0_191 br_0_191 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c191
+ bl_0_191 br_0_191 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c192
+ bl_0_192 br_0_192 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c192
*+ bl_0_192 br_0_192 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c192
*+ bl_0_192 br_0_192 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c192
*+ bl_0_192 br_0_192 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c192
*+ bl_0_192 br_0_192 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c192
*+ bl_0_192 br_0_192 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c192
*+ bl_0_192 br_0_192 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c192
*+ bl_0_192 br_0_192 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c192
*+ bl_0_192 br_0_192 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c192
*+ bl_0_192 br_0_192 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c192
*+ bl_0_192 br_0_192 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c192
*+ bl_0_192 br_0_192 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c192
*+ bl_0_192 br_0_192 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c192
*+ bl_0_192 br_0_192 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c192
*+ bl_0_192 br_0_192 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c192
+ bl_0_192 br_0_192 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c193
+ bl_0_193 br_0_193 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c193
*+ bl_0_193 br_0_193 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c193
*+ bl_0_193 br_0_193 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c193
*+ bl_0_193 br_0_193 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c193
*+ bl_0_193 br_0_193 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c193
*+ bl_0_193 br_0_193 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c193
*+ bl_0_193 br_0_193 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c193
*+ bl_0_193 br_0_193 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c193
*+ bl_0_193 br_0_193 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c193
*+ bl_0_193 br_0_193 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c193
*+ bl_0_193 br_0_193 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c193
*+ bl_0_193 br_0_193 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c193
*+ bl_0_193 br_0_193 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c193
*+ bl_0_193 br_0_193 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c193
*+ bl_0_193 br_0_193 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c193
+ bl_0_193 br_0_193 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c194
+ bl_0_194 br_0_194 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c194
*+ bl_0_194 br_0_194 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c194
*+ bl_0_194 br_0_194 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c194
*+ bl_0_194 br_0_194 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c194
*+ bl_0_194 br_0_194 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c194
*+ bl_0_194 br_0_194 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c194
*+ bl_0_194 br_0_194 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c194
*+ bl_0_194 br_0_194 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c194
*+ bl_0_194 br_0_194 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c194
*+ bl_0_194 br_0_194 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c194
*+ bl_0_194 br_0_194 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c194
*+ bl_0_194 br_0_194 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c194
*+ bl_0_194 br_0_194 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c194
*+ bl_0_194 br_0_194 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c194
*+ bl_0_194 br_0_194 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c194
+ bl_0_194 br_0_194 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c195
+ bl_0_195 br_0_195 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c195
*+ bl_0_195 br_0_195 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c195
*+ bl_0_195 br_0_195 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c195
*+ bl_0_195 br_0_195 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c195
*+ bl_0_195 br_0_195 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c195
*+ bl_0_195 br_0_195 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c195
*+ bl_0_195 br_0_195 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c195
*+ bl_0_195 br_0_195 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c195
*+ bl_0_195 br_0_195 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c195
*+ bl_0_195 br_0_195 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c195
*+ bl_0_195 br_0_195 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c195
*+ bl_0_195 br_0_195 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c195
*+ bl_0_195 br_0_195 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c195
*+ bl_0_195 br_0_195 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c195
*+ bl_0_195 br_0_195 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c195
+ bl_0_195 br_0_195 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c196
+ bl_0_196 br_0_196 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c196
*+ bl_0_196 br_0_196 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c196
*+ bl_0_196 br_0_196 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c196
*+ bl_0_196 br_0_196 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c196
*+ bl_0_196 br_0_196 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c196
*+ bl_0_196 br_0_196 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c196
*+ bl_0_196 br_0_196 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c196
*+ bl_0_196 br_0_196 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c196
*+ bl_0_196 br_0_196 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c196
*+ bl_0_196 br_0_196 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c196
*+ bl_0_196 br_0_196 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c196
*+ bl_0_196 br_0_196 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c196
*+ bl_0_196 br_0_196 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c196
*+ bl_0_196 br_0_196 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c196
*+ bl_0_196 br_0_196 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c196
+ bl_0_196 br_0_196 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c197
+ bl_0_197 br_0_197 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c197
*+ bl_0_197 br_0_197 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c197
*+ bl_0_197 br_0_197 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c197
*+ bl_0_197 br_0_197 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c197
*+ bl_0_197 br_0_197 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c197
*+ bl_0_197 br_0_197 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c197
*+ bl_0_197 br_0_197 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c197
*+ bl_0_197 br_0_197 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c197
*+ bl_0_197 br_0_197 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c197
*+ bl_0_197 br_0_197 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c197
*+ bl_0_197 br_0_197 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c197
*+ bl_0_197 br_0_197 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c197
*+ bl_0_197 br_0_197 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c197
*+ bl_0_197 br_0_197 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c197
*+ bl_0_197 br_0_197 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c197
+ bl_0_197 br_0_197 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c198
+ bl_0_198 br_0_198 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c198
*+ bl_0_198 br_0_198 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c198
*+ bl_0_198 br_0_198 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c198
*+ bl_0_198 br_0_198 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c198
*+ bl_0_198 br_0_198 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c198
*+ bl_0_198 br_0_198 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c198
*+ bl_0_198 br_0_198 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c198
*+ bl_0_198 br_0_198 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c198
*+ bl_0_198 br_0_198 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c198
*+ bl_0_198 br_0_198 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c198
*+ bl_0_198 br_0_198 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c198
*+ bl_0_198 br_0_198 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c198
*+ bl_0_198 br_0_198 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c198
*+ bl_0_198 br_0_198 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c198
*+ bl_0_198 br_0_198 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c198
+ bl_0_198 br_0_198 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c199
+ bl_0_199 br_0_199 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c199
*+ bl_0_199 br_0_199 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c199
*+ bl_0_199 br_0_199 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c199
*+ bl_0_199 br_0_199 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c199
*+ bl_0_199 br_0_199 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c199
*+ bl_0_199 br_0_199 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c199
*+ bl_0_199 br_0_199 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c199
*+ bl_0_199 br_0_199 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c199
*+ bl_0_199 br_0_199 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c199
*+ bl_0_199 br_0_199 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c199
*+ bl_0_199 br_0_199 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c199
*+ bl_0_199 br_0_199 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c199
*+ bl_0_199 br_0_199 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c199
*+ bl_0_199 br_0_199 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c199
*+ bl_0_199 br_0_199 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c199
+ bl_0_199 br_0_199 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c200
+ bl_0_200 br_0_200 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c200
*+ bl_0_200 br_0_200 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c200
*+ bl_0_200 br_0_200 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c200
*+ bl_0_200 br_0_200 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c200
*+ bl_0_200 br_0_200 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c200
*+ bl_0_200 br_0_200 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c200
*+ bl_0_200 br_0_200 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c200
*+ bl_0_200 br_0_200 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c200
*+ bl_0_200 br_0_200 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c200
*+ bl_0_200 br_0_200 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c200
*+ bl_0_200 br_0_200 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c200
*+ bl_0_200 br_0_200 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c200
*+ bl_0_200 br_0_200 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c200
*+ bl_0_200 br_0_200 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c200
*+ bl_0_200 br_0_200 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c200
+ bl_0_200 br_0_200 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c201
+ bl_0_201 br_0_201 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c201
*+ bl_0_201 br_0_201 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c201
*+ bl_0_201 br_0_201 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c201
*+ bl_0_201 br_0_201 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c201
*+ bl_0_201 br_0_201 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c201
*+ bl_0_201 br_0_201 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c201
*+ bl_0_201 br_0_201 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c201
*+ bl_0_201 br_0_201 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c201
*+ bl_0_201 br_0_201 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c201
*+ bl_0_201 br_0_201 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c201
*+ bl_0_201 br_0_201 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c201
*+ bl_0_201 br_0_201 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c201
*+ bl_0_201 br_0_201 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c201
*+ bl_0_201 br_0_201 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c201
*+ bl_0_201 br_0_201 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c201
+ bl_0_201 br_0_201 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c202
+ bl_0_202 br_0_202 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c202
*+ bl_0_202 br_0_202 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c202
*+ bl_0_202 br_0_202 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c202
*+ bl_0_202 br_0_202 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c202
*+ bl_0_202 br_0_202 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c202
*+ bl_0_202 br_0_202 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c202
*+ bl_0_202 br_0_202 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c202
*+ bl_0_202 br_0_202 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c202
*+ bl_0_202 br_0_202 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c202
*+ bl_0_202 br_0_202 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c202
*+ bl_0_202 br_0_202 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c202
*+ bl_0_202 br_0_202 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c202
*+ bl_0_202 br_0_202 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c202
*+ bl_0_202 br_0_202 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c202
*+ bl_0_202 br_0_202 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c202
+ bl_0_202 br_0_202 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c203
+ bl_0_203 br_0_203 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c203
*+ bl_0_203 br_0_203 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c203
*+ bl_0_203 br_0_203 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c203
*+ bl_0_203 br_0_203 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c203
*+ bl_0_203 br_0_203 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c203
*+ bl_0_203 br_0_203 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c203
*+ bl_0_203 br_0_203 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c203
*+ bl_0_203 br_0_203 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c203
*+ bl_0_203 br_0_203 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c203
*+ bl_0_203 br_0_203 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c203
*+ bl_0_203 br_0_203 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c203
*+ bl_0_203 br_0_203 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c203
*+ bl_0_203 br_0_203 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c203
*+ bl_0_203 br_0_203 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c203
*+ bl_0_203 br_0_203 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c203
+ bl_0_203 br_0_203 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c204
+ bl_0_204 br_0_204 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c204
*+ bl_0_204 br_0_204 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c204
*+ bl_0_204 br_0_204 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c204
*+ bl_0_204 br_0_204 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c204
*+ bl_0_204 br_0_204 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c204
*+ bl_0_204 br_0_204 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c204
*+ bl_0_204 br_0_204 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c204
*+ bl_0_204 br_0_204 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c204
*+ bl_0_204 br_0_204 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c204
*+ bl_0_204 br_0_204 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c204
*+ bl_0_204 br_0_204 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c204
*+ bl_0_204 br_0_204 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c204
*+ bl_0_204 br_0_204 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c204
*+ bl_0_204 br_0_204 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c204
*+ bl_0_204 br_0_204 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c204
+ bl_0_204 br_0_204 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c205
+ bl_0_205 br_0_205 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c205
*+ bl_0_205 br_0_205 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c205
*+ bl_0_205 br_0_205 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c205
*+ bl_0_205 br_0_205 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c205
*+ bl_0_205 br_0_205 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c205
*+ bl_0_205 br_0_205 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c205
*+ bl_0_205 br_0_205 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c205
*+ bl_0_205 br_0_205 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c205
*+ bl_0_205 br_0_205 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c205
*+ bl_0_205 br_0_205 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c205
*+ bl_0_205 br_0_205 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c205
*+ bl_0_205 br_0_205 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c205
*+ bl_0_205 br_0_205 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c205
*+ bl_0_205 br_0_205 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c205
*+ bl_0_205 br_0_205 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c205
+ bl_0_205 br_0_205 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c206
+ bl_0_206 br_0_206 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c206
*+ bl_0_206 br_0_206 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c206
*+ bl_0_206 br_0_206 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c206
*+ bl_0_206 br_0_206 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c206
*+ bl_0_206 br_0_206 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c206
*+ bl_0_206 br_0_206 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c206
*+ bl_0_206 br_0_206 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c206
*+ bl_0_206 br_0_206 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c206
*+ bl_0_206 br_0_206 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c206
*+ bl_0_206 br_0_206 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c206
*+ bl_0_206 br_0_206 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c206
*+ bl_0_206 br_0_206 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c206
*+ bl_0_206 br_0_206 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c206
*+ bl_0_206 br_0_206 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c206
*+ bl_0_206 br_0_206 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c206
+ bl_0_206 br_0_206 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c207
+ bl_0_207 br_0_207 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c207
*+ bl_0_207 br_0_207 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c207
*+ bl_0_207 br_0_207 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c207
*+ bl_0_207 br_0_207 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c207
*+ bl_0_207 br_0_207 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c207
*+ bl_0_207 br_0_207 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c207
*+ bl_0_207 br_0_207 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c207
*+ bl_0_207 br_0_207 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c207
*+ bl_0_207 br_0_207 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c207
*+ bl_0_207 br_0_207 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c207
*+ bl_0_207 br_0_207 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c207
*+ bl_0_207 br_0_207 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c207
*+ bl_0_207 br_0_207 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c207
*+ bl_0_207 br_0_207 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c207
*+ bl_0_207 br_0_207 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c207
+ bl_0_207 br_0_207 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c208
+ bl_0_208 br_0_208 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c208
*+ bl_0_208 br_0_208 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c208
*+ bl_0_208 br_0_208 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c208
*+ bl_0_208 br_0_208 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c208
*+ bl_0_208 br_0_208 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c208
*+ bl_0_208 br_0_208 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c208
*+ bl_0_208 br_0_208 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c208
*+ bl_0_208 br_0_208 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c208
*+ bl_0_208 br_0_208 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c208
*+ bl_0_208 br_0_208 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c208
*+ bl_0_208 br_0_208 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c208
*+ bl_0_208 br_0_208 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c208
*+ bl_0_208 br_0_208 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c208
*+ bl_0_208 br_0_208 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c208
*+ bl_0_208 br_0_208 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c208
+ bl_0_208 br_0_208 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c209
+ bl_0_209 br_0_209 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c209
*+ bl_0_209 br_0_209 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c209
*+ bl_0_209 br_0_209 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c209
*+ bl_0_209 br_0_209 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c209
*+ bl_0_209 br_0_209 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c209
*+ bl_0_209 br_0_209 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c209
*+ bl_0_209 br_0_209 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c209
*+ bl_0_209 br_0_209 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c209
*+ bl_0_209 br_0_209 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c209
*+ bl_0_209 br_0_209 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c209
*+ bl_0_209 br_0_209 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c209
*+ bl_0_209 br_0_209 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c209
*+ bl_0_209 br_0_209 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c209
*+ bl_0_209 br_0_209 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c209
*+ bl_0_209 br_0_209 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c209
+ bl_0_209 br_0_209 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c210
+ bl_0_210 br_0_210 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c210
*+ bl_0_210 br_0_210 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c210
*+ bl_0_210 br_0_210 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c210
*+ bl_0_210 br_0_210 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c210
*+ bl_0_210 br_0_210 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c210
*+ bl_0_210 br_0_210 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c210
*+ bl_0_210 br_0_210 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c210
*+ bl_0_210 br_0_210 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c210
*+ bl_0_210 br_0_210 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c210
*+ bl_0_210 br_0_210 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c210
*+ bl_0_210 br_0_210 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c210
*+ bl_0_210 br_0_210 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c210
*+ bl_0_210 br_0_210 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c210
*+ bl_0_210 br_0_210 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c210
*+ bl_0_210 br_0_210 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c210
+ bl_0_210 br_0_210 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c211
+ bl_0_211 br_0_211 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c211
*+ bl_0_211 br_0_211 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c211
*+ bl_0_211 br_0_211 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c211
*+ bl_0_211 br_0_211 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c211
*+ bl_0_211 br_0_211 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c211
*+ bl_0_211 br_0_211 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c211
*+ bl_0_211 br_0_211 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c211
*+ bl_0_211 br_0_211 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c211
*+ bl_0_211 br_0_211 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c211
*+ bl_0_211 br_0_211 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c211
*+ bl_0_211 br_0_211 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c211
*+ bl_0_211 br_0_211 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c211
*+ bl_0_211 br_0_211 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c211
*+ bl_0_211 br_0_211 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c211
*+ bl_0_211 br_0_211 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c211
+ bl_0_211 br_0_211 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c212
+ bl_0_212 br_0_212 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c212
*+ bl_0_212 br_0_212 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c212
*+ bl_0_212 br_0_212 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c212
*+ bl_0_212 br_0_212 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c212
*+ bl_0_212 br_0_212 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c212
*+ bl_0_212 br_0_212 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c212
*+ bl_0_212 br_0_212 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c212
*+ bl_0_212 br_0_212 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c212
*+ bl_0_212 br_0_212 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c212
*+ bl_0_212 br_0_212 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c212
*+ bl_0_212 br_0_212 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c212
*+ bl_0_212 br_0_212 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c212
*+ bl_0_212 br_0_212 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c212
*+ bl_0_212 br_0_212 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c212
*+ bl_0_212 br_0_212 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c212
+ bl_0_212 br_0_212 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c213
+ bl_0_213 br_0_213 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c213
*+ bl_0_213 br_0_213 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c213
*+ bl_0_213 br_0_213 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c213
*+ bl_0_213 br_0_213 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c213
*+ bl_0_213 br_0_213 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c213
*+ bl_0_213 br_0_213 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c213
*+ bl_0_213 br_0_213 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c213
*+ bl_0_213 br_0_213 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c213
*+ bl_0_213 br_0_213 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c213
*+ bl_0_213 br_0_213 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c213
*+ bl_0_213 br_0_213 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c213
*+ bl_0_213 br_0_213 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c213
*+ bl_0_213 br_0_213 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c213
*+ bl_0_213 br_0_213 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c213
*+ bl_0_213 br_0_213 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c213
+ bl_0_213 br_0_213 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c214
+ bl_0_214 br_0_214 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c214
*+ bl_0_214 br_0_214 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c214
*+ bl_0_214 br_0_214 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c214
*+ bl_0_214 br_0_214 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c214
*+ bl_0_214 br_0_214 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c214
*+ bl_0_214 br_0_214 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c214
*+ bl_0_214 br_0_214 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c214
*+ bl_0_214 br_0_214 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c214
*+ bl_0_214 br_0_214 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c214
*+ bl_0_214 br_0_214 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c214
*+ bl_0_214 br_0_214 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c214
*+ bl_0_214 br_0_214 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c214
*+ bl_0_214 br_0_214 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c214
*+ bl_0_214 br_0_214 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c214
*+ bl_0_214 br_0_214 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c214
+ bl_0_214 br_0_214 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c215
+ bl_0_215 br_0_215 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c215
*+ bl_0_215 br_0_215 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c215
*+ bl_0_215 br_0_215 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c215
*+ bl_0_215 br_0_215 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c215
*+ bl_0_215 br_0_215 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c215
*+ bl_0_215 br_0_215 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c215
*+ bl_0_215 br_0_215 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c215
*+ bl_0_215 br_0_215 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c215
*+ bl_0_215 br_0_215 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c215
*+ bl_0_215 br_0_215 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c215
*+ bl_0_215 br_0_215 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c215
*+ bl_0_215 br_0_215 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c215
*+ bl_0_215 br_0_215 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c215
*+ bl_0_215 br_0_215 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c215
*+ bl_0_215 br_0_215 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c215
+ bl_0_215 br_0_215 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c216
+ bl_0_216 br_0_216 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c216
*+ bl_0_216 br_0_216 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c216
*+ bl_0_216 br_0_216 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c216
*+ bl_0_216 br_0_216 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c216
*+ bl_0_216 br_0_216 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c216
*+ bl_0_216 br_0_216 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c216
*+ bl_0_216 br_0_216 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c216
*+ bl_0_216 br_0_216 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c216
*+ bl_0_216 br_0_216 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c216
*+ bl_0_216 br_0_216 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c216
*+ bl_0_216 br_0_216 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c216
*+ bl_0_216 br_0_216 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c216
*+ bl_0_216 br_0_216 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c216
*+ bl_0_216 br_0_216 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c216
*+ bl_0_216 br_0_216 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c216
+ bl_0_216 br_0_216 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c217
+ bl_0_217 br_0_217 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c217
*+ bl_0_217 br_0_217 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c217
*+ bl_0_217 br_0_217 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c217
*+ bl_0_217 br_0_217 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c217
*+ bl_0_217 br_0_217 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c217
*+ bl_0_217 br_0_217 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c217
*+ bl_0_217 br_0_217 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c217
*+ bl_0_217 br_0_217 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c217
*+ bl_0_217 br_0_217 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c217
*+ bl_0_217 br_0_217 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c217
*+ bl_0_217 br_0_217 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c217
*+ bl_0_217 br_0_217 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c217
*+ bl_0_217 br_0_217 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c217
*+ bl_0_217 br_0_217 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c217
*+ bl_0_217 br_0_217 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c217
+ bl_0_217 br_0_217 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c218
+ bl_0_218 br_0_218 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c218
*+ bl_0_218 br_0_218 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c218
*+ bl_0_218 br_0_218 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c218
*+ bl_0_218 br_0_218 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c218
*+ bl_0_218 br_0_218 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c218
*+ bl_0_218 br_0_218 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c218
*+ bl_0_218 br_0_218 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c218
*+ bl_0_218 br_0_218 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c218
*+ bl_0_218 br_0_218 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c218
*+ bl_0_218 br_0_218 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c218
*+ bl_0_218 br_0_218 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c218
*+ bl_0_218 br_0_218 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c218
*+ bl_0_218 br_0_218 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c218
*+ bl_0_218 br_0_218 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c218
*+ bl_0_218 br_0_218 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c218
+ bl_0_218 br_0_218 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c219
+ bl_0_219 br_0_219 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c219
*+ bl_0_219 br_0_219 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c219
*+ bl_0_219 br_0_219 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c219
*+ bl_0_219 br_0_219 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c219
*+ bl_0_219 br_0_219 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c219
*+ bl_0_219 br_0_219 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c219
*+ bl_0_219 br_0_219 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c219
*+ bl_0_219 br_0_219 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c219
*+ bl_0_219 br_0_219 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c219
*+ bl_0_219 br_0_219 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c219
*+ bl_0_219 br_0_219 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c219
*+ bl_0_219 br_0_219 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c219
*+ bl_0_219 br_0_219 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c219
*+ bl_0_219 br_0_219 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c219
*+ bl_0_219 br_0_219 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c219
+ bl_0_219 br_0_219 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c220
+ bl_0_220 br_0_220 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c220
*+ bl_0_220 br_0_220 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c220
*+ bl_0_220 br_0_220 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c220
*+ bl_0_220 br_0_220 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c220
*+ bl_0_220 br_0_220 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c220
*+ bl_0_220 br_0_220 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c220
*+ bl_0_220 br_0_220 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c220
*+ bl_0_220 br_0_220 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c220
*+ bl_0_220 br_0_220 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c220
*+ bl_0_220 br_0_220 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c220
*+ bl_0_220 br_0_220 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c220
*+ bl_0_220 br_0_220 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c220
*+ bl_0_220 br_0_220 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c220
*+ bl_0_220 br_0_220 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c220
*+ bl_0_220 br_0_220 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c220
+ bl_0_220 br_0_220 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c221
+ bl_0_221 br_0_221 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c221
*+ bl_0_221 br_0_221 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c221
*+ bl_0_221 br_0_221 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c221
*+ bl_0_221 br_0_221 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c221
*+ bl_0_221 br_0_221 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c221
*+ bl_0_221 br_0_221 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c221
*+ bl_0_221 br_0_221 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c221
*+ bl_0_221 br_0_221 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c221
*+ bl_0_221 br_0_221 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c221
*+ bl_0_221 br_0_221 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c221
*+ bl_0_221 br_0_221 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c221
*+ bl_0_221 br_0_221 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c221
*+ bl_0_221 br_0_221 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c221
*+ bl_0_221 br_0_221 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c221
*+ bl_0_221 br_0_221 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c221
+ bl_0_221 br_0_221 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c222
+ bl_0_222 br_0_222 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c222
*+ bl_0_222 br_0_222 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c222
*+ bl_0_222 br_0_222 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c222
*+ bl_0_222 br_0_222 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c222
*+ bl_0_222 br_0_222 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c222
*+ bl_0_222 br_0_222 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c222
*+ bl_0_222 br_0_222 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c222
*+ bl_0_222 br_0_222 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c222
*+ bl_0_222 br_0_222 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c222
*+ bl_0_222 br_0_222 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c222
*+ bl_0_222 br_0_222 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c222
*+ bl_0_222 br_0_222 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c222
*+ bl_0_222 br_0_222 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c222
*+ bl_0_222 br_0_222 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c222
*+ bl_0_222 br_0_222 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c222
+ bl_0_222 br_0_222 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c223
+ bl_0_223 br_0_223 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c223
*+ bl_0_223 br_0_223 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c223
*+ bl_0_223 br_0_223 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c223
*+ bl_0_223 br_0_223 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c223
*+ bl_0_223 br_0_223 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c223
*+ bl_0_223 br_0_223 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c223
*+ bl_0_223 br_0_223 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c223
*+ bl_0_223 br_0_223 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c223
*+ bl_0_223 br_0_223 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c223
*+ bl_0_223 br_0_223 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c223
*+ bl_0_223 br_0_223 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c223
*+ bl_0_223 br_0_223 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c223
*+ bl_0_223 br_0_223 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c223
*+ bl_0_223 br_0_223 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c223
*+ bl_0_223 br_0_223 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c223
+ bl_0_223 br_0_223 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c224
+ bl_0_224 br_0_224 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c224
*+ bl_0_224 br_0_224 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c224
*+ bl_0_224 br_0_224 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c224
*+ bl_0_224 br_0_224 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c224
*+ bl_0_224 br_0_224 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c224
*+ bl_0_224 br_0_224 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c224
*+ bl_0_224 br_0_224 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c224
*+ bl_0_224 br_0_224 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c224
*+ bl_0_224 br_0_224 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c224
*+ bl_0_224 br_0_224 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c224
*+ bl_0_224 br_0_224 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c224
*+ bl_0_224 br_0_224 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c224
*+ bl_0_224 br_0_224 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c224
*+ bl_0_224 br_0_224 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c224
*+ bl_0_224 br_0_224 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c224
+ bl_0_224 br_0_224 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c225
+ bl_0_225 br_0_225 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c225
*+ bl_0_225 br_0_225 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c225
*+ bl_0_225 br_0_225 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c225
*+ bl_0_225 br_0_225 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c225
*+ bl_0_225 br_0_225 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c225
*+ bl_0_225 br_0_225 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c225
*+ bl_0_225 br_0_225 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c225
*+ bl_0_225 br_0_225 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c225
*+ bl_0_225 br_0_225 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c225
*+ bl_0_225 br_0_225 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c225
*+ bl_0_225 br_0_225 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c225
*+ bl_0_225 br_0_225 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c225
*+ bl_0_225 br_0_225 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c225
*+ bl_0_225 br_0_225 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c225
*+ bl_0_225 br_0_225 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c225
+ bl_0_225 br_0_225 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c226
+ bl_0_226 br_0_226 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c226
*+ bl_0_226 br_0_226 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c226
*+ bl_0_226 br_0_226 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c226
*+ bl_0_226 br_0_226 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c226
*+ bl_0_226 br_0_226 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c226
*+ bl_0_226 br_0_226 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c226
*+ bl_0_226 br_0_226 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c226
*+ bl_0_226 br_0_226 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c226
*+ bl_0_226 br_0_226 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c226
*+ bl_0_226 br_0_226 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c226
*+ bl_0_226 br_0_226 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c226
*+ bl_0_226 br_0_226 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c226
*+ bl_0_226 br_0_226 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c226
*+ bl_0_226 br_0_226 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c226
*+ bl_0_226 br_0_226 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c226
+ bl_0_226 br_0_226 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c227
+ bl_0_227 br_0_227 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c227
*+ bl_0_227 br_0_227 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c227
*+ bl_0_227 br_0_227 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c227
*+ bl_0_227 br_0_227 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c227
*+ bl_0_227 br_0_227 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c227
*+ bl_0_227 br_0_227 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c227
*+ bl_0_227 br_0_227 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c227
*+ bl_0_227 br_0_227 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c227
*+ bl_0_227 br_0_227 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c227
*+ bl_0_227 br_0_227 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c227
*+ bl_0_227 br_0_227 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c227
*+ bl_0_227 br_0_227 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c227
*+ bl_0_227 br_0_227 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c227
*+ bl_0_227 br_0_227 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c227
*+ bl_0_227 br_0_227 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c227
+ bl_0_227 br_0_227 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c228
+ bl_0_228 br_0_228 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c228
*+ bl_0_228 br_0_228 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c228
*+ bl_0_228 br_0_228 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c228
*+ bl_0_228 br_0_228 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c228
*+ bl_0_228 br_0_228 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c228
*+ bl_0_228 br_0_228 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c228
*+ bl_0_228 br_0_228 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c228
*+ bl_0_228 br_0_228 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c228
*+ bl_0_228 br_0_228 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c228
*+ bl_0_228 br_0_228 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c228
*+ bl_0_228 br_0_228 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c228
*+ bl_0_228 br_0_228 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c228
*+ bl_0_228 br_0_228 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c228
*+ bl_0_228 br_0_228 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c228
*+ bl_0_228 br_0_228 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c228
+ bl_0_228 br_0_228 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c229
+ bl_0_229 br_0_229 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c229
*+ bl_0_229 br_0_229 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c229
*+ bl_0_229 br_0_229 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c229
*+ bl_0_229 br_0_229 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c229
*+ bl_0_229 br_0_229 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c229
*+ bl_0_229 br_0_229 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c229
*+ bl_0_229 br_0_229 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c229
*+ bl_0_229 br_0_229 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c229
*+ bl_0_229 br_0_229 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c229
*+ bl_0_229 br_0_229 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c229
*+ bl_0_229 br_0_229 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c229
*+ bl_0_229 br_0_229 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c229
*+ bl_0_229 br_0_229 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c229
*+ bl_0_229 br_0_229 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c229
*+ bl_0_229 br_0_229 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c229
+ bl_0_229 br_0_229 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c230
+ bl_0_230 br_0_230 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c230
*+ bl_0_230 br_0_230 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c230
*+ bl_0_230 br_0_230 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c230
*+ bl_0_230 br_0_230 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c230
*+ bl_0_230 br_0_230 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c230
*+ bl_0_230 br_0_230 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c230
*+ bl_0_230 br_0_230 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c230
*+ bl_0_230 br_0_230 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c230
*+ bl_0_230 br_0_230 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c230
*+ bl_0_230 br_0_230 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c230
*+ bl_0_230 br_0_230 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c230
*+ bl_0_230 br_0_230 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c230
*+ bl_0_230 br_0_230 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c230
*+ bl_0_230 br_0_230 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c230
*+ bl_0_230 br_0_230 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c230
+ bl_0_230 br_0_230 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c231
+ bl_0_231 br_0_231 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c231
*+ bl_0_231 br_0_231 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c231
*+ bl_0_231 br_0_231 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c231
*+ bl_0_231 br_0_231 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c231
*+ bl_0_231 br_0_231 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c231
*+ bl_0_231 br_0_231 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c231
*+ bl_0_231 br_0_231 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c231
*+ bl_0_231 br_0_231 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c231
*+ bl_0_231 br_0_231 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c231
*+ bl_0_231 br_0_231 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c231
*+ bl_0_231 br_0_231 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c231
*+ bl_0_231 br_0_231 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c231
*+ bl_0_231 br_0_231 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c231
*+ bl_0_231 br_0_231 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c231
*+ bl_0_231 br_0_231 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c231
+ bl_0_231 br_0_231 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c232
+ bl_0_232 br_0_232 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c232
*+ bl_0_232 br_0_232 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c232
*+ bl_0_232 br_0_232 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c232
*+ bl_0_232 br_0_232 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c232
*+ bl_0_232 br_0_232 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c232
*+ bl_0_232 br_0_232 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c232
*+ bl_0_232 br_0_232 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c232
*+ bl_0_232 br_0_232 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c232
*+ bl_0_232 br_0_232 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c232
*+ bl_0_232 br_0_232 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c232
*+ bl_0_232 br_0_232 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c232
*+ bl_0_232 br_0_232 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c232
*+ bl_0_232 br_0_232 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c232
*+ bl_0_232 br_0_232 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c232
*+ bl_0_232 br_0_232 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c232
+ bl_0_232 br_0_232 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c233
+ bl_0_233 br_0_233 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c233
*+ bl_0_233 br_0_233 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c233
*+ bl_0_233 br_0_233 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c233
*+ bl_0_233 br_0_233 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c233
*+ bl_0_233 br_0_233 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c233
*+ bl_0_233 br_0_233 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c233
*+ bl_0_233 br_0_233 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c233
*+ bl_0_233 br_0_233 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c233
*+ bl_0_233 br_0_233 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c233
*+ bl_0_233 br_0_233 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c233
*+ bl_0_233 br_0_233 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c233
*+ bl_0_233 br_0_233 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c233
*+ bl_0_233 br_0_233 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c233
*+ bl_0_233 br_0_233 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c233
*+ bl_0_233 br_0_233 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c233
+ bl_0_233 br_0_233 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c234
+ bl_0_234 br_0_234 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c234
*+ bl_0_234 br_0_234 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c234
*+ bl_0_234 br_0_234 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c234
*+ bl_0_234 br_0_234 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c234
*+ bl_0_234 br_0_234 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c234
*+ bl_0_234 br_0_234 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c234
*+ bl_0_234 br_0_234 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c234
*+ bl_0_234 br_0_234 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c234
*+ bl_0_234 br_0_234 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c234
*+ bl_0_234 br_0_234 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c234
*+ bl_0_234 br_0_234 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c234
*+ bl_0_234 br_0_234 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c234
*+ bl_0_234 br_0_234 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c234
*+ bl_0_234 br_0_234 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c234
*+ bl_0_234 br_0_234 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c234
+ bl_0_234 br_0_234 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c235
+ bl_0_235 br_0_235 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c235
*+ bl_0_235 br_0_235 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c235
*+ bl_0_235 br_0_235 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c235
*+ bl_0_235 br_0_235 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c235
*+ bl_0_235 br_0_235 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c235
*+ bl_0_235 br_0_235 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c235
*+ bl_0_235 br_0_235 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c235
*+ bl_0_235 br_0_235 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c235
*+ bl_0_235 br_0_235 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c235
*+ bl_0_235 br_0_235 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c235
*+ bl_0_235 br_0_235 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c235
*+ bl_0_235 br_0_235 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c235
*+ bl_0_235 br_0_235 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c235
*+ bl_0_235 br_0_235 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c235
*+ bl_0_235 br_0_235 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c235
+ bl_0_235 br_0_235 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c236
+ bl_0_236 br_0_236 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c236
*+ bl_0_236 br_0_236 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c236
*+ bl_0_236 br_0_236 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c236
*+ bl_0_236 br_0_236 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c236
*+ bl_0_236 br_0_236 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c236
*+ bl_0_236 br_0_236 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c236
*+ bl_0_236 br_0_236 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c236
*+ bl_0_236 br_0_236 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c236
*+ bl_0_236 br_0_236 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c236
*+ bl_0_236 br_0_236 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c236
*+ bl_0_236 br_0_236 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c236
*+ bl_0_236 br_0_236 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c236
*+ bl_0_236 br_0_236 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c236
*+ bl_0_236 br_0_236 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c236
*+ bl_0_236 br_0_236 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c236
+ bl_0_236 br_0_236 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c237
+ bl_0_237 br_0_237 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c237
*+ bl_0_237 br_0_237 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c237
*+ bl_0_237 br_0_237 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c237
*+ bl_0_237 br_0_237 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c237
*+ bl_0_237 br_0_237 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c237
*+ bl_0_237 br_0_237 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c237
*+ bl_0_237 br_0_237 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c237
*+ bl_0_237 br_0_237 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c237
*+ bl_0_237 br_0_237 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c237
*+ bl_0_237 br_0_237 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c237
*+ bl_0_237 br_0_237 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c237
*+ bl_0_237 br_0_237 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c237
*+ bl_0_237 br_0_237 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c237
*+ bl_0_237 br_0_237 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c237
*+ bl_0_237 br_0_237 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c237
+ bl_0_237 br_0_237 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c238
+ bl_0_238 br_0_238 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c238
*+ bl_0_238 br_0_238 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c238
*+ bl_0_238 br_0_238 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c238
*+ bl_0_238 br_0_238 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c238
*+ bl_0_238 br_0_238 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c238
*+ bl_0_238 br_0_238 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c238
*+ bl_0_238 br_0_238 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c238
*+ bl_0_238 br_0_238 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c238
*+ bl_0_238 br_0_238 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c238
*+ bl_0_238 br_0_238 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c238
*+ bl_0_238 br_0_238 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c238
*+ bl_0_238 br_0_238 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c238
*+ bl_0_238 br_0_238 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c238
*+ bl_0_238 br_0_238 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c238
*+ bl_0_238 br_0_238 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c238
+ bl_0_238 br_0_238 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c239
+ bl_0_239 br_0_239 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c239
*+ bl_0_239 br_0_239 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c239
*+ bl_0_239 br_0_239 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c239
*+ bl_0_239 br_0_239 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c239
*+ bl_0_239 br_0_239 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c239
*+ bl_0_239 br_0_239 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c239
*+ bl_0_239 br_0_239 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c239
*+ bl_0_239 br_0_239 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c239
*+ bl_0_239 br_0_239 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c239
*+ bl_0_239 br_0_239 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c239
*+ bl_0_239 br_0_239 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c239
*+ bl_0_239 br_0_239 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c239
*+ bl_0_239 br_0_239 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c239
*+ bl_0_239 br_0_239 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c239
*+ bl_0_239 br_0_239 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c239
+ bl_0_239 br_0_239 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c240
+ bl_0_240 br_0_240 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c240
*+ bl_0_240 br_0_240 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c240
*+ bl_0_240 br_0_240 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c240
*+ bl_0_240 br_0_240 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c240
*+ bl_0_240 br_0_240 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c240
*+ bl_0_240 br_0_240 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c240
*+ bl_0_240 br_0_240 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c240
*+ bl_0_240 br_0_240 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c240
*+ bl_0_240 br_0_240 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c240
*+ bl_0_240 br_0_240 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c240
*+ bl_0_240 br_0_240 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c240
*+ bl_0_240 br_0_240 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c240
*+ bl_0_240 br_0_240 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c240
*+ bl_0_240 br_0_240 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c240
*+ bl_0_240 br_0_240 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c240
+ bl_0_240 br_0_240 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c241
+ bl_0_241 br_0_241 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c241
*+ bl_0_241 br_0_241 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c241
*+ bl_0_241 br_0_241 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c241
*+ bl_0_241 br_0_241 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c241
*+ bl_0_241 br_0_241 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c241
*+ bl_0_241 br_0_241 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c241
*+ bl_0_241 br_0_241 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c241
*+ bl_0_241 br_0_241 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c241
*+ bl_0_241 br_0_241 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c241
*+ bl_0_241 br_0_241 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c241
*+ bl_0_241 br_0_241 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c241
*+ bl_0_241 br_0_241 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c241
*+ bl_0_241 br_0_241 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c241
*+ bl_0_241 br_0_241 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c241
*+ bl_0_241 br_0_241 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c241
+ bl_0_241 br_0_241 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c242
+ bl_0_242 br_0_242 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c242
*+ bl_0_242 br_0_242 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c242
*+ bl_0_242 br_0_242 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c242
*+ bl_0_242 br_0_242 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c242
*+ bl_0_242 br_0_242 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c242
*+ bl_0_242 br_0_242 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c242
*+ bl_0_242 br_0_242 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c242
*+ bl_0_242 br_0_242 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c242
*+ bl_0_242 br_0_242 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c242
*+ bl_0_242 br_0_242 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c242
*+ bl_0_242 br_0_242 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c242
*+ bl_0_242 br_0_242 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c242
*+ bl_0_242 br_0_242 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c242
*+ bl_0_242 br_0_242 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c242
*+ bl_0_242 br_0_242 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c242
+ bl_0_242 br_0_242 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c243
+ bl_0_243 br_0_243 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c243
*+ bl_0_243 br_0_243 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c243
*+ bl_0_243 br_0_243 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c243
*+ bl_0_243 br_0_243 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c243
*+ bl_0_243 br_0_243 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c243
*+ bl_0_243 br_0_243 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c243
*+ bl_0_243 br_0_243 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c243
*+ bl_0_243 br_0_243 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c243
*+ bl_0_243 br_0_243 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c243
*+ bl_0_243 br_0_243 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c243
*+ bl_0_243 br_0_243 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c243
*+ bl_0_243 br_0_243 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c243
*+ bl_0_243 br_0_243 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c243
*+ bl_0_243 br_0_243 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c243
*+ bl_0_243 br_0_243 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c243
+ bl_0_243 br_0_243 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c244
+ bl_0_244 br_0_244 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c244
*+ bl_0_244 br_0_244 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c244
*+ bl_0_244 br_0_244 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c244
*+ bl_0_244 br_0_244 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c244
*+ bl_0_244 br_0_244 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c244
*+ bl_0_244 br_0_244 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c244
*+ bl_0_244 br_0_244 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c244
*+ bl_0_244 br_0_244 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c244
*+ bl_0_244 br_0_244 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c244
*+ bl_0_244 br_0_244 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c244
*+ bl_0_244 br_0_244 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c244
*+ bl_0_244 br_0_244 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c244
*+ bl_0_244 br_0_244 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c244
*+ bl_0_244 br_0_244 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c244
*+ bl_0_244 br_0_244 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c244
+ bl_0_244 br_0_244 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c245
+ bl_0_245 br_0_245 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c245
*+ bl_0_245 br_0_245 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c245
*+ bl_0_245 br_0_245 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c245
*+ bl_0_245 br_0_245 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c245
*+ bl_0_245 br_0_245 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c245
*+ bl_0_245 br_0_245 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c245
*+ bl_0_245 br_0_245 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c245
*+ bl_0_245 br_0_245 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c245
*+ bl_0_245 br_0_245 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c245
*+ bl_0_245 br_0_245 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c245
*+ bl_0_245 br_0_245 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c245
*+ bl_0_245 br_0_245 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c245
*+ bl_0_245 br_0_245 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c245
*+ bl_0_245 br_0_245 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c245
*+ bl_0_245 br_0_245 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c245
+ bl_0_245 br_0_245 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c246
+ bl_0_246 br_0_246 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c246
*+ bl_0_246 br_0_246 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c246
*+ bl_0_246 br_0_246 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c246
*+ bl_0_246 br_0_246 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c246
*+ bl_0_246 br_0_246 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c246
*+ bl_0_246 br_0_246 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c246
*+ bl_0_246 br_0_246 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c246
*+ bl_0_246 br_0_246 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c246
*+ bl_0_246 br_0_246 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c246
*+ bl_0_246 br_0_246 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c246
*+ bl_0_246 br_0_246 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c246
*+ bl_0_246 br_0_246 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c246
*+ bl_0_246 br_0_246 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c246
*+ bl_0_246 br_0_246 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c246
*+ bl_0_246 br_0_246 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c246
+ bl_0_246 br_0_246 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c247
+ bl_0_247 br_0_247 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c247
*+ bl_0_247 br_0_247 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c247
*+ bl_0_247 br_0_247 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c247
*+ bl_0_247 br_0_247 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c247
*+ bl_0_247 br_0_247 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c247
*+ bl_0_247 br_0_247 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c247
*+ bl_0_247 br_0_247 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c247
*+ bl_0_247 br_0_247 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c247
*+ bl_0_247 br_0_247 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c247
*+ bl_0_247 br_0_247 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c247
*+ bl_0_247 br_0_247 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c247
*+ bl_0_247 br_0_247 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c247
*+ bl_0_247 br_0_247 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c247
*+ bl_0_247 br_0_247 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c247
*+ bl_0_247 br_0_247 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c247
+ bl_0_247 br_0_247 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c248
+ bl_0_248 br_0_248 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c248
*+ bl_0_248 br_0_248 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c248
*+ bl_0_248 br_0_248 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c248
*+ bl_0_248 br_0_248 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c248
*+ bl_0_248 br_0_248 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c248
*+ bl_0_248 br_0_248 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c248
*+ bl_0_248 br_0_248 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c248
*+ bl_0_248 br_0_248 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c248
*+ bl_0_248 br_0_248 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c248
*+ bl_0_248 br_0_248 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c248
*+ bl_0_248 br_0_248 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c248
*+ bl_0_248 br_0_248 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c248
*+ bl_0_248 br_0_248 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c248
*+ bl_0_248 br_0_248 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c248
*+ bl_0_248 br_0_248 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c248
+ bl_0_248 br_0_248 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c249
+ bl_0_249 br_0_249 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c249
*+ bl_0_249 br_0_249 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c249
*+ bl_0_249 br_0_249 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c249
*+ bl_0_249 br_0_249 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c249
*+ bl_0_249 br_0_249 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c249
*+ bl_0_249 br_0_249 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c249
*+ bl_0_249 br_0_249 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c249
*+ bl_0_249 br_0_249 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c249
*+ bl_0_249 br_0_249 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c249
*+ bl_0_249 br_0_249 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c249
*+ bl_0_249 br_0_249 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c249
*+ bl_0_249 br_0_249 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c249
*+ bl_0_249 br_0_249 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c249
*+ bl_0_249 br_0_249 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c249
*+ bl_0_249 br_0_249 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c249
+ bl_0_249 br_0_249 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c250
+ bl_0_250 br_0_250 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c250
*+ bl_0_250 br_0_250 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c250
*+ bl_0_250 br_0_250 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c250
*+ bl_0_250 br_0_250 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c250
*+ bl_0_250 br_0_250 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c250
*+ bl_0_250 br_0_250 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c250
*+ bl_0_250 br_0_250 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c250
*+ bl_0_250 br_0_250 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c250
*+ bl_0_250 br_0_250 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c250
*+ bl_0_250 br_0_250 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c250
*+ bl_0_250 br_0_250 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c250
*+ bl_0_250 br_0_250 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c250
*+ bl_0_250 br_0_250 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c250
*+ bl_0_250 br_0_250 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c250
*+ bl_0_250 br_0_250 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c250
+ bl_0_250 br_0_250 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c251
+ bl_0_251 br_0_251 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c251
*+ bl_0_251 br_0_251 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c251
*+ bl_0_251 br_0_251 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c251
*+ bl_0_251 br_0_251 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c251
*+ bl_0_251 br_0_251 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c251
*+ bl_0_251 br_0_251 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c251
*+ bl_0_251 br_0_251 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c251
*+ bl_0_251 br_0_251 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c251
*+ bl_0_251 br_0_251 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c251
*+ bl_0_251 br_0_251 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c251
*+ bl_0_251 br_0_251 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c251
*+ bl_0_251 br_0_251 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c251
*+ bl_0_251 br_0_251 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c251
*+ bl_0_251 br_0_251 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c251
*+ bl_0_251 br_0_251 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c251
+ bl_0_251 br_0_251 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c252
+ bl_0_252 br_0_252 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c252
*+ bl_0_252 br_0_252 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c252
*+ bl_0_252 br_0_252 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c252
*+ bl_0_252 br_0_252 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c252
*+ bl_0_252 br_0_252 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c252
*+ bl_0_252 br_0_252 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c252
*+ bl_0_252 br_0_252 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c252
*+ bl_0_252 br_0_252 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c252
*+ bl_0_252 br_0_252 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c252
*+ bl_0_252 br_0_252 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c252
*+ bl_0_252 br_0_252 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c252
*+ bl_0_252 br_0_252 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c252
*+ bl_0_252 br_0_252 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c252
*+ bl_0_252 br_0_252 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c252
*+ bl_0_252 br_0_252 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c252
+ bl_0_252 br_0_252 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c253
+ bl_0_253 br_0_253 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c253
*+ bl_0_253 br_0_253 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c253
*+ bl_0_253 br_0_253 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c253
*+ bl_0_253 br_0_253 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c253
*+ bl_0_253 br_0_253 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c253
*+ bl_0_253 br_0_253 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c253
*+ bl_0_253 br_0_253 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c253
*+ bl_0_253 br_0_253 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c253
*+ bl_0_253 br_0_253 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c253
*+ bl_0_253 br_0_253 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c253
*+ bl_0_253 br_0_253 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c253
*+ bl_0_253 br_0_253 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c253
*+ bl_0_253 br_0_253 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c253
*+ bl_0_253 br_0_253 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c253
*+ bl_0_253 br_0_253 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c253
+ bl_0_253 br_0_253 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c254
+ bl_0_254 br_0_254 wl_0_0 vdd gnd
+ cell_1rw
* Xbit_r1_c254
*+ bl_0_254 br_0_254 wl_0_1 vdd gnd
*+ cell_1rw
* Xbit_r2_c254
*+ bl_0_254 br_0_254 wl_0_2 vdd gnd
*+ cell_1rw
* Xbit_r3_c254
*+ bl_0_254 br_0_254 wl_0_3 vdd gnd
*+ cell_1rw
* Xbit_r4_c254
*+ bl_0_254 br_0_254 wl_0_4 vdd gnd
*+ cell_1rw
* Xbit_r5_c254
*+ bl_0_254 br_0_254 wl_0_5 vdd gnd
*+ cell_1rw
* Xbit_r6_c254
*+ bl_0_254 br_0_254 wl_0_6 vdd gnd
*+ cell_1rw
* Xbit_r7_c254
*+ bl_0_254 br_0_254 wl_0_7 vdd gnd
*+ cell_1rw
* Xbit_r8_c254
*+ bl_0_254 br_0_254 wl_0_8 vdd gnd
*+ cell_1rw
* Xbit_r9_c254
*+ bl_0_254 br_0_254 wl_0_9 vdd gnd
*+ cell_1rw
* Xbit_r10_c254
*+ bl_0_254 br_0_254 wl_0_10 vdd gnd
*+ cell_1rw
* Xbit_r11_c254
*+ bl_0_254 br_0_254 wl_0_11 vdd gnd
*+ cell_1rw
* Xbit_r12_c254
*+ bl_0_254 br_0_254 wl_0_12 vdd gnd
*+ cell_1rw
* Xbit_r13_c254
*+ bl_0_254 br_0_254 wl_0_13 vdd gnd
*+ cell_1rw
* Xbit_r14_c254
*+ bl_0_254 br_0_254 wl_0_14 vdd gnd
*+ cell_1rw
Xbit_r15_c254
+ bl_0_254 br_0_254 wl_0_15 vdd gnd
+ cell_1rw
Xbit_r0_c255
+ bl_0_255 br_0_255 wl_0_0 vdd gnd
+ cell_1rw
Xbit_r1_c255
+ bl_0_255 br_0_255 wl_0_1 vdd gnd
+ cell_1rw
Xbit_r2_c255
+ bl_0_255 br_0_255 wl_0_2 vdd gnd
+ cell_1rw
Xbit_r3_c255
+ bl_0_255 br_0_255 wl_0_3 vdd gnd
+ cell_1rw
Xbit_r4_c255
+ bl_0_255 br_0_255 wl_0_4 vdd gnd
+ cell_1rw
Xbit_r5_c255
+ bl_0_255 br_0_255 wl_0_5 vdd gnd
+ cell_1rw
Xbit_r6_c255
+ bl_0_255 br_0_255 wl_0_6 vdd gnd
+ cell_1rw
Xbit_r7_c255
+ bl_0_255 br_0_255 wl_0_7 vdd gnd
+ cell_1rw
Xbit_r8_c255
+ bl_0_255 br_0_255 wl_0_8 vdd gnd
+ cell_1rw
Xbit_r9_c255
+ bl_0_255 br_0_255 wl_0_9 vdd gnd
+ cell_1rw
Xbit_r10_c255
+ bl_0_255 br_0_255 wl_0_10 vdd gnd
+ cell_1rw
Xbit_r11_c255
+ bl_0_255 br_0_255 wl_0_11 vdd gnd
+ cell_1rw
Xbit_r12_c255
+ bl_0_255 br_0_255 wl_0_12 vdd gnd
+ cell_1rw
Xbit_r13_c255
+ bl_0_255 br_0_255 wl_0_13 vdd gnd
+ cell_1rw
Xbit_r14_c255
+ bl_0_255 br_0_255 wl_0_14 vdd gnd
+ cell_1rw
Xbit_r15_c255
+ bl_0_255 br_0_255 wl_0_15 vdd gnd
+ cell_1rw
.ENDS mp3_data_array_bitcell_array

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


.SUBCKT mp3_data_array_replica_column
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
.ENDS mp3_data_array_replica_column

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


.SUBCKT mp3_data_array_dummy_array
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
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 bl_0_129 br_0_129
+ bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132 br_0_132 bl_0_133
+ br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135 bl_0_136 br_0_136
+ bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139 br_0_139 bl_0_140
+ br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142 bl_0_143 br_0_143
+ bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146 br_0_146 bl_0_147
+ br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149 bl_0_150 br_0_150
+ bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153 br_0_153 bl_0_154
+ br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156 bl_0_157 br_0_157
+ bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160 br_0_160 bl_0_161
+ br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163 bl_0_164 br_0_164
+ bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167 br_0_167 bl_0_168
+ br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170 bl_0_171 br_0_171
+ bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174 br_0_174 bl_0_175
+ br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177 bl_0_178 br_0_178
+ bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181 br_0_181 bl_0_182
+ br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184 bl_0_185 br_0_185
+ bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188 br_0_188 bl_0_189
+ br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191 bl_0_192 br_0_192
+ bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195 br_0_195 bl_0_196
+ br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198 bl_0_199 br_0_199
+ bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202 br_0_202 bl_0_203
+ br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205 bl_0_206 br_0_206
+ bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209 br_0_209 bl_0_210
+ br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212 bl_0_213 br_0_213
+ bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216 br_0_216 bl_0_217
+ br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219 bl_0_220 br_0_220
+ bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223 br_0_223 bl_0_224
+ br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226 bl_0_227 br_0_227
+ bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230 br_0_230 bl_0_231
+ br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233 bl_0_234 br_0_234
+ bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237 br_0_237 bl_0_238
+ br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240 bl_0_241 br_0_241
+ bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244 br_0_244 bl_0_245
+ br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247 bl_0_248 br_0_248
+ bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251 br_0_251 bl_0_252
+ br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254 bl_0_255 br_0_255 wl_0_0
+ vdd gnd
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
* INOUT : bl_0_129 
* INOUT : br_0_129 
* INOUT : bl_0_130 
* INOUT : br_0_130 
* INOUT : bl_0_131 
* INOUT : br_0_131 
* INOUT : bl_0_132 
* INOUT : br_0_132 
* INOUT : bl_0_133 
* INOUT : br_0_133 
* INOUT : bl_0_134 
* INOUT : br_0_134 
* INOUT : bl_0_135 
* INOUT : br_0_135 
* INOUT : bl_0_136 
* INOUT : br_0_136 
* INOUT : bl_0_137 
* INOUT : br_0_137 
* INOUT : bl_0_138 
* INOUT : br_0_138 
* INOUT : bl_0_139 
* INOUT : br_0_139 
* INOUT : bl_0_140 
* INOUT : br_0_140 
* INOUT : bl_0_141 
* INOUT : br_0_141 
* INOUT : bl_0_142 
* INOUT : br_0_142 
* INOUT : bl_0_143 
* INOUT : br_0_143 
* INOUT : bl_0_144 
* INOUT : br_0_144 
* INOUT : bl_0_145 
* INOUT : br_0_145 
* INOUT : bl_0_146 
* INOUT : br_0_146 
* INOUT : bl_0_147 
* INOUT : br_0_147 
* INOUT : bl_0_148 
* INOUT : br_0_148 
* INOUT : bl_0_149 
* INOUT : br_0_149 
* INOUT : bl_0_150 
* INOUT : br_0_150 
* INOUT : bl_0_151 
* INOUT : br_0_151 
* INOUT : bl_0_152 
* INOUT : br_0_152 
* INOUT : bl_0_153 
* INOUT : br_0_153 
* INOUT : bl_0_154 
* INOUT : br_0_154 
* INOUT : bl_0_155 
* INOUT : br_0_155 
* INOUT : bl_0_156 
* INOUT : br_0_156 
* INOUT : bl_0_157 
* INOUT : br_0_157 
* INOUT : bl_0_158 
* INOUT : br_0_158 
* INOUT : bl_0_159 
* INOUT : br_0_159 
* INOUT : bl_0_160 
* INOUT : br_0_160 
* INOUT : bl_0_161 
* INOUT : br_0_161 
* INOUT : bl_0_162 
* INOUT : br_0_162 
* INOUT : bl_0_163 
* INOUT : br_0_163 
* INOUT : bl_0_164 
* INOUT : br_0_164 
* INOUT : bl_0_165 
* INOUT : br_0_165 
* INOUT : bl_0_166 
* INOUT : br_0_166 
* INOUT : bl_0_167 
* INOUT : br_0_167 
* INOUT : bl_0_168 
* INOUT : br_0_168 
* INOUT : bl_0_169 
* INOUT : br_0_169 
* INOUT : bl_0_170 
* INOUT : br_0_170 
* INOUT : bl_0_171 
* INOUT : br_0_171 
* INOUT : bl_0_172 
* INOUT : br_0_172 
* INOUT : bl_0_173 
* INOUT : br_0_173 
* INOUT : bl_0_174 
* INOUT : br_0_174 
* INOUT : bl_0_175 
* INOUT : br_0_175 
* INOUT : bl_0_176 
* INOUT : br_0_176 
* INOUT : bl_0_177 
* INOUT : br_0_177 
* INOUT : bl_0_178 
* INOUT : br_0_178 
* INOUT : bl_0_179 
* INOUT : br_0_179 
* INOUT : bl_0_180 
* INOUT : br_0_180 
* INOUT : bl_0_181 
* INOUT : br_0_181 
* INOUT : bl_0_182 
* INOUT : br_0_182 
* INOUT : bl_0_183 
* INOUT : br_0_183 
* INOUT : bl_0_184 
* INOUT : br_0_184 
* INOUT : bl_0_185 
* INOUT : br_0_185 
* INOUT : bl_0_186 
* INOUT : br_0_186 
* INOUT : bl_0_187 
* INOUT : br_0_187 
* INOUT : bl_0_188 
* INOUT : br_0_188 
* INOUT : bl_0_189 
* INOUT : br_0_189 
* INOUT : bl_0_190 
* INOUT : br_0_190 
* INOUT : bl_0_191 
* INOUT : br_0_191 
* INOUT : bl_0_192 
* INOUT : br_0_192 
* INOUT : bl_0_193 
* INOUT : br_0_193 
* INOUT : bl_0_194 
* INOUT : br_0_194 
* INOUT : bl_0_195 
* INOUT : br_0_195 
* INOUT : bl_0_196 
* INOUT : br_0_196 
* INOUT : bl_0_197 
* INOUT : br_0_197 
* INOUT : bl_0_198 
* INOUT : br_0_198 
* INOUT : bl_0_199 
* INOUT : br_0_199 
* INOUT : bl_0_200 
* INOUT : br_0_200 
* INOUT : bl_0_201 
* INOUT : br_0_201 
* INOUT : bl_0_202 
* INOUT : br_0_202 
* INOUT : bl_0_203 
* INOUT : br_0_203 
* INOUT : bl_0_204 
* INOUT : br_0_204 
* INOUT : bl_0_205 
* INOUT : br_0_205 
* INOUT : bl_0_206 
* INOUT : br_0_206 
* INOUT : bl_0_207 
* INOUT : br_0_207 
* INOUT : bl_0_208 
* INOUT : br_0_208 
* INOUT : bl_0_209 
* INOUT : br_0_209 
* INOUT : bl_0_210 
* INOUT : br_0_210 
* INOUT : bl_0_211 
* INOUT : br_0_211 
* INOUT : bl_0_212 
* INOUT : br_0_212 
* INOUT : bl_0_213 
* INOUT : br_0_213 
* INOUT : bl_0_214 
* INOUT : br_0_214 
* INOUT : bl_0_215 
* INOUT : br_0_215 
* INOUT : bl_0_216 
* INOUT : br_0_216 
* INOUT : bl_0_217 
* INOUT : br_0_217 
* INOUT : bl_0_218 
* INOUT : br_0_218 
* INOUT : bl_0_219 
* INOUT : br_0_219 
* INOUT : bl_0_220 
* INOUT : br_0_220 
* INOUT : bl_0_221 
* INOUT : br_0_221 
* INOUT : bl_0_222 
* INOUT : br_0_222 
* INOUT : bl_0_223 
* INOUT : br_0_223 
* INOUT : bl_0_224 
* INOUT : br_0_224 
* INOUT : bl_0_225 
* INOUT : br_0_225 
* INOUT : bl_0_226 
* INOUT : br_0_226 
* INOUT : bl_0_227 
* INOUT : br_0_227 
* INOUT : bl_0_228 
* INOUT : br_0_228 
* INOUT : bl_0_229 
* INOUT : br_0_229 
* INOUT : bl_0_230 
* INOUT : br_0_230 
* INOUT : bl_0_231 
* INOUT : br_0_231 
* INOUT : bl_0_232 
* INOUT : br_0_232 
* INOUT : bl_0_233 
* INOUT : br_0_233 
* INOUT : bl_0_234 
* INOUT : br_0_234 
* INOUT : bl_0_235 
* INOUT : br_0_235 
* INOUT : bl_0_236 
* INOUT : br_0_236 
* INOUT : bl_0_237 
* INOUT : br_0_237 
* INOUT : bl_0_238 
* INOUT : br_0_238 
* INOUT : bl_0_239 
* INOUT : br_0_239 
* INOUT : bl_0_240 
* INOUT : br_0_240 
* INOUT : bl_0_241 
* INOUT : br_0_241 
* INOUT : bl_0_242 
* INOUT : br_0_242 
* INOUT : bl_0_243 
* INOUT : br_0_243 
* INOUT : bl_0_244 
* INOUT : br_0_244 
* INOUT : bl_0_245 
* INOUT : br_0_245 
* INOUT : bl_0_246 
* INOUT : br_0_246 
* INOUT : bl_0_247 
* INOUT : br_0_247 
* INOUT : bl_0_248 
* INOUT : br_0_248 
* INOUT : bl_0_249 
* INOUT : br_0_249 
* INOUT : bl_0_250 
* INOUT : br_0_250 
* INOUT : bl_0_251 
* INOUT : br_0_251 
* INOUT : bl_0_252 
* INOUT : br_0_252 
* INOUT : bl_0_253 
* INOUT : br_0_253 
* INOUT : bl_0_254 
* INOUT : br_0_254 
* INOUT : bl_0_255 
* INOUT : br_0_255 
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
Xbit_r0_c129
+ bl_0_129 br_0_129 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c130
+ bl_0_130 br_0_130 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c131
+ bl_0_131 br_0_131 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c132
+ bl_0_132 br_0_132 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c133
+ bl_0_133 br_0_133 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c134
+ bl_0_134 br_0_134 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c135
+ bl_0_135 br_0_135 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c136
+ bl_0_136 br_0_136 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c137
+ bl_0_137 br_0_137 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c138
+ bl_0_138 br_0_138 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c139
+ bl_0_139 br_0_139 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c140
+ bl_0_140 br_0_140 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c141
+ bl_0_141 br_0_141 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c142
+ bl_0_142 br_0_142 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c143
+ bl_0_143 br_0_143 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c144
+ bl_0_144 br_0_144 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c145
+ bl_0_145 br_0_145 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c146
+ bl_0_146 br_0_146 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c147
+ bl_0_147 br_0_147 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c148
+ bl_0_148 br_0_148 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c149
+ bl_0_149 br_0_149 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c150
+ bl_0_150 br_0_150 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c151
+ bl_0_151 br_0_151 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c152
+ bl_0_152 br_0_152 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c153
+ bl_0_153 br_0_153 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c154
+ bl_0_154 br_0_154 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c155
+ bl_0_155 br_0_155 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c156
+ bl_0_156 br_0_156 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c157
+ bl_0_157 br_0_157 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c158
+ bl_0_158 br_0_158 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c159
+ bl_0_159 br_0_159 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c160
+ bl_0_160 br_0_160 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c161
+ bl_0_161 br_0_161 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c162
+ bl_0_162 br_0_162 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c163
+ bl_0_163 br_0_163 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c164
+ bl_0_164 br_0_164 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c165
+ bl_0_165 br_0_165 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c166
+ bl_0_166 br_0_166 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c167
+ bl_0_167 br_0_167 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c168
+ bl_0_168 br_0_168 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c169
+ bl_0_169 br_0_169 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c170
+ bl_0_170 br_0_170 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c171
+ bl_0_171 br_0_171 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c172
+ bl_0_172 br_0_172 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c173
+ bl_0_173 br_0_173 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c174
+ bl_0_174 br_0_174 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c175
+ bl_0_175 br_0_175 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c176
+ bl_0_176 br_0_176 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c177
+ bl_0_177 br_0_177 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c178
+ bl_0_178 br_0_178 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c179
+ bl_0_179 br_0_179 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c180
+ bl_0_180 br_0_180 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c181
+ bl_0_181 br_0_181 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c182
+ bl_0_182 br_0_182 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c183
+ bl_0_183 br_0_183 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c184
+ bl_0_184 br_0_184 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c185
+ bl_0_185 br_0_185 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c186
+ bl_0_186 br_0_186 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c187
+ bl_0_187 br_0_187 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c188
+ bl_0_188 br_0_188 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c189
+ bl_0_189 br_0_189 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c190
+ bl_0_190 br_0_190 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c191
+ bl_0_191 br_0_191 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c192
+ bl_0_192 br_0_192 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c193
+ bl_0_193 br_0_193 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c194
+ bl_0_194 br_0_194 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c195
+ bl_0_195 br_0_195 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c196
+ bl_0_196 br_0_196 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c197
+ bl_0_197 br_0_197 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c198
+ bl_0_198 br_0_198 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c199
+ bl_0_199 br_0_199 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c200
+ bl_0_200 br_0_200 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c201
+ bl_0_201 br_0_201 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c202
+ bl_0_202 br_0_202 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c203
+ bl_0_203 br_0_203 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c204
+ bl_0_204 br_0_204 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c205
+ bl_0_205 br_0_205 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c206
+ bl_0_206 br_0_206 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c207
+ bl_0_207 br_0_207 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c208
+ bl_0_208 br_0_208 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c209
+ bl_0_209 br_0_209 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c210
+ bl_0_210 br_0_210 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c211
+ bl_0_211 br_0_211 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c212
+ bl_0_212 br_0_212 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c213
+ bl_0_213 br_0_213 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c214
+ bl_0_214 br_0_214 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c215
+ bl_0_215 br_0_215 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c216
+ bl_0_216 br_0_216 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c217
+ bl_0_217 br_0_217 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c218
+ bl_0_218 br_0_218 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c219
+ bl_0_219 br_0_219 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c220
+ bl_0_220 br_0_220 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c221
+ bl_0_221 br_0_221 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c222
+ bl_0_222 br_0_222 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c223
+ bl_0_223 br_0_223 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c224
+ bl_0_224 br_0_224 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c225
+ bl_0_225 br_0_225 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c226
+ bl_0_226 br_0_226 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c227
+ bl_0_227 br_0_227 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c228
+ bl_0_228 br_0_228 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c229
+ bl_0_229 br_0_229 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c230
+ bl_0_230 br_0_230 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c231
+ bl_0_231 br_0_231 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c232
+ bl_0_232 br_0_232 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c233
+ bl_0_233 br_0_233 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c234
+ bl_0_234 br_0_234 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c235
+ bl_0_235 br_0_235 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c236
+ bl_0_236 br_0_236 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c237
+ bl_0_237 br_0_237 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c238
+ bl_0_238 br_0_238 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c239
+ bl_0_239 br_0_239 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c240
+ bl_0_240 br_0_240 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c241
+ bl_0_241 br_0_241 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c242
+ bl_0_242 br_0_242 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c243
+ bl_0_243 br_0_243 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c244
+ bl_0_244 br_0_244 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c245
+ bl_0_245 br_0_245 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c246
+ bl_0_246 br_0_246 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c247
+ bl_0_247 br_0_247 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c248
+ bl_0_248 br_0_248 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c249
+ bl_0_249 br_0_249 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c250
+ bl_0_250 br_0_250 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c251
+ bl_0_251 br_0_251 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c252
+ bl_0_252 br_0_252 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c253
+ bl_0_253 br_0_253 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c254
+ bl_0_254 br_0_254 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c255
+ bl_0_255 br_0_255 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_dummy_array

.SUBCKT mp3_data_array_replica_bitcell_array
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
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128
+ bl_0_129 br_0_129 bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132
+ br_0_132 bl_0_133 br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135
+ bl_0_136 br_0_136 bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139
+ br_0_139 bl_0_140 br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142
+ bl_0_143 br_0_143 bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146
+ br_0_146 bl_0_147 br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149
+ bl_0_150 br_0_150 bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153
+ br_0_153 bl_0_154 br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156
+ bl_0_157 br_0_157 bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160
+ br_0_160 bl_0_161 br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163
+ bl_0_164 br_0_164 bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167
+ br_0_167 bl_0_168 br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170
+ bl_0_171 br_0_171 bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174
+ br_0_174 bl_0_175 br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177
+ bl_0_178 br_0_178 bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181
+ br_0_181 bl_0_182 br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184
+ bl_0_185 br_0_185 bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188
+ br_0_188 bl_0_189 br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191
+ bl_0_192 br_0_192 bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195
+ br_0_195 bl_0_196 br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198
+ bl_0_199 br_0_199 bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202
+ br_0_202 bl_0_203 br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205
+ bl_0_206 br_0_206 bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209
+ br_0_209 bl_0_210 br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212
+ bl_0_213 br_0_213 bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216
+ br_0_216 bl_0_217 br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219
+ bl_0_220 br_0_220 bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223
+ br_0_223 bl_0_224 br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226
+ bl_0_227 br_0_227 bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230
+ br_0_230 bl_0_231 br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233
+ bl_0_234 br_0_234 bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237
+ br_0_237 bl_0_238 br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240
+ bl_0_241 br_0_241 bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244
+ br_0_244 bl_0_245 br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247
+ bl_0_248 br_0_248 bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251
+ br_0_251 bl_0_252 br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254
+ bl_0_255 br_0_255 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5
+ wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14
+ wl_0_15 vdd gnd
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
* INOUT : bl_0_128 
* INOUT : br_0_128 
* INOUT : bl_0_129 
* INOUT : br_0_129 
* INOUT : bl_0_130 
* INOUT : br_0_130 
* INOUT : bl_0_131 
* INOUT : br_0_131 
* INOUT : bl_0_132 
* INOUT : br_0_132 
* INOUT : bl_0_133 
* INOUT : br_0_133 
* INOUT : bl_0_134 
* INOUT : br_0_134 
* INOUT : bl_0_135 
* INOUT : br_0_135 
* INOUT : bl_0_136 
* INOUT : br_0_136 
* INOUT : bl_0_137 
* INOUT : br_0_137 
* INOUT : bl_0_138 
* INOUT : br_0_138 
* INOUT : bl_0_139 
* INOUT : br_0_139 
* INOUT : bl_0_140 
* INOUT : br_0_140 
* INOUT : bl_0_141 
* INOUT : br_0_141 
* INOUT : bl_0_142 
* INOUT : br_0_142 
* INOUT : bl_0_143 
* INOUT : br_0_143 
* INOUT : bl_0_144 
* INOUT : br_0_144 
* INOUT : bl_0_145 
* INOUT : br_0_145 
* INOUT : bl_0_146 
* INOUT : br_0_146 
* INOUT : bl_0_147 
* INOUT : br_0_147 
* INOUT : bl_0_148 
* INOUT : br_0_148 
* INOUT : bl_0_149 
* INOUT : br_0_149 
* INOUT : bl_0_150 
* INOUT : br_0_150 
* INOUT : bl_0_151 
* INOUT : br_0_151 
* INOUT : bl_0_152 
* INOUT : br_0_152 
* INOUT : bl_0_153 
* INOUT : br_0_153 
* INOUT : bl_0_154 
* INOUT : br_0_154 
* INOUT : bl_0_155 
* INOUT : br_0_155 
* INOUT : bl_0_156 
* INOUT : br_0_156 
* INOUT : bl_0_157 
* INOUT : br_0_157 
* INOUT : bl_0_158 
* INOUT : br_0_158 
* INOUT : bl_0_159 
* INOUT : br_0_159 
* INOUT : bl_0_160 
* INOUT : br_0_160 
* INOUT : bl_0_161 
* INOUT : br_0_161 
* INOUT : bl_0_162 
* INOUT : br_0_162 
* INOUT : bl_0_163 
* INOUT : br_0_163 
* INOUT : bl_0_164 
* INOUT : br_0_164 
* INOUT : bl_0_165 
* INOUT : br_0_165 
* INOUT : bl_0_166 
* INOUT : br_0_166 
* INOUT : bl_0_167 
* INOUT : br_0_167 
* INOUT : bl_0_168 
* INOUT : br_0_168 
* INOUT : bl_0_169 
* INOUT : br_0_169 
* INOUT : bl_0_170 
* INOUT : br_0_170 
* INOUT : bl_0_171 
* INOUT : br_0_171 
* INOUT : bl_0_172 
* INOUT : br_0_172 
* INOUT : bl_0_173 
* INOUT : br_0_173 
* INOUT : bl_0_174 
* INOUT : br_0_174 
* INOUT : bl_0_175 
* INOUT : br_0_175 
* INOUT : bl_0_176 
* INOUT : br_0_176 
* INOUT : bl_0_177 
* INOUT : br_0_177 
* INOUT : bl_0_178 
* INOUT : br_0_178 
* INOUT : bl_0_179 
* INOUT : br_0_179 
* INOUT : bl_0_180 
* INOUT : br_0_180 
* INOUT : bl_0_181 
* INOUT : br_0_181 
* INOUT : bl_0_182 
* INOUT : br_0_182 
* INOUT : bl_0_183 
* INOUT : br_0_183 
* INOUT : bl_0_184 
* INOUT : br_0_184 
* INOUT : bl_0_185 
* INOUT : br_0_185 
* INOUT : bl_0_186 
* INOUT : br_0_186 
* INOUT : bl_0_187 
* INOUT : br_0_187 
* INOUT : bl_0_188 
* INOUT : br_0_188 
* INOUT : bl_0_189 
* INOUT : br_0_189 
* INOUT : bl_0_190 
* INOUT : br_0_190 
* INOUT : bl_0_191 
* INOUT : br_0_191 
* INOUT : bl_0_192 
* INOUT : br_0_192 
* INOUT : bl_0_193 
* INOUT : br_0_193 
* INOUT : bl_0_194 
* INOUT : br_0_194 
* INOUT : bl_0_195 
* INOUT : br_0_195 
* INOUT : bl_0_196 
* INOUT : br_0_196 
* INOUT : bl_0_197 
* INOUT : br_0_197 
* INOUT : bl_0_198 
* INOUT : br_0_198 
* INOUT : bl_0_199 
* INOUT : br_0_199 
* INOUT : bl_0_200 
* INOUT : br_0_200 
* INOUT : bl_0_201 
* INOUT : br_0_201 
* INOUT : bl_0_202 
* INOUT : br_0_202 
* INOUT : bl_0_203 
* INOUT : br_0_203 
* INOUT : bl_0_204 
* INOUT : br_0_204 
* INOUT : bl_0_205 
* INOUT : br_0_205 
* INOUT : bl_0_206 
* INOUT : br_0_206 
* INOUT : bl_0_207 
* INOUT : br_0_207 
* INOUT : bl_0_208 
* INOUT : br_0_208 
* INOUT : bl_0_209 
* INOUT : br_0_209 
* INOUT : bl_0_210 
* INOUT : br_0_210 
* INOUT : bl_0_211 
* INOUT : br_0_211 
* INOUT : bl_0_212 
* INOUT : br_0_212 
* INOUT : bl_0_213 
* INOUT : br_0_213 
* INOUT : bl_0_214 
* INOUT : br_0_214 
* INOUT : bl_0_215 
* INOUT : br_0_215 
* INOUT : bl_0_216 
* INOUT : br_0_216 
* INOUT : bl_0_217 
* INOUT : br_0_217 
* INOUT : bl_0_218 
* INOUT : br_0_218 
* INOUT : bl_0_219 
* INOUT : br_0_219 
* INOUT : bl_0_220 
* INOUT : br_0_220 
* INOUT : bl_0_221 
* INOUT : br_0_221 
* INOUT : bl_0_222 
* INOUT : br_0_222 
* INOUT : bl_0_223 
* INOUT : br_0_223 
* INOUT : bl_0_224 
* INOUT : br_0_224 
* INOUT : bl_0_225 
* INOUT : br_0_225 
* INOUT : bl_0_226 
* INOUT : br_0_226 
* INOUT : bl_0_227 
* INOUT : br_0_227 
* INOUT : bl_0_228 
* INOUT : br_0_228 
* INOUT : bl_0_229 
* INOUT : br_0_229 
* INOUT : bl_0_230 
* INOUT : br_0_230 
* INOUT : bl_0_231 
* INOUT : br_0_231 
* INOUT : bl_0_232 
* INOUT : br_0_232 
* INOUT : bl_0_233 
* INOUT : br_0_233 
* INOUT : bl_0_234 
* INOUT : br_0_234 
* INOUT : bl_0_235 
* INOUT : br_0_235 
* INOUT : bl_0_236 
* INOUT : br_0_236 
* INOUT : bl_0_237 
* INOUT : br_0_237 
* INOUT : bl_0_238 
* INOUT : br_0_238 
* INOUT : bl_0_239 
* INOUT : br_0_239 
* INOUT : bl_0_240 
* INOUT : br_0_240 
* INOUT : bl_0_241 
* INOUT : br_0_241 
* INOUT : bl_0_242 
* INOUT : br_0_242 
* INOUT : bl_0_243 
* INOUT : br_0_243 
* INOUT : bl_0_244 
* INOUT : br_0_244 
* INOUT : bl_0_245 
* INOUT : br_0_245 
* INOUT : bl_0_246 
* INOUT : br_0_246 
* INOUT : bl_0_247 
* INOUT : br_0_247 
* INOUT : bl_0_248 
* INOUT : br_0_248 
* INOUT : bl_0_249 
* INOUT : br_0_249 
* INOUT : bl_0_250 
* INOUT : br_0_250 
* INOUT : bl_0_251 
* INOUT : br_0_251 
* INOUT : bl_0_252 
* INOUT : br_0_252 
* INOUT : bl_0_253 
* INOUT : br_0_253 
* INOUT : bl_0_254 
* INOUT : br_0_254 
* INOUT : bl_0_255 
* INOUT : br_0_255 
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
* rows: 16 cols: 256
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
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 bl_0_129 br_0_129
+ bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132 br_0_132 bl_0_133
+ br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135 bl_0_136 br_0_136
+ bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139 br_0_139 bl_0_140
+ br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142 bl_0_143 br_0_143
+ bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146 br_0_146 bl_0_147
+ br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149 bl_0_150 br_0_150
+ bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153 br_0_153 bl_0_154
+ br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156 bl_0_157 br_0_157
+ bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160 br_0_160 bl_0_161
+ br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163 bl_0_164 br_0_164
+ bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167 br_0_167 bl_0_168
+ br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170 bl_0_171 br_0_171
+ bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174 br_0_174 bl_0_175
+ br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177 bl_0_178 br_0_178
+ bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181 br_0_181 bl_0_182
+ br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184 bl_0_185 br_0_185
+ bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188 br_0_188 bl_0_189
+ br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191 bl_0_192 br_0_192
+ bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195 br_0_195 bl_0_196
+ br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198 bl_0_199 br_0_199
+ bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202 br_0_202 bl_0_203
+ br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205 bl_0_206 br_0_206
+ bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209 br_0_209 bl_0_210
+ br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212 bl_0_213 br_0_213
+ bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216 br_0_216 bl_0_217
+ br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219 bl_0_220 br_0_220
+ bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223 br_0_223 bl_0_224
+ br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226 bl_0_227 br_0_227
+ bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230 br_0_230 bl_0_231
+ br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233 bl_0_234 br_0_234
+ bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237 br_0_237 bl_0_238
+ br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240 bl_0_241 br_0_241
+ bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244 br_0_244 bl_0_245
+ br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247 bl_0_248 br_0_248
+ bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251 br_0_251 bl_0_252
+ br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254 bl_0_255 br_0_255 wl_0_0
+ wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 vdd gnd
+ mp3_data_array_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_br_0_0 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4
+ wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13
+ wl_0_14 wl_0_15 vdd gnd
+ mp3_data_array_replica_column
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
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 bl_0_129 br_0_129
+ bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132 br_0_132 bl_0_133
+ br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135 bl_0_136 br_0_136
+ bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139 br_0_139 bl_0_140
+ br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142 bl_0_143 br_0_143
+ bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146 br_0_146 bl_0_147
+ br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149 bl_0_150 br_0_150
+ bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153 br_0_153 bl_0_154
+ br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156 bl_0_157 br_0_157
+ bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160 br_0_160 bl_0_161
+ br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163 bl_0_164 br_0_164
+ bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167 br_0_167 bl_0_168
+ br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170 bl_0_171 br_0_171
+ bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174 br_0_174 bl_0_175
+ br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177 bl_0_178 br_0_178
+ bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181 br_0_181 bl_0_182
+ br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184 bl_0_185 br_0_185
+ bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188 br_0_188 bl_0_189
+ br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191 bl_0_192 br_0_192
+ bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195 br_0_195 bl_0_196
+ br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198 bl_0_199 br_0_199
+ bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202 br_0_202 bl_0_203
+ br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205 bl_0_206 br_0_206
+ bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209 br_0_209 bl_0_210
+ br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212 bl_0_213 br_0_213
+ bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216 br_0_216 bl_0_217
+ br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219 bl_0_220 br_0_220
+ bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223 br_0_223 bl_0_224
+ br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226 bl_0_227 br_0_227
+ bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230 br_0_230 bl_0_231
+ br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233 bl_0_234 br_0_234
+ bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237 br_0_237 bl_0_238
+ br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240 bl_0_241 br_0_241
+ bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244 br_0_244 bl_0_245
+ br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247 bl_0_248 br_0_248
+ bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251 br_0_251 bl_0_252
+ br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254 bl_0_255 br_0_255
+ rbl_wl_0_0 vdd gnd
+ mp3_data_array_dummy_array
.ENDS mp3_data_array_replica_bitcell_array

.SUBCKT mp3_data_array_dummy_array_1
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
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 bl_0_129 br_0_129
+ bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132 br_0_132 bl_0_133
+ br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135 bl_0_136 br_0_136
+ bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139 br_0_139 bl_0_140
+ br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142 bl_0_143 br_0_143
+ bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146 br_0_146 bl_0_147
+ br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149 bl_0_150 br_0_150
+ bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153 br_0_153 bl_0_154
+ br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156 bl_0_157 br_0_157
+ bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160 br_0_160 bl_0_161
+ br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163 bl_0_164 br_0_164
+ bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167 br_0_167 bl_0_168
+ br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170 bl_0_171 br_0_171
+ bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174 br_0_174 bl_0_175
+ br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177 bl_0_178 br_0_178
+ bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181 br_0_181 bl_0_182
+ br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184 bl_0_185 br_0_185
+ bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188 br_0_188 bl_0_189
+ br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191 bl_0_192 br_0_192
+ bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195 br_0_195 bl_0_196
+ br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198 bl_0_199 br_0_199
+ bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202 br_0_202 bl_0_203
+ br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205 bl_0_206 br_0_206
+ bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209 br_0_209 bl_0_210
+ br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212 bl_0_213 br_0_213
+ bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216 br_0_216 bl_0_217
+ br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219 bl_0_220 br_0_220
+ bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223 br_0_223 bl_0_224
+ br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226 bl_0_227 br_0_227
+ bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230 br_0_230 bl_0_231
+ br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233 bl_0_234 br_0_234
+ bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237 br_0_237 bl_0_238
+ br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240 bl_0_241 br_0_241
+ bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244 br_0_244 bl_0_245
+ br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247 bl_0_248 br_0_248
+ bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251 br_0_251 bl_0_252
+ br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254 bl_0_255 br_0_255
+ bl_0_256 br_0_256 wl_0_0 vdd gnd
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
* INOUT : bl_0_129 
* INOUT : br_0_129 
* INOUT : bl_0_130 
* INOUT : br_0_130 
* INOUT : bl_0_131 
* INOUT : br_0_131 
* INOUT : bl_0_132 
* INOUT : br_0_132 
* INOUT : bl_0_133 
* INOUT : br_0_133 
* INOUT : bl_0_134 
* INOUT : br_0_134 
* INOUT : bl_0_135 
* INOUT : br_0_135 
* INOUT : bl_0_136 
* INOUT : br_0_136 
* INOUT : bl_0_137 
* INOUT : br_0_137 
* INOUT : bl_0_138 
* INOUT : br_0_138 
* INOUT : bl_0_139 
* INOUT : br_0_139 
* INOUT : bl_0_140 
* INOUT : br_0_140 
* INOUT : bl_0_141 
* INOUT : br_0_141 
* INOUT : bl_0_142 
* INOUT : br_0_142 
* INOUT : bl_0_143 
* INOUT : br_0_143 
* INOUT : bl_0_144 
* INOUT : br_0_144 
* INOUT : bl_0_145 
* INOUT : br_0_145 
* INOUT : bl_0_146 
* INOUT : br_0_146 
* INOUT : bl_0_147 
* INOUT : br_0_147 
* INOUT : bl_0_148 
* INOUT : br_0_148 
* INOUT : bl_0_149 
* INOUT : br_0_149 
* INOUT : bl_0_150 
* INOUT : br_0_150 
* INOUT : bl_0_151 
* INOUT : br_0_151 
* INOUT : bl_0_152 
* INOUT : br_0_152 
* INOUT : bl_0_153 
* INOUT : br_0_153 
* INOUT : bl_0_154 
* INOUT : br_0_154 
* INOUT : bl_0_155 
* INOUT : br_0_155 
* INOUT : bl_0_156 
* INOUT : br_0_156 
* INOUT : bl_0_157 
* INOUT : br_0_157 
* INOUT : bl_0_158 
* INOUT : br_0_158 
* INOUT : bl_0_159 
* INOUT : br_0_159 
* INOUT : bl_0_160 
* INOUT : br_0_160 
* INOUT : bl_0_161 
* INOUT : br_0_161 
* INOUT : bl_0_162 
* INOUT : br_0_162 
* INOUT : bl_0_163 
* INOUT : br_0_163 
* INOUT : bl_0_164 
* INOUT : br_0_164 
* INOUT : bl_0_165 
* INOUT : br_0_165 
* INOUT : bl_0_166 
* INOUT : br_0_166 
* INOUT : bl_0_167 
* INOUT : br_0_167 
* INOUT : bl_0_168 
* INOUT : br_0_168 
* INOUT : bl_0_169 
* INOUT : br_0_169 
* INOUT : bl_0_170 
* INOUT : br_0_170 
* INOUT : bl_0_171 
* INOUT : br_0_171 
* INOUT : bl_0_172 
* INOUT : br_0_172 
* INOUT : bl_0_173 
* INOUT : br_0_173 
* INOUT : bl_0_174 
* INOUT : br_0_174 
* INOUT : bl_0_175 
* INOUT : br_0_175 
* INOUT : bl_0_176 
* INOUT : br_0_176 
* INOUT : bl_0_177 
* INOUT : br_0_177 
* INOUT : bl_0_178 
* INOUT : br_0_178 
* INOUT : bl_0_179 
* INOUT : br_0_179 
* INOUT : bl_0_180 
* INOUT : br_0_180 
* INOUT : bl_0_181 
* INOUT : br_0_181 
* INOUT : bl_0_182 
* INOUT : br_0_182 
* INOUT : bl_0_183 
* INOUT : br_0_183 
* INOUT : bl_0_184 
* INOUT : br_0_184 
* INOUT : bl_0_185 
* INOUT : br_0_185 
* INOUT : bl_0_186 
* INOUT : br_0_186 
* INOUT : bl_0_187 
* INOUT : br_0_187 
* INOUT : bl_0_188 
* INOUT : br_0_188 
* INOUT : bl_0_189 
* INOUT : br_0_189 
* INOUT : bl_0_190 
* INOUT : br_0_190 
* INOUT : bl_0_191 
* INOUT : br_0_191 
* INOUT : bl_0_192 
* INOUT : br_0_192 
* INOUT : bl_0_193 
* INOUT : br_0_193 
* INOUT : bl_0_194 
* INOUT : br_0_194 
* INOUT : bl_0_195 
* INOUT : br_0_195 
* INOUT : bl_0_196 
* INOUT : br_0_196 
* INOUT : bl_0_197 
* INOUT : br_0_197 
* INOUT : bl_0_198 
* INOUT : br_0_198 
* INOUT : bl_0_199 
* INOUT : br_0_199 
* INOUT : bl_0_200 
* INOUT : br_0_200 
* INOUT : bl_0_201 
* INOUT : br_0_201 
* INOUT : bl_0_202 
* INOUT : br_0_202 
* INOUT : bl_0_203 
* INOUT : br_0_203 
* INOUT : bl_0_204 
* INOUT : br_0_204 
* INOUT : bl_0_205 
* INOUT : br_0_205 
* INOUT : bl_0_206 
* INOUT : br_0_206 
* INOUT : bl_0_207 
* INOUT : br_0_207 
* INOUT : bl_0_208 
* INOUT : br_0_208 
* INOUT : bl_0_209 
* INOUT : br_0_209 
* INOUT : bl_0_210 
* INOUT : br_0_210 
* INOUT : bl_0_211 
* INOUT : br_0_211 
* INOUT : bl_0_212 
* INOUT : br_0_212 
* INOUT : bl_0_213 
* INOUT : br_0_213 
* INOUT : bl_0_214 
* INOUT : br_0_214 
* INOUT : bl_0_215 
* INOUT : br_0_215 
* INOUT : bl_0_216 
* INOUT : br_0_216 
* INOUT : bl_0_217 
* INOUT : br_0_217 
* INOUT : bl_0_218 
* INOUT : br_0_218 
* INOUT : bl_0_219 
* INOUT : br_0_219 
* INOUT : bl_0_220 
* INOUT : br_0_220 
* INOUT : bl_0_221 
* INOUT : br_0_221 
* INOUT : bl_0_222 
* INOUT : br_0_222 
* INOUT : bl_0_223 
* INOUT : br_0_223 
* INOUT : bl_0_224 
* INOUT : br_0_224 
* INOUT : bl_0_225 
* INOUT : br_0_225 
* INOUT : bl_0_226 
* INOUT : br_0_226 
* INOUT : bl_0_227 
* INOUT : br_0_227 
* INOUT : bl_0_228 
* INOUT : br_0_228 
* INOUT : bl_0_229 
* INOUT : br_0_229 
* INOUT : bl_0_230 
* INOUT : br_0_230 
* INOUT : bl_0_231 
* INOUT : br_0_231 
* INOUT : bl_0_232 
* INOUT : br_0_232 
* INOUT : bl_0_233 
* INOUT : br_0_233 
* INOUT : bl_0_234 
* INOUT : br_0_234 
* INOUT : bl_0_235 
* INOUT : br_0_235 
* INOUT : bl_0_236 
* INOUT : br_0_236 
* INOUT : bl_0_237 
* INOUT : br_0_237 
* INOUT : bl_0_238 
* INOUT : br_0_238 
* INOUT : bl_0_239 
* INOUT : br_0_239 
* INOUT : bl_0_240 
* INOUT : br_0_240 
* INOUT : bl_0_241 
* INOUT : br_0_241 
* INOUT : bl_0_242 
* INOUT : br_0_242 
* INOUT : bl_0_243 
* INOUT : br_0_243 
* INOUT : bl_0_244 
* INOUT : br_0_244 
* INOUT : bl_0_245 
* INOUT : br_0_245 
* INOUT : bl_0_246 
* INOUT : br_0_246 
* INOUT : bl_0_247 
* INOUT : br_0_247 
* INOUT : bl_0_248 
* INOUT : br_0_248 
* INOUT : bl_0_249 
* INOUT : br_0_249 
* INOUT : bl_0_250 
* INOUT : br_0_250 
* INOUT : bl_0_251 
* INOUT : br_0_251 
* INOUT : bl_0_252 
* INOUT : br_0_252 
* INOUT : bl_0_253 
* INOUT : br_0_253 
* INOUT : bl_0_254 
* INOUT : br_0_254 
* INOUT : bl_0_255 
* INOUT : br_0_255 
* INOUT : bl_0_256 
* INOUT : br_0_256 
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
Xbit_r0_c129
+ bl_0_129 br_0_129 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c130
+ bl_0_130 br_0_130 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c131
+ bl_0_131 br_0_131 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c132
+ bl_0_132 br_0_132 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c133
+ bl_0_133 br_0_133 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c134
+ bl_0_134 br_0_134 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c135
+ bl_0_135 br_0_135 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c136
+ bl_0_136 br_0_136 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c137
+ bl_0_137 br_0_137 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c138
+ bl_0_138 br_0_138 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c139
+ bl_0_139 br_0_139 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c140
+ bl_0_140 br_0_140 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c141
+ bl_0_141 br_0_141 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c142
+ bl_0_142 br_0_142 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c143
+ bl_0_143 br_0_143 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c144
+ bl_0_144 br_0_144 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c145
+ bl_0_145 br_0_145 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c146
+ bl_0_146 br_0_146 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c147
+ bl_0_147 br_0_147 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c148
+ bl_0_148 br_0_148 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c149
+ bl_0_149 br_0_149 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c150
+ bl_0_150 br_0_150 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c151
+ bl_0_151 br_0_151 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c152
+ bl_0_152 br_0_152 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c153
+ bl_0_153 br_0_153 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c154
+ bl_0_154 br_0_154 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c155
+ bl_0_155 br_0_155 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c156
+ bl_0_156 br_0_156 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c157
+ bl_0_157 br_0_157 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c158
+ bl_0_158 br_0_158 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c159
+ bl_0_159 br_0_159 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c160
+ bl_0_160 br_0_160 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c161
+ bl_0_161 br_0_161 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c162
+ bl_0_162 br_0_162 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c163
+ bl_0_163 br_0_163 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c164
+ bl_0_164 br_0_164 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c165
+ bl_0_165 br_0_165 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c166
+ bl_0_166 br_0_166 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c167
+ bl_0_167 br_0_167 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c168
+ bl_0_168 br_0_168 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c169
+ bl_0_169 br_0_169 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c170
+ bl_0_170 br_0_170 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c171
+ bl_0_171 br_0_171 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c172
+ bl_0_172 br_0_172 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c173
+ bl_0_173 br_0_173 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c174
+ bl_0_174 br_0_174 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c175
+ bl_0_175 br_0_175 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c176
+ bl_0_176 br_0_176 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c177
+ bl_0_177 br_0_177 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c178
+ bl_0_178 br_0_178 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c179
+ bl_0_179 br_0_179 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c180
+ bl_0_180 br_0_180 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c181
+ bl_0_181 br_0_181 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c182
+ bl_0_182 br_0_182 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c183
+ bl_0_183 br_0_183 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c184
+ bl_0_184 br_0_184 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c185
+ bl_0_185 br_0_185 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c186
+ bl_0_186 br_0_186 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c187
+ bl_0_187 br_0_187 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c188
+ bl_0_188 br_0_188 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c189
+ bl_0_189 br_0_189 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c190
+ bl_0_190 br_0_190 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c191
+ bl_0_191 br_0_191 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c192
+ bl_0_192 br_0_192 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c193
+ bl_0_193 br_0_193 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c194
+ bl_0_194 br_0_194 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c195
+ bl_0_195 br_0_195 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c196
+ bl_0_196 br_0_196 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c197
+ bl_0_197 br_0_197 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c198
+ bl_0_198 br_0_198 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c199
+ bl_0_199 br_0_199 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c200
+ bl_0_200 br_0_200 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c201
+ bl_0_201 br_0_201 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c202
+ bl_0_202 br_0_202 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c203
+ bl_0_203 br_0_203 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c204
+ bl_0_204 br_0_204 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c205
+ bl_0_205 br_0_205 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c206
+ bl_0_206 br_0_206 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c207
+ bl_0_207 br_0_207 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c208
+ bl_0_208 br_0_208 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c209
+ bl_0_209 br_0_209 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c210
+ bl_0_210 br_0_210 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c211
+ bl_0_211 br_0_211 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c212
+ bl_0_212 br_0_212 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c213
+ bl_0_213 br_0_213 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c214
+ bl_0_214 br_0_214 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c215
+ bl_0_215 br_0_215 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c216
+ bl_0_216 br_0_216 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c217
+ bl_0_217 br_0_217 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c218
+ bl_0_218 br_0_218 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c219
+ bl_0_219 br_0_219 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c220
+ bl_0_220 br_0_220 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c221
+ bl_0_221 br_0_221 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c222
+ bl_0_222 br_0_222 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c223
+ bl_0_223 br_0_223 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c224
+ bl_0_224 br_0_224 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c225
+ bl_0_225 br_0_225 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c226
+ bl_0_226 br_0_226 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c227
+ bl_0_227 br_0_227 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c228
+ bl_0_228 br_0_228 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c229
+ bl_0_229 br_0_229 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c230
+ bl_0_230 br_0_230 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c231
+ bl_0_231 br_0_231 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c232
+ bl_0_232 br_0_232 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c233
+ bl_0_233 br_0_233 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c234
+ bl_0_234 br_0_234 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c235
+ bl_0_235 br_0_235 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c236
+ bl_0_236 br_0_236 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c237
+ bl_0_237 br_0_237 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c238
+ bl_0_238 br_0_238 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c239
+ bl_0_239 br_0_239 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c240
+ bl_0_240 br_0_240 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c241
+ bl_0_241 br_0_241 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c242
+ bl_0_242 br_0_242 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c243
+ bl_0_243 br_0_243 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c244
+ bl_0_244 br_0_244 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c245
+ bl_0_245 br_0_245 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c246
+ bl_0_246 br_0_246 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c247
+ bl_0_247 br_0_247 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c248
+ bl_0_248 br_0_248 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c249
+ bl_0_249 br_0_249 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c250
+ bl_0_250 br_0_250 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c251
+ bl_0_251 br_0_251 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c252
+ bl_0_252 br_0_252 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c253
+ bl_0_253 br_0_253 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c254
+ bl_0_254 br_0_254 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c255
+ bl_0_255 br_0_255 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c256
+ bl_0_256 br_0_256 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_dummy_array_1

.SUBCKT mp3_data_array_dummy_array_2
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
.ENDS mp3_data_array_dummy_array_2

.SUBCKT mp3_data_array_dummy_array_0
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
+ br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128 bl_0_129 br_0_129
+ bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132 br_0_132 bl_0_133
+ br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135 bl_0_136 br_0_136
+ bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139 br_0_139 bl_0_140
+ br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142 bl_0_143 br_0_143
+ bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146 br_0_146 bl_0_147
+ br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149 bl_0_150 br_0_150
+ bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153 br_0_153 bl_0_154
+ br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156 bl_0_157 br_0_157
+ bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160 br_0_160 bl_0_161
+ br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163 bl_0_164 br_0_164
+ bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167 br_0_167 bl_0_168
+ br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170 bl_0_171 br_0_171
+ bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174 br_0_174 bl_0_175
+ br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177 bl_0_178 br_0_178
+ bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181 br_0_181 bl_0_182
+ br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184 bl_0_185 br_0_185
+ bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188 br_0_188 bl_0_189
+ br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191 bl_0_192 br_0_192
+ bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195 br_0_195 bl_0_196
+ br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198 bl_0_199 br_0_199
+ bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202 br_0_202 bl_0_203
+ br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205 bl_0_206 br_0_206
+ bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209 br_0_209 bl_0_210
+ br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212 bl_0_213 br_0_213
+ bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216 br_0_216 bl_0_217
+ br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219 bl_0_220 br_0_220
+ bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223 br_0_223 bl_0_224
+ br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226 bl_0_227 br_0_227
+ bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230 br_0_230 bl_0_231
+ br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233 bl_0_234 br_0_234
+ bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237 br_0_237 bl_0_238
+ br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240 bl_0_241 br_0_241
+ bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244 br_0_244 bl_0_245
+ br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247 bl_0_248 br_0_248
+ bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251 br_0_251 bl_0_252
+ br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254 bl_0_255 br_0_255
+ bl_0_256 br_0_256 wl_0_0 vdd gnd
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
* INOUT : bl_0_129 
* INOUT : br_0_129 
* INOUT : bl_0_130 
* INOUT : br_0_130 
* INOUT : bl_0_131 
* INOUT : br_0_131 
* INOUT : bl_0_132 
* INOUT : br_0_132 
* INOUT : bl_0_133 
* INOUT : br_0_133 
* INOUT : bl_0_134 
* INOUT : br_0_134 
* INOUT : bl_0_135 
* INOUT : br_0_135 
* INOUT : bl_0_136 
* INOUT : br_0_136 
* INOUT : bl_0_137 
* INOUT : br_0_137 
* INOUT : bl_0_138 
* INOUT : br_0_138 
* INOUT : bl_0_139 
* INOUT : br_0_139 
* INOUT : bl_0_140 
* INOUT : br_0_140 
* INOUT : bl_0_141 
* INOUT : br_0_141 
* INOUT : bl_0_142 
* INOUT : br_0_142 
* INOUT : bl_0_143 
* INOUT : br_0_143 
* INOUT : bl_0_144 
* INOUT : br_0_144 
* INOUT : bl_0_145 
* INOUT : br_0_145 
* INOUT : bl_0_146 
* INOUT : br_0_146 
* INOUT : bl_0_147 
* INOUT : br_0_147 
* INOUT : bl_0_148 
* INOUT : br_0_148 
* INOUT : bl_0_149 
* INOUT : br_0_149 
* INOUT : bl_0_150 
* INOUT : br_0_150 
* INOUT : bl_0_151 
* INOUT : br_0_151 
* INOUT : bl_0_152 
* INOUT : br_0_152 
* INOUT : bl_0_153 
* INOUT : br_0_153 
* INOUT : bl_0_154 
* INOUT : br_0_154 
* INOUT : bl_0_155 
* INOUT : br_0_155 
* INOUT : bl_0_156 
* INOUT : br_0_156 
* INOUT : bl_0_157 
* INOUT : br_0_157 
* INOUT : bl_0_158 
* INOUT : br_0_158 
* INOUT : bl_0_159 
* INOUT : br_0_159 
* INOUT : bl_0_160 
* INOUT : br_0_160 
* INOUT : bl_0_161 
* INOUT : br_0_161 
* INOUT : bl_0_162 
* INOUT : br_0_162 
* INOUT : bl_0_163 
* INOUT : br_0_163 
* INOUT : bl_0_164 
* INOUT : br_0_164 
* INOUT : bl_0_165 
* INOUT : br_0_165 
* INOUT : bl_0_166 
* INOUT : br_0_166 
* INOUT : bl_0_167 
* INOUT : br_0_167 
* INOUT : bl_0_168 
* INOUT : br_0_168 
* INOUT : bl_0_169 
* INOUT : br_0_169 
* INOUT : bl_0_170 
* INOUT : br_0_170 
* INOUT : bl_0_171 
* INOUT : br_0_171 
* INOUT : bl_0_172 
* INOUT : br_0_172 
* INOUT : bl_0_173 
* INOUT : br_0_173 
* INOUT : bl_0_174 
* INOUT : br_0_174 
* INOUT : bl_0_175 
* INOUT : br_0_175 
* INOUT : bl_0_176 
* INOUT : br_0_176 
* INOUT : bl_0_177 
* INOUT : br_0_177 
* INOUT : bl_0_178 
* INOUT : br_0_178 
* INOUT : bl_0_179 
* INOUT : br_0_179 
* INOUT : bl_0_180 
* INOUT : br_0_180 
* INOUT : bl_0_181 
* INOUT : br_0_181 
* INOUT : bl_0_182 
* INOUT : br_0_182 
* INOUT : bl_0_183 
* INOUT : br_0_183 
* INOUT : bl_0_184 
* INOUT : br_0_184 
* INOUT : bl_0_185 
* INOUT : br_0_185 
* INOUT : bl_0_186 
* INOUT : br_0_186 
* INOUT : bl_0_187 
* INOUT : br_0_187 
* INOUT : bl_0_188 
* INOUT : br_0_188 
* INOUT : bl_0_189 
* INOUT : br_0_189 
* INOUT : bl_0_190 
* INOUT : br_0_190 
* INOUT : bl_0_191 
* INOUT : br_0_191 
* INOUT : bl_0_192 
* INOUT : br_0_192 
* INOUT : bl_0_193 
* INOUT : br_0_193 
* INOUT : bl_0_194 
* INOUT : br_0_194 
* INOUT : bl_0_195 
* INOUT : br_0_195 
* INOUT : bl_0_196 
* INOUT : br_0_196 
* INOUT : bl_0_197 
* INOUT : br_0_197 
* INOUT : bl_0_198 
* INOUT : br_0_198 
* INOUT : bl_0_199 
* INOUT : br_0_199 
* INOUT : bl_0_200 
* INOUT : br_0_200 
* INOUT : bl_0_201 
* INOUT : br_0_201 
* INOUT : bl_0_202 
* INOUT : br_0_202 
* INOUT : bl_0_203 
* INOUT : br_0_203 
* INOUT : bl_0_204 
* INOUT : br_0_204 
* INOUT : bl_0_205 
* INOUT : br_0_205 
* INOUT : bl_0_206 
* INOUT : br_0_206 
* INOUT : bl_0_207 
* INOUT : br_0_207 
* INOUT : bl_0_208 
* INOUT : br_0_208 
* INOUT : bl_0_209 
* INOUT : br_0_209 
* INOUT : bl_0_210 
* INOUT : br_0_210 
* INOUT : bl_0_211 
* INOUT : br_0_211 
* INOUT : bl_0_212 
* INOUT : br_0_212 
* INOUT : bl_0_213 
* INOUT : br_0_213 
* INOUT : bl_0_214 
* INOUT : br_0_214 
* INOUT : bl_0_215 
* INOUT : br_0_215 
* INOUT : bl_0_216 
* INOUT : br_0_216 
* INOUT : bl_0_217 
* INOUT : br_0_217 
* INOUT : bl_0_218 
* INOUT : br_0_218 
* INOUT : bl_0_219 
* INOUT : br_0_219 
* INOUT : bl_0_220 
* INOUT : br_0_220 
* INOUT : bl_0_221 
* INOUT : br_0_221 
* INOUT : bl_0_222 
* INOUT : br_0_222 
* INOUT : bl_0_223 
* INOUT : br_0_223 
* INOUT : bl_0_224 
* INOUT : br_0_224 
* INOUT : bl_0_225 
* INOUT : br_0_225 
* INOUT : bl_0_226 
* INOUT : br_0_226 
* INOUT : bl_0_227 
* INOUT : br_0_227 
* INOUT : bl_0_228 
* INOUT : br_0_228 
* INOUT : bl_0_229 
* INOUT : br_0_229 
* INOUT : bl_0_230 
* INOUT : br_0_230 
* INOUT : bl_0_231 
* INOUT : br_0_231 
* INOUT : bl_0_232 
* INOUT : br_0_232 
* INOUT : bl_0_233 
* INOUT : br_0_233 
* INOUT : bl_0_234 
* INOUT : br_0_234 
* INOUT : bl_0_235 
* INOUT : br_0_235 
* INOUT : bl_0_236 
* INOUT : br_0_236 
* INOUT : bl_0_237 
* INOUT : br_0_237 
* INOUT : bl_0_238 
* INOUT : br_0_238 
* INOUT : bl_0_239 
* INOUT : br_0_239 
* INOUT : bl_0_240 
* INOUT : br_0_240 
* INOUT : bl_0_241 
* INOUT : br_0_241 
* INOUT : bl_0_242 
* INOUT : br_0_242 
* INOUT : bl_0_243 
* INOUT : br_0_243 
* INOUT : bl_0_244 
* INOUT : br_0_244 
* INOUT : bl_0_245 
* INOUT : br_0_245 
* INOUT : bl_0_246 
* INOUT : br_0_246 
* INOUT : bl_0_247 
* INOUT : br_0_247 
* INOUT : bl_0_248 
* INOUT : br_0_248 
* INOUT : bl_0_249 
* INOUT : br_0_249 
* INOUT : bl_0_250 
* INOUT : br_0_250 
* INOUT : bl_0_251 
* INOUT : br_0_251 
* INOUT : bl_0_252 
* INOUT : br_0_252 
* INOUT : bl_0_253 
* INOUT : br_0_253 
* INOUT : bl_0_254 
* INOUT : br_0_254 
* INOUT : bl_0_255 
* INOUT : br_0_255 
* INOUT : bl_0_256 
* INOUT : br_0_256 
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
Xbit_r0_c129
+ bl_0_129 br_0_129 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c130
+ bl_0_130 br_0_130 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c131
+ bl_0_131 br_0_131 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c132
+ bl_0_132 br_0_132 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c133
+ bl_0_133 br_0_133 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c134
+ bl_0_134 br_0_134 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c135
+ bl_0_135 br_0_135 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c136
+ bl_0_136 br_0_136 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c137
+ bl_0_137 br_0_137 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c138
+ bl_0_138 br_0_138 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c139
+ bl_0_139 br_0_139 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c140
+ bl_0_140 br_0_140 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c141
+ bl_0_141 br_0_141 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c142
+ bl_0_142 br_0_142 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c143
+ bl_0_143 br_0_143 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c144
+ bl_0_144 br_0_144 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c145
+ bl_0_145 br_0_145 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c146
+ bl_0_146 br_0_146 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c147
+ bl_0_147 br_0_147 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c148
+ bl_0_148 br_0_148 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c149
+ bl_0_149 br_0_149 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c150
+ bl_0_150 br_0_150 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c151
+ bl_0_151 br_0_151 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c152
+ bl_0_152 br_0_152 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c153
+ bl_0_153 br_0_153 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c154
+ bl_0_154 br_0_154 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c155
+ bl_0_155 br_0_155 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c156
+ bl_0_156 br_0_156 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c157
+ bl_0_157 br_0_157 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c158
+ bl_0_158 br_0_158 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c159
+ bl_0_159 br_0_159 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c160
+ bl_0_160 br_0_160 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c161
+ bl_0_161 br_0_161 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c162
+ bl_0_162 br_0_162 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c163
+ bl_0_163 br_0_163 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c164
+ bl_0_164 br_0_164 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c165
+ bl_0_165 br_0_165 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c166
+ bl_0_166 br_0_166 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c167
+ bl_0_167 br_0_167 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c168
+ bl_0_168 br_0_168 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c169
+ bl_0_169 br_0_169 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c170
+ bl_0_170 br_0_170 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c171
+ bl_0_171 br_0_171 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c172
+ bl_0_172 br_0_172 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c173
+ bl_0_173 br_0_173 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c174
+ bl_0_174 br_0_174 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c175
+ bl_0_175 br_0_175 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c176
+ bl_0_176 br_0_176 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c177
+ bl_0_177 br_0_177 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c178
+ bl_0_178 br_0_178 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c179
+ bl_0_179 br_0_179 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c180
+ bl_0_180 br_0_180 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c181
+ bl_0_181 br_0_181 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c182
+ bl_0_182 br_0_182 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c183
+ bl_0_183 br_0_183 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c184
+ bl_0_184 br_0_184 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c185
+ bl_0_185 br_0_185 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c186
+ bl_0_186 br_0_186 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c187
+ bl_0_187 br_0_187 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c188
+ bl_0_188 br_0_188 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c189
+ bl_0_189 br_0_189 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c190
+ bl_0_190 br_0_190 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c191
+ bl_0_191 br_0_191 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c192
+ bl_0_192 br_0_192 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c193
+ bl_0_193 br_0_193 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c194
+ bl_0_194 br_0_194 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c195
+ bl_0_195 br_0_195 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c196
+ bl_0_196 br_0_196 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c197
+ bl_0_197 br_0_197 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c198
+ bl_0_198 br_0_198 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c199
+ bl_0_199 br_0_199 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c200
+ bl_0_200 br_0_200 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c201
+ bl_0_201 br_0_201 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c202
+ bl_0_202 br_0_202 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c203
+ bl_0_203 br_0_203 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c204
+ bl_0_204 br_0_204 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c205
+ bl_0_205 br_0_205 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c206
+ bl_0_206 br_0_206 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c207
+ bl_0_207 br_0_207 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c208
+ bl_0_208 br_0_208 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c209
+ bl_0_209 br_0_209 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c210
+ bl_0_210 br_0_210 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c211
+ bl_0_211 br_0_211 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c212
+ bl_0_212 br_0_212 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c213
+ bl_0_213 br_0_213 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c214
+ bl_0_214 br_0_214 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c215
+ bl_0_215 br_0_215 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c216
+ bl_0_216 br_0_216 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c217
+ bl_0_217 br_0_217 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c218
+ bl_0_218 br_0_218 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c219
+ bl_0_219 br_0_219 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c220
+ bl_0_220 br_0_220 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c221
+ bl_0_221 br_0_221 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c222
+ bl_0_222 br_0_222 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c223
+ bl_0_223 br_0_223 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c224
+ bl_0_224 br_0_224 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c225
+ bl_0_225 br_0_225 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c226
+ bl_0_226 br_0_226 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c227
+ bl_0_227 br_0_227 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c228
+ bl_0_228 br_0_228 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c229
+ bl_0_229 br_0_229 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c230
+ bl_0_230 br_0_230 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c231
+ bl_0_231 br_0_231 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c232
+ bl_0_232 br_0_232 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c233
+ bl_0_233 br_0_233 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c234
+ bl_0_234 br_0_234 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c235
+ bl_0_235 br_0_235 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c236
+ bl_0_236 br_0_236 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c237
+ bl_0_237 br_0_237 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c238
+ bl_0_238 br_0_238 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c239
+ bl_0_239 br_0_239 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c240
+ bl_0_240 br_0_240 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c241
+ bl_0_241 br_0_241 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c242
+ bl_0_242 br_0_242 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c243
+ bl_0_243 br_0_243 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c244
+ bl_0_244 br_0_244 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c245
+ bl_0_245 br_0_245 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c246
+ bl_0_246 br_0_246 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c247
+ bl_0_247 br_0_247 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c248
+ bl_0_248 br_0_248 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c249
+ bl_0_249 br_0_249 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c250
+ bl_0_250 br_0_250 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c251
+ bl_0_251 br_0_251 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c252
+ bl_0_252 br_0_252 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c253
+ bl_0_253 br_0_253 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c254
+ bl_0_254 br_0_254 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c255
+ bl_0_255 br_0_255 wl_0_0 vdd gnd
+ dummy_cell_1rw
Xbit_r0_c256
+ bl_0_256 br_0_256 wl_0_0 vdd gnd
+ dummy_cell_1rw
.ENDS mp3_data_array_dummy_array_0

.SUBCKT mp3_data_array_dummy_array_3
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
.ENDS mp3_data_array_dummy_array_3

.SUBCKT mp3_data_array_capped_replica_bitcell_array
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
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128
+ bl_0_129 br_0_129 bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132
+ br_0_132 bl_0_133 br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135
+ bl_0_136 br_0_136 bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139
+ br_0_139 bl_0_140 br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142
+ bl_0_143 br_0_143 bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146
+ br_0_146 bl_0_147 br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149
+ bl_0_150 br_0_150 bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153
+ br_0_153 bl_0_154 br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156
+ bl_0_157 br_0_157 bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160
+ br_0_160 bl_0_161 br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163
+ bl_0_164 br_0_164 bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167
+ br_0_167 bl_0_168 br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170
+ bl_0_171 br_0_171 bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174
+ br_0_174 bl_0_175 br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177
+ bl_0_178 br_0_178 bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181
+ br_0_181 bl_0_182 br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184
+ bl_0_185 br_0_185 bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188
+ br_0_188 bl_0_189 br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191
+ bl_0_192 br_0_192 bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195
+ br_0_195 bl_0_196 br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198
+ bl_0_199 br_0_199 bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202
+ br_0_202 bl_0_203 br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205
+ bl_0_206 br_0_206 bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209
+ br_0_209 bl_0_210 br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212
+ bl_0_213 br_0_213 bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216
+ br_0_216 bl_0_217 br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219
+ bl_0_220 br_0_220 bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223
+ br_0_223 bl_0_224 br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226
+ bl_0_227 br_0_227 bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230
+ br_0_230 bl_0_231 br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233
+ bl_0_234 br_0_234 bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237
+ br_0_237 bl_0_238 br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240
+ bl_0_241 br_0_241 bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244
+ br_0_244 bl_0_245 br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247
+ bl_0_248 br_0_248 bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251
+ br_0_251 bl_0_252 br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254
+ bl_0_255 br_0_255 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5
+ wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14
+ wl_0_15 vdd gnd
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
* INOUT : bl_0_128 
* INOUT : br_0_128 
* INOUT : bl_0_129 
* INOUT : br_0_129 
* INOUT : bl_0_130 
* INOUT : br_0_130 
* INOUT : bl_0_131 
* INOUT : br_0_131 
* INOUT : bl_0_132 
* INOUT : br_0_132 
* INOUT : bl_0_133 
* INOUT : br_0_133 
* INOUT : bl_0_134 
* INOUT : br_0_134 
* INOUT : bl_0_135 
* INOUT : br_0_135 
* INOUT : bl_0_136 
* INOUT : br_0_136 
* INOUT : bl_0_137 
* INOUT : br_0_137 
* INOUT : bl_0_138 
* INOUT : br_0_138 
* INOUT : bl_0_139 
* INOUT : br_0_139 
* INOUT : bl_0_140 
* INOUT : br_0_140 
* INOUT : bl_0_141 
* INOUT : br_0_141 
* INOUT : bl_0_142 
* INOUT : br_0_142 
* INOUT : bl_0_143 
* INOUT : br_0_143 
* INOUT : bl_0_144 
* INOUT : br_0_144 
* INOUT : bl_0_145 
* INOUT : br_0_145 
* INOUT : bl_0_146 
* INOUT : br_0_146 
* INOUT : bl_0_147 
* INOUT : br_0_147 
* INOUT : bl_0_148 
* INOUT : br_0_148 
* INOUT : bl_0_149 
* INOUT : br_0_149 
* INOUT : bl_0_150 
* INOUT : br_0_150 
* INOUT : bl_0_151 
* INOUT : br_0_151 
* INOUT : bl_0_152 
* INOUT : br_0_152 
* INOUT : bl_0_153 
* INOUT : br_0_153 
* INOUT : bl_0_154 
* INOUT : br_0_154 
* INOUT : bl_0_155 
* INOUT : br_0_155 
* INOUT : bl_0_156 
* INOUT : br_0_156 
* INOUT : bl_0_157 
* INOUT : br_0_157 
* INOUT : bl_0_158 
* INOUT : br_0_158 
* INOUT : bl_0_159 
* INOUT : br_0_159 
* INOUT : bl_0_160 
* INOUT : br_0_160 
* INOUT : bl_0_161 
* INOUT : br_0_161 
* INOUT : bl_0_162 
* INOUT : br_0_162 
* INOUT : bl_0_163 
* INOUT : br_0_163 
* INOUT : bl_0_164 
* INOUT : br_0_164 
* INOUT : bl_0_165 
* INOUT : br_0_165 
* INOUT : bl_0_166 
* INOUT : br_0_166 
* INOUT : bl_0_167 
* INOUT : br_0_167 
* INOUT : bl_0_168 
* INOUT : br_0_168 
* INOUT : bl_0_169 
* INOUT : br_0_169 
* INOUT : bl_0_170 
* INOUT : br_0_170 
* INOUT : bl_0_171 
* INOUT : br_0_171 
* INOUT : bl_0_172 
* INOUT : br_0_172 
* INOUT : bl_0_173 
* INOUT : br_0_173 
* INOUT : bl_0_174 
* INOUT : br_0_174 
* INOUT : bl_0_175 
* INOUT : br_0_175 
* INOUT : bl_0_176 
* INOUT : br_0_176 
* INOUT : bl_0_177 
* INOUT : br_0_177 
* INOUT : bl_0_178 
* INOUT : br_0_178 
* INOUT : bl_0_179 
* INOUT : br_0_179 
* INOUT : bl_0_180 
* INOUT : br_0_180 
* INOUT : bl_0_181 
* INOUT : br_0_181 
* INOUT : bl_0_182 
* INOUT : br_0_182 
* INOUT : bl_0_183 
* INOUT : br_0_183 
* INOUT : bl_0_184 
* INOUT : br_0_184 
* INOUT : bl_0_185 
* INOUT : br_0_185 
* INOUT : bl_0_186 
* INOUT : br_0_186 
* INOUT : bl_0_187 
* INOUT : br_0_187 
* INOUT : bl_0_188 
* INOUT : br_0_188 
* INOUT : bl_0_189 
* INOUT : br_0_189 
* INOUT : bl_0_190 
* INOUT : br_0_190 
* INOUT : bl_0_191 
* INOUT : br_0_191 
* INOUT : bl_0_192 
* INOUT : br_0_192 
* INOUT : bl_0_193 
* INOUT : br_0_193 
* INOUT : bl_0_194 
* INOUT : br_0_194 
* INOUT : bl_0_195 
* INOUT : br_0_195 
* INOUT : bl_0_196 
* INOUT : br_0_196 
* INOUT : bl_0_197 
* INOUT : br_0_197 
* INOUT : bl_0_198 
* INOUT : br_0_198 
* INOUT : bl_0_199 
* INOUT : br_0_199 
* INOUT : bl_0_200 
* INOUT : br_0_200 
* INOUT : bl_0_201 
* INOUT : br_0_201 
* INOUT : bl_0_202 
* INOUT : br_0_202 
* INOUT : bl_0_203 
* INOUT : br_0_203 
* INOUT : bl_0_204 
* INOUT : br_0_204 
* INOUT : bl_0_205 
* INOUT : br_0_205 
* INOUT : bl_0_206 
* INOUT : br_0_206 
* INOUT : bl_0_207 
* INOUT : br_0_207 
* INOUT : bl_0_208 
* INOUT : br_0_208 
* INOUT : bl_0_209 
* INOUT : br_0_209 
* INOUT : bl_0_210 
* INOUT : br_0_210 
* INOUT : bl_0_211 
* INOUT : br_0_211 
* INOUT : bl_0_212 
* INOUT : br_0_212 
* INOUT : bl_0_213 
* INOUT : br_0_213 
* INOUT : bl_0_214 
* INOUT : br_0_214 
* INOUT : bl_0_215 
* INOUT : br_0_215 
* INOUT : bl_0_216 
* INOUT : br_0_216 
* INOUT : bl_0_217 
* INOUT : br_0_217 
* INOUT : bl_0_218 
* INOUT : br_0_218 
* INOUT : bl_0_219 
* INOUT : br_0_219 
* INOUT : bl_0_220 
* INOUT : br_0_220 
* INOUT : bl_0_221 
* INOUT : br_0_221 
* INOUT : bl_0_222 
* INOUT : br_0_222 
* INOUT : bl_0_223 
* INOUT : br_0_223 
* INOUT : bl_0_224 
* INOUT : br_0_224 
* INOUT : bl_0_225 
* INOUT : br_0_225 
* INOUT : bl_0_226 
* INOUT : br_0_226 
* INOUT : bl_0_227 
* INOUT : br_0_227 
* INOUT : bl_0_228 
* INOUT : br_0_228 
* INOUT : bl_0_229 
* INOUT : br_0_229 
* INOUT : bl_0_230 
* INOUT : br_0_230 
* INOUT : bl_0_231 
* INOUT : br_0_231 
* INOUT : bl_0_232 
* INOUT : br_0_232 
* INOUT : bl_0_233 
* INOUT : br_0_233 
* INOUT : bl_0_234 
* INOUT : br_0_234 
* INOUT : bl_0_235 
* INOUT : br_0_235 
* INOUT : bl_0_236 
* INOUT : br_0_236 
* INOUT : bl_0_237 
* INOUT : br_0_237 
* INOUT : bl_0_238 
* INOUT : br_0_238 
* INOUT : bl_0_239 
* INOUT : br_0_239 
* INOUT : bl_0_240 
* INOUT : br_0_240 
* INOUT : bl_0_241 
* INOUT : br_0_241 
* INOUT : bl_0_242 
* INOUT : br_0_242 
* INOUT : bl_0_243 
* INOUT : br_0_243 
* INOUT : bl_0_244 
* INOUT : br_0_244 
* INOUT : bl_0_245 
* INOUT : br_0_245 
* INOUT : bl_0_246 
* INOUT : br_0_246 
* INOUT : bl_0_247 
* INOUT : br_0_247 
* INOUT : bl_0_248 
* INOUT : br_0_248 
* INOUT : bl_0_249 
* INOUT : br_0_249 
* INOUT : bl_0_250 
* INOUT : br_0_250 
* INOUT : bl_0_251 
* INOUT : br_0_251 
* INOUT : bl_0_252 
* INOUT : br_0_252 
* INOUT : bl_0_253 
* INOUT : br_0_253 
* INOUT : bl_0_254 
* INOUT : br_0_254 
* INOUT : bl_0_255 
* INOUT : br_0_255 
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
* rows: 16 cols: 256
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
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128
+ bl_0_129 br_0_129 bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132
+ br_0_132 bl_0_133 br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135
+ bl_0_136 br_0_136 bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139
+ br_0_139 bl_0_140 br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142
+ bl_0_143 br_0_143 bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146
+ br_0_146 bl_0_147 br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149
+ bl_0_150 br_0_150 bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153
+ br_0_153 bl_0_154 br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156
+ bl_0_157 br_0_157 bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160
+ br_0_160 bl_0_161 br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163
+ bl_0_164 br_0_164 bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167
+ br_0_167 bl_0_168 br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170
+ bl_0_171 br_0_171 bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174
+ br_0_174 bl_0_175 br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177
+ bl_0_178 br_0_178 bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181
+ br_0_181 bl_0_182 br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184
+ bl_0_185 br_0_185 bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188
+ br_0_188 bl_0_189 br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191
+ bl_0_192 br_0_192 bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195
+ br_0_195 bl_0_196 br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198
+ bl_0_199 br_0_199 bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202
+ br_0_202 bl_0_203 br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205
+ bl_0_206 br_0_206 bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209
+ br_0_209 bl_0_210 br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212
+ bl_0_213 br_0_213 bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216
+ br_0_216 bl_0_217 br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219
+ bl_0_220 br_0_220 bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223
+ br_0_223 bl_0_224 br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226
+ bl_0_227 br_0_227 bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230
+ br_0_230 bl_0_231 br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233
+ bl_0_234 br_0_234 bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237
+ br_0_237 bl_0_238 br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240
+ bl_0_241 br_0_241 bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244
+ br_0_244 bl_0_245 br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247
+ bl_0_248 br_0_248 bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251
+ br_0_251 bl_0_252 br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254
+ bl_0_255 br_0_255 rbl_wl_0_0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5
+ wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14
+ wl_0_15 vdd gnd
+ mp3_data_array_replica_bitcell_array
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
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128
+ bl_0_129 br_0_129 bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132
+ br_0_132 bl_0_133 br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135
+ bl_0_136 br_0_136 bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139
+ br_0_139 bl_0_140 br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142
+ bl_0_143 br_0_143 bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146
+ br_0_146 bl_0_147 br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149
+ bl_0_150 br_0_150 bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153
+ br_0_153 bl_0_154 br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156
+ bl_0_157 br_0_157 bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160
+ br_0_160 bl_0_161 br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163
+ bl_0_164 br_0_164 bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167
+ br_0_167 bl_0_168 br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170
+ bl_0_171 br_0_171 bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174
+ br_0_174 bl_0_175 br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177
+ bl_0_178 br_0_178 bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181
+ br_0_181 bl_0_182 br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184
+ bl_0_185 br_0_185 bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188
+ br_0_188 bl_0_189 br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191
+ bl_0_192 br_0_192 bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195
+ br_0_195 bl_0_196 br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198
+ bl_0_199 br_0_199 bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202
+ br_0_202 bl_0_203 br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205
+ bl_0_206 br_0_206 bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209
+ br_0_209 bl_0_210 br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212
+ bl_0_213 br_0_213 bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216
+ br_0_216 bl_0_217 br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219
+ bl_0_220 br_0_220 bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223
+ br_0_223 bl_0_224 br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226
+ bl_0_227 br_0_227 bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230
+ br_0_230 bl_0_231 br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233
+ bl_0_234 br_0_234 bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237
+ br_0_237 bl_0_238 br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240
+ bl_0_241 br_0_241 bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244
+ br_0_244 bl_0_245 br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247
+ bl_0_248 br_0_248 bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251
+ br_0_251 bl_0_252 br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254
+ bl_0_255 br_0_255 gnd vdd gnd
+ mp3_data_array_dummy_array_1
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
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128
+ bl_0_129 br_0_129 bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132
+ br_0_132 bl_0_133 br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135
+ bl_0_136 br_0_136 bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139
+ br_0_139 bl_0_140 br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142
+ bl_0_143 br_0_143 bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146
+ br_0_146 bl_0_147 br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149
+ bl_0_150 br_0_150 bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153
+ br_0_153 bl_0_154 br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156
+ bl_0_157 br_0_157 bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160
+ br_0_160 bl_0_161 br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163
+ bl_0_164 br_0_164 bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167
+ br_0_167 bl_0_168 br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170
+ bl_0_171 br_0_171 bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174
+ br_0_174 bl_0_175 br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177
+ bl_0_178 br_0_178 bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181
+ br_0_181 bl_0_182 br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184
+ bl_0_185 br_0_185 bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188
+ br_0_188 bl_0_189 br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191
+ bl_0_192 br_0_192 bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195
+ br_0_195 bl_0_196 br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198
+ bl_0_199 br_0_199 bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202
+ br_0_202 bl_0_203 br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205
+ bl_0_206 br_0_206 bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209
+ br_0_209 bl_0_210 br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212
+ bl_0_213 br_0_213 bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216
+ br_0_216 bl_0_217 br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219
+ bl_0_220 br_0_220 bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223
+ br_0_223 bl_0_224 br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226
+ bl_0_227 br_0_227 bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230
+ br_0_230 bl_0_231 br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233
+ bl_0_234 br_0_234 bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237
+ br_0_237 bl_0_238 br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240
+ bl_0_241 br_0_241 bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244
+ br_0_244 bl_0_245 br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247
+ bl_0_248 br_0_248 bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251
+ br_0_251 bl_0_252 br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254
+ bl_0_255 br_0_255 gnd vdd gnd
+ mp3_data_array_dummy_array_0
Xdummy_col_left
+ dummy_left_bl_0_0 dummy_left_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd
+ mp3_data_array_dummy_array_2
Xdummy_col_right
+ dummy_right_bl_0_0 dummy_right_br_0_0 gnd rbl_wl_0_0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 gnd vdd gnd
+ mp3_data_array_dummy_array_3
.ENDS mp3_data_array_capped_replica_bitcell_array

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


.SUBCKT mp3_data_array_write_driver_array
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
+ data_127 data_128 data_129 data_130 data_131 data_132 data_133
+ data_134 data_135 data_136 data_137 data_138 data_139 data_140
+ data_141 data_142 data_143 data_144 data_145 data_146 data_147
+ data_148 data_149 data_150 data_151 data_152 data_153 data_154
+ data_155 data_156 data_157 data_158 data_159 data_160 data_161
+ data_162 data_163 data_164 data_165 data_166 data_167 data_168
+ data_169 data_170 data_171 data_172 data_173 data_174 data_175
+ data_176 data_177 data_178 data_179 data_180 data_181 data_182
+ data_183 data_184 data_185 data_186 data_187 data_188 data_189
+ data_190 data_191 data_192 data_193 data_194 data_195 data_196
+ data_197 data_198 data_199 data_200 data_201 data_202 data_203
+ data_204 data_205 data_206 data_207 data_208 data_209 data_210
+ data_211 data_212 data_213 data_214 data_215 data_216 data_217
+ data_218 data_219 data_220 data_221 data_222 data_223 data_224
+ data_225 data_226 data_227 data_228 data_229 data_230 data_231
+ data_232 data_233 data_234 data_235 data_236 data_237 data_238
+ data_239 data_240 data_241 data_242 data_243 data_244 data_245
+ data_246 data_247 data_248 data_249 data_250 data_251 data_252
+ data_253 data_254 data_255 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3
+ bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10
+ br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15
+ bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21
+ br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26
+ bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32
+ br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37
+ bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43
+ br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48
+ bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54
+ br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59
+ bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65
+ br_65 bl_66 br_66 bl_67 br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70
+ bl_71 br_71 bl_72 br_72 bl_73 br_73 bl_74 br_74 bl_75 br_75 bl_76
+ br_76 bl_77 br_77 bl_78 br_78 bl_79 br_79 bl_80 br_80 bl_81 br_81
+ bl_82 br_82 bl_83 br_83 bl_84 br_84 bl_85 br_85 bl_86 br_86 bl_87
+ br_87 bl_88 br_88 bl_89 br_89 bl_90 br_90 bl_91 br_91 bl_92 br_92
+ bl_93 br_93 bl_94 br_94 bl_95 br_95 bl_96 br_96 bl_97 br_97 bl_98
+ br_98 bl_99 br_99 bl_100 br_100 bl_101 br_101 bl_102 br_102 bl_103
+ br_103 bl_104 br_104 bl_105 br_105 bl_106 br_106 bl_107 br_107 bl_108
+ br_108 bl_109 br_109 bl_110 br_110 bl_111 br_111 bl_112 br_112 bl_113
+ br_113 bl_114 br_114 bl_115 br_115 bl_116 br_116 bl_117 br_117 bl_118
+ br_118 bl_119 br_119 bl_120 br_120 bl_121 br_121 bl_122 br_122 bl_123
+ br_123 bl_124 br_124 bl_125 br_125 bl_126 br_126 bl_127 br_127 bl_128
+ br_128 bl_129 br_129 bl_130 br_130 bl_131 br_131 bl_132 br_132 bl_133
+ br_133 bl_134 br_134 bl_135 br_135 bl_136 br_136 bl_137 br_137 bl_138
+ br_138 bl_139 br_139 bl_140 br_140 bl_141 br_141 bl_142 br_142 bl_143
+ br_143 bl_144 br_144 bl_145 br_145 bl_146 br_146 bl_147 br_147 bl_148
+ br_148 bl_149 br_149 bl_150 br_150 bl_151 br_151 bl_152 br_152 bl_153
+ br_153 bl_154 br_154 bl_155 br_155 bl_156 br_156 bl_157 br_157 bl_158
+ br_158 bl_159 br_159 bl_160 br_160 bl_161 br_161 bl_162 br_162 bl_163
+ br_163 bl_164 br_164 bl_165 br_165 bl_166 br_166 bl_167 br_167 bl_168
+ br_168 bl_169 br_169 bl_170 br_170 bl_171 br_171 bl_172 br_172 bl_173
+ br_173 bl_174 br_174 bl_175 br_175 bl_176 br_176 bl_177 br_177 bl_178
+ br_178 bl_179 br_179 bl_180 br_180 bl_181 br_181 bl_182 br_182 bl_183
+ br_183 bl_184 br_184 bl_185 br_185 bl_186 br_186 bl_187 br_187 bl_188
+ br_188 bl_189 br_189 bl_190 br_190 bl_191 br_191 bl_192 br_192 bl_193
+ br_193 bl_194 br_194 bl_195 br_195 bl_196 br_196 bl_197 br_197 bl_198
+ br_198 bl_199 br_199 bl_200 br_200 bl_201 br_201 bl_202 br_202 bl_203
+ br_203 bl_204 br_204 bl_205 br_205 bl_206 br_206 bl_207 br_207 bl_208
+ br_208 bl_209 br_209 bl_210 br_210 bl_211 br_211 bl_212 br_212 bl_213
+ br_213 bl_214 br_214 bl_215 br_215 bl_216 br_216 bl_217 br_217 bl_218
+ br_218 bl_219 br_219 bl_220 br_220 bl_221 br_221 bl_222 br_222 bl_223
+ br_223 bl_224 br_224 bl_225 br_225 bl_226 br_226 bl_227 br_227 bl_228
+ br_228 bl_229 br_229 bl_230 br_230 bl_231 br_231 bl_232 br_232 bl_233
+ br_233 bl_234 br_234 bl_235 br_235 bl_236 br_236 bl_237 br_237 bl_238
+ br_238 bl_239 br_239 bl_240 br_240 bl_241 br_241 bl_242 br_242 bl_243
+ br_243 bl_244 br_244 bl_245 br_245 bl_246 br_246 bl_247 br_247 bl_248
+ br_248 bl_249 br_249 bl_250 br_250 bl_251 br_251 bl_252 br_252 bl_253
+ br_253 bl_254 br_254 bl_255 br_255 en_0 en_1 en_2 en_3 en_4 en_5 en_6
+ en_7 en_8 en_9 en_10 en_11 en_12 en_13 en_14 en_15 en_16 en_17 en_18
+ en_19 en_20 en_21 en_22 en_23 en_24 en_25 en_26 en_27 en_28 en_29
+ en_30 en_31 vdd gnd
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
* INPUT : data_128 
* INPUT : data_129 
* INPUT : data_130 
* INPUT : data_131 
* INPUT : data_132 
* INPUT : data_133 
* INPUT : data_134 
* INPUT : data_135 
* INPUT : data_136 
* INPUT : data_137 
* INPUT : data_138 
* INPUT : data_139 
* INPUT : data_140 
* INPUT : data_141 
* INPUT : data_142 
* INPUT : data_143 
* INPUT : data_144 
* INPUT : data_145 
* INPUT : data_146 
* INPUT : data_147 
* INPUT : data_148 
* INPUT : data_149 
* INPUT : data_150 
* INPUT : data_151 
* INPUT : data_152 
* INPUT : data_153 
* INPUT : data_154 
* INPUT : data_155 
* INPUT : data_156 
* INPUT : data_157 
* INPUT : data_158 
* INPUT : data_159 
* INPUT : data_160 
* INPUT : data_161 
* INPUT : data_162 
* INPUT : data_163 
* INPUT : data_164 
* INPUT : data_165 
* INPUT : data_166 
* INPUT : data_167 
* INPUT : data_168 
* INPUT : data_169 
* INPUT : data_170 
* INPUT : data_171 
* INPUT : data_172 
* INPUT : data_173 
* INPUT : data_174 
* INPUT : data_175 
* INPUT : data_176 
* INPUT : data_177 
* INPUT : data_178 
* INPUT : data_179 
* INPUT : data_180 
* INPUT : data_181 
* INPUT : data_182 
* INPUT : data_183 
* INPUT : data_184 
* INPUT : data_185 
* INPUT : data_186 
* INPUT : data_187 
* INPUT : data_188 
* INPUT : data_189 
* INPUT : data_190 
* INPUT : data_191 
* INPUT : data_192 
* INPUT : data_193 
* INPUT : data_194 
* INPUT : data_195 
* INPUT : data_196 
* INPUT : data_197 
* INPUT : data_198 
* INPUT : data_199 
* INPUT : data_200 
* INPUT : data_201 
* INPUT : data_202 
* INPUT : data_203 
* INPUT : data_204 
* INPUT : data_205 
* INPUT : data_206 
* INPUT : data_207 
* INPUT : data_208 
* INPUT : data_209 
* INPUT : data_210 
* INPUT : data_211 
* INPUT : data_212 
* INPUT : data_213 
* INPUT : data_214 
* INPUT : data_215 
* INPUT : data_216 
* INPUT : data_217 
* INPUT : data_218 
* INPUT : data_219 
* INPUT : data_220 
* INPUT : data_221 
* INPUT : data_222 
* INPUT : data_223 
* INPUT : data_224 
* INPUT : data_225 
* INPUT : data_226 
* INPUT : data_227 
* INPUT : data_228 
* INPUT : data_229 
* INPUT : data_230 
* INPUT : data_231 
* INPUT : data_232 
* INPUT : data_233 
* INPUT : data_234 
* INPUT : data_235 
* INPUT : data_236 
* INPUT : data_237 
* INPUT : data_238 
* INPUT : data_239 
* INPUT : data_240 
* INPUT : data_241 
* INPUT : data_242 
* INPUT : data_243 
* INPUT : data_244 
* INPUT : data_245 
* INPUT : data_246 
* INPUT : data_247 
* INPUT : data_248 
* INPUT : data_249 
* INPUT : data_250 
* INPUT : data_251 
* INPUT : data_252 
* INPUT : data_253 
* INPUT : data_254 
* INPUT : data_255 
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
* OUTPUT: bl_129 
* OUTPUT: br_129 
* OUTPUT: bl_130 
* OUTPUT: br_130 
* OUTPUT: bl_131 
* OUTPUT: br_131 
* OUTPUT: bl_132 
* OUTPUT: br_132 
* OUTPUT: bl_133 
* OUTPUT: br_133 
* OUTPUT: bl_134 
* OUTPUT: br_134 
* OUTPUT: bl_135 
* OUTPUT: br_135 
* OUTPUT: bl_136 
* OUTPUT: br_136 
* OUTPUT: bl_137 
* OUTPUT: br_137 
* OUTPUT: bl_138 
* OUTPUT: br_138 
* OUTPUT: bl_139 
* OUTPUT: br_139 
* OUTPUT: bl_140 
* OUTPUT: br_140 
* OUTPUT: bl_141 
* OUTPUT: br_141 
* OUTPUT: bl_142 
* OUTPUT: br_142 
* OUTPUT: bl_143 
* OUTPUT: br_143 
* OUTPUT: bl_144 
* OUTPUT: br_144 
* OUTPUT: bl_145 
* OUTPUT: br_145 
* OUTPUT: bl_146 
* OUTPUT: br_146 
* OUTPUT: bl_147 
* OUTPUT: br_147 
* OUTPUT: bl_148 
* OUTPUT: br_148 
* OUTPUT: bl_149 
* OUTPUT: br_149 
* OUTPUT: bl_150 
* OUTPUT: br_150 
* OUTPUT: bl_151 
* OUTPUT: br_151 
* OUTPUT: bl_152 
* OUTPUT: br_152 
* OUTPUT: bl_153 
* OUTPUT: br_153 
* OUTPUT: bl_154 
* OUTPUT: br_154 
* OUTPUT: bl_155 
* OUTPUT: br_155 
* OUTPUT: bl_156 
* OUTPUT: br_156 
* OUTPUT: bl_157 
* OUTPUT: br_157 
* OUTPUT: bl_158 
* OUTPUT: br_158 
* OUTPUT: bl_159 
* OUTPUT: br_159 
* OUTPUT: bl_160 
* OUTPUT: br_160 
* OUTPUT: bl_161 
* OUTPUT: br_161 
* OUTPUT: bl_162 
* OUTPUT: br_162 
* OUTPUT: bl_163 
* OUTPUT: br_163 
* OUTPUT: bl_164 
* OUTPUT: br_164 
* OUTPUT: bl_165 
* OUTPUT: br_165 
* OUTPUT: bl_166 
* OUTPUT: br_166 
* OUTPUT: bl_167 
* OUTPUT: br_167 
* OUTPUT: bl_168 
* OUTPUT: br_168 
* OUTPUT: bl_169 
* OUTPUT: br_169 
* OUTPUT: bl_170 
* OUTPUT: br_170 
* OUTPUT: bl_171 
* OUTPUT: br_171 
* OUTPUT: bl_172 
* OUTPUT: br_172 
* OUTPUT: bl_173 
* OUTPUT: br_173 
* OUTPUT: bl_174 
* OUTPUT: br_174 
* OUTPUT: bl_175 
* OUTPUT: br_175 
* OUTPUT: bl_176 
* OUTPUT: br_176 
* OUTPUT: bl_177 
* OUTPUT: br_177 
* OUTPUT: bl_178 
* OUTPUT: br_178 
* OUTPUT: bl_179 
* OUTPUT: br_179 
* OUTPUT: bl_180 
* OUTPUT: br_180 
* OUTPUT: bl_181 
* OUTPUT: br_181 
* OUTPUT: bl_182 
* OUTPUT: br_182 
* OUTPUT: bl_183 
* OUTPUT: br_183 
* OUTPUT: bl_184 
* OUTPUT: br_184 
* OUTPUT: bl_185 
* OUTPUT: br_185 
* OUTPUT: bl_186 
* OUTPUT: br_186 
* OUTPUT: bl_187 
* OUTPUT: br_187 
* OUTPUT: bl_188 
* OUTPUT: br_188 
* OUTPUT: bl_189 
* OUTPUT: br_189 
* OUTPUT: bl_190 
* OUTPUT: br_190 
* OUTPUT: bl_191 
* OUTPUT: br_191 
* OUTPUT: bl_192 
* OUTPUT: br_192 
* OUTPUT: bl_193 
* OUTPUT: br_193 
* OUTPUT: bl_194 
* OUTPUT: br_194 
* OUTPUT: bl_195 
* OUTPUT: br_195 
* OUTPUT: bl_196 
* OUTPUT: br_196 
* OUTPUT: bl_197 
* OUTPUT: br_197 
* OUTPUT: bl_198 
* OUTPUT: br_198 
* OUTPUT: bl_199 
* OUTPUT: br_199 
* OUTPUT: bl_200 
* OUTPUT: br_200 
* OUTPUT: bl_201 
* OUTPUT: br_201 
* OUTPUT: bl_202 
* OUTPUT: br_202 
* OUTPUT: bl_203 
* OUTPUT: br_203 
* OUTPUT: bl_204 
* OUTPUT: br_204 
* OUTPUT: bl_205 
* OUTPUT: br_205 
* OUTPUT: bl_206 
* OUTPUT: br_206 
* OUTPUT: bl_207 
* OUTPUT: br_207 
* OUTPUT: bl_208 
* OUTPUT: br_208 
* OUTPUT: bl_209 
* OUTPUT: br_209 
* OUTPUT: bl_210 
* OUTPUT: br_210 
* OUTPUT: bl_211 
* OUTPUT: br_211 
* OUTPUT: bl_212 
* OUTPUT: br_212 
* OUTPUT: bl_213 
* OUTPUT: br_213 
* OUTPUT: bl_214 
* OUTPUT: br_214 
* OUTPUT: bl_215 
* OUTPUT: br_215 
* OUTPUT: bl_216 
* OUTPUT: br_216 
* OUTPUT: bl_217 
* OUTPUT: br_217 
* OUTPUT: bl_218 
* OUTPUT: br_218 
* OUTPUT: bl_219 
* OUTPUT: br_219 
* OUTPUT: bl_220 
* OUTPUT: br_220 
* OUTPUT: bl_221 
* OUTPUT: br_221 
* OUTPUT: bl_222 
* OUTPUT: br_222 
* OUTPUT: bl_223 
* OUTPUT: br_223 
* OUTPUT: bl_224 
* OUTPUT: br_224 
* OUTPUT: bl_225 
* OUTPUT: br_225 
* OUTPUT: bl_226 
* OUTPUT: br_226 
* OUTPUT: bl_227 
* OUTPUT: br_227 
* OUTPUT: bl_228 
* OUTPUT: br_228 
* OUTPUT: bl_229 
* OUTPUT: br_229 
* OUTPUT: bl_230 
* OUTPUT: br_230 
* OUTPUT: bl_231 
* OUTPUT: br_231 
* OUTPUT: bl_232 
* OUTPUT: br_232 
* OUTPUT: bl_233 
* OUTPUT: br_233 
* OUTPUT: bl_234 
* OUTPUT: br_234 
* OUTPUT: bl_235 
* OUTPUT: br_235 
* OUTPUT: bl_236 
* OUTPUT: br_236 
* OUTPUT: bl_237 
* OUTPUT: br_237 
* OUTPUT: bl_238 
* OUTPUT: br_238 
* OUTPUT: bl_239 
* OUTPUT: br_239 
* OUTPUT: bl_240 
* OUTPUT: br_240 
* OUTPUT: bl_241 
* OUTPUT: br_241 
* OUTPUT: bl_242 
* OUTPUT: br_242 
* OUTPUT: bl_243 
* OUTPUT: br_243 
* OUTPUT: bl_244 
* OUTPUT: br_244 
* OUTPUT: bl_245 
* OUTPUT: br_245 
* OUTPUT: bl_246 
* OUTPUT: br_246 
* OUTPUT: bl_247 
* OUTPUT: br_247 
* OUTPUT: bl_248 
* OUTPUT: br_248 
* OUTPUT: bl_249 
* OUTPUT: br_249 
* OUTPUT: bl_250 
* OUTPUT: br_250 
* OUTPUT: bl_251 
* OUTPUT: br_251 
* OUTPUT: bl_252 
* OUTPUT: br_252 
* OUTPUT: bl_253 
* OUTPUT: br_253 
* OUTPUT: bl_254 
* OUTPUT: br_254 
* OUTPUT: bl_255 
* OUTPUT: br_255 
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
* INPUT : en_16 
* INPUT : en_17 
* INPUT : en_18 
* INPUT : en_19 
* INPUT : en_20 
* INPUT : en_21 
* INPUT : en_22 
* INPUT : en_23 
* INPUT : en_24 
* INPUT : en_25 
* INPUT : en_26 
* INPUT : en_27 
* INPUT : en_28 
* INPUT : en_29 
* INPUT : en_30 
* INPUT : en_31 
* POWER : vdd 
* GROUND: gnd 
* columns: 256
* word_size 256
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
Xwrite_driver128
+ data_128 bl_128 br_128 en_16 vdd gnd
+ write_driver
Xwrite_driver129
+ data_129 bl_129 br_129 en_16 vdd gnd
+ write_driver
Xwrite_driver130
+ data_130 bl_130 br_130 en_16 vdd gnd
+ write_driver
Xwrite_driver131
+ data_131 bl_131 br_131 en_16 vdd gnd
+ write_driver
Xwrite_driver132
+ data_132 bl_132 br_132 en_16 vdd gnd
+ write_driver
Xwrite_driver133
+ data_133 bl_133 br_133 en_16 vdd gnd
+ write_driver
Xwrite_driver134
+ data_134 bl_134 br_134 en_16 vdd gnd
+ write_driver
Xwrite_driver135
+ data_135 bl_135 br_135 en_16 vdd gnd
+ write_driver
Xwrite_driver136
+ data_136 bl_136 br_136 en_17 vdd gnd
+ write_driver
Xwrite_driver137
+ data_137 bl_137 br_137 en_17 vdd gnd
+ write_driver
Xwrite_driver138
+ data_138 bl_138 br_138 en_17 vdd gnd
+ write_driver
Xwrite_driver139
+ data_139 bl_139 br_139 en_17 vdd gnd
+ write_driver
Xwrite_driver140
+ data_140 bl_140 br_140 en_17 vdd gnd
+ write_driver
Xwrite_driver141
+ data_141 bl_141 br_141 en_17 vdd gnd
+ write_driver
Xwrite_driver142
+ data_142 bl_142 br_142 en_17 vdd gnd
+ write_driver
Xwrite_driver143
+ data_143 bl_143 br_143 en_17 vdd gnd
+ write_driver
Xwrite_driver144
+ data_144 bl_144 br_144 en_18 vdd gnd
+ write_driver
Xwrite_driver145
+ data_145 bl_145 br_145 en_18 vdd gnd
+ write_driver
Xwrite_driver146
+ data_146 bl_146 br_146 en_18 vdd gnd
+ write_driver
Xwrite_driver147
+ data_147 bl_147 br_147 en_18 vdd gnd
+ write_driver
Xwrite_driver148
+ data_148 bl_148 br_148 en_18 vdd gnd
+ write_driver
Xwrite_driver149
+ data_149 bl_149 br_149 en_18 vdd gnd
+ write_driver
Xwrite_driver150
+ data_150 bl_150 br_150 en_18 vdd gnd
+ write_driver
Xwrite_driver151
+ data_151 bl_151 br_151 en_18 vdd gnd
+ write_driver
Xwrite_driver152
+ data_152 bl_152 br_152 en_19 vdd gnd
+ write_driver
Xwrite_driver153
+ data_153 bl_153 br_153 en_19 vdd gnd
+ write_driver
Xwrite_driver154
+ data_154 bl_154 br_154 en_19 vdd gnd
+ write_driver
Xwrite_driver155
+ data_155 bl_155 br_155 en_19 vdd gnd
+ write_driver
Xwrite_driver156
+ data_156 bl_156 br_156 en_19 vdd gnd
+ write_driver
Xwrite_driver157
+ data_157 bl_157 br_157 en_19 vdd gnd
+ write_driver
Xwrite_driver158
+ data_158 bl_158 br_158 en_19 vdd gnd
+ write_driver
Xwrite_driver159
+ data_159 bl_159 br_159 en_19 vdd gnd
+ write_driver
Xwrite_driver160
+ data_160 bl_160 br_160 en_20 vdd gnd
+ write_driver
Xwrite_driver161
+ data_161 bl_161 br_161 en_20 vdd gnd
+ write_driver
Xwrite_driver162
+ data_162 bl_162 br_162 en_20 vdd gnd
+ write_driver
Xwrite_driver163
+ data_163 bl_163 br_163 en_20 vdd gnd
+ write_driver
Xwrite_driver164
+ data_164 bl_164 br_164 en_20 vdd gnd
+ write_driver
Xwrite_driver165
+ data_165 bl_165 br_165 en_20 vdd gnd
+ write_driver
Xwrite_driver166
+ data_166 bl_166 br_166 en_20 vdd gnd
+ write_driver
Xwrite_driver167
+ data_167 bl_167 br_167 en_20 vdd gnd
+ write_driver
Xwrite_driver168
+ data_168 bl_168 br_168 en_21 vdd gnd
+ write_driver
Xwrite_driver169
+ data_169 bl_169 br_169 en_21 vdd gnd
+ write_driver
Xwrite_driver170
+ data_170 bl_170 br_170 en_21 vdd gnd
+ write_driver
Xwrite_driver171
+ data_171 bl_171 br_171 en_21 vdd gnd
+ write_driver
Xwrite_driver172
+ data_172 bl_172 br_172 en_21 vdd gnd
+ write_driver
Xwrite_driver173
+ data_173 bl_173 br_173 en_21 vdd gnd
+ write_driver
Xwrite_driver174
+ data_174 bl_174 br_174 en_21 vdd gnd
+ write_driver
Xwrite_driver175
+ data_175 bl_175 br_175 en_21 vdd gnd
+ write_driver
Xwrite_driver176
+ data_176 bl_176 br_176 en_22 vdd gnd
+ write_driver
Xwrite_driver177
+ data_177 bl_177 br_177 en_22 vdd gnd
+ write_driver
Xwrite_driver178
+ data_178 bl_178 br_178 en_22 vdd gnd
+ write_driver
Xwrite_driver179
+ data_179 bl_179 br_179 en_22 vdd gnd
+ write_driver
Xwrite_driver180
+ data_180 bl_180 br_180 en_22 vdd gnd
+ write_driver
Xwrite_driver181
+ data_181 bl_181 br_181 en_22 vdd gnd
+ write_driver
Xwrite_driver182
+ data_182 bl_182 br_182 en_22 vdd gnd
+ write_driver
Xwrite_driver183
+ data_183 bl_183 br_183 en_22 vdd gnd
+ write_driver
Xwrite_driver184
+ data_184 bl_184 br_184 en_23 vdd gnd
+ write_driver
Xwrite_driver185
+ data_185 bl_185 br_185 en_23 vdd gnd
+ write_driver
Xwrite_driver186
+ data_186 bl_186 br_186 en_23 vdd gnd
+ write_driver
Xwrite_driver187
+ data_187 bl_187 br_187 en_23 vdd gnd
+ write_driver
Xwrite_driver188
+ data_188 bl_188 br_188 en_23 vdd gnd
+ write_driver
Xwrite_driver189
+ data_189 bl_189 br_189 en_23 vdd gnd
+ write_driver
Xwrite_driver190
+ data_190 bl_190 br_190 en_23 vdd gnd
+ write_driver
Xwrite_driver191
+ data_191 bl_191 br_191 en_23 vdd gnd
+ write_driver
Xwrite_driver192
+ data_192 bl_192 br_192 en_24 vdd gnd
+ write_driver
Xwrite_driver193
+ data_193 bl_193 br_193 en_24 vdd gnd
+ write_driver
Xwrite_driver194
+ data_194 bl_194 br_194 en_24 vdd gnd
+ write_driver
Xwrite_driver195
+ data_195 bl_195 br_195 en_24 vdd gnd
+ write_driver
Xwrite_driver196
+ data_196 bl_196 br_196 en_24 vdd gnd
+ write_driver
Xwrite_driver197
+ data_197 bl_197 br_197 en_24 vdd gnd
+ write_driver
Xwrite_driver198
+ data_198 bl_198 br_198 en_24 vdd gnd
+ write_driver
Xwrite_driver199
+ data_199 bl_199 br_199 en_24 vdd gnd
+ write_driver
Xwrite_driver200
+ data_200 bl_200 br_200 en_25 vdd gnd
+ write_driver
Xwrite_driver201
+ data_201 bl_201 br_201 en_25 vdd gnd
+ write_driver
Xwrite_driver202
+ data_202 bl_202 br_202 en_25 vdd gnd
+ write_driver
Xwrite_driver203
+ data_203 bl_203 br_203 en_25 vdd gnd
+ write_driver
Xwrite_driver204
+ data_204 bl_204 br_204 en_25 vdd gnd
+ write_driver
Xwrite_driver205
+ data_205 bl_205 br_205 en_25 vdd gnd
+ write_driver
Xwrite_driver206
+ data_206 bl_206 br_206 en_25 vdd gnd
+ write_driver
Xwrite_driver207
+ data_207 bl_207 br_207 en_25 vdd gnd
+ write_driver
Xwrite_driver208
+ data_208 bl_208 br_208 en_26 vdd gnd
+ write_driver
Xwrite_driver209
+ data_209 bl_209 br_209 en_26 vdd gnd
+ write_driver
Xwrite_driver210
+ data_210 bl_210 br_210 en_26 vdd gnd
+ write_driver
Xwrite_driver211
+ data_211 bl_211 br_211 en_26 vdd gnd
+ write_driver
Xwrite_driver212
+ data_212 bl_212 br_212 en_26 vdd gnd
+ write_driver
Xwrite_driver213
+ data_213 bl_213 br_213 en_26 vdd gnd
+ write_driver
Xwrite_driver214
+ data_214 bl_214 br_214 en_26 vdd gnd
+ write_driver
Xwrite_driver215
+ data_215 bl_215 br_215 en_26 vdd gnd
+ write_driver
Xwrite_driver216
+ data_216 bl_216 br_216 en_27 vdd gnd
+ write_driver
Xwrite_driver217
+ data_217 bl_217 br_217 en_27 vdd gnd
+ write_driver
Xwrite_driver218
+ data_218 bl_218 br_218 en_27 vdd gnd
+ write_driver
Xwrite_driver219
+ data_219 bl_219 br_219 en_27 vdd gnd
+ write_driver
Xwrite_driver220
+ data_220 bl_220 br_220 en_27 vdd gnd
+ write_driver
Xwrite_driver221
+ data_221 bl_221 br_221 en_27 vdd gnd
+ write_driver
Xwrite_driver222
+ data_222 bl_222 br_222 en_27 vdd gnd
+ write_driver
Xwrite_driver223
+ data_223 bl_223 br_223 en_27 vdd gnd
+ write_driver
Xwrite_driver224
+ data_224 bl_224 br_224 en_28 vdd gnd
+ write_driver
Xwrite_driver225
+ data_225 bl_225 br_225 en_28 vdd gnd
+ write_driver
Xwrite_driver226
+ data_226 bl_226 br_226 en_28 vdd gnd
+ write_driver
Xwrite_driver227
+ data_227 bl_227 br_227 en_28 vdd gnd
+ write_driver
Xwrite_driver228
+ data_228 bl_228 br_228 en_28 vdd gnd
+ write_driver
Xwrite_driver229
+ data_229 bl_229 br_229 en_28 vdd gnd
+ write_driver
Xwrite_driver230
+ data_230 bl_230 br_230 en_28 vdd gnd
+ write_driver
Xwrite_driver231
+ data_231 bl_231 br_231 en_28 vdd gnd
+ write_driver
Xwrite_driver232
+ data_232 bl_232 br_232 en_29 vdd gnd
+ write_driver
Xwrite_driver233
+ data_233 bl_233 br_233 en_29 vdd gnd
+ write_driver
Xwrite_driver234
+ data_234 bl_234 br_234 en_29 vdd gnd
+ write_driver
Xwrite_driver235
+ data_235 bl_235 br_235 en_29 vdd gnd
+ write_driver
Xwrite_driver236
+ data_236 bl_236 br_236 en_29 vdd gnd
+ write_driver
Xwrite_driver237
+ data_237 bl_237 br_237 en_29 vdd gnd
+ write_driver
Xwrite_driver238
+ data_238 bl_238 br_238 en_29 vdd gnd
+ write_driver
Xwrite_driver239
+ data_239 bl_239 br_239 en_29 vdd gnd
+ write_driver
Xwrite_driver240
+ data_240 bl_240 br_240 en_30 vdd gnd
+ write_driver
Xwrite_driver241
+ data_241 bl_241 br_241 en_30 vdd gnd
+ write_driver
Xwrite_driver242
+ data_242 bl_242 br_242 en_30 vdd gnd
+ write_driver
Xwrite_driver243
+ data_243 bl_243 br_243 en_30 vdd gnd
+ write_driver
Xwrite_driver244
+ data_244 bl_244 br_244 en_30 vdd gnd
+ write_driver
Xwrite_driver245
+ data_245 bl_245 br_245 en_30 vdd gnd
+ write_driver
Xwrite_driver246
+ data_246 bl_246 br_246 en_30 vdd gnd
+ write_driver
Xwrite_driver247
+ data_247 bl_247 br_247 en_30 vdd gnd
+ write_driver
Xwrite_driver248
+ data_248 bl_248 br_248 en_31 vdd gnd
+ write_driver
Xwrite_driver249
+ data_249 bl_249 br_249 en_31 vdd gnd
+ write_driver
Xwrite_driver250
+ data_250 bl_250 br_250 en_31 vdd gnd
+ write_driver
Xwrite_driver251
+ data_251 bl_251 br_251 en_31 vdd gnd
+ write_driver
Xwrite_driver252
+ data_252 bl_252 br_252 en_31 vdd gnd
+ write_driver
Xwrite_driver253
+ data_253 bl_253 br_253 en_31 vdd gnd
+ write_driver
Xwrite_driver254
+ data_254 bl_254 br_254 en_31 vdd gnd
+ write_driver
Xwrite_driver255
+ data_255 bl_255 br_255 en_31 vdd gnd
+ write_driver
.ENDS mp3_data_array_write_driver_array

.SUBCKT mp3_data_array_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos1 bl en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos2 br en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_data_array_precharge_0

.SUBCKT mp3_data_array_precharge_array
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
+ bl_126 br_126 bl_127 br_127 bl_128 br_128 bl_129 br_129 bl_130 br_130
+ bl_131 br_131 bl_132 br_132 bl_133 br_133 bl_134 br_134 bl_135 br_135
+ bl_136 br_136 bl_137 br_137 bl_138 br_138 bl_139 br_139 bl_140 br_140
+ bl_141 br_141 bl_142 br_142 bl_143 br_143 bl_144 br_144 bl_145 br_145
+ bl_146 br_146 bl_147 br_147 bl_148 br_148 bl_149 br_149 bl_150 br_150
+ bl_151 br_151 bl_152 br_152 bl_153 br_153 bl_154 br_154 bl_155 br_155
+ bl_156 br_156 bl_157 br_157 bl_158 br_158 bl_159 br_159 bl_160 br_160
+ bl_161 br_161 bl_162 br_162 bl_163 br_163 bl_164 br_164 bl_165 br_165
+ bl_166 br_166 bl_167 br_167 bl_168 br_168 bl_169 br_169 bl_170 br_170
+ bl_171 br_171 bl_172 br_172 bl_173 br_173 bl_174 br_174 bl_175 br_175
+ bl_176 br_176 bl_177 br_177 bl_178 br_178 bl_179 br_179 bl_180 br_180
+ bl_181 br_181 bl_182 br_182 bl_183 br_183 bl_184 br_184 bl_185 br_185
+ bl_186 br_186 bl_187 br_187 bl_188 br_188 bl_189 br_189 bl_190 br_190
+ bl_191 br_191 bl_192 br_192 bl_193 br_193 bl_194 br_194 bl_195 br_195
+ bl_196 br_196 bl_197 br_197 bl_198 br_198 bl_199 br_199 bl_200 br_200
+ bl_201 br_201 bl_202 br_202 bl_203 br_203 bl_204 br_204 bl_205 br_205
+ bl_206 br_206 bl_207 br_207 bl_208 br_208 bl_209 br_209 bl_210 br_210
+ bl_211 br_211 bl_212 br_212 bl_213 br_213 bl_214 br_214 bl_215 br_215
+ bl_216 br_216 bl_217 br_217 bl_218 br_218 bl_219 br_219 bl_220 br_220
+ bl_221 br_221 bl_222 br_222 bl_223 br_223 bl_224 br_224 bl_225 br_225
+ bl_226 br_226 bl_227 br_227 bl_228 br_228 bl_229 br_229 bl_230 br_230
+ bl_231 br_231 bl_232 br_232 bl_233 br_233 bl_234 br_234 bl_235 br_235
+ bl_236 br_236 bl_237 br_237 bl_238 br_238 bl_239 br_239 bl_240 br_240
+ bl_241 br_241 bl_242 br_242 bl_243 br_243 bl_244 br_244 bl_245 br_245
+ bl_246 br_246 bl_247 br_247 bl_248 br_248 bl_249 br_249 bl_250 br_250
+ bl_251 br_251 bl_252 br_252 bl_253 br_253 bl_254 br_254 bl_255 br_255
+ bl_256 br_256 en_bar vdd
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
* OUTPUT: bl_129 
* OUTPUT: br_129 
* OUTPUT: bl_130 
* OUTPUT: br_130 
* OUTPUT: bl_131 
* OUTPUT: br_131 
* OUTPUT: bl_132 
* OUTPUT: br_132 
* OUTPUT: bl_133 
* OUTPUT: br_133 
* OUTPUT: bl_134 
* OUTPUT: br_134 
* OUTPUT: bl_135 
* OUTPUT: br_135 
* OUTPUT: bl_136 
* OUTPUT: br_136 
* OUTPUT: bl_137 
* OUTPUT: br_137 
* OUTPUT: bl_138 
* OUTPUT: br_138 
* OUTPUT: bl_139 
* OUTPUT: br_139 
* OUTPUT: bl_140 
* OUTPUT: br_140 
* OUTPUT: bl_141 
* OUTPUT: br_141 
* OUTPUT: bl_142 
* OUTPUT: br_142 
* OUTPUT: bl_143 
* OUTPUT: br_143 
* OUTPUT: bl_144 
* OUTPUT: br_144 
* OUTPUT: bl_145 
* OUTPUT: br_145 
* OUTPUT: bl_146 
* OUTPUT: br_146 
* OUTPUT: bl_147 
* OUTPUT: br_147 
* OUTPUT: bl_148 
* OUTPUT: br_148 
* OUTPUT: bl_149 
* OUTPUT: br_149 
* OUTPUT: bl_150 
* OUTPUT: br_150 
* OUTPUT: bl_151 
* OUTPUT: br_151 
* OUTPUT: bl_152 
* OUTPUT: br_152 
* OUTPUT: bl_153 
* OUTPUT: br_153 
* OUTPUT: bl_154 
* OUTPUT: br_154 
* OUTPUT: bl_155 
* OUTPUT: br_155 
* OUTPUT: bl_156 
* OUTPUT: br_156 
* OUTPUT: bl_157 
* OUTPUT: br_157 
* OUTPUT: bl_158 
* OUTPUT: br_158 
* OUTPUT: bl_159 
* OUTPUT: br_159 
* OUTPUT: bl_160 
* OUTPUT: br_160 
* OUTPUT: bl_161 
* OUTPUT: br_161 
* OUTPUT: bl_162 
* OUTPUT: br_162 
* OUTPUT: bl_163 
* OUTPUT: br_163 
* OUTPUT: bl_164 
* OUTPUT: br_164 
* OUTPUT: bl_165 
* OUTPUT: br_165 
* OUTPUT: bl_166 
* OUTPUT: br_166 
* OUTPUT: bl_167 
* OUTPUT: br_167 
* OUTPUT: bl_168 
* OUTPUT: br_168 
* OUTPUT: bl_169 
* OUTPUT: br_169 
* OUTPUT: bl_170 
* OUTPUT: br_170 
* OUTPUT: bl_171 
* OUTPUT: br_171 
* OUTPUT: bl_172 
* OUTPUT: br_172 
* OUTPUT: bl_173 
* OUTPUT: br_173 
* OUTPUT: bl_174 
* OUTPUT: br_174 
* OUTPUT: bl_175 
* OUTPUT: br_175 
* OUTPUT: bl_176 
* OUTPUT: br_176 
* OUTPUT: bl_177 
* OUTPUT: br_177 
* OUTPUT: bl_178 
* OUTPUT: br_178 
* OUTPUT: bl_179 
* OUTPUT: br_179 
* OUTPUT: bl_180 
* OUTPUT: br_180 
* OUTPUT: bl_181 
* OUTPUT: br_181 
* OUTPUT: bl_182 
* OUTPUT: br_182 
* OUTPUT: bl_183 
* OUTPUT: br_183 
* OUTPUT: bl_184 
* OUTPUT: br_184 
* OUTPUT: bl_185 
* OUTPUT: br_185 
* OUTPUT: bl_186 
* OUTPUT: br_186 
* OUTPUT: bl_187 
* OUTPUT: br_187 
* OUTPUT: bl_188 
* OUTPUT: br_188 
* OUTPUT: bl_189 
* OUTPUT: br_189 
* OUTPUT: bl_190 
* OUTPUT: br_190 
* OUTPUT: bl_191 
* OUTPUT: br_191 
* OUTPUT: bl_192 
* OUTPUT: br_192 
* OUTPUT: bl_193 
* OUTPUT: br_193 
* OUTPUT: bl_194 
* OUTPUT: br_194 
* OUTPUT: bl_195 
* OUTPUT: br_195 
* OUTPUT: bl_196 
* OUTPUT: br_196 
* OUTPUT: bl_197 
* OUTPUT: br_197 
* OUTPUT: bl_198 
* OUTPUT: br_198 
* OUTPUT: bl_199 
* OUTPUT: br_199 
* OUTPUT: bl_200 
* OUTPUT: br_200 
* OUTPUT: bl_201 
* OUTPUT: br_201 
* OUTPUT: bl_202 
* OUTPUT: br_202 
* OUTPUT: bl_203 
* OUTPUT: br_203 
* OUTPUT: bl_204 
* OUTPUT: br_204 
* OUTPUT: bl_205 
* OUTPUT: br_205 
* OUTPUT: bl_206 
* OUTPUT: br_206 
* OUTPUT: bl_207 
* OUTPUT: br_207 
* OUTPUT: bl_208 
* OUTPUT: br_208 
* OUTPUT: bl_209 
* OUTPUT: br_209 
* OUTPUT: bl_210 
* OUTPUT: br_210 
* OUTPUT: bl_211 
* OUTPUT: br_211 
* OUTPUT: bl_212 
* OUTPUT: br_212 
* OUTPUT: bl_213 
* OUTPUT: br_213 
* OUTPUT: bl_214 
* OUTPUT: br_214 
* OUTPUT: bl_215 
* OUTPUT: br_215 
* OUTPUT: bl_216 
* OUTPUT: br_216 
* OUTPUT: bl_217 
* OUTPUT: br_217 
* OUTPUT: bl_218 
* OUTPUT: br_218 
* OUTPUT: bl_219 
* OUTPUT: br_219 
* OUTPUT: bl_220 
* OUTPUT: br_220 
* OUTPUT: bl_221 
* OUTPUT: br_221 
* OUTPUT: bl_222 
* OUTPUT: br_222 
* OUTPUT: bl_223 
* OUTPUT: br_223 
* OUTPUT: bl_224 
* OUTPUT: br_224 
* OUTPUT: bl_225 
* OUTPUT: br_225 
* OUTPUT: bl_226 
* OUTPUT: br_226 
* OUTPUT: bl_227 
* OUTPUT: br_227 
* OUTPUT: bl_228 
* OUTPUT: br_228 
* OUTPUT: bl_229 
* OUTPUT: br_229 
* OUTPUT: bl_230 
* OUTPUT: br_230 
* OUTPUT: bl_231 
* OUTPUT: br_231 
* OUTPUT: bl_232 
* OUTPUT: br_232 
* OUTPUT: bl_233 
* OUTPUT: br_233 
* OUTPUT: bl_234 
* OUTPUT: br_234 
* OUTPUT: bl_235 
* OUTPUT: br_235 
* OUTPUT: bl_236 
* OUTPUT: br_236 
* OUTPUT: bl_237 
* OUTPUT: br_237 
* OUTPUT: bl_238 
* OUTPUT: br_238 
* OUTPUT: bl_239 
* OUTPUT: br_239 
* OUTPUT: bl_240 
* OUTPUT: br_240 
* OUTPUT: bl_241 
* OUTPUT: br_241 
* OUTPUT: bl_242 
* OUTPUT: br_242 
* OUTPUT: bl_243 
* OUTPUT: br_243 
* OUTPUT: bl_244 
* OUTPUT: br_244 
* OUTPUT: bl_245 
* OUTPUT: br_245 
* OUTPUT: bl_246 
* OUTPUT: br_246 
* OUTPUT: bl_247 
* OUTPUT: br_247 
* OUTPUT: bl_248 
* OUTPUT: br_248 
* OUTPUT: bl_249 
* OUTPUT: br_249 
* OUTPUT: bl_250 
* OUTPUT: br_250 
* OUTPUT: bl_251 
* OUTPUT: br_251 
* OUTPUT: bl_252 
* OUTPUT: br_252 
* OUTPUT: bl_253 
* OUTPUT: br_253 
* OUTPUT: bl_254 
* OUTPUT: br_254 
* OUTPUT: bl_255 
* OUTPUT: br_255 
* OUTPUT: bl_256 
* OUTPUT: br_256 
* INPUT : en_bar 
* POWER : vdd 
* cols: 257 size: 1 bl: bl br: br
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_33
+ bl_33 br_33 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_34
+ bl_34 br_34 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_35
+ bl_35 br_35 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_36
+ bl_36 br_36 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_37
+ bl_37 br_37 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_38
+ bl_38 br_38 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_39
+ bl_39 br_39 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_40
+ bl_40 br_40 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_41
+ bl_41 br_41 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_42
+ bl_42 br_42 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_43
+ bl_43 br_43 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_44
+ bl_44 br_44 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_45
+ bl_45 br_45 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_46
+ bl_46 br_46 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_47
+ bl_47 br_47 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_48
+ bl_48 br_48 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_49
+ bl_49 br_49 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_50
+ bl_50 br_50 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_51
+ bl_51 br_51 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_52
+ bl_52 br_52 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_53
+ bl_53 br_53 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_54
+ bl_54 br_54 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_55
+ bl_55 br_55 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_56
+ bl_56 br_56 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_57
+ bl_57 br_57 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_58
+ bl_58 br_58 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_59
+ bl_59 br_59 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_60
+ bl_60 br_60 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_61
+ bl_61 br_61 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_62
+ bl_62 br_62 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_63
+ bl_63 br_63 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_64
+ bl_64 br_64 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_65
+ bl_65 br_65 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_66
+ bl_66 br_66 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_67
+ bl_67 br_67 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_68
+ bl_68 br_68 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_69
+ bl_69 br_69 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_70
+ bl_70 br_70 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_71
+ bl_71 br_71 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_72
+ bl_72 br_72 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_73
+ bl_73 br_73 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_74
+ bl_74 br_74 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_75
+ bl_75 br_75 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_76
+ bl_76 br_76 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_77
+ bl_77 br_77 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_78
+ bl_78 br_78 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_79
+ bl_79 br_79 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_80
+ bl_80 br_80 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_81
+ bl_81 br_81 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_82
+ bl_82 br_82 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_83
+ bl_83 br_83 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_84
+ bl_84 br_84 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_85
+ bl_85 br_85 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_86
+ bl_86 br_86 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_87
+ bl_87 br_87 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_88
+ bl_88 br_88 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_89
+ bl_89 br_89 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_90
+ bl_90 br_90 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_91
+ bl_91 br_91 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_92
+ bl_92 br_92 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_93
+ bl_93 br_93 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_94
+ bl_94 br_94 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_95
+ bl_95 br_95 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_96
+ bl_96 br_96 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_97
+ bl_97 br_97 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_98
+ bl_98 br_98 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_99
+ bl_99 br_99 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_100
+ bl_100 br_100 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_101
+ bl_101 br_101 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_102
+ bl_102 br_102 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_103
+ bl_103 br_103 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_104
+ bl_104 br_104 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_105
+ bl_105 br_105 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_106
+ bl_106 br_106 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_107
+ bl_107 br_107 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_108
+ bl_108 br_108 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_109
+ bl_109 br_109 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_110
+ bl_110 br_110 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_111
+ bl_111 br_111 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_112
+ bl_112 br_112 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_113
+ bl_113 br_113 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_114
+ bl_114 br_114 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_115
+ bl_115 br_115 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_116
+ bl_116 br_116 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_117
+ bl_117 br_117 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_118
+ bl_118 br_118 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_119
+ bl_119 br_119 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_120
+ bl_120 br_120 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_121
+ bl_121 br_121 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_122
+ bl_122 br_122 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_123
+ bl_123 br_123 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_124
+ bl_124 br_124 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_125
+ bl_125 br_125 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_126
+ bl_126 br_126 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_127
+ bl_127 br_127 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_128
+ bl_128 br_128 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_129
+ bl_129 br_129 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_130
+ bl_130 br_130 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_131
+ bl_131 br_131 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_132
+ bl_132 br_132 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_133
+ bl_133 br_133 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_134
+ bl_134 br_134 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_135
+ bl_135 br_135 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_136
+ bl_136 br_136 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_137
+ bl_137 br_137 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_138
+ bl_138 br_138 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_139
+ bl_139 br_139 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_140
+ bl_140 br_140 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_141
+ bl_141 br_141 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_142
+ bl_142 br_142 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_143
+ bl_143 br_143 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_144
+ bl_144 br_144 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_145
+ bl_145 br_145 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_146
+ bl_146 br_146 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_147
+ bl_147 br_147 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_148
+ bl_148 br_148 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_149
+ bl_149 br_149 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_150
+ bl_150 br_150 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_151
+ bl_151 br_151 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_152
+ bl_152 br_152 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_153
+ bl_153 br_153 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_154
+ bl_154 br_154 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_155
+ bl_155 br_155 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_156
+ bl_156 br_156 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_157
+ bl_157 br_157 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_158
+ bl_158 br_158 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_159
+ bl_159 br_159 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_160
+ bl_160 br_160 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_161
+ bl_161 br_161 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_162
+ bl_162 br_162 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_163
+ bl_163 br_163 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_164
+ bl_164 br_164 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_165
+ bl_165 br_165 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_166
+ bl_166 br_166 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_167
+ bl_167 br_167 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_168
+ bl_168 br_168 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_169
+ bl_169 br_169 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_170
+ bl_170 br_170 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_171
+ bl_171 br_171 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_172
+ bl_172 br_172 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_173
+ bl_173 br_173 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_174
+ bl_174 br_174 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_175
+ bl_175 br_175 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_176
+ bl_176 br_176 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_177
+ bl_177 br_177 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_178
+ bl_178 br_178 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_179
+ bl_179 br_179 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_180
+ bl_180 br_180 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_181
+ bl_181 br_181 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_182
+ bl_182 br_182 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_183
+ bl_183 br_183 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_184
+ bl_184 br_184 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_185
+ bl_185 br_185 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_186
+ bl_186 br_186 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_187
+ bl_187 br_187 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_188
+ bl_188 br_188 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_189
+ bl_189 br_189 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_190
+ bl_190 br_190 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_191
+ bl_191 br_191 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_192
+ bl_192 br_192 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_193
+ bl_193 br_193 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_194
+ bl_194 br_194 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_195
+ bl_195 br_195 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_196
+ bl_196 br_196 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_197
+ bl_197 br_197 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_198
+ bl_198 br_198 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_199
+ bl_199 br_199 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_200
+ bl_200 br_200 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_201
+ bl_201 br_201 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_202
+ bl_202 br_202 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_203
+ bl_203 br_203 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_204
+ bl_204 br_204 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_205
+ bl_205 br_205 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_206
+ bl_206 br_206 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_207
+ bl_207 br_207 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_208
+ bl_208 br_208 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_209
+ bl_209 br_209 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_210
+ bl_210 br_210 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_211
+ bl_211 br_211 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_212
+ bl_212 br_212 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_213
+ bl_213 br_213 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_214
+ bl_214 br_214 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_215
+ bl_215 br_215 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_216
+ bl_216 br_216 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_217
+ bl_217 br_217 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_218
+ bl_218 br_218 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_219
+ bl_219 br_219 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_220
+ bl_220 br_220 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_221
+ bl_221 br_221 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_222
+ bl_222 br_222 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_223
+ bl_223 br_223 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_224
+ bl_224 br_224 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_225
+ bl_225 br_225 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_226
+ bl_226 br_226 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_227
+ bl_227 br_227 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_228
+ bl_228 br_228 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_229
+ bl_229 br_229 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_230
+ bl_230 br_230 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_231
+ bl_231 br_231 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_232
+ bl_232 br_232 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_233
+ bl_233 br_233 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_234
+ bl_234 br_234 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_235
+ bl_235 br_235 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_236
+ bl_236 br_236 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_237
+ bl_237 br_237 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_238
+ bl_238 br_238 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_239
+ bl_239 br_239 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_240
+ bl_240 br_240 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_241
+ bl_241 br_241 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_242
+ bl_242 br_242 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_243
+ bl_243 br_243 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_244
+ bl_244 br_244 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_245
+ bl_245 br_245 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_246
+ bl_246 br_246 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_247
+ bl_247 br_247 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_248
+ bl_248 br_248 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_249
+ bl_249 br_249 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_250
+ bl_250 br_250 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_251
+ bl_251 br_251 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_252
+ bl_252 br_252 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_253
+ bl_253 br_253 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_254
+ bl_254 br_254 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_255
+ bl_255 br_255 en_bar vdd
+ mp3_data_array_precharge_0
Xpre_column_256
+ bl_256 br_256 en_bar vdd
+ mp3_data_array_precharge_0
.ENDS mp3_data_array_precharge_array

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


.SUBCKT mp3_data_array_sense_amp_array
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
+ br_125 data_126 bl_126 br_126 data_127 bl_127 br_127 data_128 bl_128
+ br_128 data_129 bl_129 br_129 data_130 bl_130 br_130 data_131 bl_131
+ br_131 data_132 bl_132 br_132 data_133 bl_133 br_133 data_134 bl_134
+ br_134 data_135 bl_135 br_135 data_136 bl_136 br_136 data_137 bl_137
+ br_137 data_138 bl_138 br_138 data_139 bl_139 br_139 data_140 bl_140
+ br_140 data_141 bl_141 br_141 data_142 bl_142 br_142 data_143 bl_143
+ br_143 data_144 bl_144 br_144 data_145 bl_145 br_145 data_146 bl_146
+ br_146 data_147 bl_147 br_147 data_148 bl_148 br_148 data_149 bl_149
+ br_149 data_150 bl_150 br_150 data_151 bl_151 br_151 data_152 bl_152
+ br_152 data_153 bl_153 br_153 data_154 bl_154 br_154 data_155 bl_155
+ br_155 data_156 bl_156 br_156 data_157 bl_157 br_157 data_158 bl_158
+ br_158 data_159 bl_159 br_159 data_160 bl_160 br_160 data_161 bl_161
+ br_161 data_162 bl_162 br_162 data_163 bl_163 br_163 data_164 bl_164
+ br_164 data_165 bl_165 br_165 data_166 bl_166 br_166 data_167 bl_167
+ br_167 data_168 bl_168 br_168 data_169 bl_169 br_169 data_170 bl_170
+ br_170 data_171 bl_171 br_171 data_172 bl_172 br_172 data_173 bl_173
+ br_173 data_174 bl_174 br_174 data_175 bl_175 br_175 data_176 bl_176
+ br_176 data_177 bl_177 br_177 data_178 bl_178 br_178 data_179 bl_179
+ br_179 data_180 bl_180 br_180 data_181 bl_181 br_181 data_182 bl_182
+ br_182 data_183 bl_183 br_183 data_184 bl_184 br_184 data_185 bl_185
+ br_185 data_186 bl_186 br_186 data_187 bl_187 br_187 data_188 bl_188
+ br_188 data_189 bl_189 br_189 data_190 bl_190 br_190 data_191 bl_191
+ br_191 data_192 bl_192 br_192 data_193 bl_193 br_193 data_194 bl_194
+ br_194 data_195 bl_195 br_195 data_196 bl_196 br_196 data_197 bl_197
+ br_197 data_198 bl_198 br_198 data_199 bl_199 br_199 data_200 bl_200
+ br_200 data_201 bl_201 br_201 data_202 bl_202 br_202 data_203 bl_203
+ br_203 data_204 bl_204 br_204 data_205 bl_205 br_205 data_206 bl_206
+ br_206 data_207 bl_207 br_207 data_208 bl_208 br_208 data_209 bl_209
+ br_209 data_210 bl_210 br_210 data_211 bl_211 br_211 data_212 bl_212
+ br_212 data_213 bl_213 br_213 data_214 bl_214 br_214 data_215 bl_215
+ br_215 data_216 bl_216 br_216 data_217 bl_217 br_217 data_218 bl_218
+ br_218 data_219 bl_219 br_219 data_220 bl_220 br_220 data_221 bl_221
+ br_221 data_222 bl_222 br_222 data_223 bl_223 br_223 data_224 bl_224
+ br_224 data_225 bl_225 br_225 data_226 bl_226 br_226 data_227 bl_227
+ br_227 data_228 bl_228 br_228 data_229 bl_229 br_229 data_230 bl_230
+ br_230 data_231 bl_231 br_231 data_232 bl_232 br_232 data_233 bl_233
+ br_233 data_234 bl_234 br_234 data_235 bl_235 br_235 data_236 bl_236
+ br_236 data_237 bl_237 br_237 data_238 bl_238 br_238 data_239 bl_239
+ br_239 data_240 bl_240 br_240 data_241 bl_241 br_241 data_242 bl_242
+ br_242 data_243 bl_243 br_243 data_244 bl_244 br_244 data_245 bl_245
+ br_245 data_246 bl_246 br_246 data_247 bl_247 br_247 data_248 bl_248
+ br_248 data_249 bl_249 br_249 data_250 bl_250 br_250 data_251 bl_251
+ br_251 data_252 bl_252 br_252 data_253 bl_253 br_253 data_254 bl_254
+ br_254 data_255 bl_255 br_255 en vdd gnd
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
* OUTPUT: data_128 
* INPUT : bl_128 
* INPUT : br_128 
* OUTPUT: data_129 
* INPUT : bl_129 
* INPUT : br_129 
* OUTPUT: data_130 
* INPUT : bl_130 
* INPUT : br_130 
* OUTPUT: data_131 
* INPUT : bl_131 
* INPUT : br_131 
* OUTPUT: data_132 
* INPUT : bl_132 
* INPUT : br_132 
* OUTPUT: data_133 
* INPUT : bl_133 
* INPUT : br_133 
* OUTPUT: data_134 
* INPUT : bl_134 
* INPUT : br_134 
* OUTPUT: data_135 
* INPUT : bl_135 
* INPUT : br_135 
* OUTPUT: data_136 
* INPUT : bl_136 
* INPUT : br_136 
* OUTPUT: data_137 
* INPUT : bl_137 
* INPUT : br_137 
* OUTPUT: data_138 
* INPUT : bl_138 
* INPUT : br_138 
* OUTPUT: data_139 
* INPUT : bl_139 
* INPUT : br_139 
* OUTPUT: data_140 
* INPUT : bl_140 
* INPUT : br_140 
* OUTPUT: data_141 
* INPUT : bl_141 
* INPUT : br_141 
* OUTPUT: data_142 
* INPUT : bl_142 
* INPUT : br_142 
* OUTPUT: data_143 
* INPUT : bl_143 
* INPUT : br_143 
* OUTPUT: data_144 
* INPUT : bl_144 
* INPUT : br_144 
* OUTPUT: data_145 
* INPUT : bl_145 
* INPUT : br_145 
* OUTPUT: data_146 
* INPUT : bl_146 
* INPUT : br_146 
* OUTPUT: data_147 
* INPUT : bl_147 
* INPUT : br_147 
* OUTPUT: data_148 
* INPUT : bl_148 
* INPUT : br_148 
* OUTPUT: data_149 
* INPUT : bl_149 
* INPUT : br_149 
* OUTPUT: data_150 
* INPUT : bl_150 
* INPUT : br_150 
* OUTPUT: data_151 
* INPUT : bl_151 
* INPUT : br_151 
* OUTPUT: data_152 
* INPUT : bl_152 
* INPUT : br_152 
* OUTPUT: data_153 
* INPUT : bl_153 
* INPUT : br_153 
* OUTPUT: data_154 
* INPUT : bl_154 
* INPUT : br_154 
* OUTPUT: data_155 
* INPUT : bl_155 
* INPUT : br_155 
* OUTPUT: data_156 
* INPUT : bl_156 
* INPUT : br_156 
* OUTPUT: data_157 
* INPUT : bl_157 
* INPUT : br_157 
* OUTPUT: data_158 
* INPUT : bl_158 
* INPUT : br_158 
* OUTPUT: data_159 
* INPUT : bl_159 
* INPUT : br_159 
* OUTPUT: data_160 
* INPUT : bl_160 
* INPUT : br_160 
* OUTPUT: data_161 
* INPUT : bl_161 
* INPUT : br_161 
* OUTPUT: data_162 
* INPUT : bl_162 
* INPUT : br_162 
* OUTPUT: data_163 
* INPUT : bl_163 
* INPUT : br_163 
* OUTPUT: data_164 
* INPUT : bl_164 
* INPUT : br_164 
* OUTPUT: data_165 
* INPUT : bl_165 
* INPUT : br_165 
* OUTPUT: data_166 
* INPUT : bl_166 
* INPUT : br_166 
* OUTPUT: data_167 
* INPUT : bl_167 
* INPUT : br_167 
* OUTPUT: data_168 
* INPUT : bl_168 
* INPUT : br_168 
* OUTPUT: data_169 
* INPUT : bl_169 
* INPUT : br_169 
* OUTPUT: data_170 
* INPUT : bl_170 
* INPUT : br_170 
* OUTPUT: data_171 
* INPUT : bl_171 
* INPUT : br_171 
* OUTPUT: data_172 
* INPUT : bl_172 
* INPUT : br_172 
* OUTPUT: data_173 
* INPUT : bl_173 
* INPUT : br_173 
* OUTPUT: data_174 
* INPUT : bl_174 
* INPUT : br_174 
* OUTPUT: data_175 
* INPUT : bl_175 
* INPUT : br_175 
* OUTPUT: data_176 
* INPUT : bl_176 
* INPUT : br_176 
* OUTPUT: data_177 
* INPUT : bl_177 
* INPUT : br_177 
* OUTPUT: data_178 
* INPUT : bl_178 
* INPUT : br_178 
* OUTPUT: data_179 
* INPUT : bl_179 
* INPUT : br_179 
* OUTPUT: data_180 
* INPUT : bl_180 
* INPUT : br_180 
* OUTPUT: data_181 
* INPUT : bl_181 
* INPUT : br_181 
* OUTPUT: data_182 
* INPUT : bl_182 
* INPUT : br_182 
* OUTPUT: data_183 
* INPUT : bl_183 
* INPUT : br_183 
* OUTPUT: data_184 
* INPUT : bl_184 
* INPUT : br_184 
* OUTPUT: data_185 
* INPUT : bl_185 
* INPUT : br_185 
* OUTPUT: data_186 
* INPUT : bl_186 
* INPUT : br_186 
* OUTPUT: data_187 
* INPUT : bl_187 
* INPUT : br_187 
* OUTPUT: data_188 
* INPUT : bl_188 
* INPUT : br_188 
* OUTPUT: data_189 
* INPUT : bl_189 
* INPUT : br_189 
* OUTPUT: data_190 
* INPUT : bl_190 
* INPUT : br_190 
* OUTPUT: data_191 
* INPUT : bl_191 
* INPUT : br_191 
* OUTPUT: data_192 
* INPUT : bl_192 
* INPUT : br_192 
* OUTPUT: data_193 
* INPUT : bl_193 
* INPUT : br_193 
* OUTPUT: data_194 
* INPUT : bl_194 
* INPUT : br_194 
* OUTPUT: data_195 
* INPUT : bl_195 
* INPUT : br_195 
* OUTPUT: data_196 
* INPUT : bl_196 
* INPUT : br_196 
* OUTPUT: data_197 
* INPUT : bl_197 
* INPUT : br_197 
* OUTPUT: data_198 
* INPUT : bl_198 
* INPUT : br_198 
* OUTPUT: data_199 
* INPUT : bl_199 
* INPUT : br_199 
* OUTPUT: data_200 
* INPUT : bl_200 
* INPUT : br_200 
* OUTPUT: data_201 
* INPUT : bl_201 
* INPUT : br_201 
* OUTPUT: data_202 
* INPUT : bl_202 
* INPUT : br_202 
* OUTPUT: data_203 
* INPUT : bl_203 
* INPUT : br_203 
* OUTPUT: data_204 
* INPUT : bl_204 
* INPUT : br_204 
* OUTPUT: data_205 
* INPUT : bl_205 
* INPUT : br_205 
* OUTPUT: data_206 
* INPUT : bl_206 
* INPUT : br_206 
* OUTPUT: data_207 
* INPUT : bl_207 
* INPUT : br_207 
* OUTPUT: data_208 
* INPUT : bl_208 
* INPUT : br_208 
* OUTPUT: data_209 
* INPUT : bl_209 
* INPUT : br_209 
* OUTPUT: data_210 
* INPUT : bl_210 
* INPUT : br_210 
* OUTPUT: data_211 
* INPUT : bl_211 
* INPUT : br_211 
* OUTPUT: data_212 
* INPUT : bl_212 
* INPUT : br_212 
* OUTPUT: data_213 
* INPUT : bl_213 
* INPUT : br_213 
* OUTPUT: data_214 
* INPUT : bl_214 
* INPUT : br_214 
* OUTPUT: data_215 
* INPUT : bl_215 
* INPUT : br_215 
* OUTPUT: data_216 
* INPUT : bl_216 
* INPUT : br_216 
* OUTPUT: data_217 
* INPUT : bl_217 
* INPUT : br_217 
* OUTPUT: data_218 
* INPUT : bl_218 
* INPUT : br_218 
* OUTPUT: data_219 
* INPUT : bl_219 
* INPUT : br_219 
* OUTPUT: data_220 
* INPUT : bl_220 
* INPUT : br_220 
* OUTPUT: data_221 
* INPUT : bl_221 
* INPUT : br_221 
* OUTPUT: data_222 
* INPUT : bl_222 
* INPUT : br_222 
* OUTPUT: data_223 
* INPUT : bl_223 
* INPUT : br_223 
* OUTPUT: data_224 
* INPUT : bl_224 
* INPUT : br_224 
* OUTPUT: data_225 
* INPUT : bl_225 
* INPUT : br_225 
* OUTPUT: data_226 
* INPUT : bl_226 
* INPUT : br_226 
* OUTPUT: data_227 
* INPUT : bl_227 
* INPUT : br_227 
* OUTPUT: data_228 
* INPUT : bl_228 
* INPUT : br_228 
* OUTPUT: data_229 
* INPUT : bl_229 
* INPUT : br_229 
* OUTPUT: data_230 
* INPUT : bl_230 
* INPUT : br_230 
* OUTPUT: data_231 
* INPUT : bl_231 
* INPUT : br_231 
* OUTPUT: data_232 
* INPUT : bl_232 
* INPUT : br_232 
* OUTPUT: data_233 
* INPUT : bl_233 
* INPUT : br_233 
* OUTPUT: data_234 
* INPUT : bl_234 
* INPUT : br_234 
* OUTPUT: data_235 
* INPUT : bl_235 
* INPUT : br_235 
* OUTPUT: data_236 
* INPUT : bl_236 
* INPUT : br_236 
* OUTPUT: data_237 
* INPUT : bl_237 
* INPUT : br_237 
* OUTPUT: data_238 
* INPUT : bl_238 
* INPUT : br_238 
* OUTPUT: data_239 
* INPUT : bl_239 
* INPUT : br_239 
* OUTPUT: data_240 
* INPUT : bl_240 
* INPUT : br_240 
* OUTPUT: data_241 
* INPUT : bl_241 
* INPUT : br_241 
* OUTPUT: data_242 
* INPUT : bl_242 
* INPUT : br_242 
* OUTPUT: data_243 
* INPUT : bl_243 
* INPUT : br_243 
* OUTPUT: data_244 
* INPUT : bl_244 
* INPUT : br_244 
* OUTPUT: data_245 
* INPUT : bl_245 
* INPUT : br_245 
* OUTPUT: data_246 
* INPUT : bl_246 
* INPUT : br_246 
* OUTPUT: data_247 
* INPUT : bl_247 
* INPUT : br_247 
* OUTPUT: data_248 
* INPUT : bl_248 
* INPUT : br_248 
* OUTPUT: data_249 
* INPUT : bl_249 
* INPUT : br_249 
* OUTPUT: data_250 
* INPUT : bl_250 
* INPUT : br_250 
* OUTPUT: data_251 
* INPUT : bl_251 
* INPUT : br_251 
* OUTPUT: data_252 
* INPUT : bl_252 
* INPUT : br_252 
* OUTPUT: data_253 
* INPUT : bl_253 
* INPUT : br_253 
* OUTPUT: data_254 
* INPUT : bl_254 
* INPUT : br_254 
* OUTPUT: data_255 
* INPUT : bl_255 
* INPUT : br_255 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 256
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
Xsa_d128
+ bl_128 br_128 data_128 en vdd gnd
+ sense_amp
Xsa_d129
+ bl_129 br_129 data_129 en vdd gnd
+ sense_amp
Xsa_d130
+ bl_130 br_130 data_130 en vdd gnd
+ sense_amp
Xsa_d131
+ bl_131 br_131 data_131 en vdd gnd
+ sense_amp
Xsa_d132
+ bl_132 br_132 data_132 en vdd gnd
+ sense_amp
Xsa_d133
+ bl_133 br_133 data_133 en vdd gnd
+ sense_amp
Xsa_d134
+ bl_134 br_134 data_134 en vdd gnd
+ sense_amp
Xsa_d135
+ bl_135 br_135 data_135 en vdd gnd
+ sense_amp
Xsa_d136
+ bl_136 br_136 data_136 en vdd gnd
+ sense_amp
Xsa_d137
+ bl_137 br_137 data_137 en vdd gnd
+ sense_amp
Xsa_d138
+ bl_138 br_138 data_138 en vdd gnd
+ sense_amp
Xsa_d139
+ bl_139 br_139 data_139 en vdd gnd
+ sense_amp
Xsa_d140
+ bl_140 br_140 data_140 en vdd gnd
+ sense_amp
Xsa_d141
+ bl_141 br_141 data_141 en vdd gnd
+ sense_amp
Xsa_d142
+ bl_142 br_142 data_142 en vdd gnd
+ sense_amp
Xsa_d143
+ bl_143 br_143 data_143 en vdd gnd
+ sense_amp
Xsa_d144
+ bl_144 br_144 data_144 en vdd gnd
+ sense_amp
Xsa_d145
+ bl_145 br_145 data_145 en vdd gnd
+ sense_amp
Xsa_d146
+ bl_146 br_146 data_146 en vdd gnd
+ sense_amp
Xsa_d147
+ bl_147 br_147 data_147 en vdd gnd
+ sense_amp
Xsa_d148
+ bl_148 br_148 data_148 en vdd gnd
+ sense_amp
Xsa_d149
+ bl_149 br_149 data_149 en vdd gnd
+ sense_amp
Xsa_d150
+ bl_150 br_150 data_150 en vdd gnd
+ sense_amp
Xsa_d151
+ bl_151 br_151 data_151 en vdd gnd
+ sense_amp
Xsa_d152
+ bl_152 br_152 data_152 en vdd gnd
+ sense_amp
Xsa_d153
+ bl_153 br_153 data_153 en vdd gnd
+ sense_amp
Xsa_d154
+ bl_154 br_154 data_154 en vdd gnd
+ sense_amp
Xsa_d155
+ bl_155 br_155 data_155 en vdd gnd
+ sense_amp
Xsa_d156
+ bl_156 br_156 data_156 en vdd gnd
+ sense_amp
Xsa_d157
+ bl_157 br_157 data_157 en vdd gnd
+ sense_amp
Xsa_d158
+ bl_158 br_158 data_158 en vdd gnd
+ sense_amp
Xsa_d159
+ bl_159 br_159 data_159 en vdd gnd
+ sense_amp
Xsa_d160
+ bl_160 br_160 data_160 en vdd gnd
+ sense_amp
Xsa_d161
+ bl_161 br_161 data_161 en vdd gnd
+ sense_amp
Xsa_d162
+ bl_162 br_162 data_162 en vdd gnd
+ sense_amp
Xsa_d163
+ bl_163 br_163 data_163 en vdd gnd
+ sense_amp
Xsa_d164
+ bl_164 br_164 data_164 en vdd gnd
+ sense_amp
Xsa_d165
+ bl_165 br_165 data_165 en vdd gnd
+ sense_amp
Xsa_d166
+ bl_166 br_166 data_166 en vdd gnd
+ sense_amp
Xsa_d167
+ bl_167 br_167 data_167 en vdd gnd
+ sense_amp
Xsa_d168
+ bl_168 br_168 data_168 en vdd gnd
+ sense_amp
Xsa_d169
+ bl_169 br_169 data_169 en vdd gnd
+ sense_amp
Xsa_d170
+ bl_170 br_170 data_170 en vdd gnd
+ sense_amp
Xsa_d171
+ bl_171 br_171 data_171 en vdd gnd
+ sense_amp
Xsa_d172
+ bl_172 br_172 data_172 en vdd gnd
+ sense_amp
Xsa_d173
+ bl_173 br_173 data_173 en vdd gnd
+ sense_amp
Xsa_d174
+ bl_174 br_174 data_174 en vdd gnd
+ sense_amp
Xsa_d175
+ bl_175 br_175 data_175 en vdd gnd
+ sense_amp
Xsa_d176
+ bl_176 br_176 data_176 en vdd gnd
+ sense_amp
Xsa_d177
+ bl_177 br_177 data_177 en vdd gnd
+ sense_amp
Xsa_d178
+ bl_178 br_178 data_178 en vdd gnd
+ sense_amp
Xsa_d179
+ bl_179 br_179 data_179 en vdd gnd
+ sense_amp
Xsa_d180
+ bl_180 br_180 data_180 en vdd gnd
+ sense_amp
Xsa_d181
+ bl_181 br_181 data_181 en vdd gnd
+ sense_amp
Xsa_d182
+ bl_182 br_182 data_182 en vdd gnd
+ sense_amp
Xsa_d183
+ bl_183 br_183 data_183 en vdd gnd
+ sense_amp
Xsa_d184
+ bl_184 br_184 data_184 en vdd gnd
+ sense_amp
Xsa_d185
+ bl_185 br_185 data_185 en vdd gnd
+ sense_amp
Xsa_d186
+ bl_186 br_186 data_186 en vdd gnd
+ sense_amp
Xsa_d187
+ bl_187 br_187 data_187 en vdd gnd
+ sense_amp
Xsa_d188
+ bl_188 br_188 data_188 en vdd gnd
+ sense_amp
Xsa_d189
+ bl_189 br_189 data_189 en vdd gnd
+ sense_amp
Xsa_d190
+ bl_190 br_190 data_190 en vdd gnd
+ sense_amp
Xsa_d191
+ bl_191 br_191 data_191 en vdd gnd
+ sense_amp
Xsa_d192
+ bl_192 br_192 data_192 en vdd gnd
+ sense_amp
Xsa_d193
+ bl_193 br_193 data_193 en vdd gnd
+ sense_amp
Xsa_d194
+ bl_194 br_194 data_194 en vdd gnd
+ sense_amp
Xsa_d195
+ bl_195 br_195 data_195 en vdd gnd
+ sense_amp
Xsa_d196
+ bl_196 br_196 data_196 en vdd gnd
+ sense_amp
Xsa_d197
+ bl_197 br_197 data_197 en vdd gnd
+ sense_amp
Xsa_d198
+ bl_198 br_198 data_198 en vdd gnd
+ sense_amp
Xsa_d199
+ bl_199 br_199 data_199 en vdd gnd
+ sense_amp
Xsa_d200
+ bl_200 br_200 data_200 en vdd gnd
+ sense_amp
Xsa_d201
+ bl_201 br_201 data_201 en vdd gnd
+ sense_amp
Xsa_d202
+ bl_202 br_202 data_202 en vdd gnd
+ sense_amp
Xsa_d203
+ bl_203 br_203 data_203 en vdd gnd
+ sense_amp
Xsa_d204
+ bl_204 br_204 data_204 en vdd gnd
+ sense_amp
Xsa_d205
+ bl_205 br_205 data_205 en vdd gnd
+ sense_amp
Xsa_d206
+ bl_206 br_206 data_206 en vdd gnd
+ sense_amp
Xsa_d207
+ bl_207 br_207 data_207 en vdd gnd
+ sense_amp
Xsa_d208
+ bl_208 br_208 data_208 en vdd gnd
+ sense_amp
Xsa_d209
+ bl_209 br_209 data_209 en vdd gnd
+ sense_amp
Xsa_d210
+ bl_210 br_210 data_210 en vdd gnd
+ sense_amp
Xsa_d211
+ bl_211 br_211 data_211 en vdd gnd
+ sense_amp
Xsa_d212
+ bl_212 br_212 data_212 en vdd gnd
+ sense_amp
Xsa_d213
+ bl_213 br_213 data_213 en vdd gnd
+ sense_amp
Xsa_d214
+ bl_214 br_214 data_214 en vdd gnd
+ sense_amp
Xsa_d215
+ bl_215 br_215 data_215 en vdd gnd
+ sense_amp
Xsa_d216
+ bl_216 br_216 data_216 en vdd gnd
+ sense_amp
Xsa_d217
+ bl_217 br_217 data_217 en vdd gnd
+ sense_amp
Xsa_d218
+ bl_218 br_218 data_218 en vdd gnd
+ sense_amp
Xsa_d219
+ bl_219 br_219 data_219 en vdd gnd
+ sense_amp
Xsa_d220
+ bl_220 br_220 data_220 en vdd gnd
+ sense_amp
Xsa_d221
+ bl_221 br_221 data_221 en vdd gnd
+ sense_amp
Xsa_d222
+ bl_222 br_222 data_222 en vdd gnd
+ sense_amp
Xsa_d223
+ bl_223 br_223 data_223 en vdd gnd
+ sense_amp
Xsa_d224
+ bl_224 br_224 data_224 en vdd gnd
+ sense_amp
Xsa_d225
+ bl_225 br_225 data_225 en vdd gnd
+ sense_amp
Xsa_d226
+ bl_226 br_226 data_226 en vdd gnd
+ sense_amp
Xsa_d227
+ bl_227 br_227 data_227 en vdd gnd
+ sense_amp
Xsa_d228
+ bl_228 br_228 data_228 en vdd gnd
+ sense_amp
Xsa_d229
+ bl_229 br_229 data_229 en vdd gnd
+ sense_amp
Xsa_d230
+ bl_230 br_230 data_230 en vdd gnd
+ sense_amp
Xsa_d231
+ bl_231 br_231 data_231 en vdd gnd
+ sense_amp
Xsa_d232
+ bl_232 br_232 data_232 en vdd gnd
+ sense_amp
Xsa_d233
+ bl_233 br_233 data_233 en vdd gnd
+ sense_amp
Xsa_d234
+ bl_234 br_234 data_234 en vdd gnd
+ sense_amp
Xsa_d235
+ bl_235 br_235 data_235 en vdd gnd
+ sense_amp
Xsa_d236
+ bl_236 br_236 data_236 en vdd gnd
+ sense_amp
Xsa_d237
+ bl_237 br_237 data_237 en vdd gnd
+ sense_amp
Xsa_d238
+ bl_238 br_238 data_238 en vdd gnd
+ sense_amp
Xsa_d239
+ bl_239 br_239 data_239 en vdd gnd
+ sense_amp
Xsa_d240
+ bl_240 br_240 data_240 en vdd gnd
+ sense_amp
Xsa_d241
+ bl_241 br_241 data_241 en vdd gnd
+ sense_amp
Xsa_d242
+ bl_242 br_242 data_242 en vdd gnd
+ sense_amp
Xsa_d243
+ bl_243 br_243 data_243 en vdd gnd
+ sense_amp
Xsa_d244
+ bl_244 br_244 data_244 en vdd gnd
+ sense_amp
Xsa_d245
+ bl_245 br_245 data_245 en vdd gnd
+ sense_amp
Xsa_d246
+ bl_246 br_246 data_246 en vdd gnd
+ sense_amp
Xsa_d247
+ bl_247 br_247 data_247 en vdd gnd
+ sense_amp
Xsa_d248
+ bl_248 br_248 data_248 en vdd gnd
+ sense_amp
Xsa_d249
+ bl_249 br_249 data_249 en vdd gnd
+ sense_amp
Xsa_d250
+ bl_250 br_250 data_250 en vdd gnd
+ sense_amp
Xsa_d251
+ bl_251 br_251 data_251 en vdd gnd
+ sense_amp
Xsa_d252
+ bl_252 br_252 data_252 en vdd gnd
+ sense_amp
Xsa_d253
+ bl_253 br_253 data_253 en vdd gnd
+ sense_amp
Xsa_d254
+ bl_254 br_254 data_254 en vdd gnd
+ sense_amp
Xsa_d255
+ bl_255 br_255 data_255 en vdd gnd
+ sense_amp
.ENDS mp3_data_array_sense_amp_array

.SUBCKT mp3_data_array_pnand2_0
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
.ENDS mp3_data_array_pnand2_0

* spice ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_data_array_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2.0
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_pinv_1

.SUBCKT mp3_data_array_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [2.0]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_pinv_1
.ENDS mp3_data_array_pdriver

.SUBCKT mp3_data_array_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2.0
Xpand2_nand
+ A B zb_int vdd gnd
+ mp3_data_array_pnand2_0
Xpand2_inv
+ zb_int Z vdd gnd
+ mp3_data_array_pdriver
.ENDS mp3_data_array_pand2

.SUBCKT mp3_data_array_write_mask_and_array
+ wmask_in_0 wmask_in_1 wmask_in_2 wmask_in_3 wmask_in_4 wmask_in_5
+ wmask_in_6 wmask_in_7 wmask_in_8 wmask_in_9 wmask_in_10 wmask_in_11
+ wmask_in_12 wmask_in_13 wmask_in_14 wmask_in_15 wmask_in_16
+ wmask_in_17 wmask_in_18 wmask_in_19 wmask_in_20 wmask_in_21
+ wmask_in_22 wmask_in_23 wmask_in_24 wmask_in_25 wmask_in_26
+ wmask_in_27 wmask_in_28 wmask_in_29 wmask_in_30 wmask_in_31 en
+ wmask_out_0 wmask_out_1 wmask_out_2 wmask_out_3 wmask_out_4
+ wmask_out_5 wmask_out_6 wmask_out_7 wmask_out_8 wmask_out_9
+ wmask_out_10 wmask_out_11 wmask_out_12 wmask_out_13 wmask_out_14
+ wmask_out_15 wmask_out_16 wmask_out_17 wmask_out_18 wmask_out_19
+ wmask_out_20 wmask_out_21 wmask_out_22 wmask_out_23 wmask_out_24
+ wmask_out_25 wmask_out_26 wmask_out_27 wmask_out_28 wmask_out_29
+ wmask_out_30 wmask_out_31 vdd gnd
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
* INPUT : wmask_in_16 
* INPUT : wmask_in_17 
* INPUT : wmask_in_18 
* INPUT : wmask_in_19 
* INPUT : wmask_in_20 
* INPUT : wmask_in_21 
* INPUT : wmask_in_22 
* INPUT : wmask_in_23 
* INPUT : wmask_in_24 
* INPUT : wmask_in_25 
* INPUT : wmask_in_26 
* INPUT : wmask_in_27 
* INPUT : wmask_in_28 
* INPUT : wmask_in_29 
* INPUT : wmask_in_30 
* INPUT : wmask_in_31 
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
* OUTPUT: wmask_out_16 
* OUTPUT: wmask_out_17 
* OUTPUT: wmask_out_18 
* OUTPUT: wmask_out_19 
* OUTPUT: wmask_out_20 
* OUTPUT: wmask_out_21 
* OUTPUT: wmask_out_22 
* OUTPUT: wmask_out_23 
* OUTPUT: wmask_out_24 
* OUTPUT: wmask_out_25 
* OUTPUT: wmask_out_26 
* OUTPUT: wmask_out_27 
* OUTPUT: wmask_out_28 
* OUTPUT: wmask_out_29 
* OUTPUT: wmask_out_30 
* OUTPUT: wmask_out_31 
* POWER : vdd 
* GROUND: gnd 
* columns: 256
* word_size 256
* write_size 8
Xand2_0
+ wmask_in_0 en wmask_out_0 vdd gnd
+ mp3_data_array_pand2
Xand2_1
+ wmask_in_1 en wmask_out_1 vdd gnd
+ mp3_data_array_pand2
Xand2_2
+ wmask_in_2 en wmask_out_2 vdd gnd
+ mp3_data_array_pand2
Xand2_3
+ wmask_in_3 en wmask_out_3 vdd gnd
+ mp3_data_array_pand2
Xand2_4
+ wmask_in_4 en wmask_out_4 vdd gnd
+ mp3_data_array_pand2
Xand2_5
+ wmask_in_5 en wmask_out_5 vdd gnd
+ mp3_data_array_pand2
Xand2_6
+ wmask_in_6 en wmask_out_6 vdd gnd
+ mp3_data_array_pand2
Xand2_7
+ wmask_in_7 en wmask_out_7 vdd gnd
+ mp3_data_array_pand2
Xand2_8
+ wmask_in_8 en wmask_out_8 vdd gnd
+ mp3_data_array_pand2
Xand2_9
+ wmask_in_9 en wmask_out_9 vdd gnd
+ mp3_data_array_pand2
Xand2_10
+ wmask_in_10 en wmask_out_10 vdd gnd
+ mp3_data_array_pand2
Xand2_11
+ wmask_in_11 en wmask_out_11 vdd gnd
+ mp3_data_array_pand2
Xand2_12
+ wmask_in_12 en wmask_out_12 vdd gnd
+ mp3_data_array_pand2
Xand2_13
+ wmask_in_13 en wmask_out_13 vdd gnd
+ mp3_data_array_pand2
Xand2_14
+ wmask_in_14 en wmask_out_14 vdd gnd
+ mp3_data_array_pand2
Xand2_15
+ wmask_in_15 en wmask_out_15 vdd gnd
+ mp3_data_array_pand2
Xand2_16
+ wmask_in_16 en wmask_out_16 vdd gnd
+ mp3_data_array_pand2
Xand2_17
+ wmask_in_17 en wmask_out_17 vdd gnd
+ mp3_data_array_pand2
Xand2_18
+ wmask_in_18 en wmask_out_18 vdd gnd
+ mp3_data_array_pand2
Xand2_19
+ wmask_in_19 en wmask_out_19 vdd gnd
+ mp3_data_array_pand2
Xand2_20
+ wmask_in_20 en wmask_out_20 vdd gnd
+ mp3_data_array_pand2
Xand2_21
+ wmask_in_21 en wmask_out_21 vdd gnd
+ mp3_data_array_pand2
Xand2_22
+ wmask_in_22 en wmask_out_22 vdd gnd
+ mp3_data_array_pand2
Xand2_23
+ wmask_in_23 en wmask_out_23 vdd gnd
+ mp3_data_array_pand2
Xand2_24
+ wmask_in_24 en wmask_out_24 vdd gnd
+ mp3_data_array_pand2
Xand2_25
+ wmask_in_25 en wmask_out_25 vdd gnd
+ mp3_data_array_pand2
Xand2_26
+ wmask_in_26 en wmask_out_26 vdd gnd
+ mp3_data_array_pand2
Xand2_27
+ wmask_in_27 en wmask_out_27 vdd gnd
+ mp3_data_array_pand2
Xand2_28
+ wmask_in_28 en wmask_out_28 vdd gnd
+ mp3_data_array_pand2
Xand2_29
+ wmask_in_29 en wmask_out_29 vdd gnd
+ mp3_data_array_pand2
Xand2_30
+ wmask_in_30 en wmask_out_30 vdd gnd
+ mp3_data_array_pand2
Xand2_31
+ wmask_in_31 en wmask_out_31 vdd gnd
+ mp3_data_array_pand2
.ENDS mp3_data_array_write_mask_and_array

.SUBCKT mp3_data_array_port_data
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
+ bl_125 br_125 bl_126 br_126 bl_127 br_127 bl_128 br_128 bl_129 br_129
+ bl_130 br_130 bl_131 br_131 bl_132 br_132 bl_133 br_133 bl_134 br_134
+ bl_135 br_135 bl_136 br_136 bl_137 br_137 bl_138 br_138 bl_139 br_139
+ bl_140 br_140 bl_141 br_141 bl_142 br_142 bl_143 br_143 bl_144 br_144
+ bl_145 br_145 bl_146 br_146 bl_147 br_147 bl_148 br_148 bl_149 br_149
+ bl_150 br_150 bl_151 br_151 bl_152 br_152 bl_153 br_153 bl_154 br_154
+ bl_155 br_155 bl_156 br_156 bl_157 br_157 bl_158 br_158 bl_159 br_159
+ bl_160 br_160 bl_161 br_161 bl_162 br_162 bl_163 br_163 bl_164 br_164
+ bl_165 br_165 bl_166 br_166 bl_167 br_167 bl_168 br_168 bl_169 br_169
+ bl_170 br_170 bl_171 br_171 bl_172 br_172 bl_173 br_173 bl_174 br_174
+ bl_175 br_175 bl_176 br_176 bl_177 br_177 bl_178 br_178 bl_179 br_179
+ bl_180 br_180 bl_181 br_181 bl_182 br_182 bl_183 br_183 bl_184 br_184
+ bl_185 br_185 bl_186 br_186 bl_187 br_187 bl_188 br_188 bl_189 br_189
+ bl_190 br_190 bl_191 br_191 bl_192 br_192 bl_193 br_193 bl_194 br_194
+ bl_195 br_195 bl_196 br_196 bl_197 br_197 bl_198 br_198 bl_199 br_199
+ bl_200 br_200 bl_201 br_201 bl_202 br_202 bl_203 br_203 bl_204 br_204
+ bl_205 br_205 bl_206 br_206 bl_207 br_207 bl_208 br_208 bl_209 br_209
+ bl_210 br_210 bl_211 br_211 bl_212 br_212 bl_213 br_213 bl_214 br_214
+ bl_215 br_215 bl_216 br_216 bl_217 br_217 bl_218 br_218 bl_219 br_219
+ bl_220 br_220 bl_221 br_221 bl_222 br_222 bl_223 br_223 bl_224 br_224
+ bl_225 br_225 bl_226 br_226 bl_227 br_227 bl_228 br_228 bl_229 br_229
+ bl_230 br_230 bl_231 br_231 bl_232 br_232 bl_233 br_233 bl_234 br_234
+ bl_235 br_235 bl_236 br_236 bl_237 br_237 bl_238 br_238 bl_239 br_239
+ bl_240 br_240 bl_241 br_241 bl_242 br_242 bl_243 br_243 bl_244 br_244
+ bl_245 br_245 bl_246 br_246 bl_247 br_247 bl_248 br_248 bl_249 br_249
+ bl_250 br_250 bl_251 br_251 bl_252 br_252 bl_253 br_253 bl_254 br_254
+ bl_255 br_255 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7
+ dout_8 dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 dout_16
+ dout_17 dout_18 dout_19 dout_20 dout_21 dout_22 dout_23 dout_24
+ dout_25 dout_26 dout_27 dout_28 dout_29 dout_30 dout_31 dout_32
+ dout_33 dout_34 dout_35 dout_36 dout_37 dout_38 dout_39 dout_40
+ dout_41 dout_42 dout_43 dout_44 dout_45 dout_46 dout_47 dout_48
+ dout_49 dout_50 dout_51 dout_52 dout_53 dout_54 dout_55 dout_56
+ dout_57 dout_58 dout_59 dout_60 dout_61 dout_62 dout_63 dout_64
+ dout_65 dout_66 dout_67 dout_68 dout_69 dout_70 dout_71 dout_72
+ dout_73 dout_74 dout_75 dout_76 dout_77 dout_78 dout_79 dout_80
+ dout_81 dout_82 dout_83 dout_84 dout_85 dout_86 dout_87 dout_88
+ dout_89 dout_90 dout_91 dout_92 dout_93 dout_94 dout_95 dout_96
+ dout_97 dout_98 dout_99 dout_100 dout_101 dout_102 dout_103 dout_104
+ dout_105 dout_106 dout_107 dout_108 dout_109 dout_110 dout_111
+ dout_112 dout_113 dout_114 dout_115 dout_116 dout_117 dout_118
+ dout_119 dout_120 dout_121 dout_122 dout_123 dout_124 dout_125
+ dout_126 dout_127 dout_128 dout_129 dout_130 dout_131 dout_132
+ dout_133 dout_134 dout_135 dout_136 dout_137 dout_138 dout_139
+ dout_140 dout_141 dout_142 dout_143 dout_144 dout_145 dout_146
+ dout_147 dout_148 dout_149 dout_150 dout_151 dout_152 dout_153
+ dout_154 dout_155 dout_156 dout_157 dout_158 dout_159 dout_160
+ dout_161 dout_162 dout_163 dout_164 dout_165 dout_166 dout_167
+ dout_168 dout_169 dout_170 dout_171 dout_172 dout_173 dout_174
+ dout_175 dout_176 dout_177 dout_178 dout_179 dout_180 dout_181
+ dout_182 dout_183 dout_184 dout_185 dout_186 dout_187 dout_188
+ dout_189 dout_190 dout_191 dout_192 dout_193 dout_194 dout_195
+ dout_196 dout_197 dout_198 dout_199 dout_200 dout_201 dout_202
+ dout_203 dout_204 dout_205 dout_206 dout_207 dout_208 dout_209
+ dout_210 dout_211 dout_212 dout_213 dout_214 dout_215 dout_216
+ dout_217 dout_218 dout_219 dout_220 dout_221 dout_222 dout_223
+ dout_224 dout_225 dout_226 dout_227 dout_228 dout_229 dout_230
+ dout_231 dout_232 dout_233 dout_234 dout_235 dout_236 dout_237
+ dout_238 dout_239 dout_240 dout_241 dout_242 dout_243 dout_244
+ dout_245 dout_246 dout_247 dout_248 dout_249 dout_250 dout_251
+ dout_252 dout_253 dout_254 dout_255 din_0 din_1 din_2 din_3 din_4
+ din_5 din_6 din_7 din_8 din_9 din_10 din_11 din_12 din_13 din_14
+ din_15 din_16 din_17 din_18 din_19 din_20 din_21 din_22 din_23 din_24
+ din_25 din_26 din_27 din_28 din_29 din_30 din_31 din_32 din_33 din_34
+ din_35 din_36 din_37 din_38 din_39 din_40 din_41 din_42 din_43 din_44
+ din_45 din_46 din_47 din_48 din_49 din_50 din_51 din_52 din_53 din_54
+ din_55 din_56 din_57 din_58 din_59 din_60 din_61 din_62 din_63 din_64
+ din_65 din_66 din_67 din_68 din_69 din_70 din_71 din_72 din_73 din_74
+ din_75 din_76 din_77 din_78 din_79 din_80 din_81 din_82 din_83 din_84
+ din_85 din_86 din_87 din_88 din_89 din_90 din_91 din_92 din_93 din_94
+ din_95 din_96 din_97 din_98 din_99 din_100 din_101 din_102 din_103
+ din_104 din_105 din_106 din_107 din_108 din_109 din_110 din_111
+ din_112 din_113 din_114 din_115 din_116 din_117 din_118 din_119
+ din_120 din_121 din_122 din_123 din_124 din_125 din_126 din_127
+ din_128 din_129 din_130 din_131 din_132 din_133 din_134 din_135
+ din_136 din_137 din_138 din_139 din_140 din_141 din_142 din_143
+ din_144 din_145 din_146 din_147 din_148 din_149 din_150 din_151
+ din_152 din_153 din_154 din_155 din_156 din_157 din_158 din_159
+ din_160 din_161 din_162 din_163 din_164 din_165 din_166 din_167
+ din_168 din_169 din_170 din_171 din_172 din_173 din_174 din_175
+ din_176 din_177 din_178 din_179 din_180 din_181 din_182 din_183
+ din_184 din_185 din_186 din_187 din_188 din_189 din_190 din_191
+ din_192 din_193 din_194 din_195 din_196 din_197 din_198 din_199
+ din_200 din_201 din_202 din_203 din_204 din_205 din_206 din_207
+ din_208 din_209 din_210 din_211 din_212 din_213 din_214 din_215
+ din_216 din_217 din_218 din_219 din_220 din_221 din_222 din_223
+ din_224 din_225 din_226 din_227 din_228 din_229 din_230 din_231
+ din_232 din_233 din_234 din_235 din_236 din_237 din_238 din_239
+ din_240 din_241 din_242 din_243 din_244 din_245 din_246 din_247
+ din_248 din_249 din_250 din_251 din_252 din_253 din_254 din_255 s_en
+ p_en_bar w_en bank_wmask_0 bank_wmask_1 bank_wmask_2 bank_wmask_3
+ bank_wmask_4 bank_wmask_5 bank_wmask_6 bank_wmask_7 bank_wmask_8
+ bank_wmask_9 bank_wmask_10 bank_wmask_11 bank_wmask_12 bank_wmask_13
+ bank_wmask_14 bank_wmask_15 bank_wmask_16 bank_wmask_17 bank_wmask_18
+ bank_wmask_19 bank_wmask_20 bank_wmask_21 bank_wmask_22 bank_wmask_23
+ bank_wmask_24 bank_wmask_25 bank_wmask_26 bank_wmask_27 bank_wmask_28
+ bank_wmask_29 bank_wmask_30 bank_wmask_31 vdd gnd
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
* INOUT : bl_128 
* INOUT : br_128 
* INOUT : bl_129 
* INOUT : br_129 
* INOUT : bl_130 
* INOUT : br_130 
* INOUT : bl_131 
* INOUT : br_131 
* INOUT : bl_132 
* INOUT : br_132 
* INOUT : bl_133 
* INOUT : br_133 
* INOUT : bl_134 
* INOUT : br_134 
* INOUT : bl_135 
* INOUT : br_135 
* INOUT : bl_136 
* INOUT : br_136 
* INOUT : bl_137 
* INOUT : br_137 
* INOUT : bl_138 
* INOUT : br_138 
* INOUT : bl_139 
* INOUT : br_139 
* INOUT : bl_140 
* INOUT : br_140 
* INOUT : bl_141 
* INOUT : br_141 
* INOUT : bl_142 
* INOUT : br_142 
* INOUT : bl_143 
* INOUT : br_143 
* INOUT : bl_144 
* INOUT : br_144 
* INOUT : bl_145 
* INOUT : br_145 
* INOUT : bl_146 
* INOUT : br_146 
* INOUT : bl_147 
* INOUT : br_147 
* INOUT : bl_148 
* INOUT : br_148 
* INOUT : bl_149 
* INOUT : br_149 
* INOUT : bl_150 
* INOUT : br_150 
* INOUT : bl_151 
* INOUT : br_151 
* INOUT : bl_152 
* INOUT : br_152 
* INOUT : bl_153 
* INOUT : br_153 
* INOUT : bl_154 
* INOUT : br_154 
* INOUT : bl_155 
* INOUT : br_155 
* INOUT : bl_156 
* INOUT : br_156 
* INOUT : bl_157 
* INOUT : br_157 
* INOUT : bl_158 
* INOUT : br_158 
* INOUT : bl_159 
* INOUT : br_159 
* INOUT : bl_160 
* INOUT : br_160 
* INOUT : bl_161 
* INOUT : br_161 
* INOUT : bl_162 
* INOUT : br_162 
* INOUT : bl_163 
* INOUT : br_163 
* INOUT : bl_164 
* INOUT : br_164 
* INOUT : bl_165 
* INOUT : br_165 
* INOUT : bl_166 
* INOUT : br_166 
* INOUT : bl_167 
* INOUT : br_167 
* INOUT : bl_168 
* INOUT : br_168 
* INOUT : bl_169 
* INOUT : br_169 
* INOUT : bl_170 
* INOUT : br_170 
* INOUT : bl_171 
* INOUT : br_171 
* INOUT : bl_172 
* INOUT : br_172 
* INOUT : bl_173 
* INOUT : br_173 
* INOUT : bl_174 
* INOUT : br_174 
* INOUT : bl_175 
* INOUT : br_175 
* INOUT : bl_176 
* INOUT : br_176 
* INOUT : bl_177 
* INOUT : br_177 
* INOUT : bl_178 
* INOUT : br_178 
* INOUT : bl_179 
* INOUT : br_179 
* INOUT : bl_180 
* INOUT : br_180 
* INOUT : bl_181 
* INOUT : br_181 
* INOUT : bl_182 
* INOUT : br_182 
* INOUT : bl_183 
* INOUT : br_183 
* INOUT : bl_184 
* INOUT : br_184 
* INOUT : bl_185 
* INOUT : br_185 
* INOUT : bl_186 
* INOUT : br_186 
* INOUT : bl_187 
* INOUT : br_187 
* INOUT : bl_188 
* INOUT : br_188 
* INOUT : bl_189 
* INOUT : br_189 
* INOUT : bl_190 
* INOUT : br_190 
* INOUT : bl_191 
* INOUT : br_191 
* INOUT : bl_192 
* INOUT : br_192 
* INOUT : bl_193 
* INOUT : br_193 
* INOUT : bl_194 
* INOUT : br_194 
* INOUT : bl_195 
* INOUT : br_195 
* INOUT : bl_196 
* INOUT : br_196 
* INOUT : bl_197 
* INOUT : br_197 
* INOUT : bl_198 
* INOUT : br_198 
* INOUT : bl_199 
* INOUT : br_199 
* INOUT : bl_200 
* INOUT : br_200 
* INOUT : bl_201 
* INOUT : br_201 
* INOUT : bl_202 
* INOUT : br_202 
* INOUT : bl_203 
* INOUT : br_203 
* INOUT : bl_204 
* INOUT : br_204 
* INOUT : bl_205 
* INOUT : br_205 
* INOUT : bl_206 
* INOUT : br_206 
* INOUT : bl_207 
* INOUT : br_207 
* INOUT : bl_208 
* INOUT : br_208 
* INOUT : bl_209 
* INOUT : br_209 
* INOUT : bl_210 
* INOUT : br_210 
* INOUT : bl_211 
* INOUT : br_211 
* INOUT : bl_212 
* INOUT : br_212 
* INOUT : bl_213 
* INOUT : br_213 
* INOUT : bl_214 
* INOUT : br_214 
* INOUT : bl_215 
* INOUT : br_215 
* INOUT : bl_216 
* INOUT : br_216 
* INOUT : bl_217 
* INOUT : br_217 
* INOUT : bl_218 
* INOUT : br_218 
* INOUT : bl_219 
* INOUT : br_219 
* INOUT : bl_220 
* INOUT : br_220 
* INOUT : bl_221 
* INOUT : br_221 
* INOUT : bl_222 
* INOUT : br_222 
* INOUT : bl_223 
* INOUT : br_223 
* INOUT : bl_224 
* INOUT : br_224 
* INOUT : bl_225 
* INOUT : br_225 
* INOUT : bl_226 
* INOUT : br_226 
* INOUT : bl_227 
* INOUT : br_227 
* INOUT : bl_228 
* INOUT : br_228 
* INOUT : bl_229 
* INOUT : br_229 
* INOUT : bl_230 
* INOUT : br_230 
* INOUT : bl_231 
* INOUT : br_231 
* INOUT : bl_232 
* INOUT : br_232 
* INOUT : bl_233 
* INOUT : br_233 
* INOUT : bl_234 
* INOUT : br_234 
* INOUT : bl_235 
* INOUT : br_235 
* INOUT : bl_236 
* INOUT : br_236 
* INOUT : bl_237 
* INOUT : br_237 
* INOUT : bl_238 
* INOUT : br_238 
* INOUT : bl_239 
* INOUT : br_239 
* INOUT : bl_240 
* INOUT : br_240 
* INOUT : bl_241 
* INOUT : br_241 
* INOUT : bl_242 
* INOUT : br_242 
* INOUT : bl_243 
* INOUT : br_243 
* INOUT : bl_244 
* INOUT : br_244 
* INOUT : bl_245 
* INOUT : br_245 
* INOUT : bl_246 
* INOUT : br_246 
* INOUT : bl_247 
* INOUT : br_247 
* INOUT : bl_248 
* INOUT : br_248 
* INOUT : bl_249 
* INOUT : br_249 
* INOUT : bl_250 
* INOUT : br_250 
* INOUT : bl_251 
* INOUT : br_251 
* INOUT : bl_252 
* INOUT : br_252 
* INOUT : bl_253 
* INOUT : br_253 
* INOUT : bl_254 
* INOUT : br_254 
* INOUT : bl_255 
* INOUT : br_255 
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
* OUTPUT: dout_128 
* OUTPUT: dout_129 
* OUTPUT: dout_130 
* OUTPUT: dout_131 
* OUTPUT: dout_132 
* OUTPUT: dout_133 
* OUTPUT: dout_134 
* OUTPUT: dout_135 
* OUTPUT: dout_136 
* OUTPUT: dout_137 
* OUTPUT: dout_138 
* OUTPUT: dout_139 
* OUTPUT: dout_140 
* OUTPUT: dout_141 
* OUTPUT: dout_142 
* OUTPUT: dout_143 
* OUTPUT: dout_144 
* OUTPUT: dout_145 
* OUTPUT: dout_146 
* OUTPUT: dout_147 
* OUTPUT: dout_148 
* OUTPUT: dout_149 
* OUTPUT: dout_150 
* OUTPUT: dout_151 
* OUTPUT: dout_152 
* OUTPUT: dout_153 
* OUTPUT: dout_154 
* OUTPUT: dout_155 
* OUTPUT: dout_156 
* OUTPUT: dout_157 
* OUTPUT: dout_158 
* OUTPUT: dout_159 
* OUTPUT: dout_160 
* OUTPUT: dout_161 
* OUTPUT: dout_162 
* OUTPUT: dout_163 
* OUTPUT: dout_164 
* OUTPUT: dout_165 
* OUTPUT: dout_166 
* OUTPUT: dout_167 
* OUTPUT: dout_168 
* OUTPUT: dout_169 
* OUTPUT: dout_170 
* OUTPUT: dout_171 
* OUTPUT: dout_172 
* OUTPUT: dout_173 
* OUTPUT: dout_174 
* OUTPUT: dout_175 
* OUTPUT: dout_176 
* OUTPUT: dout_177 
* OUTPUT: dout_178 
* OUTPUT: dout_179 
* OUTPUT: dout_180 
* OUTPUT: dout_181 
* OUTPUT: dout_182 
* OUTPUT: dout_183 
* OUTPUT: dout_184 
* OUTPUT: dout_185 
* OUTPUT: dout_186 
* OUTPUT: dout_187 
* OUTPUT: dout_188 
* OUTPUT: dout_189 
* OUTPUT: dout_190 
* OUTPUT: dout_191 
* OUTPUT: dout_192 
* OUTPUT: dout_193 
* OUTPUT: dout_194 
* OUTPUT: dout_195 
* OUTPUT: dout_196 
* OUTPUT: dout_197 
* OUTPUT: dout_198 
* OUTPUT: dout_199 
* OUTPUT: dout_200 
* OUTPUT: dout_201 
* OUTPUT: dout_202 
* OUTPUT: dout_203 
* OUTPUT: dout_204 
* OUTPUT: dout_205 
* OUTPUT: dout_206 
* OUTPUT: dout_207 
* OUTPUT: dout_208 
* OUTPUT: dout_209 
* OUTPUT: dout_210 
* OUTPUT: dout_211 
* OUTPUT: dout_212 
* OUTPUT: dout_213 
* OUTPUT: dout_214 
* OUTPUT: dout_215 
* OUTPUT: dout_216 
* OUTPUT: dout_217 
* OUTPUT: dout_218 
* OUTPUT: dout_219 
* OUTPUT: dout_220 
* OUTPUT: dout_221 
* OUTPUT: dout_222 
* OUTPUT: dout_223 
* OUTPUT: dout_224 
* OUTPUT: dout_225 
* OUTPUT: dout_226 
* OUTPUT: dout_227 
* OUTPUT: dout_228 
* OUTPUT: dout_229 
* OUTPUT: dout_230 
* OUTPUT: dout_231 
* OUTPUT: dout_232 
* OUTPUT: dout_233 
* OUTPUT: dout_234 
* OUTPUT: dout_235 
* OUTPUT: dout_236 
* OUTPUT: dout_237 
* OUTPUT: dout_238 
* OUTPUT: dout_239 
* OUTPUT: dout_240 
* OUTPUT: dout_241 
* OUTPUT: dout_242 
* OUTPUT: dout_243 
* OUTPUT: dout_244 
* OUTPUT: dout_245 
* OUTPUT: dout_246 
* OUTPUT: dout_247 
* OUTPUT: dout_248 
* OUTPUT: dout_249 
* OUTPUT: dout_250 
* OUTPUT: dout_251 
* OUTPUT: dout_252 
* OUTPUT: dout_253 
* OUTPUT: dout_254 
* OUTPUT: dout_255 
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
* INPUT : din_128 
* INPUT : din_129 
* INPUT : din_130 
* INPUT : din_131 
* INPUT : din_132 
* INPUT : din_133 
* INPUT : din_134 
* INPUT : din_135 
* INPUT : din_136 
* INPUT : din_137 
* INPUT : din_138 
* INPUT : din_139 
* INPUT : din_140 
* INPUT : din_141 
* INPUT : din_142 
* INPUT : din_143 
* INPUT : din_144 
* INPUT : din_145 
* INPUT : din_146 
* INPUT : din_147 
* INPUT : din_148 
* INPUT : din_149 
* INPUT : din_150 
* INPUT : din_151 
* INPUT : din_152 
* INPUT : din_153 
* INPUT : din_154 
* INPUT : din_155 
* INPUT : din_156 
* INPUT : din_157 
* INPUT : din_158 
* INPUT : din_159 
* INPUT : din_160 
* INPUT : din_161 
* INPUT : din_162 
* INPUT : din_163 
* INPUT : din_164 
* INPUT : din_165 
* INPUT : din_166 
* INPUT : din_167 
* INPUT : din_168 
* INPUT : din_169 
* INPUT : din_170 
* INPUT : din_171 
* INPUT : din_172 
* INPUT : din_173 
* INPUT : din_174 
* INPUT : din_175 
* INPUT : din_176 
* INPUT : din_177 
* INPUT : din_178 
* INPUT : din_179 
* INPUT : din_180 
* INPUT : din_181 
* INPUT : din_182 
* INPUT : din_183 
* INPUT : din_184 
* INPUT : din_185 
* INPUT : din_186 
* INPUT : din_187 
* INPUT : din_188 
* INPUT : din_189 
* INPUT : din_190 
* INPUT : din_191 
* INPUT : din_192 
* INPUT : din_193 
* INPUT : din_194 
* INPUT : din_195 
* INPUT : din_196 
* INPUT : din_197 
* INPUT : din_198 
* INPUT : din_199 
* INPUT : din_200 
* INPUT : din_201 
* INPUT : din_202 
* INPUT : din_203 
* INPUT : din_204 
* INPUT : din_205 
* INPUT : din_206 
* INPUT : din_207 
* INPUT : din_208 
* INPUT : din_209 
* INPUT : din_210 
* INPUT : din_211 
* INPUT : din_212 
* INPUT : din_213 
* INPUT : din_214 
* INPUT : din_215 
* INPUT : din_216 
* INPUT : din_217 
* INPUT : din_218 
* INPUT : din_219 
* INPUT : din_220 
* INPUT : din_221 
* INPUT : din_222 
* INPUT : din_223 
* INPUT : din_224 
* INPUT : din_225 
* INPUT : din_226 
* INPUT : din_227 
* INPUT : din_228 
* INPUT : din_229 
* INPUT : din_230 
* INPUT : din_231 
* INPUT : din_232 
* INPUT : din_233 
* INPUT : din_234 
* INPUT : din_235 
* INPUT : din_236 
* INPUT : din_237 
* INPUT : din_238 
* INPUT : din_239 
* INPUT : din_240 
* INPUT : din_241 
* INPUT : din_242 
* INPUT : din_243 
* INPUT : din_244 
* INPUT : din_245 
* INPUT : din_246 
* INPUT : din_247 
* INPUT : din_248 
* INPUT : din_249 
* INPUT : din_250 
* INPUT : din_251 
* INPUT : din_252 
* INPUT : din_253 
* INPUT : din_254 
* INPUT : din_255 
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
* INPUT : bank_wmask_16 
* INPUT : bank_wmask_17 
* INPUT : bank_wmask_18 
* INPUT : bank_wmask_19 
* INPUT : bank_wmask_20 
* INPUT : bank_wmask_21 
* INPUT : bank_wmask_22 
* INPUT : bank_wmask_23 
* INPUT : bank_wmask_24 
* INPUT : bank_wmask_25 
* INPUT : bank_wmask_26 
* INPUT : bank_wmask_27 
* INPUT : bank_wmask_28 
* INPUT : bank_wmask_29 
* INPUT : bank_wmask_30 
* INPUT : bank_wmask_31 
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
+ bl_125 br_125 bl_126 br_126 bl_127 br_127 bl_128 br_128 bl_129 br_129
+ bl_130 br_130 bl_131 br_131 bl_132 br_132 bl_133 br_133 bl_134 br_134
+ bl_135 br_135 bl_136 br_136 bl_137 br_137 bl_138 br_138 bl_139 br_139
+ bl_140 br_140 bl_141 br_141 bl_142 br_142 bl_143 br_143 bl_144 br_144
+ bl_145 br_145 bl_146 br_146 bl_147 br_147 bl_148 br_148 bl_149 br_149
+ bl_150 br_150 bl_151 br_151 bl_152 br_152 bl_153 br_153 bl_154 br_154
+ bl_155 br_155 bl_156 br_156 bl_157 br_157 bl_158 br_158 bl_159 br_159
+ bl_160 br_160 bl_161 br_161 bl_162 br_162 bl_163 br_163 bl_164 br_164
+ bl_165 br_165 bl_166 br_166 bl_167 br_167 bl_168 br_168 bl_169 br_169
+ bl_170 br_170 bl_171 br_171 bl_172 br_172 bl_173 br_173 bl_174 br_174
+ bl_175 br_175 bl_176 br_176 bl_177 br_177 bl_178 br_178 bl_179 br_179
+ bl_180 br_180 bl_181 br_181 bl_182 br_182 bl_183 br_183 bl_184 br_184
+ bl_185 br_185 bl_186 br_186 bl_187 br_187 bl_188 br_188 bl_189 br_189
+ bl_190 br_190 bl_191 br_191 bl_192 br_192 bl_193 br_193 bl_194 br_194
+ bl_195 br_195 bl_196 br_196 bl_197 br_197 bl_198 br_198 bl_199 br_199
+ bl_200 br_200 bl_201 br_201 bl_202 br_202 bl_203 br_203 bl_204 br_204
+ bl_205 br_205 bl_206 br_206 bl_207 br_207 bl_208 br_208 bl_209 br_209
+ bl_210 br_210 bl_211 br_211 bl_212 br_212 bl_213 br_213 bl_214 br_214
+ bl_215 br_215 bl_216 br_216 bl_217 br_217 bl_218 br_218 bl_219 br_219
+ bl_220 br_220 bl_221 br_221 bl_222 br_222 bl_223 br_223 bl_224 br_224
+ bl_225 br_225 bl_226 br_226 bl_227 br_227 bl_228 br_228 bl_229 br_229
+ bl_230 br_230 bl_231 br_231 bl_232 br_232 bl_233 br_233 bl_234 br_234
+ bl_235 br_235 bl_236 br_236 bl_237 br_237 bl_238 br_238 bl_239 br_239
+ bl_240 br_240 bl_241 br_241 bl_242 br_242 bl_243 br_243 bl_244 br_244
+ bl_245 br_245 bl_246 br_246 bl_247 br_247 bl_248 br_248 bl_249 br_249
+ bl_250 br_250 bl_251 br_251 bl_252 br_252 bl_253 br_253 bl_254 br_254
+ bl_255 br_255 p_en_bar vdd
+ mp3_data_array_precharge_array
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
+ br_125 dout_126 bl_126 br_126 dout_127 bl_127 br_127 dout_128 bl_128
+ br_128 dout_129 bl_129 br_129 dout_130 bl_130 br_130 dout_131 bl_131
+ br_131 dout_132 bl_132 br_132 dout_133 bl_133 br_133 dout_134 bl_134
+ br_134 dout_135 bl_135 br_135 dout_136 bl_136 br_136 dout_137 bl_137
+ br_137 dout_138 bl_138 br_138 dout_139 bl_139 br_139 dout_140 bl_140
+ br_140 dout_141 bl_141 br_141 dout_142 bl_142 br_142 dout_143 bl_143
+ br_143 dout_144 bl_144 br_144 dout_145 bl_145 br_145 dout_146 bl_146
+ br_146 dout_147 bl_147 br_147 dout_148 bl_148 br_148 dout_149 bl_149
+ br_149 dout_150 bl_150 br_150 dout_151 bl_151 br_151 dout_152 bl_152
+ br_152 dout_153 bl_153 br_153 dout_154 bl_154 br_154 dout_155 bl_155
+ br_155 dout_156 bl_156 br_156 dout_157 bl_157 br_157 dout_158 bl_158
+ br_158 dout_159 bl_159 br_159 dout_160 bl_160 br_160 dout_161 bl_161
+ br_161 dout_162 bl_162 br_162 dout_163 bl_163 br_163 dout_164 bl_164
+ br_164 dout_165 bl_165 br_165 dout_166 bl_166 br_166 dout_167 bl_167
+ br_167 dout_168 bl_168 br_168 dout_169 bl_169 br_169 dout_170 bl_170
+ br_170 dout_171 bl_171 br_171 dout_172 bl_172 br_172 dout_173 bl_173
+ br_173 dout_174 bl_174 br_174 dout_175 bl_175 br_175 dout_176 bl_176
+ br_176 dout_177 bl_177 br_177 dout_178 bl_178 br_178 dout_179 bl_179
+ br_179 dout_180 bl_180 br_180 dout_181 bl_181 br_181 dout_182 bl_182
+ br_182 dout_183 bl_183 br_183 dout_184 bl_184 br_184 dout_185 bl_185
+ br_185 dout_186 bl_186 br_186 dout_187 bl_187 br_187 dout_188 bl_188
+ br_188 dout_189 bl_189 br_189 dout_190 bl_190 br_190 dout_191 bl_191
+ br_191 dout_192 bl_192 br_192 dout_193 bl_193 br_193 dout_194 bl_194
+ br_194 dout_195 bl_195 br_195 dout_196 bl_196 br_196 dout_197 bl_197
+ br_197 dout_198 bl_198 br_198 dout_199 bl_199 br_199 dout_200 bl_200
+ br_200 dout_201 bl_201 br_201 dout_202 bl_202 br_202 dout_203 bl_203
+ br_203 dout_204 bl_204 br_204 dout_205 bl_205 br_205 dout_206 bl_206
+ br_206 dout_207 bl_207 br_207 dout_208 bl_208 br_208 dout_209 bl_209
+ br_209 dout_210 bl_210 br_210 dout_211 bl_211 br_211 dout_212 bl_212
+ br_212 dout_213 bl_213 br_213 dout_214 bl_214 br_214 dout_215 bl_215
+ br_215 dout_216 bl_216 br_216 dout_217 bl_217 br_217 dout_218 bl_218
+ br_218 dout_219 bl_219 br_219 dout_220 bl_220 br_220 dout_221 bl_221
+ br_221 dout_222 bl_222 br_222 dout_223 bl_223 br_223 dout_224 bl_224
+ br_224 dout_225 bl_225 br_225 dout_226 bl_226 br_226 dout_227 bl_227
+ br_227 dout_228 bl_228 br_228 dout_229 bl_229 br_229 dout_230 bl_230
+ br_230 dout_231 bl_231 br_231 dout_232 bl_232 br_232 dout_233 bl_233
+ br_233 dout_234 bl_234 br_234 dout_235 bl_235 br_235 dout_236 bl_236
+ br_236 dout_237 bl_237 br_237 dout_238 bl_238 br_238 dout_239 bl_239
+ br_239 dout_240 bl_240 br_240 dout_241 bl_241 br_241 dout_242 bl_242
+ br_242 dout_243 bl_243 br_243 dout_244 bl_244 br_244 dout_245 bl_245
+ br_245 dout_246 bl_246 br_246 dout_247 bl_247 br_247 dout_248 bl_248
+ br_248 dout_249 bl_249 br_249 dout_250 bl_250 br_250 dout_251 bl_251
+ br_251 dout_252 bl_252 br_252 dout_253 bl_253 br_253 dout_254 bl_254
+ br_254 dout_255 bl_255 br_255 s_en vdd gnd
+ mp3_data_array_sense_amp_array
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
+ din_125 din_126 din_127 din_128 din_129 din_130 din_131 din_132
+ din_133 din_134 din_135 din_136 din_137 din_138 din_139 din_140
+ din_141 din_142 din_143 din_144 din_145 din_146 din_147 din_148
+ din_149 din_150 din_151 din_152 din_153 din_154 din_155 din_156
+ din_157 din_158 din_159 din_160 din_161 din_162 din_163 din_164
+ din_165 din_166 din_167 din_168 din_169 din_170 din_171 din_172
+ din_173 din_174 din_175 din_176 din_177 din_178 din_179 din_180
+ din_181 din_182 din_183 din_184 din_185 din_186 din_187 din_188
+ din_189 din_190 din_191 din_192 din_193 din_194 din_195 din_196
+ din_197 din_198 din_199 din_200 din_201 din_202 din_203 din_204
+ din_205 din_206 din_207 din_208 din_209 din_210 din_211 din_212
+ din_213 din_214 din_215 din_216 din_217 din_218 din_219 din_220
+ din_221 din_222 din_223 din_224 din_225 din_226 din_227 din_228
+ din_229 din_230 din_231 din_232 din_233 din_234 din_235 din_236
+ din_237 din_238 din_239 din_240 din_241 din_242 din_243 din_244
+ din_245 din_246 din_247 din_248 din_249 din_250 din_251 din_252
+ din_253 din_254 din_255 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4
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
+ bl_124 br_124 bl_125 br_125 bl_126 br_126 bl_127 br_127 bl_128 br_128
+ bl_129 br_129 bl_130 br_130 bl_131 br_131 bl_132 br_132 bl_133 br_133
+ bl_134 br_134 bl_135 br_135 bl_136 br_136 bl_137 br_137 bl_138 br_138
+ bl_139 br_139 bl_140 br_140 bl_141 br_141 bl_142 br_142 bl_143 br_143
+ bl_144 br_144 bl_145 br_145 bl_146 br_146 bl_147 br_147 bl_148 br_148
+ bl_149 br_149 bl_150 br_150 bl_151 br_151 bl_152 br_152 bl_153 br_153
+ bl_154 br_154 bl_155 br_155 bl_156 br_156 bl_157 br_157 bl_158 br_158
+ bl_159 br_159 bl_160 br_160 bl_161 br_161 bl_162 br_162 bl_163 br_163
+ bl_164 br_164 bl_165 br_165 bl_166 br_166 bl_167 br_167 bl_168 br_168
+ bl_169 br_169 bl_170 br_170 bl_171 br_171 bl_172 br_172 bl_173 br_173
+ bl_174 br_174 bl_175 br_175 bl_176 br_176 bl_177 br_177 bl_178 br_178
+ bl_179 br_179 bl_180 br_180 bl_181 br_181 bl_182 br_182 bl_183 br_183
+ bl_184 br_184 bl_185 br_185 bl_186 br_186 bl_187 br_187 bl_188 br_188
+ bl_189 br_189 bl_190 br_190 bl_191 br_191 bl_192 br_192 bl_193 br_193
+ bl_194 br_194 bl_195 br_195 bl_196 br_196 bl_197 br_197 bl_198 br_198
+ bl_199 br_199 bl_200 br_200 bl_201 br_201 bl_202 br_202 bl_203 br_203
+ bl_204 br_204 bl_205 br_205 bl_206 br_206 bl_207 br_207 bl_208 br_208
+ bl_209 br_209 bl_210 br_210 bl_211 br_211 bl_212 br_212 bl_213 br_213
+ bl_214 br_214 bl_215 br_215 bl_216 br_216 bl_217 br_217 bl_218 br_218
+ bl_219 br_219 bl_220 br_220 bl_221 br_221 bl_222 br_222 bl_223 br_223
+ bl_224 br_224 bl_225 br_225 bl_226 br_226 bl_227 br_227 bl_228 br_228
+ bl_229 br_229 bl_230 br_230 bl_231 br_231 bl_232 br_232 bl_233 br_233
+ bl_234 br_234 bl_235 br_235 bl_236 br_236 bl_237 br_237 bl_238 br_238
+ bl_239 br_239 bl_240 br_240 bl_241 br_241 bl_242 br_242 bl_243 br_243
+ bl_244 br_244 bl_245 br_245 bl_246 br_246 bl_247 br_247 bl_248 br_248
+ bl_249 br_249 bl_250 br_250 bl_251 br_251 bl_252 br_252 bl_253 br_253
+ bl_254 br_254 bl_255 br_255 wdriver_sel_0 wdriver_sel_1 wdriver_sel_2
+ wdriver_sel_3 wdriver_sel_4 wdriver_sel_5 wdriver_sel_6 wdriver_sel_7
+ wdriver_sel_8 wdriver_sel_9 wdriver_sel_10 wdriver_sel_11
+ wdriver_sel_12 wdriver_sel_13 wdriver_sel_14 wdriver_sel_15
+ wdriver_sel_16 wdriver_sel_17 wdriver_sel_18 wdriver_sel_19
+ wdriver_sel_20 wdriver_sel_21 wdriver_sel_22 wdriver_sel_23
+ wdriver_sel_24 wdriver_sel_25 wdriver_sel_26 wdriver_sel_27
+ wdriver_sel_28 wdriver_sel_29 wdriver_sel_30 wdriver_sel_31 vdd gnd
+ mp3_data_array_write_driver_array
Xwrite_mask_and_array0
+ bank_wmask_0 bank_wmask_1 bank_wmask_2 bank_wmask_3 bank_wmask_4
+ bank_wmask_5 bank_wmask_6 bank_wmask_7 bank_wmask_8 bank_wmask_9
+ bank_wmask_10 bank_wmask_11 bank_wmask_12 bank_wmask_13 bank_wmask_14
+ bank_wmask_15 bank_wmask_16 bank_wmask_17 bank_wmask_18 bank_wmask_19
+ bank_wmask_20 bank_wmask_21 bank_wmask_22 bank_wmask_23 bank_wmask_24
+ bank_wmask_25 bank_wmask_26 bank_wmask_27 bank_wmask_28 bank_wmask_29
+ bank_wmask_30 bank_wmask_31 w_en wdriver_sel_0 wdriver_sel_1
+ wdriver_sel_2 wdriver_sel_3 wdriver_sel_4 wdriver_sel_5 wdriver_sel_6
+ wdriver_sel_7 wdriver_sel_8 wdriver_sel_9 wdriver_sel_10
+ wdriver_sel_11 wdriver_sel_12 wdriver_sel_13 wdriver_sel_14
+ wdriver_sel_15 wdriver_sel_16 wdriver_sel_17 wdriver_sel_18
+ wdriver_sel_19 wdriver_sel_20 wdriver_sel_21 wdriver_sel_22
+ wdriver_sel_23 wdriver_sel_24 wdriver_sel_25 wdriver_sel_26
+ wdriver_sel_27 wdriver_sel_28 wdriver_sel_29 wdriver_sel_30
+ wdriver_sel_31 vdd gnd
+ mp3_data_array_write_mask_and_array
.ENDS mp3_data_array_port_data

.SUBCKT mp3_data_array_bank
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
+ dout0_128 dout0_129 dout0_130 dout0_131 dout0_132 dout0_133 dout0_134
+ dout0_135 dout0_136 dout0_137 dout0_138 dout0_139 dout0_140 dout0_141
+ dout0_142 dout0_143 dout0_144 dout0_145 dout0_146 dout0_147 dout0_148
+ dout0_149 dout0_150 dout0_151 dout0_152 dout0_153 dout0_154 dout0_155
+ dout0_156 dout0_157 dout0_158 dout0_159 dout0_160 dout0_161 dout0_162
+ dout0_163 dout0_164 dout0_165 dout0_166 dout0_167 dout0_168 dout0_169
+ dout0_170 dout0_171 dout0_172 dout0_173 dout0_174 dout0_175 dout0_176
+ dout0_177 dout0_178 dout0_179 dout0_180 dout0_181 dout0_182 dout0_183
+ dout0_184 dout0_185 dout0_186 dout0_187 dout0_188 dout0_189 dout0_190
+ dout0_191 dout0_192 dout0_193 dout0_194 dout0_195 dout0_196 dout0_197
+ dout0_198 dout0_199 dout0_200 dout0_201 dout0_202 dout0_203 dout0_204
+ dout0_205 dout0_206 dout0_207 dout0_208 dout0_209 dout0_210 dout0_211
+ dout0_212 dout0_213 dout0_214 dout0_215 dout0_216 dout0_217 dout0_218
+ dout0_219 dout0_220 dout0_221 dout0_222 dout0_223 dout0_224 dout0_225
+ dout0_226 dout0_227 dout0_228 dout0_229 dout0_230 dout0_231 dout0_232
+ dout0_233 dout0_234 dout0_235 dout0_236 dout0_237 dout0_238 dout0_239
+ dout0_240 dout0_241 dout0_242 dout0_243 dout0_244 dout0_245 dout0_246
+ dout0_247 dout0_248 dout0_249 dout0_250 dout0_251 dout0_252 dout0_253
+ dout0_254 dout0_255 rbl_bl_0_0 din0_0 din0_1 din0_2 din0_3 din0_4
+ din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13
+ din0_14 din0_15 din0_16 din0_17 din0_18 din0_19 din0_20 din0_21
+ din0_22 din0_23 din0_24 din0_25 din0_26 din0_27 din0_28 din0_29
+ din0_30 din0_31 din0_32 din0_33 din0_34 din0_35 din0_36 din0_37
+ din0_38 din0_39 din0_40 din0_41 din0_42 din0_43 din0_44 din0_45
+ din0_46 din0_47 din0_48 din0_49 din0_50 din0_51 din0_52 din0_53
+ din0_54 din0_55 din0_56 din0_57 din0_58 din0_59 din0_60 din0_61
+ din0_62 din0_63 din0_64 din0_65 din0_66 din0_67 din0_68 din0_69
+ din0_70 din0_71 din0_72 din0_73 din0_74 din0_75 din0_76 din0_77
+ din0_78 din0_79 din0_80 din0_81 din0_82 din0_83 din0_84 din0_85
+ din0_86 din0_87 din0_88 din0_89 din0_90 din0_91 din0_92 din0_93
+ din0_94 din0_95 din0_96 din0_97 din0_98 din0_99 din0_100 din0_101
+ din0_102 din0_103 din0_104 din0_105 din0_106 din0_107 din0_108
+ din0_109 din0_110 din0_111 din0_112 din0_113 din0_114 din0_115
+ din0_116 din0_117 din0_118 din0_119 din0_120 din0_121 din0_122
+ din0_123 din0_124 din0_125 din0_126 din0_127 din0_128 din0_129
+ din0_130 din0_131 din0_132 din0_133 din0_134 din0_135 din0_136
+ din0_137 din0_138 din0_139 din0_140 din0_141 din0_142 din0_143
+ din0_144 din0_145 din0_146 din0_147 din0_148 din0_149 din0_150
+ din0_151 din0_152 din0_153 din0_154 din0_155 din0_156 din0_157
+ din0_158 din0_159 din0_160 din0_161 din0_162 din0_163 din0_164
+ din0_165 din0_166 din0_167 din0_168 din0_169 din0_170 din0_171
+ din0_172 din0_173 din0_174 din0_175 din0_176 din0_177 din0_178
+ din0_179 din0_180 din0_181 din0_182 din0_183 din0_184 din0_185
+ din0_186 din0_187 din0_188 din0_189 din0_190 din0_191 din0_192
+ din0_193 din0_194 din0_195 din0_196 din0_197 din0_198 din0_199
+ din0_200 din0_201 din0_202 din0_203 din0_204 din0_205 din0_206
+ din0_207 din0_208 din0_209 din0_210 din0_211 din0_212 din0_213
+ din0_214 din0_215 din0_216 din0_217 din0_218 din0_219 din0_220
+ din0_221 din0_222 din0_223 din0_224 din0_225 din0_226 din0_227
+ din0_228 din0_229 din0_230 din0_231 din0_232 din0_233 din0_234
+ din0_235 din0_236 din0_237 din0_238 din0_239 din0_240 din0_241
+ din0_242 din0_243 din0_244 din0_245 din0_246 din0_247 din0_248
+ din0_249 din0_250 din0_251 din0_252 din0_253 din0_254 din0_255 addr0_0
+ addr0_1 addr0_2 addr0_3 s_en0 p_en_bar0 w_en0 bank_wmask0_0
+ bank_wmask0_1 bank_wmask0_2 bank_wmask0_3 bank_wmask0_4 bank_wmask0_5
+ bank_wmask0_6 bank_wmask0_7 bank_wmask0_8 bank_wmask0_9 bank_wmask0_10
+ bank_wmask0_11 bank_wmask0_12 bank_wmask0_13 bank_wmask0_14
+ bank_wmask0_15 bank_wmask0_16 bank_wmask0_17 bank_wmask0_18
+ bank_wmask0_19 bank_wmask0_20 bank_wmask0_21 bank_wmask0_22
+ bank_wmask0_23 bank_wmask0_24 bank_wmask0_25 bank_wmask0_26
+ bank_wmask0_27 bank_wmask0_28 bank_wmask0_29 bank_wmask0_30
+ bank_wmask0_31 wl_en0 vdd gnd
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
* OUTPUT: dout0_128 
* OUTPUT: dout0_129 
* OUTPUT: dout0_130 
* OUTPUT: dout0_131 
* OUTPUT: dout0_132 
* OUTPUT: dout0_133 
* OUTPUT: dout0_134 
* OUTPUT: dout0_135 
* OUTPUT: dout0_136 
* OUTPUT: dout0_137 
* OUTPUT: dout0_138 
* OUTPUT: dout0_139 
* OUTPUT: dout0_140 
* OUTPUT: dout0_141 
* OUTPUT: dout0_142 
* OUTPUT: dout0_143 
* OUTPUT: dout0_144 
* OUTPUT: dout0_145 
* OUTPUT: dout0_146 
* OUTPUT: dout0_147 
* OUTPUT: dout0_148 
* OUTPUT: dout0_149 
* OUTPUT: dout0_150 
* OUTPUT: dout0_151 
* OUTPUT: dout0_152 
* OUTPUT: dout0_153 
* OUTPUT: dout0_154 
* OUTPUT: dout0_155 
* OUTPUT: dout0_156 
* OUTPUT: dout0_157 
* OUTPUT: dout0_158 
* OUTPUT: dout0_159 
* OUTPUT: dout0_160 
* OUTPUT: dout0_161 
* OUTPUT: dout0_162 
* OUTPUT: dout0_163 
* OUTPUT: dout0_164 
* OUTPUT: dout0_165 
* OUTPUT: dout0_166 
* OUTPUT: dout0_167 
* OUTPUT: dout0_168 
* OUTPUT: dout0_169 
* OUTPUT: dout0_170 
* OUTPUT: dout0_171 
* OUTPUT: dout0_172 
* OUTPUT: dout0_173 
* OUTPUT: dout0_174 
* OUTPUT: dout0_175 
* OUTPUT: dout0_176 
* OUTPUT: dout0_177 
* OUTPUT: dout0_178 
* OUTPUT: dout0_179 
* OUTPUT: dout0_180 
* OUTPUT: dout0_181 
* OUTPUT: dout0_182 
* OUTPUT: dout0_183 
* OUTPUT: dout0_184 
* OUTPUT: dout0_185 
* OUTPUT: dout0_186 
* OUTPUT: dout0_187 
* OUTPUT: dout0_188 
* OUTPUT: dout0_189 
* OUTPUT: dout0_190 
* OUTPUT: dout0_191 
* OUTPUT: dout0_192 
* OUTPUT: dout0_193 
* OUTPUT: dout0_194 
* OUTPUT: dout0_195 
* OUTPUT: dout0_196 
* OUTPUT: dout0_197 
* OUTPUT: dout0_198 
* OUTPUT: dout0_199 
* OUTPUT: dout0_200 
* OUTPUT: dout0_201 
* OUTPUT: dout0_202 
* OUTPUT: dout0_203 
* OUTPUT: dout0_204 
* OUTPUT: dout0_205 
* OUTPUT: dout0_206 
* OUTPUT: dout0_207 
* OUTPUT: dout0_208 
* OUTPUT: dout0_209 
* OUTPUT: dout0_210 
* OUTPUT: dout0_211 
* OUTPUT: dout0_212 
* OUTPUT: dout0_213 
* OUTPUT: dout0_214 
* OUTPUT: dout0_215 
* OUTPUT: dout0_216 
* OUTPUT: dout0_217 
* OUTPUT: dout0_218 
* OUTPUT: dout0_219 
* OUTPUT: dout0_220 
* OUTPUT: dout0_221 
* OUTPUT: dout0_222 
* OUTPUT: dout0_223 
* OUTPUT: dout0_224 
* OUTPUT: dout0_225 
* OUTPUT: dout0_226 
* OUTPUT: dout0_227 
* OUTPUT: dout0_228 
* OUTPUT: dout0_229 
* OUTPUT: dout0_230 
* OUTPUT: dout0_231 
* OUTPUT: dout0_232 
* OUTPUT: dout0_233 
* OUTPUT: dout0_234 
* OUTPUT: dout0_235 
* OUTPUT: dout0_236 
* OUTPUT: dout0_237 
* OUTPUT: dout0_238 
* OUTPUT: dout0_239 
* OUTPUT: dout0_240 
* OUTPUT: dout0_241 
* OUTPUT: dout0_242 
* OUTPUT: dout0_243 
* OUTPUT: dout0_244 
* OUTPUT: dout0_245 
* OUTPUT: dout0_246 
* OUTPUT: dout0_247 
* OUTPUT: dout0_248 
* OUTPUT: dout0_249 
* OUTPUT: dout0_250 
* OUTPUT: dout0_251 
* OUTPUT: dout0_252 
* OUTPUT: dout0_253 
* OUTPUT: dout0_254 
* OUTPUT: dout0_255 
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
* INPUT : din0_128 
* INPUT : din0_129 
* INPUT : din0_130 
* INPUT : din0_131 
* INPUT : din0_132 
* INPUT : din0_133 
* INPUT : din0_134 
* INPUT : din0_135 
* INPUT : din0_136 
* INPUT : din0_137 
* INPUT : din0_138 
* INPUT : din0_139 
* INPUT : din0_140 
* INPUT : din0_141 
* INPUT : din0_142 
* INPUT : din0_143 
* INPUT : din0_144 
* INPUT : din0_145 
* INPUT : din0_146 
* INPUT : din0_147 
* INPUT : din0_148 
* INPUT : din0_149 
* INPUT : din0_150 
* INPUT : din0_151 
* INPUT : din0_152 
* INPUT : din0_153 
* INPUT : din0_154 
* INPUT : din0_155 
* INPUT : din0_156 
* INPUT : din0_157 
* INPUT : din0_158 
* INPUT : din0_159 
* INPUT : din0_160 
* INPUT : din0_161 
* INPUT : din0_162 
* INPUT : din0_163 
* INPUT : din0_164 
* INPUT : din0_165 
* INPUT : din0_166 
* INPUT : din0_167 
* INPUT : din0_168 
* INPUT : din0_169 
* INPUT : din0_170 
* INPUT : din0_171 
* INPUT : din0_172 
* INPUT : din0_173 
* INPUT : din0_174 
* INPUT : din0_175 
* INPUT : din0_176 
* INPUT : din0_177 
* INPUT : din0_178 
* INPUT : din0_179 
* INPUT : din0_180 
* INPUT : din0_181 
* INPUT : din0_182 
* INPUT : din0_183 
* INPUT : din0_184 
* INPUT : din0_185 
* INPUT : din0_186 
* INPUT : din0_187 
* INPUT : din0_188 
* INPUT : din0_189 
* INPUT : din0_190 
* INPUT : din0_191 
* INPUT : din0_192 
* INPUT : din0_193 
* INPUT : din0_194 
* INPUT : din0_195 
* INPUT : din0_196 
* INPUT : din0_197 
* INPUT : din0_198 
* INPUT : din0_199 
* INPUT : din0_200 
* INPUT : din0_201 
* INPUT : din0_202 
* INPUT : din0_203 
* INPUT : din0_204 
* INPUT : din0_205 
* INPUT : din0_206 
* INPUT : din0_207 
* INPUT : din0_208 
* INPUT : din0_209 
* INPUT : din0_210 
* INPUT : din0_211 
* INPUT : din0_212 
* INPUT : din0_213 
* INPUT : din0_214 
* INPUT : din0_215 
* INPUT : din0_216 
* INPUT : din0_217 
* INPUT : din0_218 
* INPUT : din0_219 
* INPUT : din0_220 
* INPUT : din0_221 
* INPUT : din0_222 
* INPUT : din0_223 
* INPUT : din0_224 
* INPUT : din0_225 
* INPUT : din0_226 
* INPUT : din0_227 
* INPUT : din0_228 
* INPUT : din0_229 
* INPUT : din0_230 
* INPUT : din0_231 
* INPUT : din0_232 
* INPUT : din0_233 
* INPUT : din0_234 
* INPUT : din0_235 
* INPUT : din0_236 
* INPUT : din0_237 
* INPUT : din0_238 
* INPUT : din0_239 
* INPUT : din0_240 
* INPUT : din0_241 
* INPUT : din0_242 
* INPUT : din0_243 
* INPUT : din0_244 
* INPUT : din0_245 
* INPUT : din0_246 
* INPUT : din0_247 
* INPUT : din0_248 
* INPUT : din0_249 
* INPUT : din0_250 
* INPUT : din0_251 
* INPUT : din0_252 
* INPUT : din0_253 
* INPUT : din0_254 
* INPUT : din0_255 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
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
* INPUT : bank_wmask0_16 
* INPUT : bank_wmask0_17 
* INPUT : bank_wmask0_18 
* INPUT : bank_wmask0_19 
* INPUT : bank_wmask0_20 
* INPUT : bank_wmask0_21 
* INPUT : bank_wmask0_22 
* INPUT : bank_wmask0_23 
* INPUT : bank_wmask0_24 
* INPUT : bank_wmask0_25 
* INPUT : bank_wmask0_26 
* INPUT : bank_wmask0_27 
* INPUT : bank_wmask0_28 
* INPUT : bank_wmask0_29 
* INPUT : bank_wmask0_30 
* INPUT : bank_wmask0_31 
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
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128
+ bl_0_129 br_0_129 bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132
+ br_0_132 bl_0_133 br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135
+ bl_0_136 br_0_136 bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139
+ br_0_139 bl_0_140 br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142
+ bl_0_143 br_0_143 bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146
+ br_0_146 bl_0_147 br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149
+ bl_0_150 br_0_150 bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153
+ br_0_153 bl_0_154 br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156
+ bl_0_157 br_0_157 bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160
+ br_0_160 bl_0_161 br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163
+ bl_0_164 br_0_164 bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167
+ br_0_167 bl_0_168 br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170
+ bl_0_171 br_0_171 bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174
+ br_0_174 bl_0_175 br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177
+ bl_0_178 br_0_178 bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181
+ br_0_181 bl_0_182 br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184
+ bl_0_185 br_0_185 bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188
+ br_0_188 bl_0_189 br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191
+ bl_0_192 br_0_192 bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195
+ br_0_195 bl_0_196 br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198
+ bl_0_199 br_0_199 bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202
+ br_0_202 bl_0_203 br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205
+ bl_0_206 br_0_206 bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209
+ br_0_209 bl_0_210 br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212
+ bl_0_213 br_0_213 bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216
+ br_0_216 bl_0_217 br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219
+ bl_0_220 br_0_220 bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223
+ br_0_223 bl_0_224 br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226
+ bl_0_227 br_0_227 bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230
+ br_0_230 bl_0_231 br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233
+ bl_0_234 br_0_234 bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237
+ br_0_237 bl_0_238 br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240
+ bl_0_241 br_0_241 bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244
+ br_0_244 bl_0_245 br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247
+ bl_0_248 br_0_248 bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251
+ br_0_251 bl_0_252 br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254
+ bl_0_255 br_0_255 rbl_wl0 wl_0_0 wl_0_1 wl_0_2 wl_0_3 wl_0_4 wl_0_5
+ wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12 wl_0_13 wl_0_14
+ wl_0_15 vdd gnd
+ mp3_data_array_capped_replica_bitcell_array
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
+ br_0_125 bl_0_126 br_0_126 bl_0_127 br_0_127 bl_0_128 br_0_128
+ bl_0_129 br_0_129 bl_0_130 br_0_130 bl_0_131 br_0_131 bl_0_132
+ br_0_132 bl_0_133 br_0_133 bl_0_134 br_0_134 bl_0_135 br_0_135
+ bl_0_136 br_0_136 bl_0_137 br_0_137 bl_0_138 br_0_138 bl_0_139
+ br_0_139 bl_0_140 br_0_140 bl_0_141 br_0_141 bl_0_142 br_0_142
+ bl_0_143 br_0_143 bl_0_144 br_0_144 bl_0_145 br_0_145 bl_0_146
+ br_0_146 bl_0_147 br_0_147 bl_0_148 br_0_148 bl_0_149 br_0_149
+ bl_0_150 br_0_150 bl_0_151 br_0_151 bl_0_152 br_0_152 bl_0_153
+ br_0_153 bl_0_154 br_0_154 bl_0_155 br_0_155 bl_0_156 br_0_156
+ bl_0_157 br_0_157 bl_0_158 br_0_158 bl_0_159 br_0_159 bl_0_160
+ br_0_160 bl_0_161 br_0_161 bl_0_162 br_0_162 bl_0_163 br_0_163
+ bl_0_164 br_0_164 bl_0_165 br_0_165 bl_0_166 br_0_166 bl_0_167
+ br_0_167 bl_0_168 br_0_168 bl_0_169 br_0_169 bl_0_170 br_0_170
+ bl_0_171 br_0_171 bl_0_172 br_0_172 bl_0_173 br_0_173 bl_0_174
+ br_0_174 bl_0_175 br_0_175 bl_0_176 br_0_176 bl_0_177 br_0_177
+ bl_0_178 br_0_178 bl_0_179 br_0_179 bl_0_180 br_0_180 bl_0_181
+ br_0_181 bl_0_182 br_0_182 bl_0_183 br_0_183 bl_0_184 br_0_184
+ bl_0_185 br_0_185 bl_0_186 br_0_186 bl_0_187 br_0_187 bl_0_188
+ br_0_188 bl_0_189 br_0_189 bl_0_190 br_0_190 bl_0_191 br_0_191
+ bl_0_192 br_0_192 bl_0_193 br_0_193 bl_0_194 br_0_194 bl_0_195
+ br_0_195 bl_0_196 br_0_196 bl_0_197 br_0_197 bl_0_198 br_0_198
+ bl_0_199 br_0_199 bl_0_200 br_0_200 bl_0_201 br_0_201 bl_0_202
+ br_0_202 bl_0_203 br_0_203 bl_0_204 br_0_204 bl_0_205 br_0_205
+ bl_0_206 br_0_206 bl_0_207 br_0_207 bl_0_208 br_0_208 bl_0_209
+ br_0_209 bl_0_210 br_0_210 bl_0_211 br_0_211 bl_0_212 br_0_212
+ bl_0_213 br_0_213 bl_0_214 br_0_214 bl_0_215 br_0_215 bl_0_216
+ br_0_216 bl_0_217 br_0_217 bl_0_218 br_0_218 bl_0_219 br_0_219
+ bl_0_220 br_0_220 bl_0_221 br_0_221 bl_0_222 br_0_222 bl_0_223
+ br_0_223 bl_0_224 br_0_224 bl_0_225 br_0_225 bl_0_226 br_0_226
+ bl_0_227 br_0_227 bl_0_228 br_0_228 bl_0_229 br_0_229 bl_0_230
+ br_0_230 bl_0_231 br_0_231 bl_0_232 br_0_232 bl_0_233 br_0_233
+ bl_0_234 br_0_234 bl_0_235 br_0_235 bl_0_236 br_0_236 bl_0_237
+ br_0_237 bl_0_238 br_0_238 bl_0_239 br_0_239 bl_0_240 br_0_240
+ bl_0_241 br_0_241 bl_0_242 br_0_242 bl_0_243 br_0_243 bl_0_244
+ br_0_244 bl_0_245 br_0_245 bl_0_246 br_0_246 bl_0_247 br_0_247
+ bl_0_248 br_0_248 bl_0_249 br_0_249 bl_0_250 br_0_250 bl_0_251
+ br_0_251 bl_0_252 br_0_252 bl_0_253 br_0_253 bl_0_254 br_0_254
+ bl_0_255 br_0_255 dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5
+ dout0_6 dout0_7 dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13
+ dout0_14 dout0_15 dout0_16 dout0_17 dout0_18 dout0_19 dout0_20
+ dout0_21 dout0_22 dout0_23 dout0_24 dout0_25 dout0_26 dout0_27
+ dout0_28 dout0_29 dout0_30 dout0_31 dout0_32 dout0_33 dout0_34
+ dout0_35 dout0_36 dout0_37 dout0_38 dout0_39 dout0_40 dout0_41
+ dout0_42 dout0_43 dout0_44 dout0_45 dout0_46 dout0_47 dout0_48
+ dout0_49 dout0_50 dout0_51 dout0_52 dout0_53 dout0_54 dout0_55
+ dout0_56 dout0_57 dout0_58 dout0_59 dout0_60 dout0_61 dout0_62
+ dout0_63 dout0_64 dout0_65 dout0_66 dout0_67 dout0_68 dout0_69
+ dout0_70 dout0_71 dout0_72 dout0_73 dout0_74 dout0_75 dout0_76
+ dout0_77 dout0_78 dout0_79 dout0_80 dout0_81 dout0_82 dout0_83
+ dout0_84 dout0_85 dout0_86 dout0_87 dout0_88 dout0_89 dout0_90
+ dout0_91 dout0_92 dout0_93 dout0_94 dout0_95 dout0_96 dout0_97
+ dout0_98 dout0_99 dout0_100 dout0_101 dout0_102 dout0_103 dout0_104
+ dout0_105 dout0_106 dout0_107 dout0_108 dout0_109 dout0_110 dout0_111
+ dout0_112 dout0_113 dout0_114 dout0_115 dout0_116 dout0_117 dout0_118
+ dout0_119 dout0_120 dout0_121 dout0_122 dout0_123 dout0_124 dout0_125
+ dout0_126 dout0_127 dout0_128 dout0_129 dout0_130 dout0_131 dout0_132
+ dout0_133 dout0_134 dout0_135 dout0_136 dout0_137 dout0_138 dout0_139
+ dout0_140 dout0_141 dout0_142 dout0_143 dout0_144 dout0_145 dout0_146
+ dout0_147 dout0_148 dout0_149 dout0_150 dout0_151 dout0_152 dout0_153
+ dout0_154 dout0_155 dout0_156 dout0_157 dout0_158 dout0_159 dout0_160
+ dout0_161 dout0_162 dout0_163 dout0_164 dout0_165 dout0_166 dout0_167
+ dout0_168 dout0_169 dout0_170 dout0_171 dout0_172 dout0_173 dout0_174
+ dout0_175 dout0_176 dout0_177 dout0_178 dout0_179 dout0_180 dout0_181
+ dout0_182 dout0_183 dout0_184 dout0_185 dout0_186 dout0_187 dout0_188
+ dout0_189 dout0_190 dout0_191 dout0_192 dout0_193 dout0_194 dout0_195
+ dout0_196 dout0_197 dout0_198 dout0_199 dout0_200 dout0_201 dout0_202
+ dout0_203 dout0_204 dout0_205 dout0_206 dout0_207 dout0_208 dout0_209
+ dout0_210 dout0_211 dout0_212 dout0_213 dout0_214 dout0_215 dout0_216
+ dout0_217 dout0_218 dout0_219 dout0_220 dout0_221 dout0_222 dout0_223
+ dout0_224 dout0_225 dout0_226 dout0_227 dout0_228 dout0_229 dout0_230
+ dout0_231 dout0_232 dout0_233 dout0_234 dout0_235 dout0_236 dout0_237
+ dout0_238 dout0_239 dout0_240 dout0_241 dout0_242 dout0_243 dout0_244
+ dout0_245 dout0_246 dout0_247 dout0_248 dout0_249 dout0_250 dout0_251
+ dout0_252 dout0_253 dout0_254 dout0_255 din0_0 din0_1 din0_2 din0_3
+ din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12
+ din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 din0_19 din0_20
+ din0_21 din0_22 din0_23 din0_24 din0_25 din0_26 din0_27 din0_28
+ din0_29 din0_30 din0_31 din0_32 din0_33 din0_34 din0_35 din0_36
+ din0_37 din0_38 din0_39 din0_40 din0_41 din0_42 din0_43 din0_44
+ din0_45 din0_46 din0_47 din0_48 din0_49 din0_50 din0_51 din0_52
+ din0_53 din0_54 din0_55 din0_56 din0_57 din0_58 din0_59 din0_60
+ din0_61 din0_62 din0_63 din0_64 din0_65 din0_66 din0_67 din0_68
+ din0_69 din0_70 din0_71 din0_72 din0_73 din0_74 din0_75 din0_76
+ din0_77 din0_78 din0_79 din0_80 din0_81 din0_82 din0_83 din0_84
+ din0_85 din0_86 din0_87 din0_88 din0_89 din0_90 din0_91 din0_92
+ din0_93 din0_94 din0_95 din0_96 din0_97 din0_98 din0_99 din0_100
+ din0_101 din0_102 din0_103 din0_104 din0_105 din0_106 din0_107
+ din0_108 din0_109 din0_110 din0_111 din0_112 din0_113 din0_114
+ din0_115 din0_116 din0_117 din0_118 din0_119 din0_120 din0_121
+ din0_122 din0_123 din0_124 din0_125 din0_126 din0_127 din0_128
+ din0_129 din0_130 din0_131 din0_132 din0_133 din0_134 din0_135
+ din0_136 din0_137 din0_138 din0_139 din0_140 din0_141 din0_142
+ din0_143 din0_144 din0_145 din0_146 din0_147 din0_148 din0_149
+ din0_150 din0_151 din0_152 din0_153 din0_154 din0_155 din0_156
+ din0_157 din0_158 din0_159 din0_160 din0_161 din0_162 din0_163
+ din0_164 din0_165 din0_166 din0_167 din0_168 din0_169 din0_170
+ din0_171 din0_172 din0_173 din0_174 din0_175 din0_176 din0_177
+ din0_178 din0_179 din0_180 din0_181 din0_182 din0_183 din0_184
+ din0_185 din0_186 din0_187 din0_188 din0_189 din0_190 din0_191
+ din0_192 din0_193 din0_194 din0_195 din0_196 din0_197 din0_198
+ din0_199 din0_200 din0_201 din0_202 din0_203 din0_204 din0_205
+ din0_206 din0_207 din0_208 din0_209 din0_210 din0_211 din0_212
+ din0_213 din0_214 din0_215 din0_216 din0_217 din0_218 din0_219
+ din0_220 din0_221 din0_222 din0_223 din0_224 din0_225 din0_226
+ din0_227 din0_228 din0_229 din0_230 din0_231 din0_232 din0_233
+ din0_234 din0_235 din0_236 din0_237 din0_238 din0_239 din0_240
+ din0_241 din0_242 din0_243 din0_244 din0_245 din0_246 din0_247
+ din0_248 din0_249 din0_250 din0_251 din0_252 din0_253 din0_254
+ din0_255 s_en0 p_en_bar0 w_en0 bank_wmask0_0 bank_wmask0_1
+ bank_wmask0_2 bank_wmask0_3 bank_wmask0_4 bank_wmask0_5 bank_wmask0_6
+ bank_wmask0_7 bank_wmask0_8 bank_wmask0_9 bank_wmask0_10
+ bank_wmask0_11 bank_wmask0_12 bank_wmask0_13 bank_wmask0_14
+ bank_wmask0_15 bank_wmask0_16 bank_wmask0_17 bank_wmask0_18
+ bank_wmask0_19 bank_wmask0_20 bank_wmask0_21 bank_wmask0_22
+ bank_wmask0_23 bank_wmask0_24 bank_wmask0_25 bank_wmask0_26
+ bank_wmask0_27 bank_wmask0_28 bank_wmask0_29 bank_wmask0_30
+ bank_wmask0_31 vdd gnd
+ mp3_data_array_port_data
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 wl_en0 wl_0_0 wl_0_1 wl_0_2 wl_0_3
+ wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12
+ wl_0_13 wl_0_14 wl_0_15 rbl_wl0 vdd gnd
+ mp3_data_array_port_address
.ENDS mp3_data_array_bank
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

.SUBCKT mp3_data_array_row_addr_dff
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
.ENDS mp3_data_array_row_addr_dff

.SUBCKT mp3_data_array_pinv_21
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_pinv_21

.SUBCKT mp3_data_array_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv1
+ dout_1 dout_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv2
+ dout_2 dout_3 vdd gnd
+ mp3_data_array_pinv_21
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv3
+ dout_3 dout_4 vdd gnd
+ mp3_data_array_pinv_21
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv4
+ dout_4 dout_5 vdd gnd
+ mp3_data_array_pinv_21
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv5
+ dout_5 dout_6 vdd gnd
+ mp3_data_array_pinv_21
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv6
+ dout_6 dout_7 vdd gnd
+ mp3_data_array_pinv_21
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv7
+ dout_7 dout_8 vdd gnd
+ mp3_data_array_pinv_21
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ mp3_data_array_pinv_21
Xdinv8
+ dout_8 out vdd gnd
+ mp3_data_array_pinv_21
Xdload_8_0
+ out n_8_0 vdd gnd
+ mp3_data_array_pinv_21
Xdload_8_1
+ out n_8_1 vdd gnd
+ mp3_data_array_pinv_21
Xdload_8_2
+ out n_8_2 vdd gnd
+ mp3_data_array_pinv_21
Xdload_8_3
+ out n_8_3 vdd gnd
+ mp3_data_array_pinv_21
.ENDS mp3_data_array_delay_chain

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_data_array_pnand3_0
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
.ENDS mp3_data_array_pnand3_0

* spice ptx M{0} {1} nmos_vtg m=75 w=0.3075u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=75 w=0.9225u l=0.05u pd=1.95u ps=1.95u as=0.12p ad=0.12p

.SUBCKT mp3_data_array_pinv_15
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 256
Mpinv_pmos Z A vdd vdd pmos_vtg m=75 w=0.9225u l=0.05u pd=1.95u ps=1.95u as=0.12p ad=0.12p
Mpinv_nmos Z A gnd gnd nmos_vtg m=75 w=0.3075u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_15

.SUBCKT mp3_data_array_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [256]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_pinv_15
.ENDS mp3_data_array_pdriver_4

.SUBCKT mp3_data_array_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 256
Xpand3_nand
+ A B C zb_int vdd gnd
+ mp3_data_array_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ mp3_data_array_pdriver_4
.ENDS mp3_data_array_pand3_0

.SUBCKT mp3_data_array_pinv_16
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_pinv_16

* spice ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

* spice ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT mp3_data_array_pinv_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_pinv_3

.SUBCKT mp3_data_array_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_pinv_2

.SUBCKT mp3_data_array_dff_buf_0
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
+ mp3_data_array_pinv_2
Xdff_buf_inv2
+ Qb Q vdd gnd
+ mp3_data_array_pinv_3
.ENDS mp3_data_array_dff_buf_0

.SUBCKT mp3_data_array_dff_buf_array
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
+ mp3_data_array_dff_buf_0
Xdff_r1_c0
+ din_1 dout_1 dout_bar_1 clk vdd gnd
+ mp3_data_array_dff_buf_0
.ENDS mp3_data_array_dff_buf_array

.SUBCKT mp3_data_array_pnand2_1
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
.ENDS mp3_data_array_pnand2_1

* spice ptx M{0} {1} pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_data_array_pinv_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_data_array_pinv_4

.SUBCKT mp3_data_array_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_pinv_4
.ENDS mp3_data_array_pdriver_0

.SUBCKT mp3_data_array_pand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ mp3_data_array_pnand2_1
Xpand2_inv
+ zb_int Z vdd gnd
+ mp3_data_array_pdriver_0
.ENDS mp3_data_array_pand2_0

* spice ptx M{0} {1} nmos_vtg m=3 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=3 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT mp3_data_array_pinv_18
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 9
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_data_array_pinv_18

* spice ptx M{0} {1} pmos_vtg m=9 w=0.84u l=0.05u pd=1.78u ps=1.78u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=9 w=0.28u l=0.05u pd=0.66u ps=0.66u as=0.04p ad=0.04p

.SUBCKT mp3_data_array_pinv_19
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 28
Mpinv_pmos Z A vdd vdd pmos_vtg m=9 w=0.84u l=0.05u pd=1.78u ps=1.78u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=9 w=0.28u l=0.05u pd=0.66u ps=0.66u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_19

* spice ptx M{0} {1} pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT mp3_data_array_pinv_17
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 3
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS mp3_data_array_pinv_17

* spice ptx M{0} {1} nmos_vtg m=25 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=25 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_pinv_20
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 85
Mpinv_pmos Z A vdd vdd pmos_vtg m=25 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=25 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_20

.SUBCKT mp3_data_array_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS mp3_data_array_pinv_7

.SUBCKT mp3_data_array_pdriver_5
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 3, 9, 28, 85]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ mp3_data_array_pinv_17
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ mp3_data_array_pinv_18
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ mp3_data_array_pinv_19
Xbuf_inv6
+ Zb5_int Z vdd gnd
+ mp3_data_array_pinv_20
.ENDS mp3_data_array_pdriver_5

* spice ptx M{0} {1} pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p

* spice ptx M{0} {1} nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p

.SUBCKT mp3_data_array_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 5
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p
.ENDS mp3_data_array_pinv_9

.SUBCKT mp3_data_array_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 5]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ mp3_data_array_pinv_9
.ENDS mp3_data_array_pdriver_2

.SUBCKT mp3_data_array_pnand2_2
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
.ENDS mp3_data_array_pnand2_2

.SUBCKT mp3_data_array_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS mp3_data_array_pinv_8

* spice ptx M{0} {1} nmos_vtg m=129 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=129 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_pinv_13
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 438
Mpinv_pmos Z A vdd vdd pmos_vtg m=129 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=129 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_13

* spice ptx M{0} {1} nmos_vtg m=43 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=43 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 146
Mpinv_pmos Z A vdd vdd pmos_vtg m=43 w=0.9175u l=0.05u pd=1.94u ps=1.94u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=43 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_12

* spice ptx M{0} {1} nmos_vtg m=15 w=0.295u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=15 w=0.8825000000000001u l=0.05u pd=1.87u ps=1.87u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 49
Mpinv_pmos Z A vdd vdd pmos_vtg m=15 w=0.8825000000000001u l=0.05u pd=1.87u ps=1.87u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=15 w=0.295u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_11

* spice ptx M{0} {1} nmos_vtg m=5 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=5 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 16
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_10

.SUBCKT mp3_data_array_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 1, 1, 1, 1, 2, 5, 16, 49, 146, 438]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv6
+ Zb5_int Zb6_int vdd gnd
+ mp3_data_array_pinv_7
Xbuf_inv7
+ Zb6_int Zb7_int vdd gnd
+ mp3_data_array_pinv_8
Xbuf_inv8
+ Zb7_int Zb8_int vdd gnd
+ mp3_data_array_pinv_9
Xbuf_inv9
+ Zb8_int Zb9_int vdd gnd
+ mp3_data_array_pinv_10
Xbuf_inv10
+ Zb9_int Zb10_int vdd gnd
+ mp3_data_array_pinv_11
Xbuf_inv11
+ Zb10_int Zb11_int vdd gnd
+ mp3_data_array_pinv_12
Xbuf_inv12
+ Zb11_int Z vdd gnd
+ mp3_data_array_pinv_13
.ENDS mp3_data_array_pdriver_1

* spice ptx M{0} {1} nmos_vtg m=78 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=78 w=0.915u l=0.05u pd=1.93u ps=1.93u as=0.11p ad=0.11p

.SUBCKT mp3_data_array_pinv_14
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 264
Mpinv_pmos Z A vdd vdd pmos_vtg m=78 w=0.915u l=0.05u pd=1.93u ps=1.93u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=78 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p
.ENDS mp3_data_array_pinv_14

.SUBCKT mp3_data_array_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [264]
Xbuf_inv1
+ A Z vdd gnd
+ mp3_data_array_pinv_14
.ENDS mp3_data_array_pdriver_3

.SUBCKT mp3_data_array_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 264
Xpand3_nand
+ A B C zb_int vdd gnd
+ mp3_data_array_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ mp3_data_array_pdriver_3
.ENDS mp3_data_array_pand3

.SUBCKT mp3_data_array_control_logic_rw
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
* word_size 256
Xctrl_dffs
+ csb web cs_bar cs we_bar we clk_buf vdd gnd
+ mp3_data_array_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ mp3_data_array_pdriver_1
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ mp3_data_array_pinv_16
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ mp3_data_array_pand2_0
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ mp3_data_array_pand2_0
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ mp3_data_array_pdriver_2
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ mp3_data_array_pinv_16
Xw_en_and
+ we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ mp3_data_array_pand3
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd
+ mp3_data_array_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ mp3_data_array_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ mp3_data_array_pnand2_2
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ mp3_data_array_pdriver_5
.ENDS mp3_data_array_control_logic_rw

.SUBCKT mp3_data_array_wmask_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 dout_8
+ dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 dout_16 dout_17
+ dout_18 dout_19 dout_20 dout_21 dout_22 dout_23 dout_24 dout_25
+ dout_26 dout_27 dout_28 dout_29 dout_30 dout_31 clk vdd gnd
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
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 32
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
.ENDS mp3_data_array_wmask_dff

.SUBCKT mp3_data_array_data_dff
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
+ din_125 din_126 din_127 din_128 din_129 din_130 din_131 din_132
+ din_133 din_134 din_135 din_136 din_137 din_138 din_139 din_140
+ din_141 din_142 din_143 din_144 din_145 din_146 din_147 din_148
+ din_149 din_150 din_151 din_152 din_153 din_154 din_155 din_156
+ din_157 din_158 din_159 din_160 din_161 din_162 din_163 din_164
+ din_165 din_166 din_167 din_168 din_169 din_170 din_171 din_172
+ din_173 din_174 din_175 din_176 din_177 din_178 din_179 din_180
+ din_181 din_182 din_183 din_184 din_185 din_186 din_187 din_188
+ din_189 din_190 din_191 din_192 din_193 din_194 din_195 din_196
+ din_197 din_198 din_199 din_200 din_201 din_202 din_203 din_204
+ din_205 din_206 din_207 din_208 din_209 din_210 din_211 din_212
+ din_213 din_214 din_215 din_216 din_217 din_218 din_219 din_220
+ din_221 din_222 din_223 din_224 din_225 din_226 din_227 din_228
+ din_229 din_230 din_231 din_232 din_233 din_234 din_235 din_236
+ din_237 din_238 din_239 din_240 din_241 din_242 din_243 din_244
+ din_245 din_246 din_247 din_248 din_249 din_250 din_251 din_252
+ din_253 din_254 din_255 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5
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
+ dout_124 dout_125 dout_126 dout_127 dout_128 dout_129 dout_130
+ dout_131 dout_132 dout_133 dout_134 dout_135 dout_136 dout_137
+ dout_138 dout_139 dout_140 dout_141 dout_142 dout_143 dout_144
+ dout_145 dout_146 dout_147 dout_148 dout_149 dout_150 dout_151
+ dout_152 dout_153 dout_154 dout_155 dout_156 dout_157 dout_158
+ dout_159 dout_160 dout_161 dout_162 dout_163 dout_164 dout_165
+ dout_166 dout_167 dout_168 dout_169 dout_170 dout_171 dout_172
+ dout_173 dout_174 dout_175 dout_176 dout_177 dout_178 dout_179
+ dout_180 dout_181 dout_182 dout_183 dout_184 dout_185 dout_186
+ dout_187 dout_188 dout_189 dout_190 dout_191 dout_192 dout_193
+ dout_194 dout_195 dout_196 dout_197 dout_198 dout_199 dout_200
+ dout_201 dout_202 dout_203 dout_204 dout_205 dout_206 dout_207
+ dout_208 dout_209 dout_210 dout_211 dout_212 dout_213 dout_214
+ dout_215 dout_216 dout_217 dout_218 dout_219 dout_220 dout_221
+ dout_222 dout_223 dout_224 dout_225 dout_226 dout_227 dout_228
+ dout_229 dout_230 dout_231 dout_232 dout_233 dout_234 dout_235
+ dout_236 dout_237 dout_238 dout_239 dout_240 dout_241 dout_242
+ dout_243 dout_244 dout_245 dout_246 dout_247 dout_248 dout_249
+ dout_250 dout_251 dout_252 dout_253 dout_254 dout_255 clk vdd gnd
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
* INPUT : din_128 
* INPUT : din_129 
* INPUT : din_130 
* INPUT : din_131 
* INPUT : din_132 
* INPUT : din_133 
* INPUT : din_134 
* INPUT : din_135 
* INPUT : din_136 
* INPUT : din_137 
* INPUT : din_138 
* INPUT : din_139 
* INPUT : din_140 
* INPUT : din_141 
* INPUT : din_142 
* INPUT : din_143 
* INPUT : din_144 
* INPUT : din_145 
* INPUT : din_146 
* INPUT : din_147 
* INPUT : din_148 
* INPUT : din_149 
* INPUT : din_150 
* INPUT : din_151 
* INPUT : din_152 
* INPUT : din_153 
* INPUT : din_154 
* INPUT : din_155 
* INPUT : din_156 
* INPUT : din_157 
* INPUT : din_158 
* INPUT : din_159 
* INPUT : din_160 
* INPUT : din_161 
* INPUT : din_162 
* INPUT : din_163 
* INPUT : din_164 
* INPUT : din_165 
* INPUT : din_166 
* INPUT : din_167 
* INPUT : din_168 
* INPUT : din_169 
* INPUT : din_170 
* INPUT : din_171 
* INPUT : din_172 
* INPUT : din_173 
* INPUT : din_174 
* INPUT : din_175 
* INPUT : din_176 
* INPUT : din_177 
* INPUT : din_178 
* INPUT : din_179 
* INPUT : din_180 
* INPUT : din_181 
* INPUT : din_182 
* INPUT : din_183 
* INPUT : din_184 
* INPUT : din_185 
* INPUT : din_186 
* INPUT : din_187 
* INPUT : din_188 
* INPUT : din_189 
* INPUT : din_190 
* INPUT : din_191 
* INPUT : din_192 
* INPUT : din_193 
* INPUT : din_194 
* INPUT : din_195 
* INPUT : din_196 
* INPUT : din_197 
* INPUT : din_198 
* INPUT : din_199 
* INPUT : din_200 
* INPUT : din_201 
* INPUT : din_202 
* INPUT : din_203 
* INPUT : din_204 
* INPUT : din_205 
* INPUT : din_206 
* INPUT : din_207 
* INPUT : din_208 
* INPUT : din_209 
* INPUT : din_210 
* INPUT : din_211 
* INPUT : din_212 
* INPUT : din_213 
* INPUT : din_214 
* INPUT : din_215 
* INPUT : din_216 
* INPUT : din_217 
* INPUT : din_218 
* INPUT : din_219 
* INPUT : din_220 
* INPUT : din_221 
* INPUT : din_222 
* INPUT : din_223 
* INPUT : din_224 
* INPUT : din_225 
* INPUT : din_226 
* INPUT : din_227 
* INPUT : din_228 
* INPUT : din_229 
* INPUT : din_230 
* INPUT : din_231 
* INPUT : din_232 
* INPUT : din_233 
* INPUT : din_234 
* INPUT : din_235 
* INPUT : din_236 
* INPUT : din_237 
* INPUT : din_238 
* INPUT : din_239 
* INPUT : din_240 
* INPUT : din_241 
* INPUT : din_242 
* INPUT : din_243 
* INPUT : din_244 
* INPUT : din_245 
* INPUT : din_246 
* INPUT : din_247 
* INPUT : din_248 
* INPUT : din_249 
* INPUT : din_250 
* INPUT : din_251 
* INPUT : din_252 
* INPUT : din_253 
* INPUT : din_254 
* INPUT : din_255 
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
* OUTPUT: dout_128 
* OUTPUT: dout_129 
* OUTPUT: dout_130 
* OUTPUT: dout_131 
* OUTPUT: dout_132 
* OUTPUT: dout_133 
* OUTPUT: dout_134 
* OUTPUT: dout_135 
* OUTPUT: dout_136 
* OUTPUT: dout_137 
* OUTPUT: dout_138 
* OUTPUT: dout_139 
* OUTPUT: dout_140 
* OUTPUT: dout_141 
* OUTPUT: dout_142 
* OUTPUT: dout_143 
* OUTPUT: dout_144 
* OUTPUT: dout_145 
* OUTPUT: dout_146 
* OUTPUT: dout_147 
* OUTPUT: dout_148 
* OUTPUT: dout_149 
* OUTPUT: dout_150 
* OUTPUT: dout_151 
* OUTPUT: dout_152 
* OUTPUT: dout_153 
* OUTPUT: dout_154 
* OUTPUT: dout_155 
* OUTPUT: dout_156 
* OUTPUT: dout_157 
* OUTPUT: dout_158 
* OUTPUT: dout_159 
* OUTPUT: dout_160 
* OUTPUT: dout_161 
* OUTPUT: dout_162 
* OUTPUT: dout_163 
* OUTPUT: dout_164 
* OUTPUT: dout_165 
* OUTPUT: dout_166 
* OUTPUT: dout_167 
* OUTPUT: dout_168 
* OUTPUT: dout_169 
* OUTPUT: dout_170 
* OUTPUT: dout_171 
* OUTPUT: dout_172 
* OUTPUT: dout_173 
* OUTPUT: dout_174 
* OUTPUT: dout_175 
* OUTPUT: dout_176 
* OUTPUT: dout_177 
* OUTPUT: dout_178 
* OUTPUT: dout_179 
* OUTPUT: dout_180 
* OUTPUT: dout_181 
* OUTPUT: dout_182 
* OUTPUT: dout_183 
* OUTPUT: dout_184 
* OUTPUT: dout_185 
* OUTPUT: dout_186 
* OUTPUT: dout_187 
* OUTPUT: dout_188 
* OUTPUT: dout_189 
* OUTPUT: dout_190 
* OUTPUT: dout_191 
* OUTPUT: dout_192 
* OUTPUT: dout_193 
* OUTPUT: dout_194 
* OUTPUT: dout_195 
* OUTPUT: dout_196 
* OUTPUT: dout_197 
* OUTPUT: dout_198 
* OUTPUT: dout_199 
* OUTPUT: dout_200 
* OUTPUT: dout_201 
* OUTPUT: dout_202 
* OUTPUT: dout_203 
* OUTPUT: dout_204 
* OUTPUT: dout_205 
* OUTPUT: dout_206 
* OUTPUT: dout_207 
* OUTPUT: dout_208 
* OUTPUT: dout_209 
* OUTPUT: dout_210 
* OUTPUT: dout_211 
* OUTPUT: dout_212 
* OUTPUT: dout_213 
* OUTPUT: dout_214 
* OUTPUT: dout_215 
* OUTPUT: dout_216 
* OUTPUT: dout_217 
* OUTPUT: dout_218 
* OUTPUT: dout_219 
* OUTPUT: dout_220 
* OUTPUT: dout_221 
* OUTPUT: dout_222 
* OUTPUT: dout_223 
* OUTPUT: dout_224 
* OUTPUT: dout_225 
* OUTPUT: dout_226 
* OUTPUT: dout_227 
* OUTPUT: dout_228 
* OUTPUT: dout_229 
* OUTPUT: dout_230 
* OUTPUT: dout_231 
* OUTPUT: dout_232 
* OUTPUT: dout_233 
* OUTPUT: dout_234 
* OUTPUT: dout_235 
* OUTPUT: dout_236 
* OUTPUT: dout_237 
* OUTPUT: dout_238 
* OUTPUT: dout_239 
* OUTPUT: dout_240 
* OUTPUT: dout_241 
* OUTPUT: dout_242 
* OUTPUT: dout_243 
* OUTPUT: dout_244 
* OUTPUT: dout_245 
* OUTPUT: dout_246 
* OUTPUT: dout_247 
* OUTPUT: dout_248 
* OUTPUT: dout_249 
* OUTPUT: dout_250 
* OUTPUT: dout_251 
* OUTPUT: dout_252 
* OUTPUT: dout_253 
* OUTPUT: dout_254 
* OUTPUT: dout_255 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 256
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
Xdff_r0_c128
+ din_128 dout_128 clk vdd gnd
+ dff
Xdff_r0_c129
+ din_129 dout_129 clk vdd gnd
+ dff
Xdff_r0_c130
+ din_130 dout_130 clk vdd gnd
+ dff
Xdff_r0_c131
+ din_131 dout_131 clk vdd gnd
+ dff
Xdff_r0_c132
+ din_132 dout_132 clk vdd gnd
+ dff
Xdff_r0_c133
+ din_133 dout_133 clk vdd gnd
+ dff
Xdff_r0_c134
+ din_134 dout_134 clk vdd gnd
+ dff
Xdff_r0_c135
+ din_135 dout_135 clk vdd gnd
+ dff
Xdff_r0_c136
+ din_136 dout_136 clk vdd gnd
+ dff
Xdff_r0_c137
+ din_137 dout_137 clk vdd gnd
+ dff
Xdff_r0_c138
+ din_138 dout_138 clk vdd gnd
+ dff
Xdff_r0_c139
+ din_139 dout_139 clk vdd gnd
+ dff
Xdff_r0_c140
+ din_140 dout_140 clk vdd gnd
+ dff
Xdff_r0_c141
+ din_141 dout_141 clk vdd gnd
+ dff
Xdff_r0_c142
+ din_142 dout_142 clk vdd gnd
+ dff
Xdff_r0_c143
+ din_143 dout_143 clk vdd gnd
+ dff
Xdff_r0_c144
+ din_144 dout_144 clk vdd gnd
+ dff
Xdff_r0_c145
+ din_145 dout_145 clk vdd gnd
+ dff
Xdff_r0_c146
+ din_146 dout_146 clk vdd gnd
+ dff
Xdff_r0_c147
+ din_147 dout_147 clk vdd gnd
+ dff
Xdff_r0_c148
+ din_148 dout_148 clk vdd gnd
+ dff
Xdff_r0_c149
+ din_149 dout_149 clk vdd gnd
+ dff
Xdff_r0_c150
+ din_150 dout_150 clk vdd gnd
+ dff
Xdff_r0_c151
+ din_151 dout_151 clk vdd gnd
+ dff
Xdff_r0_c152
+ din_152 dout_152 clk vdd gnd
+ dff
Xdff_r0_c153
+ din_153 dout_153 clk vdd gnd
+ dff
Xdff_r0_c154
+ din_154 dout_154 clk vdd gnd
+ dff
Xdff_r0_c155
+ din_155 dout_155 clk vdd gnd
+ dff
Xdff_r0_c156
+ din_156 dout_156 clk vdd gnd
+ dff
Xdff_r0_c157
+ din_157 dout_157 clk vdd gnd
+ dff
Xdff_r0_c158
+ din_158 dout_158 clk vdd gnd
+ dff
Xdff_r0_c159
+ din_159 dout_159 clk vdd gnd
+ dff
Xdff_r0_c160
+ din_160 dout_160 clk vdd gnd
+ dff
Xdff_r0_c161
+ din_161 dout_161 clk vdd gnd
+ dff
Xdff_r0_c162
+ din_162 dout_162 clk vdd gnd
+ dff
Xdff_r0_c163
+ din_163 dout_163 clk vdd gnd
+ dff
Xdff_r0_c164
+ din_164 dout_164 clk vdd gnd
+ dff
Xdff_r0_c165
+ din_165 dout_165 clk vdd gnd
+ dff
Xdff_r0_c166
+ din_166 dout_166 clk vdd gnd
+ dff
Xdff_r0_c167
+ din_167 dout_167 clk vdd gnd
+ dff
Xdff_r0_c168
+ din_168 dout_168 clk vdd gnd
+ dff
Xdff_r0_c169
+ din_169 dout_169 clk vdd gnd
+ dff
Xdff_r0_c170
+ din_170 dout_170 clk vdd gnd
+ dff
Xdff_r0_c171
+ din_171 dout_171 clk vdd gnd
+ dff
Xdff_r0_c172
+ din_172 dout_172 clk vdd gnd
+ dff
Xdff_r0_c173
+ din_173 dout_173 clk vdd gnd
+ dff
Xdff_r0_c174
+ din_174 dout_174 clk vdd gnd
+ dff
Xdff_r0_c175
+ din_175 dout_175 clk vdd gnd
+ dff
Xdff_r0_c176
+ din_176 dout_176 clk vdd gnd
+ dff
Xdff_r0_c177
+ din_177 dout_177 clk vdd gnd
+ dff
Xdff_r0_c178
+ din_178 dout_178 clk vdd gnd
+ dff
Xdff_r0_c179
+ din_179 dout_179 clk vdd gnd
+ dff
Xdff_r0_c180
+ din_180 dout_180 clk vdd gnd
+ dff
Xdff_r0_c181
+ din_181 dout_181 clk vdd gnd
+ dff
Xdff_r0_c182
+ din_182 dout_182 clk vdd gnd
+ dff
Xdff_r0_c183
+ din_183 dout_183 clk vdd gnd
+ dff
Xdff_r0_c184
+ din_184 dout_184 clk vdd gnd
+ dff
Xdff_r0_c185
+ din_185 dout_185 clk vdd gnd
+ dff
Xdff_r0_c186
+ din_186 dout_186 clk vdd gnd
+ dff
Xdff_r0_c187
+ din_187 dout_187 clk vdd gnd
+ dff
Xdff_r0_c188
+ din_188 dout_188 clk vdd gnd
+ dff
Xdff_r0_c189
+ din_189 dout_189 clk vdd gnd
+ dff
Xdff_r0_c190
+ din_190 dout_190 clk vdd gnd
+ dff
Xdff_r0_c191
+ din_191 dout_191 clk vdd gnd
+ dff
Xdff_r0_c192
+ din_192 dout_192 clk vdd gnd
+ dff
Xdff_r0_c193
+ din_193 dout_193 clk vdd gnd
+ dff
Xdff_r0_c194
+ din_194 dout_194 clk vdd gnd
+ dff
Xdff_r0_c195
+ din_195 dout_195 clk vdd gnd
+ dff
Xdff_r0_c196
+ din_196 dout_196 clk vdd gnd
+ dff
Xdff_r0_c197
+ din_197 dout_197 clk vdd gnd
+ dff
Xdff_r0_c198
+ din_198 dout_198 clk vdd gnd
+ dff
Xdff_r0_c199
+ din_199 dout_199 clk vdd gnd
+ dff
Xdff_r0_c200
+ din_200 dout_200 clk vdd gnd
+ dff
Xdff_r0_c201
+ din_201 dout_201 clk vdd gnd
+ dff
Xdff_r0_c202
+ din_202 dout_202 clk vdd gnd
+ dff
Xdff_r0_c203
+ din_203 dout_203 clk vdd gnd
+ dff
Xdff_r0_c204
+ din_204 dout_204 clk vdd gnd
+ dff
Xdff_r0_c205
+ din_205 dout_205 clk vdd gnd
+ dff
Xdff_r0_c206
+ din_206 dout_206 clk vdd gnd
+ dff
Xdff_r0_c207
+ din_207 dout_207 clk vdd gnd
+ dff
Xdff_r0_c208
+ din_208 dout_208 clk vdd gnd
+ dff
Xdff_r0_c209
+ din_209 dout_209 clk vdd gnd
+ dff
Xdff_r0_c210
+ din_210 dout_210 clk vdd gnd
+ dff
Xdff_r0_c211
+ din_211 dout_211 clk vdd gnd
+ dff
Xdff_r0_c212
+ din_212 dout_212 clk vdd gnd
+ dff
Xdff_r0_c213
+ din_213 dout_213 clk vdd gnd
+ dff
Xdff_r0_c214
+ din_214 dout_214 clk vdd gnd
+ dff
Xdff_r0_c215
+ din_215 dout_215 clk vdd gnd
+ dff
Xdff_r0_c216
+ din_216 dout_216 clk vdd gnd
+ dff
Xdff_r0_c217
+ din_217 dout_217 clk vdd gnd
+ dff
Xdff_r0_c218
+ din_218 dout_218 clk vdd gnd
+ dff
Xdff_r0_c219
+ din_219 dout_219 clk vdd gnd
+ dff
Xdff_r0_c220
+ din_220 dout_220 clk vdd gnd
+ dff
Xdff_r0_c221
+ din_221 dout_221 clk vdd gnd
+ dff
Xdff_r0_c222
+ din_222 dout_222 clk vdd gnd
+ dff
Xdff_r0_c223
+ din_223 dout_223 clk vdd gnd
+ dff
Xdff_r0_c224
+ din_224 dout_224 clk vdd gnd
+ dff
Xdff_r0_c225
+ din_225 dout_225 clk vdd gnd
+ dff
Xdff_r0_c226
+ din_226 dout_226 clk vdd gnd
+ dff
Xdff_r0_c227
+ din_227 dout_227 clk vdd gnd
+ dff
Xdff_r0_c228
+ din_228 dout_228 clk vdd gnd
+ dff
Xdff_r0_c229
+ din_229 dout_229 clk vdd gnd
+ dff
Xdff_r0_c230
+ din_230 dout_230 clk vdd gnd
+ dff
Xdff_r0_c231
+ din_231 dout_231 clk vdd gnd
+ dff
Xdff_r0_c232
+ din_232 dout_232 clk vdd gnd
+ dff
Xdff_r0_c233
+ din_233 dout_233 clk vdd gnd
+ dff
Xdff_r0_c234
+ din_234 dout_234 clk vdd gnd
+ dff
Xdff_r0_c235
+ din_235 dout_235 clk vdd gnd
+ dff
Xdff_r0_c236
+ din_236 dout_236 clk vdd gnd
+ dff
Xdff_r0_c237
+ din_237 dout_237 clk vdd gnd
+ dff
Xdff_r0_c238
+ din_238 dout_238 clk vdd gnd
+ dff
Xdff_r0_c239
+ din_239 dout_239 clk vdd gnd
+ dff
Xdff_r0_c240
+ din_240 dout_240 clk vdd gnd
+ dff
Xdff_r0_c241
+ din_241 dout_241 clk vdd gnd
+ dff
Xdff_r0_c242
+ din_242 dout_242 clk vdd gnd
+ dff
Xdff_r0_c243
+ din_243 dout_243 clk vdd gnd
+ dff
Xdff_r0_c244
+ din_244 dout_244 clk vdd gnd
+ dff
Xdff_r0_c245
+ din_245 dout_245 clk vdd gnd
+ dff
Xdff_r0_c246
+ din_246 dout_246 clk vdd gnd
+ dff
Xdff_r0_c247
+ din_247 dout_247 clk vdd gnd
+ dff
Xdff_r0_c248
+ din_248 dout_248 clk vdd gnd
+ dff
Xdff_r0_c249
+ din_249 dout_249 clk vdd gnd
+ dff
Xdff_r0_c250
+ din_250 dout_250 clk vdd gnd
+ dff
Xdff_r0_c251
+ din_251 dout_251 clk vdd gnd
+ dff
Xdff_r0_c252
+ din_252 dout_252 clk vdd gnd
+ dff
Xdff_r0_c253
+ din_253 dout_253 clk vdd gnd
+ dff
Xdff_r0_c254
+ din_254 dout_254 clk vdd gnd
+ dff
Xdff_r0_c255
+ din_255 dout_255 clk vdd gnd
+ dff
.ENDS mp3_data_array_data_dff

.SUBCKT mp3_data_array
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
+ din0[128] din0[129] din0[130] din0[131] din0[132] din0[133] din0[134]
+ din0[135] din0[136] din0[137] din0[138] din0[139] din0[140] din0[141]
+ din0[142] din0[143] din0[144] din0[145] din0[146] din0[147] din0[148]
+ din0[149] din0[150] din0[151] din0[152] din0[153] din0[154] din0[155]
+ din0[156] din0[157] din0[158] din0[159] din0[160] din0[161] din0[162]
+ din0[163] din0[164] din0[165] din0[166] din0[167] din0[168] din0[169]
+ din0[170] din0[171] din0[172] din0[173] din0[174] din0[175] din0[176]
+ din0[177] din0[178] din0[179] din0[180] din0[181] din0[182] din0[183]
+ din0[184] din0[185] din0[186] din0[187] din0[188] din0[189] din0[190]
+ din0[191] din0[192] din0[193] din0[194] din0[195] din0[196] din0[197]
+ din0[198] din0[199] din0[200] din0[201] din0[202] din0[203] din0[204]
+ din0[205] din0[206] din0[207] din0[208] din0[209] din0[210] din0[211]
+ din0[212] din0[213] din0[214] din0[215] din0[216] din0[217] din0[218]
+ din0[219] din0[220] din0[221] din0[222] din0[223] din0[224] din0[225]
+ din0[226] din0[227] din0[228] din0[229] din0[230] din0[231] din0[232]
+ din0[233] din0[234] din0[235] din0[236] din0[237] din0[238] din0[239]
+ din0[240] din0[241] din0[242] din0[243] din0[244] din0[245] din0[246]
+ din0[247] din0[248] din0[249] din0[250] din0[251] din0[252] din0[253]
+ din0[254] din0[255] addr0[0] addr0[1] addr0[2] addr0[3] csb0 web0 clk0
+ wmask0[0] wmask0[1] wmask0[2] wmask0[3] wmask0[4] wmask0[5] wmask0[6]
+ wmask0[7] wmask0[8] wmask0[9] wmask0[10] wmask0[11] wmask0[12]
+ wmask0[13] wmask0[14] wmask0[15] wmask0[16] wmask0[17] wmask0[18]
+ wmask0[19] wmask0[20] wmask0[21] wmask0[22] wmask0[23] wmask0[24]
+ wmask0[25] wmask0[26] wmask0[27] wmask0[28] wmask0[29] wmask0[30]
+ wmask0[31] dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5]
+ dout0[6] dout0[7] dout0[8] dout0[9] dout0[10] dout0[11] dout0[12]
+ dout0[13] dout0[14] dout0[15] dout0[16] dout0[17] dout0[18] dout0[19]
+ dout0[20] dout0[21] dout0[22] dout0[23] dout0[24] dout0[25] dout0[26]
+ dout0[27] dout0[28] dout0[29] dout0[30] dout0[31] dout0[32] dout0[33]
+ dout0[34] dout0[35] dout0[36] dout0[37] dout0[38] dout0[39] dout0[40]
+ dout0[41] dout0[42] dout0[43] dout0[44] dout0[45] dout0[46] dout0[47]
+ dout0[48] dout0[49] dout0[50] dout0[51] dout0[52] dout0[53] dout0[54]
+ dout0[55] dout0[56] dout0[57] dout0[58] dout0[59] dout0[60] dout0[61]
+ dout0[62] dout0[63] dout0[64] dout0[65] dout0[66] dout0[67] dout0[68]
+ dout0[69] dout0[70] dout0[71] dout0[72] dout0[73] dout0[74] dout0[75]
+ dout0[76] dout0[77] dout0[78] dout0[79] dout0[80] dout0[81] dout0[82]
+ dout0[83] dout0[84] dout0[85] dout0[86] dout0[87] dout0[88] dout0[89]
+ dout0[90] dout0[91] dout0[92] dout0[93] dout0[94] dout0[95] dout0[96]
+ dout0[97] dout0[98] dout0[99] dout0[100] dout0[101] dout0[102]
+ dout0[103] dout0[104] dout0[105] dout0[106] dout0[107] dout0[108]
+ dout0[109] dout0[110] dout0[111] dout0[112] dout0[113] dout0[114]
+ dout0[115] dout0[116] dout0[117] dout0[118] dout0[119] dout0[120]
+ dout0[121] dout0[122] dout0[123] dout0[124] dout0[125] dout0[126]
+ dout0[127] dout0[128] dout0[129] dout0[130] dout0[131] dout0[132]
+ dout0[133] dout0[134] dout0[135] dout0[136] dout0[137] dout0[138]
+ dout0[139] dout0[140] dout0[141] dout0[142] dout0[143] dout0[144]
+ dout0[145] dout0[146] dout0[147] dout0[148] dout0[149] dout0[150]
+ dout0[151] dout0[152] dout0[153] dout0[154] dout0[155] dout0[156]
+ dout0[157] dout0[158] dout0[159] dout0[160] dout0[161] dout0[162]
+ dout0[163] dout0[164] dout0[165] dout0[166] dout0[167] dout0[168]
+ dout0[169] dout0[170] dout0[171] dout0[172] dout0[173] dout0[174]
+ dout0[175] dout0[176] dout0[177] dout0[178] dout0[179] dout0[180]
+ dout0[181] dout0[182] dout0[183] dout0[184] dout0[185] dout0[186]
+ dout0[187] dout0[188] dout0[189] dout0[190] dout0[191] dout0[192]
+ dout0[193] dout0[194] dout0[195] dout0[196] dout0[197] dout0[198]
+ dout0[199] dout0[200] dout0[201] dout0[202] dout0[203] dout0[204]
+ dout0[205] dout0[206] dout0[207] dout0[208] dout0[209] dout0[210]
+ dout0[211] dout0[212] dout0[213] dout0[214] dout0[215] dout0[216]
+ dout0[217] dout0[218] dout0[219] dout0[220] dout0[221] dout0[222]
+ dout0[223] dout0[224] dout0[225] dout0[226] dout0[227] dout0[228]
+ dout0[229] dout0[230] dout0[231] dout0[232] dout0[233] dout0[234]
+ dout0[235] dout0[236] dout0[237] dout0[238] dout0[239] dout0[240]
+ dout0[241] dout0[242] dout0[243] dout0[244] dout0[245] dout0[246]
+ dout0[247] dout0[248] dout0[249] dout0[250] dout0[251] dout0[252]
+ dout0[253] dout0[254] dout0[255] vdd gnd
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
* INPUT : din0[128] 
* INPUT : din0[129] 
* INPUT : din0[130] 
* INPUT : din0[131] 
* INPUT : din0[132] 
* INPUT : din0[133] 
* INPUT : din0[134] 
* INPUT : din0[135] 
* INPUT : din0[136] 
* INPUT : din0[137] 
* INPUT : din0[138] 
* INPUT : din0[139] 
* INPUT : din0[140] 
* INPUT : din0[141] 
* INPUT : din0[142] 
* INPUT : din0[143] 
* INPUT : din0[144] 
* INPUT : din0[145] 
* INPUT : din0[146] 
* INPUT : din0[147] 
* INPUT : din0[148] 
* INPUT : din0[149] 
* INPUT : din0[150] 
* INPUT : din0[151] 
* INPUT : din0[152] 
* INPUT : din0[153] 
* INPUT : din0[154] 
* INPUT : din0[155] 
* INPUT : din0[156] 
* INPUT : din0[157] 
* INPUT : din0[158] 
* INPUT : din0[159] 
* INPUT : din0[160] 
* INPUT : din0[161] 
* INPUT : din0[162] 
* INPUT : din0[163] 
* INPUT : din0[164] 
* INPUT : din0[165] 
* INPUT : din0[166] 
* INPUT : din0[167] 
* INPUT : din0[168] 
* INPUT : din0[169] 
* INPUT : din0[170] 
* INPUT : din0[171] 
* INPUT : din0[172] 
* INPUT : din0[173] 
* INPUT : din0[174] 
* INPUT : din0[175] 
* INPUT : din0[176] 
* INPUT : din0[177] 
* INPUT : din0[178] 
* INPUT : din0[179] 
* INPUT : din0[180] 
* INPUT : din0[181] 
* INPUT : din0[182] 
* INPUT : din0[183] 
* INPUT : din0[184] 
* INPUT : din0[185] 
* INPUT : din0[186] 
* INPUT : din0[187] 
* INPUT : din0[188] 
* INPUT : din0[189] 
* INPUT : din0[190] 
* INPUT : din0[191] 
* INPUT : din0[192] 
* INPUT : din0[193] 
* INPUT : din0[194] 
* INPUT : din0[195] 
* INPUT : din0[196] 
* INPUT : din0[197] 
* INPUT : din0[198] 
* INPUT : din0[199] 
* INPUT : din0[200] 
* INPUT : din0[201] 
* INPUT : din0[202] 
* INPUT : din0[203] 
* INPUT : din0[204] 
* INPUT : din0[205] 
* INPUT : din0[206] 
* INPUT : din0[207] 
* INPUT : din0[208] 
* INPUT : din0[209] 
* INPUT : din0[210] 
* INPUT : din0[211] 
* INPUT : din0[212] 
* INPUT : din0[213] 
* INPUT : din0[214] 
* INPUT : din0[215] 
* INPUT : din0[216] 
* INPUT : din0[217] 
* INPUT : din0[218] 
* INPUT : din0[219] 
* INPUT : din0[220] 
* INPUT : din0[221] 
* INPUT : din0[222] 
* INPUT : din0[223] 
* INPUT : din0[224] 
* INPUT : din0[225] 
* INPUT : din0[226] 
* INPUT : din0[227] 
* INPUT : din0[228] 
* INPUT : din0[229] 
* INPUT : din0[230] 
* INPUT : din0[231] 
* INPUT : din0[232] 
* INPUT : din0[233] 
* INPUT : din0[234] 
* INPUT : din0[235] 
* INPUT : din0[236] 
* INPUT : din0[237] 
* INPUT : din0[238] 
* INPUT : din0[239] 
* INPUT : din0[240] 
* INPUT : din0[241] 
* INPUT : din0[242] 
* INPUT : din0[243] 
* INPUT : din0[244] 
* INPUT : din0[245] 
* INPUT : din0[246] 
* INPUT : din0[247] 
* INPUT : din0[248] 
* INPUT : din0[249] 
* INPUT : din0[250] 
* INPUT : din0[251] 
* INPUT : din0[252] 
* INPUT : din0[253] 
* INPUT : din0[254] 
* INPUT : din0[255] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
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
* INPUT : wmask0[16] 
* INPUT : wmask0[17] 
* INPUT : wmask0[18] 
* INPUT : wmask0[19] 
* INPUT : wmask0[20] 
* INPUT : wmask0[21] 
* INPUT : wmask0[22] 
* INPUT : wmask0[23] 
* INPUT : wmask0[24] 
* INPUT : wmask0[25] 
* INPUT : wmask0[26] 
* INPUT : wmask0[27] 
* INPUT : wmask0[28] 
* INPUT : wmask0[29] 
* INPUT : wmask0[30] 
* INPUT : wmask0[31] 
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
* OUTPUT: dout0[128] 
* OUTPUT: dout0[129] 
* OUTPUT: dout0[130] 
* OUTPUT: dout0[131] 
* OUTPUT: dout0[132] 
* OUTPUT: dout0[133] 
* OUTPUT: dout0[134] 
* OUTPUT: dout0[135] 
* OUTPUT: dout0[136] 
* OUTPUT: dout0[137] 
* OUTPUT: dout0[138] 
* OUTPUT: dout0[139] 
* OUTPUT: dout0[140] 
* OUTPUT: dout0[141] 
* OUTPUT: dout0[142] 
* OUTPUT: dout0[143] 
* OUTPUT: dout0[144] 
* OUTPUT: dout0[145] 
* OUTPUT: dout0[146] 
* OUTPUT: dout0[147] 
* OUTPUT: dout0[148] 
* OUTPUT: dout0[149] 
* OUTPUT: dout0[150] 
* OUTPUT: dout0[151] 
* OUTPUT: dout0[152] 
* OUTPUT: dout0[153] 
* OUTPUT: dout0[154] 
* OUTPUT: dout0[155] 
* OUTPUT: dout0[156] 
* OUTPUT: dout0[157] 
* OUTPUT: dout0[158] 
* OUTPUT: dout0[159] 
* OUTPUT: dout0[160] 
* OUTPUT: dout0[161] 
* OUTPUT: dout0[162] 
* OUTPUT: dout0[163] 
* OUTPUT: dout0[164] 
* OUTPUT: dout0[165] 
* OUTPUT: dout0[166] 
* OUTPUT: dout0[167] 
* OUTPUT: dout0[168] 
* OUTPUT: dout0[169] 
* OUTPUT: dout0[170] 
* OUTPUT: dout0[171] 
* OUTPUT: dout0[172] 
* OUTPUT: dout0[173] 
* OUTPUT: dout0[174] 
* OUTPUT: dout0[175] 
* OUTPUT: dout0[176] 
* OUTPUT: dout0[177] 
* OUTPUT: dout0[178] 
* OUTPUT: dout0[179] 
* OUTPUT: dout0[180] 
* OUTPUT: dout0[181] 
* OUTPUT: dout0[182] 
* OUTPUT: dout0[183] 
* OUTPUT: dout0[184] 
* OUTPUT: dout0[185] 
* OUTPUT: dout0[186] 
* OUTPUT: dout0[187] 
* OUTPUT: dout0[188] 
* OUTPUT: dout0[189] 
* OUTPUT: dout0[190] 
* OUTPUT: dout0[191] 
* OUTPUT: dout0[192] 
* OUTPUT: dout0[193] 
* OUTPUT: dout0[194] 
* OUTPUT: dout0[195] 
* OUTPUT: dout0[196] 
* OUTPUT: dout0[197] 
* OUTPUT: dout0[198] 
* OUTPUT: dout0[199] 
* OUTPUT: dout0[200] 
* OUTPUT: dout0[201] 
* OUTPUT: dout0[202] 
* OUTPUT: dout0[203] 
* OUTPUT: dout0[204] 
* OUTPUT: dout0[205] 
* OUTPUT: dout0[206] 
* OUTPUT: dout0[207] 
* OUTPUT: dout0[208] 
* OUTPUT: dout0[209] 
* OUTPUT: dout0[210] 
* OUTPUT: dout0[211] 
* OUTPUT: dout0[212] 
* OUTPUT: dout0[213] 
* OUTPUT: dout0[214] 
* OUTPUT: dout0[215] 
* OUTPUT: dout0[216] 
* OUTPUT: dout0[217] 
* OUTPUT: dout0[218] 
* OUTPUT: dout0[219] 
* OUTPUT: dout0[220] 
* OUTPUT: dout0[221] 
* OUTPUT: dout0[222] 
* OUTPUT: dout0[223] 
* OUTPUT: dout0[224] 
* OUTPUT: dout0[225] 
* OUTPUT: dout0[226] 
* OUTPUT: dout0[227] 
* OUTPUT: dout0[228] 
* OUTPUT: dout0[229] 
* OUTPUT: dout0[230] 
* OUTPUT: dout0[231] 
* OUTPUT: dout0[232] 
* OUTPUT: dout0[233] 
* OUTPUT: dout0[234] 
* OUTPUT: dout0[235] 
* OUTPUT: dout0[236] 
* OUTPUT: dout0[237] 
* OUTPUT: dout0[238] 
* OUTPUT: dout0[239] 
* OUTPUT: dout0[240] 
* OUTPUT: dout0[241] 
* OUTPUT: dout0[242] 
* OUTPUT: dout0[243] 
* OUTPUT: dout0[244] 
* OUTPUT: dout0[245] 
* OUTPUT: dout0[246] 
* OUTPUT: dout0[247] 
* OUTPUT: dout0[248] 
* OUTPUT: dout0[249] 
* OUTPUT: dout0[250] 
* OUTPUT: dout0[251] 
* OUTPUT: dout0[252] 
* OUTPUT: dout0[253] 
* OUTPUT: dout0[254] 
* OUTPUT: dout0[255] 
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
+ dout0[128] dout0[129] dout0[130] dout0[131] dout0[132] dout0[133]
+ dout0[134] dout0[135] dout0[136] dout0[137] dout0[138] dout0[139]
+ dout0[140] dout0[141] dout0[142] dout0[143] dout0[144] dout0[145]
+ dout0[146] dout0[147] dout0[148] dout0[149] dout0[150] dout0[151]
+ dout0[152] dout0[153] dout0[154] dout0[155] dout0[156] dout0[157]
+ dout0[158] dout0[159] dout0[160] dout0[161] dout0[162] dout0[163]
+ dout0[164] dout0[165] dout0[166] dout0[167] dout0[168] dout0[169]
+ dout0[170] dout0[171] dout0[172] dout0[173] dout0[174] dout0[175]
+ dout0[176] dout0[177] dout0[178] dout0[179] dout0[180] dout0[181]
+ dout0[182] dout0[183] dout0[184] dout0[185] dout0[186] dout0[187]
+ dout0[188] dout0[189] dout0[190] dout0[191] dout0[192] dout0[193]
+ dout0[194] dout0[195] dout0[196] dout0[197] dout0[198] dout0[199]
+ dout0[200] dout0[201] dout0[202] dout0[203] dout0[204] dout0[205]
+ dout0[206] dout0[207] dout0[208] dout0[209] dout0[210] dout0[211]
+ dout0[212] dout0[213] dout0[214] dout0[215] dout0[216] dout0[217]
+ dout0[218] dout0[219] dout0[220] dout0[221] dout0[222] dout0[223]
+ dout0[224] dout0[225] dout0[226] dout0[227] dout0[228] dout0[229]
+ dout0[230] dout0[231] dout0[232] dout0[233] dout0[234] dout0[235]
+ dout0[236] dout0[237] dout0[238] dout0[239] dout0[240] dout0[241]
+ dout0[242] dout0[243] dout0[244] dout0[245] dout0[246] dout0[247]
+ dout0[248] dout0[249] dout0[250] dout0[251] dout0[252] dout0[253]
+ dout0[254] dout0[255] rbl_bl0 bank_din0_0 bank_din0_1 bank_din0_2
+ bank_din0_3 bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7
+ bank_din0_8 bank_din0_9 bank_din0_10 bank_din0_11 bank_din0_12
+ bank_din0_13 bank_din0_14 bank_din0_15 bank_din0_16 bank_din0_17
+ bank_din0_18 bank_din0_19 bank_din0_20 bank_din0_21 bank_din0_22
+ bank_din0_23 bank_din0_24 bank_din0_25 bank_din0_26 bank_din0_27
+ bank_din0_28 bank_din0_29 bank_din0_30 bank_din0_31 bank_din0_32
+ bank_din0_33 bank_din0_34 bank_din0_35 bank_din0_36 bank_din0_37
+ bank_din0_38 bank_din0_39 bank_din0_40 bank_din0_41 bank_din0_42
+ bank_din0_43 bank_din0_44 bank_din0_45 bank_din0_46 bank_din0_47
+ bank_din0_48 bank_din0_49 bank_din0_50 bank_din0_51 bank_din0_52
+ bank_din0_53 bank_din0_54 bank_din0_55 bank_din0_56 bank_din0_57
+ bank_din0_58 bank_din0_59 bank_din0_60 bank_din0_61 bank_din0_62
+ bank_din0_63 bank_din0_64 bank_din0_65 bank_din0_66 bank_din0_67
+ bank_din0_68 bank_din0_69 bank_din0_70 bank_din0_71 bank_din0_72
+ bank_din0_73 bank_din0_74 bank_din0_75 bank_din0_76 bank_din0_77
+ bank_din0_78 bank_din0_79 bank_din0_80 bank_din0_81 bank_din0_82
+ bank_din0_83 bank_din0_84 bank_din0_85 bank_din0_86 bank_din0_87
+ bank_din0_88 bank_din0_89 bank_din0_90 bank_din0_91 bank_din0_92
+ bank_din0_93 bank_din0_94 bank_din0_95 bank_din0_96 bank_din0_97
+ bank_din0_98 bank_din0_99 bank_din0_100 bank_din0_101 bank_din0_102
+ bank_din0_103 bank_din0_104 bank_din0_105 bank_din0_106 bank_din0_107
+ bank_din0_108 bank_din0_109 bank_din0_110 bank_din0_111 bank_din0_112
+ bank_din0_113 bank_din0_114 bank_din0_115 bank_din0_116 bank_din0_117
+ bank_din0_118 bank_din0_119 bank_din0_120 bank_din0_121 bank_din0_122
+ bank_din0_123 bank_din0_124 bank_din0_125 bank_din0_126 bank_din0_127
+ bank_din0_128 bank_din0_129 bank_din0_130 bank_din0_131 bank_din0_132
+ bank_din0_133 bank_din0_134 bank_din0_135 bank_din0_136 bank_din0_137
+ bank_din0_138 bank_din0_139 bank_din0_140 bank_din0_141 bank_din0_142
+ bank_din0_143 bank_din0_144 bank_din0_145 bank_din0_146 bank_din0_147
+ bank_din0_148 bank_din0_149 bank_din0_150 bank_din0_151 bank_din0_152
+ bank_din0_153 bank_din0_154 bank_din0_155 bank_din0_156 bank_din0_157
+ bank_din0_158 bank_din0_159 bank_din0_160 bank_din0_161 bank_din0_162
+ bank_din0_163 bank_din0_164 bank_din0_165 bank_din0_166 bank_din0_167
+ bank_din0_168 bank_din0_169 bank_din0_170 bank_din0_171 bank_din0_172
+ bank_din0_173 bank_din0_174 bank_din0_175 bank_din0_176 bank_din0_177
+ bank_din0_178 bank_din0_179 bank_din0_180 bank_din0_181 bank_din0_182
+ bank_din0_183 bank_din0_184 bank_din0_185 bank_din0_186 bank_din0_187
+ bank_din0_188 bank_din0_189 bank_din0_190 bank_din0_191 bank_din0_192
+ bank_din0_193 bank_din0_194 bank_din0_195 bank_din0_196 bank_din0_197
+ bank_din0_198 bank_din0_199 bank_din0_200 bank_din0_201 bank_din0_202
+ bank_din0_203 bank_din0_204 bank_din0_205 bank_din0_206 bank_din0_207
+ bank_din0_208 bank_din0_209 bank_din0_210 bank_din0_211 bank_din0_212
+ bank_din0_213 bank_din0_214 bank_din0_215 bank_din0_216 bank_din0_217
+ bank_din0_218 bank_din0_219 bank_din0_220 bank_din0_221 bank_din0_222
+ bank_din0_223 bank_din0_224 bank_din0_225 bank_din0_226 bank_din0_227
+ bank_din0_228 bank_din0_229 bank_din0_230 bank_din0_231 bank_din0_232
+ bank_din0_233 bank_din0_234 bank_din0_235 bank_din0_236 bank_din0_237
+ bank_din0_238 bank_din0_239 bank_din0_240 bank_din0_241 bank_din0_242
+ bank_din0_243 bank_din0_244 bank_din0_245 bank_din0_246 bank_din0_247
+ bank_din0_248 bank_din0_249 bank_din0_250 bank_din0_251 bank_din0_252
+ bank_din0_253 bank_din0_254 bank_din0_255 a0_0 a0_1 a0_2 a0_3 s_en0
+ p_en_bar0 w_en0 bank_wmask0_0 bank_wmask0_1 bank_wmask0_2
+ bank_wmask0_3 bank_wmask0_4 bank_wmask0_5 bank_wmask0_6 bank_wmask0_7
+ bank_wmask0_8 bank_wmask0_9 bank_wmask0_10 bank_wmask0_11
+ bank_wmask0_12 bank_wmask0_13 bank_wmask0_14 bank_wmask0_15
+ bank_wmask0_16 bank_wmask0_17 bank_wmask0_18 bank_wmask0_19
+ bank_wmask0_20 bank_wmask0_21 bank_wmask0_22 bank_wmask0_23
+ bank_wmask0_24 bank_wmask0_25 bank_wmask0_26 bank_wmask0_27
+ bank_wmask0_28 bank_wmask0_29 bank_wmask0_30 bank_wmask0_31 wl_en0 vdd
+ gnd
+ mp3_data_array_bank
Xcontrol0
+ csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd
+ mp3_data_array_control_logic_rw
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] a0_0 a0_1 a0_2 a0_3 clk_buf0 vdd
+ gnd
+ mp3_data_array_row_addr_dff
Xwmask_dff0
+ wmask0[0] wmask0[1] wmask0[2] wmask0[3] wmask0[4] wmask0[5] wmask0[6]
+ wmask0[7] wmask0[8] wmask0[9] wmask0[10] wmask0[11] wmask0[12]
+ wmask0[13] wmask0[14] wmask0[15] wmask0[16] wmask0[17] wmask0[18]
+ wmask0[19] wmask0[20] wmask0[21] wmask0[22] wmask0[23] wmask0[24]
+ wmask0[25] wmask0[26] wmask0[27] wmask0[28] wmask0[29] wmask0[30]
+ wmask0[31] bank_wmask0_0 bank_wmask0_1 bank_wmask0_2 bank_wmask0_3
+ bank_wmask0_4 bank_wmask0_5 bank_wmask0_6 bank_wmask0_7 bank_wmask0_8
+ bank_wmask0_9 bank_wmask0_10 bank_wmask0_11 bank_wmask0_12
+ bank_wmask0_13 bank_wmask0_14 bank_wmask0_15 bank_wmask0_16
+ bank_wmask0_17 bank_wmask0_18 bank_wmask0_19 bank_wmask0_20
+ bank_wmask0_21 bank_wmask0_22 bank_wmask0_23 bank_wmask0_24
+ bank_wmask0_25 bank_wmask0_26 bank_wmask0_27 bank_wmask0_28
+ bank_wmask0_29 bank_wmask0_30 bank_wmask0_31 clk_buf0 vdd gnd
+ mp3_data_array_wmask_dff
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
+ din0[128] din0[129] din0[130] din0[131] din0[132] din0[133] din0[134]
+ din0[135] din0[136] din0[137] din0[138] din0[139] din0[140] din0[141]
+ din0[142] din0[143] din0[144] din0[145] din0[146] din0[147] din0[148]
+ din0[149] din0[150] din0[151] din0[152] din0[153] din0[154] din0[155]
+ din0[156] din0[157] din0[158] din0[159] din0[160] din0[161] din0[162]
+ din0[163] din0[164] din0[165] din0[166] din0[167] din0[168] din0[169]
+ din0[170] din0[171] din0[172] din0[173] din0[174] din0[175] din0[176]
+ din0[177] din0[178] din0[179] din0[180] din0[181] din0[182] din0[183]
+ din0[184] din0[185] din0[186] din0[187] din0[188] din0[189] din0[190]
+ din0[191] din0[192] din0[193] din0[194] din0[195] din0[196] din0[197]
+ din0[198] din0[199] din0[200] din0[201] din0[202] din0[203] din0[204]
+ din0[205] din0[206] din0[207] din0[208] din0[209] din0[210] din0[211]
+ din0[212] din0[213] din0[214] din0[215] din0[216] din0[217] din0[218]
+ din0[219] din0[220] din0[221] din0[222] din0[223] din0[224] din0[225]
+ din0[226] din0[227] din0[228] din0[229] din0[230] din0[231] din0[232]
+ din0[233] din0[234] din0[235] din0[236] din0[237] din0[238] din0[239]
+ din0[240] din0[241] din0[242] din0[243] din0[244] din0[245] din0[246]
+ din0[247] din0[248] din0[249] din0[250] din0[251] din0[252] din0[253]
+ din0[254] din0[255] bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3
+ bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8
+ bank_din0_9 bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13
+ bank_din0_14 bank_din0_15 bank_din0_16 bank_din0_17 bank_din0_18
+ bank_din0_19 bank_din0_20 bank_din0_21 bank_din0_22 bank_din0_23
+ bank_din0_24 bank_din0_25 bank_din0_26 bank_din0_27 bank_din0_28
+ bank_din0_29 bank_din0_30 bank_din0_31 bank_din0_32 bank_din0_33
+ bank_din0_34 bank_din0_35 bank_din0_36 bank_din0_37 bank_din0_38
+ bank_din0_39 bank_din0_40 bank_din0_41 bank_din0_42 bank_din0_43
+ bank_din0_44 bank_din0_45 bank_din0_46 bank_din0_47 bank_din0_48
+ bank_din0_49 bank_din0_50 bank_din0_51 bank_din0_52 bank_din0_53
+ bank_din0_54 bank_din0_55 bank_din0_56 bank_din0_57 bank_din0_58
+ bank_din0_59 bank_din0_60 bank_din0_61 bank_din0_62 bank_din0_63
+ bank_din0_64 bank_din0_65 bank_din0_66 bank_din0_67 bank_din0_68
+ bank_din0_69 bank_din0_70 bank_din0_71 bank_din0_72 bank_din0_73
+ bank_din0_74 bank_din0_75 bank_din0_76 bank_din0_77 bank_din0_78
+ bank_din0_79 bank_din0_80 bank_din0_81 bank_din0_82 bank_din0_83
+ bank_din0_84 bank_din0_85 bank_din0_86 bank_din0_87 bank_din0_88
+ bank_din0_89 bank_din0_90 bank_din0_91 bank_din0_92 bank_din0_93
+ bank_din0_94 bank_din0_95 bank_din0_96 bank_din0_97 bank_din0_98
+ bank_din0_99 bank_din0_100 bank_din0_101 bank_din0_102 bank_din0_103
+ bank_din0_104 bank_din0_105 bank_din0_106 bank_din0_107 bank_din0_108
+ bank_din0_109 bank_din0_110 bank_din0_111 bank_din0_112 bank_din0_113
+ bank_din0_114 bank_din0_115 bank_din0_116 bank_din0_117 bank_din0_118
+ bank_din0_119 bank_din0_120 bank_din0_121 bank_din0_122 bank_din0_123
+ bank_din0_124 bank_din0_125 bank_din0_126 bank_din0_127 bank_din0_128
+ bank_din0_129 bank_din0_130 bank_din0_131 bank_din0_132 bank_din0_133
+ bank_din0_134 bank_din0_135 bank_din0_136 bank_din0_137 bank_din0_138
+ bank_din0_139 bank_din0_140 bank_din0_141 bank_din0_142 bank_din0_143
+ bank_din0_144 bank_din0_145 bank_din0_146 bank_din0_147 bank_din0_148
+ bank_din0_149 bank_din0_150 bank_din0_151 bank_din0_152 bank_din0_153
+ bank_din0_154 bank_din0_155 bank_din0_156 bank_din0_157 bank_din0_158
+ bank_din0_159 bank_din0_160 bank_din0_161 bank_din0_162 bank_din0_163
+ bank_din0_164 bank_din0_165 bank_din0_166 bank_din0_167 bank_din0_168
+ bank_din0_169 bank_din0_170 bank_din0_171 bank_din0_172 bank_din0_173
+ bank_din0_174 bank_din0_175 bank_din0_176 bank_din0_177 bank_din0_178
+ bank_din0_179 bank_din0_180 bank_din0_181 bank_din0_182 bank_din0_183
+ bank_din0_184 bank_din0_185 bank_din0_186 bank_din0_187 bank_din0_188
+ bank_din0_189 bank_din0_190 bank_din0_191 bank_din0_192 bank_din0_193
+ bank_din0_194 bank_din0_195 bank_din0_196 bank_din0_197 bank_din0_198
+ bank_din0_199 bank_din0_200 bank_din0_201 bank_din0_202 bank_din0_203
+ bank_din0_204 bank_din0_205 bank_din0_206 bank_din0_207 bank_din0_208
+ bank_din0_209 bank_din0_210 bank_din0_211 bank_din0_212 bank_din0_213
+ bank_din0_214 bank_din0_215 bank_din0_216 bank_din0_217 bank_din0_218
+ bank_din0_219 bank_din0_220 bank_din0_221 bank_din0_222 bank_din0_223
+ bank_din0_224 bank_din0_225 bank_din0_226 bank_din0_227 bank_din0_228
+ bank_din0_229 bank_din0_230 bank_din0_231 bank_din0_232 bank_din0_233
+ bank_din0_234 bank_din0_235 bank_din0_236 bank_din0_237 bank_din0_238
+ bank_din0_239 bank_din0_240 bank_din0_241 bank_din0_242 bank_din0_243
+ bank_din0_244 bank_din0_245 bank_din0_246 bank_din0_247 bank_din0_248
+ bank_din0_249 bank_din0_250 bank_din0_251 bank_din0_252 bank_din0_253
+ bank_din0_254 bank_din0_255 clk_buf0 vdd gnd
+ mp3_data_array_data_dff
.ENDS mp3_data_array
