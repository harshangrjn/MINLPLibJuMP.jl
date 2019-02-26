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
@NLconstraint(m, e1, -(0.5*x[2]*x[5]-0.34*x[2]*x[8]+1.12*x[2]*x[9]-1.46*x[2]*x[10]-1.64*x[2]*x[11]+0.12*x[2]*x[12]-1.64*x[2]*x[13]-0.88*x[2]*x[15]+1.64*x[2]*x[16]+0.68*x[2]*x[19]+0.12*x[3]*x[11]-0.84*x[3]*x[7]-0.46*x[3]*x[12]+0.86*x[3]*x[13]-0.6*x[3]*x[16]+1.96*x[3]*x[17]+0.7*x[3]*x[20]+1.06*x[4]*x[8]-0.48*x[4]*x[6]+1.2*x[4]*x[13]+0.82*x[4]*x[14]+0.36*x[4]*x[16]+0.38*x[4]*x[18]+0.96*x[4]*x[19]+1.96*x[5]*x[9]-0.34*x[5]*x[6]+1.52*x[5]*x[11]-0.08*x[5]*x[12]+0.82*x[5]*x[13]-0.38*x[5]*x[14]-0.8*x[5]*x[16]+0.62*x[5]*x[18]+0.58*x[5]*x[21]+(-0.92*x[6]*x[7])-1.64*x[6]*x[10]-1.2*x[6]*x[12]-1.42*x[6]*x[15]+0.9*x[6]*x[17]-1.4*x[6]*x[18]+0.68*x[6]*x[19]-0.1*x[6]*x[21]+(-0.24*x[7]*x[9])-1.78*x[7]*x[11]+0.32*x[7]*x[12]+0.62*x[7]*x[14]-0.26*x[7]*x[15]-1.36*x[7]*x[16]+0.5*x[7]*x[17]+0.24*x[8]*x[14]-0.18*x[8]*x[10]+1.36*x[8]*x[15]-1.76*x[8]*x[17]+0.4*x[8]*x[18]+1.84*x[8]*x[20]+1.38*x[9]*x[11]+1.9*x[9]*x[14]-1.1*x[9]*x[16]+0.44*x[9]*x[17]-1.66*x[9]*x[20]+0.78*x[9]*x[21]+0.36*x[10]*x[12]-1.02*x[10]*x[11]-1.76*x[10]*x[17]-0.64*x[10]*x[18]-0.22*x[10]*x[20]-0.3*x[10]*x[21]+(-1.5*x[11]*x[14])-1.84*x[11]*x[18]-1.7*x[11]*x[21]+1.66*x[12]*x[14]-0.5*x[12]*x[16]+0.44*x[12]*x[17]-1.94*x[12]*x[20]+1.44*x[13]*x[15]+0.26*x[13]*x[18]-0.78*x[13]*x[19]+1.18*x[13]*x[20]+1.82*x[13]*x[21]+0.16*x[14]*x[20]-0.82*x[14]*x[15]-1.92*x[14]*x[21]+1.62*x[15]*x[18]+1.88*x[15]*x[21]+0.46*x[16]*x[18]-1.24*x[16]*x[20]+1.32*x[17]*x[18]-1.98*x[17]*x[19]-1.14*x[17]*x[20]+1.18*x[18]*x[19]-1.94*x[18]*x[20]+0.94*x[19]*x[21]+0.12*x[2]*x[2]-0.58*x[4]*x[4]-0.2*x[5]*x[5]+0.78*x[6]*x[6]-0.71*x[8]*x[8]-0.62*x[11]*x[11]-0.25*x[14]*x[14]-0.25*x[16]*x[16]+0.93*x[20]*x[20]+0.18*x[2]-0.55*x[3]-0.76*x[4]-0.06*x[5]-0.92*x[6]+0.82*x[7]+0.04*x[8]+0.15*x[9]+0.79*x[10]+0.51*x[11]-0.64*x[12]+0.03*x[13]-0.27*x[14]-0.91*x[15]+0.39*x[16]-0.65*x[17]-0.05*x[18]+0.39*x[19]-0.36*x[20]-0.47*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 1.8*x[2]*x[7]+1.66*x[2]*x[8]+0.42*x[2]*x[13]-0.96*x[2]*x[14]+0.84*x[2]*x[16]-1.56*x[2]*x[19]-0.46*x[2]*x[21]+0.28*x[3]*x[4]-2*x[3]*x[5]+1.44*x[3]*x[6]+1.4*x[3]*x[9]-0.92*x[3]*x[13]-1.9*x[3]*x[14]-1.38*x[3]*x[15]+0.2*x[3]*x[17]+0.08*x[3]*x[19]+1.54*x[3]*x[20]+1.98*x[3]*x[21]+1.76*x[4]*x[6]+0.98*x[4]*x[12]-1.74*x[4]*x[14]+0.24*x[4]*x[16]+0.28*x[4]*x[17]+0.48*x[4]*x[18]+1.84*x[4]*x[20]+0.2*x[4]*x[21]+1.66*x[5]*x[10]-1.2*x[5]*x[8]-0.24*x[5]*x[11]-0.04*x[5]*x[13]+1.88*x[5]*x[14]+0.96*x[5]*x[16]-0.18*x[5]*x[17]+0.76*x[6]*x[7]+0.24*x[6]*x[8]+0.66*x[6]*x[9]+1.14*x[6]*x[11]-1.86*x[6]*x[12]-0.76*x[6]*x[13]-1.32*x[6]*x[16]+0.02*x[6]*x[17]-1.02*x[6]*x[19]-1.02*x[6]*x[20]+1.64*x[7]*x[10]-1.38*x[7]*x[8]+0.42*x[7]*x[15]+0.44*x[7]*x[20]+0.26*x[7]*x[21]+(-0.76*x[8]*x[9])-0.3*x[8]*x[11]+0.44*x[8]*x[13]+1.5*x[8]*x[14]+1.96*x[8]*x[15]-0.54*x[8]*x[17]-0.8*x[8]*x[18]+0.4*x[9]*x[15]+1.14*x[9]*x[20]+0.32*x[9]*x[21]+(-0.66*x[10]*x[11])-0.76*x[10]*x[14]+1.88*x[10]*x[15]+0.52*x[10]*x[16]-1.38*x[10]*x[18]-0.2*x[10]*x[19]+0.96*x[11]*x[16]-1.94*x[11]*x[12]-1.36*x[11]*x[21]+1.82*x[12]*x[14]-0.06*x[12]*x[18]-1.36*x[12]*x[19]-0.26*x[12]*x[20]+(-1.28*x[13]*x[14])-1.34*x[13]*x[15]+1.4*x[13]*x[16]-1.56*x[13]*x[17]+0.18*x[14]*x[15]+0.3*x[14]*x[16]-0.28*x[14]*x[21]+0.54*x[15]*x[19]-0.2*x[15]*x[17]-1.88*x[15]*x[21]+(-1.96*x[16]*x[17])-1.86*x[16]*x[18]-0.52*x[16]*x[19]+1.84*x[17]*x[20]-0.84*x[17]*x[19]+1.2*x[18]*x[21]-1.72*x[18]*x[20]+(-1.82*x[19]*x[20])-0.44*x[19]*x[21]+1.16*x[20]*x[21]+0.65*x[4]*x[4]+0.2*x[5]*x[5]+0.25*x[6]*x[6]-0.56*x[9]*x[9]+0.97*x[12]*x[12]-0.19*x[15]*x[15]-0.95*x[18]*x[18]+0.22*x[21]*x[21]-0.76*x[2]+0.81*x[3]-0.4*x[4]-0.91*x[5]-0.43*x[6]-0.77*x[7]-0.45*x[8]+0.23*x[9]-0.58*x[10]+0.94*x[11]-0.98*x[12]-0.74*x[13]-0.55*x[14]-0.66*x[15]+0.34*x[16]-0.81*x[17]+0.8*x[18]+0.85*x[19]+0.03*x[20]-0.73*x[21] <= 21.91)
@NLconstraint(m, e3, 1.26*x[2]*x[8]+1.94*x[2]*x[9]-1.28*x[2]*x[11]+1.58*x[2]*x[15]-0.78*x[2]*x[21]+0.94*x[3]*x[4]-1.94*x[3]*x[6]-0.28*x[3]*x[10]+1.64*x[3]*x[14]-0.68*x[3]*x[15]+0.06*x[3]*x[16]-0.32*x[3]*x[18]+0.42*x[3]*x[20]-1.72*x[3]*x[21]+1.16*x[4]*x[6]-1.62*x[4]*x[9]-0.34*x[4]*x[10]+0.5*x[4]*x[14]+0.98*x[4]*x[18]+0.6*x[4]*x[19]+1.58*x[5]*x[7]-0.44*x[5]*x[10]-0.66*x[5]*x[14]-1.92*x[5]*x[16]-0.58*x[5]*x[18]+0.84*x[5]*x[19]+1.74*x[6]*x[9]+1.32*x[6]*x[16]-0.9*x[6]*x[19]+1.32*x[6]*x[20]+1.74*x[7]*x[10]+1.74*x[7]*x[11]-0.18*x[7]*x[13]+0.06*x[7]*x[14]+0.44*x[7]*x[15]+1.8*x[7]*x[16]+1.2*x[7]*x[19]+1.6*x[7]*x[20]+1.06*x[8]*x[13]-0.94*x[8]*x[14]+0.08*x[8]*x[19]-1.32*x[8]*x[21]+1.84*x[9]*x[10]+1.82*x[9]*x[11]+0.36*x[9]*x[12]-0.62*x[9]*x[13]+1.26*x[9]*x[14]+0.36*x[9]*x[16]+1.84*x[9]*x[17]-0.76*x[9]*x[21]+1.94*x[10]*x[11]-0.86*x[10]*x[12]-0.66*x[10]*x[13]+0.84*x[10]*x[14]+1.46*x[10]*x[15]-0.7*x[10]*x[17]-1.18*x[10]*x[18]+0.58*x[10]*x[19]+1.58*x[11]*x[12]+1.26*x[11]*x[14]-1.7*x[11]*x[17]-0.14*x[11]*x[18]+0.26*x[11]*x[21]+0.4*x[12]*x[13]+1.06*x[12]*x[20]-0.38*x[12]*x[21]+(-0.06*x[13]*x[17])-1.74*x[13]*x[20]+0.48*x[13]*x[21]+1.96*x[14]*x[17]+1.38*x[14]*x[21]+1.84*x[15]*x[17]-1.38*x[15]*x[16]-1.48*x[15]*x[19]+0.94*x[15]*x[20]-1.04*x[15]*x[21]+(-1.66*x[16]*x[18])-1.22*x[16]*x[19]-1.42*x[16]*x[20]-0.02*x[16]*x[21]+(-1.38*x[17]*x[18])-1.28*x[17]*x[20]+(-0.6*x[19]*x[20])-0.82*x[19]*x[21]+0.36*x[3]*x[3]-0.98*x[2]*x[2]+0.88*x[4]*x[4]-0.49*x[5]*x[5]+0.75*x[6]*x[6]-0.82*x[8]*x[8]+0.58*x[9]*x[9]+0.36*x[10]*x[10]-0.39*x[11]*x[11]+0.88*x[14]*x[14]-0.97*x[15]*x[15]-0.57*x[17]*x[17]-0.79*x[18]*x[18]+0.1*x[20]*x[20]-0.56*x[21]*x[21]-0.59*x[2]+0.43*x[3]+0.93*x[4]+0.1*x[5]+0.18*x[6]+0.17*x[7]-0.3*x[8]-0.95*x[9]+0.3*x[10]-0.27*x[11]+0.6*x[12]+0.12*x[13]-0.93*x[14]-0.58*x[15]-0.55*x[16]+0.14*x[17]+0.98*x[18]+0.28*x[19]-0.71*x[20]+0.11*x[21] <= 29.37)
@NLconstraint(m, e4, 1.82*x[2]*x[3]+1.6*x[2]*x[5]+1.82*x[2]*x[7]+1.54*x[2]*x[14]+1.16*x[2]*x[15]+0.86*x[2]*x[17]-1.98*x[2]*x[19]+1.1*x[2]*x[20]+(-1.4*x[3]*x[4])-1.94*x[3]*x[5]+1.08*x[3]*x[10]+0.1*x[3]*x[14]-0.28*x[3]*x[16]-0.78*x[3]*x[17]+1.9*x[3]*x[20]+0.68*x[3]*x[21]+0.42*x[4]*x[6]+0.44*x[4]*x[7]-1.64*x[4]*x[9]+1.2*x[4]*x[10]-0.92*x[4]*x[15]-0.62*x[4]*x[16]+1.38*x[4]*x[19]+1.74*x[4]*x[20]+1.3*x[5]*x[9]-0.88*x[5]*x[8]+0.76*x[5]*x[11]-1.3*x[5]*x[14]+1.72*x[5]*x[15]-0.56*x[5]*x[16]+1.24*x[5]*x[17]+1.46*x[5]*x[18]-0.5*x[5]*x[19]+0.68*x[5]*x[20]-1.26*x[5]*x[21]+0.28*x[6]*x[10]-0.4*x[6]*x[7]+1.54*x[6]*x[11]+1.24*x[6]*x[12]-1.04*x[6]*x[13]-0.46*x[6]*x[14]+0.94*x[6]*x[17]+x[6]*x[19]-1.52*x[6]*x[20]+0.12*x[7]*x[8]-1.32*x[7]*x[9]+1.76*x[7]*x[12]-0.64*x[7]*x[13]+0.48*x[7]*x[16]-1.14*x[7]*x[18]-0.68*x[7]*x[19]+0.2*x[8]*x[10]+0.52*x[8]*x[11]-1.66*x[8]*x[12]+x[8]*x[15]-1.42*x[8]*x[18]+0.54*x[8]*x[19]-1.98*x[8]*x[20]-1.84*x[8]*x[21]+(-1.68*x[9]*x[13])-1.72*x[9]*x[16]+0.46*x[10]*x[12]-1.02*x[10]*x[11]+1.18*x[10]*x[14]-0.36*x[10]*x[15]-0.08*x[10]*x[20]+0.28*x[10]*x[21]+0.92*x[11]*x[13]-1.16*x[11]*x[17]-0.84*x[11]*x[18]-0.62*x[11]*x[19]-0.02*x[11]*x[20]-0.6*x[11]*x[21]+1.62*x[12]*x[19]-0.82*x[12]*x[15]-1.54*x[12]*x[21]+0.02*x[13]*x[20]-1.5*x[13]*x[16]+(-1.02*x[14]*x[16])-0.64*x[14]*x[18]+1.64*x[14]*x[21]+0.24*x[15]*x[16]-0.24*x[15]*x[17]+1.26*x[16]*x[17]-1.94*x[16]*x[19]-1.1*x[17]*x[18]+1.46*x[18]*x[20]-1.06*x[18]*x[19]-1.52*x[19]*x[20]+0.82*x[20]*x[21]+0.37*x[2]*x[2]-0.15*x[3]*x[3]-0.1*x[8]*x[8]+0.16*x[12]*x[12]-0.91*x[13]*x[13]-0.92*x[14]*x[14]+0.92*x[15]*x[15]+0.45*x[16]*x[16]-0.56*x[19]*x[19]+0.95*x[20]*x[20]-0.15*x[2]+0.69*x[3]+0.11*x[4]-0.21*x[5]-0.87*x[6]-0.12*x[7]-0.9*x[8]+0.86*x[9]-0.72*x[10]-0.95*x[11]-0.16*x[12]-0.3*x[13]+0.01*x[14]-0.48*x[15]+0.03*x[16]+0.67*x[17]+0.22*x[18]+0.35*x[19]-0.74*x[20]+0.58*x[21] <= 59.7)
@NLconstraint(m, e5, 1.8*x[2]*x[3]+1.14*x[2]*x[6]-0.3*x[2]*x[8]+1.9*x[2]*x[14]-0.4*x[2]*x[15]-1.24*x[2]*x[16]+0.16*x[2]*x[17]+1.16*x[2]*x[19]+1.26*x[2]*x[20]+(-1.16*x[3]*x[5])-0.66*x[3]*x[7]+0.4*x[3]*x[8]+0.16*x[3]*x[11]+1.04*x[3]*x[13]+1.46*x[3]*x[14]-0.9*x[3]*x[16]+0.22*x[3]*x[17]+0.26*x[3]*x[18]+1.4*x[3]*x[19]-1.28*x[3]*x[21]+1.14*x[4]*x[5]+1.74*x[4]*x[6]-1.06*x[4]*x[8]+0.22*x[4]*x[9]+0.3*x[4]*x[10]-0.9*x[4]*x[11]+0.12*x[4]*x[12]+0.18*x[4]*x[13]-1.5*x[4]*x[14]+0.12*x[4]*x[15]+0.54*x[4]*x[18]+0.94*x[4]*x[19]-1.16*x[4]*x[20]+0.94*x[4]*x[21]+1.48*x[5]*x[7]-1.9*x[5]*x[10]+0.9*x[5]*x[12]-0.08*x[5]*x[13]-0.94*x[5]*x[16]+0.38*x[5]*x[17]+1.98*x[5]*x[19]+1.18*x[5]*x[20]+0.16*x[6]*x[7]+1.8*x[6]*x[9]+1.3*x[6]*x[13]-1.64*x[6]*x[17]+0.58*x[6]*x[19]+0.14*x[6]*x[20]+0.96*x[6]*x[21]+(-0.1*x[7]*x[8])-1.28*x[7]*x[10]-1.24*x[7]*x[11]+0.84*x[7]*x[14]+0.6*x[7]*x[15]+1.36*x[7]*x[18]-1.76*x[7]*x[20]+(-0.26*x[8]*x[9])-0.82*x[8]*x[12]+1.26*x[8]*x[14]+0.88*x[8]*x[16]+0.4*x[8]*x[20]+0.68*x[9]*x[11]-1.98*x[9]*x[12]+0.78*x[9]*x[13]-0.86*x[9]*x[14]-1.86*x[9]*x[15]-1.4*x[9]*x[16]-1.1*x[9]*x[17]+0.94*x[10]*x[19]-0.14*x[10]*x[14]+0.64*x[10]*x[20]+1.14*x[11]*x[16]+0.6*x[11]*x[18]-1.68*x[11]*x[21]+1.56*x[12]*x[16]+0.24*x[12]*x[21]+1.92*x[13]*x[18]-0.6*x[13]*x[16]-1.22*x[13]*x[20]+1.04*x[13]*x[21]+(-0.72*x[14]*x[18])-0.08*x[14]*x[19]+1.82*x[15]*x[16]+1.5*x[15]*x[17]-0.4*x[15]*x[18]-1.66*x[16]*x[21]+1.76*x[17]*x[18]+(-0.86*x[18]*x[19])-0.48*x[18]*x[21]+0.76*x[19]*x[21]-1.98*x[19]*x[20]-1.2*x[20]*x[21]+0.58*x[3]*x[3]-0.7*x[2]*x[2]-0.77*x[4]*x[4]+0.34*x[9]*x[9]-0.27*x[10]*x[10]+0.4*x[12]*x[12]-0.78*x[14]*x[14]-0.26*x[15]*x[15]-0.97*x[2]+0.11*x[3]+0.16*x[4]-0.21*x[5]+0.71*x[6]-0.86*x[7]+0.87*x[8]-0.58*x[9]+0.91*x[10]-0.83*x[11]+0.02*x[12]-0.5*x[13]+0.09*x[14]+0.26*x[15]-0.79*x[16]-0.66*x[17]+0.1*x[18]+0.73*x[19]+0.62*x[20]+0.53*x[21] <= 69.3)
@NLconstraint(m, e6, 0.56*x[2]*x[7]+0.04*x[2]*x[8]-1.2*x[2]*x[16]+0.74*x[2]*x[17]-1.04*x[2]*x[20]+0.02*x[3]*x[5]-1.12*x[3]*x[4]+1.76*x[3]*x[7]+0.84*x[3]*x[8]+1.96*x[3]*x[9]+1.24*x[3]*x[10]-0.18*x[3]*x[12]-1.02*x[3]*x[13]+0.74*x[3]*x[14]+0.28*x[3]*x[16]-1.52*x[3]*x[17]-1.28*x[3]*x[18]+0.4*x[3]*x[20]+0.44*x[3]*x[21]+1.08*x[4]*x[5]+0.54*x[4]*x[6]-x[4]*x[10]+1.66*x[4]*x[11]+0.28*x[4]*x[13]-0.7*x[4]*x[14]-0.76*x[4]*x[15]-0.8*x[4]*x[16]+(-0.66*x[5]*x[7])-1.8*x[5]*x[8]-0.04*x[5]*x[9]-0.22*x[5]*x[10]-0.52*x[5]*x[12]+0.92*x[5]*x[13]-1.62*x[5]*x[14]-1.28*x[5]*x[19]-1.64*x[5]*x[21]+1.4*x[6]*x[16]-1.16*x[6]*x[17]+0.1*x[6]*x[18]+1.46*x[6]*x[21]+1.78*x[7]*x[11]-0.68*x[7]*x[12]-0.28*x[7]*x[14]-0.08*x[7]*x[18]-0.52*x[7]*x[21]+0.38*x[8]*x[12]-1.88*x[8]*x[13]+0.68*x[8]*x[14]-1.7*x[8]*x[17]+1.8*x[8]*x[19]+1.38*x[8]*x[20]+0.42*x[9]*x[11]-0.88*x[9]*x[10]-1.02*x[9]*x[15]-0.58*x[9]*x[16]-0.66*x[9]*x[19]+1.04*x[9]*x[21]+0.7*x[10]*x[11]+1.58*x[10]*x[13]-0.3*x[10]*x[15]+1.36*x[10]*x[18]+1.08*x[10]*x[19]+0.88*x[10]*x[20]+1.06*x[11]*x[13]+0.12*x[11]*x[14]+1.62*x[11]*x[16]-0.38*x[11]*x[17]+0.72*x[11]*x[18]+1.8*x[12]*x[14]-1.5*x[12]*x[13]+0.14*x[12]*x[15]-1.24*x[12]*x[16]+1.48*x[12]*x[17]+0.04*x[12]*x[18]-1.56*x[12]*x[21]-1.76*x[13]*x[16]+0.92*x[14]*x[18]-1.8*x[14]*x[17]-1.16*x[14]*x[19]-1.08*x[14]*x[21]+1.3*x[15]*x[17]-0.96*x[15]*x[20]+1.98*x[16]*x[20]-1.28*x[16]*x[21]+1.88*x[17]*x[19]-0.24*x[17]*x[18]+1.68*x[17]*x[21]+0.34*x[18]*x[19]+0.36*x[18]*x[20]+1.56*x[18]*x[21]+1.04*x[19]*x[21]-1.3*x[19]*x[20]+0.56*x[5]*x[5]-0.75*x[6]*x[6]-0.02*x[7]*x[7]-0.3*x[10]*x[10]+0.11*x[11]*x[11]+0.04*x[14]*x[14]+0.27*x[15]*x[15]+0.64*x[16]*x[16]+0.96*x[2]-0.22*x[3]-0.01*x[4]+0.48*x[5]+0.53*x[6]+0.47*x[7]+0.57*x[8]-0.75*x[9]-0.99*x[10]-0.84*x[11]-0.62*x[12]+0.3*x[13]-0.02*x[14]+0.01*x[15]-0.51*x[16]-0.92*x[17]+0.66*x[18]+0.76*x[19]-0.81*x[20]+0.6*x[21] <= 65.94)
@NLconstraint(m, e7, 1.22*x[2]*x[6]+1.52*x[2]*x[7]+0.24*x[2]*x[11]+1.18*x[2]*x[12]-0.2*x[2]*x[13]-1.68*x[2]*x[14]+0.26*x[2]*x[15]+0.16*x[2]*x[17]+0.74*x[2]*x[19]+0.06*x[2]*x[21]+1.98*x[3]*x[9]-0.42*x[3]*x[8]-0.32*x[3]*x[10]-1.96*x[3]*x[12]+1.76*x[3]*x[13]+1.4*x[3]*x[16]-1.22*x[3]*x[17]-0.2*x[3]*x[20]+1.86*x[4]*x[5]+1.08*x[4]*x[6]+0.16*x[4]*x[12]+1.08*x[4]*x[15]-1.86*x[4]*x[16]-0.02*x[4]*x[20]+1.84*x[5]*x[9]-0.04*x[5]*x[15]-x[5]*x[17]+0.08*x[5]*x[18]+1.66*x[5]*x[19]-0.3*x[5]*x[21]+(-0.4*x[6]*x[7])-1.68*x[6]*x[9]+1.1*x[6]*x[11]+1.16*x[6]*x[13]+0.3*x[6]*x[16]+0.34*x[6]*x[17]+1.32*x[6]*x[21]+0.22*x[7]*x[10]-1.4*x[7]*x[16]-0.4*x[7]*x[17]+1.24*x[7]*x[19]+1.26*x[7]*x[21]+1.24*x[8]*x[12]-0.56*x[8]*x[10]-1.62*x[8]*x[13]+1.34*x[8]*x[18]-1.7*x[8]*x[19]-1.4*x[8]*x[20]+(-0.52*x[9]*x[10])-x[9]*x[14]+1.52*x[9]*x[15]+x[9]*x[17]+0.92*x[9]*x[19]-1.6*x[9]*x[20]+0.46*x[10]*x[15]-0.06*x[10]*x[12]-0.72*x[10]*x[17]+1.98*x[10]*x[18]+1.64*x[10]*x[20]+1.86*x[11]*x[12]+1.28*x[11]*x[13]+1.46*x[11]*x[14]+1.78*x[11]*x[15]+0.04*x[11]*x[18]+0.58*x[12]*x[14]-0.38*x[12]*x[13]-0.26*x[12]*x[15]-1.46*x[12]*x[16]+1.5*x[12]*x[17]+1.64*x[12]*x[19]+0.72*x[13]*x[14]-1.18*x[13]*x[15]+1.74*x[13]*x[16]+1.82*x[13]*x[20]-0.04*x[13]*x[21]+0.52*x[14]*x[16]+1.22*x[14]*x[19]+1.92*x[14]*x[21]+0.96*x[15]*x[17]-0.4*x[15]*x[16]+1.34*x[15]*x[18]+1.14*x[15]*x[19]-1.44*x[15]*x[20]+1.72*x[16]*x[17]-0.72*x[16]*x[19]+1.38*x[17]*x[21]+0.34*x[18]*x[20]-1.9*x[18]*x[19]+1.98*x[19]*x[20]+0.88*x[19]*x[21]+0.02*x[5]*x[5]+0.2*x[8]*x[8]+0.89*x[9]*x[9]-0.24*x[10]*x[10]+0.48*x[12]*x[12]-0.74*x[13]*x[13]+0.57*x[14]*x[14]-0.98*x[19]*x[19]-0.67*x[2]+0.74*x[3]-0.98*x[4]+0.17*x[5]+0.96*x[6]-0.58*x[7]+0.13*x[8]+0.41*x[9]-0.04*x[10]-0.27*x[11]-0.53*x[12]+0.41*x[13]+0.96*x[14]-0.24*x[15]+0.4*x[16]+0.93*x[17]+0.38*x[18]+0.83*x[19]+0.05*x[20]-0.8*x[21] <= 88.54)
@NLconstraint(m, e8, 1.92*x[2]*x[5]-1.88*x[2]*x[4]-0.46*x[2]*x[7]+1.4*x[2]*x[9]+0.94*x[2]*x[10]+0.42*x[2]*x[11]-0.04*x[2]*x[12]-0.32*x[2]*x[13]-1.02*x[2]*x[15]-0.08*x[2]*x[16]-1.3*x[2]*x[21]+1.06*x[3]*x[5]+0.76*x[3]*x[8]+0.72*x[3]*x[9]-0.36*x[3]*x[10]+1.46*x[3]*x[13]+1.66*x[3]*x[15]-0.02*x[3]*x[16]-1.3*x[3]*x[17]+0.64*x[3]*x[18]+1.88*x[3]*x[20]+0.54*x[4]*x[5]+0.8*x[4]*x[8]+x[4]*x[12]-0.6*x[4]*x[13]-0.64*x[4]*x[14]-0.04*x[4]*x[16]+0.88*x[4]*x[17]+1.84*x[4]*x[19]+1.08*x[4]*x[20]+(-0.06*x[5]*x[12])-1.54*x[5]*x[14]-1.64*x[5]*x[15]+1.74*x[5]*x[16]+0.16*x[5]*x[20]+(-1.46*x[6]*x[8])-1.68*x[6]*x[9]-0.16*x[6]*x[10]+0.66*x[6]*x[11]+1.7*x[6]*x[12]-1.52*x[6]*x[16]-1.58*x[6]*x[17]+0.48*x[6]*x[19]+0.92*x[7]*x[11]-0.88*x[7]*x[10]-0.54*x[7]*x[15]+1.36*x[7]*x[16]+1.64*x[7]*x[19]+1.82*x[7]*x[20]+0.2*x[7]*x[21]+1.5*x[8]*x[11]+0.72*x[8]*x[12]+1.76*x[8]*x[16]+1.68*x[8]*x[17]+0.58*x[8]*x[19]+(-0.38*x[9]*x[12])-1.94*x[9]*x[14]-1.02*x[9]*x[17]+1.16*x[9]*x[18]+0.9*x[10]*x[13]+1.1*x[10]*x[14]-0.78*x[10]*x[18]+1.56*x[11]*x[15]-1.76*x[11]*x[14]+1.2*x[11]*x[17]+0.38*x[12]*x[15]-1.4*x[12]*x[14]-0.7*x[12]*x[17]-1.2*x[12]*x[20]+1.34*x[13]*x[14]+1.38*x[13]*x[16]-0.6*x[13]*x[17]+1.86*x[13]*x[20]+1.68*x[13]*x[21]+1.3*x[14]*x[20]-1.3*x[14]*x[19]+0.6*x[14]*x[21]+0.08*x[15]*x[17]+0.36*x[15]*x[19]+1.96*x[15]*x[20]-1.56*x[15]*x[21]+1.42*x[16]*x[18]-0.14*x[16]*x[17]+0.86*x[16]*x[20]+1.84*x[17]*x[18]+x[17]*x[20]+1.46*x[17]*x[21]+0.94*x[3]*x[3]+0.52*x[4]*x[4]-0.49*x[6]*x[6]+0.02*x[7]*x[7]+0.64*x[8]*x[8]+0.4*x[11]*x[11]-0.06*x[12]*x[12]+0.14*x[14]*x[14]+0.04*x[15]*x[15]-0.71*x[16]*x[16]-0.99*x[17]*x[17]-0.79*x[18]*x[18]+0.3*x[19]*x[19]+0.55*x[2]-0.76*x[3]-0.53*x[4]+0.15*x[5]-0.86*x[6]-0.46*x[7]-0.33*x[8]+0.61*x[9]+0.2*x[10]+0.12*x[11]-0.87*x[12]-0.41*x[13]-0.32*x[14]-0.1*x[15]+0.72*x[16]+0.14*x[17]+0.47*x[18]-0.63*x[19]+0.08*x[20]+0.64*x[21] <= 72.32)
@NLconstraint(m, e9, 0.96*x[2]*x[3]+0.88*x[2]*x[4]-1.96*x[2]*x[5]+0.34*x[2]*x[6]+1.7*x[2]*x[7]-1.48*x[2]*x[8]+0.94*x[2]*x[10]-1.38*x[2]*x[12]+1.34*x[2]*x[14]-0.98*x[2]*x[15]-0.48*x[2]*x[16]-1.78*x[2]*x[17]+1.72*x[2]*x[19]+0.8*x[2]*x[21]+1.46*x[3]*x[7]-1.36*x[3]*x[4]+1.34*x[3]*x[8]+0.54*x[3]*x[9]-1.68*x[3]*x[10]+0.44*x[3]*x[11]+1.54*x[3]*x[13]-0.88*x[3]*x[17]+1.3*x[3]*x[19]-1.8*x[3]*x[20]+0.76*x[3]*x[21]+(-1.08*x[4]*x[6])-1.06*x[4]*x[7]+1.96*x[4]*x[10]-0.74*x[4]*x[16]-0.78*x[4]*x[18]-0.44*x[4]*x[21]+0.34*x[5]*x[6]-1.78*x[5]*x[7]-1.36*x[5]*x[11]+0.62*x[5]*x[12]+0.54*x[5]*x[13]+0.02*x[5]*x[20]+1.62*x[5]*x[21]+1.62*x[6]*x[12]-1.44*x[6]*x[9]-0.68*x[6]*x[17]+1.62*x[6]*x[21]+1.68*x[7]*x[8]-1.4*x[7]*x[9]+1.08*x[7]*x[10]-0.86*x[7]*x[16]+0.62*x[7]*x[17]-0.24*x[7]*x[18]+(-1.86*x[8]*x[12])-0.8*x[8]*x[15]-1.4*x[8]*x[16]-0.2*x[8]*x[19]-1.04*x[8]*x[20]+0.32*x[8]*x[21]+(-0.2*x[9]*x[12])-x[9]*x[13]+1.98*x[9]*x[20]+0.86*x[9]*x[21]+0.26*x[10]*x[12]+0.56*x[10]*x[14]+1.14*x[10]*x[15]-0.16*x[10]*x[16]-0.72*x[10]*x[19]+0.64*x[11]*x[19]-1.14*x[11]*x[14]+1.04*x[11]*x[20]+1.9*x[12]*x[14]-0.98*x[12]*x[13]-0.44*x[12]*x[16]+0.22*x[12]*x[18]-0.5*x[12]*x[20]+1.24*x[12]*x[21]+(-1.02*x[13]*x[14])-1.84*x[13]*x[16]+0.22*x[13]*x[21]+(-1.5*x[14]*x[15])-1.92*x[14]*x[16]-1.3*x[14]*x[17]+0.88*x[14]*x[20]+(-1.62*x[15]*x[16])-0.06*x[15]*x[20]-1.38*x[15]*x[21]+0.44*x[17]*x[18]+0.32*x[17]*x[19]+0.18*x[18]*x[19]+0.7*x[19]*x[20]-0.42*x[20]*x[21]+0.81*x[2]*x[2]+0.31*x[4]*x[4]+0.46*x[5]*x[5]+0.6*x[7]*x[7]-0.88*x[10]*x[10]+0.46*x[11]*x[11]+0.06*x[16]*x[16]+0.31*x[17]*x[17]-0.38*x[18]*x[18]-0.32*x[19]*x[19]+0.26*x[20]*x[20]-0.92*x[21]*x[21]-0.68*x[2]-0.8*x[3]-0.01*x[4]+0.14*x[5]-0.45*x[6]+0.65*x[7]+0.77*x[8]+0.09*x[9]+0.75*x[10]+0.12*x[11]+0.4*x[12]+0.16*x[13]+0.96*x[14]+0.09*x[15]+0.24*x[16]-0.62*x[17]+0.19*x[18]-0.38*x[19]-0.6*x[20]+0.78*x[21] <= 24.25)
@NLconstraint(m, e10, (-0.72*x[2]*x[7])-1.8*x[2]*x[10]-0.24*x[2]*x[13]+1.66*x[2]*x[14]-0.7*x[2]*x[16]-0.28*x[2]*x[17]+0.7*x[2]*x[18]+0.44*x[2]*x[19]+1.24*x[2]*x[20]+1.68*x[3]*x[7]-1.1*x[3]*x[6]+1.1*x[3]*x[8]+0.88*x[3]*x[10]+1.68*x[3]*x[11]+0.94*x[3]*x[13]+1.38*x[3]*x[15]+1.06*x[3]*x[17]-1.76*x[3]*x[19]-1.86*x[3]*x[20]+0.84*x[3]*x[21]+(-1.66*x[4]*x[5])-x[4]*x[9]+1.18*x[4]*x[11]-0.92*x[4]*x[12]-0.06*x[4]*x[13]+1.38*x[4]*x[14]-1.76*x[4]*x[15]-0.36*x[4]*x[16]-1.96*x[4]*x[18]+1.1*x[4]*x[19]-0.74*x[4]*x[20]+0.72*x[5]*x[12]-0.64*x[5]*x[13]+0.7*x[5]*x[15]-1.4*x[5]*x[19]-1.38*x[5]*x[21]+(-0.2*x[6]*x[10])-0.52*x[6]*x[11]-1.52*x[6]*x[16]-0.2*x[6]*x[20]-1.88*x[6]*x[21]+1.36*x[7]*x[8]-1.02*x[7]*x[10]+0.3*x[7]*x[13]+0.04*x[7]*x[14]+0.92*x[7]*x[16]-0.48*x[7]*x[17]-1.14*x[7]*x[18]-1.78*x[7]*x[20]+1.78*x[8]*x[9]-1.26*x[8]*x[10]-1.02*x[8]*x[15]+1.88*x[8]*x[16]+1.22*x[8]*x[17]+1.78*x[8]*x[19]-0.66*x[8]*x[20]+(-1.54*x[9]*x[10])-1.4*x[9]*x[12]-1.24*x[9]*x[13]+0.64*x[9]*x[19]-0.06*x[9]*x[20]+(-0.3*x[10]*x[12])-1.58*x[10]*x[17]+0.56*x[10]*x[20]+0.98*x[10]*x[21]+0.92*x[11]*x[13]-1.84*x[11]*x[14]+0.88*x[11]*x[16]-0.38*x[11]*x[17]-0.26*x[11]*x[18]+0.54*x[11]*x[20]+0.12*x[12]*x[15]-0.18*x[12]*x[16]+1.46*x[12]*x[20]+1.78*x[13]*x[18]-0.64*x[13]*x[15]-0.08*x[13]*x[19]+1.72*x[13]*x[21]+1.8*x[14]*x[16]-0.26*x[14]*x[20]+0.42*x[15]*x[17]-0.7*x[15]*x[16]-1.58*x[15]*x[19]-1.34*x[15]*x[20]+1.14*x[16]*x[17]-1.5*x[16]*x[19]-1.98*x[16]*x[20]-1.82*x[16]*x[21]+1.32*x[17]*x[18]+1.64*x[18]*x[20]-1.74*x[18]*x[19]-1.4*x[18]*x[21]+0.84*x[19]*x[20]+(-0.37*x[7]*x[7])-0.54*x[9]*x[9]-0.81*x[12]*x[12]-0.78*x[14]*x[14]+0.99*x[17]*x[17]+0.72*x[19]*x[19]+0.41*x[20]*x[20]-0.61*x[2]-0.13*x[3]-0.92*x[4]+0.69*x[5]+0.69*x[6]-0.58*x[7]+0.4*x[8]+0.41*x[9]-0.31*x[10]-0.68*x[11]-0.28*x[12]-x[13]+0.52*x[14]+0.21*x[15]-0.92*x[16]-0.42*x[17]+0.72*x[18]-0.24*x[19]+0.07*x[20]-0.69*x[21] <= 87.31)
@NLconstraint(m, e11, 0.08*x[2]*x[4]-1.68*x[2]*x[5]-0.72*x[2]*x[9]-1.24*x[2]*x[11]-1.36*x[2]*x[12]+0.16*x[2]*x[14]-0.06*x[2]*x[17]+0.68*x[2]*x[18]+0.42*x[2]*x[20]+(-0.9*x[3]*x[5])-1.6*x[3]*x[8]-1.36*x[3]*x[9]-0.64*x[3]*x[10]+1.68*x[3]*x[11]+0.02*x[3]*x[17]-1.86*x[3]*x[19]+0.08*x[4]*x[7]-0.34*x[4]*x[9]-0.02*x[4]*x[10]+0.08*x[4]*x[12]-0.72*x[4]*x[14]+1.88*x[4]*x[19]+0.36*x[4]*x[20]+0.6*x[4]*x[21]+1.64*x[5]*x[10]-1.48*x[5]*x[9]+0.04*x[5]*x[13]+0.48*x[5]*x[16]+0.74*x[5]*x[18]+1.58*x[5]*x[19]+(-1.42*x[6]*x[7])-0.06*x[6]*x[8]-0.74*x[6]*x[9]+1.22*x[6]*x[11]-0.98*x[6]*x[12]-0.36*x[6]*x[13]+1.62*x[6]*x[14]-1.16*x[6]*x[16]+0.2*x[6]*x[18]-0.98*x[6]*x[19]+0.94*x[6]*x[21]+(-0.1*x[7]*x[11])-1.94*x[7]*x[13]-1.76*x[7]*x[14]+0.48*x[7]*x[19]+1.06*x[7]*x[20]+1.3*x[7]*x[21]+1.58*x[8]*x[11]-0.86*x[8]*x[10]+0.72*x[8]*x[13]-0.26*x[8]*x[15]+0.48*x[8]*x[17]+1.62*x[9]*x[10]-0.04*x[9]*x[11]+0.56*x[9]*x[15]+0.52*x[9]*x[17]-0.64*x[9]*x[18]-1.58*x[9]*x[20]-0.82*x[9]*x[21]+1.86*x[10]*x[12]-1.62*x[10]*x[13]+0.9*x[10]*x[14]+0.8*x[10]*x[16]-1.4*x[10]*x[17]+1.68*x[11]*x[14]-0.04*x[11]*x[15]-1.66*x[11]*x[17]+1.18*x[12]*x[13]-0.26*x[12]*x[18]-1.56*x[12]*x[21]+0.24*x[13]*x[15]-1.48*x[13]*x[14]-1.26*x[13]*x[16]+1.74*x[13]*x[17]+1.76*x[13]*x[20]+(-1.1*x[14]*x[18])-0.94*x[14]*x[20]+0.24*x[15]*x[16]-0.12*x[15]*x[17]+0.72*x[15]*x[21]+0.26*x[16]*x[18]-1.18*x[16]*x[17]+(-0.88*x[17]*x[20])-1.98*x[17]*x[21]+(-1.4*x[18]*x[19])-1.16*x[18]*x[20]+(-0.56*x[19]*x[20])-1.1*x[19]*x[21]+0.04*x[20]*x[21]+(-0.81*x[6]*x[6])-0.63*x[12]*x[12]+0.79*x[13]*x[13]+0.28*x[14]*x[14]+0.49*x[15]*x[15]+0.75*x[16]*x[16]+0.74*x[19]*x[19]+0.01*x[20]*x[20]-0.92*x[21]*x[21]+0.23*x[2]-0.04*x[3]-0.26*x[4]-0.3*x[5]-0.49*x[6]+0.45*x[7]+0.09*x[8]-0.91*x[9]-0.39*x[10]-0.3*x[11]+0.62*x[12]-0.36*x[13]+0.42*x[14]+0.87*x[15]-0.24*x[16]-0.75*x[17]-0.71*x[18]-0.72*x[19]+0.6*x[20]-0.05*x[21] <= 55.88)
@constraint(m, e12, -0.52*x[2]+0.66*x[3]-0.72*x[4]-0.35*x[5]-0.6*x[6]-0.06*x[7]+0.56*x[8]+0.46*x[9]-0.45*x[10]-0.97*x[11]-0.59*x[12]+0.34*x[13]+0.34*x[14]-0.71*x[15]-0.7*x[16]-0.61*x[17]-0.47*x[18]-0.03*x[19]+0.59*x[20]-0.87*x[21] == 0.48)
@constraint(m, e13, -0.38*x[2]+0.21*x[3]+0.85*x[4]-0.88*x[5]+0.6*x[6]-0.05*x[7]+0.33*x[8]+0.56*x[9]+0.46*x[10]-0.25*x[11]-0.2*x[12]+0.36*x[13]+0.04*x[14]+0.41*x[15]-0.9*x[16]+0.43*x[17]+0.43*x[18]-0.01*x[19]+0.02*x[20]-0.08*x[21] == 0.82)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.