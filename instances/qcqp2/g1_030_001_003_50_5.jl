using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
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
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.46*x[2]*x[6]-0.4*x[2]*x[4]-1.02*x[2]*x[7]+1.02*x[2]*x[11]+1.5*x[2]*x[16]-1.88*x[2]*x[17]-0.08*x[2]*x[18]-0.16*x[2]*x[20]+0.76*x[2]*x[21]-1.94*x[2]*x[22]+1.96*x[2]*x[23]-1.88*x[2]*x[24]-1.2*x[2]*x[26]+1.46*x[2]*x[29]+1.5*x[2]*x[30]+1.44*x[3]*x[7]-1.78*x[3]*x[5]-1.24*x[3]*x[8]-1.48*x[3]*x[10]+1.54*x[3]*x[19]-1.52*x[3]*x[22]+0.54*x[3]*x[25]-0.38*x[3]*x[29]+1.84*x[3]*x[31]+0.14*x[4]*x[5]-1.7*x[4]*x[6]+0.02*x[4]*x[9]+0.86*x[4]*x[13]+0.1*x[4]*x[14]+0.7*x[4]*x[17]+0.22*x[4]*x[19]-0.36*x[4]*x[20]+0.54*x[4]*x[22]-1.92*x[4]*x[29]+0.3*x[5]*x[6]-1.16*x[5]*x[7]+1.68*x[5]*x[8]+1.44*x[5]*x[11]-0.66*x[5]*x[13]-0.66*x[5]*x[16]-0.78*x[5]*x[17]+1.12*x[5]*x[19]+1.76*x[5]*x[20]-0.14*x[5]*x[21]-0.42*x[5]*x[22]-0.9*x[5]*x[24]-1.38*x[5]*x[26]+1.48*x[5]*x[27]+0.94*x[5]*x[28]+1.56*x[5]*x[31]+0.82*x[6]*x[9]-1.86*x[6]*x[14]+1.16*x[6]*x[16]-1.8*x[6]*x[21]-1.34*x[6]*x[23]-1.76*x[6]*x[24]-0.68*x[6]*x[25]-0.04*x[6]*x[27]-1.4*x[6]*x[28]+1.34*x[6]*x[30]+2*x[6]*x[31]+(-0.92*x[7]*x[8])-0.88*x[7]*x[10]+1.62*x[7]*x[11]-1.58*x[7]*x[12]+1.5*x[7]*x[13]-0.12*x[7]*x[14]-1.66*x[7]*x[16]-0.52*x[7]*x[17]-1.5*x[7]*x[19]-0.82*x[7]*x[20]+0.22*x[7]*x[21]+0.26*x[7]*x[25]+1.18*x[7]*x[26]-0.94*x[7]*x[28]+1.78*x[7]*x[30]+1.54*x[7]*x[31]+1.64*x[8]*x[11]-2*x[8]*x[12]+1.38*x[8]*x[16]-1.96*x[8]*x[17]+0.36*x[8]*x[20]+1.44*x[8]*x[21]-1.38*x[8]*x[23]+0.78*x[8]*x[25]+0.66*x[8]*x[26]+0.9*x[8]*x[27]+0.98*x[8]*x[28]+0.48*x[8]*x[30]-1.76*x[8]*x[31]+0.88*x[9]*x[14]-0.78*x[9]*x[12]-0.04*x[9]*x[24]+0.36*x[9]*x[25]-0.7*x[9]*x[29]-0.36*x[9]*x[30]+0.4*x[10]*x[12]-1.04*x[10]*x[13]-1.62*x[10]*x[17]-1.06*x[10]*x[21]-0.22*x[10]*x[22]+1.54*x[10]*x[23]-0.76*x[10]*x[28]-1.16*x[10]*x[29]+1.96*x[11]*x[13]-1.78*x[11]*x[12]-0.44*x[11]*x[14]-1.94*x[11]*x[17]+1.86*x[11]*x[18]-1.9*x[11]*x[19]-0.98*x[11]*x[20]-1.24*x[11]*x[22]+0.06*x[11]*x[28]-0.34*x[11]*x[29]+1.96*x[11]*x[30]+0.62*x[11]*x[31]+0.62*x[12]*x[13]+1.7*x[12]*x[15]-1.02*x[12]*x[17]+1.76*x[12]*x[20]+0.86*x[12]*x[21]-1.6*x[12]*x[22]+1.98*x[12]*x[23]+1.14*x[12]*x[27]+1.82*x[12]*x[30]-0.82*x[12]*x[31]+1.04*x[13]*x[17]-1.06*x[13]*x[14]+1.98*x[13]*x[19]+1.6*x[13]*x[22]+1.48*x[13]*x[24]+1.8*x[13]*x[25]+1.58*x[13]*x[29]+0.6*x[13]*x[30]-0.62*x[13]*x[31]+0.16*x[14]*x[19]-1.06*x[14]*x[17]-0.34*x[14]*x[21]-1.5*x[14]*x[23]+0.04*x[14]*x[28]-1.86*x[14]*x[31]+1.98*x[15]*x[23]-x[15]*x[21]-1.98*x[15]*x[26]+1.2*x[15]*x[27]-1.24*x[15]*x[28]+0.72*x[15]*x[29]-1.66*x[15]*x[30]+1.96*x[16]*x[21]-1.74*x[16]*x[25]-0.06*x[16]*x[26]-0.8*x[16]*x[28]+0.22*x[16]*x[29]+0.96*x[17]*x[20]-0.26*x[17]*x[18]-1.32*x[17]*x[21]-1.68*x[17]*x[22]+1.02*x[17]*x[25]-1.3*x[17]*x[29]+1.78*x[17]*x[30]-1.26*x[17]*x[31]+0.72*x[18]*x[22]-1.46*x[18]*x[20]+1.28*x[18]*x[24]+0.22*x[18]*x[26]-0.88*x[18]*x[30]+1.06*x[19]*x[21]+0.28*x[19]*x[22]+1.38*x[19]*x[26]-1.78*x[19]*x[27]-0.66*x[19]*x[29]+0.32*x[19]*x[31]+(-1.62*x[20]*x[23])-x[20]*x[24]+0.42*x[20]*x[26]+1.14*x[20]*x[27]+1.66*x[21]*x[23]-1.48*x[21]*x[24]+0.54*x[21]*x[27]-0.78*x[21]*x[28]+0.76*x[21]*x[29]-0.46*x[21]*x[30]+1.18*x[22]*x[23]+1.92*x[22]*x[24]-0.82*x[22]*x[28]-1.44*x[22]*x[31]+0.3*x[23]*x[24]-1.46*x[23]*x[26]+1.4*x[23]*x[30]-0.14*x[23]*x[31]+1.32*x[24]*x[25]+1.1*x[24]*x[27]+1.48*x[24]*x[30]+0.62*x[24]*x[31]+0.26*x[25]*x[26]+1.4*x[25]*x[28]+1.92*x[25]*x[31]+(-1.2*x[27]*x[29])-0.66*x[27]*x[30]+0.18*x[27]*x[31]+(-1.92*x[28]*x[29])-1.02*x[28]*x[31]-0.02*x[29]*x[31]-0.24*x[30]*x[31]+(-0.28*x[2]*x[2])-0.31*x[3]*x[3]-0.7*x[6]*x[6]-0.36*x[7]*x[7]-0.52*x[8]*x[8]+0.87*x[9]*x[9]+0.51*x[13]*x[13]+0.02*x[14]*x[14]+0.21*x[15]*x[15]-0.2*x[16]*x[16]-0.48*x[17]*x[17]+0.64*x[18]*x[18]+0.94*x[19]*x[19]+0.64*x[21]*x[21]+0.29*x[25]*x[25]+0.92*x[26]*x[26]+0.9*x[27]*x[27]-0.67*x[28]*x[28]+0.58*x[29]*x[29]+0.31*x[31]*x[31]-0.99*x[2]-0.09*x[3]+0.08*x[4]+0.99*x[5]+0.67*x[6]+0.62*x[7]-0.96*x[8]-0.05*x[9]+0.92*x[10]-0.38*x[11]-0.49*x[12]-0.19*x[13]+0.97*x[14]+x[15]-0.04*x[16]-0.93*x[17]-0.72*x[18]-0.25*x[19]+0.88*x[20]+0.95*x[21]-0.4*x[22]+0.72*x[23]+0.73*x[24]+0.65*x[25]+0.49*x[26]-0.38*x[27]+0.35*x[28]-0.93*x[29]+0.18*x[30]-0.15*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 0.12*x[2]*x[3]+0.78*x[2]*x[5]+1.02*x[2]*x[6]-1.9*x[2]*x[7]+0.3*x[2]*x[9]+0.2*x[2]*x[10]-1.84*x[2]*x[13]-0.22*x[2]*x[17]-0.92*x[2]*x[18]-1.72*x[2]*x[19]+1.22*x[2]*x[20]+0.86*x[2]*x[21]+0.54*x[2]*x[24]+1.94*x[2]*x[27]-0.84*x[2]*x[28]+1.46*x[2]*x[31]+0.16*x[3]*x[4]+0.4*x[3]*x[9]+0.14*x[3]*x[10]+1.42*x[3]*x[11]-0.54*x[3]*x[13]-1.4*x[3]*x[14]+x[3]*x[15]-1.48*x[3]*x[16]+1.82*x[3]*x[17]-1.5*x[3]*x[18]+1.46*x[3]*x[19]-0.48*x[3]*x[23]-0.84*x[3]*x[25]-1.62*x[3]*x[28]-0.82*x[3]*x[29]-1.3*x[3]*x[31]+0.08*x[4]*x[5]+1.04*x[4]*x[6]+0.24*x[4]*x[10]+1.66*x[4]*x[11]-0.26*x[4]*x[14]+0.22*x[4]*x[15]-0.94*x[4]*x[16]+1.14*x[4]*x[19]+1.14*x[4]*x[23]-0.4*x[4]*x[25]+0.24*x[4]*x[26]-1.7*x[4]*x[28]-1.26*x[4]*x[30]+1.94*x[5]*x[6]-0.56*x[5]*x[7]+x[5]*x[8]+1.52*x[5]*x[9]+1.12*x[5]*x[10]-0.34*x[5]*x[14]+1.04*x[5]*x[17]-1.3*x[5]*x[19]+0.38*x[5]*x[20]+0.08*x[5]*x[23]-1.14*x[5]*x[24]+0.02*x[5]*x[26]+0.78*x[5]*x[27]+1.34*x[5]*x[29]-0.42*x[5]*x[30]+0.72*x[6]*x[12]-0.92*x[6]*x[10]-0.52*x[6]*x[13]+0.14*x[6]*x[15]-0.76*x[6]*x[18]-0.46*x[6]*x[20]+0.42*x[6]*x[22]-1.88*x[6]*x[23]-0.76*x[6]*x[25]+1.7*x[6]*x[26]-1.52*x[6]*x[29]+0.06*x[6]*x[30]+0.4*x[6]*x[31]+1.44*x[7]*x[9]-1.66*x[7]*x[8]-0.76*x[7]*x[17]-0.6*x[7]*x[20]+1.42*x[7]*x[25]-0.76*x[7]*x[26]-0.48*x[7]*x[27]-1.9*x[7]*x[28]-1.86*x[7]*x[29]+1.24*x[7]*x[30]+0.56*x[8]*x[10]+1.38*x[8]*x[17]-0.1*x[8]*x[20]-0.92*x[8]*x[24]-x[8]*x[25]+1.96*x[8]*x[26]-0.28*x[8]*x[28]+1.62*x[8]*x[29]+1.84*x[8]*x[31]+0.4*x[9]*x[10]+1.4*x[9]*x[12]+0.76*x[9]*x[13]+1.84*x[9]*x[14]+0.12*x[9]*x[15]+1.94*x[9]*x[16]-1.24*x[9]*x[17]-0.96*x[9]*x[22]+1.54*x[9]*x[23]-1.9*x[9]*x[24]+0.2*x[9]*x[25]-0.42*x[9]*x[26]-1.34*x[9]*x[28]+0.64*x[10]*x[11]+0.54*x[10]*x[17]+0.2*x[10]*x[20]-0.38*x[10]*x[24]-0.7*x[10]*x[26]+1.24*x[10]*x[30]+1.14*x[11]*x[14]-0.04*x[11]*x[13]+1.52*x[11]*x[16]-1.36*x[11]*x[18]-1.76*x[11]*x[25]-0.96*x[11]*x[26]+0.2*x[11]*x[29]-0.62*x[11]*x[30]+0.72*x[11]*x[31]+0.12*x[12]*x[18]-0.64*x[12]*x[19]+0.86*x[12]*x[21]-1.52*x[12]*x[25]-0.06*x[12]*x[28]-1.96*x[12]*x[29]+0.2*x[12]*x[31]+1.48*x[13]*x[16]+0.36*x[13]*x[18]-0.78*x[13]*x[19]-0.08*x[13]*x[27]+1.2*x[13]*x[28]+1.44*x[13]*x[31]+0.52*x[14]*x[17]+0.92*x[14]*x[22]-1.7*x[14]*x[23]+1.58*x[14]*x[26]-1.5*x[14]*x[27]+1.4*x[14]*x[28]+0.64*x[14]*x[29]+0.5*x[14]*x[31]+0.94*x[15]*x[17]-0.58*x[15]*x[16]+0.14*x[15]*x[22]+1.44*x[15]*x[23]-0.64*x[15]*x[27]+0.38*x[15]*x[28]+0.5*x[15]*x[29]+0.82*x[15]*x[30]+1.28*x[16]*x[17]+0.36*x[16]*x[20]-1.18*x[16]*x[21]+1.94*x[16]*x[22]+0.12*x[16]*x[25]-1.16*x[16]*x[30]+1.82*x[17]*x[19]+0.1*x[17]*x[23]-0.16*x[17]*x[24]+1.36*x[17]*x[26]-1.2*x[17]*x[27]+1.58*x[17]*x[29]+1.34*x[17]*x[31]+1.12*x[18]*x[21]+0.14*x[18]*x[22]-1.32*x[18]*x[24]+1.84*x[18]*x[26]+0.04*x[18]*x[29]-1.7*x[18]*x[31]+0.12*x[19]*x[20]-0.6*x[19]*x[22]+0.58*x[19]*x[24]-1.68*x[19]*x[25]+1.02*x[19]*x[26]-0.02*x[19]*x[29]+0.6*x[19]*x[30]+1.28*x[20]*x[24]-0.2*x[20]*x[27]-1.8*x[20]*x[28]-1.08*x[20]*x[30]-0.72*x[20]*x[31]+(-1.52*x[21]*x[22])-1.58*x[21]*x[23]+0.2*x[21]*x[24]+0.22*x[21]*x[26]+0.7*x[21]*x[27]-1.42*x[21]*x[28]+1.38*x[21]*x[31]+1.12*x[22]*x[25]-1.9*x[22]*x[24]+x[22]*x[27]+0.74*x[22]*x[28]+1.48*x[23]*x[26]-1.32*x[23]*x[27]+1.68*x[24]*x[25]+0.36*x[24]*x[26]+1.9*x[24]*x[28]+1.24*x[24]*x[29]-0.34*x[24]*x[30]-1.4*x[24]*x[31]+1.32*x[25]*x[27]+1.8*x[25]*x[29]+1.16*x[25]*x[30]+(-1.3*x[26]*x[29])-1.38*x[26]*x[30]+1.4*x[27]*x[29]-0.12*x[27]*x[31]+0.84*x[28]*x[30]+1.08*x[30]*x[31]+0.86*x[6]*x[6]-0.19*x[2]*x[2]-0.89*x[7]*x[7]-0.57*x[9]*x[9]+0.59*x[10]*x[10]-0.78*x[11]*x[11]+0.63*x[14]*x[14]-0.74*x[16]*x[16]-0.2*x[18]*x[18]+0.66*x[19]*x[19]+0.76*x[22]*x[22]+0.35*x[27]*x[27]-0.71*x[28]*x[28]+0.42*x[29]*x[29]+0.3*x[30]*x[30]+0.44*x[2]-0.75*x[3]+0.67*x[4]+0.16*x[5]-0.49*x[6]-0.6*x[7]-0.14*x[8]+0.99*x[9]+0.44*x[10]-0.04*x[11]+0.82*x[12]-0.97*x[13]+0.21*x[14]-0.99*x[15]+0.58*x[16]-0.12*x[17]+0.09*x[18]+0.52*x[19]+0.07*x[20]+0.21*x[21]+0.13*x[22]+0.08*x[23]+0.16*x[24]-0.95*x[25]+0.93*x[26]-0.04*x[27]-0.69*x[28]-0.2*x[29]-0.23*x[30]+0.41*x[31] <= 39.26)
@constraint(m, e3, -0.09*x[2]-0.07*x[3]-0.53*x[4]+0.56*x[5]+0.28*x[6]+0.65*x[7]+0.53*x[8]+0.08*x[9]-0.79*x[10]-0.31*x[11]-0.03*x[12]-0.05*x[13]+0.89*x[14]-0.51*x[15]+0.14*x[16]-0.03*x[17]+0.59*x[18]-0.5*x[19]-0.24*x[20]-0.63*x[21]-0.8*x[22]+0.84*x[23]+0.72*x[24]-0.74*x[25]+0.31*x[26]+0.15*x[27]-0.19*x[28]-0.91*x[29]-0.39*x[30]-0.77*x[31] == -0.24)
@constraint(m, e4, 0.85*x[2]+0.1*x[3]+0.11*x[4]+0.09*x[5]+0.37*x[6]-0.83*x[7]-0.37*x[8]+0.6*x[9]-0.95*x[10]-0.57*x[11]-0.68*x[12]-0.3*x[13]-0.78*x[14]+0.43*x[15]-0.37*x[16]-0.15*x[17]+0.46*x[18]-0.97*x[19]+0.87*x[20]+0.84*x[21]+0.57*x[22]+0.77*x[23]-0.23*x[24]-0.91*x[25]-0.76*x[26]-0.05*x[27]-0.61*x[28]+0.61*x[29]-0.7*x[30]-0.24*x[31] == -0.45)
@constraint(m, e5, -0.86*x[2]+0.35*x[3]+0.44*x[4]-0.46*x[5]+0.55*x[6]-0.96*x[7]+0.05*x[8]-0.95*x[9]+0.4*x[10]+0.41*x[11]-0.49*x[12]-0.57*x[13]+0.26*x[14]+0.21*x[15]+0.98*x[16]+0.88*x[17]-0.56*x[18]-0.55*x[19]-0.64*x[20]+0.27*x[21]+0.63*x[22]+0.38*x[23]-0.72*x[24]+0.44*x[25]+0.6*x[26]+0.06*x[27]-0.33*x[28]+0.17*x[29]-0.17*x[30]-0.2*x[31] == -0.1)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.