using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+x[1]+2*x[2]+3*x[3]+4*x[4]+5*x[5]+6*x[6]+7*x[7]+8*x[8]+9*x[9]+10*x[10])^2+ ((-1)+2*x[1]+4*x[2]+6*x[3]+8*x[4]+10*x[5]+12*x[6]+14*x[7]+16*x[8]+18*x[9]+20*x[10])^2+ ((-1)+3*x[1]+6*x[2]+9*x[3]+12*x[4]+15*x[5]+18*x[6]+21*x[7]+24*x[8]+27*x[9]+30*x[10])^2+ ((-1)+4*x[1]+8*x[2]+12*x[3]+16*x[4]+20*x[5]+24*x[6]+28*x[7]+32*x[8]+36*x[9]+40*x[10])^2+ ((-1)+5*x[1]+10*x[2]+15*x[3]+20*x[4]+25*x[5]+30*x[6]+35*x[7]+40*x[8]+45*x[9]+50*x[10])^2+ ((-1)+6*x[1]+12*x[2]+18*x[3]+24*x[4]+30*x[5]+36*x[6]+42*x[7]+48*x[8]+54*x[9]+60*x[10])^2+ ((-1)+7*x[1]+14*x[2]+21*x[3]+28*x[4]+35*x[5]+42*x[6]+49*x[7]+56*x[8]+63*x[9]+70*x[10])^2+ ((-1)+8*x[1]+16*x[2]+24*x[3]+32*x[4]+40*x[5]+48*x[6]+56*x[7]+64*x[8]+72*x[9]+80*x[10])^2+ ((-1)+9*x[1]+18*x[2]+27*x[3]+36*x[4]+45*x[5]+54*x[6]+63*x[7]+72*x[8]+81*x[9]+90*x[10])^2+ ((-1)+10*x[1]+20*x[2]+30*x[3]+40*x[4]+50*x[5]+60*x[6]+70*x[7]+80*x[8]+90*x[9]+100*x[10])^2+ ((-1)+11*x[1]+22*x[2]+33*x[3]+44*x[4]+55*x[5]+66*x[6]+77*x[7]+88*x[8]+99*x[9]+110*x[10])^2+ ((-1)+12*x[1]+24*x[2]+36*x[3]+48*x[4]+60*x[5]+72*x[6]+84*x[7]+96*x[8]+108*x[9]+120*x[10])^2+ ((-1)+13*x[1]+26*x[2]+39*x[3]+52*x[4]+65*x[5]+78*x[6]+91*x[7]+104*x[8]+117*x[9]+130*x[10])^2+ ((-1)+14*x[1]+28*x[2]+42*x[3]+56*x[4]+70*x[5]+84*x[6]+98*x[7]+112*x[8]+126*x[9]+140*x[10])^2+ ((-1)+15*x[1]+30*x[2]+45*x[3]+60*x[4]+75*x[5]+90*x[6]+105*x[7]+120*x[8]+135*x[9]+150*x[10])^2+ ((-1)+16*x[1]+32*x[2]+48*x[3]+64*x[4]+80*x[5]+96*x[6]+112*x[7]+128*x[8]+144*x[9]+160*x[10])^2+ ((-1)+17*x[1]+34*x[2]+51*x[3]+68*x[4]+85*x[5]+102*x[6]+119*x[7]+136*x[8]+153*x[9]+170*x[10])^2+ ((-1)+18*x[1]+36*x[2]+54*x[3]+72*x[4]+90*x[5]+108*x[6]+126*x[7]+144*x[8]+162*x[9]+180*x[10])^2+ ((-1)+19*x[1]+38*x[2]+57*x[3]+76*x[4]+95*x[5]+114*x[6]+133*x[7]+152*x[8]+171*x[9]+190*x[10])^2+ ((-1)+20*x[1]+40*x[2]+60*x[3]+80*x[4]+100*x[5]+120*x[6]+140*x[7]+160*x[8]+180*x[9]+200*x[10])^2)+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.