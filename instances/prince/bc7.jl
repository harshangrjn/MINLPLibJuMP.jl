using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193]
@variable(m, x[x_Idx])
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 0.0)
set_lower_bound(x[65], 1.0)
set_upper_bound(x[65], 1.0)
set_upper_bound(x[66], 1.0e8)
set_upper_bound(x[67], 1.0e8)
set_upper_bound(x[68], 1.0e8)
set_upper_bound(x[69], 1.0e8)
set_upper_bound(x[70], 1.0e8)
set_upper_bound(x[71], 1.0e8)
set_upper_bound(x[72], 1.0e8)
set_upper_bound(x[73], 1.0e8)
set_upper_bound(x[74], 1.0e8)
set_upper_bound(x[75], 1.0e8)
set_upper_bound(x[76], 1.0e8)
set_upper_bound(x[77], 1.0e8)
set_upper_bound(x[78], 1.0e8)
set_upper_bound(x[79], 1.0e8)
set_upper_bound(x[80], 1.0e8)
set_upper_bound(x[81], 1.0e8)
set_upper_bound(x[82], 1.0e8)
set_upper_bound(x[83], 1.0e8)
set_upper_bound(x[84], 1.0e8)
set_upper_bound(x[85], 1.0e8)
set_upper_bound(x[86], 1.0e8)
set_upper_bound(x[87], 1.0e8)
set_upper_bound(x[88], 1.0e8)
set_upper_bound(x[89], 1.0e8)
set_upper_bound(x[90], 1.0e8)
set_upper_bound(x[91], 1.0e8)
set_upper_bound(x[92], 1.0e8)
set_upper_bound(x[93], 1.0e8)
set_upper_bound(x[94], 1.0e8)
set_upper_bound(x[95], 1.0e8)
set_upper_bound(x[96], 1.0e8)
set_upper_bound(x[97], 1.0e8)
set_upper_bound(x[98], 1.0e8)
set_upper_bound(x[99], 1.0e8)
set_upper_bound(x[100], 1.0e8)
set_upper_bound(x[101], 1.0e8)
set_upper_bound(x[102], 1.0e8)
set_upper_bound(x[103], 1.0e8)
set_upper_bound(x[104], 1.0e8)
set_upper_bound(x[105], 1.0e8)
set_upper_bound(x[106], 1.0e8)
set_upper_bound(x[107], 1.0e8)
set_upper_bound(x[108], 1.0e8)
set_upper_bound(x[109], 1.0e8)
set_upper_bound(x[110], 1.0e8)
set_upper_bound(x[111], 1.0e8)
set_upper_bound(x[112], 1.0e8)
set_upper_bound(x[113], 1.0e8)
set_upper_bound(x[114], 1.0e8)
set_upper_bound(x[115], 1.0e8)
set_upper_bound(x[116], 1.0e8)
set_upper_bound(x[117], 1.0e8)
set_upper_bound(x[118], 1.0e8)
set_upper_bound(x[119], 1.0e8)
set_upper_bound(x[120], 1.0e8)
set_upper_bound(x[121], 1.0e8)
set_upper_bound(x[122], 1.0e8)
set_upper_bound(x[123], 1.0e8)
set_upper_bound(x[124], 1.0e8)
set_upper_bound(x[125], 1.0e8)
set_upper_bound(x[126], 1.0e8)
set_upper_bound(x[127], 1.0e8)
set_upper_bound(x[128], 1.0e8)
set_upper_bound(x[129], 1.0e8)


# ----- Constraints ----- #
@constraint(m, e1, 68719476736*x[1]-68719476736*x[2]+x[130] == 0.0)
@constraint(m, e2, 1090785345.01587*x[2]-1090785345.01587*x[3]+x[131] == 0.0)
@constraint(m, e3, 103337559.001504*x[3]-103337559.001504*x[4]+x[132] == 0.0)
@constraint(m, e4, 20409705.000297*x[4]-20409705.000297*x[5]+x[133] == 0.0)
@constraint(m, e5, 5960575.65582444*x[5]-5960575.65582444*x[6]+x[134] == 0.0)
@constraint(m, e6, 2214542.77129322*x[6]-2214542.77129322*x[7]+x[135] == 0.0)
@constraint(m, e7, 967975.388221374*x[7]-967975.388221374*x[8]+x[136] == 0.0)
@constraint(m, e8, 475583.76923769*x[8]-475583.76923769*x[9]+x[137] == 0.0)
@constraint(m, e9, 255180.996208647*x[9]-255180.996208647*x[10]+x[138] == 0.0)
@constraint(m, e10, 146661.309965234*x[10]-146661.309965234*x[11]+x[139] == 0.0)
@constraint(m, e11, 89065.5135964622*x[11]-89065.5135964622*x[12]+x[140] == 0.0)
@constraint(m, e12, 56586.1126938472*x[12]-56586.1126938472*x[13]+x[141] == 0.0)
@constraint(m, e13, 37330.80370812*x[13]-37330.80370812*x[14]+x[142] == 0.0)
@constraint(m, e14, 25425.9778127795*x[14]-25425.9778127795*x[15]+x[143] == 0.0)
@constraint(m, e15, 17797.9520119842*x[15]-17797.9520119842*x[16]+x[144] == 0.0)
@constraint(m, e16, 12757.5078070713*x[16]-12757.5078070713*x[17]+x[145] == 0.0)
@constraint(m, e17, 9336.43763227117*x[17]-9336.43763227117*x[18]+x[146] == 0.0)
@constraint(m, e18, 6959.17748377032*x[18]-6959.17748377032*x[19]+x[147] == 0.0)
@constraint(m, e19, 5272.46318788349*x[19]-5272.46318788349*x[20]+x[148] == 0.0)
@constraint(m, e20, 4053.26143670456*x[20]-4053.26143670456*x[21]+x[149] == 0.0)
@constraint(m, e21, 3157.17608736991*x[21]-3157.17608736991*x[22]+x[150] == 0.0)
@constraint(m, e22, 2488.59334977754*x[22]-2488.59334977754*x[23]+x[151] == 0.0)
@constraint(m, e23, 1982.90358031953*x[23]-1982.90358031953*x[24]+x[152] == 0.0)
@constraint(m, e24, 1595.63791105723*x[24]-1595.63791105723*x[25]+x[153] == 0.0)
@constraint(m, e25, 1295.67350800183*x[25]-1295.67350800183*x[26]+x[154] == 0.0)
@constraint(m, e26, 1060.89257493201*x[26]-1060.89257493201*x[27]+x[155] == 0.0)
@constraint(m, e27, 875.354792214832*x[27]-875.354792214832*x[28]+x[156] == 0.0)
@constraint(m, e28, 727.42258186914*x[28]-727.42258186914*x[29]+x[157] == 0.0)
@constraint(m, e29, 608.497661370368*x[29]-608.497661370368*x[30]+x[158] == 0.0)
@constraint(m, e30, 512.156637413868*x[30]-512.156637413868*x[31]+x[159] == 0.0)
@constraint(m, e31, 433.55129863514*x[31]-433.55129863514*x[32]+x[160] == 0.0)
@constraint(m, e32, 368.987123846053*x[32]-368.987123846053*x[33]+x[161] == 0.0)
@constraint(m, e33, 315.62344860329*x[33]-315.62344860329*x[34]+x[162] == 0.0)
@constraint(m, e34, 271.257758406946*x[34]-271.257758406946*x[35]+x[163] == 0.0)
@constraint(m, e35, 234.168859898618*x[35]-234.168859898618*x[36]+x[164] == 0.0)
@constraint(m, e36, 203.001726363813*x[36]-203.001726363813*x[37]+x[165] == 0.0)
@constraint(m, e37, 176.682154341506*x[37]-176.682154341506*x[38]+x[166] == 0.0)
@constraint(m, e38, 154.352958367566*x[38]-154.352958367566*x[39]+x[167] == 0.0)
@constraint(m, e39, 135.325873251345*x[39]-135.325873251345*x[40]+x[168] == 0.0)
@constraint(m, e40, 119.045013450257*x[40]-119.045013450257*x[41]+x[169] == 0.0)
@constraint(m, e41, 105.058907171953*x[41]-105.058907171953*x[42]+x[170] == 0.0)
@constraint(m, e42, 92.9989430045616*x[42]-92.9989430045616*x[43]+x[171] == 0.0)
@constraint(m, e43, 82.562648218548*x[43]-82.562648218548*x[44]+x[172] == 0.0)
@constraint(m, e44, 73.5006336392199*x[44]-73.5006336392199*x[45]+x[173] == 0.0)
@constraint(m, e45, 65.6063398523889*x[45]-65.6063398523889*x[46]+x[174] == 0.0)
@constraint(m, e46, 58.7079375310427*x[46]-58.7079375310427*x[47]+x[175] == 0.0)
@constraint(m, e47, 52.6618944128288*x[47]-52.6618944128288*x[48]+x[176] == 0.0)
@constraint(m, e48, 47.347839355123*x[48]-47.347839355123*x[49]+x[177] == 0.0)
@constraint(m, e49, 42.6644415161561*x[49]-42.6644415161561*x[50]+x[178] == 0.0)
@constraint(m, e50, 38.5260882662983*x[50]-38.5260882662983*x[51]+x[179] == 0.0)
@constraint(m, e51, 34.8601947930382*x[51]-34.8601947930382*x[52]+x[180] == 0.0)
@constraint(m, e52, 31.6050157547443*x[52]-31.6050157547443*x[53]+x[181] == 0.0)
@constraint(m, e53, 28.7078578293424*x[53]-28.7078578293424*x[54]+x[182] == 0.0)
@constraint(m, e54, 26.1236138348849*x[54]-26.1236138348849*x[55]+x[183] == 0.0)
@constraint(m, e55, 23.8135559164912*x[55]-23.8135559164912*x[56]+x[184] == 0.0)
@constraint(m, e56, 21.7443383164886*x[56]-21.7443383164886*x[57]+x[185] == 0.0)
@constraint(m, e57, 19.8871703782655*x[57]-19.8871703782655*x[58]+x[186] == 0.0)
@constraint(m, e58, 18.2171283577676*x[58]-18.2171283577676*x[59]+x[187] == 0.0)
@constraint(m, e59, 16.7125808402805*x[59]-16.7125808402805*x[60]+x[188] == 0.0)
@constraint(m, e60, 15.3547074703863*x[60]-15.3547074703863*x[61]+x[189] == 0.0)
@constraint(m, e61, 14.1270945934911*x[61]-14.1270945934911*x[62]+x[190] == 0.0)
@constraint(m, e62, 13.0153945025384*x[62]-13.0153945025384*x[63]+x[191] == 0.0)
@constraint(m, e63, 12.0070374558166*x[63]-12.0070374558166*x[64]+x[192] == 0.0)
@constraint(m, e64, 11.0909876140619*x[64]-11.0909876140619*x[65]+x[193] == 0.0)
@NLconstraint(m, e65, -sqrt(137438953472+137438953472* (x[130])^2)+x[66] == 0.0)
@NLconstraint(m, e66, -sqrt(2114445438.03077+2114445438.03077* (x[131])^2)+x[67] == 0.0)
@NLconstraint(m, e67, -sqrt(173315199.838588+173315199.838588* (x[132])^2)+x[68] == 0.0)
@NLconstraint(m, e68, -sqrt(28484757.1962694+28484757.1962694* (x[133])^2)+x[69] == 0.0)
@NLconstraint(m, e69, -sqrt(6969167.56107702+6969167.56107702* (x[134])^2)+x[70] == 0.0)
@NLconstraint(m, e70, -sqrt(2206755.72762159+2206755.72762159* (x[135])^2)+x[71] == 0.0)
@NLconstraint(m, e71, -sqrt(836486.737908159+836486.737908159* (x[136])^2)+x[72] == 0.0)
@NLconstraint(m, e72, -sqrt(361878.585102938+361878.585102938* (x[137])^2)+x[73] == 0.0)
@NLconstraint(m, e73, -sqrt(173187.438613381+173187.438613381* (x[138])^2)+x[74] == 0.0)
@NLconstraint(m, e74, -sqrt(89744.8569497617+89744.8569497617* (x[139])^2)+x[75] == 0.0)
@NLconstraint(m, e75, -sqrt(49589.0054276272+49589.0054276272* (x[140])^2)+x[76] == 0.0)
@NLconstraint(m, e76, -sqrt(28888.6292135965+28888.6292135965* (x[141])^2)+x[77] == 0.0)
@NLconstraint(m, e77, -sqrt(17591.526291814+17591.526291814* (x[142])^2)+x[78] == 0.0)
@NLconstraint(m, e78, -sqrt(11122.9456179801+11122.9456179801* (x[143])^2)+x[79] == 0.0)
@NLconstraint(m, e79, -sqrt(7264.15348537468+7264.15348537468* (x[144])^2)+x[80] == 0.0)
@NLconstraint(m, e80, -sqrt(4879.28604368365+4879.28604368365* (x[145])^2)+x[81] == 0.0)
@NLconstraint(m, e81, -sqrt(3359.15130611098+3359.15130611098* (x[146])^2)+x[82] == 0.0)
@NLconstraint(m, e82, -sqrt(2363.53297890502+2363.53297890502* (x[147])^2)+x[83] == 0.0)
@NLconstraint(m, e83, -sqrt(1695.56090007286+1695.56090007286* (x[148])^2)+x[84] == 0.0)
@NLconstraint(m, e84, -sqrt(1237.67718563105+1237.67718563105* (x[149])^2)+x[85] == 0.0)
@NLconstraint(m, e85, -sqrt(917.690546795961+917.690546795961* (x[150])^2)+x[86] == 0.0)
@NLconstraint(m, e86, -sqrt(690.141585663083+690.141585663083* (x[151])^2)+x[87] == 0.0)
@NLconstraint(m, e87, -sqrt(525.748471026768+525.748471026768* (x[152])^2)+x[88] == 0.0)
@NLconstraint(m, e88, -sqrt(405.258634901665+405.258634901665* (x[153])^2)+x[89] == 0.0)
@NLconstraint(m, e89, -sqrt(315.774782572852+315.774782572852* (x[154])^2)+x[90] == 0.0)
@NLconstraint(m, e90, -sqrt(248.508024178894+248.508024178894* (x[155])^2)+x[91] == 0.0)
@NLconstraint(m, e91, -sqrt(197.374401392121+197.374401392121* (x[156])^2)+x[92] == 0.0)
@NLconstraint(m, e92, -sqrt(158.101054972177+158.101054972177* (x[157])^2)+x[93] == 0.0)
@NLconstraint(m, e93, -sqrt(127.646711512544+127.646711512544* (x[158])^2)+x[94] == 0.0)
@NLconstraint(m, e94, -sqrt(103.819710146955+103.819710146955* (x[159])^2)+x[95] == 0.0)
@NLconstraint(m, e95, -sqrt(85.0223572562344+85.0223572562344* (x[160])^2)+x[96] == 0.0)
@NLconstraint(m, e96, -sqrt(70.0773835410269+70.0773835410269* (x[161])^2)+x[97] == 0.0)
@NLconstraint(m, e97, -sqrt(58.1085677383714+58.1085677383714* (x[162])^2)+x[98] == 0.0)
@NLconstraint(m, e98, -sqrt(48.4576002639464+48.4576002639464* (x[163])^2)+x[99] == 0.0)
@NLconstraint(m, e99, -sqrt(40.6255122732766+40.6255122732766* (x[164])^2)+x[100] == 0.0)
@NLconstraint(m, e100, -sqrt(34.2309618233724+34.2309618233724* (x[165])^2)+x[101] == 0.0)
@NLconstraint(m, e101, -sqrt(28.9802214106408+28.9802214106408* (x[166])^2)+x[102] == 0.0)
@NLconstraint(m, e102, -sqrt(24.6453763789551+24.6453763789551* (x[167])^2)+x[103] == 0.0)
@NLconstraint(m, e103, -sqrt(21.0483439341576+21.0483439341576* (x[168])^2)+x[104] == 0.0)
@NLconstraint(m, e104, -sqrt(18.0490582199119+18.0490582199119* (x[169])^2)+x[105] == 0.0)
@NLconstraint(m, e105, -sqrt(15.5366644714627+15.5366644714627* (x[170])^2)+x[106] == 0.0)
@NLconstraint(m, e106, -sqrt(13.4229053773037+13.4229053773037* (x[171])^2)+x[107] == 0.0)
@NLconstraint(m, e107, -sqrt(11.6371176307722+11.6371176307722* (x[172])^2)+x[108] == 0.0)
@NLconstraint(m, e108, -sqrt(10.1224203841077+10.1224203841077* (x[173])^2)+x[109] == 0.0)
@NLconstraint(m, e109, -sqrt(8.8327925085359+8.8327925085359* (x[174])^2)+x[110] == 0.0)
@NLconstraint(m, e110, -sqrt(7.730817309797+7.730817309797* (x[175])^2)+x[111] == 0.0)
@NLconstraint(m, e111, -sqrt(6.78593183963183+6.78593183963183* (x[176])^2)+x[112] == 0.0)
@NLconstraint(m, e112, -sqrt(5.9730601252537+5.9730601252537* (x[177])^2)+x[113] == 0.0)
@NLconstraint(m, e113, -sqrt(5.27154028712339+5.27154028712339* (x[178])^2)+x[114] == 0.0)
@NLconstraint(m, e114, -sqrt(4.66427794362012+4.66427794362012* (x[179])^2)+x[115] == 0.0)
@NLconstraint(m, e115, -sqrt(4.13707482669781+4.13707482669781* (x[180])^2)+x[116] == 0.0)
@NLconstraint(m, e116, -sqrt(3.67809378878012+3.67809378878012* (x[181])^2)+x[117] == 0.0)
@NLconstraint(m, e117, -sqrt(3.27743052810095+3.27743052810095* (x[182])^2)+x[118] == 0.0)
@NLconstraint(m, e118, -sqrt(2.92676922734499+2.92676922734499* (x[183])^2)+x[119] == 0.0)
@NLconstraint(m, e119, -sqrt(2.61910448657899+2.61910448657899* (x[184])^2)+x[120] == 0.0)
@NLconstraint(m, e120, -sqrt(2.34851586954992+2.34851586954992* (x[185])^2)+x[121] == 0.0)
@NLconstraint(m, e121, -sqrt(2.10998438876693+2.10998438876693* (x[186])^2)+x[122] == 0.0)
@NLconstraint(m, e122, -sqrt(1.89924256161383+1.89924256161383* (x[187])^2)+x[123] == 0.0)
@NLconstraint(m, e123, -sqrt(1.71265144856549+1.71265144856549* (x[188])^2)+x[124] == 0.0)
@NLconstraint(m, e124, -sqrt(1.54709946278868+1.54709946278868* (x[189])^2)+x[125] == 0.0)
@NLconstraint(m, e125, -sqrt(1.39991881312126+1.39991881312126* (x[190])^2)+x[126] == 0.0)
@NLconstraint(m, e126, -sqrt(1.26881628105478+1.26881628105478* (x[191])^2)+x[127] == 0.0)
@NLconstraint(m, e127, -sqrt(1.15181569077584+1.15181569077584* (x[192])^2)+x[128] == 0.0)
@NLconstraint(m, e128, -sqrt(1.04720995040502+1.04720995040502* (x[193])^2)+x[129] == 0.0)
@constraint(m, e129, -1.45519152283669E-11*x[66]-9.16770659387112E-10*x[67]-9.67702362686396E-9*x[68]-4.89962985739112E-8*x[69]-1.67769030667841E-7*x[70]-4.51560481451452E-7*x[71]-1.03308411780745E-6*x[72]-2.10267899092287E-6*x[73]-3.91878711525351E-6*x[74]-6.81843084748834E-6*x[75]-1.1227690265514E-5*x[76]-1.7672180547379E-5*x[77]-2.67875293502584E-5*x[78]-3.93298541894183E-5*x[79]-5.61862398171797E-5*x[80]-7.83852156018838E-5*x[81]-0.000107107232906856*x[82]-0.000143695142469369*x[83]-0.00018966467177961*x[84]-0.000246714902459644*x[85]-0.000316738747642376*x[86]-0.000401833429350518*x[87]-0.000504310955875553*x[88]-0.0006267085991567*x[89]-0.000771799372159876*x[90]-0.000942602506256662*x[91]-0.00114239392860327*x[92]-0.0013747167395195*x[93]-0.00164339168986771*x[94]-0.00195252765843179*x[95]-0.0023065321292961*x[96]-0.00271012166922446*x[97]-0.00316833240503911*x[98]-0.00368653050099965*x[99]-0.00427042263618205*x[100]-0.00492606648185756*x[101]-0.00565988117887173*x[102]-0.00647865781502333*x[103]-0.00738956990244333*x[104]-0.00840018385497387*x[105]-0.00951846946554724*x[106]-0.0107528103835648*x[107]-0.012112014592276*x[108]-0.0136053248861572*x[109]-0.0152424293482909*x[110]-0.0170334718277445*x[111]-0.0189890624169493*x[112]-0.0211202879290795*x[113]-0.0234387223754311*x[114]-0.025956437442801*x[115]-0.0286860129708657*x[116]-0.0316405474295607*x[117]-0.034833668396459*x[118]-0.0382795430341503*x[119]-0.04199288856762*x[120]-0.045988982761628*x[121]-0.0502836743980879*x[122]-0.0548933937534457*x[123]-0.059835163076059*x[124]-0.0651266070635756*x[125]-0.0707859633403132*x[126]-0.0768320929346373*x[127]-0.0832844907563413*x[128]-0.0901632960740244*x[129]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.