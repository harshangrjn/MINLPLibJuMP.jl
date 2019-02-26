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
@NLconstraint(m, e1, -(0.6435*x[1]*x[5]+0.7715*x[5]*x[19]+0.3253*x[9]*x[13]+0.4957*x[9]*x[17]-0.2308*x[10]*x[19]+0.8868*x[12]*x[17]-0.4916*x[14]*x[15]+0.8219*x[1]-0.6145*x[5]+0.1688*x[9]-0.6302*x[10]+0.8851*x[12]+0.9515*x[13]-0.0604*x[14]-0.8915*x[15]-0.5954*x[17]+0.9315*x[19]+(-0.9361*x[1]*x[6]*x[12])-0.0116*x[1]*x[14]*x[20]+0.5083*x[1]*x[17]*x[18]+0.9815*x[2]*x[11]*x[15]-0.6882*x[3]*x[8]*x[13]-0.8066*x[4]*x[5]*x[9]-0.5569*x[4]*x[5]*x[18]+0.2078*x[4]*x[8]*x[13]+0.6082*x[4]*x[9]*x[10]+0.8841*x[4]*x[15]*x[17]-0.9939*x[5]*x[7]*x[17]-0.1374*x[5]*x[8]*x[10]+0.3054*x[5]*x[10]*x[18]-0.7532*x[5]*x[19]*x[20]+0.0687*x[6]*x[8]*x[11]-0.8726*x[6]*x[12]*x[14]+0.4542*x[7]*x[15]*x[16]-0.4356*x[8]*x[10]*x[18]-0.4775*x[8]*x[11]*x[18]-0.4919*x[9]*x[14]*x[17]-0.0037*x[10]*x[12]*x[16]+0.1277*x[10]*x[12]*x[20]-0.8293*x[10]*x[16]*x[20]-0.9742*x[12]*x[13]*x[19]+0.8915*x[2]+0.4384*x[3]+0.0104*x[4]+0.3569*x[6]-0.0835*x[7]-0.1778*x[8]+0.0573*x[11]-0.0968*x[16]-0.902*x[18]+0.4294*x[20]+(-0.4008*x[1]*x[2]*x[9]*x[12])-0.164*x[1]*x[3]*x[5]*x[8]-0.6331*x[1]*x[4]*x[7]*x[9]+0.7985*x[1]*x[5]*x[14]*x[16]+0.3398*x[1]*x[7]*x[12]*x[16]-0.5166*x[1]*x[9]*x[10]*x[14]-0.5502*x[1]*x[11]*x[15]*x[17]+0.3061*x[2]*x[3]*x[4]*x[10]+0.2869*x[2]*x[3]*x[6]*x[9]-0.6402*x[2]*x[3]*x[6]*x[13]-0.0148*x[2]*x[3]*x[7]*x[19]+0.7875*x[2]*x[4]*x[5]*x[10]-0.2623*x[2]*x[4]*x[9]*x[14]+0.1642*x[2]*x[4]*x[13]*x[14]+0.1313*x[2]*x[4]*x[16]*x[18]+0.8153*x[2]*x[5]*x[6]*x[9]+0.4301*x[2]*x[5]*x[6]*x[10]+0.3746*x[2]*x[5]*x[6]*x[19]+0.4865*x[2]*x[5]*x[16]*x[17]-0.831*x[2]*x[6]*x[12]*x[17]+0.6691*x[2]*x[6]*x[15]*x[17]-0.8026*x[2]*x[7]*x[9]*x[12]+0.8049*x[2]*x[10]*x[15]*x[18]-0.068*x[2]*x[10]*x[17]*x[19]+0.7074*x[3]*x[4]*x[10]*x[17]-0.0513*x[3]*x[4]*x[11]*x[20]+0.6861*x[3]*x[5]*x[7]*x[11]+0.0742*x[3]*x[5]*x[9]*x[13]-0.3189*x[3]*x[5]*x[9]*x[16]-0.0921*x[3]*x[5]*x[10]*x[17]-0.8223*x[3]*x[5]*x[12]*x[15]+0.3006*x[3]*x[6]*x[9]*x[12]-0.5091*x[3]*x[6]*x[17]*x[20]-0.1146*x[3]*x[7]*x[8]*x[11]+0.2716*x[3]*x[7]*x[17]*x[20]-0.9407*x[3]*x[8]*x[10]*x[14]+0.6625*x[3]*x[8]*x[14]*x[19]-0.5754*x[3]*x[8]*x[17]*x[18]-0.7244*x[3]*x[9]*x[13]*x[19]+0.3703*x[3]*x[10]*x[11]*x[15]+0.9229*x[3]*x[10]*x[17]*x[20]-0.875*x[3]*x[11]*x[14]*x[18]-0.2402*x[3]*x[11]*x[19]*x[20]+0.0463*x[3]*x[12]*x[14]*x[17]-0.3313*x[3]*x[13]*x[16]*x[18]+0.9353*x[4]*x[5]*x[12]*x[19]+0.5953*x[4]*x[5]*x[17]*x[18]-0.0517*x[4]*x[6]*x[7]*x[19]+0.9132*x[4]*x[6]*x[9]*x[16]-0.5881*x[4]*x[6]*x[12]*x[16]-0.3417*x[4]*x[8]*x[9]*x[14]+0.9491*x[4]*x[8]*x[13]*x[18]+0.9491*x[4]*x[9]*x[12]*x[19]+0.2472*x[4]*x[11]*x[12]*x[13]-0.5442*x[4]*x[15]*x[16]*x[17]-0.3529*x[4]*x[15]*x[16]*x[20]+0.7398*x[5]*x[6]*x[10]*x[13]-0.116*x[5]*x[6]*x[11]*x[14]-0.7106*x[5]*x[6]*x[13]*x[14]-0.6272*x[5]*x[6]*x[14]*x[18]+0.8281*x[5]*x[7]*x[8]*x[14]+0.8198*x[5]*x[9]*x[13]*x[14]-0.5013*x[5]*x[9]*x[14]*x[19]-0.2445*x[5]*x[9]*x[17]*x[19]-0.2806*x[5]*x[11]*x[14]*x[19]+0.352*x[5]*x[13]*x[14]*x[19]+0.4382*x[5]*x[16]*x[18]*x[19]+0.3632*x[6]*x[11]*x[15]*x[18]-0.8732*x[6]*x[14]*x[15]*x[18]-0.2679*x[6]*x[14]*x[17]*x[19]+0.5875*x[6]*x[15]*x[18]*x[19]+0.0711*x[7]*x[8]*x[9]*x[16]-0.6923*x[7]*x[10]*x[12]*x[15]-0.959*x[7]*x[10]*x[16]*x[18]-0.8912*x[7]*x[13]*x[15]*x[20]-0.0037*x[8]*x[12]*x[13]*x[16]+0.2738*x[8]*x[14]*x[16]*x[18]+0.9976*x[9]*x[10]*x[12]*x[15]+0.9994*x[9]*x[12]*x[16]*x[19]-0.9519*x[9]*x[13]*x[17]*x[18]+0.0082*x[10]*x[11]*x[17]*x[18]-0.8286*x[10]*x[12]*x[13]*x[20]-0.5516*x[10]*x[13]*x[15]*x[19]-0.8687*x[10]*x[15]*x[16]*x[20]+0.9418*x[11]*x[13]*x[14]*x[19]+0.5539*x[11]*x[13]*x[15]*x[18]+0.3882*x[11]*x[13]*x[16]*x[17]+0.3477*x[11]*x[14]*x[15]*x[17]-0.4249*x[11]*x[15]*x[17]*x[18]+0.8737*x[12]*x[15]*x[16]*x[20]+0.3182*x[13]*x[14]*x[15]*x[17]+0.4593*x[13]*x[14]*x[15]*x[18])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.