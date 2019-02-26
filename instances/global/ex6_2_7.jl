using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 1.0e-7)
set_upper_bound(x[2], 0.4)
set_lower_bound(x[3], 1.0e-7)
set_upper_bound(x[3], 0.4)
set_lower_bound(x[4], 1.0e-7)
set_upper_bound(x[4], 0.4)
set_lower_bound(x[5], 1.0e-7)
set_upper_bound(x[5], 0.1)
set_lower_bound(x[6], 1.0e-7)
set_upper_bound(x[6], 0.1)
set_lower_bound(x[7], 1.0e-7)
set_upper_bound(x[7], 0.1)
set_lower_bound(x[8], 1.0e-7)
set_upper_bound(x[8], 0.5)
set_lower_bound(x[9], 1.0e-7)
set_upper_bound(x[9], 0.5)
set_lower_bound(x[10], 1.0e-7)
set_upper_bound(x[10], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((10.4807341082197*x[2]+38.5043409542885*x[5]+8.73945638067505*x[8])*log(2.4088*x[2]+8.8495*x[5]+2.0086*x[8])+0.102582206615077*x[2]-4.55292602721008*x[5]+0.0196376909050935*x[8]+0.240734108219679*x[2]*log(x[2])+2.64434095428848*x[5]*log(x[5])+0.399456380675047*x[8]*log(x[8])-0.240734108219679*x[2]*log(2.4088*x[2]+8.8495*x[5]+2.0086*x[8])-2.64434095428848*x[5]*log(2.4088*x[2]+8.8495*x[5]+2.0086*x[8])-0.399456380675047*x[8]*log(2.4088*x[2]+8.8495*x[5]+2.0086*x[8])+11.24*x[2]*log(x[2])+36.86*x[5]*log(x[5])+9.34*x[8]*log(x[8])-11.24*x[2]*log(2.248*x[2]+7.372*x[5]+1.868*x[8])-36.86*x[5]*log(2.248*x[2]+7.372*x[5]+1.868*x[8])-9.34*x[8]*log(2.248*x[2]+7.372*x[5]+1.868*x[8])+(2.248*x[2]+7.372*x[5]+1.868*x[8])*log(2.248*x[2]+7.372*x[5]+1.868*x[8])+2.248*x[2]*log(x[2])+7.372*x[5]*log(x[5])+1.868*x[8]*log(x[8])-2.248*x[2]*log(2.248*x[2]+5.82088173817021*x[5]+0.382446861901943*x[8])-7.372*x[5]*log(0.972461133672523*x[2]+7.372*x[5]+1.1893141713454*x[8])-1.868*x[8]*log(1.86752460515164*x[2]+2.61699842799583*x[5]+1.868*x[8])+(10.4807341082197*x[3]+38.5043409542885*x[6]+8.73945638067505*x[9])*log(2.4088*x[3]+8.8495*x[6]+2.0086*x[9])+0.102582206615077*x[3]-4.55292602721008*x[6]+0.0196376909050935*x[9]+0.240734108219679*x[3]*log(x[3])+2.64434095428848*x[6]*log(x[6])+0.399456380675047*x[9]*log(x[9])-0.240734108219679*x[3]*log(2.4088*x[3]+8.8495*x[6]+2.0086*x[9])-2.64434095428848*x[6]*log(2.4088*x[3]+8.8495*x[6]+2.0086*x[9])-0.399456380675047*x[9]*log(2.4088*x[3]+8.8495*x[6]+2.0086*x[9])+11.24*x[3]*log(x[3])+36.86*x[6]*log(x[6])+9.34*x[9]*log(x[9])-11.24*x[3]*log(2.248*x[3]+7.372*x[6]+1.868*x[9])-36.86*x[6]*log(2.248*x[3]+7.372*x[6]+1.868*x[9])-9.34*x[9]*log(2.248*x[3]+7.372*x[6]+1.868*x[9])+(2.248*x[3]+7.372*x[6]+1.868*x[9])*log(2.248*x[3]+7.372*x[6]+1.868*x[9])+2.248*x[3]*log(x[3])+7.372*x[6]*log(x[6])+1.868*x[9]*log(x[9])-2.248*x[3]*log(2.248*x[3]+5.82088173817021*x[6]+0.382446861901943*x[9])-7.372*x[6]*log(0.972461133672523*x[3]+7.372*x[6]+1.1893141713454*x[9])-1.868*x[9]*log(1.86752460515164*x[3]+2.61699842799583*x[6]+1.868*x[9])+(10.4807341082197*x[4]+38.5043409542885*x[7]+8.73945638067505*x[10])*log(2.4088*x[4]+8.8495*x[7]+2.0086*x[10])+0.102582206615077*x[4]-4.55292602721008*x[7]+0.0196376909050935*x[10]+0.240734108219679*x[4]*log(x[4])+2.64434095428848*x[7]*log(x[7])+0.399456380675047*x[10]*log(x[10])-0.240734108219679*x[4]*log(2.4088*x[4]+8.8495*x[7]+2.0086*x[10])-2.64434095428848*x[7]*log(2.4088*x[4]+8.8495*x[7]+2.0086*x[10])-0.399456380675047*x[10]*log(2.4088*x[4]+8.8495*x[7]+2.0086*x[10])+11.24*x[4]*log(x[4])+36.86*x[7]*log(x[7])+9.34*x[10]*log(x[10])-11.24*x[4]*log(2.248*x[4]+7.372*x[7]+1.868*x[10])-36.86*x[7]*log(2.248*x[4]+7.372*x[7]+1.868*x[10])-9.34*x[10]*log(2.248*x[4]+7.372*x[7]+1.868*x[10])+(2.248*x[4]+7.372*x[7]+1.868*x[10])*log(2.248*x[4]+7.372*x[7]+1.868*x[10])+2.248*x[4]*log(x[4])+7.372*x[7]*log(x[7])+1.868*x[10]*log(x[10])-2.248*x[4]*log(2.248*x[4]+5.82088173817021*x[7]+0.382446861901943*x[10])-7.372*x[7]*log(0.972461133672523*x[4]+7.372*x[7]+1.1893141713454*x[10])-1.868*x[10]*log(1.86752460515164*x[4]+2.61699842799583*x[7]+1.868*x[10])-12.7287341082197*x[2]*log(x[2])-45.8763409542885*x[5]*log(x[5])-10.607456380675*x[8]*log(x[8])-12.7287341082197*x[3]*log(x[3])-45.8763409542885*x[6]*log(x[6])-10.607456380675*x[9]*log(x[9])-12.7287341082197*x[4]*log(x[4])-45.8763409542885*x[7]*log(x[7])-10.607456380675*x[10]*log(x[10]))+objvar == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4] == 0.4)
@constraint(m, e3, x[5]+x[6]+x[7] == 0.1)
@constraint(m, e4, x[8]+x[9]+x[10] == 0.5)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.