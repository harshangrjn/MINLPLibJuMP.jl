using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.962*x[2]*x[8]-0.5406*x[1]*x[15]+0.235*x[3]*x[6]+0.8823*x[3]*x[11]+0.6531*x[3]*x[13]+0.0721*x[4]*x[8]+0.2718*x[4]*x[9]+0.5985*x[5]*x[9]+0.6327*x[5]*x[13]+0.7971*x[6]*x[11]-0.7391*x[6]*x[13]+0.657*x[6]*x[14]+0.6358*x[7]*x[12]+0.9629*x[10]*x[12]+0.1896*x[1]-0.7064*x[2]+0.3053*x[3]+0.7652*x[4]+0.9315*x[5]-0.9323*x[6]-0.4928*x[7]-0.884*x[8]+0.1791*x[9]+0.5684*x[10]+0.3644*x[11]-0.9499*x[12]+0.2692*x[13]-0.8846*x[14]+0.9985*x[15]+(-0.9705*x[1]*x[2]*x[3])-0.4298*x[1]*x[2]*x[14]-0.8881*x[1]*x[3]*x[9]+0.7561*x[1]*x[3]*x[15]+0.3003*x[1]*x[4]*x[9]-0.3593*x[1]*x[4]*x[10]-0.9289*x[1]*x[6]*x[11]+0.3855*x[1]*x[9]*x[15]-0.216*x[1]*x[10]*x[12]+0.9288*x[1]*x[11]*x[12]+0.5347*x[2]*x[4]*x[12]+0.6247*x[2]*x[5]*x[6]+0.3342*x[2]*x[5]*x[12]+0.863*x[2]*x[6]*x[7]-0.6081*x[2]*x[6]*x[13]-0.6981*x[2]*x[6]*x[14]-0.8929*x[2]*x[7]*x[10]-0.7781*x[2]*x[7]*x[11]+0.7527*x[2]*x[7]*x[13]-0.4854*x[2]*x[7]*x[15]-0.7825*x[2]*x[10]*x[11]-0.5038*x[2]*x[10]*x[14]-0.4172*x[2]*x[11]*x[14]-0.8117*x[3]*x[4]*x[6]+0.2689*x[3]*x[5]*x[7]+0.9013*x[3]*x[5]*x[8]-0.603*x[3]*x[5]*x[12]-0.3122*x[3]*x[5]*x[15]+0.3266*x[3]*x[7]*x[12]-0.8937*x[3]*x[8]*x[10]+0.5846*x[3]*x[11]*x[14]+0.2776*x[4]*x[6]*x[7]-0.7325*x[4]*x[6]*x[8]+0.91*x[4]*x[6]*x[9]-0.5152*x[4]*x[6]*x[10]+0.9142*x[4]*x[6]*x[14]-0.1337*x[4]*x[7]*x[14]+0.8437*x[4]*x[9]*x[15]-0.7174*x[4]*x[10]*x[11]+0.2949*x[4]*x[11]*x[12]-0.5918*x[4]*x[12]*x[14]-0.0675*x[5]*x[7]*x[11]-0.3963*x[5]*x[8]*x[9]-0.8566*x[5]*x[8]*x[11]-0.4808*x[5]*x[13]*x[14]+0.704*x[6]*x[8]*x[10]+0.9408*x[6]*x[13]*x[14]-0.4046*x[7]*x[8]*x[11]-0.2217*x[7]*x[8]*x[12]-0.6423*x[7]*x[9]*x[14]-0.587*x[7]*x[10]*x[14]-0.8737*x[7]*x[13]*x[15]-0.337*x[8]*x[9]*x[13]+0.0175*x[8]*x[12]*x[13]-0.0411*x[9]*x[10]*x[15]+0.0204*x[9]*x[11]*x[12]-0.7279*x[10]*x[12]*x[13]+0.8455*x[11]*x[14]*x[15]+(-0.8593*x[1]*x[2]*x[12]*x[14])-0.8085*x[1]*x[3]*x[4]*x[12]+0.5212*x[1]*x[3]*x[4]*x[13]-0.4597*x[1]*x[3]*x[5]*x[14]+0.067*x[1]*x[3]*x[5]*x[15]-0.8203*x[1]*x[3]*x[7]*x[10]-0.9316*x[1]*x[3]*x[8]*x[10]+0.5199*x[1]*x[3]*x[9]*x[14]-0.451*x[1]*x[3]*x[11]*x[13]+0.192*x[1]*x[3]*x[11]*x[15]-0.1421*x[1]*x[4]*x[5]*x[12]+0.2653*x[1]*x[4]*x[6]*x[10]+0.164*x[1]*x[4]*x[7]*x[8]+0.4163*x[1]*x[4]*x[7]*x[15]-0.9978*x[1]*x[4]*x[9]*x[15]-0.0472*x[1]*x[4]*x[11]*x[13]+0.5808*x[1]*x[5]*x[6]*x[8]+0.3525*x[1]*x[5]*x[7]*x[8]-0.234*x[1]*x[5]*x[9]*x[15]-0.3607*x[1]*x[5]*x[11]*x[12]-0.0841*x[1]*x[5]*x[11]*x[14]-0.0216*x[1]*x[5]*x[13]*x[14]+0.134*x[1]*x[6]*x[11]*x[12]+0.5373*x[1]*x[7]*x[12]*x[15]-0.3614*x[1]*x[8]*x[10]*x[12]-0.7789*x[1]*x[8]*x[10]*x[13]-0.3913*x[1]*x[8]*x[12]*x[15]+0.7367*x[1]*x[8]*x[13]*x[14]-0.2656*x[1]*x[10]*x[11]*x[15]+0.9452*x[1]*x[10]*x[13]*x[14]+0.6144*x[2]*x[3]*x[4]*x[10]+0.2827*x[2]*x[3]*x[4]*x[11]-0.2304*x[2]*x[3]*x[6]*x[9]-0.8812*x[2]*x[3]*x[7]*x[10]+0.2463*x[2]*x[3]*x[7]*x[11]-0.7612*x[2]*x[4]*x[5]*x[7]-0.1753*x[2]*x[4]*x[5]*x[10]+0.0037*x[2]*x[4]*x[6]*x[10]-0.1487*x[2]*x[4]*x[6]*x[11]-0.5932*x[2]*x[4]*x[6]*x[12]+0.9646*x[2]*x[4]*x[7]*x[10]-0.197*x[2]*x[4]*x[7]*x[13]-0.1892*x[2]*x[4]*x[7]*x[15]-0.8179*x[2]*x[4]*x[9]*x[10]-0.4962*x[2]*x[4]*x[9]*x[12]+0.8124*x[2]*x[4]*x[9]*x[13]-0.4512*x[2]*x[4]*x[9]*x[15]-0.9387*x[2]*x[4]*x[10]*x[13]+0.5603*x[2]*x[4]*x[11]*x[15]-0.3893*x[2]*x[4]*x[12]*x[13]-0.1133*x[2]*x[5]*x[6]*x[14]-0.7136*x[2]*x[5]*x[7]*x[9]-0.3768*x[2]*x[5]*x[7]*x[10]+0.4941*x[2]*x[5]*x[7]*x[15]+0.9882*x[2]*x[5]*x[8]*x[12]-0.2818*x[2]*x[5]*x[10]*x[13]+0.845*x[2]*x[5]*x[12]*x[14]-0.9758*x[2]*x[5]*x[13]*x[14]-0.0219*x[2]*x[6]*x[7]*x[9]-0.4337*x[2]*x[6]*x[7]*x[10]-0.5103*x[2]*x[6]*x[7]*x[13]+0.9807*x[2]*x[6]*x[7]*x[15]-0.4902*x[2]*x[6]*x[8]*x[13]-0.1215*x[2]*x[6]*x[9]*x[10]+0.0421*x[2]*x[6]*x[9]*x[13]+0.6309*x[2]*x[6]*x[11]*x[12]+0.5757*x[2]*x[6]*x[11]*x[14]+0.5987*x[2]*x[6]*x[13]*x[14]-0.5637*x[2]*x[7]*x[8]*x[12]+0.9488*x[2]*x[7]*x[8]*x[13]+0.2265*x[2]*x[7]*x[8]*x[15]+0.7055*x[2]*x[7]*x[9]*x[12]-0.8545*x[2]*x[7]*x[9]*x[14]-0.7035*x[2]*x[8]*x[9]*x[13]-0.2289*x[2]*x[8]*x[9]*x[14]+0.1698*x[2]*x[8]*x[10]*x[12]-0.135*x[2]*x[8]*x[12]*x[14]-0.7199*x[2]*x[8]*x[12]*x[15]+0.1381*x[2]*x[9]*x[11]*x[13]-0.2086*x[2]*x[9]*x[12]*x[14]-0.0522*x[2]*x[10]*x[11]*x[13]-0.0885*x[2]*x[10]*x[11]*x[15]-0.1752*x[2]*x[10]*x[12]*x[14]+0.655*x[2]*x[11]*x[12]*x[13]+0.6165*x[2]*x[11]*x[13]*x[14]+0.2256*x[3]*x[4]*x[5]*x[6]+0.8751*x[3]*x[4]*x[6]*x[7]+0.2006*x[3]*x[4]*x[6]*x[9]-0.5771*x[3]*x[4]*x[6]*x[10]-0.9304*x[3]*x[4]*x[6]*x[11]+0.8052*x[3]*x[4]*x[7]*x[8]-0.8693*x[3]*x[4]*x[7]*x[13]+0.9307*x[3]*x[4]*x[7]*x[14]-0.548*x[3]*x[4]*x[8]*x[12]-0.2018*x[3]*x[4]*x[8]*x[13]-0.0126*x[3]*x[4]*x[8]*x[15]-0.505*x[3]*x[4]*x[9]*x[14]-0.0754*x[3]*x[4]*x[10]*x[12]-0.7992*x[3]*x[4]*x[12]*x[14]-0.5793*x[3]*x[4]*x[13]*x[14]+0.4414*x[3]*x[5]*x[6]*x[9]+0.7424*x[3]*x[5]*x[6]*x[10]-0.8407*x[3]*x[5]*x[6]*x[12]+0.4408*x[3]*x[5]*x[7]*x[8]-0.9737*x[3]*x[5]*x[7]*x[9]-0.9751*x[3]*x[5]*x[8]*x[11]+0.431*x[3]*x[5]*x[9]*x[10]+0.3989*x[3]*x[5]*x[9]*x[11]-0.7904*x[3]*x[5]*x[11]*x[12]+0.137*x[3]*x[5]*x[12]*x[13]+0.0696*x[3]*x[6]*x[7]*x[14]-0.4458*x[3]*x[6]*x[8]*x[10]+0.1808*x[3]*x[6]*x[9]*x[10]-0.1214*x[3]*x[6]*x[9]*x[11]+0.6006*x[3]*x[6]*x[10]*x[12]+0.6165*x[3]*x[6]*x[10]*x[13]+0.1239*x[3]*x[6]*x[11]*x[13]-0.4896*x[3]*x[7]*x[8]*x[13]-0.4164*x[3]*x[7]*x[8]*x[14]+0.029*x[3]*x[7]*x[9]*x[12]+0.5937*x[3]*x[7]*x[9]*x[14]-0.5496*x[3]*x[7]*x[10]*x[13]-0.8608*x[3]*x[7]*x[12]*x[15]+0.9646*x[3]*x[8]*x[9]*x[10]+0.942*x[3]*x[8]*x[9]*x[12]+0.9273*x[3]*x[8]*x[9]*x[14]-0.6707*x[3]*x[8]*x[12]*x[15]+0.7597*x[3]*x[9]*x[11]*x[14]-0.7814*x[3]*x[10]*x[12]*x[14]+0.2268*x[3]*x[10]*x[13]*x[14]+0.9576*x[4]*x[5]*x[6]*x[8]-0.6702*x[4]*x[5]*x[6]*x[9]+0.9141*x[4]*x[5]*x[6]*x[10]-0.0098*x[4]*x[5]*x[6]*x[13]-0.1985*x[4]*x[5]*x[8]*x[9]-0.2658*x[4]*x[5]*x[10]*x[11]+0.857*x[4]*x[5]*x[10]*x[14]+0.878*x[4]*x[6]*x[7]*x[14]+0.4631*x[4]*x[6]*x[8]*x[9]-0.0719*x[4]*x[6]*x[9]*x[13]-0.6137*x[4]*x[6]*x[9]*x[14]+0.8242*x[4]*x[6]*x[10]*x[13]+0.3257*x[4]*x[6]*x[10]*x[15]+0.1743*x[4]*x[6]*x[11]*x[13]+0.2132*x[4]*x[6]*x[12]*x[14]+0.7679*x[4]*x[6]*x[13]*x[14]+0.0203*x[4]*x[7]*x[8]*x[11]-0.594*x[4]*x[7]*x[8]*x[12]+0.6298*x[4]*x[7]*x[8]*x[13]+0.7759*x[4]*x[7]*x[9]*x[12]+0.0741*x[4]*x[7]*x[9]*x[13]-0.1848*x[4]*x[7]*x[9]*x[14]+0.1049*x[4]*x[7]*x[10]*x[11]+0.8312*x[4]*x[7]*x[10]*x[13]+0.6528*x[4]*x[7]*x[10]*x[14]-0.2616*x[4]*x[7]*x[11]*x[12]+0.7093*x[4]*x[8]*x[9]*x[10]-0.7333*x[4]*x[8]*x[9]*x[12]+0.6985*x[4]*x[8]*x[11]*x[14]+0.1844*x[4]*x[9]*x[11]*x[14]-0.1743*x[4]*x[10]*x[14]*x[15]-0.7778*x[4]*x[11]*x[13]*x[15]+0.9291*x[4]*x[12]*x[13]*x[15]-0.1961*x[5]*x[6]*x[7]*x[11]+0.6306*x[5]*x[6]*x[7]*x[13]+0.0291*x[5]*x[6]*x[7]*x[14]-0.2098*x[5]*x[6]*x[8]*x[10]-0.3175*x[5]*x[6]*x[8]*x[13]-0.2579*x[5]*x[6]*x[9]*x[14]+0.6014*x[5]*x[6]*x[10]*x[11]-0.848*x[5]*x[6]*x[10]*x[13]-0.0194*x[5]*x[6]*x[11]*x[12]+0.7252*x[5]*x[7]*x[8]*x[9]+0.3867*x[5]*x[7]*x[8]*x[10]-0.9378*x[5]*x[7]*x[8]*x[12]-0.8426*x[5]*x[7]*x[8]*x[15]+0.3798*x[5]*x[7]*x[9]*x[12]+0.1724*x[5]*x[7]*x[9]*x[15]-0.248*x[5]*x[7]*x[11]*x[14]-0.7743*x[5]*x[7]*x[13]*x[14]+0.6334*x[5]*x[8]*x[9]*x[11]+0.9518*x[5]*x[8]*x[9]*x[12]+0.0871*x[5]*x[8]*x[11]*x[13]-0.6684*x[5]*x[8]*x[11]*x[15]+0.548*x[5]*x[8]*x[13]*x[14]+0.0456*x[5]*x[9]*x[10]*x[14]-0.8445*x[5]*x[9]*x[13]*x[14]-0.3612*x[5]*x[10]*x[11]*x[13]+0.8683*x[5]*x[10]*x[12]*x[14]-0.475*x[5]*x[12]*x[13]*x[14]+0.8858*x[6]*x[7]*x[9]*x[13]+0.0215*x[6]*x[7]*x[11]*x[12]-0.5084*x[6]*x[8]*x[9]*x[10]+0.607*x[6]*x[9]*x[10]*x[12]-0.9594*x[6]*x[10]*x[12]*x[15]-0.1844*x[6]*x[11]*x[14]*x[15]-0.9526*x[6]*x[12]*x[13]*x[14]-0.9267*x[7]*x[8]*x[9]*x[11]-0.675*x[7]*x[8]*x[13]*x[15]+0.6079*x[7]*x[9]*x[10]*x[12]-0.4105*x[7]*x[9]*x[10]*x[14]+0.858*x[7]*x[9]*x[12]*x[13]+0.9874*x[7]*x[9]*x[12]*x[14]+0.5519*x[7]*x[9]*x[14]*x[15]+0.8765*x[7]*x[11]*x[12]*x[13]+0.8742*x[7]*x[12]*x[13]*x[14]+0.1207*x[8]*x[9]*x[12]*x[14]-0.2724*x[8]*x[10]*x[12]*x[13]+0.9956*x[8]*x[10]*x[13]*x[14]+0.0567*x[8]*x[11]*x[12]*x[13]+0.1833*x[8]*x[11]*x[12]*x[14]+0.9083*x[8]*x[12]*x[13]*x[15]-0.2446*x[9]*x[10]*x[11]*x[13]+0.0228*x[9]*x[12]*x[14]*x[15]-0.5921*x[10]*x[11]*x[14]*x[15]+0.0608*x[10]*x[13]*x[14]*x[15])+x[16] == 0.0)
@NLconstraint(m, e2, 0.8289*x[1]*x[8]-0.6497*x[1]*x[4]-0.2345*x[1]*x[11]-0.1125*x[2]*x[5]-0.2542*x[2]*x[7]-0.8073*x[2]*x[11]+0.5656*x[2]*x[15]+0.2143*x[3]*x[5]+0.7771*x[3]*x[6]-0.2687*x[4]*x[8]-0.358*x[5]*x[12]-0.2836*x[6]*x[9]-0.3586*x[6]*x[13]+0.0148*x[6]*x[14]+0.6595*x[7]*x[10]-0.3816*x[7]*x[15]+0.3303*x[8]*x[9]-0.8844*x[9]*x[11]+0.611*x[10]*x[13]-0.6606*x[11]*x[12]-0.0929*x[11]*x[13]-0.0737*x[1]+0.9334*x[2]-0.0088*x[3]-0.6584*x[4]+0.4117*x[5]+0.0512*x[6]+0.2245*x[7]+0.5118*x[8]-0.2796*x[9]+0.2254*x[10]+0.0065*x[11]+0.0293*x[12]-0.9904*x[13]-0.5853*x[14]+0.8069*x[15]+0.4808*x[1]*x[3]*x[11]-0.0139*x[1]*x[4]*x[7]+0.8988*x[1]*x[5]*x[13]-0.5725*x[1]*x[6]*x[8]+0.2469*x[1]*x[6]*x[13]+0.0727*x[1]*x[7]*x[8]-0.4318*x[1]*x[7]*x[12]-0.009*x[1]*x[8]*x[10]-0.7103*x[1]*x[8]*x[15]-0.1188*x[1]*x[9]*x[13]+0.8925*x[1]*x[11]*x[12]+0.2057*x[2]*x[3]*x[7]-0.1853*x[2]*x[5]*x[6]-0.3276*x[2]*x[5]*x[12]-0.0023*x[2]*x[6]*x[8]-0.4061*x[2]*x[6]*x[13]-0.4424*x[2]*x[7]*x[8]+0.7496*x[2]*x[10]*x[12]+0.1329*x[2]*x[10]*x[15]-0.5049*x[2]*x[12]*x[13]+0.8976*x[2]*x[12]*x[14]+0.3735*x[2]*x[13]*x[14]+0.8338*x[3]*x[4]*x[8]-0.2903*x[3]*x[5]*x[6]-0.6261*x[3]*x[5]*x[7]-0.1276*x[3]*x[5]*x[8]-0.3772*x[3]*x[5]*x[9]-0.5439*x[3]*x[5]*x[15]-0.8759*x[3]*x[7]*x[8]-0.7188*x[3]*x[7]*x[11]+0.2768*x[3]*x[7]*x[14]-0.6917*x[3]*x[8]*x[9]+0.1666*x[3]*x[9]*x[11]+0.1201*x[3]*x[10]*x[11]-0.0358*x[3]*x[10]*x[12]-0.9611*x[4]*x[5]*x[9]+0.6075*x[4]*x[5]*x[12]-0.3487*x[4]*x[6]*x[7]-0.4635*x[4]*x[6]*x[10]+0.1903*x[4]*x[6]*x[12]-0.0506*x[4]*x[7]*x[14]-0.0049*x[4]*x[8]*x[12]+0.1641*x[4]*x[8]*x[14]-0.4499*x[4]*x[9]*x[10]-0.01*x[4]*x[9]*x[14]-0.257*x[4]*x[10]*x[14]+0.6708*x[4]*x[12]*x[14]+0.0123*x[5]*x[7]*x[9]+0.2036*x[5]*x[7]*x[10]+0.7382*x[5]*x[7]*x[13]-0.1034*x[5]*x[8]*x[10]+0.1643*x[5]*x[8]*x[14]+0.9798*x[5]*x[9]*x[13]-0.882*x[5]*x[10]*x[11]+0.1908*x[5]*x[11]*x[13]+0.7411*x[6]*x[7]*x[10]+0.5625*x[6]*x[7]*x[13]+0.4881*x[6]*x[8]*x[9]+0.3139*x[6]*x[10]*x[12]+0.6796*x[6]*x[11]*x[13]-0.3436*x[6]*x[12]*x[13]-0.6078*x[6]*x[13]*x[14]-0.9425*x[7]*x[9]*x[10]+0.322*x[7]*x[13]*x[14]+0.4213*x[7]*x[14]*x[15]-0.8873*x[8]*x[9]*x[10]+0.2876*x[8]*x[9]*x[15]+0.3577*x[8]*x[11]*x[14]+0.4611*x[8]*x[12]*x[15]+0.4382*x[8]*x[14]*x[15]-0.8358*x[9]*x[10]*x[15]+0.0185*x[9]*x[11]*x[13]-0.7818*x[9]*x[12]*x[13]-0.4809*x[9]*x[12]*x[14]-0.3862*x[9]*x[13]*x[14]-0.5542*x[9]*x[13]*x[15]+0.3379*x[11]*x[12]*x[15]+0.0427*x[12]*x[14]*x[15]+0.7672*x[13]*x[14]*x[15]+0.3306*x[1]*x[2]*x[3]*x[7]-0.861*x[1]*x[2]*x[3]*x[9]+0.4905*x[1]*x[2]*x[3]*x[10]+0.2194*x[1]*x[2]*x[6]*x[8]+0.3736*x[1]*x[2]*x[6]*x[10]-0.2895*x[1]*x[2]*x[7]*x[11]-0.731*x[1]*x[2]*x[7]*x[15]-0.5177*x[1]*x[2]*x[8]*x[13]-0.9926*x[1]*x[3]*x[4]*x[10]+0.933*x[1]*x[3]*x[7]*x[9]-0.2915*x[1]*x[3]*x[7]*x[11]-0.4406*x[1]*x[3]*x[8]*x[11]+0.7465*x[1]*x[3]*x[9]*x[13]-0.4961*x[1]*x[3]*x[13]*x[15]-0.0137*x[1]*x[4]*x[5]*x[6]+0.0538*x[1]*x[4]*x[5]*x[8]+0.1053*x[1]*x[4]*x[6]*x[7]-0.5961*x[1]*x[4]*x[7]*x[11]+0.2777*x[1]*x[4]*x[8]*x[13]-0.7259*x[1]*x[4]*x[8]*x[14]-0.3599*x[1]*x[4]*x[9]*x[12]+0.7206*x[1]*x[4]*x[11]*x[14]-0.8619*x[1]*x[5]*x[6]*x[7]+0.5336*x[1]*x[5]*x[8]*x[12]-0.4789*x[1]*x[5]*x[8]*x[13]+0.6847*x[1]*x[5]*x[9]*x[10]-0.4877*x[1]*x[5]*x[11]*x[13]+0.4623*x[1]*x[5]*x[13]*x[14]-0.487*x[1]*x[6]*x[8]*x[12]-0.7839*x[1]*x[7]*x[10]*x[14]-0.4194*x[1]*x[8]*x[11]*x[14]-0.0727*x[1]*x[9]*x[14]*x[15]-0.341*x[2]*x[3]*x[4]*x[5]-0.7717*x[2]*x[3]*x[4]*x[9]+0.2167*x[2]*x[3]*x[4]*x[10]-0.4787*x[2]*x[3]*x[4]*x[11]-0.5208*x[2]*x[3]*x[5]*x[8]-0.1808*x[2]*x[3]*x[5]*x[15]-0.5911*x[2]*x[3]*x[6]*x[9]+0.1989*x[2]*x[3]*x[8]*x[10]+0.6032*x[2]*x[3]*x[9]*x[10]-0.6094*x[2]*x[3]*x[10]*x[12]-0.936*x[2]*x[3]*x[11]*x[12]+0.253*x[2]*x[4]*x[5]*x[10]-0.5303*x[2]*x[4]*x[5]*x[11]-0.246*x[2]*x[4]*x[6]*x[9]-0.7255*x[2]*x[4]*x[6]*x[14]-0.8123*x[2]*x[4]*x[6]*x[15]+0.0132*x[2]*x[4]*x[8]*x[9]+0.9385*x[2]*x[4]*x[8]*x[11]+0.0789*x[2]*x[4]*x[9]*x[11]-0.9415*x[2]*x[4]*x[9]*x[13]+0.9598*x[2]*x[4]*x[9]*x[14]-0.9823*x[2]*x[4]*x[10]*x[13]-0.5666*x[2]*x[4]*x[11]*x[13]-0.271*x[2]*x[4]*x[11]*x[15]+0.5906*x[2]*x[5]*x[6]*x[7]+0.2424*x[2]*x[5]*x[6]*x[8]+0.851*x[2]*x[5]*x[6]*x[14]+0.0923*x[2]*x[5]*x[7]*x[9]+0.5494*x[2]*x[5]*x[7]*x[14]+0.8982*x[2]*x[5]*x[8]*x[11]+0.9007*x[2]*x[5]*x[9]*x[10]-0.6236*x[2]*x[5]*x[9]*x[14]+0.3368*x[2]*x[5]*x[10]*x[12]+0.66*x[2]*x[5]*x[10]*x[15]-0.2691*x[2]*x[6]*x[7]*x[9]+0.6214*x[2]*x[6]*x[9]*x[10]-0.8838*x[2]*x[6]*x[9]*x[13]+0.6132*x[2]*x[6]*x[11]*x[12]+0.0582*x[2]*x[6]*x[11]*x[13]-0.5381*x[2]*x[6]*x[11]*x[14]-0.5535*x[2]*x[6]*x[13]*x[15]+0.4419*x[2]*x[7]*x[8]*x[15]-0.1197*x[2]*x[7]*x[9]*x[10]+0.3163*x[2]*x[7]*x[10]*x[11]-0.9985*x[2]*x[7]*x[10]*x[14]-0.783*x[2]*x[7]*x[12]*x[13]+0.9524*x[2]*x[7]*x[14]*x[15]-0.4166*x[2]*x[8]*x[11]*x[12]+0.0862*x[2]*x[9]*x[10]*x[11]-0.73*x[2]*x[9]*x[10]*x[14]+0.9422*x[2]*x[9]*x[11]*x[14]+0.1063*x[2]*x[9]*x[13]*x[15]+0.3907*x[2]*x[10]*x[13]*x[14]-0.4956*x[2]*x[11]*x[12]*x[14]-0.7408*x[3]*x[4]*x[6]*x[7]-0.2151*x[3]*x[4]*x[7]*x[8]-0.3345*x[3]*x[4]*x[8]*x[11]-0.4816*x[3]*x[4]*x[10]*x[14]+0.2222*x[3]*x[4]*x[13]*x[14]+0.2241*x[3]*x[5]*x[7]*x[14]+0.2295*x[3]*x[5]*x[8]*x[10]+0.7257*x[3]*x[5]*x[8]*x[11]+0.3556*x[3]*x[5]*x[10]*x[13]-0.4435*x[3]*x[5]*x[11]*x[12]-0.4947*x[3]*x[5]*x[12]*x[13]-0.1177*x[3]*x[5]*x[12]*x[14]-0.3372*x[3]*x[6]*x[7]*x[8]-0.1655*x[3]*x[6]*x[7]*x[9]+0.9573*x[3]*x[6]*x[7]*x[13]-0.2903*x[3]*x[6]*x[8]*x[12]-0.798*x[3]*x[6]*x[10]*x[12]+0.8057*x[3]*x[7]*x[8]*x[9]-0.924*x[3]*x[7]*x[9]*x[11]-0.0266*x[3]*x[7]*x[9]*x[15]+0.3614*x[3]*x[7]*x[10]*x[11]+0.8255*x[3]*x[7]*x[11]*x[12]+0.4837*x[3]*x[7]*x[11]*x[13]+0.9265*x[3]*x[7]*x[11]*x[14]+0.6766*x[3]*x[7]*x[12]*x[14]-0.709*x[3]*x[8]*x[9]*x[12]-0.3981*x[3]*x[8]*x[9]*x[13]-0.0176*x[3]*x[8]*x[10]*x[11]+0.6436*x[3]*x[8]*x[12]*x[13]+0.9774*x[3]*x[8]*x[12]*x[14]+0.5748*x[3]*x[8]*x[13]*x[14]-0.1343*x[3]*x[8]*x[13]*x[15]-0.451*x[3]*x[9]*x[10]*x[14]+0.6536*x[3]*x[10]*x[11]*x[13]-0.7273*x[3]*x[10]*x[13]*x[14]-0.5096*x[3]*x[10]*x[14]*x[15]-0.4381*x[4]*x[5]*x[6]*x[10]+0.0213*x[4]*x[5]*x[6]*x[13]+0.5696*x[4]*x[5]*x[7]*x[14]-0.3302*x[4]*x[5]*x[7]*x[15]+0.4504*x[4]*x[5]*x[8]*x[13]-0.5409*x[4]*x[5]*x[10]*x[14]+0.8898*x[4]*x[5]*x[11]*x[13]-0.1724*x[4]*x[6]*x[7]*x[8]-0.8537*x[4]*x[6]*x[10]*x[12]-0.2561*x[4]*x[6]*x[10]*x[14]-0.1154*x[4]*x[6]*x[11]*x[14]+0.7333*x[4]*x[7]*x[8]*x[11]+0.7511*x[4]*x[7]*x[9]*x[13]+0.7572*x[4]*x[7]*x[9]*x[14]+0.9796*x[4]*x[7]*x[13]*x[14]-0.2907*x[4]*x[8]*x[9]*x[12]+0.4919*x[4]*x[9]*x[10]*x[12]+0.9703*x[4]*x[9]*x[11]*x[12]-0.1944*x[4]*x[11]*x[13]*x[14]-0.5137*x[4]*x[12]*x[13]*x[14]-0.9757*x[4]*x[12]*x[13]*x[15]-0.2188*x[5]*x[6]*x[8]*x[13]+0.3764*x[5]*x[6]*x[10]*x[13]+0.1542*x[5]*x[6]*x[10]*x[14]-0.1763*x[5]*x[6]*x[11]*x[12]+0.9491*x[5]*x[6]*x[11]*x[13]+0.6557*x[5]*x[6]*x[11]*x[14]-0.3005*x[5]*x[6]*x[13]*x[14]+0.2898*x[5]*x[7]*x[8]*x[13]+0.1153*x[5]*x[7]*x[9]*x[13]+0.1751*x[5]*x[7]*x[10]*x[11]+0.2118*x[5]*x[7]*x[11]*x[15]-0.548*x[5]*x[8]*x[9]*x[10]-0.9913*x[5]*x[8]*x[9]*x[12]-0.0558*x[5]*x[8]*x[9]*x[14]+0.8115*x[5]*x[8]*x[9]*x[15]+0.7875*x[5]*x[8]*x[10]*x[14]-0.6382*x[5]*x[8]*x[11]*x[12]+0.8184*x[5]*x[8]*x[11]*x[13]+0.6399*x[5]*x[9]*x[12]*x[14]-0.6636*x[5]*x[9]*x[13]*x[14]-0.0009*x[5]*x[10]*x[12]*x[14]-0.0995*x[6]*x[7]*x[8]*x[12]+0.0159*x[6]*x[7]*x[9]*x[10]+0.5613*x[6]*x[7]*x[10]*x[11]+0.2613*x[6]*x[7]*x[10]*x[12]-0.6351*x[6]*x[7]*x[12]*x[14]-0.1878*x[6]*x[9]*x[10]*x[14]+0.9454*x[6]*x[9]*x[11]*x[13]+0.261*x[6]*x[10]*x[13]*x[15]-0.4407*x[6]*x[13]*x[14]*x[15]-0.2037*x[7]*x[8]*x[9]*x[13]+0.1408*x[7]*x[8]*x[10]*x[14]-0.2025*x[7]*x[8]*x[11]*x[13]-0.4913*x[7]*x[9]*x[10]*x[11]+0.6512*x[7]*x[9]*x[11]*x[13]+0.399*x[7]*x[10]*x[11]*x[14]+0.4168*x[7]*x[11]*x[13]*x[15]-0.5321*x[8]*x[9]*x[10]*x[12]+0.1838*x[8]*x[9]*x[11]*x[12]+0.3005*x[8]*x[10]*x[11]*x[12]+0.765*x[8]*x[10]*x[11]*x[14]-0.6518*x[9]*x[10]*x[11]*x[14]-0.4852*x[9]*x[11]*x[12]*x[14]-0.1539*x[10]*x[11]*x[12]*x[15]-0.941*x[11]*x[13]*x[14]*x[15] <= 7.759)
@NLconstraint(m, e3, 0.53*x[1]*x[8]+0.4422*x[2]*x[14]-0.0901*x[3]*x[8]+0.6188*x[3]*x[13]+0.3875*x[3]*x[15]+0.7694*x[4]*x[9]-0.0537*x[4]*x[11]-0.7704*x[5]*x[13]-0.6114*x[6]*x[13]-0.8814*x[7]*x[12]-0.4265*x[8]*x[10]-0.912*x[10]*x[11]-0.7727*x[10]*x[12]+0.4953*x[10]*x[13]+0.6563*x[11]*x[14]-0.8281*x[13]*x[15]-0.9728*x[1]+0.0152*x[2]+0.7085*x[3]+0.5269*x[4]+0.827*x[5]-0.793*x[6]+0.7996*x[7]-0.3091*x[8]+0.8628*x[9]-0.2313*x[10]+0.1136*x[11]-0.7916*x[12]+0.2725*x[13]+0.1921*x[14]-0.2961*x[15]+0.6491*x[1]*x[2]*x[13]-0.7264*x[1]*x[3]*x[15]-0.7662*x[1]*x[5]*x[11]+0.0511*x[1]*x[10]*x[13]+0.8449*x[1]*x[11]*x[12]+0.2126*x[2]*x[3]*x[9]+0.5595*x[2]*x[5]*x[8]-0.8361*x[2]*x[5]*x[10]+0.8217*x[2]*x[5]*x[14]+0.7672*x[2]*x[6]*x[13]+0.1845*x[2]*x[7]*x[8]-0.1451*x[2]*x[7]*x[10]-0.4107*x[2]*x[7]*x[13]-0.4481*x[2]*x[9]*x[11]+0.1416*x[2]*x[9]*x[12]-0.2748*x[2]*x[11]*x[14]-0.7726*x[2]*x[13]*x[14]+0.4843*x[3]*x[4]*x[6]+0.8549*x[3]*x[4]*x[12]+0.5872*x[3]*x[4]*x[13]+0.825*x[3]*x[5]*x[10]+0.9215*x[3]*x[6]*x[9]-0.5197*x[3]*x[6]*x[10]-0.6993*x[3]*x[6]*x[14]-0.6283*x[3]*x[7]*x[8]-0.2298*x[3]*x[7]*x[12]+0.035*x[3]*x[7]*x[14]-0.0892*x[3]*x[9]*x[13]-0.1335*x[3]*x[10]*x[13]-0.1875*x[3]*x[12]*x[13]-0.333*x[3]*x[13]*x[15]+0.935*x[3]*x[14]*x[15]+0.7529*x[4]*x[5]*x[7]+0.1763*x[4]*x[6]*x[9]-0.37*x[4]*x[6]*x[12]+0.4158*x[4]*x[7]*x[10]+0.7077*x[4]*x[7]*x[14]+0.0134*x[4]*x[8]*x[12]+0.9738*x[4]*x[10]*x[11]-0.8654*x[4]*x[11]*x[12]+0.4957*x[4]*x[11]*x[13]-0.6179*x[4]*x[11]*x[14]+0.8552*x[5]*x[7]*x[12]-0.2546*x[5]*x[7]*x[13]-0.2394*x[5]*x[8]*x[10]+0.7633*x[5]*x[8]*x[11]-0.9411*x[5]*x[10]*x[12]-0.8546*x[5]*x[12]*x[13]-0.5781*x[5]*x[13]*x[14]-0.5549*x[6]*x[7]*x[8]+0.9438*x[6]*x[7]*x[9]-0.6452*x[6]*x[11]*x[13]-0.245*x[6]*x[12]*x[14]-0.0055*x[6]*x[13]*x[15]-0.1308*x[7]*x[9]*x[13]-0.7167*x[7]*x[10]*x[13]+0.2716*x[7]*x[11]*x[13]-0.5028*x[7]*x[12]*x[13]+0.8083*x[7]*x[13]*x[14]-0.9201*x[8]*x[9]*x[11]-0.9971*x[8]*x[9]*x[12]-0.5103*x[8]*x[10]*x[11]+0.6745*x[9]*x[10]*x[13]-0.1297*x[10]*x[11]*x[12]+0.3728*x[10]*x[12]*x[14]+0.2948*x[10]*x[13]*x[15]+0.7324*x[10]*x[14]*x[15]-0.0973*x[11]*x[12]*x[14]+0.4054*x[1]*x[2]*x[4]*x[10]+0.1202*x[1]*x[2]*x[4]*x[13]+0.0044*x[1]*x[2]*x[4]*x[14]-0.0165*x[1]*x[2]*x[5]*x[6]+0.9553*x[1]*x[2]*x[5]*x[8]-0.87*x[1]*x[2]*x[5]*x[15]+0.7565*x[1]*x[2]*x[11]*x[13]-0.1843*x[1]*x[3]*x[4]*x[8]+0.6859*x[1]*x[3]*x[4]*x[13]-0.7822*x[1]*x[3]*x[5]*x[9]-0.3972*x[1]*x[3]*x[5]*x[15]-0.4876*x[1]*x[3]*x[7]*x[9]-0.7053*x[1]*x[3]*x[7]*x[14]-0.2704*x[1]*x[3]*x[10]*x[11]-0.0095*x[1]*x[4]*x[5]*x[12]-0.5434*x[1]*x[4]*x[6]*x[15]-0.7312*x[1]*x[4]*x[9]*x[12]+0.1296*x[1]*x[4]*x[11]*x[12]+0.696*x[1]*x[5]*x[7]*x[10]+0.9872*x[1]*x[5]*x[7]*x[13]+0.2303*x[1]*x[5]*x[8]*x[13]-0.8685*x[1]*x[5]*x[10]*x[11]-0.234*x[1]*x[5]*x[10]*x[15]-0.1731*x[1]*x[6]*x[7]*x[11]-0.9269*x[1]*x[6]*x[8]*x[14]+0.8738*x[1]*x[6]*x[10]*x[11]+0.9326*x[1]*x[6]*x[10]*x[13]-0.5923*x[1]*x[6]*x[12]*x[14]+0.4276*x[1]*x[7]*x[12]*x[15]+0.147*x[1]*x[8]*x[12]*x[15]+0.7765*x[1]*x[8]*x[13]*x[14]-0.9899*x[2]*x[3]*x[4]*x[7]-0.6028*x[2]*x[3]*x[4]*x[8]-0.1921*x[2]*x[3]*x[4]*x[10]+0.857*x[2]*x[3]*x[5]*x[12]-0.114*x[2]*x[3]*x[5]*x[15]+0.0483*x[2]*x[3]*x[6]*x[13]+0.1017*x[2]*x[3]*x[6]*x[14]-0.7226*x[2]*x[3]*x[7]*x[14]+0.614*x[2]*x[3]*x[8]*x[10]+0.0379*x[2]*x[3]*x[8]*x[12]-0.0737*x[2]*x[4]*x[5]*x[7]-0.8331*x[2]*x[4]*x[5]*x[12]+0.4791*x[2]*x[4]*x[6]*x[10]-0.7216*x[2]*x[4]*x[7]*x[11]+0.3249*x[2]*x[4]*x[7]*x[14]-0.8504*x[2]*x[4]*x[8]*x[10]+0.5611*x[2]*x[4]*x[9]*x[10]+0.6065*x[2]*x[4]*x[9]*x[14]-0.0916*x[2]*x[4]*x[10]*x[11]+0.8285*x[2]*x[4]*x[11]*x[12]+0.017*x[2]*x[4]*x[13]*x[14]-0.3661*x[2]*x[4]*x[14]*x[15]-0.1766*x[2]*x[5]*x[6]*x[14]+0.703*x[2]*x[5]*x[7]*x[8]-0.3151*x[2]*x[5]*x[7]*x[9]-0.0992*x[2]*x[5]*x[8]*x[11]-0.1979*x[2]*x[5]*x[8]*x[12]-0.7181*x[2]*x[5]*x[8]*x[14]-0.4247*x[2]*x[5]*x[9]*x[10]-0.3351*x[2]*x[5]*x[9]*x[12]+0.3741*x[2]*x[5]*x[9]*x[13]-0.4381*x[2]*x[5]*x[10]*x[14]-0.8114*x[2]*x[6]*x[7]*x[9]+0.7267*x[2]*x[6]*x[8]*x[9]+0.294*x[2]*x[6]*x[11]*x[14]+0.9723*x[2]*x[6]*x[13]*x[14]-0.5079*x[2]*x[7]*x[9]*x[10]-0.4814*x[2]*x[7]*x[9]*x[11]+0.3632*x[2]*x[7]*x[9]*x[14]-0.5643*x[2]*x[7]*x[10]*x[15]+0.1553*x[2]*x[7]*x[12]*x[14]-0.5578*x[2]*x[7]*x[13]*x[14]+0.1923*x[2]*x[8]*x[9]*x[10]+0.7998*x[2]*x[8]*x[9]*x[13]-0.0523*x[2]*x[8]*x[9]*x[14]+0.4018*x[2]*x[8]*x[10]*x[11]+0.0737*x[2]*x[8]*x[11]*x[14]+0.5811*x[2]*x[9]*x[10]*x[12]+0.3881*x[2]*x[9]*x[11]*x[14]+0.9891*x[2]*x[9]*x[12]*x[13]-0.9556*x[2]*x[9]*x[12]*x[14]-0.2027*x[2]*x[10]*x[11]*x[14]+0.7048*x[2]*x[11]*x[12]*x[13]-0.3649*x[3]*x[4]*x[5]*x[7]-0.1249*x[3]*x[4]*x[5]*x[13]-0.9027*x[3]*x[4]*x[6]*x[7]+0.1384*x[3]*x[4]*x[6]*x[9]+0.6411*x[3]*x[4]*x[6]*x[10]-0.4932*x[3]*x[4]*x[6]*x[12]+0.3746*x[3]*x[4]*x[6]*x[14]-0.4479*x[3]*x[4]*x[7]*x[8]+0.3455*x[3]*x[4]*x[8]*x[9]+0.0188*x[3]*x[4]*x[8]*x[13]-0.0307*x[3]*x[4]*x[12]*x[14]+0.8764*x[3]*x[4]*x[13]*x[14]+0.6061*x[3]*x[4]*x[14]*x[15]+0.9985*x[3]*x[5]*x[7]*x[8]+0.2648*x[3]*x[5]*x[7]*x[14]-0.0279*x[3]*x[5]*x[8]*x[10]-0.4604*x[3]*x[5]*x[8]*x[13]-0.7268*x[3]*x[5]*x[9]*x[13]-0.2651*x[3]*x[5]*x[10]*x[11]-0.4899*x[3]*x[5]*x[10]*x[12]+0.1672*x[3]*x[5]*x[10]*x[14]-0.1364*x[3]*x[6]*x[8]*x[9]-0.3404*x[3]*x[6]*x[8]*x[11]+0.8816*x[3]*x[6]*x[9]*x[10]+0.7029*x[3]*x[6]*x[9]*x[13]+0.8173*x[3]*x[6]*x[9]*x[14]-0.8932*x[3]*x[6]*x[10]*x[13]-0.9765*x[3]*x[7]*x[11]*x[12]+0.0688*x[3]*x[7]*x[11]*x[13]+0.5176*x[3]*x[7]*x[13]*x[14]-0.8793*x[3]*x[8]*x[9]*x[14]+0.9246*x[3]*x[8]*x[10]*x[12]+0.9816*x[3]*x[8]*x[10]*x[14]+0.895*x[3]*x[9]*x[10]*x[13]+0.9161*x[3]*x[9]*x[11]*x[13]-0.1803*x[3]*x[10]*x[12]*x[15]+0.3183*x[3]*x[10]*x[13]*x[15]-0.055*x[3]*x[11]*x[13]*x[14]+0.8926*x[4]*x[5]*x[6]*x[9]+0.2973*x[4]*x[5]*x[6]*x[12]+0.7455*x[4]*x[5]*x[6]*x[14]+0.8188*x[4]*x[5]*x[7]*x[10]-0.5223*x[4]*x[5]*x[7]*x[12]-0.2403*x[4]*x[5]*x[7]*x[13]+0.1847*x[4]*x[5]*x[8]*x[11]+0.3272*x[4]*x[5]*x[8]*x[13]-0.2487*x[4]*x[5]*x[10]*x[12]-0.5583*x[4]*x[5]*x[11]*x[13]+0.696*x[4]*x[5]*x[11]*x[15]+0.5561*x[4]*x[5]*x[13]*x[15]-0.8905*x[4]*x[6]*x[7]*x[9]+0.4066*x[4]*x[6]*x[8]*x[13]-0.9799*x[4]*x[6]*x[9]*x[12]-0.0747*x[4]*x[6]*x[10]*x[11]+0.3231*x[4]*x[6]*x[10]*x[13]-0.9514*x[4]*x[6]*x[10]*x[14]+0.012*x[4]*x[6]*x[11]*x[15]+0.8497*x[4]*x[6]*x[14]*x[15]-0.7687*x[4]*x[7]*x[11]*x[14]+0.0103*x[4]*x[7]*x[12]*x[15]+0.6923*x[4]*x[8]*x[9]*x[15]+0.2979*x[4]*x[8]*x[10]*x[11]+0.7348*x[4]*x[8]*x[13]*x[14]-0.7359*x[4]*x[8]*x[13]*x[15]+0.6676*x[4]*x[9]*x[11]*x[12]-0.5893*x[4]*x[9]*x[12]*x[13]+0.5363*x[4]*x[9]*x[14]*x[15]-0.1337*x[4]*x[10]*x[11]*x[12]+0.401*x[4]*x[10]*x[12]*x[13]-0.8704*x[4]*x[11]*x[13]*x[15]+0.422*x[5]*x[6]*x[9]*x[10]-0.7508*x[5]*x[6]*x[9]*x[13]-0.6213*x[5]*x[6]*x[10]*x[13]+0.4636*x[5]*x[6]*x[11]*x[14]-0.2063*x[5]*x[6]*x[13]*x[14]+0.1861*x[5]*x[6]*x[13]*x[15]+0.309*x[5]*x[7]*x[8]*x[10]+0.5443*x[5]*x[7]*x[8]*x[15]+0.3958*x[5]*x[7]*x[10]*x[11]+0.6773*x[5]*x[7]*x[11]*x[12]-0.4662*x[5]*x[8]*x[10]*x[12]-0.9688*x[5]*x[8]*x[11]*x[12]-0.5006*x[5]*x[8]*x[12]*x[15]+0.083*x[5]*x[8]*x[13]*x[14]-0.6537*x[5]*x[9]*x[10]*x[11]+0.7312*x[5]*x[9]*x[10]*x[14]+0.2649*x[5]*x[9]*x[11]*x[14]+0.1276*x[5]*x[10]*x[11]*x[15]-0.485*x[5]*x[12]*x[13]*x[14]-0.1255*x[6]*x[7]*x[8]*x[14]+0.5589*x[6]*x[7]*x[9]*x[11]+0.2869*x[6]*x[7]*x[12]*x[14]+0.842*x[6]*x[8]*x[9]*x[10]-0.5004*x[6]*x[8]*x[9]*x[14]+0.4451*x[6]*x[8]*x[9]*x[15]-0.5607*x[6]*x[8]*x[10]*x[14]-0.0881*x[6]*x[8]*x[12]*x[14]+0.1208*x[6]*x[9]*x[10]*x[14]-0.9828*x[6]*x[9]*x[11]*x[13]-0.8185*x[6]*x[9]*x[12]*x[13]-0.954*x[6]*x[10]*x[12]*x[13]-0.3729*x[6]*x[10]*x[12]*x[15]+0.1654*x[6]*x[10]*x[13]*x[15]-0.9237*x[6]*x[11]*x[12]*x[14]+0.3584*x[6]*x[11]*x[13]*x[14]+0.0093*x[6]*x[11]*x[13]*x[15]+0.9516*x[6]*x[12]*x[13]*x[14]-0.9684*x[7]*x[8]*x[10]*x[11]-0.6376*x[7]*x[9]*x[11]*x[13]+0.3378*x[7]*x[11]*x[14]*x[15]-0.5301*x[7]*x[12]*x[13]*x[14]+0.9266*x[8]*x[10]*x[11]*x[12]+0.7621*x[8]*x[10]*x[11]*x[14]-0.4411*x[8]*x[10]*x[13]*x[15]+0.6019*x[8]*x[11]*x[12]*x[14]+0.2334*x[8]*x[12]*x[13]*x[14]+0.5999*x[9]*x[10]*x[12]*x[14]-0.6201*x[10]*x[11]*x[14]*x[15]+0.1663*x[11]*x[12]*x[13]*x[14]+0.8742*x[11]*x[12]*x[13]*x[15] <= 71.417)
@NLconstraint(m, e4, (-0.4474*x[2]*x[6])-0.4382*x[2]*x[10]-0.0031*x[2]*x[14]-0.603*x[2]*x[15]+0.3724*x[3]*x[9]-0.5186*x[3]*x[11]+0.4169*x[3]*x[15]+0.5146*x[4]*x[7]+0.8553*x[4]*x[10]+0.5126*x[5]*x[8]+0.2966*x[5]*x[15]+0.1102*x[6]*x[12]+0.3487*x[6]*x[14]+0.4943*x[7]*x[13]+0.7947*x[10]*x[15]+0.6985*x[11]*x[14]-0.847*x[12]*x[14]+0.9038*x[2]+0.2136*x[3]-0.5375*x[4]+0.9771*x[5]+0.8248*x[6]-0.1027*x[7]-0.1159*x[8]+0.5116*x[9]-0.8477*x[10]-0.6589*x[11]+0.9754*x[12]-0.3903*x[13]-0.592*x[14]+0.8421*x[15]+0.9594*x[1]*x[3]*x[10]-0.4808*x[1]*x[2]*x[13]+0.0632*x[1]*x[5]*x[10]+0.3015*x[1]*x[5]*x[12]+0.5211*x[1]*x[6]*x[10]+0.6228*x[1]*x[7]*x[11]+0.916*x[1]*x[8]*x[14]-0.5534*x[1]*x[10]*x[12]+0.7752*x[1]*x[12]*x[14]-0.7474*x[2]*x[3]*x[5]+0.0985*x[2]*x[3]*x[11]-0.0247*x[2]*x[3]*x[14]+0.2707*x[2]*x[4]*x[8]+0.3682*x[2]*x[6]*x[8]+0.1884*x[2]*x[6]*x[12]+0.9778*x[2]*x[7]*x[12]-0.9339*x[2]*x[9]*x[10]+0.1626*x[2]*x[9]*x[12]+0.9642*x[2]*x[10]*x[11]-0.9501*x[2]*x[10]*x[14]+0.9353*x[2]*x[11]*x[12]+0.4706*x[2]*x[11]*x[13]-0.8714*x[2]*x[11]*x[14]+0.5754*x[3]*x[6]*x[7]+0.4486*x[3]*x[6]*x[9]-0.1201*x[3]*x[6]*x[12]+0.0423*x[3]*x[6]*x[14]-0.6159*x[3]*x[7]*x[15]+0.5237*x[3]*x[8]*x[9]-0.0322*x[3]*x[9]*x[11]-0.0472*x[3]*x[9]*x[14]+0.2195*x[3]*x[10]*x[12]+0.2146*x[3]*x[10]*x[13]-0.4737*x[3]*x[11]*x[13]+0.7919*x[3]*x[12]*x[13]-0.9212*x[3]*x[12]*x[14]-0.1727*x[4]*x[5]*x[7]-0.1932*x[4]*x[5]*x[13]+0.8625*x[4]*x[8]*x[9]-0.421*x[4]*x[9]*x[11]+0.3937*x[4]*x[9]*x[15]-0.6543*x[4]*x[10]*x[11]+0.9814*x[4]*x[10]*x[12]+0.8529*x[4]*x[14]*x[15]+0.369*x[5]*x[6]*x[12]+0.1556*x[5]*x[6]*x[13]-0.7126*x[5]*x[7]*x[8]+0.1728*x[5]*x[7]*x[9]+0.9257*x[5]*x[8]*x[9]+0.9718*x[5]*x[8]*x[10]+0.398*x[5]*x[8]*x[12]+0.1557*x[5]*x[9]*x[11]-0.5445*x[5]*x[11]*x[14]+0.7283*x[6]*x[7]*x[13]+0.5689*x[6]*x[8]*x[9]-0.7989*x[6]*x[8]*x[11]-0.0166*x[6]*x[8]*x[13]+0.2002*x[6]*x[9]*x[10]+0.1982*x[6]*x[11]*x[13]+0.2429*x[6]*x[11]*x[14]+0.3658*x[7]*x[8]*x[14]-0.9846*x[8]*x[10]*x[13]+0.8349*x[8]*x[11]*x[14]-0.7705*x[8]*x[13]*x[14]-0.0484*x[9]*x[11]*x[13]-0.3384*x[9]*x[13]*x[14]+0.9622*x[10]*x[13]*x[14]-0.9382*x[11]*x[12]*x[14]+0.8413*x[1]+0.2291*x[1]*x[2]*x[3]*x[4]+0.4448*x[1]*x[2]*x[5]*x[9]-0.6376*x[1]*x[2]*x[6]*x[12]+0.2857*x[1]*x[2]*x[6]*x[14]-0.7786*x[1]*x[2]*x[10]*x[11]-0.1594*x[1]*x[2]*x[12]*x[14]+0.9396*x[1]*x[2]*x[13]*x[14]+0.5049*x[1]*x[2]*x[14]*x[15]-0.0965*x[1]*x[3]*x[4]*x[5]+0.5168*x[1]*x[3]*x[5]*x[12]+0.2191*x[1]*x[3]*x[7]*x[9]-0.9705*x[1]*x[3]*x[8]*x[9]+0.466*x[1]*x[4]*x[9]*x[12]+0.3739*x[1]*x[4]*x[10]*x[11]-0.0663*x[1]*x[4]*x[10]*x[13]-0.1254*x[1]*x[4]*x[11]*x[13]-0.4862*x[1]*x[4]*x[12]*x[13]-0.2845*x[1]*x[4]*x[14]*x[15]-0.8645*x[1]*x[5]*x[8]*x[11]-0.8762*x[1]*x[5]*x[9]*x[10]-0.0324*x[1]*x[5]*x[9]*x[11]+0.639*x[1]*x[5]*x[9]*x[12]-0.2169*x[1]*x[5]*x[11]*x[13]-0.2721*x[1]*x[5]*x[13]*x[15]+0.9208*x[1]*x[6]*x[7]*x[14]+0.6122*x[1]*x[6]*x[10]*x[12]+0.2143*x[1]*x[7]*x[10]*x[14]+0.3682*x[1]*x[8]*x[9]*x[11]-0.6611*x[1]*x[8]*x[11]*x[14]-0.0166*x[1]*x[9]*x[13]*x[15]-0.8152*x[1]*x[10]*x[11]*x[15]+0.8885*x[1]*x[10]*x[12]*x[15]-0.7341*x[1]*x[11]*x[12]*x[15]-0.882*x[1]*x[11]*x[13]*x[14]+0.534*x[1]*x[12]*x[13]*x[15]+0.6398*x[2]*x[3]*x[4]*x[5]-0.7032*x[2]*x[3]*x[5]*x[8]+0.335*x[2]*x[3]*x[6]*x[12]-0.174*x[2]*x[3]*x[6]*x[13]-0.3424*x[2]*x[3]*x[6]*x[14]+0.1369*x[2]*x[3]*x[7]*x[10]+0.9552*x[2]*x[3]*x[9]*x[10]+0.1954*x[2]*x[3]*x[9]*x[11]+0.0589*x[2]*x[3]*x[11]*x[13]+0.9497*x[2]*x[3]*x[11]*x[14]+0.3131*x[2]*x[3]*x[13]*x[15]+0.8003*x[2]*x[4]*x[5]*x[7]+0.6959*x[2]*x[4]*x[5]*x[14]+0.4948*x[2]*x[4]*x[6]*x[12]-0.1336*x[2]*x[4]*x[6]*x[13]+0.8437*x[2]*x[4]*x[9]*x[11]-0.5049*x[2]*x[4]*x[11]*x[12]-0.1845*x[2]*x[4]*x[11]*x[15]+0.7155*x[2]*x[4]*x[13]*x[14]+0.7722*x[2]*x[4]*x[14]*x[15]-0.5129*x[2]*x[5]*x[6]*x[12]-0.4491*x[2]*x[5]*x[7]*x[12]-0.7302*x[2]*x[5]*x[7]*x[14]-0.3757*x[2]*x[5]*x[10]*x[14]+0.2122*x[2]*x[5]*x[13]*x[15]+0.5165*x[2]*x[6]*x[7]*x[11]+0.8572*x[2]*x[6]*x[8]*x[14]+0.4919*x[2]*x[6]*x[10]*x[13]-0.2452*x[2]*x[6]*x[12]*x[15]+0.2196*x[2]*x[7]*x[8]*x[12]+0.8319*x[2]*x[7]*x[9]*x[10]-0.528*x[2]*x[7]*x[9]*x[14]+0.7719*x[2]*x[7]*x[11]*x[14]+0.2474*x[2]*x[7]*x[12]*x[14]-0.4167*x[2]*x[8]*x[9]*x[13]-0.0566*x[2]*x[8]*x[9]*x[15]+0.3951*x[2]*x[9]*x[10]*x[11]+0.4588*x[2]*x[9]*x[11]*x[15]+0.9145*x[2]*x[9]*x[13]*x[14]+0.5885*x[2]*x[10]*x[11]*x[12]-0.7233*x[2]*x[10]*x[11]*x[13]+0.7815*x[2]*x[10]*x[14]*x[15]+0.3364*x[2]*x[12]*x[13]*x[14]-0.6209*x[2]*x[12]*x[13]*x[15]-0.9155*x[3]*x[4]*x[5]*x[12]-0.8694*x[3]*x[4]*x[5]*x[13]+0.8787*x[3]*x[4]*x[6]*x[10]+0.2695*x[3]*x[4]*x[7]*x[11]-0.6278*x[3]*x[4]*x[7]*x[13]-0.2825*x[3]*x[4]*x[8]*x[11]+0.6209*x[3]*x[4]*x[8]*x[14]+0.7363*x[3]*x[4]*x[9]*x[10]+0.4228*x[3]*x[4]*x[11]*x[12]+0.2654*x[3]*x[4]*x[12]*x[14]+0.883*x[3]*x[5]*x[6]*x[13]-0.9433*x[3]*x[5]*x[7]*x[13]+0.2325*x[3]*x[5]*x[7]*x[15]-0.8087*x[3]*x[5]*x[8]*x[13]+0.0589*x[3]*x[5]*x[9]*x[11]+0.7246*x[3]*x[5]*x[9]*x[12]+0.0174*x[3]*x[5]*x[9]*x[14]-0.234*x[3]*x[5]*x[11]*x[15]+0.4722*x[3]*x[5]*x[12]*x[15]+0.5438*x[3]*x[6]*x[7]*x[8]-0.7713*x[3]*x[6]*x[7]*x[12]+0.5266*x[3]*x[6]*x[7]*x[15]-0.9529*x[3]*x[6]*x[8]*x[12]-0.0421*x[3]*x[6]*x[8]*x[13]-0.9369*x[3]*x[6]*x[9]*x[14]-0.4871*x[3]*x[7]*x[9]*x[12]+0.9447*x[3]*x[7]*x[9]*x[13]-0.4023*x[3]*x[7]*x[10]*x[12]+0.6028*x[3]*x[8]*x[9]*x[14]-0.8763*x[3]*x[8]*x[12]*x[15]-0.014*x[3]*x[8]*x[13]*x[14]+0.2885*x[3]*x[9]*x[11]*x[12]+0.3646*x[3]*x[9]*x[12]*x[13]-0.3307*x[3]*x[10]*x[12]*x[14]-0.1686*x[3]*x[11]*x[12]*x[13]-0.7503*x[3]*x[11]*x[13]*x[14]+0.408*x[4]*x[5]*x[6]*x[13]-0.9982*x[4]*x[5]*x[7]*x[10]-0.9139*x[4]*x[5]*x[7]*x[12]+0.4243*x[4]*x[5]*x[7]*x[13]+0.5857*x[4]*x[5]*x[8]*x[12]-0.7376*x[4]*x[5]*x[9]*x[11]-0.1176*x[4]*x[5]*x[9]*x[13]+0.4653*x[4]*x[5]*x[10]*x[11]-0.1466*x[4]*x[5]*x[12]*x[14]-0.8338*x[4]*x[5]*x[13]*x[14]+0.0707*x[4]*x[5]*x[13]*x[15]+0.7348*x[4]*x[6]*x[8]*x[12]+0.4288*x[4]*x[6]*x[8]*x[13]+0.3173*x[4]*x[6]*x[8]*x[14]-0.6365*x[4]*x[6]*x[10]*x[14]+0.843*x[4]*x[6]*x[11]*x[13]-0.1176*x[4]*x[6]*x[12]*x[13]-0.3377*x[4]*x[6]*x[13]*x[14]-0.984*x[4]*x[7]*x[8]*x[11]+0.0592*x[4]*x[7]*x[10]*x[12]+0.3974*x[4]*x[7]*x[11]*x[14]-0.8008*x[4]*x[8]*x[9]*x[13]+0.0504*x[4]*x[8]*x[9]*x[14]-0.6724*x[4]*x[8]*x[10]*x[11]+0.8656*x[4]*x[8]*x[10]*x[15]-0.3755*x[4]*x[8]*x[11]*x[15]-0.2586*x[4]*x[9]*x[10]*x[11]-0.9778*x[4]*x[9]*x[10]*x[13]+0.6083*x[4]*x[9]*x[10]*x[14]-0.482*x[4]*x[9]*x[11]*x[12]-0.4132*x[4]*x[9]*x[12]*x[13]+0.2232*x[4]*x[9]*x[12]*x[14]-0.334*x[4]*x[12]*x[13]*x[14]+0.3417*x[4]*x[12]*x[13]*x[15]-0.121*x[5]*x[6]*x[7]*x[13]+0.1118*x[5]*x[6]*x[7]*x[14]+0.5812*x[5]*x[6]*x[8]*x[10]-0.2648*x[5]*x[6]*x[8]*x[11]+0.8347*x[5]*x[6]*x[8]*x[13]-0.6274*x[5]*x[6]*x[9]*x[14]+0.2225*x[5]*x[6]*x[10]*x[15]-0.0054*x[5]*x[6]*x[11]*x[13]+0.8914*x[5]*x[6]*x[13]*x[14]+0.3461*x[5]*x[7]*x[8]*x[10]+0.7899*x[5]*x[7]*x[8]*x[12]-0.1395*x[5]*x[7]*x[8]*x[14]-0.8429*x[5]*x[7]*x[10]*x[14]+0.785*x[5]*x[7]*x[13]*x[14]-0.3721*x[5]*x[8]*x[10]*x[11]-0.4102*x[5]*x[8]*x[12]*x[14]+0.8114*x[5]*x[8]*x[13]*x[14]-0.6354*x[5]*x[9]*x[10]*x[11]-0.2627*x[5]*x[9]*x[11]*x[14]+0.8928*x[5]*x[10]*x[11]*x[14]-0.469*x[6]*x[7]*x[8]*x[10]-0.5101*x[6]*x[7]*x[9]*x[13]+0.9005*x[6]*x[7]*x[9]*x[14]+0.8466*x[6]*x[7]*x[10]*x[14]+0.3721*x[6]*x[7]*x[11]*x[12]-0.5238*x[6]*x[8]*x[9]*x[12]-0.4882*x[6]*x[8]*x[9]*x[14]-0.5373*x[6]*x[8]*x[10]*x[12]-0.9561*x[6]*x[8]*x[10]*x[15]+0.533*x[6]*x[9]*x[10]*x[12]+0.8912*x[6]*x[9]*x[10]*x[13]+0.5127*x[6]*x[9]*x[10]*x[14]-0.2267*x[6]*x[9]*x[12]*x[13]+0.8395*x[6]*x[10]*x[11]*x[13]+0.4981*x[6]*x[10]*x[13]*x[14]-0.943*x[7]*x[8]*x[9]*x[12]+0.0272*x[7]*x[8]*x[10]*x[13]-0.9972*x[7]*x[8]*x[11]*x[12]+0.1779*x[7]*x[8]*x[12]*x[15]-0.2785*x[7]*x[8]*x[13]*x[14]-0.0125*x[7]*x[9]*x[10]*x[13]+0.9436*x[7]*x[10]*x[11]*x[12]-0.2944*x[7]*x[10]*x[12]*x[13]+0.3312*x[7]*x[11]*x[12]*x[15]-0.1622*x[7]*x[12]*x[13]*x[15]+0.273*x[8]*x[9]*x[11]*x[13]+0.142*x[8]*x[9]*x[12]*x[13]+0.7476*x[8]*x[9]*x[12]*x[14]+0.3063*x[8]*x[9]*x[13]*x[14]-0.4351*x[8]*x[10]*x[11]*x[13]-0.1677*x[8]*x[11]*x[13]*x[15]-0.2267*x[9]*x[10]*x[11]*x[12]-0.509*x[9]*x[11]*x[12]*x[14]-0.2109*x[9]*x[12]*x[14]*x[15] <= 41.75)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script.