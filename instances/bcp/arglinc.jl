using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+2*x[1]+3*x[2]+4*x[3]+5*x[4]+6*x[5]+7*x[6]+8*x[7]+9*x[8])^2+ ((-1)+4*x[1]+6*x[2]+8*x[3]+10*x[4]+12*x[5]+14*x[6]+16*x[7]+18*x[8])^2+ ((-1)+6*x[1]+9*x[2]+12*x[3]+15*x[4]+18*x[5]+21*x[6]+24*x[7]+27*x[8])^2+ ((-1)+8*x[1]+12*x[2]+16*x[3]+20*x[4]+24*x[5]+28*x[6]+32*x[7]+36*x[8])^2+ ((-1)+10*x[1]+15*x[2]+20*x[3]+25*x[4]+30*x[5]+35*x[6]+40*x[7]+45*x[8])^2+ ((-1)+12*x[1]+18*x[2]+24*x[3]+30*x[4]+36*x[5]+42*x[6]+48*x[7]+54*x[8])^2+ ((-1)+14*x[1]+21*x[2]+28*x[3]+35*x[4]+42*x[5]+49*x[6]+56*x[7]+63*x[8])^2+ ((-1)+16*x[1]+24*x[2]+32*x[3]+40*x[4]+48*x[5]+56*x[6]+64*x[7]+72*x[8])^2+ ((-1)+18*x[1]+27*x[2]+36*x[3]+45*x[4]+54*x[5]+63*x[6]+72*x[7]+81*x[8])^2+ ((-1)+20*x[1]+30*x[2]+40*x[3]+50*x[4]+60*x[5]+70*x[6]+80*x[7]+90*x[8])^2+ ((-1)+22*x[1]+33*x[2]+44*x[3]+55*x[4]+66*x[5]+77*x[6]+88*x[7]+99*x[8])^2+ ((-1)+24*x[1]+36*x[2]+48*x[3]+60*x[4]+72*x[5]+84*x[6]+96*x[7]+108*x[8])^2+ ((-1)+26*x[1]+39*x[2]+52*x[3]+65*x[4]+78*x[5]+91*x[6]+104*x[7]+117*x[8])^2+ ((-1)+28*x[1]+42*x[2]+56*x[3]+70*x[4]+84*x[5]+98*x[6]+112*x[7]+126*x[8])^2+ ((-1)+30*x[1]+45*x[2]+60*x[3]+75*x[4]+90*x[5]+105*x[6]+120*x[7]+135*x[8])^2+ ((-1)+32*x[1]+48*x[2]+64*x[3]+80*x[4]+96*x[5]+112*x[6]+128*x[7]+144*x[8])^2+ ((-1)+34*x[1]+51*x[2]+68*x[3]+85*x[4]+102*x[5]+119*x[6]+136*x[7]+153*x[8])^2+ ((-1)+36*x[1]+54*x[2]+72*x[3]+90*x[4]+108*x[5]+126*x[6]+144*x[7]+162*x[8])^2)+x[9] == 2.0)


# ----- Objective ----- #
@objective(m, Min, x[9])

m = m 		 # model get returned when including this script.