using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (4.419446-x[1])^2+ (3.564931-x[1]-0.019495419876*x[2]-0.000380071396141536*x[3]-7.40965145063677e-6*x[4]-1.44454266164976e-7*x[5]-2.81619657176567e-9*x[6]-5.49029346199236e-11*x[7]-1.07035576283999e-12*x[8])^2+ (2.139067-x[1]-0.068538716401*x[2]-0.00469755564589671*x[3]-0.000321964434192031*x[4]-2.2067029046296e-5*x[5]-1.51244584561671e-6*x[6]-1.03661096884595e-7*x[7]-7.1047985211898e-9*x[8])^2+ (0.404686-x[1]-0.190385614224*x[2]-0.0362466821034498*x[3]-0.00690084683584735*x[4]-0.00131382196350854*x[5]-0.000250132801503556*x[6]-4.76216870518244e-5*x[7]-9.06648413974469e-6*x[8])^2+ ((-x[1])-0.319501910025*x[2]-0.102081470509623*x[3]-0.0326152248059853*x[4]-0.0104206266214071*x[5]-0.00332941010919692*x[6]-0.00106375288914496*x[7]-0.000339871079876427*x[8])^2+ (0.035152-x[1]-0.263109495364*x[2]-0.0692266065506987*x[3]-0.0182141775153165*x[4]-0.00479232305452525*x[5]-0.0012609057004974*x[6]-0.000331756262559462*x[7]-8.72882228258668e-5*x[8])^2+ (0.146813-x[1]-0.373156048225*x[2]-0.139245436326899*x[3]-0.0519602767531113*x[4]-0.0193892915378684*x[5]-0.00723523140815339*x[6]-0.00269987036025992*x[7]-0.0010074729543544*x[8])^2+ (2.718058-x[1]-0.616850018404*x[2]-0.380503945205015*x[3]-0.234713865602508*x[4]-0.144783252316581*x[5]-0.0893095518560741*x[6]-0.0550905987060723*x[7]-0.0339826368257281*x[8])^2+ (9.474417-x[1]-0.921467524761*x[2]-0.849102399189164*x[3]-0.782420286049465*x[4]-0.720974884308795*x[5]-0.664354942058873*x[6]-0.612181504021727*x[7]-0.564105375215367*x[8])^2+ (26.132221-x[1]-1.287008567296*x[2]-1.6563910522933*x[3]-2.13178947509392*x[4]-2.74363131811731*x[5]-3.5310770119186*x[6]-4.54452636612119*x[7]-5.84884436750054*x[8])^2+ (41.451561-x[1]-1.713473146009*x[2]-2.93599022209398*x[3]-5.03074040250303*x[4]-8.62003858423146*x[5]-14.770204631642*x[6]-25.3083489973764*x[7]-43.3651763768282*x[8])^2+ (72.283164-x[1]-2.2008612609*x[2]-4.84379028973034*x[3]-10.6605104045911*x[4]-23.4623043708859*x[5]-51.6372767813275*x[6]-113.646482086395*x[7]-250.120139861512*x[8])^2+ (117.630959-x[1]-2.749172911969*x[2]-7.55795169990411*x[3]-20.7781160833464*x[4]-57.1226338980835*x[5]-157.039997772933*x[6]-431.73010797302*x[7]-1186.90071812088*x[8])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.