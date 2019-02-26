using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (83.57418-x[1]+x[2]-x[3]+x[4]-x[5]+x[6])^2+ (81.007654-x[1]-x[2]-x[3]-1.00000000000001*x[4]-1.00000000000001*x[5]-1.00000000000002*x[6])^2+ (18.983286-x[1]-0.580246662076097*x[2]+0.326627622299095*x[3]+0.959295837237901*x[4]+0.786628792702478*x[5]-0.0464183747207751*x[6])^2+ (8.051067-x[1]-0.388889596244429*x[2]+0.697529763865691*x[3]+0.931413732720829*x[4]+0.0269044570429476*x[5]-0.910488005847614*x[6])^2+ (2.044762-x[1]-0.209876103077636*x[2]+0.911904042713891*x[3]+0.592649836808703*x[4]-0.663137966235876*x[5]-0.871003461121532*x[6])^2+ ((-x[1])-0.0274008344074166*x[2]+0.998498388547555*x[3]+0.0821202124087442*x[4]-0.993998063864127*x[5]-0.136592965107211*x[6])^2+ (1.170451-x[1]+0.111109979342031*x[2]+0.975309144981227*x[3]-0.327843137243947*x[4]-0.902455856568024*x[5]+0.528386840404683*x[6])^2+ (10.479881-x[1]+0.382715263431966*x[2]+0.707058054272402*x[3]-0.923919082437077*x[4]+0.000137815777051409*x[5]+0.923813594034239*x[6])^2+ (25.785001-x[1]+0.604937768596458*x[2]+0.268100592251076*x[3]-0.929306116667968*x[4]+0.856244144869245*x[5]-0.106642728074*x[6])^2+ (44.126844-x[1]+0.777777494835508*x[2]-0.209875662945196*x[3]-0.451304360130595*x[4]+0.911904412206629*x[5]-0.96721309838044*x[6])^2+ (62.822177-x[1]+0.901234442149115*x[2]-0.624447039431652*x[3]+0.224311916318587*x[4]+0.22013178989009*x[5]-0.62109261804035*x[6])^2+ (77.719674-x[1]+0.975308610537279*x[2]-0.902453771576314*x[3]+0.785033257523164*x[4]-0.628845619664628*x[5]+0.441603837591961*x[6])^2)+x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[7])

m = m 		 # model get returned when including this script.