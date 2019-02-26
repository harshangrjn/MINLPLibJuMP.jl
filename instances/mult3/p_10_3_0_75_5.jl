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
@NLconstraint(m, e1, -(-0.8753*x[2]^2-0.7098*x[2]+0.1754*x[3]^2-0.4948*x[3]^3-0.6195*x[3]+(-0.7549*x[4]^2)-0.8108*x[4]+(-0.2367*x[6]^3)-0.5747*x[6]+0.1927*x[7]^3-0.9661*x[7]+0.3344*x[9]-0.8635*x[9]^2+0.7464*x[1]*x[2]-0.4487*x[1]*x[3]-0.2656*x[1]*x[4]+0.8956*x[1]*x[5]-0.0097*x[1]*x[6]+0.8553*x[1]*x[9]+0.7531*x[2]*x[4]+0.3787*x[2]*x[6]+0.5289*x[3]*x[4]+0.6008*x[3]*x[5]+0.9865*x[3]*x[6]+0.5959*x[3]*x[7]+0.8645*x[3]*x[8]-0.3021*x[4]*x[5]+0.6977*x[4]*x[6]+0.209*x[4]*x[7]+0.4111*x[4]*x[8]-0.7342*x[4]*x[9]+0.7722*x[5]*x[6]+0.7582*x[5]*x[7]-0.2807*x[5]*x[10]-0.3878*x[6]*x[7]-0.9827*x[6]*x[8]+0.7327*x[6]*x[9]+0.6392*x[7]*x[8]-0.7403*x[7]*x[9]+0.3037*x[7]*x[10]+0.2586*x[8]*x[9]+0.9007*x[8]*x[10]+0.0392*x[1]-0.8606*x[5]-0.8677*x[8]+0.4234*x[10]+(-0.3808*x[1]^2*x[2])-0.7392*x[1]^2*x[6]+0.5333*x[1]^2*x[9]-0.437*x[2]^2*x[1]+0.7346*x[2]^2*x[3]-0.8239*x[2]^2*x[4]+0.1586*x[2]^2*x[5]-0.2158*x[2]^2*x[6]+0.2032*x[2]^2*x[8]-0.0968*x[2]^2*x[9]+0.6892*x[3]^2*x[2]+0.6017*x[3]^2*x[4]+0.8406*x[3]^2*x[5]-0.0792*x[3]^2*x[7]+0.514*x[3]^2*x[8]+0.6198*x[3]^2*x[9]+0.9478*x[4]^2*x[2]+0.3072*x[4]^2*x[3]+0.49*x[4]^2*x[6]-0.1678*x[4]^2*x[7]+0.2312*x[4]^2*x[9]+0.4686*x[5]^2*x[1]-0.0453*x[5]^2*x[2]-0.1271*x[5]^2*x[3]-0.9294*x[5]^2*x[4]-0.4365*x[5]^2*x[6]-0.5585*x[5]^2*x[8]+0.8259*x[6]^2*x[1]+0.563*x[6]^2*x[2]-0.3569*x[6]^2*x[3]-0.8944*x[6]^2*x[4]-0.5224*x[6]^2*x[5]-0.6942*x[6]^2*x[7]+0.6404*x[6]^2*x[8]-0.4655*x[6]^2*x[9]-0.3901*x[6]^2*x[10]+0.172*x[7]^2*x[2]+0.7937*x[7]^2*x[3]+0.1292*x[7]^2*x[4]-0.1502*x[7]^2*x[5]+0.3544*x[7]^2*x[6]+0.8101*x[7]^2*x[9]+0.966*x[7]^2*x[10]-0.2231*x[8]^2*x[2]+0.8766*x[8]^2*x[3]+0.3254*x[8]^2*x[4]-0.8179*x[8]^2*x[5]+0.9058*x[8]^2*x[7]+0.4463*x[8]^2*x[9]-0.7466*x[8]^2*x[10]+0.4597*x[9]^2*x[1]+0.8557*x[9]^2*x[4]+0.6252*x[9]^2*x[5]-0.7331*x[9]^2*x[6]+0.2082*x[9]^2*x[7]-0.1352*x[9]^2*x[8]+0.7655*x[9]^2*x[10]+0.3566*x[10]^2*x[2]+0.3407*x[10]^2*x[5]-0.4173*x[10]^2*x[6]+0.9407*x[1]*x[2]*x[3]+0.3131*x[1]*x[2]*x[4]+0.6176*x[1]*x[2]*x[5]+0.0414*x[1]*x[2]*x[7]+0.6834*x[1]*x[2]*x[8]+0.581*x[1]*x[2]*x[9]+0.0775*x[1]*x[3]*x[4]+0.7802*x[1]*x[3]*x[6]+0.3202*x[1]*x[3]*x[7]-0.3248*x[1]*x[3]*x[9]-0.7*x[1]*x[4]*x[5]-0.1072*x[1]*x[4]*x[6]+0.4817*x[1]*x[4]*x[7]-0.6374*x[1]*x[4]*x[8]+0.5486*x[1]*x[4]*x[9]-0.7225*x[1]*x[5]*x[7]-0.2159*x[1]*x[5]*x[8]-0.4064*x[1]*x[5]*x[9]-0.1486*x[1]*x[5]*x[10]+0.2001*x[1]*x[6]*x[7]+0.8749*x[1]*x[6]*x[8]+0.88*x[1]*x[6]*x[9]+0.361*x[1]*x[6]*x[10]-0.4407*x[1]*x[7]*x[8]-0.2015*x[1]*x[7]*x[9]+0.8878*x[1]*x[8]*x[9]+0.589*x[2]*x[3]*x[4]-0.285*x[2]*x[3]*x[5]-0.4567*x[2]*x[3]*x[6]-0.9605*x[2]*x[3]*x[7]-0.4789*x[2]*x[3]*x[8]-0.0678*x[2]*x[3]*x[9]+0.7285*x[2]*x[3]*x[10]-0.7589*x[2]*x[4]*x[5]-0.8724*x[2]*x[4]*x[6]-0.3796*x[2]*x[4]*x[7]+0.9547*x[2]*x[4]*x[8]+0.5113*x[2]*x[4]*x[9]-0.8689*x[2]*x[4]*x[10]+0.5195*x[2]*x[5]*x[6]+0.1348*x[2]*x[5]*x[7]+0.9632*x[2]*x[5]*x[8]+0.6321*x[2]*x[5]*x[9]+0.4083*x[2]*x[5]*x[10]-0.6363*x[2]*x[6]*x[7]+0.4327*x[2]*x[6]*x[8]+0.9475*x[2]*x[6]*x[9]+0.56*x[2]*x[7]*x[8]+0.718*x[2]*x[7]*x[9]+0.7529*x[2]*x[7]*x[10]+0.3761*x[2]*x[8]*x[9]+0.0968*x[2]*x[8]*x[10]-0.6254*x[2]*x[9]*x[10]-0.2454*x[3]*x[4]*x[5]+0.8168*x[3]*x[4]*x[6]+0.8953*x[3]*x[4]*x[7]-0.2546*x[3]*x[4]*x[8]+0.0888*x[3]*x[4]*x[9]-0.5758*x[3]*x[4]*x[10]-0.4639*x[3]*x[5]*x[6]-0.2758*x[3]*x[5]*x[7]+0.9537*x[3]*x[5]*x[8]-0.7258*x[3]*x[5]*x[9]+0.2916*x[3]*x[5]*x[10]+0.5983*x[3]*x[6]*x[7]-0.7005*x[3]*x[6]*x[8]+0.6208*x[3]*x[6]*x[9]+0.182*x[3]*x[6]*x[10]-0.587*x[3]*x[7]*x[8]+0.1852*x[3]*x[7]*x[9]-0.2552*x[3]*x[7]*x[10]-0.721*x[3]*x[8]*x[9]-0.806*x[3]*x[8]*x[10]-0.7313*x[3]*x[9]*x[10]+0.9144*x[4]*x[5]*x[6]+0.0006*x[4]*x[5]*x[7]-0.3361*x[4]*x[5]*x[8]-0.9518*x[4]*x[5]*x[9]+0.2511*x[4]*x[5]*x[10]-0.9893*x[4]*x[6]*x[7]-0.3623*x[4]*x[6]*x[8]+0.8329*x[4]*x[6]*x[9]+0.6648*x[4]*x[6]*x[10]+0.0862*x[4]*x[7]*x[8]-0.9883*x[4]*x[7]*x[9]+0.9389*x[4]*x[7]*x[10]+0.9067*x[4]*x[8]*x[9]-0.3603*x[4]*x[9]*x[10]-0.4786*x[5]*x[6]*x[7]-0.6774*x[5]*x[6]*x[8]-0.7825*x[5]*x[6]*x[9]+0.269*x[5]*x[6]*x[10]+0.3698*x[5]*x[7]*x[8]-0.0976*x[5]*x[7]*x[9]-0.6707*x[5]*x[8]*x[9]-0.2159*x[5]*x[8]*x[10]+0.1054*x[5]*x[9]*x[10]+0.9017*x[6]*x[7]*x[8]+0.515*x[6]*x[7]*x[9]-0.0517*x[6]*x[7]*x[10]-0.865*x[6]*x[8]*x[9]-0.8969*x[6]*x[9]*x[10]-0.6553*x[7]*x[8]*x[9]+0.5354*x[7]*x[8]*x[10]-0.6172*x[7]*x[9]*x[10]+0.2065*x[8]*x[9]*x[10])+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script.