using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[19], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[1], 3.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], 4.0)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], 3.0)
set_upper_bound(x[3], 7.0)
set_upper_bound(x[4], 8.0)
set_lower_bound(x[5], 2.0)
set_upper_bound(x[5], 6.0)
set_lower_bound(x[6], 3.0)
set_upper_bound(x[6], 10.0)
set_lower_bound(x[7], 2.0)
set_upper_bound(x[7], 7.0)
set_lower_bound(x[8], 3.0)
set_upper_bound(x[8], 10.0)
set_lower_bound(x[9], 1.0)
set_upper_bound(x[9], 9.0)
set_lower_bound(x[10], 3.0)
set_upper_bound(x[10], 6.0)
set_lower_bound(x[11], 4.0)
set_upper_bound(x[11], 9.0)
set_lower_bound(x[12], 3.0)
set_upper_bound(x[12], 7.0)
set_lower_bound(x[13], 2.0)
set_upper_bound(x[13], 7.0)
set_lower_bound(x[14], 1.0)
set_upper_bound(x[14], 9.0)
set_lower_bound(x[15], 2.0)
set_upper_bound(x[15], 9.0)
set_upper_bound(x[16], 10.0)
set_upper_bound(x[17], 9.0)
set_lower_bound(x[18], 2.0)
set_upper_bound(x[18], 9.0)
set_upper_bound(x[19], 9.0)
set_lower_bound(x[20], 2.0)
set_upper_bound(x[20], 8.0)
set_lower_bound(x[21], 4.0)
set_upper_bound(x[21], 10.0)
set_lower_bound(x[22], 3.0)
set_upper_bound(x[22], 9.0)
set_lower_bound(x[23], 4.0)
set_upper_bound(x[23], 8.0)
set_lower_bound(x[24], 1.0)
set_upper_bound(x[24], 7.0)
set_lower_bound(x[25], 3.0)
set_upper_bound(x[25], 9.0)
set_lower_bound(x[26], 4.0)
set_upper_bound(x[26], 6.0)
set_lower_bound(x[27], 2.0)
set_upper_bound(x[27], 10.0)
set_lower_bound(x[28], 3.0)
set_upper_bound(x[28], 7.0)
set_lower_bound(x[29], 1.0)
set_upper_bound(x[29], 6.0)
set_lower_bound(x[30], 3.0)
set_upper_bound(x[30], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.4*x[1]-3.89*x[4]+1.12*x[7]+1.91*x[9]+2.49*x[16]+4.95*x[17]-2.95*x[18]+4.47*x[20]+3.85*x[24]-4.88*x[29] >= 35.5)
@NLconstraint(m, e2, 2.02*x[1]*x[18]-1.32*x[1]*x[16]+1.73*x[1]*x[22]-2.17*x[1]*x[29]+1.88*x[2]*x[7]-4.96*x[7]+0.23*x[2]*x[13]-2.26*x[2]*x[17]+0.69*x[2]*x[19]-3.89*x[2]*x[24]-4.71*x[24]+4.7*x[2]*x[27]+0.54*x[2]*x[30]+4.29*x[30]-1.73*x[3]*x[4]+3.34*x[3]*x[14]+4.01*x[3]*x[16]+1.78*x[3]*x[21]+4.92*x[3]*x[24]+3.97*x[3]*x[29]-0.44*x[4]*x[4]-2.41*x[4]*x[8]+0.44*x[4]*x[10]+2.39*x[10]+3.88*x[5]*x[7]-0.65*x[5]+1.15*x[5]*x[9]+0.36*x[5]*x[16]+3.5*x[5]*x[22]+1.68*x[6]*x[7]-3.93*x[6]*x[9]-2.37*x[6]*x[11]+3.81*x[6]*x[15]-2.78*x[15]+2.81*x[6]*x[16]+1.98*x[6]*x[18]+1.4*x[6]*x[22]-3.08*x[6]*x[25]-1.99*x[6]*x[26]-3.02*x[26]+1.5*x[6]*x[30]+2.58*x[7]*x[12]+3.82*x[7]*x[15]+3.38*x[7]*x[20]+1.52*x[7]*x[21]-x[7]*x[28]-1.75*x[8]*x[9]-0.17*x[8]*x[10]-1.44*x[8]*x[13]-0.5*x[8]*x[17]-3*x[8]*x[22]-1.19*x[8]*x[24]-4.33*x[8]*x[26]+2.96*x[9]*x[11]+0.22*x[9]*x[14]+0.79*x[9]*x[25]-4.21*x[9]*x[30]-3.86*x[10]*x[11]-1.1*x[10]*x[14]-2.41*x[10]*x[16]-2.32*x[10]*x[22]-3.42*x[10]*x[29]+2.84*x[10]*x[30]+2.96*x[11]*x[11]+0.88*x[11]*x[12]+2.07*x[11]*x[13]-0.69*x[11]*x[18]+3.56*x[11]*x[20]-2.87*x[11]*x[23]+1.1*x[23]-1.2*x[11]*x[24]+4.61*x[11]*x[25]-1.42*x[11]*x[27]-2.66*x[11]*x[30]-3.98*x[12]*x[13]+3.77*x[12]*x[20]-2.42*x[13]*x[13]-2.6*x[13]*x[15]+2.64*x[13]*x[16]-4.39*x[13]*x[17]-0.51*x[13]*x[23]-3.98*x[13]*x[27]-0.48*x[13]*x[29]+0.18*x[14]*x[17]+0.09*x[14]*x[21]-4.9*x[14]*x[22]-3.43*x[14]*x[23]-3.81*x[14]*x[24]-2.81*x[14]*x[26]+1.25*x[14]*x[29]+0.32*x[15]*x[15]+0.23*x[15]*x[16]+2.2*x[15]*x[22]-3.51*x[15]*x[23]-4.35*x[15]*x[24]+3.86*x[15]*x[27]-1.37*x[16]*x[18]+2.74*x[16]*x[20]-1.48*x[16]*x[21]+3.96*x[16]*x[22]+4.29*x[16]*x[23]-4.42*x[16]*x[24]+4.89*x[16]*x[25]-2.96*x[16]*x[26]-1.91*x[16]*x[30]+4.05*x[17]*x[25]-4.25*x[17]*x[27]+0.36*x[17]*x[29]-4.27*x[17]*x[30]-2.92*x[18]*x[19]+2.34*x[18]*x[20]-0.8*x[18]*x[26]+4.49*x[18]*x[29]-4.6*x[19]*x[19]+2.25*x[19]*x[22]-4.47*x[20]*x[26]-0.13*x[20]*x[29]+4.38*x[21]*x[21]-4*x[21]*x[22]+0.15*x[21]*x[24]+2.89*x[21]*x[25]+4.36*x[21]*x[30]-1.8*x[22]*x[23]+3.67*x[22]*x[25]+1.87*x[22]*x[28]+0.5*x[23]*x[27]-2.58*x[23]*x[28]+0.39*x[24]*x[25]-3.63*x[24]*x[28]+3.82*x[26]*x[26]-4.93*x[26]*x[27]+3.39*x[27]*x[27]-1.77*x[29]*x[29] >= 166.9)
@constraint(m, e3, 1.91*x[7]+2.84*x[12]-0.13*x[13]+3.86*x[18]-4.89*x[19]+3.23*x[28] >= 37.5)
@NLconstraint(m, e4, 0.71*x[1]*x[5]-2.47*x[1]*x[4]+4.18*x[1]*x[12]+0.29*x[12]+3.96*x[1]*x[20]-1.18*x[1]*x[29]+1.76*x[2]*x[20]+2.82*x[2]*x[22]-4.12*x[2]*x[29]+0.05*x[3]*x[6]-1.1*x[3]-3.3*x[3]*x[19]+3.22*x[3]*x[24]+1.47*x[3]*x[25]-3.16*x[3]*x[28]+0.45*x[3]*x[29]-0.33*x[3]*x[30]-3.23*x[4]*x[10]+3.85*x[4]*x[17]-1.94*x[4]*x[18]-4.65*x[4]*x[21]+1.14*x[4]*x[24]-2.56*x[4]*x[25]+3.86*x[4]*x[27]+4.38*x[4]*x[29]+3.1*x[4]*x[30]+0.29*x[5]*x[13]+3.12*x[5]*x[14]-4.86*x[14]+3.59*x[5]*x[22]+4*x[5]*x[30]-1.39*x[6]*x[6]-1.62*x[6]*x[8]-3.68*x[6]*x[9]+3.61*x[6]*x[12]-3.85*x[6]*x[14]+2.33*x[6]*x[20]-3.83*x[6]*x[21]-0.15*x[6]*x[22]+1.09*x[7]*x[12]+0.41*x[7]*x[15]+0.45*x[7]*x[17]-1.66*x[7]*x[23]-1.25*x[7]*x[25]-2.88*x[8]*x[13]+2.13*x[8]*x[14]+0.17*x[8]*x[15]+3.61*x[8]*x[17]-2.19*x[8]*x[20]+3.81*x[8]*x[22]+3.8*x[8]*x[27]-0.92*x[9]*x[9]+1.64*x[9]*x[11]+4.58*x[11]-3.73*x[9]*x[15]-3.88*x[9]*x[20]-2.13*x[9]*x[25]+3.81*x[9]*x[30]-2.22*x[10]*x[13]-3.18*x[10]*x[19]-0.76*x[10]*x[20]+3.85*x[10]*x[21]+1.6*x[10]*x[29]+0.08*x[11]*x[12]+3.19*x[11]*x[15]-3.84*x[11]*x[28]-0.54*x[11]*x[29]+3.78*x[12]*x[20]-2.74*x[12]*x[23]-1.94*x[12]*x[26]-1.74*x[12]*x[27]-4.32*x[13]*x[13]+2.37*x[13]*x[15]-0.26*x[13]*x[26]+2.09*x[13]*x[28]+1.47*x[13]*x[30]-2.73*x[14]*x[19]-2.32*x[14]*x[30]+0.32*x[15]*x[21]-4.16*x[16]*x[22]-3.65*x[16]*x[28]-2.33*x[17]*x[25]-0.15*x[18]*x[19]-0.38*x[18]*x[21]+3.77*x[18]*x[26]+2.1*x[18]*x[27]+0.35*x[19]*x[23]-1.87*x[19]*x[30]-3.8*x[20]*x[22]-4.06*x[20]*x[30]-3.69*x[21]*x[23]+3.08*x[21]*x[25]-4.14*x[21]*x[30]+3.92*x[22]*x[22]+4.05*x[22]*x[29]+2.39*x[22]*x[30]-4.33*x[23]*x[25]+3.83*x[23]*x[29]-0.46*x[23]*x[30]-1.83*x[24]*x[25]+2.27*x[24]*x[26]-3.02*x[24]*x[28]-0.06*x[24]*x[30]-1.13*x[25]*x[27]+3.69*x[27]*x[27]-3.21*x[27]*x[29] >= -378.0)
@constraint(m, e5, 2.56*x[3]-1.13*x[16]-2.31*x[23]+1.98*x[28] >= 3.2)
@NLconstraint(m, e6, 2.35*x[1]*x[2]-2.27*x[1]*x[4]-1.91*x[1]*x[7]-2.2*x[1]*x[13]-4.21*x[1]*x[24]-4.75*x[1]*x[25]+0.7*x[1]*x[29]-3.12*x[2]*x[2]+1.55*x[2]*x[4]-0.46*x[2]*x[5]+1.99*x[2]*x[6]-1.3*x[6]-2.77*x[2]*x[11]+2.12*x[2]*x[18]-1.13*x[2]*x[21]-4.84*x[2]*x[26]+3.19*x[2]*x[27]+4*x[3]*x[6]-4.57*x[3]*x[9]+4.51*x[9]+1.12*x[3]*x[12]+2.95*x[3]*x[17]-0.06*x[3]*x[21]+4.72*x[3]*x[23]-4.77*x[3]*x[30]-2.88*x[4]*x[8]-3.21*x[8]+3.35*x[4]*x[11]+0.05*x[4]*x[12]+1.8*x[4]*x[23]-2.36*x[4]*x[28]+4.3*x[28]-3.54*x[4]*x[30]+3.27*x[5]*x[12]+0.45*x[5]*x[13]+4.44*x[5]*x[16]+3.33*x[5]*x[20]+2.1*x[5]*x[24]+0.48*x[5]*x[26]-3.67*x[5]*x[29]+1.47*x[6]*x[6]-2.67*x[6]*x[7]+1.08*x[6]*x[10]+3.27*x[10]+4.54*x[6]*x[12]+2.64*x[6]*x[18]-4.99*x[6]*x[21]-2.44*x[6]*x[23]-1.8*x[6]*x[28]+4.61*x[7]*x[9]-1.34*x[7]*x[14]+0.84*x[14]-2.59*x[7]*x[15]-2.54*x[7]*x[20]-1.63*x[7]*x[23]-0.22*x[7]*x[24]-0.46*x[7]*x[26]-3.41*x[8]*x[15]+1.44*x[8]*x[16]-2.93*x[8]*x[17]-0.96*x[8]*x[19]-2.07*x[8]*x[23]-1.29*x[8]*x[26]+4*x[8]*x[29]-2.48*x[9]*x[10]+0.92*x[9]*x[12]+1.33*x[9]*x[19]-0.11*x[9]*x[24]+0.64*x[10]*x[14]-0.24*x[10]*x[18]+4.2*x[11]*x[12]+4.97*x[11]*x[13]-4.88*x[11]*x[21]-2.19*x[11]*x[24]+2.41*x[11]*x[25]+1.81*x[11]*x[30]-4.36*x[12]*x[14]+3.51*x[12]*x[17]+3.04*x[12]*x[22]+3.45*x[12]*x[27]+0.56*x[12]*x[30]+1.66*x[13]*x[20]+2.97*x[13]*x[25]+4.16*x[14]*x[21]+0.64*x[14]*x[24]+4.44*x[14]*x[28]+0.86*x[15]*x[15]-0.64*x[15]*x[16]-0.84*x[15]*x[22]-4.79*x[15]*x[23]+0.97*x[16]*x[25]-1.59*x[16]*x[26]-1.65*x[16]*x[27]+3.31*x[17]*x[22]+3.13*x[17]*x[30]-1.36*x[18]*x[18]-2.52*x[18]*x[21]+1.25*x[18]*x[24]-2.28*x[19]*x[23]-4.04*x[19]*x[24]+4.27*x[19]*x[27]-4.45*x[19]*x[30]+3.76*x[20]*x[25]+1.33*x[20]*x[30]-0.99*x[21]*x[22]+1.07*x[21]*x[25]+3.99*x[21]*x[29]-2.32*x[22]*x[22]+4.42*x[22]*x[24]+4.82*x[22]*x[25]+1.1*x[22]*x[27]-2.68*x[22]*x[28]+1.2*x[23]*x[23]+1.56*x[23]*x[24]+1.83*x[23]*x[26]+1.3*x[23]*x[29]+3.85*x[24]*x[25]-3.41*x[24]*x[26]+1.23*x[24]*x[29]-0.71*x[24]*x[30]-0.95*x[26]*x[28]+2.68*x[26]*x[29]-3.78*x[27]*x[30]-2.53*x[28]*x[28]-2.37*x[29]*x[30] >= 165.2)
@constraint(m, e7, 0.85*x[3]+4.18*x[5]-3.33*x[6]+4.66*x[11]-0.94*x[14]+2.16*x[18]+3.72*x[26] >= 55.3)
@NLconstraint(m, e8, (-2.18*x[1]*x[1])-5*x[1]*x[2]+0.51*x[2]+2.12*x[1]*x[3]-4.43*x[1]*x[9]-4.02*x[1]*x[20]+3.53*x[1]*x[21]-0.93*x[1]*x[22]+3.66*x[22]-2*x[2]*x[2]+3.64*x[2]*x[8]+3.57*x[8]+4.66*x[2]*x[9]+2.24*x[2]*x[12]+0.33*x[2]*x[17]-1.89*x[3]*x[3]-3.14*x[3]*x[11]+3.58*x[3]*x[15]-2.97*x[3]*x[21]-4.8*x[4]*x[6]+2.85*x[4]+3.14*x[6]-3.99*x[4]*x[7]+0.21*x[4]*x[10]+0.11*x[4]*x[11]+4.94*x[4]*x[13]-1.49*x[4]*x[16]+4.35*x[4]*x[25]-1.55*x[5]*x[7]+4.13*x[5]*x[10]+1.13*x[5]*x[15]+0.17*x[5]*x[16]+0.33*x[5]*x[17]-3*x[5]*x[27]-0.67*x[27]+3.26*x[6]*x[10]+4.25*x[6]*x[19]+2.78*x[19]-2.01*x[6]*x[25]+0.81*x[6]*x[28]-1.87*x[6]*x[29]+4.69*x[7]*x[9]-2.61*x[7]*x[11]+2.33*x[7]*x[15]-3.76*x[7]*x[18]+3.38*x[7]*x[19]+4.32*x[7]*x[20]+0.82*x[7]*x[22]-3.42*x[7]*x[27]-4.95*x[8]*x[12]-3.85*x[8]*x[29]+0.8*x[9]*x[18]+3.91*x[9]*x[22]-1.27*x[9]*x[30]+0.28*x[10]*x[12]-2*x[10]*x[13]+4.28*x[10]*x[14]+0.01*x[10]*x[15]-0.34*x[10]*x[21]-0.85*x[10]*x[22]-4.79*x[10]*x[23]-2.54*x[23]+2.65*x[10]*x[25]-1.88*x[11]*x[11]-4.92*x[11]*x[13]+2.81*x[11]*x[14]+1.03*x[11]*x[16]-0.21*x[11]*x[21]-1.21*x[11]*x[22]-4.22*x[11]*x[26]+1.84*x[12]*x[12]-2.29*x[12]*x[13]-3.38*x[12]*x[29]-2.83*x[13]*x[13]+2.39*x[13]*x[15]-4.52*x[13]*x[26]-1.85*x[13]*x[27]+0.3*x[14]*x[21]+2.38*x[14]*x[25]-4.09*x[14]*x[27]+3.04*x[14]*x[28]+3.54*x[15]*x[21]+4.16*x[15]*x[27]+3.46*x[15]*x[29]-3.01*x[15]*x[30]-1.55*x[16]*x[18]-4.83*x[16]*x[21]-3.24*x[16]*x[22]-1.59*x[16]*x[25]-2.85*x[16]*x[26]+0.7*x[16]*x[28]-4.29*x[16]*x[29]+4.42*x[17]*x[21]-0.95*x[17]*x[25]-1.38*x[17]*x[27]+1.71*x[17]*x[29]+0.34*x[18]*x[18]-4.73*x[18]*x[19]+4.75*x[19]*x[19]+4.02*x[19]*x[20]-4.61*x[19]*x[26]-3.16*x[20]*x[23]-1.84*x[20]*x[25]+2.74*x[20]*x[27]+3.54*x[21]*x[23]+2.45*x[21]*x[25]-4.66*x[22]*x[25]-4.57*x[23]*x[30]-2.67*x[25]*x[28]+2.76*x[26]*x[27]-3.88*x[27]*x[28]-4.97*x[27]*x[30]+0.29*x[29]*x[29]-1.71*x[29]*x[30]+1.83*x[30]*x[30]-3.04*x[24] >= -1487.3)
@constraint(m, e9, 4.93*x[8]+4.33*x[11]+4.38*x[13]-4.69*x[16]+0.66*x[18]-4.51*x[21]+4.63*x[23]-2.09*x[25]+0.52*x[26]-4.05*x[28] >= 26.1)
@NLconstraint(m, e10, 0.01*x[1]*x[2]+1.79*x[1]-0.6*x[1]*x[4]-1.34*x[1]*x[8]+0.95*x[1]*x[18]+4.25*x[1]*x[22]+1.55*x[22]+1.48*x[1]*x[27]+2.23*x[2]*x[4]+1.95*x[2]*x[5]-0.72*x[2]*x[10]+3.43*x[2]*x[15]-4.57*x[2]*x[18]-3.71*x[2]*x[21]-4.34*x[2]*x[24]+2.7*x[24]-0.28*x[2]*x[28]+1.17*x[3]*x[4]-3.53*x[3]*x[11]-3.65*x[3]*x[17]+3.61*x[3]*x[22]+4.12*x[3]*x[23]+0.86*x[3]*x[26]-0.58*x[3]*x[30]+3.61*x[30]+4.08*x[4]*x[4]-0.68*x[4]*x[12]+4.34*x[4]*x[13]+3.44*x[4]*x[14]-0.77*x[14]-2.23*x[4]*x[15]-3.38*x[4]*x[20]+2.66*x[4]*x[25]-2.55*x[4]*x[30]+0.16*x[5]*x[13]-3.21*x[5]*x[15]-0.69*x[5]*x[19]-4.26*x[5]*x[22]-3.52*x[5]*x[28]-0.01*x[6]*x[14]-2.71*x[6]*x[15]-2.54*x[6]*x[16]+0.86*x[16]+1.02*x[6]*x[17]+2.79*x[6]*x[18]-3.5*x[6]*x[21]-2.94*x[6]*x[27]+0.18*x[6]*x[28]-4.36*x[7]*x[7]+1.42*x[7]*x[11]+3.5*x[7]*x[23]+4.22*x[8]*x[9]+3.32*x[8]*x[10]+2.67*x[8]*x[11]-1.51*x[8]*x[13]-3.76*x[8]*x[19]+0.76*x[8]*x[23]+2.95*x[8]*x[29]-2.54*x[8]*x[30]-4.51*x[9]*x[11]+1.38*x[9]*x[20]+1.86*x[9]*x[21]-4.09*x[9]*x[26]+4.95*x[9]*x[29]+1.5*x[10]*x[19]-1.97*x[10]*x[29]-0.68*x[11]*x[14]+1.07*x[11]*x[15]-0.87*x[11]*x[16]+3.94*x[11]*x[20]-0.92*x[11]*x[21]+1.56*x[11]*x[23]+0.62*x[11]*x[25]-3.07*x[11]*x[26]-0.74*x[11]*x[29]+0.38*x[12]*x[12]+3.74*x[12]*x[14]-2.71*x[12]*x[20]-3.9*x[12]*x[27]+2.03*x[13]*x[14]+4.96*x[13]*x[17]-2.15*x[13]*x[20]-0.71*x[13]*x[22]+4.85*x[13]*x[25]+4.4*x[13]*x[29]+3.63*x[13]*x[30]+1.18*x[14]*x[15]+1.36*x[14]*x[26]-1.03*x[15]*x[18]+1.97*x[15]*x[19]-0.2*x[15]*x[26]+0.68*x[17]*x[17]+0.97*x[17]*x[18]-3.06*x[17]*x[20]+1.63*x[19]*x[19]+4.02*x[19]*x[26]-4.99*x[19]*x[30]-4.23*x[20]*x[21]-1.34*x[20]*x[22]+2.56*x[20]*x[23]+4.12*x[20]*x[25]+1.49*x[21]*x[23]-1.01*x[21]*x[29]+1.57*x[22]*x[24]+3.85*x[22]*x[28]+4.88*x[23]*x[23]-4.7*x[23]*x[25]-0.66*x[23]*x[27]-2.05*x[23]*x[30]-0.31*x[24]*x[26]+4.29*x[24]*x[28]-0.73*x[26]*x[26]-4.63*x[26]*x[27]+3.13*x[27]*x[30]+1.69*x[29]*x[30]-1.54*x[30]*x[30] >= 378.9)
@constraint(m, e11, -2.49*x[3]-3.12*x[12]-1.59*x[21]+3.23*x[24]+0.91*x[25]+4.06*x[28] >= -0.6)
@NLconstraint(m, e12, 4.34*x[1]*x[7]-4.37*x[1]*x[10]+4.88*x[1]*x[13]-1.69*x[1]*x[16]-3.79*x[1]*x[20]-1.89*x[1]*x[22]+4.42*x[1]*x[24]-3.28*x[1]*x[25]-1.54*x[1]*x[26]+0.8*x[1]*x[27]-0.99*x[2]*x[4]+4.68*x[2]+3.04*x[2]*x[7]-4.13*x[2]*x[12]+1.37*x[2]*x[15]+2.85*x[2]*x[24]-2.38*x[3]*x[5]+2.34*x[3]-4.93*x[3]*x[6]+2.77*x[3]*x[7]-2.01*x[3]*x[8]+2.98*x[8]+2.87*x[3]*x[12]-1.31*x[3]*x[18]+4.17*x[3]*x[20]-1.57*x[4]*x[4]-4.77*x[4]*x[5]+0.73*x[4]*x[6]-2.84*x[4]*x[8]-2.02*x[4]*x[10]-2.63*x[4]*x[11]+2.13*x[11]-4.32*x[4]*x[12]+3.48*x[4]*x[14]-3.15*x[4]*x[19]+1.85*x[4]*x[20]+0.8*x[4]*x[26]+3.63*x[4]*x[30]-3.8*x[5]*x[6]-0.2*x[5]*x[16]-1.67*x[6]*x[6]-3.04*x[6]*x[12]-0.4*x[6]*x[13]+1.31*x[6]*x[16]-5*x[6]*x[18]+4.05*x[6]*x[25]+4.9*x[6]*x[26]-2.56*x[6]*x[30]-4.81*x[7]*x[8]-2.06*x[7]*x[9]-4.68*x[7]*x[13]-3.97*x[7]*x[22]+4.48*x[8]*x[9]+3.22*x[8]*x[12]-4.38*x[8]*x[13]-0.65*x[8]*x[20]+2.37*x[8]*x[21]-1.3*x[8]*x[23]+2.57*x[8]*x[26]+1.51*x[9]*x[13]-1.81*x[9]*x[19]-0.42*x[9]*x[23]-3.37*x[9]*x[24]-0.59*x[9]*x[27]+2.06*x[10]*x[19]+2.53*x[10]*x[29]-1.85*x[10]*x[30]+0.9*x[11]*x[12]-2.84*x[11]*x[14]-1.28*x[11]*x[21]-2.91*x[12]*x[17]+1.59*x[17]+0.98*x[12]*x[21]+2.83*x[12]*x[28]+1.21*x[13]*x[16]+1.05*x[13]*x[19]-3.48*x[13]*x[20]-3.69*x[13]*x[26]-4.57*x[13]*x[28]-4.93*x[14]*x[15]-3.82*x[14]*x[16]+0.29*x[14]*x[17]-1.1*x[14]*x[18]-4.82*x[14]*x[23]+1.11*x[14]*x[25]-4.17*x[14]*x[26]-4.89*x[14]*x[27]-1.47*x[15]*x[21]+0.34*x[15]*x[24]-1.57*x[15]*x[25]-1.06*x[15]*x[27]-4.36*x[16]*x[18]-1.81*x[16]*x[20]+3.28*x[16]*x[26]+3.7*x[16]*x[28]-1.84*x[17]*x[19]-2.35*x[17]*x[21]+1.37*x[17]*x[22]+3.62*x[17]*x[23]-1.94*x[17]*x[24]+3.82*x[17]*x[25]+4.78*x[17]*x[26]+4.38*x[17]*x[27]-1.62*x[18]*x[20]-2.62*x[18]*x[21]-3.3*x[18]*x[24]-4.38*x[18]*x[28]-0.96*x[18]*x[29]-4.09*x[18]*x[30]+0.19*x[19]*x[22]-1.11*x[19]*x[24]+2.54*x[19]*x[28]+0.77*x[20]*x[23]-3.47*x[20]*x[28]-3.62*x[21]*x[23]-0.7*x[21]*x[24]+3.88*x[22]*x[27]-4.6*x[23]*x[29]+1.21*x[24]*x[24]-0.24*x[24]*x[26]+0.95*x[24]*x[27]-2.98*x[25]*x[25]+4.16*x[25]*x[26]-2.7*x[25]*x[30]+0.3*x[26]*x[26]-4.8*x[26]*x[30]+0.85*x[27]*x[28]-3.82*x[27]*x[30]-4.75*x[28]*x[30]+4.37*x[29]*x[29]+0.34*x[30]*x[30] >= -3373.2)
@constraint(m, e13, 1.78*x[1]-3.01*x[6]-0.84*x[15]-1.67*x[20]+3.47*x[22]+3.65*x[29] >= 12.6)
@NLconstraint(m, e14, 4.21*x[1]*x[12]-0.1*x[1]*x[3]-4.15*x[1]*x[14]-0.02*x[1]*x[17]-3.57*x[1]*x[27]+2.49*x[2]*x[10]-0.03*x[2]*x[12]+4.25*x[2]*x[13]+2.4*x[13]+4.67*x[2]*x[14]+0.96*x[2]*x[18]+2.47*x[2]*x[21]-0.23*x[2]*x[22]+1.57*x[2]*x[25]+0.89*x[25]+3.5*x[2]*x[26]+3.73*x[3]*x[5]+0.81*x[5]-3.5*x[3]*x[7]-2.04*x[3]*x[16]+2.58*x[3]*x[22]-3.58*x[3]*x[25]-3.69*x[3]*x[27]+3.52*x[4]*x[8]+3.48*x[4]*x[18]-3.13*x[4]*x[20]-3.55*x[20]-2.91*x[4]*x[24]-2.24*x[4]*x[26]-2*x[4]*x[27]+0.23*x[5]*x[9]-2.07*x[5]*x[15]+2.88*x[5]*x[20]-3.07*x[5]*x[24]-2.84*x[5]*x[25]-2.11*x[5]*x[27]-3.37*x[5]*x[29]-0.26*x[6]*x[9]-3.52*x[6]*x[11]-0.21*x[6]*x[13]-1.35*x[6]*x[17]-0.77*x[6]*x[27]+1.09*x[6]*x[30]+0.64*x[30]+4.24*x[7]*x[12]+0.98*x[7]*x[16]-3.62*x[7]*x[23]-0.24*x[7]*x[25]-2.53*x[7]*x[27]-0.82*x[7]*x[29]-4.28*x[8]*x[10]+2.14*x[8]*x[14]-4.43*x[8]*x[16]+4.9*x[8]*x[23]+4.62*x[8]*x[24]+2.28*x[8]*x[25]-4.47*x[8]*x[29]+0.35*x[8]*x[30]-4.09*x[9]*x[17]-3.2*x[9]*x[21]+0.92*x[9]*x[24]+1.18*x[9]*x[25]+1.84*x[9]*x[29]-0.33*x[10]*x[10]-2.41*x[10]*x[11]+3.16*x[10]*x[14]-3.37*x[10]*x[15]+4.8*x[10]*x[18]+1.8*x[10]*x[29]+1.6*x[11]*x[13]-3.89*x[11]*x[18]+0.72*x[11]*x[25]-2.29*x[11]*x[26]-2.38*x[11]*x[28]-2.17*x[12]*x[16]+4.04*x[12]*x[20]+3.1*x[12]*x[23]+1.28*x[12]*x[29]+5*x[13]*x[13]+0.61*x[13]*x[19]-4.97*x[13]*x[22]-0.51*x[13]*x[28]-0.43*x[13]*x[30]+2.03*x[14]*x[17]-3.01*x[14]*x[19]+0.39*x[14]*x[24]-1.41*x[14]*x[28]-0.5*x[14]*x[29]-0.78*x[14]*x[30]-0.26*x[15]*x[15]-3.63*x[15]*x[16]-4.54*x[15]*x[18]+2.97*x[15]*x[29]+1.46*x[16]*x[19]-2.74*x[16]*x[23]-3.56*x[16]*x[27]+0.73*x[16]*x[29]-2.63*x[17]*x[19]+4.07*x[17]*x[21]+2.52*x[17]*x[25]+0.28*x[17]*x[26]-3.6*x[18]*x[22]+4.14*x[18]*x[25]+2.31*x[18]*x[26]-2.44*x[18]*x[27]-0.07*x[19]*x[20]+0.06*x[19]*x[22]-3.02*x[19]*x[23]-4.92*x[19]*x[26]+3.55*x[19]*x[28]+0.36*x[20]*x[22]-4.44*x[20]*x[24]-0.39*x[20]*x[26]-2.6*x[20]*x[27]-1.69*x[20]*x[30]-2.44*x[21]*x[26]-3.13*x[21]*x[28]-2.49*x[22]*x[23]+3.02*x[22]*x[26]+2.52*x[23]*x[26]-2.18*x[23]*x[27]+4.21*x[24]*x[29]-3.61*x[25]*x[26]+0.98*x[25]*x[27]+2.81*x[25]*x[28]+4.81*x[26]*x[26]+0.09*x[28]*x[30]-2.27*x[30]*x[30] >= -1347.6)
@constraint(m, e15, 4.38*x[5]+1.89*x[13]+4.51*x[18]+2.29*x[27]-0.48*x[28]-4.09*x[30] >= 35.5)
@NLconstraint(m, e16, 3.68*x[1]*x[10]-0.49*x[1]*x[7]+1.54*x[1]*x[23]-3.64*x[23]-3.7*x[2]*x[4]+2.62*x[2]*x[7]+2.9*x[2]*x[15]-1.03*x[2]*x[16]-1.98*x[2]*x[28]+4.42*x[2]*x[29]-3.73*x[3]*x[6]+4.1*x[3]*x[7]-3.87*x[3]*x[10]-0.37*x[3]*x[21]+1.89*x[3]*x[27]-2.08*x[4]*x[6]+4.06*x[4]*x[11]+0.65*x[4]*x[12]+1.88*x[4]*x[15]-0.28*x[4]*x[18]+0.33*x[4]*x[19]+4.01*x[4]*x[22]-0.24*x[4]*x[24]+2.68*x[4]*x[25]-4.68*x[4]*x[27]-1.67*x[4]*x[29]+1.35*x[5]*x[7]-4.71*x[5]*x[8]+3.03*x[5]*x[12]-4.31*x[5]*x[14]+1.81*x[14]+2.19*x[5]*x[15]+4.05*x[5]*x[16]-0.06*x[5]*x[23]+4.13*x[5]*x[28]-3.13*x[5]*x[30]-2.36*x[6]*x[10]+1.66*x[6]*x[14]-4.25*x[6]*x[17]-2.51*x[6]*x[18]+3.78*x[6]*x[25]-0.11*x[6]*x[26]-4.58*x[26]+0.63*x[7]*x[11]+0.89*x[7]*x[14]+3.18*x[7]*x[15]-1.71*x[7]*x[17]+4.66*x[7]*x[19]-1.26*x[8]*x[10]+4.41*x[8]*x[13]-2.19*x[8]*x[25]+4.98*x[8]*x[28]-4.59*x[9]*x[14]-1.93*x[9]*x[16]+0.64*x[9]*x[19]+0.21*x[9]*x[28]-3.77*x[9]*x[30]+4.85*x[10]*x[11]+3.89*x[10]*x[13]-2.5*x[10]*x[15]+3.15*x[10]*x[29]+1.54*x[11]*x[19]-1.95*x[11]*x[28]+2.96*x[12]*x[13]-3.88*x[12]*x[14]-0.4*x[12]*x[20]-0.1*x[20]-1.7*x[12]*x[21]-2.2*x[12]*x[27]+0.93*x[12]*x[29]+4.94*x[12]*x[30]+1.57*x[13]*x[13]-1.88*x[13]*x[17]-1.39*x[13]*x[19]-3.43*x[13]*x[20]+2.77*x[13]*x[21]-1.92*x[14]*x[17]-1.11*x[14]*x[21]+0.99*x[14]*x[24]+0.49*x[14]*x[27]+0.95*x[15]*x[18]-3.29*x[15]*x[21]-1.66*x[15]*x[24]-1.79*x[16]*x[19]-0.59*x[16]*x[20]+3.76*x[16]*x[22]+3.4*x[16]*x[26]+2.74*x[17]*x[21]+0.16*x[17]*x[25]+0.6*x[17]*x[28]+1.75*x[18]*x[18]-4.57*x[18]*x[23]-2.44*x[18]*x[27]-3.93*x[19]*x[19]-0.49*x[19]*x[21]+3.62*x[19]*x[24]+1.71*x[19]*x[27]+3.72*x[19]*x[30]+3.15*x[20]*x[21]+0.65*x[20]*x[23]+0.76*x[20]*x[30]+3.91*x[21]*x[21]-3.13*x[21]*x[25]-3.75*x[21]*x[26]-1.64*x[21]*x[30]-2.04*x[22]*x[22]+3.23*x[22]*x[26]-3.19*x[22]*x[28]-0.35*x[22]*x[30]-4.47*x[23]*x[28]-4.15*x[24]*x[24]+2.8*x[24]*x[27]-3.54*x[24]*x[28]-2.84*x[25]*x[29]-0.26*x[25]*x[30]-1.91*x[26]*x[26]-0.39*x[26]*x[27]-4.97*x[29]*x[29] >= -138.5)
@NLconstraint(m, e17, -(-1.76*x[1]*x[1]-1.82*x[1]+8.71*x[1]*x[2]-2.21*x[2]+5.81*x[1]*x[3]+9.16*x[3]-9.43*x[1]*x[4]+8.58*x[4]-3.78*x[1]*x[5]+1.23*x[5]+4.09*x[1]*x[6]+5.96*x[6]-7.61*x[1]*x[7]-7.79*x[7]-6.94*x[1]*x[8]+2.2*x[8]+5.48*x[1]*x[9]+4.35*x[9]+5.92*x[1]*x[10]+7.12*x[10]+6.82*x[1]*x[11]-7.94*x[11]-9.74*x[1]*x[12]-9.33*x[12]+6.38*x[1]*x[13]-6.61*x[13]-6.43*x[1]*x[14]+7.08*x[14]-0.08*x[1]*x[15]+2.9*x[15]-7.74*x[1]*x[16]+1.81*x[16]+9.5*x[1]*x[17]-2.07*x[17]-0.63*x[1]*x[18]+2.46*x[18]+9.8*x[1]*x[19]+9.67*x[19]-4.37*x[1]*x[20]-4.2*x[20]+7.25*x[1]*x[21]-3*x[21]-4.65*x[1]*x[22]+2.97*x[22]+0.08*x[1]*x[23]-7.39*x[23]-1.49*x[1]*x[24]-4.13*x[24]-9.92*x[1]*x[25]-2.58*x[25]+1.88*x[1]*x[26]-4.38*x[26]+3.37*x[1]*x[27]-8.05*x[27]+6.89*x[1]*x[28]+8.83*x[28]+4.07*x[1]*x[29]-0.46*x[29]+2.73*x[1]*x[30]-5.05*x[30]+7.38*x[2]*x[2]+2.89*x[2]*x[3]+2.98*x[2]*x[4]+9.05*x[2]*x[5]-7.08*x[2]*x[6]-9.3*x[2]*x[7]-6.32*x[2]*x[8]-9.1*x[2]*x[9]+1.39*x[2]*x[10]-9.37*x[2]*x[11]+1.25*x[2]*x[12]+4.08*x[2]*x[13]-9.2*x[2]*x[14]+2.1*x[2]*x[15]-2.14*x[2]*x[16]+2*x[2]*x[17]-4.59*x[2]*x[18]-9.25*x[2]*x[19]+1.1*x[2]*x[20]-0.07*x[2]*x[21]-5.72*x[2]*x[22]+0.69*x[2]*x[23]-6.44*x[2]*x[24]+1.22*x[2]*x[25]+7.2*x[2]*x[26]-6.28*x[2]*x[27]+1.42*x[2]*x[28]-6.08*x[2]*x[29]-0.65*x[2]*x[30]+7.98*x[3]*x[3]+0.21*x[3]*x[4]-5.97*x[3]*x[5]-3.03*x[3]*x[6]+0.36*x[3]*x[7]-3.56*x[3]*x[8]+8.17*x[3]*x[9]+7.53*x[3]*x[10]+3.24*x[3]*x[11]+1.1*x[3]*x[12]-9.11*x[3]*x[13]+6.66*x[3]*x[14]-4.55*x[3]*x[15]-2.57*x[3]*x[16]-6.72*x[3]*x[17]-2.21*x[3]*x[18]+7.24*x[3]*x[19]-5.27*x[3]*x[20]+7.55*x[3]*x[21]-1.84*x[3]*x[22]-8.3*x[3]*x[23]-9.63*x[3]*x[24]+9.96*x[3]*x[25]+6.87*x[3]*x[26]+3.62*x[3]*x[27]-0.48*x[3]*x[28]+8.94*x[3]*x[29]-1.12*x[3]*x[30]+6.94*x[4]*x[4]+5.78*x[4]*x[5]-3.82*x[4]*x[6]-5.29*x[4]*x[7]+6.46*x[4]*x[8]+0.41*x[4]*x[9]-4.6*x[4]*x[10]+6.76*x[4]*x[11]-7.43*x[4]*x[12]+6.87*x[4]*x[13]-7.93*x[4]*x[14]-9.36*x[4]*x[15]-4.22*x[4]*x[16]+0.27*x[4]*x[17]+8.69*x[4]*x[18]-2.87*x[4]*x[19]-0.34*x[4]*x[20]+9.78*x[4]*x[21]-7.97*x[4]*x[22]+6.9*x[4]*x[23]-9.79*x[4]*x[24]-3.61*x[4]*x[25]-3.65*x[4]*x[26]+8.84*x[4]*x[27]-8.13*x[4]*x[28]-9.88*x[4]*x[29]+4.2*x[4]*x[30]-0.63*x[5]*x[5]-6.91*x[5]*x[6]-0.41*x[5]*x[7]-1.9*x[5]*x[8]-3.93*x[5]*x[9]-9.59*x[5]*x[10]-9.73*x[5]*x[11]+6.27*x[5]*x[12]+8.48*x[5]*x[13]-2.74*x[5]*x[14]-6.43*x[5]*x[15]+3.71*x[5]*x[16]+3.23*x[5]*x[17]+0.61*x[5]*x[18]-9.06*x[5]*x[19]-4.27*x[5]*x[20]+5.08*x[5]*x[21]+6.78*x[5]*x[22]-3.8*x[5]*x[23]+1.44*x[5]*x[24]-4.76*x[5]*x[25]-1.17*x[5]*x[26]+5.98*x[5]*x[27]+6.04*x[5]*x[28]-4.59*x[5]*x[29]-5.92*x[5]*x[30]+2.82*x[6]*x[6]+9.95*x[6]*x[7]+7.9*x[6]*x[8]+8.57*x[6]*x[9]+9.4*x[6]*x[10]-0.75*x[6]*x[11]+4.66*x[6]*x[12]+5.88*x[6]*x[13]+5.1*x[6]*x[14]-3.25*x[6]*x[15]+3.04*x[6]*x[16]-6.95*x[6]*x[17]-2.79*x[6]*x[18]-8.64*x[6]*x[19]+1.72*x[6]*x[20]-8.78*x[6]*x[21]-7.83*x[6]*x[22]+7.48*x[6]*x[23]-2.42*x[6]*x[24]+3.01*x[6]*x[25]-9.13*x[6]*x[26]+7.15*x[6]*x[27]+7.54*x[6]*x[28]-7.02*x[6]*x[29]-9.45*x[6]*x[30]-0.06*x[7]*x[7]-2.38*x[7]*x[8]+8*x[7]*x[9]+7.11*x[7]*x[10]+3.17*x[7]*x[11]-6.96*x[7]*x[12]-3.38*x[7]*x[13]+6.38*x[7]*x[14]+5.12*x[7]*x[15]-6.67*x[7]*x[16]-5.97*x[7]*x[17]-8.59*x[7]*x[18]-1.62*x[7]*x[19]-6.94*x[7]*x[20]+7.43*x[7]*x[21]-1.23*x[7]*x[22]+5.2*x[7]*x[23]+1.14*x[7]*x[24]+8.28*x[7]*x[25]+7.31*x[7]*x[26]-0.23*x[7]*x[27]-6.82*x[7]*x[28]-8.11*x[7]*x[29]+2*x[7]*x[30]+9.13*x[8]*x[8]-9.63*x[8]*x[9]-4.28*x[8]*x[10]+8.87*x[8]*x[11]-0.65*x[8]*x[12]+9.85*x[8]*x[13]+2.6*x[8]*x[14]-2.8*x[8]*x[15]-6.29*x[8]*x[16]-1.11*x[8]*x[17]-8.4*x[8]*x[18]+1.93*x[8]*x[19]-5.68*x[8]*x[20]+5.96*x[8]*x[21]-1.47*x[8]*x[22]-5.58*x[8]*x[23]-6.95*x[8]*x[24]+8.09*x[8]*x[25]+3.29*x[8]*x[26]-0.65*x[8]*x[27]+2.89*x[8]*x[28]+5.78*x[8]*x[29]+9.99*x[8]*x[30]-3.28*x[9]*x[9]+9.03*x[9]*x[10]-6.28*x[9]*x[11]+9.4*x[9]*x[12]+8.43*x[9]*x[13]+4.38*x[9]*x[14]-5.92*x[9]*x[15]-5.8*x[9]*x[16]-4.13*x[9]*x[17]+0.96*x[9]*x[18]+5.45*x[9]*x[19]+0.65*x[9]*x[20]-2.88*x[9]*x[21]-2.86*x[9]*x[22]-5.49*x[9]*x[23]-2.76*x[9]*x[24]+7.26*x[9]*x[25]-0.93*x[9]*x[26]-1.62*x[9]*x[27]+6.46*x[9]*x[28]-1.98*x[9]*x[29]+3.95*x[9]*x[30]+3.89*x[10]*x[10]+1.05*x[10]*x[11]+9.52*x[10]*x[12]-2.25*x[10]*x[13]+0.42*x[10]*x[14]-0.02*x[10]*x[15]+1.59*x[10]*x[16]+4.71*x[10]*x[17]-9.79*x[10]*x[18]+3.56*x[10]*x[19]-3.57*x[10]*x[20]+5.08*x[10]*x[21]+1.79*x[10]*x[22]+2.7*x[10]*x[23]-4.13*x[10]*x[24]-8.5*x[10]*x[25]+1.45*x[10]*x[26]+8.51*x[10]*x[27]-7.22*x[10]*x[28]-4.33*x[10]*x[29]-5.81*x[10]*x[30]+4.88*x[11]*x[11]-8.58*x[11]*x[12]+5.97*x[11]*x[13]+8.22*x[11]*x[14]-8.28*x[11]*x[15]-4.03*x[11]*x[16]+3.86*x[11]*x[17]+9.91*x[11]*x[18]-2.87*x[11]*x[19]-1.65*x[11]*x[20]+2.41*x[11]*x[21]-3.33*x[11]*x[22]+4.56*x[11]*x[23]-5.1*x[11]*x[24]+6.91*x[11]*x[25]-7.23*x[11]*x[26]+2.22*x[11]*x[27]-0.24*x[11]*x[28]-1.29*x[11]*x[29]+7.88*x[11]*x[30]+9.73*x[12]*x[12]+2.2*x[12]*x[13]+2.75*x[12]*x[14]+6.31*x[12]*x[15]-7.15*x[12]*x[16]-5.19*x[12]*x[17]+4.06*x[12]*x[18]-6.16*x[12]*x[19]+4.44*x[12]*x[20]+2.1*x[12]*x[21]-9.64*x[12]*x[22]-1.92*x[12]*x[23]-6.33*x[12]*x[24]-6.21*x[12]*x[25]+6.21*x[12]*x[26]-2.12*x[12]*x[27]-1.5*x[12]*x[28]-2.13*x[12]*x[29]+4.01*x[12]*x[30]+7.28*x[13]*x[13]-4.86*x[13]*x[14]-8.11*x[13]*x[15]-9.57*x[13]*x[16]-7.2*x[13]*x[17]-5.99*x[13]*x[18]+7.05*x[13]*x[19]+5.87*x[13]*x[20]-7.41*x[13]*x[21]-2.51*x[13]*x[22]-8.23*x[13]*x[23]-0.89*x[13]*x[24]+9.31*x[13]*x[25]+1.62*x[13]*x[26]+7.1*x[13]*x[27]-0.5*x[13]*x[28]-3.81*x[13]*x[29]+8.24*x[13]*x[30]+5.19*x[14]*x[14]-6.59*x[14]*x[15]+3.12*x[14]*x[16]-3.38*x[14]*x[17]+7.38*x[14]*x[18]+6.38*x[14]*x[19]+0.33*x[14]*x[20]+0.89*x[14]*x[21]-8.81*x[14]*x[22]+3.88*x[14]*x[23]-1.58*x[14]*x[24]+6.35*x[14]*x[25]+8.4*x[14]*x[26]-9.38*x[14]*x[27]-0.35*x[14]*x[28]-6.21*x[14]*x[29]-1.37*x[14]*x[30]+8*x[15]*x[15]+8.72*x[15]*x[16]+0.88*x[15]*x[17]+7.91*x[15]*x[18]-3.15*x[15]*x[19]-5.15*x[15]*x[20]-0.09*x[15]*x[21]+0.02*x[15]*x[22]+5.85*x[15]*x[23]+3.61*x[15]*x[24]+3.92*x[15]*x[25]+4.02*x[15]*x[26]-5.87*x[15]*x[27]-3.56*x[15]*x[28]+8.07*x[15]*x[29]+0.54*x[15]*x[30]+5.7*x[16]*x[16]+5.7*x[16]*x[17]-6.64*x[16]*x[18]+9.53*x[16]*x[19]-3.1*x[16]*x[20]+2.9*x[16]*x[21]+1.04*x[16]*x[22]+2.24*x[16]*x[23]-3.34*x[16]*x[24]-1.31*x[16]*x[25]-8.3*x[16]*x[26]-7.47*x[16]*x[27]+7.02*x[16]*x[28]-1.06*x[16]*x[29]+7.29*x[16]*x[30]-4.24*x[17]*x[17]-4.33*x[17]*x[18]+1.41*x[17]*x[19]-6.37*x[17]*x[20]-8.02*x[17]*x[21]-1.83*x[17]*x[22]-9.96*x[17]*x[23]+0.7*x[17]*x[24]-2.88*x[17]*x[25]-2.55*x[17]*x[26]-0.64*x[17]*x[27]-2.9*x[17]*x[28]-6.5*x[17]*x[29]+5.44*x[17]*x[30]-0.16*x[18]*x[18]-5.27*x[18]*x[19]+0.45*x[18]*x[20]-5.04*x[18]*x[21]-7.59*x[18]*x[22]-7.14*x[18]*x[23]+2.78*x[18]*x[24]+7.4*x[18]*x[25]-6.78*x[18]*x[26]-5.82*x[18]*x[27]-5.16*x[18]*x[28]-3.03*x[18]*x[29]+6.32*x[18]*x[30]+4.39*x[19]*x[19]+1.82*x[19]*x[20]-3.06*x[19]*x[21]-6.64*x[19]*x[22]-5.03*x[19]*x[23]+2.33*x[19]*x[24]-9.24*x[19]*x[25]+9.13*x[19]*x[26]-1.12*x[19]*x[27]+5.55*x[19]*x[28]-4.04*x[19]*x[29]+6.66*x[19]*x[30]+6.66*x[20]*x[20]-6.87*x[20]*x[21]+1.47*x[20]*x[22]+0.58*x[20]*x[23]+6.38*x[20]*x[24]-5.91*x[20]*x[25]+4.87*x[20]*x[26]-3.5*x[20]*x[27]+5.04*x[20]*x[28]+6.96*x[20]*x[29]+2.34*x[20]*x[30]+2.8*x[21]*x[21]-9.34*x[21]*x[22]+9.21*x[21]*x[23]+5.94*x[21]*x[24]-4.46*x[21]*x[25]-0.8*x[21]*x[26]-9.06*x[21]*x[27]-5.42*x[21]*x[28]+1.94*x[21]*x[29]-3.22*x[21]*x[30]+1.71*x[22]*x[22]+2.67*x[22]*x[23]+9.66*x[22]*x[24]-2.9*x[22]*x[25]+4.09*x[22]*x[26]-7.5*x[22]*x[27]+6.03*x[22]*x[28]-5.39*x[22]*x[29]+6.47*x[22]*x[30]+0.97*x[23]*x[23]-5.39*x[23]*x[24]-6.84*x[23]*x[25]+4.88*x[23]*x[26]+7.11*x[23]*x[27]-3.92*x[23]*x[28]-3.73*x[23]*x[29]-1.42*x[23]*x[30]-8.86*x[24]*x[24]-8.79*x[24]*x[25]+9.15*x[24]*x[26]+4.9*x[24]*x[27]-9.38*x[24]*x[28]+5.63*x[24]*x[29]-9.24*x[24]*x[30]+8.69*x[25]*x[25]+4.45*x[25]*x[26]+3.73*x[25]*x[27]+8.15*x[25]*x[28]-8.23*x[25]*x[29]-7.08*x[25]*x[30]-3.82*x[26]*x[26]-4.95*x[26]*x[27]+5.22*x[26]*x[28]-0.11*x[26]*x[29]-7.98*x[26]*x[30]+0.96*x[27]*x[27]+0.76*x[27]*x[28]-7.91*x[27]*x[29]-6.57*x[27]*x[30]-0.96*x[28]*x[28]-4.58*x[28]*x[29]-2.89*x[28]*x[30]-1.6*x[29]*x[29]+6.67*x[29]*x[30]+2.61*x[30]*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script.