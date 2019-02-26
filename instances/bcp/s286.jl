using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* ( (x[1])^2-x[11])^2+ ((-1)+x[1])^2+100* ( (x[2])^2-x[12])^2+ ((-1)+x[2])^2+100* ( (x[3])^2-x[13])^2+ ((-1)+x[3])^2+100* ( (x[4])^2-x[14])^2+ ((-1)+x[4])^2+100* ( (x[5])^2-x[15])^2+ ((-1)+x[5])^2+100* ( (x[6])^2-x[16])^2+ ((-1)+x[6])^2+100* ( (x[7])^2-x[17])^2+ ((-1)+x[7])^2+100* ( (x[8])^2-x[18])^2+ ((-1)+x[8])^2+100* ( (x[9])^2-x[19])^2+ ((-1)+x[9])^2+100* ( (x[10])^2-x[20])^2+ ((-1)+x[10])^2)+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.