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
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((x[3]*x[7]+x[5]*x[8])*x[1]+(x[4]*x[7]+x[6]*x[8])*x[2]-(x[9]*(2+x[7])+x[10]*(5+x[8]))-(x[11]*(3-x[7])+x[12]*(10-x[8]))-(x[13]*(-0.2+x[3])+x[14]*(-0.3+x[4])+x[15]*(-0.3+x[5])+x[16]*(-0.2+x[6]))-(x[17]*(0.8-x[3])+x[18]*(0.7-x[4])+x[19]*(0.8-x[5])+x[20]*(0.6-x[6]))-(x[21]*(1-x[3]-x[5])+x[22]*(1-x[4]-x[6]))-x[23]*(3-x[7]-x[8])-x[24]*(20-x[3]-x[4]-x[5]-x[6]))+x[25] == 0.0)
@constraint(m, e2, x[1]+x[2] == 1.0)
@NLconstraint(m, e3, x[1]*x[3]+x[2]*x[4]-x[9]+x[11]+x[23] == 0.0)
@NLconstraint(m, e4, x[1]*x[5]+x[2]*x[6]-x[10]+x[12]+x[23] == 0.0)
@NLconstraint(m, e5, x[1]*x[7]-x[13]+x[17]+x[21]+x[24] == 0.0)
@NLconstraint(m, e6, x[2]*x[7]-x[14]+x[18]+x[22]+x[24] == 0.0)
@NLconstraint(m, e7, x[1]*x[8]-x[15]+x[19]+x[21]+x[24] == 0.0)
@NLconstraint(m, e8, x[2]*x[8]-x[16]+x[20]+x[22]+x[24] == 0.0)
@constraint(m, e9, x[7] >= -2.0)
@constraint(m, e10, x[8] >= -5.0)
@constraint(m, e11, x[7] <= 3.0)
@constraint(m, e12, x[8] <= 10.0)
@constraint(m, e13, x[3] >= 0.2)
@constraint(m, e14, x[4] >= 0.3)
@constraint(m, e15, x[5] >= 0.3)
@constraint(m, e16, x[6] >= 0.2)
@constraint(m, e17, x[3] <= 0.8)
@constraint(m, e18, x[4] <= 0.7)
@constraint(m, e19, x[5] <= 0.8)
@constraint(m, e20, x[6] <= 0.6)
@constraint(m, e21, x[3]+x[5] == 1.0)
@constraint(m, e22, x[4]+x[6] == 1.0)
@constraint(m, e23, x[7]+x[8] <= 3.0)
@constraint(m, e24, x[3]+x[4]+x[5]+x[6] <= 20.0)
@NLconstraint(m, e25, x[9]*(2+x[7]) == 0.0)
@NLconstraint(m, e26, x[10]*(5+x[8]) == 0.0)
@NLconstraint(m, e27, x[11]*(3-x[7]) == 0.0)
@NLconstraint(m, e28, x[12]*(10-x[8]) == 0.0)
@NLconstraint(m, e29, x[13]*(-0.2+x[3]) == 0.0)
@NLconstraint(m, e30, x[14]*(-0.3+x[4]) == 0.0)
@NLconstraint(m, e31, x[15]*(-0.3+x[5]) == 0.0)
@NLconstraint(m, e32, x[16]*(-0.2+x[6]) == 0.0)
@NLconstraint(m, e33, x[17]*(0.8-x[3]) == 0.0)
@NLconstraint(m, e34, x[18]*(0.7-x[4]) == 0.0)
@NLconstraint(m, e35, x[19]*(0.8-x[5]) == 0.0)
@NLconstraint(m, e36, x[20]*(0.6-x[6]) == 0.0)
@NLconstraint(m, e37, x[21]*(1-x[3]-x[5]) == 0.0)
@NLconstraint(m, e38, x[22]*(1-x[4]-x[6]) == 0.0)
@NLconstraint(m, e39, x[23]*(3-x[7]-x[8]) == 0.0)
@NLconstraint(m, e40, x[24]*(20-x[3]-x[4]-x[5]-x[6]) == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[25])

m = m 		 # model get returned when including this script.