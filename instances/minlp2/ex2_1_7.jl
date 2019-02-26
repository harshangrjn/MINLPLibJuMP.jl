using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.5*( ((-2)+x[1])^2+2* ((-2)+x[2])^2+3* ((-2)+x[3])^2+4* ((-2)+x[4])^2+5* ((-2)+x[5])^2+6* ((-2)+x[6])^2+7* ((-2)+x[7])^2+8* ((-2)+x[8])^2+9* ((-2)+x[9])^2+10* ((-2)+x[10])^2+11* ((-2)+x[11])^2+12* ((-2)+x[12])^2+13* ((-2)+x[13])^2+14* ((-2)+x[14])^2+15* ((-2)+x[15])^2+16* ((-2)+x[16])^2+17* ((-2)+x[17])^2+18* ((-2)+x[18])^2+19* ((-2)+x[19])^2+20* ((-2)+x[20])^2)+objvar == 0.0)
@constraint(m, e2, -3*x[1]+7*x[2]-5*x[4]+x[5]+x[6]+2*x[8]-x[9]-x[10]-9*x[11]+3*x[12]+5*x[13]+x[16]+7*x[17]-7*x[18]-4*x[19]-6*x[20] <= -5.0)
@constraint(m, e3, 7*x[1]-5*x[3]+x[4]+x[5]+2*x[7]-x[8]-x[9]-9*x[10]+3*x[11]+5*x[12]+x[15]+7*x[16]-7*x[17]-4*x[18]-6*x[19]-3*x[20] <= 2.0)
@constraint(m, e4, -5*x[2]+x[3]+x[4]+2*x[6]-x[7]-x[8]-9*x[9]+3*x[10]+5*x[11]+x[14]+7*x[15]-7*x[16]-4*x[17]-6*x[18]-3*x[19]+7*x[20] <= -1.0)
@constraint(m, e5, -5*x[1]+x[2]+x[3]+2*x[5]-x[6]-x[7]-9*x[8]+3*x[9]+5*x[10]+x[13]+7*x[14]-7*x[15]-4*x[16]-6*x[17]-3*x[18]+7*x[19] <= -3.0)
@constraint(m, e6, x[1]+x[2]+2*x[4]-x[5]-x[6]-9*x[7]+3*x[8]+5*x[9]+x[12]+7*x[13]-7*x[14]-4*x[15]-6*x[16]-3*x[17]+7*x[18]-5*x[20] <= 5.0)
@constraint(m, e7, x[1]+2*x[3]-x[4]-x[5]-9*x[6]+3*x[7]+5*x[8]+x[11]+7*x[12]-7*x[13]-4*x[14]-6*x[15]-3*x[16]+7*x[17]-5*x[19]+x[20] <= 4.0)
@constraint(m, e8, 2*x[2]-x[3]-x[4]-9*x[5]+3*x[6]+5*x[7]+x[10]+7*x[11]-7*x[12]-4*x[13]-6*x[14]-3*x[15]+7*x[16]-5*x[18]+x[19]+x[20] <= -1.0)
@constraint(m, e9, 2*x[1]-x[2]-x[3]-9*x[4]+3*x[5]+5*x[6]+x[9]+7*x[10]-7*x[11]-4*x[12]-6*x[13]-3*x[14]+7*x[15]-5*x[17]+x[18]+x[19] <= 0.0)
@constraint(m, e10, -x[1]-x[2]-9*x[3]+3*x[4]+5*x[5]+x[8]+7*x[9]-7*x[10]-4*x[11]-6*x[12]-3*x[13]+7*x[14]-5*x[16]+x[17]+x[18]+2*x[20] <= 9.0)
@constraint(m, e11, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20] <= 40.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.