using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75]
@variable(m, b[b_Idx])
x_Idx = Any[76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
set_binary(b[35])
set_binary(b[38])
set_binary(b[44])
set_lower_bound(x[89], 0.0)
set_binary(b[71])
set_lower_bound(x[93], 0.0)
set_binary(b[75])
set_binary(b[66])
set_binary(b[15])
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_binary(b[70])
set_binary(b[42])
set_binary(b[49])
set_lower_bound(x[77], 0.0)
set_binary(b[45])
set_binary(b[41])
set_binary(b[48])
set_binary(b[23])
set_lower_bound(x[92], 0.0)
set_binary(b[64])
set_binary(b[54])
set_binary(b[21])
set_lower_bound(x[81], 0.0)
set_binary(b[28])
set_binary(b[36])
set_binary(b[22])
set_lower_bound(x[87], 0.0)
set_binary(b[46])
set_binary(b[53])
set_binary(b[8])
set_binary(b[33])
set_lower_bound(x[88], 0.0)
set_binary(b[56])
set_binary(b[30])
set_lower_bound(x[94], 0.0)
set_binary(b[29])
set_binary(b[40])
set_binary(b[61])
set_binary(b[58])
set_binary(b[74])
set_binary(b[32])
set_binary(b[34])
set_lower_bound(x[82], 0.0)
set_binary(b[57])
set_binary(b[72])
set_binary(b[5])
set_binary(b[16])
set_binary(b[60])
set_binary(b[13])
set_lower_bound(x[80], 0.0)
set_binary(b[51])
set_binary(b[69])
set_lower_bound(x[86], 0.0)
set_binary(b[12])
set_binary(b[2])
set_binary(b[68])
set_lower_bound(x[79], 0.0)
set_binary(b[14])
set_binary(b[20])
set_binary(b[43])
set_binary(b[11])
set_binary(b[19])
set_binary(b[47])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[65])
set_binary(b[3])
set_lower_bound(x[95], 0.0)
set_binary(b[59])
set_lower_bound(x[90], 0.0)
set_binary(b[17])
set_binary(b[39])
set_binary(b[4])
set_binary(b[6])
set_binary(b[67])
set_binary(b[1])
set_binary(b[37])
set_binary(b[50])
set_binary(b[27])
set_binary(b[18])
set_lower_bound(x[84], 0.0)
set_binary(b[31])
set_binary(b[62])
set_binary(b[52])
set_binary(b[24])
set_binary(b[55])
set_binary(b[10])
set_lower_bound(x[83], 0.0)
set_binary(b[63])
set_binary(b[26])
set_binary(b[73])
set_lower_bound(x[76], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -301.899928098152*b[1]-282.051473607022*b[2]-151.594044960674*b[3]-114.784185877557*b[4]-213.364530716922*b[5]-772.653148294131*b[6]-697.676211791334*b[7]-146.306371684975*b[8]-390.583393857486*b[9]-208.147527440482*b[10]-662.892902187869*b[11]-577.461337631217*b[12]-221.10047354739*b[13]-425.919826737657*b[14]-123.074770812851*b[15]-333.28129673946*b[16]-248.380746723092*b[17]-249.162942146638*b[18]-164.598799150643*b[19]-280.957171099846*b[20]-308.552481034871*b[21]-270.059605282374*b[22]-104.633483616243*b[23]-79.6631898566695*b[24]-170.696237801571*b[25]-237.754076296143*b[26]-189.862911729786*b[27]-107.217531395173*b[28]-131.358715293396*b[29]-103.406777059692*b[30]-626.417763832299*b[31]-487.184730842973*b[32]-502.300580630229*b[33]-506.426352475088*b[34]-463.185748318154*b[35]-358.178221555384*b[36]-281.629247221142*b[37]-230.4203839171*b[38]-251.915433121165*b[39]-209.261088879339*b[40]-303.899003044044*b[41]-243.197489456663*b[42]-237.390965850675*b[43]-57.1385835039462*b[44]-301.733744039334*b[45]-30.6123768510861*b[46]-21.3396948414106*b[47]-278.520865043453*b[48]-162.122145724483*b[49]-304.508803157003*b[50]-252.516206195527*b[51]-178.796029580139*b[52]-319.145634893211*b[53]-257.755103285795*b[54]-317.996864520235*b[55]-936.171150833806*b[56]-887.611963724196*b[57]-419.760722838682*b[58]-519.981401235063*b[59]-524.621957902125*b[60]-326.37044675*b[61]-119.610927362864*b[62]-76.800859418795*b[63]-338.15311375*b[64]-113.101546866718*b[65]-69.3762358590679*b[66]-313.6973235*b[67]-116.266585440261*b[68]-75.0744657614982*b[69]-401.4402965*b[70]-138.599587312691*b[71]-86.376825937843*b[72]-456.70672375*b[73]-150.554161322115*b[74]-91.6821859840903*b[75]-93617.1150833806*x[76]-93617.1150833806*x[77]-93617.1150833806*x[78]-93617.1150833806*x[79]-93617.1150833806*x[80]+objvar == 0.0)
@constraint(m, e2, 0.609376132*b[1]+1.180016336*b[6]+0.967493052*b[11]+1.004918785*b[16]+0.698898063*b[21]+0.540292599*b[26]+1.460452986*b[31]+0.811980791*b[36]+0.973180988*b[41]+0.544914116*b[46]+0.78515855*b[51]+1.312281472*b[56]-2.0080698912*x[81]-4.0161397824*x[82]-6.0242096736*x[83] == 0.0)
@constraint(m, e3, 0.609376132*b[2]+1.180016336*b[7]+0.967493052*b[12]+1.004918785*b[17]+0.698898063*b[22]+0.540292599*b[27]+1.460452986*b[32]+0.811980791*b[37]+0.973180988*b[42]+0.544914116*b[47]+0.78515855*b[52]+1.312281472*b[57]-1.581486777*x[84]-3.162973554*x[85]-4.744460331*x[86] == 0.0)
@constraint(m, e4, 0.609376132*b[3]+1.180016336*b[8]+0.967493052*b[13]+1.004918785*b[18]+0.698898063*b[23]+0.540292599*b[28]+1.460452986*b[33]+0.811980791*b[38]+0.973180988*b[43]+0.544914116*b[48]+0.78515855*b[53]+1.312281472*b[58]-1.9963246902*x[87]-3.9926493804*x[88]-5.9889740706*x[89] == 0.0)
@constraint(m, e5, 0.609376132*b[4]+1.180016336*b[9]+0.967493052*b[14]+1.004918785*b[19]+0.698898063*b[24]+0.540292599*b[29]+1.460452986*b[34]+0.811980791*b[39]+0.973180988*b[44]+0.544914116*b[49]+0.78515855*b[54]+1.312281472*b[59]-2.065052076*x[90]-4.130104152*x[91]-6.195156228*x[92] == 0.0)
@constraint(m, e6, 0.609376132*b[5]+1.180016336*b[10]+0.967493052*b[15]+1.004918785*b[20]+0.698898063*b[25]+0.540292599*b[30]+1.460452986*b[35]+0.811980791*b[40]+0.973180988*b[45]+0.544914116*b[50]+0.78515855*b[55]+1.312281472*b[60]-2.0449844238*x[93]-4.0899688476*x[94]-6.1349532714*x[95] == 0.0)
@constraint(m, e7, b[1]+b[2]+b[3]+b[4]+b[5] == 1.0)
@constraint(m, e8, b[6]+b[7]+b[8]+b[9]+b[10] == 1.0)
@constraint(m, e9, b[11]+b[12]+b[13]+b[14]+b[15] == 1.0)
@constraint(m, e10, b[16]+b[17]+b[18]+b[19]+b[20] == 1.0)
@constraint(m, e11, b[21]+b[22]+b[23]+b[24]+b[25] == 1.0)
@constraint(m, e12, b[26]+b[27]+b[28]+b[29]+b[30] == 1.0)
@constraint(m, e13, b[31]+b[32]+b[33]+b[34]+b[35] == 1.0)
@constraint(m, e14, b[36]+b[37]+b[38]+b[39]+b[40] == 1.0)
@constraint(m, e15, b[41]+b[42]+b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48]+b[49]+b[50] == 1.0)
@constraint(m, e17, b[51]+b[52]+b[53]+b[54]+b[55] == 1.0)
@constraint(m, e18, b[56]+b[57]+b[58]+b[59]+b[60] == 1.0)
@constraint(m, e19, b[61]+b[62]+b[63] <= 1.0)
@constraint(m, e20, b[64]+b[65]+b[66] <= 1.0)
@constraint(m, e21, b[67]+b[68]+b[69] <= 1.0)
@constraint(m, e22, b[70]+b[71]+b[72] <= 1.0)
@constraint(m, e23, b[73]+b[74]+b[75] <= 1.0)
@constraint(m, e24, -b[61]+x[81] <= 0.0)
@constraint(m, e25, -b[62]+x[82] <= 0.0)
@constraint(m, e26, -b[63]+x[83] <= 0.0)
@constraint(m, e27, -b[64]+x[84] <= 0.0)
@constraint(m, e28, -b[65]+x[85] <= 0.0)
@constraint(m, e29, -b[66]+x[86] <= 0.0)
@constraint(m, e30, -b[67]+x[87] <= 0.0)
@constraint(m, e31, -b[68]+x[88] <= 0.0)
@constraint(m, e32, -b[69]+x[89] <= 0.0)
@constraint(m, e33, -b[70]+x[90] <= 0.0)
@constraint(m, e34, -b[71]+x[91] <= 0.0)
@constraint(m, e35, -b[72]+x[92] <= 0.0)
@constraint(m, e36, -b[73]+x[93] <= 0.0)
@constraint(m, e37, -b[74]+x[94] <= 0.0)
@constraint(m, e38, -b[75]+x[95] <= 0.0)
@NLconstraint(m, e39, x[81]*b[61]+x[81]*x[76]-x[76]*b[61] <= 0.0)
@NLconstraint(m, e40, x[82]*b[62]+x[82]*x[76]-x[76]*b[62] <= 0.0)
@NLconstraint(m, e41, x[83]*b[63]+x[83]*x[76]-x[76]*b[63] <= 0.0)
@NLconstraint(m, e42, x[84]*b[64]+x[84]*x[77]-x[77]*b[64] <= 0.0)
@NLconstraint(m, e43, x[85]*b[65]+x[85]*x[77]-x[77]*b[65] <= 0.0)
@NLconstraint(m, e44, x[86]*b[66]+x[86]*x[77]-x[77]*b[66] <= 0.0)
@NLconstraint(m, e45, x[87]*b[67]+x[87]*x[78]-x[78]*b[67] <= 0.0)
@NLconstraint(m, e46, x[88]*b[68]+x[88]*x[78]-x[78]*b[68] <= 0.0)
@NLconstraint(m, e47, x[89]*b[69]+x[89]*x[78]-x[78]*b[69] <= 0.0)
@NLconstraint(m, e48, x[90]*b[70]+x[90]*x[79]-x[79]*b[70] <= 0.0)
@NLconstraint(m, e49, x[91]*b[71]+x[91]*x[79]-x[79]*b[71] <= 0.0)
@NLconstraint(m, e50, x[92]*b[72]+x[92]*x[79]-x[79]*b[72] <= 0.0)
@NLconstraint(m, e51, x[93]*b[73]+x[93]*x[80]-x[80]*b[73] <= 0.0)
@NLconstraint(m, e52, x[94]*b[74]+x[94]*x[80]-x[80]*b[74] <= 0.0)
@NLconstraint(m, e53, x[95]*b[75]+x[95]*x[80]-x[80]*b[75] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.