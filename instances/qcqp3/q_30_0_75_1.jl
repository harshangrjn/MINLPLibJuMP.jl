using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.8874*x[1]*x[2]-0.9763*x[1]*x[1]-0.0161*x[1]*x[4]+0.9611*x[1]*x[6]+0.2266*x[1]*x[8]-0.2746*x[1]*x[9]+0.0648*x[1]*x[10]-0.7084*x[1]*x[11]-0.7343*x[1]*x[12]-0.2376*x[1]*x[13]+0.4007*x[1]*x[15]+0.0995*x[1]*x[16]+0.6511*x[1]*x[17]+0.0747*x[1]*x[18]+0.3247*x[1]*x[19]-0.8937*x[1]*x[21]-0.6571*x[1]*x[22]+0.2373*x[1]*x[23]+0.5175*x[1]*x[25]+0.8201*x[1]*x[26]+0.428*x[1]*x[27]+0.48*x[1]*x[28]-0.2866*x[1]*x[29]+0.6437*x[1]*x[30]+0.1041*x[2]*x[2]+0.3016*x[2]*x[3]-0.6249*x[2]*x[6]+0.6366*x[2]*x[8]-0.9552*x[2]*x[9]+0.3144*x[2]*x[11]-0.7607*x[2]*x[13]-0.2293*x[2]*x[15]-0.5147*x[2]*x[16]+0.9307*x[2]*x[18]-0.0294*x[2]*x[20]+0.9847*x[2]*x[23]-0.4374*x[2]*x[29]+0.9569*x[2]*x[30]+0.9057*x[3]*x[3]-0.5138*x[3]*x[5]-0.1668*x[3]*x[7]+0.4716*x[3]*x[9]-0.6094*x[3]*x[10]+0.2787*x[3]*x[11]+0.2594*x[3]*x[12]-0.7943*x[3]*x[13]-0.7225*x[3]*x[16]-0.0902*x[3]*x[17]+0.9687*x[3]*x[18]-0.1502*x[3]*x[21]+0.4096*x[3]*x[22]-0.2692*x[3]*x[23]-0.5992*x[3]*x[24]-0.1808*x[3]*x[25]-0.5216*x[3]*x[27]+0.41*x[3]*x[28]-0.8418*x[3]*x[30]-0.5924*x[4]*x[4]-0.9653*x[4]*x[5]-0.3314*x[4]*x[6]-0.4303*x[4]*x[8]+0.6908*x[4]*x[9]-0.0111*x[4]*x[13]+0.4202*x[4]*x[14]-0.4907*x[4]*x[15]+0.6454*x[4]*x[16]-0.4368*x[4]*x[18]+0.2496*x[4]*x[20]+0.4916*x[4]*x[21]+0.7479*x[4]*x[24]-0.7442*x[4]*x[26]-0.4416*x[4]*x[27]+0.847*x[4]*x[30]+0.9726*x[5]*x[6]+0.5786*x[5]*x[8]-0.3041*x[5]*x[9]+0.5286*x[5]*x[10]-0.6138*x[5]*x[12]-0.8712*x[5]*x[15]-0.9096*x[5]*x[16]-0.707*x[5]*x[24]+0.6138*x[5]*x[25]+0.312*x[5]*x[27]-0.5107*x[5]*x[30]-0.3513*x[6]*x[6]+0.9673*x[6]*x[13]+0.2275*x[6]*x[14]-0.415*x[6]*x[15]-0.0089*x[6]*x[17]+0.4723*x[6]*x[18]-0.9209*x[6]*x[19]-0.9687*x[6]*x[23]-0.043*x[6]*x[24]+0.5532*x[6]*x[25]+0.8139*x[6]*x[26]+0.8304*x[6]*x[27]-0.3323*x[6]*x[29]-0.4014*x[7]*x[10]+0.6574*x[7]*x[11]-0.0813*x[7]*x[12]-0.9703*x[7]*x[13]-0.3218*x[7]*x[16]-0.8836*x[7]*x[20]-0.8145*x[7]*x[21]+0.3035*x[7]*x[25]-0.2096*x[7]*x[28]+0.2399*x[7]*x[30]+0.6504*x[8]*x[8]-0.3218*x[8]*x[13]-0.3831*x[8]*x[14]-0.2782*x[8]*x[15]-0.1766*x[8]*x[16]-0.0781*x[8]*x[20]-0.2352*x[8]*x[22]+0.2862*x[8]*x[23]-0.5167*x[8]*x[24]+0.4314*x[8]*x[30]+0.7136*x[9]*x[9]-0.6721*x[9]*x[10]+0.4626*x[9]*x[12]+0.0198*x[9]*x[13]-0.4397*x[9]*x[15]+0.9861*x[9]*x[17]+0.5225*x[9]*x[18]-0.9346*x[9]*x[20]+0.4133*x[9]*x[21]+0.3442*x[9]*x[22]-0.8199*x[9]*x[23]-0.0776*x[9]*x[25]-0.4723*x[9]*x[26]-0.289*x[9]*x[28]+0.4463*x[9]*x[29]-0.9454*x[9]*x[30]+0.1697*x[10]*x[11]+0.3885*x[10]*x[13]-0.7786*x[10]*x[17]+0.0525*x[10]*x[19]+0.9874*x[10]*x[22]+0.4525*x[10]*x[25]+0.521*x[10]*x[28]-0.5928*x[10]*x[30]+0.7265*x[11]*x[13]-0.615*x[11]*x[15]-0.8237*x[11]*x[16]-0.5174*x[11]*x[18]+0.821*x[11]*x[19]+0.6597*x[11]*x[20]-0.8449*x[11]*x[24]+0.743*x[11]*x[25]+0.1144*x[11]*x[26]-0.2056*x[11]*x[30]+0.9986*x[12]*x[12]+0.54*x[12]*x[18]+0.5713*x[12]*x[20]+0.5068*x[12]*x[23]+0.1204*x[12]*x[26]+0.3888*x[13]*x[14]+0.7512*x[13]*x[16]-0.9713*x[13]*x[17]-0.4285*x[13]*x[18]-0.6373*x[13]*x[19]+0.6154*x[13]*x[20]+0.1051*x[14]*x[14]-0.0283*x[14]*x[16]+0.0735*x[14]*x[19]-0.9093*x[14]*x[21]-0.7123*x[14]*x[25]+0.5603*x[14]*x[26]+0.5412*x[14]*x[27]-0.6809*x[14]*x[30]-0.0621*x[15]*x[15]-0.674*x[15]*x[16]+0.0977*x[15]*x[17]-0.3899*x[15]*x[18]-0.6912*x[15]*x[20]+0.15*x[15]*x[23]-0.7118*x[15]*x[25]-0.6134*x[15]*x[26]+0.3822*x[15]*x[27]+0.9004*x[15]*x[28]-0.7372*x[15]*x[29]+0.42*x[16]*x[17]-0.2405*x[16]*x[19]-0.204*x[16]*x[21]-0.998*x[16]*x[24]-0.1736*x[16]*x[25]+0.6076*x[16]*x[27]+0.7557*x[16]*x[28]-0.7184*x[16]*x[30]-0.9139*x[17]*x[18]+0.1313*x[17]*x[19]-0.8836*x[17]*x[21]+0.7427*x[17]*x[23]-0.3114*x[17]*x[26]-0.0203*x[17]*x[27]-0.4356*x[17]*x[28]-0.5229*x[18]*x[18]+0.0993*x[18]*x[24]+0.4277*x[18]*x[26]+0.8057*x[18]*x[28]+0.5147*x[18]*x[29]+0.0785*x[18]*x[30]+0.2918*x[19]*x[19]+0.5539*x[19]*x[21]+0.758*x[19]*x[24]+0.2055*x[19]*x[27]-0.877*x[19]*x[29]-0.1218*x[19]*x[30]-0.9826*x[20]*x[21]-0.4008*x[20]*x[23]+0.947*x[20]*x[24]+0.9103*x[20]*x[25]-0.5734*x[20]*x[28]+0.3479*x[20]*x[29]+0.0723*x[20]*x[30]-0.2806*x[21]*x[21]-0.9973*x[21]*x[22]+0.6989*x[21]*x[24]-0.1571*x[21]*x[30]+0.4957*x[22]*x[27]-0.9767*x[22]*x[28]+0.2287*x[22]*x[29]-0.1111*x[22]*x[30]+0.3253*x[23]*x[24]+0.3775*x[24]*x[25]+0.8783*x[24]*x[27]+0.4335*x[24]*x[28]-0.0967*x[24]*x[29]+0.269*x[24]*x[30]-0.5516*x[25]*x[26]-0.2037*x[25]*x[27]+0.6602*x[26]*x[26]-0.722*x[26]*x[27]+0.5119*x[26]*x[28]+0.586*x[26]*x[29]-0.5442*x[27]*x[27]+0.0562*x[27]*x[30]-0.7251*x[28]*x[28]-0.6521*x[28]*x[29]-0.7049*x[30]*x[30]+0.62*x[1]-0.497*x[2]-0.1799*x[3]+0.9132*x[4]+0.4395*x[5]+0.6708*x[6]+0.5537*x[7]+0.0758*x[8]+0.2226*x[9]+0.3882*x[10]+0.2014*x[11]-0.8073*x[12]+0.0984*x[13]-0.4142*x[14]-0.5883*x[15]+0.6861*x[16]+0.303*x[17]+0.9262*x[18]+0.2199*x[19]-0.1922*x[20]-0.7428*x[21]-0.7244*x[22]-0.5698*x[23]+0.046*x[24]+0.4195*x[25]+0.0448*x[26]-0.6311*x[27]+0.7262*x[28]-0.3714*x[29]-0.9939*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script.