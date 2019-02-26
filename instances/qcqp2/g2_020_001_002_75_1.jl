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
@NLconstraint(m, e1, -(0.16*x[2]*x[4]-0.14*x[2]*x[3]-0.08*x[2]*x[5]-0.24*x[2]*x[6]+0.04*x[2]*x[7]+0.04*x[2]*x[8]-0.16*x[2]*x[9]-0.38*x[2]*x[10]-0.22*x[2]*x[11]-0.14*x[2]*x[12]-0.28*x[2]*x[13]-0.12*x[2]*x[14]-0.06*x[2]*x[15]-0.24*x[2]*x[16]-0.3*x[2]*x[17]+0.02*x[2]*x[18]+0.32*x[2]*x[19]-0.18*x[2]*x[20]+0.38*x[2]*x[21]+(-0.26*x[3]*x[4])-0.04*x[3]*x[5]+0.02*x[3]*x[7]+0.04*x[3]*x[8]-0.02*x[3]*x[9]+0.3*x[3]*x[10]-0.14*x[3]*x[11]+0.06*x[3]*x[12]-0.18*x[3]*x[13]-0.02*x[3]*x[14]-0.1*x[3]*x[15]-0.26*x[3]*x[16]+0.12*x[3]*x[17]+0.22*x[3]*x[18]+0.28*x[3]*x[19]-0.1*x[3]*x[20]+0.26*x[3]*x[21]+0.14*x[4]*x[6]-0.1*x[4]*x[5]-0.46*x[4]*x[7]-0.28*x[4]*x[8]-0.22*x[4]*x[9]-0.08*x[4]*x[10]-0.26*x[4]*x[11]-0.04*x[4]*x[12]-0.18*x[4]*x[13]+0.34*x[4]*x[14]+0.04*x[4]*x[15]-0.06*x[4]*x[16]-0.48*x[4]*x[17]-0.02*x[4]*x[18]-0.32*x[4]*x[19]-0.34*x[4]*x[20]-0.04*x[4]*x[21]+0.02*x[5]*x[6]-0.4*x[5]*x[7]-0.14*x[5]*x[8]-0.06*x[5]*x[9]+0.1*x[5]*x[10]-0.4*x[5]*x[11]+0.24*x[5]*x[12]+0.18*x[5]*x[13]-0.38*x[5]*x[14]+0.16*x[5]*x[15]+0.04*x[5]*x[16]+0.14*x[5]*x[17]-0.46*x[5]*x[18]-0.18*x[5]*x[19]-0.06*x[5]*x[20]+0.06*x[5]*x[21]+0.32*x[6]*x[7]-0.58*x[6]*x[8]-0.44*x[6]*x[9]-0.38*x[6]*x[10]-0.08*x[6]*x[11]+0.16*x[6]*x[12]+0.02*x[6]*x[13]-0.06*x[6]*x[14]-0.08*x[6]*x[15]-0.24*x[6]*x[16]-0.22*x[6]*x[17]-0.46*x[6]*x[18]+0.02*x[6]*x[19]-0.2*x[6]*x[20]+0.12*x[6]*x[21]+(-0.12*x[7]*x[8])-0.36*x[7]*x[9]-0.22*x[7]*x[10]+0.18*x[7]*x[12]+0.08*x[7]*x[13]+0.12*x[7]*x[16]+0.28*x[7]*x[17]+0.3*x[7]*x[18]+0.16*x[7]*x[19]-0.02*x[7]*x[20]+0.08*x[7]*x[21]+0.24*x[8]*x[9]-0.02*x[8]*x[10]+0.12*x[8]*x[11]-0.48*x[8]*x[12]+0.08*x[8]*x[13]-0.12*x[8]*x[14]+0.32*x[8]*x[15]+0.18*x[8]*x[16]+0.14*x[8]*x[17]-0.16*x[8]*x[18]-0.48*x[8]*x[19]-0.06*x[8]*x[20]+0.02*x[8]*x[21]+0.24*x[9]*x[10]+0.24*x[9]*x[11]-0.1*x[9]*x[12]+0.02*x[9]*x[13]-0.16*x[9]*x[14]-0.14*x[9]*x[15]-0.04*x[9]*x[16]-0.04*x[9]*x[17]+0.18*x[9]*x[18]-0.12*x[9]*x[19]+0.18*x[9]*x[20]-0.42*x[9]*x[21]+0.38*x[10]*x[11]+0.06*x[10]*x[12]+0.14*x[10]*x[13]-0.28*x[10]*x[14]-0.22*x[10]*x[15]-0.02*x[10]*x[16]+0.06*x[10]*x[17]+0.1*x[10]*x[18]+0.1*x[10]*x[19]+0.16*x[10]*x[20]-0.4*x[10]*x[21]+(-0.34*x[11]*x[12])-0.02*x[11]*x[13]+0.04*x[11]*x[14]-0.06*x[11]*x[15]-0.08*x[11]*x[16]+0.14*x[11]*x[17]-0.04*x[11]*x[18]+0.02*x[11]*x[19]+0.18*x[11]*x[20]-0.66*x[11]*x[21]+(-0.22*x[12]*x[13])-0.12*x[12]*x[14]-0.14*x[12]*x[15]+0.06*x[12]*x[16]+0.18*x[12]*x[17]+0.08*x[12]*x[18]+0.22*x[12]*x[19]-0.06*x[12]*x[20]+0.26*x[12]*x[21]+0.16*x[13]*x[15]-0.52*x[13]*x[14]+0.24*x[13]*x[16]+0.1*x[13]*x[17]-0.32*x[13]*x[18]-0.08*x[13]*x[19]+0.36*x[13]*x[20]-0.08*x[13]*x[21]+(-0.04*x[14]*x[15])-0.04*x[14]*x[16]-0.14*x[14]*x[17]+0.32*x[14]*x[18]-0.3*x[14]*x[20]+0.22*x[15]*x[17]-0.24*x[15]*x[18]+0.02*x[15]*x[19]-0.46*x[15]*x[20]+0.1*x[15]*x[21]+0.24*x[16]*x[17]+0.06*x[16]*x[18]-0.24*x[16]*x[19]-0.04*x[16]*x[20]+0.12*x[16]*x[21]+0.14*x[17]*x[18]+0.2*x[17]*x[19]-0.1*x[17]*x[20]-0.18*x[17]*x[21]+(-0.02*x[18]*x[19])-0.02*x[18]*x[20]+0.02*x[18]*x[21]+0.36*x[19]*x[21]-0.38*x[19]*x[20]-0.36*x[20]*x[21]+(-0.2*x[2]*x[2])-0.49*x[3]*x[3]-0.36*x[4]*x[4]-0.25*x[5]*x[5]-0.25*x[6]*x[6]-0.3*x[7]*x[7]-0.34*x[8]*x[8]-0.61*x[9]*x[9]-0.44*x[10]*x[10]-0.34*x[11]*x[11]-0.51*x[12]*x[12]-0.59*x[13]*x[13]-0.28*x[14]*x[14]-0.5*x[15]*x[15]-0.6*x[16]*x[16]-0.46*x[17]*x[17]-0.44*x[18]*x[18]-0.04*x[19]*x[19]-0.27*x[20]*x[20]-0.09*x[21]*x[21]+0.97*x[2]-0.03*x[3]-0.78*x[4]-0.81*x[5]-0.89*x[6]+0.16*x[7]-0.84*x[8]+0.23*x[9]+0.33*x[10]+0.54*x[11]-0.12*x[12]-0.6*x[13]+0.36*x[14]-0.56*x[15]+0.66*x[16]-0.97*x[17]-0.32*x[18]-0.72*x[19]+0.98*x[20]+0.21*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.16*x[2]*x[3]+0.14*x[2]*x[4]+0.18*x[2]*x[5]+0.08*x[2]*x[6]+0.08*x[2]*x[7]-0.32*x[2]*x[8]+0.06*x[2]*x[9]+0.38*x[2]*x[10]+0.34*x[2]*x[11]+0.04*x[2]*x[12]-0.06*x[2]*x[13]+0.14*x[2]*x[14]+0.3*x[2]*x[15]-0.14*x[2]*x[16]+0.18*x[2]*x[17]-0.08*x[2]*x[18]+0.02*x[2]*x[19]+0.08*x[2]*x[20]-0.12*x[2]*x[21]+0.22*x[3]*x[5]-0.04*x[3]*x[4]+0.3*x[3]*x[6]-0.04*x[3]*x[7]-0.58*x[3]*x[8]+0.06*x[3]*x[9]+0.36*x[3]*x[10]-0.14*x[3]*x[11]+0.06*x[3]*x[12]-0.02*x[3]*x[13]-0.08*x[3]*x[14]-0.04*x[3]*x[16]+0.34*x[3]*x[17]-0.28*x[3]*x[18]-0.22*x[3]*x[19]+0.04*x[3]*x[20]+0.46*x[3]*x[21]+0.04*x[4]*x[6]-0.12*x[4]*x[5]+0.1*x[4]*x[7]+0.32*x[4]*x[8]-0.02*x[4]*x[9]+0.12*x[4]*x[10]-0.1*x[4]*x[11]-0.18*x[4]*x[12]-0.1*x[4]*x[13]+0.26*x[4]*x[14]-0.26*x[4]*x[15]+0.4*x[4]*x[16]+0.2*x[4]*x[17]-0.02*x[4]*x[18]+0.3*x[4]*x[19]+0.06*x[4]*x[20]+0.22*x[4]*x[21]+0.46*x[5]*x[6]-0.34*x[5]*x[7]+0.04*x[5]*x[8]+0.6*x[5]*x[9]-0.34*x[5]*x[10]+0.16*x[5]*x[11]+0.18*x[5]*x[12]-0.18*x[5]*x[13]+0.24*x[5]*x[14]+0.24*x[5]*x[15]+0.5*x[5]*x[16]-0.16*x[5]*x[17]-0.2*x[5]*x[18]-0.26*x[5]*x[19]+0.22*x[5]*x[20]-0.12*x[5]*x[21]+(-0.3*x[6]*x[7])-0.16*x[6]*x[8]+0.66*x[6]*x[9]+0.06*x[6]*x[10]-0.06*x[6]*x[11]-0.14*x[6]*x[12]+0.1*x[6]*x[13]+0.14*x[6]*x[14]+0.2*x[6]*x[16]-0.38*x[6]*x[17]+0.08*x[6]*x[18]-0.28*x[6]*x[19]-0.24*x[6]*x[20]-0.06*x[6]*x[21]+0.36*x[7]*x[8]-0.02*x[7]*x[9]+0.14*x[7]*x[10]+0.06*x[7]*x[11]+0.02*x[7]*x[12]+0.1*x[7]*x[13]+0.12*x[7]*x[14]+0.18*x[7]*x[15]-0.06*x[7]*x[16]+0.2*x[7]*x[17]-0.18*x[7]*x[18]+0.02*x[7]*x[19]-0.1*x[7]*x[20]+0.16*x[7]*x[21]+0.04*x[8]*x[9]-0.28*x[8]*x[10]-0.04*x[8]*x[11]-0.26*x[8]*x[12]+0.06*x[8]*x[13]+0.34*x[8]*x[14]-0.16*x[8]*x[15]+0.42*x[8]*x[16]+0.14*x[8]*x[17]+0.02*x[8]*x[18]+0.7*x[8]*x[19]+0.22*x[8]*x[20]+0.06*x[8]*x[21]+(-0.2*x[9]*x[10])-0.02*x[9]*x[11]+0.32*x[9]*x[12]-0.04*x[9]*x[13]-0.16*x[9]*x[14]+0.06*x[9]*x[15]+0.32*x[9]*x[16]-0.22*x[9]*x[17]+0.04*x[9]*x[18]+0.14*x[9]*x[19]+0.36*x[9]*x[20]+0.06*x[9]*x[21]+0.44*x[10]*x[11]-0.16*x[10]*x[12]+0.18*x[10]*x[14]+0.18*x[10]*x[15]-0.36*x[10]*x[16]+0.38*x[10]*x[17]+0.24*x[10]*x[18]+0.12*x[10]*x[19]+0.04*x[10]*x[20]+0.26*x[10]*x[21]+0.1*x[11]*x[12]+0.02*x[11]*x[13]-0.12*x[11]*x[14]+0.08*x[11]*x[15]-0.12*x[11]*x[16]+0.26*x[11]*x[17]+0.16*x[11]*x[18]-0.1*x[11]*x[19]-0.02*x[11]*x[20]+0.24*x[11]*x[21]+0.22*x[12]*x[14]-0.04*x[12]*x[13]+0.04*x[12]*x[15]+0.16*x[12]*x[16]+0.14*x[12]*x[17]+0.24*x[12]*x[18]+0.34*x[12]*x[19]+0.14*x[12]*x[20]+0.26*x[12]*x[21]+0.06*x[13]*x[14]-0.1*x[13]*x[15]+0.2*x[13]*x[16]-0.14*x[13]*x[17]+0.18*x[13]*x[18]+0.26*x[13]*x[19]+0.14*x[13]*x[20]+0.32*x[13]*x[21]+0.26*x[14]*x[16]-0.18*x[14]*x[15]-0.18*x[14]*x[17]-0.66*x[14]*x[18]-0.48*x[14]*x[20]+0.14*x[14]*x[21]+0.26*x[15]*x[17]-0.2*x[15]*x[16]-0.06*x[15]*x[18]+0.08*x[15]*x[19]+0.16*x[15]*x[20]-0.3*x[15]*x[21]+(-0.16*x[16]*x[17])-0.12*x[16]*x[18]-0.22*x[16]*x[19]+0.24*x[16]*x[20]-0.02*x[16]*x[21]+0.12*x[17]*x[19]-0.58*x[17]*x[20]+0.18*x[17]*x[21]+0.02*x[18]*x[19]+0.82*x[18]*x[20]+0.2*x[18]*x[21]+0.16*x[19]*x[20]+0.04*x[19]*x[21]-0.22*x[20]*x[21]+(-0.36*x[2]*x[2])-0.32*x[3]*x[3]-0.29*x[4]*x[4]+0.15*x[5]*x[5]-0.06*x[6]*x[6]-0.02*x[7]*x[7]+0.46*x[8]*x[8]-0.22*x[9]*x[9]-0.09*x[10]*x[10]-0.24*x[11]*x[11]-0.61*x[12]*x[12]-0.27*x[13]*x[13]+0.08*x[14]*x[14]-0.12*x[15]*x[15]-0.14*x[16]*x[16]-0.38*x[17]*x[17]+0.2*x[18]*x[18]-0.15*x[19]*x[19]+0.14*x[20]*x[20]-0.26*x[21]*x[21]-0.59*x[2]+0.32*x[3]+0.09*x[4]+0.7*x[5]-0.77*x[6]+0.15*x[7]-0.1*x[8]-0.03*x[9]-0.93*x[10]-0.83*x[11]+0.52*x[12]+0.48*x[13]+0.43*x[14]-0.01*x[15]+0.85*x[16]+0.27*x[17]-0.28*x[18]-0.35*x[19]-0.03*x[20]+0.03*x[21] <= 65.26)
@constraint(m, e3, -0.47*x[2]-0.38*x[3]-0.29*x[4]-0.82*x[5]-0.58*x[6]-0.99*x[7]-0.26*x[8]-0.7*x[9]+0.61*x[10]+0.34*x[11]+0.1*x[12]-0.36*x[13]+0.91*x[14]+0.72*x[15]+0.58*x[16]-0.29*x[17]+0.66*x[18]-0.87*x[19]+0.81*x[20]+0.46*x[21] == -0.91)
@constraint(m, e4, 0.13*x[2]-0.53*x[3]+0.35*x[4]-0.31*x[5]-0.46*x[6]+0.14*x[7]+0.59*x[8]+0.58*x[9]-0.43*x[10]+0.47*x[11]+0.92*x[12]-0.45*x[13]+0.07*x[14]+0.16*x[15]+0.87*x[16]+0.62*x[17]-0.35*x[18]+0.4*x[19]+0.55*x[20]-0.71*x[21] == -0.84)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.