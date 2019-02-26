using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx])
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[1], 100.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[3], 100.0)
set_upper_bound(i[4], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(13895.3816*i[1]-91.8187*i[1]*i[2]-2668.5007*i[2]-15.1187*i[1]*i[3]+20.1313*i[1]*i[4]-2050.0226*i[4]+686.6017*i[2]*i[3]-866.9209*i[2]*i[4]+40.5*i[3]*i[4]-450.5106* (i[1])^2+690.8032* (i[2])^2-487.006* (i[3])^2+1050.7666* (i[4])^2)+x[6] == -96655.1715)
@NLconstraint(m, e2, -(-2.9*i[1]*i[2]-22.7128*i[1]+117.7713*i[2]+11.9*i[1]*i[3]+11.4*i[1]*i[4]-474.0266*i[4]+195.9947*i[2]*i[3]-179.5319*i[2]*i[4]-7.75*i[3]*i[4]-0.1596* (i[1])^2-19.4521* (i[2])^2-173.3085* (i[3])^2+207.2181* (i[4])^2)+x[7] == 464.4894)
@NLconstraint(m, e3, -((-347.9586174+0.0036*(13895.3816*i[1]-91.8187*i[1]*i[2]-2668.5007*i[2]-15.1187*i[1]*i[3]+20.1313*i[1]*i[4]-2050.0226*i[4]+686.6017*i[2]*i[3]-866.9209*i[2]*i[4]+40.5*i[3]*i[4]-450.5106* (i[1])^2+690.8032* (i[2])^2-487.006* (i[3])^2+1050.7666* (i[4])^2))*(0.1356+0.01332*i[2])+0.085*i[1])+x[5] == 0.0)
@NLconstraint(m, e4, -(3.9062*i[1]*i[2]-712.0705*i[1]-9.2055*i[2]-5.5938*i[1]*i[3]-11.0938*i[1]*i[4]+436.7646*i[4]-162.0658*i[2]*i[3]+171.1988*i[2]*i[4]-3.25*i[3]*i[4]+23.7128* (i[1])^2+3.6862* (i[2])^2+140.1509* (i[3])^2-187.1137* (i[4])^2)+x[8] == 5197.4934)
@NLconstraint(m, e5, -(118.8285*i[1]-6.2688*i[1]*i[2]+263.1297*i[2]+44.8312*i[1]*i[3]+37.0813*i[1]*i[4]-1609.2168*i[4]+810.1629*i[2]*i[3]-797.5539*i[2]*i[4]-31.125*i[3]*i[4]-7.4255* (i[1])^2-36.4973* (i[2])^2-712.4581* (i[3])^2+856.5086* (i[4])^2)+x[9] == 173.2008)
@NLconstraint(m, e6, -(14.625*i[1]*i[2]-3459.7713*i[1]+235.5771*i[2]+11.125*i[1]*i[3]-12.375*i[1]*i[4]+744.3723*i[4]+173.6995*i[2]*i[3]-273.9282*i[2]*i[4]+60.75*i[3]*i[4]+112.234* (i[1])^2-0.9202* (i[2])^2-214.5559* (i[3])^2+46.5718* (i[4])^2)+x[10] == 25778.3989)
@NLconstraint(m, e7, -(-0.15025625*i[1]*i[2]-0.0518125*i[1]+2.83871875*i[2]+0.09844375*i[1]*i[3]+0.09844375*i[1]*i[4]-3.5381875*i[4]+0.89178125*i[2]*i[3]-2.64640625*i[2]*i[4]+0.584875*i[3]*i[4]+0.584875* (i[2])^2-1.47665625* (i[3])^2+2.06153125* (i[4])^2)+x[11] == 0.7771875)
@NLconstraint(m, e8, -(0.0003625*i[1]*i[2]+0.000125*i[1]-0.0041875*i[2]-0.0002375*i[1]*i[3]-0.0002375*i[1]*i[4]+0.005875*i[4]-0.0048125*i[2]*i[3]+0.0010625*i[2]*i[4]+0.00125*i[3]*i[4]+0.00125* (i[2])^2+0.0035625* (i[3])^2-0.0023125* (i[4])^2)+x[12] == -0.001875)
@NLconstraint(m, e9, (-2.9*i[1]*i[2])-22.7128*i[1]+117.7713*i[2]+11.9*i[1]*i[3]+11.4*i[1]*i[4]-474.0266*i[4]+195.9947*i[2]*i[3]-179.5319*i[2]*i[4]-7.75*i[3]*i[4]-0.1596* (i[1])^2-19.4521* (i[2])^2-173.3085* (i[3])^2+207.2181* (i[4])^2 <= 9535.5106)
@NLconstraint(m, e10, 3.9062*i[1]*i[2]-712.0705*i[1]-9.2055*i[2]-5.5938*i[1]*i[3]-11.0938*i[1]*i[4]+436.7646*i[4]-162.0658*i[2]*i[3]+171.1988*i[2]*i[4]-3.25*i[3]*i[4]+23.7128* (i[1])^2+3.6862* (i[2])^2+140.1509* (i[3])^2-187.1137* (i[4])^2 <= 4802.5066)
@NLconstraint(m, e11, 118.8285*i[1]-6.2688*i[1]*i[2]+263.1297*i[2]+44.8312*i[1]*i[3]+37.0813*i[1]*i[4]-1609.2168*i[4]+810.1629*i[2]*i[3]-797.5539*i[2]*i[4]-31.125*i[3]*i[4]-7.4255* (i[1])^2-36.4973* (i[2])^2-712.4581* (i[3])^2+856.5086* (i[4])^2 <= 19826.7992)
@NLconstraint(m, e12, 14.625*i[1]*i[2]-3459.7713*i[1]+235.5771*i[2]+11.125*i[1]*i[3]-12.375*i[1]*i[4]+744.3723*i[4]+173.6995*i[2]*i[3]-273.9282*i[2]*i[4]+60.75*i[3]*i[4]+112.234* (i[1])^2-0.9202* (i[2])^2-214.5559* (i[3])^2+46.5718* (i[4])^2 <= -5778.3989)
@NLconstraint(m, e13, (-0.15025625*i[1]*i[2])-0.0518125*i[1]+2.83871875*i[2]+0.09844375*i[1]*i[3]+0.09844375*i[1]*i[4]-3.5381875*i[4]+0.89178125*i[2]*i[3]-2.64640625*i[2]*i[4]+0.584875*i[3]*i[4]+0.584875* (i[2])^2-1.47665625* (i[3])^2+2.06153125* (i[4])^2 <= 9.2228125)
@NLconstraint(m, e14, 0.0003625*i[1]*i[2]+0.000125*i[1]-0.0041875*i[2]-0.0002375*i[1]*i[3]-0.0002375*i[1]*i[4]+0.005875*i[4]-0.0048125*i[2]*i[3]+0.0010625*i[2]*i[4]+0.00125*i[3]*i[4]+0.00125* (i[2])^2+0.0035625* (i[3])^2-0.0023125* (i[4])^2 <= 5000.001875)
@NLconstraint(m, e15, 13895.3816*i[1]-91.8187*i[1]*i[2]-2668.5007*i[2]-15.1187*i[1]*i[3]+20.1313*i[1]*i[4]-2050.0226*i[4]+686.6017*i[2]*i[3]-866.9209*i[2]*i[4]+40.5*i[3]*i[4]-450.5106* (i[1])^2+690.8032* (i[2])^2-487.006* (i[3])^2+1050.7666* (i[4])^2 >= 101655.1715)
@constraint(m, e16, i[1] >= 14.0)
@constraint(m, e17, i[1] <= 16.0)
@constraint(m, e18, i[2] >= 2.0)
@constraint(m, e19, i[2] <= 3.0)
@constraint(m, e20, i[3] >= 1.0)
@constraint(m, e21, -i[2]+i[3] <= 0.0)
@constraint(m, e22, i[4] >= 1.0)
@constraint(m, e23, -i[2]+i[4] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[5])

m = m 		 # model get returned when including this script.