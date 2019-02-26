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
@NLconstraint(m, e1, -(0.6871*x[1]*x[1]+0.3788*x[1]*x[2]-0.5583*x[1]*x[9]+0.2391*x[1]*x[10]-0.5802*x[1]*x[12]+0.559*x[1]*x[13]-0.9418*x[1]*x[17]+0.1783*x[1]*x[18]-0.7312*x[1]*x[19]+0.686*x[1]*x[20]+0.1056*x[1]*x[21]+0.8627*x[1]*x[22]+0.2122*x[1]*x[23]-0.5013*x[1]*x[24]-0.9014*x[1]*x[25]+0.6065*x[1]*x[26]-0.2764*x[1]*x[27]-0.072*x[1]*x[28]-0.4309*x[1]*x[30]+0.7153*x[2]*x[2]-0.9585*x[2]*x[3]+0.9872*x[2]*x[4]-0.7354*x[2]*x[6]+0.3121*x[2]*x[7]+0.3462*x[2]*x[8]-0.6054*x[2]*x[11]-0.6808*x[2]*x[12]+0.564*x[2]*x[15]+0.8549*x[2]*x[16]-0.2255*x[2]*x[18]+0.0153*x[2]*x[19]+0.7478*x[2]*x[26]+0.0664*x[2]*x[27]+0.921*x[2]*x[29]-0.5011*x[3]*x[4]+0.7348*x[3]*x[5]+0.1988*x[3]*x[10]-0.8325*x[3]*x[16]+0.9131*x[3]*x[17]-0.3844*x[3]*x[20]+0.2254*x[3]*x[21]-0.4381*x[3]*x[23]+0.0362*x[3]*x[25]-0.8734*x[3]*x[28]+0.3218*x[3]*x[30]-0.1389*x[4]*x[4]+0.9425*x[4]*x[5]-0.5643*x[4]*x[9]-0.1296*x[4]*x[10]+0.0535*x[4]*x[15]-0.1266*x[4]*x[16]+0.2591*x[4]*x[17]+0.296*x[4]*x[18]+0.3598*x[4]*x[23]-0.9684*x[4]*x[24]+0.856*x[4]*x[25]-0.8668*x[4]*x[27]-0.2064*x[4]*x[28]+0.1934*x[4]*x[30]+0.4705*x[5]*x[5]-0.4814*x[5]*x[6]+0.2486*x[5]*x[10]-0.5316*x[5]*x[11]+0.7204*x[5]*x[12]-0.0136*x[5]*x[13]+0.9864*x[5]*x[17]-0.7359*x[5]*x[18]+0.4676*x[5]*x[26]+0.628*x[5]*x[27]-0.8657*x[5]*x[28]-0.3989*x[5]*x[29]+0.1086*x[5]*x[30]-0.3351*x[6]*x[6]-0.0755*x[6]*x[7]-0.5727*x[6]*x[8]-0.6892*x[6]*x[12]-0.2807*x[6]*x[14]+0.5175*x[6]*x[16]-0.4932*x[6]*x[17]-0.5217*x[6]*x[19]-0.6497*x[6]*x[20]-0.2322*x[6]*x[21]+0.1904*x[6]*x[22]+0.9215*x[6]*x[23]-0.2359*x[6]*x[24]-0.0566*x[6]*x[27]+0.9188*x[6]*x[28]+0.0651*x[6]*x[29]+0.657*x[6]*x[30]-0.0264*x[7]*x[7]-0.9764*x[7]*x[9]+0.7765*x[7]*x[12]-0.8298*x[7]*x[14]+0.1502*x[7]*x[16]-0.0761*x[7]*x[18]+0.7231*x[7]*x[21]-0.1308*x[7]*x[22]-0.0467*x[7]*x[23]-0.2327*x[7]*x[24]-0.1425*x[8]*x[9]-0.594*x[8]*x[11]-0.6756*x[8]*x[13]-0.9027*x[8]*x[16]-0.8338*x[8]*x[17]+0.5726*x[8]*x[18]-0.4256*x[8]*x[20]+0.2725*x[8]*x[21]-0.9411*x[8]*x[22]-0.1941*x[8]*x[29]-0.4973*x[8]*x[30]-0.678*x[9]*x[9]+0.6893*x[9]*x[12]+0.6854*x[9]*x[14]+0.1662*x[9]*x[18]-0.7268*x[9]*x[19]-0.394*x[9]*x[21]-0.9202*x[9]*x[22]-0.6623*x[9]*x[23]-0.6637*x[9]*x[25]-0.7004*x[9]*x[28]-0.578*x[9]*x[29]+0.2296*x[9]*x[30]-0.0377*x[10]*x[11]-0.6504*x[10]*x[13]-0.794*x[10]*x[14]+0.3307*x[10]*x[15]+0.614*x[10]*x[16]-0.1661*x[10]*x[18]+0.466*x[10]*x[23]+0.2668*x[10]*x[25]+0.05*x[10]*x[26]+0.2806*x[10]*x[28]-0.5617*x[11]*x[11]+0.2979*x[11]*x[13]+0.3537*x[11]*x[16]+0.2677*x[11]*x[17]+0.8087*x[11]*x[18]-0.7426*x[11]*x[21]-0.7102*x[11]*x[22]+0.8326*x[11]*x[23]-0.3595*x[11]*x[24]+0.1672*x[11]*x[25]+0.5634*x[11]*x[26]+0.5138*x[11]*x[29]-0.2024*x[12]*x[12]+0.3784*x[12]*x[14]-0.3701*x[12]*x[15]+0.6773*x[12]*x[18]+0.353*x[12]*x[22]-0.889*x[12]*x[27]-0.335*x[12]*x[28]-0.6595*x[13]*x[13]+0.8975*x[13]*x[14]+0.1017*x[13]*x[15]-0.3264*x[13]*x[16]-0.8235*x[13]*x[17]+0.435*x[13]*x[18]-0.1744*x[13]*x[19]-0.6252*x[13]*x[23]-0.7216*x[13]*x[24]+0.2887*x[13]*x[26]-0.6047*x[13]*x[30]+0.4405*x[14]*x[14]-0.4016*x[14]*x[15]+0.9981*x[14]*x[18]+0.696*x[14]*x[19]-0.3502*x[14]*x[22]-0.0007*x[14]*x[23]+0.7115*x[14]*x[25]+0.802*x[14]*x[27]+0.5043*x[14]*x[28]+0.2334*x[14]*x[30]+0.1953*x[15]*x[15]-0.6191*x[15]*x[16]-0.234*x[15]*x[18]+0.1551*x[15]*x[20]-0.1927*x[15]*x[22]-0.8905*x[15]*x[24]-0.5879*x[15]*x[27]-0.6651*x[15]*x[28]-0.0306*x[16]*x[18]-0.7116*x[16]*x[20]-0.6959*x[16]*x[23]-0.5752*x[16]*x[25]+0.7048*x[16]*x[27]+0.5872*x[16]*x[28]+0.9612*x[16]*x[29]+0.027*x[17]*x[17]-0.3977*x[17]*x[21]-0.0718*x[17]*x[23]+0.9599*x[17]*x[24]+0.5443*x[17]*x[26]+0.9178*x[17]*x[29]-0.6574*x[17]*x[30]+0.7213*x[18]*x[18]+0.4319*x[18]*x[22]-0.1652*x[18]*x[23]+0.0688*x[18]*x[24]-0.6309*x[18]*x[26]+0.074*x[18]*x[30]+0.5677*x[19]*x[19]-0.0251*x[19]*x[22]-0.9971*x[19]*x[24]-0.8619*x[19]*x[26]-0.3974*x[19]*x[28]-0.9913*x[19]*x[30]+0.4277*x[20]*x[22]-0.7662*x[20]*x[25]-0.2706*x[20]*x[26]+0.0134*x[20]*x[28]+0.8871*x[20]*x[29]+0.8967*x[20]*x[30]+0.1416*x[21]*x[25]-0.243*x[21]*x[26]-0.5004*x[21]*x[27]-0.3901*x[21]*x[28]-0.8305*x[21]*x[30]+0.4715*x[22]*x[23]+0.5557*x[22]*x[24]-0.56*x[22]*x[26]+0.8285*x[22]*x[30]+0.2471*x[23]*x[25]+0.3043*x[23]*x[26]-0.5138*x[23]*x[27]-0.7749*x[23]*x[30]-0.901*x[24]*x[24]+0.5539*x[24]*x[25]-0.0314*x[24]*x[27]-0.2719*x[24]*x[29]+0.5521*x[24]*x[30]+0.8627*x[25]*x[25]-0.0881*x[25]*x[26]-0.833*x[25]*x[27]-0.9191*x[25]*x[30]-0.0698*x[26]*x[26]-0.8855*x[26]*x[27]+0.771*x[26]*x[30]-0.1813*x[27]*x[27]-0.8623*x[27]*x[30]-0.4107*x[30]*x[30]-0.3345*x[1]+0.2003*x[2]+0.2509*x[3]+0.114*x[4]-0.3419*x[5]+0.3496*x[6]-0.3646*x[7]+0.422*x[8]-0.9374*x[9]+0.0919*x[10]-0.53*x[11]+0.7694*x[12]+0.2933*x[13]+0.7864*x[14]-0.7547*x[15]-0.4223*x[16]+0.3431*x[17]+0.7091*x[18]+0.0773*x[19]-0.4042*x[20]-0.7289*x[21]-0.8147*x[22]+0.2396*x[23]-0.714*x[24]-0.5711*x[25]-0.3826*x[26]-0.8766*x[27]-0.6181*x[28]+0.598*x[29]-0.8331*x[30])+x[31] == 0.0)
@NLconstraint(m, e2, 0.7811*x[1]*x[1]-0.702*x[1]*x[4]+0.8027*x[1]*x[5]-0.5748*x[1]*x[6]+0.8764*x[1]*x[7]-0.6659*x[1]*x[8]-0.5334*x[1]*x[11]-0.0032*x[1]*x[12]+0.5943*x[1]*x[13]+0.0134*x[1]*x[14]+0.2414*x[1]*x[15]+0.2141*x[1]*x[16]+0.1599*x[1]*x[17]-0.3197*x[1]*x[18]-0.7634*x[1]*x[19]+0.2799*x[1]*x[21]+0.8816*x[1]*x[22]-0.3096*x[1]*x[23]+0.7448*x[1]*x[24]+0.6217*x[1]*x[26]+0.4596*x[1]*x[28]+0.8201*x[1]*x[29]+0.1663*x[2]*x[2]-0.4455*x[2]*x[3]-0.6371*x[2]*x[4]+0.6041*x[2]*x[6]-0.2217*x[2]*x[8]-0.37*x[2]*x[10]-0.8528*x[2]*x[11]-0.5829*x[2]*x[12]-0.6742*x[2]*x[13]-0.7588*x[2]*x[16]-0.898*x[2]*x[18]-0.3627*x[2]*x[19]+0.2459*x[2]*x[20]-0.8361*x[2]*x[21]-0.2428*x[2]*x[23]+0.946*x[2]*x[24]+0.9877*x[2]*x[26]-0.3114*x[2]*x[27]-0.5333*x[2]*x[30]+0.8253*x[3]*x[3]+0.8497*x[3]*x[4]-0.3335*x[3]*x[8]-0.187*x[3]*x[10]+0.6513*x[3]*x[14]+0.8687*x[3]*x[19]+0.5968*x[3]*x[21]-0.5301*x[3]*x[24]-0.0406*x[3]*x[25]-0.4444*x[3]*x[30]+0.6257*x[4]*x[4]+0.2375*x[4]*x[8]-0.5694*x[4]*x[9]-0.2487*x[4]*x[10]+0.1207*x[4]*x[16]+0.0941*x[4]*x[17]+0.3582*x[4]*x[21]+0.2026*x[4]*x[23]+0.5242*x[4]*x[25]-0.5255*x[4]*x[26]+0.6676*x[4]*x[28]+0.9939*x[4]*x[29]-0.2557*x[5]*x[5]+0.631*x[5]*x[7]+0.6106*x[5]*x[8]+0.6284*x[5]*x[9]-0.3518*x[5]*x[12]+0.176*x[5]*x[13]+0.7071*x[5]*x[16]-0.8185*x[5]*x[18]+0.5056*x[5]*x[22]-0.4934*x[5]*x[23]-0.2665*x[5]*x[24]+0.7088*x[5]*x[25]+0.1724*x[5]*x[28]-0.7508*x[5]*x[30]-0.7169*x[6]*x[10]+0.3028*x[6]*x[11]+0.5254*x[6]*x[13]+0.8204*x[6]*x[16]+0.3728*x[6]*x[18]+0.9245*x[6]*x[22]+0.7402*x[6]*x[23]+0.333*x[6]*x[27]-0.2609*x[6]*x[29]+0.5478*x[6]*x[30]-0.6223*x[7]*x[8]-0.0005*x[7]*x[11]-0.6865*x[7]*x[17]+0.1474*x[7]*x[18]+0.3455*x[7]*x[20]+0.7115*x[7]*x[21]-0.9742*x[7]*x[25]-0.215*x[7]*x[29]+0.2282*x[7]*x[30]-0.3405*x[8]*x[8]+0.7351*x[8]*x[10]+0.9326*x[8]*x[11]-0.6717*x[8]*x[13]-0.0566*x[8]*x[15]+0.503*x[8]*x[16]+0.023*x[8]*x[17]+0.255*x[8]*x[21]+0.6762*x[8]*x[22]-0.6938*x[8]*x[24]-0.1335*x[8]*x[25]-0.0567*x[8]*x[28]+0.382*x[9]*x[9]-0.5653*x[9]*x[13]-0.3153*x[9]*x[14]+0.9299*x[9]*x[15]+0.012*x[9]*x[21]-0.7998*x[9]*x[23]-0.2207*x[9]*x[27]-0.605*x[9]*x[28]+0.084*x[9]*x[29]+0.1763*x[9]*x[30]-0.911*x[10]*x[10]-0.7707*x[10]*x[11]+0.6804*x[10]*x[13]+0.6188*x[10]*x[16]-0.9777*x[10]*x[17]-0.2973*x[10]*x[18]+0.7815*x[10]*x[19]+0.4991*x[10]*x[20]+0.2184*x[11]*x[11]-0.912*x[11]*x[12]-0.369*x[11]*x[15]+0.6877*x[11]*x[17]-0.2983*x[11]*x[18]+0.9146*x[11]*x[19]+0.4749*x[11]*x[22]+0.3584*x[11]*x[23]-0.1003*x[11]*x[24]+0.7072*x[11]*x[25]+0.1478*x[11]*x[27]-0.7264*x[11]*x[28]+0.4334*x[11]*x[29]+0.9161*x[11]*x[30]+0.5389*x[12]*x[13]-0.902*x[12]*x[18]-0.4904*x[12]*x[20]-0.9975*x[12]*x[21]-0.9705*x[12]*x[25]-0.2387*x[12]*x[26]-0.0165*x[12]*x[27]-0.064*x[12]*x[28]+0.8054*x[12]*x[29]-0.8529*x[13]*x[15]-0.1849*x[13]*x[16]+0.5333*x[13]*x[17]+0.7916*x[13]*x[19]-0.8409*x[13]*x[20]-0.8105*x[13]*x[21]+0.094*x[13]*x[22]+0.4141*x[13]*x[23]+0.3881*x[13]*x[24]+0.9511*x[13]*x[27]+0.1829*x[13]*x[28]-0.5702*x[13]*x[29]+0.7212*x[13]*x[30]+0.5766*x[14]*x[14]-0.5893*x[14]*x[17]-0.0441*x[14]*x[18]-0.8215*x[14]*x[19]+0.5309*x[14]*x[21]+0.644*x[14]*x[22]+0.5084*x[14]*x[24]+0.5656*x[14]*x[25]+0.214*x[14]*x[29]+0.9891*x[14]*x[30]-0.4588*x[15]*x[18]-0.188*x[15]*x[19]+0.9261*x[15]*x[21]+0.7444*x[15]*x[22]-0.8472*x[15]*x[23]-0.3689*x[15]*x[26]+0.8475*x[15]*x[27]+0.8217*x[15]*x[30]+0.9273*x[16]*x[16]-0.7924*x[16]*x[20]-0.7177*x[16]*x[25]+0.5841*x[16]*x[29]-0.0156*x[17]*x[17]+0.0379*x[17]*x[19]+0.6808*x[17]*x[21]+0.2238*x[17]*x[22]-0.257*x[17]*x[23]-0.0255*x[17]*x[24]+0.1546*x[17]*x[25]+0.842*x[17]*x[26]-0.4797*x[17]*x[27]+0.0426*x[17]*x[30]-0.3856*x[18]*x[20]+0.4319*x[18]*x[21]+0.7633*x[18]*x[24]+0.9713*x[18]*x[29]-0.685*x[18]*x[30]-0.8945*x[19]*x[19]+0.0542*x[19]*x[21]-0.6037*x[19]*x[22]-0.6028*x[19]*x[29]+0.6841*x[19]*x[30]-0.214*x[20]*x[20]-0.324*x[20]*x[22]+0.4628*x[20]*x[24]-0.1944*x[20]*x[28]-0.0967*x[20]*x[30]+0.4792*x[21]*x[21]-0.9752*x[21]*x[22]-0.1731*x[21]*x[23]-0.4924*x[21]*x[28]-0.0356*x[21]*x[29]+0.3604*x[22]*x[22]+0.3831*x[22]*x[23]+0.8036*x[22]*x[24]+0.8397*x[22]*x[26]+0.3011*x[22]*x[28]+0.6732*x[22]*x[29]+0.754*x[22]*x[30]-0.956*x[23]*x[23]+0.9809*x[23]*x[24]-0.7352*x[23]*x[26]-0.7264*x[23]*x[27]+0.892*x[23]*x[28]+0.3867*x[23]*x[30]+0.3317*x[24]*x[24]-0.1785*x[24]*x[27]-0.0371*x[24]*x[30]+0.3512*x[25]*x[26]-0.2146*x[25]*x[27]+0.9438*x[25]*x[28]+0.7222*x[25]*x[30]+0.1654*x[26]*x[30]-0.0191*x[27]*x[27]+0.7092*x[27]*x[30]+0.1909*x[28]*x[28]-0.6659*x[29]*x[30]+0.3563*x[30]*x[30]+0.895*x[1]-0.4452*x[2]+0.9648*x[3]+0.3421*x[4]+0.873*x[5]+0.4979*x[6]-0.6025*x[7]+0.6733*x[8]+0.4957*x[9]+0.3923*x[10]-0.8025*x[11]-0.5216*x[12]+0.4964*x[13]+0.3563*x[14]-0.0916*x[15]-0.8821*x[16]-0.2411*x[17]-0.1052*x[18]+0.032*x[19]-0.5549*x[20]-0.9856*x[21]+0.6608*x[22]-0.4707*x[23]-0.7704*x[24]+0.6117*x[25]-0.9323*x[26]+0.7132*x[27]+0.3901*x[28]-0.8976*x[29]+0.7565*x[30] <= 76.77)
@NLconstraint(m, e3, (-0.3663*x[1]*x[1])-0.7634*x[1]*x[2]+0.5168*x[1]*x[4]+0.005*x[1]*x[6]+0.2456*x[1]*x[7]+0.3016*x[1]*x[9]+0.0427*x[1]*x[10]-0.3783*x[1]*x[12]-0.1354*x[1]*x[13]+0.3461*x[1]*x[14]+0.2637*x[1]*x[16]+0.0559*x[1]*x[17]+0.1625*x[1]*x[20]-0.2651*x[1]*x[22]+0.8568*x[1]*x[23]-0.4882*x[1]*x[24]+0.0287*x[1]*x[27]+0.572*x[1]*x[28]+0.2103*x[1]*x[30]+0.995*x[2]*x[4]+0.9142*x[2]*x[6]-0.2109*x[2]*x[7]-0.2062*x[2]*x[8]+0.0179*x[2]*x[11]+0.5868*x[2]*x[12]+0.0351*x[2]*x[14]+0.1225*x[2]*x[17]+0.54*x[2]*x[19]-0.174*x[2]*x[20]-0.943*x[2]*x[23]-0.5672*x[2]*x[25]-0.0807*x[2]*x[26]+0.9434*x[2]*x[27]-0.704*x[2]*x[30]-0.6159*x[3]*x[4]-0.3745*x[3]*x[5]-0.6824*x[3]*x[6]+0.891*x[3]*x[8]+0.5829*x[3]*x[10]+0.2763*x[3]*x[12]-0.3307*x[3]*x[16]+0.265*x[3]*x[19]+0.0154*x[3]*x[22]+0.4342*x[3]*x[25]-0.9718*x[3]*x[28]-0.9536*x[3]*x[29]-0.0201*x[3]*x[30]+0.1596*x[4]*x[4]+0.3682*x[4]*x[5]+0.5462*x[4]*x[6]-0.1871*x[4]*x[8]+0.5217*x[4]*x[9]-0.3911*x[4]*x[10]-0.0973*x[4]*x[11]-0.4166*x[4]*x[17]-0.0293*x[4]*x[18]+0.7899*x[4]*x[25]+0.4999*x[4]*x[26]+0.4799*x[4]*x[30]+0.5307*x[5]*x[5]-0.0576*x[5]*x[6]-0.1679*x[5]*x[8]-0.9972*x[5]*x[9]+0.1596*x[5]*x[10]+0.3969*x[5]*x[13]+0.4647*x[5]*x[15]-0.7815*x[5]*x[16]+0.8931*x[5]*x[19]-0.7894*x[5]*x[21]+0.9497*x[5]*x[23]+0.9083*x[5]*x[26]-0.8076*x[5]*x[27]+0.7161*x[5]*x[29]-0.9445*x[5]*x[30]+0.8881*x[6]*x[6]+0.9396*x[6]*x[9]+0.7406*x[6]*x[11]+0.754*x[6]*x[14]+0.6946*x[6]*x[16]+0.6529*x[6]*x[21]-0.2336*x[6]*x[22]+0.3408*x[6]*x[24]-0.872*x[6]*x[25]+0.4919*x[6]*x[26]-0.3984*x[6]*x[30]-0.1408*x[7]*x[7]-0.259*x[7]*x[8]-0.3918*x[7]*x[9]+0.7101*x[7]*x[11]-0.121*x[7]*x[14]+0.3133*x[7]*x[17]+0.0117*x[7]*x[20]-0.2403*x[7]*x[22]-0.7319*x[7]*x[23]-0.0475*x[7]*x[24]+0.7534*x[7]*x[25]-0.0421*x[7]*x[28]+0.4016*x[7]*x[29]-0.6877*x[7]*x[30]-0.5751*x[8]*x[8]+0.6833*x[8]*x[9]+0.7244*x[8]*x[11]-0.4164*x[8]*x[14]-0.8694*x[8]*x[19]+0.3452*x[8]*x[21]+0.6525*x[8]*x[23]+0.3486*x[8]*x[26]+0.1809*x[8]*x[27]+0.6866*x[8]*x[30]-0.2288*x[9]*x[9]+0.8912*x[9]*x[10]-0.7941*x[9]*x[12]+0.4246*x[9]*x[16]+0.7644*x[9]*x[18]+0.7557*x[9]*x[21]+0.2254*x[9]*x[23]-0.714*x[9]*x[24]-0.9605*x[9]*x[26]+0.9594*x[9]*x[28]-0.8842*x[9]*x[30]+0.4928*x[10]*x[10]-0.9047*x[10]*x[11]+0.8865*x[10]*x[12]-0.8714*x[10]*x[13]+0.323*x[10]*x[15]-0.5734*x[10]*x[18]-0.4493*x[10]*x[20]+0.8296*x[10]*x[21]-0.8173*x[10]*x[24]+0.6959*x[10]*x[25]-0.2528*x[10]*x[27]-0.8815*x[10]*x[30]-0.7128*x[11]*x[15]+0.785*x[11]*x[16]+0.4051*x[11]*x[17]+0.0589*x[11]*x[19]-0.5165*x[11]*x[22]-0.025*x[11]*x[26]+0.5188*x[12]*x[13]-0.385*x[12]*x[16]-0.9383*x[12]*x[19]-0.9369*x[12]*x[22]+0.2285*x[12]*x[23]-0.1772*x[12]*x[25]+0.3329*x[12]*x[27]+0.8212*x[12]*x[29]-0.4673*x[13]*x[13]+0.4893*x[13]*x[14]-0.5445*x[13]*x[17]+0.3417*x[13]*x[18]-0.1098*x[13]*x[21]+0.524*x[13]*x[25]-0.1702*x[13]*x[29]-0.4975*x[13]*x[30]-0.8869*x[14]*x[15]-0.4491*x[14]*x[16]-0.0028*x[14]*x[18]-0.5965*x[14]*x[19]-0.5592*x[14]*x[20]-0.419*x[14]*x[21]-0.6326*x[14]*x[24]+0.4872*x[14]*x[26]+0.2631*x[14]*x[29]+0.4653*x[14]*x[30]+0.848*x[15]*x[15]-0.2319*x[15]*x[18]+0.8282*x[15]*x[19]-0.1524*x[15]*x[20]-0.1713*x[15]*x[24]-0.0906*x[15]*x[25]-0.9714*x[15]*x[26]+0.9208*x[16]*x[16]+0.6902*x[16]*x[19]+0.5411*x[16]*x[21]+0.1273*x[16]*x[25]+0.8409*x[16]*x[29]-0.0694*x[16]*x[30]+0.7476*x[17]*x[17]+0.286*x[17]*x[19]+0.3846*x[17]*x[21]-0.5273*x[17]*x[24]+0.5599*x[17]*x[26]-0.8701*x[17]*x[29]-0.5049*x[17]*x[30]+0.8814*x[18]*x[18]-0.1827*x[18]*x[19]+0.0329*x[18]*x[20]-0.4617*x[18]*x[23]+0.9164*x[18]*x[25]-0.1395*x[18]*x[27]-0.1776*x[18]*x[30]+0.9028*x[19]*x[19]+0.3241*x[19]*x[20]+0.8005*x[19]*x[21]+0.1118*x[19]*x[22]-0.6148*x[19]*x[26]+0.6826*x[19]*x[27]-0.5692*x[20]*x[20]-0.2539*x[20]*x[21]+0.6132*x[20]*x[22]-0.1176*x[20]*x[23]+0.215*x[20]*x[25]+0.3028*x[20]*x[27]+0.9708*x[20]*x[28]-0.3913*x[20]*x[29]+0.2855*x[20]*x[30]-0.2287*x[21]*x[21]+0.2225*x[21]*x[23]-0.9418*x[21]*x[26]+0.9223*x[21]*x[28]+0.5386*x[21]*x[29]-0.847*x[22]*x[22]-0.3872*x[22]*x[25]-0.1502*x[22]*x[26]+0.5077*x[22]*x[29]+0.0304*x[23]*x[23]+0.9783*x[23]*x[24]+0.1779*x[23]*x[25]-0.7164*x[24]*x[24]+0.0612*x[24]*x[25]+0.7956*x[24]*x[26]-0.9359*x[24]*x[27]+0.916*x[24]*x[28]+0.6705*x[24]*x[29]+0.7077*x[25]*x[25]-0.6391*x[25]*x[27]-0.3963*x[25]*x[29]+0.8627*x[25]*x[30]-0.8338*x[26]*x[26]-0.5416*x[26]*x[28]-0.8688*x[26]*x[29]-0.6614*x[26]*x[30]-0.3653*x[27]*x[27]-0.7474*x[27]*x[30]-0.1906*x[28]*x[28]-0.5892*x[28]*x[29]+0.7356*x[28]*x[30]-0.8721*x[29]*x[29]-0.2635*x[29]*x[30]-0.1336*x[30]*x[30]+0.4805*x[1]-0.1286*x[2]+0.6269*x[3]-0.769*x[4]+0.2814*x[5]-0.4023*x[6]+0.1028*x[7]+0.8339*x[8]-0.4078*x[9]-0.4328*x[10]+0.2045*x[11]+0.3949*x[12]-0.2627*x[13]+0.8844*x[14]+0.4037*x[15]-0.9775*x[16]-0.5909*x[17]+0.3133*x[18]+0.3739*x[19]+0.8247*x[20]-0.0419*x[21]-0.9866*x[22]-0.6835*x[23]+0.1548*x[24]-0.9705*x[25]+0.3516*x[26]+0.0013*x[27]-0.114*x[28]+0.6694*x[29]+0.8987*x[30] <= 36.077)
@NLconstraint(m, e4, 0.9689*x[1]*x[2]-0.3384*x[1]*x[1]+0.6397*x[1]*x[3]+0.2897*x[1]*x[4]-0.9678*x[1]*x[6]+0.8885*x[1]*x[7]+0.5428*x[1]*x[8]+0.1046*x[1]*x[10]+0.2165*x[1]*x[12]-0.6358*x[1]*x[14]-0.7265*x[1]*x[15]+0.7363*x[1]*x[16]+0.0013*x[1]*x[17]+0.0395*x[1]*x[18]-0.7879*x[1]*x[20]+0.5433*x[1]*x[22]-0.8314*x[1]*x[23]-0.1544*x[1]*x[24]+0.2196*x[1]*x[25]+0.2209*x[1]*x[28]+0.1313*x[1]*x[30]-0.94*x[2]*x[2]-0.4664*x[2]*x[3]+0.6376*x[2]*x[4]+0.639*x[2]*x[5]+0.7713*x[2]*x[6]+0.8001*x[2]*x[7]-0.7885*x[2]*x[10]-0.1831*x[2]*x[17]-0.3757*x[2]*x[18]-0.7302*x[2]*x[20]-0.3143*x[2]*x[24]+0.9377*x[2]*x[26]+0.7712*x[2]*x[28]+0.7248*x[3]*x[3]+0.589*x[3]*x[7]+0.5742*x[3]*x[8]-0.9457*x[3]*x[10]+0.534*x[3]*x[12]-0.4178*x[3]*x[13]+0.1831*x[3]*x[15]-0.8167*x[3]*x[16]-0.8335*x[3]*x[17]+0.7212*x[3]*x[18]+0.9116*x[3]*x[19]+0.9145*x[3]*x[20]+0.8638*x[3]*x[22]+0.541*x[3]*x[23]-0.1403*x[3]*x[26]+0.3377*x[3]*x[29]+0.4218*x[4]*x[4]+0.9436*x[4]*x[20]+0.6131*x[4]*x[21]-0.6072*x[4]*x[24]-0.14*x[4]*x[27]+0.4122*x[4]*x[28]-0.7779*x[4]*x[30]+0.2695*x[5]*x[16]+0.1573*x[5]*x[23]+0.0775*x[5]*x[25]-0.3212*x[5]*x[27]+0.8765*x[6]*x[6]-0.4745*x[6]*x[7]-0.6274*x[6]*x[8]+0.5811*x[6]*x[9]+0.5315*x[6]*x[12]+0.0438*x[6]*x[15]+0.9929*x[6]*x[16]+0.0328*x[6]*x[17]-0.7385*x[6]*x[19]-0.8763*x[6]*x[21]-0.6053*x[6]*x[24]+0.0427*x[6]*x[25]-0.3831*x[6]*x[27]+0.0797*x[6]*x[29]+0.9257*x[7]*x[7]+0.499*x[7]*x[8]+0.4953*x[7]*x[9]+0.8633*x[7]*x[10]-0.1368*x[7]*x[11]-0.8057*x[7]*x[12]+0.7719*x[7]*x[13]-0.1274*x[7]*x[14]+0.4895*x[7]*x[17]-0.8192*x[7]*x[19]+0.9326*x[7]*x[21]-0.5058*x[7]*x[23]-0.1845*x[7]*x[25]-0.973*x[7]*x[30]-0.43*x[8]*x[10]+0.9658*x[8]*x[11]+0.2966*x[8]*x[12]+0.3141*x[8]*x[14]+0.3923*x[8]*x[16]+0.7676*x[8]*x[17]+0.0235*x[8]*x[18]+0.2432*x[8]*x[20]-0.4351*x[8]*x[22]+0.0084*x[8]*x[25]+0.679*x[8]*x[27]-0.8298*x[8]*x[29]+0.5675*x[8]*x[30]+0.8887*x[9]*x[9]+0.3364*x[9]*x[10]-0.4676*x[9]*x[13]-0.0857*x[9]*x[14]-0.3377*x[9]*x[18]-0.2541*x[9]*x[20]+0.3156*x[9]*x[21]-0.8241*x[9]*x[25]+0.1959*x[9]*x[28]-0.9339*x[9]*x[29]+0.6206*x[9]*x[30]-0.622*x[10]*x[10]-0.9434*x[10]*x[12]+0.4677*x[10]*x[13]+0.7032*x[10]*x[14]-0.1254*x[10]*x[16]+0.4976*x[10]*x[17]+0.6977*x[10]*x[18]-0.0975*x[10]*x[19]-0.5853*x[10]*x[20]-0.74*x[10]*x[23]-0.6278*x[10]*x[24]-0.5368*x[10]*x[29]+0.1543*x[10]*x[30]-0.5558*x[11]*x[11]+0.0021*x[11]*x[12]+0.8625*x[11]*x[13]+0.6139*x[11]*x[14]-0.278*x[11]*x[15]+0.7475*x[11]*x[17]-0.3659*x[11]*x[18]-0.6538*x[11]*x[22]+0.883*x[11]*x[24]+0.4606*x[11]*x[29]+0.7032*x[11]*x[30]-0.8281*x[12]*x[13]+0.5102*x[12]*x[14]+0.9394*x[12]*x[16]-0.6209*x[12]*x[20]-0.5313*x[12]*x[23]-0.6175*x[12]*x[25]+0.3322*x[13]*x[14]+0.642*x[13]*x[16]+0.9814*x[13]*x[17]-0.5331*x[13]*x[18]-0.9719*x[13]*x[19]+0.6774*x[13]*x[20]-0.8404*x[13]*x[22]-0.4808*x[13]*x[23]-0.8928*x[13]*x[28]+0.1957*x[13]*x[30]-0.7846*x[14]*x[14]+0.3724*x[14]*x[15]+0.951*x[14]*x[18]+0.9252*x[14]*x[19]+0.1529*x[14]*x[23]-0.3025*x[14]*x[25]+0.821*x[14]*x[30]-0.6915*x[15]*x[17]-0.9369*x[15]*x[20]-0.0226*x[15]*x[21]-0.5354*x[15]*x[22]-0.1392*x[15]*x[23]+0.3668*x[15]*x[24]+0.0099*x[15]*x[25]-0.984*x[15]*x[26]+0.4263*x[16]*x[17]+0.9185*x[16]*x[18]-0.247*x[16]*x[22]+0.293*x[16]*x[25]+0.7454*x[16]*x[26]+0.4981*x[16]*x[27]-0.4727*x[16]*x[29]+0.7687*x[16]*x[30]+0.3613*x[17]*x[17]+0.4185*x[17]*x[19]+0.7752*x[17]*x[20]-0.0802*x[17]*x[21]-0.2766*x[17]*x[24]+0.7283*x[17]*x[25]-0.8287*x[17]*x[26]-0.2402*x[17]*x[28]-0.166*x[17]*x[29]-0.6598*x[17]*x[30]+0.2959*x[18]*x[18]-0.9375*x[18]*x[19]+0.5521*x[18]*x[25]-0.5534*x[18]*x[28]+0.8789*x[18]*x[29]-0.6375*x[19]*x[19]+0.1482*x[19]*x[20]+0.7678*x[19]*x[21]+0.344*x[19]*x[22]-0.9778*x[19]*x[23]+0.4586*x[19]*x[24]+0.6887*x[19]*x[27]-0.0126*x[19]*x[28]+0.9739*x[19]*x[30]+0.495*x[20]*x[20]-0.1677*x[20]*x[23]-0.6333*x[20]*x[29]-0.0555*x[20]*x[30]+0.652*x[21]*x[21]-0.2506*x[21]*x[22]-0.0166*x[21]*x[24]-0.1929*x[21]*x[26]-0.7334*x[21]*x[27]-0.7454*x[21]*x[29]+0.6118*x[21]*x[30]-0.3795*x[22]*x[22]-0.5871*x[22]*x[23]-0.2487*x[22]*x[25]+0.5545*x[22]*x[26]-0.8519*x[22]*x[28]-0.9463*x[22]*x[29]-0.6376*x[23]*x[24]-0.2133*x[23]*x[25]-0.8927*x[23]*x[28]-0.6521*x[23]*x[30]+0.3247*x[24]*x[24]-0.0991*x[24]*x[25]+0.1369*x[24]*x[27]+0.9108*x[24]*x[28]-0.4506*x[24]*x[29]+0.3934*x[24]*x[30]-0.6389*x[25]*x[25]+0.1201*x[25]*x[26]-0.7376*x[25]*x[27]+0.0244*x[25]*x[30]+0.6113*x[26]*x[26]+0.5277*x[26]*x[27]+0.2063*x[26]*x[28]+0.3967*x[26]*x[30]-0.533*x[27]*x[30]-0.482*x[28]*x[28]+0.8571*x[28]*x[30]-0.2765*x[29]*x[29]+0.3172*x[30]*x[30]+0.5245*x[1]-0.9294*x[2]+0.6122*x[3]+0.4025*x[4]-0.5324*x[5]-0.0555*x[6]-0.2333*x[7]-0.0146*x[8]+0.5338*x[9]+0.7089*x[10]+0.6642*x[11]+0.1888*x[12]-0.5413*x[13]+0.662*x[14]+0.1802*x[15]+0.5564*x[16]-0.4132*x[17]-0.3982*x[18]+0.1685*x[19]+0.593*x[20]+0.3373*x[21]+0.222*x[22]-0.2561*x[23]+0.568*x[24]+0.1152*x[25]-0.33*x[26]+0.7097*x[27]-0.2267*x[28]-0.0156*x[29]-0.924*x[30] <= 65.032)
@NLconstraint(m, e5, 0.0847*x[1]*x[1]+0.449*x[1]*x[2]+0.5428*x[1]*x[5]+0.7098*x[1]*x[6]-0.4754*x[1]*x[7]+0.6542*x[1]*x[8]+0.4157*x[1]*x[9]+0.3683*x[1]*x[10]+0.666*x[1]*x[11]+0.0739*x[1]*x[12]+0.5598*x[1]*x[13]-0.2751*x[1]*x[14]+0.1424*x[1]*x[15]-0.1212*x[1]*x[16]-0.062*x[1]*x[17]-0.6828*x[1]*x[23]+0.3814*x[1]*x[25]+0.2325*x[1]*x[26]-0.5928*x[1]*x[27]+0.2659*x[1]*x[28]-0.2345*x[1]*x[30]+0.0969*x[2]*x[5]+0.8134*x[2]*x[8]-0.5737*x[2]*x[9]-0.1002*x[2]*x[11]-0.1883*x[2]*x[12]-0.2397*x[2]*x[14]+0.6906*x[2]*x[16]-0.5188*x[2]*x[17]+0.5365*x[2]*x[19]+0.8854*x[2]*x[21]+0.6993*x[2]*x[22]-0.7148*x[2]*x[26]-0.5933*x[2]*x[27]-0.7776*x[2]*x[29]-0.1237*x[2]*x[30]-0.8662*x[3]*x[3]+0.7462*x[3]*x[5]+0.3742*x[3]*x[7]+0.3212*x[3]*x[8]+0.6576*x[3]*x[10]-0.8951*x[3]*x[11]+0.0399*x[3]*x[12]+0.2455*x[3]*x[13]+0.11*x[3]*x[14]-0.0552*x[3]*x[15]+0.6339*x[3]*x[19]+0.9093*x[3]*x[20]-0.4518*x[3]*x[22]+0.0524*x[3]*x[25]+0.4721*x[3]*x[26]+0.825*x[3]*x[28]+0.2249*x[3]*x[29]+0.4522*x[3]*x[30]+0.3692*x[4]*x[4]-0.7418*x[4]*x[5]-0.6904*x[4]*x[7]+0.5623*x[4]*x[9]-0.1081*x[4]*x[10]-0.496*x[4]*x[13]-0.8042*x[4]*x[15]+0.615*x[4]*x[16]+0.2951*x[4]*x[17]-0.5186*x[4]*x[18]-0.0294*x[4]*x[19]+0.7563*x[4]*x[21]-0.7422*x[4]*x[22]+0.3711*x[4]*x[23]-0.6084*x[4]*x[25]+0.8946*x[4]*x[29]+0.853*x[4]*x[30]-0.0909*x[5]*x[5]+0.8113*x[5]*x[6]-0.7934*x[5]*x[7]-0.8524*x[5]*x[13]-0.243*x[5]*x[14]+0.4156*x[5]*x[16]+0.6669*x[5]*x[17]-0.3077*x[5]*x[18]-0.6275*x[5]*x[23]+0.2516*x[5]*x[29]+0.6999*x[5]*x[30]+0.6117*x[6]*x[8]+0.3506*x[6]*x[10]-0.5367*x[6]*x[11]-0.3247*x[6]*x[17]+0.4677*x[6]*x[20]-0.7948*x[6]*x[21]-0.6424*x[6]*x[22]-0.1228*x[6]*x[23]-0.7882*x[6]*x[25]-0.1697*x[6]*x[29]+0.7974*x[7]*x[7]-0.6364*x[7]*x[11]-0.8044*x[7]*x[12]-0.439*x[7]*x[15]-0.3117*x[7]*x[16]+0.9919*x[7]*x[17]-0.2221*x[7]*x[18]-0.9388*x[7]*x[19]+0.7934*x[7]*x[20]+0.1304*x[7]*x[24]+0.162*x[7]*x[25]+0.8564*x[7]*x[26]+0.85*x[7]*x[27]+0.4092*x[7]*x[29]+0.5675*x[8]*x[9]-0.773*x[8]*x[10]+0.3819*x[8]*x[14]+0.0538*x[8]*x[15]-0.4468*x[8]*x[16]-0.4132*x[8]*x[17]-0.861*x[8]*x[20]-0.8847*x[8]*x[24]+0.2775*x[8]*x[25]-0.1576*x[8]*x[29]+0.8767*x[8]*x[30]+0.3709*x[9]*x[10]+0.3257*x[9]*x[11]-0.8842*x[9]*x[12]-0.1995*x[9]*x[14]+0.2843*x[9]*x[15]+0.4478*x[9]*x[17]-0.6447*x[9]*x[19]-0.8458*x[9]*x[21]+0.7745*x[9]*x[22]-0.0647*x[9]*x[29]+0.4651*x[9]*x[30]-0.3067*x[10]*x[13]+0.1393*x[10]*x[17]+0.0882*x[10]*x[19]+0.0524*x[10]*x[20]+0.9781*x[10]*x[21]-0.4525*x[10]*x[23]-0.6411*x[10]*x[24]-0.6578*x[10]*x[25]-0.2442*x[10]*x[26]+0.9745*x[10]*x[29]+0.3587*x[11]*x[11]-0.5757*x[11]*x[12]+0.7738*x[11]*x[13]+0.8305*x[11]*x[16]+0.7747*x[11]*x[18]-0.2491*x[11]*x[20]+0.6487*x[11]*x[21]-0.6606*x[11]*x[22]-0.4752*x[11]*x[23]-0.89*x[11]*x[24]-0.7367*x[11]*x[30]-0.8366*x[12]*x[12]+0.9235*x[12]*x[13]-0.0628*x[12]*x[14]+0.148*x[12]*x[15]-0.7187*x[12]*x[17]+0.2442*x[12]*x[19]-0.1437*x[12]*x[20]+0.6642*x[12]*x[22]-0.4271*x[12]*x[23]+0.5554*x[12]*x[25]+0.0349*x[12]*x[29]-0.9737*x[12]*x[30]-0.1815*x[13]*x[14]-0.9536*x[13]*x[15]-0.0726*x[13]*x[18]+0.5788*x[13]*x[21]-0.5666*x[13]*x[22]-0.8075*x[13]*x[24]+0.6593*x[13]*x[29]-0.3578*x[14]*x[16]+0.4782*x[14]*x[18]-0.0613*x[14]*x[22]-0.1891*x[14]*x[23]+0.4085*x[14]*x[24]-0.976*x[14]*x[25]+0.2034*x[15]*x[17]-0.7104*x[15]*x[20]+0.9299*x[15]*x[22]+0.3409*x[15]*x[24]+0.3864*x[15]*x[26]+0.2233*x[15]*x[28]+0.5186*x[16]*x[16]-0.6339*x[16]*x[19]-0.9891*x[16]*x[20]-0.7825*x[16]*x[22]+0.8303*x[16]*x[24]+0.3809*x[16]*x[26]-0.4264*x[16]*x[29]-0.115*x[16]*x[30]-0.9701*x[17]*x[17]+0.2788*x[17]*x[18]-0.576*x[17]*x[25]-0.7082*x[17]*x[27]-0.1056*x[17]*x[28]+0.1949*x[17]*x[29]+0.3351*x[18]*x[23]+0.6017*x[18]*x[26]+0.9785*x[18]*x[27]+0.0387*x[18]*x[28]-0.7196*x[18]*x[30]-0.8148*x[19]*x[19]-0.8804*x[19]*x[22]-0.6459*x[19]*x[24]-0.1886*x[19]*x[26]+0.6001*x[19]*x[28]-0.0445*x[19]*x[29]-0.1405*x[19]*x[30]-0.6298*x[20]*x[20]-0.7209*x[20]*x[21]-0.2793*x[20]*x[22]-0.7551*x[20]*x[24]-0.3362*x[20]*x[25]+0.6945*x[20]*x[26]-0.8382*x[20]*x[30]+0.2602*x[21]*x[22]+0.8816*x[21]*x[24]+0.1046*x[21]*x[26]-0.0993*x[21]*x[27]+0.9687*x[21]*x[28]+0.2008*x[21]*x[30]-0.3087*x[22]*x[22]-0.7947*x[22]*x[25]-0.1614*x[22]*x[26]-0.745*x[22]*x[27]+0.0635*x[22]*x[30]-0.6189*x[23]*x[23]+0.47*x[24]*x[24]+0.5524*x[24]*x[25]-0.8897*x[24]*x[27]+0.9326*x[24]*x[28]-0.6235*x[24]*x[30]+0.781*x[25]*x[25]+0.8715*x[25]*x[28]+0.72*x[25]*x[30]+0.969*x[26]*x[26]+0.7386*x[26]*x[30]-0.2167*x[27]*x[27]-0.0181*x[27]*x[29]-0.3143*x[28]*x[30]+0.1438*x[29]*x[30]+0.3737*x[30]*x[30]-0.6703*x[1]-0.6971*x[2]+0.9158*x[3]-0.8811*x[4]-0.6097*x[5]+0.2247*x[6]+0.3138*x[7]+0.5146*x[8]-0.922*x[9]+0.811*x[10]+0.3663*x[11]-0.5642*x[12]-0.4267*x[13]-0.353*x[14]-0.936*x[15]+0.9952*x[16]-0.2355*x[17]+0.3641*x[18]-0.1391*x[19]+0.9293*x[20]-0.9744*x[21]-0.4424*x[22]+0.1908*x[23]+0.5477*x[24]-0.2358*x[25]-0.3148*x[26]-0.8284*x[27]+0.0017*x[28]+0.1003*x[29]+0.011*x[30] <= 37.829)
@NLconstraint(m, e6, 0.3726*x[1]*x[2]-0.7536*x[1]*x[1]-0.448*x[1]*x[3]+0.0654*x[1]*x[4]-0.5387*x[1]*x[6]+0.5836*x[1]*x[7]+0.1596*x[1]*x[8]+0.4701*x[1]*x[9]-0.511*x[1]*x[10]+0.0754*x[1]*x[11]-0.4028*x[1]*x[12]-0.6338*x[1]*x[13]+0.0605*x[1]*x[14]-0.6687*x[1]*x[15]-0.5255*x[1]*x[16]+0.6712*x[1]*x[17]-0.3103*x[1]*x[18]+0.1078*x[1]*x[20]-0.3909*x[1]*x[21]-0.9231*x[1]*x[22]+0.1259*x[1]*x[23]+0.0255*x[1]*x[25]+0.6446*x[1]*x[26]-0.8735*x[1]*x[28]-0.6677*x[1]*x[29]-0.3838*x[1]*x[30]-0.5032*x[2]*x[2]+0.0863*x[2]*x[3]+0.9889*x[2]*x[5]+0.7404*x[2]*x[6]-0.1068*x[2]*x[12]+0.5416*x[2]*x[13]+0.9455*x[2]*x[15]+0.0799*x[2]*x[18]-0.4706*x[2]*x[23]+0.1406*x[2]*x[24]+0.1236*x[2]*x[25]-0.7902*x[2]*x[29]-0.1695*x[2]*x[30]-0.0967*x[3]*x[3]-0.0015*x[3]*x[4]+0.9824*x[3]*x[5]-0.3525*x[3]*x[7]+0.4751*x[3]*x[8]+0.1911*x[3]*x[9]-0.8568*x[3]*x[11]-0.3562*x[3]*x[15]+0.8832*x[3]*x[16]+0.714*x[3]*x[18]+0.0233*x[3]*x[19]-0.325*x[3]*x[21]-0.2311*x[3]*x[25]-0.8892*x[3]*x[28]+0.4461*x[3]*x[30]-0.3424*x[4]*x[6]+0.2807*x[4]*x[7]-0.3983*x[4]*x[9]-0.7703*x[4]*x[13]-0.8072*x[4]*x[14]+0.9821*x[4]*x[16]+0.6483*x[4]*x[20]+0.5646*x[4]*x[21]-0.545*x[4]*x[24]-0.341*x[4]*x[25]+0.3881*x[4]*x[27]+0.273*x[5]*x[5]-0.7616*x[5]*x[7]-0.4816*x[5]*x[8]-0.683*x[5]*x[12]+0.0933*x[5]*x[13]+0.1285*x[5]*x[14]-0.2606*x[5]*x[17]+0.3631*x[5]*x[18]+0.4279*x[5]*x[19]-0.4956*x[5]*x[25]-0.7306*x[5]*x[27]+0.5625*x[6]*x[6]-0.7644*x[6]*x[11]-0.69*x[6]*x[13]+0.522*x[6]*x[18]-0.0094*x[6]*x[20]-0.7681*x[6]*x[21]-0.7092*x[6]*x[23]+0.4011*x[6]*x[24]+0.559*x[6]*x[25]-0.467*x[6]*x[26]+0.043*x[6]*x[29]+0.1095*x[6]*x[30]-0.8166*x[7]*x[7]-0.4604*x[7]*x[9]-0.0464*x[7]*x[11]+0.2967*x[7]*x[13]+0.9009*x[7]*x[16]-0.1387*x[7]*x[18]+0.6497*x[7]*x[20]-0.575*x[7]*x[21]+0.3565*x[7]*x[23]-0.4008*x[7]*x[24]+0.476*x[7]*x[25]+0.018*x[7]*x[26]+0.1742*x[7]*x[30]+0.1316*x[8]*x[8]+0.0811*x[8]*x[12]-0.1085*x[8]*x[14]-0.9929*x[8]*x[19]+0.7747*x[8]*x[26]-0.8616*x[8]*x[27]-0.3607*x[8]*x[28]+0.4633*x[8]*x[30]+0.1342*x[9]*x[9]+0.9225*x[9]*x[14]-0.477*x[9]*x[15]+0.191*x[9]*x[17]+0.0779*x[9]*x[22]-0.594*x[9]*x[24]-0.0441*x[9]*x[25]-0.1123*x[9]*x[28]+0.64*x[9]*x[29]-0.2903*x[10]*x[12]-0.0066*x[10]*x[13]-0.9804*x[10]*x[14]-0.5031*x[10]*x[15]-0.6869*x[10]*x[17]+0.2456*x[10]*x[18]-0.6644*x[10]*x[19]-0.4189*x[10]*x[22]-0.1952*x[10]*x[23]+0.1522*x[10]*x[25]-0.6873*x[10]*x[26]+0.0182*x[10]*x[27]-0.8859*x[10]*x[28]-0.2355*x[10]*x[29]-0.111*x[10]*x[30]-0.0363*x[11]*x[16]+0.5192*x[11]*x[20]-0.4323*x[11]*x[26]-0.2914*x[11]*x[28]-0.1197*x[11]*x[30]+0.3714*x[12]*x[14]+0.0399*x[12]*x[16]+0.6969*x[12]*x[19]+0.7962*x[12]*x[20]+0.3718*x[12]*x[21]-0.2516*x[12]*x[22]+0.126*x[12]*x[23]+0.0843*x[12]*x[24]+0.0223*x[12]*x[25]-0.681*x[12]*x[26]+0.01*x[12]*x[30]+0.4966*x[13]*x[13]-0.2747*x[13]*x[14]-0.1366*x[13]*x[15]+0.3022*x[13]*x[17]-0.6579*x[13]*x[19]-0.0036*x[13]*x[21]+0.8664*x[13]*x[22]+0.8027*x[13]*x[23]+0.9581*x[13]*x[25]+0.3459*x[13]*x[26]+0.3814*x[13]*x[28]+0.8803*x[13]*x[30]+0.5655*x[14]*x[14]-0.0028*x[14]*x[15]+0.5503*x[14]*x[16]+0.9757*x[14]*x[17]-0.8143*x[14]*x[19]+0.4073*x[14]*x[21]-0.5683*x[14]*x[25]-0.0446*x[14]*x[27]+0.1038*x[14]*x[29]-0.1616*x[15]*x[15]-0.8859*x[15]*x[16]-0.1904*x[15]*x[18]+0.789*x[15]*x[19]+0.5074*x[15]*x[20]+0.5027*x[15]*x[21]+0.8766*x[15]*x[26]+0.2136*x[15]*x[27]+0.9487*x[15]*x[28]-0.2304*x[15]*x[29]+0.5321*x[16]*x[16]+0.239*x[16]*x[19]+0.1177*x[16]*x[21]-0.7453*x[16]*x[24]+0.8539*x[16]*x[25]+0.5924*x[16]*x[28]-0.2262*x[17]*x[17]+0.2355*x[17]*x[22]-0.3147*x[17]*x[24]-0.6375*x[17]*x[26]-0.6798*x[17]*x[27]+0.6615*x[17]*x[28]+0.9121*x[17]*x[30]+0.6947*x[18]*x[18]+0.414*x[18]*x[22]-0.2971*x[18]*x[27]+0.1233*x[18]*x[29]+0.4287*x[18]*x[30]+0.6656*x[19]*x[19]-0.4604*x[19]*x[23]-0.7291*x[19]*x[24]-0.6642*x[19]*x[30]+0.894*x[20]*x[20]+0.2862*x[20]*x[21]-0.8615*x[20]*x[23]-0.0447*x[20]*x[24]-0.5521*x[20]*x[25]+0.3671*x[20]*x[28]+0.2406*x[20]*x[29]+0.9454*x[21]*x[21]+0.1306*x[21]*x[24]-0.773*x[21]*x[25]+0.5839*x[21]*x[26]+0.4551*x[21]*x[27]+0.5576*x[21]*x[28]-0.0626*x[22]*x[22]+0.9556*x[22]*x[23]-0.5596*x[22]*x[25]-0.8073*x[22]*x[27]-0.8687*x[22]*x[28]-0.4516*x[23]*x[23]-0.3444*x[23]*x[24]-0.7367*x[23]*x[25]+0.6026*x[23]*x[26]-0.5816*x[23]*x[27]-0.0635*x[23]*x[28]+0.6406*x[24]*x[25]+0.4674*x[24]*x[26]+0.9537*x[24]*x[27]+0.4302*x[24]*x[28]+0.3708*x[24]*x[30]-0.4003*x[25]*x[26]-0.8393*x[25]*x[30]+0.781*x[26]*x[27]-0.1216*x[27]*x[27]-0.0448*x[27]*x[30]+0.6698*x[28]*x[30]+0.0705*x[29]*x[29]+0.3695*x[29]*x[30]+0.1558*x[30]*x[30]+0.9131*x[1]-0.6262*x[2]+0.3168*x[3]+0.8413*x[4]+0.6067*x[5]+0.4722*x[6]+0.7406*x[7]-0.2372*x[8]+0.6427*x[9]-0.3291*x[10]+0.0429*x[11]+0.9867*x[12]+0.2053*x[13]+0.7128*x[14]-0.0145*x[15]+0.5123*x[16]+0.7919*x[17]+0.1464*x[18]+0.1549*x[19]-0.5815*x[20]-0.1127*x[21]+0.2639*x[22]-0.248*x[23]+0.5288*x[24]-0.7615*x[25]-0.6596*x[26]+0.2263*x[27]+0.2294*x[28]-0.2681*x[29]-0.9295*x[30] <= 98.317)
@NLconstraint(m, e7, 0.4489*x[1]*x[1]+0.6874*x[1]*x[2]-0.8482*x[1]*x[3]+0.6539*x[1]*x[4]+0.8976*x[1]*x[6]-0.5258*x[1]*x[7]-0.2836*x[1]*x[8]+0.9838*x[1]*x[10]+0.4588*x[1]*x[11]-0.036*x[1]*x[12]+0.4738*x[1]*x[13]-0.297*x[1]*x[14]+0.6542*x[1]*x[16]-0.5369*x[1]*x[17]+0.7286*x[1]*x[18]-0.3099*x[1]*x[20]-0.1471*x[1]*x[21]-0.4646*x[1]*x[22]-0.9327*x[1]*x[25]+0.6306*x[1]*x[27]-0.8498*x[1]*x[29]+0.3632*x[2]*x[2]-0.0525*x[2]*x[7]+0.7355*x[2]*x[8]+0.8223*x[2]*x[9]+0.2183*x[2]*x[10]-0.1039*x[2]*x[12]-0.4366*x[2]*x[14]+0.3031*x[2]*x[18]+0.158*x[2]*x[20]-0.5104*x[2]*x[22]+0.7918*x[2]*x[24]-0.6693*x[2]*x[26]-0.2196*x[2]*x[27]-0.1436*x[2]*x[28]+0.2205*x[2]*x[29]-0.8727*x[2]*x[30]+0.9219*x[3]*x[3]+0.5934*x[3]*x[4]-0.7624*x[3]*x[7]+0.6509*x[3]*x[8]-0.3924*x[3]*x[9]+0.4293*x[3]*x[14]-0.6891*x[3]*x[15]-0.5092*x[3]*x[17]+0.3814*x[3]*x[20]+0.8592*x[3]*x[23]+0.3746*x[3]*x[24]+0.2329*x[3]*x[26]+0.7592*x[3]*x[28]+0.5113*x[4]*x[4]-0.7251*x[4]*x[6]-0.1753*x[4]*x[7]+0.2158*x[4]*x[11]+0.8702*x[4]*x[12]-0.6843*x[4]*x[16]-0.735*x[4]*x[17]-0.3936*x[4]*x[19]+0.6283*x[4]*x[22]-0.2369*x[4]*x[30]-0.9124*x[5]*x[6]-0.0703*x[5]*x[7]+0.8906*x[5]*x[8]-0.3177*x[5]*x[10]+0.6748*x[5]*x[11]-0.0053*x[5]*x[13]+0.4855*x[5]*x[17]+0.0688*x[5]*x[19]-0.5244*x[5]*x[23]-0.5916*x[5]*x[24]+0.3771*x[5]*x[30]+0.5571*x[6]*x[7]+0.9359*x[6]*x[9]-0.5179*x[6]*x[10]+0.1354*x[6]*x[13]-0.4371*x[6]*x[14]-0.9091*x[6]*x[15]+0.6409*x[6]*x[16]-0.6188*x[6]*x[19]+0.4427*x[6]*x[22]+0.3911*x[6]*x[23]-0.9971*x[6]*x[24]+0.8879*x[6]*x[28]-0.6887*x[6]*x[29]+0.5415*x[6]*x[30]+0.5619*x[7]*x[7]-0.5066*x[7]*x[8]+0.6667*x[7]*x[11]-0.1148*x[7]*x[12]+0.3061*x[7]*x[13]+0.9415*x[7]*x[14]+0.5073*x[7]*x[17]-0.9861*x[7]*x[19]-0.4877*x[7]*x[23]+0.1188*x[7]*x[25]+0.5612*x[7]*x[26]-0.4852*x[7]*x[27]+0.6732*x[7]*x[28]+0.4308*x[7]*x[29]+0.8249*x[8]*x[9]-0.0686*x[8]*x[11]+0.6459*x[8]*x[15]-0.9359*x[8]*x[16]-0.9172*x[8]*x[18]+0.9444*x[8]*x[19]+0.991*x[8]*x[21]+0.9532*x[8]*x[24]+0.3132*x[8]*x[25]-0.8225*x[8]*x[27]+0.3027*x[8]*x[28]-0.1531*x[8]*x[29]+0.7279*x[8]*x[30]-0.6225*x[9]*x[9]-0.9302*x[9]*x[10]+0.8972*x[9]*x[13]+0.7714*x[9]*x[14]-0.8438*x[9]*x[17]+0.2571*x[9]*x[18]+0.7405*x[9]*x[19]+0.2863*x[9]*x[21]+0.3953*x[9]*x[24]+0.123*x[9]*x[25]+0.1401*x[9]*x[26]+0.7663*x[9]*x[27]+0.2289*x[9]*x[28]-0.8298*x[9]*x[29]+0.8672*x[9]*x[30]-0.7717*x[10]*x[11]+0.9058*x[10]*x[12]+0.3707*x[10]*x[13]+0.171*x[10]*x[15]+0.5515*x[10]*x[16]-0.5785*x[10]*x[20]-0.4917*x[10]*x[23]-0.6521*x[10]*x[24]+0.9962*x[10]*x[29]+0.0971*x[10]*x[30]-0.4422*x[11]*x[11]+0.8314*x[11]*x[15]+0.1919*x[11]*x[17]+0.6835*x[11]*x[23]-0.0338*x[11]*x[24]+0.8516*x[11]*x[25]-0.7164*x[11]*x[26]+0.6441*x[11]*x[27]-0.1548*x[11]*x[28]-0.5999*x[11]*x[29]+0.8168*x[11]*x[30]-0.8824*x[12]*x[12]-0.0466*x[12]*x[13]-0.3721*x[12]*x[17]+0.1744*x[12]*x[18]+0.1282*x[12]*x[19]+0.4246*x[12]*x[20]+0.6977*x[12]*x[23]-0.7306*x[12]*x[25]-0.9939*x[12]*x[26]-0.9608*x[12]*x[28]+0.574*x[12]*x[29]+0.815*x[12]*x[30]+0.3941*x[13]*x[18]+0.9034*x[13]*x[19]-0.3866*x[13]*x[22]-0.1482*x[13]*x[23]+0.823*x[13]*x[24]+0.1528*x[13]*x[29]-0.2094*x[13]*x[30]+0.0087*x[14]*x[14]+0.36*x[14]*x[15]+0.436*x[14]*x[16]-0.4827*x[14]*x[17]+0.9325*x[14]*x[19]+0.4106*x[14]*x[28]+0.6759*x[14]*x[29]+0.542*x[14]*x[30]+0.4857*x[15]*x[15]+0.0958*x[15]*x[18]+0.4158*x[15]*x[20]+0.7342*x[15]*x[21]-0.8292*x[15]*x[25]-0.4727*x[15]*x[26]-0.9504*x[15]*x[27]+0.4758*x[15]*x[28]+0.4819*x[15]*x[29]+0.7989*x[16]*x[20]+0.0381*x[16]*x[21]-0.4422*x[16]*x[22]+0.5615*x[16]*x[23]-0.454*x[16]*x[26]-0.3596*x[16]*x[27]-0.6923*x[16]*x[28]+0.4327*x[16]*x[29]-0.3813*x[16]*x[30]+0.341*x[17]*x[17]-0.2812*x[17]*x[23]-0.3486*x[18]*x[19]-0.2676*x[18]*x[20]-0.1215*x[18]*x[22]+0.2091*x[18]*x[23]-0.6426*x[18]*x[24]-0.0585*x[18]*x[26]+0.9072*x[18]*x[27]-0.5126*x[19]*x[19]-0.1379*x[19]*x[20]+0.029*x[19]*x[22]+0.9301*x[19]*x[23]+0.6435*x[19]*x[24]+0.8751*x[19]*x[25]+0.8032*x[19]*x[26]-0.5573*x[19]*x[30]-0.3298*x[20]*x[20]-0.1741*x[20]*x[24]-0.7364*x[20]*x[25]-0.4494*x[20]*x[29]-0.5946*x[20]*x[30]+0.5676*x[21]*x[24]-0.8251*x[21]*x[27]+0.1367*x[21]*x[28]-0.8832*x[21]*x[29]-0.8761*x[22]*x[23]-0.7728*x[22]*x[26]-0.1719*x[22]*x[28]+0.8757*x[22]*x[29]-0.6176*x[23]*x[25]+0.1867*x[23]*x[28]-0.4479*x[24]*x[24]+0.2994*x[24]*x[25]-0.1333*x[24]*x[26]+0.6338*x[24]*x[27]+0.3159*x[24]*x[30]-0.3079*x[26]*x[26]+0.447*x[26]*x[29]-0.8523*x[26]*x[30]-0.7899*x[27]*x[27]+0.0399*x[27]*x[28]+0.9352*x[27]*x[29]-0.2778*x[28]*x[30]-0.7618*x[29]*x[29]+0.4249*x[29]*x[30]+0.4609*x[30]*x[30]-0.251*x[1]+0.5942*x[2]+0.5333*x[3]-0.7805*x[4]+0.2272*x[5]-0.7226*x[6]-0.7082*x[7]-0.4523*x[8]-0.6816*x[9]+0.2165*x[10]+0.1178*x[11]+0.7735*x[12]-0.0782*x[13]+0.4293*x[14]-0.6703*x[15]+0.2115*x[16]-0.2631*x[17]+0.2094*x[18]-0.4845*x[19]-0.9861*x[20]+0.4061*x[21]+0.5565*x[22]-0.8707*x[23]-0.2701*x[24]+0.4742*x[25]-0.5442*x[26]+0.2408*x[27]+0.2621*x[28]+0.0391*x[29]-0.2166*x[30] <= 20.459)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script.