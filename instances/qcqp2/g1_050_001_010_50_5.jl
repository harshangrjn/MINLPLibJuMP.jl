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
@NLconstraint(m, e1, -(0.1*x[2]*x[4]+1.6*x[2]*x[5]+0.56*x[2]*x[6]-0.6*x[2]*x[7]+0.44*x[2]*x[9]+0.34*x[2]*x[10]+1.3*x[2]*x[11]-0.66*x[2]*x[12]+0.36*x[2]*x[13]-1.2*x[2]*x[14]-1.34*x[2]*x[16]-0.96*x[2]*x[17]+0.04*x[2]*x[18]-1.88*x[2]*x[20]-1.48*x[2]*x[22]-0.94*x[2]*x[23]-1.74*x[2]*x[28]-1.88*x[2]*x[29]-0.9*x[2]*x[32]+0.4*x[2]*x[33]-1.7*x[2]*x[34]+1.94*x[2]*x[35]+1.92*x[2]*x[37]+0.72*x[2]*x[40]+1.04*x[2]*x[41]+1.02*x[2]*x[42]+0.36*x[2]*x[47]+0.94*x[2]*x[51]+(-1.42*x[3]*x[4])-1.44*x[3]*x[7]+1.6*x[3]*x[9]-0.08*x[3]*x[10]+0.28*x[3]*x[11]+0.2*x[3]*x[14]-1.48*x[3]*x[15]-1.74*x[3]*x[16]+1.14*x[3]*x[17]+0.5*x[3]*x[19]+0.84*x[3]*x[20]-1.48*x[3]*x[22]-1.38*x[3]*x[27]+1.48*x[3]*x[29]+0.9*x[3]*x[32]-1.1*x[3]*x[34]-0.2*x[3]*x[35]-1.06*x[3]*x[40]+0.18*x[3]*x[41]-0.02*x[3]*x[47]-1.46*x[3]*x[48]+0.58*x[3]*x[49]-1.2*x[3]*x[51]+1.98*x[4]*x[5]-1.28*x[4]*x[8]+1.2*x[4]*x[10]-1.22*x[4]*x[12]-0.16*x[4]*x[14]+1.82*x[4]*x[15]-0.24*x[4]*x[16]-1.1*x[4]*x[17]+0.04*x[4]*x[21]+0.96*x[4]*x[23]-0.94*x[4]*x[24]-1.82*x[4]*x[25]-1.26*x[4]*x[26]+0.04*x[4]*x[27]-0.08*x[4]*x[28]-0.98*x[4]*x[29]+0.1*x[4]*x[30]-1.46*x[4]*x[35]-1.9*x[4]*x[37]+1.7*x[4]*x[40]+0.36*x[4]*x[41]+1.24*x[4]*x[42]+0.78*x[4]*x[44]+1.98*x[4]*x[45]+1.34*x[4]*x[47]-1.14*x[4]*x[50]+0.54*x[5]*x[8]+1.08*x[5]*x[9]-1.82*x[5]*x[10]+0.02*x[5]*x[14]+0.3*x[5]*x[16]-1.24*x[5]*x[18]+1.74*x[5]*x[21]+1.16*x[5]*x[22]-0.44*x[5]*x[23]+1.74*x[5]*x[24]+1.86*x[5]*x[25]+0.24*x[5]*x[26]+0.8*x[5]*x[28]+1.64*x[5]*x[30]+0.9*x[5]*x[31]+1.56*x[5]*x[33]-0.48*x[5]*x[34]+1.14*x[5]*x[35]-1.28*x[5]*x[40]-0.64*x[5]*x[42]-0.54*x[5]*x[44]+0.64*x[5]*x[45]+0.64*x[5]*x[46]+1.62*x[5]*x[47]+1.82*x[5]*x[48]-0.94*x[5]*x[51]+0.26*x[6]*x[8]+0.06*x[6]*x[10]+1.1*x[6]*x[15]-1.26*x[6]*x[16]-0.54*x[6]*x[18]+0.84*x[6]*x[19]-1.54*x[6]*x[22]-0.94*x[6]*x[24]+0.14*x[6]*x[25]+0.74*x[6]*x[26]+1.06*x[6]*x[29]-0.36*x[6]*x[30]-1.54*x[6]*x[34]+0.86*x[6]*x[35]-0.78*x[6]*x[37]+0.86*x[6]*x[41]+0.42*x[6]*x[42]+1.28*x[6]*x[43]+1.88*x[6]*x[45]-0.7*x[6]*x[46]+0.16*x[6]*x[47]+x[6]*x[48]+1.94*x[6]*x[50]-1.2*x[6]*x[51]+0.06*x[7]*x[10]-1.96*x[7]*x[9]+x[7]*x[13]-0.64*x[7]*x[14]+0.2*x[7]*x[15]-1.42*x[7]*x[16]-1.1*x[7]*x[18]+1.56*x[7]*x[26]-1.56*x[7]*x[27]-1.04*x[7]*x[28]+0.84*x[7]*x[29]-1.56*x[7]*x[33]-0.94*x[7]*x[36]-0.7*x[7]*x[38]-0.28*x[7]*x[40]-1.24*x[7]*x[42]-0.22*x[7]*x[43]+1.92*x[7]*x[45]+0.98*x[7]*x[46]+1.46*x[7]*x[47]+1.68*x[7]*x[48]+0.92*x[7]*x[49]+1.98*x[7]*x[51]+(-0.6*x[8]*x[9])-1.46*x[8]*x[10]+1.82*x[8]*x[11]+1.68*x[8]*x[12]-0.76*x[8]*x[13]-0.52*x[8]*x[15]+0.52*x[8]*x[17]+1.7*x[8]*x[19]+1.96*x[8]*x[21]-x[8]*x[24]+0.6*x[8]*x[26]-1.72*x[8]*x[27]+0.08*x[8]*x[28]+0.46*x[8]*x[30]-1.48*x[8]*x[32]-1.38*x[8]*x[34]+0.66*x[8]*x[35]+0.14*x[8]*x[36]-1.76*x[8]*x[40]+0.52*x[8]*x[42]-0.02*x[8]*x[45]-0.8*x[8]*x[46]+1.66*x[8]*x[47]-1.34*x[8]*x[50]+(-1.7*x[9]*x[10])-0.64*x[9]*x[14]-0.34*x[9]*x[15]+0.14*x[9]*x[17]-0.02*x[9]*x[18]+0.14*x[9]*x[22]-1.58*x[9]*x[23]+1.56*x[9]*x[24]-0.14*x[9]*x[25]+1.36*x[9]*x[26]-1.52*x[9]*x[27]+0.96*x[9]*x[30]+0.98*x[9]*x[33]-1.36*x[9]*x[34]-0.3*x[9]*x[38]-0.9*x[9]*x[39]-1.1*x[9]*x[40]+0.66*x[9]*x[41]-0.3*x[9]*x[44]+1.58*x[9]*x[46]+1.5*x[10]*x[12]+0.86*x[10]*x[14]-0.94*x[10]*x[16]-1.16*x[10]*x[21]-0.18*x[10]*x[22]-1.28*x[10]*x[23]+0.02*x[10]*x[24]+1.7*x[10]*x[27]-0.46*x[10]*x[28]+0.84*x[10]*x[31]+1.4*x[10]*x[33]+0.6*x[10]*x[35]-1.82*x[10]*x[36]+0.22*x[10]*x[37]+0.66*x[10]*x[38]-0.2*x[10]*x[40]+0.98*x[10]*x[47]+(-0.24*x[11]*x[13])-0.72*x[11]*x[14]+1.1*x[11]*x[17]+0.52*x[11]*x[18]-0.36*x[11]*x[23]-0.5*x[11]*x[25]+0.6*x[11]*x[26]-1.38*x[11]*x[29]-0.72*x[11]*x[30]-1.82*x[11]*x[31]-1.9*x[11]*x[32]-0.18*x[11]*x[33]-0.98*x[11]*x[34]-1.62*x[11]*x[36]+0.64*x[11]*x[39]+1.22*x[11]*x[42]-0.48*x[11]*x[43]+0.34*x[11]*x[44]+0.36*x[11]*x[45]+1.46*x[11]*x[47]+1.02*x[11]*x[50]+(-1.78*x[12]*x[14])-0.5*x[12]*x[16]-1.76*x[12]*x[18]+1.74*x[12]*x[19]+0.48*x[12]*x[20]-1.7*x[12]*x[23]-0.06*x[12]*x[24]+0.72*x[12]*x[27]+1.82*x[12]*x[29]+1.76*x[12]*x[30]+0.82*x[12]*x[33]+0.04*x[12]*x[36]-0.56*x[12]*x[38]-1.44*x[12]*x[39]+1.44*x[12]*x[41]-1.64*x[12]*x[44]-1.48*x[12]*x[45]-1.62*x[12]*x[46]+0.16*x[12]*x[48]+1.46*x[13]*x[21]-1.48*x[13]*x[16]-1.16*x[13]*x[23]+0.96*x[13]*x[31]-1.32*x[13]*x[32]-1.38*x[13]*x[33]-0.26*x[13]*x[34]+0.24*x[13]*x[37]-0.3*x[13]*x[38]+0.4*x[13]*x[40]+0.8*x[13]*x[41]+1.66*x[13]*x[42]-0.78*x[13]*x[43]+0.84*x[13]*x[44]+1.44*x[13]*x[45]-0.74*x[13]*x[47]+1.88*x[13]*x[48]-0.92*x[13]*x[50]-1.44*x[13]*x[51]+1.72*x[14]*x[15]+1.84*x[14]*x[16]-0.38*x[14]*x[19]-0.02*x[14]*x[21]+1.74*x[14]*x[22]+0.14*x[14]*x[25]+1.36*x[14]*x[26]-1.9*x[14]*x[27]-1.86*x[14]*x[30]+1.28*x[14]*x[32]-1.06*x[14]*x[35]-0.86*x[14]*x[39]-1.58*x[14]*x[44]-1.42*x[14]*x[46]+1.24*x[14]*x[47]+2*x[14]*x[50]+0.7*x[15]*x[17]+0.48*x[15]*x[18]-1.16*x[15]*x[22]-0.82*x[15]*x[23]+0.9*x[15]*x[24]+0.14*x[15]*x[27]+0.72*x[15]*x[28]+1.9*x[15]*x[32]-1.9*x[15]*x[36]+0.46*x[15]*x[37]-2*x[15]*x[41]-0.18*x[15]*x[42]-1.44*x[15]*x[44]+1.08*x[15]*x[45]+1.02*x[15]*x[49]+1.46*x[15]*x[50]+0.7*x[16]*x[17]+1.34*x[16]*x[22]-1.7*x[16]*x[26]-1.64*x[16]*x[33]-0.16*x[16]*x[35]+0.9*x[16]*x[36]+0.28*x[16]*x[38]+1.62*x[16]*x[39]+1.52*x[16]*x[43]+1.24*x[16]*x[44]-1.26*x[16]*x[45]+0.68*x[16]*x[46]-0.64*x[16]*x[47]+1.26*x[16]*x[48]-1.66*x[16]*x[49]+0.2*x[17]*x[19]-0.92*x[17]*x[20]-0.62*x[17]*x[22]-0.88*x[17]*x[23]+1.1*x[17]*x[24]-1.44*x[17]*x[25]+0.06*x[17]*x[28]-0.68*x[17]*x[33]+0.56*x[17]*x[35]-1.3*x[17]*x[36]-0.22*x[17]*x[37]-0.74*x[17]*x[40]-1.84*x[17]*x[41]-0.82*x[17]*x[43]+0.22*x[17]*x[45]+1.6*x[17]*x[46]-1.44*x[17]*x[48]+1.76*x[17]*x[50]-1.44*x[17]*x[51]+(-1.04*x[18]*x[19])-1.24*x[18]*x[20]-1.28*x[18]*x[21]+1.7*x[18]*x[22]+0.92*x[18]*x[24]-1.22*x[18]*x[26]-1.2*x[18]*x[35]+1.44*x[18]*x[36]-0.86*x[18]*x[38]+1.52*x[18]*x[39]+0.86*x[18]*x[44]-0.68*x[18]*x[45]-1.74*x[18]*x[46]-1.72*x[18]*x[47]-1.74*x[18]*x[48]-1.54*x[18]*x[49]-0.82*x[18]*x[51]+(-0.84*x[19]*x[23])-1.18*x[19]*x[24]-1.52*x[19]*x[25]+1.72*x[19]*x[27]+0.72*x[19]*x[31]+0.16*x[19]*x[35]-x[19]*x[40]+0.36*x[19]*x[41]+1.7*x[19]*x[45]-0.8*x[19]*x[46]+1.54*x[19]*x[48]+0.44*x[19]*x[49]+0.82*x[20]*x[21]-0.9*x[20]*x[25]+0.16*x[20]*x[26]+1.62*x[20]*x[29]+0.92*x[20]*x[30]+1.24*x[20]*x[33]+0.76*x[20]*x[34]+0.22*x[20]*x[35]-1.8*x[20]*x[37]-x[20]*x[39]-1.54*x[20]*x[43]+1.48*x[20]*x[44]-1.68*x[20]*x[45]+1.6*x[20]*x[46]+1.14*x[20]*x[47]-1.94*x[20]*x[48]-0.82*x[20]*x[49]+(-1.96*x[21]*x[24])-1.86*x[21]*x[28]-1.28*x[21]*x[30]-1.42*x[21]*x[32]-1.88*x[21]*x[33]-0.04*x[21]*x[34]+0.9*x[21]*x[37]-1.52*x[21]*x[38]+1.64*x[22]*x[26]-0.08*x[22]*x[25]+0.46*x[22]*x[30]+0.18*x[22]*x[31]+1.72*x[22]*x[32]+0.98*x[22]*x[34]+0.76*x[22]*x[35]+1.3*x[22]*x[37]+1.7*x[22]*x[41]-0.38*x[22]*x[44]+1.32*x[22]*x[46]+0.28*x[22]*x[47]-1.06*x[22]*x[48]+1.86*x[22]*x[49]+0.32*x[22]*x[51]+1.56*x[23]*x[26]-1.2*x[23]*x[32]-0.92*x[23]*x[33]+0.76*x[23]*x[34]+0.22*x[23]*x[37]+1.74*x[23]*x[38]+1.8*x[23]*x[39]-1.92*x[23]*x[43]+1.64*x[23]*x[45]-1.68*x[23]*x[46]+1.52*x[23]*x[47]+0.66*x[23]*x[48]+0.44*x[23]*x[50]-1.58*x[23]*x[51]+(-0.84*x[24]*x[27])-0.26*x[24]*x[29]-1.68*x[24]*x[31]+x[24]*x[33]+0.72*x[24]*x[36]-1.62*x[24]*x[37]-0.22*x[24]*x[38]-1.86*x[24]*x[39]-1.04*x[24]*x[43]+1.22*x[25]*x[29]-0.28*x[25]*x[28]-0.68*x[25]*x[30]+0.88*x[25]*x[32]-0.76*x[25]*x[35]+1.08*x[25]*x[39]+0.46*x[25]*x[45]+0.54*x[25]*x[46]-x[25]*x[47]-0.52*x[25]*x[48]+1.38*x[26]*x[28]-1.96*x[26]*x[31]+0.68*x[26]*x[33]+0.56*x[26]*x[35]+1.8*x[26]*x[38]-0.28*x[26]*x[42]-1.68*x[26]*x[43]+1.2*x[26]*x[45]+1.1*x[26]*x[46]+1.56*x[26]*x[48]+1.58*x[27]*x[30]-0.1*x[27]*x[28]+0.54*x[27]*x[33]+0.54*x[27]*x[37]+1.64*x[27]*x[40]-1.98*x[27]*x[41]+1.84*x[27]*x[44]-1.82*x[27]*x[46]+0.4*x[27]*x[48]-0.7*x[27]*x[50]+0.02*x[28]*x[29]-0.06*x[28]*x[35]-x[28]*x[36]+0.68*x[28]*x[39]+1.54*x[28]*x[40]-1.92*x[28]*x[41]-0.88*x[28]*x[43]+0.22*x[28]*x[45]-1.86*x[28]*x[46]-1.14*x[28]*x[47]+0.68*x[28]*x[48]-1.44*x[28]*x[49]+1.38*x[28]*x[51]+0.74*x[29]*x[31]-1.02*x[29]*x[33]+1.6*x[29]*x[34]+1.44*x[29]*x[35]+1.32*x[29]*x[37]-1.2*x[29]*x[41]+1.9*x[29]*x[42]-1.72*x[29]*x[45]-1.56*x[29]*x[46]+0.18*x[29]*x[47]-1.2*x[29]*x[51]+(-1.64*x[30]*x[31])-0.44*x[30]*x[32]+0.98*x[30]*x[33]+0.04*x[30]*x[34]+0.6*x[30]*x[35]-0.04*x[30]*x[38]-1.58*x[30]*x[39]-0.04*x[30]*x[42]+1.96*x[30]*x[43]-0.82*x[30]*x[46]-0.14*x[30]*x[47]+1.94*x[30]*x[51]+1.3*x[31]*x[36]-1.32*x[31]*x[33]+0.78*x[31]*x[37]+0.98*x[31]*x[39]+0.52*x[31]*x[40]+0.52*x[31]*x[44]-0.86*x[31]*x[45]-0.96*x[31]*x[47]+0.48*x[32]*x[38]-0.66*x[32]*x[34]+1.26*x[32]*x[40]-1.04*x[32]*x[41]-1.62*x[32]*x[42]+1.54*x[32]*x[47]-1.42*x[32]*x[48]+0.58*x[32]*x[51]+1.34*x[33]*x[34]+0.08*x[33]*x[35]+0.62*x[33]*x[37]+1.28*x[33]*x[39]+0.44*x[33]*x[40]+0.14*x[33]*x[41]-1.2*x[33]*x[42]+0.32*x[33]*x[43]-0.82*x[33]*x[46]-1.58*x[33]*x[47]+0.34*x[34]*x[38]+1.22*x[34]*x[40]-1.52*x[34]*x[45]-0.28*x[34]*x[50]+1.6*x[35]*x[36]-0.86*x[35]*x[37]-1.32*x[35]*x[39]+0.74*x[35]*x[40]-1.78*x[35]*x[42]-0.04*x[35]*x[43]+0.02*x[35]*x[44]+0.38*x[35]*x[46]-0.66*x[35]*x[47]+0.94*x[35]*x[48]+0.38*x[35]*x[49]+0.8*x[35]*x[51]+1.22*x[36]*x[39]-0.7*x[36]*x[37]+1.42*x[36]*x[44]-1.12*x[36]*x[45]+1.84*x[36]*x[48]+1.26*x[36]*x[50]+1.76*x[36]*x[51]+0.16*x[37]*x[42]-0.38*x[37]*x[38]+1.2*x[37]*x[46]-0.86*x[37]*x[47]-0.68*x[37]*x[50]+0.76*x[37]*x[51]+0.68*x[38]*x[40]-1.22*x[38]*x[42]+1.16*x[38]*x[43]+1.68*x[38]*x[44]-0.64*x[38]*x[45]-1.24*x[38]*x[47]+0.44*x[38]*x[49]+0.86*x[38]*x[50]-0.02*x[38]*x[51]+1.5*x[39]*x[42]-1.62*x[39]*x[41]+1.26*x[39]*x[44]+0.24*x[39]*x[45]+1.9*x[39]*x[47]+0.22*x[40]*x[43]+2*x[40]*x[44]-0.14*x[40]*x[45]+1.2*x[40]*x[48]-0.98*x[40]*x[49]-1.54*x[40]*x[50]+(-0.32*x[41]*x[45])-1.4*x[41]*x[46]+0.92*x[41]*x[49]-0.04*x[41]*x[50]+0.8*x[42]*x[44]+0.62*x[42]*x[46]+0.86*x[42]*x[49]-1.18*x[42]*x[50]+0.86*x[43]*x[46]-0.5*x[43]*x[47]+1.96*x[43]*x[48]+0.28*x[43]*x[49]+1.18*x[43]*x[50]+1.2*x[44]*x[45]+1.52*x[44]*x[47]+1.82*x[44]*x[50]-0.72*x[44]*x[51]+1.06*x[45]*x[49]-0.94*x[45]*x[48]-0.74*x[46]*x[49]-0.78*x[47]*x[49]+1.28*x[48]*x[50]+1.74*x[49]*x[50]-1.58*x[49]*x[51]-1.7*x[50]*x[51]+0.65*x[3]*x[3]-0.56*x[4]*x[4]+0.35*x[5]*x[5]-0.79*x[8]*x[8]+0.94*x[9]*x[9]+0.52*x[10]*x[10]-0.7*x[11]*x[11]-0.94*x[12]*x[12]+0.2*x[13]*x[13]+0.38*x[16]*x[16]+0.01*x[18]*x[18]-0.63*x[19]*x[19]+0.68*x[23]*x[23]-0.48*x[26]*x[26]+0.19*x[28]*x[28]-0.79*x[29]*x[29]+0.43*x[30]*x[30]+0.35*x[31]*x[31]-0.71*x[35]*x[35]+0.53*x[36]*x[36]+0.59*x[38]*x[38]+0.75*x[39]*x[39]-0.75*x[40]*x[40]-0.19*x[41]*x[41]+0.24*x[44]*x[44]-0.64*x[46]*x[46]+0.42*x[47]*x[47]+0.3*x[48]*x[48]-0.94*x[51]*x[51]+0.19*x[2]-0.07*x[3]+0.46*x[4]-0.52*x[5]+0.02*x[6]+0.42*x[7]+0.9*x[8]+0.66*x[9]-0.41*x[10]+0.1*x[11]+0.94*x[12]-0.8*x[13]-0.85*x[14]+0.2*x[15]+0.96*x[16]+0.68*x[17]-0.65*x[18]-0.2*x[19]-0.05*x[20]-0.45*x[21]+0.53*x[22]+0.1*x[23]-0.52*x[24]+0.59*x[25]-0.7*x[26]+0.08*x[27]-0.07*x[28]-0.25*x[29]+0.33*x[30]-0.16*x[31]-0.64*x[32]-0.1*x[33]-0.77*x[34]+0.58*x[35]-0.73*x[36]-0.5*x[37]-0.07*x[38]-0.61*x[39]-0.04*x[40]-0.53*x[41]-0.86*x[42]+0.1*x[43]-0.03*x[44]-0.01*x[45]+0.56*x[46]-0.61*x[47]+0.5*x[48]+0.54*x[49]+0.46*x[50]+0.21*x[51])+x[1] == 0.0)
@NLconstraint(m, e2, 0.32*x[2]*x[6]-0.5*x[2]*x[3]+1.28*x[2]*x[7]-1.7*x[2]*x[9]+0.76*x[2]*x[15]+1.22*x[2]*x[16]+0.66*x[2]*x[17]-0.34*x[2]*x[21]-1.4*x[2]*x[25]-1.28*x[2]*x[28]-1.14*x[2]*x[29]-1.52*x[2]*x[31]+0.04*x[2]*x[32]-0.52*x[2]*x[34]+0.84*x[2]*x[39]-0.64*x[2]*x[41]+1.6*x[2]*x[42]+0.2*x[2]*x[43]+1.62*x[2]*x[45]-1.96*x[2]*x[46]-1.74*x[2]*x[47]-0.62*x[2]*x[48]-1.96*x[2]*x[49]+1.58*x[3]*x[5]-1.96*x[3]*x[4]-0.76*x[3]*x[6]+1.94*x[3]*x[7]+0.34*x[3]*x[10]+0.36*x[3]*x[13]+1.14*x[3]*x[16]-0.56*x[3]*x[17]+0.96*x[3]*x[18]-0.88*x[3]*x[20]+1.78*x[3]*x[22]+0.52*x[3]*x[23]-x[3]*x[24]+0.7*x[3]*x[25]-0.84*x[3]*x[28]-0.5*x[3]*x[29]+1.48*x[3]*x[30]+1.46*x[3]*x[31]+1.06*x[3]*x[33]+1.74*x[3]*x[34]-0.68*x[3]*x[38]-1.66*x[3]*x[42]+0.68*x[3]*x[43]+0.26*x[3]*x[44]+0.78*x[3]*x[45]+0.94*x[3]*x[46]+1.2*x[3]*x[49]+0.5*x[3]*x[50]-0.38*x[3]*x[51]+1.28*x[4]*x[5]+1.68*x[4]*x[6]-0.76*x[4]*x[7]-0.54*x[4]*x[8]+1.02*x[4]*x[10]-0.98*x[4]*x[11]+1.24*x[4]*x[12]+0.92*x[4]*x[13]+1.18*x[4]*x[15]+1.78*x[4]*x[19]+1.04*x[4]*x[20]-1.04*x[4]*x[23]+0.06*x[4]*x[26]-2*x[4]*x[27]-0.74*x[4]*x[31]-0.04*x[4]*x[32]-0.34*x[4]*x[33]+1.54*x[4]*x[37]-0.12*x[4]*x[38]-1.28*x[4]*x[39]-0.16*x[4]*x[40]-0.98*x[4]*x[41]+0.44*x[4]*x[44]-0.34*x[4]*x[45]+0.82*x[4]*x[46]-0.3*x[4]*x[47]+1.88*x[4]*x[48]-1.4*x[4]*x[49]-0.38*x[4]*x[51]+(-0.84*x[5]*x[9])-1.72*x[5]*x[12]-1.24*x[5]*x[17]-1.8*x[5]*x[18]-0.92*x[5]*x[24]-0.28*x[5]*x[28]+1.26*x[5]*x[29]-0.38*x[5]*x[30]+1.04*x[5]*x[34]-0.18*x[5]*x[37]+0.1*x[5]*x[38]-1.04*x[5]*x[39]+0.54*x[5]*x[41]+1.3*x[5]*x[43]+1.9*x[5]*x[46]-1.8*x[5]*x[50]-1.16*x[5]*x[51]+1.12*x[6]*x[9]-1.88*x[6]*x[7]+0.02*x[6]*x[12]-1.06*x[6]*x[13]+0.02*x[6]*x[14]+0.62*x[6]*x[22]+1.92*x[6]*x[25]+0.56*x[6]*x[29]-0.48*x[6]*x[30]+0.06*x[6]*x[33]+0.12*x[6]*x[34]+0.74*x[6]*x[37]+0.1*x[6]*x[40]-0.2*x[6]*x[41]+1.9*x[6]*x[42]-1.04*x[6]*x[43]+1.2*x[6]*x[45]+1.2*x[6]*x[47]+1.22*x[7]*x[11]-0.68*x[7]*x[10]-0.06*x[7]*x[13]-0.78*x[7]*x[15]+0.42*x[7]*x[17]+0.06*x[7]*x[18]+0.08*x[7]*x[19]+2*x[7]*x[21]+1.82*x[7]*x[22]+x[7]*x[24]+1.32*x[7]*x[25]+0.58*x[7]*x[27]+x[7]*x[28]-1.3*x[7]*x[30]-0.52*x[7]*x[31]+0.8*x[7]*x[33]-0.06*x[7]*x[36]-1.22*x[7]*x[39]+1.62*x[7]*x[41]-0.92*x[7]*x[45]-0.7*x[7]*x[48]+0.3*x[7]*x[49]+1.92*x[7]*x[50]+0.74*x[7]*x[51]+1.78*x[8]*x[10]-1.18*x[8]*x[11]-0.98*x[8]*x[12]-0.08*x[8]*x[13]+0.5*x[8]*x[14]-0.52*x[8]*x[15]-1.1*x[8]*x[19]-0.12*x[8]*x[21]-0.2*x[8]*x[22]+1.3*x[8]*x[23]-0.72*x[8]*x[26]+1.16*x[8]*x[27]-0.52*x[8]*x[28]-1.94*x[8]*x[29]-0.9*x[8]*x[30]-1.74*x[8]*x[31]+1.68*x[8]*x[32]+1.14*x[8]*x[33]-0.54*x[8]*x[39]-0.24*x[8]*x[42]+0.02*x[8]*x[43]-0.24*x[8]*x[46]-1.6*x[8]*x[48]-1.32*x[8]*x[50]+0.2*x[8]*x[51]+0.86*x[9]*x[15]-0.04*x[9]*x[10]-1.58*x[9]*x[17]+0.62*x[9]*x[18]+1.76*x[9]*x[19]+1.48*x[9]*x[20]+0.66*x[9]*x[22]+1.9*x[9]*x[24]-1.7*x[9]*x[25]+1.8*x[9]*x[27]+0.24*x[9]*x[28]-1.76*x[9]*x[31]-0.12*x[9]*x[33]+1.62*x[9]*x[34]+0.68*x[9]*x[35]+0.68*x[9]*x[36]-0.72*x[9]*x[41]-1.32*x[9]*x[42]-1.78*x[9]*x[44]-1.48*x[9]*x[45]+1.1*x[9]*x[47]-1.14*x[9]*x[49]-0.6*x[9]*x[51]+1.7*x[10]*x[14]-0.8*x[10]*x[11]-0.42*x[10]*x[18]+0.84*x[10]*x[19]-0.8*x[10]*x[23]-0.2*x[10]*x[25]+1.38*x[10]*x[26]-0.18*x[10]*x[28]+1.86*x[10]*x[30]+1.18*x[10]*x[31]+0.9*x[10]*x[32]-0.06*x[10]*x[37]-1.4*x[10]*x[42]+1.52*x[10]*x[46]+0.94*x[10]*x[48]+1.2*x[10]*x[51]+(-1.4*x[11]*x[14])-0.38*x[11]*x[15]+1.8*x[11]*x[16]-0.9*x[11]*x[22]+0.58*x[11]*x[23]-1.16*x[11]*x[30]-1.94*x[11]*x[32]-1.4*x[11]*x[33]-0.98*x[11]*x[34]-0.1*x[11]*x[35]+0.74*x[11]*x[36]+0.24*x[11]*x[44]-1.52*x[11]*x[46]+0.28*x[11]*x[47]+0.1*x[11]*x[48]+0.54*x[11]*x[51]+(-1.44*x[12]*x[13])-1.96*x[12]*x[16]+1.32*x[12]*x[17]+1.2*x[12]*x[18]-1.98*x[12]*x[32]-0.58*x[12]*x[33]+1.76*x[12]*x[34]-0.16*x[12]*x[36]+1.62*x[12]*x[38]-1.66*x[12]*x[39]-0.82*x[12]*x[40]-1.12*x[12]*x[41]-1.02*x[12]*x[42]-1.64*x[12]*x[43]-1.8*x[12]*x[44]+0.62*x[12]*x[45]+0.34*x[12]*x[46]-1.22*x[12]*x[49]-0.4*x[12]*x[50]+1.34*x[13]*x[18]-0.68*x[13]*x[14]-0.98*x[13]*x[19]+1.04*x[13]*x[21]+1.72*x[13]*x[23]+1.02*x[13]*x[26]+0.72*x[13]*x[27]+0.42*x[13]*x[28]+0.54*x[13]*x[30]-0.7*x[13]*x[31]+1.84*x[13]*x[32]-1.82*x[13]*x[34]+1.4*x[13]*x[37]+0.48*x[13]*x[38]-0.26*x[13]*x[39]+1.22*x[13]*x[41]+0.24*x[13]*x[43]+0.74*x[13]*x[45]+1.08*x[13]*x[47]+0.3*x[13]*x[49]-0.94*x[13]*x[50]+0.22*x[13]*x[51]+0.6*x[14]*x[25]-1.24*x[14]*x[24]-0.42*x[14]*x[29]+0.1*x[14]*x[31]+0.82*x[14]*x[32]+0.2*x[14]*x[36]-0.94*x[14]*x[38]+0.48*x[14]*x[40]+1.56*x[14]*x[41]+1.04*x[14]*x[44]-1.7*x[14]*x[45]-0.82*x[14]*x[46]-0.16*x[14]*x[49]+0.82*x[14]*x[50]-0.2*x[14]*x[51]+0.26*x[15]*x[16]+0.46*x[15]*x[21]-1.26*x[15]*x[22]-1.46*x[15]*x[23]+1.78*x[15]*x[25]-0.06*x[15]*x[26]+1.68*x[15]*x[27]-0.12*x[15]*x[28]+0.98*x[15]*x[29]-0.04*x[15]*x[34]+0.94*x[15]*x[35]+0.28*x[15]*x[36]-0.62*x[15]*x[38]+0.04*x[15]*x[39]-1.42*x[15]*x[41]-1.98*x[15]*x[42]+0.58*x[15]*x[43]-0.84*x[15]*x[44]-0.5*x[15]*x[45]-1.56*x[15]*x[46]-0.32*x[15]*x[51]+1.98*x[16]*x[23]-1.8*x[16]*x[19]+1.28*x[16]*x[24]+0.88*x[16]*x[27]-0.54*x[16]*x[28]+0.7*x[16]*x[29]-0.86*x[16]*x[30]+1.58*x[16]*x[31]+0.5*x[16]*x[32]+1.48*x[16]*x[37]+1.64*x[16]*x[38]-0.64*x[16]*x[39]-1.1*x[16]*x[40]+1.06*x[16]*x[42]-1.92*x[16]*x[43]-0.28*x[16]*x[44]+0.94*x[16]*x[45]+1.38*x[16]*x[46]-1.96*x[16]*x[48]+1.68*x[16]*x[51]+0.16*x[17]*x[21]+1.6*x[17]*x[27]+1.44*x[17]*x[31]+1.04*x[17]*x[32]-1.28*x[17]*x[34]+0.12*x[17]*x[35]-0.94*x[17]*x[36]+1.44*x[17]*x[37]+1.22*x[17]*x[38]+0.42*x[17]*x[39]+1.04*x[17]*x[41]+1.64*x[17]*x[43]+1.9*x[17]*x[44]-1.78*x[17]*x[46]+1.58*x[17]*x[47]+0.04*x[18]*x[19]+1.44*x[18]*x[24]+1.32*x[18]*x[26]-1.04*x[18]*x[27]+0.3*x[18]*x[30]+0.06*x[18]*x[32]+0.04*x[18]*x[34]-0.78*x[18]*x[36]+0.22*x[18]*x[37]+0.28*x[18]*x[41]+0.14*x[18]*x[44]-1.98*x[18]*x[46]-1.1*x[18]*x[47]+0.66*x[19]*x[23]-0.66*x[19]*x[21]-0.46*x[19]*x[27]-1.98*x[19]*x[28]-1.56*x[19]*x[29]-1.72*x[19]*x[36]+0.62*x[19]*x[37]-1.02*x[19]*x[38]+0.96*x[19]*x[39]+0.08*x[19]*x[40]+1.56*x[19]*x[42]-0.18*x[19]*x[44]-0.16*x[19]*x[46]-2*x[19]*x[47]+1.44*x[19]*x[48]-1.64*x[19]*x[49]+0.2*x[19]*x[50]+1.1*x[20]*x[21]-1.4*x[20]*x[23]+0.94*x[20]*x[24]-0.04*x[20]*x[25]-1.36*x[20]*x[26]+1.14*x[20]*x[28]-1.96*x[20]*x[29]+0.62*x[20]*x[30]+0.54*x[20]*x[31]-0.22*x[20]*x[34]-1.2*x[20]*x[35]+0.44*x[20]*x[36]-1.74*x[20]*x[37]+0.8*x[20]*x[40]+0.46*x[20]*x[41]+0.3*x[20]*x[46]+1.08*x[20]*x[47]-1.1*x[20]*x[49]-1.24*x[20]*x[50]+0.46*x[21]*x[23]+0.84*x[21]*x[24]+1.52*x[21]*x[25]+1.68*x[21]*x[26]+0.06*x[21]*x[27]+1.32*x[21]*x[28]+0.98*x[21]*x[31]-0.8*x[21]*x[37]+0.38*x[21]*x[40]+1.42*x[21]*x[42]+1.92*x[21]*x[43]-1.46*x[21]*x[44]+1.56*x[21]*x[45]+0.66*x[21]*x[47]-1.68*x[21]*x[48]+1.12*x[21]*x[49]-0.3*x[21]*x[50]+(-1.08*x[22]*x[23])-1.82*x[22]*x[24]+1.62*x[22]*x[25]-0.7*x[22]*x[28]+0.08*x[22]*x[32]-1.96*x[22]*x[37]+0.36*x[22]*x[39]+1.6*x[22]*x[44]-0.18*x[22]*x[48]+1.98*x[23]*x[28]-0.52*x[23]*x[32]+0.22*x[23]*x[33]-0.54*x[23]*x[35]-1.58*x[23]*x[36]-1.38*x[23]*x[37]-0.8*x[23]*x[38]-0.1*x[23]*x[40]-0.08*x[23]*x[42]+1.06*x[23]*x[43]+0.08*x[23]*x[44]-1.4*x[23]*x[51]+(-0.9*x[24]*x[27])-1.2*x[24]*x[28]+0.88*x[24]*x[29]+0.5*x[24]*x[30]+1.36*x[24]*x[31]+2*x[24]*x[37]+1.04*x[24]*x[38]+1.44*x[24]*x[39]+1.54*x[24]*x[42]+0.82*x[24]*x[44]+1.64*x[24]*x[47]-1.64*x[24]*x[50]+1.96*x[25]*x[26]+0.52*x[25]*x[27]-1.18*x[25]*x[29]-1.36*x[25]*x[33]-1.98*x[25]*x[34]-1.62*x[25]*x[37]-1.12*x[25]*x[38]-1.18*x[25]*x[40]-1.5*x[25]*x[51]+0.32*x[26]*x[29]-1.18*x[26]*x[32]-1.24*x[26]*x[39]-1.38*x[26]*x[41]+0.92*x[26]*x[42]-0.74*x[26]*x[43]+1.52*x[26]*x[44]-1.22*x[26]*x[47]+0.7*x[26]*x[49]-1.22*x[26]*x[50]-0.4*x[26]*x[51]+(-0.62*x[27]*x[28])-1.14*x[27]*x[32]-0.78*x[27]*x[36]-0.86*x[27]*x[37]-1.84*x[27]*x[39]+0.84*x[27]*x[40]+1.84*x[27]*x[43]-0.78*x[27]*x[48]+1.18*x[28]*x[30]-1.08*x[28]*x[29]-0.08*x[28]*x[32]+0.24*x[28]*x[33]+1.84*x[28]*x[34]-1.58*x[28]*x[39]+0.46*x[28]*x[40]-1.42*x[28]*x[44]-0.66*x[28]*x[46]-0.58*x[28]*x[48]-0.94*x[28]*x[49]+0.22*x[28]*x[50]+0.54*x[29]*x[31]-1.36*x[29]*x[30]+1.34*x[29]*x[32]-0.68*x[29]*x[34]+1.44*x[29]*x[39]+1.64*x[29]*x[40]+0.98*x[29]*x[41]-1.18*x[29]*x[43]-0.4*x[29]*x[44]+1.88*x[29]*x[46]+1.36*x[29]*x[47]-1.56*x[29]*x[48]+0.14*x[30]*x[36]-0.92*x[30]*x[38]-0.2*x[30]*x[39]+1.8*x[30]*x[42]-1.62*x[30]*x[45]-1.84*x[30]*x[46]+1.56*x[30]*x[47]+1.08*x[30]*x[48]-1.4*x[30]*x[51]+(-0.28*x[31]*x[32])-0.8*x[31]*x[34]+1.92*x[31]*x[35]+1.3*x[31]*x[38]+1.16*x[31]*x[39]-0.2*x[31]*x[43]-0.72*x[31]*x[45]-0.08*x[31]*x[46]-0.44*x[31]*x[47]+1.56*x[31]*x[49]+1.4*x[31]*x[50]+(-0.06*x[32]*x[36])-1.94*x[32]*x[37]+1.66*x[32]*x[38]+0.82*x[32]*x[39]-1.32*x[32]*x[40]+0.06*x[32]*x[41]+0.44*x[32]*x[43]-0.9*x[32]*x[44]-0.98*x[32]*x[47]+1.02*x[32]*x[49]+1.3*x[33]*x[35]-1.28*x[33]*x[36]-0.62*x[33]*x[37]+1.44*x[33]*x[38]+1.84*x[33]*x[39]+1.08*x[33]*x[43]-0.44*x[33]*x[44]-0.04*x[33]*x[50]+0.58*x[34]*x[35]-0.5*x[34]*x[36]+0.74*x[34]*x[38]-1.24*x[34]*x[40]-0.68*x[34]*x[41]-1.28*x[34]*x[42]+0.74*x[34]*x[45]+0.4*x[34]*x[47]-0.2*x[34]*x[48]+0.54*x[34]*x[49]+1.18*x[34]*x[51]+0.04*x[35]*x[38]+1.52*x[35]*x[39]+1.84*x[35]*x[41]+0.42*x[35]*x[42]-0.3*x[35]*x[46]-0.74*x[35]*x[47]+0.04*x[35]*x[49]-1.76*x[35]*x[50]-0.72*x[35]*x[51]+1.58*x[36]*x[38]-0.72*x[36]*x[37]+1.6*x[36]*x[46]-0.28*x[36]*x[47]+0.92*x[36]*x[49]+1.04*x[36]*x[50]+(-0.04*x[37]*x[38])-0.48*x[37]*x[43]-1.68*x[37]*x[44]-1.14*x[37]*x[48]+0.82*x[37]*x[49]+1.74*x[37]*x[51]+1.14*x[38]*x[39]-0.28*x[38]*x[45]+1.04*x[38]*x[46]+1.14*x[39]*x[40]-1.78*x[39]*x[42]-0.66*x[39]*x[47]-0.02*x[39]*x[50]+(-0.1*x[40]*x[41])-0.78*x[40]*x[42]-0.24*x[40]*x[43]+0.94*x[40]*x[45]+1.58*x[40]*x[46]-x[40]*x[47]+1.24*x[40]*x[51]+0.76*x[41]*x[43]-1.64*x[41]*x[42]+1.56*x[41]*x[47]+0.64*x[41]*x[48]-0.62*x[41]*x[49]+0.1*x[42]*x[45]-1.68*x[42]*x[44]+1.62*x[42]*x[46]-0.46*x[42]*x[47]-0.36*x[42]*x[49]+1.14*x[42]*x[51]+0.92*x[43]*x[45]+1.56*x[43]*x[46]+1.02*x[43]*x[48]+1.34*x[43]*x[51]+0.84*x[44]*x[47]-0.56*x[44]*x[48]+0.62*x[44]*x[49]+0.78*x[44]*x[51]+1.14*x[45]*x[46]+1.52*x[45]*x[47]-0.78*x[45]*x[49]-1.88*x[45]*x[50]-0.36*x[45]*x[51]+1.66*x[46]*x[50]+1.26*x[47]*x[50]+1.22*x[47]*x[51]+(-0.4*x[48]*x[50])-1.66*x[48]*x[51]+0.04*x[49]*x[50]-0.18*x[49]*x[51]+1.94*x[50]*x[51]+0.13*x[8]*x[8]-0.5*x[7]*x[7]+0.34*x[10]*x[10]+0.71*x[11]*x[11]+0.18*x[12]*x[12]-0.43*x[13]*x[13]+0.37*x[14]*x[14]-0.93*x[16]*x[16]+0.28*x[17]*x[17]+0.74*x[19]*x[19]+0.72*x[20]*x[20]+0.51*x[21]*x[21]-0.9*x[23]*x[23]-0.94*x[24]*x[24]+0.58*x[26]*x[26]-0.33*x[27]*x[27]+0.95*x[28]*x[28]-0.02*x[37]*x[37]-0.36*x[39]*x[39]-0.19*x[41]*x[41]+0.64*x[42]*x[42]-0.44*x[43]*x[43]+0.94*x[44]*x[44]-0.01*x[45]*x[45]+0.58*x[48]*x[48]+0.59*x[2]-0.95*x[3]-0.09*x[4]-0.65*x[5]+0.07*x[6]-0.35*x[7]-0.1*x[8]+0.25*x[9]-0.04*x[10]-0.3*x[11]-0.27*x[12]+0.8*x[13]-0.21*x[14]+0.14*x[15]-0.85*x[16]+0.61*x[17]+0.12*x[18]-0.37*x[19]+0.81*x[20]+0.94*x[21]-0.5*x[22]+0.23*x[23]-0.82*x[24]+0.85*x[25]+0.43*x[26]+0.61*x[27]-0.78*x[28]+0.87*x[30]-0.6*x[31]-0.45*x[32]+0.02*x[33]+0.81*x[34]-0.08*x[35]-0.64*x[36]-0.41*x[37]-0.08*x[38]-0.13*x[39]-0.49*x[40]+0.61*x[41]-0.64*x[42]-0.9*x[43]+0.73*x[44]+0.5*x[45]-0.1*x[46]+0.38*x[47]-0.48*x[48]-0.54*x[49]+0.85*x[50]-0.12*x[51] <= 32.29)
@constraint(m, e3, -0.06*x[2]+0.16*x[3]-0.38*x[4]+0.1*x[5]+0.5*x[6]-0.66*x[7]-0.47*x[8]-0.63*x[9]-0.64*x[10]-0.02*x[11]-0.97*x[12]+0.4*x[13]-0.63*x[14]+0.7*x[15]+0.88*x[16]+0.77*x[17]-0.5*x[18]+0.64*x[19]-0.31*x[20]-0.57*x[21]+0.51*x[22]-0.91*x[23]+0.07*x[24]-0.26*x[25]+0.47*x[26]-0.6*x[27]-0.87*x[28]+0.03*x[29]+0.36*x[30]-0.42*x[31]+0.18*x[32]-0.19*x[33]+0.42*x[34]+0.78*x[35]+0.35*x[36]-0.09*x[37]-0.05*x[38]-0.71*x[39]-0.17*x[40]-0.32*x[41]-0.95*x[42]+0.69*x[43]+0.46*x[44]-0.79*x[45]+0.83*x[46]-0.37*x[47]-0.35*x[48]+0.7*x[49]-0.07*x[50]-0.01*x[51] == -0.55)
@constraint(m, e4, 0.06*x[2]+0.58*x[3]+0.08*x[4]+0.39*x[5]-0.07*x[6]-0.12*x[7]-0.63*x[8]+0.05*x[9]+0.69*x[10]-0.97*x[11]+0.82*x[12]+0.03*x[13]+0.88*x[14]-0.76*x[15]+0.28*x[16]-0.2*x[17]+0.09*x[18]-0.24*x[19]-0.13*x[20]+0.34*x[21]+0.52*x[22]-0.11*x[23]-0.46*x[24]-0.28*x[25]-0.64*x[26]+0.87*x[27]-0.08*x[28]-0.02*x[29]-0.03*x[30]-0.25*x[31]+0.91*x[32]-0.16*x[33]+0.36*x[34]-0.73*x[35]+0.54*x[36]-0.09*x[37]-0.84*x[38]-0.84*x[39]+0.93*x[40]+0.06*x[41]-0.03*x[42]+0.84*x[43]-0.13*x[44]-0.06*x[45]-0.23*x[46]+0.17*x[47]-0.78*x[48]-0.13*x[49]+0.64*x[50]+0.18*x[51] == 0.49)
@constraint(m, e5, -0.45*x[2]+0.76*x[3]+0.83*x[4]-0.16*x[5]+0.76*x[6]-0.88*x[7]+0.41*x[8]-0.14*x[9]+0.49*x[10]+0.34*x[11]+0.78*x[12]+0.52*x[13]+0.03*x[14]-0.15*x[15]-0.14*x[16]+0.45*x[17]-0.71*x[18]+0.97*x[19]-0.45*x[20]+0.91*x[21]-0.29*x[22]-0.43*x[23]+0.08*x[24]+0.8*x[25]+0.45*x[26]+0.88*x[27]+0.11*x[28]-0.01*x[29]+0.4*x[30]-0.58*x[31]-x[32]-0.76*x[33]-0.09*x[34]-0.26*x[35]-0.07*x[36]-0.81*x[37]+0.35*x[38]-0.61*x[39]+0.29*x[40]-0.2*x[41]-0.51*x[42]+0.19*x[43]-0.44*x[44]+0.33*x[45]+0.75*x[46]-0.71*x[47]-0.39*x[48]+0.43*x[49]-0.27*x[50]+0.38*x[51] == -0.96)
@constraint(m, e6, 0.27*x[2]+0.14*x[3]-0.5*x[4]-0.64*x[5]+0.17*x[6]-0.06*x[7]-0.36*x[8]-0.63*x[9]-0.42*x[10]+0.75*x[11]+0.13*x[12]-0.62*x[13]+0.66*x[14]-0.55*x[15]-0.59*x[16]-0.02*x[17]-0.36*x[18]-0.84*x[19]-0.3*x[20]+0.15*x[21]-0.46*x[22]-0.92*x[23]+0.96*x[24]+0.32*x[25]+0.09*x[26]+0.28*x[27]+0.67*x[28]+0.81*x[29]+0.77*x[30]+0.04*x[31]-0.47*x[32]-x[33]-0.67*x[34]+0.88*x[35]+0.78*x[36]+0.1*x[37]-0.31*x[38]+0.52*x[39]-0.35*x[40]+0.31*x[41]-0.11*x[42]-0.29*x[43]+0.07*x[44]+0.37*x[45]-0.77*x[46]-0.48*x[47]+0.41*x[48]-0.58*x[49]-0.32*x[50]-0.21*x[51] == 0.82)
@constraint(m, e7, -0.06*x[2]+0.2*x[3]+0.77*x[4]+0.26*x[5]-0.1*x[6]-0.9*x[7]-0.32*x[8]+0.27*x[9]+0.05*x[10]-0.94*x[11]+0.57*x[12]+0.58*x[13]+0.11*x[14]+0.84*x[15]+0.48*x[16]-0.35*x[17]-0.09*x[18]+0.94*x[19]+0.59*x[20]-0.57*x[21]-0.85*x[22]+0.02*x[23]-0.51*x[24]+0.13*x[25]+0.54*x[26]-0.03*x[27]-0.12*x[28]-x[29]-0.03*x[30]-0.75*x[31]-0.85*x[32]+0.19*x[33]-0.92*x[34]+0.59*x[35]-0.68*x[36]-0.3*x[37]+0.13*x[38]+0.18*x[39]+0.04*x[40]-0.78*x[41]+0.66*x[42]-0.21*x[43]+0.14*x[44]-0.44*x[45]-0.27*x[46]+0.43*x[47]-0.85*x[48]-0.53*x[49]+0.69*x[50]+0.82*x[51] == -0.26)
@constraint(m, e8, 0.21*x[2]-0.28*x[3]+0.16*x[4]-0.78*x[5]+0.24*x[6]+0.53*x[7]-0.39*x[8]-0.49*x[9]-0.64*x[10]-0.7*x[11]-0.24*x[12]-0.01*x[13]-0.31*x[14]+0.07*x[15]+0.32*x[16]-0.18*x[17]+0.78*x[18]-0.92*x[19]+0.2*x[20]+0.33*x[21]+0.22*x[22]+0.98*x[23]+0.14*x[24]-0.68*x[25]-0.55*x[26]+0.34*x[27]-0.26*x[28]+0.07*x[29]-0.7*x[30]-0.12*x[31]+0.01*x[32]-0.64*x[33]+0.66*x[34]-0.04*x[35]-0.26*x[36]+0.63*x[37]-0.95*x[38]+0.83*x[39]-0.98*x[40]-0.05*x[41]+0.23*x[42]+0.54*x[43]-0.59*x[44]+0.56*x[45]+0.34*x[46]+0.26*x[47]-0.32*x[48]-0.67*x[49]-0.41*x[50]+0.57*x[51] == -0.23)
@constraint(m, e9, 0.17*x[2]-0.65*x[3]+0.78*x[4]-0.66*x[5]-0.34*x[6]+0.13*x[7]-0.2*x[8]+0.05*x[9]-0.57*x[10]-0.19*x[11]+0.15*x[12]+0.17*x[13]+0.93*x[14]-0.63*x[15]-0.75*x[16]-0.64*x[17]-0.92*x[18]+0.83*x[19]+0.54*x[20]+0.16*x[21]-0.14*x[22]+0.78*x[23]-0.63*x[24]-0.58*x[25]+0.28*x[26]+0.58*x[27]-0.23*x[28]-0.27*x[29]+0.44*x[30]-0.53*x[31]+0.46*x[32]-0.22*x[33]+0.93*x[34]-0.69*x[35]-0.71*x[36]+0.73*x[37]-0.01*x[38]-0.79*x[39]+0.31*x[40]+0.98*x[41]+0.47*x[42]+0.92*x[43]-0.16*x[44]-0.71*x[45]-0.98*x[46]-0.1*x[47]+0.74*x[48]+0.28*x[49]+0.25*x[50]+0.47*x[51] == -0.71)
@constraint(m, e10, 0.52*x[2]+0.99*x[3]+0.39*x[4]-0.22*x[5]+0.64*x[6]-0.05*x[7]+0.78*x[8]+0.35*x[9]-0.73*x[10]+0.2*x[11]-0.19*x[12]+0.92*x[13]+0.87*x[14]+0.27*x[15]+0.05*x[16]+0.04*x[17]-0.12*x[18]+0.04*x[19]+0.71*x[20]-0.21*x[21]-0.96*x[22]+0.71*x[23]-0.79*x[24]-0.61*x[25]-0.71*x[26]-0.99*x[27]+0.73*x[28]+x[29]-0.4*x[30]-0.62*x[31]+0.34*x[32]+0.48*x[33]+0.61*x[34]+0.39*x[35]-0.57*x[36]+0.69*x[37]+0.03*x[38]+0.94*x[39]+0.26*x[40]-0.13*x[41]+0.11*x[42]+0.73*x[43]+0.22*x[44]-0.27*x[45]+0.33*x[46]+0.77*x[47]+0.96*x[48]+0.64*x[49]+0.15*x[50]-0.42*x[51] == -0.24)
@constraint(m, e11, 0.06*x[2]-0.6*x[3]+0.77*x[4]-0.6*x[5]+0.49*x[6]+0.45*x[7]-0.21*x[8]-0.01*x[9]-0.72*x[10]-0.24*x[11]-0.69*x[12]-0.57*x[13]+0.24*x[14]+0.23*x[15]-0.68*x[16]-0.19*x[17]+0.87*x[18]-0.6*x[19]+0.67*x[20]-0.45*x[21]+0.17*x[22]+0.12*x[23]-0.08*x[24]-0.43*x[25]+0.53*x[26]+0.26*x[27]+0.04*x[28]+0.84*x[29]-0.07*x[30]+0.68*x[31]+0.34*x[32]-0.28*x[33]-0.98*x[34]-0.51*x[35]-0.67*x[36]-0.4*x[37]-0.07*x[38]-0.34*x[39]-0.37*x[40]-0.82*x[41]+0.3*x[42]-0.45*x[43]-0.63*x[44]+0.94*x[45]+0.1*x[46]-0.23*x[47]+0.38*x[48]-0.33*x[49]+0.35*x[50]-0.9*x[51] == 0.51)
@constraint(m, e12, 0.13*x[2]-0.45*x[3]-0.68*x[4]+0.91*x[5]+0.3*x[6]-0.22*x[7]-0.62*x[8]+0.77*x[9]-0.33*x[10]-0.21*x[11]-0.06*x[12]+0.46*x[13]+0.36*x[14]-0.85*x[15]+x[16]-0.37*x[17]-0.25*x[19]+0.01*x[20]+0.57*x[21]-0.4*x[22]+0.08*x[23]-0.96*x[24]-0.92*x[25]-0.69*x[26]-0.22*x[27]+0.13*x[28]-0.48*x[29]-0.91*x[30]-0.37*x[31]-0.97*x[32]-0.82*x[33]-0.84*x[34]-0.32*x[35]-0.71*x[36]+0.58*x[37]+0.42*x[38]+0.86*x[39]+0.23*x[40]+0.58*x[41]+0.97*x[42]+0.02*x[43]+0.99*x[44]+0.03*x[45]+0.63*x[46]+0.94*x[47]+0.56*x[48]-0.19*x[49]-0.74*x[50]+0.08*x[51] == -0.03)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.