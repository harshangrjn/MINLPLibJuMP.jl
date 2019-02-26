using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112]
@variable(m, b[b_Idx])
x_Idx = Any[113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_binary(b[71])
set_lower_bound(x[118], 0.0)
set_binary(b[78])
set_lower_bound(x[114], 0.0)
set_binary(b[75])
set_binary(b[66])
set_binary(b[85])
set_binary(b[15])
set_binary(b[80])
set_binary(b[82])
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_binary(b[106])
set_binary(b[45])
set_binary(b[81])
set_lower_bound(x[113], 0.0)
set_binary(b[41])
set_binary(b[48])
set_binary(b[105])
set_binary(b[23])
set_binary(b[64])
set_binary(b[112])
set_binary(b[54])
set_binary(b[111])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_binary(b[90])
set_binary(b[87])
set_binary(b[98])
set_binary(b[95])
set_binary(b[77])
set_binary(b[84])
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_binary(b[56])
set_binary(b[30])
set_binary(b[79])
set_binary(b[104])
set_binary(b[29])
set_lower_bound(x[128], 0.0)
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[74])
set_binary(b[32])
set_binary(b[34])
set_lower_bound(x[122], 0.0)
set_binary(b[57])
set_binary(b[89])
set_binary(b[72])
set_binary(b[92])
set_binary(b[96])
set_binary(b[5])
set_binary(b[16])
set_binary(b[86])
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_binary(b[60])
set_binary(b[102])
set_binary(b[13])
set_binary(b[51])
set_binary(b[69])
set_binary(b[12])
set_binary(b[2])
set_lower_bound(x[126], 0.0)
set_binary(b[68])
set_binary(b[100])
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[110])
set_lower_bound(x[116], 0.0)
set_binary(b[65])
set_binary(b[3])
set_binary(b[83])
set_binary(b[59])
set_binary(b[101])
set_binary(b[108])
set_binary(b[17])
set_binary(b[39])
set_binary(b[76])
set_binary(b[109])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[1])
set_lower_bound(x[123], 0.0)
set_lower_bound(x[115], 0.0)
set_binary(b[37])
set_lower_bound(x[127], 0.0)
set_binary(b[88])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_lower_bound(x[124], 0.0)
set_binary(b[97])
set_lower_bound(x[119], 0.0)
set_binary(b[93])
set_binary(b[99])
set_binary(b[94])
set_binary(b[31])
set_binary(b[107])
set_binary(b[62])
set_binary(b[91])
set_lower_bound(x[125], 0.0)
set_binary(b[52])
set_binary(b[103])
set_binary(b[24])
set_binary(b[55])
set_binary(b[10])
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])


# ----- Constraints ----- #
@constraint(m, e1, -476.627680186915*b[1]-149.653586784487*b[2]-213.186384418957*b[3]-43.7888464292729*b[4]-474.830868219332*b[5]-804.41120755867*b[6]-584.914840194532*b[7]-661.646071204307*b[8]-392.259337390379*b[9]-142.80919923228*b[10]-218.980029277262*b[11]-104.519355726959*b[12]-314.988665746119*b[13]-501.761182472619*b[14]-416.807578457382*b[15]-524.390259195122*b[16]-362.341095830922*b[17]-441.362501912098*b[18]-402.716752066181*b[19]-492.339440818786*b[20]-290.964161684016*b[21]-116.368122158017*b[22]-173.712811065166*b[23]-95.9656692808925*b[24]-443.684333533333*b[25]-176.081128582949*b[26]-302.39173954457*b[27]-293.29371225224*b[28]-476.763266014932*b[29]-183.917148897559*b[30]-272.205185020914*b[31]-136.278105402226*b[32]-101.35843572405*b[33]-193.942699651262*b[34]-141.921469465657*b[35]-201.173648709993*b[36]-132.921832386141*b[37]-421.655945550644*b[38]-281.212652600547*b[39]-407.005327357163*b[40]-202.365762241646*b[41]-137.219422282215*b[42]-132.146952277583*b[43]-179.383015135974*b[44]-123.618453957013*b[45]-297.215252315231*b[46]-218.762870620071*b[47]-282.961164098487*b[48]-20.13413882933*b[49]-497.103669118494*b[50]-268.341006965987*b[51]-427.522422721593*b[52]-210.032834185575*b[53]-434.311463333895*b[54]-298.270736776993*b[55]-444.612005461353*b[56]-211.951029854733*b[57]-447.318981178372*b[58]-332.208676638743*b[59]-453.095321147229*b[60]-435.628401127826*b[61]-771.659835894158*b[62]-623.845701115879*b[63]-775.557667039354*b[64]-424.738471081496*b[65]-833.085816488132*b[66]-592.460027321246*b[67]-700.942808077211*b[68]-229.947132383408*b[69]-586.218425366478*b[70]-424.710208954907*b[71]-555.528795297853*b[72]-327.711607414859*b[73]-238.953801669268*b[74]-251.293372908654*b[75]-313.742954288217*b[76]-478.24585803249*b[77]-80.7823868731141*b[78]-266.940737208009*b[79]-164.458228751629*b[80]-332.729569180138*b[81]-388.723389119461*b[82]-237.094588860685*b[83]-245.459595758858*b[84]-170.849806397817*b[85]-170.734963967704*b[86]-30.8907942571205*b[87]-104.086188009457*b[88]-66.4196868291459*b[89]-312.344045852442*b[90]-151.766233459965*b[91]-278.677297797007*b[92]-205.289077931114*b[93]-86.9146012652412*b[94]-127.990999929026*b[95]-141.658946009938*b[96]-588.039796501339*b[97]-363.309460856624*b[98]-476.707321955199*b[99]-487.438573778052*b[100]-489.84367475*b[101]-216.633855557639*b[102]-152.801343309708*b[103]-384.081627*b[104]-178.524432787122*b[105]-129.092639672378*b[106]-311.0588205*b[107]-156.215197085809*b[108]-117.416983804282*b[109]-300.51551825*b[110]-147.887674474043*b[111]-110.035201882344*b[112]-83308.5816488132*x[113]-83308.5816488132*x[114]-83308.5816488132*x[115]-83308.5816488132*x[116]+objvar == 0.0)
@constraint(m, e2, 1.493016132*b[1]+1.456072816*b[5]+0.993236412*b[9]+1.025966745*b[13]+1.038311423*b[17]+0.674453719*b[21]+1.110104106*b[25]+1.179319831*b[29]+0.560898388*b[33]+1.098374636*b[37]+0.81518723*b[41]+0.558194512*b[45]+1.439212232*b[49]+1.368059775*b[53]+1.096159257*b[57]+1.34695262*b[61]+1.499851813*b[65]+1.138420427*b[69]+1.142989815*b[73]+1.204066374*b[77]+1.342748386*b[81]+0.943180215*b[85]+1.100967989*b[89]+0.659153757*b[93]+1.197148552*b[97]-5.2960774859375*x[117]-10.592154971875*x[118]-15.8882324578125*x[119] == 0.0)
@constraint(m, e3, 1.493016132*b[2]+1.456072816*b[6]+0.993236412*b[10]+1.025966745*b[14]+1.038311423*b[18]+0.674453719*b[22]+1.110104106*b[26]+1.179319831*b[30]+0.560898388*b[34]+1.098374636*b[38]+0.81518723*b[42]+0.558194512*b[46]+1.439212232*b[50]+1.368059775*b[54]+1.096159257*b[58]+1.34695262*b[62]+1.499851813*b[66]+1.138420427*b[70]+1.142989815*b[74]+1.204066374*b[78]+1.342748386*b[82]+0.943180215*b[86]+1.100967989*b[90]+0.659153757*b[94]+1.197148552*b[98]-4.8209976578125*x[120]-9.641995315625*x[121]-14.4629929734375*x[122] == 0.0)
@constraint(m, e4, 1.493016132*b[3]+1.456072816*b[7]+0.993236412*b[11]+1.025966745*b[15]+1.038311423*b[19]+0.674453719*b[23]+1.110104106*b[27]+1.179319831*b[31]+0.560898388*b[35]+1.098374636*b[39]+0.81518723*b[43]+0.558194512*b[47]+1.439212232*b[51]+1.368059775*b[55]+1.096159257*b[59]+1.34695262*b[63]+1.499851813*b[67]+1.138420427*b[71]+1.142989815*b[75]+1.204066374*b[79]+1.342748386*b[83]+0.943180215*b[87]+1.100967989*b[91]+0.659153757*b[95]+1.197148552*b[99]-4.924666325*x[123]-9.84933265*x[124]-14.773998975*x[125] == 0.0)
@constraint(m, e5, 1.493016132*b[4]+1.456072816*b[8]+0.993236412*b[12]+1.025966745*b[16]+1.038311423*b[20]+0.674453719*b[24]+1.110104106*b[28]+1.179319831*b[32]+0.560898388*b[36]+1.098374636*b[40]+0.81518723*b[44]+0.558194512*b[48]+1.439212232*b[52]+1.368059775*b[56]+1.096159257*b[60]+1.34695262*b[64]+1.499851813*b[68]+1.138420427*b[72]+1.142989815*b[76]+1.204066374*b[80]+1.342748386*b[84]+0.943180215*b[88]+1.100967989*b[92]+0.659153757*b[96]+1.197148552*b[100]-4.4766575796875*x[126]-8.953315159375*x[127]-13.4299727390625*x[128] == 0.0)
@constraint(m, e6, b[1]+b[2]+b[3]+b[4] == 1.0)
@constraint(m, e7, b[5]+b[6]+b[7]+b[8] == 1.0)
@constraint(m, e8, b[9]+b[10]+b[11]+b[12] == 1.0)
@constraint(m, e9, b[13]+b[14]+b[15]+b[16] == 1.0)
@constraint(m, e10, b[17]+b[18]+b[19]+b[20] == 1.0)
@constraint(m, e11, b[21]+b[22]+b[23]+b[24] == 1.0)
@constraint(m, e12, b[25]+b[26]+b[27]+b[28] == 1.0)
@constraint(m, e13, b[29]+b[30]+b[31]+b[32] == 1.0)
@constraint(m, e14, b[33]+b[34]+b[35]+b[36] == 1.0)
@constraint(m, e15, b[37]+b[38]+b[39]+b[40] == 1.0)
@constraint(m, e16, b[41]+b[42]+b[43]+b[44] == 1.0)
@constraint(m, e17, b[45]+b[46]+b[47]+b[48] == 1.0)
@constraint(m, e18, b[49]+b[50]+b[51]+b[52] == 1.0)
@constraint(m, e19, b[53]+b[54]+b[55]+b[56] == 1.0)
@constraint(m, e20, b[57]+b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63]+b[64] == 1.0)
@constraint(m, e22, b[65]+b[66]+b[67]+b[68] == 1.0)
@constraint(m, e23, b[69]+b[70]+b[71]+b[72] == 1.0)
@constraint(m, e24, b[73]+b[74]+b[75]+b[76] == 1.0)
@constraint(m, e25, b[77]+b[78]+b[79]+b[80] == 1.0)
@constraint(m, e26, b[81]+b[82]+b[83]+b[84] == 1.0)
@constraint(m, e27, b[85]+b[86]+b[87]+b[88] == 1.0)
@constraint(m, e28, b[89]+b[90]+b[91]+b[92] == 1.0)
@constraint(m, e29, b[93]+b[94]+b[95]+b[96] == 1.0)
@constraint(m, e30, b[97]+b[98]+b[99]+b[100] == 1.0)
@constraint(m, e31, b[101]+b[102]+b[103] <= 1.0)
@constraint(m, e32, b[104]+b[105]+b[106] <= 1.0)
@constraint(m, e33, b[107]+b[108]+b[109] <= 1.0)
@constraint(m, e34, b[110]+b[111]+b[112] <= 1.0)
@constraint(m, e35, -b[101]+x[117] <= 0.0)
@constraint(m, e36, -b[102]+x[118] <= 0.0)
@constraint(m, e37, -b[103]+x[119] <= 0.0)
@constraint(m, e38, -b[104]+x[120] <= 0.0)
@constraint(m, e39, -b[105]+x[121] <= 0.0)
@constraint(m, e40, -b[106]+x[122] <= 0.0)
@constraint(m, e41, -b[107]+x[123] <= 0.0)
@constraint(m, e42, -b[108]+x[124] <= 0.0)
@constraint(m, e43, -b[109]+x[125] <= 0.0)
@constraint(m, e44, -b[110]+x[126] <= 0.0)
@constraint(m, e45, -b[111]+x[127] <= 0.0)
@constraint(m, e46, -b[112]+x[128] <= 0.0)
@NLconstraint(m, e47, x[117]*b[101]+x[117]*x[113]-x[113]*b[101] <= 0.0)
@NLconstraint(m, e48, x[118]*b[102]+x[118]*x[113]-x[113]*b[102] <= 0.0)
@NLconstraint(m, e49, x[119]*b[103]+x[119]*x[113]-x[113]*b[103] <= 0.0)
@NLconstraint(m, e50, x[120]*b[104]+x[120]*x[114]-x[114]*b[104] <= 0.0)
@NLconstraint(m, e51, x[121]*b[105]+x[121]*x[114]-x[114]*b[105] <= 0.0)
@NLconstraint(m, e52, x[122]*b[106]+x[122]*x[114]-x[114]*b[106] <= 0.0)
@NLconstraint(m, e53, x[123]*b[107]+x[123]*x[115]-x[115]*b[107] <= 0.0)
@NLconstraint(m, e54, x[124]*b[108]+x[124]*x[115]-x[115]*b[108] <= 0.0)
@NLconstraint(m, e55, x[125]*b[109]+x[125]*x[115]-x[115]*b[109] <= 0.0)
@NLconstraint(m, e56, x[126]*b[110]+x[126]*x[116]-x[116]*b[110] <= 0.0)
@NLconstraint(m, e57, x[127]*b[111]+x[127]*x[116]-x[116]*b[111] <= 0.0)
@NLconstraint(m, e58, x[128]*b[112]+x[128]*x[116]-x[116]*b[112] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.