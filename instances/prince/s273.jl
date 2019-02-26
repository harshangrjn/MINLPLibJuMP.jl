using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -10*(15* ((-1)+x[1])^2+10* (15* ((-1)+x[1])^2+14* ((-1)+x[2])^2+13* ((-1)+x[3])^2+12* ((-1)+x[4])^2+11* ((-1)+x[5])^2+10* ((-1)+x[6])^2)^2+14* ((-1)+x[2])^2+10* (15* ((-1)+x[1])^2+14* ((-1)+x[2])^2+13* ((-1)+x[3])^2+12* ((-1)+x[4])^2+11* ((-1)+x[5])^2+10* ((-1)+x[6])^2)^2+13* ((-1)+x[3])^2+10* (15* ((-1)+x[1])^2+14* ((-1)+x[2])^2+13* ((-1)+x[3])^2+12* ((-1)+x[4])^2+11* ((-1)+x[5])^2+10* ((-1)+x[6])^2)^2+12* ((-1)+x[4])^2+10* (15* ((-1)+x[1])^2+14* ((-1)+x[2])^2+13* ((-1)+x[3])^2+12* ((-1)+x[4])^2+11* ((-1)+x[5])^2+10* ((-1)+x[6])^2)^2+11* ((-1)+x[5])^2+10* (15* ((-1)+x[1])^2+14* ((-1)+x[2])^2+13* ((-1)+x[3])^2+12* ((-1)+x[4])^2+11* ((-1)+x[5])^2+10* ((-1)+x[6])^2)^2+10* ((-1)+x[6])^2+10* (15* ((-1)+x[1])^2+14* ((-1)+x[2])^2+13* ((-1)+x[3])^2+12* ((-1)+x[4])^2+11* ((-1)+x[5])^2+10* ((-1)+x[6])^2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.