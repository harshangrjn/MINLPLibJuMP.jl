using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83]
@variable(m, x[x_Idx])
b_Idx = Any[84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95]
@variable(m, b[b_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_binary(b[85])
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_binary(b[90])
set_lower_bound(x[36], 0.0)
set_binary(b[87])
set_lower_bound(x[54], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_binary(b[95])
set_lower_bound(x[25], 0.0)
set_binary(b[84])
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_binary(b[89])
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_binary(b[92])
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_binary(b[86])
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_binary(b[88])
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_binary(b[93])
set_lower_bound(x[23], 0.0)
set_binary(b[94])
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_binary(b[91])
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[16]*x[56]+x[17]*x[57]+x[18]*x[58]+x[19]*x[59])+x[9] == 0.0)
@NLconstraint(m, e2, -(x[20]*x[60]+x[21]*x[61]+x[22]*x[62]+x[23]*x[63])+x[10] == 0.0)
@NLconstraint(m, e3, -(x[24]*x[64]+x[25]*x[65]+x[26]*x[66]+x[27]*x[67])+x[11] == 0.0)
@NLconstraint(m, e4, -(x[28]*x[68]+x[29]*x[69]+x[30]*x[70]+x[31]*x[71])+x[12] == 0.0)
@NLconstraint(m, e5, -(x[32]*x[72]+x[33]*x[73]+x[34]*x[74]+x[35]*x[75])+x[13] == 0.0)
@NLconstraint(m, e6, -(x[36]*x[76]+x[37]*x[77]+x[38]*x[78]+x[39]*x[79])+x[14] == 0.0)
@NLconstraint(m, e7, -(x[40]*x[80]+x[41]*x[81]+x[42]*x[82]+x[43]*x[83])+x[15] == 0.0)
@constraint(m, e8, x[2]-x[56]-x[57]-x[58]-x[59] == 0.0)
@constraint(m, e9, x[3]-x[60]-x[61]-x[62]-x[63] == 0.0)
@constraint(m, e10, x[4]-x[64]-x[65]-x[66]-x[67] == 0.0)
@constraint(m, e11, x[5]-x[68]-x[69]-x[70]-x[71] == 0.0)
@constraint(m, e12, x[6]-x[72]-x[73]-x[74]-x[75] == 0.0)
@constraint(m, e13, x[7]-x[76]-x[77]-x[78]-x[79] == 0.0)
@constraint(m, e14, x[8]-x[80]-x[81]-x[82]-x[83] == 0.0)
@constraint(m, e15, x[1]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15] == 0.0)
@constraint(m, e16, 18*x[16]-9*x[28]-6*x[32]+x[56] == 2586.0)
@constraint(m, e17, 18*x[17]-9*x[29]-6*x[33]+x[57] == 2579.0)
@constraint(m, e18, 18*x[18]-9*x[30]-6*x[34]+x[58] == 2572.0)
@constraint(m, e19, 18*x[19]-9*x[31]-6*x[35]+x[59] == 2565.0)
@constraint(m, e20, 24*x[20]-6*x[28]+x[60] == 1786.0)
@constraint(m, e21, 24*x[21]-6*x[29]+x[61] == 1779.0)
@constraint(m, e22, 24*x[22]-6*x[30]+x[62] == 1772.0)
@constraint(m, e23, 24*x[23]-6*x[31]+x[63] == 1765.0)
@constraint(m, e24, 27*x[24]-3*x[32]+x[64] == 1986.0)
@constraint(m, e25, 27*x[25]-3*x[33]+x[65] == 1979.0)
@constraint(m, e26, 27*x[26]-3*x[34]+x[66] == 1972.0)
@constraint(m, e27, 27*x[27]-3*x[35]+x[67] == 1965.0)
@constraint(m, e28, 15*x[28]-6*x[40]+x[68] == 2786.0)
@constraint(m, e29, 15*x[29]-6*x[41]+x[69] == 2779.0)
@constraint(m, e30, 15*x[30]-6*x[42]+x[70] == 2772.0)
@constraint(m, e31, 15*x[31]-6*x[43]+x[71] == 2765.0)
@constraint(m, e32, 18*x[32]-6*x[40]+x[72] == 2186.0)
@constraint(m, e33, 18*x[33]-6*x[41]+x[73] == 2179.0)
@constraint(m, e34, 18*x[34]-6*x[42]+x[74] == 2172.0)
@constraint(m, e35, 18*x[35]-6*x[43]+x[75] == 2165.0)
@constraint(m, e36, x[76] == 1986.0)
@constraint(m, e37, x[77] == 1979.0)
@constraint(m, e38, x[78] == 1972.0)
@constraint(m, e39, x[79] == 1965.0)
@constraint(m, e40, 27*x[40]+x[80] == 4986.0)
@constraint(m, e41, 27*x[41]+x[81] == 4979.0)
@constraint(m, e42, 27*x[42]+x[82] == 4972.0)
@constraint(m, e43, 27*x[43]+x[83] == 4965.0)
@constraint(m, e44, x[16]-x[44] == 0.0)
@constraint(m, e45, x[17]-x[45] == 0.0)
@constraint(m, e46, x[18]-x[46] == 0.0)
@constraint(m, e47, x[19]-x[47] == 0.0)
@constraint(m, e48, x[20]-x[48] == 0.0)
@constraint(m, e49, x[21]-x[49] == 0.0)
@constraint(m, e50, x[22]-x[50] == 0.0)
@constraint(m, e51, x[23]-x[51] == 0.0)
@constraint(m, e52, x[24]-x[52] == 0.0)
@constraint(m, e53, x[25]-x[53] == 0.0)
@constraint(m, e54, x[26]-x[54] == 0.0)
@constraint(m, e55, x[27]-x[55] == 0.0)
@constraint(m, e56, x[28]-x[44]-x[48] == 0.0)
@constraint(m, e57, x[29]-x[45]-x[49] == 0.0)
@constraint(m, e58, x[30]-x[46]-x[50] == 0.0)
@constraint(m, e59, x[31]-x[47]-x[51] == 0.0)
@constraint(m, e60, x[32]-x[44]-x[52] == 0.0)
@constraint(m, e61, x[33]-x[45]-x[53] == 0.0)
@constraint(m, e62, x[34]-x[46]-x[54] == 0.0)
@constraint(m, e63, x[35]-x[47]-x[55] == 0.0)
@constraint(m, e64, x[36]-x[48]-x[52] == 0.0)
@constraint(m, e65, x[37]-x[49]-x[53] == 0.0)
@constraint(m, e66, x[38]-x[50]-x[54] == 0.0)
@constraint(m, e67, x[39]-x[51]-x[55] == 0.0)
@constraint(m, e68, x[40]-x[44]-x[48]-x[52] == 0.0)
@constraint(m, e69, x[41]-x[45]-x[49]-x[53] == 0.0)
@constraint(m, e70, x[42]-x[46]-x[50]-x[54] == 0.0)
@constraint(m, e71, x[43]-x[47]-x[51]-x[55] == 0.0)
@constraint(m, e72, x[56] >= 0.0)
@constraint(m, e73, x[57] >= 0.0)
@constraint(m, e74, x[58] >= 0.0)
@constraint(m, e75, x[59] >= 0.0)
@constraint(m, e76, x[60] >= 0.0)
@constraint(m, e77, x[61] >= 0.0)
@constraint(m, e78, x[62] >= 0.0)
@constraint(m, e79, x[63] >= 0.0)
@constraint(m, e80, x[64] >= 0.0)
@constraint(m, e81, x[65] >= 0.0)
@constraint(m, e82, x[66] >= 0.0)
@constraint(m, e83, x[67] >= 0.0)
@constraint(m, e84, x[68] >= 0.0)
@constraint(m, e85, x[69] >= 0.0)
@constraint(m, e86, x[70] >= 0.0)
@constraint(m, e87, x[71] >= 0.0)
@constraint(m, e88, x[72] >= 0.0)
@constraint(m, e89, x[73] >= 0.0)
@constraint(m, e90, x[74] >= 0.0)
@constraint(m, e91, x[75] >= 0.0)
@constraint(m, e92, x[76] >= 0.0)
@constraint(m, e93, x[77] >= 0.0)
@constraint(m, e94, x[78] >= 0.0)
@constraint(m, e95, x[79] >= 0.0)
@constraint(m, e96, x[80] >= 0.0)
@constraint(m, e97, x[81] >= 0.0)
@constraint(m, e98, x[82] >= 0.0)
@constraint(m, e99, x[83] >= 0.0)
@constraint(m, e100, x[44]+10*b[84] == 100.0)
@constraint(m, e101, x[48]+6*b[88] == 60.0)
@constraint(m, e102, x[52]+3*b[92] == 30.0)
@constraint(m, e103, x[44] == 0.0)
@NLconstraint(m, e104, -(0.9*x[44]*b[85]+x[44]*(1-b[85]))+x[45] == 0.0)
@NLconstraint(m, e105, -(0.9*x[45]*b[86]+x[45]*(1-b[86]))+x[46] == 0.0)
@NLconstraint(m, e106, -(0.9*x[46]*b[87]+x[46]*(1-b[87]))+x[47] == 0.0)
@constraint(m, e107, x[48] == 0.0)
@NLconstraint(m, e108, -(0.9*x[48]*b[89]+x[48]*(1-b[89]))+x[49] == 0.0)
@NLconstraint(m, e109, -(0.9*x[49]*b[90]+x[49]*(1-b[90]))+x[50] == 0.0)
@NLconstraint(m, e110, -(0.9*x[50]*b[91]+x[50]*(1-b[91]))+x[51] == 0.0)
@constraint(m, e111, x[52] == 0.0)
@NLconstraint(m, e112, -(0.9*x[52]*b[93]+x[52]*(1-b[93]))+x[53] == 0.0)
@NLconstraint(m, e113, -(0.9*x[53]*b[94]+x[53]*(1-b[94]))+x[54] == 0.0)
@NLconstraint(m, e114, -(0.9*x[54]*b[95]+x[54]*(1-b[95]))+x[55] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script.