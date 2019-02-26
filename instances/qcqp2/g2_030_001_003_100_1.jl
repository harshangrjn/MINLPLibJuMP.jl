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
@NLconstraint(m, e1, -(-0.12*x[2]*x[3]-0.04*x[2]*x[4]-0.02*x[2]*x[5]-0.08*x[2]*x[6]-0.02*x[2]*x[7]-0.02*x[2]*x[8]+0.06*x[2]*x[9]+0.14*x[2]*x[11]-0.08*x[2]*x[12]-0.28*x[2]*x[13]+0.02*x[2]*x[16]+0.08*x[2]*x[17]+0.3*x[2]*x[18]+0.04*x[2]*x[20]-0.02*x[2]*x[21]-0.02*x[2]*x[22]-0.1*x[2]*x[23]-0.16*x[2]*x[24]+0.16*x[2]*x[25]-0.02*x[2]*x[26]-0.02*x[2]*x[27]+0.08*x[2]*x[28]+0.02*x[2]*x[29]-0.04*x[2]*x[30]-0.08*x[2]*x[31]+0.12*x[3]*x[4]+0.02*x[3]*x[5]-0.04*x[3]*x[6]+0.16*x[3]*x[7]+0.08*x[3]*x[8]-0.1*x[3]*x[9]+0.08*x[3]*x[10]-0.08*x[3]*x[11]+0.04*x[3]*x[12]+0.06*x[3]*x[13]-0.12*x[3]*x[14]-0.12*x[3]*x[16]-0.1*x[3]*x[17]-0.08*x[3]*x[18]-0.08*x[3]*x[19]-0.04*x[3]*x[21]-0.08*x[3]*x[22]-0.1*x[3]*x[23]-0.04*x[3]*x[25]-0.28*x[3]*x[26]-0.18*x[3]*x[27]-0.04*x[3]*x[28]+0.22*x[3]*x[29]+0.08*x[3]*x[30]-0.02*x[3]*x[31]+0.08*x[4]*x[5]-0.08*x[4]*x[6]-0.16*x[4]*x[7]-0.1*x[4]*x[8]-0.1*x[4]*x[10]-0.12*x[4]*x[12]-0.24*x[4]*x[13]+0.02*x[4]*x[14]-0.02*x[4]*x[15]-0.04*x[4]*x[16]-0.12*x[4]*x[18]+0.08*x[4]*x[19]+0.06*x[4]*x[20]-0.04*x[4]*x[21]-0.04*x[4]*x[22]-0.04*x[4]*x[23]+0.06*x[4]*x[26]-0.06*x[4]*x[27]-0.12*x[4]*x[28]+0.08*x[4]*x[29]+0.22*x[4]*x[30]+0.12*x[4]*x[31]+0.16*x[5]*x[6]-0.1*x[5]*x[7]-0.22*x[5]*x[8]+0.04*x[5]*x[9]+0.04*x[5]*x[12]+0.08*x[5]*x[13]-0.22*x[5]*x[14]-0.08*x[5]*x[15]-0.04*x[5]*x[16]-0.04*x[5]*x[17]-0.02*x[5]*x[19]-0.12*x[5]*x[20]-0.02*x[5]*x[22]-0.08*x[5]*x[23]-0.1*x[5]*x[24]+0.2*x[5]*x[25]+0.06*x[5]*x[26]+0.22*x[5]*x[27]-0.04*x[5]*x[28]+0.06*x[5]*x[31]+(-0.08*x[6]*x[7])-0.02*x[6]*x[8]+0.08*x[6]*x[9]-0.04*x[6]*x[10]-0.12*x[6]*x[11]-0.14*x[6]*x[12]+0.06*x[6]*x[13]+0.12*x[6]*x[14]-0.12*x[6]*x[15]+0.04*x[6]*x[16]+0.08*x[6]*x[18]-0.08*x[6]*x[19]+0.06*x[6]*x[20]+0.08*x[6]*x[22]-0.08*x[6]*x[23]+0.06*x[6]*x[24]-0.02*x[6]*x[25]-0.02*x[6]*x[26]+0.02*x[6]*x[27]-0.2*x[6]*x[28]-0.14*x[6]*x[29]+0.02*x[6]*x[30]+0.08*x[6]*x[31]+0.04*x[7]*x[9]-0.02*x[7]*x[8]-0.04*x[7]*x[10]-0.06*x[7]*x[11]-0.04*x[7]*x[12]-0.06*x[7]*x[13]-0.02*x[7]*x[14]-0.18*x[7]*x[15]+0.08*x[7]*x[16]-0.12*x[7]*x[17]-0.1*x[7]*x[18]-0.04*x[7]*x[19]+0.1*x[7]*x[20]+0.06*x[7]*x[22]-0.08*x[7]*x[23]-0.1*x[7]*x[24]+0.18*x[7]*x[25]+0.06*x[7]*x[26]+0.02*x[7]*x[27]+0.04*x[7]*x[28]-0.04*x[7]*x[29]-0.2*x[7]*x[30]-0.12*x[7]*x[31]+0.08*x[8]*x[10]+0.04*x[8]*x[11]+0.06*x[8]*x[12]+0.1*x[8]*x[13]+0.2*x[8]*x[14]+0.06*x[8]*x[15]-0.06*x[8]*x[16]-0.04*x[8]*x[17]-0.14*x[8]*x[18]-0.24*x[8]*x[19]+0.02*x[8]*x[20]+0.08*x[8]*x[21]-0.12*x[8]*x[22]+0.12*x[8]*x[23]-0.04*x[8]*x[24]-0.18*x[8]*x[25]+0.2*x[8]*x[26]-0.24*x[8]*x[27]-0.06*x[8]*x[28]-0.16*x[8]*x[29]+0.02*x[8]*x[30]+0.02*x[9]*x[11]-0.04*x[9]*x[10]-0.12*x[9]*x[12]-0.12*x[9]*x[13]+0.14*x[9]*x[14]-0.06*x[9]*x[15]-0.18*x[9]*x[16]+0.14*x[9]*x[17]-0.24*x[9]*x[18]+0.04*x[9]*x[19]-0.06*x[9]*x[21]+0.1*x[9]*x[23]+0.06*x[9]*x[24]+0.12*x[9]*x[25]-0.1*x[9]*x[26]+0.12*x[9]*x[29]-0.02*x[9]*x[30]-0.04*x[9]*x[31]+0.1*x[10]*x[12]-0.1*x[10]*x[11]-0.16*x[10]*x[13]-0.02*x[10]*x[14]+0.12*x[10]*x[16]-0.08*x[10]*x[17]+0.08*x[10]*x[18]+0.12*x[10]*x[19]-0.24*x[10]*x[20]-0.06*x[10]*x[22]+0.06*x[10]*x[23]-0.12*x[10]*x[24]+0.12*x[10]*x[25]+0.06*x[10]*x[26]-0.08*x[10]*x[27]+0.04*x[10]*x[28]-0.1*x[10]*x[29]-0.04*x[10]*x[30]+0.14*x[10]*x[31]+(-0.04*x[11]*x[12])-0.04*x[11]*x[13]+0.02*x[11]*x[14]+0.02*x[11]*x[15]-0.1*x[11]*x[16]+0.22*x[11]*x[17]-0.08*x[11]*x[18]-0.1*x[11]*x[19]+0.06*x[11]*x[20]+0.16*x[11]*x[21]+0.08*x[11]*x[22]-0.06*x[11]*x[23]+0.02*x[11]*x[24]-0.08*x[11]*x[25]-0.16*x[11]*x[26]-0.06*x[11]*x[27]-0.02*x[11]*x[28]+0.1*x[11]*x[29]-0.02*x[11]*x[30]-0.04*x[11]*x[31]+(-0.04*x[12]*x[13])-0.06*x[12]*x[14]-0.08*x[12]*x[15]+0.14*x[12]*x[16]-0.02*x[12]*x[17]-0.02*x[12]*x[18]+0.04*x[12]*x[19]+0.1*x[12]*x[20]-0.08*x[12]*x[22]+0.06*x[12]*x[23]+0.18*x[12]*x[24]-0.06*x[12]*x[25]+0.12*x[12]*x[26]+0.12*x[12]*x[27]-0.18*x[12]*x[28]-0.04*x[12]*x[29]-0.2*x[12]*x[30]+0.06*x[12]*x[31]+(-0.02*x[13]*x[14])-0.1*x[13]*x[17]+0.1*x[13]*x[18]+0.2*x[13]*x[19]-0.1*x[13]*x[20]-0.12*x[13]*x[21]+0.14*x[13]*x[22]+0.12*x[13]*x[23]-0.06*x[13]*x[24]-0.08*x[13]*x[25]-0.18*x[13]*x[26]-0.12*x[13]*x[29]+0.1*x[13]*x[30]+0.06*x[13]*x[31]+(-0.02*x[14]*x[15])-0.1*x[14]*x[16]-0.08*x[14]*x[17]+0.1*x[14]*x[19]-0.14*x[14]*x[20]+0.04*x[14]*x[22]+0.02*x[14]*x[24]+0.02*x[14]*x[25]-0.02*x[14]*x[26]+0.06*x[14]*x[27]+0.04*x[14]*x[28]-0.12*x[14]*x[29]-0.06*x[14]*x[30]-0.14*x[14]*x[31]+0.1*x[15]*x[16]+0.02*x[15]*x[17]+0.02*x[15]*x[19]-0.04*x[15]*x[20]+0.22*x[15]*x[21]+0.02*x[15]*x[22]-0.08*x[15]*x[24]+0.02*x[15]*x[25]+0.04*x[15]*x[26]-0.06*x[15]*x[27]+0.04*x[15]*x[28]+0.02*x[15]*x[29]-0.06*x[15]*x[30]-0.04*x[15]*x[31]+0.06*x[16]*x[19]-0.08*x[16]*x[18]-0.12*x[16]*x[20]-0.06*x[16]*x[21]+0.04*x[16]*x[22]+0.06*x[16]*x[23]+0.04*x[16]*x[24]-0.08*x[16]*x[25]-0.02*x[16]*x[26]+0.16*x[16]*x[27]+0.02*x[16]*x[28]-0.08*x[16]*x[29]-0.1*x[16]*x[30]+0.08*x[16]*x[31]+0.06*x[17]*x[18]-0.22*x[17]*x[19]-0.02*x[17]*x[20]+0.06*x[17]*x[21]-0.06*x[17]*x[22]+0.1*x[17]*x[23]-0.04*x[17]*x[24]+0.04*x[17]*x[25]-0.04*x[17]*x[26]-0.06*x[17]*x[27]+0.06*x[17]*x[28]-0.04*x[17]*x[29]+0.04*x[17]*x[30]+0.16*x[17]*x[31]+(-0.12*x[18]*x[19])-0.18*x[18]*x[20]+0.04*x[18]*x[21]+0.24*x[18]*x[22]+0.2*x[18]*x[23]-0.02*x[18]*x[24]-0.08*x[18]*x[25]-0.06*x[18]*x[26]+0.14*x[18]*x[27]+0.04*x[18]*x[28]-0.04*x[18]*x[29]+0.04*x[18]*x[30]-0.04*x[18]*x[31]+0.1*x[19]*x[20]+0.08*x[19]*x[21]-0.1*x[19]*x[22]+0.08*x[19]*x[23]+0.02*x[19]*x[24]-0.24*x[19]*x[25]+0.08*x[19]*x[26]+0.08*x[19]*x[28]-0.06*x[19]*x[29]+0.04*x[19]*x[30]+0.08*x[20]*x[22]-0.08*x[20]*x[21]-0.1*x[20]*x[23]+0.12*x[20]*x[24]-0.12*x[20]*x[25]+0.1*x[20]*x[26]+0.16*x[20]*x[27]+0.16*x[20]*x[28]+0.12*x[20]*x[29]-0.14*x[20]*x[30]-0.2*x[20]*x[31]+0.02*x[21]*x[23]-0.02*x[21]*x[22]-0.24*x[21]*x[24]+0.02*x[21]*x[25]-0.12*x[21]*x[26]-0.2*x[21]*x[27]+0.04*x[21]*x[28]-0.1*x[21]*x[29]+0.24*x[21]*x[30]+0.02*x[21]*x[31]+0.06*x[22]*x[24]-0.2*x[22]*x[23]-0.08*x[22]*x[25]-0.32*x[22]*x[26]+0.18*x[22]*x[27]-0.1*x[22]*x[28]+0.08*x[22]*x[29]-0.16*x[22]*x[30]-0.1*x[22]*x[31]+(-0.04*x[23]*x[24])-0.14*x[23]*x[25]-0.06*x[23]*x[26]-0.02*x[23]*x[27]+0.16*x[23]*x[28]-0.06*x[23]*x[29]-0.22*x[23]*x[30]-0.06*x[23]*x[31]+0.12*x[24]*x[26]-0.04*x[24]*x[25]-0.12*x[24]*x[27]-0.22*x[24]*x[28]+0.02*x[24]*x[29]+0.02*x[24]*x[30]-0.1*x[24]*x[31]+0.12*x[25]*x[26]-0.14*x[25]*x[27]-0.06*x[25]*x[28]-0.1*x[25]*x[29]-0.16*x[25]*x[30]+0.02*x[25]*x[31]+(-0.08*x[26]*x[27])-0.16*x[26]*x[28]-0.02*x[26]*x[29]+0.06*x[26]*x[30]-0.06*x[26]*x[31]+0.02*x[27]*x[29]-0.06*x[27]*x[28]-0.02*x[27]*x[30]+0.02*x[28]*x[29]-0.04*x[28]*x[30]-0.06*x[28]*x[31]+(-0.1*x[29]*x[30])-0.1*x[29]*x[31]+0.16*x[30]*x[31]+(-0.51*x[2]*x[2])-0.64*x[3]*x[3]-0.55*x[4]*x[4]-0.5*x[5]*x[5]-0.59*x[6]*x[6]-0.46*x[7]*x[7]-0.53*x[8]*x[8]-0.7*x[9]*x[9]-0.47*x[10]*x[10]-0.36*x[11]*x[11]-0.55*x[12]*x[12]-0.54*x[13]*x[13]-0.59*x[14]*x[14]-0.54*x[15]*x[15]-0.52*x[16]*x[16]-0.52*x[17]*x[17]-0.54*x[18]*x[18]-0.53*x[19]*x[19]-0.64*x[20]*x[20]-0.65*x[21]*x[21]-0.58*x[22]*x[22]-0.59*x[23]*x[23]-0.46*x[24]*x[24]-0.34*x[25]*x[25]-0.46*x[26]*x[26]-0.51*x[27]*x[27]-0.47*x[28]*x[28]-0.52*x[29]*x[29]-0.38*x[30]*x[30]-0.51*x[31]*x[31]+0.52*x[2]+0.22*x[3]+0.39*x[4]+0.63*x[5]+0.42*x[6]+0.3*x[7]-0.39*x[8]+0.66*x[9]+0.66*x[10]-0.05*x[11]+0.15*x[12]-0.73*x[13]-0.56*x[14]+0.42*x[15]-0.47*x[16]+0.95*x[17]+0.38*x[18]+0.28*x[19]-0.94*x[20]+0.35*x[21]+0.22*x[22]-0.2*x[23]-0.18*x[24]+0.18*x[25]-0.29*x[26]-0.19*x[27]+0.26*x[28]-0.97*x[29]-0.58*x[30]+0.31*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 0.2*x[2]*x[4]-0.12*x[2]*x[3]+0.08*x[2]*x[5]-0.18*x[2]*x[6]-0.06*x[2]*x[7]-0.16*x[2]*x[8]-0.16*x[2]*x[9]-0.06*x[2]*x[10]-0.06*x[2]*x[11]-0.04*x[2]*x[12]+0.1*x[2]*x[13]-0.08*x[2]*x[14]-0.02*x[2]*x[15]+0.22*x[2]*x[16]-0.06*x[2]*x[17]+0.06*x[2]*x[18]+0.14*x[2]*x[19]+0.06*x[2]*x[20]-0.12*x[2]*x[21]-0.12*x[2]*x[22]+0.16*x[2]*x[23]-0.06*x[2]*x[24]-0.12*x[2]*x[25]-0.04*x[2]*x[26]+0.02*x[2]*x[27]+0.04*x[2]*x[28]-0.12*x[2]*x[29]-0.04*x[2]*x[30]+0.06*x[2]*x[31]+0.08*x[3]*x[4]-0.14*x[3]*x[5]+0.08*x[3]*x[6]-0.14*x[3]*x[7]+0.1*x[3]*x[8]-0.2*x[3]*x[9]-0.06*x[3]*x[10]+0.02*x[3]*x[11]+0.1*x[3]*x[12]-0.18*x[3]*x[13]-0.04*x[3]*x[14]-0.2*x[3]*x[15]+0.02*x[3]*x[16]-0.02*x[3]*x[18]+0.02*x[3]*x[19]+0.14*x[3]*x[20]+0.14*x[3]*x[21]-0.1*x[3]*x[22]+0.12*x[3]*x[23]+0.14*x[3]*x[24]+0.16*x[3]*x[25]+0.02*x[3]*x[26]+0.1*x[3]*x[27]-0.08*x[3]*x[28]-0.04*x[3]*x[30]-0.18*x[3]*x[31]+0.06*x[4]*x[5]-0.06*x[4]*x[6]-0.04*x[4]*x[7]-0.2*x[4]*x[8]-0.02*x[4]*x[9]+0.04*x[4]*x[10]-0.26*x[4]*x[12]-0.1*x[4]*x[13]-0.04*x[4]*x[14]+0.26*x[4]*x[15]+0.08*x[4]*x[16]+0.02*x[4]*x[17]+0.18*x[4]*x[18]-0.1*x[4]*x[19]-0.08*x[4]*x[20]+0.02*x[4]*x[21]+0.02*x[4]*x[22]-0.1*x[4]*x[23]-0.12*x[4]*x[24]-0.06*x[4]*x[25]-0.16*x[4]*x[26]+0.12*x[4]*x[29]-0.14*x[4]*x[30]-0.22*x[4]*x[31]+0.08*x[5]*x[6]+0.04*x[5]*x[7]-0.08*x[5]*x[8]+0.06*x[5]*x[9]+0.36*x[5]*x[10]-0.02*x[5]*x[11]+0.1*x[5]*x[12]+0.02*x[5]*x[13]-0.1*x[5]*x[14]+0.1*x[5]*x[15]-0.06*x[5]*x[16]-0.1*x[5]*x[17]+0.16*x[5]*x[18]+0.02*x[5]*x[19]-0.12*x[5]*x[20]-0.24*x[5]*x[21]-0.22*x[5]*x[22]+0.08*x[5]*x[23]+0.12*x[5]*x[24]-0.06*x[5]*x[26]-0.12*x[5]*x[27]-0.2*x[5]*x[28]-0.1*x[5]*x[29]-0.12*x[5]*x[30]-0.1*x[5]*x[31]+0.1*x[6]*x[8]-0.26*x[6]*x[7]-0.12*x[6]*x[9]+0.02*x[6]*x[10]-0.02*x[6]*x[11]+0.08*x[6]*x[12]+0.08*x[6]*x[13]-0.26*x[6]*x[14]-0.02*x[6]*x[15]+0.16*x[6]*x[16]-0.02*x[6]*x[17]+0.14*x[6]*x[18]-0.22*x[6]*x[19]-0.12*x[6]*x[20]+0.04*x[6]*x[21]-0.1*x[6]*x[23]+0.12*x[6]*x[25]+0.06*x[6]*x[26]+0.14*x[6]*x[27]-0.04*x[6]*x[28]-0.2*x[6]*x[29]-0.06*x[6]*x[30]+0.02*x[6]*x[31]+0.08*x[7]*x[9]-0.02*x[7]*x[8]+0.08*x[7]*x[10]+0.06*x[7]*x[11]-0.04*x[7]*x[12]+0.04*x[7]*x[13]+0.14*x[7]*x[14]-0.04*x[7]*x[15]-0.14*x[7]*x[16]+0.06*x[7]*x[17]+0.02*x[7]*x[18]+0.12*x[7]*x[19]-0.12*x[7]*x[20]-0.08*x[7]*x[21]+0.22*x[7]*x[22]-0.06*x[7]*x[23]-0.12*x[7]*x[24]+0.14*x[7]*x[25]-0.26*x[7]*x[26]-0.04*x[7]*x[27]-0.04*x[7]*x[28]+0.04*x[7]*x[29]+0.12*x[7]*x[30]+0.08*x[7]*x[31]+0.02*x[8]*x[9]-0.12*x[8]*x[12]+0.1*x[8]*x[13]+0.12*x[8]*x[14]-0.28*x[8]*x[15]+0.02*x[8]*x[16]+0.02*x[8]*x[17]-0.1*x[8]*x[18]+0.02*x[8]*x[20]-0.06*x[8]*x[21]+0.1*x[8]*x[22]-0.08*x[8]*x[23]+0.22*x[8]*x[24]-0.04*x[8]*x[25]+0.1*x[8]*x[26]-0.14*x[8]*x[27]+0.04*x[8]*x[28]+0.16*x[8]*x[29]-0.04*x[8]*x[31]+(-0.06*x[9]*x[10])-0.24*x[9]*x[11]+0.02*x[9]*x[12]-0.08*x[9]*x[13]+0.14*x[9]*x[14]+0.02*x[9]*x[15]-0.1*x[9]*x[16]-0.08*x[9]*x[17]+0.02*x[9]*x[18]-0.2*x[9]*x[19]+0.1*x[9]*x[20]-0.08*x[9]*x[21]+0.02*x[9]*x[22]-0.1*x[9]*x[23]+0.1*x[9]*x[24]+0.08*x[9]*x[25]+0.06*x[9]*x[26]+0.12*x[9]*x[28]+0.22*x[9]*x[29]+0.08*x[9]*x[30]+0.18*x[9]*x[31]+(-0.06*x[10]*x[11])-0.18*x[10]*x[12]-0.14*x[10]*x[13]-0.14*x[10]*x[14]-0.04*x[10]*x[15]-0.18*x[10]*x[16]-0.08*x[10]*x[17]-0.16*x[10]*x[19]-0.12*x[10]*x[20]+0.02*x[10]*x[21]+0.1*x[10]*x[22]+0.04*x[10]*x[24]-0.16*x[10]*x[25]+0.02*x[10]*x[26]-0.04*x[10]*x[27]+0.02*x[10]*x[29]+0.08*x[10]*x[30]+0.16*x[11]*x[13]-0.02*x[11]*x[12]-0.08*x[11]*x[14]+0.16*x[11]*x[15]+0.02*x[11]*x[16]+0.08*x[11]*x[17]-0.06*x[11]*x[18]-0.1*x[11]*x[19]+0.34*x[11]*x[20]-0.08*x[11]*x[21]+0.1*x[11]*x[22]-0.06*x[11]*x[23]-0.04*x[11]*x[24]+0.02*x[11]*x[25]-0.14*x[11]*x[26]+0.08*x[11]*x[27]-0.04*x[11]*x[29]-0.04*x[11]*x[30]-0.16*x[11]*x[31]+0.12*x[12]*x[13]-0.04*x[12]*x[14]+0.18*x[12]*x[15]-0.04*x[12]*x[16]-0.08*x[12]*x[17]+0.02*x[12]*x[18]+0.22*x[12]*x[19]-0.04*x[12]*x[20]+0.02*x[12]*x[21]-0.26*x[12]*x[22]+0.1*x[12]*x[23]+0.1*x[12]*x[24]-0.16*x[12]*x[25]-0.22*x[12]*x[26]+0.14*x[12]*x[27]+0.02*x[12]*x[28]-0.06*x[12]*x[29]+0.12*x[12]*x[30]+0.14*x[12]*x[31]+0.18*x[13]*x[16]-0.12*x[13]*x[15]-0.08*x[13]*x[17]-0.08*x[13]*x[18]+0.18*x[13]*x[19]-0.1*x[13]*x[20]-0.06*x[13]*x[21]-0.04*x[13]*x[22]-0.14*x[13]*x[23]+0.06*x[13]*x[25]-0.12*x[13]*x[26]+0.08*x[13]*x[27]+0.02*x[13]*x[28]+0.02*x[13]*x[29]-0.12*x[13]*x[30]+0.06*x[14]*x[16]-0.02*x[14]*x[15]-0.08*x[14]*x[18]+0.08*x[14]*x[19]-0.14*x[14]*x[20]+0.22*x[14]*x[21]+0.24*x[14]*x[22]+0.18*x[14]*x[23]+0.06*x[14]*x[24]+0.08*x[14]*x[25]+0.16*x[14]*x[26]-0.24*x[14]*x[27]-0.1*x[14]*x[28]-0.12*x[14]*x[29]-0.02*x[14]*x[30]-0.18*x[14]*x[31]+0.06*x[15]*x[17]-0.12*x[15]*x[16]-0.1*x[15]*x[18]-0.06*x[15]*x[19]+0.04*x[15]*x[20]+0.06*x[15]*x[21]-0.22*x[15]*x[22]-0.04*x[15]*x[24]-0.16*x[15]*x[25]+0.04*x[15]*x[26]+0.18*x[15]*x[27]+0.08*x[15]*x[28]-0.1*x[15]*x[29]-0.04*x[15]*x[30]+0.02*x[15]*x[31]+(-0.08*x[16]*x[17])-0.02*x[16]*x[18]+0.04*x[16]*x[19]+0.02*x[16]*x[20]+0.14*x[16]*x[21]-0.02*x[16]*x[22]+0.06*x[16]*x[23]-0.16*x[16]*x[24]-0.26*x[16]*x[27]-0.1*x[16]*x[28]-0.12*x[16]*x[29]-0.1*x[16]*x[30]+0.18*x[16]*x[31]+0.08*x[17]*x[18]-0.04*x[17]*x[19]-0.08*x[17]*x[20]-0.14*x[17]*x[21]+0.1*x[17]*x[22]-0.02*x[17]*x[23]-0.2*x[17]*x[24]+0.14*x[17]*x[25]+0.18*x[17]*x[26]-0.06*x[17]*x[28]+0.02*x[17]*x[29]+0.1*x[17]*x[30]+0.14*x[17]*x[31]+0.2*x[18]*x[19]-0.06*x[18]*x[20]-0.2*x[18]*x[21]+0.28*x[18]*x[22]+0.02*x[18]*x[23]-0.08*x[18]*x[24]-0.04*x[18]*x[25]-0.14*x[18]*x[26]-0.18*x[18]*x[27]-0.02*x[18]*x[28]-0.04*x[18]*x[29]+0.06*x[18]*x[30]-0.22*x[18]*x[31]+(-0.1*x[19]*x[20])-0.2*x[19]*x[22]-0.04*x[19]*x[24]-0.04*x[19]*x[25]-0.06*x[19]*x[27]+0.12*x[19]*x[28]-0.1*x[19]*x[29]+0.1*x[19]*x[30]-0.1*x[19]*x[31]+(-0.14*x[20]*x[21])-0.04*x[20]*x[23]+0.08*x[20]*x[24]+0.02*x[20]*x[25]+0.04*x[20]*x[26]-0.02*x[20]*x[27]+0.18*x[20]*x[28]-0.02*x[20]*x[30]-0.08*x[20]*x[31]+0.16*x[21]*x[23]-0.04*x[21]*x[22]-0.06*x[21]*x[24]-0.12*x[21]*x[25]+0.1*x[21]*x[26]-0.1*x[21]*x[27]+0.04*x[21]*x[28]-0.06*x[21]*x[29]+0.1*x[21]*x[30]+0.12*x[21]*x[31]+0.02*x[22]*x[24]-0.12*x[22]*x[26]-0.1*x[22]*x[27]-0.06*x[22]*x[28]-0.04*x[22]*x[29]+0.04*x[22]*x[30]-0.14*x[22]*x[31]+0.1*x[23]*x[24]-0.1*x[23]*x[25]-0.02*x[23]*x[26]-0.04*x[23]*x[27]-0.24*x[23]*x[28]-0.14*x[23]*x[29]+0.12*x[23]*x[30]+0.06*x[23]*x[31]+(-0.14*x[24]*x[25])-0.08*x[24]*x[26]+0.24*x[24]*x[27]-0.04*x[24]*x[28]-0.02*x[24]*x[29]-0.06*x[24]*x[30]-0.3*x[24]*x[31]+0.04*x[25]*x[26]+0.22*x[25]*x[27]-0.16*x[25]*x[28]+0.18*x[25]*x[29]-0.22*x[25]*x[30]-0.06*x[25]*x[31]+0.22*x[26]*x[28]-0.08*x[26]*x[27]-0.02*x[26]*x[29]+0.02*x[26]*x[30]+0.12*x[26]*x[31]+0.02*x[27]*x[28]-0.04*x[27]*x[29]-0.08*x[27]*x[30]-0.08*x[27]*x[31]+0.04*x[28]*x[29]+0.12*x[28]*x[30]+0.04*x[28]*x[31]+0.12*x[29]*x[31]-0.18*x[29]*x[30]+0.2*x[30]*x[31]+(-0.55*x[2]*x[2])-0.6*x[3]*x[3]-0.54*x[4]*x[4]-0.51*x[5]*x[5]-0.48*x[6]*x[6]-0.64*x[7]*x[7]-0.64*x[8]*x[8]-0.6*x[9]*x[9]-0.61*x[10]*x[10]-0.62*x[11]*x[11]-0.61*x[12]*x[12]-0.66*x[13]*x[13]-0.59*x[14]*x[14]-0.59*x[15]*x[15]-0.59*x[16]*x[16]-0.68*x[17]*x[17]-0.6*x[18]*x[18]-0.5*x[19]*x[19]-0.54*x[20]*x[20]-0.6*x[21]*x[21]-0.54*x[22]*x[22]-0.71*x[23]*x[23]-0.64*x[24]*x[24]-0.51*x[25]*x[25]-0.67*x[26]*x[26]-0.49*x[27]*x[27]-0.67*x[28]*x[28]-0.52*x[29]*x[29]-0.73*x[30]*x[30]-0.56*x[31]*x[31]-0.87*x[2]+0.32*x[3]+0.98*x[4]+0.83*x[5]+0.18*x[6]+0.05*x[7]-0.61*x[8]+0.15*x[9]-0.24*x[10]+0.42*x[11]+0.49*x[12]-0.3*x[13]-0.77*x[14]-0.9*x[15]-0.69*x[16]+0.56*x[17]+0.82*x[18]-0.74*x[19]+0.46*x[20]-0.2*x[21]+0.31*x[22]-0.49*x[23]-0.47*x[24]+0.09*x[25]-0.76*x[26]+0.72*x[27]-0.34*x[28]+0.95*x[29]+0.46*x[30]-0.38*x[31] <= 63.33)
@constraint(m, e3, -0.87*x[2]+0.76*x[3]-0.03*x[4]+0.39*x[5]-0.66*x[6]+0.58*x[7]+0.15*x[8]-0.68*x[9]-0.48*x[10]-0.55*x[11]-0.83*x[12]+0.68*x[13]-0.64*x[14]-0.99*x[15]-0.74*x[16]+0.58*x[17]+0.1*x[18]-0.2*x[19]-0.13*x[20]-0.63*x[21]-0.99*x[22]+0.74*x[23]-0.6*x[24]-0.63*x[25]-0.14*x[26]-0.19*x[27]-0.44*x[28]+0.75*x[29]-0.51*x[30]-0.61*x[31] == 0.68)
@constraint(m, e4, 0.02*x[2]+0.39*x[3]-0.83*x[4]-0.89*x[5]-0.96*x[6]+0.41*x[7]-0.81*x[8]-0.34*x[9]+0.23*x[10]+0.76*x[11]-0.59*x[12]-x[13]+0.36*x[14]-0.95*x[15]+0.31*x[16]+0.68*x[17]+0.84*x[18]+0.93*x[19]-0.15*x[20]-0.85*x[21]-0.18*x[22]-0.07*x[23]+0.57*x[24]+0.36*x[25]-0.77*x[26]+0.05*x[27]-0.34*x[28]+0.66*x[29]+0.36*x[30]+0.16*x[31] == 0.71)
@constraint(m, e5, -0.53*x[2]-0.93*x[3]+0.16*x[4]-0.5*x[5]-0.07*x[6]+0.54*x[7]-0.1*x[8]+0.93*x[9]-0.04*x[10]+0.27*x[11]+0.75*x[12]-0.89*x[13]+0.87*x[14]-0.68*x[15]+0.47*x[16]-0.98*x[17]-0.25*x[18]+0.47*x[19]+0.87*x[20]+0.81*x[21]+0.72*x[22]+0.56*x[23]-0.93*x[24]+0.81*x[25]-0.89*x[26]-0.69*x[27]+0.88*x[28]+0.7*x[29]-0.06*x[30]-0.98*x[31] == 0.29)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.