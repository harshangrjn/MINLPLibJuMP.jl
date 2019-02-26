using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155]
@variable(m, x[x_Idx])
b_Idx = Any[156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195]
@variable(m, b[b_Idx])
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_binary(b[176])
set_lower_bound(x[59], 0.0)
set_binary(b[169])
set_binary(b[180])
set_lower_bound(x[74], 0.0)
set_binary(b[178])
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[120], 0.0)
set_binary(b[159])
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_binary(b[193])
set_lower_bound(x[50], 0.0)
set_lower_bound(x[99], 0.0)
set_binary(b[192])
set_lower_bound(x[60], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_binary(b[188])
set_lower_bound(x[73], 0.0)
set_binary(b[162])
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_binary(b[161])
set_lower_bound(x[38], 0.0)
set_binary(b[167])
set_binary(b[177])
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_binary(b[163])
set_lower_bound(x[77], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[26], 0.0)
set_binary(b[166])
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_binary(b[174])
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[46], 0.0)
set_binary(b[181])
set_lower_bound(x[39], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[153], 0.0)
set_binary(b[160])
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[113], 0.0)
set_binary(b[185])
set_binary(b[164])
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_binary(b[170])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[96], 0.0)
set_binary(b[186])
set_lower_bound(x[25], 0.0)
set_binary(b[172])
set_lower_bound(x[29], 0.0)
set_binary(b[171])
set_lower_bound(x[37], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_binary(b[190])
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_binary(b[184])
set_binary(b[183])
set_binary(b[195])
set_lower_bound(x[98], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[149], 0.0)
set_binary(b[175])
set_lower_bound(x[51], 0.0)
set_binary(b[187])
set_lower_bound(x[125], 0.0)
set_binary(b[157])
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_binary(b[156])
set_lower_bound(x[102], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_binary(b[158])
set_lower_bound(x[78], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_binary(b[168])
set_lower_bound(x[155], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_binary(b[189])
set_lower_bound(x[134], 0.0)
set_binary(b[173])
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[40], 0.0)
set_binary(b[165])
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_binary(b[182])
set_lower_bound(x[64], 0.0)
set_binary(b[194])
set_lower_bound(x[97], 0.0)
set_binary(b[179])
set_binary(b[191])
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[108], 0.0)
set_upper_bound(x[22], 40.0)
set_upper_bound(x[23], 40.0)
set_upper_bound(x[44], 30.0)
set_upper_bound(x[45], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+x[22]+x[23]-5*x[34]-10*x[35]+2*x[44]+x[45]-80*x[60]-90*x[61]-285*x[62]-390*x[63]-290*x[64]-405*x[65]-280*x[66]-400*x[67]-290*x[68]-300*x[69]-350*x[70]-250*x[71]+5*b[176]+4*b[177]+8*b[178]+7*b[179]+6*b[180]+9*b[181]+10*b[182]+9*b[183]+6*b[184]+10*b[185]+7*b[186]+7*b[187]+4*b[188]+3*b[189]+5*b[190]+6*b[191]+2*b[192]+5*b[193]+4*b[194]+7*b[195] == 0.0)
@constraint(m, e2, x[22]-x[24]-x[26] == 0.0)
@constraint(m, e3, x[23]-x[25]-x[27] == 0.0)
@constraint(m, e4, -x[28]-x[30]+x[32] == 0.0)
@constraint(m, e5, -x[29]-x[31]+x[33] == 0.0)
@constraint(m, e6, x[32]-x[34]-x[36] == 0.0)
@constraint(m, e7, x[33]-x[35]-x[37] == 0.0)
@constraint(m, e8, x[36]-x[38]-x[40]-x[42] == 0.0)
@constraint(m, e9, x[37]-x[39]-x[41]-x[43] == 0.0)
@constraint(m, e10, x[46]-x[52]-x[54] == 0.0)
@constraint(m, e11, x[47]-x[53]-x[55] == 0.0)
@constraint(m, e12, x[50]-x[56]-x[58]-x[60] == 0.0)
@constraint(m, e13, x[51]-x[57]-x[59]-x[61] == 0.0)
@NLconstraint(m, e14, (x[80]/(1e-6+b[156])-log(1+x[72]/(1e-6+b[156])))*(1e-6+b[156]) <= 0.0)
@NLconstraint(m, e15, (x[81]/(1e-6+b[157])-log(1+x[73]/(1e-6+b[157])))*(1e-6+b[157]) <= 0.0)
@constraint(m, e16, x[74] == 0.0)
@constraint(m, e17, x[75] == 0.0)
@constraint(m, e18, x[82] == 0.0)
@constraint(m, e19, x[83] == 0.0)
@constraint(m, e20, x[24]-x[72]-x[74] == 0.0)
@constraint(m, e21, x[25]-x[73]-x[75] == 0.0)
@constraint(m, e22, x[28]-x[80]-x[82] == 0.0)
@constraint(m, e23, x[29]-x[81]-x[83] == 0.0)
@constraint(m, e24, x[72]-40*b[156] <= 0.0)
@constraint(m, e25, x[73]-40*b[157] <= 0.0)
@constraint(m, e26, x[74]+40*b[156] <= 40.0)
@constraint(m, e27, x[75]+40*b[157] <= 40.0)
@constraint(m, e28, x[80]-3.71357206670431*b[156] <= 0.0)
@constraint(m, e29, x[81]-3.71357206670431*b[157] <= 0.0)
@constraint(m, e30, x[82]+3.71357206670431*b[156] <= 3.71357206670431)
@constraint(m, e31, x[83]+3.71357206670431*b[157] <= 3.71357206670431)
@NLconstraint(m, e32, (x[84]/(1e-6+b[158])-1.2*log(1+x[76]/(1e-6+b[158])))*(1e-6+b[158]) <= 0.0)
@NLconstraint(m, e33, (x[85]/(1e-6+b[159])-1.2*log(1+x[77]/(1e-6+b[159])))*(1e-6+b[159]) <= 0.0)
@constraint(m, e34, x[78] == 0.0)
@constraint(m, e35, x[79] == 0.0)
@constraint(m, e36, x[86] == 0.0)
@constraint(m, e37, x[87] == 0.0)
@constraint(m, e38, x[26]-x[76]-x[78] == 0.0)
@constraint(m, e39, x[27]-x[77]-x[79] == 0.0)
@constraint(m, e40, x[30]-x[84]-x[86] == 0.0)
@constraint(m, e41, x[31]-x[85]-x[87] == 0.0)
@constraint(m, e42, x[76]-40*b[158] <= 0.0)
@constraint(m, e43, x[77]-40*b[159] <= 0.0)
@constraint(m, e44, x[78]+40*b[158] <= 40.0)
@constraint(m, e45, x[79]+40*b[159] <= 40.0)
@constraint(m, e46, x[84]-4.45628648004517*b[158] <= 0.0)
@constraint(m, e47, x[85]-4.45628648004517*b[159] <= 0.0)
@constraint(m, e48, x[86]+4.45628648004517*b[158] <= 4.45628648004517)
@constraint(m, e49, x[87]+4.45628648004517*b[159] <= 4.45628648004517)
@constraint(m, e50, -0.75*x[88]+x[104] == 0.0)
@constraint(m, e51, -0.75*x[89]+x[105] == 0.0)
@constraint(m, e52, x[90] == 0.0)
@constraint(m, e53, x[91] == 0.0)
@constraint(m, e54, x[106] == 0.0)
@constraint(m, e55, x[107] == 0.0)
@constraint(m, e56, x[38]-x[88]-x[90] == 0.0)
@constraint(m, e57, x[39]-x[89]-x[91] == 0.0)
@constraint(m, e58, x[46]-x[104]-x[106] == 0.0)
@constraint(m, e59, x[47]-x[105]-x[107] == 0.0)
@constraint(m, e60, x[88]-4.45628648004517*b[160] <= 0.0)
@constraint(m, e61, x[89]-4.45628648004517*b[161] <= 0.0)
@constraint(m, e62, x[90]+4.45628648004517*b[160] <= 4.45628648004517)
@constraint(m, e63, x[91]+4.45628648004517*b[161] <= 4.45628648004517)
@constraint(m, e64, x[104]-3.34221486003388*b[160] <= 0.0)
@constraint(m, e65, x[105]-3.34221486003388*b[161] <= 0.0)
@constraint(m, e66, x[106]+3.34221486003388*b[160] <= 3.34221486003388)
@constraint(m, e67, x[107]+3.34221486003388*b[161] <= 3.34221486003388)
@NLconstraint(m, e68, (x[108]/(1e-6+b[162])-1.5*log(1+x[92]/(1e-6+b[162])))*(1e-6+b[162]) <= 0.0)
@NLconstraint(m, e69, (x[109]/(1e-6+b[163])-1.5*log(1+x[93]/(1e-6+b[163])))*(1e-6+b[163]) <= 0.0)
@constraint(m, e70, x[94] == 0.0)
@constraint(m, e71, x[95] == 0.0)
@constraint(m, e72, x[112] == 0.0)
@constraint(m, e73, x[113] == 0.0)
@constraint(m, e74, x[40]-x[92]-x[94] == 0.0)
@constraint(m, e75, x[41]-x[93]-x[95] == 0.0)
@constraint(m, e76, x[48]-x[108]-x[112] == 0.0)
@constraint(m, e77, x[49]-x[109]-x[113] == 0.0)
@constraint(m, e78, x[92]-4.45628648004517*b[162] <= 0.0)
@constraint(m, e79, x[93]-4.45628648004517*b[163] <= 0.0)
@constraint(m, e80, x[94]+4.45628648004517*b[162] <= 4.45628648004517)
@constraint(m, e81, x[95]+4.45628648004517*b[163] <= 4.45628648004517)
@constraint(m, e82, x[108]-2.54515263975353*b[162] <= 0.0)
@constraint(m, e83, x[109]-2.54515263975353*b[163] <= 0.0)
@constraint(m, e84, x[112]+2.54515263975353*b[162] <= 2.54515263975353)
@constraint(m, e85, x[113]+2.54515263975353*b[163] <= 2.54515263975353)
@constraint(m, e86, -x[96]+x[116] == 0.0)
@constraint(m, e87, -x[97]+x[117] == 0.0)
@constraint(m, e88, -0.5*x[100]+x[116] == 0.0)
@constraint(m, e89, -0.5*x[101]+x[117] == 0.0)
@constraint(m, e90, x[98] == 0.0)
@constraint(m, e91, x[99] == 0.0)
@constraint(m, e92, x[102] == 0.0)
@constraint(m, e93, x[103] == 0.0)
@constraint(m, e94, x[118] == 0.0)
@constraint(m, e95, x[119] == 0.0)
@constraint(m, e96, x[42]-x[96]-x[98] == 0.0)
@constraint(m, e97, x[43]-x[97]-x[99] == 0.0)
@constraint(m, e98, x[44]-x[100]-x[102] == 0.0)
@constraint(m, e99, x[45]-x[101]-x[103] == 0.0)
@constraint(m, e100, x[50]-x[116]-x[118] == 0.0)
@constraint(m, e101, x[51]-x[117]-x[119] == 0.0)
@constraint(m, e102, x[96]-4.45628648004517*b[164] <= 0.0)
@constraint(m, e103, x[97]-4.45628648004517*b[165] <= 0.0)
@constraint(m, e104, x[98]+4.45628648004517*b[164] <= 4.45628648004517)
@constraint(m, e105, x[99]+4.45628648004517*b[165] <= 4.45628648004517)
@constraint(m, e106, x[100]-30*b[164] <= 0.0)
@constraint(m, e107, x[101]-30*b[165] <= 0.0)
@constraint(m, e108, x[102]+30*b[164] <= 30.0)
@constraint(m, e109, x[103]+30*b[165] <= 30.0)
@constraint(m, e110, x[116]-15*b[164] <= 0.0)
@constraint(m, e111, x[117]-15*b[165] <= 0.0)
@constraint(m, e112, x[118]+15*b[164] <= 15.0)
@constraint(m, e113, x[119]+15*b[165] <= 15.0)
@NLconstraint(m, e114, (x[136]/(1e-6+b[166])-1.25*log(1+x[120]/(1e-6+b[166])))*(1e-6+b[166]) <= 0.0)
@NLconstraint(m, e115, (x[137]/(1e-6+b[167])-1.25*log(1+x[121]/(1e-6+b[167])))*(1e-6+b[167]) <= 0.0)
@constraint(m, e116, x[122] == 0.0)
@constraint(m, e117, x[123] == 0.0)
@constraint(m, e118, x[138] == 0.0)
@constraint(m, e119, x[139] == 0.0)
@constraint(m, e120, x[52]-x[120]-x[122] == 0.0)
@constraint(m, e121, x[53]-x[121]-x[123] == 0.0)
@constraint(m, e122, x[62]-x[136]-x[138] == 0.0)
@constraint(m, e123, x[63]-x[137]-x[139] == 0.0)
@constraint(m, e124, x[120]-3.34221486003388*b[166] <= 0.0)
@constraint(m, e125, x[121]-3.34221486003388*b[167] <= 0.0)
@constraint(m, e126, x[122]+3.34221486003388*b[166] <= 3.34221486003388)
@constraint(m, e127, x[123]+3.34221486003388*b[167] <= 3.34221486003388)
@constraint(m, e128, x[136]-1.83548069293539*b[166] <= 0.0)
@constraint(m, e129, x[137]-1.83548069293539*b[167] <= 0.0)
@constraint(m, e130, x[138]+1.83548069293539*b[166] <= 1.83548069293539)
@constraint(m, e131, x[139]+1.83548069293539*b[167] <= 1.83548069293539)
@NLconstraint(m, e132, (x[140]/(1e-6+b[168])-0.9*log(1+x[124]/(1e-6+b[168])))*(1e-6+b[168]) <= 0.0)
@NLconstraint(m, e133, (x[141]/(1e-6+b[169])-0.9*log(1+x[125]/(1e-6+b[169])))*(1e-6+b[169]) <= 0.0)
@constraint(m, e134, x[126] == 0.0)
@constraint(m, e135, x[127] == 0.0)
@constraint(m, e136, x[142] == 0.0)
@constraint(m, e137, x[143] == 0.0)
@constraint(m, e138, x[54]-x[124]-x[126] == 0.0)
@constraint(m, e139, x[55]-x[125]-x[127] == 0.0)
@constraint(m, e140, x[64]-x[140]-x[142] == 0.0)
@constraint(m, e141, x[65]-x[141]-x[143] == 0.0)
@constraint(m, e142, x[124]-3.34221486003388*b[168] <= 0.0)
@constraint(m, e143, x[125]-3.34221486003388*b[169] <= 0.0)
@constraint(m, e144, x[126]+3.34221486003388*b[168] <= 3.34221486003388)
@constraint(m, e145, x[127]+3.34221486003388*b[169] <= 3.34221486003388)
@constraint(m, e146, x[140]-1.32154609891348*b[168] <= 0.0)
@constraint(m, e147, x[141]-1.32154609891348*b[169] <= 0.0)
@constraint(m, e148, x[142]+1.32154609891348*b[168] <= 1.32154609891348)
@constraint(m, e149, x[143]+1.32154609891348*b[169] <= 1.32154609891348)
@NLconstraint(m, e150, (x[144]/(1e-6+b[170])-log(1+x[110]/(1e-6+b[170])))*(1e-6+b[170]) <= 0.0)
@NLconstraint(m, e151, (x[145]/(1e-6+b[171])-log(1+x[111]/(1e-6+b[171])))*(1e-6+b[171]) <= 0.0)
@constraint(m, e152, x[114] == 0.0)
@constraint(m, e153, x[115] == 0.0)
@constraint(m, e154, x[146] == 0.0)
@constraint(m, e155, x[147] == 0.0)
@constraint(m, e156, x[48]-x[110]-x[114] == 0.0)
@constraint(m, e157, x[49]-x[111]-x[115] == 0.0)
@constraint(m, e158, x[66]-x[144]-x[146] == 0.0)
@constraint(m, e159, x[67]-x[145]-x[147] == 0.0)
@constraint(m, e160, x[110]-2.54515263975353*b[170] <= 0.0)
@constraint(m, e161, x[111]-2.54515263975353*b[171] <= 0.0)
@constraint(m, e162, x[114]+2.54515263975353*b[170] <= 2.54515263975353)
@constraint(m, e163, x[115]+2.54515263975353*b[171] <= 2.54515263975353)
@constraint(m, e164, x[144]-1.26558121681553*b[170] <= 0.0)
@constraint(m, e165, x[145]-1.26558121681553*b[171] <= 0.0)
@constraint(m, e166, x[146]+1.26558121681553*b[170] <= 1.26558121681553)
@constraint(m, e167, x[147]+1.26558121681553*b[171] <= 1.26558121681553)
@constraint(m, e168, -0.9*x[128]+x[148] == 0.0)
@constraint(m, e169, -0.9*x[129]+x[149] == 0.0)
@constraint(m, e170, x[130] == 0.0)
@constraint(m, e171, x[131] == 0.0)
@constraint(m, e172, x[150] == 0.0)
@constraint(m, e173, x[151] == 0.0)
@constraint(m, e174, x[56]-x[128]-x[130] == 0.0)
@constraint(m, e175, x[57]-x[129]-x[131] == 0.0)
@constraint(m, e176, x[68]-x[148]-x[150] == 0.0)
@constraint(m, e177, x[69]-x[149]-x[151] == 0.0)
@constraint(m, e178, x[128]-15*b[172] <= 0.0)
@constraint(m, e179, x[129]-15*b[173] <= 0.0)
@constraint(m, e180, x[130]+15*b[172] <= 15.0)
@constraint(m, e181, x[131]+15*b[173] <= 15.0)
@constraint(m, e182, x[148]-13.5*b[172] <= 0.0)
@constraint(m, e183, x[149]-13.5*b[173] <= 0.0)
@constraint(m, e184, x[150]+13.5*b[172] <= 13.5)
@constraint(m, e185, x[151]+13.5*b[173] <= 13.5)
@constraint(m, e186, -0.6*x[132]+x[152] == 0.0)
@constraint(m, e187, -0.6*x[133]+x[153] == 0.0)
@constraint(m, e188, x[134] == 0.0)
@constraint(m, e189, x[135] == 0.0)
@constraint(m, e190, x[154] == 0.0)
@constraint(m, e191, x[155] == 0.0)
@constraint(m, e192, x[58]-x[132]-x[134] == 0.0)
@constraint(m, e193, x[59]-x[133]-x[135] == 0.0)
@constraint(m, e194, x[70]-x[152]-x[154] == 0.0)
@constraint(m, e195, x[71]-x[153]-x[155] == 0.0)
@constraint(m, e196, x[132]-15*b[174] <= 0.0)
@constraint(m, e197, x[133]-15*b[175] <= 0.0)
@constraint(m, e198, x[134]+15*b[174] <= 15.0)
@constraint(m, e199, x[135]+15*b[175] <= 15.0)
@constraint(m, e200, x[152]-9*b[174] <= 0.0)
@constraint(m, e201, x[153]-9*b[175] <= 0.0)
@constraint(m, e202, x[154]+9*b[174] <= 9.0)
@constraint(m, e203, x[155]+9*b[175] <= 9.0)
@constraint(m, e204, x[2]+5*b[176] == 0.0)
@constraint(m, e205, x[3]+4*b[177] == 0.0)
@constraint(m, e206, x[4]+8*b[178] == 0.0)
@constraint(m, e207, x[5]+7*b[179] == 0.0)
@constraint(m, e208, x[6]+6*b[180] == 0.0)
@constraint(m, e209, x[7]+9*b[181] == 0.0)
@constraint(m, e210, x[8]+10*b[182] == 0.0)
@constraint(m, e211, x[9]+9*b[183] == 0.0)
@constraint(m, e212, x[10]+6*b[184] == 0.0)
@constraint(m, e213, x[11]+10*b[185] == 0.0)
@constraint(m, e214, x[12]+7*b[186] == 0.0)
@constraint(m, e215, x[13]+7*b[187] == 0.0)
@constraint(m, e216, x[14]+4*b[188] == 0.0)
@constraint(m, e217, x[15]+3*b[189] == 0.0)
@constraint(m, e218, x[16]+5*b[190] == 0.0)
@constraint(m, e219, x[17]+6*b[191] == 0.0)
@constraint(m, e220, x[18]+2*b[192] == 0.0)
@constraint(m, e221, x[19]+5*b[193] == 0.0)
@constraint(m, e222, x[20]+4*b[194] == 0.0)
@constraint(m, e223, x[21]+7*b[195] == 0.0)
@constraint(m, e224, b[156]-b[157] <= 0.0)
@constraint(m, e225, b[158]-b[159] <= 0.0)
@constraint(m, e226, b[160]-b[161] <= 0.0)
@constraint(m, e227, b[162]-b[163] <= 0.0)
@constraint(m, e228, b[164]-b[165] <= 0.0)
@constraint(m, e229, b[166]-b[167] <= 0.0)
@constraint(m, e230, b[168]-b[169] <= 0.0)
@constraint(m, e231, b[170]-b[171] <= 0.0)
@constraint(m, e232, b[172]-b[173] <= 0.0)
@constraint(m, e233, b[174]-b[175] <= 0.0)
@constraint(m, e234, b[176]+b[177] <= 1.0)
@constraint(m, e235, b[176]+b[177] <= 1.0)
@constraint(m, e236, b[178]+b[179] <= 1.0)
@constraint(m, e237, b[178]+b[179] <= 1.0)
@constraint(m, e238, b[180]+b[181] <= 1.0)
@constraint(m, e239, b[180]+b[181] <= 1.0)
@constraint(m, e240, b[182]+b[183] <= 1.0)
@constraint(m, e241, b[182]+b[183] <= 1.0)
@constraint(m, e242, b[184]+b[185] <= 1.0)
@constraint(m, e243, b[184]+b[185] <= 1.0)
@constraint(m, e244, b[186]+b[187] <= 1.0)
@constraint(m, e245, b[186]+b[187] <= 1.0)
@constraint(m, e246, b[188]+b[189] <= 1.0)
@constraint(m, e247, b[188]+b[189] <= 1.0)
@constraint(m, e248, b[190]+b[191] <= 1.0)
@constraint(m, e249, b[190]+b[191] <= 1.0)
@constraint(m, e250, b[192]+b[193] <= 1.0)
@constraint(m, e251, b[192]+b[193] <= 1.0)
@constraint(m, e252, b[194]+b[195] <= 1.0)
@constraint(m, e253, b[194]+b[195] <= 1.0)
@constraint(m, e254, b[156]-b[176] <= 0.0)
@constraint(m, e255, -b[156]+b[157]-b[177] <= 0.0)
@constraint(m, e256, b[158]-b[178] <= 0.0)
@constraint(m, e257, -b[158]+b[159]-b[179] <= 0.0)
@constraint(m, e258, b[160]-b[180] <= 0.0)
@constraint(m, e259, -b[160]+b[161]-b[181] <= 0.0)
@constraint(m, e260, b[162]-b[182] <= 0.0)
@constraint(m, e261, -b[162]+b[163]-b[183] <= 0.0)
@constraint(m, e262, b[164]-b[184] <= 0.0)
@constraint(m, e263, -b[164]+b[165]-b[185] <= 0.0)
@constraint(m, e264, b[166]-b[186] <= 0.0)
@constraint(m, e265, -b[166]+b[167]-b[187] <= 0.0)
@constraint(m, e266, b[168]-b[188] <= 0.0)
@constraint(m, e267, -b[168]+b[169]-b[189] <= 0.0)
@constraint(m, e268, b[170]-b[190] <= 0.0)
@constraint(m, e269, -b[170]+b[171]-b[191] <= 0.0)
@constraint(m, e270, b[172]-b[192] <= 0.0)
@constraint(m, e271, -b[172]+b[173]-b[193] <= 0.0)
@constraint(m, e272, b[174]-b[194] <= 0.0)
@constraint(m, e273, -b[174]+b[175]-b[195] <= 0.0)
@constraint(m, e274, b[156]+b[158] == 1.0)
@constraint(m, e275, b[157]+b[159] == 1.0)
@constraint(m, e276, -b[160]+b[166]+b[168] >= 0.0)
@constraint(m, e277, -b[161]+b[167]+b[169] >= 0.0)
@constraint(m, e278, -b[162]+b[170] >= 0.0)
@constraint(m, e279, -b[163]+b[171] >= 0.0)
@constraint(m, e280, b[156]+b[158]-b[160] >= 0.0)
@constraint(m, e281, b[157]+b[159]-b[161] >= 0.0)
@constraint(m, e282, b[156]+b[158]-b[162] >= 0.0)
@constraint(m, e283, b[157]+b[159]-b[163] >= 0.0)
@constraint(m, e284, b[156]+b[158]-b[164] >= 0.0)
@constraint(m, e285, b[157]+b[159]-b[165] >= 0.0)
@constraint(m, e286, b[160]-b[166] >= 0.0)
@constraint(m, e287, b[161]-b[167] >= 0.0)
@constraint(m, e288, b[160]-b[168] >= 0.0)
@constraint(m, e289, b[161]-b[169] >= 0.0)
@constraint(m, e290, b[162]-b[170] >= 0.0)
@constraint(m, e291, b[163]-b[171] >= 0.0)
@constraint(m, e292, b[164]-b[172] >= 0.0)
@constraint(m, e293, b[165]-b[173] >= 0.0)
@constraint(m, e294, b[164]-b[174] >= 0.0)
@constraint(m, e295, b[165]-b[175] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script.