using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (78.596218-x[3]/(3.200388615369+x[4])-3.200388615369*x[1]-10.2424872893835*x[2])^2+ (65.77963-x[3]/(3.046173318241+x[4])-3.046173318241*x[1]-9.27917188476338*x[2])^2+ (43.96947-x[3]/(2.749172911969+x[4])-2.749172911969*x[1]-7.55795169990411*x[2])^2+ (27.038816-x[3]/(2.467400073616+x[4])-2.467400073616*x[1]-6.08806312328024*x[2])^2+ (14.6126-x[3]/(2.2008612609+x[4])-2.2008612609*x[1]-4.84379028973034*x[2])^2+ (6.2614-x[3]/(1.949550365169+x[4])-1.949550365169*x[1]-3.80074662633058*x[2])^2+ (1.53833-x[3]/(1.713473146009+x[4])-1.713473146009*x[1]-2.93599022209398*x[2])^2+ ((-x[3]/(1.485015206544+x[4]))-1.485015206544*x[1]-2.20527016366692*x[2])^2+ (1.188045-x[3]/(1.287008567296+x[4])-1.287008567296*x[1]-1.6563910522933*x[2])^2+ (4.6841-x[3]/(1.096623651204+x[4])-1.096623651204*x[1]-1.20258343237999*x[2])^2+ (16.9321-x[3]/(0.761544202225+x[4])-0.761544202225*x[1]-0.579949571942512*x[2])^2+ (33.6988-x[3]/(0.487388289424+x[4])-0.487388289424*x[1]-0.237547344667653*x[2])^2+ (52.3664-x[3]/(0.274155912801+x[4])-0.274155912801*x[1]-0.0751614645237495*x[2])^2+ (70.163-x[3]/(0.121847072356+x[4])-0.121847072356*x[1]-0.0148467090417283*x[2])^2+ (83.4221-x[3]/(0.030461768089+x[4])-0.030461768089*x[1]-0.000927919315108019*x[2])^2+ (88.3995-x[3]/x[4])^2+ (78.596218-x[3]/(3.200388615369+x[4])-3.200388615369*x[1]-10.2424872893835*x[2])^2+ (65.77963-x[3]/(3.046173318241+x[4])-3.046173318241*x[1]-9.27917188476338*x[2])^2+ (43.96947-x[3]/(2.749172911969+x[4])-2.749172911969*x[1]-7.55795169990411*x[2])^2+ (27.038816-x[3]/(2.467400073616+x[4])-2.467400073616*x[1]-6.08806312328024*x[2])^2+ (14.6126-x[3]/(2.2008612609+x[4])-2.2008612609*x[1]-4.84379028973034*x[2])^2+ (6.2614-x[3]/(1.949550365169+x[4])-1.949550365169*x[1]-3.80074662633058*x[2])^2+ (1.53833-x[3]/(1.713473146009+x[4])-1.713473146009*x[1]-2.93599022209398*x[2])^2+ ((-x[3]/(1.485015206544+x[4]))-1.485015206544*x[1]-2.20527016366692*x[2])^2+ (1.188045-x[3]/(1.287008567296+x[4])-1.287008567296*x[1]-1.6563910522933*x[2])^2+ (4.6841-x[3]/(1.096623651204+x[4])-1.096623651204*x[1]-1.20258343237999*x[2])^2+ (16.9321-x[3]/(0.761544202225+x[4])-0.761544202225*x[1]-0.579949571942512*x[2])^2+ (33.6988-x[3]/(0.487388289424+x[4])-0.487388289424*x[1]-0.237547344667653*x[2])^2+ (52.3664-x[3]/(0.274155912801+x[4])-0.274155912801*x[1]-0.0751614645237495*x[2])^2+ (70.163-x[3]/(0.121847072356+x[4])-0.121847072356*x[1]-0.0148467090417283*x[2])^2+ (83.4221-x[3]/(0.030461768089+x[4])-0.030461768089*x[1]-0.000927919315108019*x[2])^2+ (108.18086-x[3]/(3.52023488519521+x[4])-3.52023488519521*x[1]-12.3920536469453*x[2])^2+ (92.733676-x[3]/(3.35840699965849+x[4])-3.35840699965849*x[1]-11.2788975753551*x[2])^2+ (108.18086-x[3]/(3.52023488519521+x[4])-3.52023488519521*x[1]-12.3920536469453*x[2])^2+ (92.733676-x[3]/(3.35840699965849+x[4])-3.35840699965849*x[1]-11.2788975753551*x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.