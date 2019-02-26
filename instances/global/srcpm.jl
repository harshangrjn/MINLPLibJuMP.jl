using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[23], 13.6)
set_upper_bound(x[24], 1.1)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 16.2)
set_upper_bound(x[27], 8.9)
set_upper_bound(x[28], 4.4)
set_upper_bound(x[29], 3.1)
set_upper_bound(x[30], 1.7)
set_upper_bound(x[31], 1.9)
set_lower_bound(x[34], 2.0)
set_lower_bound(x[35], 2.0)
set_lower_bound(x[36], 2.0)
set_lower_bound(x[37], 2.0)
set_lower_bound(x[38], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[3]-x[4]+x[23] >= 0.0)
@constraint(m, e2, -x[5]-x[6]+x[24] >= 0.0)
@constraint(m, e3, -x[7]-x[8]+x[25] >= 0.0)
@constraint(m, e4, -x[9]-x[10]+x[26] >= -0.7)
@constraint(m, e5, -x[11]-x[12]+x[27] >= 0.0)
@constraint(m, e6, -x[13]-x[14]+x[28] >= 0.0)
@constraint(m, e7, -x[1]-x[2]+x[29] >= 0.0)
@constraint(m, e8, 0.35*x[3]+0.34*x[4]+0.5*x[5]+0.49*x[6]+0.68*x[7]+0.67*x[8]-x[17]-x[18]+0.99*x[21]+0.99*x[22]-x[32] >= 0.0)
@constraint(m, e9, 0.38*x[9]+0.38*x[10]+0.48*x[11]+0.47*x[12]+0.66*x[13]+0.65*x[14]-x[19]-x[20]-x[21]-x[22]-x[33] >= 0.0)
@constraint(m, e10, 0.2*x[1]+0.2*x[2]+0.96*x[15]+0.96*x[16]+0.67*x[17]+0.36*x[18]+0.61*x[19]+0.25*x[20]-x[30]-x[34] >= 0.0)
@constraint(m, e11, 0.28*x[3]+0.28*x[4]+0.25*x[5]+0.25*x[6]+0.2*x[7]+0.2*x[8]+0.26*x[9]+0.26*x[10]+0.23*x[11]+0.23*x[12]+0.18*x[13]+0.18*x[14]+0.07*x[17]+0.18*x[18]+0.02*x[19]+0.1*x[20]+x[30]+0.93*x[31]-x[35] >= -0.5)
@constraint(m, e12, 0.8*x[1]+0.8*x[2]+0.35*x[3]+0.35*x[4]+0.23*x[5]+0.23*x[6]+0.1*x[7]+0.1*x[8]+0.33*x[9]+0.33*x[10]+0.27*x[11]+0.27*x[12]+0.14*x[13]+0.14*x[14]-x[15]-x[16]+0.04*x[17]+0.03*x[18]+0.06*x[19]+0.04*x[20]-x[31]-x[36] >= 0.0)
@constraint(m, e13, 0.23*x[17]+0.42*x[18]+x[32]-x[37] >= 0.0)
@constraint(m, e14, 0.3*x[19]+0.6*x[20]+x[33]-x[38] >= -0.1)
@constraint(m, e15, x[1] <= 3.4)
@constraint(m, e16, x[2] <= 0.0)
@constraint(m, e17, x[21] <= 2.7)
@constraint(m, e18, x[22] <= 0.3)
@constraint(m, e19, x[3]+x[5]+x[7]+x[9]+x[11]+x[13] <= 50.5)
@constraint(m, e20, x[4]+x[6]+x[8]+x[10]+x[12]+x[14] <= 7.5)
@constraint(m, e21, x[15] <= 7.1)
@constraint(m, e22, x[16] <= 0.8)
@constraint(m, e23, x[17]+x[19] <= 7.3)
@constraint(m, e24, x[18]+x[20] <= 2.9)
@constraint(m, e25, -0.83*x[17]+x[19] <= 3.9)
@constraint(m, e26, x[20] <= 2.5)
@constraint(m, e27, -0.45*x[3]-0.5*x[4]-0.45*x[5]-0.5*x[6]-0.45*x[7]-0.5*x[8]-0.5*x[9]-0.55*x[10]-0.5*x[11]-0.55*x[12]-0.5*x[13]-0.55*x[14]-0.41*x[15]-0.5*x[16]-0.27*x[17]-0.45*x[18]-0.32*x[19]-0.28*x[20]-0.9*x[21]-x[22]-32*x[23]-32*x[24]-32*x[25]-32*x[26]-32*x[27]-32*x[28]-32*x[29]+0.3*x[30]+x[39] == 0.0)
@NLconstraint(m, e28, -(-3865470.56640001*x[34]^(-4)-5130022.82472*x[35]^(-4)-423446.8691225*x[36]^(-4)-1808.40439881057*x[37]^(-2.33333333333333)-17313.2956782741*x[38]^(-2.33333333333333))+x[39]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.