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
@NLconstraint(m, e1, -(0.1669*x[1]*x[3]-1.3423*x[1]*x[2]-1.2563*x[1]*x[4]-0.9723*x[1]*x[16]-0.6163*x[1]*x[19]-1.6124*x[1]*x[20]+0.9162*x[1]*x[22]-1.5053*x[1]*x[23]-1.2237*x[1]*x[24]-1.6479*x[1]*x[25]-0.2668*x[1]*x[27]+0.6881*x[1]*x[28]-1.4283*x[1]*x[29]+0.8115*x[2]*x[2]+0.9774*x[2]*x[4]+1.0702*x[2]*x[5]-0.239*x[2]*x[6]+0.9385*x[2]*x[7]+1.3386*x[2]*x[8]+0.3357*x[2]*x[11]+0.8412*x[2]*x[12]-1.2281*x[2]*x[13]+0.9888*x[2]*x[15]+0.6401*x[2]*x[16]-1.2916*x[2]*x[17]+1.8947*x[2]*x[19]-0.0107*x[2]*x[20]+0.4784*x[2]*x[22]-1.9348*x[2]*x[23]-1.256*x[2]*x[26]-0.4388*x[2]*x[29]+1.5735*x[3]*x[3]+1.7041*x[3]*x[4]+1.312*x[3]*x[5]-0.5071*x[3]*x[6]+0.1288*x[3]*x[9]-1.9252*x[3]*x[10]-0.1565*x[3]*x[11]+0.2041*x[3]*x[12]-0.6481*x[3]*x[13]-1.3282*x[3]*x[16]+1.3163*x[3]*x[17]-1.7987*x[3]*x[19]+1.4479*x[3]*x[25]+1.9689*x[3]*x[26]+1.0763*x[4]*x[5]+0.6602*x[4]*x[8]+0.2285*x[4]*x[9]+0.6045*x[4]*x[12]+0.6427*x[4]*x[13]-1.4929*x[4]*x[16]-0.0969*x[4]*x[18]-0.2172*x[4]*x[19]+1.7183*x[4]*x[20]+1.9656*x[4]*x[21]-0.7339*x[4]*x[22]+0.6208*x[4]*x[25]+1.9364*x[4]*x[26]-0.5085*x[4]*x[28]-1.1549*x[4]*x[29]+0.1495*x[4]*x[30]+1.0184*x[5]*x[5]-1.0097*x[5]*x[7]-1.9263*x[5]*x[8]+1.1131*x[5]*x[12]-1.4706*x[5]*x[13]+1.543*x[5]*x[15]+0.9031*x[5]*x[20]-0.0846*x[5]*x[21]+1.4332*x[5]*x[23]+0.0554*x[5]*x[24]+0.2067*x[5]*x[28]-1.4916*x[5]*x[29]-1.6386*x[6]*x[9]-1.7251*x[6]*x[10]-1.1548*x[6]*x[12]-0.0358*x[6]*x[14]+1.5604*x[6]*x[15]+1.7567*x[6]*x[16]+1.6659*x[6]*x[17]-1.9706*x[6]*x[21]-0.5165*x[6]*x[22]+0.3999*x[6]*x[25]-1.0866*x[6]*x[27]+1.6759*x[6]*x[28]+1.1228*x[7]*x[7]-0.6794*x[7]*x[8]+1.2157*x[7]*x[10]+1.1036*x[7]*x[14]-1.5837*x[7]*x[17]+0.8092*x[7]*x[21]-0.744*x[7]*x[23]-0.0225*x[7]*x[24]-0.5478*x[7]*x[25]+0.364*x[7]*x[27]-0.3513*x[7]*x[29]-0.2287*x[7]*x[30]-1.7683*x[8]*x[11]+1.1355*x[8]*x[13]+1.1382*x[8]*x[14]+1.1281*x[8]*x[17]-0.7589*x[8]*x[19]+1.1133*x[8]*x[21]-1.4471*x[8]*x[22]+0.5168*x[8]*x[23]-1.3092*x[8]*x[25]+0.7453*x[8]*x[26]+0.481*x[8]*x[28]-1.8944*x[9]*x[9]-1.6149*x[9]*x[11]+1.3016*x[9]*x[12]+1.7269*x[9]*x[13]+1.5477*x[9]*x[14]-1.5746*x[9]*x[15]-1.2962*x[9]*x[16]+0.4046*x[9]*x[18]+0.3236*x[9]*x[19]-1.6062*x[9]*x[22]-1.688*x[9]*x[23]+1.578*x[9]*x[24]+0.3125*x[9]*x[27]+0.0418*x[9]*x[28]-0.7964*x[10]*x[10]-1.8629*x[10]*x[12]-1.6591*x[10]*x[14]-0.3074*x[10]*x[15]+1.7751*x[10]*x[19]+1.9133*x[10]*x[21]-0.4271*x[10]*x[23]-1.3381*x[10]*x[24]-0.8011*x[10]*x[25]+0.4086*x[10]*x[26]-1.8651*x[10]*x[28]+1.7635*x[10]*x[29]-0.0094*x[11]*x[11]+1.9851*x[11]*x[12]-1.0442*x[11]*x[13]-0.8612*x[11]*x[14]-1.8209*x[11]*x[16]-0.4008*x[11]*x[25]-0.8088*x[11]*x[27]+1.6024*x[11]*x[28]-0.6129*x[12]*x[12]-1.3662*x[12]*x[13]-0.9735*x[12]*x[14]+1.9501*x[12]*x[15]-0.9877*x[12]*x[17]+0.2499*x[12]*x[19]+0.6541*x[12]*x[20]-0.2594*x[12]*x[21]+1.1196*x[12]*x[23]+1.8626*x[12]*x[25]-1.9685*x[12]*x[27]-0.8708*x[13]*x[15]-1.6048*x[13]*x[16]-1.2024*x[13]*x[17]-1.2301*x[13]*x[19]-0.9502*x[13]*x[23]-0.7984*x[13]*x[25]-0.4954*x[13]*x[27]+0.5513*x[13]*x[28]-1.9016*x[13]*x[29]+1.8979*x[13]*x[30]-1.7428*x[14]*x[15]+1.1939*x[14]*x[17]+0.0121*x[14]*x[18]-1.8305*x[14]*x[19]+0.2749*x[14]*x[20]+0.5119*x[14]*x[21]+1.9335*x[14]*x[23]+1.3202*x[14]*x[24]+0.7873*x[14]*x[28]+0.8503*x[15]*x[15]+0.5658*x[15]*x[17]+1.0177*x[15]*x[20]-0.3274*x[15]*x[21]-0.1809*x[15]*x[22]+0.7447*x[15]*x[26]-1.039*x[15]*x[27]+1.2644*x[16]*x[16]-1.2102*x[16]*x[17]+0.8225*x[16]*x[20]-1.8025*x[16]*x[23]-1.9232*x[16]*x[25]-0.2848*x[16]*x[29]+1.781*x[17]*x[21]+1.3278*x[17]*x[22]+0.1982*x[17]*x[24]+0.6639*x[17]*x[27]-0.345*x[17]*x[29]-0.0502*x[17]*x[30]-0.7879*x[18]*x[18]+0.1329*x[18]*x[20]+1.1236*x[18]*x[21]-1.6779*x[18]*x[23]+0.9415*x[18]*x[25]-1.1569*x[18]*x[26]+0.09*x[18]*x[27]-0.982*x[18]*x[29]-0.51*x[18]*x[30]-1.1315*x[19]*x[20]-1.4186*x[19]*x[22]-0.9249*x[19]*x[24]+0.111*x[19]*x[27]+1.4451*x[19]*x[28]-1.871*x[20]*x[21]-1.3535*x[20]*x[26]-0.8108*x[20]*x[28]-1.3445*x[20]*x[29]+1.9259*x[21]*x[22]+1.5699*x[21]*x[23]+0.2759*x[21]*x[25]+0.1699*x[21]*x[26]+1.9019*x[21]*x[27]+0.0268*x[21]*x[29]+0.5591*x[22]*x[22]+0.5538*x[22]*x[24]+0.2523*x[22]*x[29]+1.4511*x[22]*x[30]+0.8429*x[23]*x[24]-1.6622*x[23]*x[25]-0.2925*x[23]*x[27]+1.0258*x[23]*x[29]+0.3998*x[24]*x[25]-0.1266*x[24]*x[26]+1.7787*x[24]*x[30]-0.414*x[26]*x[26]-1.3494*x[26]*x[27]+1.347*x[26]*x[29]-1.7108*x[27]*x[29]-1.0704*x[27]*x[30]-1.8917*x[28]*x[29]-0.5633*x[1]-0.0991*x[2]-0.0021*x[3]-0.2952*x[4]-0.5508*x[5]-0.1529*x[6]+0.0526*x[7]+0.9086*x[8]+0.5866*x[9]-0.8777*x[10]+0.0181*x[11]+0.2463*x[12]+0.1697*x[13]-0.9148*x[14]+0.4976*x[15]-0.7257*x[16]-0.5447*x[17]-0.3333*x[18]+0.7602*x[19]-0.6432*x[20]+0.4335*x[21]+0.6657*x[22]-0.3522*x[23]-0.3207*x[24]-0.9375*x[25]-0.2883*x[26]-0.313*x[27]-0.8875*x[28]-0.4723*x[29]+0.6583*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script.