using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236]
@variable(m, x[x_Idx])
b_Idx = Any[237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275]
@variable(m, b[b_Idx])
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_binary(b[271])
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_binary(b[243])
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_binary(b[270])
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_binary(b[264])
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_binary(b[275])
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_binary(b[262])
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_binary(b[252])
set_lower_bound(x[38], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_binary(b[269])
set_lower_bound(x[77], 0.0)
set_lower_bound(x[234], 0.0)
set_binary(b[274])
set_lower_bound(x[92], 0.0)
set_binary(b[242])
set_lower_bound(x[111], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[53], 0.0)
set_binary(b[255])
set_lower_bound(x[128], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_binary(b[256])
set_binary(b[260])
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[26], 0.0)
set_binary(b[240])
set_binary(b[244])
set_lower_bound(x[213], 0.0)
set_binary(b[246])
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_binary(b[259])
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_binary(b[237])
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[207], 0.0)
set_binary(b[241])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[208], 0.0)
set_binary(b[239])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[96], 0.0)
set_binary(b[257])
set_lower_bound(x[210], 0.0)
set_binary(b[254])
set_lower_bound(x[25], 0.0)
set_binary(b[273])
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_binary(b[248])
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_binary(b[238])
set_lower_bound(x[49], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_binary(b[268])
set_lower_bound(x[233], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[236], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[170], 0.0)
set_binary(b[272])
set_lower_bound(x[149], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[125], 0.0)
set_binary(b[250])
set_lower_bound(x[20], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_binary(b[258])
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_binary(b[266])
set_lower_bound(x[228], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_binary(b[251])
set_lower_bound(x[78], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_binary(b[267])
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[180], 0.0)
set_binary(b[249])
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[21], 0.0)
set_binary(b[245])
set_binary(b[247])
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_binary(b[265])
set_lower_bound(x[61], 0.0)
set_binary(b[253])
set_lower_bound(x[31], 0.0)
set_lower_bound(x[64], 0.0)
set_binary(b[261])
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[108], 0.0)
set_binary(b[263])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[16]*x[146]+x[17]*x[147]+x[18]*x[148]+x[19]*x[149]+x[20]*x[150]+x[21]*x[151]+x[22]*x[152]+x[23]*x[153]+x[24]*x[154]+x[25]*x[155]+x[26]*x[156]+x[27]*x[157]+x[28]*x[158])+x[9] == 0.0)
@NLconstraint(m, e2, -(x[29]*x[159]+x[30]*x[160]+x[31]*x[161]+x[32]*x[162]+x[33]*x[163]+x[34]*x[164]+x[35]*x[165]+x[36]*x[166]+x[37]*x[167]+x[38]*x[168]+x[39]*x[169]+x[40]*x[170]+x[41]*x[171])+x[10] == 0.0)
@NLconstraint(m, e3, -(x[42]*x[172]+x[43]*x[173]+x[44]*x[174]+x[45]*x[175]+x[46]*x[176]+x[47]*x[177]+x[48]*x[178]+x[49]*x[179]+x[50]*x[180]+x[51]*x[181]+x[52]*x[182]+x[53]*x[183]+x[54]*x[184])+x[11] == 0.0)
@NLconstraint(m, e4, -(x[55]*x[185]+x[56]*x[186]+x[57]*x[187]+x[58]*x[188]+x[59]*x[189]+x[60]*x[190]+x[61]*x[191]+x[62]*x[192]+x[63]*x[193]+x[64]*x[194]+x[65]*x[195]+x[66]*x[196]+x[67]*x[197])+x[12] == 0.0)
@NLconstraint(m, e5, -(x[68]*x[198]+x[69]*x[199]+x[70]*x[200]+x[71]*x[201]+x[72]*x[202]+x[73]*x[203]+x[74]*x[204]+x[75]*x[205]+x[76]*x[206]+x[77]*x[207]+x[78]*x[208]+x[79]*x[209]+x[80]*x[210])+x[13] == 0.0)
@NLconstraint(m, e6, -(x[81]*x[211]+x[82]*x[212]+x[83]*x[213]+x[84]*x[214]+x[85]*x[215]+x[86]*x[216]+x[87]*x[217]+x[88]*x[218]+x[89]*x[219]+x[90]*x[220]+x[91]*x[221]+x[92]*x[222]+x[93]*x[223])+x[14] == 0.0)
@NLconstraint(m, e7, -(x[94]*x[224]+x[95]*x[225]+x[96]*x[226]+x[97]*x[227]+x[98]*x[228]+x[99]*x[229]+x[100]*x[230]+x[101]*x[231]+x[102]*x[232]+x[103]*x[233]+x[104]*x[234]+x[105]*x[235]+x[106]*x[236])+x[15] == 0.0)
@constraint(m, e8, x[2]-x[146]-x[147]-x[148]-x[149]-x[150]-x[151]-x[152]-x[153]-x[154]-x[155]-x[156]-x[157]-x[158] == 0.0)
@constraint(m, e9, x[3]-x[159]-x[160]-x[161]-x[162]-x[163]-x[164]-x[165]-x[166]-x[167]-x[168]-x[169]-x[170]-x[171] == 0.0)
@constraint(m, e10, x[4]-x[172]-x[173]-x[174]-x[175]-x[176]-x[177]-x[178]-x[179]-x[180]-x[181]-x[182]-x[183]-x[184] == 0.0)
@constraint(m, e11, x[5]-x[185]-x[186]-x[187]-x[188]-x[189]-x[190]-x[191]-x[192]-x[193]-x[194]-x[195]-x[196]-x[197] == 0.0)
@constraint(m, e12, x[6]-x[198]-x[199]-x[200]-x[201]-x[202]-x[203]-x[204]-x[205]-x[206]-x[207]-x[208]-x[209]-x[210] == 0.0)
@constraint(m, e13, x[7]-x[211]-x[212]-x[213]-x[214]-x[215]-x[216]-x[217]-x[218]-x[219]-x[220]-x[221]-x[222]-x[223] == 0.0)
@constraint(m, e14, x[8]-x[224]-x[225]-x[226]-x[227]-x[228]-x[229]-x[230]-x[231]-x[232]-x[233]-x[234]-x[235]-x[236] == 0.0)
@constraint(m, e15, x[1]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15] == 0.0)
@constraint(m, e16, 18*x[16]-9*x[55]-6*x[68]+x[146] == 1293.0)
@constraint(m, e17, 18*x[17]-9*x[56]-6*x[69]+x[147] == 1286.0)
@constraint(m, e18, 18*x[18]-9*x[57]-6*x[70]+x[148] == 1279.0)
@constraint(m, e19, 18*x[19]-9*x[58]-6*x[71]+x[149] == 1272.0)
@constraint(m, e20, 18*x[20]-9*x[59]-6*x[72]+x[150] == 1265.0)
@constraint(m, e21, 18*x[21]-9*x[60]-6*x[73]+x[151] == 1258.0)
@constraint(m, e22, 18*x[22]-9*x[61]-6*x[74]+x[152] == 1251.0)
@constraint(m, e23, 18*x[23]-9*x[62]-6*x[75]+x[153] == 1244.0)
@constraint(m, e24, 18*x[24]-9*x[63]-6*x[76]+x[154] == 1237.0)
@constraint(m, e25, 18*x[25]-9*x[64]-6*x[77]+x[155] == 1230.0)
@constraint(m, e26, 18*x[26]-9*x[65]-6*x[78]+x[156] == 1223.0)
@constraint(m, e27, 18*x[27]-9*x[66]-6*x[79]+x[157] == 1216.0)
@constraint(m, e28, 18*x[28]-9*x[67]-6*x[80]+x[158] == 1209.0)
@constraint(m, e29, 24*x[29]-6*x[55]+x[159] == 893.0)
@constraint(m, e30, 24*x[30]-6*x[56]+x[160] == 886.0)
@constraint(m, e31, 24*x[31]-6*x[57]+x[161] == 879.0)
@constraint(m, e32, 24*x[32]-6*x[58]+x[162] == 872.0)
@constraint(m, e33, 24*x[33]-6*x[59]+x[163] == 865.0)
@constraint(m, e34, 24*x[34]-6*x[60]+x[164] == 858.0)
@constraint(m, e35, 24*x[35]-6*x[61]+x[165] == 851.0)
@constraint(m, e36, 24*x[36]-6*x[62]+x[166] == 844.0)
@constraint(m, e37, 24*x[37]-6*x[63]+x[167] == 837.0)
@constraint(m, e38, 24*x[38]-6*x[64]+x[168] == 830.0)
@constraint(m, e39, 24*x[39]-6*x[65]+x[169] == 823.0)
@constraint(m, e40, 24*x[40]-6*x[66]+x[170] == 816.0)
@constraint(m, e41, 24*x[41]-6*x[67]+x[171] == 809.0)
@constraint(m, e42, 27*x[42]-3*x[68]+x[172] == 993.0)
@constraint(m, e43, 27*x[43]-3*x[69]+x[173] == 986.0)
@constraint(m, e44, 27*x[44]-3*x[70]+x[174] == 979.0)
@constraint(m, e45, 27*x[45]-3*x[71]+x[175] == 972.0)
@constraint(m, e46, 27*x[46]-3*x[72]+x[176] == 965.0)
@constraint(m, e47, 27*x[47]-3*x[73]+x[177] == 958.0)
@constraint(m, e48, 27*x[48]-3*x[74]+x[178] == 951.0)
@constraint(m, e49, 27*x[49]-3*x[75]+x[179] == 944.0)
@constraint(m, e50, 27*x[50]-3*x[76]+x[180] == 937.0)
@constraint(m, e51, 27*x[51]-3*x[77]+x[181] == 930.0)
@constraint(m, e52, 27*x[52]-3*x[78]+x[182] == 923.0)
@constraint(m, e53, 27*x[53]-3*x[79]+x[183] == 916.0)
@constraint(m, e54, 27*x[54]-3*x[80]+x[184] == 909.0)
@constraint(m, e55, 15*x[55]-6*x[94]+x[185] == 1393.0)
@constraint(m, e56, 15*x[56]-6*x[95]+x[186] == 1386.0)
@constraint(m, e57, 15*x[57]-6*x[96]+x[187] == 1379.0)
@constraint(m, e58, 15*x[58]-6*x[97]+x[188] == 1372.0)
@constraint(m, e59, 15*x[59]-6*x[98]+x[189] == 1365.0)
@constraint(m, e60, 15*x[60]-6*x[99]+x[190] == 1358.0)
@constraint(m, e61, 15*x[61]-6*x[100]+x[191] == 1351.0)
@constraint(m, e62, 15*x[62]-6*x[101]+x[192] == 1344.0)
@constraint(m, e63, 15*x[63]-6*x[102]+x[193] == 1337.0)
@constraint(m, e64, 15*x[64]-6*x[103]+x[194] == 1330.0)
@constraint(m, e65, 15*x[65]-6*x[104]+x[195] == 1323.0)
@constraint(m, e66, 15*x[66]-6*x[105]+x[196] == 1316.0)
@constraint(m, e67, 15*x[67]-6*x[106]+x[197] == 1309.0)
@constraint(m, e68, 18*x[68]-6*x[94]+x[198] == 1093.0)
@constraint(m, e69, 18*x[69]-6*x[95]+x[199] == 1086.0)
@constraint(m, e70, 18*x[70]-6*x[96]+x[200] == 1079.0)
@constraint(m, e71, 18*x[71]-6*x[97]+x[201] == 1072.0)
@constraint(m, e72, 18*x[72]-6*x[98]+x[202] == 1065.0)
@constraint(m, e73, 18*x[73]-6*x[99]+x[203] == 1058.0)
@constraint(m, e74, 18*x[74]-6*x[100]+x[204] == 1051.0)
@constraint(m, e75, 18*x[75]-6*x[101]+x[205] == 1044.0)
@constraint(m, e76, 18*x[76]-6*x[102]+x[206] == 1037.0)
@constraint(m, e77, 18*x[77]-6*x[103]+x[207] == 1030.0)
@constraint(m, e78, 18*x[78]-6*x[104]+x[208] == 1023.0)
@constraint(m, e79, 18*x[79]-6*x[105]+x[209] == 1016.0)
@constraint(m, e80, 18*x[80]-6*x[106]+x[210] == 1009.0)
@constraint(m, e81, x[211] == 993.0)
@constraint(m, e82, x[212] == 986.0)
@constraint(m, e83, x[213] == 979.0)
@constraint(m, e84, x[214] == 972.0)
@constraint(m, e85, x[215] == 965.0)
@constraint(m, e86, x[216] == 958.0)
@constraint(m, e87, x[217] == 951.0)
@constraint(m, e88, x[218] == 944.0)
@constraint(m, e89, x[219] == 937.0)
@constraint(m, e90, x[220] == 930.0)
@constraint(m, e91, x[221] == 923.0)
@constraint(m, e92, x[222] == 916.0)
@constraint(m, e93, x[223] == 909.0)
@constraint(m, e94, 27*x[94]+x[224] == 2493.0)
@constraint(m, e95, 27*x[95]+x[225] == 2486.0)
@constraint(m, e96, 27*x[96]+x[226] == 2479.0)
@constraint(m, e97, 27*x[97]+x[227] == 2472.0)
@constraint(m, e98, 27*x[98]+x[228] == 2465.0)
@constraint(m, e99, 27*x[99]+x[229] == 2458.0)
@constraint(m, e100, 27*x[100]+x[230] == 2451.0)
@constraint(m, e101, 27*x[101]+x[231] == 2444.0)
@constraint(m, e102, 27*x[102]+x[232] == 2437.0)
@constraint(m, e103, 27*x[103]+x[233] == 2430.0)
@constraint(m, e104, 27*x[104]+x[234] == 2423.0)
@constraint(m, e105, 27*x[105]+x[235] == 2416.0)
@constraint(m, e106, 27*x[106]+x[236] == 2409.0)
@constraint(m, e107, x[16]-x[107] == 0.0)
@constraint(m, e108, x[17]-x[108] == 0.0)
@constraint(m, e109, x[18]-x[109] == 0.0)
@constraint(m, e110, x[19]-x[110] == 0.0)
@constraint(m, e111, x[20]-x[111] == 0.0)
@constraint(m, e112, x[21]-x[112] == 0.0)
@constraint(m, e113, x[22]-x[113] == 0.0)
@constraint(m, e114, x[23]-x[114] == 0.0)
@constraint(m, e115, x[24]-x[115] == 0.0)
@constraint(m, e116, x[25]-x[116] == 0.0)
@constraint(m, e117, x[26]-x[117] == 0.0)
@constraint(m, e118, x[27]-x[118] == 0.0)
@constraint(m, e119, x[28]-x[119] == 0.0)
@constraint(m, e120, x[29]-x[120] == 0.0)
@constraint(m, e121, x[30]-x[121] == 0.0)
@constraint(m, e122, x[31]-x[122] == 0.0)
@constraint(m, e123, x[32]-x[123] == 0.0)
@constraint(m, e124, x[33]-x[124] == 0.0)
@constraint(m, e125, x[34]-x[125] == 0.0)
@constraint(m, e126, x[35]-x[126] == 0.0)
@constraint(m, e127, x[36]-x[127] == 0.0)
@constraint(m, e128, x[37]-x[128] == 0.0)
@constraint(m, e129, x[38]-x[129] == 0.0)
@constraint(m, e130, x[39]-x[130] == 0.0)
@constraint(m, e131, x[40]-x[131] == 0.0)
@constraint(m, e132, x[41]-x[132] == 0.0)
@constraint(m, e133, x[42]-x[133] == 0.0)
@constraint(m, e134, x[43]-x[134] == 0.0)
@constraint(m, e135, x[44]-x[135] == 0.0)
@constraint(m, e136, x[45]-x[136] == 0.0)
@constraint(m, e137, x[46]-x[137] == 0.0)
@constraint(m, e138, x[47]-x[138] == 0.0)
@constraint(m, e139, x[48]-x[139] == 0.0)
@constraint(m, e140, x[49]-x[140] == 0.0)
@constraint(m, e141, x[50]-x[141] == 0.0)
@constraint(m, e142, x[51]-x[142] == 0.0)
@constraint(m, e143, x[52]-x[143] == 0.0)
@constraint(m, e144, x[53]-x[144] == 0.0)
@constraint(m, e145, x[54]-x[145] == 0.0)
@constraint(m, e146, x[55]-x[107]-x[120] == 0.0)
@constraint(m, e147, x[56]-x[108]-x[121] == 0.0)
@constraint(m, e148, x[57]-x[109]-x[122] == 0.0)
@constraint(m, e149, x[58]-x[110]-x[123] == 0.0)
@constraint(m, e150, x[59]-x[111]-x[124] == 0.0)
@constraint(m, e151, x[60]-x[112]-x[125] == 0.0)
@constraint(m, e152, x[61]-x[113]-x[126] == 0.0)
@constraint(m, e153, x[62]-x[114]-x[127] == 0.0)
@constraint(m, e154, x[63]-x[115]-x[128] == 0.0)
@constraint(m, e155, x[64]-x[116]-x[129] == 0.0)
@constraint(m, e156, x[65]-x[117]-x[130] == 0.0)
@constraint(m, e157, x[66]-x[118]-x[131] == 0.0)
@constraint(m, e158, x[67]-x[119]-x[132] == 0.0)
@constraint(m, e159, x[68]-x[107]-x[133] == 0.0)
@constraint(m, e160, x[69]-x[108]-x[134] == 0.0)
@constraint(m, e161, x[70]-x[109]-x[135] == 0.0)
@constraint(m, e162, x[71]-x[110]-x[136] == 0.0)
@constraint(m, e163, x[72]-x[111]-x[137] == 0.0)
@constraint(m, e164, x[73]-x[112]-x[138] == 0.0)
@constraint(m, e165, x[74]-x[113]-x[139] == 0.0)
@constraint(m, e166, x[75]-x[114]-x[140] == 0.0)
@constraint(m, e167, x[76]-x[115]-x[141] == 0.0)
@constraint(m, e168, x[77]-x[116]-x[142] == 0.0)
@constraint(m, e169, x[78]-x[117]-x[143] == 0.0)
@constraint(m, e170, x[79]-x[118]-x[144] == 0.0)
@constraint(m, e171, x[80]-x[119]-x[145] == 0.0)
@constraint(m, e172, x[81]-x[120]-x[133] == 0.0)
@constraint(m, e173, x[82]-x[121]-x[134] == 0.0)
@constraint(m, e174, x[83]-x[122]-x[135] == 0.0)
@constraint(m, e175, x[84]-x[123]-x[136] == 0.0)
@constraint(m, e176, x[85]-x[124]-x[137] == 0.0)
@constraint(m, e177, x[86]-x[125]-x[138] == 0.0)
@constraint(m, e178, x[87]-x[126]-x[139] == 0.0)
@constraint(m, e179, x[88]-x[127]-x[140] == 0.0)
@constraint(m, e180, x[89]-x[128]-x[141] == 0.0)
@constraint(m, e181, x[90]-x[129]-x[142] == 0.0)
@constraint(m, e182, x[91]-x[130]-x[143] == 0.0)
@constraint(m, e183, x[92]-x[131]-x[144] == 0.0)
@constraint(m, e184, x[93]-x[132]-x[145] == 0.0)
@constraint(m, e185, x[94]-x[107]-x[120]-x[133] == 0.0)
@constraint(m, e186, x[95]-x[108]-x[121]-x[134] == 0.0)
@constraint(m, e187, x[96]-x[109]-x[122]-x[135] == 0.0)
@constraint(m, e188, x[97]-x[110]-x[123]-x[136] == 0.0)
@constraint(m, e189, x[98]-x[111]-x[124]-x[137] == 0.0)
@constraint(m, e190, x[99]-x[112]-x[125]-x[138] == 0.0)
@constraint(m, e191, x[100]-x[113]-x[126]-x[139] == 0.0)
@constraint(m, e192, x[101]-x[114]-x[127]-x[140] == 0.0)
@constraint(m, e193, x[102]-x[115]-x[128]-x[141] == 0.0)
@constraint(m, e194, x[103]-x[116]-x[129]-x[142] == 0.0)
@constraint(m, e195, x[104]-x[117]-x[130]-x[143] == 0.0)
@constraint(m, e196, x[105]-x[118]-x[131]-x[144] == 0.0)
@constraint(m, e197, x[106]-x[119]-x[132]-x[145] == 0.0)
@constraint(m, e198, x[146] >= 0.0)
@constraint(m, e199, x[147] >= 0.0)
@constraint(m, e200, x[148] >= 0.0)
@constraint(m, e201, x[149] >= 0.0)
@constraint(m, e202, x[150] >= 0.0)
@constraint(m, e203, x[151] >= 0.0)
@constraint(m, e204, x[152] >= 0.0)
@constraint(m, e205, x[153] >= 0.0)
@constraint(m, e206, x[154] >= 0.0)
@constraint(m, e207, x[155] >= 0.0)
@constraint(m, e208, x[156] >= 0.0)
@constraint(m, e209, x[157] >= 0.0)
@constraint(m, e210, x[158] >= 0.0)
@constraint(m, e211, x[159] >= 0.0)
@constraint(m, e212, x[160] >= 0.0)
@constraint(m, e213, x[161] >= 0.0)
@constraint(m, e214, x[162] >= 0.0)
@constraint(m, e215, x[163] >= 0.0)
@constraint(m, e216, x[164] >= 0.0)
@constraint(m, e217, x[165] >= 0.0)
@constraint(m, e218, x[166] >= 0.0)
@constraint(m, e219, x[167] >= 0.0)
@constraint(m, e220, x[168] >= 0.0)
@constraint(m, e221, x[169] >= 0.0)
@constraint(m, e222, x[170] >= 0.0)
@constraint(m, e223, x[171] >= 0.0)
@constraint(m, e224, x[172] >= 0.0)
@constraint(m, e225, x[173] >= 0.0)
@constraint(m, e226, x[174] >= 0.0)
@constraint(m, e227, x[175] >= 0.0)
@constraint(m, e228, x[176] >= 0.0)
@constraint(m, e229, x[177] >= 0.0)
@constraint(m, e230, x[178] >= 0.0)
@constraint(m, e231, x[179] >= 0.0)
@constraint(m, e232, x[180] >= 0.0)
@constraint(m, e233, x[181] >= 0.0)
@constraint(m, e234, x[182] >= 0.0)
@constraint(m, e235, x[183] >= 0.0)
@constraint(m, e236, x[184] >= 0.0)
@constraint(m, e237, x[185] >= 0.0)
@constraint(m, e238, x[186] >= 0.0)
@constraint(m, e239, x[187] >= 0.0)
@constraint(m, e240, x[188] >= 0.0)
@constraint(m, e241, x[189] >= 0.0)
@constraint(m, e242, x[190] >= 0.0)
@constraint(m, e243, x[191] >= 0.0)
@constraint(m, e244, x[192] >= 0.0)
@constraint(m, e245, x[193] >= 0.0)
@constraint(m, e246, x[194] >= 0.0)
@constraint(m, e247, x[195] >= 0.0)
@constraint(m, e248, x[196] >= 0.0)
@constraint(m, e249, x[197] >= 0.0)
@constraint(m, e250, x[198] >= 0.0)
@constraint(m, e251, x[199] >= 0.0)
@constraint(m, e252, x[200] >= 0.0)
@constraint(m, e253, x[201] >= 0.0)
@constraint(m, e254, x[202] >= 0.0)
@constraint(m, e255, x[203] >= 0.0)
@constraint(m, e256, x[204] >= 0.0)
@constraint(m, e257, x[205] >= 0.0)
@constraint(m, e258, x[206] >= 0.0)
@constraint(m, e259, x[207] >= 0.0)
@constraint(m, e260, x[208] >= 0.0)
@constraint(m, e261, x[209] >= 0.0)
@constraint(m, e262, x[210] >= 0.0)
@constraint(m, e263, x[211] >= 0.0)
@constraint(m, e264, x[212] >= 0.0)
@constraint(m, e265, x[213] >= 0.0)
@constraint(m, e266, x[214] >= 0.0)
@constraint(m, e267, x[215] >= 0.0)
@constraint(m, e268, x[216] >= 0.0)
@constraint(m, e269, x[217] >= 0.0)
@constraint(m, e270, x[218] >= 0.0)
@constraint(m, e271, x[219] >= 0.0)
@constraint(m, e272, x[220] >= 0.0)
@constraint(m, e273, x[221] >= 0.0)
@constraint(m, e274, x[222] >= 0.0)
@constraint(m, e275, x[223] >= 0.0)
@constraint(m, e276, x[224] >= 0.0)
@constraint(m, e277, x[225] >= 0.0)
@constraint(m, e278, x[226] >= 0.0)
@constraint(m, e279, x[227] >= 0.0)
@constraint(m, e280, x[228] >= 0.0)
@constraint(m, e281, x[229] >= 0.0)
@constraint(m, e282, x[230] >= 0.0)
@constraint(m, e283, x[231] >= 0.0)
@constraint(m, e284, x[232] >= 0.0)
@constraint(m, e285, x[233] >= 0.0)
@constraint(m, e286, x[234] >= 0.0)
@constraint(m, e287, x[235] >= 0.0)
@constraint(m, e288, x[236] >= 0.0)
@constraint(m, e289, x[107]+10*b[237] == 100.0)
@constraint(m, e290, x[120]+6*b[250] == 60.0)
@constraint(m, e291, x[133]+3*b[263] == 30.0)
@NLconstraint(m, e292, -(0.9*x[107]*b[238]+x[107]*(1-b[238]))+x[108] == 0.0)
@NLconstraint(m, e293, -(0.9*x[108]*b[239]+x[108]*(1-b[239]))+x[109] == 0.0)
@NLconstraint(m, e294, -(0.9*x[109]*b[240]+x[109]*(1-b[240]))+x[110] == 0.0)
@NLconstraint(m, e295, -(0.9*x[110]*b[241]+x[110]*(1-b[241]))+x[111] == 0.0)
@NLconstraint(m, e296, -(0.9*x[111]*b[242]+x[111]*(1-b[242]))+x[112] == 0.0)
@NLconstraint(m, e297, -(0.9*x[112]*b[243]+x[112]*(1-b[243]))+x[113] == 0.0)
@NLconstraint(m, e298, -(0.9*x[113]*b[244]+x[113]*(1-b[244]))+x[114] == 0.0)
@NLconstraint(m, e299, -(0.9*x[114]*b[245]+x[114]*(1-b[245]))+x[115] == 0.0)
@NLconstraint(m, e300, -(0.9*x[115]*b[246]+x[115]*(1-b[246]))+x[116] == 0.0)
@NLconstraint(m, e301, -(0.9*x[116]*b[247]+x[116]*(1-b[247]))+x[117] == 0.0)
@NLconstraint(m, e302, -(0.9*x[117]*b[248]+x[117]*(1-b[248]))+x[118] == 0.0)
@NLconstraint(m, e303, -(0.9*x[118]*b[249]+x[118]*(1-b[249]))+x[119] == 0.0)
@NLconstraint(m, e304, -(0.9*x[120]*b[251]+x[120]*(1-b[251]))+x[121] == 0.0)
@NLconstraint(m, e305, -(0.9*x[121]*b[252]+x[121]*(1-b[252]))+x[122] == 0.0)
@NLconstraint(m, e306, -(0.9*x[122]*b[253]+x[122]*(1-b[253]))+x[123] == 0.0)
@NLconstraint(m, e307, -(0.9*x[123]*b[254]+x[123]*(1-b[254]))+x[124] == 0.0)
@NLconstraint(m, e308, -(0.9*x[124]*b[255]+x[124]*(1-b[255]))+x[125] == 0.0)
@NLconstraint(m, e309, -(0.9*x[125]*b[256]+x[125]*(1-b[256]))+x[126] == 0.0)
@NLconstraint(m, e310, -(0.9*x[126]*b[257]+x[126]*(1-b[257]))+x[127] == 0.0)
@NLconstraint(m, e311, -(0.9*x[127]*b[258]+x[127]*(1-b[258]))+x[128] == 0.0)
@NLconstraint(m, e312, -(0.9*x[128]*b[259]+x[128]*(1-b[259]))+x[129] == 0.0)
@NLconstraint(m, e313, -(0.9*x[129]*b[260]+x[129]*(1-b[260]))+x[130] == 0.0)
@NLconstraint(m, e314, -(0.9*x[130]*b[261]+x[130]*(1-b[261]))+x[131] == 0.0)
@NLconstraint(m, e315, -(0.9*x[131]*b[262]+x[131]*(1-b[262]))+x[132] == 0.0)
@NLconstraint(m, e316, -(0.9*x[133]*b[264]+x[133]*(1-b[264]))+x[134] == 0.0)
@NLconstraint(m, e317, -(0.9*x[134]*b[265]+x[134]*(1-b[265]))+x[135] == 0.0)
@NLconstraint(m, e318, -(0.9*x[135]*b[266]+x[135]*(1-b[266]))+x[136] == 0.0)
@NLconstraint(m, e319, -(0.9*x[136]*b[267]+x[136]*(1-b[267]))+x[137] == 0.0)
@NLconstraint(m, e320, -(0.9*x[137]*b[268]+x[137]*(1-b[268]))+x[138] == 0.0)
@NLconstraint(m, e321, -(0.9*x[138]*b[269]+x[138]*(1-b[269]))+x[139] == 0.0)
@NLconstraint(m, e322, -(0.9*x[139]*b[270]+x[139]*(1-b[270]))+x[140] == 0.0)
@NLconstraint(m, e323, -(0.9*x[140]*b[271]+x[140]*(1-b[271]))+x[141] == 0.0)
@NLconstraint(m, e324, -(0.9*x[141]*b[272]+x[141]*(1-b[272]))+x[142] == 0.0)
@NLconstraint(m, e325, -(0.9*x[142]*b[273]+x[142]*(1-b[273]))+x[143] == 0.0)
@NLconstraint(m, e326, -(0.9*x[143]*b[274]+x[143]*(1-b[274]))+x[144] == 0.0)
@NLconstraint(m, e327, -(0.9*x[144]*b[275]+x[144]*(1-b[275]))+x[145] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script.