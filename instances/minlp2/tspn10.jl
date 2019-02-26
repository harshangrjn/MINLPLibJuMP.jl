using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
b_Idx = Any[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]
@variable(m, b[b_Idx])
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[42])
set_binary(b[49])
set_binary(b[45])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_binary(b[64])
set_binary(b[54])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[46])
set_binary(b[53])
set_binary(b[33])
set_binary(b[56])
set_binary(b[30])
set_binary(b[29])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[32])
set_binary(b[34])
set_binary(b[57])
set_binary(b[60])
set_lower_bound(x[10], 0.0)
set_binary(b[51])
set_binary(b[43])
set_binary(b[47])
set_binary(b[25])
set_binary(b[65])
set_binary(b[59])
set_binary(b[39])
set_binary(b[37])
set_binary(b[50])
set_binary(b[27])
set_binary(b[31])
set_binary(b[62])
set_binary(b[52])
set_binary(b[24])
set_binary(b[55])
set_binary(b[63])
set_binary(b[26])
set_lower_bound(x[1], 69.0)
set_upper_bound(x[1], 72.0)
set_lower_bound(x[2], 7.0)
set_upper_bound(x[2], 20.0)
set_lower_bound(x[3], 109.0)
set_upper_bound(x[3], 123.0)
set_lower_bound(x[4], 76.0)
set_upper_bound(x[4], 87.0)
set_lower_bound(x[5], 42.0)
set_upper_bound(x[5], 61.0)
set_lower_bound(x[6], 63.0)
set_upper_bound(x[6], 72.0)
set_lower_bound(x[7], 93.0)
set_upper_bound(x[7], 103.0)
set_lower_bound(x[8], 60.0)
set_upper_bound(x[8], 68.0)
set_lower_bound(x[9], 80.0)
set_upper_bound(x[9], 95.0)
set_upper_bound(x[10], 17.0)
set_lower_bound(x[11], 69.0)
set_upper_bound(x[11], 90.0)
set_lower_bound(x[12], 91.0)
set_upper_bound(x[12], 101.0)
set_lower_bound(x[13], 44.0)
set_upper_bound(x[13], 55.0)
set_lower_bound(x[14], 53.0)
set_upper_bound(x[14], 61.0)
set_lower_bound(x[15], 65.0)
set_upper_bound(x[15], 80.0)
set_lower_bound(x[16], 89.0)
set_upper_bound(x[16], 110.0)
set_lower_bound(x[17], 118.0)
set_upper_bound(x[17], 123.0)
set_lower_bound(x[18], 20.0)
set_upper_bound(x[18], 42.0)
set_lower_bound(x[19], 78.0)
set_upper_bound(x[19], 89.0)
set_lower_bound(x[20], 32.0)
set_upper_bound(x[20], 45.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt( (x[1]-x[3])^2+ (x[2]-x[4])^2)*b[21]+sqrt( (x[1]-x[5])^2+ (x[2]-x[6])^2)*b[22]+sqrt( (x[1]-x[7])^2+ (x[2]-x[8])^2)*b[23]+sqrt( (x[1]-x[9])^2+ (x[2]-x[10])^2)*b[24]+sqrt( (x[1]-x[11])^2+ (x[2]-x[12])^2)*b[25]+sqrt( (x[1]-x[13])^2+ (x[2]-x[14])^2)*b[26]+sqrt( (x[1]-x[15])^2+ (x[2]-x[16])^2)*b[27]+sqrt( (x[1]-x[17])^2+ (x[2]-x[18])^2)*b[28]+sqrt( (x[1]-x[19])^2+ (x[2]-x[20])^2)*b[29]+sqrt( (x[3]-x[5])^2+ (x[4]-x[6])^2)*b[30]+sqrt( (x[3]-x[7])^2+ (x[4]-x[8])^2)*b[31]+sqrt( (x[3]-x[9])^2+ (x[4]-x[10])^2)*b[32]+sqrt( (x[3]-x[11])^2+ (x[4]-x[12])^2)*b[33]+sqrt( (x[3]-x[13])^2+ (x[4]-x[14])^2)*b[34]+sqrt( (x[3]-x[15])^2+ (x[4]-x[16])^2)*b[35]+sqrt( (x[3]-x[17])^2+ (x[4]-x[18])^2)*b[36]+sqrt( (x[3]-x[19])^2+ (x[4]-x[20])^2)*b[37]+sqrt( (x[5]-x[7])^2+ (x[6]-x[8])^2)*b[38]+sqrt( (x[5]-x[9])^2+ (x[6]-x[10])^2)*b[39]+sqrt( (x[5]-x[11])^2+ (x[6]-x[12])^2)*b[40]+sqrt( (x[5]-x[13])^2+ (x[6]-x[14])^2)*b[41]+sqrt( (x[5]-x[15])^2+ (x[6]-x[16])^2)*b[42]+sqrt( (x[5]-x[17])^2+ (x[6]-x[18])^2)*b[43]+sqrt( (x[5]-x[19])^2+ (x[6]-x[20])^2)*b[44]+sqrt( (x[7]-x[9])^2+ (x[8]-x[10])^2)*b[45]+sqrt( (x[7]-x[11])^2+ (x[8]-x[12])^2)*b[46]+sqrt( (x[7]-x[13])^2+ (x[8]-x[14])^2)*b[47]+sqrt( (x[7]-x[15])^2+ (x[8]-x[16])^2)*b[48]+sqrt( (x[7]-x[17])^2+ (x[8]-x[18])^2)*b[49]+sqrt( (x[7]-x[19])^2+ (x[8]-x[20])^2)*b[50]+sqrt( (x[9]-x[11])^2+ (x[10]-x[12])^2)*b[51]+sqrt( (x[9]-x[13])^2+ (x[10]-x[14])^2)*b[52]+sqrt( (x[9]-x[15])^2+ (x[10]-x[16])^2)*b[53]+sqrt( (x[9]-x[17])^2+ (x[10]-x[18])^2)*b[54]+sqrt( (x[9]-x[19])^2+ (x[10]-x[20])^2)*b[55]+sqrt( (x[11]-x[13])^2+ (x[12]-x[14])^2)*b[56]+sqrt( (x[11]-x[15])^2+ (x[12]-x[16])^2)*b[57]+sqrt( (x[11]-x[17])^2+ (x[12]-x[18])^2)*b[58]+sqrt( (x[11]-x[19])^2+ (x[12]-x[20])^2)*b[59]+sqrt( (x[13]-x[15])^2+ (x[14]-x[16])^2)*b[60]+sqrt( (x[13]-x[17])^2+ (x[14]-x[18])^2)*b[61]+sqrt( (x[13]-x[19])^2+ (x[14]-x[20])^2)*b[62]+sqrt( (x[15]-x[17])^2+ (x[16]-x[18])^2)*b[63]+sqrt( (x[15]-x[19])^2+ (x[16]-x[20])^2)*b[64]+sqrt( (x[17]-x[19])^2+ (x[18]-x[20])^2)*b[65]-objvar == 0.0)
@NLconstraint(m, e2, 0.444444444444444* (x[1])^2-62.6666666666667*x[1]+0.0236686390532544* (x[2])^2-0.63905325443787*x[2] <= -2212.31360946746)
@NLconstraint(m, e3, 0.0204081632653061* (x[3])^2-4.73469387755102*x[3]+0.0330578512396694* (x[4])^2-5.38842975206612*x[4] <= -493.190757294653)
@NLconstraint(m, e4, 0.0110803324099723* (x[5])^2-1.14127423822715*x[5]+0.0493827160493827* (x[6])^2-6.66666666666667*x[6] <= -253.387811634349)
@NLconstraint(m, e5, 0.04* (x[7])^2-7.84*x[7]+0.0625* (x[8])^2-8*x[8] <= -639.16)
@NLconstraint(m, e6, 0.0177777777777778* (x[9])^2-3.11111111111111*x[9]+0.013840830449827* (x[10])^2-0.235294117647059*x[10] <= -136.111111111111)
@NLconstraint(m, e7, 0.0090702947845805* (x[11])^2-1.4421768707483*x[11]+0.04* (x[12])^2-7.68*x[12] <= -424.966530612245)
@NLconstraint(m, e8, 0.0330578512396694* (x[13])^2-3.27272727272727*x[13]+0.0625* (x[14])^2-7.125*x[14] <= -283.0625)
@NLconstraint(m, e9, 0.0177777777777778* (x[15])^2-2.57777777777778*x[15]+0.0090702947845805* (x[16])^2-1.80498866213152*x[16] <= -182.242630385488)
@NLconstraint(m, e10, 0.16* (x[17])^2-38.56*x[17]+0.00826446280991736* (x[18])^2-0.512396694214876*x[18] <= -2330.18214876033)
@NLconstraint(m, e11, 0.0330578512396694* (x[19])^2-5.52066115702479*x[19]+0.0236686390532544* (x[20])^2-1.82248520710059*x[20] <= -264.570443542472)
@constraint(m, e12, b[21]+b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[28]+b[29] == 2.0)
@constraint(m, e13, b[21]+b[30]+b[31]+b[32]+b[33]+b[34]+b[35]+b[36]+b[37] == 2.0)
@constraint(m, e14, b[22]+b[30]+b[38]+b[39]+b[40]+b[41]+b[42]+b[43]+b[44] == 2.0)
@constraint(m, e15, b[23]+b[31]+b[38]+b[45]+b[46]+b[47]+b[48]+b[49]+b[50] == 2.0)
@constraint(m, e16, b[24]+b[32]+b[39]+b[45]+b[51]+b[52]+b[53]+b[54]+b[55] == 2.0)
@constraint(m, e17, b[25]+b[33]+b[40]+b[46]+b[51]+b[56]+b[57]+b[58]+b[59] == 2.0)
@constraint(m, e18, b[26]+b[34]+b[41]+b[47]+b[52]+b[56]+b[60]+b[61]+b[62] == 2.0)
@constraint(m, e19, b[27]+b[35]+b[42]+b[48]+b[53]+b[57]+b[60]+b[63]+b[64] == 2.0)
@constraint(m, e20, b[28]+b[36]+b[43]+b[49]+b[54]+b[58]+b[61]+b[63]+b[65] == 2.0)
@constraint(m, e21, b[29]+b[37]+b[44]+b[50]+b[55]+b[59]+b[62]+b[64]+b[65] == 2.0)
@constraint(m, e22, b[24]+b[29]+b[55] <= 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.