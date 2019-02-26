using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297]
@variable(m, x[x_Idx])
b_Idx = Any[110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197]
@variable(m, b[b_Idx])
set_lower_bound(x[91], 0.0)
set_binary(b[133])
set_binary(b[176])
set_binary(b[169])
set_binary(b[196])
set_binary(b[180])
set_binary(b[178])
set_binary(b[112])
set_binary(b[130])
set_upper_bound(x[202], 0.0)
set_upper_bound(x[220], 0.0)
set_binary(b[132])
set_lower_bound(x[248], 0.0)
set_lower_bound(x[88], 0.0)
set_binary(b[119])
set_lower_bound(x[94], 0.0)
set_upper_bound(x[226], 0.0)
set_binary(b[159])
set_binary(b[197])
set_lower_bound(x[95], 0.0)
set_upper_bound(x[200], 0.0)
set_upper_bound(x[206], 0.0)
set_binary(b[193])
set_upper_bound(x[215], 0.0)
set_binary(b[192])
set_upper_bound(x[198], 0.0)
set_lower_bound(x[23], 0.0)
set_upper_bound(x[225], 0.0)
set_upper_bound(x[218], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_binary(b[188])
set_binary(b[113])
set_binary(b[162])
set_binary(b[161])
set_lower_bound(x[38], 0.0)
set_binary(b[128])
set_binary(b[167])
set_binary(b[177])
set_lower_bound(x[42], 0.0)
set_binary(b[163])
set_lower_bound(x[92], 0.0)
set_upper_bound(x[219], 0.0)
set_binary(b[143])
set_upper_bound(x[224], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[30], 0.0)
set_binary(b[116])
set_upper_bound(x[209], 0.0)
set_binary(b[145])
set_lower_bound(x[24], 0.0)
set_binary(b[114])
set_binary(b[153])
set_binary(b[144])
set_upper_bound(x[199], 0.0)
set_lower_bound(x[26], 0.0)
set_upper_bound(x[213], 0.0)
set_binary(b[166])
set_binary(b[138])
set_lower_bound(x[44], 0.0)
set_binary(b[135])
set_binary(b[151])
set_lower_bound(x[47], 0.0)
set_binary(b[154])
set_binary(b[174])
set_lower_bound(x[28], 0.0)
set_upper_bound(x[227], 0.0)
set_binary(b[155])
set_binary(b[149])
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_binary(b[181])
set_binary(b[139])
set_lower_bound(x[39], 0.0)
set_upper_bound(x[216], 0.0)
set_binary(b[131])
set_upper_bound(x[205], 0.0)
set_upper_bound(x[207], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[89], 0.0)
set_upper_bound(x[201], 0.0)
set_binary(b[160])
set_lower_bound(x[22], 0.0)
set_upper_bound(x[223], 0.0)
set_binary(b[137])
set_binary(b[185])
set_binary(b[164])
set_binary(b[124])
set_binary(b[111])
set_binary(b[170])
set_upper_bound(x[208], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[96], 0.0)
set_upper_bound(x[210], 0.0)
set_binary(b[186])
set_lower_bound(x[25], 0.0)
set_binary(b[172])
set_binary(b[127])
set_lower_bound(x[29], 0.0)
set_binary(b[171])
set_lower_bound(x[37], 0.0)
set_lower_bound(x[82], 0.0)
set_binary(b[126])
set_lower_bound(x[18], 0.0)
set_binary(b[129])
set_binary(b[190])
set_lower_bound(x[86], 0.0)
set_binary(b[125])
set_lower_bound(x[45], 0.0)
set_binary(b[184])
set_binary(b[110])
set_binary(b[183])
set_binary(b[117])
set_binary(b[195])
set_lower_bound(x[33], 0.0)
set_upper_bound(x[203], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[254], 0.0)
set_binary(b[175])
set_upper_bound(x[221], 0.0)
set_upper_bound(x[217], 0.0)
set_upper_bound(x[212], 0.0)
set_binary(b[146])
set_binary(b[123])
set_binary(b[187])
set_binary(b[122])
set_lower_bound(x[20], 0.0)
set_binary(b[121])
set_binary(b[157])
set_lower_bound(x[83], 0.0)
set_binary(b[147])
set_binary(b[156])
set_binary(b[118])
set_upper_bound(x[228], 0.0)
set_lower_bound(x[93], 0.0)
set_binary(b[158])
set_binary(b[120])
set_upper_bound(x[222], 0.0)
set_binary(b[168])
set_binary(b[141])
set_upper_bound(x[204], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_binary(b[136])
set_binary(b[150])
set_lower_bound(x[32], 0.0)
set_binary(b[115])
set_binary(b[189])
set_binary(b[173])
set_lower_bound(x[41], 0.0)
set_upper_bound(x[214], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[247], 0.0)
set_binary(b[142])
set_lower_bound(x[40], 0.0)
set_binary(b[165])
set_lower_bound(x[31], 0.0)
set_binary(b[182])
set_binary(b[194])
set_binary(b[179])
set_binary(b[191])
set_binary(b[134])
set_lower_bound(x[17], 0.0)
set_binary(b[140])
set_lower_bound(x[255], 0.0)
set_lower_bound(x[48], 0.0)
set_binary(b[152])
set_upper_bound(x[229], 0.0)
set_upper_bound(x[211], 0.0)
set_binary(b[148])
set_lower_bound(x[1], -1.6094379124341)
set_upper_bound(x[1], 3.68887945411394)
set_lower_bound(x[2], -1.6094379124341)
set_upper_bound(x[2], 3.68887945411394)
set_lower_bound(x[3], -1.6094379124341)
set_upper_bound(x[3], 3.68887945411394)
set_lower_bound(x[4], -1.6094379124341)
set_upper_bound(x[4], 3.68887945411394)
set_lower_bound(x[5], -1.6094379124341)
set_upper_bound(x[5], 3.68887945411394)
set_lower_bound(x[6], -1.6094379124341)
set_upper_bound(x[6], 3.68887945411394)
set_lower_bound(x[7], -1.6094379124341)
set_upper_bound(x[7], 3.68887945411394)
set_lower_bound(x[8], -6.90775527898214)
set_upper_bound(x[8], 3.68887945411394)
set_lower_bound(x[9], -1.6094379124341)
set_upper_bound(x[9], 3.68887945411394)
set_lower_bound(x[10], -1.6094379124341)
set_upper_bound(x[10], 3.68887945411394)
set_lower_bound(x[11], -6.90775527898214)
set_upper_bound(x[11], -0.693147180559945)
set_lower_bound(x[12], 0.693147180559945)
set_upper_bound(x[12], 6.90775527898214)
set_lower_bound(x[13], -0.693147180559945)
set_upper_bound(x[13], 2.99573227355399)
set_lower_bound(x[14], 0.693147180559945)
set_upper_bound(x[14], 6.90775527898214)
set_lower_bound(x[15], 0.693147180559945)
set_upper_bound(x[15], 6.90775527898214)
set_lower_bound(x[16], 0.693147180559945)
set_upper_bound(x[16], 6.90775527898214)
set_upper_bound(x[17], 5.29831736654804)
set_upper_bound(x[18], 5.29831736654804)
set_upper_bound(x[19], 5.29831736654804)
set_upper_bound(x[20], 5.29831736654804)
set_upper_bound(x[21], 5.29831736654804)
set_upper_bound(x[22], 5.29831736654804)
set_upper_bound(x[23], 5.29831736654804)
set_upper_bound(x[24], 5.29831736654804)
set_upper_bound(x[25], 5.29831736654804)
set_upper_bound(x[26], 5.29831736654804)
set_upper_bound(x[27], 5.29831736654804)
set_upper_bound(x[28], 5.29831736654804)
set_upper_bound(x[29], 5.29831736654804)
set_upper_bound(x[30], 5.29831736654804)
set_upper_bound(x[31], 5.29831736654804)
set_upper_bound(x[32], 5.29831736654804)
set_upper_bound(x[33], 5.29831736654804)
set_upper_bound(x[34], 5.29831736654804)
set_upper_bound(x[35], 5.29831736654804)
set_upper_bound(x[36], 5.29831736654804)
set_upper_bound(x[37], 5.29831736654804)
set_upper_bound(x[38], 5.29831736654804)
set_upper_bound(x[39], 5.29831736654804)
set_upper_bound(x[40], 5.29831736654804)
set_upper_bound(x[41], 5.29831736654804)
set_upper_bound(x[42], 5.29831736654804)
set_upper_bound(x[43], 5.29831736654804)
set_upper_bound(x[44], 5.29831736654804)
set_upper_bound(x[45], 5.29831736654804)
set_upper_bound(x[46], 5.29831736654804)
set_upper_bound(x[47], 5.29831736654804)
set_upper_bound(x[48], 5.29831736654804)
set_lower_bound(x[54], 0.587786664902119)
set_upper_bound(x[54], 0.587786664902119)
set_lower_bound(x[62], 0.587786664902119)
set_upper_bound(x[62], 0.587786664902119)
set_lower_bound(x[70], 0.587786664902119)
set_upper_bound(x[70], 0.587786664902119)
set_lower_bound(x[78], 0.587786664902119)
set_upper_bound(x[78], 0.587786664902119)
set_upper_bound(x[81], 1.6094379124341)
set_upper_bound(x[82], 1.6094379124341)
set_upper_bound(x[83], 1.6094379124341)
set_upper_bound(x[84], 1.6094379124341)
set_upper_bound(x[85], 1.6094379124341)
set_upper_bound(x[86], 1.6094379124341)
set_upper_bound(x[87], 1.6094379124341)
set_upper_bound(x[88], 1.6094379124341)
set_upper_bound(x[89], 1.6094379124341)
set_upper_bound(x[90], 1.6094379124341)
set_upper_bound(x[91], 1.6094379124341)
set_upper_bound(x[92], 1.6094379124341)
set_upper_bound(x[93], 1.6094379124341)
set_upper_bound(x[94], 1.6094379124341)
set_upper_bound(x[95], 1.6094379124341)
set_upper_bound(x[96], 1.6094379124341)
set_lower_bound(x[98], -2.30258509299405)
set_upper_bound(x[98], 6.90775527898214)
set_lower_bound(x[99], -2.30258509299405)
set_upper_bound(x[99], 6.90775527898214)
set_lower_bound(x[100], -2.30258509299405)
set_upper_bound(x[100], 6.90775527898214)
set_lower_bound(x[101], -2.30258509299405)
set_upper_bound(x[101], 6.90775527898214)
set_lower_bound(x[102], -2.30258509299405)
set_upper_bound(x[102], 6.90775527898214)
set_lower_bound(x[103], -2.30258509299405)
set_upper_bound(x[103], 6.90775527898214)
set_lower_bound(x[104], -2.30258509299405)
set_upper_bound(x[104], 6.90775527898214)
set_lower_bound(x[105], -2.30258509299405)
set_upper_bound(x[105], 6.90775527898214)
set_lower_bound(x[106], -6.90775527898214)
set_upper_bound(x[106], 2.99573227355399)
set_lower_bound(x[107], -6.90775527898214)
set_upper_bound(x[107], 2.99573227355399)
set_lower_bound(x[108], -6.90775527898214)
set_upper_bound(x[108], 2.99573227355399)
set_lower_bound(x[109], -6.90775527898214)
set_upper_bound(x[109], 2.99573227355399)
set_lower_bound(b[117], 0.0)
set_upper_bound(b[117], 0.0)
set_upper_bound(x[198], 1.6094379124341)
set_upper_bound(x[199], 1.6094379124341)
set_upper_bound(x[200], 1.6094379124341)
set_upper_bound(x[201], 1.6094379124341)
set_upper_bound(x[202], 1.6094379124341)
set_upper_bound(x[203], 1.6094379124341)
set_upper_bound(x[204], 1.6094379124341)
set_upper_bound(x[205], 1.6094379124341)
set_upper_bound(x[206], 1.6094379124341)
set_upper_bound(x[207], 1.6094379124341)
set_upper_bound(x[208], 1.6094379124341)
set_upper_bound(x[209], 1.6094379124341)
set_upper_bound(x[210], 1.6094379124341)
set_upper_bound(x[211], 1.6094379124341)
set_upper_bound(x[212], 1.6094379124341)
set_upper_bound(x[213], 1.6094379124341)
set_upper_bound(x[214], 1.6094379124341)
set_upper_bound(x[215], 1.6094379124341)
set_upper_bound(x[216], 1.6094379124341)
set_upper_bound(x[217], 1.6094379124341)
set_upper_bound(x[218], 1.6094379124341)
set_upper_bound(x[219], 1.6094379124341)
set_upper_bound(x[220], 1.6094379124341)
set_upper_bound(x[221], 1.6094379124341)
set_upper_bound(x[222], 1.6094379124341)
set_upper_bound(x[223], 1.6094379124341)
set_upper_bound(x[224], 1.6094379124341)
set_upper_bound(x[225], 1.6094379124341)
set_upper_bound(x[226], 1.6094379124341)
set_upper_bound(x[227], 1.6094379124341)
set_upper_bound(x[228], 1.6094379124341)
set_upper_bound(x[229], 1.6094379124341)
set_lower_bound(x[231], -2.25129179860649)
set_upper_bound(x[231], -2.25129179860649)
set_lower_bound(x[233], -2.25129179860649)
set_upper_bound(x[233], -2.25129179860649)
set_lower_bound(x[235], -2.25129179860649)
set_upper_bound(x[235], -2.25129179860649)
set_lower_bound(x[237], -2.25129179860649)
set_upper_bound(x[237], -2.25129179860649)
set_lower_bound(x[247], 0.0)
set_upper_bound(x[247], 0.0)
set_lower_bound(x[248], 0.0)
set_upper_bound(x[248], 0.0)
set_lower_bound(x[254], 0.0)
set_upper_bound(x[254], 0.0)
set_lower_bound(x[255], 0.0)
set_upper_bound(x[255], 0.0)
set_lower_bound(x[266], 0.1)
set_upper_bound(x[266], 1.0)
set_lower_bound(x[267], 0.1)
set_upper_bound(x[267], 1.0)
set_lower_bound(x[268], 0.1)
set_upper_bound(x[268], 1.0)
set_lower_bound(x[269], 0.95)
set_upper_bound(x[269], 0.95)
set_lower_bound(x[270], 0.1)
set_upper_bound(x[270], 1.0)
set_lower_bound(x[271], 0.1)
set_upper_bound(x[271], 1.0)
set_lower_bound(x[272], 0.95)
set_upper_bound(x[272], 0.95)
set_lower_bound(x[273], 0.1)
set_upper_bound(x[273], 1.0)
set_lower_bound(x[274], 0.1)
set_upper_bound(x[274], 1.0)
set_lower_bound(x[275], 0.95)
set_upper_bound(x[275], 0.95)
set_lower_bound(x[276], 0.1)
set_upper_bound(x[276], 1.0)
set_lower_bound(x[277], 0.1)
set_upper_bound(x[277], 1.0)
set_lower_bound(x[278], 0.1)
set_upper_bound(x[278], 1.0)
set_lower_bound(x[279], 0.95)
set_upper_bound(x[279], 0.95)
set_lower_bound(x[280], 10.0)
set_upper_bound(x[280], 54.5)
set_lower_bound(x[281], 10.0)
set_upper_bound(x[281], 54.5)
set_lower_bound(x[282], 10.0)
set_upper_bound(x[282], 54.5)
set_lower_bound(x[283], 10.0)
set_upper_bound(x[283], 54.5)
set_lower_bound(x[284], 10.0)
set_upper_bound(x[284], 250.0)
set_lower_bound(x[285], 10.0)
set_upper_bound(x[285], 250.0)
set_lower_bound(x[286], 10.0)
set_upper_bound(x[286], 250.0)
set_lower_bound(x[287], 10.0)
set_upper_bound(x[287], 250.0)
set_lower_bound(x[288], 0.1)
set_upper_bound(x[288], 10.0)
set_lower_bound(x[289], 0.1)
set_upper_bound(x[289], 10.0)
set_lower_bound(x[290], 0.5)
set_upper_bound(x[290], 10.0)
set_lower_bound(x[291], 0.5)
set_upper_bound(x[291], 10.0)
set_lower_bound(x[292], 0.5)
set_upper_bound(x[292], 6.0)
set_lower_bound(x[293], 0.5)
set_upper_bound(x[293], 6.0)
set_lower_bound(x[294], 0.1)
set_upper_bound(x[294], 4.0)
set_lower_bound(x[295], 0.1)
set_upper_bound(x[295], 4.0)
set_lower_bound(x[296], 0.1)
set_upper_bound(x[296], 4.0)
set_lower_bound(x[297], 0.1)
set_upper_bound(x[297], 4.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[17]+x[89]-x[198] >= 0.0)
@constraint(m, e2, x[2]-x[18]+x[90]-x[199] >= 0.0)
@constraint(m, e3, x[3]-x[19]+x[91]-x[200] >= 0.0)
@constraint(m, e4, x[4]-x[20]+x[92]-x[201] >= 0.0)
@constraint(m, e5, x[5]-x[21]+x[93]-x[202] >= 0.0)
@constraint(m, e6, x[6]-x[22]+x[94]-x[203] >= 0.0)
@constraint(m, e7, x[7]-x[23]+x[95]-x[204] >= 0.0)
@constraint(m, e8, x[8]-x[24]+x[96]-x[205] >= 0.0)
@constraint(m, e9, x[1]-x[25]+x[89]-x[206] >= 0.0)
@constraint(m, e10, x[2]-x[26]+x[90]-x[207] >= 0.0)
@constraint(m, e11, x[3]-x[27]+x[91]-x[208] >= 0.0)
@constraint(m, e12, x[4]-x[28]+x[92]-x[209] >= 0.0)
@constraint(m, e13, x[5]-x[29]+x[93]-x[210] >= 0.0)
@constraint(m, e14, x[6]-x[30]+x[94]-x[211] >= 0.0)
@constraint(m, e15, x[7]-x[31]+x[95]-x[212] >= 0.0)
@constraint(m, e16, x[8]-x[32]+x[96]-x[213] >= 0.0)
@constraint(m, e17, x[1]-x[33]+x[89]-x[214] >= 0.0)
@constraint(m, e18, x[2]-x[34]+x[90]-x[215] >= 0.0)
@constraint(m, e19, x[3]-x[35]+x[91]-x[216] >= 0.0)
@constraint(m, e20, x[4]-x[36]+x[92]-x[217] >= 0.0)
@constraint(m, e21, x[5]-x[37]+x[93]-x[218] >= 0.0)
@constraint(m, e22, x[6]-x[38]+x[94]-x[219] >= 0.0)
@constraint(m, e23, x[7]-x[39]+x[95]-x[220] >= 0.0)
@constraint(m, e24, x[8]-x[40]+x[96]-x[221] >= 0.0)
@constraint(m, e25, x[1]-x[41]+x[89]-x[222] >= 0.0)
@constraint(m, e26, x[2]-x[42]+x[90]-x[223] >= 0.0)
@constraint(m, e27, x[3]-x[43]+x[91]-x[224] >= 0.0)
@constraint(m, e28, x[4]-x[44]+x[92]-x[225] >= 0.0)
@constraint(m, e29, x[5]-x[45]+x[93]-x[226] >= 0.0)
@constraint(m, e30, x[6]-x[46]+x[94]-x[227] >= 0.0)
@constraint(m, e31, x[7]-x[47]+x[95]-x[228] >= 0.0)
@constraint(m, e32, x[8]-x[48]+x[96]-x[229] >= 0.0)
@constraint(m, e33, x[10]-x[20]+x[92]-x[230] >= 0.0)
@constraint(m, e34, x[11]-x[24]+x[96]-x[231] >= 0.0)
@constraint(m, e35, x[9]-x[26]+x[90]-x[232] >= 0.0)
@constraint(m, e36, x[11]-x[32]+x[96]-x[233] >= 0.0)
@constraint(m, e37, x[9]-x[34]+x[90]-x[234] >= 0.0)
@constraint(m, e38, x[11]-x[40]+x[96]-x[235] >= 0.0)
@constraint(m, e39, x[10]-x[44]+x[92]-x[236] >= 0.0)
@constraint(m, e40, x[11]-x[48]+x[96]-x[237] >= 0.0)
@NLconstraint(m, e41, -log(15.6/(x[280]*x[266]*x[267]*x[268]*x[269]))+x[198] == 0.0)
@NLconstraint(m, e42, -log(15.6/(x[280]*x[266]*x[267]*x[268]*x[269]))+x[199] == 0.0)
@NLconstraint(m, e43, -log(15.6/(x[284]*x[266]*x[267]*x[268]*x[269]))+x[200] == 0.0)
@NLconstraint(m, e44, -log(15.6/(x[284]*x[266]*x[267]*x[268]*x[269]))+x[201] == 0.0)
@NLconstraint(m, e45, -log((7.8+15.6*x[290])/(x[284]*x[266]*x[267]*x[268]*x[269]))+x[202] == 0.0)
@NLconstraint(m, e46, -log((0.075+0.075*x[294])/(exp(-0.03*x[292])*x[269]*x[268]))+x[203] == 0.0)
@NLconstraint(m, e47, -log(0.075/(exp(-0.03*x[292])*x[269]*x[268]))+x[204] == 0.0)
@NLconstraint(m, e48, -log((0.05*x[294]/ (1+x[294])^2+0.025*x[268])/(x[268]*x[269]*exp(-0.03*x[292])))+x[205] == 0.0)
@NLconstraint(m, e49, -log(20.8/(x[281]*x[272]*x[270]*x[271]))+x[206] == 0.0)
@NLconstraint(m, e50, -log(20.8/(x[281]*x[272]*x[270]*x[271]))+x[207] == 0.0)
@NLconstraint(m, e51, -log((20.8+20.8*x[288]-20.8*x[281]/x[285])/(x[281]*x[270]*x[271]*x[272]))+x[210] == 0.0)
@NLconstraint(m, e52, -log((0.05+0.05*x[295])/(x[272]*x[271]))+x[211] == 0.0)
@NLconstraint(m, e53, -log(0.05/(x[272]*x[271]))+x[212] == 0.0)
@NLconstraint(m, e54, -log((0.025*x[295]/ (1+x[295])^2+0.025*x[271])/(x[271]*x[272]))+x[213] == 0.0)
@NLconstraint(m, e55, -log(62.5/(x[282]*x[275]*x[273]*x[274]))+x[214] == 0.0)
@NLconstraint(m, e56, -log(62.5/(x[282]*x[275]*x[273]*x[274]))+x[215] == 0.0)
@NLconstraint(m, e57, -log((62.5+62.5*x[289]-62.5*x[282]/x[286])/(x[282]*x[273]*x[274]*x[275]))+x[218] == 0.0)
@NLconstraint(m, e58, -log((0.15+0.15*x[296])/(x[275]*x[274]))+x[219] == 0.0)
@NLconstraint(m, e59, -log(0.15/(x[275]*x[274]))+x[220] == 0.0)
@NLconstraint(m, e60, -log((0.125*x[296]/ (1+x[296])^2+0.025*x[274])/(x[274]*x[275]))+x[221] == 0.0)
@NLconstraint(m, e61, -log(31.2/(x[283]*x[276]*x[277]*x[278]*x[279]))+x[222] == 0.0)
@NLconstraint(m, e62, -log(31.2/(x[283]*x[276]*x[277]*x[278]*x[279]))+x[223] == 0.0)
@NLconstraint(m, e63, -log(31.2/(x[287]*x[276]*x[277]*x[278]*x[279]))+x[224] == 0.0)
@NLconstraint(m, e64, -log(31.2/(x[287]*x[276]*x[277]*x[278]*x[279]))+x[225] == 0.0)
@NLconstraint(m, e65, -log((15.6+31.2*x[291])/(x[287]*x[276]*x[277]*x[278]*x[279]))+x[226] == 0.0)
@NLconstraint(m, e66, -log((0.15+0.15*x[297])/(exp(-0.03*x[293])*x[279]*x[278]))+x[227] == 0.0)
@NLconstraint(m, e67, -log(0.15/(exp(-0.03*x[293])*x[279]*x[278]))+x[228] == 0.0)
@NLconstraint(m, e68, -log((0.125*x[297]/ (1+x[297])^2+0.025*x[278])/(x[278]*x[279]*exp(-0.03*x[293])))+x[229] == 0.0)
@NLconstraint(m, e69, -log((7.8+15.6*x[290])/(x[284]*x[266]*x[267]*x[268]*x[269]))+x[230] == 0.0)
@NLconstraint(m, e70, -log((20.8+20.8*x[288]-20.8*x[281]/x[285])/(x[281]*x[270]*x[271]*x[272]))+x[232] == 0.0)
@NLconstraint(m, e71, -log((62.5+62.5*x[289]-62.5*x[282]/x[286])/(x[282]*x[273]*x[274]*x[275]))+x[234] == 0.0)
@NLconstraint(m, e72, -log((15.6+31.2*x[291])/(x[287]*x[276]*x[277]*x[278]*x[279]))+x[236] == 0.0)
@NLconstraint(m, e73, -exp(x[199])+x[238] == 0.0)
@NLconstraint(m, e74, -15.6/(x[284]*x[266]*x[267]*x[268]*x[269])+x[239] == 0.0)
@NLconstraint(m, e75, -15.6/(x[284]*x[266]*x[267]*x[268]*x[269])+x[240] == 0.0)
@NLconstraint(m, e76, -(7.8+15.6*x[290])/(x[284]*x[266]*x[267]*x[268]*x[269])+x[241] == 0.0)
@NLconstraint(m, e77, -0.075/(exp(-0.03*x[292])*x[269]*x[268])+x[242] == 0.0)
@NLconstraint(m, e78, -0.075/(exp(-0.03*x[292])*x[269]*x[268])+x[243] == 0.0)
@NLconstraint(m, e79, -exp(x[205])+x[244] == 0.0)
@NLconstraint(m, e80, -exp(x[207])+x[245] == 0.0)
@NLconstraint(m, e81, -(20.8+20.8*x[288]-20.8*x[281]/x[285])/(x[281]*x[270]*x[271]*x[272])+x[246] == 0.0)
@NLconstraint(m, e82, -0.05/(x[272]*x[271])+x[249] == 0.0)
@NLconstraint(m, e83, -0.05/(x[272]*x[271])+x[250] == 0.0)
@NLconstraint(m, e84, -exp(x[213])+x[251] == 0.0)
@NLconstraint(m, e85, -exp(x[215])+x[252] == 0.0)
@NLconstraint(m, e86, -(62.5+62.5*x[289]-62.5*x[282]/x[286])/(x[282]*x[273]*x[274]*x[275])+x[253] == 0.0)
@NLconstraint(m, e87, -0.15/(x[275]*x[274])+x[256] == 0.0)
@NLconstraint(m, e88, -0.15/(x[275]*x[274])+x[257] == 0.0)
@NLconstraint(m, e89, -exp(x[221])+x[258] == 0.0)
@NLconstraint(m, e90, -exp(x[223])+x[259] == 0.0)
@NLconstraint(m, e91, -31.2/(x[287]*x[276]*x[277]*x[278]*x[279])+x[260] == 0.0)
@NLconstraint(m, e92, -31.2/(x[287]*x[276]*x[277]*x[278]*x[279])+x[261] == 0.0)
@NLconstraint(m, e93, -(15.6+31.2*x[291])/(x[287]*x[276]*x[277]*x[278]*x[279])+x[262] == 0.0)
@NLconstraint(m, e94, -0.15/(exp(-0.03*x[293])*x[279]*x[278])+x[263] == 0.0)
@NLconstraint(m, e95, -0.15/(exp(-0.03*x[293])*x[279]*x[278])+x[264] == 0.0)
@NLconstraint(m, e96, -exp(x[229])+x[265] == 0.0)
@NLconstraint(m, e97, -log(4+3.8*log(0.35*x[280]/(1-0.0181818181818182*x[280])))+x[49] == 0.0)
@NLconstraint(m, e98, -log(1.25+(62.5-62.5*x[280]/x[284])/x[280]*x[266]*x[267]*x[268]*x[269]*exp(x[18])/exp(x[12]))+x[50] == 0.0)
@NLconstraint(m, e99, -log(1.25+12.5*x[292]/(x[284]*x[266]*x[267]*x[268]*x[269])*exp(x[19])/exp(x[13]))+x[51] == 0.0)
@NLconstraint(m, e100, -log(1.75+(62.5+125*x[290])/(x[284]*x[266]*x[267]*x[268]*x[269])*exp(x[20])/exp(x[14]))+x[52] == 0.0)
@NLconstraint(m, e101, -log(1+(312.5+625*x[290])/(x[284]*x[266]*x[267]*x[268]*x[269])*(1-0.24*x[284]*(1-exp(-1.5*x[292]))*(1-0.5*exp(-2*x[290]))/(25+50*x[290]))*exp(x[21])/exp(x[15]))+x[53] == 0.0)
@NLconstraint(m, e102, -log(0.3+(3+(-2*x[294]/ (1+x[294])^2)-x[268])/(x[268]*x[269]*exp(-0.03*x[292]))*exp(x[23])/exp(x[16]))+x[55] == 0.0)
@NLconstraint(m, e103, -log(0.375+(0.005*x[294]/ (1+x[294])^2+0.0025*x[268])/(x[268]*x[269]*exp(-0.03*x[292]))*exp(x[24])/exp(x[11]))+x[56] == 0.0)
@NLconstraint(m, e104, -log(4+3.8*log(0.35*x[281]/(1-0.0181818181818182*x[281])))+x[57] == 0.0)
@NLconstraint(m, e105, -log(1.75+(83.5+83.5*x[288]-83.5*x[281]/x[285])/x[281]*x[270]*x[271]*x[272]*exp(x[26])/exp(x[12]))+x[58] == 0.0)
@NLconstraint(m, e106, -log(1+(835+835*x[288]-835*x[281]/x[285])/(x[281]*x[270]*x[271]*x[272])*(1-0.12*x[281]*x[270]/(50+50*x[288]-50*x[281]/x[285]))*exp(x[29])/exp(x[15]))+x[61] == 0.0)
@NLconstraint(m, e107, -log(0.3+(2+(-x[295]/ (1+x[295])^2)-x[271])/(x[271]*x[272])*exp(x[31])/exp(x[16]))+x[63] == 0.0)
@NLconstraint(m, e108, -log(0.375+(0.0025*x[295]/ (1+x[295])^2+0.0025*x[271])/(x[271]*x[272])*exp(x[32])/exp(x[11]))+x[64] == 0.0)
@NLconstraint(m, e109, -log(4+3.8*log(0.35*x[282]/(1-0.0181818181818182*x[282])))+x[65] == 0.0)
@NLconstraint(m, e110, -log(1.75+(250+250*x[289]-250*x[282]/x[286])/(x[282]*x[273]*x[274]*x[275])*exp(x[34])/exp(x[12]))+x[66] == 0.0)
@NLconstraint(m, e111, -log(1+(2500+2500*x[289]-2500*x[282]/x[286])/(x[282]*x[273]*x[274]*x[275])*(1-0.12*x[282]*x[273]/(50+50*x[289]-50*x[282]/x[286]))*exp(x[37])/exp(x[15]))+x[69] == 0.0)
@NLconstraint(m, e112, -log(0.3+(6+(-5*x[296]/ (1+x[296])^2)-x[274])/(x[274]*x[275])*exp(x[39])/exp(x[16]))+x[71] == 0.0)
@NLconstraint(m, e113, -log(0.375+(0.0125*x[296]/ (1+x[296])^2+0.0025*x[274])/(x[274]*x[275])*exp(x[40])/exp(x[11]))+x[72] == 0.0)
@NLconstraint(m, e114, -log(4+3.8*log(0.35*x[283]/(1-0.0181818181818182*x[283])))+x[73] == 0.0)
@NLconstraint(m, e115, -log(1.25+(125-125*x[283]/x[287])/(x[283]*x[276]*x[277]*x[278]*x[279])*exp(x[42])/exp(x[12]))+x[74] == 0.0)
@NLconstraint(m, e116, -log(1.25+25*x[293]/(x[287]*x[276]*x[277]*x[278]*x[279])*exp(x[43])/exp(x[13]))+x[75] == 0.0)
@NLconstraint(m, e117, -log(1.75+(125+250*x[291])/(x[287]*x[276]*x[277]*x[278]*x[279])*exp(x[44])/exp(x[14]))+x[76] == 0.0)
@NLconstraint(m, e118, -log(1+(625+1250*x[291])/(x[287]*x[276]*x[277]*x[278]*x[279])*(1-0.24*x[287]*(1-exp(-1.5*x[293]))*(1-0.5*exp(-2*x[291]))/(25+50*x[291]))*exp(x[45])/exp(x[15]))+x[77] == 0.0)
@NLconstraint(m, e119, -log(0.3+(6+(-5*x[297]/ (1+x[297])^2)-x[278])/(x[278]*x[279]*exp(-0.03*x[293]))*exp(x[47])/exp(x[16]))+x[79] == 0.0)
@NLconstraint(m, e120, -log(0.375+(0.0125*x[297]/ (1+x[297])^2+0.0025*x[278])/(x[278]*x[279]*exp(-0.03*x[293]))*exp(x[48])/exp(x[11]))+x[80] == 0.0)
@NLconstraint(m, e121, -(1-exp(-1.5*x[292]))*exp(-0.03*x[292])+x[266] == 0.0)
@NLconstraint(m, e122, 0.5*exp(-2*x[290])+x[267] == 1.0)
@NLconstraint(m, e123, -25.1*x[294]/((1+25.1*x[294])*(1+x[294]*10^(4.9*x[294]/(1+x[294])-3.5)))+x[268] == 0.0)
@NLconstraint(m, e124, x[281]/x[285]*exp(-x[288]*x[285]/x[281])+x[270] == 1.0)
@NLconstraint(m, e125, -50.1*x[295]/((1+50.1*x[295])*(1+x[295]*10^(5.95*x[295]/(1+x[295])-4.25)))+x[271] == 0.0)
@NLconstraint(m, e126, x[282]/x[286]*exp(-x[289]*x[286]/x[282])+x[273] == 1.0)
@NLconstraint(m, e127, -31.6*x[296]/((1+31.6*x[296])*(1+x[296]*10^(5.25*x[296]/(1+x[296])-3.75)))+x[274] == 0.0)
@NLconstraint(m, e128, -(1-exp(-1.5*x[293]))*exp(-0.03*x[293])+x[276] == 0.0)
@NLconstraint(m, e129, 0.5*exp(-2*x[291])+x[277] == 1.0)
@NLconstraint(m, e130, -39.8*x[297]/((1+39.8*x[297])*(1+x[297]*10^(5.6*x[297]/(1+x[297])-4)))+x[278] == 0.0)
@constraint(m, e131, -x[17]+x[49]-x[81]-x[106] <= 0.0)
@constraint(m, e132, -x[18]+x[50]-x[82]-x[106] <= 0.0)
@constraint(m, e133, -x[19]+x[51]-x[83]-x[106] <= 0.0)
@constraint(m, e134, -x[20]+x[52]-x[84]-x[106] <= 0.0)
@constraint(m, e135, -x[21]+x[53]-x[85]-x[106] <= 0.0)
@constraint(m, e136, -x[22]+x[54]-x[86]-x[106] <= 0.0)
@constraint(m, e137, -x[23]+x[55]-x[87]-x[106] <= 0.0)
@constraint(m, e138, -x[24]+x[56]-x[88]-x[106] <= 0.0)
@constraint(m, e139, -x[25]+x[57]-x[81]-x[107] <= 0.0)
@constraint(m, e140, -x[26]+x[58]-x[82]-x[107] <= 0.0)
@constraint(m, e141, -x[27]+x[59]-x[83]-x[107] <= 0.0)
@constraint(m, e142, -x[28]+x[60]-x[84]-x[107] <= 0.0)
@constraint(m, e143, -x[29]+x[61]-x[85]-x[107] <= 0.0)
@constraint(m, e144, -x[30]+x[62]-x[86]-x[107] <= 0.0)
@constraint(m, e145, -x[31]+x[63]-x[87]-x[107] <= 0.0)
@constraint(m, e146, -x[32]+x[64]-x[88]-x[107] <= 0.0)
@constraint(m, e147, -x[33]+x[65]-x[81]-x[108] <= 0.0)
@constraint(m, e148, -x[34]+x[66]-x[82]-x[108] <= 0.0)
@constraint(m, e149, -x[35]+x[67]-x[83]-x[108] <= 0.0)
@constraint(m, e150, -x[36]+x[68]-x[84]-x[108] <= 0.0)
@constraint(m, e151, -x[37]+x[69]-x[85]-x[108] <= 0.0)
@constraint(m, e152, -x[38]+x[70]-x[86]-x[108] <= 0.0)
@constraint(m, e153, -x[39]+x[71]-x[87]-x[108] <= 0.0)
@constraint(m, e154, -x[40]+x[72]-x[88]-x[108] <= 0.0)
@constraint(m, e155, -x[41]+x[73]-x[81]-x[109] <= 0.0)
@constraint(m, e156, -x[42]+x[74]-x[82]-x[109] <= 0.0)
@constraint(m, e157, -x[43]+x[75]-x[83]-x[109] <= 0.0)
@constraint(m, e158, -x[44]+x[76]-x[84]-x[109] <= 0.0)
@constraint(m, e159, -x[45]+x[77]-x[85]-x[109] <= 0.0)
@constraint(m, e160, -x[46]+x[78]-x[86]-x[109] <= 0.0)
@constraint(m, e161, -x[47]+x[79]-x[87]-x[109] <= 0.0)
@constraint(m, e162, -x[48]+x[80]-x[88]-x[109] <= 0.0)
@NLconstraint(m, e163, 6000*exp(x[106])+3000*exp(x[107])+1500*exp(x[108])+1000*exp(x[109]) <= 6000.0)
@constraint(m, e164, x[17]-x[18]-2.99573227355399*b[110] <= 0.0)
@constraint(m, e165, x[18]-x[19]-2.99573227355399*b[111] <= 0.0)
@constraint(m, e166, x[19]-x[20]-2.99573227355399*b[112] <= 0.0)
@constraint(m, e167, x[20]-x[21]-2.99573227355399*b[113] <= 0.0)
@constraint(m, e168, x[21]-x[22]-2.99573227355399*b[114] <= 0.0)
@constraint(m, e169, x[22]-x[23]-2.99573227355399*b[115] <= 0.0)
@constraint(m, e170, x[23]-x[24]-2.99573227355399*b[116] <= 0.0)
@constraint(m, e171, x[25]-x[26]-2.99573227355399*b[110] <= 0.0)
@constraint(m, e172, x[26]-x[27]-2.99573227355399*b[111] <= 0.0)
@constraint(m, e173, x[27]-x[28]-2.99573227355399*b[112] <= 0.0)
@constraint(m, e174, x[28]-x[29]-2.99573227355399*b[113] <= 0.0)
@constraint(m, e175, x[29]-x[30]-2.99573227355399*b[114] <= 0.0)
@constraint(m, e176, x[30]-x[31]-2.99573227355399*b[115] <= 0.0)
@constraint(m, e177, x[31]-x[32]-2.99573227355399*b[116] <= 0.0)
@constraint(m, e178, x[33]-x[34]-2.99573227355399*b[110] <= 0.0)
@constraint(m, e179, x[34]-x[35]-2.99573227355399*b[111] <= 0.0)
@constraint(m, e180, x[35]-x[36]-2.99573227355399*b[112] <= 0.0)
@constraint(m, e181, x[36]-x[37]-2.99573227355399*b[113] <= 0.0)
@constraint(m, e182, x[37]-x[38]-2.99573227355399*b[114] <= 0.0)
@constraint(m, e183, x[38]-x[39]-2.99573227355399*b[115] <= 0.0)
@constraint(m, e184, x[39]-x[40]-2.99573227355399*b[116] <= 0.0)
@constraint(m, e185, x[41]-x[42]-2.99573227355399*b[110] <= 0.0)
@constraint(m, e186, x[42]-x[43]-2.99573227355399*b[111] <= 0.0)
@constraint(m, e187, x[43]-x[44]-2.99573227355399*b[112] <= 0.0)
@constraint(m, e188, x[44]-x[45]-2.99573227355399*b[113] <= 0.0)
@constraint(m, e189, x[45]-x[46]-2.99573227355399*b[114] <= 0.0)
@constraint(m, e190, x[46]-x[47]-2.99573227355399*b[115] <= 0.0)
@constraint(m, e191, x[47]-x[48]-2.99573227355399*b[116] <= 0.0)
@constraint(m, e192, x[17]-x[18]+2.99573227355399*b[110] >= 0.0)
@constraint(m, e193, x[18]-x[19]+2.99573227355399*b[111] >= 0.0)
@constraint(m, e194, x[19]-x[20]+2.99573227355399*b[112] >= 0.0)
@constraint(m, e195, x[20]-x[21]+2.99573227355399*b[113] >= 0.0)
@constraint(m, e196, x[21]-x[22]+2.99573227355399*b[114] >= 0.0)
@constraint(m, e197, x[22]-x[23]+2.99573227355399*b[115] >= 0.0)
@constraint(m, e198, x[23]-x[24]+2.99573227355399*b[116] >= 0.0)
@constraint(m, e199, x[25]-x[26]+2.99573227355399*b[110] >= 0.0)
@constraint(m, e200, x[26]-x[27]+2.99573227355399*b[111] >= 0.0)
@constraint(m, e201, x[27]-x[28]+2.99573227355399*b[112] >= 0.0)
@constraint(m, e202, x[28]-x[29]+2.99573227355399*b[113] >= 0.0)
@constraint(m, e203, x[29]-x[30]+2.99573227355399*b[114] >= 0.0)
@constraint(m, e204, x[30]-x[31]+2.99573227355399*b[115] >= 0.0)
@constraint(m, e205, x[31]-x[32]+2.99573227355399*b[116] >= 0.0)
@constraint(m, e206, x[33]-x[34]+2.99573227355399*b[110] >= 0.0)
@constraint(m, e207, x[34]-x[35]+2.99573227355399*b[111] >= 0.0)
@constraint(m, e208, x[35]-x[36]+2.99573227355399*b[112] >= 0.0)
@constraint(m, e209, x[36]-x[37]+2.99573227355399*b[113] >= 0.0)
@constraint(m, e210, x[37]-x[38]+2.99573227355399*b[114] >= 0.0)
@constraint(m, e211, x[38]-x[39]+2.99573227355399*b[115] >= 0.0)
@constraint(m, e212, x[39]-x[40]+2.99573227355399*b[116] >= 0.0)
@constraint(m, e213, x[41]-x[42]+2.99573227355399*b[110] >= 0.0)
@constraint(m, e214, x[42]-x[43]+2.99573227355399*b[111] >= 0.0)
@constraint(m, e215, x[43]-x[44]+2.99573227355399*b[112] >= 0.0)
@constraint(m, e216, x[44]-x[45]+2.99573227355399*b[113] >= 0.0)
@constraint(m, e217, x[45]-x[46]+2.99573227355399*b[114] >= 0.0)
@constraint(m, e218, x[46]-x[47]+2.99573227355399*b[115] >= 0.0)
@constraint(m, e219, x[47]-x[48]+2.99573227355399*b[116] >= 0.0)
@NLconstraint(m, e220, -x[238]*(exp(x[17]-x[98])+exp(x[18]-x[98]))-10*b[110] >= -11.0)
@NLconstraint(m, e221, -x[239]*(exp(x[18]-x[99])+exp(x[19]-x[99]))-10*b[111] >= -11.0)
@NLconstraint(m, e222, -x[240]*(exp(x[19]-x[100])+exp(x[20]-x[100]))-10*b[112] >= -11.0)
@NLconstraint(m, e223, -x[241]*(exp(x[20]-x[101])+exp(x[21]-x[101]))-10*b[113] >= -11.0)
@NLconstraint(m, e224, -x[242]*(exp(x[21]-x[102])+exp(x[22]-x[102]))-10*b[114] >= -11.0)
@NLconstraint(m, e225, -x[243]*(exp(x[22]-x[103])+exp(x[23]-x[103]))-10*b[115] >= -11.0)
@NLconstraint(m, e226, -x[244]*(exp(x[23]-x[104])+exp(x[24]-x[104]))-10*b[116] >= -11.0)
@NLconstraint(m, e227, -x[245]*(exp(x[25]-x[98])+exp(x[26]-x[98]))-10*b[110] >= -11.0)
@NLconstraint(m, e228, -x[246]*(exp(x[26]-x[99])+exp(x[27]-x[99]))-10*b[111] >= -11.0)
@NLconstraint(m, e229, -x[247]*(exp(x[27]-x[100])+exp(x[28]-x[100]))-10*b[112] >= -11.0)
@NLconstraint(m, e230, -x[248]*(exp(x[28]-x[101])+exp(x[29]-x[101]))-10*b[113] >= -11.0)
@NLconstraint(m, e231, -x[249]*(exp(x[29]-x[102])+exp(x[30]-x[102]))-10*b[114] >= -11.0)
@NLconstraint(m, e232, -x[250]*(exp(x[30]-x[103])+exp(x[31]-x[103]))-10*b[115] >= -11.0)
@NLconstraint(m, e233, -x[251]*(exp(x[31]-x[104])+exp(x[32]-x[104]))-10*b[116] >= -11.0)
@NLconstraint(m, e234, -x[252]*(exp(x[33]-x[98])+exp(x[34]-x[98]))-10*b[110] >= -11.0)
@NLconstraint(m, e235, -x[253]*(exp(x[34]-x[99])+exp(x[35]-x[99]))-10*b[111] >= -11.0)
@NLconstraint(m, e236, -x[254]*(exp(x[35]-x[100])+exp(x[36]-x[100]))-10*b[112] >= -11.0)
@NLconstraint(m, e237, -x[255]*(exp(x[36]-x[101])+exp(x[37]-x[101]))-10*b[113] >= -11.0)
@NLconstraint(m, e238, -x[256]*(exp(x[37]-x[102])+exp(x[38]-x[102]))-10*b[114] >= -11.0)
@NLconstraint(m, e239, -x[257]*(exp(x[38]-x[103])+exp(x[39]-x[103]))-10*b[115] >= -11.0)
@NLconstraint(m, e240, -x[258]*(exp(x[39]-x[104])+exp(x[40]-x[104]))-10*b[116] >= -11.0)
@NLconstraint(m, e241, -x[259]*(exp(x[41]-x[98])+exp(x[42]-x[98]))-10*b[110] >= -11.0)
@NLconstraint(m, e242, -x[260]*(exp(x[42]-x[99])+exp(x[43]-x[99]))-10*b[111] >= -11.0)
@NLconstraint(m, e243, -x[261]*(exp(x[43]-x[100])+exp(x[44]-x[100]))-10*b[112] >= -11.0)
@NLconstraint(m, e244, -x[262]*(exp(x[44]-x[101])+exp(x[45]-x[101]))-10*b[113] >= -11.0)
@NLconstraint(m, e245, -x[263]*(exp(x[45]-x[102])+exp(x[46]-x[102]))-10*b[114] >= -11.0)
@NLconstraint(m, e246, -x[264]*(exp(x[46]-x[103])+exp(x[47]-x[103]))-10*b[115] >= -11.0)
@NLconstraint(m, e247, -x[265]*(exp(x[47]-x[104])+exp(x[48]-x[104]))-10*b[116] >= -11.0)
@constraint(m, e248, x[81]-0.693147180559945*b[126]-1.09861228866811*b[134]-1.38629436111989*b[142]-1.6094379124341*b[150] == 0.0)
@constraint(m, e249, x[82]-0.693147180559945*b[127]-1.09861228866811*b[135]-1.38629436111989*b[143]-1.6094379124341*b[151] == 0.0)
@constraint(m, e250, x[83]-0.693147180559945*b[128]-1.09861228866811*b[136]-1.38629436111989*b[144]-1.6094379124341*b[152] == 0.0)
@constraint(m, e251, x[84]-0.693147180559945*b[129]-1.09861228866811*b[137]-1.38629436111989*b[145]-1.6094379124341*b[153] == 0.0)
@constraint(m, e252, x[85]-0.693147180559945*b[130]-1.09861228866811*b[138]-1.38629436111989*b[146]-1.6094379124341*b[154] == 0.0)
@constraint(m, e253, x[86]-0.693147180559945*b[131]-1.09861228866811*b[139]-1.38629436111989*b[147]-1.6094379124341*b[155] == 0.0)
@constraint(m, e254, x[87]-0.693147180559945*b[132]-1.09861228866811*b[140]-1.38629436111989*b[148]-1.6094379124341*b[156] == 0.0)
@constraint(m, e255, x[88]-0.693147180559945*b[133]-1.09861228866811*b[141]-1.38629436111989*b[149]-1.6094379124341*b[157] == 0.0)
@constraint(m, e256, b[118]+b[126]+b[134]+b[142]+b[150] == 1.0)
@constraint(m, e257, b[119]+b[127]+b[135]+b[143]+b[151] == 1.0)
@constraint(m, e258, b[120]+b[128]+b[136]+b[144]+b[152] == 1.0)
@constraint(m, e259, b[121]+b[129]+b[137]+b[145]+b[153] == 1.0)
@constraint(m, e260, b[122]+b[130]+b[138]+b[146]+b[154] == 1.0)
@constraint(m, e261, b[123]+b[131]+b[139]+b[147]+b[155] == 1.0)
@constraint(m, e262, b[124]+b[132]+b[140]+b[148]+b[156] == 1.0)
@constraint(m, e263, b[125]+b[133]+b[141]+b[149]+b[157] == 1.0)
@constraint(m, e264, x[89]-0.693147180559945*b[166]-1.09861228866811*b[174]-1.38629436111989*b[182]-1.6094379124341*b[190] == 0.0)
@constraint(m, e265, x[90]-0.693147180559945*b[167]-1.09861228866811*b[175]-1.38629436111989*b[183]-1.6094379124341*b[191] == 0.0)
@constraint(m, e266, x[91]-0.693147180559945*b[168]-1.09861228866811*b[176]-1.38629436111989*b[184]-1.6094379124341*b[192] == 0.0)
@constraint(m, e267, x[92]-0.693147180559945*b[169]-1.09861228866811*b[177]-1.38629436111989*b[185]-1.6094379124341*b[193] == 0.0)
@constraint(m, e268, x[93]-0.693147180559945*b[170]-1.09861228866811*b[178]-1.38629436111989*b[186]-1.6094379124341*b[194] == 0.0)
@constraint(m, e269, x[94]-0.693147180559945*b[171]-1.09861228866811*b[179]-1.38629436111989*b[187]-1.6094379124341*b[195] == 0.0)
@constraint(m, e270, x[95]-0.693147180559945*b[172]-1.09861228866811*b[180]-1.38629436111989*b[188]-1.6094379124341*b[196] == 0.0)
@constraint(m, e271, x[96]-0.693147180559945*b[173]-1.09861228866811*b[181]-1.38629436111989*b[189]-1.6094379124341*b[197] == 0.0)
@constraint(m, e272, b[158]+b[166]+b[174]+b[182]+b[190] == 1.0)
@constraint(m, e273, b[159]+b[167]+b[175]+b[183]+b[191] == 1.0)
@constraint(m, e274, b[160]+b[168]+b[176]+b[184]+b[192] == 1.0)
@constraint(m, e275, b[161]+b[169]+b[177]+b[185]+b[193] == 1.0)
@constraint(m, e276, b[162]+b[170]+b[178]+b[186]+b[194] == 1.0)
@constraint(m, e277, b[163]+b[171]+b[179]+b[187]+b[195] == 1.0)
@constraint(m, e278, b[164]+b[172]+b[180]+b[188]+b[196] == 1.0)
@constraint(m, e279, b[165]+b[173]+b[181]+b[189]+b[197] == 1.0)
@constraint(m, e280, b[110]+b[111]+b[112]+b[113]+b[114]+b[115]+b[116]+b[117] <= 7.0)
@NLconstraint(m, e281, -(63400*exp(0.6*x[1]+x[81]+x[89])+5750*exp(0.6*x[2]+x[82]+x[90])+5750*exp(0.6*x[3]+x[83]+x[91])+5750*exp(0.6*x[4]+x[84]+x[92])+5750*exp(0.6*x[5]+x[85]+x[93])+23100*exp(0.65*x[6]+x[86]+x[94])+5750*exp(0.6*x[7]+x[87]+x[95])+5750*exp(0.6*x[8]+x[88]+x[96])+5750*exp(0.6*x[9]+x[82]+x[90])+5750*exp(0.6*x[10]+x[84]+x[92])+360000*exp(0.975*x[11]+x[88]+x[96])+2900*exp(0.85*x[12]+x[82]+x[90])+12100*exp(0.75*x[13]+x[83]+x[91])+2900*exp(0.85*x[14]+x[84]+x[92])+2900*exp(0.85*x[15]+x[85]+x[93])+2900*exp(0.85*x[16]+x[87]+x[95])+5750*(exp(0.6*x[98])+exp(0.6*x[99])+exp(0.6*x[100])+exp(0.6*x[101])+exp(0.6*x[102])+exp(0.6*x[103])+exp(0.6*x[104])+exp(0.6*x[105])))+objvar == 0.0)
@constraint(m, e282, x[280]-x[284] <= 0.0)
@constraint(m, e283, x[281]-x[285] <= 0.0)
@constraint(m, e284, x[282]-x[286] <= 0.0)
@constraint(m, e285, x[283]-x[287] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.