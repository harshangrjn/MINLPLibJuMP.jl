using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275]
@variable(m, x[x_Idx])
b_Idx = Any[201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255]
@variable(m, b[b_Idx])
set_lower_bound(x[146], 0.0)
set_binary(b[216])
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_binary(b[230])
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_binary(b[228])
set_lower_bound(x[91], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_binary(b[232])
set_binary(b[208])
set_lower_bound(x[165], 0.0)
set_lower_bound(x[265], 0.0)
set_lower_bound(x[186], 0.0)
set_binary(b[243])
set_binary(b[211])
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_binary(b[213])
set_lower_bound(x[273], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[260], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_binary(b[227])
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_binary(b[235])
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_binary(b[209])
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[264], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_binary(b[218])
set_binary(b[220])
set_lower_bound(x[259], 0.0)
set_binary(b[236])
set_lower_bound(x[261], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_binary(b[224])
set_binary(b[252])
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[92], 0.0)
set_binary(b[242])
set_lower_bound(x[111], 0.0)
set_binary(b[206])
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_binary(b[229])
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_binary(b[233])
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[53], 0.0)
set_binary(b[255])
set_lower_bound(x[128], 0.0)
set_lower_bound(x[258], 0.0)
set_binary(b[223])
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[263], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[26], 0.0)
set_binary(b[240])
set_binary(b[244])
set_binary(b[246])
set_lower_bound(x[12], 0.0)
set_binary(b[214])
set_lower_bound(x[173], 0.0)
set_binary(b[226])
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_binary(b[237])
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_binary(b[241])
set_lower_bound(x[76], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_binary(b[215])
set_lower_bound(x[257], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[272], 0.0)
set_binary(b[239])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[270], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[274], 0.0)
set_lower_bound(x[267], 0.0)
set_binary(b[219])
set_binary(b[254])
set_lower_bound(x[25], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_binary(b[221])
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_binary(b[248])
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_binary(b[238])
set_lower_bound(x[49], 0.0)
set_lower_bound(x[268], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[275], 0.0)
set_binary(b[234])
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_binary(b[212])
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_binary(b[231])
set_lower_bound(x[184], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_binary(b[204])
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_binary(b[222])
set_lower_bound(x[51], 0.0)
set_lower_bound(x[271], 0.0)
set_binary(b[202])
set_lower_bound(x[125], 0.0)
set_binary(b[250])
set_lower_bound(x[20], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_binary(b[201])
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_binary(b[217])
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_binary(b[251])
set_lower_bound(x[78], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_binary(b[207])
set_lower_bound(x[256], 0.0)
set_lower_bound(x[266], 0.0)
set_binary(b[225])
set_lower_bound(x[269], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_binary(b[203])
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[180], 0.0)
set_binary(b[249])
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[21], 0.0)
set_binary(b[245])
set_binary(b[247])
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_binary(b[205])
set_lower_bound(x[61], 0.0)
set_binary(b[210])
set_binary(b[253])
set_lower_bound(x[31], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[262], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[1], 11.5)
set_upper_bound(x[1], 57.5)
set_lower_bound(x[2], 12.5)
set_upper_bound(x[2], 56.5)
set_lower_bound(x[3], 10.5)
set_upper_bound(x[3], 58.5)
set_lower_bound(x[4], 10.0)
set_upper_bound(x[4], 59.0)
set_lower_bound(x[5], 13.5)
set_upper_bound(x[5], 55.5)
set_lower_bound(x[6], 7.0)
set_upper_bound(x[6], 87.0)
set_lower_bound(x[7], 6.5)
set_upper_bound(x[7], 87.5)
set_lower_bound(x[8], 5.5)
set_upper_bound(x[8], 88.5)
set_lower_bound(x[9], 5.5)
set_upper_bound(x[9], 88.5)
set_lower_bound(x[10], 7.5)
set_upper_bound(x[10], 86.5)


# ----- Constraints ----- #
@constraint(m, e1, -300*x[256]-240*x[257]-210*x[258]-50*x[259]-100*x[260]-150*x[261]-30*x[262]-120*x[263]-25*x[264]-60*x[265]-300*x[266]-240*x[267]-210*x[268]-50*x[269]-100*x[270]-150*x[271]-30*x[272]-120*x[273]-25*x[274]-60*x[275]+objvar == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[256] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[257] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[258] >= 0.0)
@constraint(m, e5, -x[1]+x[5]+x[259] >= 0.0)
@constraint(m, e6, -x[2]+x[3]+x[260] >= 0.0)
@constraint(m, e7, -x[2]+x[4]+x[261] >= 0.0)
@constraint(m, e8, -x[2]+x[5]+x[262] >= 0.0)
@constraint(m, e9, -x[3]+x[4]+x[263] >= 0.0)
@constraint(m, e10, -x[3]+x[5]+x[264] >= 0.0)
@constraint(m, e11, -x[4]+x[5]+x[265] >= 0.0)
@constraint(m, e12, x[1]-x[2]+x[256] >= 0.0)
@constraint(m, e13, x[1]-x[3]+x[257] >= 0.0)
@constraint(m, e14, x[1]-x[4]+x[258] >= 0.0)
@constraint(m, e15, x[1]-x[5]+x[259] >= 0.0)
@constraint(m, e16, x[2]-x[3]+x[260] >= 0.0)
@constraint(m, e17, x[2]-x[4]+x[261] >= 0.0)
@constraint(m, e18, x[2]-x[5]+x[262] >= 0.0)
@constraint(m, e19, x[3]-x[4]+x[263] >= 0.0)
@constraint(m, e20, x[3]-x[5]+x[264] >= 0.0)
@constraint(m, e21, x[4]-x[5]+x[265] >= 0.0)
@constraint(m, e22, -x[6]+x[7]+x[266] >= 0.0)
@constraint(m, e23, -x[6]+x[8]+x[267] >= 0.0)
@constraint(m, e24, -x[6]+x[9]+x[268] >= 0.0)
@constraint(m, e25, -x[6]+x[10]+x[269] >= 0.0)
@constraint(m, e26, -x[7]+x[8]+x[270] >= 0.0)
@constraint(m, e27, -x[7]+x[9]+x[271] >= 0.0)
@constraint(m, e28, -x[7]+x[10]+x[272] >= 0.0)
@constraint(m, e29, -x[8]+x[9]+x[273] >= 0.0)
@constraint(m, e30, -x[8]+x[10]+x[274] >= 0.0)
@constraint(m, e31, -x[9]+x[10]+x[275] >= 0.0)
@constraint(m, e32, x[6]-x[7]+x[266] >= 0.0)
@constraint(m, e33, x[6]-x[8]+x[267] >= 0.0)
@constraint(m, e34, x[6]-x[9]+x[268] >= 0.0)
@constraint(m, e35, x[6]-x[10]+x[269] >= 0.0)
@constraint(m, e36, x[7]-x[8]+x[270] >= 0.0)
@constraint(m, e37, x[7]-x[9]+x[271] >= 0.0)
@constraint(m, e38, x[7]-x[10]+x[272] >= 0.0)
@constraint(m, e39, x[8]-x[9]+x[273] >= 0.0)
@constraint(m, e40, x[8]-x[10]+x[274] >= 0.0)
@constraint(m, e41, x[9]-x[10]+x[275] >= 0.0)
@constraint(m, e42, x[1]-x[11]-x[15]-x[19]-x[23] == 0.0)
@constraint(m, e43, x[1]-x[12]-x[16]-x[20]-x[24] == 0.0)
@constraint(m, e44, x[1]-x[13]-x[17]-x[21]-x[25] == 0.0)
@constraint(m, e45, x[1]-x[14]-x[18]-x[22]-x[26] == 0.0)
@constraint(m, e46, x[2]-x[27]-x[31]-x[35]-x[39] == 0.0)
@constraint(m, e47, x[2]-x[28]-x[32]-x[36]-x[40] == 0.0)
@constraint(m, e48, x[2]-x[29]-x[33]-x[37]-x[41] == 0.0)
@constraint(m, e49, x[2]-x[30]-x[34]-x[38]-x[42] == 0.0)
@constraint(m, e50, x[3]-x[43]-x[47]-x[51]-x[55] == 0.0)
@constraint(m, e51, x[3]-x[44]-x[48]-x[52]-x[56] == 0.0)
@constraint(m, e52, x[3]-x[45]-x[49]-x[53]-x[57] == 0.0)
@constraint(m, e53, x[3]-x[46]-x[50]-x[54]-x[58] == 0.0)
@constraint(m, e54, x[4]-x[59]-x[63]-x[67]-x[71] == 0.0)
@constraint(m, e55, x[4]-x[60]-x[64]-x[68]-x[72] == 0.0)
@constraint(m, e56, x[4]-x[61]-x[65]-x[69]-x[73] == 0.0)
@constraint(m, e57, x[4]-x[62]-x[66]-x[70]-x[74] == 0.0)
@constraint(m, e58, x[5]-x[75]-x[79]-x[83]-x[87] == 0.0)
@constraint(m, e59, x[5]-x[76]-x[80]-x[84]-x[88] == 0.0)
@constraint(m, e60, x[5]-x[77]-x[81]-x[85]-x[89] == 0.0)
@constraint(m, e61, x[5]-x[78]-x[82]-x[86]-x[90] == 0.0)
@constraint(m, e62, x[6]-x[91]-x[95]-x[99]-x[103] == 0.0)
@constraint(m, e63, x[6]-x[92]-x[96]-x[100]-x[104] == 0.0)
@constraint(m, e64, x[6]-x[93]-x[97]-x[101]-x[105] == 0.0)
@constraint(m, e65, x[6]-x[94]-x[98]-x[102]-x[106] == 0.0)
@constraint(m, e66, x[7]-x[107]-x[111]-x[115]-x[119] == 0.0)
@constraint(m, e67, x[7]-x[108]-x[112]-x[116]-x[120] == 0.0)
@constraint(m, e68, x[7]-x[109]-x[113]-x[117]-x[121] == 0.0)
@constraint(m, e69, x[7]-x[110]-x[114]-x[118]-x[122] == 0.0)
@constraint(m, e70, x[8]-x[123]-x[127]-x[131]-x[135] == 0.0)
@constraint(m, e71, x[8]-x[124]-x[128]-x[132]-x[136] == 0.0)
@constraint(m, e72, x[8]-x[125]-x[129]-x[133]-x[137] == 0.0)
@constraint(m, e73, x[8]-x[126]-x[130]-x[134]-x[138] == 0.0)
@constraint(m, e74, x[9]-x[139]-x[143]-x[147]-x[151] == 0.0)
@constraint(m, e75, x[9]-x[140]-x[144]-x[148]-x[152] == 0.0)
@constraint(m, e76, x[9]-x[141]-x[145]-x[149]-x[153] == 0.0)
@constraint(m, e77, x[9]-x[142]-x[146]-x[150]-x[154] == 0.0)
@constraint(m, e78, x[10]-x[155]-x[159]-x[163]-x[167] == 0.0)
@constraint(m, e79, x[10]-x[156]-x[160]-x[164]-x[168] == 0.0)
@constraint(m, e80, x[10]-x[157]-x[161]-x[165]-x[169] == 0.0)
@constraint(m, e81, x[10]-x[158]-x[162]-x[166]-x[170] == 0.0)
@constraint(m, e82, x[11]-57.5*b[201] <= 0.0)
@constraint(m, e83, x[12]-57.5*b[202] <= 0.0)
@constraint(m, e84, x[13]-57.5*b[203] <= 0.0)
@constraint(m, e85, x[14]-57.5*b[204] <= 0.0)
@constraint(m, e86, x[15]-57.5*b[211] <= 0.0)
@constraint(m, e87, x[16]-57.5*b[212] <= 0.0)
@constraint(m, e88, x[17]-57.5*b[213] <= 0.0)
@constraint(m, e89, x[18]-57.5*b[214] <= 0.0)
@constraint(m, e90, x[19]-57.5*b[221] <= 0.0)
@constraint(m, e91, x[20]-57.5*b[222] <= 0.0)
@constraint(m, e92, x[21]-57.5*b[223] <= 0.0)
@constraint(m, e93, x[22]-57.5*b[224] <= 0.0)
@constraint(m, e94, x[23]-57.5*b[231] <= 0.0)
@constraint(m, e95, x[24]-57.5*b[232] <= 0.0)
@constraint(m, e96, x[25]-57.5*b[233] <= 0.0)
@constraint(m, e97, x[26]-57.5*b[234] <= 0.0)
@constraint(m, e98, x[27]-57.5*b[201] <= 0.0)
@constraint(m, e99, x[28]-56.5*b[205] <= 0.0)
@constraint(m, e100, x[29]-56.5*b[206] <= 0.0)
@constraint(m, e101, x[30]-56.5*b[207] <= 0.0)
@constraint(m, e102, x[31]-57.5*b[211] <= 0.0)
@constraint(m, e103, x[32]-56.5*b[215] <= 0.0)
@constraint(m, e104, x[33]-56.5*b[216] <= 0.0)
@constraint(m, e105, x[34]-56.5*b[217] <= 0.0)
@constraint(m, e106, x[35]-57.5*b[221] <= 0.0)
@constraint(m, e107, x[36]-56.5*b[225] <= 0.0)
@constraint(m, e108, x[37]-56.5*b[226] <= 0.0)
@constraint(m, e109, x[38]-56.5*b[227] <= 0.0)
@constraint(m, e110, x[39]-57.5*b[231] <= 0.0)
@constraint(m, e111, x[40]-56.5*b[235] <= 0.0)
@constraint(m, e112, x[41]-56.5*b[236] <= 0.0)
@constraint(m, e113, x[42]-56.5*b[237] <= 0.0)
@constraint(m, e114, x[43]-57.5*b[202] <= 0.0)
@constraint(m, e115, x[44]-56.5*b[205] <= 0.0)
@constraint(m, e116, x[45]-58.5*b[208] <= 0.0)
@constraint(m, e117, x[46]-58.5*b[209] <= 0.0)
@constraint(m, e118, x[47]-57.5*b[212] <= 0.0)
@constraint(m, e119, x[48]-56.5*b[215] <= 0.0)
@constraint(m, e120, x[49]-58.5*b[218] <= 0.0)
@constraint(m, e121, x[50]-58.5*b[219] <= 0.0)
@constraint(m, e122, x[51]-57.5*b[222] <= 0.0)
@constraint(m, e123, x[52]-56.5*b[225] <= 0.0)
@constraint(m, e124, x[53]-58.5*b[228] <= 0.0)
@constraint(m, e125, x[54]-58.5*b[229] <= 0.0)
@constraint(m, e126, x[55]-57.5*b[232] <= 0.0)
@constraint(m, e127, x[56]-56.5*b[235] <= 0.0)
@constraint(m, e128, x[57]-58.5*b[238] <= 0.0)
@constraint(m, e129, x[58]-58.5*b[239] <= 0.0)
@constraint(m, e130, x[59]-57.5*b[203] <= 0.0)
@constraint(m, e131, x[60]-56.5*b[206] <= 0.0)
@constraint(m, e132, x[61]-58.5*b[208] <= 0.0)
@constraint(m, e133, x[62]-59*b[210] <= 0.0)
@constraint(m, e134, x[63]-57.5*b[213] <= 0.0)
@constraint(m, e135, x[64]-56.5*b[216] <= 0.0)
@constraint(m, e136, x[65]-58.5*b[218] <= 0.0)
@constraint(m, e137, x[66]-59*b[220] <= 0.0)
@constraint(m, e138, x[67]-57.5*b[223] <= 0.0)
@constraint(m, e139, x[68]-56.5*b[226] <= 0.0)
@constraint(m, e140, x[69]-58.5*b[228] <= 0.0)
@constraint(m, e141, x[70]-59*b[230] <= 0.0)
@constraint(m, e142, x[71]-57.5*b[233] <= 0.0)
@constraint(m, e143, x[72]-56.5*b[236] <= 0.0)
@constraint(m, e144, x[73]-58.5*b[238] <= 0.0)
@constraint(m, e145, x[74]-59*b[240] <= 0.0)
@constraint(m, e146, x[75]-57.5*b[204] <= 0.0)
@constraint(m, e147, x[76]-56.5*b[207] <= 0.0)
@constraint(m, e148, x[77]-58.5*b[209] <= 0.0)
@constraint(m, e149, x[78]-59*b[210] <= 0.0)
@constraint(m, e150, x[79]-57.5*b[214] <= 0.0)
@constraint(m, e151, x[80]-56.5*b[217] <= 0.0)
@constraint(m, e152, x[81]-58.5*b[219] <= 0.0)
@constraint(m, e153, x[82]-59*b[220] <= 0.0)
@constraint(m, e154, x[83]-57.5*b[224] <= 0.0)
@constraint(m, e155, x[84]-56.5*b[227] <= 0.0)
@constraint(m, e156, x[85]-58.5*b[229] <= 0.0)
@constraint(m, e157, x[86]-59*b[230] <= 0.0)
@constraint(m, e158, x[87]-57.5*b[234] <= 0.0)
@constraint(m, e159, x[88]-56.5*b[237] <= 0.0)
@constraint(m, e160, x[89]-58.5*b[239] <= 0.0)
@constraint(m, e161, x[90]-59*b[240] <= 0.0)
@constraint(m, e162, x[91]-87*b[201] <= 0.0)
@constraint(m, e163, x[92]-87*b[202] <= 0.0)
@constraint(m, e164, x[93]-87*b[203] <= 0.0)
@constraint(m, e165, x[94]-87*b[204] <= 0.0)
@constraint(m, e166, x[95]-87*b[211] <= 0.0)
@constraint(m, e167, x[96]-87*b[212] <= 0.0)
@constraint(m, e168, x[97]-87*b[213] <= 0.0)
@constraint(m, e169, x[98]-87*b[214] <= 0.0)
@constraint(m, e170, x[99]-87*b[221] <= 0.0)
@constraint(m, e171, x[100]-87*b[222] <= 0.0)
@constraint(m, e172, x[101]-87*b[223] <= 0.0)
@constraint(m, e173, x[102]-87*b[224] <= 0.0)
@constraint(m, e174, x[103]-87*b[231] <= 0.0)
@constraint(m, e175, x[104]-87*b[232] <= 0.0)
@constraint(m, e176, x[105]-87*b[233] <= 0.0)
@constraint(m, e177, x[106]-87*b[234] <= 0.0)
@constraint(m, e178, x[107]-87*b[201] <= 0.0)
@constraint(m, e179, x[108]-87.5*b[205] <= 0.0)
@constraint(m, e180, x[109]-87.5*b[206] <= 0.0)
@constraint(m, e181, x[110]-87.5*b[207] <= 0.0)
@constraint(m, e182, x[111]-87*b[211] <= 0.0)
@constraint(m, e183, x[112]-87.5*b[215] <= 0.0)
@constraint(m, e184, x[113]-87.5*b[216] <= 0.0)
@constraint(m, e185, x[114]-87.5*b[217] <= 0.0)
@constraint(m, e186, x[115]-87*b[221] <= 0.0)
@constraint(m, e187, x[116]-87.5*b[225] <= 0.0)
@constraint(m, e188, x[117]-87.5*b[226] <= 0.0)
@constraint(m, e189, x[118]-87.5*b[227] <= 0.0)
@constraint(m, e190, x[119]-87*b[231] <= 0.0)
@constraint(m, e191, x[120]-87.5*b[235] <= 0.0)
@constraint(m, e192, x[121]-87.5*b[236] <= 0.0)
@constraint(m, e193, x[122]-87.5*b[237] <= 0.0)
@constraint(m, e194, x[123]-87*b[202] <= 0.0)
@constraint(m, e195, x[124]-87.5*b[205] <= 0.0)
@constraint(m, e196, x[125]-88.5*b[208] <= 0.0)
@constraint(m, e197, x[126]-88.5*b[209] <= 0.0)
@constraint(m, e198, x[127]-87*b[212] <= 0.0)
@constraint(m, e199, x[128]-87.5*b[215] <= 0.0)
@constraint(m, e200, x[129]-88.5*b[218] <= 0.0)
@constraint(m, e201, x[130]-88.5*b[219] <= 0.0)
@constraint(m, e202, x[131]-87*b[222] <= 0.0)
@constraint(m, e203, x[132]-87.5*b[225] <= 0.0)
@constraint(m, e204, x[133]-88.5*b[228] <= 0.0)
@constraint(m, e205, x[134]-88.5*b[229] <= 0.0)
@constraint(m, e206, x[135]-87*b[232] <= 0.0)
@constraint(m, e207, x[136]-87.5*b[235] <= 0.0)
@constraint(m, e208, x[137]-88.5*b[238] <= 0.0)
@constraint(m, e209, x[138]-88.5*b[239] <= 0.0)
@constraint(m, e210, x[139]-87*b[203] <= 0.0)
@constraint(m, e211, x[140]-87.5*b[206] <= 0.0)
@constraint(m, e212, x[141]-88.5*b[208] <= 0.0)
@constraint(m, e213, x[142]-88.5*b[210] <= 0.0)
@constraint(m, e214, x[143]-87*b[213] <= 0.0)
@constraint(m, e215, x[144]-87.5*b[216] <= 0.0)
@constraint(m, e216, x[145]-88.5*b[218] <= 0.0)
@constraint(m, e217, x[146]-88.5*b[220] <= 0.0)
@constraint(m, e218, x[147]-87*b[223] <= 0.0)
@constraint(m, e219, x[148]-87.5*b[226] <= 0.0)
@constraint(m, e220, x[149]-88.5*b[228] <= 0.0)
@constraint(m, e221, x[150]-88.5*b[230] <= 0.0)
@constraint(m, e222, x[151]-87*b[233] <= 0.0)
@constraint(m, e223, x[152]-87.5*b[236] <= 0.0)
@constraint(m, e224, x[153]-88.5*b[238] <= 0.0)
@constraint(m, e225, x[154]-88.5*b[240] <= 0.0)
@constraint(m, e226, x[155]-87*b[204] <= 0.0)
@constraint(m, e227, x[156]-87.5*b[207] <= 0.0)
@constraint(m, e228, x[157]-88.5*b[209] <= 0.0)
@constraint(m, e229, x[158]-88.5*b[210] <= 0.0)
@constraint(m, e230, x[159]-87*b[214] <= 0.0)
@constraint(m, e231, x[160]-87.5*b[217] <= 0.0)
@constraint(m, e232, x[161]-88.5*b[219] <= 0.0)
@constraint(m, e233, x[162]-88.5*b[220] <= 0.0)
@constraint(m, e234, x[163]-87*b[224] <= 0.0)
@constraint(m, e235, x[164]-87.5*b[227] <= 0.0)
@constraint(m, e236, x[165]-88.5*b[229] <= 0.0)
@constraint(m, e237, x[166]-88.5*b[230] <= 0.0)
@constraint(m, e238, x[167]-87*b[234] <= 0.0)
@constraint(m, e239, x[168]-87.5*b[237] <= 0.0)
@constraint(m, e240, x[169]-88.5*b[239] <= 0.0)
@constraint(m, e241, x[170]-88.5*b[240] <= 0.0)
@constraint(m, e242, x[11]-x[27]+6*b[201] <= 0.0)
@constraint(m, e243, x[12]-x[43]+4*b[202] <= 0.0)
@constraint(m, e244, x[13]-x[59]+3.5*b[203] <= 0.0)
@constraint(m, e245, x[14]-x[75]+7*b[204] <= 0.0)
@constraint(m, e246, x[28]-x[44]+5*b[205] <= 0.0)
@constraint(m, e247, x[29]-x[60]+4.5*b[206] <= 0.0)
@constraint(m, e248, x[30]-x[76]+8*b[207] <= 0.0)
@constraint(m, e249, x[45]-x[61]+2.5*b[208] <= 0.0)
@constraint(m, e250, x[46]-x[77]+6*b[209] <= 0.0)
@constraint(m, e251, x[62]-x[78]+5.5*b[210] <= 0.0)
@constraint(m, e252, -x[15]+x[31]+6*b[211] <= 0.0)
@constraint(m, e253, -x[16]+x[47]+4*b[212] <= 0.0)
@constraint(m, e254, -x[17]+x[63]+3.5*b[213] <= 0.0)
@constraint(m, e255, -x[18]+x[79]+7*b[214] <= 0.0)
@constraint(m, e256, -x[32]+x[48]+5*b[215] <= 0.0)
@constraint(m, e257, -x[33]+x[64]+4.5*b[216] <= 0.0)
@constraint(m, e258, -x[34]+x[80]+8*b[217] <= 0.0)
@constraint(m, e259, -x[49]+x[65]+2.5*b[218] <= 0.0)
@constraint(m, e260, -x[50]+x[81]+6*b[219] <= 0.0)
@constraint(m, e261, -x[66]+x[82]+5.5*b[220] <= 0.0)
@constraint(m, e262, x[99]-x[115]+5.5*b[221] <= 0.0)
@constraint(m, e263, x[100]-x[131]+4.5*b[222] <= 0.0)
@constraint(m, e264, x[101]-x[147]+4.5*b[223] <= 0.0)
@constraint(m, e265, x[102]-x[163]+6.5*b[224] <= 0.0)
@constraint(m, e266, x[116]-x[132]+4*b[225] <= 0.0)
@constraint(m, e267, x[117]-x[148]+4*b[226] <= 0.0)
@constraint(m, e268, x[118]-x[164]+6*b[227] <= 0.0)
@constraint(m, e269, x[133]-x[149]+3*b[228] <= 0.0)
@constraint(m, e270, x[134]-x[165]+5*b[229] <= 0.0)
@constraint(m, e271, x[150]-x[166]+5*b[230] <= 0.0)
@constraint(m, e272, -x[103]+x[119]+5.5*b[231] <= 0.0)
@constraint(m, e273, -x[104]+x[135]+4.5*b[232] <= 0.0)
@constraint(m, e274, -x[105]+x[151]+4.5*b[233] <= 0.0)
@constraint(m, e275, -x[106]+x[167]+6.5*b[234] <= 0.0)
@constraint(m, e276, -x[120]+x[136]+4*b[235] <= 0.0)
@constraint(m, e277, -x[121]+x[152]+4*b[236] <= 0.0)
@constraint(m, e278, -x[122]+x[168]+6*b[237] <= 0.0)
@constraint(m, e279, -x[137]+x[153]+3*b[238] <= 0.0)
@constraint(m, e280, -x[138]+x[169]+5*b[239] <= 0.0)
@constraint(m, e281, -x[154]+x[170]+5*b[240] <= 0.0)
@constraint(m, e282, b[201]+b[211]+b[221]+b[231] == 1.0)
@constraint(m, e283, b[202]+b[212]+b[222]+b[232] == 1.0)
@constraint(m, e284, b[203]+b[213]+b[223]+b[233] == 1.0)
@constraint(m, e285, b[204]+b[214]+b[224]+b[234] == 1.0)
@constraint(m, e286, b[205]+b[215]+b[225]+b[235] == 1.0)
@constraint(m, e287, b[206]+b[216]+b[226]+b[236] == 1.0)
@constraint(m, e288, b[207]+b[217]+b[227]+b[237] == 1.0)
@constraint(m, e289, b[208]+b[218]+b[228]+b[238] == 1.0)
@constraint(m, e290, b[209]+b[219]+b[229]+b[239] == 1.0)
@constraint(m, e291, b[210]+b[220]+b[230]+b[240] == 1.0)
@constraint(m, e292, x[1]-x[171]-x[176]-x[181] == 0.0)
@constraint(m, e293, x[2]-x[172]-x[177]-x[182] == 0.0)
@constraint(m, e294, x[3]-x[173]-x[178]-x[183] == 0.0)
@constraint(m, e295, x[4]-x[174]-x[179]-x[184] == 0.0)
@constraint(m, e296, x[5]-x[175]-x[180]-x[185] == 0.0)
@constraint(m, e297, x[6]-x[186]-x[191]-x[196] == 0.0)
@constraint(m, e298, x[7]-x[187]-x[192]-x[197] == 0.0)
@constraint(m, e299, x[8]-x[188]-x[193]-x[198] == 0.0)
@constraint(m, e300, x[9]-x[189]-x[194]-x[199] == 0.0)
@constraint(m, e301, x[10]-x[190]-x[195]-x[200] == 0.0)
@constraint(m, e302, x[171]-18.5*b[241] <= 0.0)
@constraint(m, e303, x[172]-17.5*b[242] <= 0.0)
@constraint(m, e304, x[173]-19.5*b[243] <= 0.0)
@constraint(m, e305, x[174]-20*b[244] <= 0.0)
@constraint(m, e306, x[175]-16.5*b[245] <= 0.0)
@constraint(m, e307, x[176]-57.5*b[246] <= 0.0)
@constraint(m, e308, x[177]-56.5*b[247] <= 0.0)
@constraint(m, e309, x[178]-58.5*b[248] <= 0.0)
@constraint(m, e310, x[179]-59*b[249] <= 0.0)
@constraint(m, e311, x[180]-55.5*b[250] <= 0.0)
@constraint(m, e312, x[181]-31.5*b[251] <= 0.0)
@constraint(m, e313, x[182]-30.5*b[252] <= 0.0)
@constraint(m, e314, x[183]-32.5*b[253] <= 0.0)
@constraint(m, e315, x[184]-33*b[254] <= 0.0)
@constraint(m, e316, x[185]-29.5*b[255] <= 0.0)
@constraint(m, e317, x[186]-13*b[241] <= 0.0)
@constraint(m, e318, x[187]-13.5*b[242] <= 0.0)
@constraint(m, e319, x[188]-14.5*b[243] <= 0.0)
@constraint(m, e320, x[189]-14.5*b[244] <= 0.0)
@constraint(m, e321, x[190]-12.5*b[245] <= 0.0)
@constraint(m, e322, x[191]-87*b[246] <= 0.0)
@constraint(m, e323, x[192]-87.5*b[247] <= 0.0)
@constraint(m, e324, x[193]-88.5*b[248] <= 0.0)
@constraint(m, e325, x[194]-88.5*b[249] <= 0.0)
@constraint(m, e326, x[195]-86.5*b[250] <= 0.0)
@constraint(m, e327, x[196]-51*b[251] <= 0.0)
@constraint(m, e328, x[197]-51.5*b[252] <= 0.0)
@constraint(m, e329, x[198]-52.5*b[253] <= 0.0)
@constraint(m, e330, x[199]-52.5*b[254] <= 0.0)
@constraint(m, e331, x[200]-50.5*b[255] <= 0.0)
@NLconstraint(m, e332, ( (x[171]/(1e-6+b[241]))^2-35*x[171]/(1e-6+b[241])+306.25*b[241]+ (x[186]/(1e-6+b[241]))^2-14*x[186]/(1e-6+b[241])+49*b[241]-36*b[241])*(1e-6+b[241]) <= 0.0)
@NLconstraint(m, e333, ( (x[172]/(1e-6+b[242]))^2-37*x[172]/(1e-6+b[242])+342.25*b[242]+ (x[187]/(1e-6+b[242]))^2-15*x[187]/(1e-6+b[242])+56.25*b[242]-36*b[242])*(1e-6+b[242]) <= 0.0)
@NLconstraint(m, e334, ( (x[173]/(1e-6+b[243]))^2-33*x[173]/(1e-6+b[243])+272.25*b[243]+ (x[188]/(1e-6+b[243]))^2-17*x[188]/(1e-6+b[243])+72.25*b[243]-36*b[243])*(1e-6+b[243]) <= 0.0)
@NLconstraint(m, e335, ( (x[174]/(1e-6+b[244]))^2-32*x[174]/(1e-6+b[244])+256*b[244]+ (x[189]/(1e-6+b[244]))^2-17*x[189]/(1e-6+b[244])+72.25*b[244]-36*b[244])*(1e-6+b[244]) <= 0.0)
@NLconstraint(m, e336, ( (x[175]/(1e-6+b[245]))^2-39*x[175]/(1e-6+b[245])+380.25*b[245]+ (x[190]/(1e-6+b[245]))^2-13*x[190]/(1e-6+b[245])+42.25*b[245]-36*b[245])*(1e-6+b[245]) <= 0.0)
@NLconstraint(m, e337, ( (x[176]/(1e-6+b[246]))^2-105*x[176]/(1e-6+b[246])+2756.25*b[246]+ (x[191]/(1e-6+b[246]))^2-154*x[191]/(1e-6+b[246])+5929*b[246]-100*b[246])*(1e-6+b[246]) <= 0.0)
@NLconstraint(m, e338, ( (x[177]/(1e-6+b[247]))^2-107*x[177]/(1e-6+b[247])+2862.25*b[247]+ (x[192]/(1e-6+b[247]))^2-155*x[192]/(1e-6+b[247])+6006.25*b[247]-100*b[247])*(1e-6+b[247]) <= 0.0)
@NLconstraint(m, e339, ( (x[178]/(1e-6+b[248]))^2-103*x[178]/(1e-6+b[248])+2652.25*b[248]+ (x[193]/(1e-6+b[248]))^2-157*x[193]/(1e-6+b[248])+6162.25*b[248]-100*b[248])*(1e-6+b[248]) <= 0.0)
@NLconstraint(m, e340, ( (x[179]/(1e-6+b[249]))^2-102*x[179]/(1e-6+b[249])+2601*b[249]+ (x[194]/(1e-6+b[249]))^2-157*x[194]/(1e-6+b[249])+6162.25*b[249]-100*b[249])*(1e-6+b[249]) <= 0.0)
@NLconstraint(m, e341, ( (x[180]/(1e-6+b[250]))^2-109*x[180]/(1e-6+b[250])+2970.25*b[250]+ (x[195]/(1e-6+b[250]))^2-153*x[195]/(1e-6+b[250])+5852.25*b[250]-100*b[250])*(1e-6+b[250]) <= 0.0)
@NLconstraint(m, e342, ( (x[181]/(1e-6+b[251]))^2-65*x[181]/(1e-6+b[251])+1056.25*b[251]+ (x[196]/(1e-6+b[251]))^2-94*x[196]/(1e-6+b[251])+2209*b[251]-16*b[251])*(1e-6+b[251]) <= 0.0)
@NLconstraint(m, e343, ( (x[182]/(1e-6+b[252]))^2-67*x[182]/(1e-6+b[252])+1122.25*b[252]+ (x[197]/(1e-6+b[252]))^2-95*x[197]/(1e-6+b[252])+2256.25*b[252]-16*b[252])*(1e-6+b[252]) <= 0.0)
@NLconstraint(m, e344, ( (x[183]/(1e-6+b[253]))^2-63*x[183]/(1e-6+b[253])+992.25*b[253]+ (x[198]/(1e-6+b[253]))^2-97*x[198]/(1e-6+b[253])+2352.25*b[253]-16*b[253])*(1e-6+b[253]) <= 0.0)
@NLconstraint(m, e345, ( (x[184]/(1e-6+b[254]))^2-62*x[184]/(1e-6+b[254])+961*b[254]+ (x[199]/(1e-6+b[254]))^2-97*x[199]/(1e-6+b[254])+2352.25*b[254]-16*b[254])*(1e-6+b[254]) <= 0.0)
@NLconstraint(m, e346, ( (x[185]/(1e-6+b[255]))^2-69*x[185]/(1e-6+b[255])+1190.25*b[255]+ (x[200]/(1e-6+b[255]))^2-93*x[200]/(1e-6+b[255])+2162.25*b[255]-16*b[255])*(1e-6+b[255]) <= 0.0)
@NLconstraint(m, e347, ( (x[171]/(1e-6+b[241]))^2-35*x[171]/(1e-6+b[241])+306.25*b[241]+ (x[186]/(1e-6+b[241]))^2-26*x[186]/(1e-6+b[241])+169*b[241]-36*b[241])*(1e-6+b[241]) <= 0.0)
@NLconstraint(m, e348, ( (x[172]/(1e-6+b[242]))^2-37*x[172]/(1e-6+b[242])+342.25*b[242]+ (x[187]/(1e-6+b[242]))^2-25*x[187]/(1e-6+b[242])+156.25*b[242]-36*b[242])*(1e-6+b[242]) <= 0.0)
@NLconstraint(m, e349, ( (x[173]/(1e-6+b[243]))^2-33*x[173]/(1e-6+b[243])+272.25*b[243]+ (x[188]/(1e-6+b[243]))^2-23*x[188]/(1e-6+b[243])+132.25*b[243]-36*b[243])*(1e-6+b[243]) <= 0.0)
@NLconstraint(m, e350, ( (x[174]/(1e-6+b[244]))^2-32*x[174]/(1e-6+b[244])+256*b[244]+ (x[189]/(1e-6+b[244]))^2-23*x[189]/(1e-6+b[244])+132.25*b[244]-36*b[244])*(1e-6+b[244]) <= 0.0)
@NLconstraint(m, e351, ( (x[175]/(1e-6+b[245]))^2-39*x[175]/(1e-6+b[245])+380.25*b[245]+ (x[190]/(1e-6+b[245]))^2-27*x[190]/(1e-6+b[245])+182.25*b[245]-36*b[245])*(1e-6+b[245]) <= 0.0)
@NLconstraint(m, e352, ( (x[176]/(1e-6+b[246]))^2-105*x[176]/(1e-6+b[246])+2756.25*b[246]+ (x[191]/(1e-6+b[246]))^2-166*x[191]/(1e-6+b[246])+6889*b[246]-100*b[246])*(1e-6+b[246]) <= 0.0)
@NLconstraint(m, e353, ( (x[177]/(1e-6+b[247]))^2-107*x[177]/(1e-6+b[247])+2862.25*b[247]+ (x[192]/(1e-6+b[247]))^2-165*x[192]/(1e-6+b[247])+6806.25*b[247]-100*b[247])*(1e-6+b[247]) <= 0.0)
@NLconstraint(m, e354, ( (x[178]/(1e-6+b[248]))^2-103*x[178]/(1e-6+b[248])+2652.25*b[248]+ (x[193]/(1e-6+b[248]))^2-163*x[193]/(1e-6+b[248])+6642.25*b[248]-100*b[248])*(1e-6+b[248]) <= 0.0)
@NLconstraint(m, e355, ( (x[179]/(1e-6+b[249]))^2-102*x[179]/(1e-6+b[249])+2601*b[249]+ (x[194]/(1e-6+b[249]))^2-163*x[194]/(1e-6+b[249])+6642.25*b[249]-100*b[249])*(1e-6+b[249]) <= 0.0)
@NLconstraint(m, e356, ( (x[180]/(1e-6+b[250]))^2-109*x[180]/(1e-6+b[250])+2970.25*b[250]+ (x[195]/(1e-6+b[250]))^2-167*x[195]/(1e-6+b[250])+6972.25*b[250]-100*b[250])*(1e-6+b[250]) <= 0.0)
@NLconstraint(m, e357, ( (x[181]/(1e-6+b[251]))^2-65*x[181]/(1e-6+b[251])+1056.25*b[251]+ (x[196]/(1e-6+b[251]))^2-106*x[196]/(1e-6+b[251])+2809*b[251]-16*b[251])*(1e-6+b[251]) <= 0.0)
@NLconstraint(m, e358, ( (x[182]/(1e-6+b[252]))^2-67*x[182]/(1e-6+b[252])+1122.25*b[252]+ (x[197]/(1e-6+b[252]))^2-105*x[197]/(1e-6+b[252])+2756.25*b[252]-16*b[252])*(1e-6+b[252]) <= 0.0)
@NLconstraint(m, e359, ( (x[183]/(1e-6+b[253]))^2-63*x[183]/(1e-6+b[253])+992.25*b[253]+ (x[198]/(1e-6+b[253]))^2-103*x[198]/(1e-6+b[253])+2652.25*b[253]-16*b[253])*(1e-6+b[253]) <= 0.0)
@NLconstraint(m, e360, ( (x[184]/(1e-6+b[254]))^2-62*x[184]/(1e-6+b[254])+961*b[254]+ (x[199]/(1e-6+b[254]))^2-103*x[199]/(1e-6+b[254])+2652.25*b[254]-16*b[254])*(1e-6+b[254]) <= 0.0)
@NLconstraint(m, e361, ( (x[185]/(1e-6+b[255]))^2-69*x[185]/(1e-6+b[255])+1190.25*b[255]+ (x[200]/(1e-6+b[255]))^2-107*x[200]/(1e-6+b[255])+2862.25*b[255]-16*b[255])*(1e-6+b[255]) <= 0.0)
@NLconstraint(m, e362, ( (x[171]/(1e-6+b[241]))^2-25*x[171]/(1e-6+b[241])+156.25*b[241]+ (x[186]/(1e-6+b[241]))^2-14*x[186]/(1e-6+b[241])+49*b[241]-36*b[241])*(1e-6+b[241]) <= 0.0)
@NLconstraint(m, e363, ( (x[172]/(1e-6+b[242]))^2-23*x[172]/(1e-6+b[242])+132.25*b[242]+ (x[187]/(1e-6+b[242]))^2-15*x[187]/(1e-6+b[242])+56.25*b[242]-36*b[242])*(1e-6+b[242]) <= 0.0)
@NLconstraint(m, e364, ( (x[173]/(1e-6+b[243]))^2-27*x[173]/(1e-6+b[243])+182.25*b[243]+ (x[188]/(1e-6+b[243]))^2-17*x[188]/(1e-6+b[243])+72.25*b[243]-36*b[243])*(1e-6+b[243]) <= 0.0)
@NLconstraint(m, e365, ( (x[174]/(1e-6+b[244]))^2-28*x[174]/(1e-6+b[244])+196*b[244]+ (x[189]/(1e-6+b[244]))^2-17*x[189]/(1e-6+b[244])+72.25*b[244]-36*b[244])*(1e-6+b[244]) <= 0.0)
@NLconstraint(m, e366, ( (x[175]/(1e-6+b[245]))^2-21*x[175]/(1e-6+b[245])+110.25*b[245]+ (x[190]/(1e-6+b[245]))^2-13*x[190]/(1e-6+b[245])+42.25*b[245]-36*b[245])*(1e-6+b[245]) <= 0.0)
@NLconstraint(m, e367, ( (x[176]/(1e-6+b[246]))^2-95*x[176]/(1e-6+b[246])+2256.25*b[246]+ (x[191]/(1e-6+b[246]))^2-154*x[191]/(1e-6+b[246])+5929*b[246]-100*b[246])*(1e-6+b[246]) <= 0.0)
@NLconstraint(m, e368, ( (x[177]/(1e-6+b[247]))^2-93*x[177]/(1e-6+b[247])+2162.25*b[247]+ (x[192]/(1e-6+b[247]))^2-155*x[192]/(1e-6+b[247])+6006.25*b[247]-100*b[247])*(1e-6+b[247]) <= 0.0)
@NLconstraint(m, e369, ( (x[178]/(1e-6+b[248]))^2-97*x[178]/(1e-6+b[248])+2352.25*b[248]+ (x[193]/(1e-6+b[248]))^2-157*x[193]/(1e-6+b[248])+6162.25*b[248]-100*b[248])*(1e-6+b[248]) <= 0.0)
@NLconstraint(m, e370, ( (x[179]/(1e-6+b[249]))^2-98*x[179]/(1e-6+b[249])+2401*b[249]+ (x[194]/(1e-6+b[249]))^2-157*x[194]/(1e-6+b[249])+6162.25*b[249]-100*b[249])*(1e-6+b[249]) <= 0.0)
@NLconstraint(m, e371, ( (x[180]/(1e-6+b[250]))^2-91*x[180]/(1e-6+b[250])+2070.25*b[250]+ (x[195]/(1e-6+b[250]))^2-153*x[195]/(1e-6+b[250])+5852.25*b[250]-100*b[250])*(1e-6+b[250]) <= 0.0)
@NLconstraint(m, e372, ( (x[181]/(1e-6+b[251]))^2-55*x[181]/(1e-6+b[251])+756.25*b[251]+ (x[196]/(1e-6+b[251]))^2-94*x[196]/(1e-6+b[251])+2209*b[251]-16*b[251])*(1e-6+b[251]) <= 0.0)
@NLconstraint(m, e373, ( (x[182]/(1e-6+b[252]))^2-53*x[182]/(1e-6+b[252])+702.25*b[252]+ (x[197]/(1e-6+b[252]))^2-95*x[197]/(1e-6+b[252])+2256.25*b[252]-16*b[252])*(1e-6+b[252]) <= 0.0)
@NLconstraint(m, e374, ( (x[183]/(1e-6+b[253]))^2-57*x[183]/(1e-6+b[253])+812.25*b[253]+ (x[198]/(1e-6+b[253]))^2-97*x[198]/(1e-6+b[253])+2352.25*b[253]-16*b[253])*(1e-6+b[253]) <= 0.0)
@NLconstraint(m, e375, ( (x[184]/(1e-6+b[254]))^2-58*x[184]/(1e-6+b[254])+841*b[254]+ (x[199]/(1e-6+b[254]))^2-97*x[199]/(1e-6+b[254])+2352.25*b[254]-16*b[254])*(1e-6+b[254]) <= 0.0)
@NLconstraint(m, e376, ( (x[185]/(1e-6+b[255]))^2-51*x[185]/(1e-6+b[255])+650.25*b[255]+ (x[200]/(1e-6+b[255]))^2-93*x[200]/(1e-6+b[255])+2162.25*b[255]-16*b[255])*(1e-6+b[255]) <= 0.0)
@NLconstraint(m, e377, ( (x[171]/(1e-6+b[241]))^2-25*x[171]/(1e-6+b[241])+156.25*b[241]+ (x[186]/(1e-6+b[241]))^2-26*x[186]/(1e-6+b[241])+169*b[241]-36*b[241])*(1e-6+b[241]) <= 0.0)
@NLconstraint(m, e378, ( (x[172]/(1e-6+b[242]))^2-23*x[172]/(1e-6+b[242])+132.25*b[242]+ (x[187]/(1e-6+b[242]))^2-25*x[187]/(1e-6+b[242])+156.25*b[242]-36*b[242])*(1e-6+b[242]) <= 0.0)
@NLconstraint(m, e379, ( (x[173]/(1e-6+b[243]))^2-27*x[173]/(1e-6+b[243])+182.25*b[243]+ (x[188]/(1e-6+b[243]))^2-23*x[188]/(1e-6+b[243])+132.25*b[243]-36*b[243])*(1e-6+b[243]) <= 0.0)
@NLconstraint(m, e380, ( (x[174]/(1e-6+b[244]))^2-28*x[174]/(1e-6+b[244])+196*b[244]+ (x[189]/(1e-6+b[244]))^2-23*x[189]/(1e-6+b[244])+132.25*b[244]-36*b[244])*(1e-6+b[244]) <= 0.0)
@NLconstraint(m, e381, ( (x[175]/(1e-6+b[245]))^2-21*x[175]/(1e-6+b[245])+110.25*b[245]+ (x[190]/(1e-6+b[245]))^2-27*x[190]/(1e-6+b[245])+182.25*b[245]-36*b[245])*(1e-6+b[245]) <= 0.0)
@NLconstraint(m, e382, ( (x[176]/(1e-6+b[246]))^2-95*x[176]/(1e-6+b[246])+2256.25*b[246]+ (x[191]/(1e-6+b[246]))^2-166*x[191]/(1e-6+b[246])+6889*b[246]-100*b[246])*(1e-6+b[246]) <= 0.0)
@NLconstraint(m, e383, ( (x[177]/(1e-6+b[247]))^2-93*x[177]/(1e-6+b[247])+2162.25*b[247]+ (x[192]/(1e-6+b[247]))^2-165*x[192]/(1e-6+b[247])+6806.25*b[247]-100*b[247])*(1e-6+b[247]) <= 0.0)
@NLconstraint(m, e384, ( (x[178]/(1e-6+b[248]))^2-97*x[178]/(1e-6+b[248])+2352.25*b[248]+ (x[193]/(1e-6+b[248]))^2-163*x[193]/(1e-6+b[248])+6642.25*b[248]-100*b[248])*(1e-6+b[248]) <= 0.0)
@NLconstraint(m, e385, ( (x[179]/(1e-6+b[249]))^2-98*x[179]/(1e-6+b[249])+2401*b[249]+ (x[194]/(1e-6+b[249]))^2-163*x[194]/(1e-6+b[249])+6642.25*b[249]-100*b[249])*(1e-6+b[249]) <= 0.0)
@NLconstraint(m, e386, ( (x[180]/(1e-6+b[250]))^2-91*x[180]/(1e-6+b[250])+2070.25*b[250]+ (x[195]/(1e-6+b[250]))^2-167*x[195]/(1e-6+b[250])+6972.25*b[250]-100*b[250])*(1e-6+b[250]) <= 0.0)
@NLconstraint(m, e387, ( (x[181]/(1e-6+b[251]))^2-55*x[181]/(1e-6+b[251])+756.25*b[251]+ (x[196]/(1e-6+b[251]))^2-106*x[196]/(1e-6+b[251])+2809*b[251]-16*b[251])*(1e-6+b[251]) <= 0.0)
@NLconstraint(m, e388, ( (x[182]/(1e-6+b[252]))^2-53*x[182]/(1e-6+b[252])+702.25*b[252]+ (x[197]/(1e-6+b[252]))^2-105*x[197]/(1e-6+b[252])+2756.25*b[252]-16*b[252])*(1e-6+b[252]) <= 0.0)
@NLconstraint(m, e389, ( (x[183]/(1e-6+b[253]))^2-57*x[183]/(1e-6+b[253])+812.25*b[253]+ (x[198]/(1e-6+b[253]))^2-103*x[198]/(1e-6+b[253])+2652.25*b[253]-16*b[253])*(1e-6+b[253]) <= 0.0)
@NLconstraint(m, e390, ( (x[184]/(1e-6+b[254]))^2-58*x[184]/(1e-6+b[254])+841*b[254]+ (x[199]/(1e-6+b[254]))^2-103*x[199]/(1e-6+b[254])+2652.25*b[254]-16*b[254])*(1e-6+b[254]) <= 0.0)
@NLconstraint(m, e391, ( (x[185]/(1e-6+b[255]))^2-51*x[185]/(1e-6+b[255])+650.25*b[255]+ (x[200]/(1e-6+b[255]))^2-107*x[200]/(1e-6+b[255])+2862.25*b[255]-16*b[255])*(1e-6+b[255]) <= 0.0)
@constraint(m, e392, b[241]+b[246]+b[251] == 1.0)
@constraint(m, e393, b[242]+b[247]+b[252] == 1.0)
@constraint(m, e394, b[243]+b[248]+b[253] == 1.0)
@constraint(m, e395, b[244]+b[249]+b[254] == 1.0)
@constraint(m, e396, b[245]+b[250]+b[255] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.