using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80]
@variable(m, b[b_Idx])
x_Idx = Any[81, 82, 83]
@variable(m, x[x_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[71])
set_binary(b[78])
set_binary(b[75])
set_binary(b[66])
set_binary(b[15])
set_binary(b[80])
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_binary(b[45])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_binary(b[64])
set_binary(b[54])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[77])
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_binary(b[56])
set_binary(b[30])
set_binary(b[79])
set_binary(b[29])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[74])
set_binary(b[32])
set_binary(b[34])
set_binary(b[57])
set_binary(b[72])
set_binary(b[5])
set_binary(b[16])
set_binary(b[60])
set_binary(b[13])
set_binary(b[51])
set_binary(b[69])
set_binary(b[12])
set_binary(b[2])
set_binary(b[68])
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[65])
set_binary(b[3])
set_binary(b[59])
set_binary(b[17])
set_binary(b[39])
set_binary(b[76])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[1])
set_binary(b[37])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_binary(b[31])
set_binary(b[62])
set_binary(b[52])
set_binary(b[24])
set_binary(b[55])
set_binary(b[10])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])


# ----- Constraints ----- #
@constraint(m, e1, -b[1]-b[2]-b[3]-b[4]-b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]-b[13]-b[14]-b[15]-b[16]-b[17]-b[18]-b[19]-b[20]-b[21]-b[22]-b[23]-b[24]-b[25]-b[26]-b[27]-b[28]-b[29]-b[30]+0.001*x[81]+0.001*x[82]+x[83] == 0.0)
@constraint(m, e2, b[1]+b[2]+b[3] >= 1.0)
@constraint(m, e3, b[1]+b[3]+b[4]-3.1*b[53] <= 0.9)
@constraint(m, e4, b[2]+b[5]+b[7] >= 1.0)
@constraint(m, e5, b[4]+b[12]+b[13]+b[14]+b[15]+b[16]-6.1*b[62] <= 0.9)
@constraint(m, e6, b[12]+b[13]-2.1*b[63] <= 0.9)
@constraint(m, e7, b[12]+b[14]+b[15]-3.1*b[64] <= 0.9)
@constraint(m, e8, b[12]+b[14]+b[15]+b[18]+b[23]-5.1*b[65] <= 0.9)
@constraint(m, e9, b[12]+b[16]+b[17]-3.1*b[66] <= 0.9)
@constraint(m, e10, b[10]+b[16]+b[17]-3.1*b[67] <= 0.9)
@constraint(m, e11, b[15]+b[18]+b[19]-3.1*b[68] <= 0.9)
@constraint(m, e12, b[18]+b[19]+b[20]-3.1*b[69] <= 0.9)
@constraint(m, e13, b[10]+b[19]+b[20]-3.1*b[70] <= 0.9)
@constraint(m, e14, b[15]+b[23]+b[24]-3.1*b[73] <= 0.9)
@constraint(m, e15, b[1]+b[2]+b[3]-3.1*b[51] <= 0.9)
@constraint(m, e16, b[1]+b[2]+b[4]+b[5]+b[6]-5.1*b[52] <= 0.9)
@constraint(m, e17, b[1]+b[3]+b[4] >= 1.0)
@constraint(m, e18, b[2]+b[3]+b[4]+b[6]+b[12]-5.1*b[54] <= 0.9)
@constraint(m, e19, b[2]+b[5]+b[7]-3.1*b[55] <= 0.9)
@constraint(m, e20, b[2]+b[4]+b[6]+b[7]+b[8]+b[9]+b[10]+b[28]-8.1*b[56] <= 0.9)
@constraint(m, e21, b[5]+b[6]+b[7]-3.1*b[57] <= 0.9)
@constraint(m, e22, b[6]+b[8]+b[28]-3.1*b[58] <= 0.9)
@constraint(m, e23, b[6]+b[9]+b[10]+b[11]-4.1*b[59] <= 0.9)
@constraint(m, e24, b[6]+b[9]+b[10]+b[17]+b[20]+b[21]+b[22]-7.1*b[60] <= 0.9)
@constraint(m, e25, b[9]+b[11]-2.1*b[61] <= 0.9)
@constraint(m, e26, b[4]+b[12]+b[13]+b[14]+b[15]+b[16] >= 1.0)
@constraint(m, e27, b[12]+b[13] >= 1.0)
@constraint(m, e28, b[12]+b[14]+b[15] >= 1.0)
@constraint(m, e29, b[12]+b[14]+b[15]+b[18]+b[23] >= 1.0)
@constraint(m, e30, b[12]+b[16]+b[17] >= 1.0)
@constraint(m, e31, b[10]+b[16]+b[17] >= 1.0)
@constraint(m, e32, b[15]+b[18]+b[19] >= 1.0)
@constraint(m, e33, b[18]+b[19]+b[20] >= 1.0)
@constraint(m, e34, b[10]+b[19]+b[20] >= 1.0)
@constraint(m, e35, b[10]+b[21]+b[22]-3.1*b[71] <= 0.9)
@constraint(m, e36, b[10]+b[21]+b[22]+b[24]-4.1*b[72] <= 0.9)
@constraint(m, e37, b[15]+b[23]+b[24] >= 1.0)
@constraint(m, e38, b[22]+b[23]+b[24]+b[25]-4.1*b[74] <= 0.9)
@constraint(m, e39, b[24]+b[25]+b[26]+b[27]-4.1*b[75] <= 0.9)
@constraint(m, e40, b[25]+b[26]-2.1*b[76] <= 0.9)
@constraint(m, e41, b[25]+b[27]+b[28]+b[29]+b[30]-5.1*b[77] <= 0.9)
@constraint(m, e42, b[6]+b[8]+b[27]+b[28]-4.1*b[78] <= 0.9)
@constraint(m, e43, b[27]+b[29]+b[30]-3.1*b[79] <= 0.9)
@constraint(m, e44, b[27]+b[29]+b[30]-3.1*b[80] <= 0.9)
@constraint(m, e45, b[1]+b[2]+b[4]+b[5]+b[6]-b[52] >= 0.0)
@constraint(m, e46, b[2]+b[3]+b[4]+b[6]+b[12]-b[54] >= 0.0)
@constraint(m, e47, b[2]+b[4]+b[6]+b[7]+b[8]+b[9]+b[10]+b[28]-b[56] >= 0.0)
@constraint(m, e48, b[5]+b[6]+b[7]-b[57] >= 0.0)
@constraint(m, e49, b[6]+b[8]+b[28]-b[58] >= 0.0)
@constraint(m, e50, b[6]+b[9]+b[10]+b[11]-b[59] >= 0.0)
@constraint(m, e51, b[6]+b[9]+b[10]+b[17]+b[20]+b[21]+b[22]-b[60] >= 0.0)
@constraint(m, e52, b[9]+b[11]-b[61] >= 0.0)
@constraint(m, e53, b[10]+b[21]+b[22]-b[71] >= 0.0)
@constraint(m, e54, b[10]+b[21]+b[22]+b[24]-b[72] >= 0.0)
@constraint(m, e55, b[22]+b[23]+b[24]+b[25]-b[74] >= 0.0)
@constraint(m, e56, b[24]+b[25]+b[26]+b[27]-b[75] >= 0.0)
@constraint(m, e57, b[25]+b[26]-b[76] >= 0.0)
@constraint(m, e58, b[25]+b[27]+b[28]+b[29]+b[30]-b[77] >= 0.0)
@constraint(m, e59, b[6]+b[8]+b[27]+b[28]-b[78] >= 0.0)
@constraint(m, e60, b[27]+b[29]+b[30]-b[79] >= 0.0)
@constraint(m, e61, b[27]+b[29]+b[30]-b[80] >= 0.0)
@constraint(m, e62, -b[31]-b[32]-b[33]-b[34]-b[35]+b[52]+b[54]+b[56]+b[57]+b[58]+b[59]+b[60]+b[78] >= 2.0)
@constraint(m, e63, -b[36]-b[37]-b[38]+b[56]+b[59]+b[60]+b[61] >= 0.0)
@constraint(m, e64, -b[39]-b[40]+b[60]+b[71]+b[72]+b[74] >= 1.0)
@constraint(m, e65, -b[41]-b[42]-b[43]+b[74]+b[75]+b[76]+b[77] >= 0.0)
@constraint(m, e66, -b[44]-b[45]-b[46]+b[75]+b[77]+b[78]+b[79]+b[80] >= 1.0)
@constraint(m, e67, -b[47]-b[49]-2*b[50]+b[56]+b[58]+b[77]+b[78] == -1.0)
@constraint(m, e68, b[31]+b[36]+b[47] == 1.0)
@constraint(m, e69, b[32]+b[48] == 1.0)
@constraint(m, e70, b[33]+b[37] == 1.0)
@constraint(m, e71, b[34]+b[38]+b[39] == 1.0)
@constraint(m, e72, b[40]+b[41] == 1.0)
@constraint(m, e73, b[42]+b[44] == 1.0)
@constraint(m, e74, b[43]+b[45]+b[49] == 1.0)
@constraint(m, e75, b[35]+b[46]+b[50] == 1.0)
@constraint(m, e76, b[31]-0.9*b[56] >= 0.1)
@constraint(m, e77, b[32]-0.9*b[58] >= 0.1)
@constraint(m, e78, b[33]-0.9*b[59] >= 0.1)
@constraint(m, e79, b[34]-0.9*b[60] >= 0.1)
@constraint(m, e80, b[35]-0.9*b[78] >= 0.1)
@constraint(m, e81, b[36]-0.9*b[56] >= 0.1)
@constraint(m, e82, b[37]-0.9*b[59] >= 0.1)
@constraint(m, e83, b[38]-0.9*b[60] >= 0.1)
@constraint(m, e84, b[39]-0.9*b[60] >= 0.1)
@constraint(m, e85, b[40]-0.9*b[74] >= 0.1)
@constraint(m, e86, b[41]-0.9*b[74] >= 0.1)
@constraint(m, e87, b[42]-0.9*b[75] >= 0.1)
@constraint(m, e88, b[43]-0.9*b[77] >= 0.1)
@constraint(m, e89, b[44]-0.9*b[75] >= 0.1)
@constraint(m, e90, b[45]-0.9*b[77] >= 0.1)
@constraint(m, e91, b[46]-0.9*b[78] >= 0.1)
@constraint(m, e92, b[47]-0.9*b[56] >= 0.1)
@constraint(m, e93, b[48]-0.9*b[58] >= 0.1)
@constraint(m, e94, b[49]-0.9*b[77] >= 0.1)
@constraint(m, e95, b[50]-0.9*b[78] >= 0.1)
@constraint(m, e96, -3*b[1]-5*b[2]-3*b[3]-5*b[4]-3*b[5]-8*b[6]-3*b[7]-3*b[8]-4*b[9]-7*b[10]-2*b[11]-6*b[12]-2*b[13]-3*b[14]-5*b[15]-3*b[16]-3*b[17]-3*b[18]-3*b[19]-3*b[20]-3*b[21]-4*b[22]-3*b[23]-4*b[24]-4*b[25]-2*b[26]-5*b[27]-4*b[28]-3*b[29]-3*b[30]+x[81] == 0.0)
@constraint(m, e97, b[51]+b[52]+b[53]+b[54]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[62]+b[63]+b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72]+b[73]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[80]+x[82] == 30.0)


# ----- Objective ----- #
@objective(m, Min, x[83])

m = m 		 # model get returned when including this script.