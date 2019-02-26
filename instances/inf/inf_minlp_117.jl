using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
@variable(m, x[x_Idx])
b_Idx = Any[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259]
@variable(m, b[b_Idx])
set_binary(b[216])
set_binary(b[230])
set_binary(b[228])
set_binary(b[176])
set_binary(b[133])
set_binary(b[45])
set_binary(b[169])
set_binary(b[196])
set_binary(b[180])
set_binary(b[178])
set_binary(b[232])
set_binary(b[208])
set_binary(b[64])
set_binary(b[112])
set_binary(b[36])
set_binary(b[243])
set_binary(b[130])
set_binary(b[87])
set_binary(b[132])
set_lower_bound(x[3], 0.0)
set_binary(b[211])
set_binary(b[119])
set_binary(b[79])
set_binary(b[213])
set_binary(b[60])
set_binary(b[159])
set_binary(b[227])
set_binary(b[197])
set_binary(b[235])
set_binary(b[193])
set_binary(b[39])
set_binary(b[37])
set_binary(b[88])
set_binary(b[50])
set_lower_bound(x[6], 0.0)
set_binary(b[192])
set_binary(b[209])
set_binary(b[97])
set_binary(b[200])
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_binary(b[188])
set_binary(b[62])
set_binary(b[113])
set_binary(b[218])
set_binary(b[220])
set_binary(b[236])
set_binary(b[162])
set_binary(b[161])
set_binary(b[224])
set_binary(b[199])
set_binary(b[252])
set_binary(b[75])
set_binary(b[128])
set_binary(b[167])
set_binary(b[177])
set_binary(b[70])
set_binary(b[163])
set_binary(b[41])
set_binary(b[48])
set_lower_bound(x[9], 0.0)
set_binary(b[242])
set_binary(b[143])
set_binary(b[90])
set_binary(b[206])
set_binary(b[229])
set_binary(b[233])
set_lower_bound(x[27], 0.0)
set_binary(b[84])
set_lower_bound(x[30], 0.0)
set_binary(b[53])
set_binary(b[116])
set_binary(b[255])
set_lower_bound(x[5], 0.0)
set_binary(b[61])
set_binary(b[223])
set_binary(b[89])
set_binary(b[145])
set_lower_bound(x[24], 0.0)
set_binary(b[86])
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_binary(b[114])
set_binary(b[256])
set_binary(b[153])
set_binary(b[69])
set_binary(b[144])
set_binary(b[68])
set_lower_bound(x[26], 0.0)
set_binary(b[240])
set_binary(b[244])
set_binary(b[166])
set_binary(b[246])
set_binary(b[47])
set_lower_bound(x[12], 0.0)
set_binary(b[214])
set_binary(b[138])
set_binary(b[226])
set_binary(b[151])
set_binary(b[135])
set_binary(b[108])
set_binary(b[154])
set_binary(b[76])
set_binary(b[109])
set_binary(b[174])
set_lower_bound(x[28], 0.0)
set_binary(b[259])
set_binary(b[237])
set_binary(b[155])
set_binary(b[94])
set_binary(b[149])
set_binary(b[107])
set_lower_bound(x[19], 0.0)
set_binary(b[181])
set_binary(b[52])
set_binary(b[139])
set_lower_bound(x[15], 0.0)
set_binary(b[131])
set_binary(b[241])
set_binary(b[38])
set_binary(b[71])
set_lower_bound(x[16], 0.0)
set_binary(b[78])
set_lower_bound(x[14], 0.0)
set_binary(b[215])
set_binary(b[66])
set_binary(b[80])
set_binary(b[160])
set_binary(b[49])
set_lower_bound(x[22], 0.0)
set_binary(b[137])
set_binary(b[185])
set_binary(b[105])
set_binary(b[164])
set_binary(b[124])
set_lower_bound(x[8], 0.0)
set_binary(b[54])
set_binary(b[111])
set_binary(b[170])
set_binary(b[239])
set_binary(b[98])
set_lower_bound(x[4], 0.0)
set_binary(b[257])
set_binary(b[219])
set_binary(b[186])
set_binary(b[77])
set_binary(b[254])
set_lower_bound(x[25], 0.0)
set_binary(b[172])
set_binary(b[46])
set_binary(b[127])
set_binary(b[56])
set_binary(b[104])
set_lower_bound(x[29], 0.0)
set_binary(b[171])
set_binary(b[221])
set_binary(b[74])
set_binary(b[248])
set_binary(b[92])
set_binary(b[72])
set_binary(b[126])
set_lower_bound(x[18], 0.0)
set_binary(b[129])
set_binary(b[238])
set_lower_bound(x[1], 0.0)
set_binary(b[190])
set_binary(b[234])
set_binary(b[212])
set_binary(b[125])
set_binary(b[184])
set_binary(b[43])
set_binary(b[110])
set_binary(b[231])
set_binary(b[183])
set_binary(b[117])
set_binary(b[195])
set_binary(b[83])
set_binary(b[59])
set_lower_bound(x[33], 0.0)
set_binary(b[204])
set_binary(b[67])
set_binary(b[175])
set_binary(b[222])
set_binary(b[93])
set_binary(b[99])
set_binary(b[198])
set_binary(b[146])
set_binary(b[123])
set_binary(b[187])
set_binary(b[202])
set_binary(b[122])
set_lower_bound(x[20], 0.0)
set_binary(b[121])
set_binary(b[250])
set_binary(b[157])
set_binary(b[147])
set_binary(b[201])
set_binary(b[258])
set_binary(b[156])
set_binary(b[73])
set_binary(b[217])
set_binary(b[118])
set_binary(b[44])
set_binary(b[158])
set_binary(b[120])
set_binary(b[85])
set_binary(b[251])
set_binary(b[82])
set_binary(b[42])
set_binary(b[168])
set_binary(b[106])
set_binary(b[207])
set_binary(b[81])
set_binary(b[225])
set_lower_bound(x[2], 0.0)
set_binary(b[141])
set_binary(b[136])
set_binary(b[150])
set_binary(b[203])
set_lower_bound(x[32], 0.0)
set_binary(b[95])
set_binary(b[115])
set_binary(b[189])
set_lower_bound(x[11], 0.0)
set_binary(b[173])
set_binary(b[40])
set_binary(b[249])
set_binary(b[58])
set_binary(b[96])
set_binary(b[57])
set_binary(b[102])
set_lower_bound(x[21], 0.0)
set_binary(b[245])
set_lower_bound(x[10], 0.0)
set_binary(b[247])
set_binary(b[51])
set_binary(b[100])
set_binary(b[142])
set_binary(b[65])
set_binary(b[205])
set_binary(b[165])
set_binary(b[210])
set_binary(b[101])
set_lower_bound(x[31], 0.0)
set_binary(b[253])
set_binary(b[182])
set_binary(b[194])
set_binary(b[179])
set_binary(b[191])
set_binary(b[134])
set_lower_bound(x[17], 0.0)
set_binary(b[140])
set_binary(b[91])
set_binary(b[152])
set_binary(b[103])
set_binary(b[55])
set_binary(b[148])
set_binary(b[63])


# ----- Constraints ----- #
@constraint(m, e1, -x[34]+x[35] == 0.0)
@constraint(m, e2, -x[2]+x[4]+5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63]+190*b[90] <= 189.35)
@constraint(m, e3, -x[3]+x[4]+5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63]+190*b[91] <= 189.35)
@constraint(m, e4, 5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63]+190*b[92] <= 189.35)
@constraint(m, e5, x[4]-x[5]+5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63]+190*b[93] <= 189.35)
@constraint(m, e6, x[4]-x[6]+5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63]+190*b[94] <= 189.35)
@constraint(m, e7, x[4]-x[7]+5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63]+190*b[95] <= 189.35)
@constraint(m, e8, x[4]-x[8]+5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63]+190*b[96] <= 189.35)
@constraint(m, e9, -x[1]+x[5]+4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64]+190*b[97] <= 188.9)
@constraint(m, e10, -x[3]+x[5]+4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64]+190*b[99] <= 188.9)
@constraint(m, e11, -x[4]+x[5]+4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64]+190*b[100] <= 188.9)
@constraint(m, e12, 4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64]+190*b[101] <= 188.9)
@constraint(m, e13, x[5]-x[6]+4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64]+190*b[102] <= 188.9)
@constraint(m, e14, x[5]-x[7]+4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64]+190*b[103] <= 188.9)
@constraint(m, e15, x[5]-x[8]+4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64]+190*b[104] <= 188.9)
@constraint(m, e16, -x[1]+x[6]+6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65]+190*b[105] <= 188.85)
@constraint(m, e17, -x[2]+x[6]+6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65]+190*b[106] <= 188.85)
@constraint(m, e18, -x[4]+x[6]+6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65]+190*b[108] <= 188.85)
@constraint(m, e19, -x[5]+x[6]+6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65]+190*b[109] <= 188.85)
@constraint(m, e20, 6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65]+190*b[110] <= 188.85)
@constraint(m, e21, x[6]-x[7]+6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65]+190*b[111] <= 188.85)
@constraint(m, e22, x[6]-x[8]+6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65]+190*b[112] <= 188.85)
@constraint(m, e23, -x[1]+x[7]+7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66]+190*b[113] <= 189.2)
@constraint(m, e24, -x[2]+x[7]+7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66]+190*b[114] <= 189.2)
@constraint(m, e25, -x[3]+x[7]+7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66]+190*b[115] <= 189.2)
@constraint(m, e26, -x[5]+x[7]+7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66]+190*b[117] <= 189.2)
@constraint(m, e27, -x[6]+x[7]+7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66]+190*b[118] <= 189.2)
@constraint(m, e28, 7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66]+190*b[119] <= 189.2)
@constraint(m, e29, x[7]-x[8]+7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66]+190*b[120] <= 189.2)
@constraint(m, e30, -x[1]+x[8]+6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67]+190*b[121] <= 189.35)
@constraint(m, e31, -x[2]+x[8]+6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67]+190*b[122] <= 189.35)
@constraint(m, e32, -x[3]+x[8]+6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67]+190*b[123] <= 189.35)
@constraint(m, e33, -x[4]+x[8]+6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67]+190*b[124] <= 189.35)
@constraint(m, e34, -x[6]+x[8]+6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67]+190*b[126] <= 189.35)
@constraint(m, e35, -x[7]+x[8]+6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67]+190*b[127] <= 189.35)
@constraint(m, e36, 6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67]+190*b[128] <= 189.35)
@NLconstraint(m, e37, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[2]+190*b[68] <= 190.0)
@NLconstraint(m, e38, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[3]+190*b[69] <= 190.0)
@NLconstraint(m, e39, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[4]+190*b[70] <= 190.0)
@NLconstraint(m, e40, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[5]+190*b[71] <= 190.0)
@NLconstraint(m, e41, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[6]+190*b[72] <= 190.0)
@NLconstraint(m, e42, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[7]+190*b[73] <= 190.0)
@NLconstraint(m, e43, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[8]+190*b[74] <= 190.0)
@NLconstraint(m, e44, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])-x[1]+x[2]+190*b[75] <= 190.0)
@NLconstraint(m, e45, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])+x[2]-x[3]+190*b[76] <= 190.0)
@NLconstraint(m, e46, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])+x[2]-x[4]+190*b[77] <= 190.0)
@NLconstraint(m, e47, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])+x[2]-x[5]+190*b[78] <= 190.0)
@NLconstraint(m, e48, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])+x[2]-x[6]+190*b[79] <= 190.0)
@NLconstraint(m, e49, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])+x[2]-x[7]+190*b[80] <= 190.0)
@NLconstraint(m, e50, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])+x[2]-x[8]+190*b[81] <= 190.0)
@NLconstraint(m, e51, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])-x[1]+x[3]+190*b[82] <= 190.0)
@NLconstraint(m, e52, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])-x[2]+x[3]+190*b[83] <= 190.0)
@NLconstraint(m, e53, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])+x[3]-x[4]+190*b[84] <= 190.0)
@NLconstraint(m, e54, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])+x[3]-x[5]+190*b[85] <= 190.0)
@NLconstraint(m, e55, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])+x[3]-x[6]+190*b[86] <= 190.0)
@NLconstraint(m, e56, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])+x[3]-x[7]+190*b[87] <= 190.0)
@NLconstraint(m, e57, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])+x[3]-x[8]+190*b[88] <= 190.0)
@constraint(m, e58, -x[10]+x[12]-5.25*b[39]-5.25*b[47]+5.05*b[55]+190*b[151] <= 184.1)
@constraint(m, e59, -x[11]+x[12]-5.25*b[39]-5.25*b[47]+5.05*b[55]+190*b[152] <= 184.1)
@constraint(m, e60, -5.25*b[39]-5.25*b[47]+5.05*b[55]+190*b[153] <= 184.1)
@constraint(m, e61, x[12]-x[13]-5.25*b[39]-5.25*b[47]+5.05*b[55]+190*b[154] <= 184.1)
@constraint(m, e62, x[12]-x[14]-5.25*b[39]-5.25*b[47]+5.05*b[55]+190*b[155] <= 184.1)
@constraint(m, e63, x[12]-x[15]-5.25*b[39]-5.25*b[47]+5.05*b[55]+190*b[156] <= 184.1)
@constraint(m, e64, x[12]-x[16]-5.25*b[39]-5.25*b[47]+5.05*b[55]+190*b[157] <= 184.1)
@constraint(m, e65, -x[9]+x[13]-4.3*b[40]-4.3*b[48]+4.2*b[56]+190*b[158] <= 184.6)
@constraint(m, e66, -x[11]+x[13]-4.3*b[40]-4.3*b[48]+4.2*b[56]+190*b[160] <= 184.6)
@constraint(m, e67, -x[12]+x[13]-4.3*b[40]-4.3*b[48]+4.2*b[56]+190*b[161] <= 184.6)
@constraint(m, e68, -4.3*b[40]-4.3*b[48]+4.2*b[56]+190*b[162] <= 184.6)
@constraint(m, e69, x[13]-x[14]-4.3*b[40]-4.3*b[48]+4.2*b[56]+190*b[163] <= 184.6)
@constraint(m, e70, x[13]-x[15]-4.3*b[40]-4.3*b[48]+4.2*b[56]+190*b[164] <= 184.6)
@constraint(m, e71, x[13]-x[16]-4.3*b[40]-4.3*b[48]+4.2*b[56]+190*b[165] <= 184.6)
@constraint(m, e72, -x[9]+x[14]-6.1*b[41]-6.1*b[49]+4.25*b[57]+190*b[166] <= 182.75)
@constraint(m, e73, -x[10]+x[14]-6.1*b[41]-6.1*b[49]+4.25*b[57]+190*b[167] <= 182.75)
@constraint(m, e74, -x[12]+x[14]-6.1*b[41]-6.1*b[49]+4.25*b[57]+190*b[169] <= 182.75)
@constraint(m, e75, -x[13]+x[14]-6.1*b[41]-6.1*b[49]+4.25*b[57]+190*b[170] <= 182.75)
@constraint(m, e76, -6.1*b[41]-6.1*b[49]+4.25*b[57]+190*b[171] <= 182.75)
@constraint(m, e77, x[14]-x[15]-6.1*b[41]-6.1*b[49]+4.25*b[57]+190*b[172] <= 182.75)
@constraint(m, e78, x[14]-x[16]-6.1*b[41]-6.1*b[49]+4.25*b[57]+190*b[173] <= 182.75)
@constraint(m, e79, -x[9]+x[15]-7.45*b[42]-7.45*b[50]+4.1*b[58]+190*b[174] <= 181.75)
@constraint(m, e80, -x[10]+x[15]-7.45*b[42]-7.45*b[50]+4.1*b[58]+190*b[175] <= 181.75)
@constraint(m, e81, -x[11]+x[15]-7.45*b[42]-7.45*b[50]+4.1*b[58]+190*b[176] <= 181.75)
@constraint(m, e82, -x[13]+x[15]-7.45*b[42]-7.45*b[50]+4.1*b[58]+190*b[178] <= 181.75)
@constraint(m, e83, -x[14]+x[15]-7.45*b[42]-7.45*b[50]+4.1*b[58]+190*b[179] <= 181.75)
@constraint(m, e84, -7.45*b[42]-7.45*b[50]+4.1*b[58]+190*b[180] <= 181.75)
@constraint(m, e85, x[15]-x[16]-7.45*b[42]-7.45*b[50]+4.1*b[58]+190*b[181] <= 181.75)
@constraint(m, e86, -x[9]+x[16]-6.725*b[43]-6.725*b[51]+4.15*b[59]+190*b[182] <= 182.625)
@constraint(m, e87, -x[10]+x[16]-6.725*b[43]-6.725*b[51]+4.15*b[59]+190*b[183] <= 182.625)
@constraint(m, e88, -x[11]+x[16]-6.725*b[43]-6.725*b[51]+4.15*b[59]+190*b[184] <= 182.625)
@constraint(m, e89, -x[12]+x[16]-6.725*b[43]-6.725*b[51]+4.15*b[59]+190*b[185] <= 182.625)
@constraint(m, e90, -x[14]+x[16]-6.725*b[43]-6.725*b[51]+4.15*b[59]+190*b[187] <= 182.625)
@constraint(m, e91, -x[15]+x[16]-6.725*b[43]-6.725*b[51]+4.15*b[59]+190*b[188] <= 182.625)
@constraint(m, e92, -6.725*b[43]-6.725*b[51]+4.15*b[59]+190*b[189] <= 182.625)
@NLconstraint(m, e93, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9]-x[10]+190*b[129] <= 190.0)
@NLconstraint(m, e94, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9]-x[11]+190*b[130] <= 190.0)
@NLconstraint(m, e95, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9]-x[12]+190*b[131] <= 190.0)
@NLconstraint(m, e96, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9]-x[13]+190*b[132] <= 190.0)
@NLconstraint(m, e97, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9]-x[14]+190*b[133] <= 190.0)
@NLconstraint(m, e98, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9]-x[15]+190*b[134] <= 190.0)
@NLconstraint(m, e99, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9]-x[16]+190*b[135] <= 190.0)
@NLconstraint(m, e100, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])-x[9]+x[10]+190*b[136] <= 190.0)
@NLconstraint(m, e101, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])+x[10]-x[11]+190*b[137] <= 190.0)
@NLconstraint(m, e102, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])+x[10]-x[12]+190*b[138] <= 190.0)
@NLconstraint(m, e103, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])+x[10]-x[13]+190*b[139] <= 190.0)
@NLconstraint(m, e104, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])+x[10]-x[14]+190*b[140] <= 190.0)
@NLconstraint(m, e105, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])+x[10]-x[15]+190*b[141] <= 190.0)
@NLconstraint(m, e106, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])+x[10]-x[16]+190*b[142] <= 190.0)
@NLconstraint(m, e107, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])-x[9]+x[11]+190*b[143] <= 190.0)
@NLconstraint(m, e108, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])-x[10]+x[11]+190*b[144] <= 190.0)
@NLconstraint(m, e109, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])+x[11]-x[12]+190*b[145] <= 190.0)
@NLconstraint(m, e110, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])+x[11]-x[13]+190*b[146] <= 190.0)
@NLconstraint(m, e111, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])+x[11]-x[14]+190*b[147] <= 190.0)
@NLconstraint(m, e112, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])+x[11]-x[15]+190*b[148] <= 190.0)
@NLconstraint(m, e113, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])+x[11]-x[16]+190*b[149] <= 190.0)
@constraint(m, e114, -x[18]+x[20]+0.2*b[47]-5.05*b[63]+190*b[212] <= 184.3)
@constraint(m, e115, -x[19]+x[20]+0.2*b[47]-5.05*b[63]+190*b[213] <= 184.3)
@constraint(m, e116, 0.2*b[47]-5.05*b[63]+190*b[214] <= 184.3)
@constraint(m, e117, x[20]-x[21]+0.2*b[47]-5.05*b[63]+190*b[215] <= 184.3)
@constraint(m, e118, x[20]-x[22]+0.2*b[47]-5.05*b[63]+190*b[216] <= 184.3)
@constraint(m, e119, x[20]-x[23]+0.2*b[47]-5.05*b[63]+190*b[217] <= 184.3)
@constraint(m, e120, x[20]-x[24]+0.2*b[47]-5.05*b[63]+190*b[218] <= 184.3)
@constraint(m, e121, -x[17]+x[21]+0.100000000000001*b[48]-4.2*b[64]+190*b[219] <= 184.7)
@constraint(m, e122, -x[19]+x[21]+0.100000000000001*b[48]-4.2*b[64]+190*b[221] <= 184.7)
@constraint(m, e123, -x[20]+x[21]+0.100000000000001*b[48]-4.2*b[64]+190*b[222] <= 184.7)
@constraint(m, e124, 0.100000000000001*b[48]-4.2*b[64]+190*b[223] <= 184.7)
@constraint(m, e125, x[21]-x[22]+0.100000000000001*b[48]-4.2*b[64]+190*b[224] <= 184.7)
@constraint(m, e126, x[21]-x[23]+0.100000000000001*b[48]-4.2*b[64]+190*b[225] <= 184.7)
@constraint(m, e127, x[21]-x[24]+0.100000000000001*b[48]-4.2*b[64]+190*b[226] <= 184.7)
@constraint(m, e128, -x[17]+x[22]+1.85*b[49]-4.25*b[65]+190*b[227] <= 184.6)
@constraint(m, e129, -x[18]+x[22]+1.85*b[49]-4.25*b[65]+190*b[228] <= 184.6)
@constraint(m, e130, -x[20]+x[22]+1.85*b[49]-4.25*b[65]+190*b[230] <= 184.6)
@constraint(m, e131, -x[21]+x[22]+1.85*b[49]-4.25*b[65]+190*b[231] <= 184.6)
@constraint(m, e132, 1.85*b[49]-4.25*b[65]+190*b[232] <= 184.6)
@constraint(m, e133, x[22]-x[23]+1.85*b[49]-4.25*b[65]+190*b[233] <= 184.6)
@constraint(m, e134, x[22]-x[24]+1.85*b[49]-4.25*b[65]+190*b[234] <= 184.6)
@constraint(m, e135, -x[17]+x[23]+3.35*b[50]-4.1*b[66]+190*b[235] <= 185.1)
@constraint(m, e136, -x[18]+x[23]+3.35*b[50]-4.1*b[66]+190*b[236] <= 185.1)
@constraint(m, e137, -x[19]+x[23]+3.35*b[50]-4.1*b[66]+190*b[237] <= 185.1)
@constraint(m, e138, -x[21]+x[23]+3.35*b[50]-4.1*b[66]+190*b[239] <= 185.1)
@constraint(m, e139, -x[22]+x[23]+3.35*b[50]-4.1*b[66]+190*b[240] <= 185.1)
@constraint(m, e140, 3.35*b[50]-4.1*b[66]+190*b[241] <= 185.1)
@constraint(m, e141, x[23]-x[24]+3.35*b[50]-4.1*b[66]+190*b[242] <= 185.1)
@constraint(m, e142, -x[17]+x[24]+2.575*b[51]-4.15*b[67]+190*b[243] <= 185.2)
@constraint(m, e143, -x[18]+x[24]+2.575*b[51]-4.15*b[67]+190*b[244] <= 185.2)
@constraint(m, e144, -x[19]+x[24]+2.575*b[51]-4.15*b[67]+190*b[245] <= 185.2)
@constraint(m, e145, -x[20]+x[24]+2.575*b[51]-4.15*b[67]+190*b[246] <= 185.2)
@constraint(m, e146, -x[22]+x[24]+2.575*b[51]-4.15*b[67]+190*b[248] <= 185.2)
@constraint(m, e147, -x[23]+x[24]+2.575*b[51]-4.15*b[67]+190*b[249] <= 185.2)
@constraint(m, e148, 2.575*b[51]-4.15*b[67]+190*b[250] <= 185.2)
@NLconstraint(m, e149, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17]-x[18]+190*b[190] <= 190.0)
@NLconstraint(m, e150, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17]-x[19]+190*b[191] <= 190.0)
@NLconstraint(m, e151, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17]-x[20]+190*b[192] <= 190.0)
@NLconstraint(m, e152, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17]-x[21]+190*b[193] <= 190.0)
@NLconstraint(m, e153, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17]-x[22]+190*b[194] <= 190.0)
@NLconstraint(m, e154, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17]-x[23]+190*b[195] <= 190.0)
@NLconstraint(m, e155, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17]-x[24]+190*b[196] <= 190.0)
@NLconstraint(m, e156, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]-x[17]+x[18]+190*b[197] <= 190.0)
@NLconstraint(m, e157, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]+x[18]-x[19]+190*b[198] <= 190.0)
@NLconstraint(m, e158, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]+x[18]-x[20]+190*b[199] <= 190.0)
@NLconstraint(m, e159, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]+x[18]-x[21]+190*b[200] <= 190.0)
@NLconstraint(m, e160, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]+x[18]-x[22]+190*b[201] <= 190.0)
@NLconstraint(m, e161, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]+x[18]-x[23]+190*b[202] <= 190.0)
@NLconstraint(m, e162, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]+x[18]-x[24]+190*b[203] <= 190.0)
@NLconstraint(m, e163, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]-x[17]+x[19]+190*b[204] <= 190.0)
@NLconstraint(m, e164, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]-x[18]+x[19]+190*b[205] <= 190.0)
@NLconstraint(m, e165, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]+x[19]-x[20]+190*b[206] <= 190.0)
@NLconstraint(m, e166, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]+x[19]-x[21]+190*b[207] <= 190.0)
@NLconstraint(m, e167, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]+x[19]-x[22]+190*b[208] <= 190.0)
@NLconstraint(m, e168, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]+x[19]-x[23]+190*b[209] <= 190.0)
@NLconstraint(m, e169, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]+x[19]-x[24]+190*b[210] <= 190.0)
@constraint(m, e170, b[68]+b[75]+b[129]+b[136]+b[190]+b[197] >= 1.0)
@constraint(m, e171, b[69]+b[82]+b[130]+b[143]+b[191]+b[204] >= 1.0)
@constraint(m, e172, b[70]+b[89]+b[131]+b[150]+b[192]+b[211] >= 1.0)
@constraint(m, e173, b[71]+b[97]+b[132]+b[158]+b[193]+b[219] >= 1.0)
@constraint(m, e174, b[72]+b[105]+b[133]+b[166]+b[194]+b[227] >= 1.0)
@constraint(m, e175, b[73]+b[113]+b[134]+b[174]+b[195]+b[235] >= 1.0)
@constraint(m, e176, b[74]+b[121]+b[135]+b[182]+b[196]+b[243] >= 1.0)
@constraint(m, e177, b[68]+b[75]+b[129]+b[136]+b[190]+b[197] >= 1.0)
@constraint(m, e178, b[76]+b[83]+b[137]+b[144]+b[198]+b[205] >= 1.0)
@constraint(m, e179, b[77]+b[90]+b[138]+b[151]+b[199]+b[212] >= 1.0)
@constraint(m, e180, b[78]+b[98]+b[139]+b[159]+b[200]+b[220] >= 1.0)
@constraint(m, e181, b[79]+b[106]+b[140]+b[167]+b[201]+b[228] >= 1.0)
@constraint(m, e182, b[80]+b[114]+b[141]+b[175]+b[202]+b[236] >= 1.0)
@constraint(m, e183, b[81]+b[122]+b[142]+b[183]+b[203]+b[244] >= 1.0)
@constraint(m, e184, b[69]+b[82]+b[130]+b[143]+b[191]+b[204] >= 1.0)
@constraint(m, e185, b[76]+b[83]+b[137]+b[144]+b[198]+b[205] >= 1.0)
@constraint(m, e186, b[84]+b[91]+b[145]+b[152]+b[206]+b[213] >= 1.0)
@constraint(m, e187, b[85]+b[99]+b[146]+b[160]+b[207]+b[221] >= 1.0)
@constraint(m, e188, b[86]+b[107]+b[147]+b[168]+b[208]+b[229] >= 1.0)
@constraint(m, e189, b[87]+b[115]+b[148]+b[176]+b[209]+b[237] >= 1.0)
@constraint(m, e190, b[88]+b[123]+b[149]+b[184]+b[210]+b[245] >= 1.0)
@constraint(m, e191, b[70]+b[89]+b[131]+b[150]+b[192]+b[211] >= 1.0)
@constraint(m, e192, b[77]+b[90]+b[138]+b[151]+b[199]+b[212] >= 1.0)
@constraint(m, e193, b[84]+b[91]+b[145]+b[152]+b[206]+b[213] >= 1.0)
@constraint(m, e194, b[93]+b[100]+b[154]+b[161]+b[215]+b[222] >= 1.0)
@constraint(m, e195, b[94]+b[108]+b[155]+b[169]+b[216]+b[230] >= 1.0)
@constraint(m, e196, b[95]+b[116]+b[156]+b[177]+b[217]+b[238] >= 1.0)
@constraint(m, e197, b[96]+b[124]+b[157]+b[185]+b[218]+b[246] >= 1.0)
@constraint(m, e198, b[71]+b[97]+b[132]+b[158]+b[193]+b[219] >= 1.0)
@constraint(m, e199, b[78]+b[98]+b[139]+b[159]+b[200]+b[220] >= 1.0)
@constraint(m, e200, b[85]+b[99]+b[146]+b[160]+b[207]+b[221] >= 1.0)
@constraint(m, e201, b[93]+b[100]+b[154]+b[161]+b[215]+b[222] >= 1.0)
@constraint(m, e202, b[102]+b[109]+b[163]+b[170]+b[224]+b[231] >= 1.0)
@constraint(m, e203, b[103]+b[117]+b[164]+b[178]+b[225]+b[239] >= 1.0)
@constraint(m, e204, b[104]+b[125]+b[165]+b[186]+b[226]+b[247] >= 1.0)
@constraint(m, e205, b[72]+b[105]+b[133]+b[166]+b[194]+b[227] >= 1.0)
@constraint(m, e206, b[79]+b[106]+b[140]+b[167]+b[201]+b[228] >= 1.0)
@constraint(m, e207, b[86]+b[107]+b[147]+b[168]+b[208]+b[229] >= 1.0)
@constraint(m, e208, b[94]+b[108]+b[155]+b[169]+b[216]+b[230] >= 1.0)
@constraint(m, e209, b[102]+b[109]+b[163]+b[170]+b[224]+b[231] >= 1.0)
@constraint(m, e210, b[111]+b[118]+b[172]+b[179]+b[233]+b[240] >= 1.0)
@constraint(m, e211, b[112]+b[126]+b[173]+b[187]+b[234]+b[248] >= 1.0)
@constraint(m, e212, b[73]+b[113]+b[134]+b[174]+b[195]+b[235] >= 1.0)
@constraint(m, e213, b[80]+b[114]+b[141]+b[175]+b[202]+b[236] >= 1.0)
@constraint(m, e214, b[87]+b[115]+b[148]+b[176]+b[209]+b[237] >= 1.0)
@constraint(m, e215, b[95]+b[116]+b[156]+b[177]+b[217]+b[238] >= 1.0)
@constraint(m, e216, b[103]+b[117]+b[164]+b[178]+b[225]+b[239] >= 1.0)
@constraint(m, e217, b[111]+b[118]+b[172]+b[179]+b[233]+b[240] >= 1.0)
@constraint(m, e218, b[120]+b[127]+b[181]+b[188]+b[242]+b[249] >= 1.0)
@constraint(m, e219, b[74]+b[121]+b[135]+b[182]+b[196]+b[243] >= 1.0)
@constraint(m, e220, b[81]+b[122]+b[142]+b[183]+b[203]+b[244] >= 1.0)
@constraint(m, e221, b[88]+b[123]+b[149]+b[184]+b[210]+b[245] >= 1.0)
@constraint(m, e222, b[96]+b[124]+b[157]+b[185]+b[218]+b[246] >= 1.0)
@constraint(m, e223, b[104]+b[125]+b[165]+b[186]+b[226]+b[247] >= 1.0)
@constraint(m, e224, b[112]+b[126]+b[173]+b[187]+b[234]+b[248] >= 1.0)
@constraint(m, e225, b[120]+b[127]+b[181]+b[188]+b[242]+b[249] >= 1.0)
@constraint(m, e226, x[4]-x[34]+5.25*b[39]+5.05*b[47]-5.05*b[55]+5.05*b[63] <= -0.65)
@constraint(m, e227, x[5]-x[34]+4.3*b[40]+4.2*b[48]-4.2*b[56]+4.2*b[64] <= -1.1)
@constraint(m, e228, x[6]-x[34]+6.1*b[41]+4.25*b[49]-4.25*b[57]+4.25*b[65] <= -1.15)
@constraint(m, e229, x[7]-x[34]+7.45*b[42]+4.1*b[50]-4.1*b[58]+4.1*b[66] <= -0.8)
@constraint(m, e230, x[8]-x[34]+6.725*b[43]+4.15*b[51]-4.15*b[59]+4.15*b[67] <= -0.65)
@constraint(m, e231, x[12]-5.25*b[39]-5.25*b[47]+5.05*b[55] <= -0.720000000000001)
@constraint(m, e232, x[13]-4.3*b[40]-4.3*b[48]+4.2*b[56] <= -0.220000000000001)
@constraint(m, e233, x[14]-6.1*b[41]-6.1*b[49]+4.25*b[57] <= -2.07)
@constraint(m, e234, x[15]-7.45*b[42]-7.45*b[50]+4.1*b[58] <= -3.07)
@constraint(m, e235, x[16]-6.725*b[43]-6.725*b[51]+4.15*b[59] <= -2.195)
@constraint(m, e236, x[20]+0.2*b[47]-5.05*b[63] <= -2.66)
@constraint(m, e237, x[21]+0.100000000000001*b[48]-4.2*b[64] <= -2.26)
@constraint(m, e238, x[22]+1.85*b[49]-4.25*b[65] <= -2.36)
@constraint(m, e239, x[23]+3.35*b[50]-4.1*b[66] <= -1.86)
@constraint(m, e240, x[24]+2.575*b[51]-4.15*b[67] <= -1.76)
@NLconstraint(m, e241, x[25]*b[36]+x[28]*(b[44]-b[52]+b[60])+x[31]*(1-b[36]-b[44]+b[52]-b[60])+x[1]-x[34] <= 0.0)
@NLconstraint(m, e242, x[26]*b[37]+x[29]*(b[45]-b[53]+b[61])+x[32]*(1-b[37]-b[45]+b[53]-b[61])+x[2]-x[34] <= 0.0)
@NLconstraint(m, e243, x[27]*b[38]+x[30]*(b[46]-b[54]+b[62])+x[33]*(1-b[38]-b[46]+b[54]-b[62])+x[3]-x[34] <= 0.0)
@NLconstraint(m, e244, x[28]*b[52]+x[25]*(1-b[36]-b[44])+x[31]*(b[36]+b[44]-b[52])+x[9] <= 5.18)
@NLconstraint(m, e245, x[29]*b[53]+x[26]*(1-b[37]-b[45])+x[32]*(b[37]+b[45]-b[53])+x[10] <= 5.18)
@NLconstraint(m, e246, x[30]*b[54]+x[27]*(1-b[38]-b[46])+x[33]*(b[38]+b[46]-b[54])+x[11] <= 5.18)
@NLconstraint(m, e247, x[31]*b[60]+x[28]*(1-b[44]-b[60])+x[25]*b[44]+x[17] <= 3.04)
@NLconstraint(m, e248, x[32]*b[61]+x[29]*(1-b[45]-b[61])+x[26]*b[45]+x[18] <= 3.04)
@NLconstraint(m, e249, x[33]*b[62]+x[30]*(1-b[46]-b[62])+x[27]*b[46]+x[19] <= 3.04)
@constraint(m, e250, b[36]+b[44] <= 1.0)
@constraint(m, e251, b[37]+b[45] <= 1.0)
@constraint(m, e252, b[38]+b[46] <= 1.0)
@constraint(m, e253, b[39]+b[47] <= 1.0)
@constraint(m, e254, b[40]+b[48] <= 1.0)
@constraint(m, e255, b[41]+b[49] <= 1.0)
@constraint(m, e256, b[42]+b[50] <= 1.0)
@constraint(m, e257, b[43]+b[51] <= 1.0)
@constraint(m, e258, b[44]+b[60] <= 1.0)
@constraint(m, e259, b[45]+b[61] <= 1.0)
@constraint(m, e260, b[46]+b[62] <= 1.0)
@constraint(m, e261, b[47]+b[63] <= 1.0)
@constraint(m, e262, b[48]+b[64] <= 1.0)
@constraint(m, e263, b[49]+b[65] <= 1.0)
@constraint(m, e264, b[50]+b[66] <= 1.0)
@constraint(m, e265, b[51]+b[67] <= 1.0)
@constraint(m, e266, b[44]-b[52]+b[60] <= 1.0)
@constraint(m, e267, b[45]-b[53]+b[61] <= 1.0)
@constraint(m, e268, b[46]-b[54]+b[62] <= 1.0)
@constraint(m, e269, b[47]-b[55]+b[63] <= 1.0)
@constraint(m, e270, b[48]-b[56]+b[64] <= 1.0)
@constraint(m, e271, b[49]-b[57]+b[65] <= 1.0)
@constraint(m, e272, b[50]-b[58]+b[66] <= 1.0)
@constraint(m, e273, b[51]-b[59]+b[67] <= 1.0)
@constraint(m, e274, b[44]-b[52]+b[60] >= 0.0)
@constraint(m, e275, b[45]-b[53]+b[61] >= 0.0)
@constraint(m, e276, b[46]-b[54]+b[62] >= 0.0)
@constraint(m, e277, b[47]-b[55]+b[63] >= 0.0)
@constraint(m, e278, b[48]-b[56]+b[64] >= 0.0)
@constraint(m, e279, b[49]-b[57]+b[65] >= 0.0)
@constraint(m, e280, b[50]-b[58]+b[66] >= 0.0)
@constraint(m, e281, b[51]-b[59]+b[67] >= 0.0)
@constraint(m, e282, -b[36]-b[44]+b[52]-b[60] <= 0.0)
@constraint(m, e283, -b[37]-b[45]+b[53]-b[61] <= 0.0)
@constraint(m, e284, -b[38]-b[46]+b[54]-b[62] <= 0.0)
@constraint(m, e285, -b[39]-b[47]+b[55]-b[63] <= 0.0)
@constraint(m, e286, -b[40]-b[48]+b[56]-b[64] <= 0.0)
@constraint(m, e287, -b[41]-b[49]+b[57]-b[65] <= 0.0)
@constraint(m, e288, -b[42]-b[50]+b[58]-b[66] <= 0.0)
@constraint(m, e289, -b[43]-b[51]+b[59]-b[67] <= 0.0)
@constraint(m, e290, -b[36]-b[44]+b[52]-b[60] >= -1.0)
@constraint(m, e291, -b[37]-b[45]+b[53]-b[61] >= -1.0)
@constraint(m, e292, -b[38]-b[46]+b[54]-b[62] >= -1.0)
@constraint(m, e293, -b[39]-b[47]+b[55]-b[63] >= -1.0)
@constraint(m, e294, -b[40]-b[48]+b[56]-b[64] >= -1.0)
@constraint(m, e295, -b[41]-b[49]+b[57]-b[65] >= -1.0)
@constraint(m, e296, -b[42]-b[50]+b[58]-b[66] >= -1.0)
@constraint(m, e297, -b[43]-b[51]+b[59]-b[67] >= -1.0)
@constraint(m, e298, b[36]+b[44]-b[52] <= 1.0)
@constraint(m, e299, b[37]+b[45]-b[53] <= 1.0)
@constraint(m, e300, b[38]+b[46]-b[54] <= 1.0)
@constraint(m, e301, b[39]+b[47]-b[55] <= 1.0)
@constraint(m, e302, b[40]+b[48]-b[56] <= 1.0)
@constraint(m, e303, b[41]+b[49]-b[57] <= 1.0)
@constraint(m, e304, b[42]+b[50]-b[58] <= 1.0)
@constraint(m, e305, b[43]+b[51]-b[59] <= 1.0)
@constraint(m, e306, b[36]+b[44]-b[52] >= 0.0)
@constraint(m, e307, b[37]+b[45]-b[53] >= 0.0)
@constraint(m, e308, b[38]+b[46]-b[54] >= 0.0)
@constraint(m, e309, b[39]+b[47]-b[55] >= 0.0)
@constraint(m, e310, b[40]+b[48]-b[56] >= 0.0)
@constraint(m, e311, b[41]+b[49]-b[57] >= 0.0)
@constraint(m, e312, b[42]+b[50]-b[58] >= 0.0)
@constraint(m, e313, b[43]+b[51]-b[59] >= 0.0)
@constraint(m, e314, x[25]-190*b[251] >= -184.5)
@constraint(m, e315, x[25]-190*b[252] >= -185.875)
@constraint(m, e316, x[25]-190*b[253] >= -186.75)
@constraint(m, e317, x[26]-190*b[254] >= -185.0)
@constraint(m, e318, x[26]-190*b[255] >= -187.625)
@constraint(m, e319, x[26]-190*b[256] >= -185.0)
@constraint(m, e320, x[27]-190*b[257] >= -185.0)
@constraint(m, e321, x[27]-190*b[258] >= -187.4)
@constraint(m, e322, x[27]-190*b[259] >= -186.875)
@constraint(m, e323, x[25]+190*b[251] <= 195.5)
@constraint(m, e324, x[25]+190*b[252] <= 194.125)
@constraint(m, e325, x[25]+190*b[253] <= 193.25)
@constraint(m, e326, x[26]+190*b[254] <= 195.0)
@constraint(m, e327, x[26]+190*b[255] <= 192.375)
@constraint(m, e328, x[26]+190*b[256] <= 195.0)
@constraint(m, e329, x[27]+190*b[257] <= 195.0)
@constraint(m, e330, x[27]+190*b[258] <= 192.6)
@constraint(m, e331, x[27]+190*b[259] <= 193.125)
@constraint(m, e332, x[28]-190*b[251] >= -187.625)
@constraint(m, e333, x[28]-190*b[252] >= -187.875)
@constraint(m, e334, x[28]-190*b[253] >= -188.75)
@constraint(m, e335, x[29]-190*b[254] >= -185.875)
@constraint(m, e336, x[29]-190*b[255] >= -185.75)
@constraint(m, e337, x[29]-190*b[256] >= -185.6)
@constraint(m, e338, x[30]-190*b[257] >= -187.5)
@constraint(m, e339, x[30]-190*b[258] >= -187.65)
@constraint(m, e340, x[30]-190*b[259] >= -188.3)
@constraint(m, e341, x[28]+190*b[251] <= 192.375)
@constraint(m, e342, x[28]+190*b[252] <= 192.125)
@constraint(m, e343, x[28]+190*b[253] <= 191.25)
@constraint(m, e344, x[29]+190*b[254] <= 194.125)
@constraint(m, e345, x[29]+190*b[255] <= 194.25)
@constraint(m, e346, x[29]+190*b[256] <= 194.4)
@constraint(m, e347, x[30]+190*b[257] <= 192.5)
@constraint(m, e348, x[30]+190*b[258] <= 192.35)
@constraint(m, e349, x[30]+190*b[259] <= 191.7)
@constraint(m, e350, x[31]-190*b[251] >= -189.625)
@constraint(m, e351, x[31]-190*b[252] >= -189.0)
@constraint(m, e352, x[31]-190*b[253] >= -188.75)
@constraint(m, e353, x[32]-190*b[254] >= -189.75)
@constraint(m, e354, x[32]-190*b[255] >= -189.625)
@constraint(m, e355, x[32]-190*b[256] >= -189.42)
@constraint(m, e356, x[33]-190*b[257] >= -189.35)
@constraint(m, e357, x[33]-190*b[258] >= -188.875)
@constraint(m, e358, x[33]-190*b[259] >= -188.875)
@constraint(m, e359, x[31]+190*b[251] <= 190.375)
@constraint(m, e360, x[31]+190*b[252] <= 191.0)
@constraint(m, e361, x[31]+190*b[253] <= 191.25)
@constraint(m, e362, x[32]+190*b[254] <= 190.25)
@constraint(m, e363, x[32]+190*b[255] <= 190.375)
@constraint(m, e364, x[32]+190*b[256] <= 190.58)
@constraint(m, e365, x[33]+190*b[257] <= 190.65)
@constraint(m, e366, x[33]+190*b[258] <= 191.125)
@constraint(m, e367, x[33]+190*b[259] <= 191.125)
@constraint(m, e368, b[251]+b[252]+b[253] == 1.0)
@constraint(m, e369, b[254]+b[255]+b[256] == 1.0)
@constraint(m, e370, b[257]+b[258]+b[259] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[35])

m = m 		 # model get returned when including this script.