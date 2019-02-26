using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[5]
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
@NLconstraint(m, e1, -(-29.7*i[1]*i[2]-308*i[1]+1297*i[2]+32*i[1]*i[3]-37.5*i[3]-136*i[1]*i[4]-173*i[4]-235*i[2]*i[3]+310*i[2]*i[4]+3.61*i[3]*i[4]+21.4* (i[1])^2-139* (i[2])^2+113* (i[3])^2+138* (i[4])^2)+x[5] == 467.0)
@NLconstraint(m, e2, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e3, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e4, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e5, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e6, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e7, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e8, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e9, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e10, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e11, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e12, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e13, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e14, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e15, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e16, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= 19.0)
@NLconstraint(m, e17, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e18, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e19, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e20, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e21, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e22, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e23, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e24, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e25, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e26, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e27, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e28, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e29, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e30, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e31, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -225.0)
@NLconstraint(m, e32, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e33, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e34, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e35, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e36, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e37, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e38, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e39, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e40, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e41, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e42, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e43, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e44, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e45, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e46, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -371.0)
@NLconstraint(m, e47, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e48, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e49, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e50, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e51, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e52, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e53, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e54, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e55, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e56, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e57, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e58, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e59, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e60, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e61, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 21.38)
@NLconstraint(m, e62, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e63, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e64, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e65, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e66, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e67, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e68, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e69, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e70, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e71, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e72, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e73, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e74, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e75, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e76, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 84.0)
@NLconstraint(m, e77, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e78, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e79, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e80, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e81, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e82, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e83, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e84, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e85, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e86, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e87, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e88, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e89, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e90, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e91, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -181.0)
@NLconstraint(m, e92, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e93, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e94, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e95, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e96, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e97, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e98, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e99, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e100, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e101, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e102, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e103, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e104, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e105, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e106, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -625.0)
@NLconstraint(m, e107, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e108, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e109, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e110, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e111, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e112, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e113, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e114, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e115, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e116, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e117, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e118, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e119, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e120, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e121, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -1871.0)
@NLconstraint(m, e122, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e123, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e124, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e125, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e126, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e127, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e128, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e129, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e130, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e131, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e132, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e133, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e134, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e135, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e136, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= 1.38)
@NLconstraint(m, e137, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e138, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e139, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e140, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e141, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e142, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e143, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e144, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e145, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e146, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e147, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e148, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e149, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e150, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e151, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= 74.0)
@NLconstraint(m, e152, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e153, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e154, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e155, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e156, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e157, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e158, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e159, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e160, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e161, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e162, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e163, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e164, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e165, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@NLconstraint(m, e166, 458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2 >= 1246.0)
@constraint(m, e167, i[1] >= 3.0)
@constraint(m, e168, i[1] <= 16.0)
@constraint(m, e169, i[2] >= 1.0)
@constraint(m, e170, i[2] <= 5.0)
@constraint(m, e171, i[3] >= 1.0)
@constraint(m, e172, i[3] <= 5.0)
@constraint(m, e173, i[4] >= 1.0)
@constraint(m, e174, i[4] <= 5.0)


# ----- Objective ----- #
@objective(m, Min, x[5])

m = m 		 # model get returned when including this script.