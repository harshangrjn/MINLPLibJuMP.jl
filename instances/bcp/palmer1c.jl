using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (78.596218-x[1]-3.200388615369*x[2]-10.2424872893835*x[3]-32.7799397140047*x[4]-104.908545873183*x[5]-335.748115867451*x[6]-1074.52444765378*x[7]-3438.89580920682*x[8])^2+ (65.77963-x[1]-3.046173318241*x[2]-9.27917188476338*x[3]-28.2659658107383*x[4]-86.1030308669832*x[5]-262.284755246686*x[6]-798.964823213824*x[7]-2433.78532668709*x[8])^2+ (43.96947-x[1]-2.749172911969*x[2]-7.55795169990411*x[3]-20.7781160833464*x[4]-57.1226338980835*x[5]-157.039997772933*x[6]-431.73010797302*x[7]-1186.90071812088*x[8])^2+ (27.038816-x[1]-2.467400073616*x[2]-6.08806312328024*x[3]-15.0216873985605*x[4]-37.0645125930448*x[5]-91.4529811006199*x[6]-225.651092300072*x[7]-556.771521752729*x[8])^2+ (14.6126-x[1]-2.2008612609*x[2]-4.84379028973034*x[3]-10.6605104045911*x[4]-23.4623043708859*x[5]-51.6372767813275*x[6]-113.646482086395*x[7]-250.120139861512*x[8])^2+ (6.2614-x[1]-1.949550365169*x[2]-3.80074662633058*x[3]-7.40974697327763*x[4]-14.4456749175633*x[5]-28.1625708106482*x[6]-54.904350207997*x[7]-107.038795997367*x[8])^2+ (1.53833-x[1]-1.713473146009*x[2]-2.93599022209398*x[3]-5.03074040250303*x[4]-8.62003858423146*x[5]-14.770204631642*x[6]-25.3083489973764*x[7]-43.3651763768282*x[8])^2+ ((-x[1])-1.485015206544*x[2]-2.20527016366692*x[3]-3.27485972758315*x[4]-4.86321649475952*x[5]-7.2219504474335*x[6]-10.724706235346*x[7]-15.926351845206*x[8])^2+ (1.188045-x[1]-1.287008567296*x[2]-1.6563910522933*x[3]-2.13178947509392*x[4]-2.74363131811731*x[5]-3.5310770119186*x[6]-4.54452636612119*x[7]-5.84884436750054*x[8])^2+ (4.6841-x[1]-1.096623651204*x[2]-1.20258343237999*x[3]-1.31878143449399*x[4]-1.44620691183484*x[5]-1.58594470405279*x[6]-1.73918447196602*x[7]-1.90723082576467*x[8])^2+ (16.9321-x[1]-0.761544202225*x[2]-0.579949571942512*x[3]-0.44165723409569*x[4]-0.336341505996303*x[5]-0.256138923859109*x[6]-0.195061112429055*x[7]-0.148547659249906*x[8])^2+ (33.6988-x[1]-0.487388289424*x[2]-0.237547344667653*x[3]-0.115777793974781*x[4]-0.0564287409586526*x[5]-0.0275027075301877*x[6]-0.0134044975776667*x[7]-0.00653319514496715*x[8])^2+ (52.3664-x[1]-0.274155912801*x[2]-0.0751614645237495*x[3]-0.0206059599139685*x[4]-0.00564924574935486*x[5]-0.00154877412505155*x[6]-0.000424605583976078*x[7]-0.000116408131455363*x[8])^2+ (70.163-x[1]-0.121847072356*x[2]-0.0148467090417283*x[3]-0.00180902803085595*x[4]-0.000220424769369737*x[5]-2.68581128224489e-5*x[6]-3.27258241642255e-6*x[7]-3.98754586484811e-7*x[8])^2+ (83.4221-x[1]-0.030461768089*x[2]-0.000927919315108019*x[3]-2.82660629821242e-5*x[4]-8.61034255350534e-7*x[5]-2.62286258031728e-8*x[6]-7.98970316509411e-10*x[7]-2.43380484915046e-11*x[8])^2+ (88.3995-x[1])^2+ (78.596218-x[1]-3.200388615369*x[2]-10.2424872893835*x[3]-32.7799397140047*x[4]-104.908545873183*x[5]-335.748115867451*x[6]-1074.52444765378*x[7]-3438.89580920682*x[8])^2+ (65.77963-x[1]-3.046173318241*x[2]-9.27917188476338*x[3]-28.2659658107383*x[4]-86.1030308669832*x[5]-262.284755246686*x[6]-798.964823213824*x[7]-2433.78532668709*x[8])^2+ (43.96947-x[1]-2.749172911969*x[2]-7.55795169990411*x[3]-20.7781160833464*x[4]-57.1226338980835*x[5]-157.039997772933*x[6]-431.73010797302*x[7]-1186.90071812088*x[8])^2+ (27.038816-x[1]-2.467400073616*x[2]-6.08806312328024*x[3]-15.0216873985605*x[4]-37.0645125930448*x[5]-91.4529811006199*x[6]-225.651092300072*x[7]-556.771521752729*x[8])^2+ (14.6126-x[1]-2.2008612609*x[2]-4.84379028973034*x[3]-10.6605104045911*x[4]-23.4623043708859*x[5]-51.6372767813275*x[6]-113.646482086395*x[7]-250.120139861512*x[8])^2+ (6.2614-x[1]-1.949550365169*x[2]-3.80074662633058*x[3]-7.40974697327763*x[4]-14.4456749175633*x[5]-28.1625708106482*x[6]-54.904350207997*x[7]-107.038795997367*x[8])^2+ (1.53833-x[1]-1.713473146009*x[2]-2.93599022209398*x[3]-5.03074040250303*x[4]-8.62003858423146*x[5]-14.770204631642*x[6]-25.3083489973764*x[7]-43.3651763768282*x[8])^2+ ((-x[1])-1.485015206544*x[2]-2.20527016366692*x[3]-3.27485972758315*x[4]-4.86321649475952*x[5]-7.2219504474335*x[6]-10.724706235346*x[7]-15.926351845206*x[8])^2+ (1.188045-x[1]-1.287008567296*x[2]-1.6563910522933*x[3]-2.13178947509392*x[4]-2.74363131811731*x[5]-3.5310770119186*x[6]-4.54452636612119*x[7]-5.84884436750054*x[8])^2+ (4.6841-x[1]-1.096623651204*x[2]-1.20258343237999*x[3]-1.31878143449399*x[4]-1.44620691183484*x[5]-1.58594470405279*x[6]-1.73918447196602*x[7]-1.90723082576467*x[8])^2+ (16.9321-x[1]-0.761544202225*x[2]-0.579949571942512*x[3]-0.44165723409569*x[4]-0.336341505996303*x[5]-0.256138923859109*x[6]-0.195061112429055*x[7]-0.148547659249906*x[8])^2+ (33.6988-x[1]-0.487388289424*x[2]-0.237547344667653*x[3]-0.115777793974781*x[4]-0.0564287409586526*x[5]-0.0275027075301877*x[6]-0.0134044975776667*x[7]-0.00653319514496715*x[8])^2+ (52.3664-x[1]-0.274155912801*x[2]-0.0751614645237495*x[3]-0.0206059599139685*x[4]-0.00564924574935486*x[5]-0.00154877412505155*x[6]-0.000424605583976078*x[7]-0.000116408131455363*x[8])^2+ (70.163-x[1]-0.121847072356*x[2]-0.0148467090417283*x[3]-0.00180902803085595*x[4]-0.000220424769369737*x[5]-2.68581128224489e-5*x[6]-3.27258241642255e-6*x[7]-3.98754586484811e-7*x[8])^2+ (83.4221-x[1]-0.030461768089*x[2]-0.000927919315108019*x[3]-2.82660629821242e-5*x[4]-8.61034255350534e-7*x[5]-2.62286258031728e-8*x[6]-7.98970316509411e-10*x[7]-2.43380484915046e-11*x[8])^2+ (108.18086-x[1]-3.52023488519521*x[2]-12.3920536469453*x[3]-43.6229395471875*x[4]-153.562993588771*x[5]-540.577807106201*x[6]-1902.96085473758*x[7]-6698.86918600811*x[8])^2+ (92.733676-x[1]-3.35840699965849*x[2]-11.2788975753551*x[3]-37.8791285655039*x[4]-127.213530515352*x[5]-427.234811334027*x[6]-1434.82838088197*x[7]-4818.73767766267*x[8])^2+ (108.18086-x[1]-3.52023488519521*x[2]-12.3920536469453*x[3]-43.6229395471875*x[4]-153.562993588771*x[5]-540.577807106201*x[6]-1902.96085473758*x[7]-6698.86918600811*x[8])^2+ (92.733676-x[1]-3.35840699965849*x[2]-11.2788975753551*x[3]-37.8791285655039*x[4]-127.213530515352*x[5]-427.234811334027*x[6]-1434.82838088197*x[7]-4818.73767766267*x[8])^2)+x[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[9])

m = m 		 # model get returned when including this script.