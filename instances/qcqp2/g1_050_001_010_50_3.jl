using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)
setupperbound(x[31], 1.0)
setupperbound(x[32], 1.0)
setupperbound(x[33], 1.0)
setupperbound(x[34], 1.0)
setupperbound(x[35], 1.0)
setupperbound(x[36], 1.0)
setupperbound(x[37], 1.0)
setupperbound(x[38], 1.0)
setupperbound(x[39], 1.0)
setupperbound(x[40], 1.0)
setupperbound(x[41], 1.0)
setupperbound(x[42], 1.0)
setupperbound(x[43], 1.0)
setupperbound(x[44], 1.0)
setupperbound(x[45], 1.0)
setupperbound(x[46], 1.0)
setupperbound(x[47], 1.0)
setupperbound(x[48], 1.0)
setupperbound(x[49], 1.0)
setupperbound(x[50], 1.0)
setupperbound(x[51], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.46*x[2]*x[5]-0.6*x[2]*x[10]-1.84*x[2]*x[11]-1.7*x[2]*x[13]-0.56*x[2]*x[14]-0.16*x[2]*x[18]-0.9*x[2]*x[19]+1.5*x[2]*x[22]+0.44*x[2]*x[23]-1.96*x[2]*x[25]+0.58*x[2]*x[26]-1.82*x[2]*x[28]-0.9*x[2]*x[30]-1.02*x[2]*x[34]+1.44*x[2]*x[36]-1.44*x[2]*x[39]+0.62*x[2]*x[40]+1.1*x[2]*x[41]-1.7*x[2]*x[43]-1.12*x[2]*x[44]+0.54*x[2]*x[46]+1.26*x[2]*x[48]+1.96*x[2]*x[50]-0.46*x[2]*x[51]+0.34*x[3]*x[10]-0.06*x[3]*x[5]-0.68*x[3]*x[12]+1.38*x[3]*x[13]+1.18*x[3]*x[14]-0.32*x[3]*x[17]-1.66*x[3]*x[19]+1.48*x[3]*x[20]+x[3]*x[25]-1.48*x[3]*x[37]-1.44*x[3]*x[38]-1.96*x[3]*x[39]-1.7*x[3]*x[40]-0.4*x[3]*x[42]-0.6*x[3]*x[43]+1.22*x[3]*x[46]+1.88*x[3]*x[48]+0.9*x[3]*x[49]+0.4*x[3]*x[50]+1.82*x[4]*x[6]-0.02*x[4]*x[5]+0.68*x[4]*x[8]-0.28*x[4]*x[11]+1.66*x[4]*x[14]+1.42*x[4]*x[15]+1.06*x[4]*x[19]-1.94*x[4]*x[20]-0.66*x[4]*x[21]+1.6*x[4]*x[22]-0.34*x[4]*x[24]-0.24*x[4]*x[27]-1.54*x[4]*x[28]+0.3*x[4]*x[29]-0.74*x[4]*x[33]+0.3*x[4]*x[37]-0.72*x[4]*x[38]+0.24*x[4]*x[39]+0.16*x[4]*x[44]+0.64*x[4]*x[46]-0.1*x[4]*x[48]+1.28*x[4]*x[49]-0.24*x[4]*x[50]+0.76*x[5]*x[10]-1.1*x[5]*x[8]-1.44*x[5]*x[11]+1.7*x[5]*x[13]+1.1*x[5]*x[15]+0.36*x[5]*x[16]-0.32*x[5]*x[19]+0.8*x[5]*x[22]-0.46*x[5]*x[25]+1.72*x[5]*x[29]-0.68*x[5]*x[37]+0.5*x[5]*x[38]-1.34*x[5]*x[41]-1.18*x[5]*x[42]+0.08*x[5]*x[45]+0.78*x[5]*x[46]+0.82*x[5]*x[47]-0.9*x[5]*x[48]+1.92*x[5]*x[51]+0.06*x[6]*x[9]-1.38*x[6]*x[11]+0.06*x[6]*x[12]+1.04*x[6]*x[13]-1.32*x[6]*x[15]+0.96*x[6]*x[19]+1.24*x[6]*x[23]+1.38*x[6]*x[25]-0.74*x[6]*x[26]-1.48*x[6]*x[27]-1.96*x[6]*x[29]-1.6*x[6]*x[30]-1.5*x[6]*x[34]+0.04*x[6]*x[35]-1.28*x[6]*x[37]+1.16*x[6]*x[38]-1.7*x[6]*x[39]-1.96*x[6]*x[42]-1.08*x[6]*x[45]+0.32*x[6]*x[47]-1.46*x[6]*x[48]-0.44*x[6]*x[49]-0.36*x[6]*x[50]+1.5*x[7]*x[12]-1.8*x[7]*x[9]+1.84*x[7]*x[13]-1.2*x[7]*x[15]-1.42*x[7]*x[16]-1.42*x[7]*x[17]-0.6*x[7]*x[18]-0.92*x[7]*x[19]+1.38*x[7]*x[20]+1.02*x[7]*x[22]+0.1*x[7]*x[23]+1.34*x[7]*x[24]+1.5*x[7]*x[25]+1.26*x[7]*x[26]+1.86*x[7]*x[30]-0.02*x[7]*x[33]+0.64*x[7]*x[34]-1.46*x[7]*x[38]+0.52*x[7]*x[39]+1.28*x[7]*x[40]-0.28*x[7]*x[41]+0.24*x[7]*x[42]-1.28*x[7]*x[43]+1.98*x[7]*x[44]-0.24*x[7]*x[45]-0.1*x[7]*x[46]+0.54*x[8]*x[12]-0.26*x[8]*x[9]+0.32*x[8]*x[14]+1.7*x[8]*x[18]-0.04*x[8]*x[19]+0.24*x[8]*x[20]-0.16*x[8]*x[23]-0.68*x[8]*x[27]-1.98*x[8]*x[29]-1.14*x[8]*x[30]+1.44*x[8]*x[35]-1.64*x[8]*x[39]+1.38*x[8]*x[40]-1.74*x[8]*x[43]-0.58*x[8]*x[44]-1.42*x[8]*x[45]-1.88*x[8]*x[46]+1.28*x[8]*x[47]-0.06*x[8]*x[48]-1.8*x[8]*x[51]+1.14*x[9]*x[14]-1.38*x[9]*x[15]-1.34*x[9]*x[16]+0.26*x[9]*x[18]-0.68*x[9]*x[19]-1.42*x[9]*x[24]-0.6*x[9]*x[28]-1.06*x[9]*x[29]-1.8*x[9]*x[35]-1.26*x[9]*x[36]-1.48*x[9]*x[37]-0.64*x[9]*x[40]-1.24*x[9]*x[41]+0.58*x[9]*x[43]+0.22*x[9]*x[49]-1.82*x[9]*x[50]+0.08*x[10]*x[11]+1.96*x[10]*x[13]-0.52*x[10]*x[16]+0.66*x[10]*x[17]+0.74*x[10]*x[19]+0.54*x[10]*x[20]+1.94*x[10]*x[21]-0.76*x[10]*x[24]+0.86*x[10]*x[25]-0.02*x[10]*x[31]-1.6*x[10]*x[32]+0.12*x[10]*x[35]-1.7*x[10]*x[38]-0.9*x[10]*x[39]-0.06*x[10]*x[40]+1.7*x[10]*x[42]+x[10]*x[44]-0.22*x[10]*x[46]+0.8*x[10]*x[47]-1.22*x[10]*x[49]+1.66*x[10]*x[51]+1.52*x[11]*x[12]-0.26*x[11]*x[14]-1.16*x[11]*x[16]-1.38*x[11]*x[18]+1.5*x[11]*x[21]+1.96*x[11]*x[22]+0.68*x[11]*x[23]+1.88*x[11]*x[24]+0.74*x[11]*x[28]+1.86*x[11]*x[32]-1.12*x[11]*x[33]+1.76*x[11]*x[34]-0.7*x[11]*x[37]-1.8*x[11]*x[41]+0.28*x[11]*x[47]-1.54*x[11]*x[49]+0.12*x[11]*x[51]+(-0.68*x[12]*x[17])-0.84*x[12]*x[21]+1.84*x[12]*x[23]-1.12*x[12]*x[24]+0.32*x[12]*x[25]+1.48*x[12]*x[26]+1.4*x[12]*x[27]+0.52*x[12]*x[28]-1.86*x[12]*x[31]-0.42*x[12]*x[34]-1.2*x[12]*x[40]+0.5*x[12]*x[41]+0.24*x[12]*x[43]+1.94*x[12]*x[44]+0.98*x[12]*x[45]+1.96*x[12]*x[46]-0.02*x[12]*x[48]+0.96*x[12]*x[50]+1.2*x[13]*x[14]-1.18*x[13]*x[15]-0.42*x[13]*x[17]-1.72*x[13]*x[22]+0.38*x[13]*x[25]+1.44*x[13]*x[26]-1.78*x[13]*x[31]-0.26*x[13]*x[32]+1.42*x[13]*x[33]+1.56*x[13]*x[34]-1.78*x[13]*x[36]-0.88*x[13]*x[39]-1.18*x[13]*x[40]-1.36*x[13]*x[44]-0.32*x[13]*x[45]-1.96*x[13]*x[46]-1.12*x[13]*x[47]-0.42*x[13]*x[48]+0.58*x[14]*x[16]+1.2*x[14]*x[20]+0.76*x[14]*x[21]+0.22*x[14]*x[22]+0.18*x[14]*x[24]+1.72*x[14]*x[25]-1.52*x[14]*x[29]+0.5*x[14]*x[30]+0.66*x[14]*x[31]-0.02*x[14]*x[35]+0.76*x[14]*x[38]-0.08*x[14]*x[39]+1.78*x[14]*x[40]+1.62*x[14]*x[41]+0.52*x[14]*x[42]+0.34*x[14]*x[43]-1.38*x[14]*x[44]-0.9*x[14]*x[47]+1.6*x[14]*x[48]+0.56*x[14]*x[49]+0.48*x[14]*x[50]+1.1*x[15]*x[18]-1.48*x[15]*x[23]-0.1*x[15]*x[24]-0.7*x[15]*x[25]-0.58*x[15]*x[27]-0.44*x[15]*x[29]-1.9*x[15]*x[33]+0.46*x[15]*x[37]-0.48*x[15]*x[39]-1.06*x[15]*x[41]-1.98*x[15]*x[42]+1.96*x[15]*x[47]+0.24*x[15]*x[49]+1.38*x[16]*x[18]-0.78*x[16]*x[20]-1.3*x[16]*x[23]+0.56*x[16]*x[25]-0.52*x[16]*x[27]+1.02*x[16]*x[29]-x[16]*x[30]+1.02*x[16]*x[31]-0.4*x[16]*x[38]-1.58*x[16]*x[39]-1.8*x[16]*x[41]-1.38*x[16]*x[42]-0.08*x[16]*x[43]+0.68*x[17]*x[21]+1.14*x[17]*x[22]+1.52*x[17]*x[24]+0.84*x[17]*x[27]-0.42*x[17]*x[29]+1.5*x[17]*x[34]+1.46*x[17]*x[35]+1.84*x[17]*x[38]+0.58*x[17]*x[41]+1.38*x[17]*x[42]+1.78*x[17]*x[44]-0.82*x[17]*x[45]+1.5*x[17]*x[48]+0.98*x[17]*x[49]+0.14*x[17]*x[50]+1.56*x[18]*x[20]+1.76*x[18]*x[22]+0.08*x[18]*x[26]-1.66*x[18]*x[27]-0.5*x[18]*x[28]-1.08*x[18]*x[30]+0.62*x[18]*x[32]+0.36*x[18]*x[36]-0.06*x[18]*x[37]-0.78*x[18]*x[42]+1.6*x[18]*x[44]-1.34*x[18]*x[46]+1.52*x[18]*x[47]-1.84*x[18]*x[48]+1.68*x[19]*x[20]-0.24*x[19]*x[22]+1.54*x[19]*x[24]-1.24*x[19]*x[25]+1.08*x[19]*x[26]-0.66*x[19]*x[28]+1.92*x[19]*x[29]+1.18*x[19]*x[30]+0.26*x[19]*x[31]+0.76*x[19]*x[34]-0.32*x[19]*x[35]+1.84*x[19]*x[36]-0.4*x[19]*x[37]-1.88*x[19]*x[39]-1.34*x[19]*x[41]-1.84*x[19]*x[42]-0.16*x[19]*x[44]+1.84*x[19]*x[45]-0.14*x[19]*x[46]-1.98*x[19]*x[48]-0.7*x[19]*x[49]+1.7*x[19]*x[50]+(-0.9*x[20]*x[21])-1.04*x[20]*x[22]-0.22*x[20]*x[23]+1.74*x[20]*x[25]-1.78*x[20]*x[29]+0.96*x[20]*x[32]+0.8*x[20]*x[33]+1.6*x[20]*x[35]-1.68*x[20]*x[36]+1.82*x[20]*x[37]+0.7*x[20]*x[40]+0.2*x[20]*x[41]+0.52*x[20]*x[42]+1.12*x[20]*x[49]-0.94*x[20]*x[50]+0.2*x[21]*x[22]-0.98*x[21]*x[24]+1.56*x[21]*x[27]+0.76*x[21]*x[28]-0.52*x[21]*x[30]-1.44*x[21]*x[32]+1.72*x[21]*x[34]-1.6*x[21]*x[36]-1.6*x[21]*x[37]-1.7*x[21]*x[38]+0.14*x[21]*x[39]+1.92*x[21]*x[41]-0.12*x[21]*x[46]+1.82*x[21]*x[47]-0.86*x[21]*x[49]-0.2*x[21]*x[50]-0.08*x[21]*x[51]+1.46*x[22]*x[24]-0.68*x[22]*x[33]-0.6*x[22]*x[34]+0.78*x[22]*x[35]+1.38*x[22]*x[37]-0.62*x[22]*x[39]+1.52*x[22]*x[41]+0.68*x[22]*x[42]-0.1*x[22]*x[44]-1.88*x[22]*x[46]+1.72*x[23]*x[25]-0.32*x[23]*x[24]+0.88*x[23]*x[26]+1.54*x[23]*x[28]-1.62*x[23]*x[30]+0.42*x[23]*x[31]+1.12*x[23]*x[32]-0.86*x[23]*x[34]+0.5*x[23]*x[37]-1.46*x[23]*x[38]-1.24*x[23]*x[40]-1.28*x[23]*x[42]-0.28*x[23]*x[45]+1.68*x[23]*x[48]+1.46*x[23]*x[50]-0.9*x[23]*x[51]+1.2*x[24]*x[27]-0.84*x[24]*x[25]+0.7*x[24]*x[29]-1.28*x[24]*x[30]-1.7*x[24]*x[31]+1.5*x[24]*x[34]+0.52*x[24]*x[36]-1.6*x[24]*x[37]-0.22*x[24]*x[38]+1.48*x[24]*x[40]+0.12*x[24]*x[42]+0.14*x[24]*x[43]-0.88*x[24]*x[45]+0.5*x[24]*x[46]-0.16*x[24]*x[47]+0.9*x[24]*x[49]-0.24*x[24]*x[50]+1.2*x[24]*x[51]+(-1.78*x[25]*x[27])-1.12*x[25]*x[29]+1.84*x[25]*x[31]-0.26*x[25]*x[33]-0.32*x[25]*x[34]-1.84*x[25]*x[35]-1.94*x[25]*x[36]-1.24*x[25]*x[37]-1.86*x[25]*x[40]+0.18*x[25]*x[41]+0.4*x[25]*x[44]+0.46*x[25]*x[46]+1.56*x[25]*x[47]+0.8*x[25]*x[49]+1.62*x[26]*x[31]-0.7*x[26]*x[28]-1.7*x[26]*x[32]+0.96*x[26]*x[33]-0.16*x[26]*x[34]+0.78*x[26]*x[35]+1.94*x[26]*x[42]+1.96*x[26]*x[43]+0.64*x[26]*x[46]-0.44*x[26]*x[47]+1.96*x[26]*x[48]+0.52*x[27]*x[28]+1.78*x[27]*x[30]-0.18*x[27]*x[31]-1.96*x[27]*x[32]+0.52*x[27]*x[35]-1.48*x[27]*x[36]+1.32*x[27]*x[42]-0.96*x[27]*x[43]+1.74*x[27]*x[45]+0.18*x[27]*x[47]-1.18*x[27]*x[49]-1.7*x[27]*x[50]+0.12*x[28]*x[29]-0.96*x[28]*x[30]+0.52*x[28]*x[34]-x[28]*x[35]+1.02*x[28]*x[36]+0.1*x[28]*x[37]-0.02*x[28]*x[40]+1.24*x[28]*x[44]+0.76*x[28]*x[45]+0.1*x[28]*x[46]-1.16*x[28]*x[48]+0.14*x[28]*x[51]+0.5*x[29]*x[32]+0.62*x[29]*x[33]-0.3*x[29]*x[35]-0.7*x[29]*x[36]+0.9*x[29]*x[37]+1.68*x[29]*x[39]-1.18*x[29]*x[40]-1.2*x[29]*x[41]-1.44*x[29]*x[42]+1.98*x[29]*x[43]+1.7*x[29]*x[47]+0.16*x[29]*x[48]-1.04*x[29]*x[49]+1.94*x[29]*x[50]+1.22*x[30]*x[35]-0.96*x[30]*x[34]+0.4*x[30]*x[36]-1.62*x[30]*x[37]-0.76*x[30]*x[43]-1.98*x[30]*x[44]+1.2*x[30]*x[45]-0.56*x[30]*x[50]+1.12*x[30]*x[51]+(-1.78*x[31]*x[32])-0.36*x[31]*x[34]+0.52*x[31]*x[36]+1.16*x[31]*x[43]+1.5*x[31]*x[44]-1.6*x[31]*x[45]-0.16*x[31]*x[51]+1.14*x[32]*x[33]-0.6*x[32]*x[35]+1.04*x[32]*x[41]+1.32*x[32]*x[42]-1.2*x[32]*x[43]-1.72*x[32]*x[44]+1.9*x[32]*x[45]-1.1*x[32]*x[48]-0.84*x[32]*x[50]+1.54*x[33]*x[34]+0.68*x[33]*x[35]-0.62*x[33]*x[36]-1.06*x[33]*x[37]-0.1*x[33]*x[39]-1.94*x[33]*x[41]+1.46*x[33]*x[42]+1.3*x[33]*x[45]-1.14*x[33]*x[46]-1.44*x[33]*x[48]-0.3*x[33]*x[49]-1.9*x[33]*x[51]+0.8*x[34]*x[35]-0.34*x[34]*x[37]+0.16*x[34]*x[38]-0.54*x[34]*x[40]+1.7*x[34]*x[41]+1.56*x[34]*x[42]+1.82*x[34]*x[44]+0.16*x[34]*x[45]-2*x[34]*x[47]+(-1.42*x[35]*x[36])-0.34*x[35]*x[39]-1.82*x[35]*x[41]-1.32*x[35]*x[45]+1.68*x[35]*x[46]+0.1*x[35]*x[47]+1.4*x[35]*x[49]+0.12*x[35]*x[51]+0.1*x[36]*x[39]-0.48*x[36]*x[38]+1.42*x[36]*x[45]-0.02*x[36]*x[46]+1.66*x[36]*x[48]-1.84*x[36]*x[49]+0.22*x[36]*x[51]+0.74*x[37]*x[39]-0.76*x[37]*x[38]+0.68*x[37]*x[41]-0.78*x[37]*x[42]+0.1*x[37]*x[46]+0.22*x[37]*x[47]-0.92*x[37]*x[48]+1.14*x[37]*x[49]+1.66*x[37]*x[51]+1.52*x[38]*x[39]+1.28*x[38]*x[40]-1.6*x[38]*x[41]+0.34*x[38]*x[42]+0.08*x[38]*x[43]+1.78*x[38]*x[45]+1.08*x[38]*x[46]+0.26*x[38]*x[48]+0.28*x[39]*x[43]+0.9*x[39]*x[44]-1.14*x[39]*x[48]+0.64*x[39]*x[50]+0.4*x[39]*x[51]+1.24*x[40]*x[42]+1.62*x[40]*x[43]+1.64*x[40]*x[46]-0.42*x[40]*x[49]+(-0.14*x[41]*x[42])-0.94*x[41]*x[46]+1.66*x[41]*x[47]-0.86*x[41]*x[48]+0.18*x[41]*x[51]+0.86*x[42]*x[43]+1.34*x[42]*x[47]+0.14*x[42]*x[50]+1.16*x[43]*x[45]+1.52*x[43]*x[46]+0.5*x[43]*x[47]-2*x[43]*x[48]+1.4*x[43]*x[49]+0.02*x[43]*x[50]+(-0.8*x[44]*x[45])-1.18*x[44]*x[46]-0.82*x[44]*x[47]-1.3*x[44]*x[50]+0.72*x[44]*x[51]+(-1.44*x[45]*x[46])-0.56*x[45]*x[48]-1.08*x[45]*x[50]+1.72*x[45]*x[51]+1.72*x[46]*x[47]+2*x[46]*x[48]-0.24*x[46]*x[51]+(-0.36*x[47]*x[50])-1.36*x[47]*x[51]+1.52*x[48]*x[49]-1.76*x[48]*x[50]+0.62*x[49]*x[50]+(-0.27*x[2]*x[2])-0.45*x[3]*x[3]-0.45*x[4]*x[4]+0.67*x[5]*x[5]-0.56*x[6]*x[6]+0.71*x[9]*x[9]-0.78*x[10]*x[10]+0.32*x[11]*x[11]+0.43*x[12]*x[12]-0.71*x[13]*x[13]-0.11*x[15]*x[15]-0.16*x[19]*x[19]-0.19*x[22]*x[22]+0.13*x[25]*x[25]-0.44*x[26]*x[26]+0.49*x[27]*x[27]+0.01*x[30]*x[30]-0.65*x[33]*x[33]+0.29*x[34]*x[34]+0.42*x[36]*x[36]+0.83*x[37]*x[37]+0.96*x[41]*x[41]-0.65*x[47]*x[47]-0.27*x[49]*x[49]+0.85*x[51]*x[51]-0.71*x[2]+0.61*x[3]+0.46*x[4]-0.82*x[5]-0.05*x[6]+0.62*x[7]-0.97*x[8]+0.75*x[9]+0.44*x[10]-0.85*x[11]+0.22*x[12]-0.25*x[13]-0.32*x[14]+0.42*x[15]-0.47*x[16]-0.74*x[17]+0.57*x[18]-0.02*x[19]+0.04*x[20]+0.1*x[21]-0.49*x[22]-0.03*x[23]-0.04*x[24]+0.83*x[25]-0.82*x[26]+0.25*x[27]-0.38*x[28]+0.73*x[29]-0.07*x[30]+0.17*x[31]-0.5*x[32]-0.65*x[33]+0.08*x[34]-0.12*x[35]+0.38*x[36]+0.3*x[37]+0.05*x[38]-0.93*x[39]+0.12*x[40]+0.7*x[41]-0.11*x[42]-0.14*x[43]-0.45*x[44]-0.29*x[45]-0.65*x[46]+0.4*x[47]-0.86*x[48]-0.22*x[49]+0.08*x[50]+0.4*x[51])+x[1] == 0.0)
@NLconstraint(m, e2, 0.58*x[2]*x[3]+1.66*x[2]*x[4]-0.74*x[2]*x[5]+0.04*x[2]*x[7]+0.56*x[2]*x[8]+1.58*x[2]*x[9]+0.82*x[2]*x[13]+0.5*x[2]*x[16]-0.08*x[2]*x[17]-0.54*x[2]*x[21]-0.98*x[2]*x[22]+1.54*x[2]*x[23]+x[2]*x[24]-1.78*x[2]*x[27]-1.46*x[2]*x[29]-0.46*x[2]*x[30]+0.24*x[2]*x[32]-1.02*x[2]*x[38]+0.38*x[2]*x[40]+1.8*x[2]*x[41]+0.44*x[2]*x[43]+0.08*x[2]*x[44]-0.34*x[2]*x[46]-0.24*x[2]*x[48]-0.28*x[2]*x[49]-0.38*x[2]*x[50]-1.46*x[2]*x[51]+(-1.86*x[3]*x[5])-1.28*x[3]*x[6]-1.5*x[3]*x[12]+0.12*x[3]*x[13]+1.02*x[3]*x[15]+1.2*x[3]*x[16]+1.2*x[3]*x[17]-0.32*x[3]*x[19]-1.2*x[3]*x[20]+1.06*x[3]*x[21]-0.74*x[3]*x[22]+1.62*x[3]*x[23]-1.76*x[3]*x[26]+0.3*x[3]*x[28]-0.76*x[3]*x[29]-0.12*x[3]*x[31]+0.62*x[3]*x[35]-0.38*x[3]*x[37]+1.12*x[3]*x[38]-1.88*x[3]*x[39]-1.5*x[3]*x[40]-1.8*x[3]*x[41]-1.7*x[3]*x[42]+0.74*x[3]*x[43]-0.42*x[3]*x[45]+1.7*x[3]*x[47]+1.18*x[3]*x[48]+1.02*x[4]*x[5]-0.14*x[4]*x[6]-0.48*x[4]*x[14]+1.5*x[4]*x[15]-0.94*x[4]*x[17]-0.02*x[4]*x[19]+1.94*x[4]*x[20]-1.12*x[4]*x[21]+1.18*x[4]*x[22]+1.58*x[4]*x[23]-1.7*x[4]*x[26]-1.56*x[4]*x[28]-0.36*x[4]*x[30]-1.4*x[4]*x[32]-1.1*x[4]*x[33]-0.38*x[4]*x[36]-0.88*x[4]*x[37]-1.14*x[4]*x[39]+1.04*x[4]*x[41]-1.98*x[4]*x[45]+1.16*x[4]*x[46]-0.42*x[4]*x[48]-0.4*x[4]*x[49]+0.26*x[4]*x[50]-0.4*x[4]*x[51]+0.06*x[5]*x[6]+1.26*x[5]*x[8]-0.94*x[5]*x[11]-1.74*x[5]*x[13]-0.18*x[5]*x[14]-0.56*x[5]*x[15]-0.38*x[5]*x[16]-1.28*x[5]*x[22]+1.98*x[5]*x[25]-0.36*x[5]*x[26]+1.16*x[5]*x[28]-0.24*x[5]*x[29]+1.1*x[5]*x[32]+0.76*x[5]*x[34]-0.42*x[5]*x[35]+1.28*x[5]*x[36]-0.58*x[5]*x[37]+0.98*x[5]*x[42]-1.3*x[5]*x[44]-0.46*x[5]*x[47]-1.46*x[5]*x[48]-0.14*x[5]*x[50]+0.8*x[6]*x[9]-1.32*x[6]*x[8]-0.28*x[6]*x[10]+0.8*x[6]*x[13]-0.46*x[6]*x[15]-1.82*x[6]*x[16]-0.76*x[6]*x[19]+1.26*x[6]*x[20]+0.54*x[6]*x[22]+0.66*x[6]*x[23]+1.4*x[6]*x[24]-0.36*x[6]*x[26]+1.48*x[6]*x[31]-0.72*x[6]*x[33]-0.46*x[6]*x[34]-1.72*x[6]*x[35]-1.42*x[6]*x[36]-1.86*x[6]*x[38]+1.08*x[6]*x[39]+1.04*x[6]*x[40]-1.52*x[6]*x[41]+1.22*x[6]*x[42]-1.08*x[6]*x[44]-0.22*x[6]*x[47]+1.2*x[6]*x[50]+(-0.44*x[7]*x[8])-0.16*x[7]*x[9]+1.86*x[7]*x[10]+0.74*x[7]*x[12]+0.68*x[7]*x[19]-1.56*x[7]*x[20]-0.82*x[7]*x[23]+1.28*x[7]*x[25]+0.78*x[7]*x[27]-1.84*x[7]*x[30]-1.56*x[7]*x[31]+1.74*x[7]*x[33]+1.04*x[7]*x[40]+1.5*x[7]*x[43]-0.4*x[7]*x[45]-0.78*x[7]*x[46]+0.5*x[8]*x[9]+1.98*x[8]*x[10]+0.88*x[8]*x[14]+0.04*x[8]*x[15]-1.66*x[8]*x[19]-0.2*x[8]*x[20]+1.32*x[8]*x[22]-0.3*x[8]*x[23]-0.1*x[8]*x[26]-0.5*x[8]*x[28]+1.36*x[8]*x[29]-0.1*x[8]*x[30]+0.92*x[8]*x[33]-0.06*x[8]*x[34]+0.04*x[8]*x[35]-1.08*x[8]*x[39]-0.9*x[8]*x[42]-0.64*x[8]*x[43]-0.16*x[8]*x[46]-1.22*x[8]*x[47]-1.82*x[8]*x[49]-0.54*x[8]*x[50]-0.7*x[8]*x[51]+0.24*x[9]*x[13]-0.64*x[9]*x[12]+0.94*x[9]*x[14]-1.28*x[9]*x[16]+1.04*x[9]*x[17]-1.12*x[9]*x[18]+0.98*x[9]*x[22]+0.12*x[9]*x[23]+0.26*x[9]*x[24]-0.38*x[9]*x[25]-1.04*x[9]*x[28]-0.64*x[9]*x[30]-1.16*x[9]*x[32]-1.6*x[9]*x[33]-0.38*x[9]*x[34]-0.78*x[9]*x[37]+0.3*x[9]*x[40]-1.06*x[9]*x[43]+0.78*x[9]*x[45]+0.36*x[9]*x[46]+1.6*x[9]*x[47]+(-0.68*x[10]*x[12])-1.94*x[10]*x[13]-1.08*x[10]*x[16]-1.46*x[10]*x[18]-1.2*x[10]*x[20]-1.5*x[10]*x[23]-1.76*x[10]*x[24]-1.78*x[10]*x[31]-0.68*x[10]*x[33]-0.74*x[10]*x[35]-0.56*x[10]*x[38]+0.58*x[10]*x[39]-0.22*x[10]*x[41]+1.48*x[10]*x[42]+0.4*x[10]*x[43]+0.3*x[10]*x[44]+1.22*x[10]*x[46]-0.14*x[10]*x[47]-1.72*x[10]*x[48]+2*x[10]*x[50]-0.22*x[10]*x[51]+0.18*x[11]*x[13]-0.52*x[11]*x[14]-0.8*x[11]*x[17]+0.82*x[11]*x[18]+0.16*x[11]*x[21]+0.14*x[11]*x[24]+0.7*x[11]*x[25]+0.36*x[11]*x[30]-0.08*x[11]*x[32]-1.74*x[11]*x[33]+1.06*x[11]*x[34]-1.66*x[11]*x[41]+0.54*x[11]*x[42]+1.2*x[11]*x[43]-1.68*x[11]*x[45]-1.24*x[11]*x[46]-0.9*x[11]*x[47]-0.72*x[11]*x[48]-1.22*x[11]*x[50]+0.46*x[12]*x[15]+1.2*x[12]*x[16]-0.48*x[12]*x[17]-1.98*x[12]*x[18]-0.1*x[12]*x[22]+1.68*x[12]*x[24]-0.3*x[12]*x[25]-0.74*x[12]*x[27]-0.78*x[12]*x[28]-1.56*x[12]*x[37]-0.08*x[12]*x[39]+0.2*x[12]*x[40]-0.38*x[12]*x[43]+1.68*x[12]*x[44]-1.14*x[12]*x[45]-1.86*x[12]*x[47]-1.82*x[12]*x[48]+1.42*x[12]*x[50]+1.4*x[13]*x[14]-0.68*x[13]*x[15]+1.9*x[13]*x[16]-1.54*x[13]*x[23]+1.26*x[13]*x[24]-0.18*x[13]*x[25]-1.82*x[13]*x[26]+0.64*x[13]*x[27]-0.62*x[13]*x[29]-1.38*x[13]*x[34]-1.78*x[13]*x[37]-1.9*x[13]*x[43]+0.8*x[13]*x[44]-1.9*x[13]*x[46]-1.62*x[13]*x[49]+1.9*x[13]*x[50]+1.04*x[13]*x[51]+(-0.72*x[14]*x[15])-0.58*x[14]*x[16]-0.92*x[14]*x[21]-0.54*x[14]*x[22]+1.56*x[14]*x[23]-0.66*x[14]*x[24]-1.4*x[14]*x[26]+0.96*x[14]*x[30]+0.62*x[14]*x[32]+0.98*x[14]*x[33]+1.16*x[14]*x[34]+0.64*x[14]*x[35]+1.2*x[14]*x[37]-1.5*x[14]*x[38]-1.68*x[14]*x[39]+0.5*x[14]*x[40]+1.52*x[14]*x[42]+0.04*x[14]*x[43]-1.38*x[14]*x[44]-1.5*x[14]*x[50]+1.96*x[14]*x[51]+1.36*x[15]*x[16]+0.96*x[15]*x[17]+1.34*x[15]*x[18]-1.24*x[15]*x[19]-1.78*x[15]*x[21]+0.72*x[15]*x[22]+1.86*x[15]*x[24]-0.2*x[15]*x[26]+1.44*x[15]*x[28]+1.48*x[15]*x[31]+1.82*x[15]*x[34]+1.56*x[15]*x[39]-0.18*x[15]*x[40]+0.6*x[15]*x[42]+1.36*x[15]*x[43]+0.24*x[15]*x[45]-0.78*x[15]*x[46]-0.04*x[15]*x[47]+0.14*x[15]*x[48]+0.84*x[15]*x[49]-1.84*x[15]*x[50]+(-0.38*x[16]*x[17])-1.84*x[16]*x[18]-1.02*x[16]*x[19]+2*x[16]*x[20]-1.02*x[16]*x[22]-1.4*x[16]*x[24]+0.42*x[16]*x[25]+1.54*x[16]*x[27]-1.54*x[16]*x[29]+1.98*x[16]*x[30]+1.1*x[16]*x[32]-0.88*x[16]*x[34]+0.92*x[16]*x[40]+0.88*x[16]*x[41]-1.66*x[16]*x[42]-0.78*x[16]*x[44]-1.56*x[16]*x[45]-0.1*x[16]*x[47]-0.6*x[16]*x[50]+0.34*x[16]*x[51]+1.56*x[17]*x[18]-0.76*x[17]*x[19]-0.02*x[17]*x[20]-1.92*x[17]*x[21]-0.06*x[17]*x[25]-1.68*x[17]*x[27]+1.3*x[17]*x[28]+1.84*x[17]*x[29]+1.14*x[17]*x[31]+1.82*x[17]*x[37]+1.22*x[17]*x[38]-0.8*x[17]*x[39]+0.8*x[17]*x[40]-1.52*x[17]*x[42]+1.18*x[17]*x[43]-0.18*x[17]*x[50]-0.92*x[17]*x[51]+1.12*x[18]*x[21]+0.68*x[18]*x[23]-0.76*x[18]*x[24]-0.22*x[18]*x[25]+1.68*x[18]*x[26]-1.04*x[18]*x[34]-0.98*x[18]*x[36]-0.78*x[18]*x[38]-1.08*x[18]*x[41]+1.36*x[18]*x[43]-1.12*x[18]*x[50]-0.44*x[18]*x[51]+0.78*x[19]*x[25]-1.58*x[19]*x[22]+0.72*x[19]*x[26]-1.28*x[19]*x[28]-1.3*x[19]*x[29]+0.64*x[19]*x[32]+1.24*x[19]*x[34]+1.28*x[19]*x[35]+1.54*x[19]*x[37]+0.68*x[19]*x[39]+1.14*x[19]*x[42]+1.52*x[19]*x[45]-0.26*x[19]*x[49]+1.14*x[19]*x[50]-1.9*x[19]*x[51]+1.58*x[20]*x[22]+0.8*x[20]*x[24]+1.9*x[20]*x[28]-0.66*x[20]*x[30]+0.76*x[20]*x[33]+0.22*x[20]*x[35]-0.12*x[20]*x[37]-0.24*x[20]*x[41]-0.4*x[20]*x[42]-1.78*x[20]*x[44]-1.9*x[20]*x[46]-1.5*x[20]*x[48]+0.98*x[20]*x[49]+0.24*x[20]*x[50]+0.76*x[21]*x[22]+0.22*x[21]*x[23]+1.4*x[21]*x[25]-0.46*x[21]*x[29]-0.52*x[21]*x[30]+0.22*x[21]*x[32]-1.06*x[21]*x[33]+0.68*x[21]*x[42]+0.52*x[21]*x[43]-0.2*x[21]*x[45]-0.22*x[21]*x[48]+1.8*x[22]*x[23]+1.26*x[22]*x[26]-0.54*x[22]*x[29]-1.08*x[22]*x[32]-0.8*x[22]*x[33]+0.44*x[22]*x[35]+1.96*x[22]*x[36]+1.6*x[22]*x[38]+0.3*x[22]*x[40]+1.78*x[22]*x[42]-0.78*x[22]*x[43]-0.54*x[22]*x[45]+1.44*x[22]*x[46]-0.66*x[22]*x[48]+1.84*x[22]*x[49]+0.6*x[23]*x[28]-1.8*x[23]*x[27]+1.22*x[23]*x[29]+1.58*x[23]*x[36]+1.56*x[23]*x[37]-1.04*x[23]*x[38]+1.3*x[23]*x[39]-0.44*x[23]*x[40]+1.52*x[23]*x[43]+0.64*x[23]*x[44]+0.7*x[23]*x[46]+1.82*x[23]*x[47]+1.52*x[23]*x[48]+1.1*x[23]*x[49]+0.9*x[23]*x[50]+(-1.5*x[24]*x[25])-0.92*x[24]*x[28]+1.02*x[24]*x[29]+1.54*x[24]*x[30]+0.38*x[24]*x[31]+0.78*x[24]*x[32]-0.02*x[24]*x[34]-0.1*x[24]*x[36]+1.08*x[24]*x[37]-1.92*x[24]*x[41]+1.06*x[24]*x[43]+1.16*x[24]*x[44]-0.76*x[24]*x[45]-0.82*x[24]*x[50]+1.82*x[24]*x[51]+0.64*x[25]*x[26]+0.52*x[25]*x[31]+1.48*x[25]*x[32]-1.8*x[25]*x[33]+0.18*x[25]*x[34]+0.58*x[25]*x[35]+0.62*x[25]*x[37]+0.88*x[25]*x[39]+1.64*x[25]*x[41]-0.98*x[25]*x[43]+1.5*x[25]*x[44]-0.52*x[25]*x[45]+1.18*x[25]*x[46]+1.66*x[25]*x[47]+1.58*x[25]*x[48]-0.6*x[25]*x[50]-0.72*x[25]*x[51]+0.64*x[26]*x[27]-0.04*x[26]*x[32]+0.02*x[26]*x[33]-0.54*x[26]*x[34]+1.7*x[26]*x[36]+1.22*x[26]*x[38]-1.72*x[26]*x[42]+2*x[26]*x[45]+0.48*x[26]*x[47]-1.2*x[26]*x[48]-1.88*x[26]*x[50]+1.88*x[26]*x[51]+0.7*x[27]*x[33]-1.78*x[27]*x[28]-1.6*x[27]*x[35]-1.16*x[27]*x[38]-1.52*x[27]*x[39]-x[27]*x[40]-1.22*x[27]*x[44]+0.12*x[27]*x[45]+1.78*x[27]*x[46]+0.2*x[27]*x[47]-0.34*x[27]*x[51]+0.26*x[28]*x[32]-0.1*x[28]*x[31]-0.08*x[28]*x[35]+0.26*x[28]*x[39]-0.42*x[28]*x[41]+1.48*x[28]*x[44]-0.64*x[28]*x[45]+1.98*x[28]*x[50]-1.14*x[28]*x[51]+0.26*x[29]*x[32]-0.26*x[29]*x[30]-0.02*x[29]*x[34]-1.08*x[29]*x[35]+1.44*x[29]*x[36]+1.78*x[29]*x[38]+1.46*x[29]*x[42]+0.62*x[29]*x[45]+0.7*x[29]*x[48]+1.76*x[30]*x[31]-0.16*x[30]*x[35]-0.86*x[30]*x[36]-1.18*x[30]*x[37]-0.7*x[30]*x[39]-1.44*x[30]*x[40]-1.72*x[30]*x[41]+1.08*x[30]*x[43]+0.32*x[30]*x[44]-1.44*x[30]*x[46]-1.34*x[30]*x[47]+1.96*x[30]*x[51]+1.44*x[31]*x[34]+1.38*x[31]*x[35]+1.6*x[31]*x[36]+1.5*x[31]*x[37]-0.58*x[31]*x[38]-0.42*x[31]*x[40]-0.66*x[31]*x[41]+1.54*x[31]*x[42]-1.66*x[31]*x[46]-0.78*x[31]*x[50]+1.12*x[31]*x[51]+(-1.64*x[32]*x[34])-1.86*x[32]*x[36]-1.98*x[32]*x[39]-1.86*x[32]*x[40]-1.64*x[32]*x[41]+0.7*x[32]*x[44]+1.52*x[32]*x[45]-0.06*x[32]*x[47]+1.68*x[32]*x[48]-0.24*x[32]*x[51]+0.46*x[33]*x[38]+0.48*x[33]*x[39]-0.92*x[33]*x[42]+1.2*x[33]*x[43]-0.34*x[33]*x[46]-0.74*x[33]*x[47]+0.2*x[33]*x[48]+0.56*x[33]*x[50]+0.56*x[34]*x[38]-0.06*x[34]*x[35]-0.1*x[34]*x[42]-0.5*x[34]*x[44]+0.58*x[34]*x[45]+1.02*x[34]*x[46]-0.78*x[34]*x[49]+1.34*x[34]*x[51]+1.74*x[35]*x[36]-1.74*x[35]*x[41]-1.62*x[35]*x[42]+1.36*x[35]*x[44]+1.1*x[35]*x[47]-1.72*x[35]*x[49]-1.84*x[35]*x[50]+1.58*x[36]*x[40]-1.26*x[36]*x[39]+1.68*x[36]*x[44]+0.32*x[36]*x[46]-1.2*x[36]*x[47]-0.84*x[36]*x[48]+0.16*x[36]*x[50]+0.92*x[37]*x[38]+0.84*x[37]*x[40]+0.5*x[37]*x[42]-0.86*x[37]*x[45]+1.96*x[37]*x[46]+0.68*x[37]*x[48]-1.68*x[37]*x[49]-1.44*x[37]*x[51]+(-0.42*x[38]*x[40])-0.52*x[38]*x[42]+1.88*x[38]*x[43]+0.92*x[38]*x[45]+1.6*x[38]*x[49]+0.02*x[38]*x[50]+1.26*x[38]*x[51]+0.7*x[39]*x[42]-0.84*x[39]*x[41]-1.58*x[39]*x[43]+1.66*x[39]*x[48]+1.72*x[39]*x[49]+1.92*x[39]*x[51]+1.12*x[40]*x[41]-1.14*x[40]*x[43]-0.82*x[40]*x[46]-0.68*x[40]*x[48]-1.32*x[40]*x[49]-1.3*x[40]*x[50]+0.38*x[40]*x[51]+0.5*x[41]*x[43]-0.6*x[41]*x[45]-0.66*x[41]*x[47]+0.84*x[41]*x[50]+1.96*x[42]*x[43]-0.22*x[42]*x[44]+1.24*x[42]*x[45]+0.2*x[42]*x[47]-0.7*x[42]*x[50]+1.18*x[43]*x[45]+0.36*x[43]*x[47]-1.28*x[43]*x[50]+1.7*x[44]*x[46]-0.34*x[44]*x[47]-1.94*x[44]*x[50]-0.98*x[44]*x[51]-0.6*x[45]*x[47]+2*x[46]*x[49]+0.06*x[49]*x[50]+0.12*x[4]*x[4]-0.16*x[6]*x[6]+0.13*x[9]*x[9]+0.25*x[11]*x[11]+0.98*x[12]*x[12]+0.72*x[17]*x[17]+0.18*x[18]*x[18]-0.1*x[20]*x[20]-0.5*x[22]*x[22]-0.74*x[27]*x[27]+0.99*x[29]*x[29]-0.03*x[31]*x[31]-0.67*x[32]*x[32]-0.95*x[33]*x[33]-0.97*x[35]*x[35]-0.52*x[38]*x[38]-0.43*x[40]*x[40]-0.3*x[46]*x[46]-0.29*x[2]+0.05*x[3]+0.99*x[4]-0.53*x[5]-0.29*x[6]-0.97*x[7]-0.23*x[8]-0.45*x[9]+0.5*x[10]+0.01*x[11]-0.42*x[12]-0.95*x[13]+0.25*x[14]+0.02*x[15]+0.37*x[16]-0.64*x[17]+0.39*x[18]+0.24*x[19]+0.52*x[20]+0.07*x[21]+0.76*x[22]+0.51*x[23]+0.43*x[24]+0.33*x[25]-0.45*x[26]+0.39*x[27]+0.01*x[28]+0.02*x[29]-0.74*x[30]-0.94*x[31]+0.15*x[32]+0.51*x[33]+0.09*x[34]-0.72*x[35]-0.18*x[36]+0.24*x[37]+0.92*x[38]+0.35*x[39]+0.18*x[40]-0.51*x[41]+0.84*x[42]-0.23*x[43]+0.71*x[44]+0.56*x[45]+0.48*x[46]-0.12*x[47]-0.23*x[48]-0.11*x[49]+0.88*x[50]+0.01*x[51] <= 2.96)
@constraint(m, e3, 0.83*x[2]+0.46*x[3]+0.32*x[4]-0.86*x[5]-0.52*x[6]+0.67*x[7]-0.62*x[8]+0.84*x[9]+0.58*x[10]-0.38*x[11]+0.66*x[12]+0.07*x[13]+0.23*x[14]-0.36*x[15]+0.3*x[16]-0.3*x[17]-0.6*x[18]+0.85*x[19]-0.86*x[20]+0.51*x[21]+0.18*x[22]-0.71*x[23]-0.61*x[24]+0.12*x[25]+0.51*x[26]+0.45*x[27]-0.91*x[28]+0.46*x[29]-0.49*x[30]-0.53*x[31]+0.11*x[32]+0.57*x[33]+0.77*x[34]-0.96*x[35]-0.46*x[36]-0.76*x[37]+0.18*x[38]+0.23*x[39]-0.74*x[40]-0.91*x[41]-0.6*x[42]-0.4*x[43]-0.38*x[44]+0.56*x[45]-0.39*x[46]+0.06*x[47]+0.02*x[48]-0.2*x[49]-0.24*x[50]+0.21*x[51] == -0.71)
@constraint(m, e4, -0.07*x[2]-0.86*x[3]-0.27*x[4]-0.14*x[5]+0.07*x[6]-0.92*x[7]-0.57*x[8]+0.63*x[9]+0.1*x[10]-0.05*x[11]-0.39*x[12]-0.7*x[13]-0.58*x[14]+0.12*x[15]+0.42*x[16]-0.57*x[17]+0.23*x[18]+0.07*x[19]+0.27*x[20]-0.32*x[21]-0.47*x[22]-0.85*x[23]-0.07*x[24]+0.29*x[25]+0.8*x[26]-0.73*x[27]-0.9*x[28]+0.45*x[29]+0.31*x[30]-0.32*x[31]-0.4*x[32]+0.26*x[33]-0.63*x[34]+0.15*x[35]-0.07*x[36]+0.35*x[37]-0.13*x[38]+0.94*x[39]+0.11*x[40]+0.77*x[41]-0.97*x[42]+0.74*x[43]-0.52*x[44]-0.95*x[45]-0.24*x[46]-0.69*x[47]+0.31*x[48]+0.34*x[49]-0.31*x[50]-0.35*x[51] == -0.8)
@constraint(m, e5, -0.43*x[2]+0.72*x[3]+0.63*x[4]+0.67*x[5]-0.28*x[6]-0.48*x[7]-0.88*x[8]+0.38*x[9]-0.47*x[10]-0.49*x[11]-0.03*x[12]-0.91*x[13]-0.49*x[14]-0.5*x[15]+0.99*x[16]+0.11*x[17]+0.7*x[18]-0.2*x[19]-0.07*x[20]+0.04*x[21]-0.65*x[22]+0.48*x[23]-0.31*x[24]-0.81*x[25]+0.81*x[26]+0.64*x[27]-0.13*x[28]-0.5*x[29]+0.26*x[30]+0.51*x[31]+0.08*x[32]-0.34*x[33]+0.06*x[34]+0.68*x[35]+0.74*x[36]+0.81*x[37]+0.65*x[38]-0.17*x[39]-0.02*x[40]+0.02*x[41]+0.21*x[42]+0.47*x[43]+0.49*x[44]+0.37*x[45]-0.49*x[46]-0.37*x[47]+0.21*x[48]+0.36*x[49]+0.95*x[50]-0.76*x[51] == 0.55)
@constraint(m, e6, -0.33*x[2]-0.95*x[3]+0.55*x[4]-0.3*x[5]-0.4*x[6]+0.85*x[7]+0.09*x[8]+0.51*x[9]-0.06*x[10]+0.27*x[11]-0.97*x[12]+0.46*x[13]-0.34*x[14]-0.16*x[15]-0.6*x[16]+0.19*x[17]-0.07*x[18]-0.42*x[19]-0.97*x[20]+0.87*x[21]+0.87*x[22]-0.28*x[23]+0.33*x[24]+0.42*x[25]+0.09*x[26]-0.02*x[27]-0.88*x[28]+0.27*x[29]-0.23*x[30]+0.12*x[31]+0.37*x[32]-0.48*x[33]+0.24*x[34]+0.22*x[35]+0.29*x[36]-0.08*x[37]-0.72*x[38]-0.41*x[39]-0.42*x[40]-0.59*x[41]-0.65*x[42]+0.32*x[43]+0.63*x[44]+0.7*x[45]-0.43*x[46]+0.72*x[47]-0.92*x[48]+0.32*x[49]+0.37*x[50]+0.29*x[51] == 0.84)
@constraint(m, e7, 0.22*x[2]-0.05*x[3]+0.7*x[4]+0.91*x[5]+0.57*x[6]-0.16*x[7]+0.5*x[8]+0.28*x[9]+0.84*x[10]+0.2*x[11]-0.73*x[12]-0.96*x[13]-0.23*x[14]-0.53*x[15]-0.18*x[16]-0.53*x[17]+0.99*x[18]-0.74*x[19]-0.82*x[20]-0.25*x[21]+0.84*x[22]-0.01*x[23]+0.83*x[24]+x[25]+0.49*x[26]-0.31*x[27]-0.23*x[28]-0.37*x[29]-0.17*x[30]+0.72*x[31]+0.92*x[32]-0.34*x[33]+0.38*x[34]+0.5*x[35]+0.67*x[36]-0.72*x[37]+0.95*x[38]-0.61*x[39]-0.39*x[40]-0.53*x[41]-0.75*x[42]-0.37*x[43]-0.22*x[44]+0.48*x[45]-0.16*x[46]+0.61*x[47]-0.4*x[48]-0.13*x[49]-0.41*x[50]+0.7*x[51] == -0.62)
@constraint(m, e8, -0.22*x[2]+0.17*x[3]+0.79*x[4]+0.94*x[5]+0.38*x[6]-0.7*x[7]+0.05*x[8]-0.95*x[9]-0.87*x[10]+0.73*x[11]+0.07*x[12]+0.7*x[13]-0.54*x[14]+0.14*x[15]+0.41*x[16]-0.14*x[17]+0.28*x[18]+0.85*x[19]+0.68*x[20]+0.85*x[22]-0.33*x[23]-0.56*x[24]-0.4*x[25]+0.1*x[26]-0.2*x[27]-0.75*x[28]-0.94*x[29]-0.56*x[30]-0.82*x[31]+0.46*x[32]+0.04*x[33]-0.19*x[34]+0.92*x[35]-0.72*x[36]-0.12*x[37]-0.52*x[38]-0.3*x[39]-0.55*x[40]+0.34*x[41]-0.19*x[42]-0.19*x[43]-0.63*x[44]-0.97*x[45]-0.02*x[46]-0.84*x[47]+0.99*x[48]+0.14*x[49]+0.39*x[50]-0.02*x[51] == 0.13)
@constraint(m, e9, 0.79*x[2]+0.26*x[3]-0.52*x[4]-0.32*x[5]-0.55*x[6]+0.29*x[7]-0.54*x[8]-0.18*x[9]+0.25*x[10]+0.75*x[11]-0.6*x[12]-0.9*x[13]-0.48*x[14]+0.86*x[15]+0.65*x[16]-0.83*x[17]-0.07*x[18]-0.36*x[19]+0.98*x[20]-0.63*x[21]+0.36*x[22]-0.37*x[23]-0.77*x[24]-0.24*x[25]-0.3*x[26]+0.71*x[27]-0.24*x[28]-0.33*x[29]-0.07*x[30]-0.35*x[31]-0.47*x[32]+0.82*x[33]+0.34*x[34]-0.81*x[35]+0.27*x[36]+0.56*x[37]+0.99*x[38]+0.2*x[39]-0.35*x[40]-0.98*x[41]+0.19*x[42]+0.99*x[43]-0.11*x[44]+0.1*x[45]+0.38*x[46]-0.33*x[47]+0.25*x[48]+0.67*x[49]+0.88*x[50]+0.3*x[51] == 0.55)
@constraint(m, e10, 0.09*x[2]+0.07*x[3]+0.08*x[4]-0.61*x[5]-0.89*x[6]-0.76*x[7]-0.52*x[8]+0.36*x[9]+0.66*x[10]+0.87*x[11]-0.17*x[12]-0.95*x[13]-0.31*x[14]+0.99*x[15]+0.84*x[16]+0.99*x[17]-0.9*x[18]-0.06*x[19]+0.68*x[20]-0.3*x[21]-0.77*x[22]-0.36*x[23]-0.86*x[24]-0.48*x[25]+0.61*x[26]-0.31*x[27]-0.65*x[28]+0.27*x[29]-0.31*x[30]+0.33*x[31]-0.25*x[32]-0.09*x[33]-0.96*x[34]-0.79*x[35]-0.71*x[36]+0.81*x[37]+0.07*x[38]+0.89*x[39]-0.73*x[40]+0.29*x[41]+0.23*x[42]+0.34*x[43]+0.64*x[44]-0.1*x[45]+0.66*x[46]+0.09*x[47]+0.97*x[48]+0.46*x[49]-0.04*x[50]+0.12*x[51] == 0.69)
@constraint(m, e11, -0.87*x[3]-0.19*x[4]-0.07*x[5]+0.45*x[6]+0.33*x[7]-0.96*x[8]-0.71*x[9]-0.06*x[10]+0.1*x[11]-0.48*x[12]+0.77*x[13]+0.25*x[14]-0.28*x[15]+0.99*x[16]-0.11*x[17]+0.34*x[18]-0.32*x[19]-0.08*x[20]+0.71*x[21]+0.65*x[22]+0.6*x[23]+0.69*x[24]+0.76*x[25]-0.39*x[26]-0.95*x[27]+0.71*x[28]+0.46*x[29]+0.34*x[30]+0.11*x[31]+0.54*x[32]-0.92*x[33]+0.67*x[34]+0.43*x[35]+0.16*x[36]+0.47*x[37]+0.29*x[38]+0.91*x[39]-0.5*x[40]+0.23*x[41]-0.28*x[42]-0.47*x[43]+0.21*x[44]-0.84*x[45]+0.76*x[46]+0.61*x[47]+0.47*x[48]+0.71*x[49]+0.79*x[50]+0.51*x[51] == 0.43)
@constraint(m, e12, 0.89*x[2]-0.53*x[3]-0.07*x[4]-0.36*x[5]-0.97*x[6]-0.12*x[7]+0.53*x[8]+0.22*x[9]+0.97*x[10]+0.27*x[11]+0.67*x[12]-0.21*x[13]+0.14*x[14]+0.27*x[15]+0.98*x[16]-0.79*x[17]-0.4*x[18]+0.92*x[19]+0.09*x[20]-0.71*x[21]+0.86*x[22]-0.79*x[23]-0.85*x[24]-0.41*x[25]-0.18*x[26]+0.38*x[27]+x[28]+0.81*x[29]-0.55*x[30]+0.61*x[31]-0.87*x[32]-0.56*x[33]+0.39*x[34]-0.27*x[35]-0.12*x[36]-0.25*x[37]+0.23*x[38]-0.7*x[39]-0.3*x[40]+0.55*x[41]+0.33*x[42]+0.81*x[43]-0.99*x[44]+0.56*x[45]+0.76*x[46]+0.23*x[47]-0.57*x[48]+0.72*x[49]-0.3*x[50]-0.93*x[51] == 0.4)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 