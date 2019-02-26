using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127]
@variable(m, x[x_Idx])
set_lower_bound(x[107], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[104], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+x[1]*x[1]+x[2]*x[2]+x[3]*x[3]+x[4]*x[4]+x[5]*x[5]+x[6]*x[6]+x[7]*x[7]+x[8]*x[8]+x[9]*x[9]+x[10]*x[10])^2+ (x[1]*x[11]+x[2]*x[12]+x[3]*x[13]+x[4]*x[14]+x[5]*x[15]+x[6]*x[16]+x[7]*x[17]+x[8]*x[18]+x[9]*x[19]+x[10]*x[20])^2+ (x[1]*x[21]+x[2]*x[22]+x[3]*x[23]+x[4]*x[24]+x[5]*x[25]+x[6]*x[26]+x[7]*x[27]+x[8]*x[28]+x[9]*x[29]+x[10]*x[30])^2+ (x[1]*x[31]+x[2]*x[32]+x[3]*x[33]+x[4]*x[34]+x[5]*x[35]+x[6]*x[36]+x[7]*x[37]+x[8]*x[38]+x[9]*x[39]+x[10]*x[40])^2+ (x[1]*x[41]+x[2]*x[42]+x[3]*x[43]+x[4]*x[44]+x[5]*x[45]+x[6]*x[46]+x[7]*x[47]+x[8]*x[48]+x[9]*x[49]+x[10]*x[50])^2+ (x[1]*x[51]+x[2]*x[52]+x[3]*x[53]+x[4]*x[54]+x[5]*x[55]+x[6]*x[56]+x[7]*x[57]+x[8]*x[58]+x[9]*x[59]+x[10]*x[60])^2+ (x[1]*x[61]+x[2]*x[62]+x[3]*x[63]+x[4]*x[64]+x[5]*x[65]+x[6]*x[66]+x[7]*x[67]+x[8]*x[68]+x[9]*x[69]+x[10]*x[70])^2+ (x[1]*x[71]+x[2]*x[72]+x[3]*x[73]+x[4]*x[74]+x[5]*x[75]+x[6]*x[76]+x[7]*x[77]+x[8]*x[78]+x[9]*x[79]+x[10]*x[80])^2+ (x[1]*x[81]+x[2]*x[82]+x[3]*x[83]+x[4]*x[84]+x[5]*x[85]+x[6]*x[86]+x[7]*x[87]+x[8]*x[88]+x[9]*x[89]+x[10]*x[90])^2+ (x[1]*x[91]+x[2]*x[92]+x[3]*x[93]+x[4]*x[94]+x[5]*x[95]+x[6]*x[96]+x[7]*x[97]+x[8]*x[98]+x[9]*x[99]+x[10]*x[100])^2+ ((-1)+x[11]*x[11]+x[12]*x[12]+x[13]*x[13]+x[14]*x[14]+x[15]*x[15]+x[16]*x[16]+x[17]*x[17]+x[18]*x[18]+x[19]*x[19]+x[20]*x[20])^2+ (x[11]*x[21]+x[12]*x[22]+x[13]*x[23]+x[14]*x[24]+x[15]*x[25]+x[16]*x[26]+x[17]*x[27]+x[18]*x[28]+x[19]*x[29]+x[20]*x[30])^2+ (x[11]*x[31]+x[12]*x[32]+x[13]*x[33]+x[14]*x[34]+x[15]*x[35]+x[16]*x[36]+x[17]*x[37]+x[18]*x[38]+x[19]*x[39]+x[20]*x[40])^2+ (x[11]*x[41]+x[12]*x[42]+x[13]*x[43]+x[14]*x[44]+x[15]*x[45]+x[16]*x[46]+x[17]*x[47]+x[18]*x[48]+x[19]*x[49]+x[20]*x[50])^2+ (x[11]*x[51]+x[12]*x[52]+x[13]*x[53]+x[14]*x[54]+x[15]*x[55]+x[16]*x[56]+x[17]*x[57]+x[18]*x[58]+x[19]*x[59]+x[20]*x[60])^2+ (x[11]*x[61]+x[12]*x[62]+x[13]*x[63]+x[14]*x[64]+x[15]*x[65]+x[16]*x[66]+x[17]*x[67]+x[18]*x[68]+x[19]*x[69]+x[20]*x[70])^2+ (x[11]*x[71]+x[12]*x[72]+x[13]*x[73]+x[14]*x[74]+x[15]*x[75]+x[16]*x[76]+x[17]*x[77]+x[18]*x[78]+x[19]*x[79]+x[20]*x[80])^2+ (x[11]*x[81]+x[12]*x[82]+x[13]*x[83]+x[14]*x[84]+x[15]*x[85]+x[16]*x[86]+x[17]*x[87]+x[18]*x[88]+x[19]*x[89]+x[20]*x[90])^2+ (x[11]*x[91]+x[12]*x[92]+x[13]*x[93]+x[14]*x[94]+x[15]*x[95]+x[16]*x[96]+x[17]*x[97]+x[18]*x[98]+x[19]*x[99]+x[20]*x[100])^2+ ((-1)+x[21]*x[21]+x[22]*x[22]+x[23]*x[23]+x[24]*x[24]+x[25]*x[25]+x[26]*x[26]+x[27]*x[27]+x[28]*x[28]+x[29]*x[29]+x[30]*x[30])^2+ (x[21]*x[31]+x[22]*x[32]+x[23]*x[33]+x[24]*x[34]+x[25]*x[35]+x[26]*x[36]+x[27]*x[37]+x[28]*x[38]+x[29]*x[39]+x[30]*x[40])^2+ (x[21]*x[41]+x[22]*x[42]+x[23]*x[43]+x[24]*x[44]+x[25]*x[45]+x[26]*x[46]+x[27]*x[47]+x[28]*x[48]+x[29]*x[49]+x[30]*x[50])^2+ (x[21]*x[51]+x[22]*x[52]+x[23]*x[53]+x[24]*x[54]+x[25]*x[55]+x[26]*x[56]+x[27]*x[57]+x[28]*x[58]+x[29]*x[59]+x[30]*x[60])^2+ (x[21]*x[61]+x[22]*x[62]+x[23]*x[63]+x[24]*x[64]+x[25]*x[65]+x[26]*x[66]+x[27]*x[67]+x[28]*x[68]+x[29]*x[69]+x[30]*x[70])^2+ (x[21]*x[71]+x[22]*x[72]+x[23]*x[73]+x[24]*x[74]+x[25]*x[75]+x[26]*x[76]+x[27]*x[77]+x[28]*x[78]+x[29]*x[79]+x[30]*x[80])^2+ (x[21]*x[81]+x[22]*x[82]+x[23]*x[83]+x[24]*x[84]+x[25]*x[85]+x[26]*x[86]+x[27]*x[87]+x[28]*x[88]+x[29]*x[89]+x[30]*x[90])^2+ (x[21]*x[91]+x[22]*x[92]+x[23]*x[93]+x[24]*x[94]+x[25]*x[95]+x[26]*x[96]+x[27]*x[97]+x[28]*x[98]+x[29]*x[99]+x[30]*x[100])^2+ ((-1)+x[31]*x[31]+x[32]*x[32]+x[33]*x[33]+x[34]*x[34]+x[35]*x[35]+x[36]*x[36]+x[37]*x[37]+x[38]*x[38]+x[39]*x[39]+x[40]*x[40])^2+ (x[31]*x[41]+x[32]*x[42]+x[33]*x[43]+x[34]*x[44]+x[35]*x[45]+x[36]*x[46]+x[37]*x[47]+x[38]*x[48]+x[39]*x[49]+x[40]*x[50])^2+ (x[31]*x[51]+x[32]*x[52]+x[33]*x[53]+x[34]*x[54]+x[35]*x[55]+x[36]*x[56]+x[37]*x[57]+x[38]*x[58]+x[39]*x[59]+x[40]*x[60])^2+ (x[31]*x[61]+x[32]*x[62]+x[33]*x[63]+x[34]*x[64]+x[35]*x[65]+x[36]*x[66]+x[37]*x[67]+x[38]*x[68]+x[39]*x[69]+x[40]*x[70])^2+ (x[31]*x[71]+x[32]*x[72]+x[33]*x[73]+x[34]*x[74]+x[35]*x[75]+x[36]*x[76]+x[37]*x[77]+x[38]*x[78]+x[39]*x[79]+x[40]*x[80])^2+ (x[31]*x[81]+x[32]*x[82]+x[33]*x[83]+x[34]*x[84]+x[35]*x[85]+x[36]*x[86]+x[37]*x[87]+x[38]*x[88]+x[39]*x[89]+x[40]*x[90])^2+ (x[31]*x[91]+x[32]*x[92]+x[33]*x[93]+x[34]*x[94]+x[35]*x[95]+x[36]*x[96]+x[37]*x[97]+x[38]*x[98]+x[39]*x[99]+x[40]*x[100])^2+ ((-1)+x[41]*x[41]+x[42]*x[42]+x[43]*x[43]+x[44]*x[44]+x[45]*x[45]+x[46]*x[46]+x[47]*x[47]+x[48]*x[48]+x[49]*x[49]+x[50]*x[50])^2+ (x[41]*x[51]+x[42]*x[52]+x[43]*x[53]+x[44]*x[54]+x[45]*x[55]+x[46]*x[56]+x[47]*x[57]+x[48]*x[58]+x[49]*x[59]+x[50]*x[60])^2+ (x[41]*x[61]+x[42]*x[62]+x[43]*x[63]+x[44]*x[64]+x[45]*x[65]+x[46]*x[66]+x[47]*x[67]+x[48]*x[68]+x[49]*x[69]+x[50]*x[70])^2+ (x[41]*x[71]+x[42]*x[72]+x[43]*x[73]+x[44]*x[74]+x[45]*x[75]+x[46]*x[76]+x[47]*x[77]+x[48]*x[78]+x[49]*x[79]+x[50]*x[80])^2+ (x[41]*x[81]+x[42]*x[82]+x[43]*x[83]+x[44]*x[84]+x[45]*x[85]+x[46]*x[86]+x[47]*x[87]+x[48]*x[88]+x[49]*x[89]+x[50]*x[90])^2+ (x[41]*x[91]+x[42]*x[92]+x[43]*x[93]+x[44]*x[94]+x[45]*x[95]+x[46]*x[96]+x[47]*x[97]+x[48]*x[98]+x[49]*x[99]+x[50]*x[100])^2+ ((-1)+x[51]*x[51]+x[52]*x[52]+x[53]*x[53]+x[54]*x[54]+x[55]*x[55]+x[56]*x[56]+x[57]*x[57]+x[58]*x[58]+x[59]*x[59]+x[60]*x[60])^2+ (x[51]*x[61]+x[52]*x[62]+x[53]*x[63]+x[54]*x[64]+x[55]*x[65]+x[56]*x[66]+x[57]*x[67]+x[58]*x[68]+x[59]*x[69]+x[60]*x[70])^2+ (x[51]*x[71]+x[52]*x[72]+x[53]*x[73]+x[54]*x[74]+x[55]*x[75]+x[56]*x[76]+x[57]*x[77]+x[58]*x[78]+x[59]*x[79]+x[60]*x[80])^2+ (x[51]*x[81]+x[52]*x[82]+x[53]*x[83]+x[54]*x[84]+x[55]*x[85]+x[56]*x[86]+x[57]*x[87]+x[58]*x[88]+x[59]*x[89]+x[60]*x[90])^2+ (x[51]*x[91]+x[52]*x[92]+x[53]*x[93]+x[54]*x[94]+x[55]*x[95]+x[56]*x[96]+x[57]*x[97]+x[58]*x[98]+x[59]*x[99]+x[60]*x[100])^2+ ((-1)+x[61]*x[61]+x[62]*x[62]+x[63]*x[63]+x[64]*x[64]+x[65]*x[65]+x[66]*x[66]+x[67]*x[67]+x[68]*x[68]+x[69]*x[69]+x[70]*x[70])^2+ (x[61]*x[71]+x[62]*x[72]+x[63]*x[73]+x[64]*x[74]+x[65]*x[75]+x[66]*x[76]+x[67]*x[77]+x[68]*x[78]+x[69]*x[79]+x[70]*x[80])^2+ (x[61]*x[81]+x[62]*x[82]+x[63]*x[83]+x[64]*x[84]+x[65]*x[85]+x[66]*x[86]+x[67]*x[87]+x[68]*x[88]+x[69]*x[89]+x[70]*x[90])^2+ (x[61]*x[91]+x[62]*x[92]+x[63]*x[93]+x[64]*x[94]+x[65]*x[95]+x[66]*x[96]+x[67]*x[97]+x[68]*x[98]+x[69]*x[99]+x[70]*x[100])^2+ ((-1)+x[71]*x[71]+x[72]*x[72]+x[73]*x[73]+x[74]*x[74]+x[75]*x[75]+x[76]*x[76]+x[77]*x[77]+x[78]*x[78]+x[79]*x[79]+x[80]*x[80])^2+ (x[71]*x[81]+x[72]*x[82]+x[73]*x[83]+x[74]*x[84]+x[75]*x[85]+x[76]*x[86]+x[77]*x[87]+x[78]*x[88]+x[79]*x[89]+x[80]*x[90])^2+ (x[71]*x[91]+x[72]*x[92]+x[73]*x[93]+x[74]*x[94]+x[75]*x[95]+x[76]*x[96]+x[77]*x[97]+x[78]*x[98]+x[79]*x[99]+x[80]*x[100])^2+ ((-1)+x[81]*x[81]+x[82]*x[82]+x[83]*x[83]+x[84]*x[84]+x[85]*x[85]+x[86]*x[86]+x[87]*x[87]+x[88]*x[88]+x[89]*x[89]+x[90]*x[90])^2+ (x[81]*x[91]+x[82]*x[92]+x[83]*x[93]+x[84]*x[94]+x[85]*x[95]+x[86]*x[96]+x[87]*x[97]+x[88]*x[98]+x[89]*x[99]+x[90]*x[100])^2+ ((-1)+x[91]*x[91]+x[92]*x[92]+x[93]*x[93]+x[94]*x[94]+x[95]*x[95]+x[96]*x[96]+x[97]*x[97]+x[98]*x[98]+x[99]*x[99]+x[100]*x[100])^2+ ((-0.2)+x[1]*x[101])^2+ (x[1]*x[102]+x[2]*x[104])^2+ (x[1]*x[103]+x[2]*x[105]+x[3]*x[107])^2+ (x[2]*x[106]+x[3]*x[108]+x[4]*x[110])^2+ (x[3]*x[109]+x[4]*x[111]+x[5]*x[113])^2+ (x[4]*x[112]+x[5]*x[114]+x[6]*x[116])^2+ (x[5]*x[115]+x[6]*x[117]+x[7]*x[119])^2+ (x[6]*x[118]+x[7]*x[120]+x[8]*x[122])^2+ (x[7]*x[121]+x[8]*x[123]+x[9]*x[125])^2+ (x[8]*x[124]+x[9]*x[126]+x[10]*x[127])^2+ (0.1+x[11]*x[101])^2+ ((-0.4)+x[11]*x[102]+x[12]*x[104])^2+ (0.1+x[11]*x[103]+x[12]*x[105]+x[13]*x[107])^2+ (x[12]*x[106]+x[13]*x[108]+x[14]*x[110])^2+ (x[13]*x[109]+x[14]*x[111]+x[15]*x[113])^2+ (x[14]*x[112]+x[15]*x[114]+x[16]*x[116])^2+ (x[15]*x[115]+x[16]*x[117]+x[17]*x[119])^2+ (x[16]*x[118]+x[17]*x[120]+x[18]*x[122])^2+ (x[17]*x[121]+x[18]*x[123]+x[19]*x[125])^2+ (x[18]*x[124]+x[19]*x[126]+x[20]*x[127])^2+ (x[21]*x[101])^2+ (0.2+x[21]*x[102]+x[22]*x[104])^2+ ((-0.6)+x[21]*x[103]+x[22]*x[105]+x[23]*x[107])^2+ (0.2+x[22]*x[106]+x[23]*x[108]+x[24]*x[110])^2+ (x[23]*x[109]+x[24]*x[111]+x[25]*x[113])^2+ (x[24]*x[112]+x[25]*x[114]+x[26]*x[116])^2+ (x[25]*x[115]+x[26]*x[117]+x[27]*x[119])^2+ (x[26]*x[118]+x[27]*x[120]+x[28]*x[122])^2+ (x[27]*x[121]+x[28]*x[123]+x[29]*x[125])^2+ (x[28]*x[124]+x[29]*x[126]+x[30]*x[127])^2+ (x[31]*x[101])^2+ (x[31]*x[102]+x[32]*x[104])^2+ (0.3+x[31]*x[103]+x[32]*x[105]+x[33]*x[107])^2+ ((-0.8)+x[32]*x[106]+x[33]*x[108]+x[34]*x[110])^2+ (0.3+x[33]*x[109]+x[34]*x[111]+x[35]*x[113])^2+ (x[34]*x[112]+x[35]*x[114]+x[36]*x[116])^2+ (x[35]*x[115]+x[36]*x[117]+x[37]*x[119])^2+ (x[36]*x[118]+x[37]*x[120]+x[38]*x[122])^2+ (x[37]*x[121]+x[38]*x[123]+x[39]*x[125])^2+ (x[38]*x[124]+x[39]*x[126]+x[40]*x[127])^2+ (x[41]*x[101])^2+ (x[41]*x[102]+x[42]*x[104])^2+ (x[41]*x[103]+x[42]*x[105]+x[43]*x[107])^2+ (0.4+x[42]*x[106]+x[43]*x[108]+x[44]*x[110])^2+ ((-1)+x[43]*x[109]+x[44]*x[111]+x[45]*x[113])^2+ (0.4+x[44]*x[112]+x[45]*x[114]+x[46]*x[116])^2+ (x[45]*x[115]+x[46]*x[117]+x[47]*x[119])^2+ (x[46]*x[118]+x[47]*x[120]+x[48]*x[122])^2+ (x[47]*x[121]+x[48]*x[123]+x[49]*x[125])^2+ (x[48]*x[124]+x[49]*x[126]+x[50]*x[127])^2+ (x[51]*x[101])^2+ (x[51]*x[102]+x[52]*x[104])^2+ (x[51]*x[103]+x[52]*x[105]+x[53]*x[107])^2+ (x[52]*x[106]+x[53]*x[108]+x[54]*x[110])^2+ (0.5+x[53]*x[109]+x[54]*x[111]+x[55]*x[113])^2+ ((-1.2)+x[54]*x[112]+x[55]*x[114]+x[56]*x[116])^2+ (0.5+x[55]*x[115]+x[56]*x[117]+x[57]*x[119])^2+ (x[56]*x[118]+x[57]*x[120]+x[58]*x[122])^2+ (x[57]*x[121]+x[58]*x[123]+x[59]*x[125])^2+ (x[58]*x[124]+x[59]*x[126]+x[60]*x[127])^2+ (x[61]*x[101])^2+ (x[61]*x[102]+x[62]*x[104])^2+ (x[61]*x[103]+x[62]*x[105]+x[63]*x[107])^2+ (x[62]*x[106]+x[63]*x[108]+x[64]*x[110])^2+ (x[63]*x[109]+x[64]*x[111]+x[65]*x[113])^2+ (0.6+x[64]*x[112]+x[65]*x[114]+x[66]*x[116])^2+ ((-1.4)+x[65]*x[115]+x[66]*x[117]+x[67]*x[119])^2+ (0.6+x[66]*x[118]+x[67]*x[120]+x[68]*x[122])^2+ (x[67]*x[121]+x[68]*x[123]+x[69]*x[125])^2+ (x[68]*x[124]+x[69]*x[126]+x[70]*x[127])^2+ (x[71]*x[101])^2+ (x[71]*x[102]+x[72]*x[104])^2+ (x[71]*x[103]+x[72]*x[105]+x[73]*x[107])^2+ (x[72]*x[106]+x[73]*x[108]+x[74]*x[110])^2+ (x[73]*x[109]+x[74]*x[111]+x[75]*x[113])^2+ (x[74]*x[112]+x[75]*x[114]+x[76]*x[116])^2+ (0.7+x[75]*x[115]+x[76]*x[117]+x[77]*x[119])^2+ ((-1.6)+x[76]*x[118]+x[77]*x[120]+x[78]*x[122])^2+ (0.7+x[77]*x[121]+x[78]*x[123]+x[79]*x[125])^2+ (x[78]*x[124]+x[79]*x[126]+x[80]*x[127])^2+ (x[81]*x[101])^2+ (x[81]*x[102]+x[82]*x[104])^2+ (x[81]*x[103]+x[82]*x[105]+x[83]*x[107])^2+ (x[82]*x[106]+x[83]*x[108]+x[84]*x[110])^2+ (x[83]*x[109]+x[84]*x[111]+x[85]*x[113])^2+ (x[84]*x[112]+x[85]*x[114]+x[86]*x[116])^2+ (x[85]*x[115]+x[86]*x[117]+x[87]*x[119])^2+ (0.8+x[86]*x[118]+x[87]*x[120]+x[88]*x[122])^2+ ((-1.8)+x[87]*x[121]+x[88]*x[123]+x[89]*x[125])^2+ (0.8+x[88]*x[124]+x[89]*x[126]+x[90]*x[127])^2+ (x[91]*x[101])^2+ (x[91]*x[102]+x[92]*x[104])^2+ (x[91]*x[103]+x[92]*x[105]+x[93]*x[107])^2+ (x[92]*x[106]+x[93]*x[108]+x[94]*x[110])^2+ (x[93]*x[109]+x[94]*x[111]+x[95]*x[113])^2+ (x[94]*x[112]+x[95]*x[114]+x[96]*x[116])^2+ (x[95]*x[115]+x[96]*x[117]+x[97]*x[119])^2+ (x[96]*x[118]+x[97]*x[120]+x[98]*x[122])^2+ (0.9+x[97]*x[121]+x[98]*x[123]+x[99]*x[125])^2+ ((-20)+x[98]*x[124]+x[99]*x[126]+x[100]*x[127])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.