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
@NLconstraint(m, e1, -(0.1146*x[1]*x[8]+0.8619*x[1]*x[9]+1.7423*x[1]*x[11]-0.2788*x[1]*x[18]+1.1008*x[1]*x[28]-1.9979*x[1]*x[29]-1.5053*x[1]*x[31]+0.0684*x[1]*x[37]-1.8903*x[1]*x[39]-1.8108*x[2]*x[2]-0.28*x[2]*x[4]+1.412*x[2]*x[5]+1.0469*x[2]*x[11]-1.3553*x[2]*x[12]-0.5767*x[2]*x[14]+0.3357*x[2]*x[15]-1.7254*x[2]*x[16]-0.3094*x[2]*x[19]+0.5425*x[2]*x[20]-1.8937*x[2]*x[21]+1.7271*x[2]*x[24]+0.7999*x[2]*x[25]-1.9767*x[2]*x[26]-0.0107*x[2]*x[27]-0.4386*x[2]*x[28]+1.8068*x[2]*x[29]+0.68*x[2]*x[34]+0.7473*x[2]*x[35]-1.906*x[2]*x[38]-0.239*x[3]*x[7]+0.9385*x[3]*x[9]-1.9755*x[3]*x[10]-1.4752*x[3]*x[11]+0.3879*x[3]*x[12]-0.9446*x[3]*x[14]+1.7367*x[3]*x[15]+0.7842*x[3]*x[16]-0.6481*x[3]*x[17]+1.0908*x[3]*x[18]+1.3722*x[3]*x[19]+1.0554*x[3]*x[22]+0.9185*x[3]*x[23]+1.8947*x[3]*x[26]-1.9348*x[3]*x[30]+1.9593*x[3]*x[31]+0.9313*x[3]*x[35]+1.1922*x[3]*x[37]-1.2753*x[3]*x[38]-0.2135*x[4]*x[4]+0.1288*x[4]*x[11]+1.5102*x[4]*x[12]-1.9252*x[4]*x[13]+1.2979*x[4]*x[14]-0.4087*x[4]*x[16]-1.5633*x[4]*x[17]-0.5937*x[4]*x[18]+0.9297*x[4]*x[20]+1.1956*x[4]*x[21]+0.6672*x[4]*x[23]-1.7987*x[4]*x[25]-0.806*x[4]*x[26]-0.3128*x[4]*x[27]-1.6519*x[4]*x[30]-1.2448*x[4]*x[33]-1.1771*x[4]*x[40]-1.5537*x[5]*x[6]-1.024*x[5]*x[9]-1.9618*x[5]*x[10]+1.276*x[5]*x[13]+1.9302*x[5]*x[19]-1.0281*x[5]*x[21]-1.7764*x[5]*x[24]+1.1407*x[5]*x[25]+1.3709*x[5]*x[26]-1.4075*x[5]*x[27]-0.8159*x[5]*x[28]+0.8667*x[5]*x[29]-1.328*x[5]*x[30]+0.8375*x[5]*x[33]-1.5077*x[5]*x[34]+0.3622*x[5]*x[39]+1.1064*x[6]*x[6]+0.2009*x[6]*x[8]-0.6666*x[6]*x[10]-0.4814*x[6]*x[11]-0.8003*x[6]*x[12]+0.6058*x[6]*x[14]-1.9175*x[6]*x[15]+1.3681*x[6]*x[17]+1.543*x[6]*x[19]+0.9967*x[6]*x[20]-0.2064*x[6]*x[23]-0.5652*x[6]*x[24]+0.8163*x[6]*x[25]-0.9577*x[6]*x[27]-0.9218*x[6]*x[28]+0.2689*x[6]*x[30]-1.6626*x[6]*x[32]+0.6208*x[6]*x[33]+0.5562*x[6]*x[34]-0.099*x[6]*x[35]-0.0029*x[6]*x[37]+0.218*x[6]*x[38]-1.4916*x[6]*x[39]+1.6289*x[7]*x[12]-0.3572*x[7]*x[13]+1.8955*x[7]*x[16]+0.4216*x[7]*x[17]+0.5642*x[7]*x[18]-0.3125*x[7]*x[20]-0.237*x[7]*x[22]+0.4287*x[7]*x[23]-1.9985*x[7]*x[25]+1.6751*x[7]*x[26]-1.0098*x[7]*x[28]-1.3022*x[7]*x[29]-1.5449*x[7]*x[30]+1.3634*x[7]*x[31]+1.7759*x[7]*x[32]+0.6967*x[7]*x[33]-0.0203*x[7]*x[34]+0.119*x[7]*x[35]+1.2317*x[7]*x[36]-1.7429*x[7]*x[39]-0.7157*x[7]*x[40]-1.1239*x[8]*x[8]-0.1584*x[8]*x[9]-1.6386*x[8]*x[11]+0.1045*x[8]*x[13]+1.2033*x[8]*x[14]+0.5004*x[8]*x[16]+1.9571*x[8]*x[17]+0.1895*x[8]*x[18]+1.999*x[8]*x[19]+1.0638*x[8]*x[21]+1.2415*x[8]*x[23]+0.1627*x[8]*x[25]+1.1917*x[8]*x[27]-0.0814*x[8]*x[28]+0.5161*x[8]*x[30]-1.6518*x[8]*x[31]-0.6481*x[8]*x[32]+1.5177*x[8]*x[33]+0.8671*x[8]*x[35]+1.4993*x[8]*x[37]+0.7137*x[8]*x[38]-0.3513*x[8]*x[39]+1.846*x[9]*x[10]-1.5057*x[9]*x[13]+1.1674*x[9]*x[14]+1.9276*x[9]*x[16]+1.5815*x[9]*x[18]+1.2935*x[9]*x[19]-0.4763*x[9]*x[20]+0.1569*x[9]*x[21]+1.9704*x[9]*x[23]+0.2273*x[9]*x[24]-1.1272*x[9]*x[25]+0.7168*x[9]*x[26]+1.2587*x[9]*x[28]+0.9288*x[9]*x[29]+0.7287*x[9]*x[30]+0.9279*x[9]*x[33]+1.1043*x[9]*x[34]+0.8902*x[9]*x[36]+1.9621*x[9]*x[37]+0.8782*x[9]*x[38]-1.4341*x[9]*x[39]-0.2997*x[10]*x[12]+1.3616*x[10]*x[14]-1.5345*x[10]*x[16]+0.1051*x[10]*x[18]+0.1302*x[10]*x[21]+1.9731*x[10]*x[22]-1.5837*x[10]*x[23]-1.7778*x[10]*x[24]-0.0819*x[10]*x[25]-0.3348*x[10]*x[27]-0.1982*x[10]*x[28]-0.9703*x[10]*x[29]+1.0298*x[10]*x[30]-0.2597*x[10]*x[31]+0.7453*x[10]*x[34]-0.2102*x[10]*x[35]-0.1356*x[10]*x[38]-0.2256*x[11]*x[11]-1.8944*x[11]*x[12]-0.3108*x[11]*x[14]-1.0999*x[11]*x[15]+1.1382*x[11]*x[18]+1.8105*x[11]*x[19]+1.3749*x[11]*x[20]-0.4977*x[11]*x[21]+0.9627*x[11]*x[23]+0.8151*x[11]*x[27]-0.2148*x[11]*x[29]+0.3083*x[11]*x[30]-1.0943*x[11]*x[35]-1.3904*x[11]*x[37]+1.5814*x[11]*x[38]-1.6471*x[11]*x[39]+1.024*x[12]*x[15]-1.4684*x[12]*x[17]+1.016*x[12]*x[20]+0.4046*x[12]*x[24]-0.8644*x[12]*x[25]+1.6346*x[12]*x[26]-0.6033*x[12]*x[27]-0.7825*x[12]*x[35]-0.6249*x[12]*x[36]+0.2157*x[12]*x[37]-1.4493*x[12]*x[39]+0.4724*x[12]*x[40]+0.4979*x[13]*x[13]+1.7859*x[13]*x[14]-1.8629*x[13]*x[16]+1.8352*x[13]*x[17]-1.3585*x[13]*x[18]-1.7664*x[13]*x[20]+1.3297*x[13]*x[22]-1.7368*x[13]*x[23]-0.7949*x[13]*x[25]-1.8857*x[13]*x[26]-0.2961*x[13]*x[29]+0.9767*x[13]*x[31]-1.9015*x[13]*x[35]-0.2148*x[13]*x[38]-0.9662*x[13]*x[39]+1.9851*x[14]*x[15]-1.0172*x[14]*x[16]-0.7683*x[14]*x[17]+1.7306*x[14]*x[18]+0.4432*x[14]*x[20]+0.1993*x[14]*x[22]-0.6892*x[14]*x[25]+1.411*x[14]*x[31]-0.5054*x[14]*x[32]+1.235*x[14]*x[33]+0.4331*x[14]*x[34]-0.0094*x[15]*x[15]-1.2081*x[15]*x[18]+1.9501*x[15]*x[20]-1.9256*x[15]*x[23]+0.5784*x[15]*x[28]-0.5485*x[15]*x[31]-0.6129*x[16]*x[16]-1.8351*x[16]*x[19]-1.7182*x[16]*x[20]-0.774*x[16]*x[21]-0.3761*x[16]*x[24]-0.4621*x[16]*x[26]-0.2194*x[16]*x[27]+1.244*x[16]*x[29]-0.5197*x[16]*x[33]-1.0081*x[16]*x[34]-1.7672*x[16]*x[35]-0.1552*x[16]*x[37]+1.7594*x[16]*x[38]-1.0345*x[17]*x[18]-0.206*x[17]*x[21]+1.5127*x[17]*x[22]-0.0493*x[17]*x[24]-0.8942*x[17]*x[25]+0.0924*x[17]*x[26]+1.6811*x[17]*x[27]-1.4256*x[17]*x[28]+1.7478*x[17]*x[30]-1.3548*x[17]*x[33]-0.4029*x[17]*x[34]+1.2782*x[17]*x[35]-1.3958*x[17]*x[37]+0.0761*x[17]*x[39]+1.3375*x[18]*x[19]-0.3924*x[18]*x[20]+0.2614*x[18]*x[21]+0.1054*x[18]*x[22]+1.4448*x[18]*x[24]-0.5219*x[18]*x[25]-0.8886*x[18]*x[26]-0.3937*x[18]*x[32]-0.3779*x[18]*x[33]-0.515*x[18]*x[36]-0.6111*x[18]*x[39]-1.6975*x[19]*x[19]-1.0447*x[19]*x[22]-0.3726*x[19]*x[24]-0.8258*x[19]*x[25]+1.2035*x[19]*x[29]-0.4976*x[19]*x[30]+1.6256*x[19]*x[31]+1.3202*x[19]*x[32]+0.0219*x[19]*x[35]-1.0807*x[19]*x[36]-1.7469*x[19]*x[38]+0.795*x[19]*x[39]+0.307*x[20]*x[23]-0.2215*x[20]*x[24]+1.2486*x[20]*x[25]-1.9625*x[20]*x[30]+0.7897*x[20]*x[31]-1.2273*x[20]*x[32]+0.7447*x[20]*x[34]+1.2554*x[20]*x[36]-0.4702*x[20]*x[37]-0.1498*x[20]*x[38]+0.7473*x[20]*x[39]-0.6194*x[20]*x[40]+0.7692*x[21]*x[23]+0.3395*x[21]*x[25]-1.9785*x[21]*x[26]+0.8225*x[21]*x[27]+0.6902*x[21]*x[28]-1.6997*x[21]*x[31]+0.2994*x[21]*x[32]-0.8796*x[21]*x[33]-1.9425*x[21]*x[34]+1.5452*x[21]*x[38]-1.9148*x[22]*x[22]-1.257*x[22]*x[24]+0.4252*x[22]*x[26]+1.781*x[22]*x[27]-1.7514*x[22]*x[30]-1.6623*x[22]*x[31]+0.9705*x[22]*x[34]+1.3236*x[22]*x[39]+0.0351*x[22]*x[40]+0.4188*x[23]*x[24]-1.1858*x[23]*x[26]+0.0521*x[23]*x[27]-0.4537*x[23]*x[28]+1.6062*x[23]*x[31]+0.864*x[23]*x[32]+1.1411*x[23]*x[33]+0.7414*x[23]*x[35]-0.7753*x[23]*x[36]+0.4393*x[23]*x[40]+1.4831*x[24]*x[25]+0.6116*x[24]*x[26]+1.1236*x[24]*x[28]-1.6779*x[24]*x[31]-0.4738*x[24]*x[32]+0.1515*x[24]*x[33]-1.1569*x[24]*x[35]+0.1274*x[24]*x[36]+0.09*x[24]*x[37]+0.937*x[24]*x[39]+1.4986*x[25]*x[25]+1.23*x[25]*x[26]+0.1329*x[25]*x[27]-1.0859*x[25]*x[28]-1.7162*x[25]*x[29]-0.9249*x[25]*x[32]+0.8466*x[25]*x[36]-1.2345*x[25]*x[37]+1.3785*x[25]*x[38]-1.5702*x[26]*x[26]+1.2583*x[26]*x[27]-0.6973*x[26]*x[28]+0.3766*x[26]*x[29]+0.4549*x[26]*x[30]+1.9699*x[26]*x[31]+0.111*x[26]*x[35]+1.6845*x[26]*x[36]+0.8635*x[26]*x[37]+1.5984*x[26]*x[38]+0.2759*x[27]*x[34]-1.1248*x[27]*x[36]+1.9448*x[27]*x[37]+0.4497*x[27]*x[38]-1.1746*x[28]*x[30]+0.0752*x[28]*x[31]-1.8642*x[28]*x[32]+0.3989*x[28]*x[33]+0.9508*x[28]*x[34]+1.516*x[28]*x[35]+1.057*x[28]*x[36]-0.9661*x[28]*x[37]+1.7661*x[28]*x[39]-1.2678*x[29]*x[30]-1.2536*x[29]*x[31]+0.5538*x[29]*x[32]+1.8284*x[29]*x[35]-0.0173*x[29]*x[36]+0.3197*x[29]*x[38]+0.425*x[29]*x[39]-0.8936*x[30]*x[31]-1.3653*x[30]*x[33]+1.2038*x[30]*x[34]-0.3768*x[30]*x[36]+0.9135*x[30]*x[39]-1.3971*x[31]*x[33]-1.0156*x[31]*x[37]+0.4587*x[31]*x[38]-1.6514*x[32]*x[33]+0.3998*x[32]*x[34]-1.2853*x[32]*x[36]-1.7554*x[32]*x[38]+1.5231*x[33]*x[34]-0.9193*x[33]*x[35]-1.5722*x[33]*x[36]-0.7297*x[33]*x[37]+1.6082*x[34]*x[35]-0.1297*x[34]*x[38]+1.7655*x[34]*x[39]+0.1067*x[35]*x[37]-0.3122*x[35]*x[40]-1.9001*x[36]*x[40]-0.2575*x[37]*x[38]-0.622*x[38]*x[39]-1.954*x[39]*x[39]-0.4983*x[1]-0.7987*x[2]+0.7787*x[3]+0.0058*x[4]+0.6542*x[5]-0.6512*x[6]-0.7005*x[7]+0.9521*x[8]-0.7566*x[9]+0.0366*x[10]-0.8072*x[11]-0.2158*x[12]+0.0812*x[13]-0.5801*x[14]+0.4612*x[15]+0.0461*x[16]-0.3502*x[17]+0.3886*x[18]+0.6079*x[19]+0.0862*x[20]+0.1605*x[21]-0.0957*x[22]+0.2045*x[23]+0.0171*x[24]-0.583*x[25]+0.5788*x[26]+0.6998*x[27]+0.3015*x[28]+0.206*x[29]-0.4502*x[30]+0.5983*x[31]-0.2093*x[32]+0.6127*x[33]+0.8645*x[34]-0.5408*x[35]+0.876*x[36]+0.2698*x[37]+0.6276*x[38]-0.6553*x[39]+0.4874*x[40])+x[41] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[41])

m = m 		 # model get returned when including this script.