using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], -3.0)
setupperbound(x[1], 3.0)
setlowerbound(x[2], -1.5)
setupperbound(x[2], 1.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(4* (x[1])^2-2.1* (x[1])^4+0.333333333333333* (x[1])^6+x[1]*x[2]-4* (x[2])^2+4* (x[2])^4)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
