using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243]
@variable(m, b[b_Idx])
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
set_binary(b[29])
set_binary(b[61])
set_binary(b[223])
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
set_binary(b[240])
set_binary(b[166])
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
set_binary(b[219])
set_binary(b[186])
set_binary(b[77])
set_binary(b[172])
set_binary(b[46])
set_binary(b[127])
set_binary(b[56])
set_binary(b[104])
set_binary(b[171])
set_binary(b[221])
set_binary(b[74])
set_binary(b[32])
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
set_binary(b[121])
set_binary(b[157])
set_binary(b[147])
set_binary(b[201])
set_binary(b[156])
set_binary(b[26])
set_binary(b[73])
set_binary(b[217])
set_binary(b[118])
set_binary(b[44])
set_binary(b[158])
set_binary(b[120])
set_binary(b[85])
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
set_binary(b[205])
set_binary(b[165])
set_binary(b[210])
set_binary(b[101])
set_binary(b[17])
set_binary(b[6])
set_binary(b[182])
set_binary(b[1])
set_binary(b[179])
set_binary(b[191])
set_binary(b[194])
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
@constraint(m, e65, b[193]+b[194]+b[195] == 1.0)
@constraint(m, e66, b[196]+b[197]+b[198] == 1.0)
@constraint(m, e67, b[199]+b[200]+b[201] == 1.0)
@constraint(m, e68, b[202]+b[203]+b[204] == 1.0)
@constraint(m, e69, b[205]+b[206]+b[207] == 1.0)
@constraint(m, e70, b[208]+b[209]+b[210] == 1.0)
@constraint(m, e71, b[211]+b[212]+b[213] == 1.0)
@constraint(m, e72, b[214]+b[215]+b[216] == 1.0)
@constraint(m, e73, b[217]+b[218]+b[219] == 1.0)
@constraint(m, e74, b[220]+b[221]+b[222] == 1.0)
@constraint(m, e75, b[223]+b[224]+b[225] == 1.0)
@constraint(m, e76, b[226]+b[227]+b[228] == 1.0)
@constraint(m, e77, b[229]+b[230]+b[231] == 1.0)
@constraint(m, e78, b[232]+b[233]+b[234] == 1.0)
@constraint(m, e79, b[235]+b[236]+b[237] == 1.0)
@constraint(m, e80, b[238]+b[239]+b[240] == 1.0)
@constraint(m, e81, b[241]+b[242]+b[243] == 1.0)
@NLconstraint(m, e82, 75260*b[1]*b[4]-15525*b[1]*b[25]+1448*b[1]*b[28]+35332*b[1]*b[217]+75260*b[2]*b[5]-15525*b[2]*b[26]+1448*b[2]*b[29]+35332*b[2]*b[218]+75260*b[3]*b[6]-15525*b[3]*b[27]+1448*b[3]*b[30]+35332*b[3]*b[219]+65166*b[4]*b[7]-231070*b[4]*b[31]-32003*b[4]*b[220]+65166*b[5]*b[8]-231070*b[5]*b[32]-32003*b[5]*b[221]+65166*b[6]*b[9]-231070*b[6]*b[33]-32003*b[6]*b[222]+36246*b[7]*b[10]+54442*b[7]*b[34]-124520*b[7]*b[223]+36246*b[8]*b[11]+54442*b[8]*b[35]-124520*b[8]*b[224]+36246*b[9]*b[12]+54442*b[9]*b[36]-124520*b[9]*b[225]-10022*b[10]*b[13]+170366*b[10]*b[37]+87801*b[10]*b[226]-10022*b[11]*b[14]+170366*b[11]*b[38]+87801*b[11]*b[227]-10022*b[12]*b[15]+170366*b[12]*b[39]+87801*b[12]*b[228]+13961*b[13]*b[16]+95303*b[13]*b[40]+31421*b[13]*b[229]+13961*b[14]*b[17]+95303*b[14]*b[41]+31421*b[14]*b[230]+13961*b[15]*b[18]+95303*b[15]*b[42]+31421*b[15]*b[231]+35992*b[16]*b[19]+134080*b[16]*b[43]-130633*b[16]*b[232]+35992*b[17]*b[20]+134080*b[17]*b[44]-130633*b[17]*b[233]+35992*b[18]*b[21]+134080*b[18]*b[45]-130633*b[18]*b[234]-95577*b[19]*b[22]+52867*b[19]*b[46]-46358*b[19]*b[235]-95577*b[20]*b[23]+52867*b[20]*b[47]-46358*b[20]*b[236]-95577*b[21]*b[24]+52867*b[21]*b[48]-46358*b[21]*b[237]-135541*b[22]*b[25]+244498*b[22]*b[49]-125443*b[22]*b[238]-135541*b[23]*b[26]+244498*b[23]*b[50]-125443*b[23]*b[239]-135541*b[24]*b[27]+244498*b[24]*b[51]-125443*b[24]*b[240]+131606*b[25]*b[52]+25578*b[25]*b[241]+131606*b[26]*b[53]+25578*b[26]*b[242]+131606*b[27]*b[54]+25578*b[27]*b[243]+59601*b[28]*b[31]+231059*b[28]*b[52]-84412*b[28]*b[55]+59601*b[29]*b[32]+231059*b[29]*b[53]-84412*b[29]*b[56]+59601*b[30]*b[33]+231059*b[30]*b[54]-84412*b[30]*b[57]-71617*b[31]*b[34]-72573*b[31]*b[58]-71617*b[32]*b[35]-72573*b[32]*b[59]-71617*b[33]*b[36]-72573*b[33]*b[60]+29323*b[34]*b[37]+142316*b[34]*b[61]+29323*b[35]*b[38]+142316*b[35]*b[62]+29323*b[36]*b[39]+142316*b[36]*b[63]+79296*b[37]*b[40]+2887*b[37]*b[64]+79296*b[38]*b[41]+2887*b[38]*b[65]+79296*b[39]*b[42]+2887*b[39]*b[66]+18134*b[40]*b[43]-24223*b[40]*b[67]+18134*b[41]*b[44]-24223*b[41]*b[68]+18134*b[42]*b[45]-24223*b[42]*b[69]-36436*b[43]*b[46]-66297*b[43]*b[70]-36436*b[44]*b[47]-66297*b[44]*b[71]-36436*b[45]*b[48]-66297*b[45]*b[72]-31521*b[46]*b[49]-140287*b[46]*b[73]-31521*b[47]*b[50]-140287*b[47]*b[74]-31521*b[48]*b[51]-140287*b[48]*b[75]+25570*b[49]*b[52]+23752*b[49]*b[76]+25570*b[50]*b[53]+23752*b[50]*b[77]+25570*b[51]*b[54]+23752*b[51]*b[78]+87355*b[52]*b[79]+87355*b[53]*b[80]+87355*b[54]*b[81]+170774*b[55]*b[58]-56803*b[55]*b[79]+121940*b[55]*b[82]+170774*b[56]*b[59]-56803*b[56]*b[80]+121940*b[56]*b[83]+170774*b[57]*b[60]-56803*b[57]*b[81]+121940*b[57]*b[84]-26527*b[58]*b[61]-130207*b[58]*b[85]-26527*b[59]*b[62]-130207*b[59]*b[86]-26527*b[60]*b[63]-130207*b[60]*b[87]+6132*b[61]*b[64]+277583*b[61]*b[88]+6132*b[62]*b[65]+277583*b[62]*b[89]+6132*b[63]*b[66]+277583*b[63]*b[90]+22357*b[64]*b[67]-42350*b[64]*b[91]+22357*b[65]*b[68]-42350*b[65]*b[92]+22357*b[66]*b[69]-42350*b[66]*b[93]+93718*b[67]*b[70]-47716*b[67]*b[94]+93718*b[68]*b[71]-47716*b[68]*b[95]+93718*b[69]*b[72]-47716*b[69]*b[96]+15950*b[70]*b[73]-196992*b[70]*b[97]+15950*b[71]*b[74]-196992*b[71]*b[98]+15950*b[72]*b[75]-196992*b[72]*b[99]+24740*b[73]*b[76]+12563*b[73]*b[100]+24740*b[74]*b[77]+12563*b[74]*b[101]+24740*b[75]*b[78]+12563*b[75]*b[102]-94991*b[76]*b[79]+60642*b[76]*b[103]-94991*b[77]*b[80]+60642*b[77]*b[104]-94991*b[78]*b[81]+60642*b[78]*b[105]+1123*b[79]*b[106]+1123*b[80]*b[107]+1123*b[81]*b[108]-55825*b[82]*b[85]+197268*b[82]*b[106]+56412*b[82]*b[109]-55825*b[83]*b[86]+197268*b[83]*b[107]+56412*b[83]*b[110]-55825*b[84]*b[87]+197268*b[84]*b[108]+56412*b[84]*b[111]+86140*b[85]*b[88]+154282*b[85]*b[112]+86140*b[86]*b[89]+154282*b[86]*b[113]+86140*b[87]*b[90]+154282*b[87]*b[114]+88205*b[88]*b[91]-1683*b[88]*b[115]+88205*b[89]*b[92]-1683*b[89]*b[116]+88205*b[90]*b[93]-1683*b[90]*b[117]-104232*b[91]*b[94]+91137*b[91]*b[118]-104232*b[92]*b[95]+91137*b[92]*b[119]-104232*b[93]*b[96]+91137*b[93]*b[120]-67932*b[94]*b[97]+29333*b[94]*b[121]-67932*b[95]*b[98]+29333*b[95]*b[122]-67932*b[96]*b[99]+29333*b[96]*b[123]+157198*b[97]*b[100]+2407*b[97]*b[124]+157198*b[98]*b[101]+2407*b[98]*b[125]+157198*b[99]*b[102]+2407*b[99]*b[126]-105460*b[100]*b[103]+2767*b[100]*b[127]-105460*b[101]*b[104]+2767*b[101]*b[128]-105460*b[102]*b[105]+2767*b[102]*b[129]+109601*b[103]*b[106]+81889*b[103]*b[130]+109601*b[104]*b[107]+81889*b[104]*b[131]+109601*b[105]*b[108]+81889*b[105]*b[132]-43809*b[106]*b[133]-43809*b[107]*b[134]-43809*b[108]*b[135]+33621*b[109]*b[112]+117056*b[109]*b[133]+80571*b[109]*b[136]+33621*b[110]*b[113]+117056*b[110]*b[134]+80571*b[110]*b[137]+33621*b[111]*b[114]+117056*b[111]*b[135]+80571*b[111]*b[138]-40940*b[112]*b[115]+40376*b[112]*b[139]-40940*b[113]*b[116]+40376*b[113]*b[140]-40940*b[114]*b[117]+40376*b[114]*b[141]-36171*b[115]*b[118]+51363*b[115]*b[142]-36171*b[116]*b[119]+51363*b[116]*b[143]-36171*b[117]*b[120]+51363*b[117]*b[144]-80014*b[118]*b[121]+272797*b[118]*b[145]-80014*b[119]*b[122]+272797*b[119]*b[146]-80014*b[120]*b[123]+272797*b[120]*b[147]+121144*b[121]*b[124]-183096*b[121]*b[148]+121144*b[122]*b[125]-183096*b[122]*b[149]+121144*b[123]*b[126]-183096*b[123]*b[150]-117673*b[124]*b[127]+70156*b[124]*b[151]-117673*b[125]*b[128]+70156*b[125]*b[152]-117673*b[126]*b[129]+70156*b[126]*b[153]+56696*b[127]*b[130]-151153*b[127]*b[154]+56696*b[128]*b[131]-151153*b[128]*b[155]+56696*b[129]*b[132]-151153*b[129]*b[156]+24312*b[130]*b[133]-22362*b[130]*b[157]+24312*b[131]*b[134]-22362*b[131]*b[158]+24312*b[132]*b[135]-22362*b[132]*b[159]+42805*b[133]*b[160]+42805*b[134]*b[161]+42805*b[135]*b[162]+13835*b[136]*b[139]+175755*b[136]*b[160]-87081*b[136]*b[163]+13835*b[137]*b[140]+175755*b[137]*b[161]-87081*b[137]*b[164]+13835*b[138]*b[141]+175755*b[138]*b[162]-87081*b[138]*b[165]-17215*b[139]*b[142]+61204*b[139]*b[166]-17215*b[140]*b[143]+61204*b[140]*b[167]-17215*b[141]*b[144]+61204*b[141]*b[168]+29411*b[142]*b[145]-40374*b[142]*b[169]+29411*b[143]*b[146]-40374*b[143]*b[170]+29411*b[144]*b[147]-40374*b[144]*b[171]-68599*b[145]*b[148]-19496*b[145]*b[172]-68599*b[146]*b[149]-19496*b[146]*b[173]-68599*b[147]*b[150]-19496*b[147]*b[174]-25570*b[148]*b[151]+127270*b[148]*b[175]-25570*b[149]*b[152]+127270*b[149]*b[176]-25570*b[150]*b[153]+127270*b[150]*b[177]-128950*b[151]*b[154]-126258*b[151]*b[178]-128950*b[152]*b[155]-126258*b[152]*b[179]-128950*b[153]*b[156]-126258*b[153]*b[180]+78155*b[154]*b[157]-119772*b[154]*b[181]+78155*b[155]*b[158]-119772*b[155]*b[182]+78155*b[156]*b[159]-119772*b[156]*b[183]-11106*b[157]*b[160]+70126*b[157]*b[184]-11106*b[158]*b[161]+70126*b[158]*b[185]-11106*b[159]*b[162]+70126*b[159]*b[186]+63368*b[160]*b[187]+63368*b[161]*b[188]+63368*b[162]*b[189]+53151*b[163]*b[166]+44231*b[163]*b[187]-34407*b[163]*b[190]+53151*b[164]*b[167]+44231*b[164]*b[188]-34407*b[164]*b[191]+53151*b[165]*b[168]+44231*b[165]*b[189]-34407*b[165]*b[192]+84442*b[166]*b[169]-139953*b[166]*b[193]+84442*b[167]*b[170]-139953*b[167]*b[194]+84442*b[168]*b[171]-139953*b[168]*b[195]-73503*b[169]*b[172]-27195*b[169]*b[196]-73503*b[170]*b[173]-27195*b[170]*b[197]-73503*b[171]*b[174]-27195*b[171]*b[198]-75786*b[172]*b[175]-74004*b[172]*b[199]-75786*b[173]*b[176]-74004*b[173]*b[200]-75786*b[174]*b[177]-74004*b[174]*b[201]+68383*b[175]*b[178]-83289*b[175]*b[202]+68383*b[176]*b[179]-83289*b[176]*b[203]+68383*b[177]*b[180]-83289*b[177]*b[204]+68587*b[178]*b[181]-68077*b[178]*b[205]+68587*b[179]*b[182]-68077*b[179]*b[206]+68587*b[180]*b[183]-68077*b[180]*b[207]+37991*b[181]*b[184]-40892*b[181]*b[208]+37991*b[182]*b[185]-40892*b[182]*b[209]+37991*b[183]*b[186]-40892*b[183]*b[210]-57619*b[184]*b[187]-56916*b[184]*b[211]-57619*b[185]*b[188]-56916*b[185]*b[212]-57619*b[186]*b[189]-56916*b[186]*b[213]-39383*b[187]*b[214]-39383*b[188]*b[215]-39383*b[189]*b[216]-32370*b[190]*b[193]+66379*b[190]*b[214]+70753*b[190]*b[217]-32370*b[191]*b[194]+66379*b[191]*b[215]+70753*b[191]*b[218]-32370*b[192]*b[195]+66379*b[192]*b[216]+70753*b[192]*b[219]+158042*b[193]*b[196]-12977*b[193]*b[220]+158042*b[194]*b[197]-12977*b[194]*b[221]+158042*b[195]*b[198]-12977*b[195]*b[222]-79140*b[196]*b[199]+449*b[196]*b[223]-79140*b[197]*b[200]+449*b[197]*b[224]-79140*b[198]*b[201]+449*b[198]*b[225]-33542*b[199]*b[202]-97950*b[199]*b[226]-33542*b[200]*b[203]-97950*b[200]*b[227]-33542*b[201]*b[204]-97950*b[201]*b[228]+3867*b[202]*b[205]-142006*b[202]*b[229]+3867*b[203]*b[206]-142006*b[203]*b[230]+3867*b[204]*b[207]-142006*b[204]*b[231]-43546*b[205]*b[208]-28496*b[205]*b[232]-43546*b[206]*b[209]-28496*b[206]*b[233]-43546*b[207]*b[210]-28496*b[207]*b[234]-75840*b[208]*b[211]+194773*b[208]*b[235]-75840*b[209]*b[212]+194773*b[209]*b[236]-75840*b[210]*b[213]+194773*b[210]*b[237]+36249*b[211]*b[214]+64846*b[211]*b[238]+36249*b[212]*b[215]+64846*b[212]*b[239]+36249*b[213]*b[216]+64846*b[213]*b[240]+45762*b[214]*b[241]+45762*b[215]*b[242]+45762*b[216]*b[243]-5829*b[217]*b[220]-90980*b[217]*b[241]-5829*b[218]*b[221]-90980*b[218]*b[242]-5829*b[219]*b[222]-90980*b[219]*b[243]-151277*b[220]*b[223]-151277*b[221]*b[224]-151277*b[222]*b[225]-104815*b[223]*b[226]-104815*b[224]*b[227]-104815*b[225]*b[228]+4707*b[226]*b[229]+4707*b[227]*b[230]+4707*b[228]*b[231]+60681*b[229]*b[232]+60681*b[230]*b[233]+60681*b[231]*b[234]-64166*b[232]*b[235]-64166*b[233]*b[236]-64166*b[234]*b[237]+7619*b[235]*b[238]+7619*b[236]*b[239]+7619*b[237]*b[240]-215647*b[238]*b[241]-215647*b[239]*b[242]-215647*b[240]*b[243]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.