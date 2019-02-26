using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[1], 1.0e6)
set_upper_bound(x[2], 1.0e6)
set_upper_bound(x[3], 1.0e6)
set_upper_bound(x[4], 1.0e6)
set_upper_bound(x[5], 1.0e6)
set_upper_bound(x[6], 1.0e6)
set_upper_bound(x[7], 1.0e6)
set_upper_bound(x[8], 1.0e6)
set_upper_bound(x[9], 1.0e6)
set_upper_bound(x[10], 1.0e6)
set_upper_bound(x[11], 1.0e6)
set_upper_bound(x[12], 1.0e6)
set_upper_bound(x[13], 1.0e6)
set_upper_bound(x[14], 1.0e6)
set_upper_bound(x[15], 1.0e6)
set_upper_bound(x[16], 1.0e6)
set_upper_bound(x[17], 1.0e6)
set_upper_bound(x[18], 1.0e6)
set_upper_bound(x[19], 1.0e6)
set_upper_bound(x[20], 1.0e6)
set_upper_bound(x[21], 1.0e6)
set_upper_bound(x[22], 1.0e6)
set_upper_bound(x[23], 1.0e6)
set_upper_bound(x[24], 1.0e6)
set_upper_bound(x[25], 1.0e6)
set_upper_bound(x[26], 1.0e6)
set_upper_bound(x[27], 1.0e6)
set_upper_bound(x[28], 1.0e6)
set_upper_bound(x[29], 1.0e6)
set_upper_bound(x[30], 1.0e6)
set_upper_bound(x[31], 1.0e6)
set_upper_bound(x[32], 1.0e6)
set_upper_bound(x[33], 1.0e6)
set_upper_bound(x[34], 1.0e6)
set_upper_bound(x[35], 1.0e6)
set_upper_bound(x[36], 1.0e6)
set_upper_bound(x[37], 1.0e6)
set_upper_bound(x[38], 1.0e6)
set_upper_bound(x[39], 1.0e6)
set_upper_bound(x[40], 1.0e6)
set_upper_bound(x[41], 1.0e6)
set_upper_bound(x[42], 1.0e6)
set_upper_bound(x[43], 1.0e6)
set_upper_bound(x[44], 1.0e6)
set_upper_bound(x[45], 1.0e6)
set_upper_bound(x[46], 1.0e6)


# ----- Constraints ----- #
@constraint(m, e1, -x[44]-x[45]-x[46]+objvar == 0.0)
@constraint(m, e2, -x[28]-x[34]-x[35]-x[36] == -150.0)
@constraint(m, e3, -x[29]-x[37]-x[38]-x[39] == -70.0)
@constraint(m, e4, -x[30]-x[40]-x[41]-x[42] == -900.0)
@constraint(m, e5, -x[19]-x[22]-x[25]-x[34]-x[37]-x[40]+x[44] == 0.0)
@constraint(m, e6, -x[20]-x[23]-x[26]-x[35]-x[38]-x[41]+x[45] == 0.0)
@constraint(m, e7, -x[21]-x[24]-x[27]-x[36]-x[39]-x[42]+x[46] == 0.0)
@constraint(m, e8, -x[19]-x[20]-x[21]-x[31]+x[44] == 0.0)
@constraint(m, e9, -x[22]-x[23]-x[24]-x[32]+x[45] == 0.0)
@constraint(m, e10, -x[25]-x[26]-x[27]-x[33]+x[46] == 0.0)
@constraint(m, e11, -x[28]-x[29]-x[30]-x[31]-x[32]-x[33]+x[43] == 0.0)
@NLconstraint(m, e12, x[19]*x[10]+x[22]*x[13]+x[25]*x[16]-x[44]*x[1]+10*x[34]+110*x[37]+100*x[40] == 0.0)
@NLconstraint(m, e13, x[19]*x[11]+x[22]*x[14]+x[25]*x[17]-x[44]*x[2]+200*x[34]+140*x[37]+25*x[40] == 0.0)
@NLconstraint(m, e14, x[19]*x[12]+x[22]*x[15]+x[25]*x[18]-x[44]*x[3]+350*x[34]+100*x[37]+90*x[40] == 0.0)
@NLconstraint(m, e15, x[20]*x[10]+x[23]*x[13]+x[26]*x[16]-x[45]*x[4]+10*x[35]+110*x[38]+100*x[41] == 0.0)
@NLconstraint(m, e16, x[20]*x[11]+x[23]*x[14]+x[26]*x[17]-x[45]*x[5]+200*x[35]+140*x[38]+25*x[41] == 0.0)
@NLconstraint(m, e17, x[20]*x[12]+x[23]*x[15]+x[26]*x[18]-x[45]*x[6]+350*x[35]+100*x[38]+90*x[41] == 0.0)
@NLconstraint(m, e18, x[21]*x[10]+x[24]*x[13]+x[27]*x[16]-x[46]*x[7]+10*x[36]+110*x[39]+100*x[42] == 0.0)
@NLconstraint(m, e19, x[21]*x[11]+x[24]*x[14]+x[27]*x[17]-x[46]*x[8]+200*x[36]+140*x[39]+25*x[42] == 0.0)
@NLconstraint(m, e20, x[21]*x[12]+x[24]*x[15]+x[27]*x[18]-x[46]*x[9]+350*x[36]+100*x[39]+90*x[42] == 0.0)
@constraint(m, e21, x[1] <= 145.0)
@constraint(m, e22, x[2] <= 400.0)
@constraint(m, e23, x[3] <= 200.0)
@constraint(m, e24, x[4] <= 110.0)
@constraint(m, e25, x[5] <= 90.0)
@constraint(m, e26, x[6] <= 120.0)
@constraint(m, e27, x[7] <= 90.0)
@constraint(m, e28, x[8] <= 100.0)
@constraint(m, e29, x[9] <= 300.0)
@constraint(m, e30, -0.1*x[1]+x[10] == 0.0)
@constraint(m, e31, -x[2]+x[11] == 0.0)
@constraint(m, e32, -0.3*x[3]+x[12] == 0.0)
@constraint(m, e33, -0.3*x[4]+x[13] == 0.0)
@constraint(m, e34, -0.1*x[5]+x[14] == 0.0)
@constraint(m, e35, -0.6*x[6]+x[15] == 0.0)
@constraint(m, e36, -x[7]+x[16] == 0.0)
@constraint(m, e37, -0.2*x[8]+x[17] == 0.0)
@constraint(m, e38, -x[9]+x[18] == 0.0)
@NLconstraint(m, e39, x[31]*x[10]+x[32]*x[13]+x[33]*x[16]+10*x[28]+110*x[29]+100*x[30]-10*x[43] <= 0.0)
@NLconstraint(m, e40, x[31]*x[11]+x[32]*x[14]+x[33]*x[17]+200*x[28]+140*x[29]+25*x[30]-15*x[43] <= 0.0)
@NLconstraint(m, e41, x[31]*x[12]+x[32]*x[15]+x[33]*x[18]+350*x[28]+100*x[29]+90*x[30]-20*x[43] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.