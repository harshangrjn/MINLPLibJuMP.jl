using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[1], 2.89)
set_upper_bound(x[1], 36.0)
set_upper_bound(x[2], 9.0)
set_upper_bound(x[3], 4.0)
set_upper_bound(x[4], 9.0)
set_upper_bound(x[5], 4.0)
set_upper_bound(x[6], 9.0)
set_upper_bound(x[7], 4.0)
set_upper_bound(x[8], 9.0)
set_upper_bound(x[9], 4.0)
set_upper_bound(x[10], 9.0)
set_upper_bound(x[11], 4.0)
set_upper_bound(x[12], 9.0)
set_upper_bound(x[13], 4.0)
set_upper_bound(x[14], 9.84885780179611)
set_upper_bound(x[15], 9.84885780179611)
set_upper_bound(x[16], 9.84885780179611)
set_upper_bound(x[17], 9.84885780179611)
set_upper_bound(x[18], 9.84885780179611)
set_upper_bound(x[19], 9.84885780179611)
set_upper_bound(x[20], 9.84885780179611)
set_upper_bound(x[21], 9.84885780179611)
set_upper_bound(x[22], 9.84885780179611)
set_upper_bound(x[23], 9.84885780179611)
set_upper_bound(x[24], 9.84885780179611)
set_upper_bound(x[25], 9.84885780179611)
set_upper_bound(x[26], 9.84885780179611)
set_upper_bound(x[27], 9.84885780179611)
set_upper_bound(x[28], 9.84885780179611)
set_upper_bound(x[29], 9.84885780179611)
set_upper_bound(x[30], 9.84885780179611)
set_upper_bound(x[31], 9.84885780179611)
set_upper_bound(x[32], 9.84885780179611)
set_upper_bound(x[33], 9.84885780179611)
set_upper_bound(x[34], 9.84885780179611)
set_upper_bound(x[35], 9.84885780179611)
set_upper_bound(x[36], 9.84885780179611)
set_upper_bound(x[37], 9.84885780179611)
set_lower_bound(x[38], -9.84885780179611)
set_upper_bound(x[38], 9.84885780179611)
set_lower_bound(x[39], -9.84885780179611)
set_upper_bound(x[39], 9.84885780179611)
set_lower_bound(x[40], -9.84885780179611)
set_upper_bound(x[40], 9.84885780179611)
set_lower_bound(x[41], -9.84885780179611)
set_upper_bound(x[41], 9.84885780179611)
set_lower_bound(x[42], -9.84885780179611)
set_upper_bound(x[42], 9.84885780179611)
set_lower_bound(x[43], -9.84885780179611)
set_upper_bound(x[43], 9.84885780179611)
set_lower_bound(x[44], -9.84885780179611)
set_upper_bound(x[44], 9.84885780179611)
set_lower_bound(x[45], -9.84885780179611)
set_upper_bound(x[45], 9.84885780179611)
set_lower_bound(x[46], -9.84885780179611)
set_upper_bound(x[46], 9.84885780179611)
set_lower_bound(x[47], -9.84885780179611)
set_upper_bound(x[47], 9.84885780179611)
set_lower_bound(x[48], -9.84885780179611)
set_upper_bound(x[48], 9.84885780179611)
set_lower_bound(x[49], -9.84885780179611)
set_upper_bound(x[49], 9.84885780179611)
set_lower_bound(x[50], -9.84885780179611)
set_upper_bound(x[50], 9.84885780179611)
set_lower_bound(x[51], -9.84885780179611)
set_upper_bound(x[51], 9.84885780179611)
set_lower_bound(x[52], -9.84885780179611)
set_upper_bound(x[52], 9.84885780179611)
set_lower_bound(x[53], -9.84885780179611)
set_upper_bound(x[53], 9.84885780179611)
set_lower_bound(x[54], -9.84885780179611)
set_upper_bound(x[54], 9.84885780179611)
set_lower_bound(x[55], -9.84885780179611)
set_upper_bound(x[55], 9.84885780179611)
set_lower_bound(x[56], -9.84885780179611)
set_upper_bound(x[56], 9.84885780179611)
set_lower_bound(x[57], -9.84885780179611)
set_upper_bound(x[57], 9.84885780179611)
set_lower_bound(x[58], -9.84885780179611)
set_upper_bound(x[58], 9.84885780179611)
set_lower_bound(x[59], -9.84885780179611)
set_upper_bound(x[59], 9.84885780179611)
set_lower_bound(x[60], -9.84885780179611)
set_upper_bound(x[60], 9.84885780179611)
set_lower_bound(x[61], -9.84885780179611)
set_upper_bound(x[61], 9.84885780179611)
set_lower_bound(x[62], -9.84885780179611)
set_upper_bound(x[62], 9.84885780179611)
set_lower_bound(x[63], -9.84885780179611)
set_upper_bound(x[63], 9.84885780179611)
set_lower_bound(x[64], -9.84885780179611)
set_upper_bound(x[64], 9.84885780179611)
set_lower_bound(x[65], -9.84885780179611)
set_upper_bound(x[65], 9.84885780179611)
set_lower_bound(x[66], -9.84885780179611)
set_upper_bound(x[66], 9.84885780179611)
set_lower_bound(x[67], -9.84885780179611)
set_upper_bound(x[67], 9.84885780179611)
set_lower_bound(x[68], -1.0)
set_upper_bound(x[68], 1.0)
set_lower_bound(x[69], -1.0)
set_upper_bound(x[69], 1.0)
set_lower_bound(x[70], -1.0)
set_upper_bound(x[70], 1.0)
set_lower_bound(x[71], -1.0)
set_upper_bound(x[71], 1.0)
set_lower_bound(x[72], -1.0)
set_upper_bound(x[72], 1.0)
set_lower_bound(x[73], -1.0)
set_upper_bound(x[73], 1.0)
set_lower_bound(x[74], -1.0)
set_upper_bound(x[74], 1.0)
set_lower_bound(x[75], -1.0)
set_upper_bound(x[75], 1.0)
set_lower_bound(x[76], -1.0)
set_upper_bound(x[76], 1.0)
set_lower_bound(x[77], -1.0)
set_upper_bound(x[77], 1.0)
set_lower_bound(x[78], -1.0)
set_upper_bound(x[78], 1.0)
set_lower_bound(x[79], -1.0)
set_upper_bound(x[79], 1.0)
set_lower_bound(x[80], -1.0)
set_upper_bound(x[80], 1.0)
set_lower_bound(x[81], -1.0)
set_upper_bound(x[81], 1.0)
set_lower_bound(x[82], -1.0)
set_upper_bound(x[82], 1.0)
set_lower_bound(x[83], -1.0)
set_upper_bound(x[83], 1.0)
set_lower_bound(x[84], -1.0)
set_upper_bound(x[84], 1.0)
set_lower_bound(x[85], -1.0)
set_upper_bound(x[85], 1.0)
set_lower_bound(x[86], -1.0)
set_upper_bound(x[86], 1.0)
set_lower_bound(x[87], -1.0)
set_upper_bound(x[87], 1.0)
set_lower_bound(x[88], -1.0)
set_upper_bound(x[88], 1.0)
set_lower_bound(x[89], -1.0)
set_upper_bound(x[89], 1.0)
set_lower_bound(x[90], -1.0)
set_upper_bound(x[90], 1.0)
set_lower_bound(x[91], -1.0)
set_upper_bound(x[91], 1.0)
set_lower_bound(x[92], -9.84885780179611)
set_upper_bound(x[92], 9.84885780179611)
set_lower_bound(x[93], -9.84885780179611)
set_upper_bound(x[93], 9.84885780179611)
set_lower_bound(x[94], -9.84885780179611)
set_upper_bound(x[94], 9.84885780179611)
set_lower_bound(x[95], -9.84885780179611)
set_upper_bound(x[95], 9.84885780179611)
set_lower_bound(x[96], -9.84885780179611)
set_upper_bound(x[96], 9.84885780179611)
set_lower_bound(x[97], -9.84885780179611)
set_upper_bound(x[97], 9.84885780179611)
set_lower_bound(x[98], -9.84885780179611)
set_upper_bound(x[98], 9.84885780179611)
set_lower_bound(x[99], -9.84885780179611)
set_upper_bound(x[99], 9.84885780179611)
set_lower_bound(x[100], -9.84885780179611)
set_upper_bound(x[100], 9.84885780179611)
set_lower_bound(x[101], -9.84885780179611)
set_upper_bound(x[101], 9.84885780179611)
set_lower_bound(x[102], -9.84885780179611)
set_upper_bound(x[102], 9.84885780179611)
set_lower_bound(x[103], -9.84885780179611)
set_upper_bound(x[103], 9.84885780179611)
set_lower_bound(x[104], -9.84885780179611)
set_upper_bound(x[104], 9.84885780179611)
set_lower_bound(x[105], -9.84885780179611)
set_upper_bound(x[105], 9.84885780179611)
set_lower_bound(x[106], -9.84885780179611)
set_upper_bound(x[106], 9.84885780179611)
set_lower_bound(x[107], -9.84885780179611)
set_upper_bound(x[107], 9.84885780179611)
set_lower_bound(x[108], -9.84885780179611)
set_upper_bound(x[108], 9.84885780179611)
set_lower_bound(x[109], -9.84885780179611)
set_upper_bound(x[109], 9.84885780179611)
set_lower_bound(x[110], -9.84885780179611)
set_upper_bound(x[110], 9.84885780179611)
set_lower_bound(x[111], -9.84885780179611)
set_upper_bound(x[111], 9.84885780179611)
set_lower_bound(x[112], -9.84885780179611)
set_upper_bound(x[112], 9.84885780179611)
set_lower_bound(x[113], -9.84885780179611)
set_upper_bound(x[113], 9.84885780179611)
set_lower_bound(x[114], -9.84885780179611)
set_upper_bound(x[114], 9.84885780179611)
set_lower_bound(x[115], -9.84885780179611)
set_upper_bound(x[115], 9.84885780179611)
set_lower_bound(x[116], -9.84885780179611)
set_upper_bound(x[116], 9.84885780179611)
set_lower_bound(x[117], -9.84885780179611)
set_upper_bound(x[117], 9.84885780179611)
set_lower_bound(x[118], -9.84885780179611)
set_upper_bound(x[118], 9.84885780179611)
set_lower_bound(x[119], -9.84885780179611)
set_upper_bound(x[119], 9.84885780179611)
set_lower_bound(x[120], -9.84885780179611)
set_upper_bound(x[120], 9.84885780179611)
set_lower_bound(x[121], -9.84885780179611)
set_upper_bound(x[121], 9.84885780179611)
set_lower_bound(x[122], -9.84885780179611)
set_upper_bound(x[122], 9.84885780179611)
set_lower_bound(x[123], -9.84885780179611)
set_upper_bound(x[123], 9.84885780179611)
set_lower_bound(x[124], -9.84885780179611)
set_upper_bound(x[124], 9.84885780179611)
set_lower_bound(x[125], -9.84885780179611)
set_upper_bound(x[125], 9.84885780179611)
set_lower_bound(x[126], -9.84885780179611)
set_upper_bound(x[126], 9.84885780179611)
set_lower_bound(x[127], -9.84885780179611)
set_upper_bound(x[127], 9.84885780179611)
set_lower_bound(x[128], -9.84885780179611)
set_upper_bound(x[128], 9.84885780179611)
set_lower_bound(x[129], -9.84885780179611)
set_upper_bound(x[129], 9.84885780179611)
set_lower_bound(x[130], -9.84885780179611)
set_upper_bound(x[130], 9.84885780179611)
set_lower_bound(x[131], -9.84885780179611)
set_upper_bound(x[131], 9.84885780179611)
set_lower_bound(x[132], -9.84885780179611)
set_upper_bound(x[132], 9.84885780179611)
set_lower_bound(x[133], -9.84885780179611)
set_upper_bound(x[133], 9.84885780179611)
set_lower_bound(x[134], -9.84885780179611)
set_upper_bound(x[134], 9.84885780179611)
set_lower_bound(x[135], -9.84885780179611)
set_upper_bound(x[135], 9.84885780179611)
set_lower_bound(x[136], -9.84885780179611)
set_upper_bound(x[136], 9.84885780179611)
set_lower_bound(x[137], -9.84885780179611)
set_upper_bound(x[137], 9.84885780179611)
set_lower_bound(x[138], -9.84885780179611)
set_upper_bound(x[138], 9.84885780179611)
set_lower_bound(x[139], -9.84885780179611)
set_upper_bound(x[139], 9.84885780179611)
set_lower_bound(x[140], -9.84885780179611)
set_upper_bound(x[140], 9.84885780179611)
set_lower_bound(x[141], -9.84885780179611)
set_upper_bound(x[141], 9.84885780179611)
set_lower_bound(x[142], -9.84885780179611)
set_upper_bound(x[142], 9.84885780179611)
set_lower_bound(x[143], -9.84885780179611)
set_upper_bound(x[143], 9.84885780179611)
set_lower_bound(x[144], -9.84885780179611)
set_upper_bound(x[144], 9.84885780179611)
set_lower_bound(x[145], -9.84885780179611)
set_upper_bound(x[145], 9.84885780179611)
set_lower_bound(x[146], -9.84885780179611)
set_upper_bound(x[146], 9.84885780179611)
set_lower_bound(x[147], -9.84885780179611)
set_upper_bound(x[147], 9.84885780179611)
set_lower_bound(x[148], -9.84885780179611)
set_upper_bound(x[148], 9.84885780179611)
set_lower_bound(x[149], -9.84885780179611)
set_upper_bound(x[149], 9.84885780179611)
set_lower_bound(x[150], -9.84885780179611)
set_upper_bound(x[150], 9.84885780179611)
set_lower_bound(x[151], -9.84885780179611)
set_upper_bound(x[151], 9.84885780179611)
set_lower_bound(x[152], -0.8)
set_upper_bound(x[152], 0.8)
set_lower_bound(x[153], -0.5)
set_upper_bound(x[153], 0.5)
set_lower_bound(x[154], -0.8)
set_upper_bound(x[154], 0.8)
set_lower_bound(x[155], -0.5)
set_upper_bound(x[155], 0.5)
set_lower_bound(x[156], -0.8)
set_upper_bound(x[156], 0.8)
set_lower_bound(x[157], -0.5)
set_upper_bound(x[157], 0.5)
set_lower_bound(x[158], -0.8)
set_upper_bound(x[158], 0.8)
set_lower_bound(x[159], -0.5)
set_upper_bound(x[159], 0.5)
set_lower_bound(x[160], 1.2)
set_upper_bound(x[160], 7.8)
set_lower_bound(x[161], 1.2)
set_upper_bound(x[161], 2.8)
set_lower_bound(x[162], 0.6)
set_upper_bound(x[162], 8.4)
set_lower_bound(x[163], 0.6)
set_upper_bound(x[163], 3.4)
set_lower_bound(x[164], 0.8)
set_upper_bound(x[164], 8.2)
set_lower_bound(x[165], 0.8)
set_upper_bound(x[165], 3.2)
set_lower_bound(x[166], 1.7)
set_upper_bound(x[166], 7.3)
set_lower_bound(x[167], 1.7)
set_upper_bound(x[167], 2.3)
set_lower_bound(x[168], 1.3)
set_upper_bound(x[168], 7.7)
set_lower_bound(x[169], 1.3)
set_upper_bound(x[169], 2.7)
set_lower_bound(x[170], 0.5)
set_upper_bound(x[170], 8.5)
set_lower_bound(x[171], 0.5)
set_upper_bound(x[171], 3.5)
set_upper_bound(x[172], 9.0)
set_upper_bound(x[173], 4.0)
set_upper_bound(x[174], 9.0)
set_upper_bound(x[175], 4.0)
set_upper_bound(x[176], 9.0)
set_upper_bound(x[177], 4.0)
set_upper_bound(x[178], 9.0)
set_upper_bound(x[179], 4.0)
set_upper_bound(x[180], 9.0)
set_upper_bound(x[181], 4.0)
set_upper_bound(x[182], 9.0)
set_upper_bound(x[183], 4.0)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 36.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -23.2393785915978)
@constraint(m, e2, -x[172]*x[173]+x[1] == 0.0)
@constraint(m, e3, (x[160]-x[162])*(x[160]-x[162])+(x[161]-x[163])*(x[161]-x[163]) >= 3.24)
@constraint(m, e4, (x[160]-x[164])*(x[160]-x[164])+(x[161]-x[165])*(x[161]-x[165]) >= 4.0)
@constraint(m, e5, (x[160]-x[166])*(x[160]-x[166])+(x[161]-x[167])*(x[161]-x[167]) >= 8.41)
@constraint(m, e6, (x[160]-x[168])*(x[160]-x[168])+(x[161]-x[169])*(x[161]-x[169]) >= 6.25)
@constraint(m, e7, (x[160]-x[170])*(x[160]-x[170])+(x[161]-x[171])*(x[161]-x[171]) >= 2.89)
@constraint(m, e8, (x[162]-x[164])*(x[162]-x[164])+(x[163]-x[165])*(x[163]-x[165]) >= 1.96)
@constraint(m, e9, (x[162]-x[166])*(x[162]-x[166])+(x[163]-x[167])*(x[163]-x[167]) >= 5.29)
@constraint(m, e10, (x[162]-x[168])*(x[162]-x[168])+(x[163]-x[169])*(x[163]-x[169]) >= 3.61)
@constraint(m, e11, (x[162]-x[170])*(x[162]-x[170])+(x[163]-x[171])*(x[163]-x[171]) >= 1.21)
@constraint(m, e12, (x[164]-x[166])*(x[164]-x[166])+(x[165]-x[167])*(x[165]-x[167]) >= 6.25)
@constraint(m, e13, (x[164]-x[168])*(x[164]-x[168])+(x[165]-x[169])*(x[165]-x[169]) >= 4.41)
@constraint(m, e14, (x[164]-x[170])*(x[164]-x[170])+(x[165]-x[171])*(x[165]-x[171]) >= 1.69)
@constraint(m, e15, (x[166]-x[168])*(x[166]-x[168])+(x[167]-x[169])*(x[167]-x[169]) >= 9.0)
@constraint(m, e16, (x[166]-x[170])*(x[166]-x[170])+(x[167]-x[171])*(x[167]-x[171]) >= 4.84)
@constraint(m, e17, (x[168]-x[170])*(x[168]-x[170])+(x[169]-x[171])*(x[169]-x[171]) >= 3.24)
@constraint(m, e18, x[160]-x[172] <= -1.2)
@constraint(m, e19, x[161]-x[173] <= -1.2)
@constraint(m, e20, x[162]-x[172] <= -0.6)
@constraint(m, e21, x[163]-x[173] <= -0.6)
@NLconstraint(m, e22, x[164]-x[172] <= -0.8)
@constraint(m, e23, x[165]-x[173] <= -0.8)
@constraint(m, e24, x[166]-x[172] <= -1.7)
@constraint(m, e25, x[167]-x[173] <= -1.7)
@constraint(m, e26, x[168]-x[172] <= -1.3)
@constraint(m, e27, x[169]-x[173] <= -1.3)
@constraint(m, e28, x[170]-x[172] <= -0.5)
@constraint(m, e29, x[171]-x[173] <= -0.5)
@constraint(m, e30, -x[172]+x[174] <= 0.0)
@constraint(m, e31, -x[173]+x[175] <= 0.0)
@constraint(m, e32, -x[172]+x[176] <= 0.0)
@constraint(m, e33, -x[173]+x[177] <= 0.0)
@constraint(m, e34, -x[172]+x[178] <= 0.0)
@constraint(m, e35, -x[173]+x[179] <= 0.0)
@constraint(m, e36, -x[172]+x[180] <= 0.0)
@constraint(m, e37, -x[173]+x[181] <= 0.0)
@constraint(m, e38, x[152]+x[174]-x[176] == 0.0)
@constraint(m, e39, x[153]+x[175]-x[177] == 0.0)
@constraint(m, e40, x[154]+x[176]-x[178] == 0.0)
@constraint(m, e41, x[155]+x[177]-x[179] == 0.0)
@constraint(m, e42, x[156]+x[178]-x[180] == 0.0)
@constraint(m, e43, x[157]+x[179]-x[181] == 0.0)
@constraint(m, e44, x[158]-x[174]+2*x[180]-x[182] == 0.0)
@constraint(m, e45, x[159]-x[175]+2*x[181]-x[183] == 0.0)
@constraint(m, e46, x[152]*x[154]+x[153]*x[155] == 0.0)
@constraint(m, e47, x[152]+x[156] == 0.0)
@constraint(m, e48, x[153]+x[157] == 0.0)
@constraint(m, e49, x[154]+x[158] == 0.0)
@constraint(m, e50, x[155]+x[159] == 0.0)
@constraint(m, e51, x[152]*x[152]+x[153]*x[153] == 0.25)
@constraint(m, e52, x[154]*x[154]+x[155]*x[155] == 0.64)
@constraint(m, e53, x[68]*x[68]+x[69]*x[69] == 1.0)
@constraint(m, e54, x[70]*x[70]+x[71]*x[71] == 1.0)
@constraint(m, e55, x[72]*x[72]+x[73]*x[73] == 1.0)
@constraint(m, e56, x[74]*x[74]+x[75]*x[75] == 1.0)
@constraint(m, e57, x[76]*x[76]+x[77]*x[77] == 1.0)
@constraint(m, e58, x[78]*x[78]+x[79]*x[79] == 1.0)
@constraint(m, e59, -x[69]+x[80] == 0.0)
@constraint(m, e60, -x[71]+x[82] == 0.0)
@constraint(m, e61, -x[73]+x[84] == 0.0)
@constraint(m, e62, -x[75]+x[86] == 0.0)
@constraint(m, e63, -x[77]+x[88] == 0.0)
@constraint(m, e64, -x[79]+x[90] == 0.0)
@constraint(m, e65, x[68]+x[81] == 0.0)
@constraint(m, e66, x[70]+x[83] == 0.0)
@constraint(m, e67, x[72]+x[85] == 0.0)
@constraint(m, e68, x[74]+x[87] == 0.0)
@constraint(m, e69, x[76]+x[89] == 0.0)
@constraint(m, e70, x[78]+x[91] == 0.0)
@constraint(m, e71, x[68]*x[38]+x[2]+x[92]-x[174] == 0.0)
@constraint(m, e72, x[69]*x[38]+x[3]+x[93]-x[175] == 0.0)
@constraint(m, e73, x[68]*x[39]+x[2]+x[94]-x[176] == 0.0)
@constraint(m, e74, x[69]*x[39]+x[3]+x[95]-x[177] == 0.0)
@constraint(m, e75, x[68]*x[40]+x[2]+x[96]-x[178] == 0.0)
@constraint(m, e76, x[69]*x[40]+x[3]+x[97]-x[179] == 0.0)
@constraint(m, e77, x[68]*x[41]+x[2]+x[98]-x[180] == 0.0)
@constraint(m, e78, x[69]*x[41]+x[3]+x[99]-x[181] == 0.0)
@constraint(m, e79, x[70]*x[42]+x[4]+x[100]-x[174] == 0.0)
@constraint(m, e80, x[71]*x[42]+x[5]+x[101]-x[175] == 0.0)
@constraint(m, e81, x[70]*x[43]+x[4]+x[102]-x[176] == 0.0)
@constraint(m, e82, x[71]*x[43]+x[5]+x[103]-x[177] == 0.0)
@constraint(m, e83, x[70]*x[44]+x[4]+x[104]-x[178] == 0.0)
@constraint(m, e84, x[71]*x[44]+x[5]+x[105]-x[179] == 0.0)
@constraint(m, e85, x[70]*x[45]+x[4]+x[106]-x[180] == 0.0)
@constraint(m, e86, x[71]*x[45]+x[5]+x[107]-x[181] == 0.0)
@constraint(m, e87, x[72]*x[46]+x[6]+x[108]-x[174] == 0.0)
@constraint(m, e88, x[73]*x[46]+x[7]+x[109]-x[175] == 0.0)
@constraint(m, e89, x[72]*x[47]+x[6]+x[110]-x[176] == 0.0)
@constraint(m, e90, x[73]*x[47]+x[7]+x[111]-x[177] == 0.0)
@constraint(m, e91, x[72]*x[48]+x[6]+x[112]-x[178] == 0.0)
@constraint(m, e92, x[73]*x[48]+x[7]+x[113]-x[179] == 0.0)
@constraint(m, e93, x[72]*x[49]+x[6]+x[114]-x[180] == 0.0)
@constraint(m, e94, x[73]*x[49]+x[7]+x[115]-x[181] == 0.0)
@constraint(m, e95, x[74]*x[50]+x[8]+x[116]-x[174] == 0.0)
@constraint(m, e96, x[75]*x[50]+x[9]+x[117]-x[175] == 0.0)
@constraint(m, e97, x[74]*x[51]+x[8]+x[118]-x[176] == 0.0)
@constraint(m, e98, x[75]*x[51]+x[9]+x[119]-x[177] == 0.0)
@constraint(m, e99, x[74]*x[52]+x[8]+x[120]-x[178] == 0.0)
@constraint(m, e100, x[75]*x[52]+x[9]+x[121]-x[179] == 0.0)
@constraint(m, e101, x[74]*x[53]+x[8]+x[122]-x[180] == 0.0)
@constraint(m, e102, x[75]*x[53]+x[9]+x[123]-x[181] == 0.0)
@constraint(m, e103, x[76]*x[54]+x[10]+x[124]-x[174] == 0.0)
@constraint(m, e104, x[77]*x[54]+x[11]+x[125]-x[175] == 0.0)
@constraint(m, e105, x[76]*x[55]+x[10]+x[126]-x[176] == 0.0)
@constraint(m, e106, x[77]*x[55]+x[11]+x[127]-x[177] == 0.0)
@constraint(m, e107, x[76]*x[56]+x[10]+x[128]-x[178] == 0.0)
@constraint(m, e108, x[77]*x[56]+x[11]+x[129]-x[179] == 0.0)
@constraint(m, e109, x[76]*x[57]+x[10]+x[130]-x[180] == 0.0)
@constraint(m, e110, x[77]*x[57]+x[11]+x[131]-x[181] == 0.0)
@constraint(m, e111, x[78]*x[58]+x[12]+x[132]-x[174] == 0.0)
@constraint(m, e112, x[79]*x[58]+x[13]+x[133]-x[175] == 0.0)
@constraint(m, e113, x[78]*x[59]+x[12]+x[134]-x[176] == 0.0)
@constraint(m, e114, x[79]*x[59]+x[13]+x[135]-x[177] == 0.0)
@constraint(m, e115, x[78]*x[60]+x[12]+x[136]-x[178] == 0.0)
@constraint(m, e116, x[79]*x[60]+x[13]+x[137]-x[179] == 0.0)
@constraint(m, e117, x[78]*x[61]+x[12]+x[138]-x[180] == 0.0)
@constraint(m, e118, x[79]*x[61]+x[13]+x[139]-x[181] == 0.0)
@constraint(m, e119, x[68]*x[62]+x[2]+x[140]-x[160] == 0.0)
@constraint(m, e120, x[69]*x[62]+x[3]+x[141]-x[161] == 0.0)
@constraint(m, e121, x[70]*x[63]+x[4]+x[142]-x[162] == 0.0)
@constraint(m, e122, x[71]*x[63]+x[5]+x[143]-x[163] == 0.0)
@constraint(m, e123, x[72]*x[64]+x[6]+x[144]-x[164] == 0.0)
@constraint(m, e124, x[73]*x[64]+x[7]+x[145]-x[165] == 0.0)
@constraint(m, e125, x[74]*x[65]+x[8]+x[146]-x[166] == 0.0)
@constraint(m, e126, x[75]*x[65]+x[9]+x[147]-x[167] == 0.0)
@constraint(m, e127, x[76]*x[66]+x[10]+x[148]-x[168] == 0.0)
@constraint(m, e128, x[77]*x[66]+x[11]+x[149]-x[169] == 0.0)
@constraint(m, e129, x[78]*x[67]+x[12]+x[150]-x[170] == 0.0)
@constraint(m, e130, x[79]*x[67]+x[13]+x[151]-x[171] == 0.0)
@constraint(m, e131, -x[14]*x[80]+x[92] == 0.0)
@constraint(m, e132, -x[14]*x[81]+x[93] == 0.0)
@constraint(m, e133, -x[15]*x[80]+x[94] == 0.0)
@constraint(m, e134, -x[15]*x[81]+x[95] == 0.0)
@constraint(m, e135, -x[16]*x[80]+x[96] == 0.0)
@constraint(m, e136, -x[16]*x[81]+x[97] == 0.0)
@constraint(m, e137, -x[17]*x[80]+x[98] == 0.0)
@constraint(m, e138, -x[17]*x[81]+x[99] == 0.0)
@constraint(m, e139, -x[18]*x[82]+x[100] == 0.0)
@constraint(m, e140, -x[18]*x[83]+x[101] == 0.0)
@constraint(m, e141, -x[19]*x[82]+x[102] == 0.0)
@constraint(m, e142, -x[19]*x[83]+x[103] == 0.0)
@constraint(m, e143, -x[20]*x[82]+x[104] == 0.0)
@constraint(m, e144, -x[20]*x[83]+x[105] == 0.0)
@constraint(m, e145, -x[21]*x[82]+x[106] == 0.0)
@constraint(m, e146, -x[21]*x[83]+x[107] == 0.0)
@constraint(m, e147, -x[22]*x[84]+x[108] == 0.0)
@constraint(m, e148, -x[22]*x[85]+x[109] == 0.0)
@constraint(m, e149, -x[23]*x[84]+x[110] == 0.0)
@constraint(m, e150, -x[23]*x[85]+x[111] == 0.0)
@constraint(m, e151, -x[24]*x[84]+x[112] == 0.0)
@constraint(m, e152, -x[24]*x[85]+x[113] == 0.0)
@constraint(m, e153, -x[25]*x[84]+x[114] == 0.0)
@constraint(m, e154, -x[25]*x[85]+x[115] == 0.0)
@constraint(m, e155, -x[26]*x[86]+x[116] == 0.0)
@constraint(m, e156, -x[26]*x[87]+x[117] == 0.0)
@constraint(m, e157, -x[27]*x[86]+x[118] == 0.0)
@constraint(m, e158, -x[27]*x[87]+x[119] == 0.0)
@constraint(m, e159, -x[28]*x[86]+x[120] == 0.0)
@constraint(m, e160, -x[28]*x[87]+x[121] == 0.0)
@constraint(m, e161, -x[29]*x[86]+x[122] == 0.0)
@constraint(m, e162, -x[29]*x[87]+x[123] == 0.0)
@constraint(m, e163, -x[30]*x[88]+x[124] == 0.0)
@constraint(m, e164, -x[30]*x[89]+x[125] == 0.0)
@constraint(m, e165, -x[31]*x[88]+x[126] == 0.0)
@constraint(m, e166, -x[31]*x[89]+x[127] == 0.0)
@constraint(m, e167, -x[32]*x[88]+x[128] == 0.0)
@constraint(m, e168, -x[32]*x[89]+x[129] == 0.0)
@constraint(m, e169, -x[33]*x[88]+x[130] == 0.0)
@constraint(m, e170, -x[33]*x[89]+x[131] == 0.0)
@constraint(m, e171, -x[34]*x[90]+x[132] == 0.0)
@constraint(m, e172, -x[34]*x[91]+x[133] == 0.0)
@constraint(m, e173, -x[35]*x[90]+x[134] == 0.0)
@constraint(m, e174, -x[35]*x[91]+x[135] == 0.0)
@constraint(m, e175, -x[36]*x[90]+x[136] == 0.0)
@constraint(m, e176, -x[36]*x[91]+x[137] == 0.0)
@constraint(m, e177, -x[37]*x[90]+x[138] == 0.0)
@constraint(m, e178, -x[37]*x[91]+x[139] == 0.0)
@constraint(m, e179, 1.2*x[80]+x[140] == 0.0)
@constraint(m, e180, 1.2*x[81]+x[141] == 0.0)
@constraint(m, e181, 0.6*x[82]+x[142] == 0.0)
@constraint(m, e182, 0.6*x[83]+x[143] == 0.0)
@constraint(m, e183, 0.8*x[84]+x[144] == 0.0)
@constraint(m, e184, 0.8*x[85]+x[145] == 0.0)
@constraint(m, e185, 1.7*x[86]+x[146] == 0.0)
@constraint(m, e186, 1.7*x[87]+x[147] == 0.0)
@constraint(m, e187, 1.3*x[88]+x[148] == 0.0)
@constraint(m, e188, 1.3*x[89]+x[149] == 0.0)
@constraint(m, e189, 0.5*x[90]+x[150] == 0.0)
@constraint(m, e190, 0.5*x[91]+x[151] == 0.0)
@constraint(m, e191, x[160] <= 4.5)
@constraint(m, e192, x[161] <= 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.