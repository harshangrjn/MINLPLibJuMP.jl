using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1]
@variable(m, x[x_Idx])
b_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[71])
set_binary(b[78])
set_binary(b[75])
set_binary(b[66])
set_binary(b[85])
set_binary(b[15])
set_binary(b[80])
set_binary(b[82])
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_binary(b[45])
set_binary(b[81])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_binary(b[64])
set_binary(b[54])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[90])
set_binary(b[87])
set_binary(b[95])
set_binary(b[77])
set_binary(b[84])
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
set_binary(b[89])
set_binary(b[92])
set_binary(b[72])
set_binary(b[96])
set_binary(b[5])
set_binary(b[16])
set_binary(b[86])
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
set_binary(b[83])
set_binary(b[59])
set_binary(b[17])
set_binary(b[39])
set_binary(b[76])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[37])
set_binary(b[88])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_binary(b[97])
set_binary(b[93])
set_binary(b[94])
set_binary(b[31])
set_binary(b[62])
set_binary(b[91])
set_binary(b[52])
set_binary(b[24])
set_binary(b[55])
set_binary(b[10])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])


# ----- Constraints ----- #
@constraint(m, e1, x[1] == 1.0)
@constraint(m, e2, b[2]+b[3]+b[4]+b[5] == 1.0)
@constraint(m, e3, b[6]+b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12]+b[13] == 1.0)
@constraint(m, e5, b[14]+b[15]+b[16]+b[17] == 1.0)
@constraint(m, e6, b[18]+b[19]+b[20]+b[21] == 1.0)
@constraint(m, e7, b[22]+b[23]+b[24]+b[25] == 1.0)
@constraint(m, e8, b[26]+b[27]+b[28]+b[29] == 1.0)
@constraint(m, e9, b[30]+b[31]+b[32]+b[33] == 1.0)
@constraint(m, e10, b[34]+b[35]+b[36]+b[37] == 1.0)
@constraint(m, e11, b[38]+b[39]+b[40]+b[41] == 1.0)
@constraint(m, e12, b[42]+b[43]+b[44]+b[45] == 1.0)
@constraint(m, e13, b[46]+b[47]+b[48]+b[49] == 1.0)
@constraint(m, e14, b[50]+b[51]+b[52]+b[53] == 1.0)
@constraint(m, e15, b[54]+b[55]+b[56]+b[57] == 1.0)
@constraint(m, e16, b[58]+b[59]+b[60]+b[61] == 1.0)
@constraint(m, e17, b[62]+b[63]+b[64]+b[65] == 1.0)
@constraint(m, e18, b[66]+b[67]+b[68]+b[69] == 1.0)
@constraint(m, e19, b[70]+b[71]+b[72]+b[73] == 1.0)
@constraint(m, e20, b[74]+b[75]+b[76]+b[77] == 1.0)
@constraint(m, e21, b[78]+b[79]+b[80]+b[81] == 1.0)
@constraint(m, e22, b[82]+b[83]+b[84]+b[85] == 1.0)
@constraint(m, e23, b[86]+b[87]+b[88]+b[89] == 1.0)
@constraint(m, e24, b[90]+b[91]+b[92]+b[93] == 1.0)
@constraint(m, e25, b[94]+b[95]+b[96]+b[97] == 1.0)
@constraint(m, e26, b[2]+b[26]+b[50]+b[74] == 1.0)
@constraint(m, e27, b[3]+b[27]+b[51]+b[75] == 1.0)
@constraint(m, e28, b[4]+b[28]+b[52]+b[76] == 1.0)
@constraint(m, e29, b[5]+b[29]+b[53]+b[77] == 1.0)
@constraint(m, e30, b[6]+b[30]+b[54]+b[78] == 1.0)
@constraint(m, e31, b[7]+b[31]+b[55]+b[79] == 1.0)
@constraint(m, e32, b[8]+b[32]+b[56]+b[80] == 1.0)
@constraint(m, e33, b[9]+b[33]+b[57]+b[81] == 1.0)
@constraint(m, e34, b[10]+b[34]+b[58]+b[82] == 1.0)
@constraint(m, e35, b[11]+b[35]+b[59]+b[83] == 1.0)
@constraint(m, e36, b[12]+b[36]+b[60]+b[84] == 1.0)
@constraint(m, e37, b[13]+b[37]+b[61]+b[85] == 1.0)
@constraint(m, e38, b[14]+b[38]+b[62]+b[86] == 1.0)
@constraint(m, e39, b[15]+b[39]+b[63]+b[87] == 1.0)
@constraint(m, e40, b[16]+b[40]+b[64]+b[88] == 1.0)
@constraint(m, e41, b[17]+b[41]+b[65]+b[89] == 1.0)
@constraint(m, e42, b[18]+b[42]+b[66]+b[90] == 1.0)
@constraint(m, e43, b[19]+b[43]+b[67]+b[91] == 1.0)
@constraint(m, e44, b[20]+b[44]+b[68]+b[92] == 1.0)
@constraint(m, e45, b[21]+b[45]+b[69]+b[93] == 1.0)
@constraint(m, e46, b[22]+b[46]+b[70]+b[94] == 1.0)
@constraint(m, e47, b[23]+b[47]+b[71]+b[95] == 1.0)
@constraint(m, e48, b[24]+b[48]+b[72]+b[96] == 1.0)
@constraint(m, e49, b[25]+b[49]+b[73]+b[97] == 1.0)
@constraint(m, e50, b[2]+b[6]+b[10]+b[14]+b[18]+b[22] == 1.0)
@constraint(m, e51, b[3]+b[7]+b[11]+b[15]+b[19]+b[23] == 1.0)
@constraint(m, e52, b[4]+b[8]+b[12]+b[16]+b[20]+b[24] == 1.0)
@constraint(m, e53, b[5]+b[9]+b[13]+b[17]+b[21]+b[25] == 1.0)
@constraint(m, e54, b[26]+b[30]+b[34]+b[38]+b[42]+b[46] == 1.0)
@constraint(m, e55, b[27]+b[31]+b[35]+b[39]+b[43]+b[47] == 1.0)
@constraint(m, e56, b[28]+b[32]+b[36]+b[40]+b[44]+b[48] == 1.0)
@constraint(m, e57, b[29]+b[33]+b[37]+b[41]+b[45]+b[49] == 1.0)
@constraint(m, e58, b[50]+b[54]+b[58]+b[62]+b[66]+b[70] == 1.0)
@constraint(m, e59, b[51]+b[55]+b[59]+b[63]+b[67]+b[71] == 1.0)
@constraint(m, e60, b[52]+b[56]+b[60]+b[64]+b[68]+b[72] == 1.0)
@constraint(m, e61, b[53]+b[57]+b[61]+b[65]+b[69]+b[73] == 1.0)
@constraint(m, e62, b[74]+b[78]+b[82]+b[86]+b[90]+b[94] == 1.0)
@constraint(m, e63, b[75]+b[79]+b[83]+b[87]+b[91]+b[95] == 1.0)
@constraint(m, e64, b[76]+b[80]+b[84]+b[88]+b[92]+b[96] == 1.0)
@constraint(m, e65, b[77]+b[81]+b[85]+b[89]+b[93]+b[97] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.