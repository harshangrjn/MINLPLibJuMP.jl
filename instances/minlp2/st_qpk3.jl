using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-2*x[2]-3*x[3]-4*x[4]-5*x[5]-6*x[6]-7*x[7]-8*x[8]-9*x[9]-10*x[10]-11*x[11] <= 0.0)
@constraint(m, e2, -2*x[1]-3*x[2]-4*x[3]-5*x[4]-6*x[5]-7*x[6]-8*x[7]-9*x[8]-10*x[9]-11*x[10]-x[11] <= 0.0)
@constraint(m, e3, -3*x[1]-4*x[2]-5*x[3]-6*x[4]-7*x[5]-8*x[6]-9*x[7]-10*x[8]-11*x[9]-x[10]-2*x[11] <= 0.0)
@constraint(m, e4, -4*x[1]-5*x[2]-6*x[3]-7*x[4]-8*x[5]-9*x[6]-10*x[7]-11*x[8]-x[9]-2*x[10]-3*x[11] <= 0.0)
@constraint(m, e5, -5*x[1]-6*x[2]-7*x[3]-8*x[4]-9*x[5]-10*x[6]-11*x[7]-x[8]-2*x[9]-3*x[10]-4*x[11] <= 0.0)
@constraint(m, e6, -6*x[1]-7*x[2]-8*x[3]-9*x[4]-10*x[5]-11*x[6]-x[7]-2*x[8]-3*x[9]-4*x[10]-5*x[11] <= 0.0)
@constraint(m, e7, -7*x[1]-8*x[2]-9*x[3]-10*x[4]-11*x[5]-x[6]-2*x[7]-3*x[8]-4*x[9]-5*x[10]-6*x[11] <= 0.0)
@constraint(m, e8, -8*x[1]-9*x[2]-10*x[3]-11*x[4]-x[5]-2*x[6]-3*x[7]-4*x[8]-5*x[9]-6*x[10]-7*x[11] <= 0.0)
@constraint(m, e9, -9*x[1]-10*x[2]-11*x[3]-x[4]-2*x[5]-3*x[6]-4*x[7]-5*x[8]-6*x[9]-7*x[10]-8*x[11] <= 0.0)
@constraint(m, e10, -10*x[1]-11*x[2]-x[3]-2*x[4]-3*x[5]-4*x[6]-5*x[7]-6*x[8]-7*x[9]-8*x[10]-9*x[11] <= 0.0)
@constraint(m, e11, -11*x[1]-x[2]-2*x[3]-3*x[4]-4*x[5]-5*x[6]-6*x[7]-7*x[8]-8*x[9]-9*x[10]-10*x[11] <= 0.0)
@constraint(m, e12, x[1]+2*x[2]+3*x[3]+4*x[4]+5*x[5]+6*x[6]+7*x[7]+8*x[8]+9*x[9]+10*x[10]+11*x[11] <= 66.0)
@constraint(m, e13, 2*x[1]+3*x[2]+4*x[3]+5*x[4]+6*x[5]+7*x[6]+8*x[7]+9*x[8]+10*x[9]+11*x[10]+x[11] <= 66.0)
@constraint(m, e14, 3*x[1]+4*x[2]+5*x[3]+6*x[4]+7*x[5]+8*x[6]+9*x[7]+10*x[8]+11*x[9]+x[10]+2*x[11] <= 66.0)
@constraint(m, e15, 4*x[1]+5*x[2]+6*x[3]+7*x[4]+8*x[5]+9*x[6]+10*x[7]+11*x[8]+x[9]+2*x[10]+3*x[11] <= 66.0)
@constraint(m, e16, 5*x[1]+6*x[2]+7*x[3]+8*x[4]+9*x[5]+10*x[6]+11*x[7]+x[8]+2*x[9]+3*x[10]+4*x[11] <= 66.0)
@constraint(m, e17, 6*x[1]+7*x[2]+8*x[3]+9*x[4]+10*x[5]+11*x[6]+x[7]+2*x[8]+3*x[9]+4*x[10]+5*x[11] <= 66.0)
@constraint(m, e18, 7*x[1]+8*x[2]+9*x[3]+10*x[4]+11*x[5]+x[6]+2*x[7]+3*x[8]+4*x[9]+5*x[10]+6*x[11] <= 66.0)
@constraint(m, e19, 8*x[1]+9*x[2]+10*x[3]+11*x[4]+x[5]+2*x[6]+3*x[7]+4*x[8]+5*x[9]+6*x[10]+7*x[11] <= 66.0)
@constraint(m, e20, 9*x[1]+10*x[2]+11*x[3]+x[4]+2*x[5]+3*x[6]+4*x[7]+5*x[8]+6*x[9]+7*x[10]+8*x[11] <= 66.0)
@constraint(m, e21, 10*x[1]+11*x[2]+x[3]+2*x[4]+3*x[5]+4*x[6]+5*x[7]+6*x[8]+7*x[9]+8*x[10]+9*x[11] <= 66.0)
@constraint(m, e22, 11*x[1]+x[2]+2*x[3]+3*x[4]+4*x[5]+5*x[6]+6*x[7]+7*x[8]+8*x[9]+9*x[10]+10*x[11] <= 66.0)
@NLconstraint(m, e23, -(0.5*x[1]*x[2]-x[1]*x[1]+0.5*x[2]*x[1]-x[2]*x[2]+0.5*x[2]*x[3]+0.5*x[3]*x[2]-x[3]*x[3]+0.5*x[3]*x[4]+0.5*x[4]*x[3]-x[4]*x[4]+0.5*x[4]*x[5]+0.5*x[5]*x[4]-x[5]*x[5]+0.5*x[5]*x[6]+0.5*x[6]*x[5]-x[6]*x[6]+0.5*x[6]*x[7]+0.5*x[7]*x[6]-x[7]*x[7]+0.5*x[7]*x[8]+0.5*x[8]*x[7]-x[8]*x[8]+0.5*x[8]*x[9]+0.5*x[9]*x[8]-x[9]*x[9]+0.5*x[9]*x[10]+0.5*x[10]*x[9]-x[10]*x[10]+0.5*x[10]*x[11]+0.5*x[11]*x[10]-x[11]*x[11])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.