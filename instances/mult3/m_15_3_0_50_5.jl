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
@NLconstraint(m, e1, -(0.4918*x[1]*x[8]+0.6766*x[1]*x[10]+0.2494*x[1]*x[13]+0.3638*x[2]*x[3]+0.9407*x[2]*x[4]-0.7701*x[2]*x[5]-0.8239*x[2]*x[6]+0.4097*x[2]*x[7]+0.8547*x[2]*x[9]-0.0693*x[2]*x[11]+0.7631*x[2]*x[12]+0.3737*x[2]*x[13]-0.5673*x[2]*x[14]-0.1898*x[3]*x[5]-0.3784*x[3]*x[10]-0.4711*x[3]*x[11]+0.6232*x[3]*x[13]+0.7322*x[3]*x[14]-0.622*x[4]*x[6]+0.5109*x[4]*x[7]-0.4068*x[4]*x[8]-0.9276*x[4]*x[9]+0.7765*x[4]*x[10]-0.9819*x[4]*x[11]+0.2213*x[4]*x[14]-0.1791*x[5]*x[6]+0.6454*x[5]*x[7]-0.8445*x[5]*x[8]+0.8814*x[5]*x[9]-0.7787*x[5]*x[10]+0.0309*x[5]*x[12]-0.4402*x[5]*x[13]-0.3021*x[6]*x[8]-0.9206*x[6]*x[9]-0.1136*x[6]*x[10]+0.2878*x[6]*x[11]-0.5904*x[6]*x[12]+0.171*x[6]*x[13]+0.367*x[6]*x[15]-0.4294*x[7]*x[8]+0.9665*x[7]*x[11]+0.0689*x[7]*x[12]+0.9343*x[7]*x[15]-0.6265*x[8]*x[10]-0.1984*x[8]*x[11]-0.9964*x[8]*x[14]-0.7751*x[9]*x[10]-0.0761*x[9]*x[15]+0.8164*x[10]*x[11]-0.1636*x[10]*x[12]+0.7936*x[10]*x[13]+0.3855*x[10]*x[15]+0.9475*x[11]*x[13]-0.3135*x[11]*x[15]-0.2836*x[12]*x[14]+0.3892*x[14]*x[15]-0.7493*x[1]+0.3125*x[2]+0.9622*x[3]+0.5407*x[4]+0.8247*x[5]+0.1749*x[6]+0.9047*x[7]+0.699*x[8]+0.5983*x[9]+0.9217*x[10]+0.3898*x[11]+0.1108*x[12]-0.1213*x[13]+0.1705*x[14]-0.2378*x[15]+0.0245*x[1]*x[2]*x[6]-0.7505*x[1]*x[2]*x[5]-0.8313*x[1]*x[2]*x[9]+0.4234*x[1]*x[2]*x[10]+0.529*x[1]*x[2]*x[11]+0.2682*x[1]*x[2]*x[13]+0.4932*x[1]*x[3]*x[4]-0.1851*x[1]*x[3]*x[7]+0.9756*x[1]*x[3]*x[13]+0.9189*x[1]*x[3]*x[15]+0.6705*x[1]*x[4]*x[8]+0.1185*x[1]*x[4]*x[9]-0.8751*x[1]*x[4]*x[13]-0.337*x[1]*x[5]*x[11]+0.4541*x[1]*x[6]*x[8]-0.4433*x[1]*x[6]*x[9]-0.7643*x[1]*x[6]*x[10]-0.2469*x[1]*x[6]*x[12]+0.3339*x[1]*x[6]*x[13]+0.6671*x[1]*x[6]*x[15]-0.9581*x[1]*x[7]*x[10]+0.924*x[1]*x[7]*x[14]+0.8259*x[1]*x[8]*x[9]-0.5169*x[1]*x[8]*x[10]+0.7226*x[1]*x[10]*x[11]-0.8298*x[1]*x[10]*x[13]+0.7224*x[1]*x[11]*x[14]+0.5029*x[1]*x[12]*x[14]-0.4657*x[1]*x[13]*x[14]-0.8606*x[2]*x[3]*x[4]+0.1123*x[2]*x[3]*x[5]-0.1001*x[2]*x[3]*x[7]+0.4692*x[2]*x[3]*x[8]+0.3408*x[2]*x[3]*x[10]+0.5031*x[2]*x[3]*x[12]-0.664*x[2]*x[3]*x[13]-0.3724*x[2]*x[3]*x[14]+0.1066*x[2]*x[3]*x[15]-0.1452*x[2]*x[4]*x[5]+0.8338*x[2]*x[4]*x[7]+0.4154*x[2]*x[4]*x[9]+0.8625*x[2]*x[4]*x[10]-0.3412*x[2]*x[4]*x[12]-0.3507*x[2]*x[4]*x[14]+0.9598*x[2]*x[4]*x[15]+0.9641*x[2]*x[5]*x[7]-0.0542*x[2]*x[5]*x[8]+0.1346*x[2]*x[5]*x[9]+0.9057*x[2]*x[5]*x[10]-0.3706*x[2]*x[5]*x[11]-0.214*x[2]*x[5]*x[12]-0.832*x[2]*x[5]*x[13]+0.5526*x[2]*x[6]*x[7]+0.222*x[2]*x[6]*x[8]-0.8429*x[2]*x[6]*x[9]-0.7457*x[2]*x[6]*x[10]-0.5957*x[2]*x[6]*x[11]-0.3269*x[2]*x[6]*x[12]-0.2406*x[2]*x[6]*x[13]-0.7726*x[2]*x[6]*x[14]-0.5277*x[2]*x[6]*x[15]+0.234*x[2]*x[7]*x[11]+0.9348*x[2]*x[7]*x[14]+0.6729*x[2]*x[7]*x[15]+0.2321*x[2]*x[8]*x[14]+0.2263*x[2]*x[8]*x[15]+0.761*x[2]*x[9]*x[14]-0.1587*x[2]*x[10]*x[11]-0.7558*x[2]*x[10]*x[13]-0.3088*x[2]*x[10]*x[14]+0.3037*x[2]*x[10]*x[15]+0.9239*x[2]*x[11]*x[13]+0.729*x[2]*x[12]*x[14]-0.433*x[2]*x[13]*x[15]-0.3814*x[3]*x[4]*x[5]-0.9445*x[3]*x[4]*x[6]-0.285*x[3]*x[4]*x[7]+0.0941*x[3]*x[4]*x[8]+0.4262*x[3]*x[4]*x[11]+0.8031*x[3]*x[4]*x[13]-0.5629*x[3]*x[4]*x[14]+0.8925*x[3]*x[5]*x[6]-0.6118*x[3]*x[5]*x[7]-0.3435*x[3]*x[5]*x[10]-0.0087*x[3]*x[5]*x[12]+0.0491*x[3]*x[5]*x[13]+0.3101*x[3]*x[6]*x[9]-0.8903*x[3]*x[6]*x[10]-0.1609*x[3]*x[6]*x[12]+0.8856*x[3]*x[6]*x[13]+0.889*x[3]*x[6]*x[15]-0.3506*x[3]*x[7]*x[8]-0.6401*x[3]*x[7]*x[12]-0.3917*x[3]*x[8]*x[9]+0.5031*x[3]*x[8]*x[10]+0.5939*x[3]*x[8]*x[14]+0.938*x[3]*x[9]*x[11]+0.6228*x[3]*x[9]*x[12]+0.2113*x[3]*x[9]*x[13]+0.9338*x[3]*x[9]*x[14]+0.113*x[3]*x[10]*x[11]-0.5786*x[3]*x[10]*x[12]-0.4547*x[3]*x[10]*x[14]-0.3121*x[3]*x[11]*x[12]+0.1215*x[3]*x[13]*x[15]-0.8974*x[4]*x[5]*x[7]-0.543*x[4]*x[5]*x[12]+0.2243*x[4]*x[5]*x[13]-0.5267*x[4]*x[5]*x[14]+0.1181*x[4]*x[6]*x[7]+0.3764*x[4]*x[6]*x[14]-0.9131*x[4]*x[6]*x[15]+0.6812*x[4]*x[7]*x[8]+0.6772*x[4]*x[7]*x[9]+0.4673*x[4]*x[7]*x[10]-0.6432*x[4]*x[7]*x[11]-0.2367*x[4]*x[7]*x[12]-0.0141*x[4]*x[7]*x[15]-0.0997*x[4]*x[8]*x[9]-0.6076*x[4]*x[8]*x[10]+0.4148*x[4]*x[8]*x[11]-0.9718*x[4]*x[9]*x[10]-0.9562*x[4]*x[9]*x[12]-0.7996*x[4]*x[10]*x[11]+0.9903*x[4]*x[10]*x[12]-0.9693*x[4]*x[10]*x[13]-0.6511*x[4]*x[10]*x[14]+0.4339*x[4]*x[11]*x[13]-0.6027*x[4]*x[12]*x[13]-0.9296*x[4]*x[12]*x[15]+0.0827*x[5]*x[6]*x[9]-0.4255*x[5]*x[6]*x[11]+0.7699*x[5]*x[6]*x[13]-0.9064*x[5]*x[6]*x[14]-0.7697*x[5]*x[7]*x[12]+0.3296*x[5]*x[7]*x[14]-0.3659*x[5]*x[7]*x[15]+0.4196*x[5]*x[8]*x[9]+0.0764*x[5]*x[8]*x[10]-0.2617*x[5]*x[8]*x[11]-0.7809*x[5]*x[8]*x[12]-0.8808*x[5]*x[8]*x[13]+0.5116*x[5]*x[9]*x[10]-0.3988*x[5]*x[9]*x[11]-0.3393*x[5]*x[9]*x[13]-0.604*x[5]*x[9]*x[14]+0.6569*x[5]*x[10]*x[11]-0.6871*x[5]*x[10]*x[12]-0.9211*x[5]*x[10]*x[14]+0.8252*x[5]*x[11]*x[14]-0.952*x[5]*x[11]*x[15]+0.2143*x[5]*x[12]*x[13]-0.2944*x[5]*x[12]*x[14]-0.9095*x[5]*x[14]*x[15]-0.2813*x[6]*x[7]*x[9]-0.5469*x[6]*x[7]*x[10]+0.2952*x[6]*x[8]*x[9]-0.5366*x[6]*x[8]*x[10]-0.0281*x[6]*x[8]*x[13]-0.0308*x[6]*x[9]*x[10]-0.0078*x[6]*x[9]*x[11]-0.7156*x[6]*x[9]*x[14]-0.934*x[6]*x[10]*x[11]+0.7158*x[6]*x[10]*x[13]+0.5421*x[6]*x[10]*x[14]-0.6056*x[6]*x[10]*x[15]+0.718*x[6]*x[11]*x[13]-0.0196*x[6]*x[11]*x[14]-0.4283*x[6]*x[11]*x[15]-0.7452*x[6]*x[12]*x[14]-0.9363*x[6]*x[14]*x[15]-0.568*x[7]*x[8]*x[10]+0.3767*x[7]*x[8]*x[11]-0.5774*x[7]*x[8]*x[12]+0.8072*x[7]*x[8]*x[13]+0.6968*x[7]*x[9]*x[10]+0.8306*x[7]*x[9]*x[13]+0.3722*x[7]*x[9]*x[14]-0.2215*x[7]*x[10]*x[11]+0.7081*x[7]*x[10]*x[12]-0.5005*x[7]*x[10]*x[13]+0.6449*x[7]*x[11]*x[13]-0.902*x[7]*x[11]*x[14]+0.2542*x[7]*x[12]*x[13]-0.9545*x[7]*x[12]*x[14]+0.3636*x[7]*x[14]*x[15]-0.3685*x[8]*x[9]*x[10]+0.5275*x[8]*x[9]*x[11]+0.3819*x[8]*x[9]*x[12]-0.6688*x[8]*x[9]*x[13]-0.4183*x[8]*x[9]*x[14]+0.7843*x[8]*x[9]*x[15]+0.1448*x[8]*x[10]*x[11]-0.2122*x[8]*x[10]*x[12]+0.1587*x[8]*x[10]*x[13]+0.7102*x[8]*x[10]*x[14]-0.1308*x[8]*x[11]*x[13]-0.208*x[8]*x[11]*x[14]-0.2856*x[8]*x[12]*x[13]+0.7479*x[8]*x[12]*x[14]+0.1478*x[8]*x[13]*x[14]-0.5361*x[9]*x[10]*x[13]-0.6369*x[9]*x[10]*x[15]-0.808*x[9]*x[11]*x[12]-0.4929*x[9]*x[11]*x[13]-0.0578*x[9]*x[11]*x[14]+0.4328*x[9]*x[12]*x[13]-0.0402*x[9]*x[13]*x[14]-0.0997*x[9]*x[13]*x[15]+0.5999*x[9]*x[14]*x[15]+0.3641*x[10]*x[11]*x[12]+0.5623*x[10]*x[11]*x[13]+0.7991*x[10]*x[11]*x[14]+0.0707*x[10]*x[12]*x[14]-0.9086*x[10]*x[12]*x[15]-0.7214*x[10]*x[13]*x[14]+0.0205*x[10]*x[13]*x[15]+0.4113*x[10]*x[14]*x[15]-0.8884*x[11]*x[12]*x[14]+0.0092*x[11]*x[13]*x[14]+0.1099*x[11]*x[13]*x[15]-0.1352*x[12]*x[13]*x[14]+0.4103*x[12]*x[14]*x[15])+x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script.