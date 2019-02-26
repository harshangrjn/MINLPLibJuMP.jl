using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[12], 0.0)
set_upper_bound(x[12], 0.0)
set_lower_bound(x[13], 0.0)
set_upper_bound(x[13], 0.0)
set_lower_bound(x[16], 0.0)
set_upper_bound(x[16], 0.0)
set_lower_bound(x[17], 0.0)
set_upper_bound(x[17], 0.0)
set_lower_bound(x[20], 0.0)
set_upper_bound(x[20], 0.0)
set_lower_bound(x[21], 0.0)
set_upper_bound(x[21], 0.0)
set_lower_bound(x[26], -4.0)
set_upper_bound(x[26], 4.0)
set_lower_bound(x[27], -4.0)
set_upper_bound(x[27], 4.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-500*x[28]-400*x[29]-500*x[30] == 0.0)
@constraint(m, e2, -x[28]+x[29] == 0.0)
@constraint(m, e3, -x[28]+x[30] == 0.0)
@constraint(m, e4, x[2]-40*x[28] == 0.0)
@constraint(m, e5, x[3]-50*x[29] == 0.0)
@constraint(m, e6, x[4]-40*x[30] == 0.0)
@constraint(m, e7, x[5]-50*x[28] == 0.0)
@constraint(m, e8, x[6]-50*x[28] == 0.0)
@constraint(m, e9, x[7]-50*x[29] == 0.0)
@constraint(m, e10, x[8]-50*x[29] == 0.0)
@constraint(m, e11, x[9]-50*x[30] == 0.0)
@constraint(m, e12, x[10]-50*x[30] == 0.0)
@constraint(m, e13, x[11]-5*x[28] == 0.0)
@constraint(m, e14, x[14]-5*x[28] == 0.0)
@constraint(m, e15, x[15]-6.25*x[29] == 0.0)
@constraint(m, e16, x[18]-6.25*x[29] == 0.0)
@constraint(m, e17, x[19]-5*x[30] == 0.0)
@constraint(m, e18, x[22]-5*x[30] == 0.0)
@NLconstraint(m, e19, x[2]*(0.6*x[26]+0.8*x[27])-x[2]*(x[31]-x[32])-x[23] == 0.0)
@NLconstraint(m, e20, x[3]*x[27]-x[3]*(x[33]-x[34])-x[24] == 0.0)
@NLconstraint(m, e21, x[4]*(0.8*x[27]-0.6*x[26])-x[4]*(x[35]-x[36])-x[25] == 0.0)
@constraint(m, e22, 0.6*x[23]-0.6*x[25] == 400.0)
@constraint(m, e23, 0.8*x[23]+x[24]+0.8*x[25] == 600.0)
@NLconstraint(m, e24, x[11]*x[31]+x[12]*x[32]+x[5]-x[23]-x[37] == 0.0)
@NLconstraint(m, e25, x[13]*x[31]+x[14]*x[32]+x[6]+x[23]-x[38] == 0.0)
@NLconstraint(m, e26, x[15]*x[33]+x[16]*x[34]+x[7]-x[24]-x[39] == 0.0)
@NLconstraint(m, e27, x[17]*x[33]+x[18]*x[34]+x[8]+x[24]-x[40] == 0.0)
@NLconstraint(m, e28, x[19]*x[35]+x[20]*x[36]+x[9]-x[25]-x[41] == 0.0)
@NLconstraint(m, e29, x[21]*x[35]+x[22]*x[36]+x[10]+x[25]-x[42] == 0.0)
@NLconstraint(m, e30, x[37]*x[31] == 0.0)
@NLconstraint(m, e31, x[38]*x[32] == 0.0)
@NLconstraint(m, e32, x[39]*x[33] == 0.0)
@NLconstraint(m, e33, x[40]*x[34] == 0.0)
@NLconstraint(m, e34, x[41]*x[35] == 0.0)
@NLconstraint(m, e35, x[42]*x[36] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.