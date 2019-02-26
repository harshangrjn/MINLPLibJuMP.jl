using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, b[b_Idx])
x_Idx = Any[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_binary(b[8])
set_lower_bound(x[88], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_binary(b[5])
set_lower_bound(x[104], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_binary(b[12])
set_binary(b[2])
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[66], 0.0)
set_binary(b[11])
set_binary(b[7])
set_binary(b[9])
set_binary(b[3])
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_binary(b[4])
set_binary(b[6])
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_binary(b[1])
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[108], 0.0)
set_binary(b[10])
set_lower_bound(x[102], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[13], 370.0)
set_upper_bound(x[13], 650.0)
set_lower_bound(x[14], 370.0)
set_upper_bound(x[14], 650.0)
set_lower_bound(x[15], 370.0)
set_upper_bound(x[15], 650.0)
set_lower_bound(x[16], 370.0)
set_upper_bound(x[16], 590.0)
set_lower_bound(x[17], 370.0)
set_upper_bound(x[17], 590.0)
set_lower_bound(x[18], 370.0)
set_upper_bound(x[18], 590.0)
set_lower_bound(x[19], 410.0)
set_upper_bound(x[19], 650.0)
set_lower_bound(x[20], 410.0)
set_upper_bound(x[20], 650.0)
set_lower_bound(x[21], 410.0)
set_upper_bound(x[21], 650.0)
set_lower_bound(x[22], 350.0)
set_upper_bound(x[22], 500.0)
set_lower_bound(x[23], 350.0)
set_upper_bound(x[23], 500.0)
set_lower_bound(x[24], 350.0)
set_upper_bound(x[24], 500.0)
set_lower_bound(x[37], 10.0)
set_lower_bound(x[38], 10.0)
set_lower_bound(x[39], 10.0)
set_lower_bound(x[40], 10.0)
set_lower_bound(x[41], 10.0)
set_lower_bound(x[42], 10.0)
set_lower_bound(x[43], 10.0)
set_lower_bound(x[44], 10.0)
set_lower_bound(x[45], 10.0)
set_lower_bound(x[46], 10.0)
set_lower_bound(x[47], 10.0)
set_lower_bound(x[48], 10.0)
set_lower_bound(x[49], 10.0)
set_lower_bound(x[50], 10.0)
set_lower_bound(x[51], 10.0)
set_lower_bound(x[52], 10.0)
set_upper_bound(x[53], 10.0)
set_upper_bound(x[54], 10.0)
set_upper_bound(x[55], 10.0)
set_upper_bound(x[56], 10.0)
set_upper_bound(x[57], 20.0)
set_upper_bound(x[58], 20.0)
set_upper_bound(x[59], 20.0)
set_upper_bound(x[60], 20.0)
set_upper_bound(x[61], 15.0)
set_upper_bound(x[62], 15.0)
set_upper_bound(x[63], 13.0)
set_upper_bound(x[64], 13.0)
set_upper_bound(x[65], 15.0)
set_upper_bound(x[66], 15.0)
set_upper_bound(x[67], 13.0)
set_upper_bound(x[68], 13.0)
set_lower_bound(x[69], 370.0)
set_upper_bound(x[69], 650.0)
set_lower_bound(x[70], 370.0)
set_upper_bound(x[70], 650.0)
set_lower_bound(x[71], 370.0)
set_upper_bound(x[71], 650.0)
set_lower_bound(x[72], 370.0)
set_upper_bound(x[72], 650.0)
set_lower_bound(x[73], 370.0)
set_upper_bound(x[73], 590.0)
set_lower_bound(x[74], 370.0)
set_upper_bound(x[74], 590.0)
set_lower_bound(x[75], 370.0)
set_upper_bound(x[75], 590.0)
set_lower_bound(x[76], 370.0)
set_upper_bound(x[76], 590.0)
set_lower_bound(x[77], 410.0)
set_upper_bound(x[77], 650.0)
set_lower_bound(x[78], 410.0)
set_upper_bound(x[78], 650.0)
set_lower_bound(x[79], 350.0)
set_upper_bound(x[79], 500.0)
set_lower_bound(x[80], 350.0)
set_upper_bound(x[80], 500.0)
set_lower_bound(x[81], 410.0)
set_upper_bound(x[81], 650.0)
set_lower_bound(x[82], 410.0)
set_upper_bound(x[82], 650.0)
set_lower_bound(x[83], 350.0)
set_upper_bound(x[83], 500.0)
set_lower_bound(x[84], 350.0)
set_upper_bound(x[84], 500.0)


# ----- Constraints ----- #
@constraint(m, e1, 10*x[13]-10*x[14]-x[25]-x[27] == 0.0)
@constraint(m, e2, 10*x[14]-10*x[15]-x[26]-x[28] == 0.0)
@constraint(m, e3, 20*x[16]-20*x[17]-x[29]-x[31] == 0.0)
@constraint(m, e4, 20*x[17]-20*x[18]-x[30]-x[32] == 0.0)
@constraint(m, e5, 15*x[19]-15*x[20]-x[25]-x[29] == 0.0)
@constraint(m, e6, 15*x[20]-15*x[21]-x[26]-x[30] == 0.0)
@constraint(m, e7, 13*x[22]-13*x[23]-x[27]-x[31] == 0.0)
@constraint(m, e8, 13*x[23]-13*x[24]-x[28]-x[32] == 0.0)
@constraint(m, e9, 10*x[15]-x[33] == 3700.0)
@constraint(m, e10, 20*x[18]-x[34] == 7400.0)
@constraint(m, e11, -x[25]-x[26]-x[27]-x[28]-x[33] == -2800.0)
@constraint(m, e12, -x[29]-x[30]-x[31]-x[32]-x[34] == -4400.0)
@constraint(m, e13, -15*x[19]-x[35] == -9750.0)
@constraint(m, e14, -13*x[22]-x[36] == -6500.0)
@constraint(m, e15, -x[25]-x[26]-x[29]-x[30]-x[35] == -3600.0)
@constraint(m, e16, -x[27]-x[28]-x[31]-x[32]-x[36] == -1950.0)
@constraint(m, e17, x[13]-x[14] >= 0.0)
@constraint(m, e18, x[14]-x[15] >= 0.0)
@constraint(m, e19, x[16]-x[17] >= 0.0)
@constraint(m, e20, x[17]-x[18] >= 0.0)
@constraint(m, e21, x[19]-x[20] >= 0.0)
@constraint(m, e22, x[20]-x[21] >= 0.0)
@constraint(m, e23, x[22]-x[23] >= 0.0)
@constraint(m, e24, x[23]-x[24] >= 0.0)
@constraint(m, e25, x[15] >= 370.0)
@constraint(m, e26, x[18] >= 370.0)
@constraint(m, e27, -x[19] >= -650.0)
@constraint(m, e28, -x[22] >= -500.0)
@constraint(m, e29, -x[13] == -650.0)
@constraint(m, e30, -x[16] == -590.0)
@constraint(m, e31, -x[21] == -410.0)
@constraint(m, e32, -x[24] == -350.0)
@constraint(m, e33, -x[53]-x[55] == -10.0)
@constraint(m, e34, -x[54]-x[56] == -10.0)
@constraint(m, e35, -x[57]-x[59] == -20.0)
@constraint(m, e36, -x[58]-x[60] == -20.0)
@constraint(m, e37, -x[61]-x[65] == -15.0)
@constraint(m, e38, -x[62]-x[66] == -15.0)
@constraint(m, e39, -x[63]-x[67] == -13.0)
@constraint(m, e40, -x[64]-x[68] == -13.0)
@NLconstraint(m, e41, -x[53]*(x[13]-x[69])+x[25] == 0.0)
@NLconstraint(m, e42, -x[54]*(x[14]-x[70])+x[26] == 0.0)
@NLconstraint(m, e43, -x[55]*(x[13]-x[71])+x[27] == 0.0)
@NLconstraint(m, e44, -x[56]*(x[14]-x[72])+x[28] == 0.0)
@NLconstraint(m, e45, -x[57]*(x[16]-x[73])+x[29] == 0.0)
@NLconstraint(m, e46, -x[58]*(x[17]-x[74])+x[30] == 0.0)
@NLconstraint(m, e47, -x[59]*(x[16]-x[75])+x[31] == 0.0)
@NLconstraint(m, e48, -x[60]*(x[17]-x[76])+x[32] == 0.0)
@NLconstraint(m, e49, -x[61]*(x[77]-x[20])+x[25] == 0.0)
@NLconstraint(m, e50, -x[62]*(x[78]-x[21])+x[26] == 0.0)
@NLconstraint(m, e51, -x[63]*(x[79]-x[23])+x[27] == 0.0)
@NLconstraint(m, e52, -x[64]*(x[80]-x[24])+x[28] == 0.0)
@NLconstraint(m, e53, -x[65]*(x[81]-x[20])+x[29] == 0.0)
@NLconstraint(m, e54, -x[66]*(x[82]-x[21])+x[30] == 0.0)
@NLconstraint(m, e55, -x[67]*(x[83]-x[23])+x[31] == 0.0)
@NLconstraint(m, e56, -x[68]*(x[84]-x[24])+x[32] == 0.0)
@NLconstraint(m, e57, -(x[53]*x[69]+x[55]*x[71])+10*x[14] == 0.0)
@NLconstraint(m, e58, -(x[54]*x[70]+x[56]*x[72])+10*x[15] == 0.0)
@NLconstraint(m, e59, -(x[57]*x[73]+x[59]*x[75])+20*x[17] == 0.0)
@NLconstraint(m, e60, -(x[58]*x[74]+x[60]*x[76])+20*x[18] == 0.0)
@NLconstraint(m, e61, -(x[61]*x[77]+x[65]*x[81])+15*x[19] == 0.0)
@NLconstraint(m, e62, -(x[62]*x[78]+x[66]*x[82])+15*x[20] == 0.0)
@NLconstraint(m, e63, -(x[63]*x[79]+x[67]*x[83])+13*x[22] == 0.0)
@NLconstraint(m, e64, -(x[64]*x[80]+x[68]*x[84])+13*x[23] == 0.0)
@NLconstraint(m, e65, -(x[37]-x[38])/log(x[37]/(1e-6+x[38]))+x[85] == 0.0)
@NLconstraint(m, e66, -(x[38]-x[39])/log(x[38]/(1e-6+x[39]))+x[86] == 0.0)
@NLconstraint(m, e67, -(x[40]-x[41])/log(x[40]/(1e-6+x[41]))+x[87] == 0.0)
@NLconstraint(m, e68, -(x[41]-x[42])/log(x[41]/(1e-6+x[42]))+x[88] == 0.0)
@NLconstraint(m, e69, -(x[43]-x[44])/log(x[43]/(1e-6+x[44]))+x[89] == 0.0)
@NLconstraint(m, e70, -(x[44]-x[45])/log(x[44]/(1e-6+x[45]))+x[90] == 0.0)
@NLconstraint(m, e71, -(x[46]-x[47])/log(x[46]/(1e-6+x[47]))+x[91] == 0.0)
@NLconstraint(m, e72, -(x[47]-x[48])/log(x[47]/(1e-6+x[48]))+x[92] == 0.0)
@NLconstraint(m, e73, -2*x[25]/(0.01+x[85])+x[97] == 0.0)
@NLconstraint(m, e74, -2*x[26]/(0.01+x[86])+x[98] == 0.0)
@NLconstraint(m, e75, -2*x[27]/(0.01+x[87])+x[100] == 0.0)
@NLconstraint(m, e76, -2*x[28]/(0.01+x[88])+x[101] == 0.0)
@NLconstraint(m, e77, -2*x[29]/(0.01+x[89])+x[103] == 0.0)
@NLconstraint(m, e78, -2*x[30]/(0.01+x[90])+x[104] == 0.0)
@NLconstraint(m, e79, -2*x[31]/(0.01+x[91])+x[106] == 0.0)
@NLconstraint(m, e80, -2*x[32]/(0.01+x[92])+x[107] == 0.0)
@NLconstraint(m, e81, -(-70+x[49])/log(0.0142857140816327*x[49])+x[93] == 0.0)
@NLconstraint(m, e82, -(-70+x[50])/log(0.0142857140816327*x[50])+x[94] == 0.0)
@NLconstraint(m, e83, -(-30+x[51])/log(0.0333333322222223*x[51])+x[95] == 0.0)
@NLconstraint(m, e84, -(-180+x[52])/log(0.00555555552469136*x[52])+x[96] == 0.0)
@NLconstraint(m, e85, -2*x[33]/(0.01+x[93])+x[109] == 0.0)
@NLconstraint(m, e86, -2*x[34]/(0.01+x[94])+x[110] == 0.0)
@NLconstraint(m, e87, -1.2*x[35]/(0.01+x[95])+x[111] == 0.0)
@NLconstraint(m, e88, -1.2*x[36]/(0.01+x[96])+x[112] == 0.0)
@constraint(m, e89, -2800*b[1]+x[25] <= 0.0)
@constraint(m, e90, -2800*b[2]+x[26] <= 0.0)
@constraint(m, e91, -1950*b[3]+x[27] <= 0.0)
@constraint(m, e92, -1950*b[4]+x[28] <= 0.0)
@constraint(m, e93, -3600*b[5]+x[29] <= 0.0)
@constraint(m, e94, -3600*b[6]+x[30] <= 0.0)
@constraint(m, e95, -1950*b[7]+x[31] <= 0.0)
@constraint(m, e96, -1950*b[8]+x[32] <= 0.0)
@constraint(m, e97, -3600*b[11]+x[35] <= 0.0)
@constraint(m, e98, -1950*b[12]+x[36] <= 0.0)
@constraint(m, e99, -2800*b[9]+x[33] <= 0.0)
@constraint(m, e100, -4400*b[10]+x[34] <= 0.0)
@constraint(m, e101, 280*b[1]-x[13]+x[19]+x[37] <= 280.0)
@constraint(m, e102, 280*b[2]-x[14]+x[20]+x[38] <= 280.0)
@constraint(m, e103, 130*b[3]-x[13]+x[22]+x[40] <= 130.0)
@constraint(m, e104, 130*b[4]-x[14]+x[23]+x[41] <= 130.0)
@constraint(m, e105, 280*b[5]-x[16]+x[19]+x[43] <= 280.0)
@constraint(m, e106, 280*b[6]-x[17]+x[20]+x[44] <= 280.0)
@constraint(m, e107, 130*b[7]-x[16]+x[22]+x[46] <= 130.0)
@constraint(m, e108, 130*b[8]-x[17]+x[23]+x[47] <= 130.0)
@constraint(m, e109, 280*b[1]-x[14]+x[20]+x[38] <= 280.0)
@constraint(m, e110, 280*b[2]-x[15]+x[21]+x[39] <= 280.0)
@constraint(m, e111, 130*b[3]-x[14]+x[23]+x[41] <= 130.0)
@constraint(m, e112, 130*b[4]-x[15]+x[24]+x[42] <= 130.0)
@constraint(m, e113, 280*b[5]-x[17]+x[20]+x[44] <= 280.0)
@constraint(m, e114, 280*b[6]-x[18]+x[21]+x[45] <= 280.0)
@constraint(m, e115, 130*b[7]-x[17]+x[23]+x[47] <= 130.0)
@constraint(m, e116, 130*b[8]-x[18]+x[24]+x[48] <= 130.0)
@constraint(m, e117, -x[15]+x[49] <= -320.0)
@constraint(m, e118, -x[18]+x[50] <= -320.0)
@constraint(m, e119, x[19]+x[51] <= 680.0)
@constraint(m, e120, x[22]+x[52] <= 680.0)
@constraint(m, e121, -5500*b[1]-5500*b[2]-5500*b[3]-5500*b[4]-5500*b[5]-5500*b[6]-5500*b[7]-5500*b[8]-5500*b[9]-5500*b[10]-5500*b[11]-5500*b[12]-15*x[33]-15*x[34]-80*x[35]-80*x[36]-150*x[97]-150*x[98]-150*x[99]-150*x[100]-150*x[101]-150*x[102]-150*x[103]-150*x[104]-150*x[105]-150*x[106]-150*x[107]-150*x[108]-150*x[109]-150*x[110]-150*x[111]-150*x[112]+x[113] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[113])

m = m 		 # model get returned when including this script.