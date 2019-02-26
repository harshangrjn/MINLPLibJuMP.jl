using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx])
set_integer(i[8])
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(x[11], 0.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(x[12], 0.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(x[19], 0.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[9])
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_lower_bound(x[20], 0.0)
set_integer(i[10])
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[15], 0.0)
set_integer(i[7])
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_lower_bound(x[13], 0.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_upper_bound(i[1], 5.0)
set_upper_bound(i[2], 5.0)
set_upper_bound(i[3], 5.0)
set_upper_bound(i[4], 5.0)
set_upper_bound(i[5], 5.0)
set_upper_bound(i[6], 5.0)
set_upper_bound(i[7], 5.0)
set_upper_bound(i[8], 5.0)
set_upper_bound(i[9], 5.0)
set_upper_bound(i[10], 5.0)
set_upper_bound(x[11], 5.0)
set_upper_bound(x[12], 5.0)
set_upper_bound(x[13], 5.0)
set_upper_bound(x[14], 5.0)
set_upper_bound(x[15], 5.0)
set_upper_bound(x[16], 5.0)
set_upper_bound(x[17], 5.0)
set_upper_bound(x[18], 5.0)
set_upper_bound(x[19], 5.0)
set_upper_bound(x[20], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41] <= 99.9999)
@constraint(m, e2, -0.175*i[1]-0.39*i[2]-0.83*i[3]-0.805*i[4]-0.06*i[5]-0.4*i[6]-0.52*i[7]-0.415*i[8]-0.655*i[9]-0.63*i[10]-0.29*x[11]-0.43*x[12]-0.015*x[13]-0.985*x[14]-0.165*x[15]-0.105*x[16]-0.37*x[17]-0.2*x[18]-0.49*x[19]-0.34*x[20]-objvar == 0.0)
@NLconstraint(m, e3,  (i[1])^2-x[22] <= 0.0)
@NLconstraint(m, e4,  (i[2])^2-x[23] <= 0.0)
@NLconstraint(m, e5,  (i[3])^2-x[24] <= 0.0)
@NLconstraint(m, e6,  (i[4])^2-x[25] <= 0.0)
@NLconstraint(m, e7,  (i[5])^2-x[26] <= 0.0)
@NLconstraint(m, e8,  (i[6])^2-x[27] <= 0.0)
@NLconstraint(m, e9,  (i[7])^2-x[28] <= 0.0)
@NLconstraint(m, e10,  (i[8])^2-x[29] <= 0.0)
@NLconstraint(m, e11,  (i[9])^2-x[30] <= 0.0)
@NLconstraint(m, e12,  (i[10])^2-x[31] <= 0.0)
@NLconstraint(m, e13,  (x[11])^2-x[32] <= 0.0)
@NLconstraint(m, e14,  (x[12])^2-x[33] <= 0.0)
@NLconstraint(m, e15,  (x[13])^2-x[34] <= 0.0)
@NLconstraint(m, e16,  (x[14])^2-x[35] <= 0.0)
@NLconstraint(m, e17,  (x[15])^2-x[36] <= 0.0)
@NLconstraint(m, e18,  (x[16])^2-x[37] <= 0.0)
@NLconstraint(m, e19,  (x[17])^2-x[38] <= 0.0)
@NLconstraint(m, e20,  (x[18])^2-x[39] <= 0.0)
@NLconstraint(m, e21,  (x[19])^2-x[40] <= 0.0)
@NLconstraint(m, e22,  (x[20])^2-x[41] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.