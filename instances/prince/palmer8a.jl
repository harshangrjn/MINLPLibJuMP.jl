using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-5)
set_lower_bound(x[2], 1.0e-5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (4.757534-x[1]/x[2]-x[3])^2+ (3.121416-x[1]/(0.030461768089+x[2])-x[3]-0.030461768089*x[4]-0.000927919315108019*x[5]-2.82660629821242e-5*x[6])^2+ (1.207606-x[1]/(0.098695877281+x[2])-x[3]-0.098695877281*x[4]-0.00974087619226621*x[5]-0.000961384321281321*x[6])^2+ (0.131916-x[1]/(0.190385614224+x[2])-x[3]-0.190385614224*x[4]-0.0362466821034498*x[5]-0.00690084683584735*x[6])^2+ ((-x[1]/(0.264714366016+x[2]))-x[3]-0.264714366016*x[4]-0.0700736955752528*x[5]-0.0185495138986012*x[6])^2+ (0.258514-x[1]/(0.373156048225+x[2])-x[3]-0.373156048225*x[4]-0.139245436326899*x[5]-0.0519602767531113*x[6])^2+ (3.380161-x[1]/(0.616850018404+x[2])-x[3]-0.616850018404*x[4]-0.380503945205015*x[5]-0.234713865602508*x[6])^2+ (10.762813-x[1]/(0.921467524761+x[2])-x[3]-0.921467524761*x[4]-0.849102399189164*x[5]-0.782420286049465*x[6])^2+ (23.745996-x[1]/(1.287008567296+x[2])-x[3]-1.287008567296*x[4]-1.6563910522933*x[5]-2.13178947509392*x[6])^2+ (44.471864-x[1]/(1.713473146009+x[2])-x[3]-1.713473146009*x[4]-2.93599022209398*x[5]-5.03074040250303*x[6])^2+ (76.541947-x[1]/(2.2008612609+x[2])-x[3]-2.2008612609*x[4]-4.84379028973034*x[5]-10.6605104045911*x[6])^2+ (97.874528-x[1]/(2.467400073616+x[2])-x[3]-2.467400073616*x[4]-6.08806312328024*x[5]-15.0216873985605*x[6])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.