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
@NLconstraint(m, e1, -(-0.9541*x[1]*x[3]-0.6608*x[1]*x[7]-1.0332*x[1]*x[9]-1.0729*x[1]*x[10]-0.8953*x[1]*x[12]-1.2742*x[1]*x[14]-0.0455*x[1]*x[19]+1.3248*x[2]*x[2]-1.0082*x[2]*x[3]+0.9667*x[2]*x[4]-1.9686*x[2]*x[5]-1.6924*x[2]*x[6]-0.964*x[2]*x[8]-1.0601*x[2]*x[10]+1.963*x[2]*x[11]-0.0884*x[2]*x[12]-1.3081*x[2]*x[13]+1.4121*x[2]*x[19]+1.4488*x[3]*x[4]+1.3342*x[3]*x[5]-0.1184*x[3]*x[6]+0.6076*x[3]*x[8]-1.8084*x[3]*x[9]-1.358*x[3]*x[10]+1.379*x[3]*x[11]-1.0454*x[3]*x[12]-1.493*x[3]*x[17]+0.5878*x[3]*x[19]+1.8439*x[3]*x[20]-1.3916*x[4]*x[5]-1.9329*x[4]*x[7]-0.6834*x[4]*x[8]+1.2276*x[4]*x[10]-0.4492*x[4]*x[13]-1.1762*x[4]*x[16]+1.6824*x[4]*x[17]-0.1736*x[4]*x[18]-0.6546*x[4]*x[19]-1.5013*x[4]*x[20]-0.9568*x[5]*x[6]-0.4681*x[5]*x[7]+0.5104*x[5]*x[9]-0.5831*x[5]*x[10]+1.2129*x[5]*x[13]-0.7606*x[5]*x[15]+1.9358*x[5]*x[16]+0.3952*x[5]*x[18]+0.8765*x[5]*x[19]-1.7513*x[6]*x[9]+0.8603*x[6]*x[10]+0.1955*x[6]*x[13]+0.3559*x[6]*x[14]+0.2452*x[6]*x[15]-1.6835*x[6]*x[16]-1.8846*x[6]*x[17]-1.7464*x[6]*x[18]-1.0181*x[6]*x[20]+1.9663*x[7]*x[12]+0.3176*x[7]*x[16]+1.1265*x[7]*x[18]-1.6114*x[7]*x[20]-1.2054*x[8]*x[9]+1.573*x[8]*x[11]-0.0075*x[8]*x[16]-1.1509*x[8]*x[18]-1.765*x[9]*x[9]+1.2164*x[9]*x[10]+0.2479*x[9]*x[13]-0.9838*x[9]*x[14]+0.8334*x[9]*x[15]+1.745*x[9]*x[18]-1.6941*x[10]*x[10]+0.0165*x[10]*x[11]+0.4257*x[10]*x[12]+0.732*x[10]*x[13]-1.2741*x[10]*x[14]+0.5944*x[10]*x[18]-1.8758*x[11]*x[11]+0.824*x[11]*x[12]-1.6616*x[11]*x[18]-0.4612*x[11]*x[19]+0.9552*x[12]*x[13]+0.8771*x[12]*x[16]-1.662*x[12]*x[17]+1.8705*x[12]*x[19]-0.2172*x[13]*x[14]+1.5424*x[13]*x[15]-0.1191*x[13]*x[18]+1.451*x[14]*x[15]-1.9786*x[14]*x[16]+1.2044*x[14]*x[17]-0.3494*x[14]*x[18]+0.4975*x[14]*x[19]+0.0734*x[15]*x[15]+1.9721*x[15]*x[16]-1.3037*x[15]*x[17]+1.5142*x[15]*x[19]-0.4632*x[16]*x[16]-1.7747*x[16]*x[17]+1.5207*x[16]*x[18]-0.7944*x[17]*x[17]+0.0616*x[17]*x[18]-0.4891*x[17]*x[19]+0.2259*x[18]*x[19]+0.764*x[19]*x[20]+0.152*x[1]+0.5178*x[2]-0.1747*x[3]+0.9976*x[4]+0.1196*x[5]-0.5697*x[6]-0.8498*x[7]-0.6921*x[8]-0.0832*x[9]+0.7875*x[10]+0.2374*x[11]+0.2773*x[12]+0.8304*x[13]-0.2771*x[14]+0.8288*x[15]-0.6953*x[16]+0.9491*x[17]-0.1701*x[18]+0.4837*x[19]-0.9392*x[20])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.