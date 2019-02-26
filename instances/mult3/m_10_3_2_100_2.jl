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
@NLconstraint(m, e1, -(-0.2692*x[1]*x[2]-0.5992*x[1]*x[3]-0.1808*x[1]*x[4]-0.5216*x[1]*x[5]+0.41*x[1]*x[6]-0.8418*x[1]*x[7]-0.5924*x[1]*x[8]-0.9653*x[1]*x[9]-0.3314*x[1]*x[10]-0.4303*x[2]*x[3]+0.6908*x[2]*x[4]-0.0111*x[2]*x[5]+0.4202*x[2]*x[6]-0.4907*x[2]*x[7]+0.6454*x[2]*x[8]-0.4368*x[2]*x[9]+0.2496*x[2]*x[10]+0.4916*x[3]*x[4]+0.7479*x[3]*x[5]-0.7442*x[3]*x[6]-0.4416*x[3]*x[7]+0.847*x[3]*x[8]+0.9726*x[3]*x[9]+0.5786*x[3]*x[10]-0.3041*x[4]*x[5]+0.5286*x[4]*x[6]-0.6138*x[4]*x[7]-0.8712*x[4]*x[8]-0.9096*x[4]*x[9]-0.707*x[4]*x[10]+0.6138*x[5]*x[6]+0.312*x[5]*x[7]-0.5107*x[5]*x[8]-0.3513*x[5]*x[9]+0.9673*x[5]*x[10]+0.2275*x[6]*x[7]-0.415*x[6]*x[8]-0.0089*x[6]*x[9]+0.4723*x[6]*x[10]-0.9209*x[7]*x[8]-0.9687*x[7]*x[9]-0.043*x[7]*x[10]+0.5532*x[8]*x[9]+0.8139*x[8]*x[10]+0.8304*x[9]*x[10]-0.3323*x[1]-0.4014*x[2]+0.6574*x[3]-0.0813*x[4]-0.9703*x[5]-0.3218*x[6]-0.8836*x[7]-0.8145*x[8]+0.3035*x[9]-0.2096*x[10]+0.9819*x[1]*x[2]*x[3]+0.9495*x[1]*x[2]*x[4]+0.9406*x[1]*x[2]*x[5]+0.9377*x[1]*x[2]*x[6]-0.2505*x[1]*x[2]*x[7]-0.8054*x[1]*x[2]*x[8]+0.5014*x[1]*x[2]*x[9]+0.649*x[1]*x[2]*x[10]+0.4489*x[1]*x[3]*x[4]-0.2659*x[1]*x[3]*x[5]+0.2441*x[1]*x[3]*x[6]-0.3874*x[1]*x[3]*x[7]-0.3974*x[1]*x[3]*x[8]+0.3528*x[1]*x[3]*x[9]+0.6601*x[1]*x[3]*x[10]+0.1126*x[1]*x[4]*x[5]+0.1189*x[1]*x[4]*x[6]-0.3444*x[1]*x[4]*x[7]+0.4614*x[1]*x[4]*x[8]-0.6835*x[1]*x[4]*x[9]+0.0658*x[1]*x[4]*x[10]+0.5684*x[1]*x[5]*x[6]-0.5684*x[1]*x[5]*x[7]-0.3494*x[1]*x[5]*x[8]+0.0029*x[1]*x[5]*x[9]-0.5542*x[1]*x[5]*x[10]-0.067*x[1]*x[6]*x[7]-0.6264*x[1]*x[6]*x[8]-0.6098*x[1]*x[6]*x[9]-0.5862*x[1]*x[6]*x[10]+0.8116*x[1]*x[7]*x[8]+0.5998*x[1]*x[7]*x[9]+0.4699*x[1]*x[7]*x[10]-0.1693*x[1]*x[8]*x[9]+0.622*x[1]*x[8]*x[10]+0.9767*x[1]*x[9]*x[10]-0.0178*x[2]*x[3]*x[4]-0.5614*x[2]*x[3]*x[5]+0.5238*x[2]*x[3]*x[6]+0.8146*x[2]*x[3]*x[7]+0.1793*x[2]*x[3]*x[8]+0.7412*x[2]*x[3]*x[9]-0.9228*x[2]*x[3]*x[10]+0.8761*x[2]*x[4]*x[5]-0.9062*x[2]*x[4]*x[6]+0.7942*x[2]*x[4]*x[7]-0.9605*x[2]*x[4]*x[8]+0.9985*x[2]*x[4]*x[9]+0.9604*x[2]*x[4]*x[10]+0.2233*x[2]*x[5]*x[6]+0.1751*x[2]*x[5]*x[7]+0.9245*x[2]*x[5]*x[8]+0.7868*x[2]*x[5]*x[9]-0.5956*x[2]*x[5]*x[10]-0.9745*x[2]*x[6]*x[7]-0.49*x[2]*x[6]*x[8]+0.7809*x[2]*x[6]*x[9]-0.4609*x[2]*x[6]*x[10]+0.778*x[2]*x[7]*x[8]+0.0383*x[2]*x[7]*x[9]-0.2656*x[2]*x[7]*x[10]+0.9676*x[2]*x[8]*x[9]+0.7539*x[2]*x[8]*x[10]+0.3629*x[2]*x[9]*x[10]-0.2751*x[3]*x[4]*x[5]-0.6036*x[3]*x[4]*x[6]-0.6255*x[3]*x[4]*x[7]+0.9753*x[3]*x[4]*x[8]-0.6347*x[3]*x[4]*x[9]-0.9763*x[3]*x[4]*x[10]+0.8874*x[3]*x[5]*x[6]-0.0161*x[3]*x[5]*x[7]+0.9611*x[3]*x[5]*x[8]+0.2266*x[3]*x[5]*x[9]-0.2746*x[3]*x[5]*x[10]+0.0648*x[3]*x[6]*x[7]-0.7084*x[3]*x[6]*x[8]-0.7343*x[3]*x[6]*x[9]-0.2376*x[3]*x[6]*x[10]+0.4007*x[3]*x[7]*x[8]+0.0995*x[3]*x[7]*x[9]+0.6511*x[3]*x[7]*x[10]+0.0747*x[3]*x[8]*x[9]+0.3247*x[3]*x[8]*x[10]-0.8937*x[3]*x[9]*x[10]-0.6571*x[4]*x[5]*x[6]+0.2373*x[4]*x[5]*x[7]+0.5175*x[4]*x[5]*x[8]+0.8201*x[4]*x[5]*x[9]+0.428*x[4]*x[5]*x[10]+0.48*x[4]*x[6]*x[7]-0.2866*x[4]*x[6]*x[8]+0.6437*x[4]*x[6]*x[9]+0.1041*x[4]*x[6]*x[10]+0.3016*x[4]*x[7]*x[8]-0.6249*x[4]*x[7]*x[9]+0.6366*x[4]*x[7]*x[10]-0.9552*x[4]*x[8]*x[9]+0.3144*x[4]*x[8]*x[10]-0.7607*x[4]*x[9]*x[10]-0.2293*x[5]*x[6]*x[7]-0.5147*x[5]*x[6]*x[8]+0.9307*x[5]*x[6]*x[9]-0.0294*x[5]*x[6]*x[10]+0.9847*x[5]*x[7]*x[8]-0.4374*x[5]*x[7]*x[9]+0.9569*x[5]*x[7]*x[10]+0.9057*x[5]*x[8]*x[9]-0.5138*x[5]*x[8]*x[10]-0.1668*x[5]*x[9]*x[10]+0.4716*x[6]*x[7]*x[8]-0.6094*x[6]*x[7]*x[9]+0.2787*x[6]*x[7]*x[10]+0.2594*x[6]*x[8]*x[9]-0.7943*x[6]*x[8]*x[10]-0.7225*x[6]*x[9]*x[10]-0.0902*x[7]*x[8]*x[9]+0.9687*x[7]*x[8]*x[10]-0.1502*x[7]*x[9]*x[10]+0.4096*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.4335*x[1]*x[2]-0.0967*x[1]*x[3]+0.269*x[1]*x[4]-0.5516*x[1]*x[5]-0.2037*x[1]*x[6]+0.6602*x[1]*x[7]-0.722*x[1]*x[8]+0.5119*x[1]*x[9]+0.586*x[1]*x[10]-0.5442*x[2]*x[3]+0.0562*x[2]*x[4]-0.7251*x[2]*x[5]-0.6521*x[2]*x[6]-0.7049*x[2]*x[7]+0.62*x[2]*x[8]-0.497*x[2]*x[9]-0.1799*x[2]*x[10]+0.9132*x[3]*x[4]+0.4395*x[3]*x[5]+0.6708*x[3]*x[6]+0.5537*x[3]*x[7]+0.0758*x[3]*x[8]+0.2226*x[3]*x[9]+0.3882*x[3]*x[10]+0.2014*x[4]*x[5]-0.8073*x[4]*x[6]+0.0984*x[4]*x[7]-0.4142*x[4]*x[8]-0.5883*x[4]*x[9]+0.6861*x[4]*x[10]+0.303*x[5]*x[6]+0.9262*x[5]*x[7]+0.2199*x[5]*x[8]-0.1922*x[5]*x[9]-0.7428*x[5]*x[10]-0.7244*x[6]*x[7]-0.5698*x[6]*x[8]+0.046*x[6]*x[9]+0.4195*x[6]*x[10]+0.0448*x[7]*x[8]-0.6311*x[7]*x[9]+0.7262*x[7]*x[10]-0.3714*x[8]*x[9]-0.9939*x[8]*x[10]+0.9992*x[9]*x[10]+0.7608*x[1]-0.5125*x[2]+0.0878*x[3]+0.522*x[4]+0.3632*x[5]-0.1574*x[6]+0.1895*x[7]-0.1071*x[8]+0.889*x[9]-0.6673*x[10]+0.2399*x[1]*x[2]*x[3]+0.6504*x[1]*x[2]*x[4]-0.3218*x[1]*x[2]*x[5]-0.3831*x[1]*x[2]*x[6]-0.2782*x[1]*x[2]*x[7]-0.1766*x[1]*x[2]*x[8]-0.0781*x[1]*x[2]*x[9]-0.2352*x[1]*x[2]*x[10]+0.2862*x[1]*x[3]*x[4]-0.5167*x[1]*x[3]*x[5]+0.4314*x[1]*x[3]*x[6]+0.7136*x[1]*x[3]*x[7]-0.6721*x[1]*x[3]*x[8]+0.4626*x[1]*x[3]*x[9]+0.0198*x[1]*x[3]*x[10]-0.4397*x[1]*x[4]*x[5]+0.9861*x[1]*x[4]*x[6]+0.5225*x[1]*x[4]*x[7]-0.9346*x[1]*x[4]*x[8]+0.4133*x[1]*x[4]*x[9]+0.3442*x[1]*x[4]*x[10]-0.8199*x[1]*x[5]*x[6]-0.0776*x[1]*x[5]*x[7]-0.4723*x[1]*x[5]*x[8]-0.289*x[1]*x[5]*x[9]+0.4463*x[1]*x[5]*x[10]-0.9454*x[1]*x[6]*x[7]+0.1697*x[1]*x[6]*x[8]+0.3885*x[1]*x[6]*x[9]-0.7786*x[1]*x[6]*x[10]+0.0525*x[1]*x[7]*x[8]+0.9874*x[1]*x[7]*x[9]+0.4525*x[1]*x[7]*x[10]+0.521*x[1]*x[8]*x[9]-0.5928*x[1]*x[8]*x[10]+0.7265*x[1]*x[9]*x[10]-0.615*x[2]*x[3]*x[4]-0.8237*x[2]*x[3]*x[5]-0.5174*x[2]*x[3]*x[6]+0.821*x[2]*x[3]*x[7]+0.6597*x[2]*x[3]*x[8]-0.8449*x[2]*x[3]*x[9]+0.743*x[2]*x[3]*x[10]+0.1144*x[2]*x[4]*x[5]-0.2056*x[2]*x[4]*x[6]+0.9986*x[2]*x[4]*x[7]+0.54*x[2]*x[4]*x[8]+0.5713*x[2]*x[4]*x[9]+0.5068*x[2]*x[4]*x[10]+0.1204*x[2]*x[5]*x[6]+0.3888*x[2]*x[5]*x[7]+0.7512*x[2]*x[5]*x[8]-0.9713*x[2]*x[5]*x[9]-0.4285*x[2]*x[5]*x[10]-0.6373*x[2]*x[6]*x[7]+0.6154*x[2]*x[6]*x[8]+0.1051*x[2]*x[6]*x[9]-0.0283*x[2]*x[6]*x[10]+0.0735*x[2]*x[7]*x[8]-0.9093*x[2]*x[7]*x[9]-0.7123*x[2]*x[7]*x[10]+0.5603*x[2]*x[8]*x[9]+0.5412*x[2]*x[8]*x[10]-0.6809*x[2]*x[9]*x[10]-0.0621*x[3]*x[4]*x[5]-0.674*x[3]*x[4]*x[6]+0.0977*x[3]*x[4]*x[7]-0.3899*x[3]*x[4]*x[8]-0.6912*x[3]*x[4]*x[9]+0.15*x[3]*x[4]*x[10]-0.7118*x[3]*x[5]*x[6]-0.6134*x[3]*x[5]*x[7]+0.3822*x[3]*x[5]*x[8]+0.9004*x[3]*x[5]*x[9]-0.7372*x[3]*x[5]*x[10]+0.42*x[3]*x[6]*x[7]-0.2405*x[3]*x[6]*x[8]-0.204*x[3]*x[6]*x[9]-0.998*x[3]*x[6]*x[10]-0.1736*x[3]*x[7]*x[8]+0.6076*x[3]*x[7]*x[9]+0.7557*x[3]*x[7]*x[10]-0.7184*x[3]*x[8]*x[9]-0.9139*x[3]*x[8]*x[10]+0.1313*x[3]*x[9]*x[10]-0.8836*x[4]*x[5]*x[6]+0.7427*x[4]*x[5]*x[7]-0.3114*x[4]*x[5]*x[8]-0.0203*x[4]*x[5]*x[9]-0.4356*x[4]*x[5]*x[10]-0.5229*x[4]*x[6]*x[7]+0.0993*x[4]*x[6]*x[8]+0.4277*x[4]*x[6]*x[9]+0.8057*x[4]*x[6]*x[10]+0.5147*x[4]*x[7]*x[8]+0.0785*x[4]*x[7]*x[9]+0.2918*x[4]*x[7]*x[10]+0.5539*x[4]*x[8]*x[9]+0.758*x[4]*x[8]*x[10]+0.2055*x[4]*x[9]*x[10]-0.877*x[5]*x[6]*x[7]-0.1218*x[5]*x[6]*x[8]-0.9826*x[5]*x[6]*x[9]-0.4008*x[5]*x[6]*x[10]+0.947*x[5]*x[7]*x[8]+0.9103*x[5]*x[7]*x[9]-0.5734*x[5]*x[7]*x[10]+0.3479*x[5]*x[8]*x[9]+0.0723*x[5]*x[8]*x[10]-0.2806*x[5]*x[9]*x[10]-0.9973*x[6]*x[7]*x[8]+0.6989*x[6]*x[7]*x[9]-0.1571*x[6]*x[7]*x[10]+0.4957*x[6]*x[8]*x[9]-0.9767*x[6]*x[8]*x[10]+0.2287*x[6]*x[9]*x[10]-0.1111*x[7]*x[8]*x[9]+0.3253*x[7]*x[8]*x[10]+0.3775*x[7]*x[9]*x[10]+0.8783*x[8]*x[9]*x[10] <= 97.457)
@NLconstraint(m, e3, (-0.6027*x[1]*x[2])-0.21*x[1]*x[3]-0.5062*x[1]*x[4]-0.8757*x[1]*x[5]+0.8153*x[1]*x[6]+0.0395*x[1]*x[7]-0.8308*x[1]*x[8]-0.2081*x[1]*x[9]-0.797*x[1]*x[10]-0.9042*x[2]*x[3]-0.5208*x[2]*x[4]+0.2869*x[2]*x[5]+0.0977*x[2]*x[6]-0.6313*x[2]*x[7]-0.1462*x[2]*x[8]+0.2552*x[2]*x[9]-0.8255*x[2]*x[10]+0.0742*x[3]*x[4]+0.6895*x[3]*x[5]-0.181*x[3]*x[6]-0.5937*x[3]*x[7]+0.6543*x[3]*x[8]+0.9317*x[3]*x[9]-0.2445*x[3]*x[10]+0.2943*x[4]*x[5]+0.3555*x[4]*x[6]-0.1086*x[4]*x[7]-0.6558*x[4]*x[8]-0.296*x[4]*x[9]-0.3417*x[4]*x[10]+0.4937*x[5]*x[6]-0.457*x[5]*x[7]+0.1226*x[5]*x[8]-0.7351*x[5]*x[9]+0.5968*x[5]*x[10]-0.5881*x[6]*x[7]-0.9469*x[6]*x[8]-0.6075*x[6]*x[9]-0.9843*x[6]*x[10]+0.6435*x[7]*x[8]+0.8889*x[7]*x[9]-0.064*x[7]*x[10]-0.7728*x[8]*x[9]-0.679*x[8]*x[10]+0.6905*x[9]*x[10]+0.7074*x[1]-0.3972*x[2]-0.4977*x[3]-0.5983*x[4]-0.4784*x[5]-0.4858*x[6]+0.2572*x[7]-0.0521*x[8]+0.7398*x[9]+0.2972*x[10]+(-0.8262*x[1]*x[2]*x[3])-0.6978*x[1]*x[2]*x[4]+0.8198*x[1]*x[2]*x[5]-0.5889*x[1]*x[2]*x[6]-0.5569*x[1]*x[2]*x[7]-0.7317*x[1]*x[2]*x[8]+0.3949*x[1]*x[2]*x[9]+0.9541*x[1]*x[2]*x[10]-0.9943*x[1]*x[3]*x[4]-0.0116*x[1]*x[3]*x[5]-0.5047*x[1]*x[3]*x[6]+0.8051*x[1]*x[3]*x[7]-0.7914*x[1]*x[3]*x[8]+0.5505*x[1]*x[3]*x[9]-0.7908*x[1]*x[3]*x[10]+0.2414*x[1]*x[4]*x[5]-0.3313*x[1]*x[4]*x[6]+0.9555*x[1]*x[4]*x[7]+0.3839*x[1]*x[4]*x[8]+0.6554*x[1]*x[4]*x[9]+0.9363*x[1]*x[4]*x[10]-0.4451*x[1]*x[5]*x[6]-0.2679*x[1]*x[5]*x[7]-0.6916*x[1]*x[5]*x[8]+0.9618*x[1]*x[5]*x[9]+0.8635*x[1]*x[5]*x[10]-0.5314*x[1]*x[6]*x[7]-0.7532*x[1]*x[6]*x[8]-0.2676*x[1]*x[6]*x[9]+0.6789*x[1]*x[6]*x[10]-0.7484*x[1]*x[7]*x[8]+0.9799*x[1]*x[7]*x[9]-0.04*x[1]*x[7]*x[10]+0.9229*x[1]*x[8]*x[9]+0.9211*x[1]*x[8]*x[10]+0.5065*x[1]*x[9]*x[10]+0.2912*x[2]*x[3]*x[4]+0.3298*x[2]*x[3]*x[5]+0.7586*x[2]*x[3]*x[6]+0.4593*x[2]*x[3]*x[7]+0.3926*x[2]*x[3]*x[8]+0.0687*x[2]*x[3]*x[9]+0.4976*x[2]*x[3]*x[10]+0.6535*x[2]*x[4]*x[5]-0.9917*x[2]*x[4]*x[6]-0.5502*x[2]*x[4]*x[7]-0.1718*x[2]*x[4]*x[8]+0.2573*x[2]*x[4]*x[9]-0.9025*x[2]*x[4]*x[10]+0.3264*x[2]*x[5]*x[6]-0.6443*x[2]*x[5]*x[7]+0.1642*x[2]*x[5]*x[8]+0.9221*x[2]*x[5]*x[9]-0.428*x[2]*x[5]*x[10]-0.4399*x[2]*x[6]*x[7]+0.7566*x[2]*x[6]*x[8]+0.354*x[2]*x[6]*x[9]-0.5276*x[2]*x[6]*x[10]-0.6272*x[2]*x[7]*x[8]-0.8758*x[2]*x[7]*x[9]-0.6662*x[2]*x[7]*x[10]-0.5727*x[2]*x[8]*x[9]-0.1467*x[2]*x[8]*x[10]-0.8066*x[2]*x[9]*x[10]-0.53*x[3]*x[4]*x[5]-0.7406*x[3]*x[4]*x[6]+0.8858*x[3]*x[4]*x[7]-0.3289*x[3]*x[4]*x[8]-0.8604*x[3]*x[4]*x[9]-0.0148*x[3]*x[4]*x[10]+0.3933*x[3]*x[5]*x[6]+0.4846*x[3]*x[5]*x[7]-0.7567*x[3]*x[5]*x[8]+0.083*x[3]*x[5]*x[9]-0.0985*x[3]*x[5]*x[10]+0.3703*x[3]*x[6]*x[7]+0.6679*x[3]*x[6]*x[8]+0.8643*x[3]*x[6]*x[9]+0.533*x[3]*x[6]*x[10]+0.1871*x[3]*x[7]*x[8]-0.1905*x[3]*x[7]*x[9]+0.9994*x[3]*x[7]*x[10]-0.7306*x[3]*x[8]*x[9]-0.2797*x[3]*x[8]*x[10]-0.7742*x[3]*x[9]*x[10]+0.2634*x[4]*x[5]*x[6]-0.6882*x[4]*x[5]*x[7]-0.1916*x[4]*x[5]*x[8]-0.6292*x[4]*x[5]*x[9]+0.3706*x[4]*x[5]*x[10]+0.2252*x[4]*x[6]*x[7]-0.5111*x[4]*x[6]*x[8]-0.7106*x[4]*x[6]*x[9]+0.436*x[4]*x[6]*x[10]+0.6397*x[4]*x[7]*x[8]-0.7626*x[4]*x[7]*x[9]-0.7465*x[4]*x[7]*x[10]-0.4273*x[4]*x[8]*x[9]+0.9735*x[4]*x[8]*x[10]-0.5091*x[4]*x[9]*x[10]-0.0217*x[5]*x[6]*x[7]-0.9406*x[5]*x[6]*x[8]-0.5301*x[5]*x[6]*x[9]-0.0925*x[5]*x[6]*x[10]-0.4232*x[5]*x[7]*x[8]+0.4301*x[5]*x[7]*x[9]-0.1282*x[5]*x[7]*x[10]+0.2232*x[5]*x[8]*x[9]+0.124*x[5]*x[8]*x[10]-0.3137*x[5]*x[9]*x[10]+0.5432*x[6]*x[7]*x[8]-0.0037*x[6]*x[7]*x[9]-0.0924*x[6]*x[7]*x[10]+0.3913*x[6]*x[8]*x[9]-0.6371*x[6]*x[8]*x[10]-0.1172*x[6]*x[9]*x[10]-0.1265*x[7]*x[8]*x[9]-0.8825*x[7]*x[8]*x[10]-0.2623*x[7]*x[9]*x[10]-0.1383*x[8]*x[9]*x[10] <= 88.943)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.