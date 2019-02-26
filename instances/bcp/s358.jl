using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -0.5)
set_upper_bound(x[1], 0.5)
set_lower_bound(x[2], 1.5)
set_upper_bound(x[2], 2.5)
set_lower_bound(x[3], -2.0)
set_upper_bound(x[3], -1.0)
set_lower_bound(x[4], 0.001)
set_upper_bound(x[4], 0.1)
set_lower_bound(x[5], 0.001)
set_upper_bound(x[5], 0.1)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.844-x[1]-x[2]-x[3])^2+ (0.908-(exp(-10*x[4])*x[2]+exp(-10*x[5])*x[3])-x[1])^2+ (0.932-(exp(-20*x[4])*x[2]+exp(-20*x[5])*x[3])-x[1])^2+ (0.936-(exp(-30*x[4])*x[2]+exp(-30*x[5])*x[3])-x[1])^2+ (0.925-(exp(-40*x[4])*x[2]+exp(-40*x[5])*x[3])-x[1])^2+ (0.908-(exp(-50*x[4])*x[2]+exp(-50*x[5])*x[3])-x[1])^2+ (0.881-(exp(-60*x[4])*x[2]+exp(-60*x[5])*x[3])-x[1])^2+ (0.85-(exp(-70*x[4])*x[2]+exp(-70*x[5])*x[3])-x[1])^2+ (0.818-(exp(-80*x[4])*x[2]+exp(-80*x[5])*x[3])-x[1])^2+ (0.784-(exp(-90*x[4])*x[2]+exp(-90*x[5])*x[3])-x[1])^2+ (0.751-(exp(-100*x[4])*x[2]+exp(-100*x[5])*x[3])-x[1])^2+ (0.718-(exp(-110*x[4])*x[2]+exp(-110*x[5])*x[3])-x[1])^2+ (0.685-(exp(-120*x[4])*x[2]+exp(-120*x[5])*x[3])-x[1])^2+ (0.658-(exp(-130*x[4])*x[2]+exp(-130*x[5])*x[3])-x[1])^2+ (0.628-(exp(-140*x[4])*x[2]+exp(-140*x[5])*x[3])-x[1])^2+ (0.603-(exp(-150*x[4])*x[2]+exp(-150*x[5])*x[3])-x[1])^2+ (0.58-(exp(-160*x[4])*x[2]+exp(-160*x[5])*x[3])-x[1])^2+ (0.558-(exp(-170*x[4])*x[2]+exp(-170*x[5])*x[3])-x[1])^2+ (0.538-(exp(-180*x[4])*x[2]+exp(-180*x[5])*x[3])-x[1])^2+ (0.522-(exp(-190*x[4])*x[2]+exp(-190*x[5])*x[3])-x[1])^2+ (0.506-(exp(-200*x[4])*x[2]+exp(-200*x[5])*x[3])-x[1])^2+ (0.49-(exp(-210*x[4])*x[2]+exp(-210*x[5])*x[3])-x[1])^2+ (0.478-(exp(-220*x[4])*x[2]+exp(-220*x[5])*x[3])-x[1])^2+ (0.467-(exp(-230*x[4])*x[2]+exp(-230*x[5])*x[3])-x[1])^2+ (0.457-(exp(-240*x[4])*x[2]+exp(-240*x[5])*x[3])-x[1])^2+ (0.448-(exp(-250*x[4])*x[2]+exp(-250*x[5])*x[3])-x[1])^2+ (0.438-(exp(-260*x[4])*x[2]+exp(-260*x[5])*x[3])-x[1])^2+ (0.431-(exp(-270*x[4])*x[2]+exp(-270*x[5])*x[3])-x[1])^2+ (0.424-(exp(-280*x[4])*x[2]+exp(-280*x[5])*x[3])-x[1])^2+ (0.42-(exp(-290*x[4])*x[2]+exp(-290*x[5])*x[3])-x[1])^2+ (0.414-(exp(-300*x[4])*x[2]+exp(-300*x[5])*x[3])-x[1])^2+ (0.411-(exp(-310*x[4])*x[2]+exp(-310*x[5])*x[3])-x[1])^2+ (0.406-(exp(-320*x[4])*x[2]+exp(-320*x[5])*x[3])-x[1])^2)+x[6] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[6])

m = m 		 # model get returned when including this script.