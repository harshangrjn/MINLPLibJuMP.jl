using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435]
@variable(m, b[b_Idx])
set_binary(b[304])
set_binary(b[35])
set_binary(b[389])
set_binary(b[216])
set_binary(b[230])
set_binary(b[301])
set_binary(b[300])
set_binary(b[341])
set_binary(b[317])
set_binary(b[15])
set_binary(b[228])
set_binary(b[176])
set_binary(b[133])
set_binary(b[271])
set_binary(b[348])
set_binary(b[45])
set_binary(b[423])
set_binary(b[314])
set_binary(b[169])
set_binary(b[196])
set_binary(b[180])
set_binary(b[178])
set_binary(b[232])
set_binary(b[320])
set_binary(b[409])
set_binary(b[208])
set_binary(b[64])
set_binary(b[112])
set_binary(b[417])
set_binary(b[21])
set_binary(b[36])
set_binary(b[372])
set_binary(b[418])
set_binary(b[243])
set_binary(b[130])
set_binary(b[282])
set_binary(b[87])
set_binary(b[370])
set_binary(b[132])
set_binary(b[327])
set_binary(b[355])
set_binary(b[407])
set_binary(b[291])
set_binary(b[211])
set_binary(b[270])
set_binary(b[309])
set_binary(b[119])
set_binary(b[79])
set_binary(b[410])
set_binary(b[213])
set_binary(b[352])
set_binary(b[264])
set_binary(b[431])
set_binary(b[16])
set_binary(b[383])
set_binary(b[338])
set_binary(b[60])
set_binary(b[159])
set_binary(b[343])
set_binary(b[353])
set_binary(b[275])
set_binary(b[359])
set_binary(b[12])
set_binary(b[227])
set_binary(b[197])
set_binary(b[379])
set_binary(b[235])
set_binary(b[11])
set_binary(b[19])
set_binary(b[344])
set_binary(b[413])
set_binary(b[333])
set_binary(b[286])
set_binary(b[3])
set_binary(b[310])
set_binary(b[193])
set_binary(b[390])
set_binary(b[385])
set_binary(b[430])
set_binary(b[39])
set_binary(b[4])
set_binary(b[422])
set_binary(b[37])
set_binary(b[325])
set_binary(b[88])
set_binary(b[50])
set_binary(b[366])
set_binary(b[192])
set_binary(b[209])
set_binary(b[97])
set_binary(b[262])
set_binary(b[200])
set_binary(b[188])
set_binary(b[62])
set_binary(b[113])
set_binary(b[278])
set_binary(b[354])
set_binary(b[24])
set_binary(b[373])
set_binary(b[10])
set_binary(b[218])
set_binary(b[220])
set_binary(b[322])
set_binary(b[236])
set_binary(b[162])
set_binary(b[364])
set_binary(b[346])
set_binary(b[369])
set_binary(b[161])
set_binary(b[393])
set_binary(b[276])
set_binary(b[224])
set_binary(b[199])
set_binary(b[252])
set_binary(b[75])
set_binary(b[128])
set_binary(b[167])
set_binary(b[360])
set_binary(b[177])
set_binary(b[295])
set_binary(b[427])
set_binary(b[70])
set_binary(b[163])
set_binary(b[269])
set_binary(b[285])
set_binary(b[289])
set_binary(b[411])
set_binary(b[41])
set_binary(b[48])
set_binary(b[274])
set_binary(b[23])
set_binary(b[242])
set_binary(b[28])
set_binary(b[380])
set_binary(b[340])
set_binary(b[143])
set_binary(b[368])
set_binary(b[90])
set_binary(b[206])
set_binary(b[378])
set_binary(b[229])
set_binary(b[233])
set_binary(b[328])
set_binary(b[84])
set_binary(b[331])
set_binary(b[401])
set_binary(b[53])
set_binary(b[116])
set_binary(b[299])
set_binary(b[255])
set_binary(b[29])
set_binary(b[61])
set_binary(b[223])
set_binary(b[89])
set_binary(b[403])
set_binary(b[34])
set_binary(b[145])
set_binary(b[305])
set_binary(b[387])
set_binary(b[405])
set_binary(b[86])
set_binary(b[256])
set_binary(b[114])
set_binary(b[281])
set_binary(b[260])
set_binary(b[153])
set_binary(b[400])
set_binary(b[13])
set_binary(b[332])
set_binary(b[375])
set_binary(b[69])
set_binary(b[144])
set_binary(b[68])
set_binary(b[240])
set_binary(b[244])
set_binary(b[166])
set_binary(b[347])
set_binary(b[349])
set_binary(b[246])
set_binary(b[47])
set_binary(b[214])
set_binary(b[138])
set_binary(b[226])
set_binary(b[336])
set_binary(b[391])
set_binary(b[151])
set_binary(b[135])
set_binary(b[108])
set_binary(b[154])
set_binary(b[76])
set_binary(b[109])
set_binary(b[297])
set_binary(b[174])
set_binary(b[259])
set_binary(b[329])
set_binary(b[292])
set_binary(b[357])
set_binary(b[434])
set_binary(b[361])
set_binary(b[394])
set_binary(b[321])
set_binary(b[237])
set_binary(b[155])
set_binary(b[94])
set_binary(b[149])
set_binary(b[335])
set_binary(b[107])
set_binary(b[376])
set_binary(b[181])
set_binary(b[52])
set_binary(b[139])
set_binary(b[311])
set_binary(b[277])
set_binary(b[131])
set_binary(b[303])
set_binary(b[241])
set_binary(b[345])
set_binary(b[38])
set_binary(b[406])
set_binary(b[71])
set_binary(b[78])
set_binary(b[392])
set_binary(b[215])
set_binary(b[358])
set_binary(b[66])
set_binary(b[381])
set_binary(b[80])
set_binary(b[356])
set_binary(b[160])
set_binary(b[49])
set_binary(b[351])
set_binary(b[137])
set_binary(b[185])
set_binary(b[105])
set_binary(b[164])
set_binary(b[124])
set_binary(b[388])
set_binary(b[54])
set_binary(b[111])
set_binary(b[307])
set_binary(b[414])
set_binary(b[313])
set_binary(b[22])
set_binary(b[170])
set_binary(b[239])
set_binary(b[98])
set_binary(b[280])
set_binary(b[257])
set_binary(b[337])
set_binary(b[219])
set_binary(b[186])
set_binary(b[77])
set_binary(b[254])
set_binary(b[273])
set_binary(b[172])
set_binary(b[46])
set_binary(b[127])
set_binary(b[426])
set_binary(b[56])
set_binary(b[104])
set_binary(b[171])
set_binary(b[221])
set_binary(b[74])
set_binary(b[32])
set_binary(b[432])
set_binary(b[248])
set_binary(b[92])
set_binary(b[72])
set_binary(b[126])
set_binary(b[416])
set_binary(b[5])
set_binary(b[129])
set_binary(b[238])
set_binary(b[424])
set_binary(b[190])
set_binary(b[234])
set_binary(b[302])
set_binary(b[404])
set_binary(b[212])
set_binary(b[268])
set_binary(b[125])
set_binary(b[398])
set_binary(b[14])
set_binary(b[184])
set_binary(b[308])
set_binary(b[43])
set_binary(b[110])
set_binary(b[231])
set_binary(b[25])
set_binary(b[183])
set_binary(b[9])
set_binary(b[428])
set_binary(b[318])
set_binary(b[117])
set_binary(b[290])
set_binary(b[195])
set_binary(b[83])
set_binary(b[279])
set_binary(b[435])
set_binary(b[59])
set_binary(b[204])
set_binary(b[67])
set_binary(b[284])
set_binary(b[272])
set_binary(b[175])
set_binary(b[222])
set_binary(b[296])
set_binary(b[93])
set_binary(b[99])
set_binary(b[198])
set_binary(b[377])
set_binary(b[146])
set_binary(b[123])
set_binary(b[187])
set_binary(b[202])
set_binary(b[367])
set_binary(b[122])
set_binary(b[250])
set_binary(b[121])
set_binary(b[397])
set_binary(b[157])
set_binary(b[147])
set_binary(b[201])
set_binary(b[258])
set_binary(b[156])
set_binary(b[26])
set_binary(b[73])
set_binary(b[217])
set_binary(b[266])
set_binary(b[420])
set_binary(b[408])
set_binary(b[118])
set_binary(b[44])
set_binary(b[415])
set_binary(b[330])
set_binary(b[158])
set_binary(b[319])
set_binary(b[306])
set_binary(b[120])
set_binary(b[85])
set_binary(b[251])
set_binary(b[267])
set_binary(b[82])
set_binary(b[374])
set_binary(b[42])
set_binary(b[168])
set_binary(b[106])
set_binary(b[207])
set_binary(b[81])
set_binary(b[225])
set_binary(b[315])
set_binary(b[141])
set_binary(b[316])
set_binary(b[386])
set_binary(b[395])
set_binary(b[136])
set_binary(b[298])
set_binary(b[150])
set_binary(b[203])
set_binary(b[95])
set_binary(b[115])
set_binary(b[425])
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
set_binary(b[433])
set_binary(b[334])
set_binary(b[293])
set_binary(b[324])
set_binary(b[102])
set_binary(b[399])
set_binary(b[245])
set_binary(b[384])
set_binary(b[362])
set_binary(b[247])
set_binary(b[421])
set_binary(b[51])
set_binary(b[2])
set_binary(b[100])
set_binary(b[429])
set_binary(b[402])
set_binary(b[142])
set_binary(b[288])
set_binary(b[312])
set_binary(b[20])
set_binary(b[371])
set_binary(b[7])
set_binary(b[65])
set_binary(b[205])
set_binary(b[265])
set_binary(b[165])
set_binary(b[210])
set_binary(b[101])
set_binary(b[253])
set_binary(b[283])
set_binary(b[396])
set_binary(b[17])
set_binary(b[339])
set_binary(b[6])
set_binary(b[382])
set_binary(b[182])
set_binary(b[1])
set_binary(b[179])
set_binary(b[191])
set_binary(b[194])
set_binary(b[134])
set_binary(b[261])
set_binary(b[27])
set_binary(b[18])
set_binary(b[365])
set_binary(b[419])
set_binary(b[326])
set_binary(b[140])
set_binary(b[31])
set_binary(b[294])
set_binary(b[342])
set_binary(b[91])
set_binary(b[152])
set_binary(b[363])
set_binary(b[103])
set_binary(b[323])
set_binary(b[55])
set_binary(b[287])
set_binary(b[148])
set_binary(b[63])
set_binary(b[263])
set_binary(b[412])
set_binary(b[350])


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*b[1]*b[198]-2*b[1]-2*b[198]-2*b[1]*b[235]+2*b[235]+2*b[1]*b[280]+2*b[1]*b[294]+2*b[2]*b[283]-2*b[2]-2*b[2]*b[316]+2*b[2]*b[317]+2*b[2]*b[318]+2*b[3]*b[51]-2*b[3]-2*b[51]-2*b[3]*b[149]+2*b[149]+2*b[3]*b[178]+2*b[178]+2*b[3]*b[284]+2*b[4]*b[154]-2*b[4]-2*b[154]+2*b[4]*b[253]-4*b[253]+2*b[4]*b[255]+2*b[255]-2*b[4]*b[348]+2*b[5]*b[56]-2*b[5]-2*b[56]-2*b[5]*b[340]+2*b[5]*b[341]+2*b[5]*b[342]+2*b[6]*b[205]+2*b[6]-2*b[205]-2*b[6]*b[327]-2*b[6]*b[354]-2*b[6]*b[355]+2*b[7]*b[70]-2*b[7]-2*b[70]-2*b[7]*b[177]+2*b[177]+2*b[7]*b[289]+2*b[7]*b[290]+2*b[8]*b[56]-2*b[8]+2*b[8]*b[73]-2*b[73]-2*b[8]*b[351]+2*b[8]*b[352]+2*b[9]*b[86]-2*b[9]-2*b[86]-2*b[9]*b[213]+2*b[213]+2*b[9]*b[283]+2*b[9]*b[299]+2*b[10]*b[73]-2*b[10]+2*b[10]*b[90]-2*b[90]-2*b[10]*b[359]+2*b[10]*b[360]+2*b[11]*b[22]-2*b[11]-2*b[22]+2*b[11]*b[201]-4*b[201]+2*b[12]*b[18]-2*b[12]-2*b[18]-2*b[12]*b[149]+2*b[12]*b[250]-2*b[250]+2*b[12]*b[286]+2*b[13]*b[90]-2*b[13]+2*b[13]*b[113]-4*b[113]+2*b[13]*b[134]-2*b[134]-2*b[13]*b[369]-2*b[14]*b[177]+2*b[14]-2*b[14]*b[247]-2*b[247]-2*b[14]*b[314]+2*b[14]*b[316]+2*b[15]*b[113]-2*b[15]+2*b[15]*b[135]-4*b[135]+2*b[15]*b[159]-4*b[159]-2*b[15]*b[379]+2*b[16]*b[33]-2*b[16]-2*b[33]+2*b[16]*b[362]+2*b[17]*b[244]-4*b[17]-4*b[244]+2*b[17]*b[287]+2*b[17]*b[323]+2*b[17]*b[387]+2*b[18]*b[84]-2*b[84]+2*b[18]*b[126]-4*b[126]-2*b[18]*b[323]-2*b[19]*b[210]+2*b[19]-2*b[210]-2*b[19]*b[213]-2*b[19]*b[304]+2*b[19]*b[307]+2*b[20]*b[135]-4*b[20]+2*b[20]*b[161]-4*b[161]+2*b[20]*b[188]-4*b[188]+2*b[20]*b[379]-2*b[21]*b[73]-2*b[21]+2*b[21]*b[75]-4*b[75]+2*b[21]*b[161]+2*b[21]*b[370]+2*b[22]*b[23]-2*b[23]-2*b[22]*b[61]-2*b[61]+2*b[22]*b[120]-4*b[120]+2*b[23]*b[45]-2*b[45]+2*b[24]*b[161]-4*b[24]+2*b[24]*b[190]-4*b[190]+2*b[24]*b[224]-4*b[224]+2*b[24]*b[369]+2*b[25]*b[42]-2*b[25]-2*b[42]-2*b[25]*b[56]+2*b[25]*b[92]-4*b[92]+2*b[25]*b[190]+2*b[26]*b[27]-2*b[26]-2*b[27]-2*b[26]*b[44]-2*b[44]+2*b[26]*b[272]-2*b[272]+2*b[26]*b[380]+2*b[27]*b[62]-4*b[62]+2*b[28]*b[29]-2*b[28]-2*b[29]+2*b[28]*b[52]-2*b[52]+2*b[28]*b[108]-4*b[108]-2*b[28]*b[319]+2*b[29]*b[53]-2*b[53]-2*b[29]*b[155]-2*b[155]+2*b[29]*b[338]+2*b[30]*b[190]-4*b[30]+2*b[30]*b[226]-4*b[226]+2*b[30]*b[260]-4*b[260]+2*b[30]*b[359]+2*b[31]*b[58]-2*b[31]-4*b[58]+2*b[31]*b[115]-4*b[115]+2*b[31]*b[226]-2*b[31]*b[342]-2*b[32]*b[33]-2*b[32]+2*b[32]*b[60]-4*b[60]+2*b[32]*b[79]-4*b[79]+2*b[32]*b[390]+2*b[33]*b[34]-2*b[34]+2*b[33]*b[238]-2*b[238]+2*b[34]*b[79]+2*b[35]*b[36]-2*b[35]-2*b[36]-2*b[35]*b[365]+2*b[35]*b[374]+2*b[35]*b[402]+2*b[36]*b[209]-4*b[209]-2*b[36]*b[296]+2*b[36]*b[403]+2*b[37]*b[177]-2*b[37]+2*b[37]*b[296]+2*b[37]*b[317]-2*b[37]*b[366]+2*b[38]*b[39]-4*b[38]-4*b[39]+2*b[38]*b[309]+2*b[38]*b[325]+2*b[38]*b[395]+2*b[39]*b[275]+2*b[39]*b[338]+2*b[39]*b[340]+2*b[40]*b[226]-2*b[40]+2*b[40]*b[262]-2*b[262]-2*b[40]*b[275]+2*b[40]*b[351]+2*b[41]*b[75]-4*b[41]+2*b[41]*b[138]-4*b[138]+2*b[41]*b[262]+2*b[41]*b[342]+2*b[42]*b[228]-4*b[228]-2*b[42]*b[267]+2*b[267]+2*b[42]*b[353]+2*b[43]*b[44]-2*b[43]+2*b[43]*b[393]-2*b[43]*b[396]+2*b[43]*b[397]+2*b[44]*b[77]-4*b[77]+2*b[44]*b[100]-2*b[100]+2*b[45]*b[46]-2*b[46]+2*b[45]*b[199]-4*b[199]-2*b[45]*b[393]+2*b[46]*b[100]+2*b[47]*b[48]+2*b[47]-2*b[48]-2*b[47]*b[205]-2*b[47]*b[383]-2*b[47]*b[385]+2*b[48]*b[49]-2*b[49]-2*b[48]*b[287]+2*b[48]*b[407]+2*b[49]*b[246]-4*b[246]-2*b[49]*b[286]+2*b[49]*b[409]+2*b[50]*b[51]-2*b[50]+2*b[50]*b[149]+2*b[50]*b[304]-2*b[50]*b[378]-2*b[51]*b[176]+2*b[176]+2*b[51]*b[410]+2*b[52]*b[54]-4*b[54]+2*b[52]*b[87]-2*b[87]-2*b[52]*b[157]+4*b[157]+2*b[53]*b[300]+2*b[53]*b[320]-2*b[53]*b[399]+2*b[54]*b[55]+2*b[55]+2*b[54]*b[389]+2*b[54]*b[399]-2*b[55]*b[221]+2*b[221]-2*b[55]*b[223]+2*b[223]-2*b[55]*b[275]+2*b[56]*b[57]-2*b[57]+2*b[57]*b[92]+2*b[57]*b[164]-4*b[164]-2*b[57]*b[263]-2*b[263]+2*b[58]*b[93]-4*b[93]+2*b[58]*b[343]+2*b[58]*b[371]+2*b[59]*b[93]-2*b[59]+2*b[59]*b[276]+2*b[59]*b[280]-2*b[59]*b[392]+2*b[60]*b[61]+2*b[60]*b[96]-2*b[96]+2*b[60]*b[396]+2*b[61]*b[97]-4*b[97]+2*b[61]*b[121]-2*b[121]+2*b[62]*b[63]-2*b[63]+2*b[62]*b[239]-4*b[239]+2*b[62]*b[393]+2*b[63]*b[121]+2*b[64]*b[66]-2*b[64]-4*b[66]+2*b[64]*b[334]+2*b[65]*b[145]-2*b[65]-2*b[145]+2*b[65]*b[173]-2*b[173]+2*b[65]*b[344]-2*b[65]*b[408]+2*b[66]*b[205]+2*b[66]*b[401]+2*b[66]*b[408]+2*b[67]*b[68]-4*b[67]-2*b[68]+2*b[67]*b[174]-2*b[174]+2*b[67]*b[365]+2*b[67]*b[387]+2*b[68]*b[127]+2*b[127]-2*b[68]*b[281]+2*b[68]*b[296]+2*b[69]*b[70]-2*b[69]-2*b[69]*b[105]+2*b[105]+2*b[69]*b[314]+2*b[69]*b[316]+2*b[70]*b[128]-2*b[128]-2*b[70]*b[211]+2*b[211]+2*b[71]*b[107]-4*b[71]-2*b[107]+2*b[71]*b[128]+2*b[71]*b[152]+2*b[152]+2*b[71]*b[297]-2*b[72]*b[311]+2*b[72]+2*b[72]*b[341]-2*b[72]*b[359]-2*b[72]*b[414]+2*b[73]*b[74]-2*b[74]+2*b[74]*b[115]+2*b[74]*b[192]-4*b[192]-2*b[74]*b[227]-2*b[227]+2*b[75]*b[267]+2*b[75]*b[332]+2*b[76]*b[195]+2*b[76]+2*b[195]-2*b[76]*b[267]-2*b[76]*b[276]-2*b[76]*b[397]+2*b[77]*b[78]-2*b[78]+2*b[77]*b[118]-2*b[118]+2*b[77]*b[391]+2*b[78]*b[119]-4*b[119]+2*b[78]*b[144]-2*b[144]-2*b[78]*b[362]+2*b[79]*b[80]-2*b[80]+2*b[79]*b[273]-4*b[273]+2*b[80]*b[144]+2*b[81]*b[206]+2*b[81]-4*b[206]-2*b[81]*b[335]-2*b[81]*b[402]-2*b[81]*b[416]+2*b[82]*b[83]-4*b[82]-2*b[83]+2*b[82]*b[206]+2*b[82]*b[376]+2*b[82]*b[394]+2*b[83]*b[105]-2*b[83]*b[279]+2*b[83]*b[304]+2*b[84]*b[86]-2*b[84]*b[127]+2*b[84]*b[307]-2*b[85]*b[150]+2*b[85]-2*b[150]-2*b[85]*b[249]-2*b[249]-2*b[85]*b[297]+2*b[85]*b[345]+2*b[86]*b[150]-2*b[86]*b[248]+2*b[248]+2*b[87]*b[182]-2*b[182]-2*b[87]*b[219]+2*b[219]+2*b[87]*b[349]-2*b[88]*b[89]+2*b[88]+2*b[89]-2*b[88]*b[291]+2*b[88]*b[302]-2*b[88]*b[389]+2*b[89]*b[352]-2*b[89]*b[369]-2*b[89]*b[418]+2*b[90]*b[91]-2*b[91]-2*b[90]*b[371]+2*b[91]*b[138]-2*b[91]*b[191]-2*b[191]+2*b[91]*b[230]-4*b[230]+2*b[92]*b[94]-2*b[94]+2*b[92]*b[232]+2*b[232]+2*b[93]*b[95]-4*b[95]+2*b[93]*b[231]-4*b[231]+2*b[94]*b[95]+2*b[94]*b[230]-2*b[94]*b[326]+2*b[95]*b[96]+2*b[95]*b[278]+2*b[96]*b[143]-4*b[143]-2*b[96]*b[293]+2*b[97]*b[99]-4*b[99]+2*b[97]*b[142]-2*b[142]+2*b[97]*b[392]-2*b[98]*b[121]+2*b[98]+2*b[98]*b[170]-4*b[170]-2*b[98]*b[277]-2*b[98]*b[285]+2*b[99]*b[143]+2*b[99]*b[170]+2*b[99]*b[362]+2*b[100]*b[101]-2*b[101]-2*b[100]*b[294]+2*b[101]*b[170]+2*b[102]*b[243]+2*b[102]-4*b[243]-2*b[102]*b[328]-2*b[102]*b[398]-2*b[102]*b[419]+2*b[103]*b[104]-4*b[103]-4*b[104]+2*b[103]*b[243]+2*b[103]*b[384]+2*b[103]*b[398]+2*b[104]*b[279]+2*b[104]*b[314]+2*b[104]*b[378]-2*b[105]*b[248]-2*b[105]*b[384]-2*b[106]*b[215]-2*b[106]+2*b[215]+2*b[106]*b[348]+2*b[106]*b[410]+2*b[106]*b[420]+2*b[107]*b[108]-2*b[107]*b[151]-2*b[151]+2*b[107]*b[182]+2*b[108]*b[110]-2*b[110]+2*b[108]*b[348]-2*b[109]*b[185]-2*b[109]+2*b[185]+2*b[109]*b[309]+2*b[109]*b[337]+2*b[109]*b[368]+2*b[110]*b[183]-2*b[183]+2*b[110]*b[185]-2*b[110]*b[389]-2*b[111]*b[112]+4*b[111]+2*b[112]-2*b[111]*b[257]+2*b[257]-2*b[111]*b[300]-2*b[111]*b[302]+2*b[112]*b[360]-2*b[112]*b[379]-2*b[112]*b[422]+2*b[113]*b[114]-2*b[114]+2*b[113]*b[228]-2*b[114]*b[162]-2*b[162]+2*b[114]*b[164]+2*b[114]*b[266]-4*b[266]+2*b[115]*b[116]-4*b[116]+2*b[115]*b[361]+2*b[116]*b[266]+2*b[116]*b[326]+2*b[116]*b[415]-2*b[117]*b[118]+2*b[117]+2*b[117]*b[233]-4*b[233]-2*b[117]*b[278]-2*b[117]*b[361]+2*b[118]*b[169]-4*b[169]+2*b[118]*b[415]+2*b[119]*b[120]+2*b[119]*b[168]-2*b[168]+2*b[119]*b[397]+2*b[120]*b[169]+2*b[120]*b[200]-4*b[200]+2*b[121]*b[122]-2*b[122]+2*b[122]*b[200]+2*b[123]*b[124]+2*b[123]-2*b[124]-2*b[123]*b[322]-2*b[123]*b[394]-2*b[123]*b[423]+2*b[124]*b[125]-4*b[125]-2*b[124]*b[281]+2*b[124]*b[327]+2*b[125]*b[126]+2*b[125]*b[323]+2*b[125]*b[402]+2*b[126]*b[281]+2*b[126]*b[366]-2*b[127]*b[211]-2*b[127]*b[323]+2*b[128]*b[129]-2*b[129]-2*b[128]*b[308]-2*b[129]*b[252]+2*b[252]+2*b[129]*b[336]+2*b[129]*b[424]-2*b[130]*b[290]+2*b[130]-2*b[130]*b[330]+2*b[130]*b[411]-2*b[130]*b[417]-2*b[131]*b[156]-2*b[131]+2*b[156]+2*b[131]*b[300]+2*b[131]*b[330]+2*b[131]*b[358]+2*b[132]*b[156]-2*b[132]+2*b[132]*b[217]-2*b[217]-2*b[132]*b[395]+2*b[132]*b[417]-2*b[133]*b[219]+4*b[133]-2*b[133]*b[309]-2*b[133]*b[310]-2*b[133]*b[386]+2*b[134]*b[160]-2*b[160]-2*b[134]*b[302]+2*b[134]*b[386]+2*b[135]*b[137]-4*b[137]+2*b[135]*b[371]+2*b[136]*b[137]-4*b[136]+2*b[136]*b[160]+2*b[136]*b[228]+2*b[136]*b[331]+2*b[137]*b[139]-2*b[139]+2*b[137]*b[192]+2*b[138]*b[140]-4*b[140]+2*b[138]*b[353]+2*b[139]*b[140]+2*b[139]*b[229]-4*b[229]-2*b[139]*b[276]+2*b[140]*b[194]+2*b[194]+2*b[140]*b[412]-2*b[141]*b[142]+2*b[141]+2*b[141]*b[193]-2*b[193]-2*b[141]*b[235]-2*b[141]*b[353]+2*b[142]*b[197]-4*b[197]+2*b[142]*b[412]+2*b[143]*b[196]-2*b[196]+2*b[143]*b[272]-2*b[144]*b[198]+2*b[144]*b[427]+2*b[145]*b[146]-4*b[146]+2*b[146]*b[303]+2*b[146]*b[382]+2*b[146]*b[388]+2*b[147]*b[245]-2*b[147]-2*b[245]-2*b[147]*b[279]+2*b[147]*b[333]+2*b[147]*b[388]+2*b[148]*b[176]+2*b[148]-2*b[148]*b[287]-2*b[148]*b[356]-2*b[148]*b[429]-2*b[149]*b[430]+2*b[150]*b[151]+2*b[150]*b[411]+2*b[151]*b[329]+2*b[151]*b[430]-2*b[152]*b[153]-2*b[153]-2*b[152]*b[299]-2*b[152]*b[337]+2*b[153]*b[155]+2*b[153]*b[329]+2*b[153]*b[413]+2*b[154]*b[291]+2*b[154]*b[349]-2*b[154]*b[350]+2*b[155]*b[254]-2*b[254]+2*b[155]*b[350]-2*b[156]*b[186]+2*b[186]-2*b[156]*b[426]-2*b[157]*b[158]-2*b[158]-2*b[157]*b[185]-2*b[157]*b[320]+2*b[158]*b[159]+2*b[158]*b[369]+2*b[158]*b[426]+2*b[159]*b[189]-2*b[189]+2*b[159]*b[302]+2*b[160]*b[162]-2*b[160]*b[360]+2*b[161]*b[163]-4*b[163]+2*b[162]*b[163]+2*b[162]*b[189]+2*b[163]*b[165]-4*b[165]+2*b[163]*b[230]+2*b[164]*b[166]-4*b[166]+2*b[164]*b[343]+2*b[165]*b[166]+2*b[165]*b[265]-4*b[265]+2*b[165]*b[276]+2*b[166]*b[167]+2*b[167]+2*b[166]*b[406]-2*b[167]*b[168]-2*b[167]*b[195]-2*b[167]*b[343]+2*b[168]*b[237]-2*b[237]+2*b[168]*b[406]+2*b[169]*b[236]-2*b[236]+2*b[169]*b[238]+2*b[170]*b[432]-2*b[171]*b[313]+2*b[171]-2*b[171]*b[423]-2*b[172]*b[303]+4*b[172]-2*b[172]*b[381]-2*b[172]*b[382]-2*b[172]*b[383]+2*b[173]*b[175]-4*b[175]+2*b[173]*b[334]-2*b[173]*b[387]+2*b[174]*b[208]-2*b[208]-2*b[174]*b[303]+2*b[174]*b[408]+2*b[175]*b[208]+2*b[175]*b[279]+2*b[175]*b[383]-2*b[176]*b[409]-2*b[176]*b[431]-2*b[177]*b[367]-2*b[178]*b[181]-2*b[181]-2*b[178]*b[297]-2*b[178]*b[298]+2*b[179]*b[181]-4*b[179]+2*b[179]*b[252]+2*b[179]*b[367]+2*b[179]*b[420]-2*b[180]*b[183]+2*b[180]+2*b[180]*b[251]-4*b[251]-2*b[180]*b[349]-2*b[180]*b[411]+2*b[181]*b[183]+2*b[181]*b[324]-2*b[182]*b[184]-2*b[184]+2*b[182]*b[298]+2*b[183]*b[184]+2*b[184]*b[339]+2*b[184]*b[395]-2*b[185]*b[422]-2*b[186]*b[187]-2*b[187]+2*b[186]*b[258]-2*b[258]-2*b[186]*b[325]+2*b[187]*b[188]+2*b[187]*b[359]+2*b[187]*b[422]+2*b[188]*b[225]-2*b[225]+2*b[188]*b[310]+2*b[189]*b[191]-2*b[189]*b[352]+2*b[190]*b[264]-2*b[264]+2*b[191]*b[225]+2*b[191]*b[264]+2*b[192]*b[193]+2*b[192]*b[332]+2*b[193]*b[400]-2*b[193]*b[434]-2*b[194]*b[196]-2*b[194]*b[280]-2*b[194]*b[332]-2*b[195]*b[271]-2*b[271]-2*b[195]*b[277]+2*b[196]*b[271]+2*b[196]*b[400]+2*b[197]*b[199]+2*b[197]*b[270]-4*b[270]+2*b[197]*b[272]+2*b[198]*b[201]+2*b[198]*b[277]+2*b[199]*b[201]+2*b[199]*b[271]+2*b[200]*b[202]-2*b[202]+2*b[200]*b[294]+2*b[201]*b[202]-2*b[203]*b[322]+2*b[203]-2*b[203]*b[419]-2*b[204]*b[312]+4*b[204]-2*b[204]*b[372]-2*b[204]*b[373]-2*b[204]*b[375]+2*b[205]*b[207]-4*b[207]+2*b[206]*b[209]+2*b[206]*b[312]+2*b[207]*b[209]+2*b[207]*b[281]+2*b[207]*b[375]+2*b[208]*b[305]-2*b[208]*b[433]+2*b[209]*b[433]+2*b[210]*b[212]-2*b[212]+2*b[210]*b[376]+2*b[210]*b[433]+2*b[211]*b[366]-2*b[211]*b[425]-2*b[212]*b[308]+2*b[212]*b[403]+2*b[212]*b[425]+2*b[213]*b[356]-2*b[213]*b[357]+2*b[214]*b[215]-4*b[214]+2*b[214]*b[216]-2*b[216]+2*b[214]*b[357]+2*b[214]*b[424]-2*b[215]*b[217]-2*b[215]*b[358]+2*b[216]*b[217]-2*b[216]*b[318]+2*b[216]*b[319]+2*b[217]*b[218]-2*b[218]+2*b[218]*b[220]-2*b[220]-2*b[218]*b[368]+2*b[218]*b[389]+2*b[219]*b[413]-2*b[219]*b[418]+2*b[220]*b[221]-2*b[220]*b[301]+2*b[220]*b[418]-2*b[221]*b[222]-2*b[222]-2*b[221]*b[350]+2*b[222]*b[224]+2*b[222]*b[351]+2*b[222]*b[418]-2*b[223]*b[261]-2*b[261]-2*b[223]*b[331]+2*b[223]*b[399]+2*b[224]*b[261]+2*b[224]*b[320]+2*b[225]*b[227]-2*b[225]*b[341]+2*b[226]*b[229]+2*b[227]*b[229]+2*b[227]*b[261]+2*b[228]*b[231]+2*b[229]*b[231]+2*b[230]*b[233]+2*b[231]*b[233]-2*b[232]*b[234]-2*b[234]-2*b[232]*b[293]-2*b[232]*b[370]+2*b[233]*b[234]+2*b[234]*b[236]+2*b[234]*b[396]+2*b[235]*b[293]-2*b[235]*b[295]+2*b[236]*b[295]-2*b[236]*b[326]+2*b[237]*b[238]+2*b[237]*b[239]-2*b[237]*b[280]-2*b[238]*b[274]+2*b[274]+2*b[239]*b[274]+2*b[239]*b[295]-2*b[240]*b[328]+2*b[240]-2*b[240]*b[416]-2*b[241]*b[242]+4*b[241]-2*b[242]-2*b[241]*b[321]-2*b[241]*b[363]-2*b[241]*b[364]+2*b[242]*b[244]+2*b[242]*b[374]+2*b[242]*b[416]+2*b[243]*b[246]+2*b[243]*b[321]+2*b[244]*b[246]+2*b[244]*b[303]+2*b[245]*b[315]+2*b[245]*b[407]-2*b[245]*b[429]+2*b[246]*b[429]+2*b[247]*b[249]+2*b[247]*b[384]+2*b[247]*b[429]+2*b[248]*b[378]-2*b[248]*b[421]+2*b[249]*b[409]+2*b[249]*b[421]+2*b[250]*b[297]+2*b[250]*b[345]-2*b[250]*b[347]+2*b[251]*b[253]+2*b[251]*b[347]+2*b[251]*b[430]-2*b[252]*b[254]-2*b[252]*b[368]+2*b[253]*b[254]+2*b[253]*b[318]+2*b[254]*b[256]-2*b[256]-2*b[255]*b[258]-2*b[255]*b[309]-2*b[255]*b[324]+2*b[256]*b[257]+2*b[256]*b[258]-2*b[256]*b[358]-2*b[257]*b[413]-2*b[257]*b[414]+2*b[258]*b[414]+2*b[259]*b[260]-2*b[259]-2*b[259]*b[338]+2*b[259]*b[340]+2*b[259]*b[414]+2*b[260]*b[325]+2*b[260]*b[405]+2*b[261]*b[263]+2*b[262]*b[265]-2*b[262]*b[405]+2*b[263]*b[265]+2*b[263]*b[405]+2*b[264]*b[266]-2*b[264]*b[434]+2*b[265]*b[434]+2*b[266]*b[268]-4*b[268]-2*b[267]*b[269]-2*b[269]+2*b[268]*b[269]+2*b[268]*b[293]+2*b[268]*b[434]+2*b[269]*b[270]+2*b[269]*b[391]+2*b[270]*b[285]+2*b[270]*b[326]+2*b[271]*b[273]-2*b[272]*b[428]+2*b[273]*b[285]+2*b[273]*b[428]-2*b[274]*b[432]-2*b[274]*b[435]+2*b[275]*b[331]+2*b[277]*b[278]-2*b[278]*b[285]-2*b[282]*b[283]+2*b[282]*b[284]-2*b[282]*b[349]+2*b[282]*b[358]-2*b[283]*b[336]-2*b[284]*b[347]-2*b[284]*b[348]+2*b[286]*b[287]-2*b[286]*b[356]-2*b[288]*b[289]+2*b[288]*b[290]-2*b[288]*b[337]+2*b[288]*b[368]+2*b[289]*b[306]-2*b[289]*b[329]-2*b[290]*b[357]-2*b[291]*b[292]+2*b[291]*b[311]+2*b[292]*b[319]+2*b[292]*b[337]-2*b[292]*b[339]-2*b[294]*b[295]-2*b[296]*b[345]+2*b[298]*b[299]-2*b[298]*b[330]-2*b[299]*b[367]-2*b[300]*b[301]+2*b[301]*b[324]+2*b[301]*b[330]-2*b[304]*b[305]+2*b[305]*b[377]-2*b[305]*b[403]-2*b[306]*b[307]+2*b[306]*b[308]-2*b[306]*b[318]-2*b[307]*b[420]+2*b[308]*b[356]+2*b[310]*b[311]-2*b[310]*b[360]-2*b[311]*b[395]+2*b[312]*b[313]-2*b[312]*b[407]+2*b[313]*b[381]-2*b[313]*b[388]-2*b[314]*b[315]+2*b[315]*b[385]-2*b[315]*b[409]-2*b[316]*b[424]-2*b[317]*b[404]-2*b[317]*b[410]-2*b[319]*b[336]-2*b[320]*b[352]+2*b[321]*b[322]-2*b[321]*b[402]+2*b[322]*b[372]-2*b[324]*b[329]-2*b[325]*b[341]+2*b[327]*b[328]-2*b[327]*b[398]+2*b[328]*b[363]-2*b[331]*b[342]-2*b[332]*b[415]-2*b[333]*b[334]+2*b[333]*b[335]-2*b[333]*b[394]-2*b[334]*b[344]+2*b[335]*b[354]-2*b[335]*b[401]+2*b[336]*b[417]-2*b[338]*b[339]+2*b[339]*b[422]-2*b[340]*b[405]-2*b[343]*b[412]-2*b[345]*b[346]+2*b[346]*b[365]+2*b[346]*b[404]-2*b[346]*b[433]+2*b[347]*b[421]+2*b[350]*b[426]-2*b[351]*b[399]-2*b[353]*b[406]+2*b[355]*b[416]+2*b[357]*b[425]+2*b[361]*b[370]-2*b[361]*b[400]-2*b[362]*b[380]+2*b[364]*b[419]-2*b[365]*b[366]+2*b[367]*b[431]-2*b[370]*b[371]+2*b[373]*b[423]-2*b[374]*b[375]-2*b[374]*b[377]+2*b[375]*b[419]-2*b[376]*b[377]-2*b[376]*b[378]+2*b[377]*b[398]+2*b[379]*b[386]+2*b[383]*b[423]-2*b[384]*b[385]+2*b[385]*b[394]-2*b[386]*b[426]-2*b[387]*b[388]-2*b[390]*b[391]+2*b[390]*b[392]-2*b[390]*b[393]-2*b[391]*b[406]-2*b[392]*b[412]-2*b[396]*b[400]-2*b[397]*b[415]-2*b[403]*b[404]+2*b[404]*b[431]-2*b[407]*b[408]-2*b[410]*b[411]-2*b[413]*b[417]-2*b[420]*b[421]-2*b[424]*b[425]-2*b[427]*b[428]+2*b[428]*b[435]-2*b[430]*b[431]+objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script.