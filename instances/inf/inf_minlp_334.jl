using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143]
@variable(m, b[b_Idx])
x_Idx = Any[144, 145, 146]
@variable(m, x[x_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[71])
set_binary(b[118])
set_binary(b[78])
set_binary(b[75])
set_binary(b[120])
set_binary(b[128])
set_binary(b[66])
set_binary(b[85])
set_binary(b[15])
set_binary(b[80])
set_binary(b[82])
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_binary(b[106])
set_binary(b[45])
set_binary(b[133])
set_binary(b[81])
set_binary(b[137])
set_binary(b[41])
set_binary(b[48])
set_binary(b[105])
set_binary(b[124])
set_binary(b[141])
set_binary(b[23])
set_binary(b[64])
set_binary(b[112])
set_binary(b[54])
set_binary(b[111])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[136])
set_binary(b[143])
set_binary(b[22])
set_binary(b[90])
set_binary(b[130])
set_binary(b[87])
set_binary(b[98])
set_binary(b[132])
set_binary(b[95])
set_binary(b[77])
set_binary(b[115])
set_binary(b[84])
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_binary(b[56])
set_binary(b[116])
set_binary(b[30])
set_binary(b[79])
set_binary(b[104])
set_binary(b[119])
set_binary(b[29])
set_binary(b[127])
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
set_binary(b[126])
set_binary(b[5])
set_binary(b[16])
set_binary(b[129])
set_binary(b[86])
set_binary(b[114])
set_binary(b[60])
set_binary(b[102])
set_binary(b[13])
set_binary(b[51])
set_binary(b[69])
set_binary(b[12])
set_binary(b[2])
set_binary(b[68])
set_binary(b[100])
set_binary(b[125])
set_binary(b[142])
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[110])
set_binary(b[65])
set_binary(b[138])
set_binary(b[117])
set_binary(b[3])
set_binary(b[83])
set_binary(b[135])
set_binary(b[59])
set_binary(b[101])
set_binary(b[108])
set_binary(b[17])
set_binary(b[39])
set_binary(b[76])
set_binary(b[109])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[1])
set_binary(b[37])
set_binary(b[88])
set_binary(b[134])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_binary(b[97])
set_binary(b[93])
set_binary(b[99])
set_binary(b[140])
set_binary(b[94])
set_binary(b[31])
set_binary(b[123])
set_binary(b[107])
set_binary(b[62])
set_binary(b[91])
set_binary(b[113])
set_binary(b[52])
set_binary(b[103])
set_binary(b[122])
set_binary(b[24])
set_binary(b[121])
set_binary(b[139])
set_binary(b[55])
set_binary(b[10])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])
set_binary(b[131])


# ----- Constraints ----- #
@constraint(m, e1, -b[1]-b[2]-b[3]-b[4]-b[5]-b[6]-b[7]-b[8]-b[9]-b[10]-b[11]-b[12]-b[13]-b[14]-b[15]-b[16]-b[17]-b[18]-b[19]-b[20]-b[21]-b[22]-b[23]-b[24]-b[25]-b[26]-b[27]-b[28]-b[29]-b[30]-b[31]-b[32]-b[33]-b[34]-b[35]-b[36]-b[37]-b[38]-b[39]-b[40]-b[41]-b[42]-b[43]-b[44]-b[45]-b[46]-b[47]-b[48]-b[49]-b[50]-b[51]-b[52]-b[53]-b[54]-b[55]-b[56]-b[57]+0.001*x[144]+0.001*x[145]+x[146] == 0.0)
@constraint(m, e2, b[1]+b[2]+b[15]+b[16]+b[17]-5.1*b[87] <= 0.9)
@constraint(m, e3, b[1]+b[2]+b[3]-3.1*b[88] <= 0.9)
@constraint(m, e4, b[2]+b[3]+b[4]+b[15]-4.1*b[89] <= 0.9)
@constraint(m, e5, b[3]+b[4]+b[5]+b[6]+b[18]-5.1*b[90] <= 0.9)
@constraint(m, e6, b[4]+b[5]+b[6]-3.1*b[91] <= 0.9)
@constraint(m, e7, b[4]+b[5]+b[6]+b[7]+b[8]-5.1*b[92] <= 0.9)
@constraint(m, e8, b[6]+b[7]+b[8]+b[29]-4.1*b[93] <= 0.9)
@constraint(m, e9, b[6]+b[7]+b[8]+b[9]-4.1*b[94] <= 0.9)
@constraint(m, e10, b[8]+b[9]+b[10]+b[11]+b[12]+b[13]+b[55]-7.1*b[95] <= 0.9)
@constraint(m, e11, b[9]+b[10]+b[12]+b[51]-4.1*b[96] <= 0.9)
@constraint(m, e12, b[9]+b[11]+b[13]+b[41]+b[43]-5.1*b[97] <= 0.9)
@constraint(m, e13, b[9]+b[10]+b[12]+b[13]+b[16]+b[17]-6.1*b[98] <= 0.9)
@constraint(m, e14, b[9]+b[11]+b[12]+b[13]+b[14]+b[15]+b[49]-7.1*b[99] <= 0.9)
@constraint(m, e15, b[13]+b[14]+b[15]+b[46]-4.1*b[100] <= 0.9)
@constraint(m, e16, b[1]+b[3]+b[13]+b[14]+b[15]+b[45]-6.1*b[101] <= 0.9)
@constraint(m, e17, b[1]+b[12]+b[16]-3.1*b[102] <= 0.9)
@constraint(m, e18, b[1]+b[12]+b[17]-3.1*b[103] <= 0.9)
@constraint(m, e19, b[4]+b[18]+b[19]-3.1*b[104] <= 0.9)
@constraint(m, e20, b[18]+b[19]+b[20]-3.1*b[105] <= 0.9)
@constraint(m, e21, b[19]+b[20]+b[21]-3.1*b[106] <= 0.9)
@constraint(m, e22, b[20]+b[21]+b[22]-3.1*b[107] <= 0.9)
@constraint(m, e23, b[21]+b[22]+b[23]+b[38]-4.1*b[108] <= 0.9)
@constraint(m, e24, b[22]+b[23]+b[24]-3.1*b[109] <= 0.9)
@constraint(m, e25, b[23]+b[24]+b[25]+b[26]-4.1*b[110] <= 0.9)
@constraint(m, e26, b[24]+b[25]+b[30]-3.1*b[111] <= 0.9)
@constraint(m, e27, b[24]+b[26]+b[27]-3.1*b[112] <= 0.9)
@constraint(m, e28, b[26]+b[27]+b[28]-3.1*b[113] <= 0.9)
@constraint(m, e29, b[27]+b[28]+b[29]-3.1*b[114] <= 0.9)
@constraint(m, e30, b[7]+b[28]+b[29]+b[52]-4.1*b[115] <= 0.9)
@constraint(m, e31, b[25]+b[30]+b[31]-3.1*b[116] <= 0.9)
@constraint(m, e32, b[30]+b[31]+b[32]-3.1*b[117] <= 0.9)
@constraint(m, e33, b[31]+b[32]+b[33]+b[34]-4.1*b[118] <= 0.9)
@constraint(m, e34, b[32]+b[33]-2.1*b[119] <= 0.9)
@constraint(m, e35, b[32]+b[34]+b[35]-3.1*b[120] <= 0.9)
@constraint(m, e36, b[34]+b[35]+b[36]-3.1*b[121] <= 0.9)
@constraint(m, e37, b[35]+b[36]+b[37]+b[40]-4.1*b[122] <= 0.9)
@constraint(m, e38, b[36]+b[37]+b[38]+b[39]-4.1*b[123] <= 0.9)
@constraint(m, e39, b[22]+b[37]+b[38]+b[44]+b[48]+b[49]-6.1*b[124] <= 0.9)
@constraint(m, e40, b[37]+b[39]+b[57]-3.1*b[125] <= 0.9)
@constraint(m, e41, b[36]+b[40]+b[56]-3.1*b[126] <= 0.9)
@constraint(m, e42, b[11]+b[41]+b[42]+b[43]+b[56]-5.1*b[127] <= 0.9)
@constraint(m, e43, b[41]+b[42]+b[56]-3.1*b[128] <= 0.9)
@constraint(m, e44, b[11]+b[41]+b[43]-3.1*b[129] <= 0.9)
@constraint(m, e45, b[38]+b[44]+b[45]-3.1*b[130] <= 0.9)
@constraint(m, e46, b[15]+b[44]+b[45]-3.1*b[131] <= 0.9)
@constraint(m, e47, b[14]+b[46]+b[47]-3.1*b[132] <= 0.9)
@constraint(m, e48, b[46]+b[47]+b[48]-3.1*b[133] <= 0.9)
@constraint(m, e49, b[38]+b[47]+b[48]+b[49]-4.1*b[134] <= 0.9)
@constraint(m, e50, b[13]+b[38]+b[48]+b[49]+b[50]-5.1*b[135] <= 0.9)
@constraint(m, e51, b[49]+b[50]+b[51]-3.1*b[136] <= 0.9)
@constraint(m, e52, b[10]+b[50]+b[51]-3.1*b[137] <= 0.9)
@constraint(m, e53, b[29]+b[52]+b[53]-3.1*b[138] <= 0.9)
@constraint(m, e54, b[52]+b[53]+b[54]-3.1*b[139] <= 0.9)
@constraint(m, e55, b[53]+b[54]+b[55]-3.1*b[140] <= 0.9)
@constraint(m, e56, b[9]+b[54]+b[55]-3.1*b[141] <= 0.9)
@constraint(m, e57, b[40]+b[41]+b[42]+b[56]+b[57]-5.1*b[142] <= 0.9)
@constraint(m, e58, b[39]+b[56]+b[57]-3.1*b[143] <= 0.9)
@constraint(m, e59, b[1]+b[2]+b[15]+b[16]+b[17]-b[87] >= 0.0)
@constraint(m, e60, b[1]+b[2]+b[3]-b[88] >= 0.0)
@constraint(m, e61, b[2]+b[3]+b[4]+b[15]-b[89] >= 0.0)
@constraint(m, e62, b[3]+b[4]+b[5]+b[6]+b[18]-b[90] >= 0.0)
@constraint(m, e63, b[4]+b[5]+b[6]-b[91] >= 0.0)
@constraint(m, e64, b[4]+b[5]+b[6]+b[7]+b[8]-b[92] >= 0.0)
@constraint(m, e65, b[6]+b[7]+b[8]+b[29]-b[93] >= 0.0)
@constraint(m, e66, b[6]+b[7]+b[8]+b[9]-b[94] >= 0.0)
@constraint(m, e67, b[8]+b[9]+b[10]+b[11]+b[12]+b[13]+b[55]-b[95] >= 0.0)
@constraint(m, e68, b[9]+b[10]+b[12]+b[51]-b[96] >= 0.0)
@constraint(m, e69, b[9]+b[11]+b[13]+b[41]+b[43]-b[97] >= 0.0)
@constraint(m, e70, b[9]+b[10]+b[12]+b[13]+b[16]+b[17]-b[98] >= 0.0)
@constraint(m, e71, b[9]+b[11]+b[12]+b[13]+b[14]+b[15]+b[49]-b[99] >= 0.0)
@constraint(m, e72, b[13]+b[14]+b[15]+b[46]-b[100] >= 0.0)
@constraint(m, e73, b[1]+b[3]+b[13]+b[14]+b[15]+b[45]-b[101] >= 0.0)
@constraint(m, e74, b[1]+b[12]+b[16]-b[102] >= 0.0)
@constraint(m, e75, b[1]+b[12]+b[17]-b[103] >= 0.0)
@constraint(m, e76, b[4]+b[18]+b[19]-b[104] >= 0.0)
@constraint(m, e77, b[18]+b[19]+b[20]-b[105] >= 0.0)
@constraint(m, e78, b[19]+b[20]+b[21]-b[106] >= 0.0)
@constraint(m, e79, b[20]+b[21]+b[22]-b[107] >= 0.0)
@constraint(m, e80, b[21]+b[22]+b[23]+b[38]-b[108] >= 0.0)
@constraint(m, e81, b[22]+b[23]+b[24]-b[109] >= 0.0)
@constraint(m, e82, b[23]+b[24]+b[25]+b[26]-b[110] >= 0.0)
@constraint(m, e83, b[24]+b[25]+b[30]-b[111] >= 0.0)
@constraint(m, e84, b[24]+b[26]+b[27]-b[112] >= 0.0)
@constraint(m, e85, b[26]+b[27]+b[28]-b[113] >= 0.0)
@constraint(m, e86, b[27]+b[28]+b[29]-b[114] >= 0.0)
@constraint(m, e87, b[7]+b[28]+b[29]+b[52]-b[115] >= 0.0)
@constraint(m, e88, b[25]+b[30]+b[31]-b[116] >= 0.0)
@constraint(m, e89, b[30]+b[31]+b[32]-b[117] >= 0.0)
@constraint(m, e90, b[31]+b[32]+b[33]+b[34]-b[118] >= 0.0)
@constraint(m, e91, b[32]+b[33]-b[119] >= 0.0)
@constraint(m, e92, b[32]+b[34]+b[35]-b[120] >= 0.0)
@constraint(m, e93, b[34]+b[35]+b[36]-b[121] >= 0.0)
@constraint(m, e94, b[35]+b[36]+b[37]+b[40]-b[122] >= 0.0)
@constraint(m, e95, b[36]+b[37]+b[38]+b[39]-b[123] >= 0.0)
@constraint(m, e96, b[22]+b[37]+b[38]+b[44]+b[48]+b[49]-b[124] >= 0.0)
@constraint(m, e97, b[37]+b[39]+b[57]-b[125] >= 0.0)
@constraint(m, e98, b[36]+b[40]+b[56]-b[126] >= 0.0)
@constraint(m, e99, b[11]+b[41]+b[42]+b[43]+b[56]-b[127] >= 0.0)
@constraint(m, e100, b[41]+b[42]+b[56]-b[128] >= 0.0)
@constraint(m, e101, b[11]+b[41]+b[43]-b[129] >= 0.0)
@constraint(m, e102, b[38]+b[44]+b[45]-b[130] >= 0.0)
@constraint(m, e103, b[15]+b[44]+b[45]-b[131] >= 0.0)
@constraint(m, e104, b[14]+b[46]+b[47]-b[132] >= 0.0)
@constraint(m, e105, b[46]+b[47]+b[48]-b[133] >= 0.0)
@constraint(m, e106, b[38]+b[47]+b[48]+b[49]-b[134] >= 0.0)
@constraint(m, e107, b[13]+b[38]+b[48]+b[49]+b[50]-b[135] >= 0.0)
@constraint(m, e108, b[49]+b[50]+b[51]-b[136] >= 0.0)
@constraint(m, e109, b[10]+b[50]+b[51]-b[137] >= 0.0)
@constraint(m, e110, b[29]+b[52]+b[53]-b[138] >= 0.0)
@constraint(m, e111, b[52]+b[53]+b[54]-b[139] >= 0.0)
@constraint(m, e112, b[53]+b[54]+b[55]-b[140] >= 0.0)
@constraint(m, e113, b[9]+b[54]+b[55]-b[141] >= 0.0)
@constraint(m, e114, b[40]+b[41]+b[42]+b[56]+b[57]-b[142] >= 0.0)
@constraint(m, e115, b[39]+b[56]+b[57]-b[143] >= 0.0)
@constraint(m, e116, b[1]+b[2]+b[15]+b[16]+b[17] >= 1.0)
@constraint(m, e117, b[1]+b[2]+b[3] >= 1.0)
@constraint(m, e118, b[2]+b[3]+b[4]+b[15] >= 0.0)
@constraint(m, e119, b[3]+b[4]+b[5]+b[6]+b[18] >= 0.0)
@constraint(m, e120, b[4]+b[5]+b[6] >= 0.0)
@constraint(m, e121, b[4]+b[5]+b[6]+b[7]+b[8] >= 0.0)
@constraint(m, e122, b[6]+b[7]+b[8]+b[29] >= 0.0)
@constraint(m, e123, b[6]+b[7]+b[8]+b[9] >= 0.0)
@constraint(m, e124, b[8]+b[9]+b[10]+b[11]+b[12]+b[13]+b[55] >= 0.0)
@constraint(m, e125, b[9]+b[10]+b[12]+b[51] >= 1.0)
@constraint(m, e126, b[9]+b[11]+b[13]+b[41]+b[43] >= 0.0)
@constraint(m, e127, b[9]+b[10]+b[12]+b[13]+b[16]+b[17] >= 1.0)
@constraint(m, e128, b[9]+b[11]+b[12]+b[13]+b[14]+b[15]+b[49] >= 0.0)
@constraint(m, e129, b[13]+b[14]+b[15]+b[46] >= 0.0)
@constraint(m, e130, b[1]+b[3]+b[13]+b[14]+b[15]+b[45] >= 0.0)
@constraint(m, e131, b[1]+b[12]+b[16] >= 1.0)
@constraint(m, e132, b[1]+b[12]+b[17] >= 1.0)
@constraint(m, e133, b[4]+b[18]+b[19] >= 0.0)
@constraint(m, e134, b[18]+b[19]+b[20] >= 1.0)
@constraint(m, e135, b[19]+b[20]+b[21] >= 0.0)
@constraint(m, e136, b[20]+b[21]+b[22] >= 0.0)
@constraint(m, e137, b[21]+b[22]+b[23]+b[38] >= 0.0)
@constraint(m, e138, b[22]+b[23]+b[24] >= 0.0)
@constraint(m, e139, b[23]+b[24]+b[25]+b[26] >= 0.0)
@constraint(m, e140, b[24]+b[25]+b[30] >= 0.0)
@constraint(m, e141, b[24]+b[26]+b[27] >= 0.0)
@constraint(m, e142, b[26]+b[27]+b[28] >= 0.0)
@constraint(m, e143, b[27]+b[28]+b[29] >= 1.0)
@constraint(m, e144, b[7]+b[28]+b[29]+b[52] >= 0.0)
@constraint(m, e145, b[25]+b[30]+b[31] >= 1.0)
@constraint(m, e146, b[30]+b[31]+b[32] >= 1.0)
@constraint(m, e147, b[31]+b[32]+b[33]+b[34] >= 0.0)
@constraint(m, e148, b[32]+b[33] >= 1.0)
@constraint(m, e149, b[32]+b[34]+b[35] >= 0.0)
@constraint(m, e150, b[34]+b[35]+b[36] >= 0.0)
@constraint(m, e151, b[35]+b[36]+b[37]+b[40] >= 0.0)
@constraint(m, e152, b[36]+b[37]+b[38]+b[39] >= 0.0)
@constraint(m, e153, b[22]+b[37]+b[38]+b[44]+b[48]+b[49] >= 0.0)
@constraint(m, e154, b[37]+b[39]+b[57] >= 0.0)
@constraint(m, e155, b[36]+b[40]+b[56] >= 0.0)
@constraint(m, e156, b[11]+b[41]+b[42]+b[43]+b[56] >= 0.0)
@constraint(m, e157, b[41]+b[42]+b[56] >= 1.0)
@constraint(m, e158, b[11]+b[41]+b[43] >= 0.0)
@constraint(m, e159, b[38]+b[44]+b[45] >= 0.0)
@constraint(m, e160, b[15]+b[44]+b[45] >= 0.0)
@constraint(m, e161, b[14]+b[46]+b[47] >= 0.0)
@constraint(m, e162, b[46]+b[47]+b[48] >= 0.0)
@constraint(m, e163, b[38]+b[47]+b[48]+b[49] >= 0.0)
@constraint(m, e164, b[13]+b[38]+b[48]+b[49]+b[50] >= 0.0)
@constraint(m, e165, b[49]+b[50]+b[51] >= 1.0)
@constraint(m, e166, b[10]+b[50]+b[51] >= 1.0)
@constraint(m, e167, b[29]+b[52]+b[53] >= 1.0)
@constraint(m, e168, b[52]+b[53]+b[54] >= 1.0)
@constraint(m, e169, b[53]+b[54]+b[55] >= 1.0)
@constraint(m, e170, b[9]+b[54]+b[55] >= 1.0)
@constraint(m, e171, b[40]+b[41]+b[42]+b[56]+b[57] >= 0.0)
@constraint(m, e172, b[39]+b[56]+b[57] >= 0.0)
@constraint(m, e173, -5*b[1]-3*b[2]-4*b[3]-5*b[4]-3*b[5]-5*b[6]-4*b[7]-4*b[8]-7*b[9]-4*b[10]-5*b[11]-6*b[12]-7*b[13]-4*b[14]-6*b[15]-3*b[16]-3*b[17]-3*b[18]-3*b[19]-3*b[20]-3*b[21]-4*b[22]-3*b[23]-4*b[24]-3*b[25]-3*b[26]-3*b[27]-3*b[28]-4*b[29]-3*b[30]-3*b[31]-4*b[32]-2*b[33]-3*b[34]-3*b[35]-4*b[36]-4*b[37]-6*b[38]-3*b[39]-3*b[40]-5*b[41]-3*b[42]-3*b[43]-3*b[44]-3*b[45]-3*b[46]-3*b[47]-4*b[48]-5*b[49]-3*b[50]-3*b[51]-3*b[52]-3*b[53]-3*b[54]-3*b[55]-5*b[56]-3*b[57]+x[144] == 0.0)
@constraint(m, e174, b[87]+b[88]+b[89]+b[90]+b[91]+b[92]+b[93]+b[94]+b[95]+b[96]+b[97]+b[98]+b[99]+b[100]+b[101]+b[102]+b[103]+b[104]+b[105]+b[106]+b[107]+b[108]+b[109]+b[110]+b[111]+b[112]+b[113]+b[114]+b[115]+b[116]+b[117]+b[118]+b[119]+b[120]+b[121]+b[122]+b[123]+b[124]+b[125]+b[126]+b[127]+b[128]+b[129]+b[130]+b[131]+b[132]+b[133]+b[134]+b[135]+b[136]+b[137]+b[138]+b[139]+b[140]+b[141]+b[142]+b[143]+x[145] == 57.0)
@constraint(m, e175, -b[58]+b[89]+b[90]+b[91]+b[92]+b[104] >= 3.0)
@constraint(m, e176, -b[59]+b[92]+b[93]+b[94]+b[115] >= 2.0)
@constraint(m, e177, b[95]+b[97]+b[99]+b[127]+b[129] >= 4.0)
@constraint(m, e178, -b[60]-b[62]+b[106]+b[107]+b[108] >= 0.0)
@constraint(m, e179, -b[61]-b[63]-b[64]-b[78]+b[107]+b[108]+b[109]+b[124] >= -1.0)
@constraint(m, e180, -b[65]-b[66]-b[68]+b[109]+b[110]+b[111]+b[112] >= 0.0)
@constraint(m, e181, -b[67]-b[69]+b[110]+b[112]+b[113] >= 0.0)
@constraint(m, e182, -b[70]+b[118]+b[120]+b[121] >= 1.0)
@constraint(m, e183, -b[71]-b[72]-b[75]-b[83]+b[121]+b[122]+b[123]+b[126] >= -1.0)
@constraint(m, e184, -b[73]-b[76]-b[79]-b[81]+b[122]+b[123]+b[124]+b[125] >= -1.0)
@constraint(m, e185, -b[77]-b[82]+b[123]+b[125]+b[143] >= 0.0)
@constraint(m, e186, -b[74]-b[84]+b[122]+b[126]+b[142] >= 0.0)
@constraint(m, e187, b[101]+b[130]+b[131] >= 2.0)
@NLconstraint(m, e188, b[85]*b[133]-b[85]+b[100]+b[132] >= 1.0)
@constraint(m, e189, -b[80]-b[86]+b[124]+b[133]+b[134]+b[135] >= 1.0)
@constraint(m, e190, b[58]+b[59] == 1.0)
@constraint(m, e191, b[60]+b[61] == 1.0)
@constraint(m, e192, b[62]+b[63] == 1.0)
@constraint(m, e193, b[64]+b[65] == 1.0)
@constraint(m, e194, b[66]+b[67] == 1.0)
@constraint(m, e195, b[68]+b[69] == 1.0)
@constraint(m, e196, b[70]+b[71] == 1.0)
@constraint(m, e197, b[72]+b[73]+b[74] == 1.0)
@constraint(m, e198, b[75]+b[76]+b[77] == 1.0)
@constraint(m, e199, b[78]+b[79]+b[80] == 1.0)
@constraint(m, e200, b[81]+b[82] == 1.0)
@constraint(m, e201, b[83]+b[84] == 1.0)
@constraint(m, e202, b[85]+b[86] == 1.0)
@constraint(m, e203, b[58]-b[92] >= 0.0)
@constraint(m, e204, b[60]-b[107] >= 0.0)
@constraint(m, e205, b[62]-b[108] >= 0.0)
@constraint(m, e206, b[61]-b[107] >= 0.0)
@constraint(m, e207, b[63]-b[108] >= 0.0)
@constraint(m, e208, b[64]-b[109] >= 0.0)
@constraint(m, e209, b[78]-b[124] >= 0.0)
@constraint(m, e210, b[65]-b[109] >= 0.0)
@constraint(m, e211, b[66]-b[110] >= 0.0)
@constraint(m, e212, b[68]-b[112] >= 0.0)
@constraint(m, e213, b[67]-b[110] >= 0.0)
@constraint(m, e214, b[69]-b[112] >= 0.0)
@constraint(m, e215, b[70]-b[121] >= 0.0)
@constraint(m, e216, b[71]-b[121] >= 0.0)
@constraint(m, e217, b[72]-b[122] >= 0.0)
@constraint(m, e218, b[75]-b[123] >= 0.0)
@constraint(m, e219, b[83]-b[126] >= 0.0)
@constraint(m, e220, b[73]-b[122] >= 0.0)
@constraint(m, e221, b[76]-b[123] >= 0.0)
@constraint(m, e222, b[79]-b[124] >= 0.0)
@constraint(m, e223, b[81]-b[125] >= 0.0)
@constraint(m, e224, b[77]-b[123] >= 0.0)
@constraint(m, e225, b[82]-b[125] >= 0.0)
@constraint(m, e226, b[74]-b[122] >= 0.0)
@constraint(m, e227, b[84]-b[126] >= 0.0)
@constraint(m, e228, b[85]-b[133] >= 0.0)
@constraint(m, e229, b[80]-b[124] >= 0.0)
@constraint(m, e230, b[86]-b[133] >= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[146])

m = m 		 # model get returned when including this script.