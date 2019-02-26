using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2658*x[1]-0.933*x[1]^2+(-0.5429*x[2]^2)-0.7137*x[2]+0.8551*x[3]^3-0.2917*x[3]+0.0036*x[4]^2-0.8266*x[4]+0.3074*x[5]^2-0.2051*x[5]+0.5065*x[6]^3+0.8199*x[6]^2+0.011*x[6]+0.8344*x[7]^2+0.9451*x[7]+0.0216*x[10]^2-0.0284*x[10]+0.8909*x[1]*x[2]+0.7414*x[1]*x[3]+0.7389*x[1]*x[4]-0.5285*x[1]*x[6]-0.3321*x[1]*x[7]-0.3114*x[1]*x[8]-0.0307*x[1]*x[9]-0.9868*x[2]*x[3]-0.8835*x[2]*x[4]-0.0587*x[2]*x[5]+0.2059*x[2]*x[6]+0.1038*x[2]*x[7]-0.977*x[2]*x[8]+0.4274*x[3]*x[4]-0.2003*x[3]*x[5]+0.4406*x[3]*x[6]-0.9346*x[3]*x[7]-0.623*x[3]*x[8]+0.1732*x[3]*x[9]+0.3513*x[3]*x[10]-0.2759*x[4]*x[5]-0.4248*x[4]*x[8]-0.6023*x[4]*x[10]+0.1476*x[5]*x[6]+0.1869*x[5]*x[7]+0.4658*x[5]*x[8]+0.5425*x[5]*x[9]-0.7548*x[5]*x[10]-0.6842*x[6]*x[7]+0.3917*x[6]*x[8]+0.4418*x[6]*x[9]-0.8096*x[7]*x[8]+0.3336*x[7]*x[9]+0.2547*x[7]*x[10]-0.2359*x[8]*x[9]+0.7762*x[8]*x[10]-0.9152*x[9]*x[10]+0.0556*x[8]-0.4301*x[9]+0.6963*x[1]^2*x[3]+0.1185*x[1]^2*x[6]+0.4716*x[1]^2*x[7]+0.0862*x[1]^2*x[8]+0.7561*x[1]^2*x[9]+0.5872*x[2]^2*x[4]-0.8395*x[2]^2*x[6]-0.3404*x[2]^2*x[7]+0.6545*x[2]^2*x[8]-0.1357*x[2]^2*x[9]-0.0223*x[2]^2*x[10]-0.8925*x[3]^2*x[2]-0.1946*x[3]^2*x[4]+0.2948*x[3]^2*x[5]-0.1516*x[3]^2*x[6]+0.0504*x[3]^2*x[7]-0.2539*x[3]^2*x[9]+0.8131*x[3]^2*x[10]-0.951*x[4]^2*x[1]-0.4258*x[4]^2*x[2]+0.5635*x[4]^2*x[3]+0.3752*x[4]^2*x[5]-0.7762*x[4]^2*x[6]+0.1575*x[4]^2*x[9]-0.3807*x[5]^2*x[1]-0.6837*x[5]^2*x[3]-0.5991*x[5]^2*x[4]-0.8058*x[5]^2*x[7]+0.1844*x[6]^2*x[1]-0.7488*x[6]^2*x[2]-0.7619*x[6]^2*x[3]+0.4594*x[6]^2*x[4]-0.9747*x[6]^2*x[5]-0.3733*x[6]^2*x[7]+0.2121*x[6]^2*x[8]-0.9566*x[6]^2*x[10]+0.9567*x[7]^2*x[1]-0.6991*x[7]^2*x[2]+0.1466*x[7]^2*x[3]-0.0914*x[7]^2*x[4]-0.5072*x[7]^2*x[5]+0.106*x[7]^2*x[8]-0.0277*x[7]^2*x[10]-0.5798*x[8]^2*x[2]-0.3124*x[8]^2*x[4]+0.5357*x[8]^2*x[5]+0.6436*x[8]^2*x[6]-0.0578*x[8]^2*x[7]-0.8264*x[8]^2*x[9]-0.2186*x[8]^2*x[10]+0.1714*x[9]^2*x[5]-0.0146*x[9]^2*x[6]-0.0059*x[9]^2*x[7]-0.1977*x[9]^2*x[8]+0.4879*x[9]^2*x[10]-0.3762*x[10]^2*x[4]+0.2124*x[1]*x[2]*x[3]+0.7841*x[1]*x[2]*x[6]+0.1281*x[1]*x[2]*x[7]-0.8366*x[1]*x[2]*x[10]-0.0891*x[1]*x[3]*x[4]-0.7322*x[1]*x[3]*x[5]-0.8417*x[1]*x[3]*x[6]+0.6217*x[1]*x[3]*x[7]+0.7724*x[1]*x[3]*x[10]-0.3833*x[1]*x[4]*x[6]-0.0779*x[1]*x[4]*x[7]+0.8276*x[1]*x[4]*x[9]+0.0851*x[1]*x[4]*x[10]-0.6329*x[1]*x[5]*x[6]+0.5177*x[1]*x[5]*x[7]-0.8511*x[1]*x[5]*x[8]-0.0679*x[1]*x[5]*x[9]+0.4361*x[1]*x[5]*x[10]-0.4213*x[1]*x[6]*x[7]-0.9738*x[1]*x[6]*x[8]-0.2486*x[1]*x[6]*x[9]+0.4653*x[1]*x[7]*x[8]+0.084*x[1]*x[7]*x[9]+0.0777*x[1]*x[8]*x[9]+0.2223*x[1]*x[8]*x[10]+0.8713*x[1]*x[9]*x[10]-0.898*x[2]*x[3]*x[4]-0.057*x[2]*x[3]*x[5]+0.1818*x[2]*x[3]*x[6]-0.7041*x[2]*x[3]*x[7]+0.9689*x[2]*x[3]*x[8]-0.5895*x[2]*x[3]*x[9]+0.801*x[2]*x[3]*x[10]-0.0418*x[2]*x[4]*x[5]-0.4816*x[2]*x[4]*x[7]-0.4233*x[2]*x[4]*x[8]+0.1721*x[2]*x[4]*x[9]-0.7126*x[2]*x[5]*x[6]-0.3714*x[2]*x[5]*x[7]-0.0557*x[2]*x[5]*x[8]+0.3843*x[2]*x[5]*x[9]+0.744*x[2]*x[6]*x[7]+0.3319*x[2]*x[6]*x[8]-0.433*x[2]*x[6]*x[9]+0.9555*x[2]*x[6]*x[10]+0.3938*x[2]*x[7]*x[8]+0.0044*x[2]*x[7]*x[9]+0.2734*x[2]*x[8]*x[9]-0.1144*x[2]*x[8]*x[10]+0.2082*x[2]*x[9]*x[10]-0.1787*x[3]*x[4]*x[7]-0.8829*x[3]*x[4]*x[8]+0.2378*x[3]*x[4]*x[9]-0.1431*x[3]*x[5]*x[6]+0.923*x[3]*x[5]*x[7]+0.135*x[3]*x[5]*x[8]-0.5571*x[3]*x[5]*x[9]+0.7438*x[3]*x[5]*x[10]+0.6411*x[3]*x[6]*x[7]-0.694*x[3]*x[6]*x[8]-0.6977*x[3]*x[6]*x[9]+0.377*x[3]*x[6]*x[10]+0.0949*x[3]*x[7]*x[8]-0.4155*x[3]*x[7]*x[9]+0.9131*x[3]*x[7]*x[10]+0.9232*x[3]*x[8]*x[9]+0.7182*x[3]*x[8]*x[10]-0.4642*x[3]*x[9]*x[10]-0.158*x[4]*x[5]*x[6]+0.7975*x[4]*x[5]*x[7]-0.0499*x[4]*x[5]*x[8]+0.9907*x[4]*x[5]*x[9]-0.5666*x[4]*x[6]*x[7]-0.4525*x[4]*x[6]*x[8]-0.5567*x[4]*x[6]*x[9]-0.3299*x[4]*x[6]*x[10]-0.623*x[4]*x[7]*x[8]-0.3336*x[4]*x[7]*x[9]+0.7759*x[4]*x[7]*x[10]-0.9811*x[4]*x[8]*x[9]+0.5263*x[4]*x[8]*x[10]-0.4518*x[4]*x[9]*x[10]+0.6028*x[5]*x[6]*x[7]-0.5373*x[5]*x[6]*x[8]+0.2762*x[5]*x[6]*x[9]+0.7663*x[5]*x[7]*x[8]+0.048*x[5]*x[7]*x[9]-0.5338*x[5]*x[7]*x[10]-0.6253*x[5]*x[8]*x[9]-0.1863*x[5]*x[9]*x[10]+0.2481*x[6]*x[7]*x[8]+0.5669*x[6]*x[7]*x[9]-0.409*x[6]*x[8]*x[9]+0.6919*x[6]*x[8]*x[10]+0.4144*x[6]*x[9]*x[10]+0.4431*x[7]*x[8]*x[9]-0.3963*x[7]*x[8]*x[10]+0.7634*x[7]*x[9]*x[10]-0.8899*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.3276*x[2]^3+0.3756*x[2]+0.4183*x[3]^2-0.9202*x[3]^3-0.6307*x[3]+0.8665*x[4]^3-0.4507*x[4]+0.0657*x[5]-0.2575*x[5]^2+0.604*x[6]^3+0.5426*x[6]^2+0.8109*x[6]+0.3005*x[8]^3-0.2519*x[8]+0.4765*x[9]-0.8776*x[9]^2+0.1355*x[1]*x[4]-0.3918*x[1]*x[3]+0.968*x[1]*x[5]-0.1489*x[1]*x[8]-0.3226*x[1]*x[9]+0.8836*x[1]*x[10]-0.3713*x[2]*x[3]-0.1204*x[2]*x[5]-0.7406*x[2]*x[6]+0.4965*x[2]*x[7]+0.1019*x[2]*x[8]-0.2894*x[2]*x[10]-0.5353*x[3]*x[4]+0.3443*x[3]*x[5]+0.3782*x[3]*x[6]+0.7881*x[3]*x[8]-0.2311*x[3]*x[9]-0.506*x[3]*x[10]-0.4531*x[4]*x[5]-0.3762*x[4]*x[8]+0.6376*x[4]*x[9]-0.6465*x[5]*x[6]+0.0617*x[5]*x[7]-0.1855*x[5]*x[8]+0.0164*x[5]*x[9]-0.2918*x[5]*x[10]+0.303*x[6]*x[8]-0.1007*x[6]*x[10]-0.8269*x[7]*x[8]+0.127*x[7]*x[9]-0.733*x[7]*x[10]+0.2035*x[8]*x[9]-0.1836*x[8]*x[10]-0.4169*x[1]-0.5235*x[7]+0.6699*x[10]+(-0.1114*x[1]^2*x[3])-0.1671*x[1]^2*x[5]+0.1056*x[1]^2*x[6]-0.0819*x[1]^2*x[9]+0.8772*x[2]^2*x[1]+0.9087*x[2]^2*x[3]-0.9703*x[2]^2*x[4]-0.4902*x[2]^2*x[7]+0.9052*x[2]^2*x[8]+0.4888*x[2]^2*x[9]+0.8093*x[2]^2*x[10]+0.4492*x[3]^2*x[2]-0.067*x[3]^2*x[4]-0.3883*x[3]^2*x[5]-0.6703*x[3]^2*x[6]-0.415*x[3]^2*x[7]-0.6343*x[3]^2*x[8]+0.6767*x[3]^2*x[9]+0.7489*x[3]^2*x[10]-0.5185*x[4]^2*x[2]+0.8336*x[4]^2*x[3]-0.7454*x[4]^2*x[7]-0.9007*x[4]^2*x[8]+0.3034*x[5]^2*x[1]-0.9408*x[5]^2*x[2]+0.962*x[5]^2*x[3]-0.6142*x[5]^2*x[7]-0.2282*x[5]^2*x[8]+0.0824*x[5]^2*x[9]+0.7738*x[5]^2*x[10]-0.6472*x[6]^2*x[2]-0.5308*x[6]^2*x[3]+0.7605*x[6]^2*x[4]-0.5717*x[6]^2*x[7]+0.9203*x[6]^2*x[8]-0.2493*x[6]^2*x[10]-0.5905*x[7]^2*x[1]-0.1912*x[7]^2*x[2]-0.9496*x[7]^2*x[4]-0.4681*x[7]^2*x[5]+0.4225*x[7]^2*x[6]+0.4142*x[7]^2*x[8]+0.5075*x[7]^2*x[9]+0.2467*x[7]^2*x[10]-0.2196*x[8]^2*x[1]-0.7255*x[8]^2*x[2]+0.4484*x[8]^2*x[3]+0.5132*x[8]^2*x[4]-0.0686*x[8]^2*x[6]+0.124*x[8]^2*x[7]-0.7769*x[8]^2*x[9]-0.5867*x[9]^2*x[3]-0.3461*x[9]^2*x[4]+0.1836*x[9]^2*x[5]+0.1683*x[9]^2*x[7]+0.2613*x[9]^2*x[8]-0.6818*x[9]^2*x[10]+0.7956*x[10]^2*x[6]+0.5255*x[10]^2*x[9]+0.4078*x[1]*x[2]*x[4]-0.2712*x[1]*x[2]*x[3]+0.7378*x[1]*x[2]*x[5]-0.689*x[1]*x[2]*x[6]-0.621*x[1]*x[2]*x[8]-0.4899*x[1]*x[2]*x[9]+0.2769*x[1]*x[3]*x[4]+0.6929*x[1]*x[3]*x[5]-0.5153*x[1]*x[3]*x[6]+0.4171*x[1]*x[3]*x[7]-0.3084*x[1]*x[3]*x[8]+0.9954*x[1]*x[3]*x[9]+0.6895*x[1]*x[4]*x[5]+0.9056*x[1]*x[4]*x[6]-0.3222*x[1]*x[4]*x[7]-0.2111*x[1]*x[4]*x[8]-0.3292*x[1]*x[5]*x[8]+0.1537*x[1]*x[5]*x[9]-0.0289*x[1]*x[6]*x[9]-0.5229*x[1]*x[7]*x[8]+0.5009*x[1]*x[7]*x[9]+0.5816*x[1]*x[8]*x[9]+0.6761*x[1]*x[9]*x[10]+0.3045*x[2]*x[3]*x[4]-0.294*x[2]*x[3]*x[6]-0.6339*x[2]*x[3]*x[8]-0.5678*x[2]*x[3]*x[9]-0.4613*x[2]*x[3]*x[10]-0.9445*x[2]*x[4]*x[5]+0.5278*x[2]*x[4]*x[6]-0.4062*x[2]*x[4]*x[7]+0.5291*x[2]*x[4]*x[8]-0.0389*x[2]*x[4]*x[9]+0.3127*x[2]*x[4]*x[10]+0.6176*x[2]*x[5]*x[6]-0.895*x[2]*x[5]*x[7]+0.6463*x[2]*x[5]*x[8]-0.0206*x[2]*x[5]*x[9]-0.0908*x[2]*x[5]*x[10]-0.0962*x[2]*x[6]*x[7]+0.2828*x[2]*x[6]*x[8]+0.0784*x[2]*x[6]*x[9]-0.3086*x[2]*x[7]*x[8]-0.146*x[2]*x[7]*x[9]-0.6423*x[2]*x[7]*x[10]+0.3156*x[2]*x[8]*x[9]-0.4637*x[2]*x[8]*x[10]+0.5667*x[2]*x[9]*x[10]-0.407*x[3]*x[4]*x[5]-0.7475*x[3]*x[4]*x[6]+0.6466*x[3]*x[4]*x[7]-0.2386*x[3]*x[4]*x[8]+0.4603*x[3]*x[4]*x[9]-0.1883*x[3]*x[4]*x[10]+0.503*x[3]*x[5]*x[6]+0.4842*x[3]*x[5]*x[7]+0.3709*x[3]*x[5]*x[8]-0.7845*x[3]*x[5]*x[9]-0.0984*x[3]*x[5]*x[10]+0.3995*x[3]*x[6]*x[7]+0.1426*x[3]*x[6]*x[8]-0.1691*x[3]*x[6]*x[9]-0.5519*x[3]*x[6]*x[10]+0.1442*x[3]*x[7]*x[8]-0.3703*x[3]*x[7]*x[9]-0.201*x[3]*x[7]*x[10]-0.4939*x[3]*x[8]*x[9]+0.7298*x[3]*x[8]*x[10]+0.1367*x[4]*x[5]*x[6]+0.2382*x[4]*x[5]*x[7]-0.8198*x[4]*x[5]*x[8]-0.7229*x[4]*x[5]*x[9]-0.9677*x[4]*x[6]*x[7]+0.9468*x[4]*x[6]*x[8]+0.0575*x[4]*x[6]*x[9]-0.765*x[4]*x[6]*x[10]-0.5853*x[4]*x[7]*x[8]+0.9207*x[4]*x[7]*x[9]-0.0065*x[4]*x[7]*x[10]+0.8659*x[4]*x[8]*x[9]-0.2096*x[4]*x[8]*x[10]+0.8175*x[4]*x[9]*x[10]+0.0506*x[5]*x[6]*x[7]+0.209*x[5]*x[6]*x[8]+0.1289*x[5]*x[6]*x[10]-0.9509*x[5]*x[7]*x[8]-0.7195*x[5]*x[7]*x[9]-0.574*x[5]*x[7]*x[10]-0.6448*x[5]*x[8]*x[9]+0.4109*x[5]*x[8]*x[10]-0.5249*x[5]*x[9]*x[10]+0.6832*x[6]*x[7]*x[8]+0.4093*x[6]*x[7]*x[9]-0.8287*x[6]*x[8]*x[9]-0.0583*x[6]*x[8]*x[10]-0.8828*x[6]*x[9]*x[10]+0.4593*x[7]*x[8]*x[9]-0.9333*x[7]*x[8]*x[10]-0.1269*x[7]*x[9]*x[10]-0.6859*x[8]*x[9]*x[10] <= 62.917)
@NLconstraint(m, e3, (-0.4114*x[2]^2)-0.822*x[2]+(-0.5408*x[5]^3)-0.0938*x[5]^2-0.9642*x[5]+0.6397*x[7]^2-0.3565*x[7]+(-0.5605*x[8]^3)-0.6196*x[8]^2-0.8457*x[8]+0.4508*x[9]^3-0.4404*x[9]+0.0743*x[10]^2-0.1326*x[10]+(-0.6744*x[1]*x[2])-0.368*x[1]*x[4]-0.208*x[1]*x[5]+0.0122*x[1]*x[6]-0.0917*x[1]*x[7]-0.0705*x[2]*x[3]+0.5116*x[2]*x[4]+0.3995*x[2]*x[5]+0.6509*x[2]*x[6]-0.0236*x[2]*x[7]+0.6013*x[2]*x[9]-0.2833*x[3]*x[4]-0.4531*x[3]*x[8]-0.2468*x[4]*x[5]+0.708*x[4]*x[8]+0.8374*x[4]*x[9]+0.9425*x[4]*x[10]-0.6815*x[5]*x[6]+0.0775*x[5]*x[7]-0.1426*x[5]*x[8]-0.4341*x[5]*x[9]-0.4827*x[6]*x[7]+0.8477*x[6]*x[8]+0.4444*x[7]*x[9]-0.3945*x[8]*x[9]-0.4654*x[8]*x[10]+0.836*x[9]*x[10]+0.0203*x[1]+0.8302*x[3]+0.5988*x[4]-0.9569*x[6]+(-0.5223*x[1]^2*x[2])-0.907*x[1]^2*x[4]-0.6225*x[1]^2*x[5]+0.7243*x[1]^2*x[6]+0.5727*x[2]^2*x[1]-0.0239*x[2]^2*x[3]-0.1649*x[2]^2*x[4]-0.8154*x[2]^2*x[5]+0.6604*x[2]^2*x[6]+0.6344*x[2]^2*x[8]-0.1399*x[2]^2*x[9]-0.4043*x[3]^2*x[1]+0.3437*x[3]^2*x[2]-0.3058*x[3]^2*x[4]-0.5974*x[3]^2*x[5]+0.8762*x[3]^2*x[6]-0.8618*x[3]^2*x[7]-0.3684*x[3]^2*x[10]+0.2122*x[4]^2*x[1]+0.6968*x[4]^2*x[3]-0.6048*x[4]^2*x[5]-0.5907*x[4]^2*x[6]-0.5065*x[4]^2*x[7]+0.1946*x[4]^2*x[8]+0.5057*x[4]^2*x[9]+0.385*x[4]^2*x[10]+0.2656*x[5]^2*x[2]+0.8014*x[5]^2*x[3]-0.5254*x[5]^2*x[4]+0.5434*x[5]^2*x[7]-0.9435*x[5]^2*x[8]+0.6935*x[5]^2*x[9]-0.9725*x[5]^2*x[10]-0.3142*x[6]^2*x[2]-0.1834*x[6]^2*x[3]+0.8065*x[6]^2*x[5]-0.2554*x[6]^2*x[7]+0.6599*x[6]^2*x[9]+0.8541*x[6]^2*x[10]+0.2053*x[7]^2*x[1]+0.5597*x[7]^2*x[2]-0.0539*x[7]^2*x[3]-0.6163*x[7]^2*x[5]+0.6747*x[7]^2*x[6]-0.3299*x[7]^2*x[8]-0.436*x[7]^2*x[9]+0.6961*x[7]^2*x[10]+0.095*x[8]^2*x[1]-0.4538*x[8]^2*x[2]-0.0607*x[8]^2*x[3]+0.5945*x[8]^2*x[4]+0.8772*x[8]^2*x[5]+0.9874*x[8]^2*x[6]+0.2132*x[8]^2*x[7]-0.7552*x[8]^2*x[9]+0.9365*x[8]^2*x[10]-0.8675*x[9]^2*x[1]+0.2237*x[9]^2*x[2]-0.7235*x[9]^2*x[3]-0.5525*x[9]^2*x[4]-0.7318*x[9]^2*x[5]-0.2389*x[9]^2*x[6]-0.2145*x[9]^2*x[8]+0.8915*x[9]^2*x[10]+0.9364*x[10]^2*x[2]+0.7098*x[10]^2*x[4]-0.939*x[10]^2*x[5]-0.5447*x[10]^2*x[6]+0.4679*x[1]*x[2]*x[4]-0.7287*x[1]*x[2]*x[3]+0.6627*x[1]*x[2]*x[6]-0.8855*x[1]*x[2]*x[7]+0.2809*x[1]*x[2]*x[9]+0.7485*x[1]*x[3]*x[4]+0.7914*x[1]*x[3]*x[6]+0.2116*x[1]*x[3]*x[7]+0.401*x[1]*x[3]*x[8]-0.1034*x[1]*x[3]*x[9]+0.1484*x[1]*x[4]*x[5]+0.6732*x[1]*x[4]*x[6]+0.4364*x[1]*x[4]*x[7]+0.8055*x[1]*x[4]*x[8]-0.3866*x[1]*x[5]*x[6]-0.0323*x[1]*x[5]*x[7]+0.9231*x[1]*x[5]*x[8]-0.8775*x[1]*x[5]*x[9]+0.3639*x[1]*x[6]*x[7]-0.3663*x[1]*x[6]*x[8]+0.542*x[1]*x[6]*x[9]+0.318*x[1]*x[7]*x[9]-0.0794*x[1]*x[9]*x[10]+0.9172*x[2]*x[3]*x[4]+0.883*x[2]*x[3]*x[5]-0.5764*x[2]*x[3]*x[6]+0.1839*x[2]*x[3]*x[7]-0.9033*x[2]*x[3]*x[8]-0.0132*x[2]*x[3]*x[9]+0.8085*x[2]*x[3]*x[10]-0.2309*x[2]*x[4]*x[5]+0.2213*x[2]*x[4]*x[6]+0.1751*x[2]*x[4]*x[7]-0.6914*x[2]*x[4]*x[8]-0.1356*x[2]*x[4]*x[9]+0.0291*x[2]*x[4]*x[10]+0.7796*x[2]*x[5]*x[6]-0.3702*x[2]*x[5]*x[7]-0.4565*x[2]*x[5]*x[8]-0.7671*x[2]*x[5]*x[9]-0.2899*x[2]*x[5]*x[10]-0.6788*x[2]*x[6]*x[7]-0.2856*x[2]*x[6]*x[8]+0.346*x[2]*x[6]*x[9]+0.958*x[2]*x[7]*x[9]+0.4742*x[2]*x[7]*x[10]+0.1118*x[2]*x[8]*x[9]+0.5512*x[2]*x[9]*x[10]-0.1545*x[3]*x[4]*x[5]-0.7689*x[3]*x[4]*x[6]+0.8637*x[3]*x[4]*x[7]-0.4679*x[3]*x[4]*x[8]+0.8244*x[3]*x[4]*x[9]+0.2147*x[3]*x[4]*x[10]-0.0771*x[3]*x[5]*x[6]-0.0947*x[3]*x[5]*x[7]+0.688*x[3]*x[5]*x[8]+0.403*x[3]*x[5]*x[9]+0.8333*x[3]*x[5]*x[10]+0.4437*x[3]*x[6]*x[7]+0.0771*x[3]*x[6]*x[8]+0.8204*x[3]*x[6]*x[9]-0.198*x[3]*x[6]*x[10]+0.6974*x[3]*x[7]*x[8]+0.0149*x[3]*x[7]*x[9]-0.886*x[3]*x[7]*x[10]+0.4406*x[3]*x[8]*x[9]+0.334*x[3]*x[8]*x[10]-0.4906*x[4]*x[5]*x[6]-0.9123*x[4]*x[5]*x[7]-0.5162*x[4]*x[5]*x[8]-0.373*x[4]*x[5]*x[9]-0.4961*x[4]*x[6]*x[7]-0.4541*x[4]*x[6]*x[8]-0.9923*x[4]*x[6]*x[9]+0.1051*x[4]*x[6]*x[10]+0.6514*x[4]*x[7]*x[8]-0.0381*x[4]*x[7]*x[9]+0.2219*x[4]*x[7]*x[10]-0.3965*x[4]*x[8]*x[9]+0.1597*x[4]*x[8]*x[10]+0.6341*x[4]*x[9]*x[10]-0.6307*x[5]*x[6]*x[7]-0.4384*x[5]*x[6]*x[8]+0.1126*x[5]*x[6]*x[9]-0.7207*x[5]*x[7]*x[8]-0.7849*x[5]*x[7]*x[9]-0.3173*x[5]*x[7]*x[10]-0.6471*x[5]*x[8]*x[9]+0.3078*x[5]*x[8]*x[10]+0.6348*x[5]*x[9]*x[10]+0.7468*x[6]*x[7]*x[8]-0.0636*x[6]*x[7]*x[9]+0.776*x[6]*x[7]*x[10]+0.4358*x[6]*x[8]*x[9]+0.3874*x[6]*x[9]*x[10]-0.0015*x[7]*x[8]*x[9]+0.1721*x[7]*x[8]*x[10]+0.3562*x[7]*x[9]*x[10]-0.0944*x[8]*x[9]*x[10] <= 26.344)
@NLconstraint(m, e4, (-0.5859*x[2]^2)-0.4356*x[2]+(-0.7207*x[3]^3)-0.1832*x[3]^2-0.6228*x[3]+0.7271*x[4]^3+0.2343*x[4]+(-0.843*x[5]^2)-0.0906*x[5]+0.4832*x[6]-0.455*x[6]^2+0.3808*x[7]^3-0.2395*x[7]+0.0215*x[9]-0.4311*x[9]^2+0.998*x[10]^2-0.7534*x[10]+(-0.8327*x[1]*x[2])-0.3182*x[1]*x[3]+0.715*x[1]*x[5]+0.6729*x[1]*x[6]-0.2161*x[1]*x[7]-0.4643*x[1]*x[8]-0.6123*x[2]*x[3]-0.7682*x[2]*x[5]-0.6733*x[2]*x[6]-0.0307*x[2]*x[7]-0.1674*x[2]*x[9]-0.2289*x[2]*x[10]+0.2689*x[3]*x[5]+0.8052*x[3]*x[6]-0.9176*x[3]*x[7]+0.4416*x[3]*x[8]+0.742*x[3]*x[9]-0.4902*x[4]*x[5]+0.8311*x[4]*x[6]-0.1213*x[4]*x[7]+0.137*x[4]*x[8]-0.8636*x[4]*x[9]-0.6928*x[4]*x[10]-0.4784*x[5]*x[6]+0.374*x[5]*x[7]+0.807*x[5]*x[8]-0.197*x[5]*x[9]-0.8418*x[5]*x[10]-0.381*x[6]*x[7]+0.0984*x[6]*x[8]-0.938*x[6]*x[9]-0.7963*x[6]*x[10]-0.2267*x[7]*x[8]-0.5038*x[7]*x[10]-0.194*x[8]*x[9]-0.6921*x[8]*x[10]+0.2075*x[9]*x[10]-0.8934*x[1]+0.616*x[8]+0.1297*x[1]^2*x[4]-0.5305*x[1]^2*x[3]-0.5406*x[1]^2*x[10]-0.7876*x[2]^2*x[3]+0.8961*x[2]^2*x[4]+0.4622*x[2]^2*x[5]+0.5223*x[2]^2*x[6]+0.9255*x[2]^2*x[8]-0.023*x[2]^2*x[9]-0.8981*x[2]^2*x[10]-0.4047*x[3]^2*x[1]+0.2242*x[3]^2*x[2]+0.8697*x[3]^2*x[6]-0.9116*x[3]^2*x[7]-0.603*x[3]^2*x[8]+0.2019*x[3]^2*x[9]-0.0328*x[3]^2*x[10]+0.0011*x[4]^2*x[2]-0.2706*x[4]^2*x[3]+0.6446*x[4]^2*x[5]-0.4257*x[4]^2*x[6]-0.2685*x[4]^2*x[7]-0.0698*x[4]^2*x[8]+0.1588*x[5]^2*x[2]-0.8426*x[5]^2*x[4]+0.4783*x[5]^2*x[7]-0.7284*x[5]^2*x[8]-0.4181*x[5]^2*x[10]-0.8163*x[6]^2*x[2]+0.5394*x[6]^2*x[3]-0.4008*x[6]^2*x[4]-0.2446*x[6]^2*x[7]-0.6728*x[6]^2*x[8]-0.4847*x[6]^2*x[9]+0.6511*x[7]^2*x[2]-0.7383*x[7]^2*x[3]+0.2306*x[7]^2*x[5]-0.0543*x[7]^2*x[8]+0.9393*x[7]^2*x[9]-0.4231*x[7]^2*x[10]-0.0167*x[8]^2*x[1]+0.3024*x[8]^2*x[2]-0.4897*x[8]^2*x[3]-0.1754*x[8]^2*x[4]+0.3249*x[8]^2*x[5]+0.0088*x[8]^2*x[6]+0.2095*x[8]^2*x[7]+0.7576*x[8]^2*x[9]+0.276*x[8]^2*x[10]-0.9986*x[9]^2*x[3]+0.2047*x[9]^2*x[4]+0.303*x[9]^2*x[6]+0.0559*x[9]^2*x[7]-0.6817*x[9]^2*x[8]-0.591*x[10]^2*x[2]-0.2288*x[10]^2*x[6]+0.6648*x[10]^2*x[7]+(-0.7269*x[1]*x[2]*x[3])-0.0218*x[1]*x[2]*x[4]-0.8056*x[1]*x[2]*x[6]+0.6144*x[1]*x[2]*x[7]+0.375*x[1]*x[2]*x[9]+0.192*x[1]*x[2]*x[10]+0.235*x[1]*x[3]*x[4]+0.164*x[1]*x[3]*x[5]-0.9316*x[1]*x[3]*x[7]+0.6316*x[1]*x[3]*x[9]-0.2172*x[1]*x[3]*x[10]+0.5906*x[1]*x[4]*x[7]+0.134*x[1]*x[4]*x[8]-0.5373*x[1]*x[4]*x[10]+0.2568*x[1]*x[5]*x[6]-0.234*x[1]*x[5]*x[7]+0.0289*x[1]*x[5]*x[8]+0.3932*x[1]*x[5]*x[9]-0.3076*x[1]*x[5]*x[10]-0.6223*x[1]*x[6]*x[7]-0.6586*x[1]*x[6]*x[8]+0.3855*x[1]*x[6]*x[10]+0.7473*x[1]*x[7]*x[9]+0.8262*x[1]*x[8]*x[9]-0.2879*x[1]*x[8]*x[10]-0.9417*x[2]*x[3]*x[5]+0.7355*x[2]*x[3]*x[6]-0.345*x[2]*x[3]*x[7]+0.4144*x[2]*x[3]*x[8]-0.9345*x[2]*x[3]*x[9]+0.872*x[2]*x[3]*x[10]+0.2791*x[2]*x[4]*x[5]+0.1113*x[2]*x[4]*x[6]+0.5538*x[2]*x[4]*x[7]+0.9121*x[2]*x[4]*x[8]-0.8899*x[2]*x[4]*x[9]+0.4413*x[2]*x[4]*x[10]+0.5088*x[2]*x[5]*x[6]-0.3257*x[2]*x[5]*x[7]+0.6861*x[2]*x[5]*x[8]+0.3892*x[2]*x[5]*x[9]+0.7262*x[2]*x[5]*x[10]-0.7825*x[2]*x[6]*x[7]+0.9713*x[2]*x[6]*x[8]-0.8843*x[2]*x[6]*x[9]+0.3745*x[2]*x[7]*x[8]+0.8661*x[2]*x[7]*x[9]+0.6519*x[2]*x[7]*x[10]+0.4227*x[2]*x[8]*x[9]+0.1952*x[2]*x[8]*x[10]+0.418*x[2]*x[9]*x[10]+0.5741*x[3]*x[4]*x[5]-0.3791*x[3]*x[4]*x[7]-0.45*x[3]*x[4]*x[8]+0.8178*x[3]*x[4]*x[9]+0.6677*x[3]*x[4]*x[10]-0.9894*x[3]*x[5]*x[6]-0.9055*x[3]*x[5]*x[7]-0.121*x[3]*x[5]*x[8]+0.9867*x[3]*x[5]*x[9]-0.1224*x[3]*x[5]*x[10]-0.2579*x[3]*x[6]*x[8]+0.0168*x[3]*x[6]*x[9]+0.5666*x[3]*x[6]*x[10]+0.6456*x[3]*x[7]*x[8]+0.9009*x[3]*x[7]*x[9]-0.1995*x[3]*x[7]*x[10]-0.0472*x[3]*x[8]*x[9]+0.6888*x[3]*x[8]*x[10]-0.4793*x[4]*x[5]*x[6]+0.7403*x[4]*x[5]*x[7]-0.137*x[4]*x[5]*x[9]+0.132*x[4]*x[5]*x[10]+0.9819*x[4]*x[6]*x[7]-0.6875*x[4]*x[6]*x[8]-0.2168*x[4]*x[6]*x[9]+0.0427*x[4]*x[7]*x[8]-0.4034*x[4]*x[7]*x[9]+0.4645*x[4]*x[8]*x[9]+0.6125*x[4]*x[8]*x[10]+0.1648*x[4]*x[9]*x[10]+0.1287*x[5]*x[6]*x[7]-0.5261*x[5]*x[6]*x[8]+0.7454*x[5]*x[6]*x[9]+0.5436*x[5]*x[6]*x[10]+0.7127*x[5]*x[7]*x[8]-0.3839*x[5]*x[7]*x[9]-0.1148*x[5]*x[7]*x[10]+0.0875*x[5]*x[8]*x[10]-0.8737*x[5]*x[9]*x[10]+0.7522*x[6]*x[7]*x[8]-0.8591*x[6]*x[7]*x[9]-0.3619*x[6]*x[8]*x[10]-0.0281*x[6]*x[9]*x[10]+0.8886*x[7]*x[8]*x[9]-0.1528*x[7]*x[8]*x[10]-0.9542*x[7]*x[9]*x[10]+0.5463*x[8]*x[9]*x[10] <= 77.975)
@NLconstraint(m, e5, 0.2552*x[1]-0.5691*x[1]^2+(-0.1857*x[2]^3)-0.595*x[2]^2-0.3671*x[2]+0.4397*x[3]^3-0.2049*x[3]+0.1885*x[4]^2+0.1751*x[4]+0.6*x[5]^2-0.4942*x[5]^3+0.8858*x[5]+0.5024*x[6]^3-0.2429*x[6]^2-0.4971*x[6]+0.049*x[7]^3-0.7106*x[7]^2+0.394*x[7]+0.0506*x[8]^2+0.7362*x[8]+(-0.7641*x[9]^2)-0.6261*x[9]+0.1216*x[1]*x[3]+0.2194*x[1]*x[4]+0.918*x[1]*x[6]+0.2692*x[1]*x[7]+0.3697*x[1]*x[8]+0.3516*x[1]*x[9]-0.1446*x[2]*x[3]+0.9642*x[2]*x[5]+0.2562*x[2]*x[6]-0.1215*x[2]*x[7]-0.0889*x[2]*x[8]-0.2334*x[2]*x[9]+0.6244*x[2]*x[10]+0.7504*x[3]*x[4]+0.8636*x[3]*x[5]+0.8771*x[3]*x[6]+0.5255*x[3]*x[7]-0.9119*x[3]*x[8]+0.6884*x[3]*x[9]+0.4004*x[3]*x[10]-0.1608*x[4]*x[5]+0.4227*x[4]*x[6]+0.2841*x[4]*x[7]-0.3982*x[4]*x[8]-0.2312*x[4]*x[10]-0.9425*x[5]*x[6]+0.1848*x[5]*x[7]+0.9875*x[5]*x[8]+0.4415*x[5]*x[9]-0.0551*x[6]*x[8]+0.1844*x[6]*x[9]-0.0992*x[6]*x[10]-0.2007*x[7]*x[8]-0.7814*x[7]*x[9]-0.451*x[7]*x[10]-0.5753*x[8]*x[9]+0.7347*x[8]*x[10]+0.4213*x[9]*x[10]-0.6236*x[10]+0.8399*x[1]^2*x[5]-0.6497*x[1]^2*x[3]-0.5813*x[1]^2*x[6]-0.3194*x[1]^2*x[7]-0.7717*x[2]^2*x[3]-0.2304*x[2]^2*x[4]-0.658*x[2]^2*x[5]+0.1291*x[2]^2*x[6]+0.8306*x[2]^2*x[7]+0.6491*x[2]^2*x[8]-0.0406*x[3]^2*x[2]-0.1104*x[3]^2*x[4]-0.1008*x[3]^2*x[5]-0.1289*x[3]^2*x[6]-0.1534*x[3]^2*x[7]-0.1633*x[3]^2*x[9]-0.8619*x[4]^2*x[1]+0.9989*x[4]^2*x[2]+0.1578*x[4]^2*x[3]+0.4876*x[4]^2*x[5]-0.0328*x[4]^2*x[6]-0.4784*x[4]^2*x[7]+0.5955*x[4]^2*x[8]-0.2775*x[4]^2*x[9]+0.162*x[5]^2*x[1]-0.878*x[5]^2*x[2]-0.6049*x[5]^2*x[4]+0.0076*x[5]^2*x[6]+0.3867*x[5]^2*x[7]-0.1092*x[5]^2*x[8]-0.1536*x[5]^2*x[10]-0.628*x[6]^2*x[2]+0.7624*x[6]^2*x[3]+0.7328*x[6]^2*x[4]+0.1087*x[6]^2*x[9]-0.0176*x[7]^2*x[2]-0.1254*x[7]^2*x[3]+0.042*x[7]^2*x[5]+0.9159*x[7]^2*x[6]+0.4542*x[7]^2*x[8]+0.2183*x[7]^2*x[10]-0.5193*x[8]^2*x[1]+0.2375*x[8]^2*x[2]-0.4136*x[8]^2*x[3]-0.1763*x[8]^2*x[4]-0.1464*x[8]^2*x[6]-0.4808*x[9]^2*x[3]-0.1765*x[9]^2*x[4]+0.3343*x[9]^2*x[5]-0.6655*x[9]^2*x[6]-0.475*x[9]^2*x[8]+0.3873*x[9]^2*x[10]-0.1814*x[10]^2*x[1]+0.9797*x[10]^2*x[6]+0.3102*x[1]*x[2]*x[3]-0.4887*x[1]*x[2]*x[6]-0.4163*x[1]*x[2]*x[7]-0.5177*x[1]*x[2]*x[9]+0.5656*x[1]*x[2]*x[10]+0.0973*x[1]*x[3]*x[4]-0.1387*x[1]*x[3]*x[6]-0.3901*x[1]*x[3]*x[7]+0.9888*x[1]*x[3]*x[9]-0.3768*x[1]*x[4]*x[5]+0.7583*x[1]*x[4]*x[6]+0.7675*x[1]*x[4]*x[7]-0.5079*x[1]*x[4]*x[8]-0.3392*x[1]*x[4]*x[9]+0.8793*x[1]*x[4]*x[10]-0.5725*x[1]*x[5]*x[6]+0.9483*x[1]*x[5]*x[8]-0.6743*x[1]*x[5]*x[9]+0.6847*x[1]*x[6]*x[7]+0.2835*x[1]*x[6]*x[8]+0.9501*x[1]*x[6]*x[9]-0.9978*x[1]*x[6]*x[10]+0.7206*x[1]*x[7]*x[9]-0.152*x[1]*x[8]*x[9]-0.4928*x[1]*x[9]*x[10]-0.9384*x[2]*x[3]*x[4]-0.2981*x[2]*x[3]*x[5]-0.4465*x[2]*x[3]*x[6]+0.9127*x[2]*x[3]*x[7]+0.8109*x[2]*x[3]*x[8]+0.6529*x[2]*x[3]*x[9]+0.464*x[2]*x[3]*x[10]-0.0932*x[2]*x[4]*x[5]+0.516*x[2]*x[4]*x[6]-0.954*x[2]*x[4]*x[7]+0.2412*x[2]*x[4]*x[10]+0.5782*x[2]*x[5]*x[6]+0.0554*x[2]*x[5]*x[7]+0.1187*x[2]*x[5]*x[8]+0.0172*x[2]*x[5]*x[9]+0.0643*x[2]*x[5]*x[10]-0.9722*x[2]*x[6]*x[7]-0.1914*x[2]*x[6]*x[8]+0.1662*x[2]*x[6]*x[9]-0.3102*x[2]*x[6]*x[10]+0.1239*x[2]*x[7]*x[8]+0.7745*x[2]*x[7]*x[9]-0.58*x[2]*x[7]*x[10]+0.9852*x[2]*x[8]*x[9]-0.0731*x[2]*x[8]*x[10]+0.9719*x[2]*x[9]*x[10]+0.3052*x[3]*x[4]*x[5]-0.3016*x[3]*x[4]*x[6]+0.3251*x[3]*x[4]*x[7]-0.6987*x[3]*x[4]*x[8]-0.3178*x[3]*x[4]*x[9]-0.7301*x[3]*x[4]*x[10]-0.161*x[3]*x[5]*x[6]-0.3515*x[3]*x[5]*x[7]+0.196*x[3]*x[5]*x[8]-0.6313*x[3]*x[5]*x[9]+0.1641*x[3]*x[5]*x[10]+0.6985*x[3]*x[6]*x[7]-0.9627*x[3]*x[6]*x[8]+0.9752*x[3]*x[6]*x[9]+0.64*x[3]*x[6]*x[10]-0.3778*x[3]*x[7]*x[8]-0.9054*x[3]*x[7]*x[10]-0.0025*x[3]*x[8]*x[9]+0.1453*x[3]*x[8]*x[10]-0.4591*x[3]*x[9]*x[10]+0.6064*x[4]*x[5]*x[6]-0.0409*x[4]*x[5]*x[8]-0.5174*x[4]*x[5]*x[9]-0.5084*x[4]*x[6]*x[7]-0.3438*x[4]*x[6]*x[8]+0.1153*x[4]*x[6]*x[9]+0.6604*x[4]*x[6]*x[10]+0.5773*x[4]*x[7]*x[8]-0.0628*x[4]*x[7]*x[9]-0.8786*x[4]*x[8]*x[9]-0.7698*x[4]*x[8]*x[10]+0.9899*x[4]*x[9]*x[10]+0.103*x[5]*x[6]*x[7]+0.8837*x[5]*x[6]*x[8]-0.026*x[5]*x[6]*x[9]-0.3989*x[5]*x[6]*x[10]+0.8602*x[5]*x[7]*x[8]-0.9424*x[5]*x[7]*x[9]+0.5603*x[5]*x[8]*x[9]-0.2669*x[5]*x[8]*x[10]-0.9529*x[5]*x[9]*x[10]-0.7395*x[6]*x[7]*x[8]-0.2791*x[6]*x[7]*x[9]+0.4881*x[6]*x[8]*x[9]+0.323*x[6]*x[8]*x[10]-0.9237*x[6]*x[9]*x[10]-0.5957*x[7]*x[8]*x[9]+0.3163*x[7]*x[9]*x[10] <= 57.49)
@NLconstraint(m, e6, 0.4405*x[2]-0.5563*x[2]^2+0.0199*x[4]^2-0.5375*x[4]^3-0.6404*x[4]+(-0.8519*x[5]^2)-0.0747*x[5]+0.8087*x[7]^3+0.733*x[7]+(-0.2024*x[8]^2)-0.3162*x[8]+0.5982*x[9]^3+0.6576*x[9]^2+0.2713*x[9]+(-0.3974*x[1]*x[2])-0.1965*x[1]*x[3]-0.6552*x[1]*x[4]+0.2271*x[1]*x[5]-0.7625*x[1]*x[6]-0.4315*x[1]*x[8]+0.0738*x[1]*x[9]-0.6211*x[1]*x[10]+0.2143*x[2]*x[3]-0.1292*x[2]*x[4]+0.6915*x[2]*x[5]+0.2722*x[2]*x[6]-0.222*x[2]*x[7]+0.7964*x[2]*x[9]+0.3272*x[3]*x[4]-0.0628*x[3]*x[5]-0.8226*x[3]*x[6]+0.8224*x[3]*x[7]+0.4192*x[3]*x[8]-0.5869*x[3]*x[9]+0.378*x[4]*x[5]+0.0385*x[4]*x[6]-0.988*x[4]*x[7]+0.1904*x[4]*x[8]+0.1861*x[4]*x[10]-0.4452*x[5]*x[6]-0.9311*x[5]*x[7]-0.3119*x[5]*x[8]+0.322*x[5]*x[9]-0.3816*x[5]*x[10]+0.6032*x[6]*x[7]+0.3987*x[6]*x[8]-0.8245*x[6]*x[9]-0.9153*x[7]*x[8]+0.3662*x[7]*x[9]-0.5049*x[8]*x[9]+0.5201*x[8]*x[10]+0.1416*x[9]*x[10]-0.2564*x[1]+0.3341*x[3]+0.3435*x[6]+0.5158*x[10]+0.4905*x[1]^2*x[2]+0.7048*x[2]^2*x[3]+0.2363*x[2]^2*x[4]-0.6433*x[2]^2*x[5]-0.002*x[2]^2*x[6]+0.693*x[2]^2*x[7]-0.9812*x[2]^2*x[8]+0.2241*x[2]^2*x[9]+0.7384*x[2]^2*x[10]-0.7004*x[3]^2*x[1]-0.6935*x[3]^2*x[2]-0.4738*x[3]^2*x[5]+0.7105*x[3]^2*x[6]+0.7639*x[3]^2*x[7]-0.6497*x[3]^2*x[8]-0.6134*x[3]^2*x[9]+0.2003*x[4]^2*x[2]+0.1411*x[4]^2*x[3]+0.6842*x[4]^2*x[5]-0.0995*x[4]^2*x[6]-0.339*x[4]^2*x[7]+0.3731*x[4]^2*x[8]-0.9058*x[4]^2*x[9]-0.3516*x[4]^2*x[10]-0.9296*x[5]^2*x[4]-0.9937*x[5]^2*x[6]+0.2705*x[5]^2*x[7]-0.3349*x[5]^2*x[10]-0.3438*x[6]^2*x[5]-0.9904*x[6]^2*x[7]-0.2474*x[6]^2*x[8]+0.0363*x[6]^2*x[10]-0.752*x[7]^2*x[2]+0.2036*x[7]^2*x[3]-0.6986*x[7]^2*x[5]+0.1155*x[7]^2*x[8]-0.4239*x[7]^2*x[9]+0.4394*x[7]^2*x[10]-0.8657*x[8]^2*x[2]+0.1083*x[8]^2*x[3]-0.1165*x[8]^2*x[4]+0.7819*x[8]^2*x[5]+0.0236*x[8]^2*x[7]+0.0286*x[8]^2*x[10]+0.3214*x[9]^2*x[2]-0.4034*x[9]^2*x[3]+0.7608*x[9]^2*x[5]+0.5987*x[9]^2*x[8]-0.3625*x[10]^2*x[4]-0.0513*x[10]^2*x[6]+0.3323*x[10]^2*x[7]+0.5135*x[10]^2*x[8]+0.3164*x[1]*x[2]*x[4]-0.341*x[1]*x[2]*x[3]+0.8222*x[1]*x[2]*x[5]+0.5787*x[1]*x[2]*x[6]-0.8946*x[1]*x[2]*x[7]-0.4946*x[1]*x[2]*x[8]+0.6491*x[1]*x[2]*x[9]+0.6713*x[1]*x[3]*x[4]-0.7259*x[1]*x[3]*x[6]+0.3382*x[1]*x[3]*x[7]+0.9273*x[1]*x[3]*x[9]+0.3588*x[1]*x[3]*x[10]-0.96*x[1]*x[4]*x[5]+0.8273*x[1]*x[4]*x[6]-0.1941*x[1]*x[4]*x[7]-0.072*x[1]*x[4]*x[8]+0.9723*x[1]*x[4]*x[9]+0.76*x[1]*x[5]*x[6]-0.3782*x[1]*x[5]*x[7]-0.4318*x[1]*x[5]*x[8]-0.25*x[1]*x[5]*x[9]-0.6202*x[1]*x[6]*x[7]+0.9224*x[1]*x[6]*x[8]-0.85*x[1]*x[6]*x[10]-0.3002*x[1]*x[7]*x[8]-0.8668*x[1]*x[7]*x[9]-0.7992*x[1]*x[8]*x[10]-0.1851*x[1]*x[9]*x[10]-0.7702*x[2]*x[3]*x[4]-0.9228*x[2]*x[3]*x[5]-0.5061*x[2]*x[3]*x[6]+0.9007*x[2]*x[3]*x[7]-0.4435*x[2]*x[3]*x[8]+0.492*x[2]*x[3]*x[9]-0.9844*x[2]*x[3]*x[10]+0.1688*x[2]*x[4]*x[5]-0.8605*x[2]*x[4]*x[6]+0.6727*x[2]*x[4]*x[7]+0.3062*x[2]*x[4]*x[8]+0.998*x[2]*x[4]*x[9]+0.2254*x[2]*x[4]*x[10]-0.4646*x[2]*x[5]*x[6]-0.689*x[2]*x[5]*x[7]-0.2895*x[2]*x[5]*x[8]-0.3829*x[2]*x[5]*x[9]+0.6262*x[2]*x[5]*x[10]-0.1389*x[2]*x[6]*x[7]-0.709*x[2]*x[6]*x[8]-0.009*x[2]*x[6]*x[9]-0.0511*x[2]*x[6]*x[10]+0.7496*x[2]*x[7]*x[8]-0.8444*x[2]*x[7]*x[9]-0.2218*x[2]*x[7]*x[10]-0.4813*x[2]*x[8]*x[9]+0.677*x[2]*x[8]*x[10]-0.1015*x[2]*x[9]*x[10]+0.5485*x[3]*x[4]*x[5]-0.5104*x[3]*x[4]*x[6]+0.9981*x[3]*x[4]*x[7]-0.6375*x[3]*x[4]*x[8]-0.1793*x[3]*x[4]*x[9]+0.3809*x[3]*x[4]*x[10]-0.133*x[3]*x[5]*x[6]+0.3664*x[3]*x[5]*x[7]+0.8662*x[3]*x[5]*x[8]+0.9796*x[3]*x[5]*x[9]+0.4117*x[3]*x[5]*x[10]+0.6268*x[3]*x[6]*x[7]+0.2486*x[3]*x[6]*x[8]-0.0023*x[3]*x[6]*x[9]+0.8832*x[3]*x[6]*x[10]+0.6109*x[3]*x[7]*x[8]+0.0916*x[3]*x[7]*x[9]+0.6436*x[3]*x[8]*x[9]-0.2837*x[3]*x[8]*x[10]+0.4738*x[3]*x[9]*x[10]-0.1514*x[4]*x[5]*x[6]-0.2781*x[4]*x[5]*x[7]-0.8294*x[4]*x[5]*x[8]+0.8429*x[4]*x[5]*x[9]+0.7548*x[4]*x[6]*x[7]+0.7867*x[4]*x[6]*x[8]-0.8972*x[4]*x[6]*x[9]-0.0566*x[4]*x[6]*x[10]+0.9504*x[4]*x[7]*x[8]+0.0725*x[4]*x[7]*x[9]+0.3575*x[4]*x[7]*x[10]-0.6304*x[4]*x[8]*x[9]+0.7094*x[4]*x[8]*x[10]+0.9249*x[4]*x[9]*x[10]+0.6228*x[5]*x[6]*x[7]+0.6433*x[5]*x[6]*x[8]+0.6496*x[5]*x[6]*x[9]-0.7811*x[5]*x[6]*x[10]-0.4858*x[5]*x[7]*x[8]-0.2695*x[5]*x[7]*x[9]-0.833*x[5]*x[8]*x[9]+0.9178*x[5]*x[8]*x[10]-0.84*x[5]*x[9]*x[10]+0.4919*x[6]*x[7]*x[8]+0.8023*x[6]*x[7]*x[9]-0.7818*x[6]*x[8]*x[9]-0.1479*x[6]*x[9]*x[10]-0.2984*x[7]*x[8]*x[9]+0.0198*x[7]*x[8]*x[10]+0.5723*x[7]*x[9]*x[10]+0.4168*x[8]*x[9]*x[10] <= 2.301)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.