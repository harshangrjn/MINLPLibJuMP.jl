using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[2], 100000.0)
set_upper_bound(x[3], 100000.0)
set_upper_bound(x[4], 100000.0)
set_upper_bound(x[5], 100000.0)
set_upper_bound(x[6], 100000.0)
set_upper_bound(x[7], 100000.0)
set_upper_bound(x[8], 100000.0)
set_upper_bound(x[9], 100000.0)
set_upper_bound(x[10], 100000.0)
set_upper_bound(x[11], 100000.0)
set_upper_bound(x[12], 100000.0)
set_upper_bound(x[13], 100000.0)
set_upper_bound(x[14], 100000.0)
set_upper_bound(x[15], 100000.0)
set_upper_bound(x[16], 100000.0)
set_upper_bound(x[17], 100000.0)
set_upper_bound(x[18], 100000.0)
set_upper_bound(x[19], 100000.0)
set_upper_bound(x[20], 100000.0)
set_upper_bound(x[21], 100000.0)
set_upper_bound(x[22], 100000.0)
set_upper_bound(x[23], 100000.0)
set_upper_bound(x[24], 100000.0)
set_upper_bound(x[25], 100000.0)
set_upper_bound(x[26], 100000.0)
set_upper_bound(x[27], 100000.0)
set_upper_bound(x[28], 100000.0)
set_upper_bound(x[29], 100000.0)
set_upper_bound(x[30], 100000.0)
set_upper_bound(x[31], 100000.0)
set_upper_bound(x[32], 100000.0)
set_upper_bound(x[33], 100000.0)
set_upper_bound(x[34], 100000.0)
set_upper_bound(x[35], 100000.0)
set_upper_bound(x[36], 100000.0)
set_upper_bound(x[37], 100000.0)
set_upper_bound(x[38], 100000.0)
set_upper_bound(x[39], 100000.0)
set_upper_bound(x[40], 100000.0)
set_upper_bound(x[41], 100000.0)
set_upper_bound(x[42], 100000.0)
set_upper_bound(x[43], 100000.0)
set_upper_bound(x[44], 100000.0)
set_upper_bound(x[45], 100000.0)
set_upper_bound(x[46], 100000.0)
set_upper_bound(x[47], 100000.0)
set_upper_bound(x[48], 100000.0)
set_upper_bound(x[49], 100000.0)
set_upper_bound(x[50], 100000.0)
set_upper_bound(x[51], 100000.0)
set_upper_bound(x[52], 100000.0)
set_upper_bound(x[53], 100000.0)
set_upper_bound(x[54], 100000.0)
set_upper_bound(x[55], 100000.0)
set_upper_bound(x[56], 100000.0)
set_upper_bound(x[57], 100000.0)
set_upper_bound(x[58], 100000.0)
set_upper_bound(x[59], 100000.0)
set_upper_bound(x[60], 100000.0)
set_upper_bound(x[61], 100000.0)
set_upper_bound(x[62], 100000.0)
set_upper_bound(x[63], 100000.0)
set_upper_bound(x[64], 100000.0)
set_upper_bound(x[65], 100000.0)
set_upper_bound(x[66], 100000.0)
set_upper_bound(x[67], 100000.0)
set_upper_bound(x[68], 100000.0)
set_upper_bound(x[69], 100000.0)
set_upper_bound(x[70], 100000.0)
set_upper_bound(x[71], 100000.0)
set_upper_bound(x[72], 100000.0)
set_upper_bound(x[73], 100000.0)
set_upper_bound(x[74], 100000.0)
set_upper_bound(x[75], 100000.0)
set_upper_bound(x[76], 100000.0)
set_upper_bound(x[77], 100000.0)
set_upper_bound(x[78], 100000.0)
set_upper_bound(x[79], 100000.0)
set_upper_bound(x[80], 100000.0)
set_upper_bound(x[81], 100000.0)
set_upper_bound(x[82], 100000.0)
set_upper_bound(x[83], 100000.0)
set_upper_bound(x[84], 100000.0)
set_upper_bound(x[85], 100000.0)
set_upper_bound(x[86], 100000.0)
set_upper_bound(x[87], 100000.0)
set_upper_bound(x[88], 100000.0)
set_upper_bound(x[89], 100000.0)
set_upper_bound(x[90], 100000.0)
set_upper_bound(x[91], 100000.0)
set_upper_bound(x[92], 100000.0)
set_upper_bound(x[93], 100000.0)
set_upper_bound(x[94], 100000.0)
set_upper_bound(x[95], 100000.0)
set_upper_bound(x[96], 100000.0)
set_upper_bound(x[97], 100000.0)
set_upper_bound(x[98], 100000.0)
set_upper_bound(x[99], 100000.0)
set_upper_bound(x[100], 100000.0)
set_upper_bound(x[101], 100000.0)
set_upper_bound(x[102], 100000.0)
set_upper_bound(x[103], 100000.0)
set_upper_bound(x[104], 100000.0)
set_upper_bound(x[105], 100000.0)
set_upper_bound(x[106], 100000.0)
set_upper_bound(x[107], 100000.0)
set_upper_bound(x[108], 100000.0)
set_upper_bound(x[109], 100000.0)
set_upper_bound(x[110], 100000.0)
set_upper_bound(x[111], 100000.0)
set_upper_bound(x[112], 100000.0)
set_upper_bound(x[113], 100000.0)
set_upper_bound(x[114], 100000.0)
set_upper_bound(x[115], 100000.0)
set_upper_bound(x[116], 100000.0)
set_upper_bound(x[117], 100000.0)
set_upper_bound(x[118], 100000.0)
set_upper_bound(x[119], 100000.0)
set_upper_bound(x[120], 100000.0)
set_upper_bound(x[121], 100000.0)
set_upper_bound(x[122], 100000.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29] == 0.0)
@constraint(m, e2, -x[2]-x[9]-x[16]-x[23]+x[30]-x[44]-x[51]-x[58]-x[65]-x[72]-x[79]-x[86] == 0.0)
@constraint(m, e3, -x[3]-x[10]-x[17]-x[24]+x[31]-x[45]-x[52]-x[59]-x[66]-x[73]-x[80]-x[87] == 0.0)
@constraint(m, e4, -x[4]-x[11]-x[18]-x[25]+x[32]-x[46]-x[53]-x[60]-x[67]-x[74]-x[81]-x[88] == 0.0)
@constraint(m, e5, -x[5]-x[12]-x[19]-x[26]+x[33]-x[47]-x[54]-x[61]-x[68]-x[75]-x[82]-x[89] == 0.0)
@constraint(m, e6, -x[6]-x[13]-x[20]-x[27]+x[34]-x[48]-x[55]-x[62]-x[69]-x[76]-x[83]-x[90] == 0.0)
@constraint(m, e7, -x[7]-x[14]-x[21]-x[28]-x[49]-x[56]-x[63]-x[70]-x[77]-x[84]-x[91] == -95.0)
@constraint(m, e8, -x[8]-x[15]-x[22]-x[29]-x[50]-x[57]-x[64]-x[71]-x[78]-x[85]-x[92] == -50.0)
@constraint(m, e9, x[30]-x[37]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50] == 0.0)
@constraint(m, e10, x[31]-x[38]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[57] == 0.0)
@constraint(m, e11, x[32]-x[39]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64] == 0.0)
@constraint(m, e12, x[33]-x[40]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71] == 0.0)
@constraint(m, e13, x[34]-x[41]-x[72]-x[73]-x[74]-x[75]-x[76]-x[77]-x[78] == 0.0)
@constraint(m, e14, -x[42]-x[79]-x[80]-x[81]-x[82]-x[83]-x[84]-x[85] == -55.0)
@constraint(m, e15, -x[43]-x[86]-x[87]-x[88]-x[89]-x[90]-x[91]-x[92] == -80.0)
@NLconstraint(m, e16, x[30]*x[93]-(x[44]*x[108]+x[51]*x[111]+x[58]*x[114]+x[65]*x[117]+x[72]*x[120])-4*x[2]-7*x[9]-7*x[16]-6*x[23]-809*x[79]-1052*x[86] == 0.0)
@NLconstraint(m, e17, x[30]*x[94]-(x[44]*x[109]+x[51]*x[112]+x[58]*x[115]+x[65]*x[118]+x[72]*x[121])-5*x[2]-8*x[9]-3*x[16]-4*x[23]-899*x[79]-229*x[86] == 0.0)
@NLconstraint(m, e18, x[30]*x[95]-(x[44]*x[110]+x[51]*x[113]+x[58]*x[116]+x[65]*x[119]+x[72]*x[122])-9*x[2]-x[9]-x[16]-9*x[23]-985*x[79]-783*x[86] == 0.0)
@NLconstraint(m, e19, x[31]*x[96]-(x[45]*x[108]+x[52]*x[111]+x[59]*x[114]+x[66]*x[117]+x[73]*x[120])-4*x[3]-7*x[10]-7*x[17]-6*x[24]-809*x[80]-1052*x[87] == 0.0)
@NLconstraint(m, e20, x[31]*x[97]-(x[45]*x[109]+x[52]*x[112]+x[59]*x[115]+x[66]*x[118]+x[73]*x[121])-5*x[3]-8*x[10]-3*x[17]-4*x[24]-899*x[80]-229*x[87] == 0.0)
@NLconstraint(m, e21, x[31]*x[98]-(x[45]*x[110]+x[52]*x[113]+x[59]*x[116]+x[66]*x[119]+x[73]*x[122])-9*x[3]-x[10]-x[17]-9*x[24]-985*x[80]-783*x[87] == 0.0)
@NLconstraint(m, e22, x[32]*x[99]-(x[46]*x[108]+x[53]*x[111]+x[60]*x[114]+x[67]*x[117]+x[74]*x[120])-4*x[4]-7*x[11]-7*x[18]-6*x[25]-809*x[81]-1052*x[88] == 0.0)
@NLconstraint(m, e23, x[32]*x[100]-(x[46]*x[109]+x[53]*x[112]+x[60]*x[115]+x[67]*x[118]+x[74]*x[121])-5*x[4]-8*x[11]-3*x[18]-4*x[25]-899*x[81]-229*x[88] == 0.0)
@NLconstraint(m, e24, x[32]*x[101]-(x[46]*x[110]+x[53]*x[113]+x[60]*x[116]+x[67]*x[119]+x[74]*x[122])-9*x[4]-x[11]-x[18]-9*x[25]-985*x[81]-783*x[88] == 0.0)
@NLconstraint(m, e25, x[33]*x[102]-(x[47]*x[108]+x[54]*x[111]+x[61]*x[114]+x[68]*x[117]+x[75]*x[120])-4*x[5]-7*x[12]-7*x[19]-6*x[26]-809*x[82]-1052*x[89] == 0.0)
@NLconstraint(m, e26, x[33]*x[103]-(x[47]*x[109]+x[54]*x[112]+x[61]*x[115]+x[68]*x[118]+x[75]*x[121])-5*x[5]-8*x[12]-3*x[19]-4*x[26]-899*x[82]-229*x[89] == 0.0)
@NLconstraint(m, e27, x[33]*x[104]-(x[47]*x[110]+x[54]*x[113]+x[61]*x[116]+x[68]*x[119]+x[75]*x[122])-9*x[5]-x[12]-x[19]-9*x[26]-985*x[82]-783*x[89] == 0.0)
@NLconstraint(m, e28, x[34]*x[105]-(x[48]*x[108]+x[55]*x[111]+x[62]*x[114]+x[69]*x[117]+x[76]*x[120])-4*x[6]-7*x[13]-7*x[20]-6*x[27]-809*x[83]-1052*x[90] == 0.0)
@NLconstraint(m, e29, x[34]*x[106]-(x[48]*x[109]+x[55]*x[112]+x[62]*x[115]+x[69]*x[118]+x[76]*x[121])-5*x[6]-8*x[13]-3*x[20]-4*x[27]-899*x[83]-229*x[90] == 0.0)
@NLconstraint(m, e30, x[34]*x[107]-(x[48]*x[110]+x[55]*x[113]+x[62]*x[116]+x[69]*x[119]+x[76]*x[122])-9*x[6]-x[13]-x[20]-9*x[27]-985*x[83]-783*x[90] == 0.0)
@NLconstraint(m, e31, -x[30]*(x[108]-x[93]) == -702.0)
@NLconstraint(m, e32, -x[30]*(x[109]-x[94]) == -3294.0)
@NLconstraint(m, e33, -x[30]*(x[110]-x[95]) == -918.0)
@NLconstraint(m, e34, -x[31]*(x[111]-x[96]) == -102138.0)
@NLconstraint(m, e35, -x[31]*(x[112]-x[97]) == -32364.0)
@NLconstraint(m, e36, -x[31]*(x[113]-x[98]) == -2088.0)
@NLconstraint(m, e37, -x[32]*(x[114]-x[99]) == -118198.0)
@NLconstraint(m, e38, -x[32]*(x[115]-x[100]) == -36838.0)
@NLconstraint(m, e39, -x[32]*(x[116]-x[101]) == -113678.0)
@NLconstraint(m, e40, -x[33]*(x[117]-x[102]) == -8568.0)
@NLconstraint(m, e41, -x[33]*(x[118]-x[103]) == -44948.0)
@NLconstraint(m, e42, -x[33]*(x[119]-x[104]) == -19788.0)
@NLconstraint(m, e43, -x[34]*(x[120]-x[105]) == -82600.0)
@NLconstraint(m, e44, -x[34]*(x[121]-x[106]) == -4100.0)
@NLconstraint(m, e45, -x[34]*(x[122]-x[107]) == -90400.0)
@constraint(m, e46, x[93] <= 857.0)
@constraint(m, e47, x[94] <= 479.0)
@constraint(m, e48, x[95] <= 781.0)
@constraint(m, e49, x[96] <= 71.0)
@constraint(m, e50, x[97] <= 990.0)
@constraint(m, e51, x[98] <= 998.0)
@constraint(m, e52, x[99] <= 650.0)
@constraint(m, e53, x[100] <= 759.0)
@constraint(m, e54, x[101] <= 54.0)
@constraint(m, e55, x[102] <= 905.0)
@constraint(m, e56, x[103] <= 120.0)
@constraint(m, e57, x[104] <= 452.0)
@constraint(m, e58, x[105] <= 366.0)
@constraint(m, e59, x[106] <= 169.0)
@constraint(m, e60, x[107] <= 169.0)
@constraint(m, e61, x[108] <= 870.0)
@constraint(m, e62, x[109] <= 540.0)
@constraint(m, e63, x[110] <= 798.0)
@constraint(m, e64, x[111] <= 658.0)
@constraint(m, e65, x[112] <= 1176.0)
@constraint(m, e66, x[113] <= 1010.0)
@constraint(m, e67, x[114] <= 1173.0)
@constraint(m, e68, x[115] <= 922.0)
@constraint(m, e69, x[116] <= 557.0)
@constraint(m, e70, x[117] <= 1031.0)
@constraint(m, e71, x[118] <= 781.0)
@constraint(m, e72, x[119] <= 743.0)
@constraint(m, e73, x[120] <= 1192.0)
@constraint(m, e74, x[121] <= 210.0)
@constraint(m, e75, x[122] <= 1073.0)
@NLconstraint(m, e76, -(x[49]*x[108]+x[56]*x[111]+x[63]*x[114]+x[70]*x[117]+x[77]*x[120])-4*x[7]-7*x[14]-7*x[21]-6*x[28]-809*x[84]-1052*x[91] >= -22990.0)
@NLconstraint(m, e77, -(x[49]*x[109]+x[56]*x[112]+x[63]*x[115]+x[70]*x[118]+x[77]*x[121])-5*x[7]-8*x[14]-3*x[21]-4*x[28]-899*x[84]-229*x[91] >= -61940.0)
@NLconstraint(m, e78, -(x[49]*x[110]+x[56]*x[113]+x[63]*x[116]+x[70]*x[119]+x[77]*x[122])-9*x[7]-x[14]-x[21]-9*x[28]-985*x[84]-783*x[91] >= -8740.0)
@NLconstraint(m, e79, -(x[50]*x[108]+x[57]*x[111]+x[64]*x[114]+x[71]*x[117]+x[78]*x[120])-4*x[8]-7*x[15]-7*x[22]-6*x[29]-809*x[85]-1052*x[92] >= -30900.0)
@NLconstraint(m, e80, -(x[50]*x[109]+x[57]*x[112]+x[64]*x[115]+x[71]*x[118]+x[78]*x[121])-5*x[8]-8*x[15]-3*x[22]-4*x[29]-899*x[85]-229*x[92] >= -6700.0)
@NLconstraint(m, e81, -(x[50]*x[110]+x[57]*x[113]+x[64]*x[116]+x[71]*x[119]+x[78]*x[122])-9*x[8]-x[15]-x[22]-9*x[29]-985*x[85]-783*x[92] >= -37200.0)
@constraint(m, e82, x[30] <= 54.0)
@constraint(m, e83, x[31] <= 174.0)
@constraint(m, e84, x[32] <= 226.0)
@constraint(m, e85, x[33] <= 68.0)
@constraint(m, e86, x[34] <= 100.0)
@constraint(m, e87, x[35] <= 0.0)
@constraint(m, e88, x[36] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.