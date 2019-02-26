using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 430.293* (x[109])^2+2000*x[109]+2500* (x[110])^2+2000*x[110]+100* (x[111])^2+4000*x[111]+100* (x[112])^2+4000*x[112]+100* (x[113])^2+4000*x[113]-objvar == 0.0)
@NLconstraint(m, e2, 1.1350191923074*x[2]*x[3]*cos(x[96]-x[97])-1.1350191923074* (x[2])^2-4.78186315175772*x[2]*x[3]*sin(x[96]-x[97])+x[15] == 0.0)
@NLconstraint(m, e3, 1.1350191923074*x[3]*x[2]*cos(x[97]-x[96])-1.1350191923074* (x[3])^2-4.78186315175772*x[3]*x[2]*sin(x[97]-x[96])+x[16] == 0.0)
@NLconstraint(m, e4, -9.09008271975275*x[7]*x[9]*sin(x[101]-x[103])+x[17] == 0.0)
@NLconstraint(m, e5, -9.09008271975275*x[9]*x[7]*sin(x[103]-x[101])+x[18] == 0.0)
@NLconstraint(m, e6, 1.8808847537004*x[10]*x[11]*cos(x[104]-x[105])-1.8808847537004* (x[10])^2-4.40294374946052*x[10]*x[11]*sin(x[104]-x[105])+x[19] == 0.0)
@NLconstraint(m, e7, 1.8808847537004*x[11]*x[10]*cos(x[105]-x[104])-1.8808847537004* (x[11])^2-4.40294374946052*x[11]*x[10]*sin(x[105]-x[104])+x[20] == 0.0)
@NLconstraint(m, e8, -4.78194338179036*x[4]*x[7]*sin(x[98]-x[101])+x[21] == 0.0)
@NLconstraint(m, e9, -4.78194338179036*x[7]*x[4]*sin(x[101]-x[98])+x[22] == 0.0)
@NLconstraint(m, e10, -3.96793905245615*x[5]*x[6]*sin(x[99]-x[100])+x[23] == 0.0)
@NLconstraint(m, e11, -3.96793905245615*x[6]*x[5]*sin(x[100]-x[99])+x[24] == 0.0)
@NLconstraint(m, e12, 1.42400548701993*x[9]*x[14]*cos(x[103]-x[108])-1.42400548701993* (x[9])^2-3.0290504569306*x[9]*x[14]*sin(x[103]-x[108])+x[25] == 0.0)
@NLconstraint(m, e13, 1.42400548701993*x[14]*x[9]*cos(x[108]-x[103])-1.42400548701993* (x[14])^2-3.0290504569306*x[14]*x[9]*sin(x[108]-x[103])+x[26] == 0.0)
@NLconstraint(m, e14, 6.84098066149567*x[4]*x[5]*cos(x[98]-x[99])-6.84098066149567* (x[4])^2-21.5785539816916*x[4]*x[5]*sin(x[98]-x[99])+x[27] == 0.0)
@NLconstraint(m, e15, 6.84098066149567*x[5]*x[4]*cos(x[99]-x[98])-6.84098066149567* (x[5])^2-21.5785539816916*x[5]*x[4]*sin(x[99]-x[98])+x[28] == 0.0)
@NLconstraint(m, e16, 3.09892740383799*x[6]*x[13]*cos(x[100]-x[107])-3.09892740383799* (x[6])^2-6.10275544819311*x[6]*x[13]*sin(x[100]-x[107])+x[29] == 0.0)
@NLconstraint(m, e17, 3.09892740383799*x[13]*x[6]*cos(x[107]-x[100])-3.09892740383799* (x[13])^2-6.10275544819311*x[13]*x[6]*sin(x[107]-x[100])+x[30] == 0.0)
@NLconstraint(m, e18, -5.67697984672154*x[7]*x[8]*sin(x[101]-x[102])+x[31] == 0.0)
@NLconstraint(m, e19, -5.67697984672154*x[8]*x[7]*sin(x[102]-x[101])+x[32] == 0.0)
@NLconstraint(m, e20, 1.13699415780633*x[13]*x[14]*cos(x[107]-x[108])-1.13699415780633* (x[13])^2-2.31496347510535*x[13]*x[14]*sin(x[107]-x[108])+x[33] == 0.0)
@NLconstraint(m, e21, 1.13699415780633*x[14]*x[13]*cos(x[108]-x[107])-1.13699415780633* (x[14])^2-2.31496347510535*x[14]*x[13]*sin(x[108]-x[107])+x[34] == 0.0)
@NLconstraint(m, e22, 1.52596744045097*x[6]*x[12]*cos(x[100]-x[106])-1.52596744045097* (x[6])^2-3.1759639650294*x[6]*x[12]*sin(x[100]-x[106])+x[35] == 0.0)
@NLconstraint(m, e23, 1.52596744045097*x[12]*x[6]*cos(x[106]-x[100])-1.52596744045097* (x[12])^2-3.1759639650294*x[12]*x[6]*sin(x[106]-x[100])+x[36] == 0.0)
@NLconstraint(m, e24, 1.95502856317726*x[6]*x[11]*cos(x[100]-x[105])-1.95502856317726* (x[6])^2-4.09407434424044*x[6]*x[11]*sin(x[100]-x[105])+x[37] == 0.0)
@NLconstraint(m, e25, 1.95502856317726*x[11]*x[6]*cos(x[105]-x[100])-1.95502856317726* (x[11])^2-4.09407434424044*x[11]*x[6]*sin(x[105]-x[100])+x[38] == 0.0)
@NLconstraint(m, e26, 2.48902458682192*x[12]*x[13]*cos(x[106]-x[107])-2.48902458682192* (x[12])^2-2.25197462617221*x[12]*x[13]*sin(x[106]-x[107])+x[39] == 0.0)
@NLconstraint(m, e27, 2.48902458682192*x[13]*x[12]*cos(x[107]-x[106])-2.48902458682192* (x[13])^2-2.25197462617221*x[13]*x[12]*sin(x[107]-x[106])+x[40] == 0.0)
@NLconstraint(m, e28, 1.02589745497019*x[1]*x[5]*cos(x[95]-x[99])-1.02589745497019* (x[1])^2-4.23498368233483*x[1]*x[5]*sin(x[95]-x[99])+x[41] == 0.0)
@NLconstraint(m, e29, 1.02589745497019*x[5]*x[1]*cos(x[99]-x[95])-1.02589745497019* (x[5])^2-4.23498368233483*x[5]*x[1]*sin(x[99]-x[95])+x[42] == 0.0)
@NLconstraint(m, e30, 3.90204955244743*x[9]*x[10]*cos(x[103]-x[104])-3.90204955244743* (x[9])^2-10.3653941270609*x[9]*x[10]*sin(x[103]-x[104])+x[43] == 0.0)
@NLconstraint(m, e31, 3.90204955244743*x[10]*x[9]*cos(x[104]-x[103])-3.90204955244743* (x[10])^2-10.3653941270609*x[10]*x[9]*sin(x[104]-x[103])+x[44] == 0.0)
@NLconstraint(m, e32, 4.99913160079803*x[1]*x[2]*cos(x[95]-x[96])-4.99913160079803* (x[1])^2-15.2630865231796*x[1]*x[2]*sin(x[95]-x[96])+x[45] == 0.0)
@NLconstraint(m, e33, 4.99913160079803*x[2]*x[1]*cos(x[96]-x[95])-4.99913160079803* (x[2])^2-15.2630865231796*x[2]*x[1]*sin(x[96]-x[95])+x[46] == 0.0)
@NLconstraint(m, e34, 1.7011396670944*x[2]*x[5]*cos(x[96]-x[99])-1.7011396670944* (x[2])^2-5.19392739796971*x[2]*x[5]*sin(x[96]-x[99])+x[47] == 0.0)
@NLconstraint(m, e35, 1.7011396670944*x[5]*x[2]*cos(x[99]-x[96])-1.7011396670944* (x[5])^2-5.19392739796971*x[5]*x[2]*sin(x[99]-x[96])+x[48] == 0.0)
@NLconstraint(m, e36, 1.98597570992556*x[3]*x[4]*cos(x[97]-x[98])-1.98597570992556* (x[3])^2-5.06881697759392*x[3]*x[4]*sin(x[97]-x[98])+x[49] == 0.0)
@NLconstraint(m, e37, 1.98597570992556*x[4]*x[3]*cos(x[98]-x[97])-1.98597570992556* (x[4])^2-5.06881697759392*x[4]*x[3]*sin(x[98]-x[97])+x[50] == 0.0)
@NLconstraint(m, e38, -1.79797907152361*x[4]*x[9]*sin(x[98]-x[103])+x[51] == 0.0)
@NLconstraint(m, e39, -1.79797907152361*x[9]*x[4]*sin(x[103]-x[98])+x[52] == 0.0)
@NLconstraint(m, e40, 1.68603315061494*x[2]*x[4]*cos(x[96]-x[98])-1.68603315061494* (x[2])^2-5.11583832587208*x[2]*x[4]*sin(x[96]-x[98])+x[53] == 0.0)
@NLconstraint(m, e41, 1.68603315061494*x[4]*x[2]*cos(x[98]-x[96])-1.68603315061494* (x[4])^2-5.11583832587208*x[4]*x[2]*sin(x[98]-x[96])+x[54] == 0.0)
@NLconstraint(m, e42, 4.78186315175772*x[2]*x[3]*cos(x[96]-x[97])-4.75996315175772* (x[2])^2+1.1350191923074*x[2]*x[3]*sin(x[96]-x[97])+x[55] == 0.0)
@NLconstraint(m, e43, 4.78186315175772*x[3]*x[2]*cos(x[97]-x[96])-4.75996315175772* (x[3])^2+1.1350191923074*x[3]*x[2]*sin(x[97]-x[96])+x[56] == 0.0)
@NLconstraint(m, e44, 9.09008271975275*x[7]*x[9]*cos(x[101]-x[103])-9.09008271975275* (x[7])^2+x[57] == 0.0)
@NLconstraint(m, e45, 9.09008271975275*x[9]*x[7]*cos(x[103]-x[101])-9.09008271975275* (x[9])^2+x[58] == 0.0)
@NLconstraint(m, e46, 4.40294374946052*x[10]*x[11]*cos(x[104]-x[105])-4.40294374946052* (x[10])^2+1.8808847537004*x[10]*x[11]*sin(x[104]-x[105])+x[59] == 0.0)
@NLconstraint(m, e47, 4.40294374946052*x[11]*x[10]*cos(x[105]-x[104])-4.40294374946052* (x[11])^2+1.8808847537004*x[11]*x[10]*sin(x[105]-x[104])+x[60] == 0.0)
@NLconstraint(m, e48, 4.78194338179036*x[4]*x[7]*cos(x[98]-x[101])-4.78194338179036* (x[4])^2+x[61] == 0.0)
@NLconstraint(m, e49, 4.78194338179036*x[7]*x[4]*cos(x[101]-x[98])-4.78194338179036* (x[7])^2+x[62] == 0.0)
@NLconstraint(m, e50, 3.96793905245615*x[5]*x[6]*cos(x[99]-x[100])-3.96793905245615* (x[5])^2+x[63] == 0.0)
@NLconstraint(m, e51, 3.96793905245615*x[6]*x[5]*cos(x[100]-x[99])-3.96793905245615* (x[6])^2+x[64] == 0.0)
@NLconstraint(m, e52, 3.0290504569306*x[9]*x[14]*cos(x[103]-x[108])-3.0290504569306* (x[9])^2+1.42400548701993*x[9]*x[14]*sin(x[103]-x[108])+x[65] == 0.0)
@NLconstraint(m, e53, 3.0290504569306*x[14]*x[9]*cos(x[108]-x[103])-3.0290504569306* (x[14])^2+1.42400548701993*x[14]*x[9]*sin(x[108]-x[103])+x[66] == 0.0)
@NLconstraint(m, e54, 21.5785539816916*x[4]*x[5]*cos(x[98]-x[99])-21.5785539816916* (x[4])^2+6.84098066149567*x[4]*x[5]*sin(x[98]-x[99])+x[67] == 0.0)
@NLconstraint(m, e55, 21.5785539816916*x[5]*x[4]*cos(x[99]-x[98])-21.5785539816916* (x[5])^2+6.84098066149567*x[5]*x[4]*sin(x[99]-x[98])+x[68] == 0.0)
@NLconstraint(m, e56, 6.10275544819311*x[6]*x[13]*cos(x[100]-x[107])-6.10275544819311* (x[6])^2+3.09892740383799*x[6]*x[13]*sin(x[100]-x[107])+x[69] == 0.0)
@NLconstraint(m, e57, 6.10275544819311*x[13]*x[6]*cos(x[107]-x[100])-6.10275544819311* (x[13])^2+3.09892740383799*x[13]*x[6]*sin(x[107]-x[100])+x[70] == 0.0)
@NLconstraint(m, e58, 5.67697984672154*x[7]*x[8]*cos(x[101]-x[102])-5.67697984672154* (x[7])^2+x[71] == 0.0)
@NLconstraint(m, e59, 5.67697984672154*x[8]*x[7]*cos(x[102]-x[101])-5.67697984672154* (x[8])^2+x[72] == 0.0)
@NLconstraint(m, e60, 2.31496347510535*x[13]*x[14]*cos(x[107]-x[108])-2.31496347510535* (x[13])^2+1.13699415780633*x[13]*x[14]*sin(x[107]-x[108])+x[73] == 0.0)
@NLconstraint(m, e61, 2.31496347510535*x[14]*x[13]*cos(x[108]-x[107])-2.31496347510535* (x[14])^2+1.13699415780633*x[14]*x[13]*sin(x[108]-x[107])+x[74] == 0.0)
@NLconstraint(m, e62, 3.1759639650294*x[6]*x[12]*cos(x[100]-x[106])-3.1759639650294* (x[6])^2+1.52596744045097*x[6]*x[12]*sin(x[100]-x[106])+x[75] == 0.0)
@NLconstraint(m, e63, 3.1759639650294*x[12]*x[6]*cos(x[106]-x[100])-3.1759639650294* (x[12])^2+1.52596744045097*x[12]*x[6]*sin(x[106]-x[100])+x[76] == 0.0)
@NLconstraint(m, e64, 4.09407434424044*x[6]*x[11]*cos(x[100]-x[105])-4.09407434424044* (x[6])^2+1.95502856317726*x[6]*x[11]*sin(x[100]-x[105])+x[77] == 0.0)
@NLconstraint(m, e65, 4.09407434424044*x[11]*x[6]*cos(x[105]-x[100])-4.09407434424044* (x[11])^2+1.95502856317726*x[11]*x[6]*sin(x[105]-x[100])+x[78] == 0.0)
@NLconstraint(m, e66, 2.25197462617221*x[12]*x[13]*cos(x[106]-x[107])-2.25197462617221* (x[12])^2+2.48902458682192*x[12]*x[13]*sin(x[106]-x[107])+x[79] == 0.0)
@NLconstraint(m, e67, 2.25197462617221*x[13]*x[12]*cos(x[107]-x[106])-2.25197462617221* (x[13])^2+2.48902458682192*x[13]*x[12]*sin(x[107]-x[106])+x[80] == 0.0)
@NLconstraint(m, e68, 4.23498368233483*x[1]*x[5]*cos(x[95]-x[99])-4.21038368233483* (x[1])^2+1.02589745497019*x[1]*x[5]*sin(x[95]-x[99])+x[81] == 0.0)
@NLconstraint(m, e69, 4.23498368233483*x[5]*x[1]*cos(x[99]-x[95])-4.21038368233483* (x[5])^2+1.02589745497019*x[5]*x[1]*sin(x[99]-x[95])+x[82] == 0.0)
@NLconstraint(m, e70, 10.3653941270609*x[9]*x[10]*cos(x[103]-x[104])-10.3653941270609* (x[9])^2+3.90204955244743*x[9]*x[10]*sin(x[103]-x[104])+x[83] == 0.0)
@NLconstraint(m, e71, 10.3653941270609*x[10]*x[9]*cos(x[104]-x[103])-10.3653941270609* (x[10])^2+3.90204955244743*x[10]*x[9]*sin(x[104]-x[103])+x[84] == 0.0)
@NLconstraint(m, e72, 15.2630865231796*x[1]*x[2]*cos(x[95]-x[96])-15.2366865231796* (x[1])^2+4.99913160079803*x[1]*x[2]*sin(x[95]-x[96])+x[85] == 0.0)
@NLconstraint(m, e73, 15.2630865231796*x[2]*x[1]*cos(x[96]-x[95])-15.2366865231796* (x[2])^2+4.99913160079803*x[2]*x[1]*sin(x[96]-x[95])+x[86] == 0.0)
@NLconstraint(m, e74, 5.19392739796971*x[2]*x[5]*cos(x[96]-x[99])-5.17662739796971* (x[2])^2+1.7011396670944*x[2]*x[5]*sin(x[96]-x[99])+x[87] == 0.0)
@NLconstraint(m, e75, 5.19392739796971*x[5]*x[2]*cos(x[99]-x[96])-5.17662739796971* (x[5])^2+1.7011396670944*x[5]*x[2]*sin(x[99]-x[96])+x[88] == 0.0)
@NLconstraint(m, e76, 5.06881697759392*x[3]*x[4]*cos(x[97]-x[98])-5.06241697759392* (x[3])^2+1.98597570992556*x[3]*x[4]*sin(x[97]-x[98])+x[89] == 0.0)
@NLconstraint(m, e77, 5.06881697759392*x[4]*x[3]*cos(x[98]-x[97])-5.06241697759392* (x[4])^2+1.98597570992556*x[4]*x[3]*sin(x[98]-x[97])+x[90] == 0.0)
@NLconstraint(m, e78, 1.79797907152361*x[4]*x[9]*cos(x[98]-x[103])-1.79797907152361* (x[4])^2+x[91] == 0.0)
@NLconstraint(m, e79, 1.79797907152361*x[9]*x[4]*cos(x[103]-x[98])-1.79797907152361* (x[9])^2+x[92] == 0.0)
@NLconstraint(m, e80, 5.11583832587208*x[2]*x[4]*cos(x[96]-x[98])-5.09883832587208* (x[2])^2+1.68603315061494*x[2]*x[4]*sin(x[96]-x[98])+x[93] == 0.0)
@NLconstraint(m, e81, 5.11583832587208*x[4]*x[2]*cos(x[98]-x[96])-5.09883832587208* (x[4])^2+1.68603315061494*x[4]*x[2]*sin(x[98]-x[96])+x[94] == 0.0)
@NLconstraint(m, e82,  (x[15])^2+ (x[55])^2 <= 9801.0)
@NLconstraint(m, e83,  (x[16])^2+ (x[56])^2 <= 9801.0)
@NLconstraint(m, e84,  (x[17])^2+ (x[57])^2 <= 9801.0)
@NLconstraint(m, e85,  (x[18])^2+ (x[58])^2 <= 9801.0)
@NLconstraint(m, e86,  (x[19])^2+ (x[59])^2 <= 9801.0)
@NLconstraint(m, e87,  (x[20])^2+ (x[60])^2 <= 9801.0)
@NLconstraint(m, e88,  (x[21])^2+ (x[61])^2 <= 9801.0)
@NLconstraint(m, e89,  (x[22])^2+ (x[62])^2 <= 9801.0)
@NLconstraint(m, e90,  (x[23])^2+ (x[63])^2 <= 9801.0)
@NLconstraint(m, e91,  (x[24])^2+ (x[64])^2 <= 9801.0)
@NLconstraint(m, e92,  (x[25])^2+ (x[65])^2 <= 9801.0)
@NLconstraint(m, e93,  (x[26])^2+ (x[66])^2 <= 9801.0)
@NLconstraint(m, e94,  (x[27])^2+ (x[67])^2 <= 9801.0)
@NLconstraint(m, e95,  (x[28])^2+ (x[68])^2 <= 9801.0)
@NLconstraint(m, e96,  (x[29])^2+ (x[69])^2 <= 9801.0)
@NLconstraint(m, e97,  (x[30])^2+ (x[70])^2 <= 9801.0)
@NLconstraint(m, e98,  (x[31])^2+ (x[71])^2 <= 9801.0)
@NLconstraint(m, e99,  (x[32])^2+ (x[72])^2 <= 9801.0)
@NLconstraint(m, e100,  (x[33])^2+ (x[73])^2 <= 9801.0)
@NLconstraint(m, e101,  (x[34])^2+ (x[74])^2 <= 9801.0)
@NLconstraint(m, e102,  (x[35])^2+ (x[75])^2 <= 9801.0)
@NLconstraint(m, e103,  (x[36])^2+ (x[76])^2 <= 9801.0)
@NLconstraint(m, e104,  (x[37])^2+ (x[77])^2 <= 9801.0)
@NLconstraint(m, e105,  (x[38])^2+ (x[78])^2 <= 9801.0)
@NLconstraint(m, e106,  (x[39])^2+ (x[79])^2 <= 9801.0)
@NLconstraint(m, e107,  (x[40])^2+ (x[80])^2 <= 9801.0)
@NLconstraint(m, e108,  (x[41])^2+ (x[81])^2 <= 9801.0)
@NLconstraint(m, e109,  (x[42])^2+ (x[82])^2 <= 9801.0)
@NLconstraint(m, e110,  (x[43])^2+ (x[83])^2 <= 9801.0)
@NLconstraint(m, e111,  (x[44])^2+ (x[84])^2 <= 9801.0)
@NLconstraint(m, e112,  (x[45])^2+ (x[85])^2 <= 9801.0)
@NLconstraint(m, e113,  (x[46])^2+ (x[86])^2 <= 9801.0)
@NLconstraint(m, e114,  (x[47])^2+ (x[87])^2 <= 9801.0)
@NLconstraint(m, e115,  (x[48])^2+ (x[88])^2 <= 9801.0)
@NLconstraint(m, e116,  (x[49])^2+ (x[89])^2 <= 9801.0)
@NLconstraint(m, e117,  (x[50])^2+ (x[90])^2 <= 9801.0)
@NLconstraint(m, e118,  (x[51])^2+ (x[91])^2 <= 9801.0)
@NLconstraint(m, e119,  (x[52])^2+ (x[92])^2 <= 9801.0)
@NLconstraint(m, e120,  (x[53])^2+ (x[93])^2 <= 9801.0)
@NLconstraint(m, e121,  (x[54])^2+ (x[94])^2 <= 9801.0)
@constraint(m, e122, x[109] <= 3.324)
@constraint(m, e123, x[110] <= 1.4)
@constraint(m, e124, x[111] <= 1.0)
@constraint(m, e125, x[112] <= 1.0)
@constraint(m, e126, x[113] <= 1.0)
@constraint(m, e127, x[109] >= 0.0)
@constraint(m, e128, x[110] >= 0.0)
@constraint(m, e129, x[111] >= 0.0)
@constraint(m, e130, x[112] >= 0.0)
@constraint(m, e131, x[113] >= 0.0)
@constraint(m, e132, x[114] <= 0.1)
@constraint(m, e133, x[115] <= 0.5)
@constraint(m, e134, x[116] <= 0.4)
@constraint(m, e135, x[117] <= 0.24)
@constraint(m, e136, x[118] <= 0.24)
@constraint(m, e137, x[114] >= 0.0)
@constraint(m, e138, x[115] >= -0.4)
@constraint(m, e139, x[116] >= 0.0)
@constraint(m, e140, x[117] >= -0.06)
@constraint(m, e141, x[118] >= -0.06)
@constraint(m, e142, x[1] <= 1.06)
@constraint(m, e143, x[2] <= 1.06)
@constraint(m, e144, x[3] <= 1.06)
@constraint(m, e145, x[4] <= 1.06)
@constraint(m, e146, x[5] <= 1.06)
@constraint(m, e147, x[6] <= 1.06)
@constraint(m, e148, x[7] <= 1.06)
@constraint(m, e149, x[8] <= 1.06)
@constraint(m, e150, x[9] <= 1.06)
@constraint(m, e151, x[10] <= 1.06)
@constraint(m, e152, x[11] <= 1.06)
@constraint(m, e153, x[12] <= 1.06)
@constraint(m, e154, x[13] <= 1.06)
@constraint(m, e155, x[14] <= 1.06)
@constraint(m, e156, x[1] >= 0.94)
@constraint(m, e157, x[2] >= 0.94)
@constraint(m, e158, x[3] >= 0.94)
@constraint(m, e159, x[4] >= 0.94)
@constraint(m, e160, x[5] >= 0.94)
@constraint(m, e161, x[6] >= 0.94)
@constraint(m, e162, x[7] >= 0.94)
@constraint(m, e163, x[8] >= 0.94)
@constraint(m, e164, x[9] >= 0.94)
@constraint(m, e165, x[10] >= 0.94)
@constraint(m, e166, x[11] >= 0.94)
@constraint(m, e167, x[12] >= 0.94)
@constraint(m, e168, x[13] >= 0.94)
@constraint(m, e169, x[14] >= 0.94)
@constraint(m, e170, x[96]-x[97] >= -0.26)
@constraint(m, e171, -x[96]+x[97] >= -0.26)
@constraint(m, e172, x[101]-x[103] >= -0.26)
@constraint(m, e173, -x[101]+x[103] >= -0.26)
@constraint(m, e174, x[104]-x[105] >= -0.26)
@constraint(m, e175, -x[104]+x[105] >= -0.26)
@constraint(m, e176, x[98]-x[101] >= -0.26)
@constraint(m, e177, -x[98]+x[101] >= -0.26)
@constraint(m, e178, x[99]-x[100] >= -0.26)
@constraint(m, e179, -x[99]+x[100] >= -0.26)
@constraint(m, e180, x[103]-x[108] >= -0.26)
@constraint(m, e181, -x[103]+x[108] >= -0.26)
@constraint(m, e182, x[98]-x[99] >= -0.26)
@constraint(m, e183, -x[98]+x[99] >= -0.26)
@constraint(m, e184, x[100]-x[107] >= -0.26)
@constraint(m, e185, -x[100]+x[107] >= -0.26)
@constraint(m, e186, x[101]-x[102] >= -0.26)
@constraint(m, e187, -x[101]+x[102] >= -0.26)
@constraint(m, e188, x[107]-x[108] >= -0.26)
@constraint(m, e189, -x[107]+x[108] >= -0.26)
@constraint(m, e190, x[100]-x[106] >= -0.26)
@constraint(m, e191, -x[100]+x[106] >= -0.26)
@constraint(m, e192, x[100]-x[105] >= -0.26)
@constraint(m, e193, -x[100]+x[105] >= -0.26)
@constraint(m, e194, x[106]-x[107] >= -0.26)
@constraint(m, e195, -x[106]+x[107] >= -0.26)
@constraint(m, e196, x[95]-x[99] >= -0.26)
@constraint(m, e197, -x[95]+x[99] >= -0.26)
@constraint(m, e198, x[103]-x[104] >= -0.26)
@constraint(m, e199, -x[103]+x[104] >= -0.26)
@constraint(m, e200, x[95]-x[96] >= -0.26)
@constraint(m, e201, -x[95]+x[96] >= -0.26)
@constraint(m, e202, x[96]-x[99] >= -0.26)
@constraint(m, e203, -x[96]+x[99] >= -0.26)
@constraint(m, e204, x[97]-x[98] >= -0.26)
@constraint(m, e205, -x[97]+x[98] >= -0.26)
@constraint(m, e206, x[98]-x[103] >= -0.26)
@constraint(m, e207, -x[98]+x[103] >= -0.26)
@constraint(m, e208, x[96]-x[98] >= -0.26)
@constraint(m, e209, -x[96]+x[98] >= -0.26)
@constraint(m, e210, x[96]-x[97] <= 0.26)
@constraint(m, e211, -x[96]+x[97] <= 0.26)
@constraint(m, e212, x[101]-x[103] <= 0.26)
@constraint(m, e213, -x[101]+x[103] <= 0.26)
@constraint(m, e214, x[104]-x[105] <= 0.26)
@constraint(m, e215, -x[104]+x[105] <= 0.26)
@constraint(m, e216, x[98]-x[101] <= 0.26)
@constraint(m, e217, -x[98]+x[101] <= 0.26)
@constraint(m, e218, x[99]-x[100] <= 0.26)
@constraint(m, e219, -x[99]+x[100] <= 0.26)
@constraint(m, e220, x[103]-x[108] <= 0.26)
@constraint(m, e221, -x[103]+x[108] <= 0.26)
@constraint(m, e222, x[98]-x[99] <= 0.26)
@constraint(m, e223, -x[98]+x[99] <= 0.26)
@constraint(m, e224, x[100]-x[107] <= 0.26)
@constraint(m, e225, -x[100]+x[107] <= 0.26)
@constraint(m, e226, x[101]-x[102] <= 0.26)
@constraint(m, e227, -x[101]+x[102] <= 0.26)
@constraint(m, e228, x[107]-x[108] <= 0.26)
@constraint(m, e229, -x[107]+x[108] <= 0.26)
@constraint(m, e230, x[100]-x[106] <= 0.26)
@constraint(m, e231, -x[100]+x[106] <= 0.26)
@constraint(m, e232, x[100]-x[105] <= 0.26)
@constraint(m, e233, -x[100]+x[105] <= 0.26)
@constraint(m, e234, x[106]-x[107] <= 0.26)
@constraint(m, e235, -x[106]+x[107] <= 0.26)
@constraint(m, e236, x[95]-x[99] <= 0.26)
@constraint(m, e237, -x[95]+x[99] <= 0.26)
@constraint(m, e238, x[103]-x[104] <= 0.26)
@constraint(m, e239, -x[103]+x[104] <= 0.26)
@constraint(m, e240, x[95]-x[96] <= 0.26)
@constraint(m, e241, -x[95]+x[96] <= 0.26)
@constraint(m, e242, x[96]-x[99] <= 0.26)
@constraint(m, e243, -x[96]+x[99] <= 0.26)
@constraint(m, e244, x[97]-x[98] <= 0.26)
@constraint(m, e245, -x[97]+x[98] <= 0.26)
@constraint(m, e246, x[98]-x[103] <= 0.26)
@constraint(m, e247, -x[98]+x[103] <= 0.26)
@constraint(m, e248, x[96]-x[98] <= 0.26)
@constraint(m, e249, -x[96]+x[98] <= 0.26)
@constraint(m, e250, x[95] == 0.0)
@constraint(m, e251, x[41]+x[45]-x[109] == 0.0)
@constraint(m, e252, x[15]+x[46]+x[47]+x[53]-x[110] == -0.217)
@constraint(m, e253, x[16]+x[49]-x[111] == -0.942)
@constraint(m, e254, x[24]+x[29]+x[35]+x[37]-x[112] == -0.112)
@constraint(m, e255, x[32]-x[113] == 0.0)
@constraint(m, e256, x[81]+x[85]-x[114] == 0.0)
@constraint(m, e257, x[55]+x[86]+x[87]+x[93]-x[115] == -0.127)
@constraint(m, e258, x[56]+x[89]-x[116] == -0.19)
@constraint(m, e259, x[64]+x[69]+x[75]+x[77]-x[117] == -0.075)
@constraint(m, e260, x[72]-x[118] == 0.0)
@constraint(m, e261, x[21]+x[27]+x[50]+x[51]+x[54] == -0.478)
@constraint(m, e262, x[23]+x[28]+x[42]+x[48] == -0.076)
@constraint(m, e263, x[17]+x[22]+x[31] == 0.0)
@constraint(m, e264, x[18]+x[25]+x[43]+x[52] == -0.295)
@constraint(m, e265, x[19]+x[44] == -0.09)
@constraint(m, e266, x[20]+x[38] == -0.035)
@constraint(m, e267, x[36]+x[39] == -0.061)
@constraint(m, e268, x[30]+x[33]+x[40] == -0.135)
@constraint(m, e269, x[26]+x[34] == -0.149)
@constraint(m, e270, x[61]+x[67]+x[90]+x[91]+x[94] == 0.039)
@constraint(m, e271, x[63]+x[68]+x[82]+x[88] == -0.016)
@constraint(m, e272, x[57]+x[62]+x[71] == 0.0)
@constraint(m, e273, x[58]+x[65]+x[83]+x[92] == -0.166)
@constraint(m, e274, x[59]+x[84] == -0.058)
@constraint(m, e275, x[60]+x[78] == -0.018)
@constraint(m, e276, x[76]+x[79] == -0.016)
@constraint(m, e277, x[70]+x[73]+x[80] == -0.058)
@constraint(m, e278, x[66]+x[74] == -0.05)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.