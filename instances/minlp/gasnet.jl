using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 88, 89, 90]
@variable(m, x[x_Idx])
b_Idx = Any[78, 79, 80, 81, 82, 83, 84, 85, 86, 87]
@variable(m, b[b_Idx])
set_lower_bound(x[72], 0.0)
set_binary(b[87])
set_binary(b[78])
set_binary(b[84])
set_binary(b[85])
set_lower_bound(x[75], 0.0)
set_binary(b[80])
set_binary(b[82])
set_binary(b[79])
set_lower_bound(x[77], 0.0)
set_binary(b[81])
set_lower_bound(x[73], 0.0)
set_lower_bound(x[74], 0.0)
set_binary(b[83])
set_binary(b[86])
set_lower_bound(x[70], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[1], 2.0)
set_upper_bound(x[1], 200.0)
set_lower_bound(x[2], 2.0)
set_upper_bound(x[2], 200.0)
set_lower_bound(x[3], 2.0)
set_upper_bound(x[3], 200.0)
set_lower_bound(x[4], 2.0)
set_upper_bound(x[4], 200.0)
set_lower_bound(x[5], 2.0)
set_upper_bound(x[5], 200.0)
set_lower_bound(x[6], 2.0)
set_upper_bound(x[6], 200.0)
set_lower_bound(x[7], 2.0)
set_upper_bound(x[7], 200.0)
set_lower_bound(x[8], 2.0)
set_upper_bound(x[8], 200.0)
set_lower_bound(x[9], 2.0)
set_upper_bound(x[9], 200.0)
set_lower_bound(x[10], 2.0)
set_upper_bound(x[10], 200.0)
set_lower_bound(x[11], 2.0)
set_upper_bound(x[11], 200.0)
set_lower_bound(x[12], 200.0)
set_upper_bound(x[12], 1000.0)
set_lower_bound(x[13], 200.0)
set_upper_bound(x[13], 1000.0)
set_lower_bound(x[14], 200.0)
set_upper_bound(x[14], 1000.0)
set_lower_bound(x[15], 200.0)
set_upper_bound(x[15], 1000.0)
set_lower_bound(x[16], 200.0)
set_upper_bound(x[16], 1000.0)
set_lower_bound(x[17], 200.0)
set_upper_bound(x[17], 1000.0)
set_lower_bound(x[18], 200.0)
set_upper_bound(x[18], 1000.0)
set_lower_bound(x[19], 200.0)
set_upper_bound(x[19], 1000.0)
set_lower_bound(x[20], 200.0)
set_upper_bound(x[20], 1000.0)
set_lower_bound(x[21], 200.0)
set_upper_bound(x[21], 1000.0)
set_lower_bound(x[22], 200.0)
set_upper_bound(x[22], 1000.0)
set_lower_bound(x[23], 500.0)
set_upper_bound(x[23], 500.0)
set_lower_bound(x[24], 200.0)
set_upper_bound(x[24], 1000.0)
set_lower_bound(x[25], 200.0)
set_upper_bound(x[25], 1000.0)
set_lower_bound(x[26], 200.0)
set_upper_bound(x[26], 1000.0)
set_lower_bound(x[27], 200.0)
set_upper_bound(x[27], 1000.0)
set_lower_bound(x[28], 200.0)
set_upper_bound(x[28], 1000.0)
set_lower_bound(x[29], 200.0)
set_upper_bound(x[29], 1000.0)
set_lower_bound(x[30], 600.0)
set_upper_bound(x[30], 600.0)
set_lower_bound(x[31], 200.0)
set_upper_bound(x[31], 1000.0)
set_lower_bound(x[32], 200.0)
set_upper_bound(x[32], 1000.0)
set_lower_bound(x[33], 200.0)
set_upper_bound(x[33], 1000.0)
set_lower_bound(x[34], 300.0)
set_upper_bound(x[34], 300.0)
set_lower_bound(x[35], 4.0)
set_upper_bound(x[35], 36.0)
set_lower_bound(x[36], 4.0)
set_upper_bound(x[36], 36.0)
set_lower_bound(x[37], 4.0)
set_upper_bound(x[37], 36.0)
set_lower_bound(x[38], 4.0)
set_upper_bound(x[38], 18.0)
set_lower_bound(x[39], 4.0)
set_upper_bound(x[39], 18.0)
set_lower_bound(x[40], 4.0)
set_upper_bound(x[40], 18.0)
set_lower_bound(x[41], 4.0)
set_upper_bound(x[41], 18.0)
set_lower_bound(x[42], 4.0)
set_upper_bound(x[42], 18.0)
set_lower_bound(x[43], 4.0)
set_upper_bound(x[43], 18.0)
set_lower_bound(x[44], 4.0)
set_upper_bound(x[44], 18.0)
set_lower_bound(x[45], 4.0)
set_upper_bound(x[45], 18.0)
set_lower_bound(x[46], 600.0)
set_upper_bound(x[46], 600.0)
set_lower_bound(x[47], 200.0)
set_upper_bound(x[47], 600.0)
set_lower_bound(x[48], 200.0)
set_upper_bound(x[48], 600.0)
set_lower_bound(x[49], 200.0)
set_upper_bound(x[49], 600.0)
set_lower_bound(x[50], 200.0)
set_upper_bound(x[50], 600.0)
set_lower_bound(x[51], 200.0)
set_upper_bound(x[51], 600.0)
set_lower_bound(x[52], 200.0)
set_upper_bound(x[52], 600.0)
set_lower_bound(x[53], 200.0)
set_upper_bound(x[53], 600.0)
set_lower_bound(x[54], 200.0)
set_upper_bound(x[54], 600.0)
set_lower_bound(x[55], 200.0)
set_upper_bound(x[55], 600.0)
set_lower_bound(x[56], 200.0)
set_upper_bound(x[56], 600.0)
set_lower_bound(x[57], 200.0)
set_upper_bound(x[57], 600.0)
set_lower_bound(x[58], 1.0)
set_upper_bound(x[58], 2.0)
set_lower_bound(x[59], 1.0)
set_upper_bound(x[59], 2.0)
set_lower_bound(x[60], 1.0)
set_upper_bound(x[60], 2.0)
set_lower_bound(x[61], 1.0)
set_upper_bound(x[61], 2.0)
set_lower_bound(x[62], 1.0)
set_upper_bound(x[62], 2.0)
set_lower_bound(x[63], 1.0)
set_upper_bound(x[63], 2.0)
set_lower_bound(x[64], 1.0)
set_upper_bound(x[64], 2.0)
set_lower_bound(x[65], 1.0)
set_upper_bound(x[65], 2.0)
set_lower_bound(x[66], 1.0)
set_upper_bound(x[66], 2.0)
set_lower_bound(x[67], 1.0)
set_upper_bound(x[67], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, x[12]-x[24] >= 0.0)
@constraint(m, e2, x[13]-x[25] >= 0.0)
@constraint(m, e3, x[14]-x[26] >= 0.0)
@constraint(m, e4, x[15]-x[27] >= 0.0)
@constraint(m, e5, x[16]-x[28] >= 0.0)
@constraint(m, e6, x[17]-x[29] >= 0.0)
@constraint(m, e7, x[18]-x[30] >= 0.0)
@constraint(m, e8, x[19]-x[31] >= 0.0)
@constraint(m, e9, x[20]-x[32] >= 0.0)
@constraint(m, e10, x[21]-x[33] >= 0.0)
@constraint(m, e11, x[22]-x[34] >= 0.0)
@constraint(m, e12, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7] == 175.0)
@constraint(m, e13, x[1]+x[2]+x[3]+x[8]+x[9]+x[10]+x[11] == 200.0)
@NLconstraint(m, e14, -7.58641e-7*x[35]^5.33333333333333*( (x[12])^2- (x[24])^2)/ (x[47])^2+x[1] == 0.0)
@NLconstraint(m, e15, -7.58641e-7*x[36]^5.33333333333333*( (x[13])^2- (x[25])^2)/ (x[48])^2+x[2] == 0.0)
@NLconstraint(m, e16, -7.58641e-7*x[37]^5.33333333333333*( (x[14])^2- (x[26])^2)/ (x[49])^2+x[3] == 0.0)
@NLconstraint(m, e17, -7.58641e-7*x[38]^5.33333333333333*( (x[15])^2- (x[27])^2)/ (x[50])^2+x[4] == 0.0)
@NLconstraint(m, e18, -7.58641e-7*x[39]^5.33333333333333*( (x[16])^2- (x[28])^2)/ (x[51])^2+x[5] == 0.0)
@NLconstraint(m, e19, -7.58641e-7*x[40]^5.33333333333333*( (x[17])^2- (x[29])^2)/ (x[52])^2+x[6] == 0.0)
@NLconstraint(m, e20, -7.58641e-7*x[41]^5.33333333333333*( (x[18])^2- (x[30])^2)/ (x[53])^2+x[7] == 0.0)
@NLconstraint(m, e21, -7.58641e-7*x[42]^5.33333333333333*( (x[19])^2- (x[31])^2)/ (x[54])^2+x[8] == 0.0)
@NLconstraint(m, e22, -7.58641e-7*x[43]^5.33333333333333*( (x[20])^2- (x[32])^2)/ (x[55])^2+x[9] == 0.0)
@NLconstraint(m, e23, -7.58641e-7*x[44]^5.33333333333333*( (x[21])^2- (x[33])^2)/ (x[56])^2+x[10] == 0.0)
@NLconstraint(m, e24, -7.58641e-7*x[45]^5.33333333333333*( (x[22])^2- (x[34])^2)/ (x[57])^2+x[11] == 0.0)
@NLconstraint(m, e25, x[46]-0.005*x[46]*b[78]-x[47] == 0.0)
@NLconstraint(m, e26, x[47]-0.005*x[47]*b[79]-x[48] == 0.0)
@NLconstraint(m, e27, x[48]-0.005*x[48]*b[80]-x[49] == 0.0)
@NLconstraint(m, e28, x[49]-0.005*x[49]*b[81]-x[50]-x[54] == 0.0)
@NLconstraint(m, e29, x[50]-0.005*x[50]*b[82]-x[51] == 0.0)
@NLconstraint(m, e30, x[51]-0.005*x[51]*b[83]-x[52] == 0.0)
@NLconstraint(m, e31, x[52]-0.005*x[52]*b[84]-x[53] == 0.0)
@NLconstraint(m, e32, x[54]-0.005*x[54]*b[85]-x[55] == 0.0)
@NLconstraint(m, e33, x[55]-0.005*x[55]*b[86]-x[56] == 0.0)
@NLconstraint(m, e34, x[56]-0.005*x[56]*b[87]-x[57] == 0.0)
@NLconstraint(m, e35, -214.9812*x[47]*(x[58]^0.181587301587302-1)+x[68] == 0.0)
@NLconstraint(m, e36, -214.9812*x[48]*(x[59]^0.181587301587302-1)+x[69] == 0.0)
@NLconstraint(m, e37, -214.9812*x[49]*(x[60]^0.181587301587302-1)+x[70] == 0.0)
@NLconstraint(m, e38, -214.9812*x[50]*(x[61]^0.181587301587302-1)+x[71] == 0.0)
@NLconstraint(m, e39, -214.9812*x[54]*(x[61]^0.181587301587302-1)+x[71] == 0.0)
@NLconstraint(m, e40, -214.9812*x[51]*(x[62]^0.181587301587302-1)+x[72] == 0.0)
@NLconstraint(m, e41, -214.9812*x[52]*(x[63]^0.181587301587302-1)+x[73] == 0.0)
@NLconstraint(m, e42, -214.9812*x[53]*(x[64]^0.181587301587302-1)+x[74] == 0.0)
@NLconstraint(m, e43, -214.9812*x[55]*(x[65]^0.181587301587302-1)+x[75] == 0.0)
@NLconstraint(m, e44, -214.9812*x[56]*(x[66]^0.181587301587302-1)+x[76] == 0.0)
@NLconstraint(m, e45, -214.9812*x[57]*(x[67]^0.181587301587302-1)+x[77] == 0.0)
@NLconstraint(m, e46, x[58]*x[23]-x[12] == 0.0)
@NLconstraint(m, e47, x[59]*x[24]-x[13] == 0.0)
@NLconstraint(m, e48, x[60]*x[25]-x[14] == 0.0)
@NLconstraint(m, e49, x[61]*x[26]-x[15] == 0.0)
@NLconstraint(m, e50, x[61]*x[26]-x[19] == 0.0)
@NLconstraint(m, e51, x[62]*x[27]-x[16] == 0.0)
@NLconstraint(m, e52, x[63]*x[28]-x[17] == 0.0)
@NLconstraint(m, e53, x[64]*x[29]-x[18] == 0.0)
@NLconstraint(m, e54, x[65]*x[31]-x[20] == 0.0)
@NLconstraint(m, e55, x[66]*x[32]-x[21] == 0.0)
@NLconstraint(m, e56, x[67]*x[33]-x[22] == 0.0)
@constraint(m, e57, x[58]-b[78] <= 1.0)
@constraint(m, e58, x[59]-b[79] <= 1.0)
@constraint(m, e59, x[60]-b[80] <= 1.0)
@constraint(m, e60, x[61]-b[81] <= 1.0)
@constraint(m, e61, x[62]-b[82] <= 1.0)
@constraint(m, e62, x[63]-b[83] <= 1.0)
@constraint(m, e63, x[64]-b[84] <= 1.0)
@constraint(m, e64, x[65]-b[85] <= 1.0)
@constraint(m, e65, x[66]-b[86] <= 1.0)
@constraint(m, e66, x[67]-b[87] <= 1.0)
@NLconstraint(m, e67, -(870*x[1]*x[35]+870*x[2]*x[36]+870*x[3]*x[37]+870*x[4]*x[38]+870*x[5]*x[39]+870*x[6]*x[40]+870*x[7]*x[41]+870*x[8]*x[42]+870*x[9]*x[43]+870*x[10]*x[44]+870*x[11]*x[45])+x[88] == 0.0)
@constraint(m, e68, -70*x[68]-70*x[69]-70*x[70]-70*x[71]-70*x[72]-70*x[73]-70*x[74]-70*x[75]-70*x[76]-70*x[77]-10000*b[78]-10000*b[79]-10000*b[80]-10000*b[81]-10000*b[82]-10000*b[83]-10000*b[84]-10000*b[85]-10000*b[86]-10000*b[87]+x[89] == 0.0)
@constraint(m, e69, -8*x[68]-8*x[69]-8*x[70]-8*x[71]-8*x[72]-8*x[73]-8*x[74]-8*x[75]-8*x[76]-8*x[77]+x[90] == 0.0)
@constraint(m, e70, -x[88]-x[89]-x[90]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.