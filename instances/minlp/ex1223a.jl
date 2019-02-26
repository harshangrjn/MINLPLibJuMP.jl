using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
b_Idx = Any[4, 5, 6, 7]
@variable(m, b[b_Idx])
set_lower_bound(x[1], 0.0)
set_binary(b[4])
set_lower_bound(x[2], 0.0)
set_binary(b[6])
set_lower_bound(x[3], 0.0)
set_binary(b[5])
set_binary(b[7])
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+b[4]+b[5]+b[6] <= 5.0)
@NLconstraint(m, e2,  (x[1])^2+ (x[2])^2+ (x[3])^2+b[6] <= 5.5)
@constraint(m, e3, x[1]+b[4] <= 1.2)
@constraint(m, e4, x[2]+b[5] <= 1.8)
@constraint(m, e5, x[3]+b[6] <= 2.5)
@constraint(m, e6, x[1]+b[7] <= 1.2)
@NLconstraint(m, e7,  (x[2])^2+b[5] <= 1.64)
@NLconstraint(m, e8,  (x[3])^2+b[6] <= 4.25)
@NLconstraint(m, e9,  (x[3])^2+b[5] <= 4.64)
@NLconstraint(m, e10, -( (x[1]-1)^2+ (x[2]-2)^2+ (x[3]-3)^2)+b[4]+3*b[5]+b[6]+0.693147180559945*b[7]+objvar == 6.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.