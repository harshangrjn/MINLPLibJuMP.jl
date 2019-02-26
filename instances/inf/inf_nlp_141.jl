using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.54)
set_upper_bound(x[1], 2.13)
set_lower_bound(x[2], 0.2)
set_upper_bound(x[2], 2.71)
set_lower_bound(x[3], 0.81)
set_upper_bound(x[3], 2.75)
set_lower_bound(x[4], 0.57)
set_upper_bound(x[4], 2.68)
set_lower_bound(x[5], 0.67)
set_upper_bound(x[5], 2.05)
set_lower_bound(x[6], 0.6)
set_upper_bound(x[6], 2.97)
set_lower_bound(x[7], 0.03)
set_upper_bound(x[7], 2.13)
set_lower_bound(x[8], 0.05)
set_upper_bound(x[8], 2.79)


# ----- Constraints ----- #
@constraint(m, e1, -0.72*x[1]+1.67*x[2]-1.83*x[3]+1.71*x[4]+0.2*x[5]-9.58*x[6]+3.52*x[7]+4.89*x[8] >= 6.16)
@NLconstraint(m, e2, 6.81*x[1]*x[4]+0.06*x[1]+9*x[4]+8.17*x[3]*x[3]+9.69*x[3]+3.98*x[4]*x[7]-0.53*x[7]-6.94*x[6]*x[8]+0.99*x[6]+7.67*x[8]+5.32*x[2]+8.81*x[5] >= 152.561)
@NLconstraint(m, e3, 0.56*x[1]*x[4]+8.38*x[1]+4.48*x[4]+6.54*x[3]*x[3]+3.47*x[3]+6.41*x[4]*x[7]+6.81*x[7]+7.53*x[6]*x[8]+3.72*x[6]+0.1*x[8]+5.74*x[1]*x[6]*x[6]+3.29*x[1]*x[6]*x[7]+0.76*x[2]*x[7]*x[7]+6.52*x[2]+7.42*x[4]*x[8]*x[8]-6.53*x[5]*x[5]*x[5]+5.15*x[5]+7.39*x[5]*x[6]*x[7] >= 448.763)
@NLconstraint(m, e4, 2.89*x[1]*x[4]+7.04*x[1]+2.3*x[4]+0.14*x[3]*x[3]+1.87*x[3]+5.79*x[4]*x[7]+3.29*x[7]+6.49*x[6]*x[8]+8.51*x[6]+7.62*x[8]+2.34*x[1]*x[6]*x[6]+9.85*x[1]*x[6]*x[7]+9.87*x[2]*x[7]*x[7]-1.58*x[2]+4.22*x[4]*x[8]*x[8]+7.63*x[5]*x[5]*x[5]+5.16*x[5]+1.73*x[5]*x[6]*x[7]+4.9*x[1]*x[1]*x[1]*x[5]+8.19*x[1]*x[1]*x[2]*x[6]+3.85*x[1]*x[1]*x[3]*x[5]+1.08*x[1]*x[1]*x[5]*x[6]+3.63*x[1]*x[1]*x[7]*x[8]+8.92*x[1]*x[2]*x[4]*x[5]+7.27*x[1]*x[3]*x[3]*x[6]+6.16*x[1]*x[3]*x[4]*x[8]-8.05*x[1]*x[4]*x[5]*x[5]+2.55*x[1]*x[5]*x[5]*x[7]-6.74*x[1]*x[6]*x[8]*x[8]+1.22*x[2]*x[2]*x[3]*x[5]+6.44*x[2]*x[2]*x[3]*x[8]+4.38*x[2]*x[2]*x[4]*x[6]+6.44*x[2]*x[3]*x[6]*x[8]+0.75*x[2]*x[5]*x[5]*x[7]+1.73*x[2]*x[6]*x[8]*x[8]+3.82*x[2]*x[7]*x[7]*x[7]+9.79*x[3]*x[3]*x[6]*x[8]+4.96*x[3]*x[4]*x[6]*x[8]+1.02*x[3]*x[5]*x[6]*x[6]+0.47*x[4]*x[4]*x[5]*x[6]+4.64*x[4]*x[5]*x[6]*x[6]+6.59*x[5]*x[5]*x[6]*x[8]+6.41*x[7]*x[8]*x[8]*x[8] >= 3538.554)
@NLconstraint(m, e5, 6.93*x[1]*x[4]+1.56*x[1]-7.1*x[4]+7.68*x[3]*x[3]+8.86*x[3]+7.63*x[4]*x[7]+4.78*x[7]+7.72*x[6]*x[8]+2.49*x[6]+2.68*x[8]+7.59*x[1]*x[6]*x[6]+7.95*x[1]*x[6]*x[7]+2.72*x[2]*x[7]*x[7]+9.76*x[2]+7.59*x[4]*x[8]*x[8]+8.92*x[5]*x[5]*x[5]+0.53*x[5]+5.04*x[5]*x[6]*x[7]+0.39*x[1]*x[1]*x[1]*x[5]+5.49*x[1]*x[1]*x[2]*x[6]+0.65*x[1]*x[1]*x[3]*x[5]+2.6*x[1]*x[1]*x[5]*x[6]+0.3*x[1]*x[1]*x[7]*x[8]+0.85*x[1]*x[2]*x[4]*x[5]+0.6*x[1]*x[3]*x[3]*x[6]-0.07*x[1]*x[3]*x[4]*x[8]+6.89*x[1]*x[4]*x[5]*x[5]+8.81*x[1]*x[5]*x[5]*x[7]+0.91*x[1]*x[6]*x[8]*x[8]+7.91*x[2]*x[2]*x[3]*x[5]+6.18*x[2]*x[2]*x[3]*x[8]+1.1*x[2]*x[2]*x[4]*x[6]+5.36*x[2]*x[3]*x[6]*x[8]+4.01*x[2]*x[5]*x[5]*x[7]+3.76*x[2]*x[6]*x[8]*x[8]+8.11*x[2]*x[7]*x[7]*x[7]+8.03*x[3]*x[3]*x[6]*x[8]+1.42*x[3]*x[4]*x[6]*x[8]+4.05*x[3]*x[5]*x[6]*x[6]-2.17*x[4]*x[4]*x[5]*x[6]+3.18*x[4]*x[5]*x[6]*x[6]+7.3*x[5]*x[5]*x[6]*x[8]+0.81*x[7]*x[8]*x[8]*x[8]+2.16*x[1]*x[1]*x[1]*x[2]*x[4]+6.38*x[1]*x[1]*x[1]*x[3]*x[3]+3.07*x[1]*x[1]*x[2]*x[5]*x[5]+8.88*x[1]*x[1]*x[3]*x[3]*x[3]+9.3*x[1]*x[1]*x[3]*x[3]*x[8]+6.89*x[1]*x[1]*x[3]*x[5]*x[8]+5.91*x[1]*x[1]*x[5]*x[5]*x[5]+7.22*x[1]*x[1]*x[5]*x[7]*x[7]+4.24*x[1]*x[1]*x[7]*x[7]*x[7]+1.29*x[1]*x[2]*x[2]*x[3]*x[6]+1.4*x[1]*x[2]*x[2]*x[5]*x[7]+3.14*x[1]*x[2]*x[4]*x[7]*x[7]+5.4*x[1]*x[2]*x[5]*x[6]*x[7]-8.37*x[1]*x[2]*x[7]*x[7]*x[7]+7.52*x[1]*x[2]*x[7]*x[7]*x[8]+7.82*x[1]*x[3]*x[7]*x[7]*x[7]+8.47*x[1]*x[4]*x[4]*x[5]*x[8]+5.27*x[1]*x[4]*x[5]*x[6]*x[7]+9.81*x[1]*x[5]*x[6]*x[8]*x[8]+3.07*x[2]*x[2]*x[3]*x[3]*x[5]+7.32*x[2]*x[2]*x[3]*x[8]*x[8]+4.86*x[2]*x[2]*x[4]*x[4]*x[7]+7.82*x[2]*x[2]*x[4]*x[5]*x[7]-9.34*x[2]*x[2]*x[5]*x[6]*x[6]+5.99*x[2]*x[2]*x[5]*x[6]*x[7]+4.33*x[2]*x[3]*x[3]*x[3]*x[7]+2.81*x[2]*x[3]*x[3]*x[6]*x[8]+4.95*x[2]*x[3]*x[4]*x[6]*x[8]+2.08*x[2]*x[3]*x[7]*x[7]*x[8]-5.16*x[2]*x[4]*x[5]*x[8]*x[8]+6.71*x[2]*x[4]*x[6]*x[6]*x[6]+6.64*x[3]*x[3]*x[4]*x[7]*x[7]+1.26*x[3]*x[3]*x[5]*x[7]*x[8]+4.16*x[3]*x[5]*x[5]*x[8]*x[8]+2.28*x[3]*x[5]*x[6]*x[6]*x[7]-1.3*x[4]*x[4]*x[4]*x[5]*x[7]+3.12*x[4]*x[4]*x[5]*x[8]*x[8]+5.91*x[4]*x[4]*x[6]*x[6]*x[8]-4.6*x[4]*x[5]*x[7]*x[7]*x[8]+8.99*x[4]*x[6]*x[7]*x[8]*x[8]+8.27*x[5]*x[5]*x[5]*x[7]*x[8]+6.4*x[6]*x[7]*x[7]*x[8]*x[8]+3.72*x[7]*x[7]*x[7]*x[7]*x[7]+7.19*x[7]*x[7]*x[7]*x[8]*x[8] >= 16290.371)
@NLconstraint(m, e6, 7.49*x[1]*x[4]+6.58*x[1]-6.31*x[4]+2.02*x[3]*x[3]+8.64*x[3]+8.95*x[4]*x[7]+2.48*x[7]+5.38*x[6]*x[8]+4.92*x[6]+6.44*x[8]+8.8*x[1]*x[6]*x[6]+2.03*x[1]*x[6]*x[7]+0.03*x[2]*x[7]*x[7]+7.85*x[2]+7.88*x[4]*x[8]*x[8]-6.09*x[5]*x[5]*x[5]-6.83*x[5]+6.07*x[5]*x[6]*x[7]-4.91*x[1]*x[1]*x[1]*x[5]+6.16*x[1]*x[1]*x[2]*x[6]+4.33*x[1]*x[1]*x[3]*x[5]+4.75*x[1]*x[1]*x[5]*x[6]+0.2*x[1]*x[1]*x[7]*x[8]+1.64*x[1]*x[2]*x[4]*x[5]+4.01*x[1]*x[3]*x[3]*x[6]+0.47*x[1]*x[3]*x[4]*x[8]+1.37*x[1]*x[4]*x[5]*x[5]+8*x[1]*x[5]*x[5]*x[7]+8.13*x[1]*x[6]*x[8]*x[8]-1.08*x[2]*x[2]*x[3]*x[5]+5.44*x[2]*x[2]*x[3]*x[8]+5.36*x[2]*x[2]*x[4]*x[6]+0.59*x[2]*x[3]*x[6]*x[8]-4.76*x[2]*x[5]*x[5]*x[7]+4.93*x[2]*x[6]*x[8]*x[8]+5.87*x[2]*x[7]*x[7]*x[7]+5.7*x[3]*x[3]*x[6]*x[8]-6.18*x[3]*x[4]*x[6]*x[8]+3.06*x[3]*x[5]*x[6]*x[6]-0.42*x[4]*x[4]*x[5]*x[6]+9.07*x[4]*x[5]*x[6]*x[6]+3.84*x[5]*x[5]*x[6]*x[8]+0.17*x[7]*x[8]*x[8]*x[8]+6.66*x[1]*x[1]*x[1]*x[2]*x[4]+9.61*x[1]*x[1]*x[1]*x[3]*x[3]+8.71*x[1]*x[1]*x[2]*x[5]*x[5]+1.47*x[1]*x[1]*x[3]*x[3]*x[3]+8.26*x[1]*x[1]*x[3]*x[3]*x[8]+2.89*x[1]*x[1]*x[3]*x[5]*x[8]+4.16*x[1]*x[1]*x[5]*x[5]*x[5]+5.92*x[1]*x[1]*x[5]*x[7]*x[7]+5.4*x[1]*x[1]*x[7]*x[7]*x[7]+5.7*x[1]*x[2]*x[2]*x[3]*x[6]+7.03*x[1]*x[2]*x[2]*x[5]*x[7]+6.46*x[1]*x[2]*x[4]*x[7]*x[7]+6.56*x[1]*x[2]*x[5]*x[6]*x[7]+1.89*x[1]*x[2]*x[7]*x[7]*x[7]+0.03*x[1]*x[2]*x[7]*x[7]*x[8]+1.47*x[1]*x[3]*x[7]*x[7]*x[7]+1.51*x[1]*x[4]*x[4]*x[5]*x[8]+9.39*x[1]*x[4]*x[5]*x[6]*x[7]+5.42*x[1]*x[5]*x[6]*x[8]*x[8]+7.44*x[2]*x[2]*x[3]*x[3]*x[5]+5.55*x[2]*x[2]*x[3]*x[8]*x[8]+8.6*x[2]*x[2]*x[4]*x[4]*x[7]+9.83*x[2]*x[2]*x[4]*x[5]*x[7]+2.9*x[2]*x[2]*x[5]*x[6]*x[6]+5.05*x[2]*x[2]*x[5]*x[6]*x[7]+1.9*x[2]*x[3]*x[3]*x[3]*x[7]+0.42*x[2]*x[3]*x[3]*x[6]*x[8]+3.66*x[2]*x[3]*x[4]*x[6]*x[8]+4.19*x[2]*x[3]*x[7]*x[7]*x[8]+4.49*x[2]*x[4]*x[5]*x[8]*x[8]+2.27*x[2]*x[4]*x[6]*x[6]*x[6]+9.22*x[3]*x[3]*x[4]*x[7]*x[7]+2.98*x[3]*x[3]*x[5]*x[7]*x[8]+6.47*x[3]*x[5]*x[5]*x[8]*x[8]+6.99*x[3]*x[5]*x[6]*x[6]*x[7]+0.49*x[4]*x[4]*x[4]*x[5]*x[7]+6.49*x[4]*x[4]*x[5]*x[8]*x[8]+6.17*x[4]*x[4]*x[6]*x[6]*x[8]+2.64*x[4]*x[5]*x[7]*x[7]*x[8]+8.72*x[4]*x[6]*x[7]*x[8]*x[8]+5.4*x[5]*x[5]*x[5]*x[7]*x[8]+4.68*x[6]*x[7]*x[7]*x[8]*x[8]+4.82*x[7]*x[7]*x[7]*x[7]*x[7]+5.69*x[7]*x[7]*x[7]*x[8]*x[8]+7.72*x[1]*x[1]*x[1]*x[1]*x[2]*x[7]+1.71*x[1]*x[1]*x[1]*x[1]*x[4]*x[6]+9.07*x[1]*x[1]*x[1]*x[2]*x[3]*x[6]+5.16*x[1]*x[1]*x[1]*x[2]*x[5]*x[6]+1.82*x[1]*x[1]*x[1]*x[2]*x[5]*x[7]-2.63*x[1]*x[1]*x[1]*x[3]*x[5]*x[8]+4.53*x[1]*x[1]*x[1]*x[3]*x[6]*x[7]+5.59*x[1]*x[1]*x[1]*x[3]*x[6]*x[8]+0.68*x[1]*x[1]*x[1]*x[4]*x[4]*x[5]+6.83*x[1]*x[1]*x[1]*x[4]*x[5]*x[5]+8.78*x[1]*x[1]*x[1]*x[5]*x[6]*x[6]+4.04*x[1]*x[1]*x[1]*x[8]*x[8]*x[8]+7.38*x[1]*x[1]*x[2]*x[2]*x[3]*x[7]+7.24*x[1]*x[1]*x[2]*x[2]*x[7]*x[7]+3.98*x[1]*x[1]*x[2]*x[3]*x[3]*x[7]+1.42*x[1]*x[1]*x[2]*x[4]*x[4]*x[7]+1.91*x[1]*x[1]*x[2]*x[4]*x[5]*x[8]+1.19*x[1]*x[1]*x[3]*x[3]*x[3]*x[5]+4.29*x[1]*x[1]*x[3]*x[3]*x[5]*x[8]+8.86*x[1]*x[1]*x[3]*x[3]*x[6]*x[7]-9.11*x[1]*x[1]*x[3]*x[5]*x[5]*x[5]+2.47*x[1]*x[1]*x[3]*x[5]*x[7]*x[8]+4.46*x[1]*x[1]*x[4]*x[4]*x[5]*x[5]+5.49*x[1]*x[1]*x[4]*x[4]*x[5]*x[8]+7.99*x[1]*x[1]*x[5]*x[5]*x[5]*x[6]+4.63*x[1]*x[1]*x[5]*x[7]*x[7]*x[8]+9.73*x[1]*x[1]*x[5]*x[7]*x[8]*x[8]+7.33*x[1]*x[1]*x[6]*x[6]*x[6]*x[6]+2.2*x[1]*x[1]*x[6]*x[6]*x[6]*x[8]+5.58*x[1]*x[1]*x[6]*x[7]*x[7]*x[8]+6.98*x[1]*x[2]*x[2]*x[2]*x[3]*x[5]+7.51*x[1]*x[2]*x[2]*x[2]*x[3]*x[7]+1.78*x[1]*x[2]*x[2]*x[2]*x[7]*x[7]+3.4*x[1]*x[2]*x[2]*x[3]*x[4]*x[4]+7.06*x[1]*x[2]*x[2]*x[3]*x[4]*x[7]+7.69*x[1]*x[2]*x[2]*x[3]*x[5]*x[8]+6.22*x[1]*x[2]*x[2]*x[3]*x[6]*x[7]+3.4*x[1]*x[2]*x[2]*x[3]*x[7]*x[8]+8.5*x[1]*x[2]*x[3]*x[3]*x[4]*x[5]+0.78*x[1]*x[2]*x[3]*x[4]*x[6]*x[8]+8.65*x[1]*x[2]*x[4]*x[4]*x[5]*x[7]-6.45*x[1]*x[2]*x[4]*x[6]*x[7]*x[8]+2.32*x[1]*x[2]*x[4]*x[7]*x[8]*x[8]+4.87*x[1]*x[2]*x[5]*x[5]*x[8]*x[8]+1.4*x[1]*x[2]*x[5]*x[6]*x[8]*x[8]+8.54*x[1]*x[3]*x[3]*x[3]*x[4]*x[5]+8.2*x[1]*x[3]*x[3]*x[3]*x[4]*x[6]+8.46*x[1]*x[3]*x[3]*x[3]*x[5]*x[6]+2.73*x[1]*x[3]*x[3]*x[3]*x[7]*x[8]+1.62*x[1]*x[3]*x[3]*x[3]*x[8]*x[8]+1.87*x[1]*x[3]*x[3]*x[4]*x[4]*x[7]+6.84*x[1]*x[3]*x[3]*x[4]*x[5]*x[7]-4.84*x[1]*x[3]*x[3]*x[6]*x[6]*x[7]+5.66*x[1]*x[3]*x[3]*x[6]*x[6]*x[8]+3.71*x[1]*x[3]*x[3]*x[7]*x[7]*x[7]+9.84*x[1]*x[3]*x[4]*x[4]*x[4]*x[8]+3.17*x[1]*x[3]*x[4]*x[5]*x[6]*x[8]+1.96*x[1]*x[3]*x[4]*x[6]*x[8]*x[8]-8.66*x[1]*x[3]*x[4]*x[8]*x[8]*x[8]+0.76*x[1]*x[3]*x[5]*x[6]*x[6]*x[8]+6.82*x[1]*x[4]*x[4]*x[4]*x[4]*x[6]+7.73*x[1]*x[4]*x[4]*x[4]*x[6]*x[7]+7.35*x[1]*x[4]*x[4]*x[5]*x[6]*x[7]+6.56*x[1]*x[4]*x[4]*x[5]*x[7]*x[8]+0.4*x[1]*x[4]*x[5]*x[5]*x[5]*x[7]+1.92*x[1]*x[4]*x[5]*x[5]*x[6]*x[7]+8.48*x[1]*x[4]*x[5]*x[5]*x[7]*x[7]+9.31*x[1]*x[4]*x[6]*x[6]*x[6]*x[8]+6.99*x[1]*x[4]*x[7]*x[8]*x[8]*x[8]+2.28*x[1]*x[5]*x[5]*x[6]*x[6]*x[7]+2.43*x[1]*x[5]*x[6]*x[6]*x[8]*x[8]+8.88*x[1]*x[5]*x[7]*x[7]*x[8]*x[8]+2.38*x[2]*x[2]*x[2]*x[2]*x[2]*x[6]+3.66*x[2]*x[2]*x[2]*x[2]*x[3]*x[8]+6.19*x[2]*x[2]*x[2]*x[2]*x[4]*x[5]+6.89*x[2]*x[2]*x[2]*x[2]*x[8]*x[8]+0.64*x[2]*x[2]*x[2]*x[3]*x[3]*x[3]+7.61*x[2]*x[2]*x[2]*x[3]*x[5]*x[6]+9.44*x[2]*x[2]*x[2]*x[3]*x[7]*x[7]-1.92*x[2]*x[2]*x[2]*x[4]*x[4]*x[5]+0.81*x[2]*x[2]*x[2]*x[4]*x[6]*x[7]+3.22*x[2]*x[2]*x[2]*x[7]*x[7]*x[8]+1.99*x[2]*x[2]*x[3]*x[3]*x[5]*x[7]+5.91*x[2]*x[2]*x[3]*x[3]*x[8]*x[8]+4.96*x[2]*x[2]*x[3]*x[4]*x[6]*x[7]+9.11*x[2]*x[2]*x[3]*x[6]*x[6]*x[7]-2.34*x[2]*x[2]*x[4]*x[4]*x[6]*x[6]+1.91*x[2]*x[2]*x[6]*x[6]*x[6]*x[7]-7.43*x[2]*x[3]*x[3]*x[3]*x[4]*x[7]+6.85*x[2]*x[3]*x[3]*x[4]*x[7]*x[7]+7.65*x[2]*x[3]*x[3]*x[6]*x[6]*x[8]-3*x[2]*x[3]*x[3]*x[7]*x[7]*x[7]+5.31*x[2]*x[3]*x[4]*x[4]*x[4]*x[7]-5.44*x[2]*x[3]*x[5]*x[6]*x[6]*x[8]+4.79*x[2]*x[3]*x[5]*x[7]*x[7]*x[8]+2.46*x[2]*x[3]*x[6]*x[7]*x[7]*x[8]+0.24*x[2]*x[3]*x[7]*x[7]*x[7]*x[8]+7.21*x[2]*x[4]*x[4]*x[5]*x[5]*x[5]+2.79*x[2]*x[4]*x[4]*x[5]*x[6]*x[7]+5.27*x[2]*x[4]*x[4]*x[5]*x[6]*x[8]+1.41*x[2]*x[4]*x[6]*x[7]*x[7]*x[7]+4.82*x[2]*x[5]*x[5]*x[6]*x[6]*x[7]+6.42*x[2]*x[5]*x[5]*x[7]*x[7]*x[7]-0.77*x[2]*x[6]*x[6]*x[6]*x[7]*x[8]+9.78*x[2]*x[6]*x[7]*x[7]*x[8]*x[8]+9.64*x[2]*x[7]*x[7]*x[7]*x[8]*x[8]+1.1*x[3]*x[3]*x[3]*x[3]*x[4]*x[4]+6.6*x[3]*x[3]*x[3]*x[4]*x[5]*x[7]+3.63*x[3]*x[3]*x[3]*x[5]*x[5]*x[7]+1.28*x[3]*x[3]*x[3]*x[6]*x[6]*x[8]+9.05*x[3]*x[3]*x[4]*x[4]*x[6]*x[7]+3.92*x[3]*x[3]*x[7]*x[7]*x[7]*x[8]+5.32*x[3]*x[4]*x[4]*x[4]*x[4]*x[6]+8.42*x[3]*x[4]*x[4]*x[4]*x[5]*x[5]+6.61*x[3]*x[4]*x[5]*x[6]*x[8]*x[8]+3.83*x[3]*x[4]*x[8]*x[8]*x[8]*x[8]+9.26*x[3]*x[5]*x[5]*x[5]*x[5]*x[7]+0.89*x[3]*x[5]*x[5]*x[6]*x[6]*x[8]+2.96*x[3]*x[5]*x[7]*x[7]*x[8]*x[8]+5.1*x[3]*x[6]*x[6]*x[7]*x[7]*x[8]+1.19*x[4]*x[5]*x[5]*x[5]*x[6]*x[7]+2.98*x[4]*x[5]*x[5]*x[5]*x[8]*x[8]+9.92*x[4]*x[5]*x[5]*x[6]*x[6]*x[7]+3.05*x[4]*x[5]*x[5]*x[6]*x[7]*x[7]+8.7*x[4]*x[5]*x[5]*x[7]*x[8]*x[8]+8.02*x[4]*x[6]*x[6]*x[7]*x[7]*x[7]-3.15*x[4]*x[6]*x[7]*x[7]*x[7]*x[7]+9.85*x[5]*x[5]*x[5]*x[5]*x[6]*x[8]+2.96*x[5]*x[5]*x[5]*x[6]*x[6]*x[7]+4.19*x[5]*x[6]*x[6]*x[7]*x[7]*x[8]+4.47*x[5]*x[6]*x[7]*x[7]*x[7]*x[8] >= 116205.116)
@constraint(m, e7, 5.84*x[1]+1.77*x[2]+1.6*x[3]-5.56*x[4]+2.34*x[5]+3.75*x[6]+0.6*x[7]+2.79*x[8] >= 28.588)
@NLconstraint(m, e8, 3.36*x[1]*x[4]+5.51*x[1]+3.36*x[4]-2.51*x[3]*x[3]+1.36*x[3]+4.06*x[4]*x[7]+4.67*x[7]+3.15*x[6]*x[8]+0.42*x[6]+2.72*x[8]-3.92*x[2]+1.6*x[5] >= 72.556)
@NLconstraint(m, e9, -(7.88*x[1]*x[4]+9.79*x[1]+2.94*x[4]+2.52*x[3]*x[3]+2.92*x[3]+4.65*x[4]*x[7]+5.71*x[7]+3.34*x[6]*x[8]+9.81*x[6]+5.98*x[8]+7.93*x[1]*x[6]*x[6]+5.6*x[1]*x[6]*x[7]+0.81*x[2]*x[7]*x[7]+2.92*x[2]+5.25*x[4]*x[8]*x[8]+0.04*x[5]*x[5]*x[5]+1.47*x[5]+1.82*x[5]*x[6]*x[7]+1.6*x[1]*x[1]*x[1]*x[5]+1.5*x[1]*x[1]*x[2]*x[6]+1.09*x[1]*x[1]*x[3]*x[5]+2.64*x[1]*x[1]*x[5]*x[6]+5.31*x[1]*x[1]*x[7]*x[8]+2.57*x[1]*x[2]*x[4]*x[5]+6.65*x[1]*x[3]*x[3]*x[6]+10*x[1]*x[3]*x[4]*x[8]+6.98*x[1]*x[4]*x[5]*x[5]+1.97*x[1]*x[5]*x[5]*x[7]+2.38*x[1]*x[6]*x[8]*x[8]+9.33*x[2]*x[2]*x[3]*x[5]+5.46*x[2]*x[2]*x[3]*x[8]+9.97*x[2]*x[2]*x[4]*x[6]+6.74*x[2]*x[3]*x[6]*x[8]+3.77*x[2]*x[5]*x[5]*x[7]+1.69*x[2]*x[6]*x[8]*x[8]+8.36*x[2]*x[7]*x[7]*x[7]+4.95*x[3]*x[3]*x[6]*x[8]+9.72*x[3]*x[4]*x[6]*x[8]+8.33*x[3]*x[5]*x[6]*x[6]+6.7*x[4]*x[4]*x[5]*x[6]+4.17*x[4]*x[5]*x[6]*x[6]+3.58*x[5]*x[5]*x[6]*x[8]-0.54*x[7]*x[8]*x[8]*x[8]+9.62*x[1]*x[1]*x[1]*x[2]*x[4]+9.95*x[1]*x[1]*x[1]*x[3]*x[3]+9.75*x[1]*x[1]*x[2]*x[5]*x[5]+8.05*x[1]*x[1]*x[3]*x[3]*x[3]+5.48*x[1]*x[1]*x[3]*x[3]*x[8]-3.93*x[1]*x[1]*x[3]*x[5]*x[8]+9.92*x[1]*x[1]*x[5]*x[5]*x[5]+8.51*x[1]*x[1]*x[5]*x[7]*x[7]+6.26*x[1]*x[1]*x[7]*x[7]*x[7]+2.76*x[1]*x[2]*x[2]*x[3]*x[6]+3.52*x[1]*x[2]*x[2]*x[5]*x[7]+2.04*x[1]*x[2]*x[4]*x[7]*x[7]+8.71*x[1]*x[2]*x[5]*x[6]*x[7]+8.36*x[1]*x[2]*x[7]*x[7]*x[7]+9.54*x[1]*x[2]*x[7]*x[7]*x[8]+7.03*x[1]*x[3]*x[7]*x[7]*x[7]+6.66*x[1]*x[4]*x[4]*x[5]*x[8]-9.26*x[1]*x[4]*x[5]*x[6]*x[7]+9.5*x[1]*x[5]*x[6]*x[8]*x[8]+7.26*x[2]*x[2]*x[3]*x[3]*x[5]-4.76*x[2]*x[2]*x[3]*x[8]*x[8]+3.42*x[2]*x[2]*x[4]*x[4]*x[7]+1.72*x[2]*x[2]*x[4]*x[5]*x[7]-0.18*x[2]*x[2]*x[5]*x[6]*x[6]+3.26*x[2]*x[2]*x[5]*x[6]*x[7]-2.06*x[2]*x[3]*x[3]*x[3]*x[7]-6.82*x[2]*x[3]*x[3]*x[6]*x[8]+6.49*x[2]*x[3]*x[4]*x[6]*x[8]-4.22*x[2]*x[3]*x[7]*x[7]*x[8]+4.94*x[2]*x[4]*x[5]*x[8]*x[8]+4.5*x[2]*x[4]*x[6]*x[6]*x[6]+0.98*x[3]*x[3]*x[4]*x[7]*x[7]+8.84*x[3]*x[3]*x[5]*x[7]*x[8]+6.76*x[3]*x[5]*x[5]*x[8]*x[8]+1.51*x[3]*x[5]*x[6]*x[6]*x[7]+4.56*x[4]*x[4]*x[4]*x[5]*x[7]+6.12*x[4]*x[4]*x[5]*x[8]*x[8]+4.86*x[4]*x[4]*x[6]*x[6]*x[8]+0.95*x[4]*x[5]*x[7]*x[7]*x[8]+7.62*x[4]*x[6]*x[7]*x[8]*x[8]+2.74*x[5]*x[5]*x[5]*x[7]*x[8]+8.19*x[6]*x[7]*x[7]*x[8]*x[8]+2.74*x[7]*x[7]*x[7]*x[7]*x[7]+4.58*x[7]*x[7]*x[7]*x[8]*x[8]+4.19*x[1]*x[1]*x[1]*x[1]*x[2]*x[7]+7.48*x[1]*x[1]*x[1]*x[1]*x[4]*x[6]+5.39*x[1]*x[1]*x[1]*x[2]*x[3]*x[6]+9.72*x[1]*x[1]*x[1]*x[2]*x[5]*x[6]+7.16*x[1]*x[1]*x[1]*x[2]*x[5]*x[7]+6.69*x[1]*x[1]*x[1]*x[3]*x[5]*x[8]+9.05*x[1]*x[1]*x[1]*x[3]*x[6]*x[7]+4.24*x[1]*x[1]*x[1]*x[3]*x[6]*x[8]+3.15*x[1]*x[1]*x[1]*x[4]*x[4]*x[5]+5.71*x[1]*x[1]*x[1]*x[4]*x[5]*x[5]+9.69*x[1]*x[1]*x[1]*x[5]*x[6]*x[6]+4.57*x[1]*x[1]*x[1]*x[8]*x[8]*x[8]+3.37*x[1]*x[1]*x[2]*x[2]*x[3]*x[7]-4.31*x[1]*x[1]*x[2]*x[2]*x[7]*x[7]+4.66*x[1]*x[1]*x[2]*x[3]*x[3]*x[7]+2*x[1]*x[1]*x[2]*x[4]*x[4]*x[7]+4.89*x[1]*x[1]*x[2]*x[4]*x[5]*x[8]+7.32*x[1]*x[1]*x[3]*x[3]*x[3]*x[5]+9.45*x[1]*x[1]*x[3]*x[3]*x[5]*x[8]+3.4*x[1]*x[1]*x[3]*x[3]*x[6]*x[7]+7.98*x[1]*x[1]*x[3]*x[5]*x[5]*x[5]+1.11*x[1]*x[1]*x[3]*x[5]*x[7]*x[8]+5.67*x[1]*x[1]*x[4]*x[4]*x[5]*x[5]+3.39*x[1]*x[1]*x[4]*x[4]*x[5]*x[8]+4.78*x[1]*x[1]*x[5]*x[5]*x[5]*x[6]+1.22*x[1]*x[1]*x[5]*x[7]*x[7]*x[8]+0.33*x[1]*x[1]*x[5]*x[7]*x[8]*x[8]+7.6*x[1]*x[1]*x[6]*x[6]*x[6]*x[6]+9.16*x[1]*x[1]*x[6]*x[6]*x[6]*x[8]+1.38*x[1]*x[1]*x[6]*x[7]*x[7]*x[8]+6.32*x[1]*x[2]*x[2]*x[2]*x[3]*x[5]+7.25*x[1]*x[2]*x[2]*x[2]*x[3]*x[7]-7.88*x[1]*x[2]*x[2]*x[2]*x[7]*x[7]+3.65*x[1]*x[2]*x[2]*x[3]*x[4]*x[4]+4.23*x[1]*x[2]*x[2]*x[3]*x[4]*x[7]-4.99*x[1]*x[2]*x[2]*x[3]*x[5]*x[8]-2.94*x[1]*x[2]*x[2]*x[3]*x[6]*x[7]+9.9*x[1]*x[2]*x[2]*x[3]*x[7]*x[8]+5.26*x[1]*x[2]*x[3]*x[3]*x[4]*x[5]+1.95*x[1]*x[2]*x[3]*x[4]*x[6]*x[8]-5.23*x[1]*x[2]*x[4]*x[4]*x[5]*x[7]+4.48*x[1]*x[2]*x[4]*x[6]*x[7]*x[8]-5.58*x[1]*x[2]*x[4]*x[7]*x[8]*x[8]+6.07*x[1]*x[2]*x[5]*x[5]*x[8]*x[8]+9.41*x[1]*x[2]*x[5]*x[6]*x[8]*x[8]+8.19*x[1]*x[3]*x[3]*x[3]*x[4]*x[5]+1.76*x[1]*x[3]*x[3]*x[3]*x[4]*x[6]+1.67*x[1]*x[3]*x[3]*x[3]*x[5]*x[6]+0.05*x[1]*x[3]*x[3]*x[3]*x[7]*x[8]+3.44*x[1]*x[3]*x[3]*x[3]*x[8]*x[8]+7.58*x[1]*x[3]*x[3]*x[4]*x[4]*x[7]+0.26*x[1]*x[3]*x[3]*x[4]*x[5]*x[7]+9.01*x[1]*x[3]*x[3]*x[6]*x[6]*x[7]+0.75*x[1]*x[3]*x[3]*x[6]*x[6]*x[8]+2.01*x[1]*x[3]*x[3]*x[7]*x[7]*x[7]+2.63*x[1]*x[3]*x[4]*x[4]*x[4]*x[8]+4.05*x[1]*x[3]*x[4]*x[5]*x[6]*x[8]-6.38*x[1]*x[3]*x[4]*x[6]*x[8]*x[8]+8.46*x[1]*x[3]*x[4]*x[8]*x[8]*x[8]-2.16*x[1]*x[3]*x[5]*x[6]*x[6]*x[8]-8.75*x[1]*x[4]*x[4]*x[4]*x[4]*x[6]+1.33*x[1]*x[4]*x[4]*x[4]*x[6]*x[7]+5.32*x[1]*x[4]*x[4]*x[5]*x[6]*x[7]+9.37*x[1]*x[4]*x[4]*x[5]*x[7]*x[8]+3.61*x[1]*x[4]*x[5]*x[5]*x[5]*x[7]+1.5*x[1]*x[4]*x[5]*x[5]*x[6]*x[7]+7.69*x[1]*x[4]*x[5]*x[5]*x[7]*x[7]+7.79*x[1]*x[4]*x[6]*x[6]*x[6]*x[8]+8.47*x[1]*x[4]*x[7]*x[8]*x[8]*x[8]+9.16*x[1]*x[5]*x[5]*x[6]*x[6]*x[7]+0.42*x[1]*x[5]*x[6]*x[6]*x[8]*x[8]+0.97*x[1]*x[5]*x[7]*x[7]*x[8]*x[8]+6.09*x[2]*x[2]*x[2]*x[2]*x[2]*x[6]+5.62*x[2]*x[2]*x[2]*x[2]*x[3]*x[8]+2.3*x[2]*x[2]*x[2]*x[2]*x[4]*x[5]+0.85*x[2]*x[2]*x[2]*x[2]*x[8]*x[8]+7.1*x[2]*x[2]*x[2]*x[3]*x[3]*x[3]+5.21*x[2]*x[2]*x[2]*x[3]*x[5]*x[6]+1.66*x[2]*x[2]*x[2]*x[3]*x[7]*x[7]+7.31*x[2]*x[2]*x[2]*x[4]*x[4]*x[5]+6.06*x[2]*x[2]*x[2]*x[4]*x[6]*x[7]+0.43*x[2]*x[2]*x[2]*x[7]*x[7]*x[8]+3.06*x[2]*x[2]*x[3]*x[3]*x[5]*x[7]+8.98*x[2]*x[2]*x[3]*x[3]*x[8]*x[8]+8.9*x[2]*x[2]*x[3]*x[4]*x[6]*x[7]-8.44*x[2]*x[2]*x[3]*x[6]*x[6]*x[7]+5.31*x[2]*x[2]*x[4]*x[4]*x[6]*x[6]+5.33*x[2]*x[2]*x[6]*x[6]*x[6]*x[7]+1.53*x[2]*x[3]*x[3]*x[3]*x[4]*x[7]+8.72*x[2]*x[3]*x[3]*x[4]*x[7]*x[7]+0.75*x[2]*x[3]*x[3]*x[6]*x[6]*x[8]+9.97*x[2]*x[3]*x[3]*x[7]*x[7]*x[7]+9.72*x[2]*x[3]*x[4]*x[4]*x[4]*x[7]+2.05*x[2]*x[3]*x[5]*x[6]*x[6]*x[8]-5.76*x[2]*x[3]*x[5]*x[7]*x[7]*x[8]+5.25*x[2]*x[3]*x[6]*x[7]*x[7]*x[8]+0.23*x[2]*x[3]*x[7]*x[7]*x[7]*x[8]+0.66*x[2]*x[4]*x[4]*x[5]*x[5]*x[5]+2.46*x[2]*x[4]*x[4]*x[5]*x[6]*x[7]+8.05*x[2]*x[4]*x[4]*x[5]*x[6]*x[8]+3.22*x[2]*x[4]*x[6]*x[7]*x[7]*x[7]+9.72*x[2]*x[5]*x[5]*x[6]*x[6]*x[7]+1.81*x[2]*x[5]*x[5]*x[7]*x[7]*x[7]+6.86*x[2]*x[6]*x[6]*x[6]*x[7]*x[8]+5.84*x[2]*x[6]*x[7]*x[7]*x[8]*x[8]-0.01*x[2]*x[7]*x[7]*x[7]*x[8]*x[8]+7.77*x[3]*x[3]*x[3]*x[3]*x[4]*x[4]+0.12*x[3]*x[3]*x[3]*x[4]*x[5]*x[7]+7.16*x[3]*x[3]*x[3]*x[5]*x[5]*x[7]+1.88*x[3]*x[3]*x[3]*x[6]*x[6]*x[8]+2.89*x[3]*x[3]*x[4]*x[4]*x[6]*x[7]+5.75*x[3]*x[3]*x[7]*x[7]*x[7]*x[8]+4.26*x[3]*x[4]*x[4]*x[4]*x[4]*x[6]+0.42*x[3]*x[4]*x[4]*x[4]*x[5]*x[5]+5.03*x[3]*x[4]*x[5]*x[6]*x[8]*x[8]+2.02*x[3]*x[4]*x[8]*x[8]*x[8]*x[8]+9.63*x[3]*x[5]*x[5]*x[5]*x[5]*x[7]+1.93*x[3]*x[5]*x[5]*x[6]*x[6]*x[8]-5.36*x[3]*x[5]*x[7]*x[7]*x[8]*x[8]+9.56*x[3]*x[6]*x[6]*x[7]*x[7]*x[8]+9.82*x[4]*x[5]*x[5]*x[5]*x[6]*x[7]+1.63*x[4]*x[5]*x[5]*x[5]*x[8]*x[8]+7.62*x[4]*x[5]*x[5]*x[6]*x[6]*x[7]+4.74*x[4]*x[5]*x[5]*x[6]*x[7]*x[7]+5.3*x[4]*x[5]*x[5]*x[7]*x[8]*x[8]+2.54*x[4]*x[6]*x[6]*x[7]*x[7]*x[7]+8.67*x[4]*x[6]*x[7]*x[7]*x[7]*x[7]+4.21*x[5]*x[5]*x[5]*x[5]*x[6]*x[8]+1.59*x[5]*x[5]*x[5]*x[6]*x[6]*x[7]-5.75*x[5]*x[6]*x[6]*x[7]*x[7]*x[8]+0.19*x[5]*x[6]*x[7]*x[7]*x[7]*x[8])+x[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[9])

m = m 		 # model get returned when including this script.