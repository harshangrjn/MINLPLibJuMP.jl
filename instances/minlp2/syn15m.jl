using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
b_Idx = Any[42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56]
@variable(m, b[b_Idx])
set_binary(b[44])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_binary(b[42])
set_lower_bound(x[22], 0.0)
set_binary(b[49])
set_binary(b[45])
set_binary(b[48])
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_binary(b[54])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_binary(b[46])
set_binary(b[53])
set_binary(b[56])
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_binary(b[51])
set_lower_bound(x[26], 0.0)
set_binary(b[43])
set_binary(b[47])
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_binary(b[50])
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[19], 0.0)
set_binary(b[52])
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_binary(b[55])
set_lower_bound(x[15], 0.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[13], 7.0)
set_upper_bound(x[30], 5.0)
set_upper_bound(x[31], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-5*x[8]-500*x[26]-350*x[27]-200*x[38]-250*x[39]-200*x[40]-200*x[41]+5*b[42]+8*b[43]+6*b[44]+10*b[45]+6*b[46]+7*b[47]+4*b[48]+5*b[49]+2*b[50]+4*b[51]+3*b[52]+7*b[53]+3*b[54]+2*b[55]+4*b[56] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@constraint(m, e6, x[14]-x[17]-x[18] == 0.0)
@constraint(m, e7, x[16]-x[19]-x[20]-x[21] == 0.0)
@constraint(m, e8, x[24]-x[28]-x[29] == 0.0)
@constraint(m, e9, -x[25]-x[31]+x[32] == 0.0)
@constraint(m, e10, x[26]-x[33]-x[34] == 0.0)
@constraint(m, e11, x[27]-x[35]-x[36]-x[37] == 0.0)
@NLconstraint(m, e12, -log(1+x[3])+x[5]+b[42] <= 1.0)
@constraint(m, e13, x[3]-10*b[42] <= 0.0)
@constraint(m, e14, x[5]-2.39789527279837*b[42] <= 0.0)
@NLconstraint(m, e15, -1.2*log(1+x[4])+x[6]+b[43] <= 1.0)
@constraint(m, e16, x[4]-10*b[43] <= 0.0)
@constraint(m, e17, x[6]-2.87747432735804*b[43] <= 0.0)
@constraint(m, e18, -0.75*x[10]+x[14]+b[44] <= 1.0)
@constraint(m, e19, -0.75*x[10]+x[14]-b[44] >= -1.0)
@constraint(m, e20, x[10]-2.87747432735804*b[44] <= 0.0)
@constraint(m, e21, x[14]-2.15810574551853*b[44] <= 0.0)
@NLconstraint(m, e22, -1.5*log(1+x[11])+x[15]+b[45] <= 1.0)
@constraint(m, e23, x[11]-2.87747432735804*b[45] <= 0.0)
@constraint(m, e24, x[15]-2.03277599268042*b[45] <= 0.0)
@constraint(m, e25, -x[12]+x[16]+b[46] <= 1.0)
@constraint(m, e26, -x[12]+x[16]-b[46] >= -1.0)
@constraint(m, e27, -0.5*x[13]+x[16]+b[46] <= 1.0)
@constraint(m, e28, -0.5*x[13]+x[16]-b[46] >= -1.0)
@constraint(m, e29, x[12]-2.87747432735804*b[46] <= 0.0)
@constraint(m, e30, x[13]-7*b[46] <= 0.0)
@constraint(m, e31, x[16]-3.5*b[46] <= 0.0)
@NLconstraint(m, e32, -1.25*log(1+x[17])+x[22]+b[47] <= 1.0)
@constraint(m, e33, x[17]-2.15810574551853*b[47] <= 0.0)
@constraint(m, e34, x[22]-1.43746550029693*b[47] <= 0.0)
@NLconstraint(m, e35, -0.9*log(1+x[18])+x[23]+b[48] <= 1.0)
@constraint(m, e36, x[18]-2.15810574551853*b[48] <= 0.0)
@constraint(m, e37, x[23]-1.03497516021379*b[48] <= 0.0)
@NLconstraint(m, e38, -log(1+x[15])+x[24]+b[49] <= 1.0)
@constraint(m, e39, x[15]-2.03277599268042*b[49] <= 0.0)
@constraint(m, e40, x[24]-1.10947836929589*b[49] <= 0.0)
@constraint(m, e41, -0.9*x[19]+x[25]+b[50] <= 1.0)
@constraint(m, e42, -0.9*x[19]+x[25]-b[50] >= -1.0)
@constraint(m, e43, x[19]-3.5*b[50] <= 0.0)
@constraint(m, e44, x[25]-3.15*b[50] <= 0.0)
@constraint(m, e45, -0.6*x[20]+x[26]+b[51] <= 1.0)
@constraint(m, e46, -0.6*x[20]+x[26]-b[51] >= -1.0)
@constraint(m, e47, x[20]-3.5*b[51] <= 0.0)
@constraint(m, e48, x[26]-2.1*b[51] <= 0.0)
@NLconstraint(m, e49, -1.1*log(1+x[21])+x[27]+b[52] <= 1.0)
@constraint(m, e50, x[21]-3.5*b[52] <= 0.0)
@constraint(m, e51, x[27]-1.6544851364539*b[52] <= 0.0)
@constraint(m, e52, -0.9*x[22]+x[38]+b[53] <= 1.0)
@constraint(m, e53, -0.9*x[22]+x[38]-b[53] >= -1.0)
@constraint(m, e54, -x[30]+x[38]+b[53] <= 1.0)
@constraint(m, e55, -x[30]+x[38]-b[53] >= -1.0)
@constraint(m, e56, x[22]-1.43746550029693*b[53] <= 0.0)
@constraint(m, e57, x[30]-5*b[53] <= 0.0)
@constraint(m, e58, x[38]-5*b[53] <= 0.0)
@NLconstraint(m, e59, -log(1+x[23])+x[39]+b[54] <= 1.0)
@constraint(m, e60, x[23]-1.03497516021379*b[54] <= 0.0)
@constraint(m, e61, x[39]-0.710483612536911*b[54] <= 0.0)
@NLconstraint(m, e62, -0.7*log(1+x[28])+x[40]+b[55] <= 1.0)
@constraint(m, e63, x[28]-1.10947836929589*b[55] <= 0.0)
@constraint(m, e64, x[40]-0.522508489006913*b[55] <= 0.0)
@NLconstraint(m, e65, -0.65*log(1+x[29])+x[41]+b[56] <= 1.0)
@NLconstraint(m, e66, -0.65*log(1+x[32])+x[41]+b[56] <= 1.0)
@constraint(m, e67, x[29]-1.10947836929589*b[56] <= 0.0)
@constraint(m, e68, x[32]-8.15*b[56] <= 0.0)
@constraint(m, e69, x[41]-1.43894002153683*b[56] <= 0.0)
@constraint(m, e70, b[42]+b[43] == 1.0)
@constraint(m, e71, -b[44]+b[47]+b[48] >= 0.0)
@constraint(m, e72, -b[47]+b[53] >= 0.0)
@constraint(m, e73, -b[48]+b[54] >= 0.0)
@constraint(m, e74, -b[45]+b[49] >= 0.0)
@constraint(m, e75, -b[49]+b[55]+b[56] >= 0.0)
@constraint(m, e76, -b[46]+b[50]+b[51]+b[52] >= 0.0)
@constraint(m, e77, -b[50]+b[56] >= 0.0)
@constraint(m, e78, b[42]+b[43]-b[44] >= 0.0)
@constraint(m, e79, b[42]+b[43]-b[45] >= 0.0)
@constraint(m, e80, b[42]+b[43]-b[46] >= 0.0)
@constraint(m, e81, b[44]-b[47] >= 0.0)
@constraint(m, e82, b[44]-b[48] >= 0.0)
@constraint(m, e83, b[45]-b[49] >= 0.0)
@constraint(m, e84, b[46]-b[50] >= 0.0)
@constraint(m, e85, b[46]-b[51] >= 0.0)
@constraint(m, e86, b[46]-b[52] >= 0.0)
@constraint(m, e87, b[47]-b[53] >= 0.0)
@constraint(m, e88, b[48]-b[54] >= 0.0)
@constraint(m, e89, b[49]-b[55] >= 0.0)
@constraint(m, e90, b[49]-b[56] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script.