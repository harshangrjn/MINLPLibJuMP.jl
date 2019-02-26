using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[1])^2+100* (x[2])^2+10* (x[3])^2+5* (x[4])^2+10* (x[5])^2+25* (x[8])^2+10* (x[10])^2+55* (x[11])^2+5* (x[12])^2+45* (x[13])^2+20* (x[14])^2) >= -385.0)
@NLconstraint(m, e2, -(90* (x[1])^2+100* (x[2])^2+10* (x[3])^2+35* (x[4])^2+20* (x[5])^2+5* (x[6])^2+35* (x[8])^2+55* (x[9])^2+25* (x[10])^2+20* (x[11])^2+40* (x[13])^2+25* (x[14])^2+10* (x[15])^2) >= -470.0)
@NLconstraint(m, e3, -(70* (x[1])^2+50* (x[2])^2+55* (x[4])^2+25* (x[5])^2+100* (x[6])^2+40* (x[7])^2+50* (x[8])^2+30* (x[10])^2+60* (x[11])^2+10* (x[12])^2+30* (x[13])^2+40* (x[15])^2) >= -560.0)
@NLconstraint(m, e4, -(50* (x[1])^2+65* (x[4])^2+35* (x[5])^2+100* (x[6])^2+36* (x[7])^2+60* (x[8])^2+15* (x[10])^2+75* (x[12])^2+35* (x[13])^2+30* (x[14])^2+65* (x[15])^2) >= -565.0)
@NLconstraint(m, e5, -(50* (x[1])^2+10* (x[2])^2+70* (x[3])^2+60* (x[4])^2+45* (x[5])^2+45* (x[6])^2+35* (x[8])^2+65* (x[9])^2+5* (x[10])^2+75* (x[11])^2+100* (x[12])^2+75* (x[13])^2+10* (x[14])^2) >= -645.0)
@NLconstraint(m, e6, -(40* (x[1])^2+50* (x[3])^2+95* (x[4])^2+50* (x[5])^2+35* (x[6])^2+10* (x[7])^2+60* (x[8])^2+45* (x[10])^2+15* (x[11])^2+20* (x[12])^2+5* (x[14])^2+5* (x[15])^2) >= -430.0)
@NLconstraint(m, e7, -(30* (x[1])^2+60* (x[2])^2+30* (x[3])^2+90* (x[4])^2+30* (x[6])^2+5* (x[7])^2+25* (x[8])^2+70* (x[10])^2+20* (x[11])^2+25* (x[12])^2+70* (x[13])^2+15* (x[14])^2+15* (x[15])^2) >= -485.0)
@NLconstraint(m, e8, -(20* (x[1])^2+30* (x[2])^2+40* (x[3])^2+25* (x[4])^2+40* (x[5])^2+25* (x[6])^2+15* (x[7])^2+10* (x[8])^2+80* (x[9])^2+20* (x[10])^2+30* (x[11])^2+30* (x[12])^2+5* (x[13])^2+65* (x[14])^2+20* (x[15])^2) >= -455.0)
@NLconstraint(m, e9, -(10* (x[1])^2+70* (x[2])^2+10* (x[3])^2+35* (x[4])^2+25* (x[5])^2+65* (x[6])^2+30* (x[8])^2+25* (x[11])^2+15* (x[13])^2+50* (x[14])^2+55* (x[15])^2) >= -390.0)
@NLconstraint(m, e10, -(5* (x[1])^2+10* (x[2])^2+100* (x[3])^2+5* (x[4])^2+20* (x[5])^2+5* (x[6])^2+10* (x[7])^2+35* (x[8])^2+95* (x[9])^2+70* (x[10])^2+20* (x[11])^2+10* (x[12])^2+35* (x[13])^2+10* (x[14])^2+30* (x[15])^2) >= -460.0)
@constraint(m, e11, -100*x[1]-100*x[2]-10*x[3]-5*x[4]-10*x[5]-25*x[8]-10*x[10]-55*x[11]-5*x[12]-45*x[13]-20*x[14] >= -385.0)
@constraint(m, e12, -90*x[1]-100*x[2]-10*x[3]-35*x[4]-20*x[5]-5*x[6]-35*x[8]-55*x[9]-25*x[10]-20*x[11]-40*x[13]-25*x[14]-10*x[15] >= -470.0)
@constraint(m, e13, -70*x[1]-50*x[2]-55*x[4]-25*x[5]-100*x[6]-40*x[7]-50*x[8]-30*x[10]-60*x[11]-10*x[12]-30*x[13]-40*x[15] >= -560.0)
@constraint(m, e14, -50*x[1]-65*x[4]-35*x[5]-100*x[6]-36*x[7]-60*x[8]-15*x[10]-75*x[12]-35*x[13]-30*x[14]-65*x[15] >= -565.0)
@constraint(m, e15, -50*x[1]-10*x[2]-70*x[3]-60*x[4]-45*x[5]-45*x[6]-35*x[8]-65*x[9]-5*x[10]-75*x[11]-100*x[12]-75*x[13]-10*x[14] >= -645.0)
@constraint(m, e16, -40*x[1]-50*x[3]-95*x[4]-50*x[5]-35*x[6]-10*x[7]-60*x[8]-45*x[10]-15*x[11]-20*x[12]-5*x[14]-5*x[15] >= -430.0)
@constraint(m, e17, -30*x[1]-60*x[2]-30*x[3]-90*x[4]-30*x[6]-5*x[7]-25*x[8]-70*x[10]-20*x[11]-25*x[12]-70*x[13]-15*x[14]-15*x[15] >= -485.0)
@constraint(m, e18, -20*x[1]-30*x[2]-40*x[3]-25*x[4]-40*x[5]-25*x[6]-15*x[7]-10*x[8]-80*x[9]-20*x[10]-30*x[11]-30*x[12]-5*x[13]-65*x[14]-20*x[15] >= -455.0)
@constraint(m, e19, -10*x[1]-70*x[2]-10*x[3]-35*x[4]-25*x[5]-65*x[6]-30*x[8]-25*x[11]-15*x[13]-50*x[14]-55*x[15] >= -390.0)
@constraint(m, e20, -5*x[1]-10*x[2]-100*x[3]-5*x[4]-20*x[5]-5*x[6]-10*x[7]-35*x[8]-95*x[9]-70*x[10]-20*x[11]-10*x[12]-35*x[13]-10*x[14]-30*x[15] >= -460.0)
@constraint(m, e21, -x[1]-2*x[2]-3*x[3]-4*x[4]-5*x[5]-6*x[6]-7*x[7]-8*x[8]-9*x[9]-10*x[10]-15*x[11]-16*x[12]-17*x[13]-18*x[14]-19*x[15] >= -70.0)
@constraint(m, e22, -45*x[1]-25*x[2]-35*x[3]-85*x[4]-40*x[5]-73*x[6]-17*x[7]-52*x[8]-86*x[9]-14*x[10]-30*x[11]-50*x[12]-40*x[13]-70*x[14]-60*x[15] >= -361.0)
@constraint(m, e23, -53*x[1]-74*x[2]-26*x[3]-17*x[4]-25*x[5]-25*x[6]-26*x[7]-24*x[8]-85*x[9]-35*x[10]-14*x[11]-23*x[12]-37*x[13]-56*x[14]-10*x[15] >= -265.0)
@constraint(m, e24, -12*x[1]-43*x[2]-51*x[3]-39*x[4]-58*x[5]-42*x[6]-60*x[7]-20*x[8]-40*x[9]-80*x[10]-75*x[11]-85*x[12]-95*x[13]-23*x[14]-67*x[15] >= -395.0)
@NLconstraint(m, e25, 0.5*( ((-2)+x[1])^2+2* ((-2)+x[2])^2+3* ((-2)+x[3])^2+4* ((-2)+x[4])^2+5* ((-2)+x[5])^2+6* ((-2)+x[6])^2+7* ((-2)+x[7])^2+8* ((-2)+x[8])^2+9* ((-2)+x[9])^2+10* ((-2)+x[10])^2+11* ((-2)+x[11])^2+12* ((-2)+x[12])^2+13* ((-2)+x[13])^2+14* ((-2)+x[14])^2+15* ((-2)+x[15])^2) >= 200.0)
@constraint(m, e26, 486*x[1]+640*x[2]+758*x[3]+776*x[4]+477*x[5]+707*x[6]+175*x[7]+619*x[8]+627*x[9]+614*x[10]+475*x[11]+377*x[12]+524*x[13]+468*x[14]+529*x[15]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.