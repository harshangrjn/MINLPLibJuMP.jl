using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[11]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setlowerbound(i[8], 0.0)
setupperbound(i[8], 100.0)
setcategory(i[5], :Int)
setlowerbound(i[5], 0.0)
setupperbound(i[5], 100.0)
setcategory(i[4], :Int)
setlowerbound(i[4], 0.0)
setupperbound(i[4], 100.0)
setcategory(i[7], :Int)
setlowerbound(i[7], 0.0)
setupperbound(i[7], 100.0)
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setcategory(i[9], :Int)
setlowerbound(i[9], 0.0)
setupperbound(i[9], 100.0)
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[10], :Int)
setlowerbound(i[10], 0.0)
setupperbound(i[10], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setcategory(i[6], :Int)
setlowerbound(i[6], 0.0)
setupperbound(i[6], 100.0)
setupperbound(i[1], 100.0)
setupperbound(i[2], 100.0)
setupperbound(i[3], 100.0)
setupperbound(i[4], 100.0)
setupperbound(i[5], 100.0)
setupperbound(i[6], 100.0)
setupperbound(i[7], 100.0)
setupperbound(i[8], 100.0)
setupperbound(i[9], 100.0)
setupperbound(i[10], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+x[11] == 0.0)
@NLconstraint(m, e2, -i[1]*i[1] == 2000.0)
@NLconstraint(m, e3, i[2]*i[2] == 2000.0)
@NLconstraint(m, e4, i[3]*i[3]+i[9]*i[9] == 2000.0)
@NLconstraint(m, e5, -i[4]*i[4] == 2000.0)
@NLconstraint(m, e6, i[5]*i[5] == 2000.0)
@NLconstraint(m, e7, -i[6]*i[6] == 2000.0)
@NLconstraint(m, e8, i[7]*i[7] == 2000.0)
@NLconstraint(m, e9, i[3]*i[3]+i[8]*i[8] == 2000.0)
@NLconstraint(m, e10, i[9]*i[9] == 2000.0)
@NLconstraint(m, e11, i[10]*i[10] == 2000.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 