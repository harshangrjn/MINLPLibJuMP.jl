using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
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
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
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
set_upper_bound(x[52], 1.0)
set_upper_bound(x[53], 1.0)
set_upper_bound(x[54], 1.0)
set_upper_bound(x[55], 1.0)
set_upper_bound(x[56], 1.0)
set_upper_bound(x[57], 1.0)
set_upper_bound(x[58], 1.0)
set_upper_bound(x[59], 1.0)
set_upper_bound(x[60], 1.0)
set_upper_bound(x[61], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.82*x[2]*x[7]-1.14*x[2]*x[9]+0.3*x[2]*x[10]+0.78*x[2]*x[11]+1.4*x[2]*x[13]-0.38*x[2]*x[14]-1.42*x[2]*x[15]-0.84*x[2]*x[16]-0.14*x[2]*x[19]+0.02*x[2]*x[20]-0.08*x[2]*x[21]-1.12*x[2]*x[24]+1.98*x[2]*x[25]-0.78*x[2]*x[26]+1.1*x[2]*x[27]-0.78*x[2]*x[29]+1.32*x[2]*x[31]-1.76*x[2]*x[32]-0.44*x[2]*x[33]-0.06*x[2]*x[37]-1.64*x[2]*x[42]+0.46*x[2]*x[45]-0.46*x[2]*x[47]-0.68*x[2]*x[50]-0.38*x[2]*x[52]+1.52*x[2]*x[55]+1.2*x[2]*x[56]-0.06*x[2]*x[58]-1.58*x[2]*x[59]+1.06*x[3]*x[12]-1.18*x[3]*x[13]+0.98*x[3]*x[16]-x[3]*x[17]+0.34*x[3]*x[19]+1.06*x[3]*x[21]+0.88*x[3]*x[22]+1.76*x[3]*x[24]+0.26*x[3]*x[27]+1.6*x[3]*x[28]+0.88*x[3]*x[33]-1.34*x[3]*x[35]-0.48*x[3]*x[36]-0.3*x[3]*x[37]-1.9*x[3]*x[40]+0.32*x[3]*x[41]+0.22*x[3]*x[44]-1.06*x[3]*x[46]-0.44*x[3]*x[50]+1.5*x[3]*x[53]-1.86*x[3]*x[55]-0.34*x[3]*x[58]+1.74*x[3]*x[60]+0.06*x[3]*x[61]+(-0.96*x[4]*x[7])-1.08*x[4]*x[12]-1.96*x[4]*x[14]+1.46*x[4]*x[15]+0.96*x[4]*x[16]+1.6*x[4]*x[17]-0.5*x[4]*x[18]+1.46*x[4]*x[19]+1.8*x[4]*x[20]+0.02*x[4]*x[21]-1.18*x[4]*x[27]+1.08*x[4]*x[29]-1.38*x[4]*x[30]-1.28*x[4]*x[31]-0.92*x[4]*x[32]+1.42*x[4]*x[35]-1.6*x[4]*x[36]+1.16*x[4]*x[38]-1.8*x[4]*x[44]+0.66*x[4]*x[48]-1.62*x[4]*x[50]+1.18*x[4]*x[51]-1.38*x[4]*x[53]+0.7*x[4]*x[55]+0.92*x[4]*x[56]+0.4*x[4]*x[58]-1.08*x[4]*x[59]+0.12*x[4]*x[61]+0.76*x[5]*x[6]-1.12*x[5]*x[7]+1.38*x[5]*x[8]+0.06*x[5]*x[12]+1.78*x[5]*x[15]-1.88*x[5]*x[17]-1.28*x[5]*x[18]+1.2*x[5]*x[23]-0.1*x[5]*x[25]+1.2*x[5]*x[29]+1.58*x[5]*x[32]+1.18*x[5]*x[35]+1.86*x[5]*x[36]-0.08*x[5]*x[40]+0.36*x[5]*x[42]-1.76*x[5]*x[44]+1.92*x[5]*x[45]+0.68*x[5]*x[46]+1.14*x[5]*x[49]+1.38*x[5]*x[50]-0.24*x[5]*x[51]+1.16*x[5]*x[52]+1.66*x[5]*x[53]-0.74*x[5]*x[54]+0.64*x[5]*x[57]+(-1.84*x[6]*x[8])-1.32*x[6]*x[9]-0.54*x[6]*x[14]+1.02*x[6]*x[15]+1.04*x[6]*x[17]-0.48*x[6]*x[18]-1.2*x[6]*x[20]+1.02*x[6]*x[22]-1.78*x[6]*x[23]-0.22*x[6]*x[25]-0.06*x[6]*x[26]-1.8*x[6]*x[35]+1.92*x[6]*x[36]+0.26*x[6]*x[38]+1.54*x[6]*x[39]-1.42*x[6]*x[41]+0.14*x[6]*x[42]-1.08*x[6]*x[43]-1.22*x[6]*x[45]+0.2*x[6]*x[46]+1.5*x[6]*x[47]-1.78*x[6]*x[49]+0.94*x[6]*x[50]-0.58*x[6]*x[53]-0.44*x[6]*x[55]+1.68*x[6]*x[56]+1.22*x[6]*x[58]+(-1.66*x[7]*x[10])-0.86*x[7]*x[14]+1.5*x[7]*x[15]-1.52*x[7]*x[16]-1.04*x[7]*x[17]-0.56*x[7]*x[18]+0.9*x[7]*x[21]-1.82*x[7]*x[23]-0.68*x[7]*x[25]-0.34*x[7]*x[26]-1.22*x[7]*x[28]-1.1*x[7]*x[29]+0.44*x[7]*x[31]+1.8*x[7]*x[32]+1.12*x[7]*x[33]-1.72*x[7]*x[35]+1.7*x[7]*x[36]-1.74*x[7]*x[47]+0.16*x[7]*x[50]-1.1*x[7]*x[51]-1.26*x[7]*x[53]-0.16*x[7]*x[55]-0.66*x[7]*x[58]-0.9*x[7]*x[59]-1.56*x[7]*x[61]+(-1.42*x[8]*x[13])-1.22*x[8]*x[17]-1.84*x[8]*x[19]+1.4*x[8]*x[20]+1.06*x[8]*x[21]+1.5*x[8]*x[22]+1.6*x[8]*x[23]+0.24*x[8]*x[25]+0.48*x[8]*x[27]-0.72*x[8]*x[30]+0.16*x[8]*x[31]+1.36*x[8]*x[32]-0.64*x[8]*x[36]+1.88*x[8]*x[37]-0.58*x[8]*x[38]-0.52*x[8]*x[39]-0.08*x[8]*x[43]+1.42*x[8]*x[45]-0.5*x[8]*x[47]+1.22*x[8]*x[48]+1.48*x[8]*x[49]+0.02*x[8]*x[52]+0.2*x[8]*x[54]+1.04*x[8]*x[56]+0.7*x[8]*x[58]+(-0.2*x[9]*x[10])-0.84*x[9]*x[11]+1.72*x[9]*x[12]-0.26*x[9]*x[13]+1.14*x[9]*x[14]+0.76*x[9]*x[17]+1.38*x[9]*x[18]-1.54*x[9]*x[19]+0.92*x[9]*x[20]-0.34*x[9]*x[23]+1.66*x[9]*x[26]-1.36*x[9]*x[27]+1.08*x[9]*x[29]-0.5*x[9]*x[30]+1.72*x[9]*x[31]+1.16*x[9]*x[33]-1.32*x[9]*x[35]+0.08*x[9]*x[36]-0.56*x[9]*x[43]+1.72*x[9]*x[46]+1.32*x[9]*x[47]+0.32*x[9]*x[50]+1.7*x[9]*x[51]+1.86*x[9]*x[54]+0.7*x[9]*x[57]-1.82*x[9]*x[58]+0.54*x[9]*x[59]+0.28*x[10]*x[12]-0.4*x[10]*x[11]+1.52*x[10]*x[13]-0.02*x[10]*x[14]-0.3*x[10]*x[15]-0.14*x[10]*x[16]-0.84*x[10]*x[17]+0.68*x[10]*x[19]-0.74*x[10]*x[25]+1.86*x[10]*x[26]-0.36*x[10]*x[27]-0.84*x[10]*x[28]+1.54*x[10]*x[29]+0.16*x[10]*x[32]+0.18*x[10]*x[33]+0.62*x[10]*x[34]-1.48*x[10]*x[35]-0.14*x[10]*x[45]-0.48*x[10]*x[46]-1.9*x[10]*x[48]-0.18*x[10]*x[49]+0.42*x[10]*x[50]+0.4*x[10]*x[52]+0.34*x[10]*x[54]+0.94*x[10]*x[58]+1.34*x[10]*x[59]-0.7*x[10]*x[60]-0.18*x[10]*x[61]+0.92*x[11]*x[12]+1.42*x[11]*x[13]+0.92*x[11]*x[14]+1.7*x[11]*x[20]+1.92*x[11]*x[26]-1.74*x[11]*x[27]-0.12*x[11]*x[28]+1.48*x[11]*x[29]-0.24*x[11]*x[30]+0.8*x[11]*x[31]-1.46*x[11]*x[32]+0.2*x[11]*x[34]+1.2*x[11]*x[38]+0.64*x[11]*x[39]+1.98*x[11]*x[44]-1.52*x[11]*x[47]-1.08*x[11]*x[49]-1.94*x[11]*x[52]+0.68*x[11]*x[54]+0.56*x[11]*x[55]+1.52*x[11]*x[56]-0.92*x[11]*x[57]+1.26*x[11]*x[61]+0.38*x[12]*x[15]+0.42*x[12]*x[17]+0.72*x[12]*x[18]+1.98*x[12]*x[19]-0.24*x[12]*x[20]-1.34*x[12]*x[21]+1.12*x[12]*x[26]-1.26*x[12]*x[27]-0.66*x[12]*x[32]-1.86*x[12]*x[34]+0.52*x[12]*x[35]+1.32*x[12]*x[36]+1.06*x[12]*x[37]-0.94*x[12]*x[38]+0.7*x[12]*x[39]+1.72*x[12]*x[41]-1.36*x[12]*x[43]-0.78*x[12]*x[49]+0.44*x[12]*x[51]+1.64*x[12]*x[52]+1.48*x[12]*x[54]-1.54*x[12]*x[55]-0.08*x[12]*x[58]-1.42*x[12]*x[61]+0.76*x[13]*x[17]-0.34*x[13]*x[18]+1.7*x[13]*x[19]-1.82*x[13]*x[24]+1.26*x[13]*x[25]-0.98*x[13]*x[26]-1.16*x[13]*x[27]-0.96*x[13]*x[28]-0.24*x[13]*x[31]+0.3*x[13]*x[32]-0.24*x[13]*x[35]-1.62*x[13]*x[37]+1.88*x[13]*x[38]+0.86*x[13]*x[39]-1.24*x[13]*x[46]+1.52*x[13]*x[52]-0.02*x[13]*x[55]+0.94*x[13]*x[56]-1.52*x[13]*x[57]-0.78*x[13]*x[58]-1.84*x[13]*x[59]-0.38*x[13]*x[60]+0.74*x[14]*x[17]-1.28*x[14]*x[19]+1.76*x[14]*x[21]-1.76*x[14]*x[25]-0.42*x[14]*x[29]+1.18*x[14]*x[31]+1.46*x[14]*x[32]+0.02*x[14]*x[33]-1.66*x[14]*x[38]-1.58*x[14]*x[40]+0.5*x[14]*x[41]-1.66*x[14]*x[43]-1.64*x[14]*x[44]+1.1*x[14]*x[47]+0.94*x[14]*x[52]+0.86*x[14]*x[54]-1.9*x[14]*x[55]-1.78*x[14]*x[57]-1.2*x[14]*x[58]+0.88*x[14]*x[60]-1.34*x[14]*x[61]+1.7*x[15]*x[20]-1.66*x[15]*x[18]-1.72*x[15]*x[22]+0.32*x[15]*x[23]-0.7*x[15]*x[26]+0.96*x[15]*x[27]-1.64*x[15]*x[29]-0.98*x[15]*x[30]-0.06*x[15]*x[31]+1.54*x[15]*x[32]+1.28*x[15]*x[33]-0.74*x[15]*x[34]+1.38*x[15]*x[37]+0.08*x[15]*x[39]+0.64*x[15]*x[40]+1.72*x[15]*x[41]+1.76*x[15]*x[44]-1.8*x[15]*x[48]+0.3*x[15]*x[49]-1.8*x[15]*x[50]-1.82*x[15]*x[51]+1.7*x[15]*x[54]+0.16*x[15]*x[58]+0.36*x[15]*x[59]-1.6*x[15]*x[61]+0.08*x[16]*x[18]-0.5*x[16]*x[17]-1.8*x[16]*x[22]+0.5*x[16]*x[23]-1.28*x[16]*x[26]-0.26*x[16]*x[29]+0.34*x[16]*x[30]+1.72*x[16]*x[31]-0.28*x[16]*x[32]+0.52*x[16]*x[33]+1.96*x[16]*x[34]+0.7*x[16]*x[35]+0.14*x[16]*x[36]+1.72*x[16]*x[39]+1.68*x[16]*x[42]+1.58*x[16]*x[45]+0.84*x[16]*x[47]-1.58*x[16]*x[48]+0.98*x[16]*x[49]-1.82*x[16]*x[52]-1.96*x[16]*x[53]+0.52*x[16]*x[54]-1.32*x[16]*x[55]-0.54*x[16]*x[57]+0.12*x[16]*x[58]-1.04*x[16]*x[59]+0.4*x[17]*x[18]-1.84*x[17]*x[19]+1.44*x[17]*x[21]+1.58*x[17]*x[22]-1.04*x[17]*x[23]+1.8*x[17]*x[25]+0.06*x[17]*x[28]-1.04*x[17]*x[31]-1.5*x[17]*x[32]-1.04*x[17]*x[33]-0.08*x[17]*x[35]-0.54*x[17]*x[36]+0.92*x[17]*x[37]-0.1*x[17]*x[40]+0.42*x[17]*x[41]+1.28*x[17]*x[43]-0.28*x[17]*x[44]+1.88*x[17]*x[45]-0.76*x[17]*x[47]+1.28*x[17]*x[49]+1.86*x[17]*x[52]-1.78*x[17]*x[53]+1.28*x[17]*x[54]-1.52*x[17]*x[55]-1.44*x[17]*x[58]-0.54*x[17]*x[59]-0.42*x[17]*x[60]+1.46*x[18]*x[19]-1.76*x[18]*x[23]+0.3*x[18]*x[24]-1.96*x[18]*x[27]-0.78*x[18]*x[30]-1.72*x[18]*x[35]-0.84*x[18]*x[37]-1.58*x[18]*x[38]+0.78*x[18]*x[39]-x[18]*x[46]-1.6*x[18]*x[48]+0.16*x[18]*x[49]-1.56*x[18]*x[50]+1.64*x[18]*x[51]-0.68*x[18]*x[53]-1.54*x[18]*x[55]-1.12*x[18]*x[57]+0.06*x[18]*x[58]-0.32*x[18]*x[59]-1.8*x[18]*x[60]+0.46*x[18]*x[61]+1.42*x[19]*x[21]+1.58*x[19]*x[23]-0.28*x[19]*x[31]+1.04*x[19]*x[32]-1.66*x[19]*x[35]+0.92*x[19]*x[38]-0.74*x[19]*x[41]+1.7*x[19]*x[42]+0.08*x[19]*x[44]+0.44*x[19]*x[47]-0.26*x[19]*x[48]+1.88*x[19]*x[49]+0.94*x[19]*x[51]+0.32*x[19]*x[52]-0.6*x[19]*x[53]+1.14*x[19]*x[54]-0.16*x[19]*x[55]+0.74*x[19]*x[58]+1.46*x[19]*x[59]+1.14*x[20]*x[22]-1.24*x[20]*x[23]-0.48*x[20]*x[24]-1.42*x[20]*x[31]-1.24*x[20]*x[32]+0.74*x[20]*x[37]-1.72*x[20]*x[40]+0.42*x[20]*x[44]+1.64*x[20]*x[49]-x[20]*x[50]-1.48*x[20]*x[51]+0.22*x[20]*x[52]-1.9*x[20]*x[54]-1.56*x[20]*x[55]-0.1*x[20]*x[56]+0.9*x[20]*x[58]+0.4*x[20]*x[61]+1.36*x[21]*x[22]+0.16*x[21]*x[23]-1.88*x[21]*x[27]-1.36*x[21]*x[29]+0.66*x[21]*x[30]+1.94*x[21]*x[31]-0.64*x[21]*x[32]-1.44*x[21]*x[35]-0.24*x[21]*x[36]-0.46*x[21]*x[37]-0.78*x[21]*x[41]+0.32*x[21]*x[42]-1.82*x[21]*x[44]-1.24*x[21]*x[45]-0.22*x[21]*x[47]-1.4*x[21]*x[50]-1.76*x[21]*x[51]+0.96*x[21]*x[53]+0.52*x[21]*x[54]-0.32*x[21]*x[56]-1.86*x[21]*x[59]+0.1*x[21]*x[61]+0.28*x[22]*x[25]+1.62*x[22]*x[26]+1.96*x[22]*x[27]+1.98*x[22]*x[28]+1.64*x[22]*x[32]+1.96*x[22]*x[33]+1.74*x[22]*x[35]-0.3*x[22]*x[37]+1.86*x[22]*x[39]-0.76*x[22]*x[44]-1.02*x[22]*x[45]+1.34*x[22]*x[49]+0.78*x[22]*x[51]-1.68*x[22]*x[52]-1.7*x[22]*x[54]+0.62*x[22]*x[55]-1.6*x[22]*x[59]+0.2*x[22]*x[60]-0.56*x[22]*x[61]+(-0.9*x[23]*x[29])-1.52*x[23]*x[30]-1.54*x[23]*x[32]+0.82*x[23]*x[33]+0.14*x[23]*x[34]+1.62*x[23]*x[35]-0.98*x[23]*x[36]+1.26*x[23]*x[37]+0.42*x[23]*x[38]+0.88*x[23]*x[40]-0.16*x[23]*x[41]+1.48*x[23]*x[42]-0.52*x[23]*x[44]+0.48*x[23]*x[49]+1.1*x[23]*x[52]-1.04*x[23]*x[53]-0.48*x[23]*x[54]-1.94*x[23]*x[55]-0.18*x[23]*x[60]+0.12*x[24]*x[26]-0.72*x[24]*x[25]-0.14*x[24]*x[28]+0.84*x[24]*x[31]-0.12*x[24]*x[33]+1.46*x[24]*x[37]-0.4*x[24]*x[38]-0.94*x[24]*x[42]+1.52*x[24]*x[45]-0.34*x[24]*x[51]+1.58*x[24]*x[52]+1.94*x[24]*x[58]-1.08*x[24]*x[61]+1.78*x[25]*x[26]-0.42*x[25]*x[27]+1.32*x[25]*x[30]-1.92*x[25]*x[33]+1.26*x[25]*x[34]-0.7*x[25]*x[37]+0.48*x[25]*x[38]-1.44*x[25]*x[39]-0.42*x[25]*x[43]+1.92*x[25]*x[44]+1.6*x[25]*x[45]+1.32*x[25]*x[47]+1.88*x[25]*x[50]+0.68*x[25]*x[55]+0.3*x[25]*x[58]-0.72*x[25]*x[59]-0.82*x[25]*x[60]+1.58*x[26]*x[27]-1.94*x[26]*x[28]-1.1*x[26]*x[31]-1.12*x[26]*x[32]+1.14*x[26]*x[34]-1.48*x[26]*x[35]+0.36*x[26]*x[36]-0.56*x[26]*x[37]-0.7*x[26]*x[40]+0.24*x[26]*x[41]-0.14*x[26]*x[47]-1.12*x[26]*x[51]-0.52*x[26]*x[53]-1.54*x[26]*x[57]+1.3*x[26]*x[59]+0.96*x[27]*x[31]-0.82*x[27]*x[30]+1.56*x[27]*x[32]-1.2*x[27]*x[33]-0.08*x[27]*x[36]-1.2*x[27]*x[37]-1.94*x[27]*x[38]+1.94*x[27]*x[39]-0.48*x[27]*x[45]-1.36*x[27]*x[46]+0.7*x[27]*x[47]+0.26*x[27]*x[50]-1.64*x[27]*x[51]+0.18*x[27]*x[55]-1.02*x[27]*x[57]+0.52*x[27]*x[59]-1.54*x[27]*x[60]+1.4*x[28]*x[33]-1.8*x[28]*x[32]+1.38*x[28]*x[36]-1.92*x[28]*x[38]+1.44*x[28]*x[40]-1.34*x[28]*x[41]+1.42*x[28]*x[45]+0.04*x[28]*x[46]-0.82*x[28]*x[48]+0.08*x[28]*x[49]+0.38*x[28]*x[50]-0.08*x[28]*x[51]-0.3*x[28]*x[52]-0.22*x[28]*x[53]+0.54*x[28]*x[60]-1.54*x[28]*x[61]+0.88*x[29]*x[30]-1.52*x[29]*x[31]-1.26*x[29]*x[32]-0.82*x[29]*x[34]-0.44*x[29]*x[35]-0.36*x[29]*x[36]+0.74*x[29]*x[37]+1.96*x[29]*x[39]+0.54*x[29]*x[40]+0.66*x[29]*x[41]+1.68*x[29]*x[46]+0.4*x[29]*x[51]+0.96*x[29]*x[55]+1.02*x[29]*x[56]+0.82*x[29]*x[57]-1.06*x[29]*x[58]+0.26*x[29]*x[60]+1.06*x[29]*x[61]+0.2*x[30]*x[31]-0.94*x[30]*x[32]+0.76*x[30]*x[34]+1.56*x[30]*x[37]-0.52*x[30]*x[40]+0.14*x[30]*x[41]-1.76*x[30]*x[42]+1.36*x[30]*x[43]+1.6*x[30]*x[44]+0.94*x[30]*x[46]-0.34*x[30]*x[49]-1.9*x[30]*x[51]-1.9*x[30]*x[52]+0.56*x[30]*x[54]-1.04*x[30]*x[55]+0.76*x[30]*x[57]-0.5*x[30]*x[60]-0.12*x[30]*x[61]+x[31]*x[33]+0.32*x[31]*x[34]-0.48*x[31]*x[35]+1.48*x[31]*x[37]+1.94*x[31]*x[38]+1.78*x[31]*x[39]-1.5*x[31]*x[42]+1.72*x[31]*x[43]-0.08*x[31]*x[44]+0.98*x[31]*x[45]+0.26*x[31]*x[46]-0.98*x[31]*x[47]-2*x[31]*x[50]+0.58*x[31]*x[51]-0.32*x[31]*x[52]+0.72*x[31]*x[54]+0.26*x[31]*x[55]+0.3*x[31]*x[56]-0.42*x[31]*x[58]+1.08*x[31]*x[61]+1.92*x[32]*x[34]-0.1*x[32]*x[36]+1.5*x[32]*x[37]-1.58*x[32]*x[39]+0.36*x[32]*x[40]-0.02*x[32]*x[41]-1.36*x[32]*x[48]-0.2*x[32]*x[49]-0.4*x[32]*x[50]-0.08*x[32]*x[52]+0.78*x[32]*x[54]-1.52*x[32]*x[56]+1.16*x[32]*x[57]+1.32*x[32]*x[58]-1.38*x[32]*x[60]+(-1.5*x[33]*x[35])-0.96*x[33]*x[36]-0.14*x[33]*x[37]+0.04*x[33]*x[38]+1.28*x[33]*x[40]+0.68*x[33]*x[41]-0.98*x[33]*x[44]+1.34*x[33]*x[45]-1.22*x[33]*x[47]-1.2*x[33]*x[49]-0.62*x[33]*x[52]+1.06*x[33]*x[53]-1.2*x[33]*x[54]-1.72*x[33]*x[57]+1.4*x[33]*x[59]+1.78*x[33]*x[60]+0.98*x[34]*x[35]+1.5*x[34]*x[37]+0.4*x[34]*x[39]-1.78*x[34]*x[42]+1.1*x[34]*x[44]+0.86*x[34]*x[47]-1.24*x[34]*x[48]-1.5*x[34]*x[49]-0.34*x[34]*x[52]+0.36*x[34]*x[55]-1.16*x[34]*x[57]-0.44*x[34]*x[58]+0.44*x[34]*x[60]+0.26*x[34]*x[61]+1.48*x[35]*x[39]-1.28*x[35]*x[37]+1.02*x[35]*x[40]+0.82*x[35]*x[43]+1.3*x[35]*x[44]+0.34*x[35]*x[47]+0.8*x[35]*x[48]-0.8*x[35]*x[51]+0.42*x[35]*x[52]+0.92*x[35]*x[54]+0.44*x[35]*x[57]-0.48*x[35]*x[59]+1.62*x[36]*x[38]+0.22*x[36]*x[39]-0.12*x[36]*x[40]-0.64*x[36]*x[41]+1.06*x[36]*x[42]+0.44*x[36]*x[44]-1.82*x[36]*x[45]-1.24*x[36]*x[47]-1.56*x[36]*x[48]-1.52*x[36]*x[51]+1.46*x[36]*x[52]-1.92*x[36]*x[53]+1.8*x[36]*x[54]-1.64*x[36]*x[57]+0.64*x[36]*x[60]+0.5*x[37]*x[40]+1.78*x[37]*x[41]+1.44*x[37]*x[42]-1.4*x[37]*x[46]+1.06*x[37]*x[49]-0.34*x[37]*x[50]+1.34*x[37]*x[51]-1.56*x[37]*x[53]-0.96*x[37]*x[54]-x[37]*x[55]+0.4*x[37]*x[58]-1.46*x[37]*x[60]+0.56*x[38]*x[40]-1.6*x[38]*x[39]+0.6*x[38]*x[43]+1.92*x[38]*x[44]+1.08*x[38]*x[45]-1.88*x[38]*x[47]-1.34*x[38]*x[48]-1.44*x[38]*x[55]+0.66*x[38]*x[56]-0.44*x[38]*x[58]+0.42*x[38]*x[59]+(-0.76*x[39]*x[41])-0.22*x[39]*x[42]+2*x[39]*x[44]+0.08*x[39]*x[45]-1.1*x[39]*x[48]-0.5*x[39]*x[50]+1.88*x[39]*x[53]+1.84*x[39]*x[57]+1.84*x[39]*x[58]-1.06*x[39]*x[59]+0.58*x[40]*x[48]-0.3*x[40]*x[49]+0.58*x[40]*x[51]+1.36*x[40]*x[55]-1.06*x[40]*x[57]-0.5*x[40]*x[58]-1.54*x[40]*x[60]+1.9*x[41]*x[43]+0.4*x[41]*x[46]+0.16*x[41]*x[48]-1.16*x[41]*x[52]-1.62*x[41]*x[53]-1.72*x[41]*x[55]-1.3*x[41]*x[56]-0.58*x[41]*x[57]-0.64*x[41]*x[58]-1.94*x[41]*x[59]+0.44*x[42]*x[44]+1.76*x[42]*x[46]-0.4*x[42]*x[47]+0.74*x[42]*x[50]-1.06*x[42]*x[51]-0.84*x[42]*x[52]+1.64*x[42]*x[53]-1.74*x[42]*x[54]-1.18*x[42]*x[56]+0.36*x[42]*x[57]-1.08*x[42]*x[59]-0.74*x[42]*x[60]+1.02*x[43]*x[45]-0.34*x[43]*x[50]+1.9*x[43]*x[51]+0.3*x[43]*x[52]-1.1*x[43]*x[53]+0.6*x[43]*x[61]+0.24*x[44]*x[49]+1.3*x[44]*x[52]+1.5*x[44]*x[53]+1.2*x[44]*x[54]+0.98*x[44]*x[55]-1.14*x[44]*x[58]+1.54*x[45]*x[50]-0.78*x[45]*x[47]+1.34*x[45]*x[51]+0.32*x[45]*x[52]-0.38*x[45]*x[55]-0.3*x[45]*x[57]-0.66*x[45]*x[59]-0.96*x[45]*x[60]+0.94*x[45]*x[61]+1.34*x[46]*x[51]-1.9*x[46]*x[54]-0.22*x[46]*x[55]-1.74*x[46]*x[56]-1.22*x[46]*x[58]-1.42*x[46]*x[59]+(-1.8*x[47]*x[48])-0.04*x[47]*x[49]-0.68*x[47]*x[51]+1.2*x[47]*x[53]+1.6*x[47]*x[55]-1.98*x[47]*x[59]-1.14*x[47]*x[60]+0.7*x[48]*x[51]+0.8*x[48]*x[52]+0.82*x[48]*x[53]+0.46*x[48]*x[54]-0.08*x[48]*x[56]-1.62*x[48]*x[58]+1.88*x[49]*x[52]-1.62*x[49]*x[50]+1.48*x[49]*x[53]-1.78*x[49]*x[55]+1.86*x[49]*x[56]+0.38*x[49]*x[60]-1.72*x[49]*x[61]+0.52*x[50]*x[51]-0.48*x[50]*x[58]-0.5*x[50]*x[59]-0.52*x[50]*x[60]-0.7*x[50]*x[61]+(-1.48*x[51]*x[54])-1.5*x[51]*x[55]+0.38*x[51]*x[60]-1.66*x[51]*x[61]+(-0.72*x[52]*x[53])-0.68*x[52]*x[55]+1.08*x[52]*x[56]+1.16*x[52]*x[57]+0.36*x[53]*x[57]+1.42*x[53]*x[58]+(-0.84*x[54]*x[56])-1.1*x[54]*x[60]+(-0.26*x[55]*x[56])-1.88*x[55]*x[57]+1.42*x[56]*x[57]-0.76*x[56]*x[58]+0.36*x[56]*x[59]+1.44*x[56]*x[61]+0.12*x[57]*x[60]-0.6*x[57]*x[58]+0.58*x[57]*x[61]-1.24*x[58]*x[59]+1.24*x[59]*x[60]+1.98*x[59]*x[61]+(-0.52*x[2]*x[2])-0.59*x[3]*x[3]-0.21*x[6]*x[6]+0.97*x[10]*x[10]+0.55*x[12]*x[12]-0.64*x[16]*x[16]-0.46*x[20]*x[20]-0.48*x[23]*x[23]-0.15*x[26]*x[26]-0.44*x[28]*x[28]+0.44*x[33]*x[33]-0.23*x[34]*x[34]+0.69*x[35]*x[35]-0.07*x[38]*x[38]-0.64*x[39]*x[39]-0.7*x[40]*x[40]-0.68*x[42]*x[42]-0.09*x[43]*x[43]+0.47*x[44]*x[44]-0.44*x[46]*x[46]-0.25*x[48]*x[48]-0.17*x[49]*x[49]+0.08*x[50]*x[50]+0.51*x[51]*x[51]+0.28*x[52]*x[52]+0.46*x[54]*x[54]-0.28*x[58]*x[58]+0.25*x[59]*x[59]+0.37*x[2]-0.49*x[3]-0.39*x[4]-0.46*x[5]-0.05*x[6]+0.83*x[7]+0.75*x[8]+0.77*x[9]+0.95*x[10]-0.02*x[11]+0.44*x[12]+0.04*x[13]-0.41*x[14]-0.67*x[15]-0.52*x[16]-0.97*x[17]-0.39*x[18]-0.99*x[19]-0.71*x[20]-0.25*x[21]-0.23*x[22]-0.13*x[23]+0.58*x[24]-0.68*x[25]+0.53*x[26]+0.51*x[27]+0.52*x[28]-0.16*x[29]-0.91*x[30]+0.22*x[31]+0.15*x[32]+0.11*x[33]+0.12*x[34]+0.7*x[35]-0.44*x[36]+0.4*x[37]-0.03*x[38]-0.3*x[39]+0.96*x[40]-0.76*x[41]+0.51*x[42]+0.61*x[43]+0.69*x[44]-0.23*x[45]+0.98*x[46]-0.21*x[47]+0.9*x[48]-0.18*x[49]-0.75*x[50]-0.21*x[51]+0.6*x[52]-0.54*x[53]+0.22*x[54]+0.6*x[55]+0.93*x[56]-0.5*x[57]-0.79*x[58]-0.38*x[59]-0.65*x[60]-0.28*x[61])+x[1] == 0.0)
@NLconstraint(m, e2, (-0.86*x[2]*x[3])-1.6*x[2]*x[4]-0.12*x[2]*x[9]+1.72*x[2]*x[10]-1.94*x[2]*x[14]-0.36*x[2]*x[16]-0.72*x[2]*x[17]+1.26*x[2]*x[18]-0.94*x[2]*x[19]+1.44*x[2]*x[20]+1.36*x[2]*x[24]-1.54*x[2]*x[30]+1.16*x[2]*x[32]-x[2]*x[33]+0.82*x[2]*x[34]+1.88*x[2]*x[36]+1.62*x[2]*x[37]-1.3*x[2]*x[38]-1.9*x[2]*x[39]-1.06*x[2]*x[40]-1.48*x[2]*x[45]-0.2*x[2]*x[46]-1.8*x[2]*x[50]+0.08*x[2]*x[51]-0.74*x[2]*x[52]+0.7*x[2]*x[53]-1.36*x[2]*x[56]+1.18*x[2]*x[57]+1.84*x[2]*x[61]+0.16*x[3]*x[4]+0.1*x[3]*x[6]+0.96*x[3]*x[9]-0.82*x[3]*x[10]-0.6*x[3]*x[11]-1.7*x[3]*x[12]-1.5*x[3]*x[13]-1.84*x[3]*x[23]-0.62*x[3]*x[24]+1.24*x[3]*x[25]-1.34*x[3]*x[28]-1.28*x[3]*x[30]+0.66*x[3]*x[32]+1.8*x[3]*x[37]-1.7*x[3]*x[39]+1.92*x[3]*x[40]+1.86*x[3]*x[42]+1.2*x[3]*x[43]+1.32*x[3]*x[44]+1.3*x[3]*x[46]+1.6*x[3]*x[48]+0.78*x[3]*x[49]+0.54*x[3]*x[50]+1.64*x[3]*x[52]-0.56*x[3]*x[53]+1.1*x[3]*x[56]+1.06*x[3]*x[57]-0.84*x[3]*x[58]-1.66*x[3]*x[59]-1.16*x[3]*x[60]+1.1*x[4]*x[5]+0.32*x[4]*x[6]-0.9*x[4]*x[9]-1.46*x[4]*x[10]-1.9*x[4]*x[11]+0.86*x[4]*x[13]+0.06*x[4]*x[14]-1.48*x[4]*x[16]+1.6*x[4]*x[17]-0.26*x[4]*x[18]-1.64*x[4]*x[19]-1.76*x[4]*x[22]-1.08*x[4]*x[23]-0.96*x[4]*x[24]-1.98*x[4]*x[28]-0.58*x[4]*x[31]+1.48*x[4]*x[32]+0.28*x[4]*x[34]+0.02*x[4]*x[35]+0.14*x[4]*x[36]+1.92*x[4]*x[37]-0.54*x[4]*x[38]-0.94*x[4]*x[40]-1.74*x[4]*x[41]+1.8*x[4]*x[42]+0.2*x[4]*x[43]-1.48*x[4]*x[46]+0.24*x[4]*x[48]-0.86*x[4]*x[49]-0.26*x[4]*x[51]-1.36*x[4]*x[56]-1.78*x[4]*x[57]+0.96*x[4]*x[58]+1.34*x[4]*x[60]+1.52*x[5]*x[8]-1.82*x[5]*x[9]-1.06*x[5]*x[13]+1.8*x[5]*x[14]-0.04*x[5]*x[15]-1.88*x[5]*x[18]-1.74*x[5]*x[23]-1.96*x[5]*x[24]+1.68*x[5]*x[26]+0.72*x[5]*x[27]-1.7*x[5]*x[28]+1.78*x[5]*x[29]+0.1*x[5]*x[30]-1.32*x[5]*x[31]+0.5*x[5]*x[34]-0.9*x[5]*x[36]+1.32*x[5]*x[37]+0.62*x[5]*x[38]+0.14*x[5]*x[39]+1.82*x[5]*x[45]+0.26*x[5]*x[48]-0.44*x[5]*x[50]+0.66*x[5]*x[51]-x[5]*x[54]+1.24*x[5]*x[55]-1.5*x[5]*x[56]+0.3*x[5]*x[59]+0.34*x[6]*x[9]-1.26*x[6]*x[8]-1.18*x[6]*x[15]+0.08*x[6]*x[20]-1.96*x[6]*x[22]-0.3*x[6]*x[23]+1.56*x[6]*x[24]-0.68*x[6]*x[26]+1.7*x[6]*x[30]+0.46*x[6]*x[32]-1.14*x[6]*x[33]-0.18*x[6]*x[35]-1.58*x[6]*x[37]-0.72*x[6]*x[38]-0.2*x[6]*x[39]-1.34*x[6]*x[40]+0.34*x[6]*x[43]-0.2*x[6]*x[45]-0.8*x[6]*x[58]+1.12*x[6]*x[60]+1.26*x[7]*x[9]+0.18*x[7]*x[10]+1.86*x[7]*x[14]+0.86*x[7]*x[15]+1.88*x[7]*x[16]-1.84*x[7]*x[17]+1.78*x[7]*x[18]-1.36*x[7]*x[19]-1.74*x[7]*x[23]+1.72*x[7]*x[25]+0.36*x[7]*x[27]+1.08*x[7]*x[28]+2*x[7]*x[29]+0.4*x[7]*x[31]+1.46*x[7]*x[34]-0.92*x[7]*x[36]+1.32*x[7]*x[37]+1.56*x[7]*x[39]-0.88*x[7]*x[41]+1.12*x[7]*x[43]-1.18*x[7]*x[44]+1.64*x[7]*x[48]-0.52*x[7]*x[50]+0.9*x[7]*x[51]-0.46*x[7]*x[52]-0.52*x[7]*x[53]+1.88*x[7]*x[56]-1.58*x[7]*x[57]-1.92*x[7]*x[59]-1.9*x[7]*x[61]+(-0.22*x[8]*x[9])-0.26*x[8]*x[11]-0.24*x[8]*x[18]+1.54*x[8]*x[19]+1.84*x[8]*x[20]+0.74*x[8]*x[23]-0.68*x[8]*x[24]+1.06*x[8]*x[25]-1.14*x[8]*x[26]-0.06*x[8]*x[28]+1.4*x[8]*x[31]-0.78*x[8]*x[35]-0.88*x[8]*x[39]-1.42*x[8]*x[42]-0.02*x[8]*x[43]+1.24*x[8]*x[45]+1.62*x[8]*x[47]-0.64*x[8]*x[48]-1.22*x[8]*x[49]-1.06*x[8]*x[50]-1.46*x[8]*x[53]+0.72*x[8]*x[56]-0.8*x[8]*x[57]+0.88*x[8]*x[60]+0.28*x[9]*x[18]-1.4*x[9]*x[14]+1.76*x[9]*x[19]-0.5*x[9]*x[22]+1.54*x[9]*x[23]-0.3*x[9]*x[24]+0.68*x[9]*x[25]-0.1*x[9]*x[26]+0.22*x[9]*x[27]-1.78*x[9]*x[30]-0.14*x[9]*x[31]-0.2*x[9]*x[32]+1.34*x[9]*x[33]-1.72*x[9]*x[34]-0.92*x[9]*x[40]-1.32*x[9]*x[41]-1.48*x[9]*x[45]+0.94*x[9]*x[49]-0.46*x[9]*x[50]-0.34*x[9]*x[51]-1.08*x[9]*x[52]+1.52*x[9]*x[53]-0.9*x[9]*x[56]+0.8*x[9]*x[58]-1.36*x[9]*x[60]-1.84*x[9]*x[61]+0.16*x[10]*x[11]+0.76*x[10]*x[12]-0.24*x[10]*x[13]-0.46*x[10]*x[14]+1.9*x[10]*x[16]+1.64*x[10]*x[20]+1.92*x[10]*x[24]+0.52*x[10]*x[28]-0.48*x[10]*x[32]+0.14*x[10]*x[33]+1.74*x[10]*x[36]-0.62*x[10]*x[37]+1.34*x[10]*x[39]-0.8*x[10]*x[40]-1.76*x[10]*x[44]+0.42*x[10]*x[45]+0.64*x[10]*x[46]-0.22*x[10]*x[47]-0.9*x[10]*x[48]-0.44*x[10]*x[52]-1.38*x[10]*x[55]-1.54*x[10]*x[57]-1.36*x[10]*x[58]-1.38*x[10]*x[60]+(-0.32*x[11]*x[14])-1.3*x[11]*x[15]-0.5*x[11]*x[19]+0.94*x[11]*x[21]+0.3*x[11]*x[22]-1.4*x[11]*x[23]-0.12*x[11]*x[24]+1.08*x[11]*x[26]+1.94*x[11]*x[27]-1.06*x[11]*x[29]+0.96*x[11]*x[31]-0.44*x[11]*x[34]-0.2*x[11]*x[35]-0.12*x[11]*x[36]+0.76*x[11]*x[37]-1.2*x[11]*x[39]+1.62*x[11]*x[40]+1.88*x[11]*x[42]-1.7*x[11]*x[43]-0.82*x[11]*x[46]-1.52*x[11]*x[48]+0.38*x[11]*x[50]-1.58*x[11]*x[52]-0.16*x[11]*x[56]+1.42*x[11]*x[58]+(-0.76*x[12]*x[14])-1.9*x[12]*x[15]+1.94*x[12]*x[16]-1.8*x[12]*x[17]-1.88*x[12]*x[18]+1.54*x[12]*x[19]-1.48*x[12]*x[21]+0.38*x[12]*x[22]-1.3*x[12]*x[25]+1.88*x[12]*x[26]+0.98*x[12]*x[27]+0.46*x[12]*x[29]+1.72*x[12]*x[30]-0.36*x[12]*x[31]-0.1*x[12]*x[34]+1.32*x[12]*x[35]-0.38*x[12]*x[38]-1.48*x[12]*x[39]+0.1*x[12]*x[40]+0.9*x[12]*x[41]-1.92*x[12]*x[42]-0.24*x[12]*x[44]+0.52*x[12]*x[47]-0.52*x[12]*x[48]+1.68*x[12]*x[50]+0.62*x[12]*x[53]-1.1*x[12]*x[58]-1.92*x[12]*x[59]+0.92*x[12]*x[60]+(-1.7*x[13]*x[14])-1.4*x[13]*x[15]+x[13]*x[16]+0.8*x[13]*x[17]+1.24*x[13]*x[19]-1.94*x[13]*x[20]-0.9*x[13]*x[21]+0.12*x[13]*x[22]+1.62*x[13]*x[23]+1.98*x[13]*x[24]+0.82*x[13]*x[29]-1.68*x[13]*x[30]-0.94*x[13]*x[31]+1.64*x[13]*x[35]-1.3*x[13]*x[37]-0.3*x[13]*x[41]-0.96*x[13]*x[42]-1.68*x[13]*x[45]+0.28*x[13]*x[46]+0.92*x[13]*x[48]-0.72*x[13]*x[49]-1.54*x[13]*x[52]+1.52*x[13]*x[53]+0.96*x[13]*x[55]+0.6*x[13]*x[56]+1.84*x[13]*x[58]+1.34*x[14]*x[16]+1.84*x[14]*x[17]-1.56*x[14]*x[20]-0.06*x[14]*x[23]-0.48*x[14]*x[24]+1.96*x[14]*x[25]+1.98*x[14]*x[28]+0.94*x[14]*x[31]+1.3*x[14]*x[34]-0.96*x[14]*x[37]-1.2*x[14]*x[40]+0.78*x[14]*x[41]-0.9*x[14]*x[42]-0.48*x[14]*x[43]-0.46*x[14]*x[44]+0.68*x[14]*x[50]-1.52*x[14]*x[52]-0.18*x[14]*x[56]+1.02*x[14]*x[57]+0.16*x[14]*x[59]+1.96*x[14]*x[60]+1.1*x[15]*x[24]-0.98*x[15]*x[21]+1.28*x[15]*x[26]+0.9*x[15]*x[30]+0.6*x[15]*x[32]-0.28*x[15]*x[35]-x[15]*x[38]+0.48*x[15]*x[41]+0.78*x[15]*x[44]+0.9*x[15]*x[48]-0.1*x[15]*x[49]-0.08*x[15]*x[50]-1.84*x[15]*x[51]+1.14*x[15]*x[52]-1.7*x[15]*x[53]-0.92*x[15]*x[54]-0.74*x[15]*x[55]+1.44*x[15]*x[56]-0.24*x[15]*x[59]-0.56*x[15]*x[60]+0.46*x[15]*x[61]+(-1.28*x[16]*x[17])-0.3*x[16]*x[19]+1.74*x[16]*x[23]+1.36*x[16]*x[25]-1.22*x[16]*x[29]+0.88*x[16]*x[30]+0.22*x[16]*x[34]-0.06*x[16]*x[35]+0.86*x[16]*x[37]+1.78*x[16]*x[38]-1.52*x[16]*x[39]+0.4*x[16]*x[41]+0.22*x[16]*x[42]-1.56*x[16]*x[44]-1.12*x[16]*x[48]-0.96*x[16]*x[52]+0.08*x[16]*x[55]+0.4*x[16]*x[60]-1.62*x[16]*x[61]+1.94*x[17]*x[22]-0.94*x[17]*x[18]+x[17]*x[24]-0.18*x[17]*x[27]+1.78*x[17]*x[32]+1.1*x[17]*x[33]+0.22*x[17]*x[34]-1.3*x[17]*x[35]+0.36*x[17]*x[36]+1.56*x[17]*x[38]-1.24*x[17]*x[43]-1.28*x[17]*x[46]+1.64*x[17]*x[49]+0.08*x[17]*x[50]-0.92*x[17]*x[51]+1.82*x[17]*x[52]+1.4*x[17]*x[53]+1.54*x[17]*x[56]-1.34*x[17]*x[61]+1.24*x[18]*x[20]-0.9*x[18]*x[19]+0.78*x[18]*x[22]+0.32*x[18]*x[24]-0.28*x[18]*x[27]-0.14*x[18]*x[28]-1.28*x[18]*x[30]+0.66*x[18]*x[31]+0.32*x[18]*x[33]-0.56*x[18]*x[35]+1.42*x[18]*x[37]-0.94*x[18]*x[40]-0.66*x[18]*x[41]-0.16*x[18]*x[48]+1.72*x[18]*x[50]+1.84*x[18]*x[53]-0.04*x[18]*x[54]-1.16*x[18]*x[55]+1.38*x[18]*x[57]-1.12*x[18]*x[58]+1.42*x[18]*x[61]+0.04*x[19]*x[20]+0.22*x[19]*x[21]-1.32*x[19]*x[24]-0.26*x[19]*x[25]+0.92*x[19]*x[26]-2*x[19]*x[27]-1.24*x[19]*x[31]-0.88*x[19]*x[33]+0.72*x[19]*x[34]-1.62*x[19]*x[35]+1.32*x[19]*x[39]-1.6*x[19]*x[40]-1.36*x[19]*x[41]+0.3*x[19]*x[42]+1.96*x[19]*x[44]+0.66*x[19]*x[45]-0.46*x[19]*x[46]-1.18*x[19]*x[48]-1.28*x[19]*x[49]-0.26*x[19]*x[50]+0.06*x[19]*x[52]-0.14*x[19]*x[53]+0.98*x[19]*x[54]-0.88*x[19]*x[55]+0.8*x[19]*x[56]+1.84*x[19]*x[57]+1.14*x[19]*x[58]-0.28*x[19]*x[61]+1.56*x[20]*x[27]-1.42*x[20]*x[23]+1.58*x[20]*x[28]+1.86*x[20]*x[29]-1.58*x[20]*x[32]-1.94*x[20]*x[34]-1.1*x[20]*x[36]+0.44*x[20]*x[37]+1.4*x[20]*x[39]-0.1*x[20]*x[40]+0.14*x[20]*x[43]+1.84*x[20]*x[44]-0.14*x[20]*x[46]+0.56*x[20]*x[49]-0.46*x[20]*x[51]-1.02*x[20]*x[53]-1.54*x[20]*x[54]-0.74*x[20]*x[57]+0.2*x[21]*x[22]-0.64*x[21]*x[25]+1.28*x[21]*x[27]-0.84*x[21]*x[28]+0.44*x[21]*x[29]+0.14*x[21]*x[30]-0.1*x[21]*x[34]+0.72*x[21]*x[36]+1.32*x[21]*x[38]-0.88*x[21]*x[39]+0.7*x[21]*x[41]+0.46*x[21]*x[43]+0.42*x[21]*x[44]-0.22*x[21]*x[46]+0.7*x[21]*x[52]+0.54*x[21]*x[55]-0.82*x[21]*x[56]+0.94*x[21]*x[59]+(-1.44*x[22]*x[23])-0.52*x[22]*x[24]+1.06*x[22]*x[25]-0.88*x[22]*x[29]+1.56*x[22]*x[30]-0.54*x[22]*x[34]-0.58*x[22]*x[35]+0.88*x[22]*x[36]+0.66*x[22]*x[37]+0.76*x[22]*x[40]-1.46*x[22]*x[44]-0.18*x[22]*x[46]-0.4*x[22]*x[48]+0.12*x[22]*x[49]-0.24*x[22]*x[51]+0.78*x[22]*x[52]-1.66*x[22]*x[53]-0.42*x[22]*x[55]-0.2*x[22]*x[57]+1.36*x[22]*x[60]+1.68*x[23]*x[30]-1.62*x[23]*x[31]-1.9*x[23]*x[32]+0.08*x[23]*x[35]-1.04*x[23]*x[37]-1.48*x[23]*x[39]-0.7*x[23]*x[40]+0.74*x[23]*x[43]-1.6*x[23]*x[45]-0.18*x[23]*x[47]-0.48*x[23]*x[48]-0.02*x[23]*x[49]-1.44*x[23]*x[51]-1.34*x[23]*x[54]-1.28*x[23]*x[56]+1.34*x[23]*x[59]-0.4*x[23]*x[61]+(-0.94*x[24]*x[28])-1.92*x[24]*x[29]+1.3*x[24]*x[34]-1.94*x[24]*x[36]-1.78*x[24]*x[37]-0.06*x[24]*x[38]+0.46*x[24]*x[39]-0.72*x[24]*x[41]+1.9*x[24]*x[42]-1.54*x[24]*x[43]-0.34*x[24]*x[48]-0.42*x[24]*x[49]-0.48*x[24]*x[54]-1.94*x[24]*x[56]+0.44*x[24]*x[59]+0.86*x[24]*x[60]+0.92*x[25]*x[28]-1.96*x[25]*x[29]-0.96*x[25]*x[30]+0.9*x[25]*x[31]-0.16*x[25]*x[32]+1.64*x[25]*x[33]+0.88*x[25]*x[34]-1.14*x[25]*x[36]+0.88*x[25]*x[38]+0.18*x[25]*x[39]-0.4*x[25]*x[40]+0.3*x[25]*x[41]-1.22*x[25]*x[42]+1.6*x[25]*x[43]+0.12*x[25]*x[48]+0.06*x[25]*x[49]-0.84*x[25]*x[50]-1.64*x[25]*x[51]+1.58*x[25]*x[54]+0.12*x[25]*x[56]+0.8*x[25]*x[60]+1.34*x[26]*x[29]+1.72*x[26]*x[35]-1.4*x[26]*x[36]-1.18*x[26]*x[37]-1.96*x[26]*x[38]-0.12*x[26]*x[39]+1.16*x[26]*x[41]-1.84*x[26]*x[50]-0.94*x[26]*x[55]+1.44*x[27]*x[28]-1.92*x[27]*x[29]+1.1*x[27]*x[31]-0.96*x[27]*x[33]+1.88*x[27]*x[34]-0.38*x[27]*x[35]-1.5*x[27]*x[36]+0.5*x[27]*x[38]+1.24*x[27]*x[39]+0.52*x[27]*x[41]-1.8*x[27]*x[42]-1.62*x[27]*x[46]+1.18*x[27]*x[48]-1.8*x[27]*x[49]+1.08*x[27]*x[52]-0.04*x[27]*x[53]-0.82*x[27]*x[57]-1.2*x[27]*x[60]+1.06*x[28]*x[34]-0.6*x[28]*x[31]+0.86*x[28]*x[38]+0.42*x[28]*x[39]+1.02*x[28]*x[40]+1.06*x[28]*x[41]-0.4*x[28]*x[42]-0.22*x[28]*x[43]-1.34*x[28]*x[45]-0.36*x[28]*x[47]+1.3*x[28]*x[49]-0.52*x[28]*x[52]+1.56*x[28]*x[54]-1.64*x[28]*x[55]+1.46*x[28]*x[57]+0.14*x[28]*x[59]+1.18*x[29]*x[34]-0.9*x[29]*x[35]-1.74*x[29]*x[41]-1.16*x[29]*x[47]+0.68*x[29]*x[49]-1.38*x[29]*x[52]-1.8*x[29]*x[53]-0.08*x[29]*x[54]+0.46*x[30]*x[32]-x[30]*x[31]-1.3*x[30]*x[33]+1.42*x[30]*x[34]-1.78*x[30]*x[35]-0.4*x[30]*x[39]-0.58*x[30]*x[40]+0.62*x[30]*x[41]+1.7*x[30]*x[42]-1.9*x[30]*x[45]+0.6*x[30]*x[50]+1.18*x[30]*x[54]-1.32*x[30]*x[55]+0.06*x[30]*x[56]-1.94*x[30]*x[60]+0.02*x[31]*x[33]-0.2*x[31]*x[32]+0.54*x[31]*x[34]+1.14*x[31]*x[35]-1.2*x[31]*x[36]-0.18*x[31]*x[38]+0.36*x[31]*x[40]+1.14*x[31]*x[43]+1.84*x[31]*x[44]-1.42*x[31]*x[46]-1.26*x[31]*x[47]-0.46*x[31]*x[48]-1.54*x[31]*x[49]-1.42*x[31]*x[53]+0.7*x[31]*x[56]-0.76*x[31]*x[57]-0.8*x[31]*x[61]+(-1.76*x[32]*x[33])-0.08*x[32]*x[35]+0.02*x[32]*x[37]-0.58*x[32]*x[38]+0.36*x[32]*x[39]-1.3*x[32]*x[44]+0.48*x[32]*x[45]-0.74*x[32]*x[47]-1.08*x[32]*x[50]-1.66*x[32]*x[51]+0.84*x[32]*x[52]-1.16*x[32]*x[57]+1.46*x[32]*x[58]+1.1*x[32]*x[61]+0.14*x[33]*x[35]-1.32*x[33]*x[34]+1.86*x[33]*x[36]+1.7*x[33]*x[37]+1.34*x[33]*x[42]+1.58*x[33]*x[45]-0.36*x[33]*x[46]+0.7*x[33]*x[47]-0.18*x[33]*x[50]-1.64*x[33]*x[51]+0.88*x[33]*x[53]+0.14*x[33]*x[54]-0.94*x[33]*x[57]+1.6*x[33]*x[59]-0.12*x[33]*x[60]+(-0.94*x[34]*x[35])-1.98*x[34]*x[36]-x[34]*x[38]+0.5*x[34]*x[45]-0.92*x[34]*x[48]+1.74*x[34]*x[49]+1.6*x[34]*x[50]+1.02*x[34]*x[51]+1.36*x[34]*x[52]-0.82*x[34]*x[53]+0.38*x[34]*x[54]-0.78*x[34]*x[55]+0.96*x[34]*x[58]+1.12*x[34]*x[60]+0.52*x[35]*x[40]-0.08*x[35]*x[42]+1.68*x[35]*x[44]+0.92*x[35]*x[46]+1.32*x[35]*x[49]-1.44*x[35]*x[50]+0.1*x[35]*x[52]+1.62*x[35]*x[53]-1.36*x[35]*x[55]-0.72*x[35]*x[56]+1.6*x[35]*x[60]-0.18*x[35]*x[61]+1.46*x[36]*x[39]+0.52*x[36]*x[40]-1.54*x[36]*x[42]-1.94*x[36]*x[44]-1.62*x[36]*x[47]-1.66*x[36]*x[49]-1.66*x[36]*x[51]-1.6*x[36]*x[52]+0.48*x[36]*x[57]+0.6*x[36]*x[58]+1.04*x[36]*x[60]+(-0.16*x[37]*x[38])-0.38*x[37]*x[39]+1.22*x[37]*x[40]-1.96*x[37]*x[41]-0.62*x[37]*x[42]-0.7*x[37]*x[43]+0.28*x[37]*x[44]+0.12*x[37]*x[45]-1.56*x[37]*x[48]-0.98*x[37]*x[49]-1.88*x[37]*x[58]+1.58*x[37]*x[59]+1.72*x[37]*x[60]+0.98*x[38]*x[43]+1.6*x[38]*x[45]-1.54*x[38]*x[46]+1.54*x[38]*x[47]-0.06*x[38]*x[48]-0.96*x[38]*x[53]-1.72*x[38]*x[56]-1.12*x[38]*x[57]+0.08*x[38]*x[61]+0.14*x[39]*x[40]-1.2*x[39]*x[41]+0.78*x[39]*x[42]-0.1*x[39]*x[43]-1.8*x[39]*x[44]-0.84*x[39]*x[45]+1.44*x[39]*x[47]+1.5*x[39]*x[50]-0.34*x[39]*x[52]-0.22*x[39]*x[53]+0.8*x[39]*x[57]-1.88*x[39]*x[60]+0.36*x[39]*x[61]+0.9*x[40]*x[41]-1.44*x[40]*x[43]+1.98*x[40]*x[45]-0.48*x[40]*x[48]-0.62*x[40]*x[49]+1.78*x[40]*x[51]-0.58*x[40]*x[52]-1.68*x[40]*x[53]-0.54*x[40]*x[58]-1.08*x[40]*x[60]-0.5*x[40]*x[61]+1.92*x[41]*x[46]-0.64*x[41]*x[43]+1.48*x[41]*x[49]-1.54*x[41]*x[53]+1.22*x[41]*x[59]+1.94*x[41]*x[60]+1.48*x[42]*x[43]-0.32*x[42]*x[45]-1.06*x[42]*x[46]+0.52*x[42]*x[47]-1.04*x[42]*x[49]-1.44*x[42]*x[50]+1.72*x[42]*x[53]+0.74*x[42]*x[57]-1.54*x[42]*x[58]-1.26*x[42]*x[59]+0.1*x[42]*x[60]+0.72*x[42]*x[61]+(-1.46*x[43]*x[45])-1.16*x[43]*x[47]-1.12*x[43]*x[48]+0.16*x[43]*x[50]-1.1*x[43]*x[51]-1.9*x[43]*x[54]+0.94*x[43]*x[56]-1.88*x[43]*x[58]+0.36*x[43]*x[60]+(-1.18*x[44]*x[46])-0.28*x[44]*x[48]-1.74*x[44]*x[49]+1.3*x[44]*x[53]+0.22*x[44]*x[55]-0.02*x[44]*x[58]-0.54*x[44]*x[59]+1.06*x[45]*x[46]+1.36*x[45]*x[49]+1.98*x[45]*x[50]-0.6*x[45]*x[52]-1.18*x[45]*x[54]+0.34*x[45]*x[55]+1.16*x[45]*x[56]+1.6*x[45]*x[60]+0.94*x[46]*x[47]+0.98*x[46]*x[48]-0.58*x[46]*x[49]+1.08*x[46]*x[50]-0.6*x[46]*x[51]+0.98*x[46]*x[53]-0.98*x[46]*x[54]+1.78*x[46]*x[56]+1.14*x[46]*x[57]+0.36*x[46]*x[59]+1.92*x[46]*x[61]+1.1*x[47]*x[48]+x[47]*x[50]+0.74*x[47]*x[51]-0.84*x[47]*x[52]-1.52*x[47]*x[53]+0.42*x[47]*x[55]+0.72*x[47]*x[58]-1.82*x[47]*x[60]+(-1.2*x[48]*x[49])-1.48*x[48]*x[54]-1.94*x[48]*x[55]-0.66*x[48]*x[56]-0.4*x[48]*x[59]-0.32*x[48]*x[60]+1.48*x[49]*x[52]-1.46*x[49]*x[53]+0.36*x[49]*x[57]-1.94*x[49]*x[58]+0.86*x[49]*x[59]+0.32*x[49]*x[61]+1.26*x[50]*x[55]-0.96*x[50]*x[52]+1.74*x[50]*x[56]-0.56*x[50]*x[57]+0.84*x[50]*x[58]-1.08*x[50]*x[60]+1.28*x[51]*x[52]+0.74*x[51]*x[53]-1.54*x[51]*x[57]-0.66*x[51]*x[61]+(-0.6*x[52]*x[53])-0.76*x[52]*x[56]+0.14*x[52]*x[57]-1.78*x[52]*x[58]-1.66*x[52]*x[61]+(-1.38*x[53]*x[54])-1.38*x[53]*x[55]-0.98*x[53]*x[56]+1.94*x[53]*x[57]-1.26*x[53]*x[58]-1.76*x[53]*x[60]+0.54*x[54]*x[58]+0.82*x[55]*x[57]+0.32*x[55]*x[58]+0.84*x[55]*x[60]+0.92*x[56]*x[57]-0.94*x[56]*x[59]-0.6*x[56]*x[60]+0.8*x[57]*x[58]-0.94*x[57]*x[61]-0.62*x[58]*x[59]+(-1.38*x[59]*x[60])-0.14*x[59]*x[61]+0.58*x[60]*x[61]+0.6*x[2]*x[2]-0.42*x[3]*x[3]+0.17*x[5]*x[5]+0.3*x[14]*x[14]+0.97*x[15]*x[15]+0.7*x[17]*x[17]+0.89*x[19]*x[19]+0.85*x[22]*x[22]+0.13*x[23]*x[23]-0.51*x[24]*x[24]+0.96*x[26]*x[26]+0.49*x[27]*x[27]-0.89*x[28]*x[28]+0.58*x[29]*x[29]-0.64*x[31]*x[31]-0.67*x[36]*x[36]+0.71*x[38]*x[38]-0.45*x[40]*x[40]-0.87*x[44]*x[44]+0.06*x[46]*x[46]-0.08*x[48]*x[48]-0.39*x[50]*x[50]+0.32*x[52]*x[52]-0.48*x[55]*x[55]+0.2*x[57]*x[57]-0.96*x[59]*x[59]-0.38*x[60]*x[60]-0.43*x[61]*x[61]+0.69*x[2]-0.62*x[3]+0.36*x[4]+0.69*x[5]-0.97*x[7]-0.37*x[8]+0.04*x[9]+0.34*x[10]-0.42*x[11]+0.46*x[12]+0.16*x[13]-0.23*x[14]-0.6*x[15]+0.66*x[16]-0.21*x[17]-0.89*x[18]-0.11*x[19]-0.15*x[20]+0.31*x[21]+0.07*x[22]+0.7*x[23]-0.08*x[24]-0.4*x[25]-0.88*x[26]-0.9*x[27]-0.41*x[28]+0.75*x[29]+0.08*x[30]-0.36*x[31]+0.69*x[32]-0.83*x[33]+0.52*x[34]+0.11*x[35]+0.38*x[36]+0.51*x[37]+0.87*x[38]-0.16*x[39]+0.45*x[40]-0.45*x[41]+0.87*x[42]+0.49*x[43]-0.77*x[44]-0.85*x[45]-0.01*x[46]-0.45*x[47]-0.09*x[48]-0.65*x[49]+0.66*x[50]+0.45*x[51]-0.27*x[52]-0.14*x[53]+0.53*x[54]-0.28*x[55]-0.3*x[56]-0.67*x[57]+0.93*x[58]+0.55*x[59]-0.74*x[60]+0.09*x[61] <= 46.58)
@constraint(m, e3, 0.17*x[2]+0.92*x[3]-0.35*x[4]+0.97*x[5]-0.15*x[6]+0.12*x[7]+0.17*x[8]-0.44*x[9]+0.72*x[10]+0.23*x[11]+0.75*x[12]-0.74*x[13]-0.69*x[14]-0.19*x[15]-0.61*x[16]+0.39*x[17]-0.91*x[18]-0.26*x[19]-0.75*x[20]+0.49*x[21]+0.71*x[22]-0.25*x[23]+0.77*x[24]+0.03*x[25]-0.42*x[26]-0.08*x[27]-0.06*x[28]+0.51*x[29]-0.37*x[30]+0.21*x[31]-0.6*x[32]-0.69*x[33]-0.51*x[34]+0.68*x[35]+0.8*x[36]-0.96*x[37]+0.4*x[38]-0.41*x[39]-0.67*x[40]+0.79*x[41]-0.76*x[42]+0.9*x[43]+0.61*x[44]-0.61*x[45]+0.71*x[46]+0.49*x[47]+0.93*x[48]-0.96*x[49]-0.54*x[50]+0.77*x[51]-0.3*x[52]-0.11*x[53]+0.4*x[54]-0.1*x[55]+0.72*x[56]+0.59*x[57]-0.89*x[58]-0.26*x[59]+0.96*x[60]+0.45*x[61] == -0.12)
@constraint(m, e4, -0.08*x[2]+0.23*x[3]-0.19*x[4]+0.81*x[5]-0.52*x[6]-0.81*x[7]-0.68*x[8]+0.41*x[9]-0.36*x[10]+0.84*x[11]+0.49*x[12]+0.15*x[13]+0.21*x[14]+0.03*x[15]-0.45*x[16]+0.18*x[17]+0.66*x[18]+0.8*x[19]+0.14*x[20]+0.97*x[21]+0.11*x[22]+0.72*x[23]+0.06*x[24]+0.93*x[25]+0.99*x[26]-0.62*x[27]+0.39*x[28]-0.63*x[29]+0.55*x[30]-0.07*x[31]-0.53*x[32]+0.57*x[33]+0.24*x[34]+0.57*x[35]-0.72*x[36]+0.26*x[37]+0.68*x[38]+0.7*x[39]+0.08*x[40]-0.19*x[41]+0.42*x[42]+0.57*x[43]+0.2*x[44]+0.49*x[45]-0.52*x[46]+0.67*x[47]-0.06*x[48]+0.18*x[49]-0.88*x[50]+0.62*x[51]+0.61*x[52]+0.06*x[53]+0.44*x[54]-0.44*x[55]-0.37*x[56]-0.63*x[57]+0.14*x[58]+0.06*x[59]+0.47*x[60]+0.42*x[61] == 0.17)
@constraint(m, e5, -0.16*x[2]-0.25*x[3]-0.74*x[4]+0.86*x[5]-0.8*x[6]+0.64*x[7]-0.95*x[8]-0.35*x[9]-0.9*x[10]-0.89*x[11]+0.48*x[12]-0.44*x[13]+0.18*x[14]-0.67*x[15]+0.58*x[16]+0.46*x[17]-0.24*x[18]-0.99*x[19]-0.66*x[20]+0.16*x[21]+0.74*x[22]+0.42*x[23]-0.26*x[24]+0.43*x[25]-0.97*x[26]+0.94*x[27]+0.89*x[28]+0.31*x[29]+0.37*x[30]+0.56*x[31]-0.24*x[32]+0.2*x[33]+0.35*x[34]+0.85*x[35]-0.92*x[36]-0.01*x[37]+0.71*x[38]+0.28*x[39]-0.43*x[40]+0.72*x[41]+0.09*x[42]-0.68*x[43]-0.47*x[44]-0.34*x[45]+0.97*x[46]-0.2*x[47]-0.15*x[48]+0.48*x[49]-0.5*x[50]+0.95*x[51]+0.68*x[52]+0.5*x[53]-0.86*x[54]-0.25*x[55]+0.15*x[56]-0.46*x[57]-0.67*x[58]-0.52*x[59]+0.13*x[60]+0.36*x[61] == -0.38)
@constraint(m, e6, 0.26*x[2]+0.02*x[3]-0.01*x[4]+0.6*x[5]-0.87*x[6]+0.2*x[7]-0.97*x[8]+0.53*x[9]+0.33*x[10]+0.3*x[11]-0.32*x[12]+0.15*x[13]-0.76*x[14]-0.51*x[15]+0.27*x[16]+0.53*x[17]+0.53*x[18]+0.19*x[19]-0.71*x[20]+0.08*x[21]+0.29*x[22]+0.06*x[23]+0.53*x[24]+0.49*x[25]+0.6*x[26]+0.17*x[27]+0.54*x[28]-0.84*x[29]-0.98*x[30]-0.38*x[31]-0.61*x[32]+0.57*x[33]+0.01*x[34]+0.96*x[35]-0.74*x[36]+0.6*x[37]-0.65*x[38]-0.74*x[39]-0.93*x[40]-0.95*x[41]+0.64*x[42]+0.61*x[44]+0.37*x[45]+0.45*x[46]+0.16*x[47]+0.34*x[48]-0.69*x[49]-0.34*x[50]-0.59*x[51]-0.16*x[52]-0.85*x[53]-0.69*x[54]+0.48*x[55]-0.16*x[56]+0.43*x[57]-0.01*x[58]-0.17*x[59]+0.97*x[60]-0.2*x[61] == 0.07)
@constraint(m, e7, 0.52*x[2]-0.94*x[3]+0.06*x[4]+0.39*x[5]-0.86*x[6]+0.07*x[7]-0.44*x[8]-0.61*x[9]+0.67*x[10]+0.19*x[11]+0.88*x[12]+0.86*x[14]-0.16*x[15]-0.48*x[16]+0.91*x[17]+0.39*x[18]-0.3*x[19]-0.01*x[20]+0.16*x[21]+0.36*x[22]+0.89*x[23]-x[24]-0.95*x[25]-0.3*x[26]+0.26*x[27]-0.82*x[28]+0.68*x[29]+0.11*x[30]+0.33*x[31]-0.32*x[32]+0.09*x[33]+0.67*x[34]-0.5*x[35]+0.95*x[36]-0.4*x[37]-0.02*x[38]+0.05*x[39]+0.72*x[40]-0.7*x[41]-0.03*x[42]-0.49*x[43]+0.54*x[44]+0.9*x[45]-0.43*x[46]+0.46*x[47]+0.84*x[48]+0.8*x[49]+0.43*x[50]+0.89*x[51]+0.64*x[52]+0.41*x[53]+0.05*x[54]-0.35*x[55]+0.86*x[56]-0.69*x[57]+0.95*x[58]+0.38*x[59]+0.25*x[60]+0.11*x[61] == 0.2)
@constraint(m, e8, 0.51*x[2]+0.63*x[3]-0.23*x[4]-0.23*x[5]-0.16*x[6]+0.7*x[7]+0.69*x[8]+0.95*x[9]-0.51*x[10]+0.42*x[11]-0.99*x[12]-0.64*x[13]+0.68*x[14]+0.67*x[15]+0.24*x[16]+0.9*x[17]+0.27*x[18]-0.85*x[19]+0.78*x[20]+0.7*x[21]+0.22*x[22]+0.85*x[23]+0.75*x[24]+0.72*x[25]-0.68*x[26]+0.61*x[27]-0.98*x[28]-0.76*x[29]-0.78*x[30]+0.62*x[31]+0.45*x[32]+0.8*x[33]-0.77*x[34]-0.97*x[35]-0.83*x[36]-0.26*x[37]+0.74*x[38]+0.39*x[39]+0.64*x[40]-0.49*x[41]-0.55*x[42]-0.52*x[43]+0.93*x[44]+0.66*x[45]+0.77*x[46]-0.87*x[47]-0.78*x[48]+0.63*x[49]+0.57*x[50]+0.43*x[51]-0.7*x[52]-0.74*x[53]-0.47*x[54]-0.65*x[55]+0.61*x[56]+0.42*x[57]-0.58*x[58]+0.13*x[59]-0.09*x[60]+0.55*x[61] == 0.96)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.