using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[15])
set_binary(b[176])
set_binary(b[133])
set_binary(b[45])
set_binary(b[169])
set_binary(b[180])
set_binary(b[178])
set_binary(b[64])
set_binary(b[112])
set_binary(b[21])
set_binary(b[36])
set_binary(b[130])
set_binary(b[87])
set_binary(b[132])
set_binary(b[119])
set_binary(b[79])
set_binary(b[16])
set_binary(b[60])
set_binary(b[159])
set_binary(b[12])
set_binary(b[11])
set_binary(b[19])
set_binary(b[3])
set_binary(b[39])
set_binary(b[4])
set_binary(b[37])
set_binary(b[88])
set_binary(b[50])
set_binary(b[192])
set_binary(b[97])
set_binary(b[188])
set_binary(b[62])
set_binary(b[113])
set_binary(b[24])
set_binary(b[10])
set_binary(b[162])
set_binary(b[161])
set_binary(b[75])
set_binary(b[128])
set_binary(b[167])
set_binary(b[177])
set_binary(b[70])
set_binary(b[163])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_binary(b[28])
set_binary(b[143])
set_binary(b[90])
set_binary(b[84])
set_binary(b[53])
set_binary(b[116])
set_binary(b[29])
set_binary(b[61])
set_binary(b[89])
set_binary(b[34])
set_binary(b[145])
set_binary(b[86])
set_binary(b[114])
set_binary(b[153])
set_binary(b[13])
set_binary(b[69])
set_binary(b[144])
set_binary(b[68])
set_binary(b[166])
set_binary(b[47])
set_binary(b[138])
set_binary(b[151])
set_binary(b[135])
set_binary(b[108])
set_binary(b[154])
set_binary(b[76])
set_binary(b[109])
set_binary(b[174])
set_binary(b[155])
set_binary(b[94])
set_binary(b[149])
set_binary(b[107])
set_binary(b[181])
set_binary(b[52])
set_binary(b[139])
set_binary(b[131])
set_binary(b[38])
set_binary(b[71])
set_binary(b[78])
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
set_binary(b[98])
set_binary(b[186])
set_binary(b[77])
set_binary(b[172])
set_binary(b[46])
set_binary(b[127])
set_binary(b[56])
set_binary(b[104])
set_binary(b[171])
set_binary(b[74])
set_binary(b[32])
set_binary(b[92])
set_binary(b[72])
set_binary(b[126])
set_binary(b[5])
set_binary(b[129])
set_binary(b[190])
set_binary(b[125])
set_binary(b[14])
set_binary(b[184])
set_binary(b[43])
set_binary(b[110])
set_binary(b[25])
set_binary(b[183])
set_binary(b[9])
set_binary(b[117])
set_binary(b[83])
set_binary(b[59])
set_binary(b[67])
set_binary(b[175])
set_binary(b[93])
set_binary(b[99])
set_binary(b[146])
set_binary(b[123])
set_binary(b[187])
set_binary(b[122])
set_binary(b[121])
set_binary(b[157])
set_binary(b[147])
set_binary(b[156])
set_binary(b[26])
set_binary(b[73])
set_binary(b[118])
set_binary(b[44])
set_binary(b[158])
set_binary(b[120])
set_binary(b[85])
set_binary(b[82])
set_binary(b[42])
set_binary(b[168])
set_binary(b[106])
set_binary(b[81])
set_binary(b[141])
set_binary(b[136])
set_binary(b[150])
set_binary(b[95])
set_binary(b[115])
set_binary(b[189])
set_binary(b[8])
set_binary(b[33])
set_binary(b[30])
set_binary(b[173])
set_binary(b[40])
set_binary(b[58])
set_binary(b[96])
set_binary(b[57])
set_binary(b[102])
set_binary(b[51])
set_binary(b[2])
set_binary(b[100])
set_binary(b[142])
set_binary(b[20])
set_binary(b[7])
set_binary(b[65])
set_binary(b[165])
set_binary(b[101])
set_binary(b[17])
set_binary(b[6])
set_binary(b[182])
set_binary(b[1])
set_binary(b[179])
set_binary(b[191])
set_binary(b[134])
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


# ----- Constraints ----- #
@constraint(m, e1, b[1]+b[2]+b[3] == 1.0)
@constraint(m, e2, b[4]+b[5]+b[6] == 1.0)
@constraint(m, e3, b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12] == 1.0)
@constraint(m, e5, b[13]+b[14]+b[15] == 1.0)
@constraint(m, e6, b[16]+b[17]+b[18] == 1.0)
@constraint(m, e7, b[19]+b[20]+b[21] == 1.0)
@constraint(m, e8, b[22]+b[23]+b[24] == 1.0)
@constraint(m, e9, b[25]+b[26]+b[27] == 1.0)
@constraint(m, e10, b[28]+b[29]+b[30] == 1.0)
@constraint(m, e11, b[31]+b[32]+b[33] == 1.0)
@constraint(m, e12, b[34]+b[35]+b[36] == 1.0)
@constraint(m, e13, b[37]+b[38]+b[39] == 1.0)
@constraint(m, e14, b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48] == 1.0)
@constraint(m, e17, b[49]+b[50]+b[51] == 1.0)
@constraint(m, e18, b[52]+b[53]+b[54] == 1.0)
@constraint(m, e19, b[55]+b[56]+b[57] == 1.0)
@constraint(m, e20, b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] == 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] == 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] == 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] == 1.0)
@constraint(m, e25, b[73]+b[74]+b[75] == 1.0)
@constraint(m, e26, b[76]+b[77]+b[78] == 1.0)
@constraint(m, e27, b[79]+b[80]+b[81] == 1.0)
@constraint(m, e28, b[82]+b[83]+b[84] == 1.0)
@constraint(m, e29, b[85]+b[86]+b[87] == 1.0)
@constraint(m, e30, b[88]+b[89]+b[90] == 1.0)
@constraint(m, e31, b[91]+b[92]+b[93] == 1.0)
@constraint(m, e32, b[94]+b[95]+b[96] == 1.0)
@constraint(m, e33, b[97]+b[98]+b[99] == 1.0)
@constraint(m, e34, b[100]+b[101]+b[102] == 1.0)
@constraint(m, e35, b[103]+b[104]+b[105] == 1.0)
@constraint(m, e36, b[106]+b[107]+b[108] == 1.0)
@constraint(m, e37, b[109]+b[110]+b[111] == 1.0)
@constraint(m, e38, b[112]+b[113]+b[114] == 1.0)
@constraint(m, e39, b[115]+b[116]+b[117] == 1.0)
@constraint(m, e40, b[118]+b[119]+b[120] == 1.0)
@constraint(m, e41, b[121]+b[122]+b[123] == 1.0)
@constraint(m, e42, b[124]+b[125]+b[126] == 1.0)
@constraint(m, e43, b[127]+b[128]+b[129] == 1.0)
@constraint(m, e44, b[130]+b[131]+b[132] == 1.0)
@constraint(m, e45, b[133]+b[134]+b[135] == 1.0)
@constraint(m, e46, b[136]+b[137]+b[138] == 1.0)
@constraint(m, e47, b[139]+b[140]+b[141] == 1.0)
@constraint(m, e48, b[142]+b[143]+b[144] == 1.0)
@constraint(m, e49, b[145]+b[146]+b[147] == 1.0)
@constraint(m, e50, b[148]+b[149]+b[150] == 1.0)
@constraint(m, e51, b[151]+b[152]+b[153] == 1.0)
@constraint(m, e52, b[154]+b[155]+b[156] == 1.0)
@constraint(m, e53, b[157]+b[158]+b[159] == 1.0)
@constraint(m, e54, b[160]+b[161]+b[162] == 1.0)
@constraint(m, e55, b[163]+b[164]+b[165] == 1.0)
@constraint(m, e56, b[166]+b[167]+b[168] == 1.0)
@constraint(m, e57, b[169]+b[170]+b[171] == 1.0)
@constraint(m, e58, b[172]+b[173]+b[174] == 1.0)
@constraint(m, e59, b[175]+b[176]+b[177] == 1.0)
@constraint(m, e60, b[178]+b[179]+b[180] == 1.0)
@constraint(m, e61, b[181]+b[182]+b[183] == 1.0)
@constraint(m, e62, b[184]+b[185]+b[186] == 1.0)
@constraint(m, e63, b[187]+b[188]+b[189] == 1.0)
@constraint(m, e64, b[190]+b[191]+b[192] == 1.0)
@NLconstraint(m, e65, (-b[1]*b[4])-b[1]*b[22]+b[1]*b[25]-b[1]*b[169]-b[2]*b[5]-b[2]*b[23]+b[2]*b[26]-b[2]*b[170]-b[3]*b[6]-b[3]*b[24]+b[3]*b[27]-b[3]*b[171]-b[4]*b[7]-b[4]*b[28]+b[4]*b[172]-b[5]*b[8]-b[5]*b[29]+b[5]*b[173]-b[6]*b[9]-b[6]*b[30]+b[6]*b[174]-b[7]*b[10]+b[7]*b[31]-b[7]*b[175]-b[8]*b[11]+b[8]*b[32]-b[8]*b[176]-b[9]*b[12]+b[9]*b[33]-b[9]*b[177]-b[10]*b[13]-b[10]*b[34]-b[10]*b[178]-b[11]*b[14]-b[11]*b[35]-b[11]*b[179]-b[12]*b[15]-b[12]*b[36]-b[12]*b[180]-b[13]*b[16]-b[13]*b[37]+b[13]*b[181]-b[14]*b[17]-b[14]*b[38]+b[14]*b[182]-b[15]*b[18]-b[15]*b[39]+b[15]*b[183]-b[16]*b[19]-b[16]*b[40]-b[16]*b[184]-b[17]*b[20]-b[17]*b[41]-b[17]*b[185]-b[18]*b[21]-b[18]*b[42]-b[18]*b[186]-b[19]*b[22]+b[19]*b[43]+b[19]*b[187]-b[20]*b[23]+b[20]*b[44]+b[20]*b[188]-b[21]*b[24]+b[21]*b[45]+b[21]*b[189]-b[22]*b[46]-b[22]*b[190]-b[23]*b[47]-b[23]*b[191]-b[24]*b[48]-b[24]*b[192]-b[25]*b[28]-b[25]*b[46]-b[25]*b[49]-b[26]*b[29]-b[26]*b[47]-b[26]*b[50]-b[27]*b[30]-b[27]*b[48]-b[27]*b[51]+b[28]*b[31]+b[28]*b[52]+b[29]*b[32]+b[29]*b[53]+b[30]*b[33]+b[30]*b[54]+b[31]*b[34]+b[31]*b[55]+b[32]*b[35]+b[32]*b[56]+b[33]*b[36]+b[33]*b[57]+b[34]*b[37]-b[34]*b[58]+b[35]*b[38]-b[35]*b[59]+b[36]*b[39]-b[36]*b[60]-b[37]*b[40]-b[37]*b[61]-b[38]*b[41]-b[38]*b[62]-b[39]*b[42]-b[39]*b[63]+b[40]*b[43]+b[40]*b[64]+b[41]*b[44]+b[41]*b[65]+b[42]*b[45]+b[42]*b[66]+b[43]*b[46]-b[43]*b[67]+b[44]*b[47]-b[44]*b[68]+b[45]*b[48]-b[45]*b[69]+b[46]*b[70]+b[47]*b[71]+b[48]*b[72]+b[49]*b[52]-b[49]*b[70]+b[49]*b[73]+b[50]*b[53]-b[50]*b[71]+b[50]*b[74]+b[51]*b[54]-b[51]*b[72]+b[51]*b[75]-b[52]*b[55]-b[52]*b[76]-b[53]*b[56]-b[53]*b[77]-b[54]*b[57]-b[54]*b[78]-b[55]*b[58]-b[55]*b[79]-b[56]*b[59]-b[56]*b[80]-b[57]*b[60]-b[57]*b[81]-b[58]*b[61]+b[58]*b[82]-b[59]*b[62]+b[59]*b[83]-b[60]*b[63]+b[60]*b[84]+b[61]*b[64]-b[61]*b[85]+b[62]*b[65]-b[62]*b[86]+b[63]*b[66]-b[63]*b[87]+b[64]*b[67]+b[64]*b[88]+b[65]*b[68]+b[65]*b[89]+b[66]*b[69]+b[66]*b[90]-b[67]*b[70]-b[67]*b[91]-b[68]*b[71]-b[68]*b[92]-b[69]*b[72]-b[69]*b[93]+b[70]*b[94]+b[71]*b[95]+b[72]*b[96]-b[73]*b[76]+b[73]*b[94]+b[73]*b[97]-b[74]*b[77]+b[74]*b[95]+b[74]*b[98]-b[75]*b[78]+b[75]*b[96]+b[75]*b[99]-b[76]*b[79]-b[76]*b[100]-b[77]*b[80]-b[77]*b[101]-b[78]*b[81]-b[78]*b[102]-b[79]*b[82]+b[79]*b[103]-b[80]*b[83]+b[80]*b[104]-b[81]*b[84]+b[81]*b[105]+b[82]*b[85]+b[82]*b[106]+b[83]*b[86]+b[83]*b[107]+b[84]*b[87]+b[84]*b[108]+b[85]*b[88]+b[85]*b[109]+b[86]*b[89]+b[86]*b[110]+b[87]*b[90]+b[87]*b[111]-b[88]*b[91]+b[88]*b[112]-b[89]*b[92]+b[89]*b[113]-b[90]*b[93]+b[90]*b[114]+b[91]*b[94]-b[91]*b[115]+b[92]*b[95]-b[92]*b[116]+b[93]*b[96]-b[93]*b[117]-b[94]*b[118]-b[95]*b[119]-b[96]*b[120]+b[97]*b[100]+b[97]*b[118]+b[97]*b[121]+b[98]*b[101]+b[98]*b[119]+b[98]*b[122]+b[99]*b[102]+b[99]*b[120]+b[99]*b[123]+b[100]*b[103]-b[100]*b[124]+b[101]*b[104]-b[101]*b[125]+b[102]*b[105]-b[102]*b[126]+b[103]*b[106]+b[103]*b[127]+b[104]*b[107]+b[104]*b[128]+b[105]*b[108]+b[105]*b[129]+b[106]*b[109]+b[106]*b[130]+b[107]*b[110]+b[107]*b[131]+b[108]*b[111]+b[108]*b[132]-b[109]*b[112]-b[109]*b[133]-b[110]*b[113]-b[110]*b[134]-b[111]*b[114]-b[111]*b[135]+b[112]*b[115]-b[112]*b[136]+b[113]*b[116]-b[113]*b[137]+b[114]*b[117]-b[114]*b[138]-b[115]*b[118]+b[115]*b[139]-b[116]*b[119]+b[116]*b[140]-b[117]*b[120]+b[117]*b[141]-b[118]*b[142]-b[119]*b[143]-b[120]*b[144]-b[121]*b[124]+b[121]*b[142]+b[121]*b[145]-b[122]*b[125]+b[122]*b[143]+b[122]*b[146]-b[123]*b[126]+b[123]*b[144]+b[123]*b[147]+b[124]*b[127]-b[124]*b[148]+b[125]*b[128]-b[125]*b[149]+b[126]*b[129]-b[126]*b[150]-b[127]*b[130]+b[127]*b[151]-b[128]*b[131]+b[128]*b[152]-b[129]*b[132]+b[129]*b[153]-b[130]*b[133]+b[130]*b[154]-b[131]*b[134]+b[131]*b[155]-b[132]*b[135]+b[132]*b[156]+b[133]*b[136]+b[133]*b[157]+b[134]*b[137]+b[134]*b[158]+b[135]*b[138]+b[135]*b[159]-b[136]*b[139]+b[136]*b[160]-b[137]*b[140]+b[137]*b[161]-b[138]*b[141]+b[138]*b[162]+b[139]*b[142]-b[139]*b[163]+b[140]*b[143]-b[140]*b[164]+b[141]*b[144]-b[141]*b[165]-b[142]*b[166]-b[143]*b[167]-b[144]*b[168]+b[145]*b[148]+b[145]*b[166]-b[145]*b[169]+b[146]*b[149]+b[146]*b[167]-b[146]*b[170]+b[147]*b[150]+b[147]*b[168]-b[147]*b[171]-b[148]*b[151]-b[148]*b[172]-b[149]*b[152]-b[149]*b[173]-b[150]*b[153]-b[150]*b[174]-b[151]*b[154]+b[151]*b[175]-b[152]*b[155]+b[152]*b[176]-b[153]*b[156]+b[153]*b[177]-b[154]*b[157]-b[154]*b[178]-b[155]*b[158]-b[155]*b[179]-b[156]*b[159]-b[156]*b[180]-b[157]*b[160]+b[157]*b[181]-b[158]*b[161]+b[158]*b[182]-b[159]*b[162]+b[159]*b[183]+b[160]*b[163]+b[160]*b[184]+b[161]*b[164]+b[161]*b[185]+b[162]*b[165]+b[162]*b[186]+b[163]*b[166]+b[163]*b[187]+b[164]*b[167]+b[164]*b[188]+b[165]*b[168]+b[165]*b[189]+b[166]*b[190]+b[167]*b[191]+b[168]*b[192]+b[169]*b[172]-b[169]*b[190]+b[170]*b[173]-b[170]*b[191]+b[171]*b[174]-b[171]*b[192]+b[172]*b[175]+b[173]*b[176]+b[174]*b[177]-b[175]*b[178]-b[176]*b[179]-b[177]*b[180]+b[178]*b[181]+b[179]*b[182]+b[180]*b[183]-b[181]*b[184]-b[182]*b[185]-b[183]*b[186]+b[184]*b[187]+b[185]*b[188]+b[186]*b[189]+b[187]*b[190]+b[188]*b[191]+b[189]*b[192]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.