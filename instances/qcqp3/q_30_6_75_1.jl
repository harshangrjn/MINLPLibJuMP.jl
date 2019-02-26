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
@NLconstraint(m, e2, 0.664*x[1]*x[1]+0.5083*x[1]*x[2]-0.3124*x[1]*x[3]-0.4061*x[1]*x[4]+0.0858*x[1]*x[5]-0.2714*x[1]*x[6]-0.8232*x[1]*x[7]-0.1146*x[1]*x[11]+0.9703*x[1]*x[12]+0.9858*x[1]*x[14]+0.859*x[1]*x[16]+0.0264*x[1]*x[17]-0.8325*x[1]*x[19]-0.2402*x[1]*x[20]+0.9962*x[1]*x[23]-0.612*x[1]*x[24]-0.7468*x[1]*x[26]+0.5066*x[1]*x[28]+0.5209*x[1]*x[29]-0.8096*x[1]*x[30]+0.2097*x[2]*x[2]-0.8223*x[2]*x[5]+0.8219*x[2]*x[6]+0.8915*x[2]*x[8]+0.4384*x[2]*x[9]+0.0104*x[2]*x[10]-0.6145*x[2]*x[12]+0.3569*x[2]*x[13]-0.0835*x[2]*x[17]-0.1778*x[2]*x[19]+0.1688*x[2]*x[21]-0.6302*x[2]*x[22]+0.0573*x[2]*x[23]+0.8851*x[2]*x[24]+0.9515*x[2]*x[26]-0.0604*x[2]*x[28]-0.8915*x[2]*x[29]-0.0968*x[3]*x[4]-0.5954*x[3]*x[9]-0.902*x[3]*x[11]+0.9315*x[3]*x[13]+0.4294*x[3]*x[16]+0.7398*x[3]*x[18]-0.6759*x[3]*x[19]-0.0166*x[3]*x[20]+0.3176*x[3]*x[23]-0.434*x[3]*x[25]-0.8219*x[3]*x[27]-0.9323*x[3]*x[28]-0.2384*x[3]*x[30]+0.2604*x[4]*x[9]+0.4567*x[4]*x[10]+0.7508*x[4]*x[11]+0.1384*x[4]*x[14]-0.5557*x[4]*x[15]-0.2385*x[4]*x[16]+0.0199*x[4]*x[18]+0.7632*x[4]*x[21]-0.9947*x[4]*x[24]-0.3877*x[4]*x[27]+0.8177*x[4]*x[28]-0.3725*x[4]*x[30]-0.3487*x[5]*x[5]-0.8521*x[5]*x[10]+0.7201*x[5]*x[13]-0.9411*x[5]*x[16]-0.6075*x[5]*x[18]+0.4446*x[5]*x[19]-0.6889*x[5]*x[20]+0.5368*x[5]*x[21]+0.9675*x[5]*x[24]-0.1386*x[5]*x[25]-0.4474*x[5]*x[27]-0.8875*x[6]*x[6]-0.7171*x[6]*x[8]-0.2179*x[6]*x[10]-0.317*x[6]*x[11]-0.0332*x[6]*x[16]-0.625*x[6]*x[22]+0.2913*x[6]*x[23]+0.0755*x[6]*x[28]-0.0178*x[6]*x[30]-0.215*x[7]*x[7]-0.7588*x[7]*x[8]+0.2416*x[7]*x[10]-0.1383*x[7]*x[13]+0.2175*x[7]*x[17]-0.5311*x[7]*x[18]-0.6322*x[7]*x[19]-0.8211*x[7]*x[20]-0.2421*x[7]*x[21]-0.9794*x[7]*x[22]+0.6866*x[7]*x[23]+0.144*x[7]*x[26]+0.935*x[7]*x[30]-0.7224*x[8]*x[8]-0.79*x[8]*x[11]-0.6261*x[8]*x[12]-0.59*x[8]*x[13]+0.8708*x[8]*x[16]+0.5423*x[8]*x[22]+0.3356*x[8]*x[25]+0.142*x[8]*x[28]+0.5119*x[8]*x[29]+0.7599*x[9]*x[9]-0.4022*x[9]*x[10]+0.4446*x[9]*x[11]-0.8166*x[9]*x[12]+0.6446*x[9]*x[13]-0.1284*x[9]*x[14]-0.3651*x[9]*x[16]-0.2567*x[9]*x[18]+0.1421*x[9]*x[19]-0.8825*x[9]*x[20]-0.6058*x[9]*x[21]+0.503*x[9]*x[25]-0.0462*x[9]*x[28]-0.717*x[9]*x[30]+0.0253*x[10]*x[10]-0.9476*x[10]*x[11]-0.3171*x[10]*x[12]+0.5691*x[10]*x[13]-0.3612*x[10]*x[14]+0.0488*x[10]*x[15]+0.423*x[10]*x[17]+0.2762*x[10]*x[19]+0.0221*x[10]*x[20]+0.3975*x[10]*x[22]-0.5281*x[10]*x[25]-0.722*x[10]*x[26]-0.1433*x[10]*x[27]+0.1957*x[10]*x[28]+0.7882*x[10]*x[29]+0.9988*x[11]*x[12]+0.8552*x[11]*x[19]+0.3681*x[11]*x[20]-0.6187*x[11]*x[21]-0.2208*x[11]*x[22]-0.8222*x[11]*x[23]+0.3944*x[11]*x[24]+0.4808*x[11]*x[25]-0.8075*x[11]*x[26]-0.8579*x[11]*x[30]-0.5665*x[12]*x[12]-0.895*x[12]*x[14]-0.3975*x[12]*x[15]+0.4934*x[12]*x[17]+0.2624*x[12]*x[20]+0.2931*x[12]*x[21]-0.8108*x[12]*x[22]-0.6769*x[12]*x[23]-0.2571*x[12]*x[24]+0.1818*x[12]*x[26]-0.5706*x[12]*x[28]+0.6166*x[12]*x[30]-0.7727*x[13]*x[14]-0.2887*x[13]*x[15]-0.6625*x[13]*x[16]-0.4673*x[13]*x[17]+0.9985*x[13]*x[22]-0.0513*x[13]*x[26]-0.243*x[13]*x[27]+0.9283*x[13]*x[28]-0.9095*x[13]*x[29]+0.0583*x[14]*x[15]+0.823*x[14]*x[16]-0.5969*x[14]*x[17]+0.8222*x[14]*x[20]-0.0405*x[14]*x[22]-0.131*x[14]*x[23]-0.3485*x[14]*x[24]+0.8998*x[14]*x[26]-0.2805*x[14]*x[27]+0.5217*x[14]*x[29]-0.933*x[14]*x[30]+0.9836*x[15]*x[15]-0.9513*x[15]*x[20]-0.9415*x[15]*x[22]-0.4551*x[15]*x[24]+0.4972*x[15]*x[27]-0.429*x[16]*x[16]-0.5465*x[16]*x[17]-0.1411*x[16]*x[19]+0.5444*x[16]*x[20]+0.1779*x[16]*x[24]+0.0402*x[16]*x[25]-0.9732*x[16]*x[26]-0.3496*x[16]*x[29]-0.2575*x[16]*x[30]+0.6694*x[17]*x[17]-0.4773*x[17]*x[20]+0.4754*x[17]*x[22]-0.9142*x[17]*x[23]+0.6845*x[17]*x[24]-0.7219*x[17]*x[25]+0.7798*x[17]*x[26]+0.0733*x[17]*x[27]-0.7376*x[17]*x[29]+0.0256*x[18]*x[18]-0.2386*x[18]*x[22]+0.8016*x[18]*x[24]+0.6794*x[18]*x[27]+0.6011*x[18]*x[28]-0.1622*x[18]*x[29]-0.0369*x[19]*x[19]-0.5992*x[19]*x[23]+0.9241*x[19]*x[24]+0.9873*x[19]*x[25]+0.5992*x[19]*x[26]+0.8133*x[19]*x[29]+0.4239*x[19]*x[30]-0.1981*x[20]*x[22]+0.5006*x[20]*x[23]-0.5385*x[20]*x[25]+0.1593*x[20]*x[30]-0.0871*x[21]*x[24]-0.9382*x[21]*x[30]-0.0148*x[22]*x[24]-0.4904*x[22]*x[27]+0.5096*x[22]*x[29]-0.4809*x[23]*x[23]-0.4848*x[23]*x[24]+0.3062*x[23]*x[26]+0.9318*x[23]*x[30]-0.1853*x[24]*x[24]+0.5946*x[24]*x[26]-0.9998*x[24]*x[28]+0.054*x[24]*x[29]+0.9006*x[25]*x[25]-0.322*x[25]*x[26]-0.4127*x[25]*x[29]-0.6934*x[25]*x[30]+0.408*x[26]*x[27]-0.6923*x[26]*x[28]-0.0869*x[26]*x[29]-0.0219*x[26]*x[30]+0.4814*x[28]*x[28]-0.0782*x[28]*x[30]-0.3978*x[29]*x[30]-0.0586*x[30]*x[30]+0.8491*x[1]-0.9975*x[2]+0.5027*x[3]+0.496*x[4]-0.6663*x[5]+0.2055*x[6]-0.1878*x[7]+0.5555*x[8]+0.0953*x[9]-0.3364*x[10]-0.0269*x[11]+0.958*x[12]-0.871*x[13]-0.3226*x[14]-0.8197*x[15]-0.1814*x[16]-0.8487*x[17]+0.2095*x[18]-0.2767*x[19]-0.3641*x[20]-0.0245*x[21]+0.4568*x[22]+0.3128*x[23]+0.4853*x[24]+0.9152*x[25]-0.5344*x[26]+0.9609*x[27]+0.1761*x[28]+0.344*x[29]-0.3941*x[30] <= 91.762)
@NLconstraint(m, e3, 0.5678*x[1]*x[1]+0.8256*x[1]*x[3]-0.0288*x[1]*x[4]-0.0473*x[1]*x[5]+0.1173*x[1]*x[6]+0.6063*x[1]*x[8]-0.8786*x[1]*x[9]+0.8495*x[1]*x[11]+0.1714*x[1]*x[13]+0.4934*x[1]*x[14]-0.7093*x[1]*x[15]-0.5405*x[1]*x[16]+0.7902*x[1]*x[17]-0.333*x[1]*x[18]+0.9342*x[1]*x[20]+0.6046*x[1]*x[21]-0.7882*x[1]*x[22]+0.4245*x[1]*x[23]-0.3577*x[1]*x[24]-0.6746*x[1]*x[26]-0.1915*x[1]*x[27]-0.0401*x[1]*x[28]-0.9931*x[2]*x[2]+0.0294*x[2]*x[3]+0.5066*x[2]*x[5]+0.9387*x[2]*x[6]+0.4504*x[2]*x[7]-0.8174*x[2]*x[8]-0.1996*x[2]*x[10]+0.3514*x[2]*x[13]+0.316*x[2]*x[16]+0.6336*x[2]*x[20]-0.5032*x[2]*x[21]-0.4267*x[2]*x[22]-0.9986*x[2]*x[23]-0.5176*x[2]*x[26]-0.9889*x[2]*x[27]-0.2244*x[2]*x[28]-0.1486*x[2]*x[29]+0.4237*x[2]*x[30]+0.7526*x[3]*x[3]+0.3702*x[3]*x[8]-0.0792*x[3]*x[12]+0.3093*x[3]*x[13]-0.3792*x[3]*x[14]+0.5826*x[3]*x[16]-0.027*x[3]*x[19]+0.2429*x[3]*x[21]+0.4158*x[3]*x[22]-0.5107*x[3]*x[23]-0.3875*x[3]*x[24]-0.8247*x[3]*x[26]-0.1237*x[3]*x[28]-0.9108*x[3]*x[29]+0.8865*x[3]*x[30]-0.2339*x[4]*x[4]-0.3238*x[4]*x[5]+0.3171*x[4]*x[6]-0.7991*x[4]*x[12]+0.8642*x[4]*x[14]-0.3354*x[4]*x[16]-0.9854*x[4]*x[17]+0.6736*x[4]*x[20]+0.9472*x[4]*x[21]-0.6774*x[4]*x[28]+0.2819*x[4]*x[29]-0.8312*x[4]*x[30]+0.9588*x[5]*x[5]+0.6607*x[5]*x[6]-0.7955*x[5]*x[8]-0.3957*x[5]*x[9]-0.7523*x[5]*x[10]-0.232*x[5]*x[11]+0.7743*x[5]*x[12]-0.4182*x[5]*x[13]-0.8409*x[5]*x[14]+0.2953*x[5]*x[15]-0.6522*x[5]*x[17]+0.2996*x[5]*x[20]-0.319*x[5]*x[22]+0.092*x[5]*x[24]-0.9485*x[5]*x[26]+0.7382*x[5]*x[30]-0.1359*x[6]*x[8]+0.3935*x[6]*x[9]+0.8373*x[6]*x[12]+0.8982*x[6]*x[15]-0.5906*x[6]*x[16]-0.1772*x[6]*x[17]+0.834*x[6]*x[20]-0.6971*x[6]*x[21]-0.5593*x[6]*x[24]+0.5782*x[6]*x[29]-0.0524*x[6]*x[30]+0.3458*x[7]*x[7]-0.5235*x[7]*x[8]-0.1639*x[7]*x[9]+0.8372*x[7]*x[10]+0.6061*x[7]*x[11]-0.0421*x[7]*x[12]+0.0078*x[7]*x[14]+0.992*x[7]*x[17]-0.9383*x[7]*x[19]+0.3232*x[7]*x[20]-0.1077*x[7]*x[22]-0.6034*x[7]*x[27]+0.5167*x[7]*x[29]+0.5893*x[8]*x[13]+0.3498*x[8]*x[14]+0.9897*x[8]*x[15]-0.4292*x[8]*x[17]+0.6811*x[8]*x[21]-0.9318*x[8]*x[22]-0.628*x[8]*x[23]-0.7347*x[8]*x[26]-0.6338*x[8]*x[28]-0.0089*x[8]*x[29]+0.435*x[8]*x[30]-0.9752*x[9]*x[9]+0.7921*x[9]*x[10]-0.6234*x[9]*x[14]-0.2596*x[9]*x[16]+0.038*x[9]*x[18]+0.7493*x[9]*x[20]+0.0256*x[9]*x[21]-0.457*x[9]*x[24]-0.3738*x[9]*x[26]+0.2854*x[9]*x[30]-0.4543*x[10]*x[10]-0.03*x[10]*x[12]-0.9105*x[10]*x[14]-0.7535*x[10]*x[16]-0.1891*x[10]*x[17]+0.6336*x[10]*x[19]+0.1559*x[10]*x[23]-0.3327*x[10]*x[26]-0.0413*x[10]*x[30]-0.3352*x[11]*x[11]-0.9197*x[11]*x[13]-0.3498*x[11]*x[15]-0.3321*x[11]*x[16]+0.3069*x[11]*x[20]-0.6815*x[11]*x[21]-0.9023*x[11]*x[22]-0.3243*x[11]*x[24]-0.7002*x[11]*x[29]+0.8733*x[11]*x[30]+0.7257*x[12]*x[16]+0.807*x[12]*x[17]-0.3247*x[12]*x[18]+0.751*x[12]*x[19]-0.1371*x[12]*x[26]+0.3378*x[12]*x[27]+0.4854*x[12]*x[29]+0.6818*x[12]*x[30]-0.2154*x[13]*x[15]+0.9713*x[13]*x[16]+0.0508*x[13]*x[19]-0.0821*x[13]*x[20]-0.2744*x[13]*x[23]+0.3301*x[13]*x[24]+0.0977*x[13]*x[25]+0.7447*x[14]*x[14]+0.152*x[14]*x[17]+0.6629*x[14]*x[19]-0.8393*x[14]*x[24]+0.1067*x[14]*x[25]-0.9084*x[14]*x[26]+0.761*x[14]*x[27]+0.5597*x[14]*x[29]-0.2003*x[15]*x[15]-0.9542*x[15]*x[16]-0.1824*x[15]*x[17]-0.8383*x[15]*x[18]-0.6698*x[15]*x[19]+0.0278*x[15]*x[20]-0.6996*x[15]*x[27]-0.3721*x[15]*x[28]-0.0097*x[15]*x[29]-0.1389*x[16]*x[17]-0.1557*x[16]*x[19]+0.3259*x[16]*x[20]+0.2066*x[16]*x[21]+0.4973*x[16]*x[22]-0.0794*x[16]*x[26]+0.9822*x[17]*x[17]+0.9661*x[17]*x[18]-0.7344*x[17]*x[22]+0.5813*x[17]*x[23]-0.0259*x[17]*x[24]-0.8178*x[17]*x[26]+0.1696*x[17]*x[29]+0.0474*x[17]*x[30]-0.6102*x[18]*x[19]+0.3413*x[18]*x[20]-0.0321*x[18]*x[23]+0.3867*x[18]*x[30]-0.9594*x[19]*x[19]-0.0941*x[19]*x[22]+0.2824*x[19]*x[25]+0.2279*x[19]*x[29]-0.2678*x[19]*x[30]+0.8357*x[20]*x[26]-0.1385*x[20]*x[27]-0.0028*x[20]*x[28]+0.6343*x[21]*x[21]+0.6558*x[21]*x[23]-0.3929*x[21]*x[24]+0.5754*x[21]*x[28]+0.5376*x[21]*x[29]-0.9033*x[22]*x[22]-0.3758*x[22]*x[24]+0.0538*x[22]*x[25]+0.5201*x[23]*x[23]+0.0502*x[23]*x[25]+0.6526*x[23]*x[27]+0.3788*x[23]*x[28]-0.2957*x[24]*x[24]+0.2894*x[24]*x[25]-0.7789*x[24]*x[26]-0.7901*x[24]*x[27]+0.4762*x[24]*x[28]+0.4641*x[24]*x[29]+0.4006*x[24]*x[30]+0.9277*x[25]*x[25]+0.1455*x[25]*x[26]-0.2138*x[25]*x[28]+0.5281*x[25]*x[29]-0.3557*x[25]*x[30]+0.9451*x[26]*x[26]+0.3845*x[26]*x[28]-0.931*x[26]*x[29]-0.7231*x[26]*x[30]-0.1203*x[27]*x[27]+0.6813*x[27]*x[28]-0.1748*x[27]*x[29]-0.893*x[27]*x[30]+0.3339*x[29]*x[29]+0.1493*x[29]*x[30]-0.0821*x[30]*x[30]+0.497*x[1]-0.9345*x[2]+0.4136*x[3]+0.7518*x[4]-0.343*x[5]-0.4928*x[6]+0.7599*x[7]+0.6319*x[8]-0.8854*x[9]+0.7768*x[10]+0.0498*x[11]-0.87*x[12]+0.2151*x[13]-0.5144*x[14]-0.4663*x[15]-0.7141*x[16]+0.3885*x[17]+0.8542*x[18]+0.7864*x[19]+0.2841*x[20]-0.2428*x[21]-0.8116*x[22]+0.8953*x[23]+0.2995*x[24]-0.2316*x[25]-0.7342*x[26]+0.3091*x[27]-0.114*x[28]-0.6494*x[29]-0.5173*x[30] <= 14.764)
@NLconstraint(m, e4, 0.8496*x[1]*x[1]+0.0791*x[1]*x[2]+0.8057*x[1]*x[3]-0.81*x[1]*x[4]+0.7906*x[1]*x[5]-0.4133*x[1]*x[6]+0.6907*x[1]*x[7]+0.0963*x[1]*x[9]-0.2825*x[1]*x[10]+0.0354*x[1]*x[11]+0.5125*x[1]*x[12]+0.9351*x[1]*x[13]+0.7973*x[1]*x[14]-0.8916*x[1]*x[15]-0.7597*x[1]*x[16]+0.2381*x[1]*x[17]+0.0077*x[1]*x[19]+0.3442*x[1]*x[20]+0.1405*x[1]*x[21]+0.8568*x[1]*x[22]-0.261*x[1]*x[23]-0.8792*x[1]*x[24]-0.0695*x[1]*x[25]-0.827*x[1]*x[27]+0.5092*x[1]*x[28]+0.4796*x[1]*x[30]-0.7576*x[2]*x[2]-0.2986*x[2]*x[3]-0.6192*x[2]*x[4]-0.8556*x[2]*x[5]-0.0737*x[2]*x[7]-0.0614*x[2]*x[8]-0.0832*x[2]*x[9]-0.6275*x[2]*x[10]-0.4122*x[2]*x[11]+0.1479*x[2]*x[15]-0.4795*x[2]*x[22]+0.4531*x[2]*x[27]-0.564*x[3]*x[3]-0.7735*x[3]*x[4]+0.5994*x[3]*x[5]+0.5007*x[3]*x[6]+0.5843*x[3]*x[8]-0.436*x[3]*x[11]-0.2484*x[3]*x[14]+0.5402*x[3]*x[17]+0.4467*x[3]*x[22]-0.7388*x[3]*x[23]+0.449*x[3]*x[24]+0.2*x[3]*x[26]-0.2227*x[3]*x[27]+0.1216*x[3]*x[29]-0.1403*x[4]*x[13]+0.2873*x[4]*x[16]-0.9251*x[4]*x[23]-0.9097*x[4]*x[24]-0.299*x[4]*x[25]-0.037*x[4]*x[28]+0.1356*x[4]*x[29]+0.1424*x[4]*x[30]+0.9099*x[5]*x[5]-0.8295*x[5]*x[6]-0.9163*x[5]*x[7]-0.886*x[5]*x[9]-0.5395*x[5]*x[11]+0.4885*x[5]*x[13]+0.0733*x[5]*x[14]+0.6171*x[5]*x[15]+0.9443*x[5]*x[16]+0.8452*x[5]*x[19]+0.2589*x[5]*x[20]-0.3954*x[5]*x[21]+0.2099*x[5]*x[22]-0.4274*x[5]*x[23]+0.7638*x[5]*x[28]+0.0518*x[5]*x[30]-0.7951*x[6]*x[8]-0.0508*x[6]*x[9]-0.2861*x[6]*x[13]+0.0163*x[6]*x[14]+0.3989*x[6]*x[15]-0.3631*x[6]*x[17]-0.1875*x[6]*x[18]+0.6995*x[6]*x[19]+0.5373*x[6]*x[22]+0.7748*x[6]*x[26]+0.0892*x[6]*x[30]+0.093*x[7]*x[8]-0.4689*x[7]*x[9]+0.4298*x[7]*x[13]-0.4441*x[7]*x[23]-0.9731*x[7]*x[26]-0.0911*x[7]*x[27]-0.8933*x[7]*x[28]-0.3553*x[7]*x[29]-0.1372*x[8]*x[9]+0.239*x[8]*x[11]+0.9347*x[8]*x[13]-0.8911*x[8]*x[14]-0.528*x[8]*x[15]-0.13*x[8]*x[16]-0.2034*x[8]*x[19]-0.69*x[8]*x[20]+0.2966*x[8]*x[22]+0.9593*x[8]*x[23]-0.9582*x[8]*x[25]+0.4532*x[8]*x[27]+0.5574*x[8]*x[28]-0.4571*x[8]*x[29]-0.9344*x[9]*x[9]-0.1114*x[9]*x[10]+0.477*x[9]*x[11]-0.0515*x[9]*x[12]-0.456*x[9]*x[13]+0.1071*x[9]*x[14]+0.3639*x[9]*x[15]+0.1604*x[9]*x[16]+0.7412*x[9]*x[18]-0.842*x[9]*x[20]+0.2298*x[9]*x[21]-0.7632*x[9]*x[23]+0.467*x[9]*x[24]-0.3678*x[9]*x[25]-0.0498*x[9]*x[29]+0.2148*x[10]*x[10]-0.6331*x[10]*x[12]+0.1204*x[10]*x[16]+0.2074*x[10]*x[18]-0.0007*x[10]*x[21]+0.1524*x[10]*x[24]-0.1373*x[10]*x[26]-0.5286*x[10]*x[27]+0.0533*x[10]*x[28]-0.0113*x[10]*x[30]+0.039*x[11]*x[11]+0.746*x[11]*x[12]-0.7493*x[11]*x[14]-0.3501*x[11]*x[15]-0.7046*x[11]*x[22]+0.623*x[11]*x[23]-0.3282*x[11]*x[24]+0.2535*x[11]*x[26]+0.7369*x[11]*x[28]-0.3179*x[11]*x[29]-0.7554*x[12]*x[12]+0.3384*x[12]*x[21]+0.7428*x[12]*x[25]+0.6871*x[12]*x[28]-0.2774*x[12]*x[29]+0.1942*x[13]*x[13]-0.0372*x[13]*x[14]+0.9036*x[13]*x[15]+0.9891*x[13]*x[18]+0.2623*x[13]*x[20]+0.4058*x[13]*x[21]+0.2905*x[13]*x[22]+0.8707*x[13]*x[23]-0.6906*x[13]*x[28]+0.0175*x[14]*x[14]+0.7644*x[14]*x[15]+0.1747*x[14]*x[16]-0.3217*x[14]*x[17]-0.3756*x[14]*x[18]-0.4446*x[14]*x[20]-0.5191*x[14]*x[22]+0.8229*x[14]*x[25]-0.0585*x[14]*x[28]+0.7931*x[14]*x[29]+0.2165*x[14]*x[30]+0.3018*x[15]*x[17]-0.6853*x[15]*x[18]+0.4834*x[15]*x[20]-0.9677*x[15]*x[23]+0.9793*x[15]*x[24]-0.3145*x[15]*x[25]+0.9356*x[15]*x[27]-0.651*x[15]*x[28]-0.7873*x[15]*x[30]+0.5914*x[16]*x[16]-0.82*x[16]*x[18]-0.8009*x[16]*x[19]-0.4826*x[16]*x[21]-0.2493*x[16]*x[22]+0.5075*x[16]*x[23]-0.6548*x[16]*x[25]-0.7159*x[16]*x[26]-0.7049*x[16]*x[28]-0.3438*x[16]*x[29]-0.1976*x[16]*x[30]+0.0079*x[17]*x[17]-0.8311*x[17]*x[23]+0.3371*x[17]*x[24]+0.6852*x[18]*x[18]+0.2669*x[18]*x[19]+0.3508*x[18]*x[24]-0.281*x[18]*x[27]-0.1383*x[18]*x[29]-0.5659*x[18]*x[30]+0.008*x[19]*x[19]-0.2438*x[19]*x[23]+0.8352*x[19]*x[25]-0.6792*x[19]*x[26]-0.505*x[19]*x[27]-0.117*x[19]*x[28]-0.3067*x[19]*x[29]-0.3803*x[19]*x[30]+0.7882*x[20]*x[21]+0.3372*x[20]*x[22]-0.919*x[20]*x[23]-0.7383*x[20]*x[25]+0.7541*x[20]*x[28]+0.5834*x[20]*x[29]+0.1474*x[20]*x[30]+0.0948*x[21]*x[21]-0.3359*x[21]*x[23]+0.165*x[21]*x[24]+0.3496*x[21]*x[29]+0.6279*x[21]*x[30]-0.6031*x[22]*x[26]+0.1115*x[22]*x[28]-0.7796*x[22]*x[30]-0.5661*x[23]*x[23]+0.1693*x[23]*x[26]+0.957*x[23]*x[28]+0.7301*x[23]*x[29]-0.1917*x[23]*x[30]+0.9096*x[24]*x[24]-0.2321*x[24]*x[29]-0.1408*x[25]*x[25]+0.9235*x[25]*x[27]-0.5794*x[25]*x[28]+0.227*x[25]*x[29]-0.3337*x[26]*x[28]-0.3646*x[26]*x[29]-0.4327*x[26]*x[30]-0.1094*x[27]*x[27]+0.3825*x[27]*x[30]+0.5071*x[28]*x[29]+0.8944*x[29]*x[29]-0.3627*x[30]*x[30]+0.065*x[1]+0.7137*x[2]+0.5367*x[3]+0.1169*x[4]+0.1142*x[5]-0.814*x[6]+0.7162*x[7]+0.4038*x[8]+0.3275*x[9]-0.7578*x[10]+0.2681*x[11]+0.618*x[12]+0.8112*x[13]+0.652*x[14]+0.5574*x[15]+0.1105*x[16]-0.685*x[17]+0.2517*x[18]-0.2113*x[19]-0.9952*x[20]-0.9702*x[21]-0.3537*x[22]+0.326*x[23]-0.2615*x[24]-0.1564*x[25]+0.9175*x[26]-0.5903*x[27]+0.9029*x[28]+0.3648*x[29]-0.9126*x[30] <= 17.799)
@NLconstraint(m, e5, 0.7248*x[1]*x[1]-0.3342*x[1]*x[2]+0.2565*x[1]*x[3]+0.0506*x[1]*x[4]+0.1018*x[1]*x[5]+0.6964*x[1]*x[6]-0.3124*x[1]*x[7]-0.0906*x[1]*x[10]-0.4594*x[1]*x[11]-0.7137*x[1]*x[12]+0.6835*x[1]*x[14]-0.9256*x[1]*x[17]+0.8048*x[1]*x[18]-0.8525*x[1]*x[19]+0.6184*x[1]*x[23]+0.6039*x[1]*x[24]-0.1299*x[1]*x[25]+0.7409*x[1]*x[27]+0.7098*x[1]*x[29]-0.7156*x[2]*x[2]+0.7937*x[2]*x[3]-0.9671*x[2]*x[4]-0.8201*x[2]*x[7]-0.9828*x[2]*x[9]-0.2199*x[2]*x[16]-0.1975*x[2]*x[17]+0.6526*x[2]*x[18]+0.8052*x[2]*x[19]+0.2971*x[2]*x[23]+0.1198*x[2]*x[24]+0.217*x[2]*x[25]+0.0079*x[2]*x[27]-0.3018*x[2]*x[28]+0.9843*x[2]*x[30]-0.9696*x[3]*x[5]+0.8791*x[3]*x[9]-0.9214*x[3]*x[11]-0.6654*x[3]*x[12]+0.8961*x[3]*x[14]+0.7488*x[3]*x[15]-0.816*x[3]*x[16]+0.7283*x[3]*x[20]+0.7735*x[3]*x[21]+0.4313*x[3]*x[22]-0.8995*x[3]*x[27]-0.0242*x[3]*x[29]+0.1137*x[3]*x[30]-0.0807*x[4]*x[4]+0.3716*x[4]*x[8]-0.9041*x[4]*x[10]-0.0494*x[4]*x[12]+0.8577*x[4]*x[13]+0.4838*x[4]*x[15]+0.9976*x[4]*x[17]+0.7792*x[4]*x[19]-0.3619*x[4]*x[22]+0.9372*x[4]*x[27]-0.3207*x[4]*x[29]+0.8329*x[5]*x[5]-0.746*x[5]*x[6]+0.5825*x[5]*x[7]+0.9976*x[5]*x[11]-0.1785*x[5]*x[13]-0.0403*x[5]*x[17]-0.5285*x[5]*x[19]-0.3191*x[5]*x[21]+0.4136*x[5]*x[22]-0.4137*x[5]*x[23]+0.3309*x[5]*x[27]+0.8559*x[5]*x[29]+0.9334*x[5]*x[30]+0.1038*x[6]*x[6]-0.6685*x[6]*x[10]-0.2205*x[6]*x[12]+0.8979*x[6]*x[14]+0.9253*x[6]*x[16]-0.7958*x[6]*x[17]-0.2908*x[6]*x[18]-0.3804*x[6]*x[19]-0.2418*x[6]*x[21]+0.3039*x[6]*x[24]-0.0473*x[6]*x[25]-0.2491*x[6]*x[26]+0.9586*x[6]*x[28]-0.6003*x[6]*x[29]+0.5236*x[7]*x[8]-0.6153*x[7]*x[9]-0.4986*x[7]*x[10]-0.8059*x[7]*x[15]-0.5445*x[7]*x[18]+0.5581*x[7]*x[26]+0.821*x[7]*x[29]+0.9429*x[7]*x[30]-0.5765*x[8]*x[9]-0.3061*x[8]*x[10]+0.7112*x[8]*x[11]-0.9048*x[8]*x[15]+0.6349*x[8]*x[17]+0.5005*x[8]*x[20]-0.3052*x[8]*x[22]-0.7796*x[8]*x[23]-0.2323*x[8]*x[24]-0.1328*x[8]*x[25]+0.6701*x[8]*x[29]+0.6946*x[8]*x[30]+0.4003*x[9]*x[9]-0.6794*x[9]*x[11]+0.695*x[9]*x[12]-0.6787*x[9]*x[14]-0.7436*x[9]*x[16]+0.4042*x[9]*x[24]+0.3019*x[9]*x[26]-0.3193*x[9]*x[28]-0.4433*x[9]*x[29]-0.5216*x[9]*x[30]+0.8652*x[10]*x[10]+0.6401*x[10]*x[11]+0.0653*x[10]*x[12]-0.1219*x[10]*x[13]+0.8175*x[10]*x[15]+0.7173*x[10]*x[17]+0.0579*x[10]*x[18]+0.2197*x[10]*x[20]-0.1751*x[10]*x[21]-0.4539*x[10]*x[23]+0.6875*x[10]*x[24]+0.3553*x[10]*x[27]+0.3546*x[10]*x[28]+0.2915*x[10]*x[29]-0.1419*x[10]*x[30]+0.8974*x[11]*x[11]-0.7709*x[11]*x[12]+0.7025*x[11]*x[13]+0.2871*x[11]*x[16]-0.8686*x[11]*x[17]+0.2948*x[11]*x[21]-0.5289*x[11]*x[22]-0.7476*x[11]*x[23]+0.3785*x[11]*x[25]-0.8182*x[11]*x[28]+0.145*x[11]*x[29]+0.7848*x[12]*x[12]+0.329*x[12]*x[18]+0.4575*x[12]*x[19]+0.2925*x[12]*x[20]+0.6509*x[12]*x[23]-0.5194*x[12]*x[24]-0.5375*x[12]*x[25]-0.8567*x[12]*x[26]-0.7567*x[12]*x[27]+0.0559*x[12]*x[28]-0.5979*x[13]*x[13]-0.5328*x[13]*x[15]+0.4108*x[13]*x[16]-0.9746*x[13]*x[22]-0.8816*x[13]*x[23]-0.6054*x[13]*x[24]+0.8048*x[13]*x[26]-0.4608*x[13]*x[28]-0.5202*x[13]*x[30]-0.0126*x[14]*x[14]+0.4756*x[14]*x[15]-0.1092*x[14]*x[17]+0.3646*x[14]*x[19]-0.604*x[14]*x[22]+0.8765*x[14]*x[23]+0.5905*x[14]*x[25]-0.5705*x[14]*x[26]-0.5678*x[14]*x[27]-0.9959*x[14]*x[28]-0.0773*x[14]*x[29]-0.4033*x[14]*x[30]+0.5307*x[15]*x[15]+0.8639*x[15]*x[16]+0.9249*x[15]*x[17]+0.5844*x[15]*x[18]-0.3302*x[15]*x[20]-0.8971*x[15]*x[23]+0.9343*x[15]*x[24]-0.4812*x[15]*x[29]-0.0224*x[15]*x[30]-0.0381*x[16]*x[16]-0.6702*x[16]*x[20]+0.0765*x[16]*x[22]-0.5192*x[16]*x[23]+0.15*x[16]*x[25]+0.7511*x[17]*x[19]+0.2959*x[17]*x[21]+0.6925*x[17]*x[22]-0.7939*x[17]*x[23]-0.4419*x[17]*x[24]-0.4714*x[17]*x[25]+0.0146*x[17]*x[28]+0.9626*x[17]*x[29]+0.0541*x[18]*x[19]-0.7318*x[18]*x[22]-0.6666*x[18]*x[23]+0.6844*x[18]*x[26]+0.2667*x[18]*x[28]+0.9428*x[19]*x[19]-0.8373*x[19]*x[20]+0.1923*x[19]*x[21]+0.9925*x[19]*x[23]-0.9806*x[19]*x[28]-0.9013*x[20]*x[20]-0.7989*x[20]*x[21]+0.959*x[20]*x[23]+0.6824*x[20]*x[24]-0.0939*x[20]*x[26]+0.9649*x[20]*x[27]+0.887*x[20]*x[28]+0.1799*x[20]*x[29]-0.3306*x[20]*x[30]+0.3269*x[21]*x[21]+0.5563*x[21]*x[23]+0.0427*x[21]*x[24]-0.5169*x[21]*x[27]-0.1694*x[21]*x[28]-0.8772*x[22]*x[22]-0.6835*x[22]*x[26]+0.0361*x[22]*x[30]-0.4938*x[23]*x[23]-0.0824*x[23]*x[28]-0.803*x[23]*x[30]-0.1227*x[24]*x[24]+0.3447*x[24]*x[26]-0.5165*x[24]*x[30]+0.8204*x[25]*x[25]-0.0419*x[25]*x[26]+0.7291*x[25]*x[29]+0.1793*x[25]*x[30]-0.2906*x[26]*x[26]-0.4859*x[26]*x[28]+0.7745*x[26]*x[29]+0.5955*x[27]*x[27]-0.5433*x[27]*x[28]+0.0963*x[28]*x[28]+0.9131*x[28]*x[29]-0.9212*x[28]*x[30]-0.5989*x[30]*x[30]+0.3632*x[1]+0.7655*x[2]-0.2558*x[3]-0.3053*x[4]+0.1917*x[5]+0.0578*x[6]+0.5697*x[7]+0.8762*x[8]-0.1523*x[9]-0.8181*x[10]+0.0412*x[11]-0.3223*x[12]+0.8437*x[13]-0.4429*x[14]+0.4707*x[15]-0.3139*x[16]-0.9997*x[17]-0.6852*x[18]-0.4383*x[19]+0.8332*x[20]-0.9454*x[21]-0.7802*x[22]+0.1448*x[23]-0.3755*x[24]+0.4462*x[25]+0.2352*x[26]+0.1629*x[27]+0.2847*x[28]+0.6619*x[29]-0.872*x[30] <= 87.288)
@NLconstraint(m, e6, 0.8412*x[1]*x[3]-0.7873*x[1]*x[2]-0.495*x[1]*x[5]+0.2405*x[1]*x[6]-0.1204*x[1]*x[7]-0.3264*x[1]*x[8]-0.4306*x[1]*x[9]-0.2724*x[1]*x[10]-0.4368*x[1]*x[11]+0.6508*x[1]*x[12]-0.7863*x[1]*x[13]+0.267*x[1]*x[15]-0.1086*x[1]*x[16]-0.9236*x[1]*x[17]-0.9839*x[1]*x[21]-0.6711*x[1]*x[23]+0.6487*x[1]*x[25]-0.255*x[1]*x[26]-0.3431*x[1]*x[27]+0.6568*x[1]*x[29]+0.9668*x[1]*x[30]+0.0781*x[2]*x[2]-0.0251*x[2]*x[4]-0.3213*x[2]*x[5]+0.8957*x[2]*x[7]+0.8012*x[2]*x[8]+0.3741*x[2]*x[9]+0.7507*x[2]*x[14]+0.6214*x[2]*x[15]-0.9874*x[2]*x[17]-0.824*x[2]*x[18]-0.7364*x[2]*x[28]+0.5632*x[2]*x[30]+0.0277*x[3]*x[6]+0.6984*x[3]*x[7]-0.8929*x[3]*x[8]+0.9844*x[3]*x[10]+0.0604*x[3]*x[11]-0.8473*x[3]*x[13]-0.6641*x[3]*x[14]-0.5341*x[3]*x[16]-0.7171*x[3]*x[18]-0.9632*x[3]*x[19]-0.3165*x[3]*x[21]-0.4889*x[3]*x[23]-0.8841*x[3]*x[24]+0.1736*x[3]*x[25]+0.9399*x[3]*x[29]-0.491*x[3]*x[30]+0.2638*x[4]*x[4]-0.2165*x[4]*x[6]+0.1249*x[4]*x[7]-0.917*x[4]*x[9]-0.5353*x[4]*x[10]+0.6693*x[4]*x[11]-0.1613*x[4]*x[14]+0.014*x[4]*x[15]-0.8024*x[4]*x[17]+0.2702*x[4]*x[18]-0.5259*x[4]*x[19]-0.3402*x[4]*x[20]-0.1302*x[4]*x[26]+0.0525*x[4]*x[27]+0.0527*x[4]*x[30]+0.6322*x[5]*x[7]+0.1137*x[5]*x[9]+0.5705*x[5]*x[14]-0.9104*x[5]*x[15]+0.258*x[5]*x[17]+0.9474*x[5]*x[18]+0.074*x[5]*x[19]+0.3502*x[5]*x[22]+0.8905*x[5]*x[26]-0.3495*x[5]*x[27]+0.6298*x[5]*x[30]+0.6175*x[6]*x[8]+0.7286*x[6]*x[9]-0.0633*x[6]*x[11]+0.011*x[6]*x[13]+0.9293*x[6]*x[14]-0.6776*x[6]*x[15]-0.8715*x[6]*x[18]-0.2535*x[6]*x[19]+0.2768*x[6]*x[22]-0.2311*x[6]*x[23]+0.3271*x[6]*x[25]-0.4892*x[6]*x[30]+0.4076*x[7]*x[7]+0.5567*x[7]*x[9]+0.4763*x[7]*x[11]-0.4468*x[7]*x[14]-0.8031*x[7]*x[15]-0.6015*x[7]*x[16]-0.512*x[7]*x[17]-0.3397*x[7]*x[18]+0.0676*x[7]*x[22]+0.0997*x[7]*x[25]-0.6051*x[7]*x[26]+0.4815*x[7]*x[27]+0.3643*x[7]*x[28]+0.963*x[7]*x[29]-0.0217*x[8]*x[9]+0.3736*x[8]*x[10]-0.1637*x[8]*x[13]+0.3246*x[8]*x[14]+0.8406*x[8]*x[15]-0.4054*x[8]*x[16]-0.1194*x[8]*x[17]-0.6792*x[8]*x[18]-0.0179*x[8]*x[24]+0.5678*x[8]*x[26]-0.6136*x[8]*x[30]-0.0113*x[9]*x[9]-0.7408*x[9]*x[10]+0.4983*x[9]*x[11]+0.7166*x[9]*x[12]+0.7196*x[9]*x[18]+0.8041*x[9]*x[19]-0.417*x[9]*x[20]-0.4665*x[9]*x[22]-0.9472*x[9]*x[26]+0.3186*x[9]*x[27]+0.0008*x[9]*x[28]+0.4112*x[9]*x[29]-0.549*x[9]*x[30]+0.714*x[10]*x[11]+0.3726*x[10]*x[14]+0.2059*x[10]*x[17]+0.3263*x[10]*x[20]+0.0664*x[10]*x[21]-0.3905*x[10]*x[22]-0.396*x[10]*x[23]+0.2489*x[10]*x[27]-0.3591*x[11]*x[11]+0.8875*x[11]*x[12]-0.1074*x[11]*x[13]+0.3386*x[11]*x[14]+0.1374*x[11]*x[17]+0.0261*x[11]*x[19]-0.6731*x[11]*x[21]+0.2712*x[11]*x[22]+0.8375*x[11]*x[23]+0.7226*x[11]*x[24]-0.6796*x[11]*x[25]+0.0595*x[11]*x[26]-0.26*x[11]*x[30]-0.3089*x[12]*x[15]+0.9926*x[12]*x[16]-0.2871*x[12]*x[18]-0.9585*x[12]*x[19]+0.1679*x[12]*x[22]+0.3712*x[12]*x[25]-0.6788*x[13]*x[13]-0.5049*x[13]*x[14]+0.6338*x[13]*x[18]-0.6546*x[13]*x[20]+0.7588*x[13]*x[21]-0.9789*x[13]*x[22]-0.1334*x[13]*x[23]-0.1394*x[13]*x[24]+0.2722*x[13]*x[26]-0.615*x[13]*x[28]+0.3584*x[14]*x[14]+0.4657*x[14]*x[16]+0.6566*x[14]*x[17]-0.6826*x[14]*x[19]+0.1999*x[14]*x[22]-0.0253*x[14]*x[23]-0.1107*x[14]*x[24]-0.8714*x[14]*x[25]-0.0102*x[14]*x[27]+0.4648*x[14]*x[30]-0.0905*x[15]*x[16]+0.5086*x[15]*x[19]-0.2488*x[15]*x[21]+0.4272*x[15]*x[23]+0.5776*x[15]*x[25]+0.2769*x[15]*x[26]-0.063*x[15]*x[30]-0.7313*x[16]*x[16]+0.7715*x[16]*x[24]+0.1597*x[16]*x[26]+0.7531*x[16]*x[27]-0.5785*x[17]*x[17]-0.8593*x[17]*x[18]-0.4655*x[17]*x[19]+0.0644*x[17]*x[26]-0.906*x[18]*x[18]-0.6081*x[18]*x[19]+0.4693*x[18]*x[20]-0.1253*x[18]*x[22]-0.4972*x[18]*x[23]+0.5691*x[18]*x[26]+0.5647*x[18]*x[27]+0.2197*x[18]*x[29]-0.4624*x[18]*x[30]+0.1284*x[19]*x[19]-0.5544*x[19]*x[20]-0.7919*x[19]*x[21]+0.4457*x[19]*x[22]-0.5018*x[19]*x[25]-0.1074*x[19]*x[27]+0.3765*x[19]*x[28]-0.5653*x[19]*x[29]+0.6294*x[19]*x[30]-0.2739*x[20]*x[20]-0.4372*x[20]*x[22]+0.512*x[20]*x[24]-0.844*x[20]*x[25]+0.9969*x[20]*x[26]-0.5885*x[20]*x[27]-0.1144*x[20]*x[29]-0.6107*x[20]*x[30]+0.7908*x[21]*x[21]+0.182*x[21]*x[22]+0.9472*x[21]*x[23]+0.4685*x[21]*x[24]+0.1261*x[21]*x[25]-0.2826*x[21]*x[26]-0.9628*x[21]*x[28]-0.1975*x[22]*x[22]-0.8846*x[22]*x[26]-0.3241*x[22]*x[27]+0.2676*x[22]*x[28]-0.8234*x[23]*x[23]-0.403*x[23]*x[24]+0.9641*x[23]*x[26]-0.771*x[23]*x[28]+0.1811*x[24]*x[24]-0.0485*x[24]*x[25]-0.96*x[24]*x[29]+0.2713*x[25]*x[25]+0.6957*x[25]*x[27]-0.0005*x[25]*x[28]+0.3724*x[26]*x[29]+0.3826*x[27]*x[27]-0.7448*x[27]*x[28]-0.4609*x[28]*x[30]+0.8893*x[29]*x[30]+0.0209*x[30]*x[30]+0.7726*x[1]-0.3305*x[2]-0.4044*x[3]+0.893*x[4]-0.1441*x[5]+0.2757*x[6]-0.4443*x[7]-0.8606*x[8]+0.262*x[9]-0.9311*x[10]+0.6962*x[11]+0.34*x[12]-0.6767*x[13]+0.5489*x[14]+0.6817*x[15]-0.8311*x[16]-0.3426*x[17]+0.649*x[18]+0.6072*x[19]-0.069*x[20]+0.6601*x[21]+0.1823*x[22]+0.147*x[23]+0.2094*x[24]-0.1199*x[25]-0.186*x[26]-0.5173*x[27]+0.5678*x[28]-0.7257*x[29]-0.8313*x[30] <= 48.676)
@NLconstraint(m, e7, (-0.0407*x[1]*x[1])-0.5057*x[1]*x[2]-0.1218*x[1]*x[8]+0.9947*x[1]*x[9]-0.0459*x[1]*x[10]-0.3097*x[1]*x[11]+0.0024*x[1]*x[12]+0.6144*x[1]*x[14]+0.1497*x[1]*x[15]-0.4028*x[1]*x[16]-0.0479*x[1]*x[17]-0.8832*x[1]*x[20]-0.6479*x[1]*x[21]+0.5852*x[1]*x[24]-0.324*x[1]*x[25]+0.2025*x[1]*x[27]-0.7738*x[1]*x[28]-0.8882*x[1]*x[30]+0.7234*x[2]*x[5]+0.9835*x[2]*x[7]-0.1561*x[2]*x[8]-0.7911*x[2]*x[9]-0.9623*x[2]*x[10]+0.8674*x[2]*x[14]+0.2896*x[2]*x[18]+0.4318*x[2]*x[21]-0.2234*x[2]*x[22]-0.5767*x[2]*x[25]+0.9638*x[2]*x[27]-0.8306*x[2]*x[30]-0.4428*x[3]*x[3]+0.7551*x[3]*x[4]+0.1343*x[3]*x[7]-0.0174*x[3]*x[13]+0.1535*x[3]*x[17]+0.4655*x[3]*x[18]+0.6368*x[3]*x[19]-0.3349*x[3]*x[20]-0.3947*x[3]*x[21]+0.4457*x[3]*x[22]-0.7811*x[3]*x[26]+0.0561*x[3]*x[28]+0.9949*x[3]*x[29]+0.0175*x[3]*x[30]+0.3907*x[4]*x[4]+0.8208*x[4]*x[6]-0.4831*x[4]*x[7]+0.0998*x[4]*x[8]+0.9517*x[4]*x[11]+0.6618*x[4]*x[12]-0.1377*x[4]*x[14]-0.0534*x[4]*x[16]-0.1808*x[4]*x[17]+0.4959*x[4]*x[18]+0.8739*x[4]*x[19]+0.4761*x[4]*x[27]-0.76*x[4]*x[30]+0.1344*x[5]*x[5]+0.4302*x[5]*x[6]+0.2268*x[5]*x[11]-0.8581*x[5]*x[15]-0.9698*x[5]*x[17]-0.4175*x[5]*x[19]-0.6777*x[5]*x[20]-0.2106*x[5]*x[21]-0.8518*x[5]*x[22]-0.2044*x[5]*x[23]-0.2839*x[5]*x[24]-0.9479*x[5]*x[27]+0.7982*x[5]*x[30]-0.6029*x[6]*x[7]+0.4451*x[6]*x[11]-0.3462*x[6]*x[12]-0.4838*x[6]*x[20]-0.1554*x[6]*x[23]+0.6486*x[6]*x[24]-0.2053*x[6]*x[25]-0.2599*x[6]*x[29]-0.5853*x[6]*x[30]-0.3857*x[7]*x[8]-0.526*x[7]*x[10]+0.5559*x[7]*x[11]-0.1299*x[7]*x[12]+0.5735*x[7]*x[13]-0.3121*x[7]*x[14]-0.2527*x[7]*x[16]+0.6901*x[7]*x[17]-0.224*x[7]*x[18]-0.504*x[7]*x[19]-0.3558*x[7]*x[20]+0.692*x[7]*x[26]+0.2166*x[7]*x[27]-0.3207*x[7]*x[28]-0.7537*x[7]*x[30]+0.3029*x[8]*x[8]-0.9003*x[8]*x[9]-0.5601*x[8]*x[12]+0.1253*x[8]*x[15]+0.3511*x[8]*x[20]+0.4034*x[8]*x[21]+0.5915*x[8]*x[24]-0.9321*x[8]*x[29]-0.7018*x[8]*x[30]+0.9676*x[9]*x[9]+0.0077*x[9]*x[10]+0.6789*x[9]*x[13]-0.9712*x[9]*x[15]-0.1112*x[9]*x[16]-0.7022*x[9]*x[17]+0.2821*x[9]*x[20]-0.4521*x[9]*x[21]+0.3044*x[9]*x[25]+0.8173*x[9]*x[27]-0.6102*x[9]*x[29]+0.4353*x[9]*x[30]+0.8494*x[10]*x[10]-0.0141*x[10]*x[11]-0.2351*x[10]*x[12]-0.5149*x[10]*x[15]+0.4171*x[10]*x[16]-0.4851*x[10]*x[17]+0.2186*x[10]*x[19]-0.5165*x[10]*x[20]-0.0409*x[10]*x[21]-0.0684*x[10]*x[23]+0.8067*x[10]*x[26]-0.741*x[10]*x[28]+0.244*x[10]*x[29]+0.4082*x[10]*x[30]-0.8271*x[11]*x[14]+0.0259*x[11]*x[16]+0.5978*x[11]*x[17]+0.6645*x[11]*x[18]-0.8019*x[11]*x[19]+0.4188*x[11]*x[20]-0.9602*x[11]*x[21]+0.2757*x[11]*x[22]-0.9884*x[11]*x[24]+0.5653*x[11]*x[25]+0.184*x[11]*x[26]-0.2369*x[11]*x[30]-0.8693*x[12]*x[12]-0.8708*x[12]*x[15]-0.1068*x[12]*x[17]+0.324*x[12]*x[18]+0.2638*x[12]*x[21]+0.6292*x[12]*x[22]+0.1876*x[12]*x[24]+0.6185*x[12]*x[27]+0.0757*x[12]*x[29]-0.6704*x[13]*x[13]+0.9749*x[13]*x[14]-0.3579*x[13]*x[18]+0.362*x[13]*x[19]+0.282*x[13]*x[21]-0.3487*x[13]*x[22]+0.5062*x[13]*x[23]+0.7708*x[13]*x[29]-0.1884*x[13]*x[30]-0.1407*x[14]*x[17]-0.8917*x[14]*x[23]+0.5454*x[14]*x[26]+0.6439*x[15]*x[15]+0.761*x[15]*x[17]-0.4597*x[15]*x[18]-0.3876*x[15]*x[19]+0.5233*x[15]*x[20]+0.4884*x[15]*x[23]-0.7583*x[15]*x[24]-0.6211*x[15]*x[26]+0.1005*x[15]*x[28]+0.4067*x[15]*x[29]+0.8099*x[15]*x[30]+0.5285*x[16]*x[16]+0.2924*x[16]*x[17]+0.4647*x[16]*x[20]+0.2275*x[16]*x[22]-0.1062*x[16]*x[24]+0.2242*x[16]*x[25]-0.261*x[16]*x[26]+0.8666*x[16]*x[27]-0.2037*x[16]*x[28]+0.1854*x[16]*x[29]-0.5562*x[16]*x[30]-0.8889*x[17]*x[17]-0.4716*x[17]*x[19]-0.938*x[17]*x[20]+0.5234*x[17]*x[23]+0.1153*x[17]*x[25]-0.7001*x[17]*x[27]+0.2143*x[17]*x[28]-0.4193*x[17]*x[29]+0.7964*x[18]*x[20]-0.3125*x[18]*x[23]-0.9895*x[18]*x[24]+0.9544*x[18]*x[26]-0.9451*x[18]*x[29]+0.188*x[19]*x[19]+0.625*x[19]*x[21]+0.6788*x[19]*x[23]-0.5179*x[19]*x[26]+0.2132*x[19]*x[28]-0.6344*x[19]*x[29]+0.0813*x[19]*x[30]-0.7783*x[20]*x[20]-0.5175*x[20]*x[21]+0.1427*x[20]*x[23]+0.2631*x[20]*x[24]-0.5929*x[20]*x[26]+0.7394*x[20]*x[28]-0.5374*x[20]*x[30]-0.1051*x[21]*x[22]+0.2477*x[21]*x[26]-0.0076*x[21]*x[29]+0.6243*x[21]*x[30]+0.7406*x[22]*x[22]-0.1626*x[22]*x[24]+0.8408*x[22]*x[25]-0.9828*x[22]*x[28]+0.0342*x[22]*x[30]+0.0391*x[23]*x[23]-0.6591*x[23]*x[25]-0.3588*x[23]*x[26]-0.8871*x[23]*x[27]+0.979*x[23]*x[28]+0.1109*x[23]*x[29]+0.2196*x[23]*x[30]-0.0539*x[24]*x[24]-0.6299*x[24]*x[28]+0.9995*x[25]*x[25]+0.3626*x[25]*x[26]+0.7031*x[25]*x[27]+0.4754*x[25]*x[28]-0.5439*x[26]*x[27]+0.4409*x[26]*x[29]+0.2193*x[27]*x[27]+0.8762*x[27]*x[28]+0.6892*x[28]*x[30]+0.2511*x[29]*x[30]-0.6111*x[30]*x[30]-0.5636*x[1]-0.37*x[2]-0.5817*x[3]+0.3188*x[4]+0.8854*x[5]+0.0576*x[6]+0.5568*x[7]-0.6497*x[8]+0.233*x[9]+0.245*x[10]-0.4428*x[11]-0.6108*x[12]+0.1558*x[13]+0.1136*x[14]+0.0341*x[15]+0.1486*x[16]+0.3846*x[17]+0.1753*x[18]-0.1409*x[19]+0.7224*x[20]+0.9928*x[21]-0.4614*x[22]+0.2362*x[23]-0.7496*x[24]-0.4323*x[25]-0.4002*x[26]+0.4517*x[27]-0.5902*x[28]-0.765*x[29]+0.3775*x[30] <= 74.091)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script.