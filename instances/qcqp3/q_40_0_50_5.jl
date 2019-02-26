using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
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
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-1.7409*x[1]*x[2]-1.2616*x[1]*x[9]-1.7679*x[1]*x[11]+0.326*x[1]*x[15]+0.5467*x[1]*x[16]+0.9884*x[1]*x[17]-1.4644*x[1]*x[18]+1.3321*x[1]*x[19]+0.7519*x[1]*x[22]-1.8626*x[1]*x[23]-0.2287*x[1]*x[25]+1.3245*x[1]*x[27]-1.1882*x[1]*x[31]-1.8477*x[1]*x[34]-0.7333*x[1]*x[35]+0.1554*x[1]*x[36]+0.6081*x[1]*x[39]+0.8393*x[2]*x[3]+0.698*x[2]*x[6]-1.5767*x[2]*x[7]-1.9698*x[2]*x[9]+1.642*x[2]*x[11]-0.3653*x[2]*x[13]-1.9019*x[2]*x[15]+1.9588*x[2]*x[19]-1.4504*x[2]*x[20]+0.8018*x[2]*x[21]-0.6935*x[2]*x[25]-0.449*x[2]*x[26]+0.7211*x[2]*x[28]-1.4502*x[2]*x[29]+1.4985*x[2]*x[32]+1.0017*x[2]*x[33]+0.168*x[2]*x[37]+0.4447*x[2]*x[38]+0.1701*x[2]*x[40]-1.0858*x[3]*x[7]+0.4528*x[3]*x[8]+1.3034*x[3]*x[12]+1.2659*x[3]*x[13]+1.4778*x[3]*x[14]-1.6962*x[3]*x[18]+0.0339*x[3]*x[19]-1.2657*x[3]*x[21]+0.7385*x[3]*x[22]+0.1506*x[3]*x[23]+0.3688*x[3]*x[24]+0.3436*x[3]*x[28]-0.6643*x[3]*x[29]+0.1923*x[3]*x[30]-1.4958*x[3]*x[31]-0.258*x[3]*x[32]+0.4477*x[3]*x[33]-1.9236*x[3]*x[34]-0.2576*x[3]*x[37]-1.6732*x[3]*x[38]+1.6244*x[4]*x[5]+1.309*x[4]*x[7]-0.6971*x[4]*x[9]+0.2552*x[4]*x[17]+0.0371*x[4]*x[18]-1.3273*x[4]*x[19]-0.2809*x[4]*x[21]-1.888*x[4]*x[23]+0.7693*x[4]*x[24]-1.0531*x[4]*x[25]-1.1771*x[4]*x[32]+0.0431*x[4]*x[36]-0.967*x[4]*x[38]-1.9246*x[5]*x[6]+1.2413*x[5]*x[7]+0.4727*x[5]*x[8]-1.4821*x[5]*x[13]-0.1371*x[5]*x[14]+0.753*x[5]*x[15]+0.0276*x[5]*x[16]+1.7654*x[5]*x[17]-0.1113*x[5]*x[20]+0.0612*x[5]*x[23]+1.9109*x[5]*x[24]-0.9264*x[5]*x[25]-0.6808*x[5]*x[28]-1.5539*x[5]*x[29]-0.8467*x[5]*x[32]+0.5803*x[5]*x[34]-0.5513*x[6]*x[8]-0.114*x[6]*x[9]+0.4248*x[6]*x[10]+1.3885*x[6]*x[11]-0.9926*x[6]*x[13]+0.1472*x[6]*x[19]+1.8429*x[6]*x[24]+0.327*x[6]*x[26]-1.4082*x[6]*x[27]-0.929*x[6]*x[29]-0.1079*x[6]*x[30]-1.7323*x[6]*x[31]+1.0024*x[6]*x[32]+1.2203*x[6]*x[33]-1.2902*x[6]*x[36]+1.4852*x[6]*x[39]-0.0104*x[7]*x[8]-1.4929*x[7]*x[9]+1.1184*x[7]*x[12]-0.0837*x[7]*x[15]+0.118*x[7]*x[17]-1.6759*x[7]*x[18]-0.4536*x[7]*x[19]-0.9957*x[7]*x[20]-1.0872*x[7]*x[21]+0.0757*x[7]*x[22]+1.1813*x[7]*x[24]-1.3981*x[7]*x[25]-0.5833*x[7]*x[26]-0.1012*x[7]*x[27]+1.1459*x[7]*x[28]-1.1597*x[7]*x[30]-0.8181*x[7]*x[32]-0.3401*x[7]*x[33]-0.2714*x[7]*x[34]-1.4488*x[7]*x[35]-0.6681*x[7]*x[38]+1.6262*x[8]*x[8]-0.8207*x[8]*x[9]+1.2882*x[8]*x[10]-0.795*x[8]*x[11]-1.2134*x[8]*x[12]-1.3897*x[8]*x[14]+0.2119*x[8]*x[17]-0.2862*x[8]*x[18]-0.2809*x[8]*x[20]+0.3429*x[8]*x[22]-0.1098*x[8]*x[23]-1.6182*x[8]*x[27]-1.606*x[8]*x[29]-1.5376*x[8]*x[31]-1.2461*x[8]*x[32]+0.5642*x[8]*x[34]+0.3464*x[8]*x[36]+1.1446*x[8]*x[37]-1.8936*x[9]*x[9]-0.57*x[9]*x[10]+0.6057*x[9]*x[11]-0.9069*x[9]*x[12]+0.8886*x[9]*x[13]+0.0351*x[9]*x[16]+0.9757*x[9]*x[17]-0.4007*x[9]*x[18]-1.0456*x[9]*x[19]-0.1128*x[9]*x[21]-1.6933*x[9]*x[24]+1.4214*x[9]*x[25]+1.5366*x[9]*x[26]+1.5721*x[9]*x[27]+0.6767*x[9]*x[28]+0.2448*x[9]*x[29]-0.8856*x[9]*x[31]+0.8477*x[9]*x[32]+0.6651*x[9]*x[33]+1.8519*x[9]*x[35]+1.8687*x[9]*x[36]+1.1627*x[9]*x[37]+1.4877*x[9]*x[40]-1.3189*x[10]*x[11]+1.5534*x[10]*x[13]-1.9467*x[10]*x[16]-1.5533*x[10]*x[17]+0.4398*x[10]*x[18]+1.342*x[10]*x[23]-1.3219*x[10]*x[25]-0.4603*x[10]*x[26]-0.1381*x[10]*x[27]+0.9522*x[10]*x[31]+0.8342*x[10]*x[33]-0.8773*x[10]*x[35]-0.9284*x[10]*x[39]+1.3577*x[10]*x[40]-0.7977*x[11]*x[12]-0.3892*x[11]*x[14]+1.7113*x[11]*x[16]+1.7355*x[11]*x[20]-1.3955*x[11]*x[21]-1.0991*x[11]*x[22]-1.563*x[11]*x[23]+1.7703*x[11]*x[28]+1.1535*x[11]*x[29]-0.1353*x[11]*x[30]-1.1831*x[11]*x[32]+0.6392*x[11]*x[36]-0.0561*x[12]*x[12]-0.0147*x[12]*x[13]-0.5047*x[12]*x[14]-1.3298*x[12]*x[16]-1.4789*x[12]*x[18]-1.9545*x[12]*x[20]-0.809*x[12]*x[23]-0.9117*x[12]*x[27]-0.6755*x[12]*x[29]-1.2473*x[12]*x[30]-0.0176*x[12]*x[31]+0.6312*x[12]*x[32]+0.0734*x[12]*x[34]+1.5935*x[12]*x[37]-0.1467*x[12]*x[38]-1.5443*x[12]*x[39]-1.204*x[12]*x[40]-0.6083*x[13]*x[13]-0.3846*x[13]*x[14]-1.4486*x[13]*x[15]+0.5339*x[13]*x[17]-0.0248*x[13]*x[19]+0.034*x[13]*x[22]+1.5377*x[13]*x[23]-1.9577*x[13]*x[24]-1.246*x[13]*x[26]+0.6862*x[13]*x[28]-0.6059*x[13]*x[30]+0.0528*x[13]*x[32]+0.9142*x[13]*x[35]-0.1003*x[13]*x[36]+1.5264*x[13]*x[39]-1.5051*x[14]*x[14]-0.3708*x[14]*x[19]-0.9543*x[14]*x[21]+1.5737*x[14]*x[23]-0.8915*x[14]*x[25]+1.7208*x[14]*x[27]-1.2866*x[14]*x[28]+1.9744*x[14]*x[29]+1.0902*x[14]*x[31]-0.3685*x[14]*x[32]+0.315*x[14]*x[35]-1.6187*x[14]*x[36]+0.7699*x[14]*x[37]+0.6257*x[15]*x[17]+0.6247*x[15]*x[18]-1.9604*x[15]*x[19]-0.3161*x[15]*x[20]+1.9851*x[15]*x[22]-0.4229*x[15]*x[23]+0.6242*x[15]*x[27]-0.5684*x[15]*x[31]-1.9704*x[15]*x[32]+0.4923*x[15]*x[33]+0.0256*x[15]*x[36]+0.5363*x[15]*x[37]+1.0525*x[15]*x[38]+0.4642*x[15]*x[39]-0.3693*x[16]*x[19]+1.6156*x[16]*x[20]+0.8711*x[16]*x[26]-0.8924*x[16]*x[28]+0.9238*x[16]*x[29]+0.9263*x[16]*x[30]-1.4562*x[16]*x[33]+0.6408*x[16]*x[34]-1.3941*x[16]*x[35]-0.9036*x[16]*x[36]+0.8723*x[16]*x[38]-0.3105*x[16]*x[39]-1.1983*x[17]*x[18]+1.4685*x[17]*x[21]-1.2155*x[17]*x[23]-1.3493*x[17]*x[24]-1.6116*x[17]*x[26]+0.1229*x[17]*x[27]-1.0144*x[17]*x[28]-0.5372*x[17]*x[30]+0.0959*x[17]*x[34]-0.5136*x[17]*x[35]-0.7433*x[17]*x[38]-1.853*x[17]*x[40]-0.4638*x[18]*x[18]-0.6644*x[18]*x[21]-0.0982*x[18]*x[22]-0.4196*x[18]*x[23]+0.3889*x[18]*x[24]+0.9631*x[18]*x[25]-1.4923*x[18]*x[26]-1.5614*x[18]*x[28]-0.2176*x[18]*x[31]-0.8163*x[18]*x[32]+0.9579*x[18]*x[33]-0.4876*x[18]*x[35]-1.2302*x[18]*x[38]-1.5096*x[18]*x[40]-0.8167*x[19]*x[20]-0.6412*x[19]*x[21]-1.827*x[19]*x[22]-0.9888*x[19]*x[24]+1.6075*x[19]*x[26]+0.4674*x[19]*x[27]+1.6563*x[19]*x[28]+1.614*x[19]*x[29]-0.5682*x[19]*x[31]-1.242*x[19]*x[32]+1.3305*x[19]*x[33]+1.3752*x[19]*x[34]+0.4099*x[19]*x[35]+0.9938*x[19]*x[36]+0.7388*x[19]*x[40]-0.2973*x[20]*x[23]-1.7319*x[20]*x[25]-0.6854*x[20]*x[30]+0.3846*x[20]*x[31]+1.4288*x[20]*x[33]-1.0694*x[20]*x[34]+0.1234*x[20]*x[35]+0.5524*x[20]*x[36]+1.085*x[20]*x[37]-0.2222*x[20]*x[38]+1.9494*x[20]*x[39]-0.7267*x[21]*x[21]-1.2259*x[21]*x[26]+1.6408*x[21]*x[27]+0.7834*x[21]*x[29]+1.6814*x[21]*x[30]-1.2983*x[21]*x[31]-1.2529*x[21]*x[32]+0.1603*x[21]*x[33]+0.9039*x[21]*x[35]-1.1297*x[21]*x[36]-0.4971*x[21]*x[37]+0.1113*x[21]*x[39]-1.995*x[22]*x[24]+0.8867*x[22]*x[25]-1.8068*x[22]*x[27]-1.378*x[22]*x[28]-1.7378*x[22]*x[29]+1.8845*x[22]*x[32]+1.7625*x[22]*x[35]+0.593*x[22]*x[39]+1.3838*x[22]*x[40]-1.2623*x[23]*x[26]+0.4962*x[23]*x[27]-1.8067*x[23]*x[29]-0.5026*x[23]*x[31]-1.8351*x[23]*x[32]-0.0713*x[23]*x[34]+0.4135*x[23]*x[36]+1.1338*x[23]*x[37]+0.5423*x[24]*x[24]-1.8585*x[24]*x[26]-0.7627*x[24]*x[27]-1.1533*x[24]*x[30]-0.5696*x[24]*x[31]+1.2872*x[24]*x[32]-0.0689*x[24]*x[33]-0.866*x[24]*x[35]-0.5424*x[24]*x[36]-0.0713*x[24]*x[37]-0.5488*x[24]*x[38]-1.2626*x[24]*x[40]+1.0585*x[25]*x[25]-1.8375*x[25]*x[26]-1.7375*x[25]*x[27]-0.7223*x[25]*x[28]+1.7499*x[25]*x[29]+0.5252*x[25]*x[31]-1.1065*x[25]*x[32]+1.8525*x[25]*x[33]-0.6034*x[26]*x[29]-1.8589*x[26]*x[34]+1.5443*x[26]*x[35]+0.5982*x[26]*x[37]+0.0753*x[27]*x[27]-1.903*x[27]*x[28]-1.5818*x[27]*x[29]-0.589*x[27]*x[30]+0.2121*x[27]*x[33]-0.6077*x[27]*x[35]+1.0129*x[27]*x[36]+0.6672*x[27]*x[38]+1.8263*x[27]*x[39]-0.0213*x[28]*x[31]-0.3119*x[28]*x[32]+0.6505*x[28]*x[33]+0.6041*x[28]*x[34]+0.0087*x[28]*x[36]-1.7052*x[28]*x[37]+0.3316*x[28]*x[39]-0.8651*x[29]*x[31]-1.3237*x[29]*x[32]+0.0444*x[29]*x[35]+1.8534*x[29]*x[36]-1.5585*x[29]*x[38]+0.6964*x[29]*x[39]-0.4719*x[30]*x[34]+0.0573*x[30]*x[35]+1.8464*x[30]*x[37]+1.667*x[31]*x[31]+0.861*x[31]*x[32]-1.706*x[31]*x[37]-1.7798*x[31]*x[38]+1.4364*x[31]*x[39]+0.4423*x[32]*x[35]+1.9674*x[32]*x[37]+1.5525*x[32]*x[40]-1.67*x[33]*x[35]-0.0986*x[33]*x[36]+0.5787*x[33]*x[39]+0.9918*x[33]*x[40]-0.9208*x[34]*x[34]+1.124*x[34]*x[35]+0.9713*x[34]*x[37]-0.184*x[34]*x[38]+0.9759*x[35]*x[38]+0.5614*x[36]*x[39]+0.0432*x[38]*x[39]-1.8651*x[39]*x[39]+0.8912*x[1]+0.7631*x[2]+0.7902*x[3]-0.6818*x[4]+0.276*x[5]-0.7009*x[6]+0.433*x[7]-0.1963*x[8]-0.895*x[9]+0.4326*x[10]-0.5557*x[11]-0.9291*x[12]+0.1746*x[13]-0.5153*x[14]-0.1046*x[15]-0.4605*x[16]+0.2194*x[17]+0.1701*x[18]-0.5308*x[19]+0.6269*x[20]-0.0502*x[21]-0.8864*x[22]-0.2146*x[23]-0.9408*x[24]+0.7589*x[25]+0.968*x[26]-0.7075*x[27]+0.625*x[28]-0.4637*x[29]+0.118*x[30]+0.7119*x[31]+0.8647*x[32]-0.0852*x[33]+0.1836*x[34]-0.0694*x[35]-0.8141*x[36]+0.2591*x[37]-0.0808*x[38]-0.0045*x[39]+0.4826*x[40])+x[41] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[41])

m = m 		 # model get returned when including this script.