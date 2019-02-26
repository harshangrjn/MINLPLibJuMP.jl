using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 100.0)
set_upper_bound(x[18], 200.0)
set_upper_bound(x[19], 100.0)
set_upper_bound(x[20], 100.0)
set_upper_bound(x[21], 100.0)
set_upper_bound(x[22], 100.0)
set_upper_bound(x[23], 200.0)
set_upper_bound(x[24], 100.0)
set_upper_bound(x[25], 100.0)
set_upper_bound(x[26], 100.0)
set_upper_bound(x[27], 100.0)
set_upper_bound(x[28], 200.0)
set_upper_bound(x[29], 100.0)
set_upper_bound(x[30], 100.0)
set_upper_bound(x[31], 100.0)
set_upper_bound(x[32], 100.0)
set_upper_bound(x[33], 200.0)
set_upper_bound(x[34], 100.0)
set_upper_bound(x[35], 100.0)
set_upper_bound(x[36], 100.0)
set_upper_bound(x[37], 100.0)
set_upper_bound(x[38], 200.0)
set_upper_bound(x[39], 100.0)
set_upper_bound(x[40], 100.0)
set_upper_bound(x[41], 100.0)
set_upper_bound(x[42], 100.0)
set_upper_bound(x[43], 200.0)
set_upper_bound(x[44], 100.0)
set_upper_bound(x[45], 100.0)
set_upper_bound(x[46], 100.0)
set_upper_bound(x[47], 50.0)
set_upper_bound(x[48], 50.0)
set_upper_bound(x[49], 50.0)
set_upper_bound(x[50], 50.0)
set_upper_bound(x[51], 50.0)
set_upper_bound(x[52], 50.0)
set_upper_bound(x[53], 50.0)
set_upper_bound(x[54], 50.0)
set_upper_bound(x[55], 50.0)
set_upper_bound(x[56], 50.0)
set_upper_bound(x[57], 50.0)
set_upper_bound(x[58], 50.0)
set_upper_bound(x[59], 50.0)
set_upper_bound(x[60], 50.0)
set_upper_bound(x[61], 50.0)
set_upper_bound(x[62], 100.0)
set_upper_bound(x[63], 200.0)
set_upper_bound(x[64], 100.0)
set_upper_bound(x[65], 100.0)
set_upper_bound(x[66], 100.0)
set_upper_bound(x[67], 100.0)
set_upper_bound(x[68], 200.0)
set_upper_bound(x[69], 100.0)
set_upper_bound(x[70], 100.0)
set_upper_bound(x[71], 100.0)
set_upper_bound(x[72], 100.0)
set_upper_bound(x[73], 200.0)
set_upper_bound(x[74], 100.0)
set_upper_bound(x[75], 100.0)
set_upper_bound(x[76], 100.0)
set_upper_bound(x[77], 600.0)
set_upper_bound(x[78], 600.0)
set_upper_bound(x[79], 600.0)
set_upper_bound(x[80], 600.0)
set_upper_bound(x[81], 600.0)
set_upper_bound(x[82], 600.0)
set_upper_bound(x[83], 50.0)
set_upper_bound(x[84], 50.0)
set_upper_bound(x[85], 50.0)
set_upper_bound(x[86], 600.0)
set_upper_bound(x[87], 600.0)
set_upper_bound(x[88], 600.0)
set_upper_bound(x[89], 100.0)
set_upper_bound(x[90], 200.0)
set_upper_bound(x[91], 100.0)
set_upper_bound(x[92], 100.0)
set_upper_bound(x[93], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+12*x[17]+9*x[18]+13*x[19]+10*x[20]+8*x[21]+12*x[22]+9*x[23]+13*x[24]+10*x[25]+8*x[26]+12*x[27]+9*x[28]+13*x[29]+10*x[30]+8*x[31]+2*x[32]-x[33]+3*x[34]-2*x[36]+2*x[37]-x[38]+3*x[39]-2*x[41]+2*x[42]-x[43]+3*x[44]-2*x[46]+3*x[47]+4*x[49]+x[50]-x[51]+3*x[52]+4*x[54]+x[55]-x[56]+3*x[57]+4*x[59]+x[60]-x[61]+6*x[62]+3*x[63]+7*x[64]+4*x[65]+2*x[66]+6*x[67]+3*x[68]+7*x[69]+4*x[70]+2*x[71]+6*x[72]+3*x[73]+7*x[74]+4*x[75]+2*x[76]+8*x[89]+5*x[90]+9*x[91]+6*x[92]+4*x[93] == 0.0)
@constraint(m, e2, x[17]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31] <= 600.0)
@constraint(m, e3, x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46] <= 600.0)
@constraint(m, e4, x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61] <= 50.0)
@constraint(m, e5, x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73]+x[74]+x[75]+x[76] <= 600.0)
@constraint(m, e6, x[89]+x[90]+x[91]+x[92]+x[93] <= 600.0)
@constraint(m, e7, x[17]+x[18]+x[19]+x[20]+x[21]+x[32]+x[33]+x[34]+x[35]+x[36]+x[47]+x[48]+x[49]+x[50]+x[51]+x[62]+x[63]+x[64]+x[65]+x[66] <= 600.0)
@constraint(m, e8, x[22]+x[23]+x[24]+x[25]+x[26]+x[37]+x[38]+x[39]+x[40]+x[41]+x[52]+x[53]+x[54]+x[55]+x[56]+x[67]+x[68]+x[69]+x[70]+x[71] <= 600.0)
@constraint(m, e9, x[27]+x[28]+x[29]+x[30]+x[31]+x[42]+x[43]+x[44]+x[45]+x[46]+x[57]+x[58]+x[59]+x[60]+x[61]+x[72]+x[73]+x[74]+x[75]+x[76] <= 600.0)
@constraint(m, e10, x[17]+x[22]+x[27]+x[32]+x[37]+x[42]+x[47]+x[52]+x[57]+x[62]+x[67]+x[72]+x[89] <= 100.0)
@constraint(m, e11, x[18]+x[23]+x[28]+x[33]+x[38]+x[43]+x[48]+x[53]+x[58]+x[63]+x[68]+x[73]+x[90] <= 200.0)
@constraint(m, e12, x[19]+x[24]+x[29]+x[34]+x[39]+x[44]+x[49]+x[54]+x[59]+x[64]+x[69]+x[74]+x[91] <= 100.0)
@constraint(m, e13, x[20]+x[25]+x[30]+x[35]+x[40]+x[45]+x[50]+x[55]+x[60]+x[65]+x[70]+x[75]+x[92] <= 100.0)
@constraint(m, e14, x[21]+x[26]+x[31]+x[36]+x[41]+x[46]+x[51]+x[56]+x[61]+x[66]+x[71]+x[76]+x[93] <= 100.0)
@constraint(m, e15, 0.5*x[17]+0.5*x[22]+0.5*x[27]-1.5*x[32]-1.5*x[37]-1.5*x[42]-1.5*x[47]-1.5*x[52]-1.5*x[57]-x[62]-x[67]-x[72]-0.5*x[89] <= 0.0)
@constraint(m, e16, -x[17]-x[22]-x[27]+x[32]+x[37]+x[42]+0.5*x[47]+0.5*x[52]+0.5*x[57]+0.5*x[62]+0.5*x[67]+0.5*x[72]+0.5*x[89] <= 0.0)
@constraint(m, e17, 1.5*x[18]+1.5*x[23]+1.5*x[28]-0.5*x[33]-0.5*x[38]-0.5*x[43]-0.5*x[48]-0.5*x[53]-0.5*x[58]+0.5*x[90] <= 0.0)
@constraint(m, e18, -1.5*x[18]-1.5*x[23]-1.5*x[28]+0.5*x[33]+0.5*x[38]+0.5*x[43] <= 0.0)
@constraint(m, e19, x[19]+x[24]+x[29]-x[34]-x[39]-x[44]-x[49]-x[54]-x[59]-0.5*x[64]-0.5*x[69]-0.5*x[74] <= 0.0)
@constraint(m, e20, -1.6*x[19]-1.6*x[24]-1.6*x[29]+0.4*x[34]+0.4*x[39]+0.4*x[44]-0.1*x[49]-0.1*x[54]-0.1*x[59]-0.1*x[64]-0.1*x[69]-0.1*x[74]-0.1*x[91] <= 0.0)
@constraint(m, e21, x[20]+x[25]+x[30]-x[35]-x[40]-x[45]-x[50]-x[55]-x[60]-0.5*x[65]-0.5*x[70]-0.5*x[75] <= 0.0)
@constraint(m, e22, -x[20]-x[25]-x[30]+x[35]+x[40]+x[45]+0.5*x[50]+0.5*x[55]+0.5*x[60]+0.5*x[65]+0.5*x[70]+0.5*x[75]+0.5*x[92] <= 0.0)
@constraint(m, e23, x[21]+x[26]+x[31]-x[36]-x[41]-x[46]-x[51]-x[56]-x[61]-0.5*x[66]-0.5*x[71]-0.5*x[76] <= 0.0)
@constraint(m, e24, -x[21]-x[26]-x[31]+x[36]+x[41]+x[46]+0.5*x[51]+0.5*x[56]+0.5*x[61]+0.5*x[66]+0.5*x[71]+0.5*x[76]+0.5*x[93] <= 0.0)
@constraint(m, e25, x[2]+x[3]+x[4]+x[5]+x[6] == 1.0)
@constraint(m, e26, x[7]+x[8]+x[9]+x[10]+x[11] == 1.0)
@constraint(m, e27, x[12]+x[13]+x[14]+x[15]+x[16] == 1.0)
@NLconstraint(m, e28, -x[2]*x[77]+x[17] == 0.0)
@NLconstraint(m, e29, -x[3]*x[77]+x[18] == 0.0)
@NLconstraint(m, e30, -x[4]*x[77]+x[19] == 0.0)
@NLconstraint(m, e31, -x[5]*x[77]+x[20] == 0.0)
@NLconstraint(m, e32, -x[6]*x[77]+x[21] == 0.0)
@NLconstraint(m, e33, -x[7]*x[78]+x[22] == 0.0)
@NLconstraint(m, e34, -x[8]*x[78]+x[23] == 0.0)
@NLconstraint(m, e35, -x[9]*x[78]+x[24] == 0.0)
@NLconstraint(m, e36, -x[10]*x[78]+x[25] == 0.0)
@NLconstraint(m, e37, -x[11]*x[78]+x[26] == 0.0)
@NLconstraint(m, e38, -x[12]*x[79]+x[27] == 0.0)
@NLconstraint(m, e39, -x[13]*x[79]+x[28] == 0.0)
@NLconstraint(m, e40, -x[14]*x[79]+x[29] == 0.0)
@NLconstraint(m, e41, -x[15]*x[79]+x[30] == 0.0)
@NLconstraint(m, e42, -x[16]*x[79]+x[31] == 0.0)
@NLconstraint(m, e43, -x[2]*x[80]+x[32] == 0.0)
@NLconstraint(m, e44, -x[3]*x[80]+x[33] == 0.0)
@NLconstraint(m, e45, -x[4]*x[80]+x[34] == 0.0)
@NLconstraint(m, e46, -x[5]*x[80]+x[35] == 0.0)
@NLconstraint(m, e47, -x[6]*x[80]+x[36] == 0.0)
@NLconstraint(m, e48, -x[7]*x[81]+x[37] == 0.0)
@NLconstraint(m, e49, -x[8]*x[81]+x[38] == 0.0)
@NLconstraint(m, e50, -x[9]*x[81]+x[39] == 0.0)
@NLconstraint(m, e51, -x[10]*x[81]+x[40] == 0.0)
@NLconstraint(m, e52, -x[11]*x[81]+x[41] == 0.0)
@NLconstraint(m, e53, -x[12]*x[82]+x[42] == 0.0)
@NLconstraint(m, e54, -x[13]*x[82]+x[43] == 0.0)
@NLconstraint(m, e55, -x[14]*x[82]+x[44] == 0.0)
@NLconstraint(m, e56, -x[15]*x[82]+x[45] == 0.0)
@NLconstraint(m, e57, -x[16]*x[82]+x[46] == 0.0)
@NLconstraint(m, e58, -x[2]*x[83]+x[47] == 0.0)
@NLconstraint(m, e59, -x[3]*x[83]+x[48] == 0.0)
@NLconstraint(m, e60, -x[4]*x[83]+x[49] == 0.0)
@NLconstraint(m, e61, -x[5]*x[83]+x[50] == 0.0)
@NLconstraint(m, e62, -x[6]*x[83]+x[51] == 0.0)
@NLconstraint(m, e63, -x[7]*x[84]+x[52] == 0.0)
@NLconstraint(m, e64, -x[8]*x[84]+x[53] == 0.0)
@NLconstraint(m, e65, -x[9]*x[84]+x[54] == 0.0)
@NLconstraint(m, e66, -x[10]*x[84]+x[55] == 0.0)
@NLconstraint(m, e67, -x[11]*x[84]+x[56] == 0.0)
@NLconstraint(m, e68, -x[12]*x[85]+x[57] == 0.0)
@NLconstraint(m, e69, -x[13]*x[85]+x[58] == 0.0)
@NLconstraint(m, e70, -x[14]*x[85]+x[59] == 0.0)
@NLconstraint(m, e71, -x[15]*x[85]+x[60] == 0.0)
@NLconstraint(m, e72, -x[16]*x[85]+x[61] == 0.0)
@NLconstraint(m, e73, -x[2]*x[86]+x[62] == 0.0)
@NLconstraint(m, e74, -x[3]*x[86]+x[63] == 0.0)
@NLconstraint(m, e75, -x[4]*x[86]+x[64] == 0.0)
@NLconstraint(m, e76, -x[5]*x[86]+x[65] == 0.0)
@NLconstraint(m, e77, -x[6]*x[86]+x[66] == 0.0)
@NLconstraint(m, e78, -x[7]*x[87]+x[67] == 0.0)
@NLconstraint(m, e79, -x[8]*x[87]+x[68] == 0.0)
@NLconstraint(m, e80, -x[9]*x[87]+x[69] == 0.0)
@NLconstraint(m, e81, -x[10]*x[87]+x[70] == 0.0)
@NLconstraint(m, e82, -x[11]*x[87]+x[71] == 0.0)
@NLconstraint(m, e83, -x[12]*x[88]+x[72] == 0.0)
@NLconstraint(m, e84, -x[13]*x[88]+x[73] == 0.0)
@NLconstraint(m, e85, -x[14]*x[88]+x[74] == 0.0)
@NLconstraint(m, e86, -x[15]*x[88]+x[75] == 0.0)
@NLconstraint(m, e87, -x[16]*x[88]+x[76] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.