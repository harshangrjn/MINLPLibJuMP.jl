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
@NLconstraint(m, e1, -(0.5528*x[1]*x[7]+0.4041*x[1]*x[9]+0.6631*x[1]*x[10]-0.6457*x[2]*x[3]-0.014*x[2]*x[5]-0.5709*x[2]*x[8]-0.6193*x[2]*x[13]-0.4609*x[2]*x[14]-0.1261*x[3]*x[4]-0.2722*x[3]*x[6]-0.4473*x[3]*x[7]-0.3677*x[3]*x[10]+0.1935*x[3]*x[14]+0.7189*x[3]*x[15]-0.9398*x[4]*x[6]-0.2034*x[4]*x[7]+0.435*x[4]*x[8]+0.0946*x[4]*x[10]+0.0733*x[4]*x[11]-0.0679*x[4]*x[12]-0.2596*x[4]*x[14]+0.8925*x[5]*x[6]+0.3207*x[5]*x[7]-0.5345*x[5]*x[11]-0.8904*x[6]*x[7]-0.1876*x[6]*x[8]-0.6548*x[6]*x[12]+0.6021*x[6]*x[13]+0.8877*x[6]*x[14]+0.3058*x[6]*x[15]-0.8311*x[7]*x[8]+0.5066*x[7]*x[13]-0.6747*x[7]*x[15]-0.6102*x[8]*x[9]+0.865*x[8]*x[11]-0.4917*x[8]*x[12]-0.0821*x[9]*x[10]-0.9423*x[9]*x[15]-0.357*x[10]*x[13]+0.519*x[10]*x[14]-0.9582*x[10]*x[15]-0.1619*x[11]*x[13]+0.7864*x[11]*x[14]-0.8174*x[11]*x[15]+0.6639*x[12]*x[13]+0.807*x[13]*x[14]-0.6774*x[13]*x[15]+0.6616*x[1]+0.3928*x[2]+0.4047*x[3]-0.492*x[4]+0.0233*x[5]-0.0839*x[6]+0.9802*x[7]+0.2466*x[8]+0.0186*x[9]+0.761*x[10]+0.1837*x[11]+0.6049*x[12]-0.782*x[13]+0.8772*x[14]+0.9354*x[15]+0.3769*x[1]*x[2]*x[3]-0.6698*x[1]*x[2]*x[7]-0.3871*x[1]*x[2]*x[11]-0.0849*x[1]*x[2]*x[14]+0.0856*x[1]*x[2]*x[15]-0.6238*x[1]*x[3]*x[4]+0.3118*x[1]*x[3]*x[9]+0.4738*x[1]*x[3]*x[10]+0.9793*x[1]*x[3]*x[11]+0.4162*x[1]*x[4]*x[15]-0.3175*x[1]*x[5]*x[8]-0.1114*x[1]*x[5]*x[12]+0.9925*x[1]*x[5]*x[13]+0.4237*x[1]*x[6]*x[7]-0.1588*x[1]*x[6]*x[9]+0.379*x[1]*x[6]*x[10]+0.0611*x[1]*x[6]*x[11]+0.6521*x[1]*x[6]*x[12]-0.0483*x[1]*x[7]*x[10]-0.9632*x[1]*x[7]*x[15]-0.92*x[1]*x[8]*x[10]-0.0941*x[1]*x[8]*x[11]+0.7893*x[1]*x[8]*x[14]+0.3232*x[1]*x[8]*x[15]-0.343*x[1]*x[11]*x[13]+0.1736*x[1]*x[11]*x[15]-0.4268*x[1]*x[13]*x[15]+0.32*x[1]*x[14]*x[15]-0.4111*x[2]*x[3]*x[4]-0.3399*x[2]*x[3]*x[7]-0.3243*x[2]*x[3]*x[10]-0.3063*x[2]*x[3]*x[12]+0.5834*x[2]*x[3]*x[13]+0.5914*x[2]*x[3]*x[15]-0.0737*x[2]*x[4]*x[6]-0.4663*x[2]*x[4]*x[10]+0.7964*x[2]*x[4]*x[11]+0.2624*x[2]*x[4]*x[12]+0.6958*x[2]*x[4]*x[14]+0.8876*x[2]*x[5]*x[6]-0.6526*x[2]*x[5]*x[7]-0.0434*x[2]*x[5]*x[8]-0.6522*x[2]*x[5]*x[10]+0.0538*x[2]*x[5]*x[12]+0.2033*x[2]*x[5]*x[13]+0.6907*x[2]*x[5]*x[14]-0.6183*x[2]*x[6]*x[7]-0.3498*x[2]*x[6]*x[8]+0.1849*x[2]*x[6]*x[9]+0.54*x[2]*x[6]*x[12]+0.2203*x[2]*x[6]*x[13]+0.2995*x[2]*x[6]*x[14]+0.5189*x[2]*x[7]*x[8]-0.2124*x[2]*x[7]*x[11]-0.3506*x[2]*x[7]*x[15]-0.0645*x[2]*x[8]*x[11]-0.7734*x[2]*x[8]*x[12]-0.4082*x[2]*x[9]*x[10]-0.4814*x[2]*x[9]*x[11]+0.2013*x[2]*x[9]*x[13]-0.9163*x[2]*x[9]*x[14]-0.3177*x[2]*x[10]*x[11]-0.3354*x[2]*x[10]*x[14]+0.0073*x[2]*x[11]*x[12]+0.8514*x[2]*x[11]*x[13]-0.644*x[2]*x[11]*x[14]-0.1013*x[2]*x[11]*x[15]+0.7768*x[2]*x[12]*x[13]-0.7955*x[2]*x[13]*x[15]-0.7597*x[2]*x[14]*x[15]-0.5887*x[3]*x[4]*x[6]+0.7548*x[3]*x[4]*x[7]+0.5847*x[3]*x[4]*x[8]+0.1693*x[3]*x[4]*x[9]-0.5562*x[3]*x[4]*x[11]+0.9834*x[3]*x[4]*x[13]-0.117*x[3]*x[4]*x[14]-0.1685*x[3]*x[5]*x[6]-0.0401*x[3]*x[5]*x[7]-0.1389*x[3]*x[5]*x[8]-0.2592*x[3]*x[5]*x[9]-0.416*x[3]*x[5]*x[10]+0.6108*x[3]*x[5]*x[11]-0.5257*x[3]*x[5]*x[12]+0.8941*x[3]*x[6]*x[9]-0.7901*x[3]*x[6]*x[10]-0.9741*x[3]*x[6]*x[11]-0.3282*x[3]*x[6]*x[12]+0.6472*x[3]*x[6]*x[13]-0.2975*x[3]*x[6]*x[14]-0.2187*x[3]*x[6]*x[15]+0.4047*x[3]*x[7]*x[8]-0.6494*x[3]*x[7]*x[10]+0.1559*x[3]*x[7]*x[12]-0.1748*x[3]*x[7]*x[13]+0.0318*x[3]*x[7]*x[15]-0.0071*x[3]*x[8]*x[9]-0.9422*x[3]*x[8]*x[10]+0.7193*x[3]*x[8]*x[11]+0.9452*x[3]*x[8]*x[13]-0.8217*x[3]*x[8]*x[14]-0.2495*x[3]*x[8]*x[15]-0.1166*x[3]*x[9]*x[10]-0.5405*x[3]*x[9]*x[11]+0.3352*x[3]*x[9]*x[12]+0.0791*x[3]*x[9]*x[14]+0.1448*x[3]*x[10]*x[11]-0.2396*x[3]*x[10]*x[12]-0.6599*x[3]*x[10]*x[13]+0.3956*x[3]*x[10]*x[14]-0.6719*x[3]*x[11]*x[12]-0.0405*x[3]*x[11]*x[14]-0.0259*x[3]*x[12]*x[15]+0.5599*x[3]*x[13]*x[14]+0.0661*x[3]*x[14]*x[15]+0.1479*x[4]*x[5]*x[7]+0.225*x[4]*x[5]*x[9]-0.1281*x[4]*x[5]*x[10]-0.9986*x[4]*x[5]*x[12]+0.008*x[4]*x[6]*x[7]-0.27*x[4]*x[6]*x[8]-0.6057*x[4]*x[6]*x[9]+0.6115*x[4]*x[6]*x[11]-0.4616*x[4]*x[6]*x[13]+0.1178*x[4]*x[6]*x[14]-0.113*x[4]*x[6]*x[15]-0.6678*x[4]*x[7]*x[8]-0.4673*x[4]*x[7]*x[9]+0.2237*x[4]*x[7]*x[11]-0.7901*x[4]*x[7]*x[12]-0.6971*x[4]*x[7]*x[14]-0.9679*x[4]*x[8]*x[11]+0.8105*x[4]*x[8]*x[13]-0.6915*x[4]*x[8]*x[14]+0.2074*x[4]*x[9]*x[10]-0.1445*x[4]*x[9]*x[11]-0.9996*x[4]*x[9]*x[13]-0.0214*x[4]*x[9]*x[15]-0.0275*x[4]*x[10]*x[11]+0.3663*x[4]*x[10]*x[12]+0.3748*x[4]*x[10]*x[13]-0.5581*x[4]*x[10]*x[14]-0.6599*x[4]*x[11]*x[13]-0.7982*x[4]*x[12]*x[14]+0.7083*x[4]*x[13]*x[14]+0.7614*x[5]*x[6]*x[7]-0.4446*x[5]*x[6]*x[9]+0.5402*x[5]*x[6]*x[12]-0.1659*x[5]*x[6]*x[13]+0.1484*x[5]*x[6]*x[14]-0.9741*x[5]*x[6]*x[15]+0.7725*x[5]*x[7]*x[8]+0.1176*x[5]*x[7]*x[9]-0.5974*x[5]*x[7]*x[13]-0.0164*x[5]*x[7]*x[15]-0.3317*x[5]*x[8]*x[9]+0.6925*x[5]*x[8]*x[11]-0.3738*x[5]*x[8]*x[13]-0.3877*x[5]*x[8]*x[14]+0.4361*x[5]*x[9]*x[11]+0.4342*x[5]*x[9]*x[13]-0.1895*x[5]*x[9]*x[14]+0.6899*x[5]*x[9]*x[15]-0.3819*x[5]*x[10]*x[13]+0.5984*x[5]*x[10]*x[14]+0.6811*x[5]*x[10]*x[15]-0.9695*x[5]*x[11]*x[14]+0.4764*x[5]*x[12]*x[13]+0.459*x[5]*x[13]*x[14]+0.4255*x[6]*x[7]*x[9]+0.9347*x[6]*x[7]*x[10]+0.4211*x[6]*x[7]*x[14]+0.6789*x[6]*x[8]*x[9]+0.3488*x[6]*x[8]*x[10]+0.4117*x[6]*x[8]*x[12]+0.8966*x[6]*x[8]*x[14]-0.0821*x[6]*x[8]*x[15]+0.5563*x[6]*x[9]*x[12]-0.7816*x[6]*x[9]*x[13]+0.6146*x[6]*x[10]*x[11]-0.4982*x[6]*x[10]*x[14]-0.7367*x[6]*x[11]*x[12]-0.7712*x[6]*x[11]*x[14]-0.6926*x[6]*x[12]*x[13]-0.7882*x[6]*x[12]*x[15]+0.1803*x[7]*x[8]*x[11]-0.3946*x[7]*x[8]*x[12]-0.6359*x[7]*x[8]*x[13]+0.8319*x[7]*x[8]*x[15]+0.4719*x[7]*x[9]*x[10]-0.8851*x[7]*x[9]*x[12]+0.0473*x[7]*x[9]*x[13]+0.5281*x[7]*x[9]*x[14]+0.3126*x[7]*x[9]*x[15]-0.3792*x[7]*x[10]*x[11]-0.3062*x[7]*x[10]*x[12]+0.4854*x[7]*x[10]*x[13]+0.1433*x[7]*x[10]*x[14]+0.8944*x[7]*x[11]*x[12]+0.8516*x[7]*x[11]*x[13]+0.2886*x[7]*x[12]*x[13]-0.2321*x[7]*x[13]*x[14]+0.8568*x[8]*x[9]*x[10]+0.9525*x[8]*x[9]*x[11]-0.8786*x[8]*x[9]*x[12]-0.5107*x[8]*x[10]*x[11]-0.5235*x[8]*x[10]*x[12]-0.7975*x[8]*x[11]*x[12]-0.7488*x[8]*x[11]*x[13]+0.689*x[8]*x[11]*x[14]+0.1169*x[8]*x[12]*x[13]-0.6772*x[8]*x[12]*x[14]+0.6635*x[8]*x[12]*x[15]+0.695*x[8]*x[13]*x[15]-0.0794*x[9]*x[10]*x[11]+0.152*x[9]*x[10]*x[13]+0.7306*x[9]*x[10]*x[14]+0.4229*x[9]*x[10]*x[15]-0.7882*x[9]*x[11]*x[13]+0.7152*x[9]*x[11]*x[15]+0.1772*x[9]*x[12]*x[14]-0.745*x[9]*x[13]*x[14]+0.6766*x[9]*x[13]*x[15]-0.5217*x[10]*x[11]*x[13]+0.1597*x[10]*x[11]*x[14]-0.221*x[10]*x[12]*x[14]-0.3954*x[10]*x[14]*x[15]-0.7035*x[11]*x[12]*x[14]+0.8267*x[11]*x[14]*x[15]+0.5574*x[12]*x[13]*x[14]-0.8157*x[12]*x[14]*x[15])+x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script.