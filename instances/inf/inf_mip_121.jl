using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264]
@variable(m, b[b_Idx])
x_Idx = Any[265]
@variable(m, x[x_Idx])
set_binary(b[35])
set_binary(b[216])
set_binary(b[230])
set_binary(b[15])
set_binary(b[228])
set_binary(b[176])
set_binary(b[133])
set_binary(b[45])
set_binary(b[169])
set_binary(b[196])
set_binary(b[180])
set_binary(b[178])
set_binary(b[232])
set_binary(b[208])
set_binary(b[64])
set_binary(b[112])
set_binary(b[21])
set_binary(b[36])
set_binary(b[243])
set_binary(b[130])
set_binary(b[87])
set_binary(b[132])
set_binary(b[211])
set_binary(b[119])
set_binary(b[79])
set_binary(b[213])
set_binary(b[264])
set_binary(b[16])
set_binary(b[60])
set_binary(b[159])
set_binary(b[12])
set_binary(b[227])
set_binary(b[197])
set_binary(b[235])
set_binary(b[11])
set_binary(b[19])
set_binary(b[3])
set_binary(b[193])
set_binary(b[39])
set_binary(b[4])
set_binary(b[37])
set_binary(b[88])
set_binary(b[50])
set_binary(b[192])
set_binary(b[209])
set_binary(b[97])
set_binary(b[262])
set_binary(b[200])
set_binary(b[188])
set_binary(b[62])
set_binary(b[113])
set_binary(b[24])
set_binary(b[10])
set_binary(b[218])
set_binary(b[220])
set_binary(b[236])
set_binary(b[162])
set_binary(b[161])
set_binary(b[224])
set_binary(b[199])
set_binary(b[252])
set_binary(b[75])
set_binary(b[128])
set_binary(b[167])
set_binary(b[177])
set_binary(b[70])
set_binary(b[163])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_binary(b[242])
set_binary(b[28])
set_binary(b[143])
set_binary(b[90])
set_binary(b[206])
set_binary(b[229])
set_binary(b[233])
set_binary(b[84])
set_binary(b[53])
set_binary(b[116])
set_binary(b[255])
set_binary(b[29])
set_binary(b[61])
set_binary(b[223])
set_binary(b[89])
set_binary(b[34])
set_binary(b[145])
set_binary(b[86])
set_binary(b[256])
set_binary(b[114])
set_binary(b[260])
set_binary(b[153])
set_binary(b[13])
set_binary(b[69])
set_binary(b[144])
set_binary(b[68])
set_binary(b[240])
set_binary(b[244])
set_binary(b[166])
set_binary(b[246])
set_binary(b[47])
set_binary(b[214])
set_binary(b[138])
set_binary(b[226])
set_binary(b[151])
set_binary(b[135])
set_binary(b[108])
set_binary(b[154])
set_binary(b[76])
set_binary(b[109])
set_binary(b[174])
set_binary(b[259])
set_binary(b[237])
set_binary(b[155])
set_binary(b[94])
set_binary(b[149])
set_binary(b[107])
set_binary(b[181])
set_binary(b[52])
set_binary(b[139])
set_binary(b[131])
set_binary(b[241])
set_binary(b[38])
set_binary(b[71])
set_binary(b[78])
set_binary(b[215])
set_binary(b[66])
set_binary(b[80])
set_binary(b[160])
set_binary(b[49])
set_binary(b[137])
set_binary(b[185])
set_binary(b[105])
set_binary(b[164])
set_binary(b[124])
set_binary(b[54])
set_binary(b[111])
set_binary(b[22])
set_binary(b[170])
set_binary(b[239])
set_binary(b[98])
set_binary(b[257])
set_binary(b[219])
set_binary(b[186])
set_binary(b[77])
set_binary(b[254])
set_binary(b[172])
set_binary(b[46])
set_binary(b[127])
set_binary(b[56])
set_binary(b[104])
set_binary(b[171])
set_binary(b[221])
set_binary(b[74])
set_binary(b[32])
set_binary(b[248])
set_binary(b[92])
set_binary(b[72])
set_binary(b[126])
set_binary(b[5])
set_binary(b[129])
set_binary(b[238])
set_binary(b[190])
set_binary(b[234])
set_binary(b[212])
set_binary(b[125])
set_binary(b[14])
set_binary(b[184])
set_binary(b[43])
set_binary(b[110])
set_binary(b[231])
set_binary(b[25])
set_binary(b[183])
set_binary(b[9])
set_binary(b[117])
set_binary(b[195])
set_binary(b[83])
set_binary(b[59])
set_binary(b[204])
set_binary(b[67])
set_binary(b[175])
set_binary(b[222])
set_binary(b[93])
set_binary(b[99])
set_binary(b[198])
set_binary(b[146])
set_binary(b[123])
set_binary(b[187])
set_binary(b[202])
set_binary(b[122])
set_binary(b[250])
set_binary(b[121])
set_binary(b[157])
set_binary(b[147])
set_binary(b[201])
set_binary(b[258])
set_binary(b[156])
set_binary(b[26])
set_binary(b[73])
set_binary(b[217])
set_binary(b[118])
set_binary(b[44])
set_binary(b[158])
set_binary(b[120])
set_binary(b[85])
set_binary(b[251])
set_binary(b[82])
set_binary(b[42])
set_binary(b[168])
set_binary(b[106])
set_binary(b[207])
set_binary(b[81])
set_binary(b[225])
set_binary(b[141])
set_binary(b[136])
set_binary(b[150])
set_binary(b[203])
set_binary(b[95])
set_binary(b[115])
set_binary(b[189])
set_binary(b[8])
set_binary(b[33])
set_binary(b[30])
set_binary(b[173])
set_binary(b[40])
set_binary(b[249])
set_binary(b[58])
set_binary(b[96])
set_binary(b[57])
set_binary(b[102])
set_binary(b[245])
set_binary(b[247])
set_binary(b[51])
set_binary(b[2])
set_binary(b[100])
set_binary(b[142])
set_binary(b[20])
set_binary(b[7])
set_binary(b[65])
set_binary(b[205])
set_binary(b[165])
set_binary(b[210])
set_binary(b[101])
set_binary(b[253])
set_binary(b[17])
set_binary(b[6])
set_binary(b[182])
set_binary(b[1])
set_binary(b[179])
set_binary(b[191])
set_binary(b[194])
set_binary(b[134])
set_binary(b[261])
set_binary(b[27])
set_binary(b[18])
set_binary(b[140])
set_binary(b[31])
set_binary(b[91])
set_binary(b[152])
set_binary(b[103])
set_binary(b[55])
set_binary(b[148])
set_binary(b[63])
set_binary(b[263])


# ----- Constraints ----- #
@constraint(m, e1, 4*b[1]+2.83*b[2]+9999*b[3]+3.61*b[4]+9999*b[5]+9999*b[6]+9999*b[7]+9999*b[8]+9999*b[9]+9999*b[10]+9999*b[11]+4*b[12]+9999*b[13]+2.24*b[14]+9999*b[15]+9999*b[16]+3.61*b[17]+9999*b[18]+9999*b[19]+9999*b[20]+9999*b[21]+9999*b[22]+2.83*b[23]+9999*b[24]+b[25]+9999*b[26]+1.41*b[27]+9999*b[28]+9999*b[29]+9999*b[30]+9999*b[31]+9999*b[32]+9999*b[33]+9999*b[34]+2.24*b[35]+b[36]+9999*b[37]+9999*b[38]+3.16*b[39]+9999*b[40]+2*b[41]+9999*b[42]+9999*b[43]+9999*b[44]+3.61*b[45]+9999*b[46]+9999*b[47]+9999*b[48]+3*b[49]+9999*b[50]+2.24*b[51]+9999*b[52]+9999*b[53]+3*b[54]+9999*b[55]+9999*b[56]+9999*b[57]+1.41*b[58]+9999*b[59]+3*b[60]+9999*b[61]+1.41*b[62]+9999*b[63]+2.24*b[64]+9999*b[65]+9999*b[66]+9999*b[67]+3.61*b[68]+9999*b[69]+3.16*b[70]+9999*b[71]+9999*b[72]+9999*b[73]+3.16*b[74]+9999*b[75]+9999*b[76]+3.16*b[77]+9999*b[78]+9999*b[79]+9999*b[80]+9999*b[81]+2.24*b[82]+1.41*b[83]+9999*b[84]+9999*b[85]+9999*b[86]+2.83*b[87]+9999*b[88]+9999*b[89]+9999*b[90]+9999*b[91]+2*b[92]+9999*b[93]+9999*b[94]+3.16*b[95]+9999*b[96]+1.41*b[97]+9999*b[98]+2.83*b[99]+9999*b[100]+9999*b[101]+9999*b[102]+9999*b[103]+9999*b[104]+2.24*b[105]+9999*b[106]+9999*b[107]+1.41*b[108]+4.12*b[109]+9999*b[110]+9999*b[111]+9999*b[112]+9999*b[113]+9999*b[114]+3*b[115]+9999*b[116]+9999*b[117]+2.83*b[118]+9999*b[119]+4.12*b[120]+7*b[121]+9999*b[122]+9999*b[123]+9999*b[124]+9999*b[125]+9999*b[126]+9999*b[127]+3.16*b[128]+9999*b[129]+2.83*b[130]+9999*b[131]+7*b[132]+4*b[133]+2.83*b[134]+9999*b[135]+3.61*b[136]+9999*b[137]+9999*b[138]+9999*b[139]+9999*b[140]+9999*b[141]+9999*b[142]+9999*b[143]+4*b[144]+9999*b[145]+2.24*b[146]+9999*b[147]+9999*b[148]+3.61*b[149]+9999*b[150]+9999*b[151]+9999*b[152]+9999*b[153]+9999*b[154]+2.83*b[155]+9999*b[156]+b[157]+9999*b[158]+1.41*b[159]+9999*b[160]+9999*b[161]+9999*b[162]+9999*b[163]+9999*b[164]+9999*b[165]+9999*b[166]+2.24*b[167]+b[168]+9999*b[169]+9999*b[170]+3.16*b[171]+9999*b[172]+2*b[173]+9999*b[174]+9999*b[175]+9999*b[176]+3.61*b[177]+9999*b[178]+9999*b[179]+9999*b[180]+3*b[181]+9999*b[182]+2.24*b[183]+9999*b[184]+9999*b[185]+3*b[186]+9999*b[187]+9999*b[188]+9999*b[189]+1.41*b[190]+9999*b[191]+3*b[192]+9999*b[193]+1.41*b[194]+9999*b[195]+2.24*b[196]+9999*b[197]+9999*b[198]+9999*b[199]+3.61*b[200]+9999*b[201]+3.16*b[202]+9999*b[203]+9999*b[204]+9999*b[205]+3.16*b[206]+9999*b[207]+9999*b[208]+3.16*b[209]+9999*b[210]+9999*b[211]+9999*b[212]+9999*b[213]+2.24*b[214]+1.41*b[215]+9999*b[216]+9999*b[217]+9999*b[218]+2.83*b[219]+9999*b[220]+9999*b[221]+9999*b[222]+9999*b[223]+2*b[224]+9999*b[225]+9999*b[226]+3.16*b[227]+9999*b[228]+1.41*b[229]+9999*b[230]+2.83*b[231]+9999*b[232]+9999*b[233]+9999*b[234]+9999*b[235]+9999*b[236]+2.24*b[237]+9999*b[238]+9999*b[239]+1.41*b[240]+4.12*b[241]+9999*b[242]+9999*b[243]+9999*b[244]+9999*b[245]+9999*b[246]+3*b[247]+9999*b[248]+9999*b[249]+2.83*b[250]+9999*b[251]+4.12*b[252]+7*b[253]+9999*b[254]+9999*b[255]+9999*b[256]+9999*b[257]+9999*b[258]+9999*b[259]+3.16*b[260]+9999*b[261]+2.83*b[262]+9999*b[263]+7*b[264]-x[265] == 0.0)
@constraint(m, e2, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[10]+b[11] == 1.0)
@constraint(m, e3, b[11]+b[22]+b[33]+b[44]+b[55]+b[66]+b[77]+b[88]+b[99]+b[110]+b[121] == 1.0)
@constraint(m, e4, b[133]+b[134]+b[135]+b[136]+b[137]+b[138]+b[139]+b[140]+b[141]+b[142]+b[143] == 1.0)
@constraint(m, e5, b[143]+b[154]+b[165]+b[176]+b[187]+b[198]+b[209]+b[220]+b[231]+b[242]+b[253] == 1.0)
@constraint(m, e6, b[12]+b[23]+b[34]+b[45]+b[56]+b[67]+b[78]+b[89]+b[100]+b[111]+b[122]+b[144]+b[155]+b[166]+b[177]+b[188]+b[199]+b[210]+b[221]+b[232]+b[243]+b[254] <= 1.0)
@constraint(m, e7, b[1]+b[24]+b[35]+b[46]+b[57]+b[68]+b[79]+b[90]+b[101]+b[112]+b[123]+b[133]+b[156]+b[167]+b[178]+b[189]+b[200]+b[211]+b[222]+b[233]+b[244]+b[255] <= 1.0)
@constraint(m, e8, b[2]+b[13]+b[36]+b[47]+b[58]+b[69]+b[80]+b[91]+b[102]+b[113]+b[124]+b[134]+b[145]+b[168]+b[179]+b[190]+b[201]+b[212]+b[223]+b[234]+b[245]+b[256] <= 1.0)
@constraint(m, e9, b[3]+b[14]+b[25]+b[48]+b[59]+b[70]+b[81]+b[92]+b[103]+b[114]+b[125]+b[135]+b[146]+b[157]+b[180]+b[191]+b[202]+b[213]+b[224]+b[235]+b[246]+b[257] <= 1.0)
@constraint(m, e10, b[4]+b[15]+b[26]+b[37]+b[60]+b[71]+b[82]+b[93]+b[104]+b[115]+b[126]+b[136]+b[147]+b[158]+b[169]+b[192]+b[203]+b[214]+b[225]+b[236]+b[247]+b[258] <= 1.0)
@constraint(m, e11, b[5]+b[16]+b[27]+b[38]+b[49]+b[72]+b[83]+b[94]+b[105]+b[116]+b[127]+b[137]+b[148]+b[159]+b[170]+b[181]+b[204]+b[215]+b[226]+b[237]+b[248]+b[259] <= 1.0)
@constraint(m, e12, b[6]+b[17]+b[28]+b[39]+b[50]+b[61]+b[84]+b[95]+b[106]+b[117]+b[128]+b[138]+b[149]+b[160]+b[171]+b[182]+b[193]+b[216]+b[227]+b[238]+b[249]+b[260] <= 1.0)
@constraint(m, e13, b[7]+b[18]+b[29]+b[40]+b[51]+b[62]+b[73]+b[96]+b[107]+b[118]+b[129]+b[139]+b[150]+b[161]+b[172]+b[183]+b[194]+b[205]+b[228]+b[239]+b[250]+b[261] <= 1.0)
@constraint(m, e14, b[8]+b[19]+b[30]+b[41]+b[52]+b[63]+b[74]+b[85]+b[108]+b[119]+b[130]+b[140]+b[151]+b[162]+b[173]+b[184]+b[195]+b[206]+b[217]+b[240]+b[251]+b[262] <= 1.0)
@constraint(m, e15, b[9]+b[20]+b[31]+b[42]+b[53]+b[64]+b[75]+b[86]+b[97]+b[120]+b[131]+b[141]+b[152]+b[163]+b[174]+b[185]+b[196]+b[207]+b[218]+b[229]+b[252]+b[263] <= 1.0)
@constraint(m, e16, b[10]+b[21]+b[32]+b[43]+b[54]+b[65]+b[76]+b[87]+b[98]+b[109]+b[132]+b[142]+b[153]+b[164]+b[175]+b[186]+b[197]+b[208]+b[219]+b[230]+b[241]+b[264] <= 1.0)
@constraint(m, e17, b[11]+b[22]+b[33]+b[44]+b[55]+b[66]+b[77]+b[88]+b[99]+b[110]+b[121]+b[143]+b[154]+b[165]+b[176]+b[187]+b[198]+b[209]+b[220]+b[231]+b[242]+b[253] <= 1.0)
@constraint(m, e18, b[1]-b[12]-b[13]-b[14]-b[15]-b[16]-b[17]-b[18]-b[19]-b[20]-b[21]-b[22]+b[24]+b[35]+b[46]+b[57]+b[68]+b[79]+b[90]+b[101]+b[112]+b[123] == 0.0)
@constraint(m, e19, b[2]+b[13]-b[23]-b[24]-b[25]-b[26]-b[27]-b[28]-b[29]-b[30]-b[31]-b[32]-b[33]+b[36]+b[47]+b[58]+b[69]+b[80]+b[91]+b[102]+b[113]+b[124] == 0.0)
@constraint(m, e20, b[3]+b[14]+b[25]-b[34]-b[35]-b[36]-b[37]-b[38]-b[39]-b[40]-b[41]-b[42]-b[43]-b[44]+b[48]+b[59]+b[70]+b[81]+b[92]+b[103]+b[114]+b[125] == 0.0)
@constraint(m, e21, b[4]+b[15]+b[26]+b[37]-b[45]-b[46]-b[47]-b[48]-b[49]-b[50]-b[51]-b[52]-b[53]-b[54]-b[55]+b[60]+b[71]+b[82]+b[93]+b[104]+b[115]+b[126] == 0.0)
@constraint(m, e22, b[5]+b[16]+b[27]+b[38]+b[49]-b[56]-b[57]-b[58]-b[59]-b[60]-b[61]-b[62]-b[63]-b[64]-b[65]-b[66]+b[72]+b[83]+b[94]+b[105]+b[116]+b[127] == 0.0)
@constraint(m, e23, b[6]+b[17]+b[28]+b[39]+b[50]+b[61]-b[67]-b[68]-b[69]-b[70]-b[71]-b[72]-b[73]-b[74]-b[75]-b[76]-b[77]+b[84]+b[95]+b[106]+b[117]+b[128] == 0.0)
@constraint(m, e24, b[7]+b[18]+b[29]+b[40]+b[51]+b[62]+b[73]-b[78]-b[79]-b[80]-b[81]-b[82]-b[83]-b[84]-b[85]-b[86]-b[87]-b[88]+b[96]+b[107]+b[118]+b[129] == 0.0)
@constraint(m, e25, b[8]+b[19]+b[30]+b[41]+b[52]+b[63]+b[74]+b[85]-b[89]-b[90]-b[91]-b[92]-b[93]-b[94]-b[95]-b[96]-b[97]-b[98]-b[99]+b[108]+b[119]+b[130] == 0.0)
@constraint(m, e26, b[9]+b[20]+b[31]+b[42]+b[53]+b[64]+b[75]+b[86]+b[97]-b[100]-b[101]-b[102]-b[103]-b[104]-b[105]-b[106]-b[107]-b[108]-b[109]-b[110]+b[120]+b[131] == 0.0)
@constraint(m, e27, b[10]+b[21]+b[32]+b[43]+b[54]+b[65]+b[76]+b[87]+b[98]+b[109]-b[111]-b[112]-b[113]-b[114]-b[115]-b[116]-b[117]-b[118]-b[119]-b[120]-b[121]+b[132] == 0.0)
@constraint(m, e28, b[133]-b[144]-b[145]-b[146]-b[147]-b[148]-b[149]-b[150]-b[151]-b[152]-b[153]-b[154]+b[156]+b[167]+b[178]+b[189]+b[200]+b[211]+b[222]+b[233]+b[244]+b[255] == 0.0)
@constraint(m, e29, b[134]+b[145]-b[155]-b[156]-b[157]-b[158]-b[159]-b[160]-b[161]-b[162]-b[163]-b[164]-b[165]+b[168]+b[179]+b[190]+b[201]+b[212]+b[223]+b[234]+b[245]+b[256] == 0.0)
@constraint(m, e30, b[135]+b[146]+b[157]-b[166]-b[167]-b[168]-b[169]-b[170]-b[171]-b[172]-b[173]-b[174]-b[175]-b[176]+b[180]+b[191]+b[202]+b[213]+b[224]+b[235]+b[246]+b[257] == 0.0)
@constraint(m, e31, b[136]+b[147]+b[158]+b[169]-b[177]-b[178]-b[179]-b[180]-b[181]-b[182]-b[183]-b[184]-b[185]-b[186]-b[187]+b[192]+b[203]+b[214]+b[225]+b[236]+b[247]+b[258] == 0.0)
@constraint(m, e32, b[137]+b[148]+b[159]+b[170]+b[181]-b[188]-b[189]-b[190]-b[191]-b[192]-b[193]-b[194]-b[195]-b[196]-b[197]-b[198]+b[204]+b[215]+b[226]+b[237]+b[248]+b[259] == 0.0)
@constraint(m, e33, b[138]+b[149]+b[160]+b[171]+b[182]+b[193]-b[199]-b[200]-b[201]-b[202]-b[203]-b[204]-b[205]-b[206]-b[207]-b[208]-b[209]+b[216]+b[227]+b[238]+b[249]+b[260] == 0.0)
@constraint(m, e34, b[139]+b[150]+b[161]+b[172]+b[183]+b[194]+b[205]-b[210]-b[211]-b[212]-b[213]-b[214]-b[215]-b[216]-b[217]-b[218]-b[219]-b[220]+b[228]+b[239]+b[250]+b[261] == 0.0)
@constraint(m, e35, b[140]+b[151]+b[162]+b[173]+b[184]+b[195]+b[206]+b[217]-b[221]-b[222]-b[223]-b[224]-b[225]-b[226]-b[227]-b[228]-b[229]-b[230]-b[231]+b[240]+b[251]+b[262] == 0.0)
@constraint(m, e36, b[141]+b[152]+b[163]+b[174]+b[185]+b[196]+b[207]+b[218]+b[229]-b[232]-b[233]-b[234]-b[235]-b[236]-b[237]-b[238]-b[239]-b[240]-b[241]-b[242]+b[252]+b[263] == 0.0)
@constraint(m, e37, b[142]+b[153]+b[164]+b[175]+b[186]+b[197]+b[208]+b[219]+b[230]+b[241]-b[243]-b[244]-b[245]-b[246]-b[247]-b[248]-b[249]-b[250]-b[251]-b[252]-b[253]+b[264] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[265])

m = m 		 # model get returned when including this script.