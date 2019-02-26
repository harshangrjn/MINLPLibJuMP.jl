using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.25*x[1]*x[1]+1.4*x[2]*x[2]+2.4*x[3]*x[3]+1.4*x[4]*x[4]+1.75*x[5]*x[5]+1.2*x[6]*x[6]+2.25*x[7]*x[7]+1.2*x[8]*x[8]+x[9]*x[9]+1.1*x[10]*x[10]+1.5*x[11]*x[11]+1.6*x[12]*x[12]+1.25*x[13]*x[13]+1.25*x[14]*x[14]+1.2*x[15]*x[15]+1.2*x[16]*x[16]+1.4*x[17]*x[17]+0.5*x[18]*x[18]+0.5*x[19]*x[19]+1.25*x[20]*x[20]+1.8*x[21]*x[21]+0.75*x[22]*x[22]+1.25*x[23]*x[23]+1.4*x[24]*x[24]+1.6*x[25]*x[25]+2*x[26]*x[26]+x[27]*x[27]+1.6*x[28]*x[28]+1.25*x[29]*x[29]+2.75*x[30]*x[30]+1.25*x[31]*x[31]+1.25*x[32]*x[32]+1.25*x[33]*x[33]+3*x[34]*x[34]+1.5*x[35]*x[35]+2*x[36]*x[36]+1.25*x[37]*x[37]+1.4*x[38]*x[38]+1.8*x[39]*x[39]+1.5*x[40]*x[40]+2.2*x[41]*x[41]+1.4*x[42]*x[42]+1.5*x[43]*x[43]+1.25*x[44]*x[44]+2*x[45]*x[45]+1.5*x[46]*x[46]+1.25*x[47]*x[47]+1.4*x[48]*x[48]+0.6*x[49]*x[49]+1.5*x[50]*x[50]+(5+x[1]-x[31])*(5+x[1]-x[31])+1.5*(5-x[1]+x[2]+x[3])*(5-x[1]+x[2]+x[3])+(5-x[2]+x[4]+x[5])*(5-x[2]+x[4]+x[5])+0.1*(2.5-x[4]+x[6]+x[7])*(2.5-x[4]+x[6]+x[7])+1.5*(6-x[6]+x[8]+x[9])*(6-x[6]+x[8]+x[9])+2*(6-x[8]+x[10]+x[11])*(6-x[8]+x[10]+x[11])+(5-x[10]+x[12]+x[13])*(5-x[10]+x[12]+x[13])+1.5*(6-x[12]+x[14]+x[15])*(6-x[12]+x[14]+x[15])+3*(10-x[11]-x[13]-x[14]+x[16]+x[17])*(10-x[11]-x[13]-x[14]+x[16]+x[17])+2*(6-x[16]+x[18]+x[19])*(6-x[16]+x[18]+x[19])+(5-x[9]-x[18]+x[20])*(5-x[9]-x[18]+x[20])+3*(9-x[5]-x[20]-x[21])*(9-x[5]-x[20]-x[21])+0.1*(2-x[19]+x[22]+x[23]+x[24])*(2-x[19]+x[22]+x[23]+x[24])+1.5*(7-x[23]+x[25]+x[26])*(7-x[23]+x[25]+x[26])+0.15*(2.5-x[7]-x[25]+x[27]+x[28])*(2.5-x[7]-x[25]+x[27]+x[28])+2*(6-x[28]+x[29]+x[30])*(6-x[28]+x[29]+x[30])+(5-x[29]+x[31]+x[32])*(5-x[29]+x[31]+x[32])+0.1*(2-x[32]+x[33]+x[34])*(2-x[32]+x[33]+x[34])+3*(9-x[3]-x[33]+x[35])*(9-x[3]-x[33]+x[35])+0.1*(2+x[21]-x[35]+x[36])*(2+x[21]-x[35]+x[36])+1.2*(5-x[36]+x[37]+x[38])*(5-x[36]+x[37]+x[38])+(5-x[30]-x[37]+x[39])*(5-x[30]-x[37]+x[39])+0.1*(2.5-x[38]-x[39]+x[40])*(2.5-x[38]-x[39]+x[40])+2*(5-x[40]+x[41]+x[42])*(5-x[40]+x[41]+x[42])+1.2*(6-x[41]+x[43]+x[44]+x[50])*(6-x[41]+x[43]+x[44]+x[50])+3*(10-x[44]+x[45]+x[46]+x[47])*(10-x[44]+x[45]+x[46]+x[47])+1.5*(7-x[46]+x[48])*(7-x[46]+x[48])+3*(10-x[42]-x[45]-x[48]+x[49]-x[50])*(10-x[42]-x[45]-x[48]+x[49]-x[50])+2*(6-x[26]-x[34]-x[43])*(6-x[26]-x[34]-x[43])+(5-x[15]-x[17]-x[24]-x[47])*(5-x[15]-x[17]-x[24]-x[47])+1.2*(4-x[49])*(4-x[49])+2*(4-x[22])*(4-x[22])+(4-x[27])*(4-x[27]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.