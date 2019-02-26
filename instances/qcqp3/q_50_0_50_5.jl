using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
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
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.9112*x[1]*x[2]-0.063*x[1]*x[5]+1.0423*x[1]*x[7]+0.6204*x[1]*x[12]+0.1339*x[1]*x[14]+1.3765*x[1]*x[16]-0.4724*x[1]*x[20]-1.0635*x[1]*x[22]+0.6277*x[1]*x[24]-0.6494*x[1]*x[26]+0.2044*x[1]*x[30]+0.6005*x[1]*x[31]-0.6389*x[1]*x[32]-1.5303*x[1]*x[35]-0.8387*x[1]*x[36]+0.7239*x[1]*x[42]-1.3485*x[1]*x[46]-0.5311*x[1]*x[48]-1.291*x[2]*x[2]-0.9909*x[2]*x[3]-0.0941*x[2]*x[4]+1.8604*x[2]*x[8]-0.5444*x[2]*x[9]+1.6084*x[2]*x[10]-0.2842*x[2]*x[14]+0.2681*x[2]*x[17]+0.336*x[2]*x[18]+0.8617*x[2]*x[19]-1.1694*x[2]*x[20]+0.2317*x[2]*x[22]-0.7989*x[2]*x[28]+1.9864*x[2]*x[29]-1.7692*x[2]*x[32]+1.1891*x[2]*x[33]-1.4091*x[2]*x[34]-1.8672*x[2]*x[35]+0.8632*x[2]*x[36]-0.9291*x[2]*x[38]+1.0672*x[2]*x[40]+1.0912*x[2]*x[44]+1.4735*x[2]*x[46]-0.6966*x[2]*x[47]-0.4955*x[2]*x[48]-1.6654*x[3]*x[8]+0.1947*x[3]*x[10]+1.2632*x[3]*x[11]-1.7245*x[3]*x[12]-1.7679*x[3]*x[13]+0.1128*x[3]*x[14]-1.1354*x[3]*x[17]+0.2595*x[3]*x[18]-0.2973*x[3]*x[20]+0.9881*x[3]*x[21]+1.3482*x[3]*x[27]+1.1695*x[3]*x[31]-1.8175*x[3]*x[32]-1.8444*x[3]*x[33]+1.7778*x[3]*x[34]-0.3247*x[3]*x[36]+1.4185*x[3]*x[43]-0.6417*x[4]*x[4]+1.8538*x[4]*x[5]+0.7138*x[4]*x[6]-1.5565*x[4]*x[7]+0.2406*x[4]*x[8]-0.3195*x[4]*x[10]+1.8758*x[4]*x[13]-0.6118*x[4]*x[14]-1.2457*x[4]*x[15]+1.2495*x[4]*x[16]-0.0435*x[4]*x[17]+0.0073*x[4]*x[18]-1.8346*x[4]*x[19]-0.6744*x[4]*x[20]-0.6153*x[4]*x[21]-1.709*x[4]*x[22]+1.2067*x[4]*x[26]+1.2329*x[4]*x[35]+1.3099*x[4]*x[36]+1.2434*x[4]*x[38]-1.7185*x[4]*x[39]+1.2981*x[4]*x[40]+1.5096*x[4]*x[41]+1.5055*x[4]*x[42]-0.3041*x[4]*x[43]-1.6452*x[4]*x[44]-1.713*x[4]*x[45]-1.0423*x[4]*x[49]+1.6177*x[4]*x[50]-0.1686*x[5]*x[5]+0.5948*x[5]*x[6]-1.5224*x[5]*x[11]+1.019*x[5]*x[12]-0.0683*x[5]*x[14]+1.69*x[5]*x[15]-0.6993*x[5]*x[16]-0.1256*x[5]*x[17]+1.7259*x[5]*x[21]-1.756*x[5]*x[23]-0.2228*x[5]*x[24]-1.6326*x[5]*x[27]+1.392*x[5]*x[32]-0.1045*x[5]*x[35]+1.1206*x[5]*x[36]+1.357*x[5]*x[37]-1.565*x[5]*x[38]+1.6247*x[5]*x[43]+0.7814*x[5]*x[44]-0.2266*x[5]*x[47]-1.2467*x[5]*x[49]-0.2893*x[6]*x[9]+0.5488*x[6]*x[11]-0.1442*x[6]*x[12]-1.9516*x[6]*x[15]-1.4069*x[6]*x[18]+1.0594*x[6]*x[19]-1.6999*x[6]*x[20]-1.316*x[6]*x[21]+1.5124*x[6]*x[24]+0.1255*x[6]*x[25]+1.893*x[6]*x[26]+0.0869*x[6]*x[27]-1.7639*x[6]*x[29]+0.6038*x[6]*x[30]+0.4593*x[6]*x[32]+0.31*x[6]*x[33]-1.6593*x[6]*x[34]-0.502*x[6]*x[36]+0.7002*x[6]*x[37]+0.617*x[6]*x[40]+0.6144*x[6]*x[41]-1.0206*x[6]*x[42]+0.392*x[6]*x[43]+1.9438*x[6]*x[44]-0.2734*x[6]*x[46]-1.0957*x[6]*x[48]+1.2488*x[6]*x[49]-0.9245*x[7]*x[7]+1.9829*x[7]*x[8]-1.1338*x[7]*x[12]-1.36*x[7]*x[14]+0.3912*x[7]*x[15]+0.7195*x[7]*x[16]+0.7943*x[7]*x[17]-0.6086*x[7]*x[19]-0.5664*x[7]*x[21]-0.3019*x[7]*x[24]+0.9903*x[7]*x[27]-0.6204*x[7]*x[28]-1.2414*x[7]*x[39]+0.9881*x[7]*x[42]-0.4668*x[7]*x[45]+1.1496*x[7]*x[46]+0.836*x[7]*x[48]+1.8639*x[7]*x[49]-0.2758*x[7]*x[50]-0.6181*x[8]*x[10]+0.8288*x[8]*x[12]+1.2936*x[8]*x[14]+1.9964*x[8]*x[15]-0.9894*x[8]*x[17]-1.2826*x[8]*x[23]-0.8174*x[8]*x[26]+1.6768*x[8]*x[27]+0.5101*x[8]*x[29]+0.6105*x[8]*x[30]-0.4411*x[8]*x[31]-1.6406*x[8]*x[33]+1.6611*x[8]*x[34]+1.9118*x[8]*x[36]+1.5747*x[8]*x[38]+1.0239*x[8]*x[40]-0.312*x[8]*x[41]+0.75*x[8]*x[42]+1.3063*x[8]*x[43]-0.6598*x[8]*x[46]-0.1161*x[9]*x[11]+1.2687*x[9]*x[14]-0.3869*x[9]*x[15]-0.0988*x[9]*x[16]+0.3157*x[9]*x[17]+0.0374*x[9]*x[18]+1.8613*x[9]*x[20]+0.9736*x[9]*x[21]-0.6209*x[9]*x[22]+1.9933*x[9]*x[23]+0.6844*x[9]*x[24]+0.2912*x[9]*x[25]+1.7388*x[9]*x[26]+1.471*x[9]*x[27]+1.5393*x[9]*x[31]-1.8326*x[9]*x[32]-0.6515*x[9]*x[35]-1.724*x[9]*x[36]-1.6814*x[9]*x[39]+0.5291*x[9]*x[43]+1.0137*x[9]*x[44]+1.8316*x[9]*x[46]+1.9367*x[9]*x[48]-1.1054*x[10]*x[11]+1.8691*x[10]*x[12]-0.0132*x[10]*x[13]+0.5541*x[10]*x[16]-1.3975*x[10]*x[17]+0.6593*x[10]*x[19]-1.8546*x[10]*x[21]+1.1139*x[10]*x[22]+1.6483*x[10]*x[23]-1.0244*x[10]*x[24]-1.5221*x[10]*x[26]-0.4877*x[10]*x[29]-0.7581*x[10]*x[31]-1.2541*x[10]*x[38]-0.9794*x[10]*x[39]-1.2454*x[10]*x[41]+0.8241*x[10]*x[44]-0.3696*x[10]*x[45]-1.4299*x[10]*x[46]-1.5644*x[10]*x[47]-1.4603*x[10]*x[48]-0.4703*x[10]*x[49]+1.7742*x[11]*x[13]+0.4484*x[11]*x[14]-1.6328*x[11]*x[15]+1.3556*x[11]*x[17]+0.6229*x[11]*x[22]-0.0372*x[11]*x[25]-0.9923*x[11]*x[27]-0.0545*x[11]*x[29]-0.4491*x[11]*x[31]-0.9631*x[11]*x[32]+0.5305*x[11]*x[33]+0.5416*x[11]*x[35]+1.8456*x[11]*x[38]+0.2969*x[11]*x[39]+1.8582*x[11]*x[40]-0.9281*x[11]*x[42]-1.2672*x[11]*x[44]-1.2698*x[11]*x[46]+0.6572*x[11]*x[47]+0.2162*x[11]*x[48]-1.8601*x[11]*x[50]+1.1587*x[12]*x[13]-0.2675*x[12]*x[14]+1.7795*x[12]*x[16]+1.7503*x[12]*x[18]+0.3806*x[12]*x[19]+1.1625*x[12]*x[21]+0.6118*x[12]*x[22]-0.2235*x[12]*x[23]-1.4643*x[12]*x[25]+0.9262*x[12]*x[27]-1.4896*x[12]*x[29]+0.6515*x[12]*x[32]-1.1787*x[12]*x[33]-0.2307*x[12]*x[35]+1.3971*x[12]*x[36]+1.0695*x[12]*x[38]+1.1433*x[12]*x[40]+0.6753*x[12]*x[41]-1.2386*x[12]*x[43]+0.9564*x[12]*x[46]+0.8327*x[12]*x[49]+0.8009*x[12]*x[50]-0.0655*x[13]*x[14]+1.2986*x[13]*x[16]+0.5553*x[13]*x[17]+0.5066*x[13]*x[18]+1.6791*x[13]*x[19]-0.6893*x[13]*x[20]-1.9741*x[13]*x[22]+1.2847*x[13]*x[26]+0.3532*x[13]*x[27]-0.1508*x[13]*x[31]+1.6625*x[13]*x[32]-1.8233*x[13]*x[33]+1.8019*x[13]*x[35]-1.1071*x[13]*x[37]+0.8249*x[13]*x[39]-1.617*x[13]*x[41]-1.0282*x[13]*x[44]+0.5082*x[13]*x[45]+0.4612*x[13]*x[46]-1.4069*x[14]*x[16]-0.6357*x[14]*x[18]+1.6402*x[14]*x[19]-1.1689*x[14]*x[20]-1.5362*x[14]*x[27]-1.2498*x[14]*x[28]+0.0336*x[14]*x[31]-1.3056*x[14]*x[32]-1.3594*x[14]*x[41]-1.3838*x[14]*x[42]+1.456*x[14]*x[43]-0.4486*x[14]*x[44]+0.0912*x[14]*x[46]+1.484*x[14]*x[47]-1.4697*x[14]*x[49]+0.3929*x[14]*x[50]+0.5218*x[15]*x[16]+0.1453*x[15]*x[17]+1.0211*x[15]*x[19]-0.0143*x[15]*x[22]+0.3908*x[15]*x[24]-0.0356*x[15]*x[25]-0.9476*x[15]*x[27]-0.9587*x[15]*x[28]-1.3971*x[15]*x[32]-0.1868*x[15]*x[33]+0.5682*x[15]*x[34]-1.9937*x[15]*x[35]-0.4661*x[15]*x[36]+0.0203*x[15]*x[37]+0.1836*x[15]*x[40]-0.5405*x[15]*x[47]+0.1795*x[15]*x[48]-1.9825*x[16]*x[16]+0.3771*x[16]*x[18]+0.947*x[16]*x[19]+1.2782*x[16]*x[21]+0.9488*x[16]*x[23]-0.4829*x[16]*x[24]+1.2892*x[16]*x[25]+1.2667*x[16]*x[27]-0.6717*x[16]*x[29]+1.4768*x[16]*x[30]+1.4806*x[16]*x[33]-0.1257*x[16]*x[34]-1.7132*x[16]*x[36]+0.274*x[16]*x[38]+1.1454*x[16]*x[39]+0.6782*x[16]*x[44]+1.245*x[16]*x[46]-1.2162*x[16]*x[47]+0.3448*x[16]*x[49]-1.4443*x[17]*x[18]-0.8514*x[17]*x[19]-1.6347*x[17]*x[20]-1.9528*x[17]*x[21]-1.7775*x[17]*x[22]+1.738*x[17]*x[23]+0.7045*x[17]*x[24]-1.5192*x[17]*x[25]-0.7583*x[17]*x[26]-0.1437*x[17]*x[27]+0.564*x[17]*x[30]-0.9569*x[17]*x[36]-0.8102*x[17]*x[37]+1.3467*x[17]*x[39]+0.1758*x[17]*x[41]-0.3509*x[17]*x[42]-1.3724*x[17]*x[44]-1.3702*x[17]*x[45]+1.1973*x[17]*x[47]-0.1292*x[17]*x[48]+0.1537*x[18]*x[21]+1.4358*x[18]*x[23]-1.5293*x[18]*x[25]+0.8453*x[18]*x[27]+0.9279*x[18]*x[28]-1.5746*x[18]*x[29]+1.1809*x[18]*x[32]+1.8467*x[18]*x[33]-1.0696*x[18]*x[36]-0.856*x[18]*x[37]-0.7965*x[18]*x[38]-0.2112*x[18]*x[44]-1.2276*x[18]*x[45]-0.1786*x[18]*x[46]-0.2957*x[19]*x[19]-0.5382*x[19]*x[23]-1.465*x[19]*x[26]-0.7124*x[19]*x[28]+1.0351*x[19]*x[30]+0.1782*x[19]*x[32]-1.1732*x[19]*x[36]-0.1714*x[19]*x[37]-0.4688*x[19]*x[39]-0.7395*x[19]*x[41]+1.5359*x[19]*x[42]+1.5022*x[19]*x[46]-1.1095*x[19]*x[47]-0.6551*x[19]*x[48]+0.2017*x[20]*x[20]-1.8199*x[20]*x[24]+1.1615*x[20]*x[27]+0.32*x[20]*x[29]+1.6758*x[20]*x[30]-0.1062*x[20]*x[32]-1.5726*x[20]*x[33]+1.5362*x[20]*x[34]-0.3039*x[20]*x[35]+0.0431*x[20]*x[41]-1.4783*x[20]*x[43]-1.7732*x[20]*x[44]-0.6785*x[20]*x[45]+1.9748*x[20]*x[47]-1.0672*x[20]*x[48]-1.0882*x[20]*x[49]+1.7548*x[21]*x[22]+1.4286*x[21]*x[23]-0.1293*x[21]*x[26]+0.8837*x[21]*x[27]+0.4083*x[21]*x[31]-1.4436*x[21]*x[32]+0.3604*x[21]*x[33]-1.3306*x[21]*x[34]+0.8873*x[21]*x[36]+0.6498*x[21]*x[37]-1.054*x[21]*x[38]+0.7601*x[21]*x[40]-0.286*x[21]*x[42]+0.5536*x[21]*x[45]-0.3391*x[21]*x[46]-1.7952*x[21]*x[49]-0.723*x[22]*x[22]-0.7257*x[22]*x[24]-1.2594*x[22]*x[26]-1.8755*x[22]*x[27]-0.6013*x[22]*x[30]+0.2749*x[22]*x[31]+0.748*x[22]*x[35]+1.4677*x[22]*x[42]+1.6692*x[22]*x[43]-1.6933*x[22]*x[44]+1.2505*x[22]*x[48]-1.9875*x[22]*x[49]+1.3783*x[23]*x[24]+0.0991*x[23]*x[25]-0.2274*x[23]*x[28]-1.9474*x[23]*x[29]+0.9665*x[23]*x[31]+1.7203*x[23]*x[35]-1.1016*x[23]*x[36]+0.9714*x[23]*x[37]-1.3502*x[23]*x[39]+1.5518*x[23]*x[40]-1.5024*x[23]*x[43]+1.459*x[23]*x[45]+1.8212*x[23]*x[46]+0.7864*x[23]*x[47]-0.159*x[23]*x[48]-0.2145*x[24]*x[24]-0.593*x[24]*x[27]+1.9292*x[24]*x[28]-0.6549*x[24]*x[30]+1.5049*x[24]*x[33]+1.2211*x[24]*x[37]-1.0523*x[24]*x[38]-0.4271*x[24]*x[40]-0.4029*x[24]*x[41]-1.5289*x[24]*x[42]-1.8847*x[24]*x[43]-0.3941*x[24]*x[44]+1.0747*x[24]*x[49]+0.3177*x[25]*x[25]+0.77*x[25]*x[26]-1.3614*x[25]*x[29]-0.322*x[25]*x[30]+0.4245*x[25]*x[31]-1.7746*x[25]*x[33]+1.9554*x[25]*x[38]+1.1205*x[25]*x[39]-0.2701*x[25]*x[40]-1.0348*x[25]*x[42]+1.4919*x[25]*x[43]-0.2741*x[25]*x[44]+1.5705*x[25]*x[47]-0.2273*x[25]*x[49]-0.3493*x[25]*x[50]+1.7768*x[26]*x[27]+1.5247*x[26]*x[29]-1.5031*x[26]*x[30]+1.4079*x[26]*x[32]+1.1504*x[26]*x[34]+0.7828*x[26]*x[35]+1.1224*x[26]*x[36]+1.7342*x[26]*x[38]+0.193*x[26]*x[39]+1.3416*x[26]*x[40]-1.141*x[26]*x[42]+1.8976*x[26]*x[43]+1.4249*x[26]*x[45]-1.3311*x[26]*x[46]+0.5322*x[26]*x[47]+1.1333*x[26]*x[48]-0.1985*x[26]*x[50]-0.5776*x[27]*x[27]-1.3366*x[27]*x[29]-1.2157*x[27]*x[30]-1.5881*x[27]*x[34]-0.8093*x[27]*x[36]+0.254*x[27]*x[38]+1.213*x[27]*x[39]-0.7378*x[27]*x[40]-1.3396*x[27]*x[43]+1.965*x[27]*x[44]+0.8216*x[27]*x[45]-0.35*x[27]*x[46]+0.8019*x[27]*x[47]-1.5926*x[27]*x[49]+1.7688*x[28]*x[29]+0.0512*x[28]*x[30]-1.9319*x[28]*x[32]+0.9964*x[28]*x[33]-1.7689*x[28]*x[34]-1.0836*x[28]*x[37]-1.9826*x[28]*x[38]+1.3706*x[28]*x[39]+1.9252*x[28]*x[40]-1.4071*x[28]*x[42]-0.052*x[28]*x[43]-0.9056*x[28]*x[46]-1.6007*x[28]*x[49]-0.9693*x[29]*x[30]-0.5313*x[29]*x[31]-0.5582*x[29]*x[36]+0.7979*x[29]*x[37]-0.7695*x[29]*x[38]-0.2424*x[29]*x[39]+1.1549*x[29]*x[40]-0.0143*x[29]*x[41]-1.2615*x[29]*x[43]-1.5003*x[29]*x[45]+0.0678*x[29]*x[46]+1.5799*x[29]*x[48]-0.4858*x[30]*x[30]-0.7069*x[30]*x[32]+1.2141*x[30]*x[34]-1.8553*x[30]*x[35]-0.4891*x[30]*x[36]-0.957*x[30]*x[37]-1.4005*x[30]*x[38]+0.7288*x[30]*x[39]+1.8674*x[30]*x[40]-0.4868*x[30]*x[43]+0.3688*x[30]*x[45]+0.108*x[30]*x[46]+0.5067*x[30]*x[47]-0.3408*x[30]*x[48]-0.4679*x[30]*x[50]+0.2921*x[31]*x[32]+0.4592*x[31]*x[33]-1.8533*x[31]*x[34]-1.5743*x[31]*x[36]+0.0408*x[31]*x[41]+1.4804*x[31]*x[42]-0.6314*x[31]*x[44]+1.2449*x[31]*x[46]-0.8918*x[31]*x[47]+0.5613*x[31]*x[49]+0.4366*x[32]*x[32]-0.1948*x[32]*x[33]-0.1769*x[32]*x[36]+1.2765*x[32]*x[37]-1.5299*x[32]*x[40]+0.1719*x[32]*x[43]+1.8773*x[32]*x[46]+0.2918*x[32]*x[48]+1.0572*x[33]*x[37]+0.3862*x[33]*x[39]-0.2248*x[33]*x[40]+1.8905*x[33]*x[45]-1.3549*x[33]*x[46]-1.8688*x[33]*x[48]+1.2573*x[33]*x[50]-0.9415*x[34]*x[37]-1.6597*x[34]*x[38]+1.7196*x[34]*x[40]+1.3311*x[34]*x[43]+1.4994*x[34]*x[44]+1.2023*x[34]*x[46]-1.174*x[34]*x[47]+1.7198*x[34]*x[48]+0.3121*x[34]*x[50]+0.8181*x[35]*x[37]+1.4251*x[35]*x[40]-1.544*x[35]*x[42]+0.1959*x[35]*x[45]-0.3688*x[35]*x[49]-1.2612*x[36]*x[40]-0.3668*x[36]*x[41]-1.3303*x[36]*x[43]+1.9705*x[36]*x[44]+1.2575*x[36]*x[45]-0.4681*x[36]*x[47]+0.0127*x[37]*x[37]-1.5596*x[37]*x[38]-0.2826*x[37]*x[39]+0.5732*x[37]*x[43]-1.2419*x[37]*x[44]+0.2397*x[37]*x[49]-0.4222*x[37]*x[50]-0.6657*x[38]*x[42]-0.0871*x[38]*x[47]-1.638*x[38]*x[49]+1.6335*x[38]*x[50]-1.8937*x[39]*x[40]+0.1013*x[39]*x[41]+0.4374*x[39]*x[49]-1.9866*x[40]*x[40]-1.5433*x[40]*x[41]-1.1505*x[40]*x[42]+1.2577*x[40]*x[43]-0.3796*x[40]*x[44]-0.388*x[40]*x[45]+0.8706*x[40]*x[48]+0.0742*x[40]*x[49]+0.0457*x[40]*x[50]+1.4635*x[41]*x[42]-0.9084*x[41]*x[44]+1.5024*x[41]*x[45]-1.0245*x[41]*x[46]+0.1781*x[41]*x[48]-1.3415*x[41]*x[49]-0.569*x[41]*x[50]+1.0993*x[42]*x[43]-0.874*x[42]*x[46]-0.8478*x[42]*x[47]+1.5406*x[42]*x[48]+0.3903*x[42]*x[49]+0.1339*x[42]*x[50]-0.5996*x[43]*x[47]+0.5704*x[43]*x[49]-1.217*x[44]*x[45]-0.8621*x[44]*x[46]+1.524*x[44]*x[47]-1.3657*x[44]*x[48]-1.9126*x[45]*x[47]+1.3298*x[45]*x[48]-0.1454*x[45]*x[49]+0.6687*x[46]*x[46]-0.2928*x[46]*x[49]+1.1835*x[46]*x[50]-0.4683*x[47]*x[49]-0.4576*x[48]*x[48]+1.235*x[48]*x[50]+0.6971*x[1]-0.879*x[2]+0.1382*x[3]-0.8902*x[4]+0.2737*x[5]-0.3394*x[6]+0.6214*x[7]-0.9094*x[8]-0.4833*x[9]-0.8151*x[10]-0.1125*x[11]+0.6601*x[12]-0.6356*x[13]+0.1307*x[14]-0.7991*x[15]-0.2902*x[16]-0.246*x[17]+0.9384*x[18]-0.9075*x[19]+0.8793*x[20]+0.1845*x[21]+0.1869*x[22]+0.2926*x[23]-0.73*x[24]-0.7714*x[25]+0.3942*x[26]-0.9578*x[27]-0.6671*x[28]+0.4808*x[29]-0.7435*x[30]+0.0416*x[31]-0.9626*x[32]-0.2167*x[33]-0.5725*x[34]-0.7771*x[35]-0.6202*x[36]+0.2029*x[37]+0.8771*x[38]-0.2929*x[39]+0.3476*x[40]+0.5995*x[41]+0.3139*x[42]+0.7075*x[43]+0.5061*x[44]+0.8856*x[45]+0.3713*x[46]+0.1012*x[47]-0.4852*x[48]+0.9331*x[49]+0.4096*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script.