using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
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
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-1.3306*x[1]*x[3]-0.4399*x[1]*x[5]-1.8728*x[1]*x[7]-0.3835*x[1]*x[10]+1.3566*x[1]*x[13]-0.8782*x[1]*x[21]-0.4925*x[1]*x[26]-1.7632*x[1]*x[29]-1.4925*x[1]*x[35]+1.1896*x[1]*x[36]+0.6881*x[1]*x[38]-1.6991*x[2]*x[8]-0.9784*x[2]*x[11]+0.6779*x[2]*x[13]-1.3269*x[2]*x[16]-0.3671*x[2]*x[17]-1.8088*x[2]*x[18]-1.0121*x[2]*x[19]-1.4745*x[2]*x[21]+1.8706*x[2]*x[22]+0.6385*x[2]*x[24]+0.002*x[2]*x[25]+1.9749*x[2]*x[26]+0.2248*x[2]*x[28]-0.9059*x[2]*x[29]-1.5295*x[2]*x[30]-1.7877*x[2]*x[33]-1.4671*x[2]*x[34]-0.3101*x[2]*x[35]-0.0071*x[2]*x[36]-1.5604*x[2]*x[37]-1.8429*x[2]*x[38]-1.2536*x[2]*x[39]+0.8439*x[2]*x[40]+1.9179*x[3]*x[5]-0.6636*x[3]*x[6]+1.5578*x[3]*x[8]-0.6354*x[3]*x[10]-1.3671*x[3]*x[17]-0.5239*x[3]*x[18]+0.9888*x[3]*x[19]+0.2273*x[3]*x[20]-1.6654*x[3]*x[22]-1.8855*x[3]*x[25]-1.5409*x[3]*x[26]+1.3532*x[3]*x[29]+1.8404*x[3]*x[30]-1.1817*x[3]*x[32]+1.4915*x[3]*x[33]+1.2698*x[3]*x[34]-1.1979*x[3]*x[38]-1.8878*x[3]*x[39]+0.0071*x[4]*x[7]-1.5134*x[4]*x[10]-1.0478*x[4]*x[12]+1.0478*x[4]*x[13]+1.3612*x[4]*x[14]-1.7721*x[4]*x[16]-0.6584*x[4]*x[21]+1.9996*x[4]*x[22]+0.833*x[4]*x[23]-0.5844*x[4]*x[27]+0.3875*x[4]*x[29]+1.4635*x[4]*x[30]+0.464*x[4]*x[31]-1.7019*x[4]*x[34]-1.9034*x[4]*x[35]+1.4445*x[4]*x[36]-1.2627*x[5]*x[6]-0.2273*x[5]*x[7]+1.5587*x[5]*x[9]+1.1163*x[5]*x[10]+1.1994*x[5]*x[13]-0.7608*x[5]*x[15]+1.9819*x[5]*x[16]+1.545*x[5]*x[17]+0.0824*x[5]*x[18]-0.2453*x[5]*x[19]+0.6077*x[5]*x[21]+1.7183*x[5]*x[26]+0.29*x[5]*x[28]-1.1408*x[5]*x[31]-1.5875*x[5]*x[33]-0.8838*x[5]*x[34]-1.7457*x[5]*x[35]+1.3276*x[5]*x[37]+1.8708*x[5]*x[38]-1.8844*x[6]*x[7]+1.1874*x[6]*x[8]+1.6901*x[6]*x[15]-0.4986*x[6]*x[16]+1.8675*x[6]*x[17]+0.8095*x[6]*x[18]-1.8787*x[6]*x[19]-0.2332*x[6]*x[24]-0.3184*x[6]*x[26]-0.8494*x[6]*x[27]+0.6107*x[6]*x[28]-1.4651*x[6]*x[29]+1.9951*x[6]*x[32]+0.4225*x[6]*x[34]-0.359*x[6]*x[35]-1.5966*x[6]*x[36]-0.5085*x[6]*x[37]-0.1959*x[6]*x[38]+1.0184*x[7]*x[7]-0.5203*x[7]*x[8]+0.9001*x[7]*x[11]+1.0453*x[7]*x[12]-1.7251*x[7]*x[13]+0.1314*x[7]*x[15]+0.4981*x[7]*x[18]-1.5518*x[7]*x[20]-1.2727*x[7]*x[22]-0.9428*x[7]*x[23]+0.6235*x[7]*x[24]+0.7752*x[7]*x[25]-1.998*x[7]*x[28]-1.2327*x[7]*x[31]-0.597*x[7]*x[32]-1.4873*x[7]*x[33]-1.4872*x[7]*x[34]+0.7654*x[7]*x[38]-1.2667*x[7]*x[39]-1.6299*x[8]*x[10]+0.163*x[8]*x[12]+1.3926*x[8]*x[14]+1.8081*x[8]*x[15]+0.1793*x[8]*x[21]-0.8107*x[8]*x[22]-1.2953*x[8]*x[26]-0.5415*x[8]*x[27]-1.9706*x[8]*x[28]-0.5901*x[8]*x[29]+0.4473*x[8]*x[30]-0.0762*x[8]*x[33]+1.7261*x[8]*x[34]+1.4976*x[8]*x[38]-0.9682*x[8]*x[39]-0.6393*x[8]*x[40]-1.9917*x[9]*x[9]+1.4433*x[9]*x[11]+0.7242*x[9]*x[15]-1.147*x[9]*x[16]+0.8636*x[9]*x[17]-1.0657*x[9]*x[22]+0.6471*x[9]*x[23]-0.8475*x[9]*x[27]-0.7381*x[9]*x[29]-0.9972*x[9]*x[31]-0.7974*x[9]*x[33]+1.0982*x[9]*x[34]-0.9216*x[9]*x[36]+1.1215*x[9]*x[38]-1.1331*x[9]*x[39]-0.663*x[10]*x[10]+0.3159*x[10]*x[11]+1.7304*x[10]*x[12]+1.9473*x[10]*x[13]-1.7457*x[10]*x[16]-1.322*x[10]*x[17]-1.5991*x[10]*x[18]+0.9512*x[10]*x[20]+1.5334*x[10]*x[21]-0.9874*x[10]*x[22]+1.0387*x[10]*x[23]-0.153*x[10]*x[24]-1.4952*x[10]*x[26]+0.1892*x[10]*x[27]+0.5378*x[10]*x[31]+0.1925*x[10]*x[32]+0.3874*x[10]*x[33]-1.3704*x[10]*x[35]+1.0081*x[10]*x[36]+1.3717*x[11]*x[12]+1.549*x[11]*x[15]+0.845*x[11]*x[16]-0.0673*x[11]*x[17]-1.5746*x[11]*x[20]-0.1678*x[11]*x[21]+1.3808*x[11]*x[23]-0.0513*x[11]*x[25]-1.4896*x[11]*x[27]-1.4471*x[11]*x[29]+1.578*x[11]*x[31]+1.3482*x[11]*x[35]+0.481*x[11]*x[37]-1.5744*x[11]*x[39]+0.7628*x[12]*x[13]+1.3016*x[12]*x[15]+0.382*x[12]*x[16]-1.2962*x[12]*x[21]+1.7195*x[12]*x[22]-0.2663*x[12]*x[24]-1.7792*x[12]*x[25]-1.3782*x[12]*x[27]+0.7105*x[12]*x[34]+1.591*x[12]*x[35]+1.853*x[12]*x[36]+1.6272*x[12]*x[40]-0.7974*x[13]*x[15]+0.5119*x[13]*x[17]+1.0614*x[13]*x[19]+1.2557*x[13]*x[20]+1.404*x[13]*x[21]+0.8647*x[13]*x[22]+0.8925*x[13]*x[23]+0.3264*x[13]*x[24]+1.5631*x[13]*x[26]-1.5213*x[13]*x[29]-0.4271*x[13]*x[30]-0.1476*x[13]*x[33]-0.8949*x[13]*x[34]-1.0872*x[13]*x[36]+0.9048*x[13]*x[37]-0.5918*x[13]*x[38]-1.4461*x[14]*x[15]-0.8612*x[14]*x[18]-1.9973*x[14]*x[19]+1.7693*x[14]*x[22]+1.1126*x[14]*x[27]-0.8274*x[14]*x[29]-1.9994*x[14]*x[30]-1.7943*x[14]*x[32]+1.9337*x[14]*x[33]-0.1813*x[14]*x[34]-0.8859*x[14]*x[37]-1.7897*x[14]*x[38]+1.6658*x[14]*x[39]-0.4231*x[15]*x[20]+1.9685*x[15]*x[21]-1.7971*x[15]*x[22]+0.4001*x[15]*x[24]-1.0388*x[15]*x[25]-0.5119*x[15]*x[28]-1.5592*x[15]*x[30]+0.0785*x[15]*x[31]+0.8848*x[15]*x[32]-0.8733*x[15]*x[36]+0.0846*x[15]*x[37]+1.6723*x[15]*x[39]+1.3402*x[16]*x[18]-1.5006*x[16]*x[19]+1.6054*x[16]*x[21]+1.9941*x[16]*x[22]-0.0946*x[16]*x[26]-0.0037*x[16]*x[28]-0.5508*x[16]*x[30]+1.0074*x[16]*x[33]+1.8626*x[16]*x[34]+1.8506*x[16]*x[38]-1.2007*x[16]*x[39]-1.73*x[16]*x[40]+1.2349*x[17]*x[18]-1.0571*x[17]*x[20]-1.368*x[17]*x[21]-1.5628*x[17]*x[22]-1.7702*x[17]*x[24]+1.1511*x[17]*x[25]+1.8566*x[17]*x[27]-1.7774*x[17]*x[30]-1.6528*x[17]*x[32]+1.6104*x[17]*x[33]+0.6486*x[17]*x[34]+0.3018*x[17]*x[37]-1.1411*x[17]*x[38]+1.8979*x[17]*x[40]+0.058*x[18]*x[21]-1.8953*x[18]*x[22]+1.5017*x[18]*x[25]-0.2015*x[18]*x[26]-1.1262*x[18]*x[27]-1.2079*x[18]*x[28]+1.9335*x[18]*x[30]-0.8937*x[18]*x[31]+0.2601*x[18]*x[33]+0.8851*x[18]*x[34]+1.4345*x[18]*x[36]-0.3869*x[18]*x[37]-0.448*x[18]*x[40]+0.3002*x[19]*x[20]+0.1901*x[19]*x[24]-1.8082*x[19]*x[28]-1.9052*x[19]*x[29]+0.9263*x[19]*x[32]+1.9298*x[19]*x[34]-0.4753*x[19]*x[38]-0.5892*x[19]*x[39]-1.3405*x[20]*x[20]-0.503*x[20]*x[22]-1.84*x[20]*x[27]-0.038*x[20]*x[31]+1.7036*x[20]*x[32]+1.5767*x[20]*x[33]-1.3973*x[20]*x[34]+0.8717*x[20]*x[35]-1.6435*x[20]*x[36]+0.9676*x[20]*x[37]+1.1349*x[20]*x[38]-0.0555*x[20]*x[39]+0.6771*x[21]*x[21]-1.3865*x[21]*x[22]-1.8126*x[21]*x[23]-0.6619*x[21]*x[24]+0.2035*x[21]*x[26]+0.935*x[21]*x[27]-1.004*x[21]*x[28]+1.1237*x[21]*x[31]+1.9578*x[21]*x[33]+0.7544*x[21]*x[35]-1.0937*x[21]*x[38]-0.6996*x[21]*x[40]-0.957*x[22]*x[23]-0.1795*x[22]*x[24]-0.3501*x[22]*x[25]-0.0166*x[22]*x[26]-0.352*x[22]*x[27]+1.4138*x[22]*x[28]+0.6043*x[22]*x[29]-0.4672*x[22]*x[30]+0.1982*x[22]*x[31]+1.7524*x[22]*x[32]+1.9431*x[22]*x[33]+1.9722*x[22]*x[34]+0.7124*x[22]*x[36]+1.0623*x[22]*x[37]+0.4484*x[22]*x[38]-1.4635*x[22]*x[39]+1.9461*x[23]*x[24]+0.434*x[23]*x[26]-1.751*x[23]*x[34]+0.5918*x[23]*x[35]-1.884*x[23]*x[36]-0.0265*x[23]*x[37]+1.6542*x[23]*x[38]-0.2878*x[23]*x[40]-0.7376*x[24]*x[24]+0.5694*x[24]*x[25]+0.1757*x[24]*x[32]+0.5279*x[24]*x[33]+1.2099*x[24]*x[35]+1.146*x[24]*x[36]+0.7087*x[24]*x[37]-1.6576*x[24]*x[38]-1.9612*x[24]*x[40]+1.0482*x[25]*x[29]-1.188*x[25]*x[31]-0.3753*x[25]*x[36]-0.6398*x[25]*x[37]+0.0373*x[25]*x[40]-0.2838*x[26]*x[27]-0.6387*x[26]*x[28]-1.1974*x[26]*x[29]-1.6158*x[26]*x[30]-1.0389*x[26]*x[33]-1.7371*x[26]*x[34]+1.8019*x[26]*x[35]-1.309*x[26]*x[36]-1.2816*x[26]*x[38]-1.6747*x[26]*x[39]+0.9929*x[27]*x[29]+1.0372*x[27]*x[33]+0.9149*x[27]*x[36]+1.8669*x[27]*x[37]+0.8095*x[28]*x[33]-1.3588*x[28]*x[34]-0.5115*x[28]*x[35]+1.9019*x[28]*x[36]-1.0154*x[28]*x[37]-1.3804*x[28]*x[39]-1.8303*x[28]*x[40]+0.7104*x[29]*x[29]-1.1322*x[29]*x[32]+1.2301*x[29]*x[36]-1.4318*x[29]*x[37]+1.7065*x[29]*x[38]+1.9871*x[29]*x[40]+0.1389*x[30]*x[33]+0.883*x[30]*x[34]+1.7585*x[30]*x[37]-0.112*x[30]*x[38]-1.7681*x[30]*x[40]+1.0178*x[31]*x[31]+1.239*x[31]*x[34]-0.4647*x[31]*x[35]+1.7937*x[31]*x[36]+1.0258*x[31]*x[38]-1.6313*x[31]*x[39]-0.2597*x[32]*x[33]-0.7306*x[32]*x[34]-0.6684*x[32]*x[35]-0.4475*x[32]*x[36]+1.7288*x[32]*x[37]+0.7562*x[32]*x[38]+0.5761*x[33]*x[35]-1.8186*x[33]*x[38]+1.8451*x[33]*x[39]+0.235*x[33]*x[40]-1.4312*x[34]*x[35]-1.7488*x[34]*x[37]+1.4061*x[35]*x[35]-1.3494*x[35]*x[36]+1.347*x[35]*x[39]+0.0007*x[35]*x[40]-0.438*x[36]*x[37]-0.7238*x[36]*x[40]-0.2669*x[37]*x[38]+1.8462*x[37]*x[39]+0.1605*x[38]*x[39]-0.1331*x[39]*x[39]+0.0781*x[1]-0.0251*x[2]-0.3213*x[3]+0.8957*x[4]+0.8012*x[5]+0.3741*x[6]+0.7507*x[7]+0.6214*x[8]-0.9874*x[9]-0.824*x[10]-0.7364*x[11]+0.5632*x[12]+0.0277*x[13]+0.6984*x[14]-0.8929*x[15]+0.9844*x[16]+0.0604*x[17]-0.8473*x[18]-0.6641*x[19]-0.5341*x[20]-0.7171*x[21]-0.9632*x[22]-0.3165*x[23]-0.4889*x[24]-0.8841*x[25]+0.1736*x[26]+0.9399*x[27]-0.491*x[28]+0.2638*x[29]-0.2165*x[30]+0.1249*x[31]-0.917*x[32]-0.5353*x[33]+0.6693*x[34]-0.1613*x[35]+0.014*x[36]-0.8024*x[37]+0.2702*x[38]-0.5259*x[39]-0.3402*x[40])+x[41] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[41])

m = m 		 # model get returned when including this script.