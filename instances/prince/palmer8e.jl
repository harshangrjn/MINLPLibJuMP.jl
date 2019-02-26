using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[7], 1.0e-7)
set_upper_bound(x[7], 22.12)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (4.757534-x[1]-x[8])^2+ (3.121416-exp(-0.030461768089*x[7])*x[8]-x[1]-0.030461768089*x[2]-0.000927919315108019*x[3]-2.82660629821242e-5*x[4]-8.61034255350534e-7*x[5]-2.62286258031728e-8*x[6])^2+ (1.207606-exp(-0.098695877281*x[7])*x[8]-x[1]-0.098695877281*x[2]-0.00974087619226621*x[3]-0.000961384321281321*x[4]-9.48846689930588e-5*x[5]-9.36472564678723e-6*x[6])^2+ (0.131916-exp(-0.190385614224*x[7])*x[8]-x[1]-0.190385614224*x[2]-0.0362466821034498*x[3]-0.00690084683584735*x[4]-0.00131382196350854*x[5]-0.000250132801503556*x[6])^2+ ((-exp(-0.264714366016*x[7])*x[8])-x[1]-0.264714366016*x[2]-0.0700736955752528*x[3]-0.0185495138986012*x[4]-0.0049103228115732*x[5]-0.0012998329899995*x[6])^2+ (0.258514-exp(-0.373156048225*x[7])*x[8]-x[1]-0.373156048225*x[2]-0.139245436326899*x[3]-0.0519602767531113*x[4]-0.0193892915378684*x[5]-0.00723523140815339*x[6])^2+ (3.380161-exp(-0.616850018404*x[7])*x[8]-x[1]-0.616850018404*x[2]-0.380503945205015*x[3]-0.234713865602508*x[4]-0.144783252316581*x[5]-0.0893095518560741*x[6])^2+ (10.762813-exp(-0.921467524761*x[7])*x[8]-x[1]-0.921467524761*x[2]-0.849102399189164*x[3]-0.782420286049465*x[4]-0.720974884308795*x[5]-0.664354942058873*x[6])^2+ (23.745996-exp(-1.287008567296*x[7])*x[8]-x[1]-1.287008567296*x[2]-1.6563910522933*x[3]-2.13178947509392*x[4]-2.74363131811731*x[5]-3.5310770119186*x[6])^2+ (44.471864-exp(-1.713473146009*x[7])*x[8]-x[1]-1.713473146009*x[2]-2.93599022209398*x[3]-5.03074040250303*x[4]-8.62003858423146*x[5]-14.770204631642*x[6])^2+ (76.541947-exp(-2.2008612609*x[7])*x[8]-x[1]-2.2008612609*x[2]-4.84379028973034*x[3]-10.6605104045911*x[4]-23.4623043708859*x[5]-51.6372767813275*x[6])^2+ (97.874528-exp(-2.467400073616*x[7])*x[8]-x[1]-2.467400073616*x[2]-6.08806312328024*x[3]-15.0216873985605*x[4]-37.0645125930448*x[5]-91.4529811006199*x[6])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.