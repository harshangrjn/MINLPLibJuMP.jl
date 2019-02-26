using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
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
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.2621*x[6]^2-0.4918*x[6]+0.4709*x[8]^2-0.1808*x[8]+0.345*x[14]^3-0.2451*x[14]+(-0.4701*x[1]*x[5])-0.1964*x[1]*x[13]+0.7386*x[1]*x[20]-0.341*x[2]*x[5]-0.6094*x[3]*x[16]-0.4195*x[3]*x[17]+0.5879*x[3]*x[19]+0.6231*x[4]*x[6]-0.1292*x[4]*x[7]+0.8224*x[4]*x[14]-0.1114*x[4]*x[18]+0.6088*x[5]*x[20]+0.7358*x[6]*x[9]+0.2412*x[7]*x[20]-0.9229*x[8]*x[11]+0.3746*x[8]*x[18]-0.6515*x[10]*x[11]+0.3734*x[14]*x[18]+0.9224*x[1]+0.8976*x[2]+0.0449*x[3]+0.9954*x[4]-0.7109*x[5]-0.8374*x[7]-0.9228*x[9]+0.3903*x[10]+0.7153*x[11]-0.8667*x[13]+0.8925*x[16]-0.3625*x[17]-0.6592*x[18]+0.0384*x[19]-0.1276*x[20]+(-0.4862*x[2]^2*x[16])-0.002*x[3]^2*x[11]-0.222*x[4]^2*x[13]+0.5299*x[5]^2*x[6]+0.7105*x[5]^2*x[13]-0.0854*x[5]^2*x[14]-0.7768*x[6]^2*x[2]+0.3558*x[6]^2*x[13]+0.0138*x[6]^2*x[18]-0.2684*x[8]^2*x[6]+0.9796*x[9]^2*x[1]+0.2705*x[9]^2*x[13]-0.8519*x[10]^2*x[3]-0.1982*x[11]^2*x[12]-0.9014*x[12]^2*x[16]+0.0117*x[12]^2*x[19]-0.0104*x[13]^2*x[5]-0.3747*x[14]^2*x[5]+0.8627*x[15]^2*x[18]+0.6329*x[16]^2*x[3]-0.4877*x[17]^2*x[6]+0.3735*x[18]^2*x[3]-0.2571*x[18]^2*x[10]+0.8851*x[19]^2*x[15]-0.0929*x[12]+0.9272*x[15]+0.2391*x[1]*x[3]*x[8]-0.9632*x[1]*x[4]*x[6]+0.933*x[1]*x[4]*x[10]-0.4406*x[1]*x[4]*x[11]-0.2747*x[1]*x[5]*x[11]-0.3599*x[1]*x[5]*x[16]-0.7521*x[1]*x[8]*x[18]-0.5807*x[1]*x[10]*x[13]-0.1988*x[1]*x[13]*x[20]+0.719*x[1]*x[14]*x[17]-0.6606*x[1]*x[15]*x[16]-0.6284*x[1]*x[15]*x[19]+0.1391*x[2]*x[3]*x[4]-0.2108*x[2]*x[3]*x[6]-0.5363*x[2]*x[4]*x[9]-0.7695*x[2]*x[4]*x[14]-0.0445*x[2]*x[4]*x[18]-0.5961*x[2]*x[5]*x[14]+0.7909*x[2]*x[6]*x[9]-0.4701*x[2]*x[7]*x[13]+0.5256*x[2]*x[7]*x[19]+0.856*x[2]*x[8]*x[13]-0.9351*x[2]*x[10]*x[13]+0.8115*x[2]*x[10]*x[15]+0.3603*x[2]*x[10]*x[16]-0.009*x[2]*x[11]*x[19]+0.9385*x[3]*x[5]*x[11]-0.5303*x[3]*x[5]*x[15]+0.9007*x[3]*x[6]*x[13]+0.0038*x[3]*x[6]*x[16]+0.3556*x[3]*x[6]*x[17]+0.1688*x[3]*x[7]*x[9]+0.7162*x[3]*x[7]*x[12]+0.6302*x[3]*x[7]*x[14]+0.0652*x[3]*x[7]*x[18]-0.1356*x[3]*x[8]*x[10]-0.4646*x[3]*x[9]*x[12]-0.5304*x[3]*x[9]*x[14]+0.8498*x[3]*x[10]*x[13]+0.9265*x[3]*x[10]*x[19]-0.9415*x[3]*x[11]*x[18]-0.4834*x[3]*x[12]*x[14]-0.94*x[3]*x[12]*x[17]+0.9598*x[3]*x[12]*x[19]+0.9*x[3]*x[12]*x[20]+0.3399*x[3]*x[15]*x[16]+0.1377*x[3]*x[15]*x[19]-0.4813*x[3]*x[16]*x[17]-0.5049*x[3]*x[16]*x[18]+0.8868*x[3]*x[17]*x[20]+0.1181*x[4]*x[5]*x[10]+0.4821*x[4]*x[6]*x[15]+0.2222*x[4]*x[6]*x[19]-0.5893*x[4]*x[8]*x[9]+0.0282*x[4]*x[8]*x[15]-0.9851*x[4]*x[10]*x[11]-0.6473*x[4]*x[10]*x[18]+0.1068*x[4]*x[12]*x[18]-0.1873*x[4]*x[13]*x[19]+0.8455*x[4]*x[13]*x[20]+0.1053*x[4]*x[15]*x[17]-0.642*x[4]*x[16]*x[17]+0.677*x[4]*x[17]*x[19]+0.7639*x[5]*x[6]*x[13]-0.2596*x[5]*x[7]*x[18]+0.8535*x[5]*x[7]*x[19]-0.1793*x[5]*x[8]*x[19]+0.2069*x[5]*x[8]*x[20]+0.5018*x[5]*x[9]*x[14]+0.9142*x[5]*x[11]*x[13]-0.2907*x[5]*x[11]*x[16]-0.9794*x[5]*x[11]*x[19]+0.6247*x[5]*x[14]*x[18]-0.2422*x[5]*x[15]*x[17]+0.8501*x[6]*x[8]*x[10]-0.2188*x[6]*x[8]*x[11]+0.0123*x[6]*x[9]*x[11]-0.472*x[6]*x[11]*x[14]+0.6076*x[6]*x[11]*x[20]+0.9045*x[6]*x[13]*x[19]-0.882*x[6]*x[14]*x[15]-0.6261*x[6]*x[14]*x[17]-0.0625*x[6]*x[15]*x[18]+0.3233*x[6]*x[17]*x[18]+0.1751*x[7]*x[9]*x[13]+0.3933*x[7]*x[9]*x[16]+0.9994*x[7]*x[9]*x[17]+0.3752*x[7]*x[9]*x[19]-0.1514*x[7]*x[10]*x[11]-0.5056*x[7]*x[11]*x[12]-0.8972*x[7]*x[11]*x[17]+0.0159*x[7]*x[12]*x[13]-0.0558*x[7]*x[12]*x[18]+0.1908*x[7]*x[14]*x[17]+0.7173*x[7]*x[14]*x[18]-0.9325*x[7]*x[14]*x[19]-0.7317*x[7]*x[15]*x[17]-0.3213*x[7]*x[15]*x[18]+0.3413*x[7]*x[17]*x[19]+0.8883*x[8]*x[9]*x[11]+0.4971*x[8]*x[12]*x[15]-0.0359*x[8]*x[13]*x[16]+0.1542*x[8]*x[13]*x[18]-0.2064*x[8]*x[14]*x[16]+0.2605*x[8]*x[14]*x[18]-0.3005*x[8]*x[18]*x[19]+0.9249*x[8]*x[18]*x[20]-0.3528*x[9]*x[10]*x[16]+0.3792*x[9]*x[10]*x[18]+0.4727*x[9]*x[11]*x[15]+0.8092*x[9]*x[12]*x[17]-0.1722*x[9]*x[12]*x[18]-0.9983*x[9]*x[13]*x[20]-0.9108*x[9]*x[18]*x[19]+0.409*x[10]*x[11]*x[13]+0.1364*x[10]*x[12]*x[16]-0.1428*x[10]*x[12]*x[20]+0.1072*x[10]*x[14]*x[16]-0.3925*x[10]*x[15]*x[18]+0.0153*x[10]*x[16]*x[17]-0.2953*x[11]*x[15]*x[17]-0.9799*x[11]*x[18]*x[20]-0.2376*x[12]*x[13]*x[18]+0.2164*x[12]*x[14]*x[18]-0.6884*x[12]*x[18]*x[20]-0.0513*x[12]*x[19]*x[20]+0.5009*x[13]*x[14]*x[18]-0.8355*x[13]*x[17]*x[18]+0.4101*x[15]*x[17]*x[19]-0.4423*x[15]*x[19]*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.3249*x[4]-0.7004*x[4]^2+0.1821*x[1]*x[10]-0.0146*x[1]*x[17]-0.5563*x[3]*x[4]+0.8975*x[4]*x[7]+0.362*x[4]*x[9]-0.7822*x[4]*x[12]+0.1215*x[4]*x[13]-0.7918*x[5]*x[13]+0.875*x[5]*x[15]+0.7704*x[6]*x[9]+0.3741*x[6]*x[12]+0.8988*x[7]*x[18]-0.5185*x[8]*x[20]+0.6595*x[9]*x[13]+0.9425*x[9]*x[14]+0.7231*x[10]*x[12]-0.2719*x[10]*x[16]+0.6262*x[10]*x[19]-0.4193*x[11]*x[14]-0.56*x[15]*x[16]+0.2228*x[15]*x[17]+0.6061*x[19]*x[20]-0.0792*x[1]-0.8637*x[3]-0.3015*x[5]+0.6287*x[6]-0.9279*x[7]+0.0928*x[8]-0.8847*x[9]+0.2447*x[10]+0.5811*x[11]+0.3884*x[12]+0.7645*x[13]-0.7216*x[14]-0.6639*x[15]-0.444*x[16]-0.5776*x[17]-0.1249*x[18]-0.6406*x[19]+0.3209*x[20]+0.7384*x[3]^2*x[19]-0.9176*x[3]^2*x[17]-0.6959*x[4]^2*x[10]+0.3413*x[4]^2*x[17]-0.2322*x[6]^2*x[4]-0.8457*x[6]^2*x[16]+0.9532*x[9]^2*x[1]+0.2591*x[9]^2*x[11]-0.6584*x[10]^2*x[19]-0.5853*x[11]^2*x[1]+0.3835*x[12]^2*x[10]+0.6989*x[12]^2*x[19]-0.7749*x[13]^2*x[6]-0.5617*x[13]^2*x[11]+0.1195*x[14]^2*x[10]-0.1521*x[14]^2*x[19]-0.199*x[18]^2*x[6]+0.9298*x[20]^2*x[10]+(-0.9913*x[1]*x[2]*x[7])-0.8812*x[1]*x[2]*x[9]-0.8242*x[1]*x[2]*x[12]-0.852*x[1]*x[3]*x[4]-0.0611*x[1]*x[3]*x[6]+0.116*x[1]*x[5]*x[8]+0.2765*x[1]*x[6]*x[19]+0.5145*x[1]*x[8]*x[11]+0.7765*x[1]*x[10]*x[17]+0.7549*x[1]*x[10]*x[20]+0.4671*x[1]*x[14]*x[17]-0.8668*x[1]*x[14]*x[19]-0.7354*x[1]*x[17]*x[20]-0.4256*x[2]*x[3]*x[16]-0.7895*x[2]*x[3]*x[18]+0.3588*x[2]*x[4]*x[20]+0.0343*x[2]*x[5]*x[8]+0.7694*x[2]*x[5]*x[11]+0.1783*x[2]*x[5]*x[16]-0.678*x[2]*x[6]*x[9]+0.714*x[2]*x[6]*x[13]-0.358*x[2]*x[6]*x[16]-0.4018*x[2]*x[7]*x[10]+0.1086*x[2]*x[7]*x[16]-0.7625*x[2]*x[8]*x[12]+0.4538*x[2]*x[8]*x[15]-0.072*x[2]*x[8]*x[16]+0.1953*x[2]*x[9]*x[14]-0.8623*x[2]*x[9]*x[18]+0.2144*x[2]*x[10]*x[15]+0.3344*x[2]*x[11]*x[13]-0.0018*x[2]*x[12]*x[19]-0.6027*x[2]*x[14]*x[15]+0.7437*x[2]*x[14]*x[18]-0.2748*x[2]*x[15]*x[18]+0.9022*x[2]*x[16]*x[18]-0.6935*x[3]*x[4]*x[6]-0.7062*x[3]*x[4]*x[9]-0.5711*x[3]*x[4]*x[13]-0.2679*x[3]*x[4]*x[17]-0.9496*x[3]*x[5]*x[9]+0.3431*x[3]*x[6]*x[18]-0.1744*x[3]*x[7]*x[15]+0.8871*x[3]*x[8]*x[11]+0.1168*x[3]*x[8]*x[15]-0.4752*x[3]*x[8]*x[19]+0.3163*x[3]*x[9]*x[14]+0.6915*x[3]*x[10]*x[13]-0.9191*x[3]*x[10]*x[19]+0.8396*x[3]*x[14]*x[15]-0.6114*x[3]*x[14]*x[16]+0.9281*x[3]*x[14]*x[17]+0.4888*x[3]*x[14]*x[18]-0.2807*x[4]*x[5]*x[10]-0.4027*x[4]*x[5]*x[11]+0.4405*x[4]*x[5]*x[13]+0.564*x[4]*x[5]*x[14]-0.1085*x[4]*x[6]*x[13]+0.3113*x[4]*x[6]*x[16]-0.0835*x[4]*x[6]*x[20]+0.1151*x[4]*x[7]*x[11]-0.2122*x[4]*x[7]*x[17]-0.5831*x[4]*x[8]*x[16]-0.794*x[4]*x[10]*x[13]-0.394*x[4]*x[12]*x[17]-0.936*x[4]*x[14]*x[16]-0.553*x[4]*x[18]*x[19]+0.3272*x[5]*x[6]*x[10]-0.8529*x[5]*x[6]*x[18]+0.8926*x[5]*x[7]*x[12]+0.2117*x[5]*x[7]*x[16]-0.8537*x[5]*x[8]*x[16]-0.5506*x[5]*x[8]*x[19]+0.9654*x[5]*x[9]*x[17]+0.5218*x[5]*x[12]*x[13]-0.5583*x[5]*x[14]*x[17]-0.1601*x[6]*x[7]*x[12]+0.0362*x[6]*x[7]*x[13]-0.3995*x[6]*x[7]*x[17]+0.7717*x[6]*x[7]*x[20]-0.3901*x[6]*x[8]*x[12]-0.281*x[6]*x[8]*x[13]-0.9755*x[6]*x[9]*x[19]+0.1282*x[6]*x[10]*x[14]-0.0547*x[6]*x[11]*x[15]+0.2486*x[6]*x[12]*x[15]-0.8325*x[6]*x[12]*x[17]-0.4717*x[6]*x[13]*x[18]-0.8278*x[6]*x[16]*x[19]+0.8674*x[7]*x[8]*x[17]-0.2075*x[7]*x[9]*x[11]+0.116*x[7]*x[9]*x[20]-0.122*x[7]*x[12]*x[13]-0.3646*x[7]*x[12]*x[14]+0.4716*x[7]*x[12]*x[18]+0.353*x[7]*x[14]*x[17]+0.4636*x[7]*x[14]*x[19]-0.2387*x[7]*x[16]*x[20]-0.0007*x[7]*x[17]*x[20]-0.594*x[8]*x[9]*x[10]-0.8905*x[8]*x[9]*x[12]-0.2989*x[8]*x[9]*x[14]+0.9188*x[8]*x[10]*x[19]+0.0664*x[8]*x[11]*x[18]+0.8662*x[8]*x[12]*x[16]+0.3322*x[8]*x[18]*x[19]+0.3771*x[9]*x[10]*x[13]-0.4297*x[9]*x[11]*x[15]-0.7568*x[9]*x[15]*x[16]+0.0688*x[9]*x[15]*x[17]+0.7608*x[9]*x[18]*x[19]+0.0354*x[10]*x[11]*x[15]-0.7024*x[10]*x[11]*x[16]-0.4063*x[10]*x[13]*x[16]-0.4411*x[10]*x[14]*x[17]+0.9178*x[10]*x[16]*x[20]-0.7359*x[10]*x[17]*x[20]-0.2796*x[11]*x[13]*x[15]-0.1346*x[12]*x[13]*x[18]-0.5704*x[12]*x[14]*x[16]+0.8474*x[12]*x[15]*x[19]+0.2122*x[12]*x[17]*x[19]-0.915*x[13]*x[14]*x[17]-0.7426*x[13]*x[14]*x[18]-0.3198*x[13]*x[14]*x[19]+0.1953*x[13]*x[15]*x[18]+0.7621*x[13]*x[15]*x[19]-0.8072*x[13]*x[16]*x[19]+0.0198*x[14]*x[16]*x[19]-0.4717*x[14]*x[17]*x[18]-0.7869*x[15]*x[16]*x[18]-0.9072*x[16]*x[17]*x[18]+0.027*x[16]*x[17]*x[20]-0.5518*x[16]*x[18]*x[20]-0.5861*x[2] <= 0.912)
@NLconstraint(m, e3, 0.8201*x[12]^3+0.6152*x[12]+0.4664*x[1]*x[16]-0.9705*x[1]*x[6]-0.6686*x[2]*x[10]-0.7588*x[4]*x[5]-0.0647*x[4]*x[18]+0.1384*x[5]*x[8]-0.1395*x[5]*x[10]-0.6773*x[5]*x[13]-0.0356*x[6]*x[9]-0.0992*x[6]*x[11]-0.8361*x[7]*x[13]+0.8217*x[7]*x[19]-0.8814*x[10]*x[16]-0.0633*x[11]*x[12]+0.1416*x[12]*x[16]-0.3096*x[13]*x[19]-0.3949*x[14]*x[16]+0.214*x[15]*x[16]-0.9276*x[15]*x[19]-0.9777*x[16]*x[17]-0.8163*x[16]*x[19]-0.6675*x[1]+0.5316*x[2]-0.1182*x[4]+0.8552*x[5]-0.6898*x[6]+0.8425*x[7]+0.7794*x[8]-0.3885*x[9]-0.5781*x[10]-0.9292*x[11]+0.3204*x[13]-0.7727*x[14]+0.9707*x[15]+0.2657*x[16]+0.7199*x[17]+0.5146*x[18]-0.5671*x[19]+(-0.5728*x[1]^2*x[3])-0.0882*x[2]^2*x[10]-0.7048*x[2]^2*x[11]-0.5689*x[4]^2*x[8]+0.5719*x[4]^2*x[18]-0.101*x[5]^2*x[6]-0.214*x[5]^2*x[17]-0.4513*x[6]^2*x[4]+0.8121*x[6]^2*x[17]-0.3762*x[10]^2*x[13]-0.8529*x[10]^2*x[18]+0.5737*x[11]^2*x[14]+0.8508*x[13]^2*x[3]-0.3197*x[13]^2*x[12]-0.1785*x[14]^2*x[19]+0.1829*x[14]^2*x[20]-0.1297*x[15]^2*x[13]-0.0465*x[17]^2*x[4]+0.3011*x[18]^2*x[14]-0.4667*x[3]+0.401*x[20]+0.6608*x[1]*x[5]*x[11]+0.7811*x[1]*x[11]*x[18]-0.7352*x[1]*x[18]*x[20]+0.7132*x[2]*x[3]*x[16]+0.3875*x[2]*x[3]*x[20]+0.0139*x[2]*x[4]*x[9]+0.0261*x[2]*x[4]*x[13]+0.4791*x[2]*x[5]*x[13]-0.3661*x[2]*x[5]*x[20]-0.0397*x[2]*x[6]*x[9]+0.4649*x[2]*x[6]*x[12]-0.5519*x[2]*x[6]*x[13]-0.7063*x[2]*x[6]*x[18]-0.2983*x[2]*x[7]*x[17]+0.4167*x[2]*x[8]*x[14]+0.7672*x[2]*x[8]*x[17]+0.2013*x[2]*x[10]*x[13]-0.2411*x[2]*x[10]*x[14]-0.4202*x[2]*x[10]*x[17]+0.1839*x[2]*x[11]*x[18]+0.68*x[2]*x[14]*x[19]-0.1075*x[2]*x[15]*x[19]-0.9765*x[2]*x[16]*x[18]-0.5951*x[2]*x[17]*x[19]-0.2564*x[3]*x[4]*x[13]-0.0156*x[3]*x[4]*x[16]+0.5631*x[3]*x[5]*x[8]-0.7181*x[3]*x[6]*x[10]+0.1628*x[3]*x[6]*x[11]-0.844*x[3]*x[8]*x[10]-0.3267*x[3]*x[8]*x[14]+0.3632*x[3]*x[9]*x[12]-0.093*x[3]*x[12]*x[16]+0.428*x[3]*x[13]*x[15]+0.1721*x[3]*x[13]*x[17]+0.6474*x[3]*x[13]*x[20]-0.5216*x[3]*x[14]*x[15]-0.3627*x[3]*x[15]*x[17]-0.1875*x[3]*x[16]*x[17]-0.8105*x[3]*x[16]*x[18]+0.8021*x[3]*x[16]*x[19]-0.7129*x[3]*x[17]*x[18]-0.368*x[3]*x[19]*x[20]+0.5943*x[4]*x[5]*x[10]-0.348*x[4]*x[5]*x[13]-0.4899*x[4]*x[6]*x[16]-0.0279*x[4]*x[7]*x[14]-0.37*x[4]*x[8]*x[16]+0.382*x[4]*x[9]*x[10]+0.3435*x[4]*x[10]*x[14]+0.3576*x[4]*x[10]*x[17]-0.397*x[4]*x[11]*x[15]-0.8682*x[4]*x[12]*x[14]-0.1362*x[4]*x[12]*x[15]-0.3189*x[4]*x[12]*x[19]+0.8204*x[4]*x[13]*x[15]+0.5389*x[4]*x[15]*x[19]-0.1369*x[4]*x[17]*x[20]-0.8945*x[4]*x[18]*x[20]-0.4293*x[5]*x[6]*x[12]-0.1811*x[5]*x[6]*x[17]-0.9675*x[5]*x[7]*x[8]+0.1207*x[5]*x[8]*x[13]-0.4444*x[5]*x[10]*x[16]-0.4886*x[5]*x[10]*x[17]-0.911*x[5]*x[11]*x[12]+0.7047*x[5]*x[11]*x[14]+0.9354*x[5]*x[12]*x[18]-0.3136*x[5]*x[13]*x[14]-0.1835*x[5]*x[15]*x[19]-0.0441*x[5]*x[16]*x[17]+0.1723*x[5]*x[16]*x[20]+0.7044*x[5]*x[18]*x[19]-0.6986*x[5]*x[18]*x[20]-0.3478*x[6]*x[8]*x[11]+0.1724*x[6]*x[8]*x[17]+0.4839*x[6]*x[8]*x[18]+0.6405*x[6]*x[9]*x[10]+0.5531*x[6]*x[9]*x[16]+0.7444*x[6]*x[9]*x[19]-0.8726*x[6]*x[10]*x[11]+0.6061*x[6]*x[11]*x[15]-0.3856*x[6]*x[11]*x[18]-0.1723*x[6]*x[12]*x[15]+0.529*x[6]*x[14]*x[19]-0.6503*x[6]*x[19]*x[20]+0.6513*x[7]*x[9]*x[19]-0.8795*x[7]*x[10]*x[12]-0.8185*x[7]*x[12]*x[17]-0.954*x[7]*x[13]*x[15]+0.0875*x[7]*x[13]*x[16]+0.9326*x[7]*x[13]*x[17]-0.6122*x[7]*x[15]*x[16]-0.4275*x[7]*x[15]*x[17]+0.1276*x[7]*x[15]*x[19]-0.5996*x[7]*x[17]*x[19]+0.4197*x[8]*x[10]*x[19]-0.6417*x[8]*x[11]*x[12]-0.7998*x[8]*x[11]*x[19]-0.9006*x[8]*x[12]*x[15]+0.8611*x[8]*x[12]*x[19]-0.0255*x[8]*x[13]*x[17]+0.0543*x[8]*x[13]*x[19]+0.7222*x[8]*x[14]*x[19]+0.6106*x[8]*x[16]*x[20]+0.3428*x[8]*x[18]*x[20]-0.5333*x[8]*x[19]*x[20]+0.4792*x[9]*x[10]*x[15]+0.481*x[9]*x[10]*x[17]-0.2837*x[9]*x[10]*x[20]+0.1078*x[9]*x[13]*x[14]-0.9968*x[9]*x[17]*x[19]+0.7921*x[9]*x[18]*x[19]+0.255*x[10]*x[11]*x[15]+0.5172*x[10]*x[11]*x[20]-0.6659*x[10]*x[12]*x[17]+0.8052*x[10]*x[13]*x[17]+0.7072*x[10]*x[14]*x[15]-0.1335*x[10]*x[15]*x[17]-0.9434*x[10]*x[16]*x[19]+0.6406*x[11]*x[12]*x[15]-0.6537*x[12]*x[13]*x[15]+0.1013*x[12]*x[13]*x[19]-0.5255*x[12]*x[14]*x[15]-0.0533*x[12]*x[14]*x[16]-0.9742*x[12]*x[14]*x[17]-0.5451*x[13]*x[14]*x[17]+0.0298*x[13]*x[15]*x[18]-0.6025*x[14]*x[15]*x[19]+0.9756*x[14]*x[17]*x[20]-0.2609*x[14]*x[18]*x[19]+0.1663*x[15]*x[16]*x[18]-0.3541*x[15]*x[16]*x[19]+0.0075*x[18]*x[19]*x[20] <= 93.794)
@NLconstraint(m, e4, 0.7472*x[2]*x[3]-0.1772*x[2]*x[13]-0.3095*x[3]*x[5]-0.4474*x[3]*x[8]-0.835*x[3]*x[13]-0.8937*x[5]*x[10]-0.045*x[5]*x[15]-0.5965*x[6]*x[10]+0.5986*x[6]*x[14]+0.8475*x[6]*x[17]-0.0802*x[7]*x[11]+0.1028*x[7]*x[13]-0.1408*x[7]*x[15]-0.9536*x[8]*x[9]-0.6775*x[8]*x[13]+0.0223*x[8]*x[20]-0.1451*x[9]*x[13]+0.6269*x[9]*x[15]-0.8512*x[9]*x[16]+0.8843*x[9]*x[19]-0.8738*x[10]*x[19]+0.1348*x[12]*x[16]-0.0524*x[15]*x[16]+0.7557*x[15]*x[18]-0.847*x[16]*x[19]-0.8076*x[19]*x[20]+0.9083*x[2]+0.5023*x[3]-0.2002*x[5]+0.2911*x[6]-0.09*x[7]+0.8826*x[8]-0.4028*x[9]-0.8429*x[10]-0.6881*x[11]-0.0461*x[12]+0.7616*x[13]+0.3546*x[14]-0.9846*x[15]-0.4269*x[16]-0.6923*x[17]+0.7969*x[18]-0.2897*x[19]+0.0423*x[20]+0.1596*x[1]^2*x[10]-0.966*x[2]^2*x[9]+0.323*x[2]^2*x[19]-0.3176*x[4]^2*x[10]+0.4845*x[6]^2*x[16]+0.0799*x[7]^2*x[2]-0.5416*x[8]^2*x[16]+0.7832*x[8]^2*x[20]-0.4975*x[9]^2*x[15]+0.3241*x[9]^2*x[19]+0.516*x[11]^2*x[13]-0.7547*x[11]^2*x[16]-0.9699*x[12]^2*x[17]+0.0154*x[13]^2*x[7]-0.3783*x[13]^2*x[11]-0.2714*x[16]^2*x[13]-0.3963*x[17]^2*x[4]+0.3408*x[17]^2*x[8]-0.3091*x[18]^2*x[3]-0.4675*x[18]^2*x[8]+0.7406*x[19]^2*x[2]-0.3867*x[1]-0.1466*x[4]+0.5168*x[1]*x[3]*x[7]-0.8842*x[1]*x[4]*x[20]-0.944*x[1]*x[5]*x[12]+0.5146*x[1]*x[6]*x[10]+0.6902*x[1]*x[10]*x[19]+0.7085*x[1]*x[11]*x[14]+0.0013*x[1]*x[12]*x[14]-0.7566*x[1]*x[14]*x[15]-0.8663*x[1]*x[14]*x[18]-0.5909*x[1]*x[14]*x[19]-0.4708*x[1]*x[15]*x[20]-0.882*x[1]*x[17]*x[19]-0.6614*x[2]*x[3]*x[5]-0.174*x[2]*x[4]*x[8]+0.4051*x[2]*x[4]*x[18]+0.9434*x[2]*x[5]*x[10]-0.7105*x[2]*x[5]*x[14]+0.1319*x[2]*x[5]*x[15]+0.9502*x[2]*x[5]*x[18]+0.4218*x[2]*x[6]*x[9]-0.7508*x[2]*x[6]*x[15]+0.6525*x[2]*x[7]*x[14]+0.9993*x[2]*x[8]*x[10]+0.7392*x[2]*x[8]*x[18]-0.5578*x[2]*x[9]*x[17]+0.3159*x[2]*x[11]*x[15]+0.3037*x[2]*x[12]*x[14]+0.0852*x[2]*x[12]*x[17]-0.6307*x[2]*x[16]*x[20]-0.4397*x[2]*x[18]*x[19]+0.0985*x[3]*x[4]*x[14]-0.0247*x[3]*x[4]*x[19]+0.7356*x[3]*x[5]*x[9]+0.2707*x[3]*x[5]*x[10]+0.6665*x[3]*x[5]*x[11]+0.608*x[3]*x[6]*x[9]+0.6959*x[3]*x[6]*x[18]+0.7523*x[3]*x[7]*x[16]-0.8268*x[3]*x[7]*x[17]+0.4572*x[3]*x[8]*x[9]+0.2725*x[3]*x[8]*x[12]-0.0429*x[3]*x[8]*x[15]+0.2474*x[3]*x[8]*x[18]-0.8109*x[3]*x[9]*x[11]-0.7249*x[3]*x[9]*x[14]+0.2603*x[3]*x[13]*x[17]+0.8931*x[3]*x[14]*x[15]+0.4423*x[3]*x[15]*x[19]+0.2654*x[3]*x[16]*x[19]+0.891*x[4]*x[5]*x[7]+0.6833*x[4]*x[5]*x[14]+0.8349*x[4]*x[6]*x[16]+0.4904*x[4]*x[7]*x[13]+0.2631*x[4]*x[7]*x[15]+0.7534*x[4]*x[8]*x[10]-0.7751*x[4]*x[8]*x[14]-0.1201*x[4]*x[8]*x[15]-0.0641*x[4]*x[9]*x[16]-0.4364*x[4]*x[10]*x[12]-0.8815*x[4]*x[10]*x[16]-0.9824*x[4]*x[10]*x[17]+0.7858*x[4]*x[11]*x[15]-0.9359*x[4]*x[11]*x[18]+0.8549*x[4]*x[12]*x[13]-0.0472*x[4]*x[12]*x[19]+0.3183*x[4]*x[13]*x[20]-0.3362*x[4]*x[14]*x[18]+0.4628*x[4]*x[16]*x[19]+0.34*x[5]*x[8]*x[18]+0.8695*x[5]*x[9]*x[15]+0.8798*x[5]*x[10]*x[17]-0.5692*x[5]*x[12]*x[17]-0.7922*x[5]*x[13]*x[19]-0.8701*x[5]*x[14]*x[16]-0.7386*x[5]*x[15]*x[20]+0.4216*x[5]*x[16]*x[18]-0.334*x[5]*x[16]*x[19]+0.3949*x[6]*x[7]*x[12]-0.7613*x[6]*x[7]*x[15]+0.1328*x[6]*x[7]*x[19]+0.2194*x[6]*x[8]*x[15]-0.9076*x[6]*x[8]*x[17]-0.385*x[6]*x[10]*x[15]+0.572*x[6]*x[11]*x[19]-0.5445*x[6]*x[15]*x[18]+0.2225*x[7]*x[8]*x[13]+0.3133*x[7]*x[9]*x[17]+0.4999*x[7]*x[10]*x[18]-0.7935*x[7]*x[11]*x[14]+0.398*x[7]*x[11]*x[16]+0.988*x[7]*x[13]*x[14]+0.8825*x[7]*x[14]*x[15]+0.8466*x[8]*x[9]*x[14]-0.7333*x[8]*x[10]*x[14]-0.9871*x[8]*x[10]*x[19]+0.9745*x[8]*x[11]*x[13]-0.6197*x[8]*x[12]*x[13]-0.5967*x[8]*x[12]*x[15]+0.8912*x[8]*x[12]*x[17]-0.3729*x[8]*x[13]*x[16]-0.9373*x[8]*x[13]*x[19]+0.1879*x[8]*x[17]*x[19]-0.1524*x[8]*x[18]*x[19]-0.2062*x[8]*x[19]*x[20]-0.9972*x[9]*x[10]*x[16]+0.9783*x[9]*x[11]*x[15]-0.4617*x[9]*x[11]*x[19]-0.4517*x[9]*x[12]*x[16]+0.3028*x[9]*x[13]*x[16]-0.2944*x[9]*x[13]*x[17]-0.3911*x[9]*x[15]*x[16]+0.7476*x[10]*x[12]*x[18]-0.9866*x[10]*x[14]*x[18]+0.4205*x[10]*x[15]*x[19]+0.54*x[11]*x[12]*x[16]+0.1625*x[11]*x[13]*x[14]-0.5377*x[11]*x[14]*x[15]-0.2836*x[11]*x[14]*x[17]-0.977*x[11]*x[14]*x[18]-0.1471*x[11]*x[16]*x[18]+0.1318*x[11]*x[18]*x[20]-0.4121*x[12]*x[13]*x[16]-0.9774*x[12]*x[14]*x[20]-0.1163*x[13]*x[17]*x[18]+0.0069*x[13]*x[18]*x[19]+0.8742*x[14]*x[18]*x[20]+0.6741*x[15]*x[16]*x[20]-0.6596*x[18]*x[19]*x[20] <= 44.313)
@NLconstraint(m, e5, 0.6613*x[6]-0.9446*x[6]^3+0.0699*x[13]-0.2111*x[13]^2+(-0.2976*x[1]*x[9])-0.6514*x[3]*x[13]+0.8964*x[4]*x[7]-0.0991*x[4]*x[14]+0.4169*x[4]*x[20]-0.3831*x[5]*x[11]-0.9155*x[6]*x[15]+0.3015*x[6]*x[16]+0.335*x[8]*x[15]+0.3487*x[8]*x[19]+0.2746*x[9]*x[11]+0.4726*x[11]*x[12]+0.9082*x[13]*x[20]-0.8095*x[14]*x[17]+0.6985*x[14]*x[18]-0.4034*x[1]+0.5312*x[3]+0.5857*x[4]+0.1663*x[5]+0.705*x[7]+0.4206*x[8]-0.7475*x[9]+0.709*x[11]+0.4126*x[12]+0.102*x[14]+0.273*x[15]-0.92*x[16]-0.3571*x[17]+0.557*x[18]+0.1102*x[19]-0.1647*x[20]+0.2384*x[2]^2*x[14]-0.2133*x[2]^2*x[4]+0.9116*x[3]^2*x[17]-0.7438*x[4]^2*x[10]-0.5368*x[5]^2*x[3]+0.642*x[5]^2*x[14]-0.2733*x[10]^2*x[3]+0.7656*x[10]^2*x[11]-0.5038*x[10]^2*x[19]-0.7879*x[11]^2*x[17]-0.7385*x[11]^2*x[20]+0.2762*x[12]^2*x[6]+0.4939*x[13]^2*x[15]+0.8633*x[15]^2*x[19]-0.4516*x[16]^2*x[1]-0.4178*x[16]^2*x[2]-0.45*x[18]^2*x[6]-0.5254*x[18]^2*x[7]-0.5279*x[2]+0.9191*x[10]+0.2511*x[1]*x[3]*x[19]-0.0441*x[1]*x[2]*x[18]-0.8404*x[1]*x[5]*x[17]-0.8762*x[1]*x[6]*x[12]-0.4984*x[1]*x[6]*x[13]+0.2966*x[1]*x[6]*x[20]-0.4247*x[1]*x[8]*x[14]-0.7016*x[1]*x[8]*x[19]-0.6425*x[1]*x[10]*x[13]-0.467*x[1]*x[10]*x[15]+0.6887*x[1]*x[14]*x[15]-0.3424*x[2]*x[3]*x[7]+0.3724*x[2]*x[3]*x[12]-0.0031*x[2]*x[3]*x[19]+0.4324*x[2]*x[4]*x[16]-0.0226*x[2]*x[4]*x[18]+0.8553*x[2]*x[5]*x[14]-0.9434*x[2]*x[5]*x[16]+0.639*x[2]*x[6]*x[17]+0.5211*x[2]*x[8]*x[13]-0.4491*x[2]*x[8]*x[16]+0.4943*x[2]*x[9]*x[18]-0.8952*x[2]*x[10]*x[16]+0.1532*x[2]*x[10]*x[20]+0.4588*x[2]*x[12]*x[20]+0.6122*x[2]*x[14]*x[15]+0.7343*x[2]*x[15]*x[17]+0.4915*x[2]*x[18]*x[19]-0.9515*x[2]*x[18]*x[20]+0.3888*x[3]*x[4]*x[9]-0.2404*x[3]*x[4]*x[14]+0.15*x[3]*x[5]*x[12]-0.4279*x[3]*x[5]*x[15]-0.4377*x[3]*x[6]*x[8]-0.5076*x[3]*x[6]*x[10]+0.3839*x[3]*x[6]*x[15]+0.9401*x[3]*x[6]*x[17]+0.2209*x[3]*x[9]*x[13]-0.3757*x[3]*x[9]*x[18]+0.5277*x[3]*x[11]*x[16]+0.5675*x[3]*x[11]*x[17]+0.0775*x[3]*x[12]*x[13]-0.4755*x[3]*x[12]*x[16]+0.9394*x[3]*x[15]*x[17]-0.5058*x[3]*x[15]*x[19]-0.5382*x[3]*x[16]*x[18]-0.2859*x[3]*x[18]*x[19]+0.1482*x[4]*x[5]*x[19]+0.9899*x[4]*x[6]*x[18]-0.5227*x[4]*x[7]*x[10]+0.6998*x[4]*x[7]*x[11]+0.0174*x[4]*x[7]*x[12]-0.7709*x[4]*x[7]*x[17]+0.883*x[4]*x[7]*x[18]-0.8109*x[4]*x[8]*x[10]+0.6312*x[4]*x[8]*x[18]+0.9447*x[4]*x[9]*x[12]-0.9375*x[4]*x[9]*x[13]+0.8864*x[4]*x[9]*x[15]-0.5004*x[4]*x[10]*x[17]-0.8053*x[4]*x[12]*x[18]+0.2195*x[4]*x[13]*x[17]-0.234*x[4]*x[14]*x[20]-0.7908*x[4]*x[15]*x[18]+0.7919*x[4]*x[16]*x[18]+0.6942*x[5]*x[6]*x[8]+0.8571*x[5]*x[6]*x[14]-0.1571*x[5]*x[6]*x[16]+0.5811*x[5]*x[6]*x[19]-0.2487*x[5]*x[7]*x[16]-0.6019*x[5]*x[8]*x[10]-0.7045*x[5]*x[9]*x[12]+0.0592*x[5]*x[9]*x[14]-0.6724*x[5]*x[10]*x[14]-0.421*x[5]*x[11]*x[15]+0.6139*x[5]*x[11]*x[19]+0.5564*x[5]*x[12]*x[17]-0.7518*x[5]*x[14]*x[17]-0.2739*x[5]*x[15]*x[16]-0.718*x[5]*x[15]*x[18]-0.14*x[5]*x[16]*x[19]-0.8095*x[6]*x[8]*x[12]-0.9427*x[6]*x[8]*x[15]+0.5366*x[6]*x[8]*x[16]-0.3377*x[6]*x[10]*x[14]-0.6335*x[6]*x[12]*x[16]+0.6933*x[6]*x[12]*x[17]+0.8241*x[6]*x[12]*x[19]+0.4383*x[6]*x[13]*x[15]+0.4185*x[6]*x[14]*x[18]-0.6389*x[6]*x[14]*x[19]+0.8738*x[6]*x[15]*x[17]-0.0156*x[7]*x[8]*x[17]+0.4462*x[7]*x[9]*x[17]+0.2344*x[7]*x[10]*x[14]+0.9554*x[7]*x[10]*x[15]-0.4436*x[7]*x[10]*x[19]-0.2648*x[7]*x[11]*x[14]-0.8958*x[7]*x[11]*x[19]+0.3373*x[7]*x[12]*x[16]-0.0183*x[7]*x[12]*x[17]-0.6473*x[8]*x[9]*x[16]-0.8287*x[8]*x[10]*x[17]+0.8722*x[8]*x[11]*x[12]+0.0715*x[8]*x[11]*x[13]+0.2002*x[8]*x[12]*x[14]+0.2402*x[8]*x[12]*x[16]+0.5895*x[8]*x[12]*x[19]+0.0149*x[8]*x[13]*x[16]+0.7454*x[8]*x[13]*x[19]+0.8353*x[8]*x[13]*x[20]-0.554*x[8]*x[14]*x[17]+0.7248*x[8]*x[18]*x[19]-0.5567*x[8]*x[18]*x[20]-0.2197*x[9]*x[11]*x[13]-0.984*x[9]*x[11]*x[14]+0.8626*x[9]*x[12]*x[14]-0.132*x[9]*x[14]*x[19]+0.3312*x[9]*x[15]*x[16]+0.6977*x[9]*x[15]*x[17]-0.6333*x[9]*x[15]*x[20]+0.9462*x[9]*x[16]*x[18]+0.3377*x[9]*x[16]*x[19]+0.8181*x[10]*x[12]*x[16]-0.0449*x[10]*x[13]*x[17]+0.4092*x[10]*x[13]*x[19]-0.6037*x[10]*x[13]*x[20]-0.2328*x[10]*x[14]*x[16]+0.6642*x[10]*x[16]*x[17]-0.2148*x[11]*x[12]*x[13]-0.6358*x[11]*x[13]*x[16]-0.6175*x[11]*x[14]*x[16]+0.2432*x[11]*x[14]*x[18]-0.5227*x[11]*x[16]*x[20]-0.6405*x[12]*x[13]*x[14]+0.6669*x[12]*x[15]*x[17]-0.3384*x[12]*x[18]*x[19]-0.232*x[13]*x[17]*x[18]-0.9678*x[13]*x[17]*x[20]+0.0178*x[16]*x[18]*x[19] <= 54.676)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.