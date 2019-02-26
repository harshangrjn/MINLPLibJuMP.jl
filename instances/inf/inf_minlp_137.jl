using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3, 4, 5]
@variable(m, i[i_Idx])
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[3], 100.0)
set_upper_bound(i[4], 100.0)
set_upper_bound(i[5], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.333333333333333*(0.25*(exp(0.25*i[2])+i[2])+0.545*(exp(0.25*i[3])+i[3])+0.55*(exp(0.25*i[4])+i[4])+0.545*(exp(0.25*i[5])+i[5])+10*exp(0.25*i[2])*i[2]+7*exp(0.25*i[3])*i[3]+12*exp(0.25*i[4])*i[4]+10*exp(0.25*i[5])*i[5])-(0.5*(1-0.145^i[2])*(1-0.1^i[3])*(1-0.05^i[4])*(1-0.115^i[5])+0.8*(1-0.77^i[2])*(1-0.55^i[3])*(1-0.5^i[4])*(1-0.65^i[5])+(1-0.9^i[2])*(1-0.8^i[3])*(1-0.8^i[4])*(1-0.85^i[5])))+x[1] == 0.0)
@NLconstraint(m, e2, -(0.333333333333333*(0.38*(exp(0.25*i[2])+i[2])+0.826*(exp(0.25*i[3])+i[3])+0.63*(exp(0.25*i[4])+i[4])+0.62*(exp(0.25*i[5])+i[5])+12*exp(0.25*i[2])*i[2]+3*exp(0.25*i[3])*i[3]+5*exp(0.25*i[4])*i[4]+15*exp(0.25*i[5])*i[5])-(0.5*(1-0.11^i[2])*(1-0.0600000000000001^i[3])*(1-0.04^i[4])*(1-0.074^i[5])+0.8*(1-0.51^i[2])*(1-0.51^i[3])*(1-0.44^i[4])*(1-0.624^i[5])+(1-0.76^i[2])*(1-0.71^i[3])*(1-0.74^i[4])*(1-0.81^i[5])))+x[1] == 0.0)
@NLconstraint(m, e3, -(0.333333333333333*(0.494*(exp(0.25*i[2])+i[2])+0.975*(exp(0.25*i[3])+i[3])+0.74*(exp(0.25*i[4])+i[4])+0.78*(exp(0.25*i[5])+i[5])+13*exp(0.25*i[2])*i[2]+10*exp(0.25*i[3])*i[3]+8*exp(0.25*i[4])*i[4]+12*exp(0.25*i[5])*i[5])-(0.5*(1-0.0650000000000001^i[2])*(1-0.0449999999999999^i[3])*(1-0.0399999999999999^i[4])*(1-0.0450000000000001^i[5])+0.8*(1-0.515^i[2])*(1-0.445^i[3])*(1-0.34^i[4])*(1-0.485^i[5])+(1-0.745^i[2])*(1-0.595^i[3])*(1-0.66^i[4])*(1-0.7^i[5])))+x[1] == 0.0)
@NLconstraint(m, e4, -(0.333333333333333*(0.625*(exp(0.25*i[2])+i[2])+1.08*(exp(0.25*i[3])+i[3])+0.9*(exp(0.25*i[4])+i[4])+1.12*(exp(0.25*i[5])+i[5])+15*exp(0.25*i[2])*i[2]+8*exp(0.25*i[3])*i[3]+10*exp(0.25*i[4])*i[4]+14*exp(0.25*i[5])*i[5])-(0.5*(1-0.08^i[2])*(1-0.038^i[3])*(1-0.03^i[4])*(1-0.0349999999999999^i[5])+0.8*(1-0.38^i[2])*(1-0.388^i[3])*(1-0.28^i[4])*(1-0.365^i[5])+(1-0.68^i[2])*(1-0.548^i[3])*(1-0.53^i[4])*(1-0.615^i[5])))+x[1] == 0.0)
@NLconstraint(m, e5, -(0.333333333333333*(0.79*(exp(0.25*i[2])+i[2])+1.15*(exp(0.25*i[4])+i[4])+13*exp(0.25*i[2])*i[2]+12*exp(0.25*i[4])*i[4])-(0.5*(1-0.05^i[2])*(1-1^i[3])*(1-0.025^i[4])*(1-1^i[5])+0.8*(1-0.3^i[2])*(1-1^i[3])*(1-0.24^i[4])*(1-1^i[5])+(1-0.55^i[2])*(1-1^i[3])*(1-0.42^i[4])*(1-1^i[5])))+x[1] == 0.0)
@NLconstraint(m, e6, -(0.333333333333333*(0.875*(exp(0.25*i[2])+i[2])+17*exp(0.25*i[2])*i[2])-(0.5*(1-0.038^i[2])*(1-1^i[3])*(1-1^i[4])*(1-1^i[5])+0.8*(1-0.273^i[2])*(1-1^i[3])*(1-1^i[4])*(1-1^i[5])+(1-0.513^i[2])*(1-1^i[3])*(1-1^i[4])*(1-1^i[5])))+x[1] == 0.0)
@NLconstraint(m, e7, 0.25*(exp(0.25*i[2])+i[2])+0.545*(exp(0.25*i[3])+i[3])+0.55*(exp(0.25*i[4])+i[4])+0.545*(exp(0.25*i[5])+i[5]) <= 20.0)
@NLconstraint(m, e8, 0.38*(exp(0.25*i[2])+i[2])+0.826*(exp(0.25*i[3])+i[3])+0.63*(exp(0.25*i[4])+i[4])+0.62*(exp(0.25*i[5])+i[5]) <= 20.0)
@NLconstraint(m, e9, 0.494*(exp(0.25*i[2])+i[2])+0.975*(exp(0.25*i[3])+i[3])+0.74*(exp(0.25*i[4])+i[4])+0.78*(exp(0.25*i[5])+i[5]) <= 20.0)
@NLconstraint(m, e10, 0.625*(exp(0.25*i[2])+i[2])+1.08*(exp(0.25*i[3])+i[3])+0.9*(exp(0.25*i[4])+i[4])+1.12*(exp(0.25*i[5])+i[5]) <= 20.0)
@NLconstraint(m, e11, 0.79*(exp(0.25*i[2])+i[2])+1.15*(exp(0.25*i[4])+i[4]) <= 20.0)
@NLconstraint(m, e12, 0.875*(exp(0.25*i[2])+i[2]) <= 20.0)
@NLconstraint(m, e13, 10*exp(0.25*i[2])*i[2]+7*exp(0.25*i[3])*i[3]+12*exp(0.25*i[4])*i[4]+10*exp(0.25*i[5])*i[5] <= 500.0)
@NLconstraint(m, e14, 12*exp(0.25*i[2])*i[2]+3*exp(0.25*i[3])*i[3]+5*exp(0.25*i[4])*i[4]+15*exp(0.25*i[5])*i[5] <= 500.0)
@NLconstraint(m, e15, 13*exp(0.25*i[2])*i[2]+10*exp(0.25*i[3])*i[3]+8*exp(0.25*i[4])*i[4]+12*exp(0.25*i[5])*i[5] <= 500.0)
@NLconstraint(m, e16, 15*exp(0.25*i[2])*i[2]+8*exp(0.25*i[3])*i[3]+10*exp(0.25*i[4])*i[4]+14*exp(0.25*i[5])*i[5] <= 500.0)
@NLconstraint(m, e17, 13*exp(0.25*i[2])*i[2]+12*exp(0.25*i[4])*i[4] <= 500.0)
@NLconstraint(m, e18, 17*exp(0.25*i[2])*i[2] <= 500.0)
@NLconstraint(m, e19, 0.5*(1-0.145^i[2])*(1-0.1^i[3])*(1-0.05^i[4])*(1-0.115^i[5])+0.8*(1-0.77^i[2])*(1-0.55^i[3])*(1-0.5^i[4])*(1-0.65^i[5])+(1-0.9^i[2])*(1-0.8^i[3])*(1-0.8^i[4])*(1-0.85^i[5]) >= 0.9)
@NLconstraint(m, e20, 0.5*(1-0.11^i[2])*(1-0.0600000000000001^i[3])*(1-0.04^i[4])*(1-0.074^i[5])+0.8*(1-0.51^i[2])*(1-0.51^i[3])*(1-0.44^i[4])*(1-0.624^i[5])+(1-0.76^i[2])*(1-0.71^i[3])*(1-0.74^i[4])*(1-0.81^i[5]) >= 0.9)
@NLconstraint(m, e21, 0.5*(1-0.0650000000000001^i[2])*(1-0.0449999999999999^i[3])*(1-0.0399999999999999^i[4])*(1-0.0450000000000001^i[5])+0.8*(1-0.515^i[2])*(1-0.445^i[3])*(1-0.34^i[4])*(1-0.485^i[5])+(1-0.745^i[2])*(1-0.595^i[3])*(1-0.66^i[4])*(1-0.7^i[5]) >= 0.9)
@NLconstraint(m, e22, 0.5*(1-0.08^i[2])*(1-0.038^i[3])*(1-0.03^i[4])*(1-0.0349999999999999^i[5])+0.8*(1-0.38^i[2])*(1-0.388^i[3])*(1-0.28^i[4])*(1-0.365^i[5])+(1-0.68^i[2])*(1-0.548^i[3])*(1-0.53^i[4])*(1-0.615^i[5]) >= 0.9)
@NLconstraint(m, e23, 0.5*(1-0.05^i[2])*(1-1^i[3])*(1-0.025^i[4])*(1-1^i[5])+0.8*(1-0.3^i[2])*(1-1^i[3])*(1-0.24^i[4])*(1-1^i[5])+(1-0.55^i[2])*(1-1^i[3])*(1-0.42^i[4])*(1-1^i[5]) >= 0.9)
@NLconstraint(m, e24, 0.5*(1-0.038^i[2])*(1-1^i[3])*(1-1^i[4])*(1-1^i[5])+0.8*(1-0.273^i[2])*(1-1^i[3])*(1-1^i[4])*(1-1^i[5])+(1-0.513^i[2])*(1-1^i[3])*(1-1^i[4])*(1-1^i[5]) >= 0.9)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.