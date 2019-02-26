using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1-0.013869625520111*exp(-4*x[2])*x[1]-0.013869625520111*x[3])^2+ (1-0.0152439024390244*exp(-5.75*x[2])*x[1]-0.0152439024390244*x[3])^2+ (1-0.0178890876565295*exp(-7.5*x[2])*x[1]-0.0178890876565295*x[3])^2+ (1-0.0584795321637427*exp(-24*x[2])*x[1]-0.0584795321637427*x[3])^2+ (1-0.102040816326531*exp(-32*x[2])*x[1]-0.102040816326531*x[3])^2+ (1-0.222222222222222*exp(-48*x[2])*x[1]-0.222222222222222*x[3])^2+ (1-0.769230769230769*exp(-72*x[2])*x[1]-0.769230769230769*x[3])^2+ (1-1.66666666666667*exp(-96*x[2])*x[1]-1.66666666666667*x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.