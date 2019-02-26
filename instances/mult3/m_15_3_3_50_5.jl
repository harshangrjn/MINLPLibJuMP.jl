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
@NLconstraint(m, e1, -(0.3168*x[1]*x[2]+0.5212*x[1]*x[3]-0.7305*x[1]*x[4]+0.433*x[1]*x[5]+0.0811*x[1]*x[7]-0.9905*x[2]*x[4]+0.2196*x[2]*x[7]-0.8178*x[2]*x[12]-0.8657*x[3]*x[4]-0.1127*x[3]*x[8]+0.1451*x[3]*x[10]-0.8095*x[3]*x[14]+0.7988*x[3]*x[15]-0.8439*x[4]*x[5]+0.4124*x[4]*x[6]-0.7589*x[4]*x[7]+0.7875*x[4]*x[9]-0.0391*x[4]*x[11]-0.7657*x[4]*x[13]+0.994*x[4]*x[14]-0.8143*x[4]*x[15]-0.7892*x[5]*x[6]-0.7791*x[5]*x[7]-0.0091*x[5]*x[11]+0.5046*x[5]*x[13]+0.5174*x[5]*x[14]-0.2238*x[5]*x[15]+0.9546*x[6]*x[7]-0.9648*x[6]*x[11]+0.1363*x[6]*x[12]-0.7196*x[6]*x[13]+0.7164*x[6]*x[14]-0.6935*x[7]*x[10]+0.168*x[7]*x[11]+0.8286*x[7]*x[14]-0.8222*x[8]*x[9]-0.4794*x[8]*x[10]-0.3488*x[8]*x[11]+0.1718*x[8]*x[12]+0.0411*x[8]*x[13]+0.2012*x[8]*x[14]-0.7546*x[9]*x[11]+0.1707*x[9]*x[12]+0.7836*x[10]*x[11]+0.0718*x[10]*x[12]+0.7764*x[10]*x[13]-0.1524*x[10]*x[14]-0.3088*x[11]*x[14]+0.116*x[11]*x[15]+0.2671*x[12]*x[13]+0.1951*x[13]*x[15]+0.5292*x[1]+0.9551*x[2]-0.158*x[3]+0.1254*x[4]-0.8865*x[5]-0.667*x[6]-0.4502*x[7]+0.1638*x[8]+0.8059*x[9]+0.5977*x[10]+0.8471*x[11]-0.2277*x[12]-0.7037*x[13]-0.0625*x[14]-0.5164*x[15]+0.9922*x[1]*x[2]*x[10]-0.7554*x[1]*x[2]*x[4]+0.0185*x[1]*x[2]*x[13]+0.8304*x[1]*x[2]*x[14]-0.0333*x[1]*x[3]*x[5]+0.0473*x[1]*x[3]*x[6]-0.5138*x[1]*x[3]*x[7]-0.9312*x[1]*x[3]*x[9]-0.8422*x[1]*x[3]*x[13]-0.9775*x[1]*x[3]*x[14]+0.7454*x[1]*x[3]*x[15]+0.1397*x[1]*x[4]*x[8]+0.4144*x[1]*x[4]*x[10]-0.8406*x[1]*x[4]*x[12]+0.8012*x[1]*x[4]*x[13]-0.9629*x[1]*x[4]*x[15]+0.6855*x[1]*x[5]*x[6]-0.0977*x[1]*x[5]*x[8]+0.6219*x[1]*x[5]*x[9]-0.2322*x[1]*x[5]*x[11]+0.0766*x[1]*x[5]*x[13]-0.537*x[1]*x[5]*x[14]-0.3275*x[1]*x[6]*x[9]-0.0387*x[1]*x[6]*x[12]-0.0809*x[1]*x[6]*x[13]-0.8276*x[1]*x[6]*x[14]+0.095*x[1]*x[7]*x[10]+0.1681*x[1]*x[7]*x[12]+0.4665*x[1]*x[7]*x[13]-0.6137*x[1]*x[7]*x[14]+0.2899*x[1]*x[8]*x[10]+0.7813*x[1]*x[8]*x[11]+0.9656*x[1]*x[9]*x[11]+0.2442*x[1]*x[9]*x[14]+0.7785*x[1]*x[10]*x[14]+0.5813*x[1]*x[11]*x[12]-0.007*x[1]*x[11]*x[13]+0.5776*x[1]*x[11]*x[14]+0.1787*x[1]*x[14]*x[15]-0.2821*x[2]*x[3]*x[4]-0.8609*x[2]*x[3]*x[6]-0.3786*x[2]*x[3]*x[7]+0.5882*x[2]*x[3]*x[9]-0.7683*x[2]*x[3]*x[12]+0.2841*x[2]*x[3]*x[13]-0.9373*x[2]*x[3]*x[15]-0.7023*x[2]*x[4]*x[6]-0.8098*x[2]*x[4]*x[7]+0.3673*x[2]*x[4]*x[9]+0.2936*x[2]*x[4]*x[10]-0.5853*x[2]*x[4]*x[11]-0.3899*x[2]*x[4]*x[12]+0.5363*x[2]*x[4]*x[13]-0.3049*x[2]*x[4]*x[14]-0.2892*x[2]*x[4]*x[15]-0.1587*x[2]*x[5]*x[6]+0.0954*x[2]*x[5]*x[7]+0.7063*x[2]*x[5]*x[8]-0.6284*x[2]*x[5]*x[9]-0.4699*x[2]*x[5]*x[10]+0.1665*x[2]*x[5]*x[11]-0.8891*x[2]*x[5]*x[13]-0.2021*x[2]*x[6]*x[11]-0.2593*x[2]*x[6]*x[13]-0.1092*x[2]*x[6]*x[14]-0.0505*x[2]*x[6]*x[15]-0.2639*x[2]*x[7]*x[8]+0.0016*x[2]*x[7]*x[9]-0.4634*x[2]*x[7]*x[11]-0.2316*x[2]*x[7]*x[13]-0.8948*x[2]*x[7]*x[14]-0.5066*x[2]*x[8]*x[10]+0.8965*x[2]*x[8]*x[12]-0.3326*x[2]*x[8]*x[15]+0.9917*x[2]*x[9]*x[11]+0.9196*x[2]*x[9]*x[12]+0.6407*x[2]*x[9]*x[14]-0.7699*x[2]*x[10]*x[11]-0.5454*x[2]*x[10]*x[12]-0.808*x[2]*x[10]*x[14]+0.7045*x[2]*x[11]*x[12]-0.9996*x[2]*x[11]*x[14]-0.8479*x[2]*x[12]*x[13]-0.1943*x[2]*x[12]*x[14]-0.7818*x[2]*x[13]*x[15]+0.4891*x[3]*x[4]*x[9]+0.9199*x[3]*x[4]*x[10]+0.4592*x[3]*x[4]*x[11]-0.5653*x[3]*x[4]*x[12]-0.8353*x[3]*x[4]*x[13]+0.4742*x[3]*x[4]*x[14]+0.3352*x[3]*x[4]*x[15]-0.6927*x[3]*x[5]*x[6]+0.5955*x[3]*x[5]*x[7]-0.5136*x[3]*x[5]*x[8]-0.0618*x[3]*x[5]*x[9]-0.1864*x[3]*x[5]*x[10]-0.1838*x[3]*x[5]*x[11]+0.892*x[3]*x[5]*x[12]+0.7189*x[3]*x[5]*x[13]-0.864*x[3]*x[5]*x[14]-0.7036*x[3]*x[6]*x[7]-0.4557*x[3]*x[6]*x[9]+0.1175*x[3]*x[6]*x[11]-0.6355*x[3]*x[6]*x[12]+0.3427*x[3]*x[6]*x[13]-0.9127*x[3]*x[6]*x[15]-0.2575*x[3]*x[7]*x[9]+0.3833*x[3]*x[7]*x[13]-0.9696*x[3]*x[8]*x[9]+0.9375*x[3]*x[8]*x[10]+0.1781*x[3]*x[8]*x[12]-0.779*x[3]*x[9]*x[10]-0.4311*x[3]*x[9]*x[11]-0.7214*x[3]*x[9]*x[13]+0.3905*x[3]*x[9]*x[14]-0.5647*x[3]*x[10]*x[12]-0.5705*x[3]*x[10]*x[13]+0.6726*x[3]*x[10]*x[14]+0.7066*x[3]*x[11]*x[12]-0.5679*x[3]*x[11]*x[13]-0.5997*x[3]*x[11]*x[14]-0.719*x[3]*x[11]*x[15]-0.1873*x[3]*x[12]*x[13]+0.2552*x[3]*x[12]*x[15]+0.5878*x[3]*x[13]*x[14]+0.2701*x[4]*x[5]*x[7]-0.8296*x[4]*x[5]*x[8]+0.3031*x[4]*x[5]*x[9]-0.3786*x[4]*x[5]*x[10]-0.1247*x[4]*x[5]*x[12]+0.0517*x[4]*x[5]*x[13]-0.6984*x[4]*x[6]*x[9]+0.6615*x[4]*x[6]*x[10]+0.5904*x[4]*x[6]*x[11]+0.2135*x[4]*x[6]*x[12]-0.0366*x[4]*x[7]*x[8]-0.9695*x[4]*x[7]*x[9]+0.2194*x[4]*x[7]*x[10]+0.3683*x[4]*x[7]*x[11]+0.3713*x[4]*x[7]*x[12]-0.6232*x[4]*x[7]*x[13]-0.7118*x[4]*x[7]*x[15]+0.138*x[4]*x[8]*x[9]-0.3806*x[4]*x[8]*x[12]-0.6364*x[4]*x[8]*x[13]-0.3179*x[4]*x[9]*x[11]+0.7377*x[4]*x[9]*x[12]+0.5759*x[4]*x[9]*x[13]+0.2045*x[4]*x[10]*x[12]-0.0548*x[4]*x[10]*x[13]-0.5599*x[4]*x[10]*x[14]+0.7372*x[4]*x[10]*x[15]+0.9809*x[4]*x[11]*x[13]+0.662*x[4]*x[13]*x[14]-0.7275*x[4]*x[13]*x[15]+0.9326*x[4]*x[14]*x[15]-0.6838*x[5]*x[6]*x[12]-0.3883*x[5]*x[6]*x[13]+0.1561*x[5]*x[7]*x[11]-0.3818*x[5]*x[7]*x[13]-0.0319*x[5]*x[7]*x[14]-0.0198*x[5]*x[8]*x[9]+0.9133*x[5]*x[8]*x[10]-0.6163*x[5]*x[8]*x[11]+0.5364*x[5]*x[8]*x[12]+0.3148*x[5]*x[8]*x[14]-0.388*x[5]*x[9]*x[10]-0.0013*x[5]*x[9]*x[11]+0.9853*x[5]*x[9]*x[14]+0.7842*x[5]*x[10]*x[12]+0.715*x[5]*x[10]*x[13]-0.155*x[5]*x[10]*x[14]+0.5555*x[5]*x[11]*x[12]+0.0228*x[5]*x[11]*x[13]+0.9724*x[5]*x[11]*x[14]-0.4806*x[5]*x[12]*x[13]-0.803*x[5]*x[12]*x[14]+0.629*x[5]*x[12]*x[15]-0.6613*x[5]*x[13]*x[15]-0.3457*x[6]*x[7]*x[8]-0.5187*x[6]*x[7]*x[9]-0.1421*x[6]*x[7]*x[13]-0.6421*x[6]*x[7]*x[14]-0.9825*x[6]*x[7]*x[15]-0.9656*x[6]*x[8]*x[10]+0.2268*x[6]*x[8]*x[12]-0.2936*x[6]*x[8]*x[13]+0.5404*x[6]*x[8]*x[14]+0.0638*x[6]*x[9]*x[13]+0.3467*x[6]*x[10]*x[11]-0.9129*x[6]*x[10]*x[14]-0.2119*x[6]*x[11]*x[15]-0.1138*x[6]*x[12]*x[13]+0.6549*x[6]*x[12]*x[14]+0.067*x[6]*x[12]*x[15]+0.494*x[7]*x[8]*x[9]+0.003*x[7]*x[8]*x[12]-0.6581*x[7]*x[8]*x[13]+0.0434*x[7]*x[8]*x[14]+0.3233*x[7]*x[9]*x[11]+0.8678*x[7]*x[9]*x[12]+0.0457*x[7]*x[9]*x[13]-0.8618*x[7]*x[9]*x[14]+0.4662*x[7]*x[9]*x[15]-0.9554*x[7]*x[10]*x[13]-0.856*x[7]*x[10]*x[14]-0.6407*x[7]*x[11]*x[13]-0.1567*x[7]*x[11]*x[14]-0.8934*x[7]*x[11]*x[15]+0.6088*x[7]*x[12]*x[13]-0.3*x[8]*x[9]*x[12]-0.0613*x[8]*x[9]*x[13]+0.217*x[8]*x[9]*x[14]-0.2647*x[8]*x[10]*x[13]+0.2924*x[8]*x[11]*x[12]+0.6696*x[8]*x[11]*x[14]+0.0407*x[8]*x[12]*x[14]-0.7419*x[8]*x[13]*x[15]-0.4566*x[8]*x[14]*x[15]-0.5989*x[9]*x[10]*x[11]+0.2002*x[9]*x[10]*x[12]-0.3129*x[9]*x[11]*x[13]+0.0218*x[9]*x[12]*x[13]-0.4257*x[9]*x[12]*x[14]-0.0054*x[9]*x[13]*x[15]-0.1207*x[10]*x[13]*x[14]-0.9452*x[10]*x[14]*x[15]-0.2075*x[11]*x[12]*x[14])+x[16] == 0.0)
@NLconstraint(m, e2, 0.9973*x[1]*x[5]-0.574*x[1]*x[7]-0.6688*x[1]*x[12]+0.8561*x[1]*x[14]-0.8826*x[2]*x[4]-0.1445*x[2]*x[5]+0.9882*x[2]*x[8]+0.5874*x[2]*x[10]+0.5947*x[2]*x[11]+0.2857*x[2]*x[12]+0.089*x[2]*x[13]+0.7909*x[2]*x[14]+0.0185*x[2]*x[15]+0.1624*x[3]*x[5]+0.6622*x[3]*x[6]-0.1994*x[3]*x[7]+0.0044*x[3]*x[11]+0.6337*x[3]*x[13]+0.9137*x[3]*x[14]+0.1192*x[4]*x[5]+0.1278*x[4]*x[9]-0.9045*x[4]*x[11]+0.4013*x[4]*x[13]+0.764*x[4]*x[14]-0.8251*x[4]*x[15]+0.1706*x[5]*x[8]+0.9781*x[5]*x[9]+0.862*x[5]*x[11]+0.5186*x[5]*x[12]-0.3894*x[5]*x[13]+0.6862*x[5]*x[14]-0.0904*x[5]*x[15]-0.5183*x[6]*x[9]+0.4097*x[7]*x[10]+0.9053*x[7]*x[13]-0.1287*x[7]*x[15]+0.7832*x[8]*x[10]-0.4768*x[8]*x[12]+0.3496*x[8]*x[13]-0.3521*x[9]*x[12]-0.9999*x[9]*x[13]-0.9539*x[9]*x[15]-0.4085*x[10]*x[11]-0.0369*x[10]*x[13]+0.2151*x[10]*x[14]-0.7543*x[11]*x[12]-0.7212*x[11]*x[13]-0.3246*x[11]*x[14]+0.6515*x[11]*x[15]+0.029*x[12]*x[13]+0.0244*x[13]*x[14]-0.3318*x[14]*x[15]-0.1571*x[1]+0.926*x[2]-0.2586*x[3]+0.6064*x[4]+0.2231*x[5]-0.8345*x[6]-0.5415*x[7]-0.5469*x[8]-0.2894*x[9]-0.1088*x[10]-0.7834*x[11]+0.6212*x[12]-0.8492*x[13]-0.5676*x[14]+0.8497*x[15]+(-0.6339*x[1]*x[2]*x[3])-0.1097*x[1]*x[2]*x[6]+0.8332*x[1]*x[2]*x[7]-0.7057*x[1]*x[2]*x[9]+0.8348*x[1]*x[3]*x[4]+0.8382*x[1]*x[3]*x[6]-0.9556*x[1]*x[3]*x[9]+0.9955*x[1]*x[3]*x[10]-0.5817*x[1]*x[4]*x[7]-0.2507*x[1]*x[4]*x[10]-0.6438*x[1]*x[5]*x[8]+0.533*x[1]*x[5]*x[9]+0.5251*x[1]*x[7]*x[8]-0.3338*x[1]*x[7]*x[9]-0.4319*x[1]*x[7]*x[12]+0.7544*x[1]*x[8]*x[9]-0.3247*x[1]*x[8]*x[11]+0.0111*x[1]*x[8]*x[15]+0.415*x[1]*x[9]*x[13]+0.2947*x[1]*x[10]*x[12]-0.7855*x[1]*x[10]*x[13]+0.1058*x[1]*x[10]*x[14]+0.8752*x[1]*x[12]*x[13]-0.8064*x[2]*x[3]*x[4]+0.123*x[2]*x[3]*x[6]-0.8993*x[2]*x[3]*x[7]+0.7947*x[2]*x[3]*x[10]-0.064*x[2]*x[3]*x[13]+0.4162*x[2]*x[3]*x[14]-0.5648*x[2]*x[4]*x[5]+0.8202*x[2]*x[4]*x[8]+0.0786*x[2]*x[4]*x[10]+0.0343*x[2]*x[4]*x[12]+0.1285*x[2]*x[4]*x[13]-0.4026*x[2]*x[4]*x[14]+0.105*x[2]*x[5]*x[6]+0.9856*x[2]*x[5]*x[7]+0.2617*x[2]*x[5]*x[8]+0.2992*x[2]*x[5]*x[10]+0.7305*x[2]*x[5]*x[11]-0.459*x[2]*x[6]*x[10]-0.8533*x[2]*x[6]*x[11]+0.334*x[2]*x[6]*x[14]-0.4171*x[2]*x[7]*x[8]+0.7327*x[2]*x[7]*x[10]+0.1899*x[2]*x[7]*x[11]-0.1742*x[2]*x[7]*x[12]+0.4758*x[2]*x[7]*x[14]-0.1462*x[2]*x[8]*x[9]-0.3035*x[2]*x[8]*x[10]-0.4106*x[2]*x[8]*x[12]-0.9174*x[2]*x[8]*x[13]-0.6245*x[2]*x[8]*x[14]+0.5306*x[2]*x[8]*x[15]+0.1913*x[2]*x[9]*x[11]-0.2277*x[2]*x[9]*x[12]-0.8618*x[2]*x[9]*x[14]-0.4328*x[2]*x[10]*x[12]+0.8402*x[2]*x[10]*x[14]-0.4575*x[2]*x[11]*x[12]+0.8778*x[2]*x[11]*x[13]+0.4404*x[2]*x[12]*x[13]-0.6343*x[2]*x[12]*x[15]+0.4651*x[2]*x[13]*x[14]+0.0407*x[2]*x[14]*x[15]-0.3873*x[3]*x[4]*x[6]+0.3524*x[3]*x[4]*x[7]-0.7873*x[3]*x[4]*x[8]+0.4003*x[3]*x[4]*x[10]-0.004*x[3]*x[4]*x[11]-0.2517*x[3]*x[4]*x[12]+0.3262*x[3]*x[4]*x[13]+0.5961*x[3]*x[5]*x[7]-0.1628*x[3]*x[5]*x[8]-0.5995*x[3]*x[5]*x[11]-0.9786*x[3]*x[5]*x[12]-0.8818*x[3]*x[5]*x[13]+0.1416*x[3]*x[5]*x[14]+0.3394*x[3]*x[5]*x[15]-0.889*x[3]*x[6]*x[9]+0.2645*x[3]*x[6]*x[10]-0.5266*x[3]*x[6]*x[11]-0.1764*x[3]*x[7]*x[8]+0.9709*x[3]*x[7]*x[10]-0.7647*x[3]*x[7]*x[11]+0.2602*x[3]*x[7]*x[12]+0.9049*x[3]*x[7]*x[13]-0.5388*x[3]*x[7]*x[15]-0.181*x[3]*x[8]*x[9]+0.8941*x[3]*x[8]*x[11]+0.5613*x[3]*x[8]*x[12]+0.3661*x[3]*x[9]*x[10]-0.1608*x[3]*x[9]*x[12]-0.9178*x[3]*x[9]*x[14]-0.2734*x[3]*x[9]*x[15]-0.4861*x[3]*x[10]*x[13]+0.4313*x[3]*x[10]*x[14]+0.7351*x[3]*x[11]*x[14]-0.7188*x[3]*x[13]*x[15]-0.6466*x[4]*x[5]*x[6]-0.0904*x[4]*x[5]*x[7]-0.9783*x[4]*x[5]*x[10]-0.748*x[4]*x[5]*x[13]+0.2599*x[4]*x[5]*x[14]+0.252*x[4]*x[6]*x[7]-0.7428*x[4]*x[6]*x[9]+0.0236*x[4]*x[6]*x[10]+0.2393*x[4]*x[6]*x[11]+0.8746*x[4]*x[6]*x[12]-0.5077*x[4]*x[6]*x[13]-0.667*x[4]*x[7]*x[8]+0.7868*x[4]*x[7]*x[9]+0.4163*x[4]*x[7]*x[10]+0.437*x[4]*x[8]*x[10]-0.9709*x[4]*x[8]*x[11]-0.9966*x[4]*x[8]*x[12]+0.592*x[4]*x[8]*x[13]+0.4213*x[4]*x[9]*x[10]+0.2374*x[4]*x[9]*x[11]-0.5991*x[4]*x[9]*x[12]+0.6619*x[4]*x[9]*x[13]-0.0605*x[4]*x[9]*x[14]-0.1642*x[4]*x[9]*x[15]+0.3686*x[4]*x[10]*x[11]+0.5531*x[4]*x[10]*x[12]-0.4484*x[4]*x[10]*x[13]-0.26*x[4]*x[10]*x[14]+0.786*x[4]*x[11]*x[12]-0.8355*x[4]*x[11]*x[14]-0.3891*x[4]*x[12]*x[14]+0.8108*x[4]*x[12]*x[15]-0.0226*x[4]*x[13]*x[14]-0.3934*x[4]*x[13]*x[15]-0.6441*x[5]*x[6]*x[12]+0.8246*x[5]*x[6]*x[13]-0.6032*x[5]*x[6]*x[14]-0.0837*x[5]*x[7]*x[10]-0.0872*x[5]*x[7]*x[11]+0.9752*x[5]*x[7]*x[12]-0.5752*x[5]*x[7]*x[14]+0.5523*x[5]*x[7]*x[15]+0.3852*x[5]*x[8]*x[9]-0.4049*x[5]*x[8]*x[11]-0.5931*x[5]*x[8]*x[12]+0.2482*x[5]*x[9]*x[10]-0.7238*x[5]*x[9]*x[13]-0.3255*x[5]*x[9]*x[14]-0.4651*x[5]*x[9]*x[15]+0.6119*x[5]*x[10]*x[11]-0.3299*x[5]*x[10]*x[12]-0.2126*x[5]*x[11]*x[13]+0.1395*x[5]*x[11]*x[14]-0.7875*x[5]*x[12]*x[14]-0.0272*x[5]*x[13]*x[14]+0.6024*x[5]*x[13]*x[15]-0.8407*x[5]*x[14]*x[15]-0.337*x[6]*x[7]*x[8]+0.6631*x[6]*x[7]*x[10]-0.6248*x[6]*x[7]*x[11]+0.696*x[6]*x[7]*x[12]-0.7008*x[6]*x[7]*x[13]+0.526*x[6]*x[7]*x[15]+0.311*x[6]*x[8]*x[9]-0.6345*x[6]*x[8]*x[10]-0.3559*x[6]*x[8]*x[12]+0.2798*x[6]*x[8]*x[13]-0.8945*x[6]*x[8]*x[14]+0.9076*x[6]*x[9]*x[10]-0.8553*x[6]*x[9]*x[11]+0.8852*x[6]*x[9]*x[12]-0.0561*x[6]*x[9]*x[13]-0.5331*x[6]*x[9]*x[14]+0.9259*x[6]*x[9]*x[15]-0.8305*x[6]*x[10]*x[11]+0.7471*x[6]*x[10]*x[12]-0.9363*x[6]*x[10]*x[13]-0.9044*x[6]*x[10]*x[14]+0.0667*x[6]*x[10]*x[15]-0.5724*x[6]*x[11]*x[14]+0.014*x[6]*x[12]*x[14]-0.7487*x[6]*x[13]*x[14]+0.142*x[6]*x[13]*x[15]+0.2091*x[6]*x[14]*x[15]-0.992*x[7]*x[8]*x[9]+0.9075*x[7]*x[8]*x[10]+0.0418*x[7]*x[8]*x[11]+0.5923*x[7]*x[8]*x[12]-0.1539*x[7]*x[8]*x[14]-0.7186*x[7]*x[8]*x[15]-0.337*x[7]*x[9]*x[12]-0.7912*x[7]*x[9]*x[14]-0.3744*x[7]*x[10]*x[11]+0.8063*x[7]*x[10]*x[13]+0.9449*x[7]*x[10]*x[14]-0.1741*x[7]*x[11]*x[12]-0.87*x[7]*x[11]*x[14]+0.1109*x[7]*x[11]*x[15]+0.4356*x[7]*x[12]*x[13]+0.2591*x[7]*x[13]*x[14]-0.2628*x[7]*x[13]*x[15]+0.4393*x[7]*x[14]*x[15]-0.0756*x[8]*x[9]*x[10]-0.1889*x[8]*x[9]*x[12]+0.9284*x[8]*x[9]*x[15]+0.5697*x[8]*x[10]*x[11]-0.4247*x[8]*x[10]*x[13]+0.7341*x[8]*x[10]*x[14]-0.6176*x[8]*x[11]*x[12]-0.8396*x[8]*x[11]*x[13]-0.2048*x[8]*x[12]*x[14]+0.7354*x[8]*x[13]*x[15]+0.6066*x[8]*x[14]*x[15]+0.1321*x[9]*x[10]*x[12]+0.5622*x[9]*x[10]*x[14]-0.7814*x[9]*x[11]*x[13]+0.5383*x[9]*x[11]*x[15]+0.377*x[9]*x[12]*x[13]-0.6967*x[9]*x[12]*x[14]+0.8573*x[9]*x[13]*x[14]+0.0813*x[10]*x[11]*x[14]-0.2472*x[10]*x[12]*x[13]-0.3527*x[11]*x[12]*x[13]-0.0293*x[11]*x[12]*x[15]-0.7847*x[11]*x[13]*x[14]+0.8737*x[12]*x[13]*x[14]+0.9482*x[13]*x[14]*x[15] <= 81.144)
@NLconstraint(m, e3, 0.1812*x[1]*x[9]-0.3657*x[1]*x[6]+0.689*x[1]*x[10]+0.0161*x[1]*x[11]+0.4507*x[1]*x[14]-0.269*x[2]*x[3]-0.312*x[2]*x[5]-0.1416*x[2]*x[6]-0.0688*x[2]*x[7]-0.5337*x[2]*x[8]+0.4836*x[2]*x[9]+0.7143*x[2]*x[12]+0.7982*x[2]*x[13]-0.2982*x[2]*x[14]-0.4469*x[3]*x[7]-0.6686*x[3]*x[8]-0.071*x[3]*x[9]-0.1561*x[3]*x[10]+0.1857*x[3]*x[11]-0.0633*x[3]*x[12]+0.1967*x[3]*x[13]+0.8071*x[3]*x[15]+0.8268*x[4]*x[7]+0.7929*x[4]*x[8]-0.4054*x[4]*x[15]+0.2379*x[5]*x[7]-0.5823*x[5]*x[10]+0.7879*x[5]*x[13]+0.9206*x[5]*x[14]-0.1178*x[6]*x[7]+0.7479*x[6]*x[9]+0.4905*x[6]*x[11]-0.4188*x[6]*x[12]+0.3676*x[7]*x[8]+0.5405*x[7]*x[9]-0.9902*x[7]*x[11]+0.0623*x[7]*x[13]+0.3658*x[7]*x[15]-0.3963*x[8]*x[10]-0.001*x[8]*x[11]+0.3626*x[8]*x[12]-0.5699*x[9]*x[10]-0.2176*x[9]*x[13]+0.5304*x[9]*x[15]-0.328*x[10]*x[11]-0.4704*x[10]*x[12]-0.6207*x[10]*x[13]-0.6298*x[10]*x[14]-0.1373*x[10]*x[15]+0.4709*x[11]*x[14]-0.3126*x[11]*x[15]-0.8315*x[12]*x[13]-0.7144*x[13]*x[15]-0.4753*x[14]*x[15]-0.3728*x[1]+0.8199*x[2]-0.5774*x[3]+0.0687*x[4]-0.942*x[5]-0.0936*x[6]-0.666*x[7]-0.8247*x[8]-0.2729*x[9]-0.3939*x[10]-0.5048*x[11]+0.3566*x[12]-0.3521*x[13]-0.4326*x[14]+0.6672*x[15]+0.0785*x[1]*x[2]*x[5]-0.5529*x[1]*x[2]*x[3]-0.038*x[1]*x[2]*x[7]-0.5993*x[1]*x[2]*x[9]+0.8662*x[1]*x[2]*x[13]-0.1851*x[1]*x[3]*x[5]-0.1234*x[1]*x[3]*x[6]+0.9245*x[1]*x[3]*x[7]+0.1419*x[1]*x[3]*x[8]+0.3004*x[1]*x[3]*x[9]-0.3703*x[1]*x[3]*x[10]-0.1714*x[1]*x[3]*x[11]+0.1453*x[1]*x[3]*x[12]+0.5841*x[1]*x[3]*x[13]-0.8204*x[1]*x[4]*x[5]-0.2007*x[1]*x[4]*x[8]+0.216*x[1]*x[4]*x[9]+0.6854*x[1]*x[4]*x[12]+0.5219*x[1]*x[4]*x[13]-0.8532*x[1]*x[5]*x[8]+0.954*x[1]*x[5]*x[14]-0.6182*x[1]*x[5]*x[15]-0.6066*x[1]*x[6]*x[10]-0.2482*x[1]*x[6]*x[11]+0.7216*x[1]*x[6]*x[12]-0.4708*x[1]*x[6]*x[13]-0.9469*x[1]*x[7]*x[9]-0.8249*x[1]*x[7]*x[11]+0.4428*x[1]*x[7]*x[13]+0.6287*x[1]*x[7]*x[15]-0.0317*x[1]*x[8]*x[14]+0.9329*x[1]*x[8]*x[15]-0.377*x[1]*x[9]*x[11]+0.5545*x[1]*x[10]*x[14]-0.5701*x[1]*x[10]*x[15]+0.7338*x[1]*x[11]*x[13]-0.262*x[2]*x[3]*x[4]-0.9482*x[2]*x[3]*x[8]+0.5959*x[2]*x[3]*x[9]+0.269*x[2]*x[3]*x[11]+0.3024*x[2]*x[3]*x[14]-0.2169*x[2]*x[4]*x[7]+0.8055*x[2]*x[4]*x[8]-0.1025*x[2]*x[4]*x[10]+0.3275*x[2]*x[4]*x[11]-0.3269*x[2]*x[4]*x[14]-0.7926*x[2]*x[5]*x[6]+0.3879*x[2]*x[5]*x[7]+0.0437*x[2]*x[5]*x[10]+0.7627*x[2]*x[5]*x[13]-0.9301*x[2]*x[6]*x[7]+0.9223*x[2]*x[6]*x[8]+0.4207*x[2]*x[6]*x[9]+0.2336*x[2]*x[6]*x[10]+0.0528*x[2]*x[6]*x[11]-0.5389*x[2]*x[6]*x[13]+0.9631*x[2]*x[6]*x[14]-0.064*x[2]*x[7]*x[8]-0.3166*x[2]*x[7]*x[10]+0.1804*x[2]*x[7]*x[11]-0.6046*x[2]*x[7]*x[13]+0.6027*x[2]*x[8]*x[10]-0.6135*x[2]*x[8]*x[11]+0.1223*x[2]*x[8]*x[12]-0.8773*x[2]*x[8]*x[13]+0.1888*x[2]*x[8]*x[15]+0.1836*x[2]*x[9]*x[11]+0.2587*x[2]*x[9]*x[13]+0.6252*x[2]*x[9]*x[14]+0.2471*x[2]*x[10]*x[11]-0.7627*x[2]*x[10]*x[12]-0.3866*x[2]*x[10]*x[15]-0.1196*x[2]*x[11]*x[13]+0.6796*x[2]*x[11]*x[14]-0.1451*x[2]*x[12]*x[13]-0.8293*x[2]*x[13]*x[14]+0.9072*x[3]*x[4]*x[6]+0.7178*x[3]*x[4]*x[7]-0.3732*x[3]*x[4]*x[8]-0.5341*x[3]*x[4]*x[9]-0.9963*x[3]*x[4]*x[11]+0.6669*x[3]*x[4]*x[12]+0.2364*x[3]*x[4]*x[13]-0.8433*x[3]*x[5]*x[6]+0.034*x[3]*x[5]*x[7]+0.8504*x[3]*x[5]*x[12]-0.8026*x[3]*x[5]*x[13]-0.6933*x[3]*x[5]*x[14]+0.8192*x[3]*x[5]*x[15]+0.0986*x[3]*x[6]*x[9]-0.7886*x[3]*x[6]*x[12]+0.0435*x[3]*x[6]*x[14]-0.0943*x[3]*x[7]*x[10]+0.796*x[3]*x[7]*x[11]+0.8876*x[3]*x[7]*x[13]-0.1768*x[3]*x[7]*x[14]+0.2872*x[3]*x[8]*x[9]-0.9705*x[3]*x[8]*x[10]-0.2246*x[3]*x[8]*x[12]-0.3041*x[3]*x[8]*x[13]+0.8725*x[3]*x[8]*x[14]-0.1041*x[3]*x[8]*x[15]+0.9614*x[3]*x[9]*x[12]-0.3462*x[3]*x[10]*x[15]-0.3507*x[3]*x[11]*x[12]-0.5824*x[3]*x[11]*x[13]-0.2261*x[3]*x[12]*x[13]+0.1479*x[4]*x[5]*x[9]-0.3247*x[4]*x[5]*x[12]+0.1647*x[4]*x[5]*x[14]+0.2861*x[4]*x[6]*x[7]+0.6424*x[4]*x[6]*x[9]+0.9294*x[4]*x[6]*x[11]+0.2711*x[4]*x[6]*x[12]+0.6547*x[4]*x[6]*x[13]+0.9076*x[4]*x[7]*x[8]-0.7557*x[4]*x[7]*x[9]-0.8549*x[4]*x[7]*x[11]+0.7583*x[4]*x[7]*x[15]+0.2819*x[4]*x[8]*x[9]+0.3226*x[4]*x[8]*x[12]+0.3205*x[4]*x[8]*x[13]-0.2153*x[4]*x[8]*x[14]-0.3732*x[4]*x[9]*x[10]+0.8741*x[4]*x[9]*x[11]+0.1623*x[4]*x[9]*x[12]+0.1588*x[4]*x[9]*x[13]-0.096*x[4]*x[10]*x[13]-0.2844*x[4]*x[10]*x[14]-0.3005*x[4]*x[10]*x[15]+0.691*x[4]*x[11]*x[12]+0.9675*x[4]*x[11]*x[13]+0.1705*x[4]*x[11]*x[14]-0.8283*x[4]*x[12]*x[13]-0.1607*x[4]*x[13]*x[15]+0.6548*x[5]*x[6]*x[7]+0.1677*x[5]*x[6]*x[9]-0.704*x[5]*x[6]*x[12]+0.5077*x[5]*x[7]*x[8]-0.5254*x[5]*x[7]*x[9]-0.4741*x[5]*x[7]*x[10]+0.3614*x[5]*x[7]*x[13]+0.1192*x[5]*x[8]*x[9]+0.3691*x[5]*x[8]*x[11]+0.1941*x[5]*x[8]*x[12]+0.3346*x[5]*x[8]*x[13]+0.7752*x[5]*x[8]*x[14]+0.7524*x[5]*x[9]*x[10]-0.368*x[5]*x[9]*x[12]+0.0025*x[5]*x[9]*x[15]+0.5815*x[5]*x[10]*x[11]+0.9733*x[5]*x[10]*x[12]+0.3121*x[5]*x[10]*x[14]+0.5597*x[5]*x[11]*x[12]-0.406*x[5]*x[11]*x[14]+0.0225*x[5]*x[12]*x[13]-0.9294*x[6]*x[7]*x[9]-0.4728*x[6]*x[7]*x[12]+0.3674*x[6]*x[7]*x[13]+0.1809*x[6]*x[7]*x[14]+0.3303*x[6]*x[7]*x[15]-0.279*x[6]*x[8]*x[9]+0.5694*x[6]*x[8]*x[10]+0.547*x[6]*x[8]*x[13]+0.7724*x[6]*x[8]*x[15]+0.1649*x[6]*x[9]*x[10]-0.4471*x[6]*x[9]*x[12]+0.1225*x[6]*x[9]*x[13]-0.9856*x[6]*x[9]*x[14]+0.1128*x[6]*x[10]*x[11]-0.1285*x[6]*x[10]*x[12]-0.2157*x[6]*x[10]*x[13]+0.8089*x[6]*x[10]*x[14]+0.9135*x[6]*x[11]*x[12]-0.8694*x[6]*x[12]*x[13]-0.0137*x[6]*x[12]*x[15]-0.4563*x[7]*x[8]*x[10]+0.0401*x[7]*x[8]*x[12]+0.3855*x[7]*x[8]*x[13]+0.451*x[7]*x[9]*x[12]+0.2099*x[7]*x[9]*x[13]+0.871*x[7]*x[10]*x[11]-0.9218*x[7]*x[10]*x[12]-0.9131*x[7]*x[10]*x[13]-0.879*x[7]*x[10]*x[14]+0.7254*x[7]*x[10]*x[15]+0.6201*x[7]*x[11]*x[12]-0.7531*x[7]*x[11]*x[14]+0.8185*x[7]*x[12]*x[13]+0.97*x[7]*x[12]*x[14]+0.8725*x[7]*x[13]*x[15]-0.3498*x[8]*x[9]*x[10]-0.7703*x[8]*x[9]*x[13]+0.5428*x[8]*x[9]*x[15]-0.6814*x[8]*x[10]*x[11]-0.3413*x[8]*x[10]*x[12]+0.6421*x[8]*x[10]*x[13]+0.7528*x[8]*x[11]*x[13]-0.3834*x[8]*x[11]*x[14]-0.7799*x[8]*x[11]*x[15]+0.6533*x[8]*x[12]*x[13]+0.9239*x[8]*x[13]*x[14]+0.8483*x[8]*x[13]*x[15]-0.8391*x[8]*x[14]*x[15]-0.345*x[9]*x[10]*x[11]-0.1368*x[9]*x[10]*x[12]+0.1059*x[9]*x[10]*x[14]+0.6373*x[9]*x[11]*x[13]+0.3652*x[9]*x[12]*x[13]+0.895*x[9]*x[13]*x[14]+0.2946*x[9]*x[13]*x[15]-0.995*x[9]*x[14]*x[15]-0.198*x[10]*x[11]*x[12]-0.3018*x[10]*x[11]*x[13]+0.7456*x[10]*x[11]*x[15]-0.98*x[10]*x[12]*x[13]+0.0073*x[10]*x[12]*x[14]+0.594*x[10]*x[12]*x[15]+0.7649*x[10]*x[13]*x[14]-0.3696*x[10]*x[13]*x[15]+0.0751*x[12]*x[13]*x[14]-0.5759*x[12]*x[14]*x[15] <= 17.286)
@NLconstraint(m, e4, (-0.6124*x[1]*x[3])-0.0088*x[1]*x[7]+0.2127*x[1]*x[11]+0.164*x[2]*x[6]-0.2333*x[2]*x[7]+0.2623*x[2]*x[9]-0.9675*x[2]*x[10]-0.8226*x[2]*x[12]+0.5241*x[2]*x[13]-0.3561*x[2]*x[14]-0.9386*x[3]*x[4]+0.1526*x[3]*x[5]-0.3316*x[3]*x[6]-0.8034*x[3]*x[8]-0.2999*x[3]*x[9]+0.9766*x[3]*x[11]+0.9115*x[3]*x[12]-0.863*x[3]*x[14]-0.6925*x[4]*x[5]+0.3718*x[4]*x[6]-0.6*x[4]*x[7]-0.0513*x[4]*x[9]+0.2813*x[4]*x[12]-0.923*x[4]*x[14]+0.1296*x[5]*x[7]+0.4787*x[5]*x[8]-0.5378*x[5]*x[9]+0.0375*x[5]*x[10]+0.0352*x[5]*x[11]-0.1097*x[5]*x[12]-0.5901*x[5]*x[13]+0.0107*x[5]*x[14]-0.6156*x[5]*x[15]-0.5158*x[6]*x[8]-0.2652*x[6]*x[10]-0.0883*x[6]*x[12]-0.7157*x[6]*x[13]+0.716*x[6]*x[14]-0.2314*x[7]*x[10]-0.5438*x[7]*x[11]-0.3538*x[7]*x[12]+0.8142*x[7]*x[13]-0.5255*x[7]*x[14]-0.4852*x[8]*x[11]-0.7217*x[8]*x[14]-0.6045*x[9]*x[11]-0.6648*x[9]*x[13]-0.8578*x[9]*x[14]-0.714*x[9]*x[15]+0.3844*x[10]*x[11]+0.3754*x[10]*x[13]+0.1919*x[10]*x[15]-0.9979*x[11]*x[12]+0.3543*x[11]*x[15]-0.8647*x[12]*x[13]+0.8808*x[12]*x[14]+0.675*x[13]*x[14]+0.9375*x[13]*x[15]+0.9164*x[1]+0.7401*x[2]+0.3574*x[3]-0.8967*x[4]+0.4574*x[5]-0.2735*x[6]-0.7227*x[7]+0.9126*x[8]+0.5273*x[9]+0.567*x[10]+0.5225*x[11]-0.5579*x[12]+0.5287*x[13]-0.5659*x[14]-0.1678*x[15]+(-0.951*x[1]*x[2]*x[7])-0.0081*x[1]*x[2]*x[12]-0.8383*x[1]*x[3]*x[5]+0.7372*x[1]*x[3]*x[7]+0.7351*x[1]*x[3]*x[10]-0.2556*x[1]*x[3]*x[12]+0.1691*x[1]*x[3]*x[14]-0.8122*x[1]*x[3]*x[15]+0.1933*x[1]*x[4]*x[5]-0.2173*x[1]*x[4]*x[6]+0.1061*x[1]*x[4]*x[7]+0.8451*x[1]*x[4]*x[9]-0.742*x[1]*x[4]*x[10]+0.2533*x[1]*x[4]*x[11]-0.6597*x[1]*x[4]*x[13]+0.8777*x[1]*x[5]*x[7]-0.0149*x[1]*x[5]*x[8]-0.5506*x[1]*x[5]*x[10]+0.9759*x[1]*x[5]*x[11]+0.4611*x[1]*x[5]*x[14]+0.5297*x[1]*x[6]*x[8]-0.5457*x[1]*x[7]*x[8]+0.242*x[1]*x[7]*x[9]-0.1021*x[1]*x[7]*x[10]-0.6408*x[1]*x[7]*x[14]+0.8769*x[1]*x[8]*x[9]-0.9358*x[1]*x[8]*x[10]-0.2266*x[1]*x[8]*x[12]+0.4799*x[1]*x[9]*x[11]+0.0601*x[1]*x[9]*x[12]-0.312*x[1]*x[9]*x[13]-0.3661*x[1]*x[9]*x[15]-0.3276*x[1]*x[10]*x[12]+0.5625*x[1]*x[10]*x[13]-0.0375*x[1]*x[13]*x[15]-0.1192*x[2]*x[3]*x[4]+0.1118*x[2]*x[3]*x[5]+0.8887*x[2]*x[3]*x[8]+0.9741*x[2]*x[3]*x[11]-0.9166*x[2]*x[3]*x[12]-0.9275*x[2]*x[3]*x[13]+0.0663*x[2]*x[3]*x[14]+0.7069*x[2]*x[4]*x[5]+0.6397*x[2]*x[4]*x[7]+0.1315*x[2]*x[4]*x[8]+0.2059*x[2]*x[4]*x[10]-0.1224*x[2]*x[4]*x[12]+0.4169*x[2]*x[4]*x[13]+0.4461*x[2]*x[5]*x[8]+0.6029*x[2]*x[5]*x[9]-0.1163*x[2]*x[5]*x[10]-0.5115*x[2]*x[5]*x[12]+0.2174*x[2]*x[5]*x[13]+0.0117*x[2]*x[5]*x[14]+0.2627*x[2]*x[6]*x[9]+0.5901*x[2]*x[6]*x[10]+0.47*x[2]*x[6]*x[12]-0.115*x[2]*x[6]*x[13]+0.1577*x[2]*x[6]*x[14]+0.0085*x[2]*x[7]*x[8]+0.0404*x[2]*x[7]*x[9]-0.0577*x[2]*x[7]*x[10]-0.6042*x[2]*x[7]*x[11]-0.6032*x[2]*x[7]*x[12]-0.1901*x[2]*x[7]*x[15]-0.6728*x[2]*x[8]*x[11]-0.0522*x[2]*x[8]*x[12]-0.0837*x[2]*x[8]*x[13]-0.3641*x[2]*x[8]*x[15]-0.6769*x[2]*x[9]*x[11]-0.095*x[2]*x[9]*x[13]-0.3174*x[2]*x[9]*x[14]+0.0283*x[2]*x[10]*x[11]-0.5998*x[2]*x[10]*x[12]+0.4974*x[2]*x[10]*x[14]-0.0051*x[2]*x[11]*x[12]+0.5218*x[2]*x[11]*x[13]-0.991*x[2]*x[12]*x[13]+0.6388*x[2]*x[12]*x[14]-0.1935*x[2]*x[13]*x[14]-0.3258*x[3]*x[4]*x[5]+0.7764*x[3]*x[4]*x[10]+0.3169*x[3]*x[4]*x[11]+0.4611*x[3]*x[5]*x[6]+0.1016*x[3]*x[5]*x[7]-0.3192*x[3]*x[5]*x[8]+0.5658*x[3]*x[5]*x[9]-0.6128*x[3]*x[5]*x[10]-0.6467*x[3]*x[5]*x[11]-0.7922*x[3]*x[5]*x[13]+0.6088*x[3]*x[6]*x[7]+0.4312*x[3]*x[6]*x[9]+0.2174*x[3]*x[6]*x[10]+0.0923*x[3]*x[6]*x[12]+0.1215*x[3]*x[6]*x[13]+0.8682*x[3]*x[7]*x[10]-0.7348*x[3]*x[7]*x[11]+0.606*x[3]*x[7]*x[13]+0.7855*x[3]*x[8]*x[9]+0.2608*x[3]*x[8]*x[11]-0.5415*x[3]*x[8]*x[14]-0.5653*x[3]*x[9]*x[12]-0.1591*x[3]*x[9]*x[15]+0.8482*x[3]*x[10]*x[11]+0.7771*x[3]*x[10]*x[12]-0.4486*x[3]*x[10]*x[13]+0.6398*x[3]*x[11]*x[12]+0.7794*x[3]*x[11]*x[14]+0.8827*x[3]*x[11]*x[15]-0.3456*x[3]*x[12]*x[13]-0.1877*x[3]*x[12]*x[14]-0.9375*x[3]*x[13]*x[15]-0.7729*x[3]*x[14]*x[15]-0.472*x[4]*x[5]*x[6]-0.5529*x[4]*x[5]*x[8]-0.1087*x[4]*x[5]*x[9]+0.8339*x[4]*x[5]*x[11]-0.9405*x[4]*x[5]*x[12]-0.0849*x[4]*x[5]*x[14]-0.6801*x[4]*x[6]*x[8]-0.1866*x[4]*x[6]*x[10]-0.9509*x[4]*x[6]*x[11]-0.6215*x[4]*x[6]*x[13]-0.742*x[4]*x[6]*x[14]-0.1425*x[4]*x[7]*x[8]-0.7076*x[4]*x[7]*x[9]+0.6039*x[4]*x[7]*x[10]+0.5347*x[4]*x[7]*x[11]-0.0779*x[4]*x[7]*x[12]+0.9129*x[4]*x[7]*x[13]+0.2215*x[4]*x[7]*x[14]+0.9677*x[4]*x[8]*x[9]+0.2792*x[4]*x[8]*x[10]-0.73*x[4]*x[8]*x[13]+0.5132*x[4]*x[9]*x[10]-0.6167*x[4]*x[9]*x[12]-0.0635*x[4]*x[9]*x[13]-0.2976*x[4]*x[9]*x[15]-0.142*x[4]*x[10]*x[13]+0.422*x[4]*x[11]*x[14]+0.5113*x[4]*x[11]*x[15]+0.0415*x[4]*x[12]*x[13]-0.4493*x[4]*x[12]*x[14]-0.9966*x[4]*x[13]*x[14]-0.6355*x[4]*x[13]*x[15]-0.1956*x[5]*x[6]*x[8]+0.6601*x[5]*x[6]*x[9]+0.258*x[5]*x[6]*x[10]+0.9478*x[5]*x[6]*x[11]+0.8412*x[5]*x[6]*x[14]-0.8549*x[5]*x[7]*x[10]-0.9345*x[5]*x[7]*x[11]+0.6881*x[5]*x[7]*x[13]-0.4486*x[5]*x[8]*x[9]-0.4291*x[5]*x[8]*x[10]+0.9777*x[5]*x[8]*x[12]-0.5972*x[5]*x[8]*x[13]+0.9115*x[5]*x[8]*x[14]-0.2326*x[5]*x[8]*x[15]+0.6582*x[5]*x[9]*x[10]+0.4732*x[5]*x[9]*x[12]+0.4134*x[5]*x[9]*x[13]-0.2314*x[5]*x[10]*x[11]-0.5055*x[5]*x[10]*x[12]+0.7965*x[5]*x[10]*x[13]+0.4682*x[5]*x[10]*x[14]-0.6723*x[5]*x[12]*x[14]-0.8012*x[5]*x[12]*x[15]+0.0091*x[6]*x[7]*x[8]+0.3789*x[6]*x[7]*x[9]+0.2898*x[6]*x[7]*x[14]+0.8873*x[6]*x[8]*x[10]+0.509*x[6]*x[8]*x[12]+0.9652*x[6]*x[8]*x[13]-0.6121*x[6]*x[9]*x[10]+0.8563*x[6]*x[9]*x[12]+0.2803*x[6]*x[9]*x[14]-0.4965*x[6]*x[9]*x[15]-0.9024*x[6]*x[10]*x[11]-0.3838*x[6]*x[10]*x[14]-0.0935*x[6]*x[10]*x[15]+0.8971*x[6]*x[11]*x[13]+0.0834*x[6]*x[11]*x[14]+0.4956*x[6]*x[11]*x[15]-0.2805*x[6]*x[12]*x[14]+0.2038*x[7]*x[8]*x[13]-0.1466*x[7]*x[8]*x[14]-0.2076*x[7]*x[8]*x[15]+0.1443*x[7]*x[9]*x[10]+0.573*x[7]*x[9]*x[11]-0.8376*x[7]*x[9]*x[12]+0.5184*x[7]*x[9]*x[13]+0.0808*x[7]*x[9]*x[14]+0.9375*x[7]*x[9]*x[15]-0.3037*x[7]*x[10]*x[11]+0.6074*x[7]*x[10]*x[12]-0.1451*x[7]*x[10]*x[13]+0.4618*x[7]*x[10]*x[15]-0.3287*x[7]*x[11]*x[13]-0.8298*x[7]*x[11]*x[14]+0.2405*x[7]*x[12]*x[13]-0.1654*x[7]*x[12]*x[14]+0.3072*x[7]*x[13]*x[14]-0.9509*x[8]*x[9]*x[10]-0.4782*x[8]*x[9]*x[12]+0.1791*x[8]*x[9]*x[13]-0.9912*x[8]*x[9]*x[15]+0.0596*x[8]*x[10]*x[12]-0.0628*x[8]*x[12]*x[14]-0.8089*x[8]*x[12]*x[15]-0.2017*x[8]*x[13]*x[14]-0.7412*x[8]*x[13]*x[15]+0.1811*x[8]*x[14]*x[15]-0.0704*x[9]*x[10]*x[12]+0.2087*x[9]*x[11]*x[14]+0.5637*x[9]*x[13]*x[14]-0.2138*x[10]*x[11]*x[14]+0.0879*x[10]*x[12]*x[13]-0.1062*x[10]*x[13]*x[15]-0.3741*x[11]*x[12]*x[13]+0.0613*x[11]*x[14]*x[15] <= 35.466)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script.