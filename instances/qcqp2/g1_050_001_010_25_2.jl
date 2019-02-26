using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
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
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)
set_upper_bound(x[51], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.04*x[2]*x[4]-0.98*x[2]*x[7]+0.02*x[2]*x[8]+1.14*x[2]*x[9]+0.26*x[2]*x[12]-1.76*x[2]*x[22]+1.18*x[2]*x[23]+0.86*x[2]*x[26]-0.96*x[2]*x[28]-0.72*x[2]*x[31]+1.72*x[2]*x[33]-1.56*x[2]*x[36]-1.56*x[2]*x[39]+0.2*x[2]*x[41]-1.76*x[2]*x[45]+(-0.3*x[3]*x[4])-0.76*x[3]*x[9]+0.88*x[3]*x[10]-0.94*x[3]*x[11]-0.68*x[3]*x[12]-0.04*x[3]*x[14]+1.9*x[3]*x[19]-1.84*x[3]*x[20]-0.36*x[3]*x[21]-1.78*x[3]*x[27]-1.6*x[3]*x[33]-1.94*x[3]*x[41]+1.8*x[3]*x[48]-0.36*x[3]*x[49]-1.64*x[3]*x[50]+1.26*x[4]*x[20]-1.72*x[4]*x[14]-0.38*x[4]*x[21]-2*x[4]*x[32]-1.82*x[4]*x[35]-0.1*x[4]*x[36]-1.44*x[4]*x[38]+1.36*x[4]*x[47]-0.38*x[4]*x[48]+0.12*x[5]*x[9]+1.04*x[5]*x[15]-0.6*x[5]*x[21]+1.82*x[5]*x[24]+0.8*x[5]*x[25]+0.36*x[5]*x[29]-1.92*x[5]*x[31]-0.72*x[5]*x[40]+1.9*x[5]*x[43]+1.52*x[5]*x[48]+1.16*x[5]*x[50]+1.9*x[5]*x[51]+0.92*x[6]*x[14]-1.46*x[6]*x[15]+1.36*x[6]*x[16]+1.74*x[6]*x[17]+x[6]*x[19]-0.32*x[6]*x[21]-1.64*x[6]*x[23]+1.76*x[6]*x[26]+1.78*x[6]*x[38]+1.32*x[6]*x[45]+1.78*x[6]*x[48]+1.1*x[7]*x[11]-0.04*x[7]*x[12]+0.84*x[7]*x[13]+0.9*x[7]*x[14]-1.88*x[7]*x[21]+0.7*x[7]*x[23]-1.16*x[7]*x[26]-1.16*x[7]*x[30]+1.28*x[7]*x[42]+1.24*x[7]*x[46]+0.6*x[8]*x[17]-1.02*x[8]*x[12]+0.38*x[8]*x[26]+0.14*x[8]*x[27]+0.94*x[8]*x[34]-0.24*x[8]*x[41]-0.82*x[8]*x[43]-0.82*x[8]*x[47]+1.76*x[8]*x[51]+1.96*x[9]*x[12]+1.76*x[9]*x[17]-1.48*x[9]*x[19]-1.52*x[9]*x[23]+1.68*x[9]*x[25]+1.98*x[9]*x[27]-1.78*x[9]*x[33]+0.88*x[9]*x[35]-1.06*x[9]*x[38]+1.16*x[9]*x[40]-x[9]*x[41]+0.46*x[9]*x[43]+1.06*x[9]*x[47]+1.3*x[10]*x[14]-1.42*x[10]*x[11]-1.76*x[10]*x[16]+2*x[10]*x[19]+1.76*x[10]*x[20]-0.44*x[10]*x[25]+0.56*x[10]*x[29]-0.78*x[10]*x[30]+0.12*x[10]*x[36]+0.92*x[10]*x[40]+0.32*x[10]*x[41]-0.36*x[10]*x[46]+(-0.52*x[11]*x[15])-0.38*x[11]*x[18]+1.32*x[11]*x[27]-0.92*x[11]*x[29]-0.78*x[11]*x[30]+1.86*x[11]*x[34]-0.06*x[11]*x[45]-1.6*x[11]*x[46]-1.06*x[11]*x[49]+1.4*x[12]*x[14]-0.64*x[12]*x[17]-0.36*x[12]*x[19]-0.8*x[12]*x[25]-1.38*x[12]*x[29]+0.74*x[12]*x[34]-1.48*x[12]*x[38]+1.06*x[12]*x[39]-1.62*x[12]*x[40]+1.94*x[12]*x[46]-1.1*x[12]*x[48]+(-0.94*x[13]*x[17])-1.66*x[13]*x[18]+0.3*x[13]*x[22]+0.42*x[13]*x[23]-0.28*x[13]*x[25]+0.16*x[13]*x[26]+1.34*x[13]*x[35]-0.24*x[13]*x[37]-0.22*x[13]*x[42]-1.88*x[13]*x[44]+1.88*x[13]*x[49]+0.56*x[14]*x[19]+0.94*x[14]*x[26]+1.18*x[14]*x[34]-0.92*x[14]*x[37]+1.72*x[14]*x[42]+1.26*x[14]*x[49]-1.22*x[14]*x[50]+1.36*x[15]*x[16]-1.84*x[15]*x[19]+0.68*x[15]*x[31]+0.62*x[15]*x[32]-0.06*x[15]*x[37]-0.92*x[15]*x[43]-1.94*x[15]*x[45]-0.62*x[15]*x[47]+1.1*x[16]*x[23]+1.92*x[16]*x[25]+1.46*x[16]*x[28]-0.3*x[16]*x[30]+0.38*x[16]*x[35]+0.58*x[16]*x[36]+0.72*x[16]*x[37]-0.44*x[16]*x[50]+1.1*x[17]*x[22]-0.44*x[17]*x[28]+0.48*x[17]*x[32]-1.28*x[17]*x[37]+0.12*x[17]*x[38]+0.24*x[17]*x[39]+1.84*x[17]*x[42]+0.22*x[17]*x[44]+0.52*x[17]*x[48]-0.5*x[17]*x[49]+0.74*x[18]*x[27]-1.44*x[18]*x[31]+0.2*x[18]*x[33]-0.94*x[18]*x[35]+1.1*x[18]*x[36]-1.96*x[18]*x[39]+1.02*x[18]*x[40]+1.76*x[18]*x[42]-1.54*x[18]*x[47]+(-0.66*x[19]*x[28])-1.22*x[19]*x[29]-0.82*x[19]*x[31]+1.18*x[19]*x[37]+1.36*x[19]*x[38]-1.46*x[19]*x[45]-1.74*x[19]*x[48]-0.74*x[19]*x[50]+1.18*x[20]*x[23]+1.12*x[20]*x[24]-0.86*x[20]*x[29]+0.84*x[20]*x[31]+0.96*x[20]*x[34]-0.44*x[20]*x[39]+1.02*x[20]*x[40]-0.66*x[20]*x[44]-0.04*x[20]*x[45]+0.02*x[21]*x[29]-0.18*x[21]*x[33]-1.42*x[21]*x[35]+0.42*x[21]*x[38]+1.12*x[21]*x[41]+(-1.66*x[22]*x[27])-0.46*x[22]*x[28]-1.2*x[22]*x[29]+2*x[22]*x[37]+1.46*x[22]*x[39]+0.56*x[22]*x[49]+1.18*x[23]*x[38]-1.96*x[23]*x[41]-0.2*x[23]*x[43]+0.14*x[23]*x[44]-1.9*x[23]*x[46]+1.88*x[23]*x[48]+1.08*x[24]*x[30]-1.96*x[24]*x[27]+1.84*x[24]*x[31]+1.94*x[24]*x[34]-1.3*x[24]*x[36]-0.32*x[24]*x[49]+1.88*x[25]*x[32]-0.52*x[25]*x[31]-1.28*x[25]*x[34]-1.92*x[25]*x[35]-1.66*x[25]*x[39]-1.54*x[25]*x[40]-0.58*x[25]*x[44]-0.34*x[25]*x[46]-1.7*x[25]*x[49]+0.04*x[26]*x[30]-1.74*x[26]*x[29]-1.4*x[26]*x[33]+0.48*x[26]*x[36]+1.76*x[26]*x[38]+1.24*x[26]*x[39]-0.68*x[26]*x[40]-1.04*x[26]*x[44]+0.44*x[27]*x[28]+1.84*x[27]*x[35]+1.84*x[27]*x[36]-1.32*x[27]*x[40]+0.6*x[27]*x[44]-0.68*x[27]*x[49]+0.2*x[28]*x[31]+0.84*x[28]*x[34]+0.72*x[28]*x[35]+0.18*x[28]*x[41]-0.74*x[28]*x[42]+(-0.14*x[29]*x[30])-1.96*x[29]*x[34]+1.48*x[29]*x[41]+0.88*x[29]*x[42]-0.68*x[29]*x[45]+0.66*x[30]*x[35]+1.2*x[30]*x[37]+1.82*x[30]*x[46]+0.58*x[30]*x[49]+1.18*x[30]*x[51]+0.7*x[31]*x[32]-0.28*x[31]*x[38]-0.42*x[31]*x[46]+0.38*x[31]*x[48]+0.82*x[31]*x[50]+1.88*x[32]*x[33]+1.46*x[32]*x[40]+1.08*x[33]*x[43]+0.66*x[33]*x[51]+0.92*x[34]*x[40]-1.86*x[34]*x[36]+0.92*x[34]*x[43]-0.44*x[34]*x[45]+0.1*x[34]*x[50]-0.84*x[36]*x[48]+0.64*x[37]*x[44]-0.44*x[37]*x[41]+1.1*x[37]*x[45]+1.74*x[37]*x[50]+1.98*x[38]*x[41]-x[38]*x[39]-0.02*x[38]*x[44]+1.08*x[38]*x[45]+(-0.66*x[39]*x[42])-1.16*x[39]*x[50]+1.84*x[40]*x[44]-1.64*x[40]*x[42]+0.36*x[41]*x[43]-1.7*x[41]*x[42]-0.36*x[41]*x[45]+0.98*x[42]*x[48]-0.14*x[42]*x[43]-1.62*x[42]*x[49]-0.4*x[42]*x[50]+1.8*x[43]*x[51]-0.7*x[43]*x[44]+(-1.08*x[44]*x[46])-0.14*x[44]*x[47]+1.72*x[44]*x[48]+0.24*x[46]*x[49]+0.3*x[48]*x[51]-0.58*x[49]*x[51]+0.01*x[11]*x[11]-0.29*x[2]*x[2]+0.84*x[17]*x[17]-0.99*x[21]*x[21]+0.61*x[29]*x[29]-0.14*x[30]*x[30]+0.72*x[44]*x[44]+0.52*x[50]*x[50]-0.25*x[51]*x[51]+0.23*x[2]-0.62*x[3]-0.06*x[4]-0.27*x[5]-0.52*x[6]+0.54*x[7]-0.46*x[8]-0.84*x[9]+0.97*x[10]-0.18*x[11]+0.6*x[12]-0.07*x[13]-0.84*x[14]-0.29*x[15]-0.55*x[16]+0.06*x[17]+0.52*x[18]+0.72*x[19]+0.13*x[20]-0.72*x[21]-0.06*x[22]+0.2*x[23]+0.72*x[24]-0.62*x[25]-0.45*x[26]+0.34*x[27]-0.21*x[28]-0.71*x[29]+0.22*x[30]-0.71*x[31]+0.91*x[32]+0.53*x[33]+0.07*x[34]-0.85*x[35]+0.82*x[36]-0.41*x[37]+0.65*x[38]+0.32*x[39]+0.27*x[40]-0.92*x[41]-0.07*x[42]+0.41*x[43]+0.61*x[44]-0.98*x[45]-0.64*x[46]-0.6*x[47]-0.38*x[48]-0.83*x[49]-0.25*x[50]-0.2*x[51])+x[1] == 0.0)
@NLconstraint(m, e2, 1.26*x[2]*x[5]+1.7*x[2]*x[15]-0.88*x[2]*x[18]+1.72*x[2]*x[26]+1.86*x[2]*x[29]-1.04*x[2]*x[34]+2*x[2]*x[35]+0.86*x[2]*x[41]+1.72*x[2]*x[43]+0.08*x[2]*x[44]+1.02*x[2]*x[45]+0.94*x[3]*x[6]+0.4*x[3]*x[7]-1.36*x[3]*x[8]-0.84*x[3]*x[10]-1.56*x[3]*x[13]+1.76*x[3]*x[20]+0.48*x[3]*x[26]+0.58*x[3]*x[30]+1.16*x[3]*x[32]-1.84*x[3]*x[35]+1.44*x[3]*x[36]+0.18*x[3]*x[37]+1.7*x[3]*x[39]-0.08*x[3]*x[46]+0.2*x[3]*x[51]+0.7*x[4]*x[5]+0.16*x[4]*x[11]-0.02*x[4]*x[12]+0.44*x[4]*x[13]-1.5*x[4]*x[14]+1.14*x[4]*x[19]+1.14*x[4]*x[21]-0.76*x[4]*x[25]-1.26*x[4]*x[27]+0.28*x[4]*x[28]+0.24*x[4]*x[29]+1.6*x[4]*x[31]+0.04*x[4]*x[45]-1.9*x[4]*x[46]-1.14*x[4]*x[50]+0.98*x[5]*x[11]-1.6*x[5]*x[6]-1.58*x[5]*x[14]-1.94*x[5]*x[16]-1.58*x[5]*x[17]-0.58*x[5]*x[21]+1.44*x[5]*x[22]+0.44*x[5]*x[23]-0.64*x[5]*x[24]-0.8*x[5]*x[26]-0.54*x[5]*x[39]-0.88*x[5]*x[46]+1.7*x[5]*x[49]+1.14*x[5]*x[50]+0.44*x[6]*x[8]-0.36*x[6]*x[9]-0.74*x[6]*x[16]+0.88*x[6]*x[17]+0.98*x[6]*x[19]-0.34*x[6]*x[23]-1.56*x[6]*x[25]+1.98*x[6]*x[26]+1.9*x[6]*x[28]-1.28*x[6]*x[30]-1.52*x[6]*x[35]-0.86*x[6]*x[43]-1.48*x[6]*x[46]+1.52*x[7]*x[10]+0.44*x[7]*x[15]+1.74*x[7]*x[16]+1.24*x[7]*x[18]+0.3*x[7]*x[26]-1.9*x[7]*x[28]+1.16*x[7]*x[29]+0.28*x[7]*x[30]-1.38*x[7]*x[35]-1.1*x[7]*x[38]+0.14*x[7]*x[39]+1.14*x[7]*x[40]+0.54*x[7]*x[47]+0.46*x[8]*x[31]-0.1*x[8]*x[32]-0.98*x[8]*x[33]-0.52*x[8]*x[40]+(-0.46*x[9]*x[12])-1.04*x[9]*x[19]-0.62*x[9]*x[22]-1.24*x[9]*x[24]+0.14*x[9]*x[26]-0.32*x[9]*x[30]-1.94*x[9]*x[41]+1.32*x[9]*x[44]-1.86*x[9]*x[46]-1.66*x[9]*x[50]+0.62*x[10]*x[20]-1.1*x[10]*x[12]+0.86*x[10]*x[21]+0.74*x[10]*x[25]-0.48*x[10]*x[27]+1.58*x[10]*x[28]-0.18*x[10]*x[30]-0.14*x[10]*x[35]-1.8*x[10]*x[38]+0.08*x[10]*x[39]+1.42*x[10]*x[41]+0.74*x[10]*x[43]-1.98*x[10]*x[44]+0.3*x[10]*x[45]+1.84*x[10]*x[47]-1.5*x[10]*x[48]+1.6*x[10]*x[50]+0.76*x[11]*x[22]+1.86*x[11]*x[24]+0.98*x[11]*x[28]+1.7*x[11]*x[29]-0.68*x[11]*x[35]+1.66*x[12]*x[28]-0.94*x[12]*x[29]+1.62*x[12]*x[33]+1.74*x[12]*x[35]+1.84*x[12]*x[40]-1.28*x[12]*x[49]+(-0.5*x[13]*x[17])-0.5*x[13]*x[25]-0.82*x[13]*x[29]-1.64*x[13]*x[30]-1.44*x[13]*x[31]+0.24*x[13]*x[33]-1.3*x[13]*x[35]-0.08*x[13]*x[38]-0.14*x[13]*x[40]-1.28*x[13]*x[48]-1.88*x[13]*x[49]+(-1.08*x[14]*x[24])-0.82*x[14]*x[35]+0.62*x[14]*x[36]+1.28*x[15]*x[20]+0.56*x[15]*x[21]+0.14*x[15]*x[31]+1.8*x[15]*x[32]+0.7*x[15]*x[35]+0.94*x[15]*x[37]+0.74*x[15]*x[42]-1.74*x[15]*x[44]+0.9*x[16]*x[18]+1.82*x[16]*x[24]-x[16]*x[28]+1.52*x[16]*x[34]-0.18*x[16]*x[35]+0.14*x[16]*x[40]-1.5*x[16]*x[45]+1.16*x[16]*x[49]-0.94*x[16]*x[50]+0.6*x[17]*x[28]-1.96*x[17]*x[26]-0.82*x[17]*x[40]-1.42*x[17]*x[43]-0.4*x[17]*x[45]+1.56*x[17]*x[49]+0.2*x[17]*x[51]+(-0.42*x[18]*x[19])-0.3*x[18]*x[26]+1.82*x[18]*x[27]-0.2*x[18]*x[29]+0.86*x[18]*x[44]+1.06*x[19]*x[25]-0.06*x[19]*x[23]-1.74*x[19]*x[27]+1.36*x[19]*x[29]-1.82*x[19]*x[31]+1.3*x[19]*x[33]-0.68*x[19]*x[36]+1.42*x[19]*x[43]+1.42*x[19]*x[45]+1.14*x[19]*x[48]+0.22*x[20]*x[21]-1.96*x[20]*x[23]-0.4*x[20]*x[31]+0.84*x[20]*x[33]-0.66*x[20]*x[38]+x[20]*x[42]+0.6*x[20]*x[48]+(-1.7*x[21]*x[23])-0.86*x[21]*x[33]+1.8*x[21]*x[40]+1.06*x[21]*x[44]+0.72*x[21]*x[46]+0.78*x[22]*x[27]+1.96*x[22]*x[28]-0.42*x[22]*x[29]+0.86*x[22]*x[31]-0.12*x[22]*x[33]-1.66*x[22]*x[35]+0.28*x[22]*x[37]-1.74*x[22]*x[51]+1.2*x[23]*x[32]+1.44*x[23]*x[33]+1.86*x[23]*x[34]-0.32*x[23]*x[36]+0.9*x[23]*x[44]+1.46*x[23]*x[48]+(-0.34*x[24]*x[29])-0.08*x[24]*x[30]+1.56*x[24]*x[31]-0.7*x[24]*x[34]+0.22*x[24]*x[40]+0.04*x[24]*x[41]-0.62*x[24]*x[47]+1.2*x[25]*x[34]-1.04*x[25]*x[37]-1.26*x[25]*x[38]+1.78*x[25]*x[45]+0.26*x[26]*x[35]-0.64*x[26]*x[29]-1.92*x[26]*x[37]-1.56*x[26]*x[38]+0.14*x[26]*x[39]-0.06*x[26]*x[40]+0.04*x[26]*x[43]-1.3*x[26]*x[44]-1.34*x[26]*x[50]+1.36*x[27]*x[29]+1.68*x[27]*x[33]-1.86*x[27]*x[35]-1.08*x[27]*x[36]+1.14*x[27]*x[42]-1.68*x[27]*x[48]+1.54*x[27]*x[49]+1.64*x[28]*x[46]-0.86*x[28]*x[47]-0.82*x[28]*x[50]+(-1.92*x[29]*x[31])-1.16*x[29]*x[37]-1.9*x[29]*x[46]-1.36*x[29]*x[51]+(-1.12*x[30]*x[41])-0.4*x[30]*x[42]-1.36*x[30]*x[49]-0.6*x[30]*x[50]+1.6*x[30]*x[51]+0.76*x[31]*x[37]-1.7*x[31]*x[40]+1.82*x[32]*x[34]-1.16*x[32]*x[44]+0.28*x[33]*x[42]+0.3*x[33]*x[43]-0.54*x[33]*x[45]+x[33]*x[49]+0.78*x[34]*x[37]+0.88*x[34]*x[41]+1.46*x[34]*x[43]+0.36*x[34]*x[46]-0.84*x[34]*x[49]+(-1.62*x[35]*x[36])-1.34*x[35]*x[37]+0.36*x[35]*x[48]+1.14*x[35]*x[50]+1.32*x[36]*x[38]-1.04*x[36]*x[40]+0.8*x[36]*x[41]+1.36*x[36]*x[45]+0.54*x[36]*x[47]+0.4*x[37]*x[42]+1.96*x[37]*x[43]+1.02*x[37]*x[44]+0.18*x[37]*x[45]+0.14*x[37]*x[46]-1.42*x[37]*x[48]+0.98*x[37]*x[51]+(-0.2*x[38]*x[43])-0.02*x[38]*x[45]+1.92*x[38]*x[48]+1.56*x[39]*x[42]-1.5*x[39]*x[40]+0.12*x[39]*x[44]+0.34*x[39]*x[51]-0.12*x[40]*x[44]+1.36*x[41]*x[42]-0.46*x[41]*x[43]+0.06*x[41]*x[50]+0.42*x[42]*x[44]-0.06*x[42]*x[43]+1.16*x[42]*x[47]+0.68*x[42]*x[51]+0.94*x[43]*x[48]-1.04*x[43]*x[44]+0.66*x[45]*x[50]-1.98*x[45]*x[48]+1.58*x[45]*x[51]-1.2*x[46]*x[47]+0.5*x[47]*x[49]-0.64*x[47]*x[48]+0.66*x[48]*x[50]+(-0.49*x[5]*x[5])-0.02*x[7]*x[7]-0.45*x[8]*x[8]+0.06*x[11]*x[11]+0.14*x[15]*x[15]+0.68*x[16]*x[16]+0.26*x[18]*x[18]+0.6*x[21]*x[21]+0.04*x[30]*x[30]+0.85*x[38]*x[38]+0.61*x[40]*x[40]+0.24*x[41]*x[41]+0.47*x[46]*x[46]-0.41*x[47]*x[47]-0.28*x[50]*x[50]+0.67*x[2]+0.32*x[3]+0.56*x[4]+0.98*x[5]+0.67*x[6]-0.52*x[7]+0.5*x[8]+0.02*x[9]-0.06*x[10]-0.49*x[11]-0.11*x[12]+0.88*x[13]-0.26*x[14]+0.82*x[15]+0.56*x[16]+0.72*x[17]+0.5*x[18]+0.61*x[19]-0.95*x[20]+0.53*x[21]-0.24*x[22]-0.82*x[23]-0.87*x[24]+0.4*x[25]-0.65*x[26]-0.06*x[27]-0.24*x[28]-0.97*x[29]+0.83*x[30]+0.82*x[31]-0.09*x[32]-0.96*x[33]-0.65*x[34]-0.83*x[35]+0.09*x[36]-0.83*x[37]+0.48*x[38]-0.69*x[39]+0.11*x[40]+0.07*x[41]-0.6*x[42]-0.66*x[43]+0.78*x[44]-0.25*x[45]-0.12*x[46]-0.8*x[47]+0.62*x[48]+0.75*x[49]+0.17*x[50]-0.9*x[51] <= 54.9)
@constraint(m, e3, 0.11*x[2]+0.79*x[3]-0.83*x[4]-0.68*x[5]-0.3*x[6]+0.28*x[7]-0.96*x[8]-0.62*x[9]-0.77*x[10]-0.47*x[11]+0.12*x[12]-0.56*x[13]-0.28*x[14]-0.62*x[15]-0.38*x[16]+0.31*x[17]-0.57*x[18]-0.38*x[19]-0.93*x[20]+0.45*x[21]+0.4*x[22]-0.57*x[23]-0.02*x[24]+0.99*x[25]-0.67*x[26]+0.86*x[27]+0.44*x[28]+0.22*x[29]+0.48*x[30]-0.48*x[31]+0.65*x[32]+0.55*x[33]-0.63*x[34]-0.53*x[35]-0.59*x[36]+0.25*x[37]+0.59*x[38]+0.04*x[39]-0.06*x[40]+0.02*x[41]-0.21*x[42]+0.99*x[43]-0.87*x[44]-0.46*x[45]+0.24*x[46]-0.82*x[47]-0.12*x[48]-0.7*x[49]+0.19*x[50]-0.11*x[51] == -0.95)
@constraint(m, e4, 0.54*x[2]-0.25*x[3]+0.82*x[4]-0.09*x[5]-0.5*x[6]+0.46*x[7]-0.6*x[8]-0.68*x[9]+0.58*x[10]-0.77*x[11]+0.43*x[12]-0.45*x[13]+0.59*x[14]+0.43*x[15]+0.63*x[17]+0.84*x[18]+0.94*x[19]-0.15*x[20]-0.6*x[21]-0.07*x[22]-0.17*x[23]-0.31*x[24]+0.67*x[25]-0.45*x[26]+0.78*x[27]-0.71*x[28]-0.14*x[29]-0.08*x[30]+0.96*x[31]+0.53*x[32]+0.92*x[33]-0.35*x[34]-0.71*x[35]-0.59*x[36]-0.59*x[37]-0.47*x[38]-0.3*x[39]+0.41*x[40]+0.96*x[41]+0.38*x[42]-0.7*x[43]-0.61*x[44]-0.64*x[45]+0.67*x[46]+0.67*x[47]-0.91*x[48]+0.53*x[49]+0.79*x[50]+0.25*x[51] == 0.95)
@constraint(m, e5, 0.71*x[2]-0.76*x[3]+0.37*x[4]-0.98*x[5]+0.16*x[6]+0.5*x[7]-0.91*x[8]+0.22*x[9]-0.82*x[10]-0.22*x[11]+0.5*x[12]+0.5*x[13]+0.51*x[14]+0.12*x[15]+0.88*x[16]-0.76*x[17]-0.48*x[18]-0.6*x[19]+0.15*x[20]+0.06*x[21]+0.01*x[22]-0.3*x[23]+0.91*x[24]-0.24*x[25]+0.96*x[26]+0.91*x[27]+0.31*x[28]-0.78*x[29]-0.74*x[30]-0.63*x[31]+0.43*x[32]+0.21*x[33]+0.34*x[34]-0.48*x[35]+0.24*x[36]-0.24*x[37]+0.92*x[38]-0.71*x[39]-0.31*x[40]-0.13*x[41]-0.47*x[42]-0.03*x[43]+0.38*x[44]+0.51*x[45]+0.35*x[46]-0.17*x[47]+0.37*x[48]-0.01*x[49]-0.23*x[50]-0.33*x[51] == -0.34)
@constraint(m, e6, 0.03*x[2]-0.36*x[3]+0.27*x[4]+0.62*x[5]+0.14*x[6]+0.74*x[7]+0.63*x[8]+0.58*x[9]+0.61*x[10]+0.12*x[11]-0.89*x[12]+0.84*x[13]+0.94*x[14]+0.32*x[15]-0.07*x[16]-0.81*x[17]-0.23*x[18]-0.73*x[19]-0.68*x[20]+0.19*x[21]-0.66*x[22]+0.93*x[23]+0.78*x[24]+0.36*x[25]-0.96*x[26]-0.33*x[27]-0.79*x[28]-0.64*x[29]+0.33*x[30]+0.81*x[31]+0.6*x[32]-0.26*x[33]+0.99*x[34]-0.61*x[35]+0.56*x[36]+0.09*x[37]-0.47*x[38]-0.02*x[39]-0.1*x[40]+0.41*x[41]-0.14*x[42]-0.87*x[43]+0.77*x[44]-0.97*x[45]-0.38*x[46]+0.14*x[47]-0.79*x[48]+0.03*x[49]+0.93*x[50]+0.67*x[51] == -0.41)
@constraint(m, e7, 0.19*x[2]+0.26*x[3]+0.75*x[4]-0.88*x[5]-0.24*x[6]-0.93*x[7]+0.63*x[8]-0.1*x[9]+0.53*x[10]-0.88*x[11]+0.6*x[12]+0.01*x[13]+0.7*x[14]-0.61*x[15]+0.95*x[16]+0.71*x[17]+0.32*x[18]+0.04*x[19]+0.25*x[20]+0.9*x[21]+0.27*x[22]+0.9*x[23]+0.33*x[24]+0.29*x[25]-0.63*x[26]-0.15*x[27]-x[28]+0.87*x[29]-0.96*x[30]+0.12*x[31]+0.19*x[32]-0.42*x[33]+0.04*x[34]+0.67*x[35]-0.25*x[36]+0.34*x[37]-0.64*x[38]+0.62*x[39]-0.14*x[40]+0.78*x[41]+0.9*x[42]-0.83*x[43]-0.59*x[44]+0.44*x[45]+0.07*x[46]+0.55*x[47]+0.14*x[48]-0.85*x[49]+0.13*x[50]-0.14*x[51] == -0.81)
@constraint(m, e8, 0.56*x[2]+0.08*x[3]-0.42*x[4]-0.84*x[5]-0.46*x[6]+0.24*x[7]-0.67*x[8]-0.85*x[9]-0.54*x[10]-0.22*x[11]+0.91*x[12]-0.95*x[13]+0.89*x[14]+0.31*x[15]-0.5*x[16]+0.46*x[17]-0.15*x[18]+0.8*x[19]-0.91*x[20]+0.76*x[21]-0.34*x[22]-0.05*x[23]-0.85*x[24]-0.33*x[25]+0.29*x[26]-0.97*x[27]-0.77*x[28]-0.73*x[29]+0.23*x[30]+0.93*x[31]+0.28*x[32]+0.25*x[33]+0.42*x[34]-0.46*x[35]-0.94*x[36]-0.04*x[37]-0.21*x[38]-0.82*x[39]-0.82*x[40]-0.28*x[41]+0.63*x[42]-0.75*x[43]-0.6*x[44]-0.55*x[45]+0.11*x[46]-0.72*x[47]-0.64*x[48]+0.84*x[49]+0.26*x[50]+0.01*x[51] == 0.86)
@constraint(m, e9, 0.62*x[2]+0.15*x[3]+0.47*x[4]-0.98*x[5]+0.57*x[6]+0.66*x[7]-0.29*x[8]-0.32*x[9]+0.74*x[10]-0.97*x[11]+0.41*x[12]+0.79*x[13]-0.3*x[14]-0.45*x[15]+0.41*x[16]+0.65*x[17]+0.96*x[18]+0.86*x[19]-0.07*x[20]-0.8*x[21]-0.14*x[22]-0.8*x[23]-0.44*x[24]+0.35*x[25]-0.41*x[26]+0.76*x[27]+0.43*x[28]-0.21*x[29]+0.15*x[30]+0.38*x[31]-0.5*x[32]-0.67*x[33]+0.61*x[34]+0.22*x[35]-0.91*x[36]-0.65*x[37]-0.03*x[38]-0.96*x[39]+0.75*x[40]-0.89*x[41]+0.15*x[42]-0.95*x[43]-0.44*x[44]+0.07*x[45]+0.68*x[46]-0.41*x[47]+0.24*x[48]+0.27*x[49]-0.12*x[50]+0.56*x[51] == -0.37)
@constraint(m, e10, -0.83*x[2]+0.9*x[3]+0.26*x[4]-0.51*x[5]+0.92*x[6]+0.06*x[7]-0.96*x[8]-0.94*x[9]+0.39*x[10]-0.72*x[11]+0.47*x[12]+0.92*x[13]+0.15*x[14]-0.75*x[15]+0.08*x[16]-0.25*x[17]+0.96*x[18]-0.82*x[19]-x[20]+0.37*x[21]-0.62*x[22]-0.15*x[23]-0.11*x[24]+0.06*x[25]+0.39*x[26]+0.41*x[27]-0.68*x[28]-0.62*x[29]-0.19*x[30]-0.66*x[31]+0.94*x[32]+0.21*x[33]+0.32*x[34]-0.35*x[35]-0.1*x[36]-0.98*x[37]+0.13*x[38]+0.48*x[39]+0.29*x[40]-0.12*x[41]-0.47*x[42]-0.6*x[43]+0.56*x[44]+0.95*x[45]+0.34*x[46]-0.29*x[47]+0.56*x[48]+0.83*x[49]-0.45*x[50]-0.05*x[51] == -0.71)
@constraint(m, e11, 0.28*x[2]-0.1*x[3]+0.56*x[4]-0.88*x[5]-0.33*x[6]-0.35*x[7]-0.23*x[8]-0.39*x[9]-0.95*x[10]-0.54*x[11]-0.94*x[12]-0.83*x[13]+0.76*x[14]+0.8*x[15]+0.21*x[16]+0.38*x[17]-0.95*x[18]-0.66*x[19]-0.79*x[20]+0.14*x[21]-0.3*x[22]+0.92*x[23]+0.75*x[24]-0.01*x[25]+0.39*x[26]-0.15*x[27]-0.64*x[28]+0.95*x[29]+0.22*x[30]+0.22*x[31]-0.89*x[32]+0.2*x[33]+0.81*x[34]-0.02*x[35]-0.57*x[36]-0.12*x[37]+0.97*x[38]-0.55*x[39]-0.82*x[40]-0.9*x[41]-0.99*x[42]+0.14*x[43]+0.57*x[44]+0.82*x[45]+0.75*x[46]-0.67*x[47]-0.17*x[48]-0.81*x[49]-0.62*x[50]-0.13*x[51] == -0.11)
@constraint(m, e12, 0.27*x[2]-0.78*x[3]+0.38*x[4]+0.5*x[5]+0.72*x[6]+0.66*x[7]-0.61*x[8]-0.83*x[9]+0.48*x[10]-0.62*x[11]+0.94*x[12]-0.65*x[13]-0.5*x[14]-0.48*x[15]+0.79*x[16]+0.77*x[17]+0.41*x[18]+0.86*x[19]-0.33*x[20]+0.53*x[21]-0.59*x[22]-0.03*x[23]+0.17*x[24]+0.4*x[25]-0.29*x[26]-0.83*x[27]-0.85*x[28]+0.46*x[29]+0.45*x[30]-0.74*x[31]+0.2*x[32]+0.32*x[33]-0.21*x[34]-0.06*x[35]+0.34*x[36]-0.63*x[37]-0.88*x[38]-0.55*x[39]+0.23*x[40]+0.18*x[41]-0.08*x[42]+0.96*x[43]+0.07*x[44]-0.79*x[45]-0.27*x[46]-0.96*x[47]-0.98*x[48]-0.98*x[49]+0.51*x[50]-0.26*x[51] == 0.38)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.