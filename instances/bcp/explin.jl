using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 10.0)
set_upper_bound(x[4], 10.0)
set_upper_bound(x[5], 10.0)
set_upper_bound(x[6], 10.0)
set_upper_bound(x[7], 10.0)
set_upper_bound(x[8], 10.0)
set_upper_bound(x[9], 10.0)
set_upper_bound(x[10], 10.0)
set_upper_bound(x[11], 10.0)
set_upper_bound(x[12], 10.0)
set_upper_bound(x[13], 10.0)
set_upper_bound(x[14], 10.0)
set_upper_bound(x[15], 10.0)
set_upper_bound(x[16], 10.0)
set_upper_bound(x[17], 10.0)
set_upper_bound(x[18], 10.0)
set_upper_bound(x[19], 10.0)
set_upper_bound(x[20], 10.0)
set_upper_bound(x[21], 10.0)
set_upper_bound(x[22], 10.0)
set_upper_bound(x[23], 10.0)
set_upper_bound(x[24], 10.0)
set_upper_bound(x[25], 10.0)
set_upper_bound(x[26], 10.0)
set_upper_bound(x[27], 10.0)
set_upper_bound(x[28], 10.0)
set_upper_bound(x[29], 10.0)
set_upper_bound(x[30], 10.0)
set_upper_bound(x[31], 10.0)
set_upper_bound(x[32], 10.0)
set_upper_bound(x[33], 10.0)
set_upper_bound(x[34], 10.0)
set_upper_bound(x[35], 10.0)
set_upper_bound(x[36], 10.0)
set_upper_bound(x[37], 10.0)
set_upper_bound(x[38], 10.0)
set_upper_bound(x[39], 10.0)
set_upper_bound(x[40], 10.0)
set_upper_bound(x[41], 10.0)
set_upper_bound(x[42], 10.0)
set_upper_bound(x[43], 10.0)
set_upper_bound(x[44], 10.0)
set_upper_bound(x[45], 10.0)
set_upper_bound(x[46], 10.0)
set_upper_bound(x[47], 10.0)
set_upper_bound(x[48], 10.0)
set_upper_bound(x[49], 10.0)
set_upper_bound(x[50], 10.0)
set_upper_bound(x[51], 10.0)
set_upper_bound(x[52], 10.0)
set_upper_bound(x[53], 10.0)
set_upper_bound(x[54], 10.0)
set_upper_bound(x[55], 10.0)
set_upper_bound(x[56], 10.0)
set_upper_bound(x[57], 10.0)
set_upper_bound(x[58], 10.0)
set_upper_bound(x[59], 10.0)
set_upper_bound(x[60], 10.0)
set_upper_bound(x[61], 10.0)
set_upper_bound(x[62], 10.0)
set_upper_bound(x[63], 10.0)
set_upper_bound(x[64], 10.0)
set_upper_bound(x[65], 10.0)
set_upper_bound(x[66], 10.0)
set_upper_bound(x[67], 10.0)
set_upper_bound(x[68], 10.0)
set_upper_bound(x[69], 10.0)
set_upper_bound(x[70], 10.0)
set_upper_bound(x[71], 10.0)
set_upper_bound(x[72], 10.0)
set_upper_bound(x[73], 10.0)
set_upper_bound(x[74], 10.0)
set_upper_bound(x[75], 10.0)
set_upper_bound(x[76], 10.0)
set_upper_bound(x[77], 10.0)
set_upper_bound(x[78], 10.0)
set_upper_bound(x[79], 10.0)
set_upper_bound(x[80], 10.0)
set_upper_bound(x[81], 10.0)
set_upper_bound(x[82], 10.0)
set_upper_bound(x[83], 10.0)
set_upper_bound(x[84], 10.0)
set_upper_bound(x[85], 10.0)
set_upper_bound(x[86], 10.0)
set_upper_bound(x[87], 10.0)
set_upper_bound(x[88], 10.0)
set_upper_bound(x[89], 10.0)
set_upper_bound(x[90], 10.0)
set_upper_bound(x[91], 10.0)
set_upper_bound(x[92], 10.0)
set_upper_bound(x[93], 10.0)
set_upper_bound(x[94], 10.0)
set_upper_bound(x[95], 10.0)
set_upper_bound(x[96], 10.0)
set_upper_bound(x[97], 10.0)
set_upper_bound(x[98], 10.0)
set_upper_bound(x[99], 10.0)
set_upper_bound(x[100], 10.0)
set_upper_bound(x[101], 10.0)
set_upper_bound(x[102], 10.0)
set_upper_bound(x[103], 10.0)
set_upper_bound(x[104], 10.0)
set_upper_bound(x[105], 10.0)
set_upper_bound(x[106], 10.0)
set_upper_bound(x[107], 10.0)
set_upper_bound(x[108], 10.0)
set_upper_bound(x[109], 10.0)
set_upper_bound(x[110], 10.0)
set_upper_bound(x[111], 10.0)
set_upper_bound(x[112], 10.0)
set_upper_bound(x[113], 10.0)
set_upper_bound(x[114], 10.0)
set_upper_bound(x[115], 10.0)
set_upper_bound(x[116], 10.0)
set_upper_bound(x[117], 10.0)
set_upper_bound(x[118], 10.0)
set_upper_bound(x[119], 10.0)
set_upper_bound(x[120], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(exp(0.1*x[1]*x[2])+exp(0.1*x[2]*x[3])+exp(0.1*x[3]*x[4])+exp(0.1*x[4]*x[5])+exp(0.1*x[5]*x[6])+exp(0.1*x[6]*x[7])+exp(0.1*x[7]*x[8])+exp(0.1*x[8]*x[9])+exp(0.1*x[9]*x[10])+exp(0.1*x[10]*x[11])-10*x[1]-20*x[2]-30*x[3]-40*x[4]-50*x[5]-60*x[6]-70*x[7]-80*x[8]-90*x[9]-100*x[10]-110*x[11])+120*x[12]+130*x[13]+140*x[14]+150*x[15]+160*x[16]+170*x[17]+180*x[18]+190*x[19]+200*x[20]+210*x[21]+220*x[22]+230*x[23]+240*x[24]+250*x[25]+260*x[26]+270*x[27]+280*x[28]+290*x[29]+300*x[30]+310*x[31]+320*x[32]+330*x[33]+340*x[34]+350*x[35]+360*x[36]+370*x[37]+380*x[38]+390*x[39]+400*x[40]+410*x[41]+420*x[42]+430*x[43]+440*x[44]+450*x[45]+460*x[46]+470*x[47]+480*x[48]+490*x[49]+500*x[50]+510*x[51]+520*x[52]+530*x[53]+540*x[54]+550*x[55]+560*x[56]+570*x[57]+580*x[58]+590*x[59]+600*x[60]+610*x[61]+620*x[62]+630*x[63]+640*x[64]+650*x[65]+660*x[66]+670*x[67]+680*x[68]+690*x[69]+700*x[70]+710*x[71]+720*x[72]+730*x[73]+740*x[74]+750*x[75]+760*x[76]+770*x[77]+780*x[78]+790*x[79]+800*x[80]+810*x[81]+820*x[82]+830*x[83]+840*x[84]+850*x[85]+860*x[86]+870*x[87]+880*x[88]+890*x[89]+900*x[90]+910*x[91]+920*x[92]+930*x[93]+940*x[94]+950*x[95]+960*x[96]+970*x[97]+980*x[98]+990*x[99]+1000*x[100]+1010*x[101]+1020*x[102]+1030*x[103]+1040*x[104]+1050*x[105]+1060*x[106]+1070*x[107]+1080*x[108]+1090*x[109]+1100*x[110]+1110*x[111]+1120*x[112]+1130*x[113]+1140*x[114]+1150*x[115]+1160*x[116]+1170*x[117]+1180*x[118]+1190*x[119]+1200*x[120]+x[121] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[121])

m = m 		 # model get returned when including this script.