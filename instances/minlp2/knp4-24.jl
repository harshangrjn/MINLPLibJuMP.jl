using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -2.0)
set_upper_bound(x[1], 2.0)
set_lower_bound(x[2], -2.0)
set_upper_bound(x[2], 2.0)
set_lower_bound(x[3], -2.0)
set_upper_bound(x[3], 2.0)
set_lower_bound(x[4], -2.0)
set_upper_bound(x[4], 2.0)
set_lower_bound(x[5], -2.0)
set_upper_bound(x[5], 2.0)
set_lower_bound(x[6], -2.0)
set_upper_bound(x[6], 2.0)
set_lower_bound(x[7], -2.0)
set_upper_bound(x[7], 2.0)
set_lower_bound(x[8], -2.0)
set_upper_bound(x[8], 2.0)
set_lower_bound(x[9], -2.0)
set_upper_bound(x[9], 2.0)
set_lower_bound(x[10], -2.0)
set_upper_bound(x[10], 2.0)
set_lower_bound(x[11], -2.0)
set_upper_bound(x[11], 2.0)
set_lower_bound(x[12], -2.0)
set_upper_bound(x[12], 2.0)
set_lower_bound(x[13], -2.0)
set_upper_bound(x[13], 2.0)
set_lower_bound(x[14], -2.0)
set_upper_bound(x[14], 2.0)
set_lower_bound(x[15], -2.0)
set_upper_bound(x[15], 2.0)
set_lower_bound(x[16], -2.0)
set_upper_bound(x[16], 2.0)
set_lower_bound(x[17], -2.0)
set_upper_bound(x[17], 2.0)
set_lower_bound(x[18], -2.0)
set_upper_bound(x[18], 2.0)
set_lower_bound(x[19], -2.0)
set_upper_bound(x[19], 2.0)
set_lower_bound(x[20], -2.0)
set_upper_bound(x[20], 2.0)
set_lower_bound(x[21], -2.0)
set_upper_bound(x[21], 2.0)
set_lower_bound(x[22], -2.0)
set_upper_bound(x[22], 2.0)
set_lower_bound(x[23], -2.0)
set_upper_bound(x[23], 2.0)
set_lower_bound(x[24], -2.0)
set_upper_bound(x[24], 2.0)
set_lower_bound(x[25], -2.0)
set_upper_bound(x[25], 2.0)
set_lower_bound(x[26], -2.0)
set_upper_bound(x[26], 2.0)
set_lower_bound(x[27], -2.0)
set_upper_bound(x[27], 2.0)
set_lower_bound(x[28], -2.0)
set_upper_bound(x[28], 2.0)
set_lower_bound(x[29], -2.0)
set_upper_bound(x[29], 2.0)
set_lower_bound(x[30], -2.0)
set_upper_bound(x[30], 2.0)
set_lower_bound(x[31], -2.0)
set_upper_bound(x[31], 2.0)
set_lower_bound(x[32], -2.0)
set_upper_bound(x[32], 2.0)
set_lower_bound(x[33], -2.0)
set_upper_bound(x[33], 2.0)
set_lower_bound(x[34], -2.0)
set_upper_bound(x[34], 2.0)
set_lower_bound(x[35], -2.0)
set_upper_bound(x[35], 2.0)
set_lower_bound(x[36], -2.0)
set_upper_bound(x[36], 2.0)
set_lower_bound(x[37], -2.0)
set_upper_bound(x[37], 2.0)
set_lower_bound(x[38], -2.0)
set_upper_bound(x[38], 2.0)
set_lower_bound(x[39], -2.0)
set_upper_bound(x[39], 2.0)
set_lower_bound(x[40], -2.0)
set_upper_bound(x[40], 2.0)
set_lower_bound(x[41], -2.0)
set_upper_bound(x[41], 2.0)
set_lower_bound(x[42], -2.0)
set_upper_bound(x[42], 2.0)
set_lower_bound(x[43], -2.0)
set_upper_bound(x[43], 2.0)
set_lower_bound(x[44], -2.0)
set_upper_bound(x[44], 2.0)
set_lower_bound(x[45], -2.0)
set_upper_bound(x[45], 2.0)
set_lower_bound(x[46], -2.0)
set_upper_bound(x[46], 2.0)
set_lower_bound(x[47], -2.0)
set_upper_bound(x[47], 2.0)
set_lower_bound(x[48], -2.0)
set_upper_bound(x[48], 2.0)
set_lower_bound(x[49], -2.0)
set_upper_bound(x[49], 2.0)
set_lower_bound(x[50], -2.0)
set_upper_bound(x[50], 2.0)
set_lower_bound(x[51], -2.0)
set_upper_bound(x[51], 2.0)
set_lower_bound(x[52], -2.0)
set_upper_bound(x[52], 2.0)
set_lower_bound(x[53], -2.0)
set_upper_bound(x[53], 2.0)
set_lower_bound(x[54], -2.0)
set_upper_bound(x[54], 2.0)
set_lower_bound(x[55], -2.0)
set_upper_bound(x[55], 2.0)
set_lower_bound(x[56], -2.0)
set_upper_bound(x[56], 2.0)
set_lower_bound(x[57], -2.0)
set_upper_bound(x[57], 2.0)
set_lower_bound(x[58], -2.0)
set_upper_bound(x[58], 2.0)
set_lower_bound(x[59], -2.0)
set_upper_bound(x[59], 2.0)
set_lower_bound(x[60], -2.0)
set_upper_bound(x[60], 2.0)
set_lower_bound(x[61], -2.0)
set_upper_bound(x[61], 2.0)
set_lower_bound(x[62], -2.0)
set_upper_bound(x[62], 2.0)
set_lower_bound(x[63], -2.0)
set_upper_bound(x[63], 2.0)
set_lower_bound(x[64], -2.0)
set_upper_bound(x[64], 2.0)
set_lower_bound(x[65], -2.0)
set_upper_bound(x[65], 2.0)
set_lower_bound(x[66], -2.0)
set_upper_bound(x[66], 2.0)
set_lower_bound(x[67], -2.0)
set_upper_bound(x[67], 2.0)
set_lower_bound(x[68], -2.0)
set_upper_bound(x[68], 2.0)
set_lower_bound(x[69], -2.0)
set_upper_bound(x[69], 2.0)
set_lower_bound(x[70], -2.0)
set_upper_bound(x[70], 2.0)
set_lower_bound(x[71], -2.0)
set_upper_bound(x[71], 2.0)
set_lower_bound(x[72], -2.0)
set_upper_bound(x[72], 2.0)
set_lower_bound(x[73], -2.0)
set_upper_bound(x[73], 2.0)
set_lower_bound(x[74], -2.0)
set_upper_bound(x[74], 2.0)
set_lower_bound(x[75], -2.0)
set_upper_bound(x[75], 2.0)
set_lower_bound(x[76], -2.0)
set_upper_bound(x[76], 2.0)
set_lower_bound(x[77], -2.0)
set_upper_bound(x[77], 2.0)
set_lower_bound(x[78], -2.0)
set_upper_bound(x[78], 2.0)
set_lower_bound(x[79], -2.0)
set_upper_bound(x[79], 2.0)
set_lower_bound(x[80], -2.0)
set_upper_bound(x[80], 2.0)
set_lower_bound(x[81], -2.0)
set_upper_bound(x[81], 2.0)
set_lower_bound(x[82], -2.0)
set_upper_bound(x[82], 2.0)
set_lower_bound(x[83], -2.0)
set_upper_bound(x[83], 2.0)
set_lower_bound(x[84], -2.0)
set_upper_bound(x[84], 2.0)
set_lower_bound(x[85], -2.0)
set_upper_bound(x[85], 2.0)
set_lower_bound(x[86], -2.0)
set_upper_bound(x[86], 2.0)
set_lower_bound(x[87], -2.0)
set_upper_bound(x[87], 2.0)
set_lower_bound(x[88], -2.0)
set_upper_bound(x[88], 2.0)
set_lower_bound(x[89], -2.0)
set_upper_bound(x[89], 2.0)
set_lower_bound(x[90], -2.0)
set_upper_bound(x[90], 2.0)
set_lower_bound(x[91], -2.0)
set_upper_bound(x[91], 2.0)
set_lower_bound(x[92], -2.0)
set_upper_bound(x[92], 2.0)
set_lower_bound(x[93], -2.0)
set_upper_bound(x[93], 2.0)
set_lower_bound(x[94], -2.0)
set_upper_bound(x[94], 2.0)
set_lower_bound(x[95], -2.0)
set_upper_bound(x[95], 2.0)
set_lower_bound(x[96], -2.0)
set_upper_bound(x[96], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2 == 4.0)
@NLconstraint(m, e2,  (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2 == 4.0)
@NLconstraint(m, e3,  (x[9])^2+ (x[10])^2+ (x[11])^2+ (x[12])^2 == 4.0)
@NLconstraint(m, e4,  (x[13])^2+ (x[14])^2+ (x[15])^2+ (x[16])^2 == 4.0)
@NLconstraint(m, e5,  (x[17])^2+ (x[18])^2+ (x[19])^2+ (x[20])^2 == 4.0)
@NLconstraint(m, e6,  (x[21])^2+ (x[22])^2+ (x[23])^2+ (x[24])^2 == 4.0)
@NLconstraint(m, e7,  (x[25])^2+ (x[26])^2+ (x[27])^2+ (x[28])^2 == 4.0)
@NLconstraint(m, e8,  (x[29])^2+ (x[30])^2+ (x[31])^2+ (x[32])^2 == 4.0)
@NLconstraint(m, e9,  (x[33])^2+ (x[34])^2+ (x[35])^2+ (x[36])^2 == 4.0)
@NLconstraint(m, e10,  (x[37])^2+ (x[38])^2+ (x[39])^2+ (x[40])^2 == 4.0)
@NLconstraint(m, e11,  (x[41])^2+ (x[42])^2+ (x[43])^2+ (x[44])^2 == 4.0)
@NLconstraint(m, e12,  (x[45])^2+ (x[46])^2+ (x[47])^2+ (x[48])^2 == 4.0)
@NLconstraint(m, e13,  (x[49])^2+ (x[50])^2+ (x[51])^2+ (x[52])^2 == 4.0)
@NLconstraint(m, e14,  (x[53])^2+ (x[54])^2+ (x[55])^2+ (x[56])^2 == 4.0)
@NLconstraint(m, e15,  (x[57])^2+ (x[58])^2+ (x[59])^2+ (x[60])^2 == 4.0)
@NLconstraint(m, e16,  (x[61])^2+ (x[62])^2+ (x[63])^2+ (x[64])^2 == 4.0)
@NLconstraint(m, e17,  (x[65])^2+ (x[66])^2+ (x[67])^2+ (x[68])^2 == 4.0)
@NLconstraint(m, e18,  (x[69])^2+ (x[70])^2+ (x[71])^2+ (x[72])^2 == 4.0)
@NLconstraint(m, e19,  (x[73])^2+ (x[74])^2+ (x[75])^2+ (x[76])^2 == 4.0)
@NLconstraint(m, e20,  (x[77])^2+ (x[78])^2+ (x[79])^2+ (x[80])^2 == 4.0)
@NLconstraint(m, e21,  (x[81])^2+ (x[82])^2+ (x[83])^2+ (x[84])^2 == 4.0)
@NLconstraint(m, e22,  (x[85])^2+ (x[86])^2+ (x[87])^2+ (x[88])^2 == 4.0)
@NLconstraint(m, e23,  (x[89])^2+ (x[90])^2+ (x[91])^2+ (x[92])^2 == 4.0)
@NLconstraint(m, e24,  (x[93])^2+ (x[94])^2+ (x[95])^2+ (x[96])^2 == 4.0)
@NLconstraint(m, e25,  (x[1]-x[5])^2+ (x[2]-x[6])^2+ (x[3]-x[7])^2+ (x[4]-x[8])^2-4*objvar >= 0.0)
@NLconstraint(m, e26,  (x[1]-x[9])^2+ (x[2]-x[10])^2+ (x[3]-x[11])^2+ (x[4]-x[12])^2-4*objvar >= 0.0)
@NLconstraint(m, e27,  (x[1]-x[13])^2+ (x[2]-x[14])^2+ (x[3]-x[15])^2+ (x[4]-x[16])^2-4*objvar >= 0.0)
@NLconstraint(m, e28,  (x[1]-x[17])^2+ (x[2]-x[18])^2+ (x[3]-x[19])^2+ (x[4]-x[20])^2-4*objvar >= 0.0)
@NLconstraint(m, e29,  (x[1]-x[21])^2+ (x[2]-x[22])^2+ (x[3]-x[23])^2+ (x[4]-x[24])^2-4*objvar >= 0.0)
@NLconstraint(m, e30,  (x[1]-x[25])^2+ (x[2]-x[26])^2+ (x[3]-x[27])^2+ (x[4]-x[28])^2-4*objvar >= 0.0)
@NLconstraint(m, e31,  (x[1]-x[29])^2+ (x[2]-x[30])^2+ (x[3]-x[31])^2+ (x[4]-x[32])^2-4*objvar >= 0.0)
@NLconstraint(m, e32,  (x[1]-x[33])^2+ (x[2]-x[34])^2+ (x[3]-x[35])^2+ (x[4]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e33,  (x[1]-x[37])^2+ (x[2]-x[38])^2+ (x[3]-x[39])^2+ (x[4]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e34,  (x[1]-x[41])^2+ (x[2]-x[42])^2+ (x[3]-x[43])^2+ (x[4]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e35,  (x[1]-x[45])^2+ (x[2]-x[46])^2+ (x[3]-x[47])^2+ (x[4]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e36,  (x[1]-x[49])^2+ (x[2]-x[50])^2+ (x[3]-x[51])^2+ (x[4]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e37,  (x[1]-x[53])^2+ (x[2]-x[54])^2+ (x[3]-x[55])^2+ (x[4]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e38,  (x[1]-x[57])^2+ (x[2]-x[58])^2+ (x[3]-x[59])^2+ (x[4]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e39,  (x[1]-x[61])^2+ (x[2]-x[62])^2+ (x[3]-x[63])^2+ (x[4]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e40,  (x[1]-x[65])^2+ (x[2]-x[66])^2+ (x[3]-x[67])^2+ (x[4]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e41,  (x[1]-x[69])^2+ (x[2]-x[70])^2+ (x[3]-x[71])^2+ (x[4]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e42,  (x[1]-x[73])^2+ (x[2]-x[74])^2+ (x[3]-x[75])^2+ (x[4]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e43,  (x[1]-x[77])^2+ (x[2]-x[78])^2+ (x[3]-x[79])^2+ (x[4]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e44,  (x[1]-x[81])^2+ (x[2]-x[82])^2+ (x[3]-x[83])^2+ (x[4]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e45,  (x[1]-x[85])^2+ (x[2]-x[86])^2+ (x[3]-x[87])^2+ (x[4]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e46,  (x[1]-x[89])^2+ (x[2]-x[90])^2+ (x[3]-x[91])^2+ (x[4]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e47,  (x[1]-x[93])^2+ (x[2]-x[94])^2+ (x[3]-x[95])^2+ (x[4]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e48,  (x[5]-x[9])^2+ (x[6]-x[10])^2+ (x[7]-x[11])^2+ (x[8]-x[12])^2-4*objvar >= 0.0)
@NLconstraint(m, e49,  (x[5]-x[13])^2+ (x[6]-x[14])^2+ (x[7]-x[15])^2+ (x[8]-x[16])^2-4*objvar >= 0.0)
@NLconstraint(m, e50,  (x[5]-x[17])^2+ (x[6]-x[18])^2+ (x[7]-x[19])^2+ (x[8]-x[20])^2-4*objvar >= 0.0)
@NLconstraint(m, e51,  (x[5]-x[21])^2+ (x[6]-x[22])^2+ (x[7]-x[23])^2+ (x[8]-x[24])^2-4*objvar >= 0.0)
@NLconstraint(m, e52,  (x[5]-x[25])^2+ (x[6]-x[26])^2+ (x[7]-x[27])^2+ (x[8]-x[28])^2-4*objvar >= 0.0)
@NLconstraint(m, e53,  (x[5]-x[29])^2+ (x[6]-x[30])^2+ (x[7]-x[31])^2+ (x[8]-x[32])^2-4*objvar >= 0.0)
@NLconstraint(m, e54,  (x[5]-x[33])^2+ (x[6]-x[34])^2+ (x[7]-x[35])^2+ (x[8]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e55,  (x[5]-x[37])^2+ (x[6]-x[38])^2+ (x[7]-x[39])^2+ (x[8]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e56,  (x[5]-x[41])^2+ (x[6]-x[42])^2+ (x[7]-x[43])^2+ (x[8]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e57,  (x[5]-x[45])^2+ (x[6]-x[46])^2+ (x[7]-x[47])^2+ (x[8]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e58,  (x[5]-x[49])^2+ (x[6]-x[50])^2+ (x[7]-x[51])^2+ (x[8]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e59,  (x[5]-x[53])^2+ (x[6]-x[54])^2+ (x[7]-x[55])^2+ (x[8]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e60,  (x[5]-x[57])^2+ (x[6]-x[58])^2+ (x[7]-x[59])^2+ (x[8]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e61,  (x[5]-x[61])^2+ (x[6]-x[62])^2+ (x[7]-x[63])^2+ (x[8]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e62,  (x[5]-x[65])^2+ (x[6]-x[66])^2+ (x[7]-x[67])^2+ (x[8]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e63,  (x[5]-x[69])^2+ (x[6]-x[70])^2+ (x[7]-x[71])^2+ (x[8]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e64,  (x[5]-x[73])^2+ (x[6]-x[74])^2+ (x[7]-x[75])^2+ (x[8]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e65,  (x[5]-x[77])^2+ (x[6]-x[78])^2+ (x[7]-x[79])^2+ (x[8]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e66,  (x[5]-x[81])^2+ (x[6]-x[82])^2+ (x[7]-x[83])^2+ (x[8]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e67,  (x[5]-x[85])^2+ (x[6]-x[86])^2+ (x[7]-x[87])^2+ (x[8]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e68,  (x[5]-x[89])^2+ (x[6]-x[90])^2+ (x[7]-x[91])^2+ (x[8]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e69,  (x[5]-x[93])^2+ (x[6]-x[94])^2+ (x[7]-x[95])^2+ (x[8]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e70,  (x[9]-x[13])^2+ (x[10]-x[14])^2+ (x[11]-x[15])^2+ (x[12]-x[16])^2-4*objvar >= 0.0)
@NLconstraint(m, e71,  (x[9]-x[17])^2+ (x[10]-x[18])^2+ (x[11]-x[19])^2+ (x[12]-x[20])^2-4*objvar >= 0.0)
@NLconstraint(m, e72,  (x[9]-x[21])^2+ (x[10]-x[22])^2+ (x[11]-x[23])^2+ (x[12]-x[24])^2-4*objvar >= 0.0)
@NLconstraint(m, e73,  (x[9]-x[25])^2+ (x[10]-x[26])^2+ (x[11]-x[27])^2+ (x[12]-x[28])^2-4*objvar >= 0.0)
@NLconstraint(m, e74,  (x[9]-x[29])^2+ (x[10]-x[30])^2+ (x[11]-x[31])^2+ (x[12]-x[32])^2-4*objvar >= 0.0)
@NLconstraint(m, e75,  (x[9]-x[33])^2+ (x[10]-x[34])^2+ (x[11]-x[35])^2+ (x[12]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e76,  (x[9]-x[37])^2+ (x[10]-x[38])^2+ (x[11]-x[39])^2+ (x[12]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e77,  (x[9]-x[41])^2+ (x[10]-x[42])^2+ (x[11]-x[43])^2+ (x[12]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e78,  (x[9]-x[45])^2+ (x[10]-x[46])^2+ (x[11]-x[47])^2+ (x[12]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e79,  (x[9]-x[49])^2+ (x[10]-x[50])^2+ (x[11]-x[51])^2+ (x[12]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e80,  (x[9]-x[53])^2+ (x[10]-x[54])^2+ (x[11]-x[55])^2+ (x[12]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e81,  (x[9]-x[57])^2+ (x[10]-x[58])^2+ (x[11]-x[59])^2+ (x[12]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e82,  (x[9]-x[61])^2+ (x[10]-x[62])^2+ (x[11]-x[63])^2+ (x[12]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e83,  (x[9]-x[65])^2+ (x[10]-x[66])^2+ (x[11]-x[67])^2+ (x[12]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e84,  (x[9]-x[69])^2+ (x[10]-x[70])^2+ (x[11]-x[71])^2+ (x[12]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e85,  (x[9]-x[73])^2+ (x[10]-x[74])^2+ (x[11]-x[75])^2+ (x[12]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e86,  (x[9]-x[77])^2+ (x[10]-x[78])^2+ (x[11]-x[79])^2+ (x[12]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e87,  (x[9]-x[81])^2+ (x[10]-x[82])^2+ (x[11]-x[83])^2+ (x[12]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e88,  (x[9]-x[85])^2+ (x[10]-x[86])^2+ (x[11]-x[87])^2+ (x[12]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e89,  (x[9]-x[89])^2+ (x[10]-x[90])^2+ (x[11]-x[91])^2+ (x[12]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e90,  (x[9]-x[93])^2+ (x[10]-x[94])^2+ (x[11]-x[95])^2+ (x[12]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e91,  (x[13]-x[17])^2+ (x[14]-x[18])^2+ (x[15]-x[19])^2+ (x[16]-x[20])^2-4*objvar >= 0.0)
@NLconstraint(m, e92,  (x[13]-x[21])^2+ (x[14]-x[22])^2+ (x[15]-x[23])^2+ (x[16]-x[24])^2-4*objvar >= 0.0)
@NLconstraint(m, e93,  (x[13]-x[25])^2+ (x[14]-x[26])^2+ (x[15]-x[27])^2+ (x[16]-x[28])^2-4*objvar >= 0.0)
@NLconstraint(m, e94,  (x[13]-x[29])^2+ (x[14]-x[30])^2+ (x[15]-x[31])^2+ (x[16]-x[32])^2-4*objvar >= 0.0)
@NLconstraint(m, e95,  (x[13]-x[33])^2+ (x[14]-x[34])^2+ (x[15]-x[35])^2+ (x[16]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e96,  (x[13]-x[37])^2+ (x[14]-x[38])^2+ (x[15]-x[39])^2+ (x[16]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e97,  (x[13]-x[41])^2+ (x[14]-x[42])^2+ (x[15]-x[43])^2+ (x[16]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e98,  (x[13]-x[45])^2+ (x[14]-x[46])^2+ (x[15]-x[47])^2+ (x[16]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e99,  (x[13]-x[49])^2+ (x[14]-x[50])^2+ (x[15]-x[51])^2+ (x[16]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e100,  (x[13]-x[53])^2+ (x[14]-x[54])^2+ (x[15]-x[55])^2+ (x[16]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e101,  (x[13]-x[57])^2+ (x[14]-x[58])^2+ (x[15]-x[59])^2+ (x[16]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e102,  (x[13]-x[61])^2+ (x[14]-x[62])^2+ (x[15]-x[63])^2+ (x[16]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e103,  (x[13]-x[65])^2+ (x[14]-x[66])^2+ (x[15]-x[67])^2+ (x[16]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e104,  (x[13]-x[69])^2+ (x[14]-x[70])^2+ (x[15]-x[71])^2+ (x[16]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e105,  (x[13]-x[73])^2+ (x[14]-x[74])^2+ (x[15]-x[75])^2+ (x[16]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e106,  (x[13]-x[77])^2+ (x[14]-x[78])^2+ (x[15]-x[79])^2+ (x[16]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e107,  (x[13]-x[81])^2+ (x[14]-x[82])^2+ (x[15]-x[83])^2+ (x[16]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e108,  (x[13]-x[85])^2+ (x[14]-x[86])^2+ (x[15]-x[87])^2+ (x[16]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e109,  (x[13]-x[89])^2+ (x[14]-x[90])^2+ (x[15]-x[91])^2+ (x[16]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e110,  (x[13]-x[93])^2+ (x[14]-x[94])^2+ (x[15]-x[95])^2+ (x[16]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e111,  (x[17]-x[21])^2+ (x[18]-x[22])^2+ (x[19]-x[23])^2+ (x[20]-x[24])^2-4*objvar >= 0.0)
@NLconstraint(m, e112,  (x[17]-x[25])^2+ (x[18]-x[26])^2+ (x[19]-x[27])^2+ (x[20]-x[28])^2-4*objvar >= 0.0)
@NLconstraint(m, e113,  (x[17]-x[29])^2+ (x[18]-x[30])^2+ (x[19]-x[31])^2+ (x[20]-x[32])^2-4*objvar >= 0.0)
@NLconstraint(m, e114,  (x[17]-x[33])^2+ (x[18]-x[34])^2+ (x[19]-x[35])^2+ (x[20]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e115,  (x[17]-x[37])^2+ (x[18]-x[38])^2+ (x[19]-x[39])^2+ (x[20]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e116,  (x[17]-x[41])^2+ (x[18]-x[42])^2+ (x[19]-x[43])^2+ (x[20]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e117,  (x[17]-x[45])^2+ (x[18]-x[46])^2+ (x[19]-x[47])^2+ (x[20]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e118,  (x[17]-x[49])^2+ (x[18]-x[50])^2+ (x[19]-x[51])^2+ (x[20]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e119,  (x[17]-x[53])^2+ (x[18]-x[54])^2+ (x[19]-x[55])^2+ (x[20]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e120,  (x[17]-x[57])^2+ (x[18]-x[58])^2+ (x[19]-x[59])^2+ (x[20]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e121,  (x[17]-x[61])^2+ (x[18]-x[62])^2+ (x[19]-x[63])^2+ (x[20]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e122,  (x[17]-x[65])^2+ (x[18]-x[66])^2+ (x[19]-x[67])^2+ (x[20]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e123,  (x[17]-x[69])^2+ (x[18]-x[70])^2+ (x[19]-x[71])^2+ (x[20]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e124,  (x[17]-x[73])^2+ (x[18]-x[74])^2+ (x[19]-x[75])^2+ (x[20]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e125,  (x[17]-x[77])^2+ (x[18]-x[78])^2+ (x[19]-x[79])^2+ (x[20]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e126,  (x[17]-x[81])^2+ (x[18]-x[82])^2+ (x[19]-x[83])^2+ (x[20]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e127,  (x[17]-x[85])^2+ (x[18]-x[86])^2+ (x[19]-x[87])^2+ (x[20]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e128,  (x[17]-x[89])^2+ (x[18]-x[90])^2+ (x[19]-x[91])^2+ (x[20]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e129,  (x[17]-x[93])^2+ (x[18]-x[94])^2+ (x[19]-x[95])^2+ (x[20]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e130,  (x[21]-x[25])^2+ (x[22]-x[26])^2+ (x[23]-x[27])^2+ (x[24]-x[28])^2-4*objvar >= 0.0)
@NLconstraint(m, e131,  (x[21]-x[29])^2+ (x[22]-x[30])^2+ (x[23]-x[31])^2+ (x[24]-x[32])^2-4*objvar >= 0.0)
@NLconstraint(m, e132,  (x[21]-x[33])^2+ (x[22]-x[34])^2+ (x[23]-x[35])^2+ (x[24]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e133,  (x[21]-x[37])^2+ (x[22]-x[38])^2+ (x[23]-x[39])^2+ (x[24]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e134,  (x[21]-x[41])^2+ (x[22]-x[42])^2+ (x[23]-x[43])^2+ (x[24]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e135,  (x[21]-x[45])^2+ (x[22]-x[46])^2+ (x[23]-x[47])^2+ (x[24]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e136,  (x[21]-x[49])^2+ (x[22]-x[50])^2+ (x[23]-x[51])^2+ (x[24]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e137,  (x[21]-x[53])^2+ (x[22]-x[54])^2+ (x[23]-x[55])^2+ (x[24]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e138,  (x[21]-x[57])^2+ (x[22]-x[58])^2+ (x[23]-x[59])^2+ (x[24]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e139,  (x[21]-x[61])^2+ (x[22]-x[62])^2+ (x[23]-x[63])^2+ (x[24]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e140,  (x[21]-x[65])^2+ (x[22]-x[66])^2+ (x[23]-x[67])^2+ (x[24]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e141,  (x[21]-x[69])^2+ (x[22]-x[70])^2+ (x[23]-x[71])^2+ (x[24]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e142,  (x[21]-x[73])^2+ (x[22]-x[74])^2+ (x[23]-x[75])^2+ (x[24]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e143,  (x[21]-x[77])^2+ (x[22]-x[78])^2+ (x[23]-x[79])^2+ (x[24]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e144,  (x[21]-x[81])^2+ (x[22]-x[82])^2+ (x[23]-x[83])^2+ (x[24]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e145,  (x[21]-x[85])^2+ (x[22]-x[86])^2+ (x[23]-x[87])^2+ (x[24]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e146,  (x[21]-x[89])^2+ (x[22]-x[90])^2+ (x[23]-x[91])^2+ (x[24]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e147,  (x[21]-x[93])^2+ (x[22]-x[94])^2+ (x[23]-x[95])^2+ (x[24]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e148,  (x[25]-x[29])^2+ (x[26]-x[30])^2+ (x[27]-x[31])^2+ (x[28]-x[32])^2-4*objvar >= 0.0)
@NLconstraint(m, e149,  (x[25]-x[33])^2+ (x[26]-x[34])^2+ (x[27]-x[35])^2+ (x[28]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e150,  (x[25]-x[37])^2+ (x[26]-x[38])^2+ (x[27]-x[39])^2+ (x[28]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e151,  (x[25]-x[41])^2+ (x[26]-x[42])^2+ (x[27]-x[43])^2+ (x[28]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e152,  (x[25]-x[45])^2+ (x[26]-x[46])^2+ (x[27]-x[47])^2+ (x[28]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e153,  (x[25]-x[49])^2+ (x[26]-x[50])^2+ (x[27]-x[51])^2+ (x[28]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e154,  (x[25]-x[53])^2+ (x[26]-x[54])^2+ (x[27]-x[55])^2+ (x[28]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e155,  (x[25]-x[57])^2+ (x[26]-x[58])^2+ (x[27]-x[59])^2+ (x[28]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e156,  (x[25]-x[61])^2+ (x[26]-x[62])^2+ (x[27]-x[63])^2+ (x[28]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e157,  (x[25]-x[65])^2+ (x[26]-x[66])^2+ (x[27]-x[67])^2+ (x[28]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e158,  (x[25]-x[69])^2+ (x[26]-x[70])^2+ (x[27]-x[71])^2+ (x[28]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e159,  (x[25]-x[73])^2+ (x[26]-x[74])^2+ (x[27]-x[75])^2+ (x[28]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e160,  (x[25]-x[77])^2+ (x[26]-x[78])^2+ (x[27]-x[79])^2+ (x[28]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e161,  (x[25]-x[81])^2+ (x[26]-x[82])^2+ (x[27]-x[83])^2+ (x[28]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e162,  (x[25]-x[85])^2+ (x[26]-x[86])^2+ (x[27]-x[87])^2+ (x[28]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e163,  (x[25]-x[89])^2+ (x[26]-x[90])^2+ (x[27]-x[91])^2+ (x[28]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e164,  (x[25]-x[93])^2+ (x[26]-x[94])^2+ (x[27]-x[95])^2+ (x[28]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e165,  (x[29]-x[33])^2+ (x[30]-x[34])^2+ (x[31]-x[35])^2+ (x[32]-x[36])^2-4*objvar >= 0.0)
@NLconstraint(m, e166,  (x[29]-x[37])^2+ (x[30]-x[38])^2+ (x[31]-x[39])^2+ (x[32]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e167,  (x[29]-x[41])^2+ (x[30]-x[42])^2+ (x[31]-x[43])^2+ (x[32]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e168,  (x[29]-x[45])^2+ (x[30]-x[46])^2+ (x[31]-x[47])^2+ (x[32]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e169,  (x[29]-x[49])^2+ (x[30]-x[50])^2+ (x[31]-x[51])^2+ (x[32]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e170,  (x[29]-x[53])^2+ (x[30]-x[54])^2+ (x[31]-x[55])^2+ (x[32]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e171,  (x[29]-x[57])^2+ (x[30]-x[58])^2+ (x[31]-x[59])^2+ (x[32]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e172,  (x[29]-x[61])^2+ (x[30]-x[62])^2+ (x[31]-x[63])^2+ (x[32]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e173,  (x[29]-x[65])^2+ (x[30]-x[66])^2+ (x[31]-x[67])^2+ (x[32]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e174,  (x[29]-x[69])^2+ (x[30]-x[70])^2+ (x[31]-x[71])^2+ (x[32]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e175,  (x[29]-x[73])^2+ (x[30]-x[74])^2+ (x[31]-x[75])^2+ (x[32]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e176,  (x[29]-x[77])^2+ (x[30]-x[78])^2+ (x[31]-x[79])^2+ (x[32]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e177,  (x[29]-x[81])^2+ (x[30]-x[82])^2+ (x[31]-x[83])^2+ (x[32]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e178,  (x[29]-x[85])^2+ (x[30]-x[86])^2+ (x[31]-x[87])^2+ (x[32]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e179,  (x[29]-x[89])^2+ (x[30]-x[90])^2+ (x[31]-x[91])^2+ (x[32]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e180,  (x[29]-x[93])^2+ (x[30]-x[94])^2+ (x[31]-x[95])^2+ (x[32]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e181,  (x[33]-x[37])^2+ (x[34]-x[38])^2+ (x[35]-x[39])^2+ (x[36]-x[40])^2-4*objvar >= 0.0)
@NLconstraint(m, e182,  (x[33]-x[41])^2+ (x[34]-x[42])^2+ (x[35]-x[43])^2+ (x[36]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e183,  (x[33]-x[45])^2+ (x[34]-x[46])^2+ (x[35]-x[47])^2+ (x[36]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e184,  (x[33]-x[49])^2+ (x[34]-x[50])^2+ (x[35]-x[51])^2+ (x[36]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e185,  (x[33]-x[53])^2+ (x[34]-x[54])^2+ (x[35]-x[55])^2+ (x[36]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e186,  (x[33]-x[57])^2+ (x[34]-x[58])^2+ (x[35]-x[59])^2+ (x[36]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e187,  (x[33]-x[61])^2+ (x[34]-x[62])^2+ (x[35]-x[63])^2+ (x[36]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e188,  (x[33]-x[65])^2+ (x[34]-x[66])^2+ (x[35]-x[67])^2+ (x[36]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e189,  (x[33]-x[69])^2+ (x[34]-x[70])^2+ (x[35]-x[71])^2+ (x[36]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e190,  (x[33]-x[73])^2+ (x[34]-x[74])^2+ (x[35]-x[75])^2+ (x[36]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e191,  (x[33]-x[77])^2+ (x[34]-x[78])^2+ (x[35]-x[79])^2+ (x[36]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e192,  (x[33]-x[81])^2+ (x[34]-x[82])^2+ (x[35]-x[83])^2+ (x[36]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e193,  (x[33]-x[85])^2+ (x[34]-x[86])^2+ (x[35]-x[87])^2+ (x[36]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e194,  (x[33]-x[89])^2+ (x[34]-x[90])^2+ (x[35]-x[91])^2+ (x[36]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e195,  (x[33]-x[93])^2+ (x[34]-x[94])^2+ (x[35]-x[95])^2+ (x[36]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e196,  (x[37]-x[41])^2+ (x[38]-x[42])^2+ (x[39]-x[43])^2+ (x[40]-x[44])^2-4*objvar >= 0.0)
@NLconstraint(m, e197,  (x[37]-x[45])^2+ (x[38]-x[46])^2+ (x[39]-x[47])^2+ (x[40]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e198,  (x[37]-x[49])^2+ (x[38]-x[50])^2+ (x[39]-x[51])^2+ (x[40]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e199,  (x[37]-x[53])^2+ (x[38]-x[54])^2+ (x[39]-x[55])^2+ (x[40]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e200,  (x[37]-x[57])^2+ (x[38]-x[58])^2+ (x[39]-x[59])^2+ (x[40]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e201,  (x[37]-x[61])^2+ (x[38]-x[62])^2+ (x[39]-x[63])^2+ (x[40]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e202,  (x[37]-x[65])^2+ (x[38]-x[66])^2+ (x[39]-x[67])^2+ (x[40]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e203,  (x[37]-x[69])^2+ (x[38]-x[70])^2+ (x[39]-x[71])^2+ (x[40]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e204,  (x[37]-x[73])^2+ (x[38]-x[74])^2+ (x[39]-x[75])^2+ (x[40]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e205,  (x[37]-x[77])^2+ (x[38]-x[78])^2+ (x[39]-x[79])^2+ (x[40]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e206,  (x[37]-x[81])^2+ (x[38]-x[82])^2+ (x[39]-x[83])^2+ (x[40]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e207,  (x[37]-x[85])^2+ (x[38]-x[86])^2+ (x[39]-x[87])^2+ (x[40]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e208,  (x[37]-x[89])^2+ (x[38]-x[90])^2+ (x[39]-x[91])^2+ (x[40]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e209,  (x[37]-x[93])^2+ (x[38]-x[94])^2+ (x[39]-x[95])^2+ (x[40]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e210,  (x[41]-x[45])^2+ (x[42]-x[46])^2+ (x[43]-x[47])^2+ (x[44]-x[48])^2-4*objvar >= 0.0)
@NLconstraint(m, e211,  (x[41]-x[49])^2+ (x[42]-x[50])^2+ (x[43]-x[51])^2+ (x[44]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e212,  (x[41]-x[53])^2+ (x[42]-x[54])^2+ (x[43]-x[55])^2+ (x[44]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e213,  (x[41]-x[57])^2+ (x[42]-x[58])^2+ (x[43]-x[59])^2+ (x[44]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e214,  (x[41]-x[61])^2+ (x[42]-x[62])^2+ (x[43]-x[63])^2+ (x[44]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e215,  (x[41]-x[65])^2+ (x[42]-x[66])^2+ (x[43]-x[67])^2+ (x[44]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e216,  (x[41]-x[69])^2+ (x[42]-x[70])^2+ (x[43]-x[71])^2+ (x[44]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e217,  (x[41]-x[73])^2+ (x[42]-x[74])^2+ (x[43]-x[75])^2+ (x[44]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e218,  (x[41]-x[77])^2+ (x[42]-x[78])^2+ (x[43]-x[79])^2+ (x[44]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e219,  (x[41]-x[81])^2+ (x[42]-x[82])^2+ (x[43]-x[83])^2+ (x[44]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e220,  (x[41]-x[85])^2+ (x[42]-x[86])^2+ (x[43]-x[87])^2+ (x[44]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e221,  (x[41]-x[89])^2+ (x[42]-x[90])^2+ (x[43]-x[91])^2+ (x[44]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e222,  (x[41]-x[93])^2+ (x[42]-x[94])^2+ (x[43]-x[95])^2+ (x[44]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e223,  (x[45]-x[49])^2+ (x[46]-x[50])^2+ (x[47]-x[51])^2+ (x[48]-x[52])^2-4*objvar >= 0.0)
@NLconstraint(m, e224,  (x[45]-x[53])^2+ (x[46]-x[54])^2+ (x[47]-x[55])^2+ (x[48]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e225,  (x[45]-x[57])^2+ (x[46]-x[58])^2+ (x[47]-x[59])^2+ (x[48]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e226,  (x[45]-x[61])^2+ (x[46]-x[62])^2+ (x[47]-x[63])^2+ (x[48]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e227,  (x[45]-x[65])^2+ (x[46]-x[66])^2+ (x[47]-x[67])^2+ (x[48]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e228,  (x[45]-x[69])^2+ (x[46]-x[70])^2+ (x[47]-x[71])^2+ (x[48]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e229,  (x[45]-x[73])^2+ (x[46]-x[74])^2+ (x[47]-x[75])^2+ (x[48]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e230,  (x[45]-x[77])^2+ (x[46]-x[78])^2+ (x[47]-x[79])^2+ (x[48]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e231,  (x[45]-x[81])^2+ (x[46]-x[82])^2+ (x[47]-x[83])^2+ (x[48]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e232,  (x[45]-x[85])^2+ (x[46]-x[86])^2+ (x[47]-x[87])^2+ (x[48]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e233,  (x[45]-x[89])^2+ (x[46]-x[90])^2+ (x[47]-x[91])^2+ (x[48]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e234,  (x[45]-x[93])^2+ (x[46]-x[94])^2+ (x[47]-x[95])^2+ (x[48]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e235,  (x[49]-x[53])^2+ (x[50]-x[54])^2+ (x[51]-x[55])^2+ (x[52]-x[56])^2-4*objvar >= 0.0)
@NLconstraint(m, e236,  (x[49]-x[57])^2+ (x[50]-x[58])^2+ (x[51]-x[59])^2+ (x[52]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e237,  (x[49]-x[61])^2+ (x[50]-x[62])^2+ (x[51]-x[63])^2+ (x[52]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e238,  (x[49]-x[65])^2+ (x[50]-x[66])^2+ (x[51]-x[67])^2+ (x[52]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e239,  (x[49]-x[69])^2+ (x[50]-x[70])^2+ (x[51]-x[71])^2+ (x[52]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e240,  (x[49]-x[73])^2+ (x[50]-x[74])^2+ (x[51]-x[75])^2+ (x[52]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e241,  (x[49]-x[77])^2+ (x[50]-x[78])^2+ (x[51]-x[79])^2+ (x[52]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e242,  (x[49]-x[81])^2+ (x[50]-x[82])^2+ (x[51]-x[83])^2+ (x[52]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e243,  (x[49]-x[85])^2+ (x[50]-x[86])^2+ (x[51]-x[87])^2+ (x[52]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e244,  (x[49]-x[89])^2+ (x[50]-x[90])^2+ (x[51]-x[91])^2+ (x[52]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e245,  (x[49]-x[93])^2+ (x[50]-x[94])^2+ (x[51]-x[95])^2+ (x[52]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e246,  (x[53]-x[57])^2+ (x[54]-x[58])^2+ (x[55]-x[59])^2+ (x[56]-x[60])^2-4*objvar >= 0.0)
@NLconstraint(m, e247,  (x[53]-x[61])^2+ (x[54]-x[62])^2+ (x[55]-x[63])^2+ (x[56]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e248,  (x[53]-x[65])^2+ (x[54]-x[66])^2+ (x[55]-x[67])^2+ (x[56]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e249,  (x[53]-x[69])^2+ (x[54]-x[70])^2+ (x[55]-x[71])^2+ (x[56]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e250,  (x[53]-x[73])^2+ (x[54]-x[74])^2+ (x[55]-x[75])^2+ (x[56]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e251,  (x[53]-x[77])^2+ (x[54]-x[78])^2+ (x[55]-x[79])^2+ (x[56]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e252,  (x[53]-x[81])^2+ (x[54]-x[82])^2+ (x[55]-x[83])^2+ (x[56]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e253,  (x[53]-x[85])^2+ (x[54]-x[86])^2+ (x[55]-x[87])^2+ (x[56]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e254,  (x[53]-x[89])^2+ (x[54]-x[90])^2+ (x[55]-x[91])^2+ (x[56]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e255,  (x[53]-x[93])^2+ (x[54]-x[94])^2+ (x[55]-x[95])^2+ (x[56]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e256,  (x[57]-x[61])^2+ (x[58]-x[62])^2+ (x[59]-x[63])^2+ (x[60]-x[64])^2-4*objvar >= 0.0)
@NLconstraint(m, e257,  (x[57]-x[65])^2+ (x[58]-x[66])^2+ (x[59]-x[67])^2+ (x[60]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e258,  (x[57]-x[69])^2+ (x[58]-x[70])^2+ (x[59]-x[71])^2+ (x[60]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e259,  (x[57]-x[73])^2+ (x[58]-x[74])^2+ (x[59]-x[75])^2+ (x[60]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e260,  (x[57]-x[77])^2+ (x[58]-x[78])^2+ (x[59]-x[79])^2+ (x[60]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e261,  (x[57]-x[81])^2+ (x[58]-x[82])^2+ (x[59]-x[83])^2+ (x[60]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e262,  (x[57]-x[85])^2+ (x[58]-x[86])^2+ (x[59]-x[87])^2+ (x[60]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e263,  (x[57]-x[89])^2+ (x[58]-x[90])^2+ (x[59]-x[91])^2+ (x[60]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e264,  (x[57]-x[93])^2+ (x[58]-x[94])^2+ (x[59]-x[95])^2+ (x[60]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e265,  (x[61]-x[65])^2+ (x[62]-x[66])^2+ (x[63]-x[67])^2+ (x[64]-x[68])^2-4*objvar >= 0.0)
@NLconstraint(m, e266,  (x[61]-x[69])^2+ (x[62]-x[70])^2+ (x[63]-x[71])^2+ (x[64]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e267,  (x[61]-x[73])^2+ (x[62]-x[74])^2+ (x[63]-x[75])^2+ (x[64]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e268,  (x[61]-x[77])^2+ (x[62]-x[78])^2+ (x[63]-x[79])^2+ (x[64]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e269,  (x[61]-x[81])^2+ (x[62]-x[82])^2+ (x[63]-x[83])^2+ (x[64]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e270,  (x[61]-x[85])^2+ (x[62]-x[86])^2+ (x[63]-x[87])^2+ (x[64]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e271,  (x[61]-x[89])^2+ (x[62]-x[90])^2+ (x[63]-x[91])^2+ (x[64]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e272,  (x[61]-x[93])^2+ (x[62]-x[94])^2+ (x[63]-x[95])^2+ (x[64]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e273,  (x[65]-x[69])^2+ (x[66]-x[70])^2+ (x[67]-x[71])^2+ (x[68]-x[72])^2-4*objvar >= 0.0)
@NLconstraint(m, e274,  (x[65]-x[73])^2+ (x[66]-x[74])^2+ (x[67]-x[75])^2+ (x[68]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e275,  (x[65]-x[77])^2+ (x[66]-x[78])^2+ (x[67]-x[79])^2+ (x[68]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e276,  (x[65]-x[81])^2+ (x[66]-x[82])^2+ (x[67]-x[83])^2+ (x[68]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e277,  (x[65]-x[85])^2+ (x[66]-x[86])^2+ (x[67]-x[87])^2+ (x[68]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e278,  (x[65]-x[89])^2+ (x[66]-x[90])^2+ (x[67]-x[91])^2+ (x[68]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e279,  (x[65]-x[93])^2+ (x[66]-x[94])^2+ (x[67]-x[95])^2+ (x[68]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e280,  (x[69]-x[73])^2+ (x[70]-x[74])^2+ (x[71]-x[75])^2+ (x[72]-x[76])^2-4*objvar >= 0.0)
@NLconstraint(m, e281,  (x[69]-x[77])^2+ (x[70]-x[78])^2+ (x[71]-x[79])^2+ (x[72]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e282,  (x[69]-x[81])^2+ (x[70]-x[82])^2+ (x[71]-x[83])^2+ (x[72]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e283,  (x[69]-x[85])^2+ (x[70]-x[86])^2+ (x[71]-x[87])^2+ (x[72]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e284,  (x[69]-x[89])^2+ (x[70]-x[90])^2+ (x[71]-x[91])^2+ (x[72]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e285,  (x[69]-x[93])^2+ (x[70]-x[94])^2+ (x[71]-x[95])^2+ (x[72]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e286,  (x[73]-x[77])^2+ (x[74]-x[78])^2+ (x[75]-x[79])^2+ (x[76]-x[80])^2-4*objvar >= 0.0)
@NLconstraint(m, e287,  (x[73]-x[81])^2+ (x[74]-x[82])^2+ (x[75]-x[83])^2+ (x[76]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e288,  (x[73]-x[85])^2+ (x[74]-x[86])^2+ (x[75]-x[87])^2+ (x[76]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e289,  (x[73]-x[89])^2+ (x[74]-x[90])^2+ (x[75]-x[91])^2+ (x[76]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e290,  (x[73]-x[93])^2+ (x[74]-x[94])^2+ (x[75]-x[95])^2+ (x[76]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e291,  (x[77]-x[81])^2+ (x[78]-x[82])^2+ (x[79]-x[83])^2+ (x[80]-x[84])^2-4*objvar >= 0.0)
@NLconstraint(m, e292,  (x[77]-x[85])^2+ (x[78]-x[86])^2+ (x[79]-x[87])^2+ (x[80]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e293,  (x[77]-x[89])^2+ (x[78]-x[90])^2+ (x[79]-x[91])^2+ (x[80]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e294,  (x[77]-x[93])^2+ (x[78]-x[94])^2+ (x[79]-x[95])^2+ (x[80]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e295,  (x[81]-x[85])^2+ (x[82]-x[86])^2+ (x[83]-x[87])^2+ (x[84]-x[88])^2-4*objvar >= 0.0)
@NLconstraint(m, e296,  (x[81]-x[89])^2+ (x[82]-x[90])^2+ (x[83]-x[91])^2+ (x[84]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e297,  (x[81]-x[93])^2+ (x[82]-x[94])^2+ (x[83]-x[95])^2+ (x[84]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e298,  (x[85]-x[89])^2+ (x[86]-x[90])^2+ (x[87]-x[91])^2+ (x[88]-x[92])^2-4*objvar >= 0.0)
@NLconstraint(m, e299,  (x[85]-x[93])^2+ (x[86]-x[94])^2+ (x[87]-x[95])^2+ (x[88]-x[96])^2-4*objvar >= 0.0)
@NLconstraint(m, e300,  (x[89]-x[93])^2+ (x[90]-x[94])^2+ (x[91]-x[95])^2+ (x[92]-x[96])^2-4*objvar >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script.