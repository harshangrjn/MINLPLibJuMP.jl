using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
@variable(m, b[b_Idx])
set_binary(b[22])
set_binary(b[35])
set_binary(b[27])
set_binary(b[18])
set_binary(b[12])
set_binary(b[2])
set_binary(b[14])
set_binary(b[8])
set_binary(b[15])
set_binary(b[20])
set_binary(b[33])
set_binary(b[30])
set_binary(b[31])
set_binary(b[11])
set_binary(b[19])
set_binary(b[29])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[32])
set_binary(b[3])
set_binary(b[34])
set_binary(b[24])
set_binary(b[23])
set_binary(b[5])
set_binary(b[16])
set_binary(b[10])
set_binary(b[17])
set_binary(b[4])
set_binary(b[6])
set_binary(b[21])
set_binary(b[26])
set_binary(b[28])
set_binary(b[13])
set_binary(b[1])


# ----- Constraints ----- #
@NLconstraint(m, e1, 64*b[1]*b[2]*b[3]*b[4]+64*b[1]*b[2]*b[4]*b[5]+64*b[1]*b[2]*b[5]*b[6]+64*b[1]*b[2]*b[6]*b[7]+64*b[1]*b[2]*b[7]*b[8]+64*b[1]*b[2]*b[8]*b[9]+64*b[1]*b[3]*b[4]*b[6]+64*b[1]*b[3]*b[5]*b[7]+64*b[1]*b[3]*b[6]*b[8]+64*b[1]*b[3]*b[7]*b[9]+64*b[1]*b[4]*b[5]*b[8]+64*b[1]*b[4]*b[6]*b[9]+128*b[2]*b[3]*b[4]*b[5]+128*b[2]*b[3]*b[5]*b[6]+128*b[2]*b[3]*b[6]*b[7]+128*b[2]*b[3]*b[7]*b[8]+128*b[2]*b[3]*b[8]*b[9]+64*b[2]*b[3]*b[9]*b[10]+128*b[2]*b[4]*b[5]*b[7]+128*b[2]*b[4]*b[6]*b[8]+128*b[2]*b[4]*b[7]*b[9]+64*b[2]*b[4]*b[8]*b[10]+128*b[2]*b[5]*b[6]*b[9]+64*b[2]*b[5]*b[7]*b[10]+192*b[3]*b[4]*b[5]*b[6]+192*b[3]*b[4]*b[6]*b[7]+192*b[3]*b[4]*b[7]*b[8]+192*b[3]*b[4]*b[8]*b[9]+128*b[3]*b[4]*b[9]*b[10]+64*b[3]*b[4]*b[10]*b[11]+192*b[3]*b[5]*b[6]*b[8]+192*b[3]*b[5]*b[7]*b[9]+128*b[3]*b[5]*b[8]*b[10]+64*b[3]*b[5]*b[9]*b[11]+128*b[3]*b[6]*b[7]*b[10]+64*b[3]*b[6]*b[8]*b[11]+256*b[4]*b[5]*b[6]*b[7]+256*b[4]*b[5]*b[7]*b[8]+256*b[4]*b[5]*b[8]*b[9]+192*b[4]*b[5]*b[9]*b[10]+128*b[4]*b[5]*b[10]*b[11]+64*b[4]*b[5]*b[11]*b[12]+256*b[4]*b[6]*b[7]*b[9]+192*b[4]*b[6]*b[8]*b[10]+128*b[4]*b[6]*b[9]*b[11]+64*b[4]*b[6]*b[10]*b[12]+128*b[4]*b[7]*b[8]*b[11]+64*b[4]*b[7]*b[9]*b[12]+320*b[5]*b[6]*b[7]*b[8]+320*b[5]*b[6]*b[8]*b[9]+256*b[5]*b[6]*b[9]*b[10]+192*b[5]*b[6]*b[10]*b[11]+128*b[5]*b[6]*b[11]*b[12]+64*b[5]*b[6]*b[12]*b[13]+256*b[5]*b[7]*b[8]*b[10]+192*b[5]*b[7]*b[9]*b[11]+128*b[5]*b[7]*b[10]*b[12]+64*b[5]*b[7]*b[11]*b[13]+128*b[5]*b[8]*b[9]*b[12]+64*b[5]*b[8]*b[10]*b[13]+384*b[6]*b[7]*b[8]*b[9]+320*b[6]*b[7]*b[9]*b[10]+256*b[6]*b[7]*b[10]*b[11]+192*b[6]*b[7]*b[11]*b[12]+128*b[6]*b[7]*b[12]*b[13]+64*b[6]*b[7]*b[13]*b[14]+256*b[6]*b[8]*b[9]*b[11]+192*b[6]*b[8]*b[10]*b[12]+128*b[6]*b[8]*b[11]*b[13]+64*b[6]*b[8]*b[12]*b[14]+128*b[6]*b[9]*b[10]*b[13]+64*b[6]*b[9]*b[11]*b[14]+384*b[7]*b[8]*b[9]*b[10]+320*b[7]*b[8]*b[10]*b[11]+256*b[7]*b[8]*b[11]*b[12]+192*b[7]*b[8]*b[12]*b[13]+128*b[7]*b[8]*b[13]*b[14]+64*b[7]*b[8]*b[14]*b[15]+256*b[7]*b[9]*b[10]*b[12]+192*b[7]*b[9]*b[11]*b[13]+128*b[7]*b[9]*b[12]*b[14]+64*b[7]*b[9]*b[13]*b[15]+128*b[7]*b[10]*b[11]*b[14]+64*b[7]*b[10]*b[12]*b[15]+384*b[8]*b[9]*b[10]*b[11]+320*b[8]*b[9]*b[11]*b[12]+256*b[8]*b[9]*b[12]*b[13]+192*b[8]*b[9]*b[13]*b[14]+128*b[8]*b[9]*b[14]*b[15]+64*b[8]*b[9]*b[15]*b[16]+256*b[8]*b[10]*b[11]*b[13]+192*b[8]*b[10]*b[12]*b[14]+128*b[8]*b[10]*b[13]*b[15]+64*b[8]*b[10]*b[14]*b[16]+128*b[8]*b[11]*b[12]*b[15]+64*b[8]*b[11]*b[13]*b[16]+384*b[9]*b[10]*b[11]*b[12]+320*b[9]*b[10]*b[12]*b[13]+256*b[9]*b[10]*b[13]*b[14]+192*b[9]*b[10]*b[14]*b[15]+128*b[9]*b[10]*b[15]*b[16]+64*b[9]*b[10]*b[16]*b[17]+256*b[9]*b[11]*b[12]*b[14]+192*b[9]*b[11]*b[13]*b[15]+128*b[9]*b[11]*b[14]*b[16]+64*b[9]*b[11]*b[15]*b[17]+128*b[9]*b[12]*b[13]*b[16]+64*b[9]*b[12]*b[14]*b[17]+384*b[10]*b[11]*b[12]*b[13]+320*b[10]*b[11]*b[13]*b[14]+256*b[10]*b[11]*b[14]*b[15]+192*b[10]*b[11]*b[15]*b[16]+128*b[10]*b[11]*b[16]*b[17]+64*b[10]*b[11]*b[17]*b[18]+256*b[10]*b[12]*b[13]*b[15]+192*b[10]*b[12]*b[14]*b[16]+128*b[10]*b[12]*b[15]*b[17]+64*b[10]*b[12]*b[16]*b[18]+128*b[10]*b[13]*b[14]*b[17]+64*b[10]*b[13]*b[15]*b[18]+384*b[11]*b[12]*b[13]*b[14]+320*b[11]*b[12]*b[14]*b[15]+256*b[11]*b[12]*b[15]*b[16]+192*b[11]*b[12]*b[16]*b[17]+128*b[11]*b[12]*b[17]*b[18]+64*b[11]*b[12]*b[18]*b[19]+256*b[11]*b[13]*b[14]*b[16]+192*b[11]*b[13]*b[15]*b[17]+128*b[11]*b[13]*b[16]*b[18]+64*b[11]*b[13]*b[17]*b[19]+128*b[11]*b[14]*b[15]*b[18]+64*b[11]*b[14]*b[16]*b[19]+384*b[12]*b[13]*b[14]*b[15]+320*b[12]*b[13]*b[15]*b[16]+256*b[12]*b[13]*b[16]*b[17]+192*b[12]*b[13]*b[17]*b[18]+128*b[12]*b[13]*b[18]*b[19]+64*b[12]*b[13]*b[19]*b[20]+256*b[12]*b[14]*b[15]*b[17]+192*b[12]*b[14]*b[16]*b[18]+128*b[12]*b[14]*b[17]*b[19]+64*b[12]*b[14]*b[18]*b[20]+128*b[12]*b[15]*b[16]*b[19]+64*b[12]*b[15]*b[17]*b[20]+384*b[13]*b[14]*b[15]*b[16]+320*b[13]*b[14]*b[16]*b[17]+256*b[13]*b[14]*b[17]*b[18]+192*b[13]*b[14]*b[18]*b[19]+128*b[13]*b[14]*b[19]*b[20]+64*b[13]*b[14]*b[20]*b[21]+256*b[13]*b[15]*b[16]*b[18]+192*b[13]*b[15]*b[17]*b[19]+128*b[13]*b[15]*b[18]*b[20]+64*b[13]*b[15]*b[19]*b[21]+128*b[13]*b[16]*b[17]*b[20]+64*b[13]*b[16]*b[18]*b[21]+384*b[14]*b[15]*b[16]*b[17]+320*b[14]*b[15]*b[17]*b[18]+256*b[14]*b[15]*b[18]*b[19]+192*b[14]*b[15]*b[19]*b[20]+128*b[14]*b[15]*b[20]*b[21]+64*b[14]*b[15]*b[21]*b[22]+256*b[14]*b[16]*b[17]*b[19]+192*b[14]*b[16]*b[18]*b[20]+128*b[14]*b[16]*b[19]*b[21]+64*b[14]*b[16]*b[20]*b[22]+128*b[14]*b[17]*b[18]*b[21]+64*b[14]*b[17]*b[19]*b[22]+384*b[15]*b[16]*b[17]*b[18]+320*b[15]*b[16]*b[18]*b[19]+256*b[15]*b[16]*b[19]*b[20]+192*b[15]*b[16]*b[20]*b[21]+128*b[15]*b[16]*b[21]*b[22]+64*b[15]*b[16]*b[22]*b[23]+256*b[15]*b[17]*b[18]*b[20]+192*b[15]*b[17]*b[19]*b[21]+128*b[15]*b[17]*b[20]*b[22]+64*b[15]*b[17]*b[21]*b[23]+128*b[15]*b[18]*b[19]*b[22]+64*b[15]*b[18]*b[20]*b[23]+384*b[16]*b[17]*b[18]*b[19]+320*b[16]*b[17]*b[19]*b[20]+256*b[16]*b[17]*b[20]*b[21]+192*b[16]*b[17]*b[21]*b[22]+128*b[16]*b[17]*b[22]*b[23]+64*b[16]*b[17]*b[23]*b[24]+256*b[16]*b[18]*b[19]*b[21]+192*b[16]*b[18]*b[20]*b[22]+128*b[16]*b[18]*b[21]*b[23]+64*b[16]*b[18]*b[22]*b[24]+128*b[16]*b[19]*b[20]*b[23]+64*b[16]*b[19]*b[21]*b[24]+384*b[17]*b[18]*b[19]*b[20]+320*b[17]*b[18]*b[20]*b[21]+256*b[17]*b[18]*b[21]*b[22]+192*b[17]*b[18]*b[22]*b[23]+128*b[17]*b[18]*b[23]*b[24]+64*b[17]*b[18]*b[24]*b[25]+256*b[17]*b[19]*b[20]*b[22]+192*b[17]*b[19]*b[21]*b[23]+128*b[17]*b[19]*b[22]*b[24]+64*b[17]*b[19]*b[23]*b[25]+128*b[17]*b[20]*b[21]*b[24]+64*b[17]*b[20]*b[22]*b[25]+384*b[18]*b[19]*b[20]*b[21]+320*b[18]*b[19]*b[21]*b[22]+256*b[18]*b[19]*b[22]*b[23]+192*b[18]*b[19]*b[23]*b[24]+128*b[18]*b[19]*b[24]*b[25]+64*b[18]*b[19]*b[25]*b[26]+256*b[18]*b[20]*b[21]*b[23]+192*b[18]*b[20]*b[22]*b[24]+128*b[18]*b[20]*b[23]*b[25]+64*b[18]*b[20]*b[24]*b[26]+128*b[18]*b[21]*b[22]*b[25]+64*b[18]*b[21]*b[23]*b[26]+384*b[19]*b[20]*b[21]*b[22]+320*b[19]*b[20]*b[22]*b[23]+256*b[19]*b[20]*b[23]*b[24]+192*b[19]*b[20]*b[24]*b[25]+128*b[19]*b[20]*b[25]*b[26]+64*b[19]*b[20]*b[26]*b[27]+256*b[19]*b[21]*b[22]*b[24]+192*b[19]*b[21]*b[23]*b[25]+128*b[19]*b[21]*b[24]*b[26]+64*b[19]*b[21]*b[25]*b[27]+128*b[19]*b[22]*b[23]*b[26]+64*b[19]*b[22]*b[24]*b[27]+384*b[20]*b[21]*b[22]*b[23]+320*b[20]*b[21]*b[23]*b[24]+256*b[20]*b[21]*b[24]*b[25]+192*b[20]*b[21]*b[25]*b[26]+128*b[20]*b[21]*b[26]*b[27]+64*b[20]*b[21]*b[27]*b[28]+256*b[20]*b[22]*b[23]*b[25]+192*b[20]*b[22]*b[24]*b[26]+128*b[20]*b[22]*b[25]*b[27]+64*b[20]*b[22]*b[26]*b[28]+128*b[20]*b[23]*b[24]*b[27]+64*b[20]*b[23]*b[25]*b[28]+384*b[21]*b[22]*b[23]*b[24]+320*b[21]*b[22]*b[24]*b[25]+256*b[21]*b[22]*b[25]*b[26]+192*b[21]*b[22]*b[26]*b[27]+128*b[21]*b[22]*b[27]*b[28]+64*b[21]*b[22]*b[28]*b[29]+256*b[21]*b[23]*b[24]*b[26]+192*b[21]*b[23]*b[25]*b[27]+128*b[21]*b[23]*b[26]*b[28]+64*b[21]*b[23]*b[27]*b[29]+128*b[21]*b[24]*b[25]*b[28]+64*b[21]*b[24]*b[26]*b[29]+384*b[22]*b[23]*b[24]*b[25]+320*b[22]*b[23]*b[25]*b[26]+256*b[22]*b[23]*b[26]*b[27]+192*b[22]*b[23]*b[27]*b[28]+128*b[22]*b[23]*b[28]*b[29]+64*b[22]*b[23]*b[29]*b[30]+256*b[22]*b[24]*b[25]*b[27]+192*b[22]*b[24]*b[26]*b[28]+128*b[22]*b[24]*b[27]*b[29]+64*b[22]*b[24]*b[28]*b[30]+128*b[22]*b[25]*b[26]*b[29]+64*b[22]*b[25]*b[27]*b[30]+384*b[23]*b[24]*b[25]*b[26]+320*b[23]*b[24]*b[26]*b[27]+256*b[23]*b[24]*b[27]*b[28]+192*b[23]*b[24]*b[28]*b[29]+128*b[23]*b[24]*b[29]*b[30]+64*b[23]*b[24]*b[30]*b[31]+256*b[23]*b[25]*b[26]*b[28]+192*b[23]*b[25]*b[27]*b[29]+128*b[23]*b[25]*b[28]*b[30]+64*b[23]*b[25]*b[29]*b[31]+128*b[23]*b[26]*b[27]*b[30]+64*b[23]*b[26]*b[28]*b[31]+384*b[24]*b[25]*b[26]*b[27]+320*b[24]*b[25]*b[27]*b[28]+256*b[24]*b[25]*b[28]*b[29]+192*b[24]*b[25]*b[29]*b[30]+128*b[24]*b[25]*b[30]*b[31]+64*b[24]*b[25]*b[31]*b[32]+256*b[24]*b[26]*b[27]*b[29]+192*b[24]*b[26]*b[28]*b[30]+128*b[24]*b[26]*b[29]*b[31]+64*b[24]*b[26]*b[30]*b[32]+128*b[24]*b[27]*b[28]*b[31]+64*b[24]*b[27]*b[29]*b[32]+384*b[25]*b[26]*b[27]*b[28]+320*b[25]*b[26]*b[28]*b[29]+256*b[25]*b[26]*b[29]*b[30]+192*b[25]*b[26]*b[30]*b[31]+128*b[25]*b[26]*b[31]*b[32]+64*b[25]*b[26]*b[32]*b[33]+256*b[25]*b[27]*b[28]*b[30]+192*b[25]*b[27]*b[29]*b[31]+128*b[25]*b[27]*b[30]*b[32]+64*b[25]*b[27]*b[31]*b[33]+128*b[25]*b[28]*b[29]*b[32]+64*b[25]*b[28]*b[30]*b[33]+384*b[26]*b[27]*b[28]*b[29]+320*b[26]*b[27]*b[29]*b[30]+256*b[26]*b[27]*b[30]*b[31]+192*b[26]*b[27]*b[31]*b[32]+128*b[26]*b[27]*b[32]*b[33]+64*b[26]*b[27]*b[33]*b[34]+256*b[26]*b[28]*b[29]*b[31]+192*b[26]*b[28]*b[30]*b[32]+128*b[26]*b[28]*b[31]*b[33]+64*b[26]*b[28]*b[32]*b[34]+128*b[26]*b[29]*b[30]*b[33]+64*b[26]*b[29]*b[31]*b[34]+384*b[27]*b[28]*b[29]*b[30]+320*b[27]*b[28]*b[30]*b[31]+256*b[27]*b[28]*b[31]*b[32]+192*b[27]*b[28]*b[32]*b[33]+128*b[27]*b[28]*b[33]*b[34]+64*b[27]*b[28]*b[34]*b[35]+256*b[27]*b[29]*b[30]*b[32]+192*b[27]*b[29]*b[31]*b[33]+128*b[27]*b[29]*b[32]*b[34]+64*b[27]*b[29]*b[33]*b[35]+128*b[27]*b[30]*b[31]*b[34]+64*b[27]*b[30]*b[32]*b[35]+320*b[28]*b[29]*b[30]*b[31]+256*b[28]*b[29]*b[31]*b[32]+192*b[28]*b[29]*b[32]*b[33]+128*b[28]*b[29]*b[33]*b[34]+64*b[28]*b[29]*b[34]*b[35]+192*b[28]*b[30]*b[31]*b[33]+128*b[28]*b[30]*b[32]*b[34]+64*b[28]*b[30]*b[33]*b[35]+64*b[28]*b[31]*b[32]*b[35]+256*b[29]*b[30]*b[31]*b[32]+192*b[29]*b[30]*b[32]*b[33]+128*b[29]*b[30]*b[33]*b[34]+64*b[29]*b[30]*b[34]*b[35]+128*b[29]*b[31]*b[32]*b[34]+64*b[29]*b[31]*b[33]*b[35]+192*b[30]*b[31]*b[32]*b[33]+128*b[30]*b[31]*b[33]*b[34]+64*b[30]*b[31]*b[34]*b[35]+64*b[30]*b[32]*b[33]*b[35]+128*b[31]*b[32]*b[33]*b[34]+64*b[31]*b[32]*b[34]*b[35]+64*b[32]*b[33]*b[34]*b[35]-32*b[1]*b[2]*b[3]-64*b[1]*b[2]*b[4]-64*b[1]*b[2]*b[5]-64*b[1]*b[2]*b[6]-64*b[1]*b[2]*b[7]-64*b[1]*b[2]*b[8]-32*b[1]*b[2]*b[9]-64*b[1]*b[3]*b[4]-32*b[1]*b[3]*b[5]-64*b[1]*b[3]*b[6]-64*b[1]*b[3]*b[7]-32*b[1]*b[3]*b[8]-32*b[1]*b[3]*b[9]-64*b[1]*b[4]*b[5]-64*b[1]*b[4]*b[6]-32*b[1]*b[4]*b[8]-32*b[1]*b[4]*b[9]-32*b[1]*b[5]*b[6]-32*b[1]*b[5]*b[7]-32*b[1]*b[5]*b[8]-32*b[1]*b[6]*b[7]-32*b[1]*b[6]*b[8]-32*b[1]*b[6]*b[9]-32*b[1]*b[7]*b[8]-32*b[1]*b[7]*b[9]-32*b[1]*b[8]*b[9]-96*b[2]*b[3]*b[4]-128*b[2]*b[3]*b[5]-128*b[2]*b[3]*b[6]-128*b[2]*b[3]*b[7]-128*b[2]*b[3]*b[8]-96*b[2]*b[3]*b[9]-32*b[2]*b[3]*b[10]-160*b[2]*b[4]*b[5]-64*b[2]*b[4]*b[6]-128*b[2]*b[4]*b[7]-96*b[2]*b[4]*b[8]-64*b[2]*b[4]*b[9]-32*b[2]*b[4]*b[10]-160*b[2]*b[5]*b[6]-96*b[2]*b[5]*b[7]-64*b[2]*b[5]*b[9]-32*b[2]*b[5]*b[10]-96*b[2]*b[6]*b[7]-64*b[2]*b[6]*b[8]-64*b[2]*b[6]*b[9]-96*b[2]*b[7]*b[8]-64*b[2]*b[7]*b[9]-32*b[2]*b[7]*b[10]-96*b[2]*b[8]*b[9]-32*b[2]*b[8]*b[10]-32*b[2]*b[9]*b[10]-160*b[3]*b[4]*b[5]-224*b[3]*b[4]*b[6]-192*b[3]*b[4]*b[7]-192*b[3]*b[4]*b[8]-160*b[3]*b[4]*b[9]-96*b[3]*b[4]*b[10]-32*b[3]*b[4]*b[11]-256*b[3]*b[5]*b[6]-128*b[3]*b[5]*b[7]-160*b[3]*b[5]*b[8]-128*b[3]*b[5]*b[9]-64*b[3]*b[5]*b[10]-32*b[3]*b[5]*b[11]-224*b[3]*b[6]*b[7]-160*b[3]*b[6]*b[8]-64*b[3]*b[6]*b[10]-32*b[3]*b[6]*b[11]-160*b[3]*b[7]*b[8]-128*b[3]*b[7]*b[9]-64*b[3]*b[7]*b[10]-160*b[3]*b[8]*b[9]-64*b[3]*b[8]*b[10]-32*b[3]*b[8]*b[11]-96*b[3]*b[9]*b[10]-32*b[3]*b[9]*b[11]-32*b[3]*b[10]*b[11]-224*b[4]*b[5]*b[6]-320*b[4]*b[5]*b[7]-288*b[4]*b[5]*b[8]-224*b[4]*b[5]*b[9]-160*b[4]*b[5]*b[10]-96*b[4]*b[5]*b[11]-32*b[4]*b[5]*b[12]-352*b[4]*b[6]*b[7]-160*b[4]*b[6]*b[8]-224*b[4]*b[6]*b[9]-128*b[4]*b[6]*b[10]-64*b[4]*b[6]*b[11]-32*b[4]*b[6]*b[12]-288*b[4]*b[7]*b[8]-224*b[4]*b[7]*b[9]-64*b[4]*b[7]*b[11]-32*b[4]*b[7]*b[12]-224*b[4]*b[8]*b[9]-128*b[4]*b[8]*b[10]-64*b[4]*b[8]*b[11]-160*b[4]*b[9]*b[10]-64*b[4]*b[9]*b[11]-32*b[4]*b[9]*b[12]-96*b[4]*b[10]*b[11]-32*b[4]*b[10]*b[12]-32*b[4]*b[11]*b[12]-288*b[5]*b[6]*b[7]-416*b[5]*b[6]*b[8]-352*b[5]*b[6]*b[9]-224*b[5]*b[6]*b[10]-160*b[5]*b[6]*b[11]-96*b[5]*b[6]*b[12]-32*b[5]*b[6]*b[13]-416*b[5]*b[7]*b[8]-192*b[5]*b[7]*b[9]-224*b[5]*b[7]*b[10]-128*b[5]*b[7]*b[11]-64*b[5]*b[7]*b[12]-32*b[5]*b[7]*b[13]-352*b[5]*b[8]*b[9]-224*b[5]*b[8]*b[10]-64*b[5]*b[8]*b[12]-32*b[5]*b[8]*b[13]-224*b[5]*b[9]*b[10]-128*b[5]*b[9]*b[11]-64*b[5]*b[9]*b[12]-160*b[5]*b[10]*b[11]-64*b[5]*b[10]*b[12]-32*b[5]*b[10]*b[13]-96*b[5]*b[11]*b[12]-32*b[5]*b[11]*b[13]-32*b[5]*b[12]*b[13]-352*b[6]*b[7]*b[8]-480*b[6]*b[7]*b[9]-352*b[6]*b[7]*b[10]-224*b[6]*b[7]*b[11]-160*b[6]*b[7]*b[12]-96*b[6]*b[7]*b[13]-32*b[6]*b[7]*b[14]-480*b[6]*b[8]*b[9]-192*b[6]*b[8]*b[10]-224*b[6]*b[8]*b[11]-128*b[6]*b[8]*b[12]-64*b[6]*b[8]*b[13]-32*b[6]*b[8]*b[14]-352*b[6]*b[9]*b[10]-224*b[6]*b[9]*b[11]-64*b[6]*b[9]*b[13]-32*b[6]*b[9]*b[14]-224*b[6]*b[10]*b[11]-128*b[6]*b[10]*b[12]-64*b[6]*b[10]*b[13]-160*b[6]*b[11]*b[12]-64*b[6]*b[11]*b[13]-32*b[6]*b[11]*b[14]-96*b[6]*b[12]*b[13]-32*b[6]*b[12]*b[14]-32*b[6]*b[13]*b[14]-384*b[7]*b[8]*b[9]-480*b[7]*b[8]*b[10]-352*b[7]*b[8]*b[11]-224*b[7]*b[8]*b[12]-160*b[7]*b[8]*b[13]-96*b[7]*b[8]*b[14]-32*b[7]*b[8]*b[15]-480*b[7]*b[9]*b[10]-192*b[7]*b[9]*b[11]-224*b[7]*b[9]*b[12]-128*b[7]*b[9]*b[13]-64*b[7]*b[9]*b[14]-32*b[7]*b[9]*b[15]-352*b[7]*b[10]*b[11]-224*b[7]*b[10]*b[12]-64*b[7]*b[10]*b[14]-32*b[7]*b[10]*b[15]-224*b[7]*b[11]*b[12]-128*b[7]*b[11]*b[13]-64*b[7]*b[11]*b[14]-160*b[7]*b[12]*b[13]-64*b[7]*b[12]*b[14]-32*b[7]*b[12]*b[15]-96*b[7]*b[13]*b[14]-32*b[7]*b[13]*b[15]-32*b[7]*b[14]*b[15]-384*b[8]*b[9]*b[10]-480*b[8]*b[9]*b[11]-352*b[8]*b[9]*b[12]-224*b[8]*b[9]*b[13]-160*b[8]*b[9]*b[14]-96*b[8]*b[9]*b[15]-32*b[8]*b[9]*b[16]-480*b[8]*b[10]*b[11]-192*b[8]*b[10]*b[12]-224*b[8]*b[10]*b[13]-128*b[8]*b[10]*b[14]-64*b[8]*b[10]*b[15]-32*b[8]*b[10]*b[16]-352*b[8]*b[11]*b[12]-224*b[8]*b[11]*b[13]-64*b[8]*b[11]*b[15]-32*b[8]*b[11]*b[16]-224*b[8]*b[12]*b[13]-128*b[8]*b[12]*b[14]-64*b[8]*b[12]*b[15]-160*b[8]*b[13]*b[14]-64*b[8]*b[13]*b[15]-32*b[8]*b[13]*b[16]-96*b[8]*b[14]*b[15]-32*b[8]*b[14]*b[16]-32*b[8]*b[15]*b[16]-384*b[9]*b[10]*b[11]-480*b[9]*b[10]*b[12]-352*b[9]*b[10]*b[13]-224*b[9]*b[10]*b[14]-160*b[9]*b[10]*b[15]-96*b[9]*b[10]*b[16]-32*b[9]*b[10]*b[17]-480*b[9]*b[11]*b[12]-192*b[9]*b[11]*b[13]-224*b[9]*b[11]*b[14]-128*b[9]*b[11]*b[15]-64*b[9]*b[11]*b[16]-32*b[9]*b[11]*b[17]-352*b[9]*b[12]*b[13]-224*b[9]*b[12]*b[14]-64*b[9]*b[12]*b[16]-32*b[9]*b[12]*b[17]-224*b[9]*b[13]*b[14]-128*b[9]*b[13]*b[15]-64*b[9]*b[13]*b[16]-160*b[9]*b[14]*b[15]-64*b[9]*b[14]*b[16]-32*b[9]*b[14]*b[17]-96*b[9]*b[15]*b[16]-32*b[9]*b[15]*b[17]-32*b[9]*b[16]*b[17]-384*b[10]*b[11]*b[12]-480*b[10]*b[11]*b[13]-352*b[10]*b[11]*b[14]-224*b[10]*b[11]*b[15]-160*b[10]*b[11]*b[16]-96*b[10]*b[11]*b[17]-32*b[10]*b[11]*b[18]-480*b[10]*b[12]*b[13]-192*b[10]*b[12]*b[14]-224*b[10]*b[12]*b[15]-128*b[10]*b[12]*b[16]-64*b[10]*b[12]*b[17]-32*b[10]*b[12]*b[18]-352*b[10]*b[13]*b[14]-224*b[10]*b[13]*b[15]-64*b[10]*b[13]*b[17]-32*b[10]*b[13]*b[18]-224*b[10]*b[14]*b[15]-128*b[10]*b[14]*b[16]-64*b[10]*b[14]*b[17]-160*b[10]*b[15]*b[16]-64*b[10]*b[15]*b[17]-32*b[10]*b[15]*b[18]-96*b[10]*b[16]*b[17]-32*b[10]*b[16]*b[18]-32*b[10]*b[17]*b[18]-384*b[11]*b[12]*b[13]-480*b[11]*b[12]*b[14]-352*b[11]*b[12]*b[15]-224*b[11]*b[12]*b[16]-160*b[11]*b[12]*b[17]-96*b[11]*b[12]*b[18]-32*b[11]*b[12]*b[19]-480*b[11]*b[13]*b[14]-192*b[11]*b[13]*b[15]-224*b[11]*b[13]*b[16]-128*b[11]*b[13]*b[17]-64*b[11]*b[13]*b[18]-32*b[11]*b[13]*b[19]-352*b[11]*b[14]*b[15]-224*b[11]*b[14]*b[16]-64*b[11]*b[14]*b[18]-32*b[11]*b[14]*b[19]-224*b[11]*b[15]*b[16]-128*b[11]*b[15]*b[17]-64*b[11]*b[15]*b[18]-160*b[11]*b[16]*b[17]-64*b[11]*b[16]*b[18]-32*b[11]*b[16]*b[19]-96*b[11]*b[17]*b[18]-32*b[11]*b[17]*b[19]-32*b[11]*b[18]*b[19]-384*b[12]*b[13]*b[14]-480*b[12]*b[13]*b[15]-352*b[12]*b[13]*b[16]-224*b[12]*b[13]*b[17]-160*b[12]*b[13]*b[18]-96*b[12]*b[13]*b[19]-32*b[12]*b[13]*b[20]-480*b[12]*b[14]*b[15]-192*b[12]*b[14]*b[16]-224*b[12]*b[14]*b[17]-128*b[12]*b[14]*b[18]-64*b[12]*b[14]*b[19]-32*b[12]*b[14]*b[20]-352*b[12]*b[15]*b[16]-224*b[12]*b[15]*b[17]-64*b[12]*b[15]*b[19]-32*b[12]*b[15]*b[20]-224*b[12]*b[16]*b[17]-128*b[12]*b[16]*b[18]-64*b[12]*b[16]*b[19]-160*b[12]*b[17]*b[18]-64*b[12]*b[17]*b[19]-32*b[12]*b[17]*b[20]-96*b[12]*b[18]*b[19]-32*b[12]*b[18]*b[20]-32*b[12]*b[19]*b[20]-384*b[13]*b[14]*b[15]-480*b[13]*b[14]*b[16]-352*b[13]*b[14]*b[17]-224*b[13]*b[14]*b[18]-160*b[13]*b[14]*b[19]-96*b[13]*b[14]*b[20]-32*b[13]*b[14]*b[21]-480*b[13]*b[15]*b[16]-192*b[13]*b[15]*b[17]-224*b[13]*b[15]*b[18]-128*b[13]*b[15]*b[19]-64*b[13]*b[15]*b[20]-32*b[13]*b[15]*b[21]-352*b[13]*b[16]*b[17]-224*b[13]*b[16]*b[18]-64*b[13]*b[16]*b[20]-32*b[13]*b[16]*b[21]-224*b[13]*b[17]*b[18]-128*b[13]*b[17]*b[19]-64*b[13]*b[17]*b[20]-160*b[13]*b[18]*b[19]-64*b[13]*b[18]*b[20]-32*b[13]*b[18]*b[21]-96*b[13]*b[19]*b[20]-32*b[13]*b[19]*b[21]-32*b[13]*b[20]*b[21]-384*b[14]*b[15]*b[16]-480*b[14]*b[15]*b[17]-352*b[14]*b[15]*b[18]-224*b[14]*b[15]*b[19]-160*b[14]*b[15]*b[20]-96*b[14]*b[15]*b[21]-32*b[14]*b[15]*b[22]-480*b[14]*b[16]*b[17]-192*b[14]*b[16]*b[18]-224*b[14]*b[16]*b[19]-128*b[14]*b[16]*b[20]-64*b[14]*b[16]*b[21]-32*b[14]*b[16]*b[22]-352*b[14]*b[17]*b[18]-224*b[14]*b[17]*b[19]-64*b[14]*b[17]*b[21]-32*b[14]*b[17]*b[22]-224*b[14]*b[18]*b[19]-128*b[14]*b[18]*b[20]-64*b[14]*b[18]*b[21]-160*b[14]*b[19]*b[20]-64*b[14]*b[19]*b[21]-32*b[14]*b[19]*b[22]-96*b[14]*b[20]*b[21]-32*b[14]*b[20]*b[22]-32*b[14]*b[21]*b[22]-384*b[15]*b[16]*b[17]-480*b[15]*b[16]*b[18]-352*b[15]*b[16]*b[19]-224*b[15]*b[16]*b[20]-160*b[15]*b[16]*b[21]-96*b[15]*b[16]*b[22]-32*b[15]*b[16]*b[23]-480*b[15]*b[17]*b[18]-192*b[15]*b[17]*b[19]-224*b[15]*b[17]*b[20]-128*b[15]*b[17]*b[21]-64*b[15]*b[17]*b[22]-32*b[15]*b[17]*b[23]-352*b[15]*b[18]*b[19]-224*b[15]*b[18]*b[20]-64*b[15]*b[18]*b[22]-32*b[15]*b[18]*b[23]-224*b[15]*b[19]*b[20]-128*b[15]*b[19]*b[21]-64*b[15]*b[19]*b[22]-160*b[15]*b[20]*b[21]-64*b[15]*b[20]*b[22]-32*b[15]*b[20]*b[23]-96*b[15]*b[21]*b[22]-32*b[15]*b[21]*b[23]-32*b[15]*b[22]*b[23]-384*b[16]*b[17]*b[18]-480*b[16]*b[17]*b[19]-352*b[16]*b[17]*b[20]-224*b[16]*b[17]*b[21]-160*b[16]*b[17]*b[22]-96*b[16]*b[17]*b[23]-32*b[16]*b[17]*b[24]-480*b[16]*b[18]*b[19]-192*b[16]*b[18]*b[20]-224*b[16]*b[18]*b[21]-128*b[16]*b[18]*b[22]-64*b[16]*b[18]*b[23]-32*b[16]*b[18]*b[24]-352*b[16]*b[19]*b[20]-224*b[16]*b[19]*b[21]-64*b[16]*b[19]*b[23]-32*b[16]*b[19]*b[24]-224*b[16]*b[20]*b[21]-128*b[16]*b[20]*b[22]-64*b[16]*b[20]*b[23]-160*b[16]*b[21]*b[22]-64*b[16]*b[21]*b[23]-32*b[16]*b[21]*b[24]-96*b[16]*b[22]*b[23]-32*b[16]*b[22]*b[24]-32*b[16]*b[23]*b[24]-384*b[17]*b[18]*b[19]-480*b[17]*b[18]*b[20]-352*b[17]*b[18]*b[21]-224*b[17]*b[18]*b[22]-160*b[17]*b[18]*b[23]-96*b[17]*b[18]*b[24]-32*b[17]*b[18]*b[25]-480*b[17]*b[19]*b[20]-192*b[17]*b[19]*b[21]-224*b[17]*b[19]*b[22]-128*b[17]*b[19]*b[23]-64*b[17]*b[19]*b[24]-32*b[17]*b[19]*b[25]-352*b[17]*b[20]*b[21]-224*b[17]*b[20]*b[22]-64*b[17]*b[20]*b[24]-32*b[17]*b[20]*b[25]-224*b[17]*b[21]*b[22]-128*b[17]*b[21]*b[23]-64*b[17]*b[21]*b[24]-160*b[17]*b[22]*b[23]-64*b[17]*b[22]*b[24]-32*b[17]*b[22]*b[25]-96*b[17]*b[23]*b[24]-32*b[17]*b[23]*b[25]-32*b[17]*b[24]*b[25]-384*b[18]*b[19]*b[20]-480*b[18]*b[19]*b[21]-352*b[18]*b[19]*b[22]-224*b[18]*b[19]*b[23]-160*b[18]*b[19]*b[24]-96*b[18]*b[19]*b[25]-32*b[18]*b[19]*b[26]-480*b[18]*b[20]*b[21]-192*b[18]*b[20]*b[22]-224*b[18]*b[20]*b[23]-128*b[18]*b[20]*b[24]-64*b[18]*b[20]*b[25]-32*b[18]*b[20]*b[26]-352*b[18]*b[21]*b[22]-224*b[18]*b[21]*b[23]-64*b[18]*b[21]*b[25]-32*b[18]*b[21]*b[26]-224*b[18]*b[22]*b[23]-128*b[18]*b[22]*b[24]-64*b[18]*b[22]*b[25]-160*b[18]*b[23]*b[24]-64*b[18]*b[23]*b[25]-32*b[18]*b[23]*b[26]-96*b[18]*b[24]*b[25]-32*b[18]*b[24]*b[26]-32*b[18]*b[25]*b[26]-384*b[19]*b[20]*b[21]-480*b[19]*b[20]*b[22]-352*b[19]*b[20]*b[23]-224*b[19]*b[20]*b[24]-160*b[19]*b[20]*b[25]-96*b[19]*b[20]*b[26]-32*b[19]*b[20]*b[27]-480*b[19]*b[21]*b[22]-192*b[19]*b[21]*b[23]-224*b[19]*b[21]*b[24]-128*b[19]*b[21]*b[25]-64*b[19]*b[21]*b[26]-32*b[19]*b[21]*b[27]-352*b[19]*b[22]*b[23]-224*b[19]*b[22]*b[24]-64*b[19]*b[22]*b[26]-32*b[19]*b[22]*b[27]-224*b[19]*b[23]*b[24]-128*b[19]*b[23]*b[25]-64*b[19]*b[23]*b[26]-160*b[19]*b[24]*b[25]-64*b[19]*b[24]*b[26]-32*b[19]*b[24]*b[27]-96*b[19]*b[25]*b[26]-32*b[19]*b[25]*b[27]-32*b[19]*b[26]*b[27]-384*b[20]*b[21]*b[22]-480*b[20]*b[21]*b[23]-352*b[20]*b[21]*b[24]-224*b[20]*b[21]*b[25]-160*b[20]*b[21]*b[26]-96*b[20]*b[21]*b[27]-32*b[20]*b[21]*b[28]-480*b[20]*b[22]*b[23]-192*b[20]*b[22]*b[24]-224*b[20]*b[22]*b[25]-128*b[20]*b[22]*b[26]-64*b[20]*b[22]*b[27]-32*b[20]*b[22]*b[28]-352*b[20]*b[23]*b[24]-224*b[20]*b[23]*b[25]-64*b[20]*b[23]*b[27]-32*b[20]*b[23]*b[28]-224*b[20]*b[24]*b[25]-128*b[20]*b[24]*b[26]-64*b[20]*b[24]*b[27]-160*b[20]*b[25]*b[26]-64*b[20]*b[25]*b[27]-32*b[20]*b[25]*b[28]-96*b[20]*b[26]*b[27]-32*b[20]*b[26]*b[28]-32*b[20]*b[27]*b[28]-384*b[21]*b[22]*b[23]-480*b[21]*b[22]*b[24]-352*b[21]*b[22]*b[25]-224*b[21]*b[22]*b[26]-160*b[21]*b[22]*b[27]-96*b[21]*b[22]*b[28]-32*b[21]*b[22]*b[29]-480*b[21]*b[23]*b[24]-192*b[21]*b[23]*b[25]-224*b[21]*b[23]*b[26]-128*b[21]*b[23]*b[27]-64*b[21]*b[23]*b[28]-32*b[21]*b[23]*b[29]-352*b[21]*b[24]*b[25]-224*b[21]*b[24]*b[26]-64*b[21]*b[24]*b[28]-32*b[21]*b[24]*b[29]-224*b[21]*b[25]*b[26]-128*b[21]*b[25]*b[27]-64*b[21]*b[25]*b[28]-160*b[21]*b[26]*b[27]-64*b[21]*b[26]*b[28]-32*b[21]*b[26]*b[29]-96*b[21]*b[27]*b[28]-32*b[21]*b[27]*b[29]-32*b[21]*b[28]*b[29]-384*b[22]*b[23]*b[24]-480*b[22]*b[23]*b[25]-352*b[22]*b[23]*b[26]-224*b[22]*b[23]*b[27]-160*b[22]*b[23]*b[28]-96*b[22]*b[23]*b[29]-32*b[22]*b[23]*b[30]-480*b[22]*b[24]*b[25]-192*b[22]*b[24]*b[26]-224*b[22]*b[24]*b[27]-128*b[22]*b[24]*b[28]-64*b[22]*b[24]*b[29]-32*b[22]*b[24]*b[30]-352*b[22]*b[25]*b[26]-224*b[22]*b[25]*b[27]-64*b[22]*b[25]*b[29]-32*b[22]*b[25]*b[30]-224*b[22]*b[26]*b[27]-128*b[22]*b[26]*b[28]-64*b[22]*b[26]*b[29]-160*b[22]*b[27]*b[28]-64*b[22]*b[27]*b[29]-32*b[22]*b[27]*b[30]-96*b[22]*b[28]*b[29]-32*b[22]*b[28]*b[30]-32*b[22]*b[29]*b[30]-384*b[23]*b[24]*b[25]-480*b[23]*b[24]*b[26]-352*b[23]*b[24]*b[27]-224*b[23]*b[24]*b[28]-160*b[23]*b[24]*b[29]-96*b[23]*b[24]*b[30]-32*b[23]*b[24]*b[31]-480*b[23]*b[25]*b[26]-192*b[23]*b[25]*b[27]-224*b[23]*b[25]*b[28]-128*b[23]*b[25]*b[29]-64*b[23]*b[25]*b[30]-32*b[23]*b[25]*b[31]-352*b[23]*b[26]*b[27]-224*b[23]*b[26]*b[28]-64*b[23]*b[26]*b[30]-32*b[23]*b[26]*b[31]-224*b[23]*b[27]*b[28]-128*b[23]*b[27]*b[29]-64*b[23]*b[27]*b[30]-160*b[23]*b[28]*b[29]-64*b[23]*b[28]*b[30]-32*b[23]*b[28]*b[31]-96*b[23]*b[29]*b[30]-32*b[23]*b[29]*b[31]-32*b[23]*b[30]*b[31]-384*b[24]*b[25]*b[26]-480*b[24]*b[25]*b[27]-352*b[24]*b[25]*b[28]-224*b[24]*b[25]*b[29]-160*b[24]*b[25]*b[30]-96*b[24]*b[25]*b[31]-32*b[24]*b[25]*b[32]-480*b[24]*b[26]*b[27]-192*b[24]*b[26]*b[28]-224*b[24]*b[26]*b[29]-128*b[24]*b[26]*b[30]-64*b[24]*b[26]*b[31]-32*b[24]*b[26]*b[32]-352*b[24]*b[27]*b[28]-224*b[24]*b[27]*b[29]-64*b[24]*b[27]*b[31]-32*b[24]*b[27]*b[32]-224*b[24]*b[28]*b[29]-128*b[24]*b[28]*b[30]-64*b[24]*b[28]*b[31]-160*b[24]*b[29]*b[30]-64*b[24]*b[29]*b[31]-32*b[24]*b[29]*b[32]-96*b[24]*b[30]*b[31]-32*b[24]*b[30]*b[32]-32*b[24]*b[31]*b[32]-384*b[25]*b[26]*b[27]-480*b[25]*b[26]*b[28]-352*b[25]*b[26]*b[29]-224*b[25]*b[26]*b[30]-160*b[25]*b[26]*b[31]-96*b[25]*b[26]*b[32]-32*b[25]*b[26]*b[33]-480*b[25]*b[27]*b[28]-192*b[25]*b[27]*b[29]-224*b[25]*b[27]*b[30]-128*b[25]*b[27]*b[31]-64*b[25]*b[27]*b[32]-32*b[25]*b[27]*b[33]-352*b[25]*b[28]*b[29]-224*b[25]*b[28]*b[30]-64*b[25]*b[28]*b[32]-32*b[25]*b[28]*b[33]-224*b[25]*b[29]*b[30]-128*b[25]*b[29]*b[31]-64*b[25]*b[29]*b[32]-160*b[25]*b[30]*b[31]-64*b[25]*b[30]*b[32]-32*b[25]*b[30]*b[33]-96*b[25]*b[31]*b[32]-32*b[25]*b[31]*b[33]-32*b[25]*b[32]*b[33]-384*b[26]*b[27]*b[28]-480*b[26]*b[27]*b[29]-352*b[26]*b[27]*b[30]-224*b[26]*b[27]*b[31]-160*b[26]*b[27]*b[32]-96*b[26]*b[27]*b[33]-32*b[26]*b[27]*b[34]-480*b[26]*b[28]*b[29]-192*b[26]*b[28]*b[30]-224*b[26]*b[28]*b[31]-128*b[26]*b[28]*b[32]-64*b[26]*b[28]*b[33]-32*b[26]*b[28]*b[34]-352*b[26]*b[29]*b[30]-224*b[26]*b[29]*b[31]-64*b[26]*b[29]*b[33]-32*b[26]*b[29]*b[34]-224*b[26]*b[30]*b[31]-128*b[26]*b[30]*b[32]-64*b[26]*b[30]*b[33]-160*b[26]*b[31]*b[32]-64*b[26]*b[31]*b[33]-32*b[26]*b[31]*b[34]-96*b[26]*b[32]*b[33]-32*b[26]*b[32]*b[34]-32*b[26]*b[33]*b[34]-384*b[27]*b[28]*b[29]-480*b[27]*b[28]*b[30]-352*b[27]*b[28]*b[31]-224*b[27]*b[28]*b[32]-160*b[27]*b[28]*b[33]-96*b[27]*b[28]*b[34]-32*b[27]*b[28]*b[35]-480*b[27]*b[29]*b[30]-192*b[27]*b[29]*b[31]-224*b[27]*b[29]*b[32]-128*b[27]*b[29]*b[33]-64*b[27]*b[29]*b[34]-32*b[27]*b[29]*b[35]-352*b[27]*b[30]*b[31]-224*b[27]*b[30]*b[32]-64*b[27]*b[30]*b[34]-32*b[27]*b[30]*b[35]-224*b[27]*b[31]*b[32]-128*b[27]*b[31]*b[33]-64*b[27]*b[31]*b[34]-160*b[27]*b[32]*b[33]-64*b[27]*b[32]*b[34]-32*b[27]*b[32]*b[35]-96*b[27]*b[33]*b[34]-32*b[27]*b[33]*b[35]-32*b[27]*b[34]*b[35]-352*b[28]*b[29]*b[30]-416*b[28]*b[29]*b[31]-288*b[28]*b[29]*b[32]-160*b[28]*b[29]*b[33]-96*b[28]*b[29]*b[34]-32*b[28]*b[29]*b[35]-416*b[28]*b[30]*b[31]-160*b[28]*b[30]*b[32]-160*b[28]*b[30]*b[33]-64*b[28]*b[30]*b[34]-32*b[28]*b[30]*b[35]-288*b[28]*b[31]*b[32]-160*b[28]*b[31]*b[33]-32*b[28]*b[31]*b[35]-192*b[28]*b[32]*b[33]-96*b[28]*b[32]*b[34]-32*b[28]*b[32]*b[35]-128*b[28]*b[33]*b[34]-32*b[28]*b[33]*b[35]-64*b[28]*b[34]*b[35]-288*b[29]*b[30]*b[31]-352*b[29]*b[30]*b[32]-224*b[29]*b[30]*b[33]-96*b[29]*b[30]*b[34]-32*b[29]*b[30]*b[35]-320*b[29]*b[31]*b[32]-128*b[29]*b[31]*b[33]-96*b[29]*b[31]*b[34]-32*b[29]*b[31]*b[35]-192*b[29]*b[32]*b[33]-128*b[29]*b[32]*b[34]-128*b[29]*b[33]*b[34]-64*b[29]*b[33]*b[35]-64*b[29]*b[34]*b[35]-224*b[30]*b[31]*b[32]-256*b[30]*b[31]*b[33]-160*b[30]*b[31]*b[34]-32*b[30]*b[31]*b[35]-224*b[30]*b[32]*b[33]-64*b[30]*b[32]*b[34]-64*b[30]*b[32]*b[35]-128*b[30]*b[33]*b[34]-64*b[30]*b[33]*b[35]-64*b[30]*b[34]*b[35]-160*b[31]*b[32]*b[33]-160*b[31]*b[32]*b[34]-64*b[31]*b[32]*b[35]-128*b[31]*b[33]*b[34]-32*b[31]*b[33]*b[35]-64*b[31]*b[34]*b[35]-96*b[32]*b[33]*b[34]-64*b[32]*b[33]*b[35]-64*b[32]*b[34]*b[35]-32*b[33]*b[34]*b[35]+96*b[1]*b[2]+88*b[1]*b[3]+80*b[1]*b[4]+72*b[1]*b[5]+80*b[1]*b[6]+72*b[1]*b[7]+64*b[1]*b[8]+56*b[1]*b[9]+192*b[2]*b[3]+192*b[2]*b[4]+176*b[2]*b[5]+176*b[2]*b[6]+176*b[2]*b[7]+160*b[2]*b[8]+128*b[2]*b[9]+56*b[2]*b[10]+304*b[3]*b[4]+296*b[3]*b[5]+288*b[3]*b[6]+296*b[3]*b[7]+272*b[3]*b[8]+232*b[3]*b[9]+128*b[3]*b[10]+56*b[3]*b[11]+432*b[4]*b[5]+416*b[4]*b[6]+400*b[4]*b[7]+400*b[4]*b[8]+352*b[4]*b[9]+232*b[4]*b[10]+128*b[4]*b[11]+56*b[4]*b[12]+560*b[5]*b[6]+520*b[5]*b[7]+496*b[5]*b[8]+472*b[5]*b[9]+352*b[5]*b[10]+232*b[5]*b[11]+128*b[5]*b[12]+56*b[5]*b[13]+672*b[6]*b[7]+624*b[6]*b[8]+576*b[6]*b[9]+472*b[6]*b[10]+352*b[6]*b[11]+232*b[6]*b[12]+128*b[6]*b[13]+56*b[6]*b[14]+768*b[7]*b[8]+712*b[7]*b[9]+576*b[7]*b[10]+472*b[7]*b[11]+352*b[7]*b[12]+232*b[7]*b[13]+128*b[7]*b[14]+56*b[7]*b[15]+864*b[8]*b[9]+712*b[8]*b[10]+576*b[8]*b[11]+472*b[8]*b[12]+352*b[8]*b[13]+232*b[8]*b[14]+128*b[8]*b[15]+56*b[8]*b[16]+864*b[9]*b[10]+712*b[9]*b[11]+576*b[9]*b[12]+472*b[9]*b[13]+352*b[9]*b[14]+232*b[9]*b[15]+128*b[9]*b[16]+56*b[9]*b[17]+864*b[10]*b[11]+712*b[10]*b[12]+576*b[10]*b[13]+472*b[10]*b[14]+352*b[10]*b[15]+232*b[10]*b[16]+128*b[10]*b[17]+56*b[10]*b[18]+864*b[11]*b[12]+712*b[11]*b[13]+576*b[11]*b[14]+472*b[11]*b[15]+352*b[11]*b[16]+232*b[11]*b[17]+128*b[11]*b[18]+56*b[11]*b[19]+864*b[12]*b[13]+712*b[12]*b[14]+576*b[12]*b[15]+472*b[12]*b[16]+352*b[12]*b[17]+232*b[12]*b[18]+128*b[12]*b[19]+56*b[12]*b[20]+864*b[13]*b[14]+712*b[13]*b[15]+576*b[13]*b[16]+472*b[13]*b[17]+352*b[13]*b[18]+232*b[13]*b[19]+128*b[13]*b[20]+56*b[13]*b[21]+864*b[14]*b[15]+712*b[14]*b[16]+576*b[14]*b[17]+472*b[14]*b[18]+352*b[14]*b[19]+232*b[14]*b[20]+128*b[14]*b[21]+56*b[14]*b[22]+864*b[15]*b[16]+712*b[15]*b[17]+576*b[15]*b[18]+472*b[15]*b[19]+352*b[15]*b[20]+232*b[15]*b[21]+128*b[15]*b[22]+56*b[15]*b[23]+864*b[16]*b[17]+712*b[16]*b[18]+576*b[16]*b[19]+472*b[16]*b[20]+352*b[16]*b[21]+232*b[16]*b[22]+128*b[16]*b[23]+56*b[16]*b[24]+864*b[17]*b[18]+712*b[17]*b[19]+576*b[17]*b[20]+472*b[17]*b[21]+352*b[17]*b[22]+232*b[17]*b[23]+128*b[17]*b[24]+56*b[17]*b[25]+864*b[18]*b[19]+712*b[18]*b[20]+576*b[18]*b[21]+472*b[18]*b[22]+352*b[18]*b[23]+232*b[18]*b[24]+128*b[18]*b[25]+56*b[18]*b[26]+864*b[19]*b[20]+712*b[19]*b[21]+576*b[19]*b[22]+472*b[19]*b[23]+352*b[19]*b[24]+232*b[19]*b[25]+128*b[19]*b[26]+56*b[19]*b[27]+864*b[20]*b[21]+712*b[20]*b[22]+576*b[20]*b[23]+472*b[20]*b[24]+352*b[20]*b[25]+232*b[20]*b[26]+128*b[20]*b[27]+56*b[20]*b[28]+864*b[21]*b[22]+712*b[21]*b[23]+576*b[21]*b[24]+472*b[21]*b[25]+352*b[21]*b[26]+232*b[21]*b[27]+128*b[21]*b[28]+56*b[21]*b[29]+864*b[22]*b[23]+712*b[22]*b[24]+576*b[22]*b[25]+472*b[22]*b[26]+352*b[22]*b[27]+232*b[22]*b[28]+128*b[22]*b[29]+56*b[22]*b[30]+864*b[23]*b[24]+712*b[23]*b[25]+576*b[23]*b[26]+472*b[23]*b[27]+352*b[23]*b[28]+232*b[23]*b[29]+128*b[23]*b[30]+56*b[23]*b[31]+864*b[24]*b[25]+712*b[24]*b[26]+576*b[24]*b[27]+472*b[24]*b[28]+352*b[24]*b[29]+232*b[24]*b[30]+128*b[24]*b[31]+56*b[24]*b[32]+864*b[25]*b[26]+712*b[25]*b[27]+576*b[25]*b[28]+472*b[25]*b[29]+352*b[25]*b[30]+232*b[25]*b[31]+128*b[25]*b[32]+56*b[25]*b[33]+864*b[26]*b[27]+712*b[26]*b[28]+576*b[26]*b[29]+472*b[26]*b[30]+352*b[26]*b[31]+232*b[26]*b[32]+128*b[26]*b[33]+56*b[26]*b[34]+864*b[27]*b[28]+712*b[27]*b[29]+576*b[27]*b[30]+472*b[27]*b[31]+352*b[27]*b[32]+232*b[27]*b[33]+128*b[27]*b[34]+56*b[27]*b[35]+768*b[28]*b[29]+624*b[28]*b[30]+496*b[28]*b[31]+400*b[28]*b[32]+272*b[28]*b[33]+160*b[28]*b[34]+64*b[28]*b[35]+672*b[29]*b[30]+520*b[29]*b[31]+400*b[29]*b[32]+296*b[29]*b[33]+176*b[29]*b[34]+72*b[29]*b[35]+560*b[30]*b[31]+416*b[30]*b[32]+288*b[30]*b[33]+176*b[30]*b[34]+80*b[30]*b[35]+432*b[31]*b[32]+296*b[31]*b[33]+176*b[31]*b[34]+72*b[31]*b[35]+304*b[32]*b[33]+192*b[32]*b[34]+80*b[32]*b[35]+192*b[33]*b[34]+88*b[33]*b[35]+96*b[34]*b[35]-112*b[1]-244*b[2]-388*b[3]-536*b[4]-680*b[5]-828*b[6]-972*b[7]-1104*b[8]-1216*b[9]-1216*b[10]-1216*b[11]-1216*b[12]-1216*b[13]-1216*b[14]-1216*b[15]-1216*b[16]-1216*b[17]-1216*b[18]-1216*b[19]-1216*b[20]-1216*b[21]-1216*b[22]-1216*b[23]-1216*b[24]-1216*b[25]-1216*b[26]-1216*b[27]-1104*b[28]-972*b[29]-828*b[30]-680*b[31]-536*b[32]-388*b[33]-244*b[34]-112*b[35]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.