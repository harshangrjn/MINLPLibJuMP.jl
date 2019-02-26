using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[37], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[15], 0.15)
set_upper_bound(x[15], 2.0)
set_lower_bound(x[16], 0.15)
set_upper_bound(x[16], 2.0)
set_lower_bound(x[17], 0.15)
set_upper_bound(x[17], 2.0)
set_lower_bound(x[18], 0.15)
set_upper_bound(x[18], 2.0)
set_lower_bound(x[19], 0.15)
set_upper_bound(x[19], 2.0)
set_lower_bound(x[20], 0.15)
set_upper_bound(x[20], 2.0)
set_lower_bound(x[21], 0.15)
set_upper_bound(x[21], 2.0)
set_lower_bound(x[22], 0.15)
set_upper_bound(x[22], 2.0)
set_lower_bound(x[23], 0.15)
set_upper_bound(x[23], 2.0)
set_lower_bound(x[24], 0.15)
set_upper_bound(x[24], 2.0)
set_lower_bound(x[25], 0.15)
set_upper_bound(x[25], 2.0)
set_lower_bound(x[26], 0.15)
set_upper_bound(x[26], 2.0)
set_lower_bound(x[27], 0.15)
set_upper_bound(x[27], 2.0)
set_lower_bound(x[28], 0.15)
set_upper_bound(x[28], 2.0)
set_lower_bound(x[29], 6.5)
set_lower_bound(x[30], 3.25)
set_lower_bound(x[31], 16.58)
set_lower_bound(x[32], 14.92)
set_lower_bound(x[33], 12.925)
set_lower_bound(x[34], 12.26)
set_lower_bound(x[35], 8.76)
set_lower_bound(x[36], 16.08)
set_upper_bound(x[37], 2.5)
set_upper_bound(x[38], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]+x[37] == 0.0)
@constraint(m, e2, -x[4]-x[5]-x[6]-x[7]+x[38] == 0.0)
@constraint(m, e3, x[1]+x[4]-x[8]-x[9]-x[10]-x[11] == 1.212)
@constraint(m, e4, x[2]+x[8]+x[12] == 0.452)
@constraint(m, e5, x[9]-x[12]+x[13] == 0.245)
@constraint(m, e6, x[5]+x[10]-x[13]-x[14] == 0.652)
@constraint(m, e7, x[6]+x[14] == 0.252)
@constraint(m, e8, x[3]+x[7]+x[11] == 0.456)
@NLconstraint(m, e9, -1.5722267648148*abs(x[1])*x[1]/x[15]^5.33+x[29]-x[31] == 0.0)
@NLconstraint(m, e10, -1.32004857865156*abs(x[2])*x[2]/x[16]^5.33+x[29]-x[32] == 0.0)
@NLconstraint(m, e11, -2.57705917665854*abs(x[3])*x[3]/x[17]^5.33+x[29]-x[36] == 0.0)
@NLconstraint(m, e12, -2.06257339263358*abs(x[4])*x[4]/x[18]^5.33+x[30]-x[31] == 0.0)
@NLconstraint(m, e13, -2.40235218067626*abs(x[5])*x[5]/x[19]^5.33+x[30]-x[34] == 0.0)
@NLconstraint(m, e14, -1.339*abs(x[6])*x[6]/x[20]^5.33+x[30]-x[35] == 0.0)
@NLconstraint(m, e15, -1.37419139860501*abs(x[7])*x[7]/x[21]^5.33+x[30]-x[36] == 0.0)
@NLconstraint(m, e16, -1.2916134290104*abs(x[8])*x[8]/x[22]^5.33+x[31]-x[32] == 0.0)
@NLconstraint(m, e17, -1.60230396616872*abs(x[9])*x[9]/x[23]^5.33+x[31]-x[33] == 0.0)
@NLconstraint(m, e18, -1.339*abs(x[10])*x[10]/x[24]^5.33+x[31]-x[34] == 0.0)
@NLconstraint(m, e19, -2.14329116080854*abs(x[11])*x[11]/x[25]^5.33+x[31]-x[36] == 0.0)
@NLconstraint(m, e20, -1.24561882211213*abs(x[12])*x[12]/x[26]^5.33-x[32]+x[33] == 0.0)
@NLconstraint(m, e21, -1.15157500841239*abs(x[13])*x[13]/x[27]^5.33-x[33]+x[34] == 0.0)
@NLconstraint(m, e22, -2.06257339263358*abs(x[14])*x[14]/x[28]^5.33+x[34]-x[35] == 0.0)
@NLconstraint(m, e23, -(1.02*x[37]*(x[29]-6.5)+1.02*x[38]*(x[30]-3.25))+x[39] == 0.0)
@NLconstraint(m, e24, -0.069*(1526.43375224737*x[15]^1.29+1281.60056179763*x[16]^1.29+2501.99920063936*x[17]^1.29+2002.49843945008*x[18]^1.29+2332.38075793812*x[19]^1.29+1300*x[20]^1.29+1334.16640641263*x[21]^1.29+1253.99362039845*x[22]^1.29+1555.6349186104*x[23]^1.29+1300*x[24]^1.29+2080.86520466848*x[25]^1.29+1209.33866224478*x[26]^1.29+1118.03398874989*x[27]^1.29+2002.49843945008*x[28]^1.29)+x[40] == 0.0)
@constraint(m, e25, -0.2*x[37]-0.17*x[38]+x[41] == 0.0)
@constraint(m, e26, -10*x[39]-x[40]-10*x[41]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.