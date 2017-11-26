using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.61)
setupperbound(x[1], 2.52)
setlowerbound(x[2], 0.03)
setupperbound(x[2], 2.92)
setlowerbound(x[3], 0.25)
setupperbound(x[3], 2.87)
setlowerbound(x[4], 0.83)
setupperbound(x[4], 2.08)
setlowerbound(x[5], 0.88)
setupperbound(x[5], 2.3)
setlowerbound(x[6], 0.63)
setupperbound(x[6], 2.19)
setlowerbound(x[7], 0.4)
setupperbound(x[7], 2.88)
setlowerbound(x[8], 0.41)
setupperbound(x[8], 2.47)
setlowerbound(x[9], 0.33)
setupperbound(x[9], 2.03)
setlowerbound(x[10], 0.49)
setupperbound(x[10], 2.51)
setlowerbound(x[11], 0.62)
setupperbound(x[11], 2.12)
setlowerbound(x[12], 0.57)
setupperbound(x[12], 2.38)


# ----- Constraints ----- #
@constraint(m, e1, 4.61*x[4]+2.66*x[8]+5.32*x[9]-8.76*x[10]+7.93*x[11]+3.31*x[12] == 19.422)
@constraint(m, e2, 8.8*x[2]+5.54*x[4]+6.54*x[7]-9.39*x[9]+5.22*x[11]+6.42*x[12] == 37.307)
@constraint(m, e3, 5.97*x[1]+3.28*x[2]+8.89*x[3]+7.45*x[9]+6.12*x[10]+7.97*x[11] == 56.939)
@constraint(m, e4, 0.98*x[1]+7.97*x[2]+9.65*x[5]+2.87*x[7]+0.27*x[10]-7.5*x[11] == 23.47)
@constraint(m, e5, 3.73*x[1]+6.18*x[3]-2.51*x[4]+9.61*x[7]+6.67*x[11]-9.84*x[12] == 22.211)
@constraint(m, e6, -7.78*x[1]+2.7*x[4]+7.77*x[7]+4.49*x[8]+0.69*x[10]+9.5*x[11] == 25.011)
@constraint(m, e7, 3.52*x[1]+8.16*x[2]+7.89*x[3]-8.73*x[4]+9.76*x[5]+0.47*x[6]+7.55*x[7]-5.24*x[8]+0.84*x[9]+4.62*x[10]+2.45*x[11]+1.28*x[12] >= 51.334)
@NLconstraint(m, e8, 2.82*x[2]*x[4]+4.38*x[2]-5.74*x[4]+5.61*x[7]*x[11]+4.37*x[7]+0.22*x[11]+3.74*x[8]*x[12]+2.02*x[8]+8.85*x[12]+3.17*x[1]+3.3*x[3]+10*x[5]+8.05*x[6]+7.64*x[9]+3.71*x[10] >= 111.33)
@NLconstraint(m, e9, 1.28*x[2]-3.37*x[2]*x[4]+5.41*x[4]+5.96*x[7]*x[11]+3.7*x[7]+4.95*x[11]+4.21*x[8]*x[12]+3.78*x[8]+7.27*x[12]+7.13*x[6]*x[7]*x[9]+7.72*x[6]+1.94*x[9]+2.35*x[1]+1.94*x[3]+9.34*x[5]+6.88*x[10] >= 151.29)
@NLconstraint(m, e10, 1.45*x[2]*x[4]+8.21*x[2]+1.72*x[4]+9.11*x[7]*x[11]+0.77*x[7]+8.05*x[11]+4.98*x[8]*x[12]+2.04*x[8]+8.45*x[12]+8.69*x[6]*x[7]*x[9]+7.87*x[6]+6.67*x[9]+8.94*x[1]*x[2]*x[6]*x[6]+5.03*x[1]+5.38*x[1]*x[2]*x[12]*x[12]+7.94*x[1]*x[3]*x[3]*x[9]+7.21*x[3]+7.15*x[1]*x[7]*x[8]*x[8]+1.23*x[2]*x[6]*x[6]*x[9]+6.94*x[3]*x[3]*x[3]*x[8]+2.71*x[3]*x[4]*x[6]*x[10]+6.24*x[10]-5.37*x[4]*x[4]*x[6]*x[9]+7.23*x[4]*x[8]*x[10]*x[11]+9.78*x[5]*x[6]*x[8]*x[10]+4.81*x[5]+4.68*x[6]*x[11]*x[11]*x[11]+3.8*x[7]*x[9]*x[10]*x[11] >= 1371.132)
@NLconstraint(m, e11, 7.44*x[2]*x[4]+6.43*x[2]+4.79*x[4]+6.9*x[7]*x[11]+9.72*x[7]+0.82*x[11]+4.34*x[8]*x[12]+6.89*x[8]+0.3*x[12]+3.69*x[6]*x[7]*x[9]+9.52*x[6]+0.44*x[9]-2.92*x[1]*x[2]*x[6]*x[6]+8.54*x[1]+7.37*x[1]*x[2]*x[12]*x[12]+0.35*x[1]*x[3]*x[3]*x[9]+0.3*x[3]+2.14*x[1]*x[7]*x[8]*x[8]+2.89*x[2]*x[6]*x[6]*x[9]+2.68*x[3]*x[3]*x[3]*x[8]+5.94*x[3]*x[4]*x[6]*x[10]+6.74*x[10]+6.47*x[4]*x[4]*x[6]*x[9]+7.14*x[4]*x[8]*x[10]*x[11]-4.4*x[5]*x[6]*x[8]*x[10]+6.48*x[5]+4.18*x[6]*x[11]*x[11]*x[11]+3.69*x[7]*x[9]*x[10]*x[11]+3.92*x[1]*x[1]*x[3]*x[3]*x[5]+2.3*x[1]*x[1]*x[3]*x[6]*x[9]+4.3*x[1]*x[1]*x[5]*x[9]*x[9]+8.79*x[1]*x[1]*x[7]*x[9]*x[12]-5.69*x[1]*x[2]*x[2]*x[3]*x[12]+6.73*x[1]*x[2]*x[3]*x[3]*x[5]+3.13*x[1]*x[2]*x[3]*x[6]*x[7]+7.74*x[1]*x[2]*x[3]*x[7]*x[8]+6.19*x[1]*x[2]*x[6]*x[7]*x[7]+2.2*x[1]*x[2]*x[7]*x[7]*x[9]+7.8*x[1]*x[2]*x[7]*x[7]*x[10]+1.72*x[1]*x[2]*x[7]*x[10]*x[10]+8.82*x[1]*x[3]*x[5]*x[7]*x[10]+2.35*x[1]*x[4]*x[4]*x[5]*x[11]+9.71*x[1]*x[5]*x[6]*x[9]*x[10]+2.7*x[1]*x[5]*x[10]*x[10]*x[11]+6.13*x[1]*x[7]*x[7]*x[7]*x[11]+5.99*x[1]*x[9]*x[11]*x[11]*x[11]+9.69*x[2]*x[2]*x[9]*x[9]*x[11]+0.1*x[2]*x[3]*x[6]*x[8]*x[9]+0.72*x[2]*x[3]*x[7]*x[7]*x[9]+4.58*x[2]*x[4]*x[8]*x[9]*x[9]+4.46*x[2]*x[6]*x[8]*x[8]*x[12]+8.89*x[2]*x[9]*x[11]*x[11]*x[11]-7.25*x[3]*x[3]*x[3]*x[3]*x[5]+0.76*x[3]*x[3]*x[3]*x[6]*x[8]+4.33*x[3]*x[3]*x[6]*x[7]*x[7]+8.79*x[3]*x[3]*x[7]*x[9]*x[12]+5.77*x[3]*x[4]*x[6]*x[11]*x[12]+8.33*x[3]*x[8]*x[9]*x[9]*x[9]+2.13*x[3]*x[10]*x[10]*x[10]*x[11]-4.79*x[4]*x[5]*x[5]*x[5]*x[10]+6.33*x[4]*x[5]*x[11]*x[11]*x[12]+3.3*x[4]*x[6]*x[6]*x[11]*x[11]+3.43*x[4]*x[7]*x[8]*x[8]*x[8]+8.91*x[4]*x[8]*x[8]*x[9]*x[11]+4.75*x[5]*x[5]*x[5]*x[6]*x[10]+6.33*x[5]*x[5]*x[7]*x[9]*x[12]+7.97*x[5]*x[5]*x[8]*x[8]*x[10]+3.24*x[6]*x[6]*x[7]*x[10]*x[10]-9.72*x[6]*x[6]*x[8]*x[8]*x[11]+6.34*x[6]*x[6]*x[8]*x[11]*x[12]+2.34*x[6]*x[7]*x[7]*x[7]*x[7]+4.13*x[6]*x[8]*x[9]*x[10]*x[10]+1.13*x[6]*x[10]*x[10]*x[12]*x[12]+5.4*x[7]*x[7]*x[11]*x[12]*x[12] >= 8966.365)
@constraint(m, e12, -3.96*x[1]+7.75*x[2]+9.58*x[3]-4.85*x[4]+6.25*x[5]+6.85*x[6]+7.29*x[7]+2.7*x[8]+5.08*x[9]+8.72*x[10]+0.1*x[11]+2.24*x[12] >= 71.077)
@NLconstraint(m, e13, -(9.24*x[2]*x[4]+2.71*x[2]+1.08*x[4]+9.51*x[7]*x[11]-5.54*x[7]+7.48*x[11]+1.15*x[8]*x[12]+5.64*x[8]+8.52*x[12]+2.94*x[6]*x[7]*x[9]-7.47*x[6]+5.38*x[9]-6.85*x[1]*x[2]*x[6]*x[6]+2.32*x[1]+8.71*x[1]*x[2]*x[12]*x[12]+7.42*x[1]*x[3]*x[3]*x[9]+8.78*x[3]+3.96*x[1]*x[7]*x[8]*x[8]+6.13*x[2]*x[6]*x[6]*x[9]+9.13*x[3]*x[3]*x[3]*x[8]+5.53*x[3]*x[4]*x[6]*x[10]+7.04*x[10]+3.91*x[4]*x[4]*x[6]*x[9]+3.25*x[4]*x[8]*x[10]*x[11]+2.04*x[5]*x[6]*x[8]*x[10]+6.03*x[5]+8.18*x[6]*x[11]*x[11]*x[11]+9.2*x[7]*x[9]*x[10]*x[11]+3.46*x[1]*x[1]*x[3]*x[3]*x[5]+2.87*x[1]*x[1]*x[3]*x[6]*x[9]+8.04*x[1]*x[1]*x[5]*x[9]*x[9]+8.32*x[1]*x[1]*x[7]*x[9]*x[12]+3.15*x[1]*x[2]*x[2]*x[3]*x[12]+9.82*x[1]*x[2]*x[3]*x[3]*x[5]+5.44*x[1]*x[2]*x[3]*x[6]*x[7]+1.06*x[1]*x[2]*x[3]*x[7]*x[8]+3.18*x[1]*x[2]*x[6]*x[7]*x[7]+3.82*x[1]*x[2]*x[7]*x[7]*x[9]+7.27*x[1]*x[2]*x[7]*x[7]*x[10]+9.08*x[1]*x[2]*x[7]*x[10]*x[10]+3.43*x[1]*x[3]*x[5]*x[7]*x[10]-9.55*x[1]*x[4]*x[4]*x[5]*x[11]+7.24*x[1]*x[5]*x[6]*x[9]*x[10]-7.61*x[1]*x[5]*x[10]*x[10]*x[11]+8.65*x[1]*x[7]*x[7]*x[7]*x[11]+7.92*x[1]*x[9]*x[11]*x[11]*x[11]+7.29*x[2]*x[2]*x[9]*x[9]*x[11]+8.51*x[2]*x[3]*x[6]*x[8]*x[9]+5.5*x[2]*x[3]*x[7]*x[7]*x[9]+9.66*x[2]*x[4]*x[8]*x[9]*x[9]-0.27*x[2]*x[6]*x[8]*x[8]*x[12]+4.47*x[2]*x[9]*x[11]*x[11]*x[11]+0.91*x[3]*x[3]*x[3]*x[3]*x[5]+0.2*x[3]*x[3]*x[3]*x[6]*x[8]+3.92*x[3]*x[3]*x[6]*x[7]*x[7]+4.56*x[3]*x[3]*x[7]*x[9]*x[12]-1.6*x[3]*x[4]*x[6]*x[11]*x[12]+5.82*x[3]*x[8]*x[9]*x[9]*x[9]+6.04*x[3]*x[10]*x[10]*x[10]*x[11]+0.99*x[4]*x[5]*x[5]*x[5]*x[10]+4.94*x[4]*x[5]*x[11]*x[11]*x[12]+1.01*x[4]*x[6]*x[6]*x[11]*x[11]+0.96*x[4]*x[7]*x[8]*x[8]*x[8]+7.09*x[4]*x[8]*x[8]*x[9]*x[11]+1.01*x[5]*x[5]*x[5]*x[6]*x[10]+7.14*x[5]*x[5]*x[7]*x[9]*x[12]+7.2*x[5]*x[5]*x[8]*x[8]*x[10]+6.57*x[6]*x[6]*x[7]*x[10]*x[10]+5.89*x[6]*x[6]*x[8]*x[8]*x[11]+2.29*x[6]*x[6]*x[8]*x[11]*x[12]+6.45*x[6]*x[7]*x[7]*x[7]*x[7]+4.08*x[6]*x[8]*x[9]*x[10]*x[10]+6.29*x[6]*x[10]*x[10]*x[12]*x[12]+2.44*x[7]*x[7]*x[11]*x[12]*x[12])+x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[13])

m = m 		 # model get returned when including this script. 