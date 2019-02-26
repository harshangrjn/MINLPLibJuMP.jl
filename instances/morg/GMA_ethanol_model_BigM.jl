using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
b_Idx = Any[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38]
@variable(m, b[b_Idx])
set_binary(b[37])
set_binary(b[35])
set_binary(b[38])
set_lower_bound(x[4], 0.0)
set_binary(b[27])
set_lower_bound(x[6], 0.0)
set_binary(b[18])
set_lower_bound(x[3], 0.0)
set_binary(b[20])
set_binary(b[15])
set_binary(b[33])
set_lower_bound(x[11], 0.0)
set_binary(b[30])
set_binary(b[31])
set_binary(b[19])
set_binary(b[29])
set_lower_bound(x[12], 0.0)
set_binary(b[25])
set_lower_bound(x[5], 0.0)
set_binary(b[32])
set_binary(b[34])
set_lower_bound(x[2], 0.0)
set_binary(b[24])
set_binary(b[23])
set_binary(b[16])
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_binary(b[17])
set_binary(b[26])
set_binary(b[21])
set_binary(b[28])
set_binary(b[36])
set_lower_bound(x[10], 0.0)
set_binary(b[22])


# ----- Constraints ----- #
@NLconstraint(m, e1, 325.08*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[12]+x[14] == 0.0)
@NLconstraint(m, e2, -(16.00034*x[1]^eps*x[2]^(-0.2344)*x[3]^eps*x[4]^eps*x[5]^eps*x[6]-196.1292*x[1]^0.7464*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^0.0243*x[7]) == 0.0)
@NLconstraint(m, e3, -(196.1292*x[1]^0.7464*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^0.0243*x[7]-16.58544*x[1]^eps*x[2]^0.7318*x[3]^eps*x[4]^eps*x[5]^(-0.3941)*x[8]-0.012879*x[1]^eps*x[2]^8.6107*x[3]^eps*x[4]^eps*x[5]^eps*x[9]) == 0.0)
@NLconstraint(m, e4, -(16.58544*x[1]^eps*x[2]^0.7318*x[3]^eps*x[4]^eps*x[5]^(-0.3941)*x[8]-3.78145609890476*x[1]^eps*x[2]^eps*x[3]^0.6159*x[4]^eps*x[5]^0.1308*x[10]-9.59175*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[11]) == 0.0)
@NLconstraint(m, e5, -(7.56291219780952*x[1]^eps*x[2]^eps*x[3]^0.6159*x[4]^eps*x[5]^0.1308*x[10]-325.08*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[12]) == 0.0)
@NLconstraint(m, e6, -(-196.1292*x[1]^0.7464*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^0.0243*x[7]-16.58544*x[1]^eps*x[2]^0.7318*x[3]^eps*x[4]^eps*x[5]^(-0.3941)*x[8]-0.012879*x[1]^eps*x[2]^8.6107*x[3]^eps*x[4]^eps*x[5]^eps*x[9]+7.56291219780952*x[1]^eps*x[2]^eps*x[3]^0.6159*x[4]^eps*x[5]^0.1308*x[10]+325.08*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[12]-25.1*x[1]^eps*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^1*x[13]) == 0.0)
@constraint(m, e7, x[1] >= 0.00345)
@constraint(m, e8, x[2] >= 0.1011)
@constraint(m, e9, x[3] >= 0.9144)
@constraint(m, e10, x[4] >= 0.00095)
@constraint(m, e11, x[5] >= 0.11278)
@constraint(m, e12, x[1] <= 0.345)
@constraint(m, e13, x[2] <= 10.11)
@constraint(m, e14, x[3] <= 91.44)
@constraint(m, e15, x[4] <= 0.095)
@constraint(m, e16, x[5] <= 11.278)
@constraint(m, e17, x[6]+100000*b[15] <= 100000.999999995)
@constraint(m, e18, x[7]+100000*b[16] <= 100000.999999995)
@constraint(m, e19, x[8]+100000*b[17] <= 100000.999999995)
@constraint(m, e20, x[9]+100000*b[18] <= 100000.999999995)
@constraint(m, e21, x[10]+100000*b[19] <= 100000.999999995)
@constraint(m, e22, x[11]+100000*b[20] <= 100000.999999995)
@constraint(m, e23, x[12]+100000*b[21] <= 100000.999999995)
@constraint(m, e24, x[13]+100000*b[22] <= 100000.999999995)
@constraint(m, e25, -x[6]+100000*b[23] <= 99999.000000005)
@constraint(m, e26, -x[7]+100000*b[24] <= 99999.000000005)
@constraint(m, e27, -x[8]+100000*b[25] <= 99999.000000005)
@constraint(m, e28, -x[9]+100000*b[26] <= 99999.000000005)
@constraint(m, e29, -x[10]+100000*b[27] <= 99999.000000005)
@constraint(m, e30, -x[11]+100000*b[28] <= 99999.000000005)
@constraint(m, e31, -x[12]+100000*b[29] <= 99999.000000005)
@constraint(m, e32, -x[13]+100000*b[30] <= 99999.000000005)
@constraint(m, e33, x[6]+100000*b[23] <= 100001.000000005)
@constraint(m, e34, x[7]+100000*b[24] <= 100001.000000005)
@constraint(m, e35, x[8]+100000*b[25] <= 100001.000000005)
@constraint(m, e36, x[9]+100000*b[26] <= 100001.000000005)
@constraint(m, e37, x[10]+100000*b[27] <= 100001.000000005)
@constraint(m, e38, x[11]+100000*b[28] <= 100001.000000005)
@constraint(m, e39, x[12]+100000*b[29] <= 100001.000000005)
@constraint(m, e40, x[13]+100000*b[30] <= 100001.000000005)
@constraint(m, e41, -x[6]+100000*b[31] <= 99998.999999995)
@constraint(m, e42, -x[7]+100000*b[32] <= 99998.999999995)
@constraint(m, e43, -x[8]+100000*b[33] <= 99998.999999995)
@constraint(m, e44, -x[9]+100000*b[34] <= 99998.999999995)
@constraint(m, e45, -x[10]+100000*b[35] <= 99998.999999995)
@constraint(m, e46, -x[11]+100000*b[36] <= 99998.999999995)
@constraint(m, e47, -x[12]+100000*b[37] <= 99998.999999995)
@constraint(m, e48, -x[13]+100000*b[38] <= 99998.999999995)
@constraint(m, e49, x[6] >= 0.2)
@constraint(m, e50, x[7] >= 0.2)
@constraint(m, e51, x[8] >= 0.2)
@constraint(m, e52, x[9] >= 0.2)
@constraint(m, e53, x[10] >= 0.2)
@constraint(m, e54, x[11] >= 0.2)
@constraint(m, e55, x[12] >= 0.2)
@constraint(m, e56, x[13] >= 0.2)
@constraint(m, e57, x[6] <= 5.0)
@constraint(m, e58, x[7] <= 5.0)
@constraint(m, e59, x[8] <= 5.0)
@constraint(m, e60, x[9] <= 5.0)
@constraint(m, e61, x[10] <= 5.0)
@constraint(m, e62, x[11] <= 5.0)
@constraint(m, e63, x[12] <= 5.0)
@constraint(m, e64, x[13] <= 5.0)
@constraint(m, e65, b[15]+b[23]+b[31] == 1.0)
@constraint(m, e66, b[16]+b[24]+b[32] == 1.0)
@constraint(m, e67, b[17]+b[25]+b[33] == 1.0)
@constraint(m, e68, b[18]+b[26]+b[34] == 1.0)
@constraint(m, e69, b[19]+b[27]+b[35] == 1.0)
@constraint(m, e70, b[20]+b[28]+b[36] == 1.0)
@constraint(m, e71, b[21]+b[29]+b[37] == 1.0)
@constraint(m, e72, b[22]+b[30]+b[38] == 1.0)
@constraint(m, e73, b[15]+b[16]+b[17]+b[18]+b[19]+b[20]+b[21]+b[22]+b[31]+b[32]+b[33]+b[34]+b[35]+b[36]+b[37]+b[38] <= 8.0)


# ----- Objective ----- #
@objective(m, Min, x[14])

m = m 		 # model get returned when including this script.