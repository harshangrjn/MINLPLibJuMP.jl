using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2967*x[4]-0.9389*x[4]^2+0.2184*x[7]-0.233*x[7]^4+(-0.9986*x[1]*x[3])-0.933*x[1]*x[10]-0.9023*x[2]*x[4]-0.9627*x[2]*x[5]-0.9197*x[2]*x[7]-0.9423*x[3]*x[5]-0.9415*x[3]*x[8]-0.9752*x[3]*x[9]-0.8913*x[4]*x[7]-0.9699*x[4]*x[8]-0.9079*x[4]*x[9]-0.9392*x[5]*x[9]-0.98*x[5]*x[10]-0.9931*x[6]*x[8]-0.9803*x[6]*x[10]-0.9466*x[8]*x[10]-0.4814*x[1]-0.8928*x[2]+0.8237*x[3]+0.519*x[5]-0.4036*x[6]+0.5597*x[8]-0.6636*x[9]-0.2396*x[10]+(-0.8075*x[1]*x[2]*x[3])-0.8687*x[1]*x[2]*x[7]-0.8219*x[1]*x[4]*x[7]-0.8771*x[1]*x[5]*x[6]-0.5576*x[1]*x[6]*x[8]-0.4773*x[1]*x[8]*x[9]-0.5799*x[1]*x[8]*x[10]-0.6065*x[2]*x[3]*x[6]-0.5016*x[2]*x[3]*x[7]-0.776*x[2]*x[4]*x[5]-0.6747*x[2]*x[4]*x[7]-0.5281*x[2]*x[5]*x[6]-0.6058*x[2]*x[5]*x[8]-0.8498*x[2]*x[5]*x[9]-0.7244*x[2]*x[6]*x[8]-0.8096*x[2]*x[6]*x[9]-0.5768*x[2]*x[7]*x[9]-0.6774*x[2]*x[7]*x[10]-0.8026*x[2]*x[8]*x[10]-0.6769*x[3]*x[4]*x[6]-0.5906*x[3]*x[5]*x[8]-0.7753*x[3]*x[6]*x[8]-0.8348*x[3]*x[6]*x[9]-0.7938*x[3]*x[6]*x[10]-0.5796*x[3]*x[7]*x[8]-0.4809*x[3]*x[7]*x[10]-0.7789*x[4]*x[5]*x[8]-0.589*x[4]*x[5]*x[9]-0.875*x[4]*x[6]*x[8]-0.7219*x[4]*x[6]*x[9]-0.4484*x[4]*x[6]*x[10]-0.6343*x[4]*x[7]*x[9]-0.7663*x[4]*x[9]*x[10]-0.4473*x[5]*x[6]*x[7]-0.6663*x[5]*x[6]*x[8]-0.6953*x[5]*x[8]*x[10]-0.6238*x[6]*x[7]*x[10]-0.4884*x[7]*x[8]*x[9]-0.7073*x[7]*x[8]*x[10]+0.194*x[1]*x[2]*x[3]*x[4]-0.3725*x[1]*x[2]*x[4]*x[9]+0.4455*x[1]*x[2]*x[4]*x[10]+0.8807*x[1]*x[2]*x[5]*x[6]+0.9451*x[1]*x[2]*x[5]*x[7]-0.0792*x[1]*x[2]*x[5]*x[9]+0.3674*x[1]*x[2]*x[5]*x[10]-0.1371*x[1]*x[2]*x[6]*x[8]-0.2066*x[1]*x[3]*x[4]*x[5]+0.2013*x[1]*x[3]*x[4]*x[9]-0.3738*x[1]*x[3]*x[5]*x[7]-0.1981*x[1]*x[3]*x[5]*x[8]-0.0968*x[1]*x[3]*x[7]*x[10]+0.2514*x[1]*x[4]*x[5]*x[6]+0.9985*x[1]*x[4]*x[5]*x[10]+0.7743*x[1]*x[4]*x[6]*x[7]+0.5376*x[1]*x[4]*x[6]*x[8]-0.2339*x[1]*x[4]*x[9]*x[10]+0.6813*x[1]*x[5]*x[6]*x[7]+0.0265*x[1]*x[5]*x[7]*x[10]+0.0573*x[1]*x[5]*x[9]*x[10]-0.1364*x[1]*x[6]*x[7]*x[8]-0.0421*x[1]*x[6]*x[7]*x[10]-0.1853*x[1]*x[6]*x[8]*x[10]-0.2421*x[1]*x[6]*x[9]*x[10]-0.0821*x[1]*x[7]*x[8]*x[9]+0.4074*x[2]*x[3]*x[4]*x[7]-0.1863*x[2]*x[3]*x[4]*x[8]+0.9897*x[2]*x[3]*x[5]*x[7]+0.3626*x[2]*x[3]*x[5]*x[8]+0.8495*x[2]*x[3]*x[6]*x[8]+0.3515*x[2]*x[3]*x[6]*x[9]-0.343*x[2]*x[3]*x[8]*x[9]-0.4103*x[2]*x[4]*x[5]*x[6]+0.7398*x[2]*x[4]*x[5]*x[7]+0.0858*x[2]*x[4]*x[5]*x[10]+0.6472*x[2]*x[4]*x[6]*x[8]+0.9858*x[2]*x[4]*x[6]*x[9]+0.3379*x[2]*x[4]*x[6]*x[10]+0.8706*x[2]*x[4]*x[7]*x[8]+0.1761*x[2]*x[4]*x[7]*x[9]+0.8514*x[2]*x[4]*x[8]*x[9]+0.7902*x[2]*x[4]*x[8]*x[10]+0.3771*x[2]*x[5]*x[6]*x[8]+0.7882*x[2]*x[5]*x[7]*x[8]+0.8925*x[2]*x[5]*x[7]*x[9]+0.4072*x[2]*x[5]*x[7]*x[10]-0.0966*x[2]*x[5]*x[8]*x[9]+0.802*x[2]*x[6]*x[7]*x[9]+0.9238*x[2]*x[7]*x[8]*x[9]+0.9428*x[2]*x[8]*x[9]*x[10]-0.2179*x[3]*x[4]*x[5]*x[7]+0.4292*x[3]*x[4]*x[5]*x[10]+0.498*x[3]*x[4]*x[6]*x[7]+0.4713*x[3]*x[4]*x[6]*x[8]+0.4567*x[3]*x[4]*x[6]*x[9]+0.9387*x[3]*x[4]*x[7]*x[8]+0.5045*x[3]*x[4]*x[8]*x[9]+0.3058*x[3]*x[5]*x[6]*x[7]-0.429*x[3]*x[5]*x[6]*x[8]-0.0524*x[3]*x[5]*x[6]*x[9]+0.5178*x[3]*x[5]*x[6]*x[10]+0.3458*x[3]*x[5]*x[8]*x[9]+0.3056*x[3]*x[6]*x[7]*x[8]+0.7091*x[3]*x[6]*x[8]*x[9]+0.3826*x[3]*x[7]*x[8]*x[9]-0.116*x[3]*x[7]*x[9]*x[10]-0.1986*x[4]*x[5]*x[6]*x[7]+0.0481*x[4]*x[5]*x[6]*x[8]+0.3207*x[4]*x[5]*x[6]*x[9]+0.2734*x[4]*x[5]*x[6]*x[10]+0.828*x[4]*x[5]*x[7]*x[8]+0.2824*x[4]*x[5]*x[7]*x[9]+0.2922*x[4]*x[5]*x[9]*x[10]-0.165*x[4]*x[6]*x[8]*x[9]+0.8133*x[5]*x[6]*x[7]*x[10]+0.4154*x[5]*x[6]*x[8]*x[10]+0.9223*x[5]*x[7]*x[8]*x[9]+0.7382*x[5]*x[7]*x[9]*x[10]+0.9241*x[7]*x[8]*x[9]*x[10]+0.296*x[4]^3*x[9]-0.3721*x[5]^3*x[7]+0.1892*x[7]^3*x[2]+0.1484*x[7]^3*x[4]+0.0488*x[7]^3*x[6]-0.2722*x[7]^3*x[8]-0.0028*x[8]^3*x[4]+0.8733*x[9]^3*x[4]+0.6607*x[2]^2*x[4]^2-0.1357*x[1]^2*x[7]^2-0.0134*x[2]^2*x[6]^2+0.3194*x[3]^2*x[7]^2+0.1024*x[4]^2*x[6]^2+0.7938*x[4]^2*x[8]^2+0.4384*x[5]^2*x[9]^2-0.164*x[6]^2*x[7]^2+(-0.8782*x[2]^2*x[3])-0.4663*x[2]^2*x[4]-0.8383*x[2]^2*x[6]-0.7224*x[3]^2*x[2]-0.6075*x[3]^2*x[5]-0.6452*x[3]^2*x[9]-0.6234*x[4]^2*x[3]-0.7535*x[4]^2*x[5]-0.7344*x[6]^2*x[3]-0.4616*x[6]^2*x[7]-0.8696*x[7]^2*x[3]-0.6075*x[8]^2*x[2]-0.7699*x[8]^2*x[4]-0.4461*x[9]^2*x[6]+0.562*x[1]^2*x[5]*x[8]+0.6608*x[1]^2*x[5]*x[9]+0.9675*x[2]^2*x[3]*x[5]+0.6991*x[2]^2*x[3]*x[8]+0.0953*x[2]^2*x[4]*x[5]-0.322*x[2]^2*x[4]*x[7]+0.5378*x[2]^2*x[4]*x[8]+0.7189*x[2]^2*x[4]*x[9]-0.0297*x[2]^2*x[5]*x[7]+0.4854*x[2]^2*x[6]*x[10]+0.2791*x[2]^2*x[7]*x[9]-0.0644*x[2]^2*x[8]*x[10]+0.1736*x[3]^2*x[1]*x[2]+0.3848*x[3]^2*x[1]*x[10]+0.6166*x[3]^2*x[2]*x[4]+0.305*x[3]^2*x[2]*x[5]-0.1383*x[3]^2*x[2]*x[6]+0.82*x[3]^2*x[2]*x[9]+0.5881*x[3]^2*x[4]*x[5]+0.1501*x[3]^2*x[5]*x[8]-0.3687*x[3]^2*x[6]*x[7]+0.0253*x[4]^2*x[1]*x[8]+0.0402*x[4]^2*x[1]*x[9]-0.1284*x[4]^2*x[2]*x[6]+0.5743*x[4]^2*x[2]*x[9]+0.2095*x[4]^2*x[5]*x[8]+0.0611*x[4]^2*x[6]*x[10]-0.1202*x[4]^2*x[7]*x[8]-0.131*x[4]^2*x[8]*x[10]+0.3413*x[5]^2*x[1]*x[7]+0.761*x[5]^2*x[1]*x[8]-0.4108*x[5]^2*x[2]*x[3]+0.4245*x[5]^2*x[2]*x[4]+0.0755*x[5]^2*x[2]*x[7]+0.3945*x[5]^2*x[2]*x[9]+0.8915*x[5]^2*x[3]*x[6]+0.6794*x[5]^2*x[3]*x[8]-0.0869*x[5]^2*x[4]*x[8]-0.0127*x[5]^2*x[8]*x[9]+0.7768*x[6]^2*x[2]*x[3]+0.8603*x[6]^2*x[2]*x[9]-0.2596*x[6]^2*x[3]*x[9]+0.1803*x[6]^2*x[4]*x[7]+0.169*x[6]^2*x[4]*x[8]+0.6394*x[6]^2*x[4]*x[9]-0.1502*x[6]^2*x[7]*x[9]-0.0975*x[6]^2*x[8]*x[9]+0.6513*x[6]^2*x[8]*x[10]+0.8622*x[6]^2*x[9]*x[10]-0.3975*x[7]^2*x[2]*x[8]+0.6425*x[7]^2*x[3]*x[4]+0.9873*x[7]^2*x[3]*x[5]+0.0586*x[7]^2*x[3]*x[6]+0.6027*x[7]^2*x[3]*x[8]-0.3099*x[7]^2*x[3]*x[9]+0.0502*x[7]^2*x[4]*x[8]-0.2244*x[7]^2*x[5]*x[9]-0.3237*x[7]^2*x[8]*x[10]+0.2131*x[8]^2*x[1]*x[4]-0.0269*x[8]^2*x[1]*x[7]-0.0586*x[8]^2*x[1]*x[9]+0.9962*x[8]^2*x[2]*x[3]+0.7599*x[8]^2*x[2]*x[4]-0.3524*x[8]^2*x[2]*x[5]-0.1077*x[8]^2*x[3]*x[7]+0.8708*x[8]^2*x[6]*x[7]+0.8049*x[8]^2*x[6]*x[9]+0.0199*x[9]^2*x[1]*x[4]+0.9698*x[9]^2*x[1]*x[5]-0.2523*x[9]^2*x[1]*x[7]-0.1993*x[9]^2*x[2]*x[3]+0.6146*x[9]^2*x[2]*x[4]+0.994*x[9]^2*x[2]*x[5]+0.0613*x[9]^2*x[2]*x[7]+0.0583*x[9]^2*x[3]*x[5]+0.511*x[9]^2*x[3]*x[7]+0.2374*x[9]^2*x[4]*x[7]-0.0437*x[10]^2*x[1]*x[7]+0.3128*x[10]^2*x[3]*x[8]+0.2066*x[10]^2*x[5]*x[8])+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.