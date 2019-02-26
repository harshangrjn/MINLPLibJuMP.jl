using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.76812134)
set_upper_bound(x[1], 0.76832134)
set_lower_bound(x[2], -0.0001)
set_upper_bound(x[2], 0.0001)
set_lower_bound(x[3], -0.0001)
set_upper_bound(x[3], 0.0001)
set_lower_bound(x[4], 0.22935285)
set_upper_bound(x[4], 0.22955285)
set_lower_bound(x[5], 0.64008433)
set_upper_bound(x[5], 0.64028433)
set_lower_bound(x[6], 0.9999)
set_upper_bound(x[6], 1.0001)
set_lower_bound(x[7], -1.0001)
set_upper_bound(x[7], -0.9999)
set_lower_bound(x[8], 0.97321978)
set_upper_bound(x[8], 0.97341978)
set_lower_bound(x[9], 1.59486034)
set_upper_bound(x[9], 1.59506034)
set_lower_bound(x[10], 4.57096319)
set_upper_bound(x[10], 4.57116319)
set_lower_bound(x[11], 1.52777768)
set_upper_bound(x[11], 1.52797768)
set_lower_bound(x[12], 2.11498825)
set_upper_bound(x[12], 2.11518825)
set_lower_bound(x[13], 8.40501667)
set_upper_bound(x[13], 8.40521667)
set_lower_bound(x[14], 3.94668702)
set_upper_bound(x[14], 3.94688702)
set_lower_bound(x[15], 1.52776986)
set_upper_bound(x[15], 1.52796986)
set_lower_bound(x[16], 5.2962237)
set_upper_bound(x[16], 5.2964237)
set_lower_bound(x[17], 0.0)
set_upper_bound(x[17], 6.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[1]+x[5]*x[5] == 1.0)
@NLconstraint(m, e2, x[2]*x[2]+x[6]*x[6] == 1.0)
@NLconstraint(m, e3, x[3]*x[3]+x[7]*x[7] == 1.0)
@NLconstraint(m, e4, x[4]*x[4]+x[8]*x[8] == 1.0)
@NLconstraint(m, e5,  (x[9]-x[10])^2+ (x[13]-x[14])^2 >= 9.14304065868998)
@NLconstraint(m, e6,  (x[9]-x[11])^2+ (x[13]-x[15])^2 >= 9.7510791080618)
@NLconstraint(m, e7,  (x[9]-x[12])^2+ (x[13]-x[16])^2 >= 6.99042242511649)
@NLconstraint(m, e8,  (x[10]-x[11])^2+ (x[14]-x[15])^2 >= 8.7425966962023)
@NLconstraint(m, e9,  (x[10]-x[12])^2+ (x[14]-x[16])^2 >= 6.14076723866612)
@NLconstraint(m, e10,  (x[11]-x[12])^2+ (x[15]-x[16])^2 >= 6.6408404030355)
@NLconstraint(m, e11,  ((-2.2618103*x[2])-0.53391457*x[6]+x[9]-x[10])^2+ (0.53391457*x[2]-2.2618103*x[6]+x[13]-x[14])^2 >= 6.19929421238248)
@NLconstraint(m, e12,  (2.19573975*x[3]-0.73901367*x[7]+x[9]-x[11])^2+ (0.73901367*x[3]+2.19573975*x[7]+x[13]-x[15])^2 >= 5.68188819901575)
@NLconstraint(m, e13,  ((-1.51246471*x[4])-0.50413889*x[8]+x[9]-x[12])^2+ (0.50413889*x[4]-1.51246471*x[8]+x[13]-x[16])^2 >= 4.57875182887531)
@NLconstraint(m, e14,  (2.004776*x[2]-0.72583357*x[6]+x[9]-x[10])^2+ (0.72583357*x[2]+2.004776*x[6]+x[13]-x[14])^2 >= 5.28043255781187)
@NLconstraint(m, e15,  (1.70369466*x[7]-1.05295817*x[3]+x[9]-x[11])^2+ ((-1.70369466*x[3])-1.05295817*x[7]+x[13]-x[15])^2 >= 4.28373764963741)
@NLconstraint(m, e16,  (1.13481377*x[4]-0.74221243*x[8]+x[9]-x[12])^2+ (0.74221243*x[4]+1.13481377*x[8]+x[13]-x[16])^2 >= 3.61657041291719)
@NLconstraint(m, e17,  ((-3.678538*x[2])-0.86836815*x[6]+x[9]-x[10])^2+ (0.86836815*x[2]-3.678538*x[6]+x[13]-x[14])^2 >= 4.64568277391716)
@NLconstraint(m, e18,  (1.4988333*x[3]-0.35383487*x[7]+x[9]-x[11])^2+ (0.35383487*x[3]+1.4988333*x[7]+x[13]-x[15])^2 >= 7.66654521892024)
@NLconstraint(m, e19,  ((-2.29809757*x[4])-0.76602798*x[8]+x[9]-x[12])^2+ (0.76602798*x[4]-2.29809757*x[8]+x[13]-x[16])^2 >= 3.52655622149605)
@NLconstraint(m, e20,  ((-4.56588745*x[2])-1.07782682*x[6]+x[9]-x[10])^2+ (1.07782682*x[2]-4.56588745*x[6]+x[13]-x[14])^2 >= 3.78661830677072)
@NLconstraint(m, e21,  ((-1.26571655*x[3])-1.26574707*x[7]+x[9]-x[11])^2+ (1.26574707*x[3]-1.26571655*x[7]+x[13]-x[15])^2 >= 3.44822798340144)
@NLconstraint(m, e22,  (0.32958056*x[4]+1.25187871*x[8]+x[9]-x[12])^2+ (0.32958056*x[8]-1.25187871*x[4]+x[13]-x[16])^2 >= 3.38649367336641)
@NLconstraint(m, e23,  (2.19573975*x[3]-0.73901367*x[7]+x[10]-x[11])^2+ (0.73901367*x[3]+2.19573975*x[7]+x[14]-x[15])^2 >= 4.91858188306951)
@NLconstraint(m, e24,  ((-1.51246471*x[4])-0.50413889*x[8]+x[10]-x[12])^2+ (0.50413889*x[4]-1.51246471*x[8]+x[14]-x[16])^2 >= 3.89635333663979)
@NLconstraint(m, e25,  (1.70369466*x[7]-1.05295817*x[3]+x[10]-x[11])^2+ ((-1.70369466*x[3])-1.05295817*x[7]+x[14]-x[15])^2 >= 3.62459025836435)
@NLconstraint(m, e26,  (1.13481377*x[4]-0.74221243*x[8]+x[10]-x[12])^2+ (0.74221243*x[4]+1.13481377*x[8]+x[14]-x[16])^2 >= 3.01315689195188)
@NLconstraint(m, e27,  (1.4988333*x[3]-0.35383487*x[7]+x[10]-x[11])^2+ (0.35383487*x[3]+1.4988333*x[7]+x[14]-x[15])^2 >= 6.77544834379234)
@NLconstraint(m, e28,  ((-2.29809757*x[4])-0.76602798*x[8]+x[10]-x[12])^2+ (0.76602798*x[4]-2.29809757*x[8]+x[14]-x[16])^2 >= 2.93104391317147)
@NLconstraint(m, e29,  ((-1.26571655*x[3])-1.26574707*x[7]+x[10]-x[11])^2+ (1.26574707*x[3]-1.26571655*x[7]+x[14]-x[15])^2 >= 2.85967357432216)
@NLconstraint(m, e30,  (0.32958056*x[4]+1.25187871*x[8]+x[10]-x[12])^2+ (0.32958056*x[8]-1.25187871*x[4]+x[14]-x[16])^2 >= 2.80347899852212)
@NLconstraint(m, e31,  ((-1.51246471*x[4])-0.50413889*x[8]+x[11]-x[12])^2+ (0.50413889*x[4]-1.51246471*x[8]+x[15]-x[16])^2 >= 4.29668195813785)
@NLconstraint(m, e32,  (1.13481377*x[4]-0.74221243*x[8]+x[11]-x[12])^2+ (0.74221243*x[4]+1.13481377*x[8]+x[15]-x[16])^2 >= 3.36638234732535)
@NLconstraint(m, e33,  ((-2.29809757*x[4])-0.76602798*x[8]+x[11]-x[12])^2+ (0.76602798*x[4]-2.29809757*x[8]+x[15]-x[16])^2 >= 3.27955743251943)
@NLconstraint(m, e34,  (0.32958056*x[4]+1.25187871*x[8]+x[11]-x[12])^2+ (0.32958056*x[8]-1.25187871*x[4]+x[15]-x[16])^2 >= 3.1445394784308)
@NLconstraint(m, e35,  (2.23754946*x[1]+0.80999894*x[5]+x[9]-x[10])^2+ (2.23754946*x[5]-0.80999894*x[1]+x[13]-x[14])^2 >= 4.90059865336698)
@NLconstraint(m, e36,  (2.23754946*x[1]+0.80999894*x[5]+x[9]-x[11])^2+ (2.23754946*x[5]-0.80999894*x[1]+x[13]-x[15])^2 >= 5.34837425909946)
@NLconstraint(m, e37,  (2.23754946*x[1]+0.80999894*x[5]+x[9]-x[12])^2+ (2.23754946*x[5]-0.80999894*x[1]+x[13]-x[16])^2 >= 3.36327778795322)
@NLconstraint(m, e38,  (2.2618103*x[2]+0.53391457*x[6]+x[10]-x[11])^2+ (2.2618103*x[6]-0.53391457*x[2]+x[14]-x[15])^2 >= 5.87034894812809)
@NLconstraint(m, e39,  (2.2618103*x[2]+0.53391457*x[6]+x[10]-x[12])^2+ (2.2618103*x[6]-0.53391457*x[2]+x[14]-x[16])^2 >= 3.77971615074362)
@NLconstraint(m, e40,  (0.73901367*x[7]-2.19573975*x[3]+x[11]-x[12])^2+ ((-0.73901367*x[3])-2.19573975*x[7]+x[15]-x[16])^2 >= 3.37817849399755)
@NLconstraint(m, e41,  (0.94998067*x[5]-2.02823851*x[1]+x[9]-x[10])^2+ ((-0.94998067*x[1])-2.02823851*x[5]+x[13]-x[14])^2 >= 4.30050322456432)
@NLconstraint(m, e42,  (0.94998067*x[5]-2.02823851*x[1]+x[9]-x[11])^2+ ((-0.94998067*x[1])-2.02823851*x[5]+x[13]-x[15])^2 >= 4.72058674638068)
@NLconstraint(m, e43,  (0.94998067*x[5]-2.02823851*x[1]+x[9]-x[12])^2+ ((-0.94998067*x[1])-2.02823851*x[5]+x[13]-x[16])^2 >= 2.8695006171168)
@NLconstraint(m, e44,  (0.72583357*x[6]-2.004776*x[2]+x[10]-x[11])^2+ ((-0.72583357*x[2])-2.004776*x[6]+x[14]-x[15])^2 >= 4.97718827747847)
@NLconstraint(m, e45,  (0.72583357*x[6]-2.004776*x[2]+x[10]-x[12])^2+ ((-0.72583357*x[2])-2.004776*x[6]+x[14]-x[16])^2 >= 3.07031067379204)
@NLconstraint(m, e46,  (1.05295817*x[3]-1.70369466*x[7]+x[11]-x[12])^2+ (1.70369466*x[3]+1.05295817*x[7]+x[15]-x[16])^2 >= 2.32266817243446)
@NLconstraint(m, e47,  (3.33860684*x[1]+1.20864892*x[5]+x[9]-x[10])^2+ (3.33860684*x[5]-1.20864892*x[1]+x[13]-x[14])^2 >= 3.29457788174978)
@NLconstraint(m, e48,  (3.33860684*x[1]+1.20864892*x[5]+x[9]-x[11])^2+ (3.33860684*x[5]-1.20864892*x[1]+x[13]-x[15])^2 >= 3.66348354688304)
@NLconstraint(m, e49,  (3.33860684*x[1]+1.20864892*x[5]+x[9]-x[12])^2+ (3.33860684*x[5]-1.20864892*x[1]+x[13]-x[16])^2 >= 2.06006249373557)
@NLconstraint(m, e50,  (3.678538*x[2]+0.86836815*x[6]+x[10]-x[11])^2+ (3.678538*x[6]-0.86836815*x[2]+x[14]-x[15])^2 >= 4.36152612304143)
@NLconstraint(m, e51,  (3.678538*x[2]+0.86836815*x[6]+x[10]-x[12])^2+ (3.678538*x[6]-0.86836815*x[2]+x[14]-x[16])^2 >= 2.59111998904718)
@NLconstraint(m, e52,  (0.35383487*x[7]-1.4988333*x[3]+x[11]-x[12])^2+ ((-0.35383487*x[3])-1.4988333*x[7]+x[15]-x[16])^2 >= 4.94245688146096)
@NLconstraint(m, e53,  ((-0.16906953*x[1])-1.8608485*x[5]+x[9]-x[10])^2+ (1.8608485*x[1]-0.16906953*x[5]+x[13]-x[14])^2 >= 2.89884989278485)
@NLconstraint(m, e54,  ((-0.16906953*x[1])-1.8608485*x[5]+x[9]-x[11])^2+ (1.8608485*x[1]-0.16906953*x[5]+x[13]-x[15])^2 >= 3.2454980184465)
@NLconstraint(m, e55,  ((-0.16906953*x[1])-1.8608485*x[5]+x[9]-x[12])^2+ (1.8608485*x[1]-0.16906953*x[5]+x[13]-x[16])^2 >= 1.74978790836434)
@NLconstraint(m, e56,  (4.56588745*x[2]+1.07782682*x[6]+x[10]-x[11])^2+ (4.56588745*x[6]-1.07782682*x[2]+x[14]-x[15])^2 >= 3.53051180114199)
@NLconstraint(m, e57,  (4.56588745*x[2]+1.07782682*x[6]+x[10]-x[12])^2+ (4.56588745*x[6]-1.07782682*x[2]+x[14]-x[16])^2 >= 1.96065673900432)
@NLconstraint(m, e58,  (1.26571655*x[3]+1.26574707*x[7]+x[11]-x[12])^2+ (1.26571655*x[7]-1.26574707*x[3]+x[15]-x[16])^2 >= 1.71938052247728)
@NLconstraint(m, e59,  (2.23754946*x[1]-2.2618103*x[2]+0.80999894*x[5]-0.53391457*x[6]+x[9]-x[10])^2+ (0.53391457*x[2]-0.80999894*x[1]+2.23754946*x[5]-2.2618103*x[6]+x[13]-x[14])^2 >= 2.82180074221229)
@NLconstraint(m, e60,  (2.23754946*x[1]+2.19573975*x[3]+0.80999894*x[5]-0.73901367*x[7]+x[9]-x[11])^2+ (0.73901367*x[3]-0.80999894*x[1]+2.23754946*x[5]+2.19573975*x[7]+x[13]-x[15])^2 >= 2.47638883157425)
@NLconstraint(m, e61,  (2.23754946*x[1]-1.51246471*x[4]+0.80999894*x[5]-0.50413889*x[8]+x[9]-x[12])^2+ (0.50413889*x[4]-0.80999894*x[1]+2.23754946*x[5]-1.51246471*x[8]+x[13]-x[16])^2 >= 1.76832886430897)
@NLconstraint(m, e62,  (2.23754946*x[1]+2.004776*x[2]+0.80999894*x[5]-0.72583357*x[6]+x[9]-x[10])^2+ (0.72583357*x[2]-0.80999894*x[1]+2.23754946*x[5]+2.004776*x[6]+x[13]-x[14])^2 >= 2.21385423636092)
@NLconstraint(m, e63,  (2.23754946*x[1]-1.05295817*x[3]+0.80999894*x[5]+1.70369466*x[7]+x[9]-x[11])^2+ ((-0.80999894*x[1])-1.70369466*x[3]+2.23754946*x[5]-1.05295817*x[7]+x[13]-x[15])^2 >= 1.58685081680513)
@NLconstraint(m, e64,  (2.23754946*x[1]+1.13481377*x[4]+0.80999894*x[5]-0.74221243*x[8]+x[9]-x[12])^2+ (0.74221243*x[4]-0.80999894*x[1]+2.23754946*x[5]+1.13481377*x[8]+x[13]-x[16])^2 >= 1.19183447958536)
@NLconstraint(m, e65,  (2.23754946*x[1]-3.678538*x[2]+0.80999894*x[5]-0.86836815*x[6]+x[9]-x[10])^2+ (0.86836815*x[2]-0.80999894*x[1]+2.23754946*x[5]-3.678538*x[6]+x[13]-x[14])^2 >= 1.8100151899608)
@NLconstraint(m, e66,  (2.23754946*x[1]+1.4988333*x[3]+0.80999894*x[5]-0.35383487*x[7]+x[9]-x[11])^2+ (0.35383487*x[3]-0.80999894*x[1]+2.23754946*x[5]+1.4988333*x[7]+x[13]-x[15])^2 >= 3.8370390233701)
@NLconstraint(m, e67,  (2.23754946*x[1]-2.29809757*x[4]+0.80999894*x[5]-0.76602798*x[8]+x[9]-x[12])^2+ (0.76602798*x[4]-0.80999894*x[1]+2.23754946*x[5]-2.29809757*x[8]+x[13]-x[16])^2 >= 1.14040225125859)
@NLconstraint(m, e68,  (2.23754946*x[1]-4.56588745*x[2]+0.80999894*x[5]-1.07782682*x[6]+x[9]-x[10])^2+ (1.07782682*x[2]-0.80999894*x[1]+2.23754946*x[5]-4.56588745*x[6]+x[13]-x[14])^2 >= 1.29028462177644)
@NLconstraint(m, e69,  (2.23754946*x[1]-1.26571655*x[3]+0.80999894*x[5]-1.26574707*x[7]+x[9]-x[11])^2+ (1.26574707*x[3]-0.80999894*x[1]+2.23754946*x[5]-1.26571655*x[7]+x[13]-x[15])^2 >= 1.09604973614512)
@NLconstraint(m, e70,  (2.23754946*x[1]+0.32958056*x[4]+0.80999894*x[5]+1.25187871*x[8]+x[9]-x[12])^2+ ((-0.80999894*x[1])-1.25187871*x[4]+2.23754946*x[5]+0.32958056*x[8]+x[13]-x[16])^2 >= 1.06136618800264)
@NLconstraint(m, e71,  (2.2618103*x[2]+2.19573975*x[3]+0.53391457*x[6]-0.73901367*x[7]+x[10]-x[11])^2+ (0.73901367*x[3]-0.53391457*x[2]+2.2618103*x[6]+2.19573975*x[7]+x[14]-x[15])^2 >= 2.83545074303931)
@NLconstraint(m, e72,  (2.2618103*x[2]-1.51246471*x[4]+0.53391457*x[6]-0.50413889*x[8]+x[10]-x[12])^2+ (0.50413889*x[4]-0.53391457*x[2]+2.2618103*x[6]-1.51246471*x[8]+x[14]-x[16])^2 >= 2.07362975050671)
@NLconstraint(m, e73,  (2.2618103*x[2]-1.05295817*x[3]+0.53391457*x[6]+1.70369466*x[7]+x[10]-x[11])^2+ ((-0.53391457*x[2])-1.70369466*x[3]+2.2618103*x[6]-1.05295817*x[7]+x[14]-x[15])^2 >= 1.87670198542295)
@NLconstraint(m, e74,  (2.2618103*x[2]+1.13481377*x[4]+0.53391457*x[6]-0.74221243*x[8]+x[10]-x[12])^2+ (0.74221243*x[4]-0.53391457*x[2]+2.2618103*x[6]+1.13481377*x[8]+x[14]-x[16])^2 >= 1.44465202311677)
@NLconstraint(m, e75,  (2.2618103*x[2]+1.4988333*x[3]+0.53391457*x[6]-0.35383487*x[7]+x[10]-x[11])^2+ (0.35383487*x[3]-0.53391457*x[2]+2.2618103*x[6]+1.4988333*x[7]+x[14]-x[15])^2 >= 4.28101424934544)
@NLconstraint(m, e76,  (2.2618103*x[2]-2.29809757*x[4]+0.53391457*x[6]-0.76602798*x[8]+x[10]-x[12])^2+ (0.76602798*x[4]-0.53391457*x[2]+2.2618103*x[6]-2.29809757*x[8]+x[14]-x[16])^2 >= 1.38796965613914)
@NLconstraint(m, e77,  (2.2618103*x[2]-1.26571655*x[3]+0.53391457*x[6]-1.26574707*x[7]+x[10]-x[11])^2+ (1.26574707*x[3]-0.53391457*x[2]+2.2618103*x[6]-1.26571655*x[7]+x[14]-x[15])^2 >= 1.338993808201)
@NLconstraint(m, e78,  (2.2618103*x[2]+0.32958056*x[4]+0.53391457*x[6]+1.25187871*x[8]+x[10]-x[12])^2+ ((-0.53391457*x[2])-1.25187871*x[4]+2.2618103*x[6]+0.32958056*x[8]+x[14]-x[16])^2 >= 1.3006292589078)
@NLconstraint(m, e79,  ((-2.19573975*x[3])-1.51246471*x[4]+0.73901367*x[7]-0.50413889*x[8]+x[11]-x[12])^2+ (0.50413889*x[4]-0.73901367*x[3]-2.19573975*x[7]-1.51246471*x[8]+x[15]-x[16])^2 >= 1.77913794895489)
@NLconstraint(m, e80,  (1.13481377*x[4]-2.19573975*x[3]+0.73901367*x[7]-0.74221243*x[8]+x[11]-x[12])^2+ (0.74221243*x[4]-0.73901367*x[3]-2.19573975*x[7]+1.13481377*x[8]+x[15]-x[16])^2 >= 1.20071134501506)
@NLconstraint(m, e81,  ((-2.19573975*x[3])-2.29809757*x[4]+0.73901367*x[7]-0.76602798*x[8]+x[11]-x[12])^2+ (0.76602798*x[4]-0.73901367*x[3]-2.19573975*x[7]-2.29809757*x[8]+x[15]-x[16])^2 >= 1.14908582833672)
@NLconstraint(m, e82,  (0.32958056*x[4]-2.19573975*x[3]+0.73901367*x[7]+1.25187871*x[8]+x[11]-x[12])^2+ ((-0.73901367*x[3])-1.25187871*x[4]-2.19573975*x[7]+0.32958056*x[8]+x[15]-x[16])^2 >= 1.06974403391218)
@NLconstraint(m, e83,  ((-2.02823851*x[1])-2.2618103*x[2]+0.94998067*x[5]-0.53391457*x[6]+x[9]-x[10])^2+ (0.53391457*x[2]-0.94998067*x[1]-2.02823851*x[5]-2.2618103*x[6]+x[13]-x[14])^2 >= 2.3711612126977)
@NLconstraint(m, e84,  (2.19573975*x[3]-2.02823851*x[1]+0.94998067*x[5]-0.73901367*x[7]+x[9]-x[11])^2+ (0.73901367*x[3]-0.94998067*x[1]-2.02823851*x[5]+2.19573975*x[7]+x[13]-x[15])^2 >= 2.05546844979025)
@NLconstraint(m, e85,  ((-2.02823851*x[1])-1.51246471*x[4]+0.94998067*x[5]-0.50413889*x[8]+x[9]-x[12])^2+ (0.50413889*x[4]-0.94998067*x[1]-2.02823851*x[5]-1.51246471*x[8]+x[13]-x[16])^2 >= 1.41567439278375)
@NLconstraint(m, e86,  (2.004776*x[2]-2.02823851*x[1]+0.94998067*x[5]-0.72583357*x[6]+x[9]-x[10])^2+ (0.72583357*x[2]-0.94998067*x[1]-2.02823851*x[5]+2.004776*x[6]+x[13]-x[14])^2 >= 1.81693825369979)
@NLconstraint(m, e87,  ((-2.02823851*x[1])-1.05295817*x[3]+0.94998067*x[5]+1.70369466*x[7]+x[9]-x[11])^2+ ((-0.94998067*x[1])-1.70369466*x[3]-2.02823851*x[5]-1.05295817*x[7]+x[13]-x[15])^2 >= 1.25381444275087)
@NLconstraint(m, e88,  (1.13481377*x[4]-2.02823851*x[1]+0.94998067*x[5]-0.74221243*x[8]+x[9]-x[12])^2+ (0.74221243*x[4]-0.94998067*x[1]-2.02823851*x[5]+1.13481377*x[8]+x[13]-x[16])^2 >= 0.905823513140712)
@NLconstraint(m, e89,  ((-2.02823851*x[1])-3.678538*x[2]+0.94998067*x[5]-0.86836815*x[6]+x[9]-x[10])^2+ (0.86836815*x[2]-0.94998067*x[1]-2.02823851*x[5]-3.678538*x[6]+x[13]-x[14])^2 >= 1.45299865856752)
@NLconstraint(m, e90,  (1.4988333*x[3]-2.02823851*x[1]+0.94998067*x[5]-0.35383487*x[7]+x[9]-x[11])^2+ (0.35383487*x[3]-0.94998067*x[1]-2.02823851*x[5]+1.4988333*x[7]+x[13]-x[15])^2 >= 3.30829546151632)
@NLconstraint(m, e91,  ((-2.02823851*x[1])-2.29809757*x[4]+0.94998067*x[5]-0.76602798*x[8]+x[9]-x[12])^2+ (0.76602798*x[4]-0.94998067*x[1]-2.02823851*x[5]-2.29809757*x[8]+x[13]-x[16])^2 >= 0.861057926534485)
@NLconstraint(m, e92,  ((-2.02823851*x[1])-4.56588745*x[2]+0.94998067*x[5]-1.07782682*x[6]+x[9]-x[10])^2+ (1.07782682*x[2]-0.94998067*x[1]-2.02823851*x[5]-4.56588745*x[6]+x[13]-x[14])^2 >= 0.991902160466123)
@NLconstraint(m, e93,  ((-2.02823851*x[1])-1.26571655*x[3]+0.94998067*x[5]-1.26574707*x[7]+x[9]-x[11])^2+ (1.26574707*x[3]-0.94998067*x[1]-2.02823851*x[5]-1.26571655*x[7]+x[13]-x[15])^2 >= 0.822576133233629)
@NLconstraint(m, e94,  (0.32958056*x[4]-2.02823851*x[1]+0.94998067*x[5]+1.25187871*x[8]+x[9]-x[12])^2+ ((-0.94998067*x[1])-1.25187871*x[4]-2.02823851*x[5]+0.32958056*x[8]+x[13]-x[16])^2 >= 0.792566731333109)
@NLconstraint(m, e95,  (2.19573975*x[3]-2.004776*x[2]+0.72583357*x[6]-0.73901367*x[7]+x[10]-x[11])^2+ (0.73901367*x[3]-0.72583357*x[2]-2.004776*x[6]+2.19573975*x[7]+x[14]-x[15])^2 >= 2.22594661098764)
@NLconstraint(m, e96,  ((-2.004776*x[2])-1.51246471*x[4]+0.72583357*x[6]-0.50413889*x[8]+x[10]-x[12])^2+ (0.50413889*x[4]-0.72583357*x[2]-2.004776*x[6]-1.51246471*x[8]+x[14]-x[16])^2 >= 1.55773194305934)
@NLconstraint(m, e97,  ((-2.004776*x[2])-1.05295817*x[3]+0.72583357*x[6]+1.70369466*x[7]+x[10]-x[11])^2+ ((-0.72583357*x[2])-1.70369466*x[3]-2.004776*x[6]-1.05295817*x[7]+x[14]-x[15])^2 >= 1.38770454439604)
@NLconstraint(m, e98,  (1.13481377*x[4]-2.004776*x[2]+0.72583357*x[6]-0.74221243*x[8]+x[10]-x[12])^2+ (0.74221243*x[4]-0.72583357*x[2]-2.004776*x[6]+1.13481377*x[8]+x[14]-x[16])^2 >= 1.02013589571577)
@NLconstraint(m, e99,  (1.4988333*x[3]-2.004776*x[2]+0.72583357*x[6]-0.35383487*x[7]+x[10]-x[11])^2+ (0.35383487*x[3]-0.72583357*x[2]-2.004776*x[6]+1.4988333*x[7]+x[14]-x[15])^2 >= 3.523662801478)
@NLconstraint(m, e100,  ((-2.004776*x[2])-2.29809757*x[4]+0.72583357*x[6]-0.76602798*x[8]+x[10]-x[12])^2+ (0.76602798*x[4]-0.72583357*x[2]-2.004776*x[6]-2.29809757*x[8]+x[14]-x[16])^2 >= 0.972594838456973)
@NLconstraint(m, e101,  ((-2.004776*x[2])-1.26571655*x[3]+0.72583357*x[6]-1.26574707*x[7]+x[10]-x[11])^2+ (1.26574707*x[3]-0.72583357*x[2]-2.004776*x[6]-1.26571655*x[7]+x[14]-x[15])^2 >= 0.9316689335954)
@NLconstraint(m, e102,  (0.32958056*x[4]-2.004776*x[2]+0.72583357*x[6]+1.25187871*x[8]+x[10]-x[12])^2+ ((-0.72583357*x[2])-1.25187871*x[4]-2.004776*x[6]+0.32958056*x[8]+x[14]-x[16])^2 >= 0.899713581055229)
@NLconstraint(m, e103,  (1.05295817*x[3]-1.51246471*x[4]-1.70369466*x[7]-0.50413889*x[8]+x[11]-x[12])^2+ (1.70369466*x[3]+0.50413889*x[4]+1.05295817*x[7]-1.51246471*x[8]+x[15]-x[16])^2 >= 1.04017838620265)
@NLconstraint(m, e104,  (1.05295817*x[3]+1.13481377*x[4]-1.70369466*x[7]-0.74221243*x[8]+x[11]-x[12])^2+ (1.70369466*x[3]+0.74221243*x[4]+1.05295817*x[7]+1.13481377*x[8]+x[15]-x[16])^2 >= 0.611239088033196)
@NLconstraint(m, e105,  (1.05295817*x[3]-2.29809757*x[4]-1.70369466*x[7]-0.76602798*x[8]+x[11]-x[12])^2+ (1.70369466*x[3]+0.76602798*x[4]+1.05295817*x[7]-2.29809757*x[8]+x[15]-x[16])^2 >= 0.574567441325153)
@NLconstraint(m, e106,  (1.05295817*x[3]+0.32958056*x[4]-1.70369466*x[7]+1.25187871*x[8]+x[11]-x[12])^2+ (1.70369466*x[3]-1.25187871*x[4]+1.05295817*x[7]+0.32958056*x[8]+x[15]-x[16])^2 >= 0.518878723269817)
@NLconstraint(m, e107,  (3.33860684*x[1]-2.2618103*x[2]+1.20864892*x[5]-0.53391457*x[6]+x[9]-x[10])^2+ (0.53391457*x[2]-1.20864892*x[1]+3.33860684*x[5]-2.2618103*x[6]+x[13]-x[14])^2 >= 1.64144594556313)
@NLconstraint(m, e108,  (3.33860684*x[1]+2.19573975*x[3]+1.20864892*x[5]-0.73901367*x[7]+x[9]-x[11])^2+ (0.73901367*x[3]-1.20864892*x[1]+3.33860684*x[5]+2.19573975*x[7]+x[13]-x[15])^2 >= 1.38067726449462)
@NLconstraint(m, e109,  (3.33860684*x[1]-1.51246471*x[4]+1.20864892*x[5]-0.50413889*x[8]+x[9]-x[12])^2+ (0.50413889*x[4]-1.20864892*x[1]+3.33860684*x[5]-1.51246471*x[8]+x[13]-x[16])^2 >= 0.86704572317841)
@NLconstraint(m, e110,  (3.33860684*x[1]+2.004776*x[2]+1.20864892*x[5]-0.72583357*x[6]+x[9]-x[10])^2+ (0.72583357*x[2]-1.20864892*x[1]+3.33860684*x[5]+2.004776*x[6]+x[13]-x[14])^2 >= 1.18650969932047)
@NLconstraint(m, e111,  (3.33860684*x[1]-1.05295817*x[3]+1.20864892*x[5]+1.70369466*x[7]+x[9]-x[11])^2+ ((-1.20864892*x[1])-1.70369466*x[3]+3.33860684*x[5]-1.05295817*x[7]+x[13]-x[15])^2 >= 0.74144206154209)
@NLconstraint(m, e112,  (3.33860684*x[1]+1.13481377*x[4]+1.20864892*x[5]-0.74221243*x[8]+x[9]-x[12])^2+ (0.74221243*x[4]-1.20864892*x[1]+3.33860684*x[5]+1.13481377*x[8]+x[13]-x[16])^2 >= 0.480358985396422)
@NLconstraint(m, e113,  (3.33860684*x[1]-3.678538*x[2]+1.20864892*x[5]-0.86836815*x[6]+x[9]-x[10])^2+ (0.86836815*x[2]-1.20864892*x[1]+3.33860684*x[5]-3.678538*x[6]+x[13]-x[14])^2 >= 0.896308447785062)
@NLconstraint(m, e114,  (3.33860684*x[1]+1.4988333*x[3]+1.20864892*x[5]-0.35383487*x[7]+x[9]-x[11])^2+ (0.35383487*x[3]-1.20864892*x[1]+3.33860684*x[5]+1.4988333*x[7]+x[13]-x[15])^2 >= 2.43423580392221)
@NLconstraint(m, e115,  (3.33860684*x[1]-2.29809757*x[4]+1.20864892*x[5]-0.76602798*x[8]+x[9]-x[12])^2+ (0.76602798*x[4]-1.20864892*x[1]+3.33860684*x[5]-2.29809757*x[8]+x[13]-x[16])^2 >= 0.447914047375716)
@NLconstraint(m, e116,  (3.33860684*x[1]-4.56588745*x[2]+1.20864892*x[5]-1.07782682*x[6]+x[9]-x[10])^2+ (1.07782682*x[2]-1.20864892*x[1]+3.33860684*x[5]-4.56588745*x[6]+x[13]-x[14])^2 >= 0.543573821059668)
@NLconstraint(m, e117,  (3.33860684*x[1]-1.26571655*x[3]+1.20864892*x[5]-1.26574707*x[7]+x[9]-x[11])^2+ (1.26574707*x[3]-1.20864892*x[1]+3.33860684*x[5]-1.26571655*x[7]+x[13]-x[15])^2 >= 0.420281959733065)
@NLconstraint(m, e118,  (3.33860684*x[1]+0.32958056*x[4]+1.20864892*x[5]+1.25187871*x[8]+x[9]-x[12])^2+ ((-1.20864892*x[1])-1.25187871*x[4]+3.33860684*x[5]+0.32958056*x[8]+x[13]-x[16])^2 >= 0.398910867149088)
@NLconstraint(m, e119,  (3.678538*x[2]+2.19573975*x[3]+0.86836815*x[6]-0.73901367*x[7]+x[10]-x[11])^2+ (0.73901367*x[3]-0.86836815*x[2]+3.678538*x[6]+2.19573975*x[7]+x[14]-x[15])^2 >= 1.82095074538417)
@NLconstraint(m, e120,  (3.678538*x[2]-1.51246471*x[4]+0.86836815*x[6]-0.50413889*x[8]+x[10]-x[12])^2+ (0.50413889*x[4]-0.86836815*x[2]+3.678538*x[6]-1.51246471*x[8]+x[14]-x[16])^2 >= 1.22225570535943)
@NLconstraint(m, e121,  (3.678538*x[2]-1.05295817*x[3]+0.86836815*x[6]+1.70369466*x[7]+x[10]-x[11])^2+ ((-0.86836815*x[2])-1.70369466*x[3]+3.678538*x[6]-1.05295817*x[7]+x[14]-x[15])^2 >= 1.07220669460874)
@NLconstraint(m, e122,  (3.678538*x[2]+1.13481377*x[4]+0.86836815*x[6]-0.74221243*x[8]+x[10]-x[12])^2+ (0.74221243*x[4]-0.86836815*x[2]+3.678538*x[6]+1.13481377*x[8]+x[14]-x[16])^2 >= 0.752527084932576)
@NLconstraint(m, e123,  (3.678538*x[2]+1.4988333*x[3]+0.86836815*x[6]-0.35383487*x[7]+x[10]-x[11])^2+ (0.35383487*x[3]-0.86836815*x[2]+3.678538*x[6]+1.4988333*x[7]+x[14]-x[15])^2 >= 3.00886356066991)
@NLconstraint(m, e124,  (3.678538*x[2]-2.29809757*x[4]+0.86836815*x[6]-0.76602798*x[8]+x[10]-x[12])^2+ (0.76602798*x[4]-0.86836815*x[2]+3.678538*x[6]-2.29809757*x[8]+x[14]-x[16])^2 >= 0.711775103656523)
@NLconstraint(m, e125,  (3.678538*x[2]-1.26571655*x[3]+0.86836815*x[6]-1.26574707*x[7]+x[10]-x[11])^2+ (1.26574707*x[3]-0.86836815*x[2]+3.678538*x[6]-1.26571655*x[7]+x[14]-x[15])^2 >= 0.676827737635068)
@NLconstraint(m, e126,  (3.678538*x[2]+0.32958056*x[4]+0.86836815*x[6]+1.25187871*x[8]+x[10]-x[12])^2+ ((-0.86836815*x[2])-1.25187871*x[4]+3.678538*x[6]+0.32958056*x[8]+x[14]-x[16])^2 >= 0.649632373005063)
@NLconstraint(m, e127,  ((-1.4988333*x[3])-1.51246471*x[4]+0.35383487*x[7]-0.50413889*x[8]+x[11]-x[12])^2+ (0.50413889*x[4]-0.35383487*x[3]-1.4988333*x[7]-1.51246471*x[8]+x[15]-x[16])^2 >= 2.95504636615653)
@NLconstraint(m, e128,  (1.13481377*x[4]-1.4988333*x[3]+0.35383487*x[7]-0.74221243*x[8]+x[11]-x[12])^2+ (0.74221243*x[4]-0.35383487*x[3]-1.4988333*x[7]+1.13481377*x[8]+x[15]-x[16])^2 >= 2.19321669373364)
@NLconstraint(m, e129,  ((-1.4988333*x[3])-2.29809757*x[4]+0.35383487*x[7]-0.76602798*x[8]+x[11]-x[12])^2+ (0.76602798*x[4]-0.35383487*x[3]-1.4988333*x[7]-2.29809757*x[8]+x[15]-x[16])^2 >= 2.12324456478535)
@NLconstraint(m, e130,  (0.32958056*x[4]-1.4988333*x[3]+0.35383487*x[7]+1.25187871*x[8]+x[11]-x[12])^2+ ((-0.35383487*x[3])-1.25187871*x[4]-1.4988333*x[7]+0.32958056*x[8]+x[15]-x[16])^2 >= 2.01488327092691)
@NLconstraint(m, e131,  ((-0.16906953*x[1])-2.2618103*x[2]-1.8608485*x[5]-0.53391457*x[6]+x[9]-x[10])^2+ (1.8608485*x[1]+0.53391457*x[2]-0.16906953*x[5]-2.2618103*x[6]+x[13]-x[14])^2 >= 1.36584328150128)
@NLconstraint(m, e132,  (2.19573975*x[3]-0.16906953*x[1]-1.8608485*x[5]-0.73901367*x[7]+x[9]-x[11])^2+ (1.8608485*x[1]+0.73901367*x[3]-0.16906953*x[5]+2.19573975*x[7]+x[13]-x[15])^2 >= 1.1289613944234)
@NLconstraint(m, e133,  ((-0.16906953*x[1])-1.51246471*x[4]-1.8608485*x[5]-0.50413889*x[8]+x[9]-x[12])^2+ (1.8608485*x[1]+0.50413889*x[4]-0.16906953*x[5]-1.51246471*x[8]+x[13]-x[16])^2 >= 0.670198645096692)
@NLconstraint(m, e134,  (2.004776*x[2]-0.16906953*x[1]-1.8608485*x[5]-0.72583357*x[6]+x[9]-x[10])^2+ (1.8608485*x[1]+0.72583357*x[2]-0.16906953*x[5]+2.004776*x[6]+x[13]-x[14])^2 >= 0.954087388469561)
@NLconstraint(m, e135,  ((-0.16906953*x[1])-1.05295817*x[3]-1.8608485*x[5]+1.70369466*x[7]+x[9]-x[11])^2+ (1.8608485*x[1]-1.70369466*x[3]-0.16906953*x[5]-1.05295817*x[7]+x[13]-x[15])^2 >= 0.56036304844748)
@NLconstraint(m, e136,  (1.13481377*x[4]-0.16906953*x[1]-1.8608485*x[5]-0.74221243*x[8]+x[9]-x[12])^2+ (1.8608485*x[1]+0.74221243*x[4]-0.16906953*x[5]+1.13481377*x[8]+x[13]-x[16])^2 >= 0.337076689558964)
@NLconstraint(m, e137,  ((-0.16906953*x[1])-3.678538*x[2]-1.8608485*x[5]-0.86836815*x[6]+x[9]-x[10])^2+ (1.8608485*x[1]+0.86836815*x[2]-0.16906953*x[5]-3.678538*x[6]+x[13]-x[14])^2 >= 0.695955359827572)
@NLconstraint(m, e138,  (1.4988333*x[3]-0.16906953*x[1]-1.8608485*x[5]-0.35383487*x[7]+x[9]-x[11])^2+ (1.8608485*x[1]+0.35383487*x[3]-0.16906953*x[5]+1.4988333*x[7]+x[13]-x[15])^2 >= 2.09585694764795)
@NLconstraint(m, e139,  ((-0.16906953*x[1])-2.29809757*x[4]-1.8608485*x[5]-0.76602798*x[8]+x[9]-x[12])^2+ (1.8608485*x[1]+0.76602798*x[4]-0.16906953*x[5]-2.29809757*x[8]+x[13]-x[16])^2 >= 0.30999007132695)
@NLconstraint(m, e140,  ((-0.16906953*x[1])-4.56588745*x[2]-1.8608485*x[5]-1.07782682*x[6]+x[9]-x[10])^2+ (1.8608485*x[1]+1.07782682*x[2]-0.16906953*x[5]-4.56588745*x[6]+x[13]-x[14])^2 >= 0.39034792415089)
@NLconstraint(m, e141,  ((-0.16906953*x[1])-1.26571655*x[3]-1.8608485*x[5]-1.26574707*x[7]+x[9]-x[11])^2+ (1.8608485*x[1]+1.26574707*x[3]-0.16906953*x[5]-1.26571655*x[7]+x[13]-x[15])^2 >= 0.287076582070278)
@NLconstraint(m, e142,  (0.32958056*x[4]-0.16906953*x[1]-1.8608485*x[5]+1.25187871*x[8]+x[9]-x[12])^2+ (1.8608485*x[1]-1.25187871*x[4]-0.16906953*x[5]+0.32958056*x[8]+x[13]-x[16])^2 >= 0.269462339089664)
@NLconstraint(m, e143,  (4.56588745*x[2]+2.19573975*x[3]+1.07782682*x[6]-0.73901367*x[7]+x[10]-x[11])^2+ (0.73901367*x[3]-1.07782682*x[2]+4.56588745*x[6]+2.19573975*x[7]+x[14]-x[15])^2 >= 1.2995201784257)
@NLconstraint(m, e144,  (4.56588745*x[2]-1.51246471*x[4]+1.07782682*x[6]-0.50413889*x[8]+x[10]-x[12])^2+ (0.50413889*x[4]-1.07782682*x[2]+4.56588745*x[6]-1.51246471*x[8]+x[14]-x[16])^2 >= 0.802987413948923)
@NLconstraint(m, e145,  (4.56588745*x[2]-1.05295817*x[3]+1.07782682*x[6]+1.70369466*x[7]+x[10]-x[11])^2+ ((-1.07782682*x[2])-1.70369466*x[3]+4.56588745*x[6]-1.05295817*x[7]+x[14]-x[15])^2 >= 0.682297558770303)
@NLconstraint(m, e146,  (4.56588745*x[2]+1.13481377*x[4]+1.07782682*x[6]-0.74221243*x[8]+x[10]-x[12])^2+ (0.74221243*x[4]-1.07782682*x[2]+4.56588745*x[6]+1.13481377*x[8]+x[14]-x[16])^2 >= 0.43299308408841)
@NLconstraint(m, e147,  (4.56588745*x[2]+1.4988333*x[3]+1.07782682*x[6]-0.35383487*x[7]+x[10]-x[11])^2+ (0.35383487*x[3]-1.07782682*x[2]+4.56588745*x[6]+1.4988333*x[7]+x[14]-x[15])^2 >= 2.32607190746811)
@NLconstraint(m, e148,  (4.56588745*x[2]-2.29809757*x[4]+1.07782682*x[6]-0.76602798*x[8]+x[10]-x[12])^2+ (0.76602798*x[4]-1.07782682*x[2]+4.56588745*x[6]-2.29809757*x[8]+x[14]-x[16])^2 >= 0.402217960747034)
@NLconstraint(m, e149,  (4.56588745*x[2]-1.26571655*x[3]+1.07782682*x[6]-1.26574707*x[7]+x[10]-x[11])^2+ (1.26574707*x[3]-1.07782682*x[2]+4.56588745*x[6]-1.26571655*x[7]+x[14]-x[15])^2 >= 0.376056331225862)
@NLconstraint(m, e150,  (4.56588745*x[2]+0.32958056*x[4]+1.07782682*x[6]+1.25187871*x[8]+x[10]-x[12])^2+ ((-1.07782682*x[2])-1.25187871*x[4]+4.56588745*x[6]+0.32958056*x[8]+x[14]-x[16])^2 >= 0.355855986723956)
@NLconstraint(m, e151,  (1.26571655*x[3]-1.51246471*x[4]+1.26574707*x[7]-0.50413889*x[8]+x[11]-x[12])^2+ (0.50413889*x[4]-1.26574707*x[3]+1.26571655*x[7]-1.51246471*x[8]+x[15]-x[16])^2 >= 0.651430797505517)
@NLconstraint(m, e152,  (1.26571655*x[3]+1.13481377*x[4]+1.26574707*x[7]-0.74221243*x[8]+x[11]-x[12])^2+ (0.74221243*x[4]-1.26574707*x[3]+1.26571655*x[7]+1.13481377*x[8]+x[15]-x[16])^2 >= 0.323805474567246)
@NLconstraint(m, e153,  (1.26571655*x[3]-2.29809757*x[4]+1.26574707*x[7]-0.76602798*x[8]+x[11]-x[12])^2+ (0.76602798*x[4]-1.26574707*x[3]+1.26571655*x[7]-2.29809757*x[8]+x[15]-x[16])^2 >= 0.297268708570132)
@NLconstraint(m, e154,  (1.26571655*x[3]+0.32958056*x[4]+1.26574707*x[7]+1.25187871*x[8]+x[11]-x[12])^2+ ((-1.26574707*x[3])-1.25187871*x[4]+1.26571655*x[7]+0.32958056*x[8]+x[15]-x[16])^2 >= 0.25761069747725)
@constraint(m, e155, 0.20410502*x[1]+2.24629156*x[5]-x[9] <= 0.0)
@constraint(m, e156, 3.94678752*x[2]-1.42893791*x[6]-x[10] <= 0.0)
@constraint(m, e157, -1.52786255*x[3]+2.47212728*x[7]-x[11] <= 0.0)
@constraint(m, e158, 0.43022284*x[4]+1.63415571*x[8]-x[12] <= 0.0)
@constraint(m, e159, 3.40502701*x[1]-1.59481484*x[5]-x[9] <= 0.0)
@constraint(m, e160, -6.05321248*x[2]-1.42893791*x[6]-x[10] <= 0.0)
@constraint(m, e161, 2.47213745*x[3]+0.47212728*x[7]-x[11] <= 0.0)
@constraint(m, e162, 1.60415853*x[4]-1.04912586*x[8]-x[12] <= 0.0)
@constraint(m, e163, -4.40522266*x[1]-1.59481484*x[5]-x[9] <= 0.0)
@constraint(m, e164, 0.19678752*x[2]+1.69606209*x[6]-x[10] <= 0.0)
@constraint(m, e165, 3.47213745*x[3]-1.52787272*x[7]-x[11] <= 0.0)
@constraint(m, e166, -3.14748592*x[4]-1.04912586*x[8]-x[12] <= 0.0)
@constraint(m, e167, -x[9] <= 0.0)
@constraint(m, e168, -x[10] <= 0.0)
@constraint(m, e169, -1.52786255*x[3]-1.52787272*x[7]-x[11] <= 0.0)
@constraint(m, e170, -x[12] <= 0.0)
@constraint(m, e171, 0.20410502*x[1]+2.24629156*x[5]-x[9]+x[17] >= 0.0)
@constraint(m, e172, 3.94678752*x[2]-1.42893791*x[6]-x[10]+x[17] >= 0.0)
@constraint(m, e173, -1.52786255*x[3]+2.47212728*x[7]-x[11]+x[17] >= 0.0)
@constraint(m, e174, 0.43022284*x[4]+1.63415571*x[8]-x[12]+x[17] >= 0.0)
@constraint(m, e175, 3.40502701*x[1]-1.59481484*x[5]-x[9]+x[17] >= 0.0)
@constraint(m, e176, -6.05321248*x[2]-1.42893791*x[6]-x[10]+x[17] >= 0.0)
@constraint(m, e177, 2.47213745*x[3]+0.47212728*x[7]-x[11]+x[17] >= 0.0)
@constraint(m, e178, 1.60415853*x[4]-1.04912586*x[8]-x[12]+x[17] >= 0.0)
@constraint(m, e179, -4.40522266*x[1]-1.59481484*x[5]-x[9]+x[17] >= 0.0)
@constraint(m, e180, 0.19678752*x[2]+1.69606209*x[6]-x[10]+x[17] >= 0.0)
@constraint(m, e181, 3.47213745*x[3]-1.52787272*x[7]-x[11]+x[17] >= 0.0)
@constraint(m, e182, -3.14748592*x[4]-1.04912586*x[8]-x[12]+x[17] >= 0.0)
@constraint(m, e183, -x[9]+x[17] >= 0.0)
@constraint(m, e184, -x[10]+x[17] >= 0.0)
@constraint(m, e185, -1.52786255*x[3]-1.52787272*x[7]-x[11]+x[17] >= 0.0)
@constraint(m, e186, -x[12]+x[17] >= 0.0)
@constraint(m, e187, -2.24629156*x[1]+0.20410502*x[5]-x[13] <= 0.0)
@constraint(m, e188, 1.42893791*x[2]+3.94678752*x[6]-x[14] <= 0.0)
@constraint(m, e189, -2.47212728*x[3]-1.52786255*x[7]-x[15] <= 0.0)
@constraint(m, e190, -1.63415571*x[4]+0.43022284*x[8]-x[16] <= 0.0)
@constraint(m, e191, 1.59481484*x[1]+3.40502701*x[5]-x[13] <= 0.0)
@constraint(m, e192, 1.42893791*x[2]-6.05321248*x[6]-x[14] <= 0.0)
@constraint(m, e193, -0.47212728*x[3]+2.47213745*x[7]-x[15] <= 0.0)
@constraint(m, e194, 1.04912586*x[4]+1.60415853*x[8]-x[16] <= 0.0)
@constraint(m, e195, 1.59481484*x[1]-4.40522266*x[5]-x[13] <= 0.0)
@constraint(m, e196, -1.69606209*x[2]+0.19678752*x[6]-x[14] <= 0.0)
@constraint(m, e197, 1.52787272*x[3]+3.47213745*x[7]-x[15] <= 0.0)
@constraint(m, e198, 1.04912586*x[4]-3.14748592*x[8]-x[16] <= 0.0)
@constraint(m, e199, -x[13] <= 0.0)
@constraint(m, e200, -x[14] <= 0.0)
@constraint(m, e201, 1.52787272*x[3]-1.52786255*x[7]-x[15] <= 0.0)
@constraint(m, e202, -x[16] <= 0.0)
@constraint(m, e203, -2.24629156*x[1]+0.20410502*x[5]-x[13] >= -10.0)
@constraint(m, e204, 1.42893791*x[2]+3.94678752*x[6]-x[14] >= -10.0)
@constraint(m, e205, -2.47212728*x[3]-1.52786255*x[7]-x[15] >= -10.0)
@constraint(m, e206, -1.63415571*x[4]+0.43022284*x[8]-x[16] >= -10.0)
@constraint(m, e207, 1.59481484*x[1]+3.40502701*x[5]-x[13] >= -10.0)
@constraint(m, e208, 1.42893791*x[2]-6.05321248*x[6]-x[14] >= -10.0)
@constraint(m, e209, -0.47212728*x[3]+2.47213745*x[7]-x[15] >= -10.0)
@constraint(m, e210, 1.04912586*x[4]+1.60415853*x[8]-x[16] >= -10.0)
@constraint(m, e211, 1.59481484*x[1]-4.40522266*x[5]-x[13] >= -10.0)
@constraint(m, e212, -1.69606209*x[2]+0.19678752*x[6]-x[14] >= -10.0)
@constraint(m, e213, 1.52787272*x[3]+3.47213745*x[7]-x[15] >= -10.0)
@constraint(m, e214, 1.04912586*x[4]-3.14748592*x[8]-x[16] >= -10.0)
@constraint(m, e215, -x[13] >= -10.0)
@constraint(m, e216, -x[14] >= -10.0)
@constraint(m, e217, 1.52787272*x[3]-1.52786255*x[7]-x[15] >= -10.0)
@constraint(m, e218, -x[16] >= -10.0)


# ----- Objective ----- #
@objective(m, Min, x[17])

m = m 		 # model get returned when including this script.