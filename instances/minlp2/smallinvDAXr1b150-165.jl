using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, i[i_Idx])
set_integer(i[8])
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_integer(i[23])
set_lower_bound(i[23], 0.0)
set_upper_bound(i[23], 100.0)
set_integer(i[21])
set_lower_bound(i[21], 0.0)
set_upper_bound(i[21], 100.0)
set_integer(i[12])
set_lower_bound(i[12], 0.0)
set_upper_bound(i[12], 100.0)
set_integer(i[27])
set_lower_bound(i[27], 0.0)
set_upper_bound(i[27], 100.0)
set_integer(i[24])
set_lower_bound(i[24], 0.0)
set_upper_bound(i[24], 100.0)
set_integer(i[29])
set_lower_bound(i[29], 0.0)
set_upper_bound(i[29], 100.0)
set_integer(i[19])
set_lower_bound(i[19], 0.0)
set_upper_bound(i[19], 100.0)
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[13])
set_lower_bound(i[13], 0.0)
set_upper_bound(i[13], 100.0)
set_integer(i[28])
set_lower_bound(i[28], 0.0)
set_upper_bound(i[28], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_integer(i[26])
set_lower_bound(i[26], 0.0)
set_upper_bound(i[26], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[9])
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_integer(i[22])
set_lower_bound(i[22], 0.0)
set_upper_bound(i[22], 100.0)
set_integer(i[14])
set_lower_bound(i[14], 0.0)
set_upper_bound(i[14], 100.0)
set_integer(i[16])
set_lower_bound(i[16], 0.0)
set_upper_bound(i[16], 100.0)
set_integer(i[10])
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_integer(i[15])
set_lower_bound(i[15], 0.0)
set_upper_bound(i[15], 100.0)
set_integer(i[17])
set_lower_bound(i[17], 0.0)
set_upper_bound(i[17], 100.0)
set_integer(i[7])
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_integer(i[20])
set_lower_bound(i[20], 0.0)
set_upper_bound(i[20], 100.0)
set_integer(i[11])
set_lower_bound(i[11], 0.0)
set_upper_bound(i[11], 100.0)
set_integer(i[30])
set_lower_bound(i[30], 0.0)
set_upper_bound(i[30], 100.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_integer(i[25])
set_lower_bound(i[25], 0.0)
set_upper_bound(i[25], 100.0)
set_integer(i[18])
set_lower_bound(i[18], 0.0)
set_upper_bound(i[18], 100.0)
set_upper_bound(i[1], 1.0e20)
set_upper_bound(i[2], 1.0e20)
set_upper_bound(i[3], 1.0e20)
set_upper_bound(i[4], 1.0e20)
set_upper_bound(i[5], 1.0e20)
set_upper_bound(i[6], 1.0e20)
set_upper_bound(i[7], 1.0e20)
set_upper_bound(i[8], 1.0e20)
set_upper_bound(i[9], 1.0e20)
set_upper_bound(i[10], 1.0e20)
set_upper_bound(i[11], 1.0e20)
set_upper_bound(i[12], 1.0e20)
set_upper_bound(i[13], 1.0e20)
set_upper_bound(i[14], 1.0e20)
set_upper_bound(i[15], 1.0e20)
set_upper_bound(i[16], 1.0e20)
set_upper_bound(i[17], 1.0e20)
set_upper_bound(i[18], 1.0e20)
set_upper_bound(i[19], 1.0e20)
set_upper_bound(i[20], 1.0e20)
set_upper_bound(i[21], 1.0e20)
set_upper_bound(i[22], 1.0e20)
set_upper_bound(i[23], 1.0e20)
set_upper_bound(i[24], 1.0e20)
set_upper_bound(i[25], 1.0e20)
set_upper_bound(i[26], 1.0e20)
set_upper_bound(i[27], 1.0e20)
set_upper_bound(i[28], 1.0e20)
set_upper_bound(i[29], 1.0e20)
set_upper_bound(i[30], 1.0e20)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.00558391* (i[1])^2+0.0103737* (i[2])^2+0.0221075* (i[3])^2+0.00399551* (i[4])^2+0.00267064* (i[5])^2+0.00516451* (i[6])^2+0.00421051* (i[7])^2+0.00368008* (i[8])^2+0.00372788* (i[9])^2+0.00668969* (i[10])^2+0.00613034* (i[11])^2+0.0129271* (i[12])^2+0.00697595* (i[13])^2+0.0104282* (i[14])^2+0.00899168* (i[15])^2+0.0206685* (i[16])^2+0.0488863* (i[17])^2+0.00894867* (i[18])^2+0.0124118* (i[19])^2+0.0122291* (i[20])^2+0.0128973* (i[21])^2+0.00668043* (i[22])^2+0.0153425* (i[23])^2+0.0128605* (i[24])^2+0.00718697* (i[25])^2+0.0102616* (i[26])^2+0.0123235* (i[27])^2+0.00569465* (i[28])^2+0.00818114* (i[29])^2+0.00469456* (i[30])^2+0.00901964*i[1]*i[2]+0.00860972*i[1]*i[3]+0.00248004*i[1]*i[4]+0.001821292*i[1]*i[5]+0.00561078*i[1]*i[6]+0.0051287*i[1]*i[7]+0.000691196*i[1]*i[8]+0.000805982*i[1]*i[9]+0.00531452*i[1]*i[10]+0.00556768*i[1]*i[11]+0.00745224*i[1]*i[12]+0.00478224*i[1]*i[13]+0.00610824*i[1]*i[14]+0.00577634*i[1]*i[15]+0.00613326*i[1]*i[16]+0.01432596*i[1]*i[17]+0.007501*i[1]*i[18]+0.00716212*i[1]*i[19]+0.00512922*i[1]*i[20]+0.0087283*i[1]*i[21]+0.00245846*i[1]*i[22]+0.0071572*i[1]*i[23]+0.00543966*i[1]*i[24]+0.00708258*i[1]*i[25]+0.00243422*i[1]*i[26]+0.00729094*i[1]*i[27]+0.00386642*i[1]*i[28]+0.0061908*i[1]*i[29]+0.00366754*i[1]*i[30]+0.01583972*i[2]*i[3]+0.00394608*i[2]*i[4]+0.001773554*i[2]*i[5]+0.00861376*i[2]*i[6]+0.00604454*i[2]*i[7]+0.00312866*i[2]*i[8]+0.00184686*i[2]*i[9]+0.00924638*i[2]*i[10]+0.01131902*i[2]*i[11]+0.01253232*i[2]*i[12]+0.00675858*i[2]*i[13]+0.00804604*i[2]*i[14]+0.00869872*i[2]*i[15]+0.0094047*i[2]*i[16]+0.0251538*i[2]*i[17]+0.01321532*i[2]*i[18]+0.01127964*i[2]*i[19]+0.0096635*i[2]*i[20]+0.0160783*i[2]*i[21]+0.00271*i[2]*i[22]+0.01486022*i[2]*i[23]+0.01091018*i[2]*i[24]+0.01009426*i[2]*i[25]+0.00754144*i[2]*i[26]+0.01408844*i[2]*i[27]+0.00544162*i[2]*i[28]+0.01096178*i[2]*i[29]+0.00574964*i[2]*i[30]+0.00299428*i[3]*i[4]+0.001239314*i[3]*i[5]+0.01256412*i[3]*i[6]+0.00899714*i[3]*i[7]+0.00444448*i[3]*i[8]+0.00616612*i[3]*i[9]+0.0146019*i[3]*i[10]+0.01249836*i[3]*i[11]+0.0264968*i[3]*i[12]+0.01266506*i[3]*i[13]+0.01358566*i[3]*i[14]+0.01419766*i[3]*i[15]+0.01033796*i[3]*i[16]+0.040104*i[3]*i[17]+0.01504214*i[3]*i[18]+0.0210518*i[3]*i[19]+0.0169342*i[3]*i[20]+0.020394*i[3]*i[21]+0.006361*i[3]*i[22]+0.0173249*i[3]*i[23]+0.01157254*i[3]*i[24]+0.01601196*i[3]*i[25]+0.01305808*i[3]*i[26]+0.018918*i[3]*i[27]+0.0100768*i[3]*i[28]+0.01415258*i[3]*i[29]+0.00890208*i[3]*i[30]+0.00365082*i[4]*i[5]+0.0031533*i[4]*i[6]+0.001664882*i[4]*i[7]+0.000487746*i[4]*i[8]+0.00074873*i[4]*i[9]+0.00279536*i[4]*i[10]+0.000948078*i[4]*i[11]+0.00218644*i[4]*i[12]+0.001471884*i[4]*i[13]+0.001764448*i[4]*i[14]+0.001707856*i[4]*i[15]+0.00415534*i[4]*i[16]+0.00552118*i[4]*i[17]+0.00298928*i[4]*i[18]+0.000446818*i[4]*i[19]+0.0042709*i[4]*i[20]+0.00437068*i[4]*i[21]+0.001584414*i[4]*i[22]+0.0028495*i[4]*i[23]+0.00550266*i[4]*i[24]+0.0019381*i[4]*i[25]-0.000779792*i[4]*i[26]+0.00383714*i[4]*i[27]+0.00170793*i[4]*i[28]+0.00220852*i[4]*i[29]+0.001897386*i[4]*i[30]+0.00226608*i[5]*i[6]+0.001391572*i[5]*i[7]+0.001434726*i[5]*i[8]+0.000718962*i[5]*i[9]+0.00117417*i[5]*i[10]+0.001240914*i[5]*i[11]+0.000587866*i[5]*i[12]+0.0020154*i[5]*i[13]+0.00126883*i[5]*i[14]+0.000645164*i[5]*i[15]+0.0001425196*i[5]*i[16]+0.001199014*i[5]*i[17]+0.001896292*i[5]*i[18]-0.000289412*i[5]*i[19]+0.001457998*i[5]*i[20]+0.00199702*i[5]*i[21]+0.001266598*i[5]*i[22]+0.000764624*i[5]*i[23]+0.001961312*i[5]*i[24]+0.001748826*i[5]*i[25]-0.00122625*i[5]*i[26]+0.000753266*i[5]*i[27]+0.00063941*i[5]*i[28]+0.001644068*i[5]*i[29]+0.001587886*i[5]*i[30]+0.00454154*i[6]*i[7]+0.001157686*i[6]*i[8]+0.0032018*i[6]*i[9]+0.00727798*i[6]*i[10]+0.0064553*i[6]*i[11]+0.00791618*i[6]*i[12]+0.00687526*i[6]*i[13]+0.00638032*i[6]*i[14]+0.00425538*i[6]*i[15]+0.00583332*i[6]*i[16]+0.01491304*i[6]*i[17]+0.00876772*i[6]*i[18]+0.00814434*i[6]*i[19]+0.00549208*i[6]*i[20]+0.0103848*i[6]*i[21]+0.001352278*i[6]*i[22]+0.0063097*i[6]*i[23]+0.0052012*i[6]*i[24]+0.00808494*i[6]*i[25]+0.00595234*i[6]*i[26]+0.00960786*i[6]*i[27]+0.0035648*i[6]*i[28]+0.00730486*i[6]*i[29]+0.0036145*i[6]*i[30]+0.0027426*i[7]*i[8]+0.00224138*i[7]*i[9]+0.00558948*i[7]*i[10]+0.00489378*i[7]*i[11]+0.0073565*i[7]*i[12]+0.0050794*i[7]*i[13]+0.00363244*i[7]*i[14]+0.00634576*i[7]*i[15]+0.001588982*i[7]*i[16]+0.00877926*i[7]*i[17]+0.00710862*i[7]*i[18]+0.00675396*i[7]*i[19]+0.00621206*i[7]*i[20]+0.00746652*i[7]*i[21]+0.001927036*i[7]*i[22]+0.00410122*i[7]*i[23]+0.00344774*i[7]*i[24]+0.00594546*i[7]*i[25]+0.00461784*i[7]*i[26]+0.00530234*i[7]*i[27]+0.00320122*i[7]*i[28]+0.00474356*i[7]*i[29]+0.00341222*i[7]*i[30]+0.00105347*i[8]*i[9]+0.001879822*i[8]*i[10]+0.00290244*i[8]*i[11]+0.00353818*i[8]*i[12]+0.0035513*i[8]*i[13]+0.00294406*i[8]*i[14]+0.00389942*i[8]*i[15]+0.00286866*i[8]*i[16]+0.000920126*i[8]*i[17]+0.00274282*i[8]*i[18]+0.0027675*i[8]*i[19]+0.00464592*i[8]*i[20]+0.001093444*i[8]*i[21]+0.000948594*i[8]*i[22]+0.00275316*i[8]*i[23]+0.001626794*i[8]*i[24]+0.00209498*i[8]*i[25]+0.0031962*i[8]*i[26]+0.001767658*i[8]*i[27]+0.00109948*i[8]*i[28]+0.00292004*i[8]*i[29]+0.00215496*i[8]*i[30]+0.00329222*i[9]*i[10]+0.00239978*i[9]*i[11]+0.00365066*i[9]*i[12]+0.00463422*i[9]*i[13]+0.00260888*i[9]*i[14]+0.00330432*i[9]*i[15]+0.000950274*i[9]*i[16]+0.00309664*i[9]*i[17]+0.00325462*i[9]*i[18]+0.00494078*i[9]*i[19]+0.00339202*i[9]*i[20]+0.00283784*i[9]*i[21]+0.001862472*i[9]*i[22]+0.001457294*i[9]*i[23]+0.000292408*i[9]*i[24]+0.00434258*i[9]*i[25]+0.0051917*i[9]*i[26]+0.00442724*i[9]*i[27]+0.00235362*i[9]*i[28]+0.0023207*i[9]*i[29]+0.00232972*i[9]*i[30]+0.00661128*i[10]*i[11]+0.0099349*i[10]*i[12]+0.00670728*i[10]*i[13]+0.00688756*i[10]*i[14]+0.00814804*i[10]*i[15]+0.00387536*i[10]*i[16]+0.01709622*i[10]*i[17]+0.00921546*i[10]*i[18]+0.01138012*i[10]*i[19]+0.0073598*i[10]*i[20]+0.012047*i[10]*i[21]+0.001953884*i[10]*i[22]+0.01110682*i[10]*i[23]+0.00744232*i[10]*i[24]+0.00846572*i[10]*i[25]+0.00811902*i[10]*i[26]+0.01093528*i[10]*i[27]+0.00642736*i[10]*i[28]+0.00817838*i[10]*i[29]+0.00467066*i[10]*i[30]+0.01089978*i[11]*i[12]+0.00580646*i[11]*i[13]+0.00479126*i[11]*i[14]+0.00655088*i[11]*i[15]+0.00784072*i[11]*i[16]+0.0171429*i[11]*i[17]+0.0099023*i[11]*i[18]+0.00881158*i[11]*i[19]+0.0065332*i[11]*i[20]+0.01111462*i[11]*i[21]+0.00238226*i[11]*i[22]+0.00942038*i[11]*i[23]+0.00509366*i[11]*i[24]+0.0079177*i[11]*i[25]+0.00653764*i[11]*i[26]+0.00963386*i[11]*i[27]+0.00518254*i[11]*i[28]+0.00839924*i[11]*i[29]+0.00396162*i[11]*i[30]+0.00812884*i[12]*i[13]+0.00932748*i[12]*i[14]+0.01172114*i[12]*i[15]+0.00937084*i[12]*i[16]+0.033621*i[12]*i[17]+0.0125625*i[12]*i[18]+0.01635358*i[12]*i[19]+0.01460644*i[12]*i[20]+0.01374474*i[12]*i[21]+0.00526496*i[12]*i[22]+0.01402198*i[12]*i[23]+0.00931776*i[12]*i[24]+0.01195866*i[12]*i[25]+0.00822682*i[12]*i[26]+0.01241788*i[12]*i[27]+0.00706034*i[12]*i[28]+0.01219462*i[12]*i[29]+0.00598988*i[12]*i[30]+0.0068538*i[13]*i[14]+0.00620178*i[13]*i[15]+0.00379406*i[13]*i[16]+0.00889862*i[13]*i[17]+0.00816594*i[13]*i[18]+0.01033824*i[13]*i[19]+0.00577162*i[13]*i[20]+0.00736548*i[13]*i[21]+0.00410776*i[13]*i[22]+0.00580558*i[13]*i[23]+0.00459074*i[13]*i[24]+0.0072167*i[13]*i[25]+0.00956086*i[13]*i[26]+0.00943468*i[13]*i[27]+0.00587164*i[13]*i[28]+0.00902842*i[13]*i[29]+0.00550608*i[13]*i[30]+0.00635356*i[14]*i[15]+0.00709628*i[14]*i[16]+0.01555038*i[14]*i[17]+0.00826722*i[14]*i[18]+0.00751614*i[14]*i[19]+0.00814342*i[14]*i[20]+0.00995652*i[14]*i[21]+0.00477798*i[14]*i[22]+0.0076843*i[14]*i[23]+0.00817698*i[14]*i[24]+0.00886056*i[14]*i[25]+0.00579636*i[14]*i[26]+0.01128084*i[14]*i[27]+0.00483444*i[14]*i[28]+0.0068342*i[14]*i[29]+0.0077372*i[14]*i[30]+0.00973548*i[15]*i[16]+0.01556958*i[15]*i[17]+0.00926266*i[15]*i[18]+0.01281188*i[15]*i[19]+0.00669072*i[15]*i[20]+0.00937684*i[15]*i[21]+0.00639856*i[15]*i[22]+0.00611934*i[15]*i[23]+0.00853942*i[15]*i[24]+0.00964296*i[15]*i[25]+0.00704584*i[15]*i[26]+0.0119279*i[15]*i[27]+0.00648174*i[15]*i[28]+0.01050128*i[15]*i[29]+0.00502696*i[15]*i[30]+0.01809222*i[16]*i[17]+0.00823288*i[16]*i[18]+0.01161214*i[16]*i[19]+0.00533676*i[16]*i[20]+0.01233794*i[16]*i[21]+0.00512778*i[16]*i[22]+0.00722276*i[16]*i[23]+0.01715638*i[16]*i[24]+0.00677738*i[16]*i[25]+0.0069565*i[16]*i[26]+0.01691522*i[16]*i[27]+0.00246824*i[16]*i[28]+0.00934088*i[16]*i[29]+0.00393866*i[16]*i[30]+0.01858542*i[17]*i[18]+0.0224912*i[17]*i[19]+0.01793624*i[17]*i[20]+0.0270204*i[17]*i[21]+0.01083832*i[17]*i[22]+0.0216678*i[17]*i[23]+0.0183347*i[17]*i[24]+0.01893*i[17]*i[25]+0.01089098*i[17]*i[26]+0.0209142*i[17]*i[27]+0.01273162*i[17]*i[28]+0.0200902*i[17]*i[29]+0.00774366*i[17]*i[30]+0.01171594*i[18]*i[19]+0.00861454*i[18]*i[20]+0.01414322*i[18]*i[21]+0.001961404*i[18]*i[22]+0.00910214*i[18]*i[23]+0.01003468*i[18]*i[24]+0.0094743*i[18]*i[25]+0.00825794*i[18]*i[26]+0.01336058*i[18]*i[27]+0.00607998*i[18]*i[28]+0.01070732*i[18]*i[29]+0.00492858*i[18]*i[30]+0.0082848*i[19]*i[20]+0.0126004*i[19]*i[21]+0.00407366*i[19]*i[22]+0.01381284*i[19]*i[23]+0.00838908*i[19]*i[24]+0.01198264*i[19]*i[25]+0.01583126*i[19]*i[26]+0.01664044*i[19]*i[27]+0.00924324*i[19]*i[28]+0.01214842*i[19]*i[29]+0.00592778*i[19]*i[30]+0.01071434*i[20]*i[21]+0.00296964*i[20]*i[22]+0.00736528*i[20]*i[23]+0.00606396*i[20]*i[24]+0.00628822*i[20]*i[25]+0.00817696*i[20]*i[26]+0.00776894*i[20]*i[27]+0.0026202*i[20]*i[28]+0.00717342*i[20]*i[29]+0.00579184*i[20]*i[30]+0.00469936*i[21]*i[22]+0.0138599*i[21]*i[23]+0.0125037*i[21]*i[24]+0.01211002*i[21]*i[25]+0.00836436*i[21]*i[26]+0.016494*i[21]*i[27]+0.00602872*i[21]*i[28]+0.01180462*i[21]*i[29]+0.00570478*i[21]*i[30]+0.0032176*i[22]*i[23]+0.00379112*i[22]*i[24]+0.00301976*i[22]*i[25]+0.00308424*i[22]*i[26]+0.00369962*i[22]*i[27]+0.00278784*i[22]*i[28]+0.00465846*i[22]*i[29]+0.00297212*i[22]*i[30]+0.01019176*i[23]*i[24]+0.00779098*i[23]*i[25]+0.00577776*i[23]*i[26]+0.01267514*i[23]*i[27]+0.00735432*i[23]*i[28]+0.00786386*i[23]*i[29]+0.00559972*i[23]*i[30]+0.00725022*i[24]*i[25]+0.00455648*i[24]*i[26]+0.0157223*i[24]*i[27]+0.00579512*i[24]*i[28]+0.00792398*i[24]*i[29]+0.0045755*i[24]*i[30]+0.00723442*i[25]*i[26]+0.01196012*i[25]*i[27]+0.0063273*i[25]*i[28]+0.0099815*i[25]*i[29]+0.0041794*i[25]*i[30]+0.01139894*i[26]*i[27]+0.0080092*i[26]*i[28]+0.0080044*i[26]*i[29]+0.00493602*i[26]*i[30]+0.00826208*i[27]*i[28]+0.01246152*i[27]*i[29]+0.0067556*i[27]*i[30]+0.00575648*i[28]*i[29]+0.0044929*i[28]*i[30]+0.00469952*i[29]*i[30]-objvar <= 0.0)
@constraint(m, e2, 0.00618236*i[1]+0.00284825*i[2]-0.00395114*i[3]+0.015626*i[4]+0.0124202*i[5]+0.00896825*i[6]+0.00654677*i[7]+0.00165682*i[8]-0.00370481*i[9]+0.00176805*i[10]+0.00248701*i[11]-0.00048068*i[12]+0.00786372*i[13]-0.00723462*i[14]+0.000887811*i[15]+0.00757072*i[16]-0.00528342*i[17]+0.00131825*i[18]-0.00231856*i[19]+0.00188612*i[20]+0.0172599*i[21]+0.00845572*i[22]+0.0107442*i[23]+0.0225808*i[24]+0.00560132*i[25]-0.00224596*i[26]+0.00606*i[27]+0.00629918*i[28]+0.00565023*i[29]+0.0075383*i[30] >= 0.0)
@constraint(m, e3, 39.19*i[1]+41.47*i[2]+5.71*i[3]+53.59*i[4]+43.65*i[5]+85.46*i[6]+39.7*i[7]+44.91*i[8]+9.6*i[9]+11.26*i[10]+39.56*i[11]+46*i[12]+45.25*i[13]+21.9*i[14]+11.85*i[15]+37.4*i[16]+4.75*i[17]+44.44*i[18]+80.5*i[19]+49.46*i[20]+67.02*i[21]+59.25*i[22]+71.5*i[23]+48.8*i[24]+73.22*i[25]+101.9*i[26]+20.06*i[27]+36.33*i[28]+41.31*i[29]+53.09*i[30] >= 15000.0)
@constraint(m, e4, 39.19*i[1]+41.47*i[2]+5.71*i[3]+53.59*i[4]+43.65*i[5]+85.46*i[6]+39.7*i[7]+44.91*i[8]+9.6*i[9]+11.26*i[10]+39.56*i[11]+46*i[12]+45.25*i[13]+21.9*i[14]+11.85*i[15]+37.4*i[16]+4.75*i[17]+44.44*i[18]+80.5*i[19]+49.46*i[20]+67.02*i[21]+59.25*i[22]+71.5*i[23]+48.8*i[24]+73.22*i[25]+101.9*i[26]+20.06*i[27]+36.33*i[28]+41.31*i[29]+53.09*i[30] <= 16500.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.