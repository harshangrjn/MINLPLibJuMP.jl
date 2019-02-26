using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-5)
set_upper_bound(x[1], 100.0)
set_lower_bound(x[2], 1.0e-5)
set_upper_bound(x[2], 100.0)
set_lower_bound(x[3], 1.0e-5)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], 1.0e-5)
set_upper_bound(x[4], 100.0)
set_lower_bound(x[5], 1.0e-7)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((1-x[3])*x[4]+x[3])+x[5] == 0.0)
@NLconstraint(m, e2, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(4.3418554699846-4.3418554699846*x[2])*exp(x[2]-0.0130582397492818*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(4.33833594604915-4.33833594604915*x[1])*exp(x[1]-0.0130582397492818*x[5]*x[1]/x[4]))+x[6] == 0.0)
@NLconstraint(m, e3, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(2.03927037699056-2.03927037699056*x[2])*exp(x[2]-0.130582397492818*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(2.0357508530551-2.0357508530551*x[1])*exp(x[1]-0.130582397492818*x[5]*x[1]/x[4]))+x[7] == 0.0)
@NLconstraint(m, e4, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(1.34612319643061-1.34612319643061*x[2])*exp(x[2]-0.261164794985636*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(1.34260367249516-1.34260367249516*x[1])*exp(x[1]-0.261164794985636*x[5]*x[1]/x[4]))+x[8] == 0.0)
@NLconstraint(m, e5, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(0.940658088322449-0.940658088322449*x[2])*exp(x[2]-0.391747192478454*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(0.937138564386993-0.937138564386993*x[1])*exp(x[1]-0.391747192478454*x[5]*x[1]/x[4]))+x[9] == 0.0)
@NLconstraint(m, e6, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(0.652976015870668-0.652976015870668*x[2])*exp(x[2]-0.522329589971272*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(0.649456491935212-0.649456491935212*x[1])*exp(x[1]-0.522329589971272*x[5]*x[1]/x[4]))+x[10] == 0.0)
@NLconstraint(m, e7, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(0.429832464556459-0.429832464556459*x[2])*exp(x[2]-0.65291198746409*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(0.426312940621002-0.426312940621002*x[1])*exp(x[1]-0.65291198746409*x[5]*x[1]/x[4]))+x[11] == 0.0)
@NLconstraint(m, e8, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(0.247510907762504-0.247510907762504*x[2])*exp(x[2]-0.783494384956908*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(0.243991383827048-0.243991383827048*x[1])*exp(x[1]-0.783494384956908*x[5]*x[1]/x[4]))+x[12] == 0.0)
@NLconstraint(m, e9, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp(0.0933602279352459-0.0933602279352459*x[2])*exp(x[2]-0.914076782449726*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp(0.0898407039997895-0.0898407039997895*x[1])*exp(x[1]-0.914076782449726*x[5]*x[1]/x[4]))+x[13] == 0.0)
@NLconstraint(m, e10, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.0401711646892769)+0.0401711646892769*x[2])*exp(x[2]-1.04465917994254*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.0436906886247332)+0.0436906886247332*x[1])*exp(x[1]-1.04465917994254*x[5]*x[1]/x[4]))+x[14] == 0.0)
@NLconstraint(m, e11, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.15795420034566)+0.15795420034566*x[2])*exp(x[2]-1.17524157743536*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.161473724281117)+0.161473724281117*x[1])*exp(x[1]-1.17524157743536*x[5]*x[1]/x[4]))+x[15] == 0.0)
@NLconstraint(m, e12, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.263314716003487)+0.263314716003487*x[2])*exp(x[2]-1.30582397492818*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.266834239938943)+0.266834239938943*x[1])*exp(x[1]-1.30582397492818*x[5]*x[1]/x[4]))+x[16] == 0.0)
@NLconstraint(m, e13, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.358624895807811)+0.358624895807811*x[2])*exp(x[2]-1.436406372421*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.362144419743268)+0.362144419743268*x[1])*exp(x[1]-1.436406372421*x[5]*x[1]/x[4]))+x[17] == 0.0)
@NLconstraint(m, e14, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.445636272797441)+0.445636272797441*x[2])*exp(x[2]-1.56698876991382*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.449155796732898)+0.449155796732898*x[1])*exp(x[1]-1.56698876991382*x[5]*x[1]/x[4]))+x[18] == 0.0)
@NLconstraint(m, e15, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.525678980470977)+0.525678980470977*x[2])*exp(x[2]-1.69757116740663*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.529198504406434)+0.529198504406434*x[1])*exp(x[1]-1.69757116740663*x[5]*x[1]/x[4]))+x[19] == 0.0)
@NLconstraint(m, e16, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.599786952624699)+0.599786952624699*x[2])*exp(x[2]-1.82815356489945*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.603306476560156)+0.603306476560156*x[1])*exp(x[1]-1.82815356489945*x[5]*x[1]/x[4]))+x[20] == 0.0)
@NLconstraint(m, e17, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.668779824111651)+0.668779824111651*x[2])*exp(x[2]-1.95873596239227*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.672299348047107)+0.672299348047107*x[1])*exp(x[1]-1.95873596239227*x[5]*x[1]/x[4]))+x[21] == 0.0)
@NLconstraint(m, e18, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.733318345249222)+0.733318345249222*x[2])*exp(x[2]-2.08931835988509*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.736837869184679)+0.736837869184679*x[1])*exp(x[1]-2.08931835988509*x[5]*x[1]/x[4]))+x[22] == 0.0)
@NLconstraint(m, e19, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.793942967065657)+0.793942967065657*x[2])*exp(x[2]-2.21990075737791*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.797462491001113)+0.797462491001113*x[1])*exp(x[1]-2.21990075737791*x[5]*x[1]/x[4]))+x[23] == 0.0)
@NLconstraint(m, e20, -((1+0.0833333333333333/x[2])*exp(log(x[5])*x[2])*x[3]*sqrt(0.159154570919277*x[2])*exp((-0.851101380905606)+0.851101380905606*x[2])*exp(x[2]-2.35048315487072*x[5]*x[2])+(1+0.0833333333333333/x[1])*exp(log(x[5]/x[4])*x[1])*(1-x[3])*sqrt(0.159154570919277*x[1])*exp((-0.854620904841062)+0.854620904841062*x[1])*exp(x[1]-2.35048315487072*x[5]*x[1]/x[4]))+x[24] == 0.0)
@NLconstraint(m, e21, (1-x[3])*x[4]+x[3] >= 0.0)
@NLconstraint(m, e22, -( ((-0.00189)+x[6])^2+ ((-0.1038)+x[7])^2+ ((-0.268)+x[8])^2+ ((-0.506)+x[9])^2+ ((-0.577)+x[10])^2+ ((-0.604)+x[11])^2+ ((-0.725)+x[12])^2+ ((-0.898)+x[13])^2+ ((-0.947)+x[14])^2+ ((-0.845)+x[15])^2+ ((-0.702)+x[16])^2+ ((-0.528)+x[17])^2+ ((-0.385)+x[18])^2+ ((-0.257)+x[19])^2+ ((-0.159)+x[20])^2+ ((-0.0869)+x[21])^2+ ((-0.0453)+x[22])^2+ ((-0.01509)+x[23])^2+ ((-0.00189)+x[24])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.