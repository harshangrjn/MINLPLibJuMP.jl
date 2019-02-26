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
@NLconstraint(m, e1, -(-0.6117*x[1]*x[2]-1.8129*x[1]*x[3]-0.3188*x[1]*x[12]+0.6034*x[1]*x[14]-1.595*x[2]*x[6]-0.0785*x[2]*x[12]-1.5977*x[3]*x[5]+1.0218*x[3]*x[7]+1.007*x[3]*x[15]-0.7261*x[3]*x[19]-1.2991*x[4]*x[8]+0.3496*x[4]*x[12]+0.4493*x[4]*x[14]-1.4674*x[5]*x[8]+1.8742*x[5]*x[9]+1.4198*x[5]*x[14]+1.7508*x[6]*x[14]-0.9245*x[7]*x[10]+1.4228*x[7]*x[13]+0.6879*x[7]*x[15]-1.5367*x[7]*x[16]-0.6437*x[7]*x[18]-1.9394*x[8]*x[11]+0.4742*x[8]*x[14]-0.0775*x[8]*x[15]-0.2181*x[8]*x[18]+1.9917*x[9]*x[12]+1.7145*x[9]*x[15]+0.7704*x[9]*x[20]+1.0388*x[10]*x[10]-0.5008*x[10]*x[15]+1.6354*x[10]*x[16]+0.216*x[11]*x[14]+0.6619*x[11]*x[17]-0.7848*x[11]*x[18]-0.1379*x[11]*x[19]-1.4819*x[11]*x[20]-0.1725*x[12]*x[14]+1.8637*x[12]*x[20]+1.5893*x[13]*x[15]+1.0944*x[13]*x[16]+1.7884*x[13]*x[17]+1.961*x[13]*x[19]+0.0147*x[14]*x[14]+0.3278*x[14]*x[17]+1.2552*x[14]*x[19]+1.815*x[15]*x[20]+0.8361*x[16]*x[17]+0.9861*x[17]*x[17]-1.5423*x[18]*x[19]+0.6317*x[18]*x[20]-0.9728*x[20]*x[20]+0.7333*x[1]+0.2647*x[2]-0.5144*x[3]-0.6792*x[4]-0.9575*x[5]-0.6195*x[6]-0.3753*x[7]+0.6193*x[8]+0.1474*x[9]+0.6525*x[10]-0.4271*x[11]-0.679*x[12]-0.3382*x[13]-0.4683*x[14]+0.0896*x[15]+0.107*x[16]-0.9568*x[17]-0.7025*x[18]-0.7902*x[19]+0.2284*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 1.667*x[1]*x[7]+1.1174*x[2]*x[3]-1.4507*x[2]*x[9]-1.762*x[2]*x[10]+0.8026*x[2]*x[15]+1.4557*x[2]*x[17]+0.4529*x[3]*x[7]-0.9965*x[3]*x[20]-0.237*x[4]*x[6]+1.3703*x[4]*x[7]-0.7735*x[4]*x[14]+0.8382*x[4]*x[17]-1.4581*x[4]*x[19]+1.8905*x[5]*x[5]+1.963*x[5]*x[12]-0.0647*x[5]*x[13]-0.9675*x[5]*x[17]+1.3911*x[5]*x[19]-0.9725*x[6]*x[7]-1.0578*x[6]*x[10]-1.4171*x[6]*x[18]-1.7049*x[7]*x[7]+0.8599*x[7]*x[8]+0.0911*x[7]*x[14]+0.319*x[7]*x[19]-1.5141*x[8]*x[12]+1.3157*x[8]*x[15]-1.5602*x[8]*x[16]+0.1747*x[8]*x[18]+0.8828*x[8]*x[20]-0.7625*x[9]*x[10]+0.3506*x[9]*x[11]-1.4378*x[9]*x[14]+1.7714*x[9]*x[18]+0.7344*x[10]*x[13]+1.2432*x[10]*x[14]+0.5907*x[11]*x[15]+0.4863*x[11]*x[17]-0.2337*x[12]*x[14]-1.4289*x[12]*x[15]+1.1012*x[12]*x[16]-0.4074*x[13]*x[13]-1.0302*x[13]*x[14]-0.9647*x[13]*x[17]+1.9687*x[13]*x[19]+0.2368*x[13]*x[20]+1.7309*x[14]*x[15]+1.0147*x[14]*x[18]-0.4171*x[15]*x[15]+1.0324*x[15]*x[20]+1.8287*x[17]*x[18]+0.5333*x[19]*x[19]+0.5307*x[1]+0.753*x[2]-0.8016*x[3]-0.331*x[4]+0.2902*x[5]-0.7368*x[6]+0.6151*x[7]+0.0837*x[8]-0.4685*x[9]-0.0823*x[10]+0.0219*x[11]+0.0097*x[12]+0.9235*x[13]+0.1005*x[14]-0.6207*x[15]-0.5978*x[16]-0.5025*x[17]+0.9402*x[18]+0.5528*x[19]-0.4546*x[20] <= 49.695)
@NLconstraint(m, e3, 1.8543*x[1]*x[10]-0.392*x[1]*x[8]-0.8289*x[1]*x[12]+1.6524*x[2]*x[7]-0.3037*x[2]*x[9]+1.0706*x[2]*x[11]+1.5883*x[2]*x[19]+1.3266*x[3]*x[11]+1.298*x[3]*x[15]-1.3859*x[4]*x[8]+1.0739*x[4]*x[13]+1.6232*x[5]*x[5]+0.7204*x[5]*x[7]+0.9177*x[5]*x[9]+0.9087*x[5]*x[10]-0.7489*x[5]*x[11]+1.6292*x[5]*x[15]-0.9745*x[5]*x[16]+0.1274*x[5]*x[19]-0.7397*x[6]*x[8]-1.5344*x[6]*x[18]+0.7055*x[7]*x[7]+1.1618*x[7]*x[14]-1.367*x[7]*x[15]+1.8372*x[7]*x[20]+0.4882*x[8]*x[15]+0.4986*x[8]*x[17]+0.9937*x[8]*x[19]+1.7104*x[9]*x[10]-1.6589*x[9]*x[13]+1.1234*x[9]*x[14]-1.0402*x[9]*x[16]+1.458*x[10]*x[16]-0.0286*x[11]*x[16]+1.9522*x[11]*x[17]-1.0689*x[12]*x[14]+1.5417*x[12]*x[16]+0.2378*x[12]*x[17]-1.8456*x[12]*x[18]-1.658*x[13]*x[14]+0.8962*x[13]*x[15]-0.4439*x[14]*x[18]-1.2811*x[14]*x[20]-0.2185*x[15]*x[15]-0.3386*x[15]*x[16]-0.6359*x[15]*x[17]-0.7681*x[15]*x[18]-0.0355*x[16]*x[20]-0.3728*x[17]*x[17]-0.2363*x[17]*x[19]-0.8408*x[18]*x[19]+1.8811*x[20]*x[20]-0.9605*x[1]+0.9985*x[2]+0.9604*x[3]+0.2233*x[4]+0.1751*x[5]+0.9245*x[6]+0.7868*x[7]-0.5956*x[8]-0.9745*x[9]-0.49*x[10]+0.7809*x[11]-0.4609*x[12]+0.778*x[13]+0.0383*x[14]-0.2656*x[15]+0.9676*x[16]+0.7539*x[17]+0.3629*x[18]-0.2751*x[19]-0.6036*x[20] <= 18.723)
@NLconstraint(m, e4, (-0.0859*x[1]*x[2])-0.6436*x[1]*x[10]+0.6287*x[1]*x[17]+0.6069*x[2]*x[3]+0.4746*x[2]*x[4]+0.777*x[2]*x[12]+0.8266*x[2]*x[15]+0.2288*x[2]*x[18]-1.9306*x[3]*x[5]+1.6939*x[3]*x[6]-1.0294*x[3]*x[8]+1.9747*x[3]*x[11]-1.445*x[3]*x[13]-0.1552*x[3]*x[14]-0.4753*x[4]*x[4]+1.2309*x[4]*x[6]+0.0397*x[4]*x[15]-1.9527*x[4]*x[20]+0.5574*x[5]*x[15]-1.7424*x[5]*x[16]-1.6474*x[5]*x[17]+1.3817*x[6]*x[7]+0.8926*x[6]*x[8]+0.82*x[6]*x[9]+1.4272*x[6]*x[15]+0.4992*x[6]*x[17]+1.3194*x[6]*x[18]-0.3335*x[6]*x[19]+1.9137*x[6]*x[20]+1.3148*x[7]*x[7]+0.9445*x[7]*x[10]+0.455*x[7]*x[20]-0.1562*x[8]*x[9]+0.1295*x[8]*x[13]-1.1985*x[8]*x[14]+1.2874*x[8]*x[15]+1.3009*x[9]*x[13]+1.0801*x[9]*x[20]+0.147*x[10]*x[11]-0.9814*x[10]*x[14]+1.9221*x[10]*x[19]-0.3003*x[10]*x[20]-1.2497*x[11]*x[13]+1.3023*x[11]*x[14]-1.0213*x[13]*x[16]-1.9427*x[14]*x[18]-1.1855*x[15]*x[15]+0.2409*x[15]*x[16]+0.856*x[15]*x[18]-1.3619*x[16]*x[16]+1.6608*x[16]*x[18]-0.6083*x[16]*x[20]-0.0621*x[1]-0.674*x[2]+0.0977*x[3]-0.3899*x[4]-0.6912*x[5]+0.15*x[6]-0.7118*x[7]-0.6134*x[8]+0.3822*x[9]+0.9004*x[10]-0.7372*x[11]+0.42*x[12]-0.2405*x[13]-0.204*x[14]-0.998*x[15]-0.1736*x[16]+0.6076*x[17]+0.7557*x[18]-0.7184*x[19]-0.9139*x[20] <= 56.565)
@NLconstraint(m, e5, 1.894*x[1]*x[7]-1.0094*x[1]*x[10]-0.2223*x[1]*x[13]-1.1005*x[1]*x[17]+0.7866*x[2]*x[10]-0.2435*x[2]*x[12]-0.6227*x[2]*x[18]-0.5351*x[3]*x[5]-1.4488*x[3]*x[9]+0.1968*x[3]*x[12]-0.6627*x[3]*x[13]+0.1659*x[3]*x[15]+1.9599*x[3]*x[17]+1.1009*x[3]*x[18]-0.6578*x[3]*x[19]-1.3956*x[3]*x[20]+1.24*x[4]*x[4]-0.2933*x[4]*x[5]+1.9082*x[4]*x[14]+1.172*x[4]*x[15]+1.727*x[4]*x[20]-1.7517*x[5]*x[5]+1.3723*x[5]*x[7]+1.3204*x[5]*x[9]-1.4502*x[5]*x[11]-1.1138*x[5]*x[18]+0.6959*x[5]*x[19]+1.8264*x[6]*x[9]-1.0457*x[6]*x[10]+0.7079*x[6]*x[18]-0.5358*x[6]*x[19]-1.9877*x[7]*x[17]-1.9945*x[8]*x[11]-1.805*x[9]*x[13]+0.3789*x[9]*x[14]+0.9914*x[9]*x[17]-1.3346*x[9]*x[19]+1.3358*x[10]*x[14]+0.538*x[10]*x[15]+1.8422*x[10]*x[19]+0.7765*x[11]*x[13]-1.2622*x[11]*x[14]+1.6113*x[11]*x[15]-0.8559*x[12]*x[19]+0.6595*x[13]*x[15]+1.5161*x[13]*x[16]+0.4398*x[13]*x[19]+1.7565*x[14]*x[14]+1.3107*x[14]*x[20]+1.1073*x[15]*x[17]+0.7851*x[15]*x[18]-1.0249*x[18]*x[20]+0.8643*x[1]+0.533*x[2]+0.1871*x[3]-0.1905*x[4]+0.9994*x[5]-0.7306*x[6]-0.2797*x[7]-0.7742*x[8]+0.2634*x[9]-0.6882*x[10]-0.1916*x[11]-0.6292*x[12]+0.3706*x[13]+0.2252*x[14]-0.5111*x[15]-0.7106*x[16]+0.436*x[17]+0.6397*x[18]-0.7626*x[19]-0.7465*x[20] <= 28.634)
@NLconstraint(m, e6, 1.2871*x[1]*x[5]-0.8953*x[1]*x[12]-1.2742*x[1]*x[14]+1.3248*x[2]*x[2]-1.0415*x[2]*x[3]+0.9667*x[2]*x[4]-0.1849*x[2]*x[5]+1.6306*x[2]*x[6]-0.964*x[2]*x[8]-0.5246*x[2]*x[9]+1.0674*x[2]*x[10]+1.963*x[2]*x[11]-1.1491*x[2]*x[17]-0.1184*x[3]*x[6]-0.4162*x[3]*x[11]-0.5624*x[3]*x[17]+0.5878*x[3]*x[19]+0.4155*x[4]*x[8]-0.5919*x[4]*x[9]+1.1935*x[4]*x[12]-0.2344*x[4]*x[14]+1.4148*x[4]*x[17]-0.42*x[5]*x[9]+1.8633*x[5]*x[17]-0.5642*x[5]*x[18]+0.8765*x[5]*x[19]+0.5145*x[6]*x[6]-1.1965*x[6]*x[7]+0.3559*x[6]*x[14]-0.2564*x[6]*x[15]-0.0435*x[6]*x[20]+1.9663*x[7]*x[12]-0.914*x[7]*x[15]+0.3176*x[7]*x[16]+0.711*x[8]*x[13]+0.5944*x[9]*x[9]-1.651*x[9]*x[13]-0.9838*x[9]*x[14]+0.4257*x[10]*x[12]+0.732*x[10]*x[13]-0.1848*x[10]*x[16]+0.5944*x[10]*x[18]-1.5456*x[10]*x[19]-1.8758*x[11]*x[11]-1.2626*x[11]*x[13]-1.5307*x[11]*x[14]-0.3621*x[11]*x[17]-0.6273*x[12]*x[13]+0.0926*x[12]*x[17]+1.9721*x[15]*x[16]+1.5207*x[16]*x[18]+0.0616*x[17]*x[18]-0.8113*x[1]+0.3038*x[2]+0.8093*x[3]+0.5277*x[4]+0.7849*x[5]+0.6706*x[6]+0.0152*x[7]-0.009*x[8]+0.0082*x[9]+0.5372*x[10]-0.2333*x[11]-0.8164*x[12]+0.8521*x[13]+0.4163*x[14]+0.6625*x[15]+0.6022*x[16]+0.1782*x[17]+0.63*x[18]+0.4385*x[19]+0.9963*x[20] <= 93.685)
@NLconstraint(m, e7, 1.7895*x[1]*x[2]-0.9541*x[1]*x[3]-0.6608*x[1]*x[7]-1.0332*x[1]*x[9]-1.4072*x[1]*x[10]+1.301*x[1]*x[12]-1.6924*x[2]*x[6]-0.0884*x[2]*x[12]-0.7052*x[2]*x[16]-0.1026*x[3]*x[11]-1.7334*x[3]*x[13]-0.1842*x[3]*x[17]-1.3357*x[3]*x[19]-0.2437*x[4]*x[10]+1.7146*x[4]*x[12]-1.2459*x[4]*x[18]+0.6768*x[5]*x[7]-0.5831*x[5]*x[10]+1.5431*x[5]*x[19]+0.9586*x[6]*x[10]+1.6047*x[6]*x[14]-1.6835*x[6]*x[16]-1.4392*x[6]*x[19]-1.9949*x[7]*x[10]-1.2534*x[7]*x[12]+1.9316*x[7]*x[17]+1.1265*x[7]*x[18]-1.7823*x[7]*x[20]-1.673*x[8]*x[10]+1.573*x[8]*x[11]+1.6562*x[8]*x[14]+1.0499*x[9]*x[16]+1.745*x[9]*x[18]-1.3287*x[9]*x[20]-1.5289*x[10]*x[14]-1.2088*x[10]*x[18]-0.1361*x[10]*x[19]-0.4612*x[11]*x[19]+0.9552*x[12]*x[13]-1.662*x[12]*x[17]+0.9386*x[13]*x[14]-1.0576*x[13]*x[16]+0.7041*x[13]*x[19]+0.5337*x[14]*x[15]+1.6083*x[14]*x[17]-0.0766*x[14]*x[19]+0.0734*x[15]*x[15]+1.7683*x[15]*x[17]+0.7362*x[15]*x[18]+1.5142*x[15]*x[19]-1.6586*x[16]*x[20]-1.7812*x[17]*x[19]-0.9407*x[1]-0.5041*x[2]-0.4612*x[3]+0.6372*x[4]-0.9423*x[5]+0.4769*x[6]+0.6691*x[7]-0.6518*x[8]+0.5892*x[9]+0.1282*x[10]-0.0097*x[11]-0.0037*x[12]-0.4974*x[13]-0.1368*x[14]-0.663*x[15]-0.3471*x[16]-0.9665*x[17]-0.6331*x[18]-0.0998*x[19]+0.9348*x[20] <= 22.077)
@NLconstraint(m, e8, (-1.1231*x[1]*x[14])-1.8626*x[1]*x[18]+0.327*x[2]*x[2]+1.6463*x[2]*x[10]-0.1286*x[2]*x[14]+0.8925*x[2]*x[18]-1.1592*x[2]*x[19]+0.292*x[3]*x[3]+0.4666*x[3]*x[4]-1.9703*x[3]*x[5]+1.604*x[3]*x[7]-0.2293*x[3]*x[8]+1.831*x[3]*x[9]-1.344*x[3]*x[10]+0.0006*x[3]*x[14]+1.5751*x[4]*x[10]-0.4506*x[4]*x[12]-0.7374*x[4]*x[13]+0.8911*x[4]*x[16]-1.6995*x[5]*x[12]+1.1905*x[5]*x[18]+0.4695*x[5]*x[19]+0.382*x[6]*x[9]+1.2022*x[6]*x[13]+0.9576*x[6]*x[14]+0.1715*x[7]*x[8]+0.1422*x[7]*x[9]-0.1221*x[7]*x[12]-1.7606*x[7]*x[20]+1.2539*x[8]*x[12]-1.3906*x[8]*x[18]+0.0369*x[9]*x[12]-1.7392*x[9]*x[13]-1.0026*x[9]*x[14]+1.9951*x[9]*x[15]-1.1637*x[9]*x[16]+0.9673*x[9]*x[20]+0.304*x[10]*x[18]+0.4996*x[11]*x[12]-1.1612*x[11]*x[14]-0.3673*x[12]*x[18]+0.2553*x[12]*x[20]+1.6607*x[13]*x[13]+1.8857*x[13]*x[14]+0.0063*x[14]*x[14]+0.8143*x[15]*x[17]-0.8207*x[15]*x[19]-0.4632*x[16]*x[16]-1.353*x[16]*x[17]-0.3346*x[17]*x[18]+0.0803*x[18]*x[18]+0.7918*x[18]*x[20]+0.9703*x[1]+0.9858*x[2]+0.859*x[3]+0.0264*x[4]-0.8325*x[5]-0.2402*x[6]+0.9962*x[7]-0.612*x[8]-0.7468*x[9]+0.5066*x[10]+0.5209*x[11]-0.8096*x[12]+0.2097*x[13]-0.8223*x[14]+0.8219*x[15]+0.8915*x[16]+0.4384*x[17]+0.0104*x[18]-0.6145*x[19]+0.3569*x[20] <= 45.823)
@NLconstraint(m, e9, 0.288*x[1]*x[17]-1.8829*x[1]*x[20]-0.4767*x[2]*x[3]-0.4357*x[2]*x[4]+1.863*x[2]*x[5]+1.4403*x[2]*x[7]-0.1935*x[2]*x[10]-1.4438*x[2]*x[17]-0.4843*x[3]*x[4]+0.4833*x[3]*x[8]-0.4773*x[3]*x[11]+0.9615*x[3]*x[14]+0.3636*x[4]*x[8]+0.3913*x[4]*x[9]-1.8953*x[4]*x[11]+1.0736*x[4]*x[15]-1.58*x[4]*x[19]+1.7416*x[5]*x[5]+1.0889*x[5]*x[9]-0.4771*x[5]*x[12]-0.4416*x[5]*x[14]-0.0924*x[5]*x[15]-1.5454*x[5]*x[16]-0.081*x[5]*x[18]-0.858*x[6]*x[15]-0.1025*x[6]*x[20]+1.3387*x[7]*x[8]+1.7997*x[7]*x[9]-1.25*x[7]*x[10]-1.6331*x[7]*x[15]-0.7224*x[7]*x[16]-0.745*x[7]*x[18]-1.765*x[8]*x[12]-1.866*x[8]*x[15]-1.8189*x[8]*x[19]-1.2604*x[9]*x[12]-1.0622*x[9]*x[13]-0.7302*x[9]*x[17]-0.8948*x[9]*x[20]-0.868*x[10]*x[14]-1.9463*x[11]*x[12]-0.0355*x[11]*x[13]-1.0562*x[11]*x[14]+0.5524*x[11]*x[15]-1.9893*x[11]*x[18]+1.9029*x[11]*x[19]-1.6215*x[13]*x[13]+1.5016*x[13]*x[15]+0.284*x[14]*x[16]-1.3517*x[15]*x[18]+1.2022*x[17]*x[18]+1.7104*x[18]*x[20]-0.1622*x[1]-0.0369*x[2]-0.5992*x[3]+0.9241*x[4]+0.9873*x[5]+0.5992*x[6]+0.8133*x[7]+0.4239*x[8]-0.1981*x[9]+0.5006*x[10]-0.5385*x[11]+0.1593*x[12]-0.0871*x[13]-0.9382*x[14]-0.0148*x[15]-0.4904*x[16]+0.5096*x[17]-0.4809*x[18]-0.4848*x[19]+0.3062*x[20] <= 96.591)
@NLconstraint(m, e10, 1.0756*x[1]*x[6]-0.2715*x[1]*x[12]+0.9367*x[1]*x[13]-0.1951*x[1]*x[14]+1.1552*x[2]*x[10]+1.5268*x[2]*x[14]-0.0368*x[2]*x[16]-1.6967*x[2]*x[17]-0.6452*x[2]*x[20]-0.961*x[3]*x[7]-1.6975*x[3]*x[9]+0.068*x[3]*x[12]-0.5934*x[3]*x[15]+0.816*x[4]*x[7]-0.0439*x[4]*x[10]+0.2156*x[4]*x[17]-0.6318*x[5]*x[6]+1.2849*x[5]*x[9]-0.5381*x[5]*x[15]+0.3521*x[5]*x[20]+0.4291*x[6]*x[10]-0.0539*x[7]*x[11]-0.3175*x[7]*x[12]+1.6705*x[7]*x[14]-1.5327*x[7]*x[15]+0.4177*x[7]*x[18]+1.9647*x[7]*x[19]+0.5044*x[8]*x[9]-0.7283*x[8]*x[12]+1.5223*x[8]*x[13]-0.9697*x[8]*x[14]+0.0109*x[8]*x[17]-1.5603*x[9]*x[10]+1.1111*x[9]*x[12]-1.8319*x[9]*x[15]-1.9996*x[9]*x[16]-0.7956*x[10]*x[15]-1.9951*x[10]*x[19]+1.2308*x[11]*x[13]+1.1905*x[11]*x[14]+1.3445*x[11]*x[15]-0.6441*x[11]*x[19]+0.9541*x[11]*x[20]-1.0312*x[12]*x[16]-1.7827*x[12]*x[18]+1.8304*x[13]*x[15]-1.6907*x[13]*x[19]+0.7342*x[13]*x[20]-0.9223*x[14]*x[20]-1.3326*x[15]*x[15]+0.0465*x[16]*x[20]+0.108*x[17]*x[18]-0.6343*x[1]+0.7847*x[2]+0.2423*x[3]-0.357*x[4]-0.2066*x[5]-0.1247*x[6]-0.9086*x[7]-0.4053*x[8]-0.6526*x[9]-0.7753*x[10]+0.6139*x[11]+0.0606*x[12]-0.4917*x[13]+0.82*x[14]-0.8487*x[15]-0.4958*x[16]-0.4949*x[17]+0.7862*x[18]+0.7091*x[19]-0.6288*x[20] <= 85.414)
@NLconstraint(m, e11, (-0.5283*x[1]*x[15])-0.9504*x[1]*x[17]+0.7254*x[2]*x[3]+0.6694*x[2]*x[4]+0.2467*x[2]*x[7]-0.7048*x[3]*x[14]+0.9626*x[3]*x[15]+1.3073*x[3]*x[17]-1.2149*x[4]*x[5]-0.5358*x[4]*x[12]+1.9794*x[4]*x[13]+1.5365*x[4]*x[14]+1.0108*x[4]*x[15]+1.3168*x[4]*x[17]+1.7676*x[4]*x[19]-0.226*x[5]*x[8]+1.7205*x[5]*x[9]-0.3986*x[5]*x[10]+1.3806*x[5]*x[11]+0.5583*x[6]*x[13]+1.5187*x[6]*x[15]+1.3982*x[6]*x[16]+0.3418*x[6]*x[18]-0.8291*x[7]*x[12]+0.6688*x[7]*x[15]-1.0515*x[7]*x[16]-0.7638*x[7]*x[17]+0.2969*x[7]*x[19]-1.9482*x[7]*x[20]+1.6561*x[8]*x[10]-1.6671*x[8]*x[17]+1.7754*x[8]*x[19]-1.5988*x[9]*x[10]-0.4995*x[9]*x[15]+1.7033*x[9]*x[17]+1.6061*x[9]*x[18]+1.3851*x[10]*x[15]-0.7874*x[11]*x[12]+0.4016*x[12]*x[14]+1.0219*x[12]*x[15]+1.3877*x[12]*x[17]+1.2285*x[12]*x[19]-1.7999*x[13]*x[14]-1.5294*x[13]*x[19]-0.9156*x[14]*x[14]-0.4451*x[14]*x[15]-1.6489*x[14]*x[16]+0.5921*x[14]*x[18]-0.5504*x[15]*x[16]+1.7027*x[15]*x[17]+0.6363*x[15]*x[19]-0.4805*x[18]*x[20]+0.1445*x[1]-0.773*x[2]+0.1692*x[3]+0.8432*x[4]+0.8133*x[5]+0.1169*x[6]-0.1312*x[7]+0.9717*x[8]+0.3126*x[9]+0.4154*x[10]-0.0105*x[11]+0.4772*x[12]+0.1875*x[13]+0.9525*x[14]-0.3099*x[15]-0.239*x[16]+0.5059*x[17]+0.466*x[18]-0.334*x[19]+0.8077*x[20] <= 65.741)
@NLconstraint(m, e12, (-1.3751*x[1]*x[5])-0.2999*x[1]*x[10]+0.3934*x[1]*x[20]-1.731*x[2]*x[4]-0.0537*x[2]*x[6]-0.7812*x[2]*x[8]+1.0377*x[2]*x[9]+1.9986*x[2]*x[11]+1.5927*x[2]*x[14]+1.3042*x[2]*x[15]-0.0422*x[2]*x[17]+1.3916*x[3]*x[5]+0.8303*x[3]*x[6]-1.7455*x[3]*x[7]+0.3047*x[3]*x[8]-1.7274*x[3]*x[12]-0.5951*x[3]*x[19]-1.5269*x[4]*x[19]-0.4344*x[5]*x[6]+0.6244*x[5]*x[11]+0.45*x[5]*x[12]-0.0551*x[5]*x[13]+0.2356*x[5]*x[19]+0.6413*x[6]*x[10]-0.8968*x[6]*x[13]+1.4585*x[6]*x[14]-1.8159*x[7]*x[7]-1.5598*x[7]*x[10]+0.4724*x[7]*x[13]-1.2294*x[7]*x[15]+0.6758*x[7]*x[19]-0.3586*x[8]*x[8]-1.1537*x[8]*x[10]-0.9231*x[9]*x[11]+0.5772*x[9]*x[16]+1.5872*x[9]*x[17]+0.3001*x[9]*x[18]+1.9881*x[9]*x[19]-1.8843*x[10]*x[13]+1.3781*x[10]*x[15]-0.8292*x[11]*x[13]-0.7753*x[11]*x[19]+0.753*x[12]*x[12]+0.8148*x[12]*x[14]-1.0589*x[12]*x[15]+0.4907*x[12]*x[19]+0.5295*x[13]*x[13]-0.6883*x[13]*x[19]+1.812*x[14]*x[17]-0.7428*x[14]*x[19]-0.4933*x[16]*x[16]+0.1322*x[18]*x[20]+0.5923*x[1]+0.986*x[2]-0.0644*x[3]+0.6635*x[4]-0.7397*x[5]+0.942*x[6]-0.6956*x[7]+0.7189*x[8]+0.2027*x[9]+0.7485*x[10]+0.4619*x[11]+0.0043*x[12]+0.8381*x[13]-0.8394*x[14]-0.7701*x[15]-0.3017*x[16]-0.2722*x[17]+0.4795*x[18]+0.3531*x[19]+0.2825*x[20] <= 66.368)
@NLconstraint(m, e13, 1.9627*x[1]*x[8]-0.4487*x[1]*x[6]+0.0588*x[1]*x[10]+1.8944*x[1]*x[17]+1.8035*x[1]*x[19]+1.7729*x[2]*x[9]+0.3429*x[2]*x[19]-0.464*x[3]*x[7]+0.7028*x[3]*x[9]-1.0224*x[3]*x[10]-1.3043*x[3]*x[13]-0.0874*x[3]*x[14]+0.849*x[3]*x[16]-0.6708*x[3]*x[19]+1.2855*x[4]*x[5]-0.3829*x[4]*x[7]-1.6624*x[4]*x[13]-1.0809*x[4]*x[15]-1.3356*x[5]*x[9]+0.0861*x[5]*x[13]+0.3532*x[5]*x[14]-1.9971*x[6]*x[6]-1.6493*x[6]*x[7]+1.0648*x[6]*x[13]+0.0031*x[6]*x[16]+0.6341*x[7]*x[8]-1.96*x[7]*x[9]+1.4957*x[7]*x[11]+1.1652*x[7]*x[13]+0.4115*x[7]*x[14]+0.3745*x[7]*x[16]+1.8684*x[7]*x[18]-1.7118*x[8]*x[13]+0.8082*x[8]*x[14]+0.3607*x[9]*x[14]-0.3931*x[9]*x[15]-1.3494*x[9]*x[20]+1.2126*x[10]*x[12]+0.8316*x[10]*x[13]+1.402*x[11]*x[18]-1.3543*x[11]*x[19]+1.0915*x[12]*x[14]+0.0382*x[12]*x[18]+0.0962*x[13]*x[13]+0.7326*x[13]*x[16]-1.2282*x[14]*x[16]-1.4976*x[14]*x[17]-0.1584*x[14]*x[18]+1.1956*x[15]*x[17]+0.9008*x[15]*x[19]-0.0576*x[16]*x[18]-1.5911*x[17]*x[20]+0.2996*x[1]-0.319*x[2]+0.092*x[3]-0.9485*x[4]+0.7382*x[5]-0.1359*x[6]+0.3935*x[7]+0.8373*x[8]+0.8982*x[9]-0.5906*x[10]-0.1772*x[11]+0.834*x[12]-0.6971*x[13]-0.5593*x[14]+0.5782*x[15]-0.0524*x[16]+0.3458*x[17]-0.5235*x[18]-0.1639*x[19]+0.8372*x[20] <= 80.304)
@NLconstraint(m, e14, 0.5648*x[1]*x[10]-1.6766*x[1]*x[9]+1.5842*x[1]*x[15]-0.6642*x[2]*x[7]+0.6678*x[2]*x[9]-1.507*x[2]*x[10]-1.0287*x[2]*x[13]-0.2155*x[2]*x[14]-0.7515*x[2]*x[16]-1.2561*x[2]*x[17]+0.0996*x[2]*x[18]+1.7906*x[3]*x[8]-1.8168*x[3]*x[12]-1.5802*x[3]*x[13]-0.0179*x[4]*x[4]+0.7769*x[4]*x[6]+1.7466*x[4]*x[7]+1.3626*x[4]*x[9]-1.3991*x[4]*x[11]-1.8047*x[4]*x[13]+0.0759*x[5]*x[8]+1.1785*x[5]*x[15]-0.6705*x[7]*x[10]-0.9086*x[7]*x[13]+1.8902*x[7]*x[16]+1.1509*x[7]*x[17]-0.9856*x[7]*x[18]+1.6713*x[8]*x[13]+0.1954*x[8]*x[14]+0.6517*x[9]*x[9]+1.2686*x[9]*x[10]+0.3119*x[9]*x[17]+0.6756*x[9]*x[18]+1.9839*x[10]*x[11]+0.9939*x[10]*x[12]+0.7735*x[10]*x[14]-1.6357*x[10]*x[16]-1.2204*x[11]*x[12]+0.1004*x[11]*x[15]-0.914*x[11]*x[18]-0.1641*x[11]*x[20]-0.1587*x[12]*x[15]+1.3258*x[12]*x[18]-0.4277*x[12]*x[19]-0.5914*x[14]*x[17]-0.8583*x[14]*x[20]+0.8012*x[15]*x[15]-0.4307*x[15]*x[17]-0.4006*x[16]*x[18]-0.6494*x[17]*x[18]+0.5681*x[18]*x[19]-1.4689*x[20]*x[20]+0.2995*x[1]-0.2316*x[2]-0.7342*x[3]+0.3091*x[4]-0.114*x[5]-0.6494*x[6]-0.5173*x[7]-0.7047*x[8]-0.764*x[9]-0.2591*x[10]-0.6065*x[11]-0.5798*x[12]+0.1489*x[13]-0.7814*x[14]+0.0265*x[15]-0.0071*x[16]-0.985*x[17]+0.9441*x[18]+0.4356*x[19]+0.9238*x[20] <= 9.756)
@NLconstraint(m, e15, 1.6825*x[1]*x[6]-1.5876*x[1]*x[19]-1.3885*x[2]*x[5]+1.043*x[2]*x[13]-1.8571*x[2]*x[14]-0.9627*x[2]*x[15]+0.5935*x[2]*x[18]+0.1115*x[3]*x[8]+0.6215*x[3]*x[10]+0.6839*x[3]*x[13]-1.4049*x[3]*x[14]-1.0824*x[4]*x[4]+1.3354*x[4]*x[5]-1.3116*x[4]*x[9]+1.8408*x[4]*x[10]+0.9583*x[4]*x[12]-1.5253*x[4]*x[15]-0.4793*x[4]*x[16]+1.1316*x[5]*x[6]+1.9919*x[5]*x[8]-0.54*x[5]*x[10]+1.8644*x[5]*x[12]+0.2441*x[5]*x[17]-1.1134*x[6]*x[11]+0.9141*x[7]*x[9]-1.2113*x[7]*x[12]+0.2375*x[7]*x[14]+0.4367*x[7]*x[15]+0.3576*x[7]*x[16]-0.4902*x[7]*x[17]+0.555*x[8]*x[11]-1.5632*x[8]*x[12]+0.4572*x[8]*x[13]-0.1045*x[8]*x[16]-0.743*x[8]*x[18]+0.2625*x[8]*x[20]+0.2865*x[9]*x[13]+0.4161*x[9]*x[18]-0.7825*x[9]*x[20]+1.7584*x[10]*x[10]-0.5534*x[10]*x[13]+1.2831*x[10]*x[15]-1.3868*x[11]*x[14]-1.1074*x[11]*x[20]-1.4234*x[12]*x[14]+0.8357*x[12]*x[18]+0.2158*x[13]*x[15]-1.7758*x[14]*x[15]+1.5656*x[14]*x[16]-0.6024*x[14]*x[18]-1.5964*x[16]*x[18]-0.1461*x[18]*x[18]+0.402*x[1]+0.7113*x[2]-0.14*x[3]+0.1251*x[4]+0.0473*x[5]-0.5929*x[6]+0.0649*x[7]+0.9708*x[8]+0.6177*x[9]+0.5806*x[10]-0.1607*x[11]+0.059*x[12]-0.8811*x[13]-0.4492*x[14]+0.7614*x[15]+0.2033*x[16]-0.9171*x[17]-0.0382*x[18]-0.8299*x[19]-0.5709*x[20] <= 30.201)
@NLconstraint(m, e16, (-0.0086*x[1]*x[8])-0.8535*x[1]*x[17]+1.9849*x[1]*x[18]+0.5248*x[2]*x[6]+0.0915*x[2]*x[10]-1.8801*x[2]*x[11]+1.2968*x[2]*x[14]-0.7475*x[3]*x[3]-0.491*x[3]*x[7]+1.2302*x[3]*x[11]+1.2286*x[3]*x[14]-0.0959*x[3]*x[18]-0.5723*x[4]*x[15]+1.8601*x[4]*x[16]+1.1602*x[4]*x[17]+0.6564*x[5]*x[5]+1.6542*x[5]*x[7]-1.5663*x[5]*x[9]-0.7101*x[5]*x[10]+1.7913*x[5]*x[12]-1.1163*x[5]*x[13]-0.5904*x[5]*x[14]-0.2378*x[5]*x[16]+1.1968*x[6]*x[14]+1.6115*x[6]*x[19]-0.6933*x[7]*x[7]-0.2583*x[7]*x[11]-0.488*x[7]*x[12]+1.9105*x[7]*x[15]+1.9938*x[7]*x[19]-0.9231*x[8]*x[17]-1.0086*x[8]*x[20]+1.2755*x[9]*x[19]-1.635*x[9]*x[20]-1.7362*x[10]*x[14]-0.201*x[10]*x[15]-1.4666*x[10]*x[18]+1.7516*x[11]*x[13]+0.6705*x[11]*x[16]-0.5651*x[11]*x[17]-0.9856*x[11]*x[18]+1.1126*x[12]*x[15]-0.8165*x[12]*x[17]-0.8999*x[13]*x[14]-0.3238*x[14]*x[17]-0.6342*x[14]*x[18]-0.6982*x[14]*x[19]+0.5297*x[15]*x[17]+1.1859*x[16]*x[17]-0.5362*x[17]*x[18]+0.3074*x[18]*x[19]+1.9839*x[18]*x[20]+0.0795*x[1]-0.3467*x[2]+0.4255*x[3]+0.5645*x[4]-0.6424*x[5]+0.0119*x[6]-0.6729*x[7]+0.5847*x[8]+0.7055*x[9]+0.325*x[10]+0.2792*x[11]+0.0091*x[12]-0.8959*x[13]-0.2254*x[14]+0.718*x[15]+0.7289*x[16]+0.0895*x[17]-0.3158*x[18]-0.6424*x[19]-0.4076*x[20] <= 11.971)
@NLconstraint(m, e17, 0.4656*x[1]*x[9]-1.5573*x[1]*x[14]+1.4011*x[1]*x[16]+1.1338*x[2]*x[4]+0.4627*x[2]*x[6]-0.6004*x[2]*x[7]+1.9414*x[2]*x[9]-0.2828*x[2]*x[10]-1.8128*x[2]*x[11]+0.6512*x[2]*x[12]-1.6048*x[2]*x[13]-0.9379*x[2]*x[15]+1.4431*x[2]*x[17]+1.5009*x[3]*x[7]+1.4998*x[3]*x[11]+1.9059*x[3]*x[12]+1.8432*x[3]*x[13]-0.7397*x[3]*x[14]-1.2632*x[3]*x[19]-1.9292*x[4]*x[13]-1.8985*x[4]*x[14]-1.9679*x[4]*x[16]+0.3315*x[5]*x[5]-0.2592*x[5]*x[6]+1.548*x[5]*x[14]+0.8375*x[5]*x[15]+1.2862*x[6]*x[12]-1.5987*x[6]*x[17]+1.6614*x[6]*x[18]-0.3752*x[7]*x[11]+1.9885*x[7]*x[12]+1.3313*x[7]*x[16]+1.5711*x[8]*x[9]-1.112*x[8]*x[10]-0.594*x[8]*x[12]+0.2501*x[8]*x[15]+1.8038*x[8]*x[17]+0.8508*x[9]*x[15]+0.5099*x[9]*x[16]-0.0888*x[9]*x[18]+1.9758*x[10]*x[15]+1.3531*x[11]*x[20]+1.9501*x[12]*x[14]+1.4304*x[12]*x[15]+0.2512*x[13]*x[14]-0.6316*x[13]*x[19]+1.5141*x[14]*x[14]+1.7806*x[14]*x[16]-1.9892*x[14]*x[17]+0.2468*x[14]*x[18]-1.3099*x[15]*x[17]+1.6535*x[15]*x[19]+0.8245*x[1]-0.387*x[2]+0.2332*x[3]-0.2114*x[4]-0.5222*x[5]-0.1285*x[6]+0.2733*x[7]-0.5025*x[8]-0.3684*x[9]-0.1281*x[10]+0.7043*x[11]+0.4752*x[12]+0.4398*x[13]-0.2425*x[14]+0.0265*x[15]+0.1761*x[16]+0.6789*x[17]-0.2652*x[18]-0.7416*x[19]+0.3104*x[20] <= 79.189)
@NLconstraint(m, e18, 1.7072*x[2]*x[3]+0.977*x[2]*x[5]-0.2227*x[2]*x[6]-0.139*x[2]*x[8]-0.1228*x[2]*x[10]-1.0561*x[2]*x[19]+1.1989*x[3]*x[5]-1.4093*x[3]*x[7]-1.2385*x[3]*x[8]+0.0153*x[3]*x[13]-1.4461*x[3]*x[14]+0.9592*x[3]*x[15]+1.5812*x[3]*x[18]-1.8326*x[3]*x[19]+0.4147*x[4]*x[12]+0.6126*x[5]*x[7]+0.399*x[5]*x[8]+0.1067*x[5]*x[9]-0.8244*x[5]*x[10]-1.5069*x[5]*x[16]+0.5165*x[5]*x[17]+0.9061*x[6]*x[12]-1.9462*x[6]*x[15]+0.4779*x[7]*x[9]+0.4297*x[7]*x[10]-0.375*x[7]*x[14]+0.507*x[7]*x[16]+0.1926*x[7]*x[17]-1.5107*x[7]*x[18]-0.9088*x[7]*x[20]+0.0326*x[8]*x[10]+1.025*x[8]*x[11]+0.2433*x[8]*x[12]+0.8933*x[8]*x[16]-1.3801*x[9]*x[9]-1.8503*x[9]*x[13]+1.492*x[10]*x[11]+0.2848*x[10]*x[12]-0.9121*x[10]*x[15]-0.9378*x[11]*x[11]+1.8886*x[11]*x[16]-1.5903*x[11]*x[18]+1.7136*x[12]*x[14]+0.7354*x[12]*x[18]+0.1581*x[12]*x[19]-0.7907*x[13]*x[19]-1.9165*x[13]*x[20]+1.3741*x[14]*x[18]-0.8719*x[15]*x[16]+1.5495*x[16]*x[17]-1.7831*x[18]*x[19]+1.4247*x[19]*x[19]+0.1942*x[2]-0.0372*x[3]+0.9036*x[4]+0.9891*x[5]+0.2623*x[6]+0.4058*x[7]+0.2905*x[8]+0.8707*x[9]-0.6906*x[10]+0.0175*x[11]+0.7644*x[12]+0.1747*x[13]-0.3217*x[14]-0.3756*x[15]-0.4446*x[16]-0.5191*x[17]+0.8229*x[18]-0.0585*x[19]+0.7931*x[20]-0.2774*x[1] <= 60.823)
@NLconstraint(m, e19, (-1.9403*x[1]*x[8])-1.8088*x[1]*x[9]-0.6291*x[1]*x[20]+1.5083*x[2]*x[3]+0.3386*x[3]*x[5]-1.3106*x[3]*x[6]-1.8787*x[3]*x[10]+1.4323*x[3]*x[12]+1.3703*x[3]*x[14]-1.6017*x[3]*x[16]-1.3468*x[3]*x[18]-1.4099*x[4]*x[4]+1.0199*x[4]*x[6]+0.5034*x[4]*x[12]+0.9667*x[4]*x[13]-0.5901*x[4]*x[15]-0.0141*x[4]*x[17]+0.0405*x[4]*x[18]-1.5747*x[4]*x[19]+0.016*x[5]*x[9]+0.2231*x[5]*x[16]+1.7261*x[5]*x[17]+0.4541*x[5]*x[19]+1.0149*x[6]*x[8]-0.6133*x[6]*x[9]-1.9358*x[6]*x[11]-0.8654*x[7]*x[7]+0.0159*x[7]*x[9]+0.6992*x[7]*x[12]-0.5229*x[7]*x[14]+0.6745*x[7]*x[18]+0.13*x[7]*x[19]-1.9973*x[8]*x[10]-0.6898*x[8]*x[11]-1.3584*x[8]*x[18]-0.2815*x[8]*x[19]-1.0398*x[9]*x[11]+1.0142*x[9]*x[14]-0.8937*x[9]*x[16]+0.6486*x[9]*x[17]-1.1806*x[9]*x[19]-1.84*x[10]*x[14]-0.5892*x[10]*x[19]+0.1897*x[12]*x[16]-0.5621*x[13]*x[14]+1.6224*x[13]*x[16]-1.5156*x[14]*x[14]-1.8253*x[14]*x[19]-1.8303*x[14]*x[20]+0.3758*x[16]*x[16]+0.2338*x[16]*x[17]-0.3835*x[17]*x[20]-0.1606*x[1]-0.8887*x[2]+0.499*x[3]+0.6686*x[4]+0.4415*x[5]-0.2126*x[6]-0.8338*x[7]-0.8861*x[8]-0.9484*x[9]-0.2048*x[10]-0.1835*x[11]-0.2758*x[12]-0.5844*x[13]+0.3621*x[14]+0.6829*x[15]-0.5893*x[16]+0.5491*x[17]-0.8351*x[18]+0.5027*x[19]+0.7318*x[20] <= 7.014)
@NLconstraint(m, e20, 0.8354*x[1]*x[6]-1.4331*x[1]*x[3]-1.7804*x[1]*x[10]-1.3407*x[1]*x[18]+1.7805*x[1]*x[19]-1.0934*x[2]*x[3]+0.4698*x[2]*x[7]+0.3697*x[2]*x[11]+0.1984*x[2]*x[12]-0.0071*x[2]*x[18]-1.2627*x[3]*x[4]+1.2216*x[3]*x[7]+0.5535*x[3]*x[9]-0.3452*x[3]*x[10]-0.3991*x[3]*x[18]+0.0719*x[4]*x[5]+0.1031*x[4]*x[7]+1.9585*x[4]*x[11]-0.4389*x[4]*x[14]+0.7654*x[4]*x[19]-0.6393*x[4]*x[20]-1.7604*x[5]*x[9]+1.5389*x[5]*x[14]+1.3717*x[6]*x[7]+1.9619*x[6]*x[18]+0.1329*x[7]*x[13]+1.8346*x[7]*x[15]-0.8949*x[7]*x[17]+1.6054*x[8]*x[11]-1.9103*x[8]*x[19]-1.0653*x[9]*x[10]+1.5396*x[9]*x[13]+1.8566*x[9]*x[14]+1.7424*x[10]*x[16]-0.9062*x[10]*x[17]+0.8717*x[10]*x[18]-0.5744*x[11]*x[11]+1.4138*x[11]*x[14]+1.0989*x[11]*x[17]-1.0642*x[11]*x[18]+1.8265*x[11]*x[19]+0.0628*x[12]*x[12]-0.5979*x[12]*x[13]-1.9992*x[12]*x[17]+1.146*x[12]*x[18]-0.2823*x[13]*x[16]-0.4237*x[14]*x[15]-1.6428*x[14]*x[16]+0.9312*x[14]*x[19]-0.7306*x[16]*x[17]+1.9334*x[16]*x[18]+0.1197*x[16]*x[19]-0.2495*x[1]-0.865*x[2]-0.5344*x[3]+0.3443*x[4]+0.0946*x[5]+0.99*x[6]+0.1293*x[7]-0.1439*x[8]-0.1023*x[9]+0.4527*x[10]-0.9526*x[11]-0.9404*x[12]-0.4876*x[13]-0.4892*x[14]-0.8809*x[15]+0.5844*x[16]-0.5909*x[17]+0.8432*x[18]+0.4261*x[19]-0.7159*x[20] <= 82.92)
@NLconstraint(m, e21, (-0.2366*x[1]*x[14])-1.4925*x[1]*x[17]+1.3612*x[2]*x[7]-1.9948*x[2]*x[14]+0.0617*x[2]*x[15]-0.0731*x[2]*x[17]+1.4445*x[2]*x[18]+0.6472*x[3]*x[4]+0.8244*x[3]*x[6]-1.3984*x[3]*x[9]-1.4324*x[3]*x[13]+1.1197*x[3]*x[17]+1.8708*x[3]*x[19]+1.4282*x[4]*x[6]-0.2069*x[4]*x[10]-0.2332*x[4]*x[12]-1.7216*x[4]*x[17]-1.585*x[4]*x[18]+0.831*x[5]*x[6]+1.2377*x[5]*x[8]+0.9548*x[5]*x[9]+0.6471*x[5]*x[12]-0.5994*x[5]*x[16]+1.6681*x[5]*x[18]-0.1678*x[6]*x[11]+0.2241*x[6]*x[17]+1.808*x[7]*x[10]+1.4816*x[7]*x[12]+1.7015*x[7]*x[17]-1.8092*x[8]*x[9]-1.9586*x[8]*x[13]+0.5365*x[8]*x[15]+0.3576*x[9]*x[15]-1.708*x[9]*x[16]+0.0269*x[10]*x[20]+1.5033*x[11]*x[14]+0.6748*x[11]*x[20]+1.9461*x[12]*x[12]-0.0429*x[12]*x[13]-1.38*x[12]*x[17]+1.2099*x[12]*x[18]-1.6126*x[13]*x[15]-1.3282*x[13]*x[16]+0.358*x[13]*x[17]-0.5599*x[13]*x[18]+0.0373*x[13]*x[20]+0.892*x[14]*x[15]+0.8095*x[14]*x[17]+1.0178*x[15]*x[16]-0.4647*x[16]*x[18]-1.7084*x[16]*x[19]-0.7509*x[17]*x[18]+0.4424*x[1]-0.2551*x[2]-0.4591*x[3]+0.191*x[4]+0.7592*x[5]-0.4934*x[6]-0.5187*x[7]-0.1522*x[8]-0.7995*x[9]+0.2015*x[10]+0.7515*x[11]-0.3003*x[12]-0.0052*x[13]-0.2116*x[14]-0.069*x[15]+0.4125*x[16]+0.1911*x[17]+0.141*x[18]-0.4838*x[19]+0.0428*x[20] <= 32.275)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.