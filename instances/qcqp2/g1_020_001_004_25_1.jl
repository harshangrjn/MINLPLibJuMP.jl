using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.16*x[2]*x[9]-0.66*x[2]*x[8]+1.4*x[2]*x[10]+0.94*x[2]*x[12]+1.5*x[3]*x[4]+1.36*x[3]*x[6]-0.68*x[3]*x[14]+(-0.6*x[4]*x[7])-0.18*x[4]*x[15]-0.42*x[4]*x[16]-0.1*x[4]*x[18]+0.66*x[5]*x[8]-0.6*x[5]*x[12]-0.8*x[5]*x[17]+1.86*x[5]*x[18]-0.7*x[5]*x[19]-1.64*x[5]*x[21]+0.52*x[6]*x[17]-0.5*x[6]*x[21]+0.32*x[7]*x[14]-0.14*x[7]*x[9]-0.44*x[7]*x[18]-1.22*x[7]*x[20]+1.96*x[7]*x[21]+(-1.74*x[8]*x[9])-1.22*x[8]*x[10]+0.58*x[8]*x[11]-1.12*x[8]*x[14]+0.82*x[8]*x[15]+0.7*x[9]*x[17]-0.62*x[9]*x[10]+0.14*x[10]*x[12]+1.8*x[11]*x[13]-0.96*x[11]*x[15]-1.7*x[11]*x[16]-1.14*x[12]*x[20]+(-1.96*x[13]*x[16])-0.08*x[13]*x[17]-0.2*x[13]*x[18]+(-0.9*x[15]*x[17])-1.06*x[15]*x[18]-0.48*x[16]*x[17]+0.38*x[17]*x[18]+0.44*x[18]*x[19]+0.32*x[2]*x[2]-0.89*x[12]*x[12]-0.73*x[14]*x[14]-0.18*x[15]*x[15]-0.57*x[17]*x[17]+0.97*x[21]*x[21]+0.24*x[2]-0.44*x[3]+0.83*x[4]-0.46*x[5]+0.54*x[6]+0.07*x[7]-0.78*x[8]-0.92*x[9]+0.76*x[10]+0.84*x[11]+0.36*x[12]-0.84*x[13]+0.79*x[14]-0.88*x[15]+0.34*x[16]+0.8*x[17]-0.41*x[18]+0.56*x[19]-0.32*x[20]+0.13*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, (-1.62*x[2]*x[5])-1.9*x[2]*x[7]-0.32*x[2]*x[11]-0.86*x[2]*x[12]+0.3*x[3]*x[6]-1.28*x[3]*x[18]+1.56*x[4]*x[10]-0.34*x[4]*x[12]-0.7*x[4]*x[16]+1.58*x[4]*x[17]+(-1.68*x[5]*x[7])-0.02*x[5]*x[11]-0.38*x[5]*x[14]-0.6*x[5]*x[17]-1.34*x[5]*x[18]-0.16*x[5]*x[19]-1.36*x[5]*x[20]+1.72*x[6]*x[14]+1.48*x[6]*x[19]-0.26*x[6]*x[20]+(-1.98*x[7]*x[18])-1.36*x[7]*x[19]-0.08*x[7]*x[20]-1.04*x[7]*x[21]+0.22*x[8]*x[13]+1.98*x[8]*x[14]+1.56*x[9]*x[21]-0.86*x[9]*x[12]+1.96*x[10]*x[12]-1.3*x[10]*x[14]+1.92*x[10]*x[19]+1.48*x[11]*x[20]+1.94*x[12]*x[17]-1.68*x[12]*x[15]+1.44*x[12]*x[21]-0.46*x[13]*x[16]+0.8*x[14]*x[15]+1.36*x[14]*x[16]+1.78*x[15]*x[19]+1.94*x[15]*x[21]+1.58*x[16]*x[19]+1.1*x[17]*x[20]+1.16*x[17]*x[21]+1.22*x[18]*x[20]-0.78*x[18]*x[21]+0.58*x[19]*x[20]+0.52*x[4]*x[4]+0.5*x[5]*x[5]-0.43*x[8]*x[8]+0.68*x[14]*x[14]-0.03*x[2]+0.5*x[3]-0.04*x[4]+0.36*x[5]-0.3*x[6]-0.52*x[7]+0.91*x[8]-0.97*x[9]+0.22*x[10]+0.2*x[11]-0.61*x[12]-0.82*x[13]+0.81*x[14]+0.09*x[15]-0.49*x[16]-0.62*x[17]-0.08*x[18]-0.03*x[19]-0.23*x[20]-0.54*x[21] <= 46.22)
@constraint(m, e3, 0.42*x[2]+0.25*x[3]+0.28*x[4]+0.02*x[5]+0.15*x[6]+0.01*x[7]-0.27*x[8]+0.71*x[9]-0.87*x[10]-0.42*x[11]+0.24*x[12]-0.16*x[13]+0.9*x[14]-0.59*x[15]+0.98*x[16]-0.45*x[17]+0.01*x[18]+0.58*x[19]+0.4*x[20]-0.23*x[21] == -0.33)
@constraint(m, e4, -0.24*x[2]-0.18*x[3]-0.92*x[4]-0.83*x[5]-0.39*x[6]+0.35*x[7]-0.46*x[8]-0.19*x[9]-0.9*x[10]-0.88*x[11]+0.96*x[12]-0.27*x[13]+0.58*x[14]-0.99*x[15]-0.79*x[16]+0.79*x[17]-0.55*x[18]-0.9*x[19]+0.71*x[20]+0.52*x[21] == -0.91)
@constraint(m, e5, 0.26*x[2]-0.5*x[3]+0.69*x[4]+0.99*x[5]-0.41*x[6]-0.5*x[7]+0.03*x[8]-0.07*x[9]+0.82*x[10]+0.65*x[11]+0.89*x[12]-0.37*x[13]-0.59*x[14]-0.91*x[15]-0.18*x[16]+0.21*x[17]-0.57*x[18]-0.47*x[19]-0.27*x[20]+0.85*x[21] == 0.62)
@constraint(m, e6, 0.49*x[2]+0.4*x[3]+0.06*x[4]-0.54*x[5]-0.82*x[6]-0.55*x[7]-0.07*x[8]+0.36*x[9]+0.46*x[10]+0.59*x[11]+0.92*x[12]-0.16*x[13]+0.98*x[14]-0.7*x[15]-0.42*x[16]-0.43*x[17]-0.78*x[18]-0.06*x[19]-0.95*x[20]+0.98*x[21] == -0.28)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.