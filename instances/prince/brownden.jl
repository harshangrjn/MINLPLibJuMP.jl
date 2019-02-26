using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ( ((-1.22140275816017)+x[1]+0.2*x[2])^2+ ((-0.980066577841242)+x[3]+0.198669330795061*x[4])^2)^2+ ( ((-1.49182469764127)+x[1]+0.4*x[2])^2+ ((-0.921060994002885)+x[3]+0.389418342308651*x[4])^2)^2+ ( ((-1.82211880039051)+x[1]+0.6*x[2])^2+ ((-0.825335614909678)+x[3]+0.564642473395035*x[4])^2)^2+ ( ((-2.22554092849247)+x[1]+0.8*x[2])^2+ ((-0.696706709347165)+x[3]+0.717356090899523*x[4])^2)^2+ ( ((-2.71828182845905)+x[1]+x[2])^2+ ((-0.54030230586814)+x[3]+0.841470984807897*x[4])^2)^2+ ( ((-3.32011692273655)+x[1]+1.2*x[2])^2+ ((-0.362357754476674)+x[3]+0.932039085967226*x[4])^2)^2+ ( ((-4.05519996684467)+x[1]+1.4*x[2])^2+ ((-0.169967142900241)+x[3]+0.98544972998846*x[4])^2)^2+ ( ((-4.95303242439511)+x[1]+1.6*x[2])^2+ (0.0291995223012888+x[3]+0.999573603041505*x[4])^2)^2+ ( ((-6.04964746441295)+x[1]+1.8*x[2])^2+ (0.227202094693087+x[3]+0.973847630878195*x[4])^2)^2+ ( ((-7.38905609893065)+x[1]+2*x[2])^2+ (0.416146836547142+x[3]+0.909297426825682*x[4])^2)^2+ ( ((-9.02501349943412)+x[1]+2.2*x[2])^2+ (0.588501117255346+x[3]+0.80849640381959*x[4])^2)^2+ ( ((-11.0231763806416)+x[1]+2.4*x[2])^2+ (0.737393715541245+x[3]+0.675463180551151*x[4])^2)^2+ ( ((-13.4637380350017)+x[1]+2.6*x[2])^2+ (0.856888753368947+x[3]+0.515501371821464*x[4])^2)^2+ ( ((-16.444646771097)+x[1]+2.8*x[2])^2+ (0.942222340668658+x[3]+0.334988150155905*x[4])^2)^2+ ( ((-20.0855369231877)+x[1]+3*x[2])^2+ (0.989992496600445+x[3]+0.141120008059867*x[4])^2)^2+ ( ((-24.5325301971094)+x[1]+3.2*x[2])^2+ (0.998294775794753+x[3]-0.0583741434275801*x[4])^2)^2+ ( ((-29.964100047397)+x[1]+3.4*x[2])^2+ (0.966798192579461+x[3]-0.255541102026831*x[4])^2)^2+ ( ((-36.598234443678)+x[1]+3.6*x[2])^2+ (0.896758416334147+x[3]-0.442520443294852*x[4])^2)^2+ ( ((-44.7011844933008)+x[1]+3.8*x[2])^2+ (0.790967711914417+x[3]-0.611857890942719*x[4])^2)^2+ ( ((-54.5981500331442)+x[1]+4*x[2])^2+ (0.653643620863612+x[3]-0.756802495307928*x[4])^2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.