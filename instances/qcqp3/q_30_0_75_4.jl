using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.8651*x[1]*x[1]+0.8738*x[1]*x[2]+0.7123*x[1]*x[3]-0.789*x[1]*x[4]-0.9015*x[1]*x[5]+0.8536*x[1]*x[6]-0.6222*x[1]*x[7]+0.531*x[1]*x[9]-0.7534*x[1]*x[10]+0.1807*x[1]*x[11]+0.8496*x[1]*x[12]+0.0791*x[1]*x[13]+0.8057*x[1]*x[14]-0.81*x[1]*x[15]+0.7906*x[1]*x[16]-0.4133*x[1]*x[17]+0.6907*x[1]*x[19]+0.0963*x[1]*x[20]-0.2825*x[1]*x[21]+0.0354*x[1]*x[22]+0.5125*x[1]*x[23]+0.9351*x[1]*x[24]+0.7973*x[1]*x[25]-0.8916*x[1]*x[27]-0.7597*x[1]*x[28]+0.2381*x[1]*x[30]+0.0077*x[2]*x[2]+0.3442*x[2]*x[3]+0.1405*x[2]*x[4]+0.8568*x[2]*x[5]-0.261*x[2]*x[7]-0.8792*x[2]*x[8]-0.0695*x[2]*x[9]-0.827*x[2]*x[10]+0.5092*x[2]*x[11]+0.4796*x[2]*x[15]-0.7576*x[2]*x[22]-0.2986*x[2]*x[27]-0.6192*x[2]*x[28]-0.8556*x[3]*x[3]-0.0737*x[3]*x[4]-0.0614*x[3]*x[5]-0.0832*x[3]*x[6]-0.6275*x[3]*x[8]-0.4122*x[3]*x[11]+0.1479*x[3]*x[14]-0.4795*x[3]*x[17]+0.4531*x[3]*x[22]-0.564*x[3]*x[23]-0.7735*x[3]*x[24]+0.5994*x[3]*x[26]+0.5007*x[3]*x[27]+0.5843*x[3]*x[29]-0.436*x[4]*x[13]-0.2484*x[4]*x[16]+0.5402*x[4]*x[23]+0.4467*x[4]*x[24]-0.7388*x[4]*x[25]+0.449*x[4]*x[29]+0.2*x[4]*x[30]-0.2227*x[5]*x[5]+0.1216*x[5]*x[6]-0.1403*x[5]*x[7]+0.2873*x[5]*x[9]-0.9251*x[5]*x[11]-0.9097*x[5]*x[13]-0.299*x[5]*x[14]-0.037*x[5]*x[15]+0.1356*x[5]*x[16]+0.1424*x[5]*x[18]+0.9099*x[5]*x[19]-0.8295*x[5]*x[21]-0.9163*x[5]*x[22]-0.886*x[5]*x[23]-0.5395*x[5]*x[28]+0.4885*x[5]*x[30]+0.0733*x[6]*x[8]+0.6171*x[6]*x[9]+0.9443*x[6]*x[13]+0.8452*x[6]*x[15]+0.2589*x[6]*x[17]-0.3954*x[6]*x[18]+0.2099*x[6]*x[19]-0.4274*x[6]*x[22]+0.7638*x[6]*x[26]+0.0518*x[6]*x[30]-0.7951*x[7]*x[8]-0.0508*x[7]*x[9]-0.2861*x[7]*x[13]+0.0163*x[7]*x[23]+0.3989*x[7]*x[26]-0.3631*x[7]*x[27]-0.1875*x[7]*x[28]+0.6995*x[7]*x[29]+0.5373*x[8]*x[9]+0.7748*x[8]*x[11]+0.0892*x[8]*x[13]+0.093*x[8]*x[14]-0.4689*x[8]*x[15]+0.4298*x[8]*x[16]-0.4441*x[8]*x[19]-0.9731*x[8]*x[20]-0.0911*x[8]*x[22]-0.8933*x[8]*x[23]-0.3553*x[8]*x[25]-0.1372*x[8]*x[27]+0.239*x[8]*x[28]+0.9347*x[8]*x[29]-0.8911*x[9]*x[9]-0.528*x[9]*x[10]-0.13*x[9]*x[11]-0.2034*x[9]*x[12]-0.69*x[9]*x[13]+0.2966*x[9]*x[14]+0.9593*x[9]*x[15]-0.9582*x[9]*x[16]+0.4532*x[9]*x[18]+0.5574*x[9]*x[20]-0.4571*x[9]*x[21]-0.9344*x[9]*x[23]-0.1114*x[9]*x[24]+0.477*x[9]*x[25]-0.0515*x[9]*x[29]-0.456*x[10]*x[10]+0.1071*x[10]*x[12]+0.3639*x[10]*x[16]+0.1604*x[10]*x[18]+0.7412*x[10]*x[21]-0.842*x[10]*x[24]+0.2298*x[10]*x[26]-0.7632*x[10]*x[27]+0.467*x[10]*x[28]-0.3678*x[10]*x[30]-0.0498*x[11]*x[11]+0.2148*x[11]*x[12]-0.6331*x[11]*x[14]+0.1204*x[11]*x[15]+0.2074*x[11]*x[22]-0.0007*x[11]*x[23]+0.1524*x[11]*x[24]-0.1373*x[11]*x[26]-0.5286*x[11]*x[28]+0.0533*x[11]*x[29]-0.0113*x[12]*x[12]+0.039*x[12]*x[21]+0.746*x[12]*x[25]-0.7493*x[12]*x[28]-0.3501*x[12]*x[29]-0.7046*x[13]*x[13]+0.623*x[13]*x[14]-0.3282*x[13]*x[15]+0.2535*x[13]*x[18]+0.7369*x[13]*x[20]-0.3179*x[13]*x[21]-0.7554*x[13]*x[22]+0.3384*x[13]*x[23]+0.7428*x[13]*x[28]+0.6871*x[14]*x[14]-0.2774*x[14]*x[15]+0.1942*x[14]*x[16]-0.0372*x[14]*x[17]+0.9036*x[14]*x[18]+0.9891*x[14]*x[20]+0.2623*x[14]*x[22]+0.4058*x[14]*x[25]+0.2905*x[14]*x[28]+0.8707*x[14]*x[29]-0.6906*x[14]*x[30]+0.0175*x[15]*x[17]+0.7644*x[15]*x[18]+0.1747*x[15]*x[20]-0.3217*x[15]*x[23]-0.3756*x[15]*x[24]-0.4446*x[15]*x[25]-0.5191*x[15]*x[27]+0.8229*x[15]*x[28]-0.0585*x[15]*x[30]+0.7931*x[16]*x[16]+0.2165*x[16]*x[18]+0.3018*x[16]*x[19]-0.6853*x[16]*x[21]+0.4834*x[16]*x[22]-0.9677*x[16]*x[23]+0.9793*x[16]*x[25]-0.3145*x[16]*x[26]+0.9356*x[16]*x[28]-0.651*x[16]*x[29]-0.7873*x[16]*x[30]+0.5914*x[17]*x[17]-0.82*x[17]*x[23]-0.8009*x[17]*x[24]-0.4826*x[18]*x[18]-0.2493*x[18]*x[19]+0.5075*x[18]*x[24]-0.6548*x[18]*x[27]-0.7159*x[18]*x[29]-0.7049*x[18]*x[30]-0.3438*x[19]*x[19]-0.1976*x[19]*x[23]+0.0079*x[19]*x[25]-0.8311*x[19]*x[26]+0.3371*x[19]*x[27]+0.6852*x[19]*x[28]+0.2669*x[19]*x[29]+0.3508*x[19]*x[30]-0.281*x[20]*x[21]-0.1383*x[20]*x[22]-0.5659*x[20]*x[23]+0.008*x[20]*x[25]-0.2438*x[20]*x[28]+0.8352*x[20]*x[29]-0.6792*x[20]*x[30]-0.505*x[21]*x[21]-0.117*x[21]*x[23]-0.3067*x[21]*x[24]-0.3803*x[21]*x[29]+0.7882*x[21]*x[30]+0.3372*x[22]*x[26]-0.919*x[22]*x[28]-0.7383*x[22]*x[30]+0.7541*x[23]*x[23]+0.5834*x[23]*x[26]+0.1474*x[23]*x[28]+0.0948*x[23]*x[29]-0.3359*x[23]*x[30]+0.165*x[24]*x[24]+0.3496*x[24]*x[29]+0.6279*x[25]*x[25]-0.6031*x[25]*x[27]+0.1115*x[25]*x[28]-0.7796*x[25]*x[29]-0.5661*x[26]*x[28]+0.1693*x[26]*x[29]+0.957*x[26]*x[30]+0.7301*x[27]*x[27]-0.1917*x[27]*x[30]+0.9096*x[28]*x[28]-0.2321*x[28]*x[29]-0.1408*x[29]*x[29]+0.9235*x[30]*x[30]-0.5794*x[1]+0.227*x[2]-0.3337*x[3]-0.3646*x[4]-0.4327*x[5]-0.1094*x[6]+0.3825*x[7]+0.5071*x[8]+0.8944*x[9]-0.3627*x[10]+0.065*x[11]+0.7137*x[12]+0.5367*x[13]+0.1169*x[14]+0.1142*x[15]-0.814*x[16]+0.7162*x[17]+0.4038*x[18]+0.3275*x[19]-0.7578*x[20]+0.2681*x[21]+0.618*x[22]+0.8112*x[23]+0.652*x[24]+0.5574*x[25]+0.1105*x[26]-0.685*x[27]+0.2517*x[28]-0.2113*x[29]-0.9952*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script.