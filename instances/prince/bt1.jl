using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[2])^2 == 1.0)
@NLconstraint(m, e2, -(100* (x[1])^2+100* (x[2])^2-x[1])+objvar == -100.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.