using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[1], 600.0)
set_upper_bound(x[2], 600.0)
set_upper_bound(x[3], 600.0)
set_upper_bound(x[4], 600.0)
set_upper_bound(x[5], 600.0)
set_upper_bound(x[6], 600.0)
set_upper_bound(x[7], 600.0)
set_upper_bound(x[8], 600.0)
set_upper_bound(x[9], 600.0)
set_upper_bound(x[10], 600.0)
set_upper_bound(x[11], 600.0)
set_upper_bound(x[12], 600.0)
set_upper_bound(x[13], 600.0)
set_upper_bound(x[14], 600.0)
set_upper_bound(x[15], 600.0)
set_upper_bound(x[16], 600.0)
set_upper_bound(x[17], 600.0)
set_upper_bound(x[18], 600.0)
set_upper_bound(x[19], 600.0)
set_upper_bound(x[20], 600.0)
set_upper_bound(x[21], 600.0)
set_upper_bound(x[22], 600.0)
set_upper_bound(x[23], 600.0)
set_upper_bound(x[24], 600.0)
set_upper_bound(x[25], 600.0)
set_upper_bound(x[26], 600.0)
set_upper_bound(x[27], 600.0)
set_upper_bound(x[28], 600.0)
set_upper_bound(x[29], 600.0)
set_upper_bound(x[30], 600.0)
set_upper_bound(x[31], 600.0)
set_upper_bound(x[32], 600.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)
set_upper_bound(x[51], 1.0)
set_upper_bound(x[52], 1.0)
set_upper_bound(x[53], 1.0)
set_upper_bound(x[54], 1.0)
set_upper_bound(x[55], 1.0)
set_upper_bound(x[56], 1.0)
set_upper_bound(x[57], 1.0)
set_upper_bound(x[58], 1.0)
set_upper_bound(x[59], 1.0)
set_upper_bound(x[60], 1.0)
set_upper_bound(x[61], 1.0)
set_upper_bound(x[62], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]+x[5] == 600.0)
@constraint(m, e2, -x[1]+x[6]-x[17]-x[26] == 0.0)
@constraint(m, e3, -x[2]-x[11]+x[15]-x[27] == 0.0)
@constraint(m, e4, -x[3]-x[12]-x[21]+x[24] == 0.0)
@constraint(m, e5, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e6, x[10]-x[11]-x[12]-x[13]-x[14] == 0.0)
@constraint(m, e7, x[16]-x[17]-x[18]-x[19] == 0.0)
@constraint(m, e8, x[20]-x[21]-x[22]-x[23] == 0.0)
@constraint(m, e9, x[25]-x[26]-x[27]-x[28]-x[29] == 0.0)
@constraint(m, e10, x[30]-x[31]-x[32] == 0.0)
@NLconstraint(m, e11, x[7]*x[37]-0.85*x[6]*x[33] == 0.0)
@NLconstraint(m, e12, x[16]*x[48]-0.85*x[15]*x[44] == 0.0)
@NLconstraint(m, e13, x[25]*x[59]-x[24]*x[55] == 0.0)
@NLconstraint(m, e14, x[10]*x[40]-x[6]*x[34] == 0.0)
@NLconstraint(m, e15, x[20]*x[51]-0.85*x[15]*x[45] == 0.0)
@NLconstraint(m, e16, x[30]*x[62]-0.85*x[24]*x[56] == 0.0)
@NLconstraint(m, e17, x[6]*x[33]-x[7]*x[37]-x[10]*x[39] == 0.0)
@NLconstraint(m, e18, x[6]*x[34]-x[7]*x[38]-x[10]*x[40] == 0.0)
@NLconstraint(m, e19, x[6]*x[35]-x[10]*x[41] == 0.0)
@NLconstraint(m, e20, x[6]*x[36]-x[10]*x[42] == 0.0)
@NLconstraint(m, e21, x[15]*x[43]-x[16]*x[47] == 0.0)
@NLconstraint(m, e22, x[15]*x[44]-x[16]*x[48]-x[20]*x[50] == 0.0)
@NLconstraint(m, e23, x[15]*x[45]-x[16]*x[49]-x[20]*x[51] == 0.0)
@NLconstraint(m, e24, x[15]*x[46]-x[20]*x[52] == 0.0)
@NLconstraint(m, e25, x[24]*x[53]-x[25]*x[57] == 0.0)
@NLconstraint(m, e26, x[24]*x[54]-x[25]*x[58] == 0.0)
@NLconstraint(m, e27, x[24]*x[55]-x[25]*x[59]-x[30]*x[61] == 0.0)
@NLconstraint(m, e28, x[24]*x[56]-x[25]*x[60]-x[30]*x[62] == 0.0)
@NLconstraint(m, e29, x[17]*x[47]+x[26]*x[57]-x[6]*x[33]+0.25*x[1] == 0.0)
@NLconstraint(m, e30, x[17]*x[48]+x[26]*x[58]-x[6]*x[34]+0.333*x[1] == 0.0)
@NLconstraint(m, e31, x[17]*x[49]+x[26]*x[59]-x[6]*x[35]+0.167*x[1] == 0.0)
@NLconstraint(m, e32, x[26]*x[60]-x[6]*x[36]+0.25*x[1] == 0.0)
@NLconstraint(m, e33, x[11]*x[39]+x[27]*x[57]-x[15]*x[43]+0.25*x[2] == 0.0)
@NLconstraint(m, e34, x[11]*x[40]+x[27]*x[58]-x[15]*x[44]+0.333*x[2] == 0.0)
@NLconstraint(m, e35, x[11]*x[41]+x[27]*x[59]-x[15]*x[45]+0.167*x[2] == 0.0)
@NLconstraint(m, e36, x[11]*x[42]+x[27]*x[60]-x[15]*x[46]+0.25*x[2] == 0.0)
@NLconstraint(m, e37, x[12]*x[39]-x[24]*x[53]+0.25*x[3] == 0.0)
@NLconstraint(m, e38, x[12]*x[40]+x[21]*x[50]-x[24]*x[54]+0.333*x[3] == 0.0)
@NLconstraint(m, e39, x[12]*x[41]+x[21]*x[51]-x[24]*x[55]+0.167*x[3] == 0.0)
@NLconstraint(m, e40, x[12]*x[42]+x[21]*x[52]-x[24]*x[56]+0.25*x[3] == 0.0)
@NLconstraint(m, e41, x[8]*x[37]+x[13]*x[39]+x[18]*x[47]+x[28]*x[57]+0.25*x[4] == 50.0)
@NLconstraint(m, e42, x[8]*x[38]+x[13]*x[40]+x[18]*x[48]+x[22]*x[50]+x[28]*x[58]+0.222*x[4] == 100.0)
@NLconstraint(m, e43, x[13]*x[41]+x[18]*x[49]+x[22]*x[51]+x[28]*x[59]+x[31]*x[61]+0.167*x[4] == 40.0)
@NLconstraint(m, e44, x[13]*x[42]+x[22]*x[52]+x[28]*x[60]+x[31]*x[62]+0.25*x[4] == 100.0)
@constraint(m, e45, x[33]+x[34]+x[35]+x[36] == 1.0)
@constraint(m, e46, x[37]+x[38] == 1.0)
@constraint(m, e47, x[39]+x[40]+x[41]+x[42] == 1.0)
@constraint(m, e48, x[43]+x[44]+x[45]+x[46] == 1.0)
@constraint(m, e49, x[47]+x[48]+x[49] == 1.0)
@constraint(m, e50, x[50]+x[51]+x[52] == 1.0)
@constraint(m, e51, x[53]+x[54]+x[55]+x[56] == 1.0)
@constraint(m, e52, x[57]+x[58]+x[59]+x[60] == 1.0)
@constraint(m, e53, x[61]+x[62] == 1.0)
@NLconstraint(m, e54, -((0.00132223+0.0016446*x[33]+0.0018611*x[34]+0.001262*x[35])*x[6]+(0.0015625*x[43]+0.0091604*x[44]+0.0076758*x[45]-9.40700000000017e-5)*x[15]+(0.00457315+(-0.001748*x[53])-0.0002583*x[54]-0.0004691*x[55])*x[24])+objvar == 1.68776)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.