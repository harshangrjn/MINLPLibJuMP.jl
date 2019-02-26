using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[22], 0.0)
set_upper_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_upper_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_upper_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 5.0)
set_upper_bound(x[4], 15.0)
set_upper_bound(x[5], 20.0)
set_upper_bound(x[6], 20.0)
set_upper_bound(x[7], 20.0)
set_upper_bound(x[10], 40.0)
set_upper_bound(x[11], 40.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-(200-x[6]-x[10])*(x[6]+x[10])-(160-x[7]-x[11])*(x[7]+x[11]))+x[1] == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4]+x[5] <= 40.0)
@constraint(m, e3, 2*x[6]-0.4*x[8]-0.6*x[9]-x[14]+x[15] == 8.0)
@constraint(m, e4, 2*x[7]-0.7*x[8]-0.3*x[9]-x[16]+x[17] == 26.0)
@constraint(m, e5, -x[2]+0.4*x[6]+0.7*x[7]+x[18] == 0.0)
@constraint(m, e6, -x[3]+0.6*x[6]+0.3*x[7]+x[19] == 0.0)
@constraint(m, e7, 2*x[10]-0.4*x[12]-0.6*x[13]-x[20]+x[21] == 70.0)
@constraint(m, e8, 2*x[11]-0.7*x[12]-0.3*x[13]-x[22]+x[23] == 4.0)
@constraint(m, e9, -x[4]+0.4*x[10]+0.7*x[11]+x[24] == 0.0)
@constraint(m, e10, -x[5]+0.6*x[10]+0.3*x[11]+x[25] == 0.0)
@NLconstraint(m, e11, x[14]*x[6] == 0.0)
@NLconstraint(m, e12, x[15]*(20-x[6]) == 0.0)
@NLconstraint(m, e13, x[16]*x[7] == 0.0)
@NLconstraint(m, e14, x[17]*(20-x[7]) == 0.0)
@NLconstraint(m, e15, -x[18]*x[8] == 0.0)
@NLconstraint(m, e16, -x[19]*x[9] == 0.0)
@NLconstraint(m, e17, x[20]*x[10] == 0.0)
@NLconstraint(m, e18, x[21]*(40-x[10]) == 0.0)
@NLconstraint(m, e19, x[22]*x[11] == 0.0)
@NLconstraint(m, e20, x[23]*(40-x[11]) == 0.0)
@NLconstraint(m, e21, -x[24]*x[12] == 0.0)
@NLconstraint(m, e22, -x[25]*x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.