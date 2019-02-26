using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85]
@variable(m, x[x_Idx])
b_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]
@variable(m, b[b_Idx])
set_lower_bound(x[85], 0.0)
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[15])
set_lower_bound(x[78], 0.0)
set_binary(b[42])
set_binary(b[49])
set_lower_bound(x[77], 0.0)
set_binary(b[45])
set_binary(b[41])
set_binary(b[48])
set_lower_bound(x[74], 0.0)
set_binary(b[23])
set_binary(b[64])
set_binary(b[54])
set_lower_bound(x[69], 0.0)
set_binary(b[21])
set_lower_bound(x[81], 0.0)
set_binary(b[28])
set_binary(b[36])
set_lower_bound(x[71], 0.0)
set_binary(b[22])
set_binary(b[46])
set_binary(b[53])
set_binary(b[33])
set_binary(b[56])
set_binary(b[30])
set_binary(b[29])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[32])
set_binary(b[34])
set_lower_bound(x[82], 0.0)
set_binary(b[57])
set_binary(b[16])
set_binary(b[60])
set_binary(b[13])
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_binary(b[51])
set_lower_bound(x[67], 0.0)
set_binary(b[12])
set_lower_bound(x[79], 0.0)
set_binary(b[14])
set_binary(b[20])
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[65])
set_binary(b[59])
set_binary(b[17])
set_binary(b[39])
set_lower_bound(x[68], 0.0)
set_binary(b[37])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_lower_bound(x[84], 0.0)
set_binary(b[31])
set_binary(b[62])
set_lower_bound(x[73], 0.0)
set_binary(b[52])
set_binary(b[24])
set_binary(b[55])
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_binary(b[63])
set_binary(b[26])
set_lower_bound(x[76], 0.0)
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
@constraint(m, e1, -300*x[66]-240*x[67]-210*x[68]-50*x[69]-100*x[70]-150*x[71]-30*x[72]-120*x[73]-25*x[74]-60*x[75]-300*x[76]-240*x[77]-210*x[78]-50*x[79]-100*x[80]-150*x[81]-30*x[82]-120*x[83]-25*x[84]-60*x[85]+objvar == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[66] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[67] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[68] >= 0.0)
@constraint(m, e5, -x[1]+x[5]+x[69] >= 0.0)
@constraint(m, e6, -x[2]+x[3]+x[70] >= 0.0)
@constraint(m, e7, -x[2]+x[4]+x[71] >= 0.0)
@constraint(m, e8, -x[2]+x[5]+x[72] >= 0.0)
@constraint(m, e9, -x[3]+x[4]+x[73] >= 0.0)
@constraint(m, e10, -x[3]+x[5]+x[74] >= 0.0)
@constraint(m, e11, -x[4]+x[5]+x[75] >= 0.0)
@constraint(m, e12, x[1]-x[2]+x[66] >= 0.0)
@constraint(m, e13, x[1]-x[3]+x[67] >= 0.0)
@constraint(m, e14, x[1]-x[4]+x[68] >= 0.0)
@constraint(m, e15, x[1]-x[5]+x[69] >= 0.0)
@constraint(m, e16, x[2]-x[3]+x[70] >= 0.0)
@constraint(m, e17, x[2]-x[4]+x[71] >= 0.0)
@constraint(m, e18, x[2]-x[5]+x[72] >= 0.0)
@constraint(m, e19, x[3]-x[4]+x[73] >= 0.0)
@constraint(m, e20, x[3]-x[5]+x[74] >= 0.0)
@constraint(m, e21, x[4]-x[5]+x[75] >= 0.0)
@constraint(m, e22, -x[6]+x[7]+x[76] >= 0.0)
@constraint(m, e23, -x[6]+x[8]+x[77] >= 0.0)
@constraint(m, e24, -x[6]+x[9]+x[78] >= 0.0)
@constraint(m, e25, -x[6]+x[10]+x[79] >= 0.0)
@constraint(m, e26, -x[7]+x[8]+x[80] >= 0.0)
@constraint(m, e27, -x[7]+x[9]+x[81] >= 0.0)
@constraint(m, e28, -x[7]+x[10]+x[82] >= 0.0)
@constraint(m, e29, -x[8]+x[9]+x[83] >= 0.0)
@constraint(m, e30, -x[8]+x[10]+x[84] >= 0.0)
@constraint(m, e31, -x[9]+x[10]+x[85] >= 0.0)
@constraint(m, e32, x[6]-x[7]+x[76] >= 0.0)
@constraint(m, e33, x[6]-x[8]+x[77] >= 0.0)
@constraint(m, e34, x[6]-x[9]+x[78] >= 0.0)
@constraint(m, e35, x[6]-x[10]+x[79] >= 0.0)
@constraint(m, e36, x[7]-x[8]+x[80] >= 0.0)
@constraint(m, e37, x[7]-x[9]+x[81] >= 0.0)
@constraint(m, e38, x[7]-x[10]+x[82] >= 0.0)
@constraint(m, e39, x[8]-x[9]+x[83] >= 0.0)
@constraint(m, e40, x[8]-x[10]+x[84] >= 0.0)
@constraint(m, e41, x[9]-x[10]+x[85] >= 0.0)
@constraint(m, e42, x[1]-x[2]+51*b[11] <= 45.0)
@constraint(m, e43, x[1]-x[3]+51*b[12] <= 47.0)
@constraint(m, e44, x[1]-x[4]+51*b[13] <= 47.5)
@constraint(m, e45, x[1]-x[5]+51*b[14] <= 44.0)
@constraint(m, e46, x[2]-x[3]+51*b[15] <= 46.0)
@constraint(m, e47, x[2]-x[4]+51*b[16] <= 46.5)
@constraint(m, e48, x[2]-x[5]+51*b[17] <= 43.0)
@constraint(m, e49, x[3]-x[4]+51*b[18] <= 48.5)
@constraint(m, e50, x[3]-x[5]+51*b[19] <= 45.0)
@constraint(m, e51, x[4]-x[5]+51*b[20] <= 45.5)
@constraint(m, e52, -x[1]+x[2]+51*b[21] <= 45.0)
@constraint(m, e53, -x[1]+x[3]+51*b[22] <= 47.0)
@constraint(m, e54, -x[1]+x[4]+51*b[23] <= 47.5)
@constraint(m, e55, -x[1]+x[5]+51*b[24] <= 44.0)
@constraint(m, e56, -x[2]+x[3]+51*b[25] <= 46.0)
@constraint(m, e57, -x[2]+x[4]+51*b[26] <= 46.5)
@constraint(m, e58, -x[2]+x[5]+51*b[27] <= 43.0)
@constraint(m, e59, -x[3]+x[4]+51*b[28] <= 48.5)
@constraint(m, e60, -x[3]+x[5]+51*b[29] <= 45.0)
@constraint(m, e61, -x[4]+x[5]+51*b[30] <= 45.5)
@constraint(m, e62, x[6]-x[7]+86*b[31] <= 80.5)
@constraint(m, e63, x[6]-x[8]+86*b[32] <= 81.5)
@constraint(m, e64, x[6]-x[9]+86*b[33] <= 81.5)
@constraint(m, e65, x[6]-x[10]+86*b[34] <= 79.5)
@constraint(m, e66, x[7]-x[8]+86*b[35] <= 82.0)
@constraint(m, e67, x[7]-x[9]+86*b[36] <= 82.0)
@constraint(m, e68, x[7]-x[10]+86*b[37] <= 80.0)
@constraint(m, e69, x[8]-x[9]+86*b[38] <= 83.0)
@constraint(m, e70, x[8]-x[10]+86*b[39] <= 81.0)
@constraint(m, e71, x[9]-x[10]+86*b[40] <= 81.0)
@constraint(m, e72, -x[6]+x[7]+86*b[41] <= 80.5)
@constraint(m, e73, -x[6]+x[8]+86*b[42] <= 81.5)
@constraint(m, e74, -x[6]+x[9]+86*b[43] <= 81.5)
@constraint(m, e75, -x[6]+x[10]+86*b[44] <= 79.5)
@constraint(m, e76, -x[7]+x[8]+86*b[45] <= 82.0)
@constraint(m, e77, -x[7]+x[9]+86*b[46] <= 82.0)
@constraint(m, e78, -x[7]+x[10]+86*b[47] <= 80.0)
@constraint(m, e79, -x[8]+x[9]+86*b[48] <= 83.0)
@constraint(m, e80, -x[8]+x[10]+86*b[49] <= 81.0)
@constraint(m, e81, -x[9]+x[10]+86*b[50] <= 81.0)
@constraint(m, e82, b[11]+b[21]+b[31]+b[41] == 1.0)
@constraint(m, e83, b[12]+b[22]+b[32]+b[42] == 1.0)
@constraint(m, e84, b[13]+b[23]+b[33]+b[43] == 1.0)
@constraint(m, e85, b[14]+b[24]+b[34]+b[44] == 1.0)
@constraint(m, e86, b[15]+b[25]+b[35]+b[45] == 1.0)
@constraint(m, e87, b[16]+b[26]+b[36]+b[46] == 1.0)
@constraint(m, e88, b[17]+b[27]+b[37]+b[47] == 1.0)
@constraint(m, e89, b[18]+b[28]+b[38]+b[48] == 1.0)
@constraint(m, e90, b[19]+b[29]+b[39]+b[49] == 1.0)
@constraint(m, e91, b[20]+b[30]+b[40]+b[50] == 1.0)
@NLconstraint(m, e92,  ((-17.5)+x[1])^2+ ((-7)+x[6])^2+7964*b[51] <= 8000.0)
@NLconstraint(m, e93,  ((-18.5)+x[2])^2+ ((-7.5)+x[7])^2+7808*b[52] <= 7844.0)
@NLconstraint(m, e94,  ((-16.5)+x[3])^2+ ((-8.5)+x[8])^2+8128*b[53] <= 8164.0)
@NLconstraint(m, e95,  ((-16)+x[4])^2+ ((-8.5)+x[9])^2+8213*b[54] <= 8249.0)
@NLconstraint(m, e96,  ((-19.5)+x[5])^2+ ((-6.5)+x[10])^2+7660*b[55] <= 7696.0)
@NLconstraint(m, e97,  ((-52.5)+x[1])^2+ ((-77)+x[6])^2+6481*b[56] <= 6581.0)
@NLconstraint(m, e98,  ((-53.5)+x[2])^2+ ((-77.5)+x[7])^2+6622*b[57] <= 6722.0)
@NLconstraint(m, e99,  ((-51.5)+x[3])^2+ ((-78.5)+x[8])^2+6910*b[58] <= 7010.0)
@NLconstraint(m, e100,  ((-51)+x[4])^2+ ((-78.5)+x[9])^2+6910*b[59] <= 7010.0)
@NLconstraint(m, e101,  ((-54.5)+x[5])^2+ ((-76.5)+x[10])^2+6342*b[60] <= 6442.0)
@NLconstraint(m, e102,  ((-32.5)+x[1])^2+ ((-47)+x[6])^2+2209*b[61] <= 2225.0)
@NLconstraint(m, e103,  ((-33.5)+x[2])^2+ ((-47.5)+x[7])^2+2194*b[62] <= 2210.0)
@NLconstraint(m, e104,  ((-31.5)+x[3])^2+ ((-48.5)+x[8])^2+2562*b[63] <= 2578.0)
@NLconstraint(m, e105,  ((-31)+x[4])^2+ ((-48.5)+x[9])^2+2617*b[64] <= 2633.0)
@NLconstraint(m, e106,  ((-34.5)+x[5])^2+ ((-46.5)+x[10])^2+2025*b[65] <= 2041.0)
@NLconstraint(m, e107,  ((-17.5)+x[1])^2+ ((-13)+x[6])^2+7040*b[51] <= 7076.0)
@NLconstraint(m, e108,  ((-18.5)+x[2])^2+ ((-12.5)+x[7])^2+7033*b[52] <= 7069.0)
@NLconstraint(m, e109,  ((-16.5)+x[3])^2+ ((-11.5)+x[8])^2+7657*b[53] <= 7693.0)
@NLconstraint(m, e110,  ((-16)+x[4])^2+ ((-11.5)+x[9])^2+7742*b[54] <= 7778.0)
@NLconstraint(m, e111,  ((-19.5)+x[5])^2+ ((-13.5)+x[10])^2+6589*b[55] <= 6625.0)
@NLconstraint(m, e112,  ((-52.5)+x[1])^2+ ((-83)+x[6])^2+7357*b[56] <= 7457.0)
@NLconstraint(m, e113,  ((-53.5)+x[2])^2+ ((-82.5)+x[7])^2+7357*b[57] <= 7457.0)
@NLconstraint(m, e114,  ((-51.5)+x[3])^2+ ((-81.5)+x[8])^2+7357*b[58] <= 7457.0)
@NLconstraint(m, e115,  ((-51)+x[4])^2+ ((-81.5)+x[9])^2+7357*b[59] <= 7457.0)
@NLconstraint(m, e116,  ((-54.5)+x[5])^2+ ((-83.5)+x[10])^2+7357*b[60] <= 7457.0)
@NLconstraint(m, e117,  ((-32.5)+x[1])^2+ ((-53)+x[6])^2+2725*b[61] <= 2741.0)
@NLconstraint(m, e118,  ((-33.5)+x[2])^2+ ((-52.5)+x[7])^2+2629*b[62] <= 2645.0)
@NLconstraint(m, e119,  ((-31.5)+x[3])^2+ ((-51.5)+x[8])^2+2829*b[63] <= 2845.0)
@NLconstraint(m, e120,  ((-31)+x[4])^2+ ((-51.5)+x[9])^2+2884*b[64] <= 2900.0)
@NLconstraint(m, e121,  ((-34.5)+x[5])^2+ ((-53.5)+x[10])^2+2541*b[65] <= 2557.0)
@NLconstraint(m, e122,  ((-12.5)+x[1])^2+ ((-7)+x[6])^2+8389*b[51] <= 8425.0)
@NLconstraint(m, e123,  ((-11.5)+x[2])^2+ ((-7.5)+x[7])^2+8389*b[52] <= 8425.0)
@NLconstraint(m, e124,  ((-13.5)+x[3])^2+ ((-8.5)+x[8])^2+8389*b[53] <= 8425.0)
@NLconstraint(m, e125,  ((-14)+x[4])^2+ ((-8.5)+x[9])^2+8389*b[54] <= 8425.0)
@NLconstraint(m, e126,  ((-10.5)+x[5])^2+ ((-6.5)+x[10])^2+8389*b[55] <= 8425.0)
@NLconstraint(m, e127,  ((-47.5)+x[1])^2+ ((-77)+x[6])^2+6096*b[56] <= 6196.0)
@NLconstraint(m, e128,  ((-46.5)+x[2])^2+ ((-77.5)+x[7])^2+6097*b[57] <= 6197.0)
@NLconstraint(m, e129,  ((-48.5)+x[3])^2+ ((-78.5)+x[8])^2+6673*b[58] <= 6773.0)
@NLconstraint(m, e130,  ((-49)+x[4])^2+ ((-78.5)+x[9])^2+6750*b[59] <= 6850.0)
@NLconstraint(m, e131,  ((-45.5)+x[5])^2+ ((-76.5)+x[10])^2+5685*b[60] <= 5785.0)
@NLconstraint(m, e132,  ((-27.5)+x[1])^2+ ((-47)+x[6])^2+2484*b[61] <= 2500.0)
@NLconstraint(m, e133,  ((-26.5)+x[2])^2+ ((-47.5)+x[7])^2+2565*b[62] <= 2581.0)
@NLconstraint(m, e134,  ((-28.5)+x[3])^2+ ((-48.5)+x[8])^2+2733*b[63] <= 2749.0)
@NLconstraint(m, e135,  ((-29)+x[4])^2+ ((-48.5)+x[9])^2+2733*b[64] <= 2749.0)
@NLconstraint(m, e136,  ((-25.5)+x[5])^2+ ((-46.5)+x[10])^2+2484*b[65] <= 2500.0)
@NLconstraint(m, e137,  ((-12.5)+x[1])^2+ ((-13)+x[6])^2+7465*b[51] <= 7501.0)
@NLconstraint(m, e138,  ((-11.5)+x[2])^2+ ((-12.5)+x[7])^2+7614*b[52] <= 7650.0)
@NLconstraint(m, e139,  ((-13.5)+x[3])^2+ ((-11.5)+x[8])^2+7918*b[53] <= 7954.0)
@NLconstraint(m, e140,  ((-14)+x[4])^2+ ((-11.5)+x[9])^2+7918*b[54] <= 7954.0)
@NLconstraint(m, e141,  ((-10.5)+x[5])^2+ ((-13.5)+x[10])^2+7318*b[55] <= 7354.0)
@NLconstraint(m, e142,  ((-47.5)+x[1])^2+ ((-83)+x[6])^2+6972*b[56] <= 7072.0)
@NLconstraint(m, e143,  ((-46.5)+x[2])^2+ ((-82.5)+x[7])^2+6832*b[57] <= 6932.0)
@NLconstraint(m, e144,  ((-48.5)+x[3])^2+ ((-81.5)+x[8])^2+7120*b[58] <= 7220.0)
@NLconstraint(m, e145,  ((-49)+x[4])^2+ ((-81.5)+x[9])^2+7197*b[59] <= 7297.0)
@NLconstraint(m, e146,  ((-45.5)+x[5])^2+ ((-83.5)+x[10])^2+6700*b[60] <= 6800.0)
@NLconstraint(m, e147,  ((-27.5)+x[1])^2+ ((-53)+x[6])^2+3000*b[61] <= 3016.0)
@NLconstraint(m, e148,  ((-26.5)+x[2])^2+ ((-52.5)+x[7])^2+3000*b[62] <= 3016.0)
@NLconstraint(m, e149,  ((-28.5)+x[3])^2+ ((-51.5)+x[8])^2+3000*b[63] <= 3016.0)
@NLconstraint(m, e150,  ((-29)+x[4])^2+ ((-51.5)+x[9])^2+3000*b[64] <= 3016.0)
@NLconstraint(m, e151,  ((-25.5)+x[5])^2+ ((-53.5)+x[10])^2+3000*b[65] <= 3016.0)
@constraint(m, e152, b[51]+b[56]+b[61] == 1.0)
@constraint(m, e153, b[52]+b[57]+b[62] == 1.0)
@constraint(m, e154, b[53]+b[58]+b[63] == 1.0)
@constraint(m, e155, b[54]+b[59]+b[64] == 1.0)
@constraint(m, e156, b[55]+b[60]+b[65] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.