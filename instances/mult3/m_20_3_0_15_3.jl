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
@NLconstraint(m, e1, -(-0.2244*x[1]*x[6]-0.6942*x[2]*x[5]+0.4041*x[2]*x[11]+0.761*x[2]*x[12]+0.7216*x[2]*x[17]+0.3423*x[2]*x[19]-0.2722*x[3]*x[8]+0.4641*x[3]*x[15]+0.2956*x[4]*x[9]-0.9433*x[4]*x[13]+0.7189*x[4]*x[19]-0.2725*x[5]*x[18]-0.5567*x[6]*x[11]+0.27*x[7]*x[17]+0.5581*x[8]*x[9]-0.3238*x[8]*x[19]-0.6034*x[9]*x[14]-0.6747*x[9]*x[20]-0.6102*x[11]*x[12]-0.5872*x[11]*x[16]-0.87*x[11]*x[18]-0.2227*x[12]*x[15]+0.519*x[13]*x[18]-0.1619*x[14]*x[17]+0.9238*x[15]*x[19]+0.3368*x[16]*x[17]+0.7638*x[1]+0.0518*x[2]-0.7951*x[3]-0.0508*x[4]-0.2861*x[5]+0.0163*x[6]+0.3989*x[7]-0.3631*x[8]-0.1875*x[9]+0.5373*x[11]+0.7748*x[12]+0.0892*x[13]+0.093*x[14]-0.4689*x[15]+0.4298*x[16]-0.4441*x[17]-0.9731*x[18]-0.0911*x[19]-0.8933*x[20]+0.0856*x[1]*x[3]*x[19]-0.2154*x[1]*x[3]*x[14]-0.0055*x[1]*x[4]*x[8]+0.1984*x[1]*x[4]*x[16]+0.9925*x[1]*x[6]*x[18]-0.7787*x[1]*x[7]*x[14]+0.0294*x[1]*x[9]*x[10]-0.0483*x[1]*x[9]*x[13]-0.0941*x[1]*x[10]*x[14]-0.9423*x[1]*x[12]*x[20]-0.6234*x[1]*x[15]*x[18]-0.4268*x[1]*x[17]*x[19]+0.6336*x[2]*x[3]*x[9]+0.5092*x[2]*x[3]*x[10]+0.3065*x[2]*x[3]*x[12]+0.0077*x[2]*x[3]*x[13]+0.3068*x[2]*x[3]*x[16]+0.8536*x[2]*x[3]*x[17]-0.886*x[2]*x[3]*x[19]-0.6338*x[2]*x[4]*x[5]-0.3243*x[2]*x[4]*x[13]+0.2624*x[2]*x[6]*x[16]+0.0457*x[2]*x[7]*x[10]+0.5201*x[2]*x[7]*x[11]+0.54*x[2]*x[7]*x[15]-0.9557*x[2]*x[8]*x[17]+0.5189*x[2]*x[9]*x[10]-0.4492*x[2]*x[9]*x[11]-0.9097*x[2]*x[9]*x[13]+0.3339*x[2]*x[9]*x[17]+0.9707*x[2]*x[9]*x[18]-0.8299*x[2]*x[10]*x[12]+0.4136*x[2]*x[10]*x[15]-0.7454*x[2]*x[12]*x[14]-0.4814*x[2]*x[12]*x[15]-0.6117*x[2]*x[13]*x[14]-0.8024*x[2]*x[13]*x[17]-0.1614*x[2]*x[13]*x[18]-0.7231*x[2]*x[14]*x[19]+0.1714*x[2]*x[16]*x[19]-0.6065*x[3]*x[4]*x[8]-0.6996*x[3]*x[4]*x[11]+0.2443*x[3]*x[4]*x[14]+0.1935*x[3]*x[4]*x[18]+0.901*x[3]*x[4]*x[19]-0.8556*x[3]*x[5]*x[8]+0.0926*x[3]*x[5]*x[9]+0.5007*x[3]*x[5]*x[16]-0.1237*x[3]*x[6]*x[7]-0.7993*x[3]*x[6]*x[17]+0.8449*x[3]*x[7]*x[9]+0.825*x[3]*x[7]*x[10]-0.874*x[3]*x[7]*x[14]-0.7523*x[3]*x[7]*x[17]+0.2953*x[3]*x[7]*x[18]-0.9854*x[3]*x[7]*x[19]+0.2995*x[3]*x[8]*x[19]+0.342*x[3]*x[10]*x[13]+0.3108*x[3]*x[10]*x[17]+0.9452*x[3]*x[10]*x[18]-0.0071*x[3]*x[11]*x[12]+0.8496*x[3]*x[12]*x[16]-0.5391*x[3]*x[12]*x[17]-0.2481*x[3]*x[13]*x[16]-0.3577*x[3]*x[15]*x[16]+0.3945*x[3]*x[15]*x[18]-0.1996*x[3]*x[15]*x[19]-0.333*x[4]*x[5]*x[18]-0.5562*x[4]*x[6]*x[14]-0.5755*x[4]*x[8]*x[15]-0.6494*x[4]*x[9]*x[13]-0.5593*x[4]*x[9]*x[18]+0.9204*x[4]*x[10]*x[13]-0.3842*x[4]*x[12]*x[16]-0.2396*x[4]*x[13]*x[16]-0.8312*x[4]*x[13]*x[19]+0.2469*x[4]*x[14]*x[15]+0.7864*x[4]*x[14]*x[19]+0.0119*x[4]*x[15]*x[16]+0.6639*x[4]*x[16]*x[17]-0.3585*x[4]*x[16]*x[19]-0.0259*x[4]*x[16]*x[20]-0.2604*x[4]*x[17]*x[20]-0.1296*x[5]*x[6]*x[12]+0.774*x[5]*x[6]*x[14]-0.4795*x[5]*x[7]*x[12]-0.3756*x[5]*x[7]*x[13]-0.2952*x[5]*x[7]*x[14]-0.0693*x[5]*x[7]*x[15]-0.6678*x[5]*x[9]*x[11]+0.8643*x[5]*x[9]*x[16]+0.0649*x[5]*x[11]*x[12]+0.3748*x[5]*x[11]*x[13]+0.4677*x[5]*x[12]*x[13]+0.9322*x[5]*x[12]*x[15]+0.2583*x[5]*x[12]*x[17]+0.1527*x[5]*x[12]*x[18]+0.4188*x[5]*x[15]*x[16]-0.4543*x[6]*x[7]*x[13]+0.6319*x[6]*x[7]*x[18]+0.4467*x[6]*x[8]*x[16]+0.6841*x[6]*x[8]*x[20]+0.1311*x[6]*x[9]*x[11]-0.3684*x[6]*x[9]*x[13]-0.1639*x[6]*x[10]*x[14]-0.8466*x[6]*x[11]*x[13]-0.6424*x[6]*x[13]*x[16]-0.4267*x[6]*x[14]*x[17]+0.5984*x[6]*x[14]*x[18]+0.7614*x[7]*x[8]*x[10]-0.1659*x[7]*x[8]*x[18]+0.0795*x[7]*x[9]*x[11]-0.8681*x[7]*x[10]*x[14]+0.2429*x[7]*x[10]*x[16]-0.9485*x[7]*x[11]*x[13]-0.6424*x[7]*x[11]*x[17]-0.9671*x[7]*x[11]*x[18]-0.4274*x[7]*x[12]*x[13]+0.4361*x[7]*x[12]*x[14]-0.2114*x[7]*x[13]*x[18]+0.5042*x[7]*x[13]*x[19]+0.9553*x[7]*x[15]*x[17]-0.7604*x[7]*x[18]*x[19]+0.076*x[8]*x[9]*x[18]+0.3488*x[8]*x[10]*x[13]-0.6013*x[8]*x[10]*x[18]+0.6789*x[8]*x[11]*x[12]-0.639*x[8]*x[11]*x[13]+0.9351*x[8]*x[11]*x[15]+0.5281*x[8]*x[12]*x[19]+0.4189*x[8]*x[13]*x[14]-0.1385*x[8]*x[13]*x[18]+0.2894*x[8]*x[14]*x[17]-0.7405*x[8]*x[14]*x[19]-0.9333*x[8]*x[15]*x[17]+0.1122*x[8]*x[17]*x[18]+0.0886*x[8]*x[17]*x[19]-0.3946*x[9]*x[11]*x[16]+0.4864*x[9]*x[12]*x[18]+0.6818*x[9]*x[14]*x[15]+0.8982*x[9]*x[14]*x[18]+0.2886*x[9]*x[16]*x[17]-0.0444*x[9]*x[16]*x[18]+0.992*x[10]*x[11]*x[16]-0.2744*x[10]*x[11]*x[20]-0.7975*x[10]*x[14]*x[16]+0.5978*x[10]*x[15]*x[17]+0.9879*x[10]*x[15]*x[20]-0.0473*x[10]*x[16]*x[18]+0.6635*x[10]*x[16]*x[20]+0.6629*x[11]*x[12]*x[18]-0.2826*x[11]*x[14]*x[17]+0.9443*x[11]*x[15]*x[16]+0.8381*x[11]*x[15]*x[18]-0.0236*x[11]*x[15]*x[19]-0.7641*x[11]*x[17]*x[18]+0.7113*x[12]*x[13]*x[14]-0.1952*x[12]*x[13]*x[15]-0.0794*x[12]*x[14]*x[15]-0.4876*x[12]*x[14]*x[18]+0.7152*x[12]*x[15]*x[20]-0.4082*x[12]*x[16]*x[17]+0.0191*x[12]*x[17]*x[18]-0.8064*x[13]*x[14]*x[15]-0.5217*x[13]*x[14]*x[17]-0.0792*x[14]*x[15]*x[18]+0.2792*x[14]*x[16]*x[17]+0.7828*x[14]*x[16]*x[18]-0.6141*x[14]*x[16]*x[19]-0.4292*x[14]*x[16]*x[20]+0.3835*x[14]*x[17]*x[18]-0.3458*x[14]*x[17]*x[19]-0.3247*x[17]*x[18]*x[19]+0.6995*x[10])+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script.