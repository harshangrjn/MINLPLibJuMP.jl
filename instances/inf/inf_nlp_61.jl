using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317]
@variable(m, x[x_Idx])
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[287], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[308], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[299], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[303], 0.0)
set_lower_bound(x[251], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[265], 0.0)
set_lower_bound(x[312], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[243], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[250], 0.0)
set_lower_bound(x[248], 0.0)
set_lower_bound(x[289], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[273], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[260], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[307], 0.0)
set_lower_bound(x[298], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[238], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[292], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[277], 0.0)
set_lower_bound(x[244], 0.0)
set_lower_bound(x[278], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[253], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[291], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[264], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[259], 0.0)
set_lower_bound(x[261], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[285], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[306], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[290], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[311], 0.0)
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
set_lower_bound(x[128], 0.0)
set_lower_bound(x[258], 0.0)
set_lower_bound(x[282], 0.0)
set_lower_bound(x[295], 0.0)
set_lower_bound(x[313], 0.0)
set_lower_bound(x[281], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[288], 0.0)
set_lower_bound(x[263], 0.0)
set_lower_bound(x[309], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[252], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[240], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[284], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[279], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[280], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[316], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[314], 0.0)
set_lower_bound(x[305], 0.0)
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
set_lower_bound(x[89], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[257], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[272], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[270], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[274], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[267], 0.0)
set_lower_bound(x[296], 0.0)
set_lower_bound(x[302], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[297], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[249], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[310], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[268], 0.0)
set_lower_bound(x[276], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[275], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
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
set_lower_bound(x[254], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[271], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[239], 0.0)
set_lower_bound(x[294], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[256], 0.0)
set_lower_bound(x[266], 0.0)
set_lower_bound(x[269], 0.0)
set_lower_bound(x[245], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[283], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[293], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[304], 0.0)
set_lower_bound(x[247], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[286], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[300], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[246], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[315], 0.0)
set_lower_bound(x[242], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[255], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[262], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[301], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[108], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[26]+x[317] == 0.0)
@constraint(m, e2, x[26] >= 2.0)
@NLconstraint(m, e3, -x[25]*(118.776-5.656*x[27])+x[75] == 0.0)
@NLconstraint(m, e4, -x[25]*(118.776-5.656*x[28])+x[76] == 0.0)
@NLconstraint(m, e5, -x[25]*(118.776-5.656*x[29])+x[77] == 0.0)
@NLconstraint(m, e6, -x[25]*(113.12-5.656*x[30])+x[78] == 0.0)
@NLconstraint(m, e7, -x[25]*(113.12-5.656*x[31])+x[79] == 0.0)
@NLconstraint(m, e8, -x[25]*(117.780556966325-5.656*x[32])+x[80] == 0.0)
@NLconstraint(m, e9, -x[25]*(174.43934756175-5.656*x[33])+x[81] == 0.0)
@NLconstraint(m, e10, -x[25]*(316.42376038-5.656*x[34])+x[82] == 0.0)
@NLconstraint(m, e11, -x[25]*(474.1827118625-5.656*x[35])+x[83] == 0.0)
@NLconstraint(m, e12, -x[25]*(611.2602810375-5.656*x[36])+x[84] == 0.0)
@NLconstraint(m, e13, -x[25]*(717.7676868275-5.656*x[37])+x[85] == 0.0)
@NLconstraint(m, e14, -x[25]*(776.204089645-5.656*x[38])+x[86] == 0.0)
@NLconstraint(m, e15, -x[25]*(779.4513552225-5.656*x[39])+x[87] == 0.0)
@NLconstraint(m, e16, -x[25]*(729.66050822-5.656*x[40])+x[88] == 0.0)
@NLconstraint(m, e17, -x[25]*(636.9414255325-5.656*x[41])+x[89] == 0.0)
@NLconstraint(m, e18, -x[25]*(511.9496508425-5.656*x[42])+x[90] == 0.0)
@NLconstraint(m, e19, -x[25]*(372.449789965-5.656*x[43])+x[91] == 0.0)
@NLconstraint(m, e20, -x[25]*(244.41418861575-5.656*x[44])+x[92] == 0.0)
@NLconstraint(m, e21, -x[25]*(194.1455703975-5.656*x[45])+x[93] == 0.0)
@NLconstraint(m, e22, -x[25]*(180.992-5.656*x[46])+x[94] == 0.0)
@NLconstraint(m, e23, -x[25]*(169.68-5.656*x[47])+x[95] == 0.0)
@NLconstraint(m, e24, -x[25]*(158.368-5.656*x[48])+x[96] == 0.0)
@NLconstraint(m, e25, -x[25]*(141.4-5.656*x[49])+x[97] == 0.0)
@NLconstraint(m, e26, -x[25]*(130.088-5.656*x[50])+x[98] == 0.0)
@constraint(m, e27, x[99] == 0.0)
@constraint(m, e28, x[100] == 0.0)
@constraint(m, e29, x[101] == 0.0)
@constraint(m, e30, x[102] == 0.0)
@constraint(m, e31, x[103] == 0.0)
@constraint(m, e32, x[104] == 0.0)
@constraint(m, e33, -787.5*x[33]+x[105] == 0.0)
@constraint(m, e34, -787.5*x[34]+x[106] == 0.0)
@constraint(m, e35, x[107] == 0.0)
@constraint(m, e36, x[108] == 0.0)
@constraint(m, e37, -525*x[37]+x[109] == 0.0)
@constraint(m, e38, x[110] == 0.0)
@constraint(m, e39, -525*x[39]+x[111] == 0.0)
@constraint(m, e40, x[112] == 0.0)
@constraint(m, e41, -656.25*x[41]+x[113] == 0.0)
@constraint(m, e42, -656.25*x[42]+x[114] == 0.0)
@constraint(m, e43, -656.25*x[43]+x[115] == 0.0)
@constraint(m, e44, -656.25*x[44]+x[116] == 0.0)
@constraint(m, e45, x[117] == 0.0)
@constraint(m, e46, x[118] == 0.0)
@constraint(m, e47, x[119] == 0.0)
@constraint(m, e48, x[120] == 0.0)
@constraint(m, e49, x[121] == 0.0)
@constraint(m, e50, x[122] == 0.0)
@constraint(m, e51, x[123]-88200*x[171] == 0.0)
@constraint(m, e52, x[124]-88200*x[172] == 0.0)
@constraint(m, e53, x[125]-88200*x[173] == 0.0)
@constraint(m, e54, x[126]-84000*x[174] == 0.0)
@constraint(m, e55, x[127]-84000*x[175] == 0.0)
@constraint(m, e56, x[128]-84000*x[176] == 0.0)
@constraint(m, e57, x[129]-88200*x[177] == 0.0)
@constraint(m, e58, x[130]-92400*x[178] == 0.0)
@constraint(m, e59, x[131]-96600*x[179] == 0.0)
@constraint(m, e60, x[132]-100800*x[180] == 0.0)
@constraint(m, e61, x[133]-109200*x[181] == 0.0)
@constraint(m, e62, x[134]-117600*x[182] == 0.0)
@constraint(m, e63, x[135]-126000*x[183] == 0.0)
@constraint(m, e64, x[136]-134400*x[184] == 0.0)
@constraint(m, e65, x[137]-142800*x[185] == 0.0)
@constraint(m, e66, x[138]-147000*x[186] == 0.0)
@constraint(m, e67, x[139]-142800*x[187] == 0.0)
@constraint(m, e68, x[140]-138600*x[188] == 0.0)
@constraint(m, e69, x[141]-138600*x[189] == 0.0)
@constraint(m, e70, x[142]-134400*x[190] == 0.0)
@constraint(m, e71, x[143]-126000*x[191] == 0.0)
@constraint(m, e72, x[144]-117600*x[192] == 0.0)
@constraint(m, e73, x[145]-105000*x[193] == 0.0)
@constraint(m, e74, x[146]-96600*x[194] == 0.0)
@constraint(m, e75, x[195] == 0.0)
@constraint(m, e76, x[196] == 0.0)
@constraint(m, e77, x[197] == 0.0)
@constraint(m, e78, x[198] == 0.0)
@constraint(m, e79, x[199] == 0.0)
@constraint(m, e80, x[200] == 0.0)
@constraint(m, e81, x[201] == 0.675)
@constraint(m, e82, x[202] == 0.675)
@constraint(m, e83, x[203] == 0.0)
@constraint(m, e84, x[204] == 0.0)
@constraint(m, e85, x[205] == 0.45)
@constraint(m, e86, x[206] == 0.0)
@constraint(m, e87, x[207] == 0.45)
@constraint(m, e88, x[208] == 0.0)
@constraint(m, e89, x[209] == 0.5625)
@constraint(m, e90, x[210] == 0.5625)
@constraint(m, e91, x[211] == 0.5625)
@constraint(m, e92, x[212] == 0.5625)
@constraint(m, e93, x[213] == 0.0)
@constraint(m, e94, x[214] == 0.0)
@constraint(m, e95, x[215] == 0.0)
@constraint(m, e96, x[216] == 0.0)
@constraint(m, e97, x[217] == 0.0)
@constraint(m, e98, x[218] == 0.0)
@constraint(m, e99, -3.6*x[171]+x[219] == 0.0)
@constraint(m, e100, -3.6*x[172]+x[220] == 0.0)
@constraint(m, e101, -3.6*x[173]+x[221] == 0.0)
@constraint(m, e102, -3.6*x[174]+x[222] == 0.0)
@constraint(m, e103, -3.6*x[175]+x[223] == 0.0)
@constraint(m, e104, -3.6*x[176]+x[224] == 0.0)
@constraint(m, e105, -3.6*x[177]+x[225] == 0.0)
@constraint(m, e106, -3.6*x[178]+x[226] == 0.0)
@constraint(m, e107, -3.6*x[179]+x[227] == 0.0)
@constraint(m, e108, -3.6*x[180]+x[228] == 0.0)
@constraint(m, e109, -3.6*x[181]+x[229] == 0.0)
@constraint(m, e110, -3.6*x[182]+x[230] == 0.0)
@constraint(m, e111, -3.6*x[183]+x[231] == 0.0)
@constraint(m, e112, -3.6*x[184]+x[232] == 0.0)
@constraint(m, e113, -3.6*x[185]+x[233] == 0.0)
@constraint(m, e114, -3.6*x[186]+x[234] == 0.0)
@constraint(m, e115, -3.6*x[187]+x[235] == 0.0)
@constraint(m, e116, -3.6*x[188]+x[236] == 0.0)
@constraint(m, e117, -3.6*x[189]+x[237] == 0.0)
@constraint(m, e118, -3.6*x[190]+x[238] == 0.0)
@constraint(m, e119, -3.6*x[191]+x[239] == 0.0)
@constraint(m, e120, -3.6*x[192]+x[240] == 0.0)
@constraint(m, e121, -3.6*x[193]+x[241] == 0.0)
@constraint(m, e122, -3.6*x[194]+x[242] == 0.0)
@constraint(m, e123, x[171] >= 0.0)
@constraint(m, e124, x[172] >= 0.0)
@constraint(m, e125, x[173] >= 0.0)
@constraint(m, e126, x[174] >= 0.0)
@constraint(m, e127, x[175] >= 0.0)
@constraint(m, e128, x[176] >= 0.0)
@constraint(m, e129, x[177] >= 0.0)
@constraint(m, e130, x[178] >= 0.0)
@constraint(m, e131, x[179] >= 0.0)
@constraint(m, e132, x[180] >= 0.0)
@constraint(m, e133, x[181] >= 0.0)
@constraint(m, e134, x[182] >= 0.0)
@constraint(m, e135, x[183] >= 0.0)
@constraint(m, e136, x[184] >= 0.0)
@constraint(m, e137, x[185] >= 0.0)
@constraint(m, e138, x[186] >= 0.0)
@constraint(m, e139, x[187] >= 0.0)
@constraint(m, e140, x[188] >= 0.0)
@constraint(m, e141, x[189] >= 0.0)
@constraint(m, e142, x[190] >= 0.0)
@constraint(m, e143, x[191] >= 0.0)
@constraint(m, e144, x[192] >= 0.0)
@constraint(m, e145, x[193] >= 0.0)
@constraint(m, e146, x[194] >= 0.0)
@constraint(m, e147, x[195]-x[219]-x[243]+x[267] == 0.0)
@constraint(m, e148, x[196]-x[220]-x[244]+x[268] == 0.0)
@constraint(m, e149, x[197]-x[221]-x[245]+x[269] == 0.0)
@constraint(m, e150, x[198]-x[222]-x[246]+x[270] == 0.0)
@constraint(m, e151, x[199]-x[223]-x[247]+x[271] == 0.0)
@constraint(m, e152, x[200]-x[224]-x[248]+x[272] == 0.0)
@constraint(m, e153, x[201]-x[225]-x[249]+x[273] == 0.0)
@constraint(m, e154, x[202]-x[226]-x[250]+x[274] == 0.0)
@constraint(m, e155, x[203]-x[227]-x[251]+x[275] == 0.0)
@constraint(m, e156, x[204]-x[228]-x[252]+x[276] == 0.0)
@constraint(m, e157, x[205]-x[229]-x[253]+x[277] == 0.0)
@constraint(m, e158, x[206]-x[230]-x[254]+x[278] == 0.0)
@constraint(m, e159, x[207]-x[231]-x[255]+x[279] == 0.0)
@constraint(m, e160, x[208]-x[232]-x[256]+x[280] == 0.0)
@constraint(m, e161, x[209]-x[233]-x[257]+x[281] == 0.0)
@constraint(m, e162, x[210]-x[234]-x[258]+x[282] == 0.0)
@constraint(m, e163, x[211]-x[235]-x[259]+x[283] == 0.0)
@constraint(m, e164, x[212]-x[236]-x[260]+x[284] == 0.0)
@constraint(m, e165, x[213]-x[237]-x[261]+x[285] == 0.0)
@constraint(m, e166, x[214]-x[238]-x[262]+x[286] == 0.0)
@constraint(m, e167, x[215]-x[239]-x[263]+x[287] == 0.0)
@constraint(m, e168, x[216]-x[240]-x[264]+x[288] == 0.0)
@constraint(m, e169, x[217]-x[241]-x[265]+x[289] == 0.0)
@constraint(m, e170, x[218]-x[242]-x[266]+x[290] == 0.0)
@constraint(m, e171, x[243] == 0.0)
@constraint(m, e172, x[244]-x[267] == 0.0)
@constraint(m, e173, x[245]-x[268] == 0.0)
@constraint(m, e174, x[246]-x[269] == 0.0)
@constraint(m, e175, x[247]-x[270] == 0.0)
@constraint(m, e176, x[248]-x[271] == 0.0)
@constraint(m, e177, x[249]-x[272] == 0.0)
@constraint(m, e178, x[250]-x[273] == 0.0)
@constraint(m, e179, x[251]-x[274] == 0.0)
@constraint(m, e180, x[252]-x[275] == 0.0)
@constraint(m, e181, x[253]-x[276] == 0.0)
@constraint(m, e182, x[254]-x[277] == 0.0)
@constraint(m, e183, x[255]-x[278] == 0.0)
@constraint(m, e184, x[256]-x[279] == 0.0)
@constraint(m, e185, x[257]-x[280] == 0.0)
@constraint(m, e186, x[258]-x[281] == 0.0)
@constraint(m, e187, x[259]-x[282] == 0.0)
@constraint(m, e188, x[260]-x[283] == 0.0)
@constraint(m, e189, x[261]-x[284] == 0.0)
@constraint(m, e190, x[262]-x[285] == 0.0)
@constraint(m, e191, x[263]-x[286] == 0.0)
@constraint(m, e192, x[264]-x[287] == 0.0)
@constraint(m, e193, x[265]-x[288] == 0.0)
@constraint(m, e194, x[266]-x[289] == 0.0)
@NLconstraint(m, e195, -x[267]^0.6667+x[291] == 0.0)
@NLconstraint(m, e196, -x[268]^0.6667+x[292] == 0.0)
@NLconstraint(m, e197, -x[269]^0.6667+x[293] == 0.0)
@NLconstraint(m, e198, -x[270]^0.6667+x[294] == 0.0)
@NLconstraint(m, e199, -x[271]^0.6667+x[295] == 0.0)
@NLconstraint(m, e200, -x[272]^0.6667+x[296] == 0.0)
@NLconstraint(m, e201, -x[273]^0.6667+x[297] == 0.0)
@NLconstraint(m, e202, -x[274]^0.6667+x[298] == 0.0)
@NLconstraint(m, e203, -x[275]^0.6667+x[299] == 0.0)
@NLconstraint(m, e204, -x[276]^0.6667+x[300] == 0.0)
@NLconstraint(m, e205, -x[277]^0.6667+x[301] == 0.0)
@NLconstraint(m, e206, -x[278]^0.6667+x[302] == 0.0)
@NLconstraint(m, e207, -x[279]^0.6667+x[303] == 0.0)
@NLconstraint(m, e208, -x[280]^0.6667+x[304] == 0.0)
@NLconstraint(m, e209, -x[281]^0.6667+x[305] == 0.0)
@NLconstraint(m, e210, -x[282]^0.6667+x[306] == 0.0)
@NLconstraint(m, e211, -x[283]^0.6667+x[307] == 0.0)
@NLconstraint(m, e212, -x[284]^0.6667+x[308] == 0.0)
@NLconstraint(m, e213, -x[285]^0.6667+x[309] == 0.0)
@NLconstraint(m, e214, -x[286]^0.6667+x[310] == 0.0)
@NLconstraint(m, e215, -x[287]^0.6667+x[311] == 0.0)
@NLconstraint(m, e216, -x[288]^0.6667+x[312] == 0.0)
@NLconstraint(m, e217, -x[289]^0.6667+x[313] == 0.0)
@NLconstraint(m, e218, -x[290]^0.6667+x[314] == 0.0)
@NLconstraint(m, e219, -1.107*x[291]*(-21+x[27])+x[147] == 0.0)
@NLconstraint(m, e220, -1.107*x[292]*(-21+x[28])+x[148] == 0.0)
@NLconstraint(m, e221, -1.107*x[293]*(-21+x[29])+x[149] == 0.0)
@NLconstraint(m, e222, -1.107*x[294]*(-20+x[30])+x[150] == 0.0)
@NLconstraint(m, e223, -1.107*x[295]*(-20+x[31])+x[151] == 0.0)
@NLconstraint(m, e224, -1.107*x[296]*(-20+x[32])+x[152] == 0.0)
@NLconstraint(m, e225, -1.107*x[297]*(-21+x[33])+x[153] == 0.0)
@NLconstraint(m, e226, -1.107*x[298]*(-22+x[34])+x[154] == 0.0)
@NLconstraint(m, e227, -1.107*x[299]*(-23+x[35])+x[155] == 0.0)
@NLconstraint(m, e228, -1.107*x[300]*(-24+x[36])+x[156] == 0.0)
@NLconstraint(m, e229, -1.107*x[301]*(-26+x[37])+x[157] == 0.0)
@NLconstraint(m, e230, -1.107*x[302]*(-28+x[38])+x[158] == 0.0)
@NLconstraint(m, e231, -1.107*x[303]*(-30+x[39])+x[159] == 0.0)
@NLconstraint(m, e232, -1.107*x[304]*(-32+x[40])+x[160] == 0.0)
@NLconstraint(m, e233, -1.107*x[305]*(-34+x[41])+x[161] == 0.0)
@NLconstraint(m, e234, -1.107*x[306]*(-35+x[42])+x[162] == 0.0)
@NLconstraint(m, e235, -1.107*x[307]*(-34+x[43])+x[163] == 0.0)
@NLconstraint(m, e236, -1.107*x[308]*(-33+x[44])+x[164] == 0.0)
@NLconstraint(m, e237, -1.107*x[309]*(-33+x[45])+x[165] == 0.0)
@NLconstraint(m, e238, -1.107*x[310]*(-32+x[46])+x[166] == 0.0)
@NLconstraint(m, e239, -1.107*x[311]*(-30+x[47])+x[167] == 0.0)
@NLconstraint(m, e240, -1.107*x[312]*(-28+x[48])+x[168] == 0.0)
@NLconstraint(m, e241, -1.107*x[313]*(-25+x[49])+x[169] == 0.0)
@NLconstraint(m, e242, -1.107*x[314]*(-23+x[50])+x[170] == 0.0)
@constraint(m, e243, x[1]-0.000857142857142857*x[75]+0.000857142857142857*x[99]-0.000857142857142857*x[123]+0.000857142857142857*x[147] == 0.0)
@constraint(m, e244, x[2]-0.000857142857142857*x[76]+0.000857142857142857*x[100]-0.000857142857142857*x[124]+0.000857142857142857*x[148] == 0.0)
@constraint(m, e245, x[3]-0.000857142857142857*x[77]+0.000857142857142857*x[101]-0.000857142857142857*x[125]+0.000857142857142857*x[149] == 0.0)
@constraint(m, e246, x[4]-0.000857142857142857*x[78]+0.000857142857142857*x[102]-0.000857142857142857*x[126]+0.000857142857142857*x[150] == 0.0)
@constraint(m, e247, x[5]-0.000857142857142857*x[79]+0.000857142857142857*x[103]-0.000857142857142857*x[127]+0.000857142857142857*x[151] == 0.0)
@constraint(m, e248, x[6]-0.000857142857142857*x[80]+0.000857142857142857*x[104]-0.000857142857142857*x[128]+0.000857142857142857*x[152] == 0.0)
@constraint(m, e249, x[7]-0.000857142857142857*x[81]+0.000857142857142857*x[105]-0.000857142857142857*x[129]+0.000857142857142857*x[153] == 0.0)
@constraint(m, e250, x[8]-0.000857142857142857*x[82]+0.000857142857142857*x[106]-0.000857142857142857*x[130]+0.000857142857142857*x[154] == 0.0)
@constraint(m, e251, x[9]-0.000857142857142857*x[83]+0.000857142857142857*x[107]-0.000857142857142857*x[131]+0.000857142857142857*x[155] == 0.0)
@constraint(m, e252, x[10]-0.000857142857142857*x[84]+0.000857142857142857*x[108]-0.000857142857142857*x[132]+0.000857142857142857*x[156] == 0.0)
@constraint(m, e253, x[11]-0.000857142857142857*x[85]+0.000857142857142857*x[109]-0.000857142857142857*x[133]+0.000857142857142857*x[157] == 0.0)
@constraint(m, e254, x[12]-0.000857142857142857*x[86]+0.000857142857142857*x[110]-0.000857142857142857*x[134]+0.000857142857142857*x[158] == 0.0)
@constraint(m, e255, x[13]-0.000857142857142857*x[87]+0.000857142857142857*x[111]-0.000857142857142857*x[135]+0.000857142857142857*x[159] == 0.0)
@constraint(m, e256, x[14]-0.000857142857142857*x[88]+0.000857142857142857*x[112]-0.000857142857142857*x[136]+0.000857142857142857*x[160] == 0.0)
@constraint(m, e257, x[15]-0.000857142857142857*x[89]+0.000857142857142857*x[113]-0.000857142857142857*x[137]+0.000857142857142857*x[161] == 0.0)
@constraint(m, e258, x[16]-0.000857142857142857*x[90]+0.000857142857142857*x[114]-0.000857142857142857*x[138]+0.000857142857142857*x[162] == 0.0)
@constraint(m, e259, x[17]-0.000857142857142857*x[91]+0.000857142857142857*x[115]-0.000857142857142857*x[139]+0.000857142857142857*x[163] == 0.0)
@constraint(m, e260, x[18]-0.000857142857142857*x[92]+0.000857142857142857*x[116]-0.000857142857142857*x[140]+0.000857142857142857*x[164] == 0.0)
@constraint(m, e261, x[19]-0.000857142857142857*x[93]+0.000857142857142857*x[117]-0.000857142857142857*x[141]+0.000857142857142857*x[165] == 0.0)
@constraint(m, e262, x[20]-0.000857142857142857*x[94]+0.000857142857142857*x[118]-0.000857142857142857*x[142]+0.000857142857142857*x[166] == 0.0)
@constraint(m, e263, x[21]-0.000857142857142857*x[95]+0.000857142857142857*x[119]-0.000857142857142857*x[143]+0.000857142857142857*x[167] == 0.0)
@constraint(m, e264, x[22]-0.000857142857142857*x[96]+0.000857142857142857*x[120]-0.000857142857142857*x[144]+0.000857142857142857*x[168] == 0.0)
@constraint(m, e265, x[23]-0.000857142857142857*x[97]+0.000857142857142857*x[121]-0.000857142857142857*x[145]+0.000857142857142857*x[169] == 0.0)
@constraint(m, e266, x[24]-0.000857142857142857*x[98]+0.000857142857142857*x[122]-0.000857142857142857*x[146]+0.000857142857142857*x[170] == 0.0)
@NLconstraint(m, e267, x[51]*x[267]-x[243]*x[27]-x[1] == 0.0)
@NLconstraint(m, e268, x[52]*x[268]-x[244]*x[28]-x[2] == 0.0)
@NLconstraint(m, e269, x[53]*x[269]-x[245]*x[29]-x[3] == 0.0)
@NLconstraint(m, e270, x[54]*x[270]-x[246]*x[30]-x[4] == 0.0)
@NLconstraint(m, e271, x[55]*x[271]-x[247]*x[31]-x[5] == 0.0)
@NLconstraint(m, e272, x[56]*x[272]-x[248]*x[32]-x[6] == 0.0)
@NLconstraint(m, e273, x[57]*x[273]-x[249]*x[33]-x[7] == 0.0)
@NLconstraint(m, e274, x[58]*x[274]-x[250]*x[34]-x[8] == 0.0)
@NLconstraint(m, e275, x[59]*x[275]-x[251]*x[35]-x[9] == 0.0)
@NLconstraint(m, e276, x[60]*x[276]-x[252]*x[36]-x[10] == 0.0)
@NLconstraint(m, e277, x[61]*x[277]-x[253]*x[37]-x[11] == 0.0)
@NLconstraint(m, e278, x[62]*x[278]-x[254]*x[38]-x[12] == 0.0)
@NLconstraint(m, e279, x[63]*x[279]-x[255]*x[39]-x[13] == 0.0)
@NLconstraint(m, e280, x[64]*x[280]-x[256]*x[40]-x[14] == 0.0)
@NLconstraint(m, e281, x[65]*x[281]-x[257]*x[41]-x[15] == 0.0)
@NLconstraint(m, e282, x[66]*x[282]-x[258]*x[42]-x[16] == 0.0)
@NLconstraint(m, e283, x[67]*x[283]-x[259]*x[43]-x[17] == 0.0)
@NLconstraint(m, e284, x[68]*x[284]-x[260]*x[44]-x[18] == 0.0)
@NLconstraint(m, e285, x[69]*x[285]-x[261]*x[45]-x[19] == 0.0)
@NLconstraint(m, e286, x[70]*x[286]-x[262]*x[46]-x[20] == 0.0)
@NLconstraint(m, e287, x[71]*x[287]-x[263]*x[47]-x[21] == 0.0)
@NLconstraint(m, e288, x[72]*x[288]-x[264]*x[48]-x[22] == 0.0)
@NLconstraint(m, e289, x[73]*x[289]-x[265]*x[49]-x[23] == 0.0)
@NLconstraint(m, e290, x[74]*x[290]-x[266]*x[50]-x[24] == 0.0)
@constraint(m, e291, x[267] <= 5.5)
@constraint(m, e292, x[268] <= 5.5)
@constraint(m, e293, x[269] <= 5.5)
@constraint(m, e294, x[270] <= 5.5)
@constraint(m, e295, x[271] <= 5.5)
@constraint(m, e296, x[272] <= 5.5)
@constraint(m, e297, x[273] <= 5.5)
@constraint(m, e298, x[274] <= 5.5)
@constraint(m, e299, x[275] <= 5.5)
@constraint(m, e300, x[276] <= 5.5)
@constraint(m, e301, x[277] <= 5.5)
@constraint(m, e302, x[278] <= 5.5)
@constraint(m, e303, x[279] <= 5.5)
@constraint(m, e304, x[280] <= 5.5)
@constraint(m, e305, x[281] <= 5.5)
@constraint(m, e306, x[282] <= 5.5)
@constraint(m, e307, x[283] <= 5.5)
@constraint(m, e308, x[284] <= 5.5)
@constraint(m, e309, x[285] <= 5.5)
@constraint(m, e310, x[286] <= 5.5)
@constraint(m, e311, x[287] <= 5.5)
@constraint(m, e312, x[288] <= 5.5)
@constraint(m, e313, x[289] <= 5.5)
@constraint(m, e314, x[290] <= 5.5)
@constraint(m, e315, x[267] >= 1.0)
@constraint(m, e316, x[268] >= 1.0)
@constraint(m, e317, x[269] >= 1.0)
@constraint(m, e318, x[270] >= 1.0)
@constraint(m, e319, x[271] >= 1.0)
@constraint(m, e320, x[272] >= 1.0)
@constraint(m, e321, x[273] >= 1.0)
@constraint(m, e322, x[274] >= 1.0)
@constraint(m, e323, x[275] >= 1.0)
@constraint(m, e324, x[276] >= 1.0)
@constraint(m, e325, x[277] >= 1.0)
@constraint(m, e326, x[278] >= 1.0)
@constraint(m, e327, x[279] >= 1.0)
@constraint(m, e328, x[280] >= 1.0)
@constraint(m, e329, x[281] >= 1.0)
@constraint(m, e330, x[282] >= 1.0)
@constraint(m, e331, x[283] >= 1.0)
@constraint(m, e332, x[284] >= 1.0)
@constraint(m, e333, x[285] >= 1.0)
@constraint(m, e334, x[286] >= 1.0)
@constraint(m, e335, x[287] >= 1.0)
@constraint(m, e336, x[288] >= 1.0)
@constraint(m, e337, x[289] >= 1.0)
@constraint(m, e338, x[290] >= 1.0)
@constraint(m, e339, x[51] >= 60.0)
@constraint(m, e340, x[52] >= 60.0)
@constraint(m, e341, x[53] >= 60.0)
@constraint(m, e342, x[54] >= 60.0)
@constraint(m, e343, x[55] >= 60.0)
@constraint(m, e344, x[56] >= 60.0)
@constraint(m, e345, x[57] >= 60.0)
@constraint(m, e346, x[58] >= 60.0)
@constraint(m, e347, x[59] >= 60.0)
@constraint(m, e348, x[60] >= 60.0)
@constraint(m, e349, x[61] >= 60.0)
@constraint(m, e350, x[62] >= 60.0)
@constraint(m, e351, x[63] >= 60.0)
@constraint(m, e352, x[64] >= 60.0)
@constraint(m, e353, x[65] >= 60.0)
@constraint(m, e354, x[66] >= 60.0)
@constraint(m, e355, x[67] >= 60.0)
@constraint(m, e356, x[68] >= 60.0)
@constraint(m, e357, x[69] >= 60.0)
@constraint(m, e358, x[70] >= 60.0)
@constraint(m, e359, x[71] >= 60.0)
@constraint(m, e360, x[72] >= 60.0)
@constraint(m, e361, x[73] >= 60.0)
@constraint(m, e362, x[74] >= 60.0)
@constraint(m, e363, x[51] <= 100.0)
@constraint(m, e364, x[52] <= 100.0)
@constraint(m, e365, x[53] <= 100.0)
@constraint(m, e366, x[54] <= 100.0)
@constraint(m, e367, x[55] <= 100.0)
@constraint(m, e368, x[56] <= 100.0)
@constraint(m, e369, x[57] <= 100.0)
@constraint(m, e370, x[58] <= 100.0)
@constraint(m, e371, x[59] <= 100.0)
@constraint(m, e372, x[60] <= 100.0)
@constraint(m, e373, x[61] <= 100.0)
@constraint(m, e374, x[62] <= 100.0)
@constraint(m, e375, x[63] <= 100.0)
@constraint(m, e376, x[64] <= 100.0)
@constraint(m, e377, x[65] <= 100.0)
@constraint(m, e378, x[66] <= 100.0)
@constraint(m, e379, x[67] <= 100.0)
@constraint(m, e380, x[68] <= 100.0)
@constraint(m, e381, x[69] <= 100.0)
@constraint(m, e382, x[70] <= 100.0)
@constraint(m, e383, x[71] <= 100.0)
@constraint(m, e384, x[72] <= 100.0)
@constraint(m, e385, x[73] <= 100.0)
@constraint(m, e386, x[74] <= 100.0)
@constraint(m, e387, x[315]-x[316] == 0.0)
@constraint(m, e388, x[27]-x[74] == 0.0)
@constraint(m, e389, x[28]-x[51] == 0.0)
@constraint(m, e390, x[29]-x[52] == 0.0)
@constraint(m, e391, x[30]-x[53] == 0.0)
@constraint(m, e392, x[31]-x[54] == 0.0)
@constraint(m, e393, x[32]-x[55] == 0.0)
@constraint(m, e394, x[33]-x[56] == 0.0)
@constraint(m, e395, x[34]-x[57] == 0.0)
@constraint(m, e396, x[35]-x[58] == 0.0)
@constraint(m, e397, x[36]-x[59] == 0.0)
@constraint(m, e398, x[37]-x[60] == 0.0)
@constraint(m, e399, x[38]-x[61] == 0.0)
@constraint(m, e400, x[39]-x[62] == 0.0)
@constraint(m, e401, x[40]-x[63] == 0.0)
@constraint(m, e402, x[41]-x[64] == 0.0)
@constraint(m, e403, x[42]-x[65] == 0.0)
@constraint(m, e404, x[43]-x[66] == 0.0)
@constraint(m, e405, x[44]-x[67] == 0.0)
@constraint(m, e406, x[45]-x[68] == 0.0)
@constraint(m, e407, x[46]-x[69] == 0.0)
@constraint(m, e408, x[47]-x[70] == 0.0)
@constraint(m, e409, x[48]-x[71] == 0.0)
@constraint(m, e410, x[49]-x[72] == 0.0)
@constraint(m, e411, x[50]-x[73] == 0.0)
@constraint(m, e412, x[315] == 1.25)
@constraint(m, e413, -x[171]-x[172]-x[173]-x[174]-x[175]-x[176]-x[177]-x[178]-x[179]-x[180]-x[181]-x[182]-x[183]-x[184]-x[185]-x[186]-x[187]-x[188]-x[189]-x[190]-x[191]-x[192]-x[193]-x[194]+x[316] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[25])

m = m 		 # model get returned when including this script.