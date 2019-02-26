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
@NLconstraint(m, e1, -(0.6193*x[5]*x[7]+0.8139*x[10]*x[16]+0.5051*x[11]*x[14]-0.7786*x[12]*x[14]-0.6809*x[5]-0.674*x[7]-0.6912*x[10]+0.15*x[11]-0.7118*x[12]+0.3822*x[14]-0.7372*x[16]+(-0.2043*x[1]*x[9]*x[12])-0.7607*x[1]*x[13]*x[17]-0.9697*x[3]*x[8]*x[11]+0.2399*x[3]*x[9]*x[13]-0.2265*x[4]*x[5]*x[18]+0.4467*x[4]*x[7]*x[11]+0.4704*x[4]*x[7]*x[14]+0.1748*x[4]*x[10]*x[12]+0.5528*x[5]*x[6]*x[19]+0.108*x[6]*x[11]*x[14]-0.3513*x[6]*x[13]*x[16]-0.6792*x[6]*x[13]*x[17]-0.8449*x[6]*x[17]*x[18]+0.7918*x[7]*x[13]*x[14]-0.7684*x[7]*x[14]*x[16]+0.6511*x[8]*x[11]*x[14]+0.5489*x[9]*x[17]*x[19]+0.0735*x[10]*x[11]*x[16]-0.3675*x[10]*x[13]*x[14]-0.1674*x[11]*x[17]*x[20]+0.5506*x[12]*x[14]*x[16]-0.5504*x[13]*x[19]*x[20]-0.9093*x[1]+0.5603*x[3]+0.5412*x[4]-0.0621*x[6]+0.0977*x[8]-0.3899*x[9]-0.6134*x[13]+0.42*x[17]-0.2405*x[18]-0.204*x[19]-0.998*x[20]+0.6796*x[1]*x[2]*x[3]*x[14]+0.2284*x[1]*x[3]*x[4]*x[12]-0.4303*x[1]*x[3]*x[5]*x[7]+0.8874*x[1]*x[4]*x[5]*x[20]-0.4609*x[1]*x[5]*x[6]*x[18]-0.0957*x[1]*x[5]*x[11]*x[19]-0.3218*x[1]*x[7]*x[10]*x[17]+0.7114*x[1]*x[7]*x[13]*x[14]+0.9377*x[1]*x[9]*x[19]*x[20]+0.9245*x[1]*x[12]*x[13]*x[20]-0.4285*x[1]*x[12]*x[14]*x[18]-0.1132*x[2]*x[3]*x[5]*x[6]+0.3616*x[2]*x[3]*x[9]*x[16]+0.5175*x[2]*x[4]*x[13]*x[14]-0.5914*x[2]*x[5]*x[7]*x[18]-0.9096*x[2]*x[5]*x[8]*x[16]-0.7254*x[2]*x[5]*x[9]*x[17]-0.1518*x[2]*x[6]*x[7]*x[9]+0.4133*x[2]*x[6]*x[15]*x[20]-0.5022*x[2]*x[8]*x[14]*x[18]+0.7887*x[2]*x[11]*x[15]*x[16]-0.9062*x[2]*x[12]*x[18]*x[19]-0.0021*x[2]*x[14]*x[15]*x[19]+0.9687*x[3]*x[4]*x[10]*x[13]-0.4982*x[3]*x[5]*x[19]*x[20]+0.4463*x[3]*x[6]*x[8]*x[10]+0.9569*x[3]*x[6]*x[8]*x[12]+0.5074*x[3]*x[6]*x[8]*x[16]+0.847*x[3]*x[6]*x[15]*x[18]+0.416*x[3]*x[7]*x[13]*x[14]-0.7368*x[3]*x[7]*x[13]*x[18]+0.7355*x[3]*x[8]*x[11]*x[17]+0.2441*x[3]*x[8]*x[15]*x[17]+0.474*x[3]*x[9]*x[10]*x[13]+0.67*x[3]*x[12]*x[15]*x[17]+0.3165*x[3]*x[13]*x[15]*x[18]-0.3631*x[3]*x[13]*x[16]*x[19]-0.3148*x[4]*x[5]*x[7]*x[11]-0.4683*x[4]*x[6]*x[7]*x[17]-0.2095*x[4]*x[6]*x[9]*x[10]+0.4626*x[4]*x[6]*x[15]*x[17]-0.0382*x[4]*x[7]*x[9]*x[10]+0.2372*x[4]*x[7]*x[13]*x[17]-0.9499*x[4]*x[7]*x[14]*x[17]-0.357*x[4]*x[8]*x[18]*x[19]-0.5684*x[4]*x[11]*x[15]*x[16]-0.5121*x[4]*x[14]*x[18]*x[20]+0.6976*x[5]*x[6]*x[9]*x[13]+0.2431*x[5]*x[6]*x[11]*x[17]+0.7971*x[5]*x[6]*x[14]*x[16]-0.7189*x[5]*x[7]*x[9]*x[14]-0.5216*x[5]*x[8]*x[9]*x[14]-0.539*x[5]*x[8]*x[11]*x[17]-0.741*x[5]*x[9]*x[11]*x[20]-0.1097*x[5]*x[10]*x[11]*x[16]+0.5998*x[5]*x[10]*x[11]*x[18]+0.1184*x[5]*x[10]*x[13]*x[20]-0.0862*x[5]*x[12]*x[14]*x[19]+0.7708*x[5]*x[12]*x[15]*x[16]+0.7099*x[5]*x[14]*x[16]*x[18]-0.615*x[5]*x[15]*x[17]*x[20]+0.159*x[5]*x[17]*x[18]*x[19]-0.7262*x[6]*x[8]*x[13]*x[19]-0.6094*x[6]*x[9]*x[15]*x[19]+0.1005*x[6]*x[10]*x[11]*x[19]+0.8754*x[6]*x[10]*x[14]*x[15]-0.4368*x[6]*x[10]*x[14]*x[17]-0.4374*x[6]*x[10]*x[19]*x[20]-0.2352*x[7]*x[8]*x[9]*x[10]+0.4507*x[7]*x[8]*x[12]*x[16]-0.4102*x[7]*x[9]*x[11]*x[12]+0.73*x[7]*x[9]*x[17]*x[18]+0.2964*x[7]*x[10]*x[12]*x[15]-0.9209*x[7]*x[10]*x[13]*x[15]-0.4768*x[7]*x[11]*x[14]*x[18]-0.069*x[7]*x[11]*x[18]*x[19]+0.1189*x[7]*x[12]*x[14]*x[17]+0.9805*x[7]*x[13]*x[14]*x[19]+0.5809*x[7]*x[14]*x[19]*x[20]+0.4968*x[8]*x[9]*x[15]*x[19]-0.7084*x[8]*x[11]*x[13]*x[20]+0.3016*x[8]*x[11]*x[15]*x[17]+0.9194*x[8]*x[11]*x[15]*x[18]+0.3629*x[8]*x[11]*x[18]*x[20]-0.0387*x[8]*x[12]*x[15]*x[19]-0.3832*x[8]*x[15]*x[17]*x[19]-0.1075*x[9]*x[10]*x[14]*x[19]-0.5614*x[9]*x[10]*x[16]*x[20]-0.5016*x[9]*x[12]*x[14]*x[17]+0.5713*x[9]*x[12]*x[16]*x[20]+0.8573*x[9]*x[14]*x[15]*x[18]-0.2504*x[10]*x[15]*x[17]*x[19]-0.1788*x[11]*x[14]*x[15]*x[17]+0.8823*x[11]*x[14]*x[17]*x[18]-0.9474*x[12]*x[13]*x[15]*x[17]-0.8135*x[12]*x[15]*x[19]*x[20]+0.1172*x[14]*x[15]*x[16]*x[19]-0.7123*x[2]+0.9004*x[15])+x[21] == 0.0)
@NLconstraint(m, e2, 0.6435*x[1]*x[5]+0.7715*x[5]*x[19]+0.3253*x[9]*x[13]+0.4957*x[9]*x[17]-0.2308*x[10]*x[19]+0.8868*x[12]*x[17]-0.4916*x[14]*x[15]+0.8219*x[1]-0.6145*x[5]+0.1688*x[9]-0.6302*x[10]+0.8851*x[12]+0.9515*x[13]-0.0604*x[14]-0.8915*x[15]-0.5954*x[17]+0.9315*x[19]+(-0.9361*x[1]*x[6]*x[12])-0.0116*x[1]*x[14]*x[20]+0.5083*x[1]*x[17]*x[18]+0.9815*x[2]*x[11]*x[15]-0.6882*x[3]*x[8]*x[13]-0.8066*x[4]*x[5]*x[9]-0.5569*x[4]*x[5]*x[18]+0.2078*x[4]*x[8]*x[13]+0.6082*x[4]*x[9]*x[10]+0.8841*x[4]*x[15]*x[17]-0.9939*x[5]*x[7]*x[17]-0.1374*x[5]*x[8]*x[10]+0.3054*x[5]*x[10]*x[18]-0.7532*x[5]*x[19]*x[20]+0.0687*x[6]*x[8]*x[11]-0.8726*x[6]*x[12]*x[14]+0.4542*x[7]*x[15]*x[16]-0.4356*x[8]*x[10]*x[18]-0.4775*x[8]*x[11]*x[18]-0.4919*x[9]*x[14]*x[17]-0.0037*x[10]*x[12]*x[16]+0.1277*x[10]*x[12]*x[20]-0.8293*x[10]*x[16]*x[20]-0.9742*x[12]*x[13]*x[19]+0.8915*x[2]+0.4384*x[3]+0.0104*x[4]+0.3569*x[6]-0.0835*x[7]-0.1778*x[8]+0.0573*x[11]-0.0968*x[16]-0.902*x[18]+0.4294*x[20]+(-0.4008*x[1]*x[2]*x[9]*x[12])-0.164*x[1]*x[3]*x[5]*x[8]-0.6331*x[1]*x[4]*x[7]*x[9]+0.7985*x[1]*x[5]*x[14]*x[16]+0.3398*x[1]*x[7]*x[12]*x[16]-0.5166*x[1]*x[9]*x[10]*x[14]-0.5502*x[1]*x[11]*x[15]*x[17]+0.3061*x[2]*x[3]*x[4]*x[10]+0.2869*x[2]*x[3]*x[6]*x[9]-0.6402*x[2]*x[3]*x[6]*x[13]-0.0148*x[2]*x[3]*x[7]*x[19]+0.7875*x[2]*x[4]*x[5]*x[10]-0.2623*x[2]*x[4]*x[9]*x[14]+0.1642*x[2]*x[4]*x[13]*x[14]+0.1313*x[2]*x[4]*x[16]*x[18]+0.8153*x[2]*x[5]*x[6]*x[9]+0.4301*x[2]*x[5]*x[6]*x[10]+0.3746*x[2]*x[5]*x[6]*x[19]+0.4865*x[2]*x[5]*x[16]*x[17]-0.831*x[2]*x[6]*x[12]*x[17]+0.6691*x[2]*x[6]*x[15]*x[17]-0.8026*x[2]*x[7]*x[9]*x[12]+0.8049*x[2]*x[10]*x[15]*x[18]-0.068*x[2]*x[10]*x[17]*x[19]+0.7074*x[3]*x[4]*x[10]*x[17]-0.0513*x[3]*x[4]*x[11]*x[20]+0.6861*x[3]*x[5]*x[7]*x[11]+0.0742*x[3]*x[5]*x[9]*x[13]-0.3189*x[3]*x[5]*x[9]*x[16]-0.0921*x[3]*x[5]*x[10]*x[17]-0.8223*x[3]*x[5]*x[12]*x[15]+0.3006*x[3]*x[6]*x[9]*x[12]-0.5091*x[3]*x[6]*x[17]*x[20]-0.1146*x[3]*x[7]*x[8]*x[11]+0.2716*x[3]*x[7]*x[17]*x[20]-0.9407*x[3]*x[8]*x[10]*x[14]+0.6625*x[3]*x[8]*x[14]*x[19]-0.5754*x[3]*x[8]*x[17]*x[18]-0.7244*x[3]*x[9]*x[13]*x[19]+0.3703*x[3]*x[10]*x[11]*x[15]+0.9229*x[3]*x[10]*x[17]*x[20]-0.875*x[3]*x[11]*x[14]*x[18]-0.2402*x[3]*x[11]*x[19]*x[20]+0.0463*x[3]*x[12]*x[14]*x[17]-0.3313*x[3]*x[13]*x[16]*x[18]+0.9353*x[4]*x[5]*x[12]*x[19]+0.5953*x[4]*x[5]*x[17]*x[18]-0.0517*x[4]*x[6]*x[7]*x[19]+0.9132*x[4]*x[6]*x[9]*x[16]-0.5881*x[4]*x[6]*x[12]*x[16]-0.3417*x[4]*x[8]*x[9]*x[14]+0.9491*x[4]*x[8]*x[13]*x[18]+0.9491*x[4]*x[9]*x[12]*x[19]+0.2472*x[4]*x[11]*x[12]*x[13]-0.5442*x[4]*x[15]*x[16]*x[17]-0.3529*x[4]*x[15]*x[16]*x[20]+0.7398*x[5]*x[6]*x[10]*x[13]-0.116*x[5]*x[6]*x[11]*x[14]-0.7106*x[5]*x[6]*x[13]*x[14]-0.6272*x[5]*x[6]*x[14]*x[18]+0.8281*x[5]*x[7]*x[8]*x[14]+0.8198*x[5]*x[9]*x[13]*x[14]-0.5013*x[5]*x[9]*x[14]*x[19]-0.2445*x[5]*x[9]*x[17]*x[19]-0.2806*x[5]*x[11]*x[14]*x[19]+0.352*x[5]*x[13]*x[14]*x[19]+0.4382*x[5]*x[16]*x[18]*x[19]+0.3632*x[6]*x[11]*x[15]*x[18]-0.8732*x[6]*x[14]*x[15]*x[18]-0.2679*x[6]*x[14]*x[17]*x[19]+0.5875*x[6]*x[15]*x[18]*x[19]+0.0711*x[7]*x[8]*x[9]*x[16]-0.6923*x[7]*x[10]*x[12]*x[15]-0.959*x[7]*x[10]*x[16]*x[18]-0.8912*x[7]*x[13]*x[15]*x[20]-0.0037*x[8]*x[12]*x[13]*x[16]+0.2738*x[8]*x[14]*x[16]*x[18]+0.9976*x[9]*x[10]*x[12]*x[15]+0.9994*x[9]*x[12]*x[16]*x[19]-0.9519*x[9]*x[13]*x[17]*x[18]+0.0082*x[10]*x[11]*x[17]*x[18]-0.8286*x[10]*x[12]*x[13]*x[20]-0.5516*x[10]*x[13]*x[15]*x[19]-0.8687*x[10]*x[15]*x[16]*x[20]+0.9418*x[11]*x[13]*x[14]*x[19]+0.5539*x[11]*x[13]*x[15]*x[18]+0.3882*x[11]*x[13]*x[16]*x[17]+0.3477*x[11]*x[14]*x[15]*x[17]-0.4249*x[11]*x[15]*x[17]*x[18]+0.8737*x[12]*x[15]*x[16]*x[20]+0.3182*x[13]*x[14]*x[15]*x[17]+0.4593*x[13]*x[14]*x[15]*x[18] <= 86.99)
@NLconstraint(m, e3, (-0.429*x[6]*x[15])-0.3353*x[6]*x[17]-0.1588*x[7]*x[12]+0.935*x[12]*x[17]-0.9423*x[12]*x[20]+0.1736*x[15]*x[20]-0.2722*x[6]+0.4795*x[7]+0.2588*x[12]-0.573*x[15]+0.1464*x[17]+0.6857*x[20]+(-0.2767*x[2]*x[9]*x[12])-0.2421*x[3]*x[4]*x[5]-0.1502*x[3]*x[14]*x[17]+0.4292*x[4]*x[12]*x[18]-0.6579*x[4]*x[14]*x[17]+0.9675*x[4]*x[15]*x[16]-0.8219*x[6]*x[10]*x[14]-0.4809*x[6]*x[10]*x[15]-0.8913*x[6]*x[12]*x[18]-0.2066*x[7]*x[13]*x[18]+0.7508*x[8]*x[13]*x[15]+0.6815*x[8]*x[14]*x[15]+0.0747*x[11]*x[18]*x[20]-0.3442*x[12]*x[13]*x[19]+0.4619*x[12]*x[17]*x[18]+0.0895*x[13]*x[14]*x[18]+0.142*x[14]*x[16]*x[19]+0.296*x[14]*x[17]*x[18]+0.8133*x[16]*x[19]*x[20]+0.8381*x[2]-0.8394*x[3]-0.7701*x[4]-0.3017*x[5]+0.3531*x[8]+0.2825*x[9]+0.3274*x[10]-0.4461*x[11]+0.5324*x[13]-0.6424*x[14]+0.6427*x[16]+0.7913*x[18]+0.0191*x[19]+0.8211*x[1]*x[2]*x[10]*x[14]-0.7809*x[1]*x[2]*x[9]*x[10]-0.1357*x[1]*x[3]*x[12]*x[15]+0.3122*x[1]*x[4]*x[5]*x[11]-0.3171*x[1]*x[4]*x[10]*x[11]+0.459*x[1]*x[6]*x[9]*x[18]+0.1584*x[1]*x[8]*x[11]*x[15]+0.6139*x[2]*x[3]*x[4]*x[7]+0.217*x[2]*x[3]*x[4]*x[19]-0.895*x[2]*x[3]*x[5]*x[15]-0.317*x[2]*x[4]*x[6]*x[8]+0.8576*x[2]*x[4]*x[7]*x[14]-0.6288*x[2]*x[6]*x[17]*x[18]-0.6058*x[2]*x[7]*x[8]*x[12]+0.359*x[2]*x[7]*x[8]*x[19]-0.3226*x[2]*x[7]*x[10]*x[20]+0.2054*x[2]*x[7]*x[13]*x[14]+0.2362*x[2]*x[7]*x[13]*x[17]-0.2619*x[2]*x[7]*x[14]*x[19]-0.9411*x[2]*x[7]*x[17]*x[18]+0.7634*x[2]*x[8]*x[14]*x[18]-0.9513*x[2]*x[8]*x[15]*x[20]+0.6513*x[2]*x[8]*x[16]*x[17]+0.3404*x[2]*x[9]*x[10]*x[15]-0.9638*x[2]*x[10]*x[13]*x[16]-0.5217*x[2]*x[13]*x[14]*x[17]+0.0256*x[3]*x[4]*x[11]*x[18]+0.4813*x[3]*x[4]*x[12]*x[15]-0.2571*x[3]*x[4]*x[13]*x[15]-0.6625*x[3]*x[5]*x[8]*x[16]+0.6958*x[3]*x[5]*x[9]*x[18]-0.0865*x[3]*x[6]*x[7]*x[10]+0.6446*x[3]*x[7]*x[15]*x[18]-0.2975*x[3]*x[8]*x[16]*x[19]-0.7802*x[3]*x[9]*x[10]*x[15]-0.2451*x[3]*x[9]*x[11]*x[12]+0.1692*x[3]*x[9]*x[12]*x[19]+0.8514*x[3]*x[9]*x[15]*x[17]+0.942*x[3]*x[10]*x[17]*x[20]-0.3524*x[3]*x[12]*x[14]*x[17]-0.7647*x[3]*x[13]*x[17]*x[19]-0.3059*x[3]*x[14]*x[16]*x[19]+0.7882*x[4]*x[5]*x[9]*x[12]-0.863*x[4]*x[7]*x[8]*x[17]+0.1448*x[4]*x[7]*x[14]*x[15]-0.6923*x[4]*x[7]*x[14]*x[19]-0.5626*x[4]*x[8]*x[13]*x[20]+0.5555*x[4]*x[9]*x[12]*x[15]+0.9394*x[4]*x[9]*x[19]*x[20]+0.8161*x[4]*x[12]*x[17]*x[18]+0.4384*x[4]*x[14]*x[17]*x[19]-0.1993*x[5]*x[6]*x[7]*x[10]-0.3376*x[5]*x[6]*x[7]*x[12]-0.8*x[5]*x[7]*x[14]*x[15]-0.9947*x[5]*x[8]*x[11]*x[18]+0.8772*x[5]*x[8]*x[12]*x[19]-0.4849*x[5]*x[8]*x[14]*x[17]-0.8222*x[5]*x[8]*x[14]*x[19]-0.3485*x[5]*x[9]*x[10]*x[18]-0.0871*x[5]*x[9]*x[12]*x[15]-0.215*x[5]*x[10]*x[11]*x[13]+0.8428*x[5]*x[10]*x[12]*x[18]-0.8101*x[5]*x[10]*x[13]*x[14]-0.269*x[5]*x[11]*x[15]*x[16]-0.8881*x[5]*x[12]*x[13]*x[17]-0.776*x[6]*x[7]*x[11]*x[19]-0.9516*x[6]*x[7]*x[14]*x[20]-0.1357*x[6]*x[8]*x[12]*x[16]-0.9142*x[6]*x[8]*x[15]*x[17]+0.1176*x[6]*x[9]*x[11]*x[14]+0.2791*x[6]*x[9]*x[13]*x[14]+0.2514*x[6]*x[10]*x[13]*x[19]-0.6822*x[6]*x[15]*x[16]*x[17]+0.4993*x[7]*x[10]*x[11]*x[12]-0.9975*x[7]*x[10]*x[15]*x[19]+0.0221*x[7]*x[11]*x[13]*x[15]-0.8145*x[7]*x[12]*x[14]*x[18]+0.3218*x[7]*x[12]*x[15]*x[19]-0.4982*x[7]*x[13]*x[15]*x[18]-0.8453*x[7]*x[13]*x[19]*x[20]+0.4211*x[8]*x[9]*x[10]*x[18]+0.2453*x[8]*x[9]*x[12]*x[19]+0.3515*x[8]*x[9]*x[18]*x[20]-0.5768*x[8]*x[10]*x[11]*x[19]-0.9095*x[8]*x[10]*x[19]*x[20]-0.9732*x[9]*x[11]*x[12]*x[16]-0.6129*x[9]*x[12]*x[17]*x[18]+0.3126*x[9]*x[12]*x[18]*x[20]-0.4004*x[9]*x[13]*x[16]*x[17]-0.9998*x[9]*x[13]*x[16]*x[19]-0.0369*x[9]*x[16]*x[17]*x[18]-0.3099*x[10]*x[12]*x[15]*x[20]-0.5344*x[10]*x[13]*x[15]*x[19]+0.6723*x[11]*x[13]*x[15]*x[16]+0.3671*x[11]*x[13]*x[15]*x[20]+0.5897*x[11]*x[13]*x[16]*x[20]-0.7699*x[12]*x[14]*x[15]*x[17]+0.0351*x[12]*x[15]*x[16]*x[19]+0.0043*x[1] <= 68.371)
@NLconstraint(m, e4, 0.3935*x[9]*x[18]-0.9103*x[6]*x[17]+0.4899*x[6]+0.6231*x[9]+0.1256*x[17]-0.83*x[18]+0.6736*x[1]*x[7]*x[19]+0.3058*x[1]*x[8]*x[20]+0.7921*x[1]*x[10]*x[15]-0.0821*x[2]*x[12]*x[14]-0.5798*x[3]*x[5]*x[8]+0.7128*x[3]*x[6]*x[7]+0.7743*x[3]*x[7]*x[8]+0.342*x[3]*x[10]*x[13]+0.1696*x[3]*x[10]*x[16]+0.386*x[4]*x[5]*x[7]+0.2775*x[4]*x[8]*x[11]+0.2286*x[4]*x[8]*x[13]-0.5173*x[4]*x[9]*x[13]+0.3394*x[4]*x[12]*x[15]+0.9342*x[5]*x[7]*x[18]-0.7901*x[5]*x[10]*x[17]+0.3126*x[5]*x[10]*x[19]-0.3419*x[5]*x[12]*x[17]-0.1111*x[6]*x[11]*x[16]+0.486*x[7]*x[8]*x[17]+0.3171*x[7]*x[8]*x[19]-0.1557*x[7]*x[9]*x[10]-0.1292*x[7]*x[11]*x[16]-0.4928*x[7]*x[11]*x[18]+0.0589*x[7]*x[12]*x[16]+0.1788*x[7]*x[15]*x[16]+0.7526*x[8]*x[9]*x[15]+0.0256*x[8]*x[11]*x[18]-0.3327*x[9]*x[12]*x[17]-0.1695*x[10]*x[15]*x[17]-0.233*x[13]*x[14]*x[16]+0.2792*x[14]*x[16]*x[17]-0.7035*x[14]*x[16]*x[19]+0.607*x[1]-0.984*x[2]+0.1984*x[3]-0.3261*x[4]+0.9942*x[5]+0.1859*x[7]+0.7152*x[8]-0.3239*x[10]+0.6656*x[11]+0.6511*x[12]+0.4798*x[13]-0.6549*x[14]+0.3657*x[15]+0.2469*x[16]+0.8632*x[19]-0.6316*x[20]+0.0278*x[1]*x[3]*x[4]*x[9]-0.0043*x[1]*x[2]*x[8]*x[17]+0.9441*x[1]*x[3]*x[10]*x[11]+0.9841*x[1]*x[3]*x[11]*x[19]-0.3078*x[1]*x[4]*x[9]*x[20]-0.0941*x[1]*x[5]*x[10]*x[14]+0.4504*x[1]*x[11]*x[15]*x[19]+0.6027*x[1]*x[14]*x[18]*x[19]+0.761*x[2]*x[3]*x[12]*x[17]-0.9023*x[2]*x[4]*x[7]*x[13]-0.7347*x[2]*x[5]*x[6]*x[17]+0.472*x[2]*x[5]*x[12]*x[14]-0.967*x[2]*x[6]*x[13]*x[14]+0.1377*x[2]*x[6]*x[13]*x[16]+0.519*x[2]*x[6]*x[13]*x[18]+0.9914*x[2]*x[7]*x[10]*x[11]-0.2124*x[2]*x[7]*x[10]*x[14]-0.4928*x[2]*x[7]*x[14]*x[18]-0.3758*x[2]*x[7]*x[16]*x[17]-0.3158*x[2]*x[8]*x[11]*x[17]+0.2939*x[2]*x[9]*x[12]*x[18]-0.8299*x[2]*x[10]*x[12]*x[18]-0.9285*x[2]*x[10]*x[14]*x[19]-0.87*x[2]*x[11]*x[17]*x[18]+0.4934*x[2]*x[12]*x[16]*x[19]+0.092*x[3]*x[4]*x[7]*x[13]-0.1915*x[3]*x[4]*x[7]*x[15]+0.0558*x[3]*x[4]*x[8]*x[15]+0.6607*x[3]*x[4]*x[13]*x[20]-0.2952*x[3]*x[5]*x[7]*x[14]+0.3352*x[3]*x[5]*x[11]*x[16]-0.1237*x[3]*x[6]*x[7]*x[14]-0.5567*x[3]*x[6]*x[11]*x[19]-0.2455*x[3]*x[7]*x[18]*x[19]+0.7066*x[3]*x[7]*x[19]*x[20]-0.2316*x[3]*x[8]*x[13]*x[19]+0.6377*x[3]*x[9]*x[10]*x[19]-0.5872*x[3]*x[11]*x[16]*x[20]+0.3574*x[3]*x[11]*x[17]*x[18]-0.8879*x[3]*x[14]*x[15]*x[18]+0.1455*x[3]*x[14]*x[15]*x[19]-0.925*x[4]*x[5]*x[12]*x[17]+0.6639*x[4]*x[5]*x[16]*x[17]-0.2604*x[4]*x[5]*x[17]*x[20]-0.5562*x[4]*x[6]*x[12]*x[14]+0.7864*x[4]*x[6]*x[14]*x[19]+0.0119*x[4]*x[7]*x[15]*x[16]+0.3803*x[4]*x[8]*x[10]*x[18]+0.2761*x[4]*x[8]*x[13]*x[16]+0.1433*x[4]*x[9]*x[13]*x[19]+0.93*x[4]*x[16]*x[18]*x[20]-0.3247*x[4]*x[17]*x[18]*x[19]+0.3216*x[5]*x[6]*x[7]*x[18]+0.2315*x[5]*x[6]*x[8]*x[11]-0.1189*x[5]*x[7]*x[14]*x[16]-0.2566*x[5]*x[8]*x[18]*x[20]+0.3498*x[5]*x[9]*x[15]*x[16]-0.6971*x[5]*x[9]*x[18]*x[19]-0.1305*x[5]*x[11]*x[13]*x[14]-0.2826*x[5]*x[11]*x[14]*x[17]-0.5742*x[5]*x[12]*x[18]*x[19]-0.9105*x[6]*x[7]*x[10]*x[13]-0.6494*x[6]*x[8]*x[15]*x[17]-0.1639*x[6]*x[10]*x[14]*x[16]-0.9695*x[6]*x[12]*x[14]*x[18]+0.3664*x[7]*x[9]*x[12]*x[15]-0.0164*x[7]*x[9]*x[12]*x[20]-0.027*x[7]*x[10]*x[13]*x[16]+0.8619*x[7]*x[11]*x[17]*x[20]+0.3778*x[7]*x[13]*x[15]*x[17]-0.931*x[7]*x[14]*x[16]*x[19]-0.0028*x[8]*x[9]*x[13]*x[18]+0.0977*x[8]*x[10]*x[11]*x[14]+0.7168*x[8]*x[12]*x[15]*x[16]+0.1796*x[8]*x[14]*x[16]*x[18]-0.0473*x[9]*x[10]*x[16]*x[18]-0.3642*x[9]*x[11]*x[12]*x[14]-0.5929*x[9]*x[11]*x[12]*x[17]-0.8811*x[9]*x[11]*x[16]*x[20]-0.2154*x[9]*x[14]*x[15]*x[17]+0.3342*x[9]*x[17]*x[18]*x[20]-0.1005*x[10]*x[11]*x[15]*x[19]-0.9383*x[10]*x[11]*x[16]*x[20]-0.7975*x[10]*x[12]*x[14]*x[16]+0.9661*x[10]*x[12]*x[15]*x[20]-0.3012*x[10]*x[14]*x[16]*x[18]-0.2957*x[11]*x[14]*x[15]*x[17]+0.8512*x[11]*x[15]*x[16]*x[17] <= 95.048)
@NLconstraint(m, e5, (-0.0849*x[2]*x[19])-0.0071*x[4]*x[17]-0.2615*x[7]*x[14]+0.0372*x[11]*x[12]+0.3368*x[16]*x[17]-0.9526*x[2]-0.4876*x[4]+0.5844*x[7]-0.7159*x[11]+0.6584*x[12]+0.9716*x[14]-0.6073*x[16]-0.4237*x[17]+0.8152*x[19]+0.1705*x[1]*x[4]*x[18]+0.703*x[2]*x[3]*x[18]+0.2313*x[2]*x[6]*x[7]-0.5344*x[2]*x[8]*x[20]+0.499*x[2]*x[9]*x[15]-0.0035*x[2]*x[9]*x[18]+0.1693*x[3]*x[5]*x[12]-0.6553*x[3]*x[6]*x[17]+0.953*x[3]*x[12]*x[14]+0.7318*x[3]*x[15]*x[16]+0.0079*x[4]*x[7]*x[9]-0.9646*x[4]*x[9]*x[13]-0.9582*x[4]*x[13]*x[20]+0.5277*x[4]*x[14]*x[18]-0.4223*x[6]*x[7]*x[17]-0.3803*x[6]*x[8]*x[9]-0.6548*x[6]*x[8]*x[15]+0.9347*x[7]*x[9]*x[13]+0.7369*x[7]*x[13]*x[16]+0.0963*x[7]*x[17]*x[18]+0.1424*x[8]*x[10]*x[12]-0.5286*x[9]*x[10]*x[12]+0.1405*x[11]*x[13]*x[14]-0.3893*x[12]*x[14]*x[18]+0.3508*x[13]*x[14]*x[17]+0.652*x[13]*x[16]*x[18]-0.9151*x[14]*x[19]*x[20]+0.4527*x[1]-0.9404*x[3]-0.4892*x[5]-0.8809*x[6]-0.5909*x[8]+0.8432*x[9]+0.4261*x[10]+0.0654*x[13]+0.3374*x[15]+0.4155*x[18]-0.6799*x[20]+(-0.6653*x[1]*x[2]*x[8]*x[10])-0.147*x[1]*x[2]*x[10]*x[14]+0.2768*x[1]*x[3]*x[4]*x[9]-0.3534*x[1]*x[3]*x[7]*x[14]-0.0055*x[1]*x[4]*x[8]*x[14]+0.9793*x[1]*x[4]*x[13]*x[15]+0.4162*x[1]*x[5]*x[8]*x[19]-0.6648*x[1]*x[5]*x[12]*x[16]-0.0911*x[1]*x[6]*x[11]*x[15]-0.4391*x[1]*x[8]*x[11]*x[12]-0.0483*x[1]*x[9]*x[13]*x[18]+0.8902*x[1]*x[11]*x[16]*x[19]-0.8213*x[2]*x[3]*x[4]*x[16]-0.0737*x[2]*x[3]*x[5]*x[8]+0.0733*x[2]*x[3]*x[5]*x[15]+0.5092*x[2]*x[3]*x[8]*x[10]-0.9484*x[2]*x[3]*x[8]*x[15]-0.4469*x[2]*x[3]*x[9]*x[16]+0.5834*x[2]*x[3]*x[14]*x[18]-0.6222*x[2]*x[3]*x[17]*x[19]+0.0515*x[2]*x[4]*x[7]*x[9]-0.469*x[2]*x[4]*x[13]*x[15]-0.644*x[2]*x[5]*x[14]*x[19]+0.477*x[2]*x[6]*x[9]*x[16]+0.3641*x[2]*x[7]*x[11]*x[13]+0.255*x[2]*x[8]*x[9]*x[16]+0.9707*x[2]*x[9]*x[14]*x[18]-0.2279*x[2]*x[10]*x[15]*x[17]-0.0679*x[3]*x[4]*x[5]*x[16]-0.6313*x[3]*x[4]*x[11]*x[19]-0.82*x[3]*x[4]*x[16]*x[19]+0.5843*x[3]*x[5]*x[15]*x[16]+0.2148*x[3]*x[7]*x[10]*x[15]+0.8088*x[3]*x[7]*x[15]*x[18]+0.3781*x[3]*x[7]*x[16]*x[19]+0.0163*x[3]*x[8]*x[10]*x[11]-0.5737*x[3]*x[8]*x[13]*x[16]+0.449*x[3]*x[8]*x[15]*x[16]+0.9337*x[3]*x[9]*x[10]*x[12]-0.3501*x[3]*x[10]*x[11]*x[18]+0.8057*x[3]*x[11]*x[12]*x[19]+0.7499*x[3]*x[11]*x[17]*x[19]+0.2846*x[3]*x[12]*x[14]*x[16]+0.3275*x[3]*x[12]*x[14]*x[17]-0.2774*x[3]*x[14]*x[17]*x[18]-0.9023*x[3]*x[16]*x[18]*x[20]+0.9107*x[4]*x[5]*x[8]*x[15]+0.0359*x[4]*x[5]*x[13]*x[18]+0.8027*x[4]*x[7]*x[8]*x[11]-0.5166*x[4]*x[7]*x[8]*x[17]-0.9952*x[4]*x[8]*x[12]*x[13]-0.0405*x[4]*x[8]*x[14]*x[19]+0.4262*x[4]*x[10]*x[16]*x[18]-0.502*x[4]*x[11]*x[12]*x[14]+0.1747*x[4]*x[11]*x[18]*x[19]-0.1094*x[5]*x[6]*x[7]*x[13]+0.147*x[5]*x[6]*x[9]*x[12]+0.4318*x[5]*x[6]*x[9]*x[17]+0.9809*x[5]*x[6]*x[11]*x[18]-0.4795*x[5]*x[7]*x[10]*x[12]+0.8352*x[5]*x[8]*x[9]*x[11]+0.6829*x[5]*x[8]*x[9]*x[14]+0.6762*x[5]*x[9]*x[11]*x[19]-0.9996*x[5]*x[10]*x[12]*x[17]-0.821*x[5]*x[13]*x[14]*x[17]-0.1281*x[6]*x[7]*x[9]*x[13]+0.7931*x[6]*x[7]*x[10]*x[18]+0.8651*x[6]*x[7]*x[13]*x[20]+0.3694*x[6]*x[9]*x[12]*x[17]+0.3375*x[6]*x[10]*x[15]*x[17]-0.842*x[6]*x[12]*x[14]*x[18]+0.7748*x[7]*x[9]*x[16]*x[17]+0.6279*x[7]*x[11]*x[12]*x[14]+0.7137*x[7]*x[11]*x[15]*x[19]-0.4274*x[7]*x[12]*x[13]*x[19]+0.0664*x[7]*x[13]*x[16]*x[19]-0.2114*x[7]*x[13]*x[18]*x[19]-0.9251*x[8]*x[9]*x[12]*x[13]-0.1408*x[8]*x[9]*x[17]*x[19]+0.6789*x[8]*x[11]*x[12]*x[15]-0.8985*x[8]*x[11]*x[15]*x[19]-0.5199*x[9]*x[11]*x[12]*x[16]-0.1023*x[9]*x[11]*x[12]*x[20]+0.6766*x[9]*x[11]*x[18]*x[20]+0.7508*x[9]*x[13]*x[16]*x[17]-0.3653*x[9]*x[16]*x[17]*x[19]+0.9879*x[10]*x[12]*x[15]*x[20]+0.4058*x[10]*x[13]*x[19]*x[20]+0.7069*x[11]*x[12]*x[14]*x[16]-0.8916*x[11]*x[15]*x[18]*x[19]-0.2028*x[12]*x[14]*x[15]*x[18] <= 10.375)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.