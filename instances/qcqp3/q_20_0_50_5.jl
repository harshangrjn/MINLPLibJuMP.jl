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
@NLconstraint(m, e1, -(1.9849*x[1]*x[18]-0.7422*x[1]*x[10]+0.8711*x[1]*x[19]-1.3885*x[2]*x[5]+1.5228*x[2]*x[6]+0.8083*x[2]*x[11]-0.0764*x[2]*x[12]+1.043*x[2]*x[13]-1.8571*x[2]*x[14]-1.154*x[2]*x[15]-0.5252*x[2]*x[17]-0.7475*x[3]*x[3]-0.5181*x[3]*x[4]-0.7919*x[3]*x[5]+1.6899*x[3]*x[7]+0.1115*x[3]*x[8]+1.6501*x[3]*x[10]-0.0142*x[3]*x[11]-1.4049*x[3]*x[14]+0.599*x[3]*x[19]+1.3816*x[4]*x[5]+0.6182*x[4]*x[8]-1.0346*x[4]*x[9]+1.8408*x[4]*x[10]-1.3459*x[4]*x[11]+1.7085*x[4]*x[14]-1.5253*x[4]*x[15]-0.4793*x[4]*x[16]+1.2459*x[4]*x[20]+0.2978*x[5]*x[5]+1.1316*x[5]*x[6]+0.9773*x[5]*x[7]-1.1775*x[5]*x[8]-0.54*x[5]*x[10]-1.85*x[5]*x[12]-1.4322*x[5]*x[13]-0.5904*x[5]*x[14]-0.2378*x[5]*x[16]+0.3796*x[5]*x[17]-0.545*x[5]*x[18]+0.4699*x[5]*x[19]-1.2903*x[5]*x[20]+1.6844*x[6]*x[6]-1.1134*x[6]*x[11]-0.9326*x[6]*x[13]-1.939*x[6]*x[14]-1.7856*x[6]*x[15]-1.8206*x[6]*x[17]+0.6431*x[6]*x[18]-0.1673*x[7]*x[7]-0.721*x[7]*x[9]-0.1608*x[7]*x[10]-0.488*x[7]*x[12]+0.2375*x[7]*x[14]+0.4367*x[7]*x[15]+0.3576*x[7]*x[16]-0.4902*x[7]*x[17]-1.5208*x[7]*x[18]-1.1186*x[8]*x[9]-1.5632*x[8]*x[12]+0.4572*x[8]*x[13]-0.1045*x[8]*x[16]-0.9231*x[8]*x[17]+0.2244*x[8]*x[18]-1.0086*x[8]*x[20]-0.6935*x[9]*x[11]+0.2865*x[9]*x[13]+0.118*x[9]*x[16]+1.6268*x[9]*x[17]+0.4161*x[9]*x[18]+1.2755*x[9]*x[19]-0.7825*x[9]*x[20]+1.7584*x[10]*x[10]-0.5534*x[10]*x[13]-1.5802*x[10]*x[17]-1.5679*x[10]*x[18]+0.6252*x[10]*x[19]-1.1859*x[11]*x[12]-1.2781*x[11]*x[13]-1.3868*x[11]*x[14]-0.77*x[11]*x[16]-1.7401*x[11]*x[18]+1.2354*x[11]*x[20]+1.6073*x[12]*x[12]-1.4234*x[12]*x[14]+0.7328*x[12]*x[15]-0.4724*x[13]*x[14]+0.2158*x[13]*x[15]-0.4855*x[13]*x[18]-1.7758*x[14]*x[15]+0.6846*x[14]*x[16]-0.28*x[14]*x[17]-0.6024*x[14]*x[18]-0.6982*x[14]*x[19]+1.4336*x[15]*x[16]+0.5297*x[15]*x[17]-0.0472*x[15]*x[19]-1.0082*x[16]*x[16]+1.3278*x[16]*x[17]-1.5964*x[16]*x[18]+0.7941*x[17]*x[19]-0.5208*x[17]*x[20]+0.3074*x[18]*x[19]-0.5133*x[18]*x[20]+1.4015*x[20]*x[20]+0.5847*x[1]+0.7055*x[2]+0.325*x[3]+0.2792*x[4]+0.0091*x[5]-0.8959*x[6]-0.2254*x[7]+0.718*x[8]+0.7289*x[9]+0.0895*x[10]-0.3158*x[11]-0.6424*x[12]-0.4076*x[13]-0.7606*x[14]-0.4835*x[15]+0.7128*x[16]-0.7993*x[17]+0.1586*x[18]-0.2892*x[19]-0.297*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.