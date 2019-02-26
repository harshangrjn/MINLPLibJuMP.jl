using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
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
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
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
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2+ (x[10])^2+ (x[11])^2+ (x[12])^2+ (x[13])^2+ (x[14])^2+ (x[15])^2+ (x[16])^2+ (x[17])^2+ (x[18])^2+ (x[19])^2+ (x[20])^2+ (x[21])^2+ (x[22])^2+ (x[23])^2+ (x[24])^2+ (x[25])^2+ (x[26])^2+ (x[27])^2+ (x[28])^2+ (x[29])^2+ (x[30])^2+ (x[31])^2+ (x[32])^2+ (x[33])^2+ (x[34])^2+ (x[35])^2+ (x[36])^2+ (x[37])^2+ (x[38])^2+ (x[39])^2+ (x[40])^2+ (x[41])^2+ (x[42])^2+ (x[43])^2+ (x[44])^2+ (x[45])^2+ (x[46])^2+ (x[47])^2+ (x[48])^2+ (x[49])^2+ (x[50])^2+ (x[51])^2+ (x[52])^2+ (x[53])^2+ (x[54])^2+ (x[55])^2+ (x[56])^2+ (x[57])^2+ (x[58])^2+ (x[59])^2+ (x[60])^2+ (x[61])^2+ (x[62])^2+ (x[63])^2+ (x[64])^2+ (x[65])^2+ (x[66])^2+ (x[67])^2+ (x[68])^2+ (x[69])^2+ (x[70])^2+ (x[71])^2+ (x[72])^2+ (x[73])^2+ (x[74])^2+ (x[75])^2+ (x[76])^2+ (x[77])^2+ (x[78])^2+ (x[79])^2+ (x[80])^2+ (x[81])^2+ (x[82])^2+ (x[83])^2+ (x[84])^2+ (x[85])^2+ (x[86])^2+ (x[87])^2+ (x[88])^2+ (x[89])^2+ (x[90])^2+ (x[91])^2+ (x[92])^2+ (x[93])^2+ (x[94])^2+ (x[95])^2+ (x[96])^2+ (x[97])^2+ (x[98])^2+ (x[99])^2+ (x[100])^2+ (0.5*x[1]+x[2]+1.5*x[3]+2*x[4]+2.5*x[5]+3*x[6]+3.5*x[7]+4*x[8]+4.5*x[9]+5*x[10]+5.5*x[11]+6*x[12]+6.5*x[13]+7*x[14]+7.5*x[15]+8*x[16]+8.5*x[17]+9*x[18]+9.5*x[19]+10*x[20]+10.5*x[21]+11*x[22]+11.5*x[23]+12*x[24]+12.5*x[25]+13*x[26]+13.5*x[27]+14*x[28]+14.5*x[29]+15*x[30]+15.5*x[31]+16*x[32]+16.5*x[33]+17*x[34]+17.5*x[35]+18*x[36]+18.5*x[37]+19*x[38]+19.5*x[39]+20*x[40]+20.5*x[41]+21*x[42]+21.5*x[43]+22*x[44]+22.5*x[45]+23*x[46]+23.5*x[47]+24*x[48]+24.5*x[49]+25*x[50]+25.5*x[51]+26*x[52]+26.5*x[53]+27*x[54]+27.5*x[55]+28*x[56]+28.5*x[57]+29*x[58]+29.5*x[59]+30*x[60]+30.5*x[61]+31*x[62]+31.5*x[63]+32*x[64]+32.5*x[65]+33*x[66]+33.5*x[67]+34*x[68]+34.5*x[69]+35*x[70]+35.5*x[71]+36*x[72]+36.5*x[73]+37*x[74]+37.5*x[75]+38*x[76]+38.5*x[77]+39*x[78]+39.5*x[79]+40*x[80]+40.5*x[81]+41*x[82]+41.5*x[83]+42*x[84]+42.5*x[85]+43*x[86]+43.5*x[87]+44*x[88]+44.5*x[89]+45*x[90]+45.5*x[91]+46*x[92]+46.5*x[93]+47*x[94]+47.5*x[95]+48*x[96]+48.5*x[97]+49*x[98]+49.5*x[99]+50*x[100])^2+ (0.5*x[1]+x[2]+1.5*x[3]+2*x[4]+2.5*x[5]+3*x[6]+3.5*x[7]+4*x[8]+4.5*x[9]+5*x[10]+5.5*x[11]+6*x[12]+6.5*x[13]+7*x[14]+7.5*x[15]+8*x[16]+8.5*x[17]+9*x[18]+9.5*x[19]+10*x[20]+10.5*x[21]+11*x[22]+11.5*x[23]+12*x[24]+12.5*x[25]+13*x[26]+13.5*x[27]+14*x[28]+14.5*x[29]+15*x[30]+15.5*x[31]+16*x[32]+16.5*x[33]+17*x[34]+17.5*x[35]+18*x[36]+18.5*x[37]+19*x[38]+19.5*x[39]+20*x[40]+20.5*x[41]+21*x[42]+21.5*x[43]+22*x[44]+22.5*x[45]+23*x[46]+23.5*x[47]+24*x[48]+24.5*x[49]+25*x[50]+25.5*x[51]+26*x[52]+26.5*x[53]+27*x[54]+27.5*x[55]+28*x[56]+28.5*x[57]+29*x[58]+29.5*x[59]+30*x[60]+30.5*x[61]+31*x[62]+31.5*x[63]+32*x[64]+32.5*x[65]+33*x[66]+33.5*x[67]+34*x[68]+34.5*x[69]+35*x[70]+35.5*x[71]+36*x[72]+36.5*x[73]+37*x[74]+37.5*x[75]+38*x[76]+38.5*x[77]+39*x[78]+39.5*x[79]+40*x[80]+40.5*x[81]+41*x[82]+41.5*x[83]+42*x[84]+42.5*x[85]+43*x[86]+43.5*x[87]+44*x[88]+44.5*x[89]+45*x[90]+45.5*x[91]+46*x[92]+46.5*x[93]+47*x[94]+47.5*x[95]+48*x[96]+48.5*x[97]+49*x[98]+49.5*x[99]+50*x[100])^4)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.