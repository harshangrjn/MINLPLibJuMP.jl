using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -1.0)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], -1.0)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], -1.0)
set_upper_bound(x[4], 1.0)
set_lower_bound(x[5], -1.0)
set_upper_bound(x[5], 1.0)
set_lower_bound(x[6], -1.0)
set_upper_bound(x[6], 1.0)
set_lower_bound(x[7], 1.99991861979167)
set_upper_bound(x[7], 10.0000813802083)
set_lower_bound(x[8], 1.49999999999999)
set_upper_bound(x[8], 10.5)
set_lower_bound(x[9], 1.99991861979167)
set_upper_bound(x[9], 10.0000813802083)
set_lower_bound(x[10], 1.99991861979167)
set_upper_bound(x[10], 8.00008138020833)
set_lower_bound(x[11], 1.49999999999999)
set_upper_bound(x[11], 8.50000000000001)
set_lower_bound(x[12], 1.99991861979167)
set_upper_bound(x[12], 8.00008138020833)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[1]+x[4]*x[4] == 1.0)
@NLconstraint(m, e2, x[2]*x[2]+x[5]*x[5] == 1.0)
@NLconstraint(m, e3, x[3]*x[3]+x[6]*x[6] == 1.0)
@NLconstraint(m, e4, x[1]*x[1]+x[4]*x[4] >= -1.0)
@NLconstraint(m, e5, x[1]*x[2]+x[4]*x[5] >= -1.0)
@NLconstraint(m, e6, x[1]*x[3]+x[4]*x[6] >= -1.0)
@NLconstraint(m, e7, x[2]*x[1]+x[5]*x[4] >= -1.0)
@NLconstraint(m, e8, x[2]*x[2]+x[5]*x[5] >= -1.0)
@NLconstraint(m, e9, x[2]*x[3]+x[5]*x[6] >= -1.0)
@NLconstraint(m, e10, x[3]*x[1]+x[6]*x[4] >= -1.0)
@NLconstraint(m, e11, x[3]*x[2]+x[6]*x[5] >= -1.0)
@NLconstraint(m, e12, x[3]*x[3]+x[6]*x[6] >= -1.0)
@NLconstraint(m, e13, x[1]*x[1]+x[4]*x[4] <= 1.0)
@NLconstraint(m, e14, x[1]*x[2]+x[4]*x[5] <= 1.0)
@NLconstraint(m, e15, x[1]*x[3]+x[4]*x[6] <= 1.0)
@NLconstraint(m, e16, x[2]*x[1]+x[5]*x[4] <= 1.0)
@NLconstraint(m, e17, x[2]*x[2]+x[5]*x[5] <= 1.0)
@NLconstraint(m, e18, x[2]*x[3]+x[5]*x[6] <= 1.0)
@NLconstraint(m, e19, x[3]*x[1]+x[6]*x[4] <= 1.0)
@NLconstraint(m, e20, x[3]*x[2]+x[6]*x[5] <= 1.0)
@NLconstraint(m, e21, x[3]*x[3]+x[6]*x[6] <= 1.0)
@NLconstraint(m, e22, x[4]*x[1]-x[4]*x[1] >= -1.0)
@NLconstraint(m, e23, x[4]*x[2]-x[5]*x[1] >= -1.0)
@NLconstraint(m, e24, x[4]*x[3]-x[6]*x[1] >= -1.0)
@NLconstraint(m, e25, x[5]*x[1]-x[4]*x[2] >= -1.0)
@NLconstraint(m, e26, x[5]*x[2]-x[5]*x[2] >= -1.0)
@NLconstraint(m, e27, x[5]*x[3]-x[6]*x[2] >= -1.0)
@NLconstraint(m, e28, x[6]*x[1]-x[4]*x[3] >= -1.0)
@NLconstraint(m, e29, x[6]*x[2]-x[5]*x[3] >= -1.0)
@NLconstraint(m, e30, x[6]*x[3]-x[6]*x[3] >= -1.0)
@NLconstraint(m, e31, x[4]*x[1]-x[4]*x[1] <= 1.0)
@NLconstraint(m, e32, x[4]*x[2]-x[5]*x[1] <= 1.0)
@NLconstraint(m, e33, x[4]*x[3]-x[6]*x[1] <= 1.0)
@NLconstraint(m, e34, x[5]*x[1]-x[4]*x[2] <= 1.0)
@NLconstraint(m, e35, x[5]*x[2]-x[5]*x[2] <= 1.0)
@NLconstraint(m, e36, x[5]*x[3]-x[6]*x[2] <= 1.0)
@NLconstraint(m, e37, x[6]*x[1]-x[4]*x[3] <= 1.0)
@NLconstraint(m, e38, x[6]*x[2]-x[5]*x[3] <= 1.0)
@NLconstraint(m, e39, x[6]*x[3]-x[6]*x[3] <= 1.0)
@NLconstraint(m, e40, -(0.333333333333333*(x[7]*x[7]+x[8]*x[8]+x[9]*x[9])- (0.333333333333333*x[7]+0.333333333333333*x[8]+0.333333333333333*x[9])^2+0.333333333333333*(x[10]*x[10]+x[11]*x[11]+x[12]*x[12])- (0.333333333333333*x[10]+0.333333333333333*x[11]+0.333333333333333*x[12])^2)+x[13] == 0.0)
@NLconstraint(m, e41,  (x[7]-x[8])^2+ (x[10]-x[11])^2 >= 12.2494303451644)
@NLconstraint(m, e42,  (x[7]-x[9])^2+ (x[10]-x[12])^2 >= 15.9986979431577)
@NLconstraint(m, e43,  (x[8]-x[9])^2+ (x[11]-x[12])^2 >= 12.2494303451644)
@NLconstraint(m, e44,  (x[7]-x[8])^2+ (x[10]-x[11])^2-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]+2.47216796875*x[1]*x[8]+4.944091796875*x[4]*x[8]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]+2.47216796875*x[4]*x[11]-4.944091796875*x[1]*x[11] >= -2.51337772667411)
@NLconstraint(m, e45,  (x[7]-x[9])^2+ (x[10]-x[12])^2-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]+2.47216796875*x[1]*x[9]+4.944091796875*x[4]*x[9]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]+2.47216796875*x[4]*x[12]-4.944091796875*x[1]*x[12] >= 0.000137259629079622)
@NLconstraint(m, e46,  (x[8]-x[9])^2+ (x[11]-x[12])^2-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]+4.42911783854166*x[2]*x[9]+1.365234375*x[5]*x[9]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11]+4.42911783854166*x[5]*x[12]-1.365234375*x[2]*x[12] >= 2.56681236584979)
@NLconstraint(m, e47,  (x[7]-x[8])^2+ (x[10]-x[11])^2-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]+3.31380208333332*x[1]*x[8]-3.3134765625*x[4]*x[8]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]+3.31380208333332*x[4]*x[11]+3.3134765625*x[1]*x[11] >= -2.09278903404873)
@NLconstraint(m, e48,  (x[7]-x[9])^2+ (x[10]-x[12])^2-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]+3.31380208333332*x[1]*x[9]-3.3134765625*x[4]*x[9]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]+3.31380208333332*x[4]*x[12]+3.3134765625*x[1]*x[12] >= 9.93410749750012e-6)
@NLconstraint(m, e49,  (x[8]-x[9])^2+ (x[11]-x[12])^2+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]-3.59164428710938*x[2]*x[9]+1.92501831054687*x[5]*x[9]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11]-3.59164428710938*x[5]*x[12]-1.92501831054687*x[2]*x[12] >= 2.28704574536021)
@NLconstraint(m, e50,  (x[7]-x[8])^2+ (x[10]-x[11])^2+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]-3.3134765625*x[1]*x[8]-3.313720703125*x[4]*x[8]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]-3.3134765625*x[4]*x[11]+3.313720703125*x[1]*x[11] >= -2.09280419349674)
@NLconstraint(m, e51,  (x[7]-x[9])^2+ (x[10]-x[12])^2+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]-3.3134765625*x[1]*x[9]-3.313720703125*x[4]*x[9]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]-3.3134765625*x[4]*x[12]+3.313720703125*x[1]*x[12] >= -4.5908821937779e-5)
@NLconstraint(m, e52,  (x[8]-x[9])^2+ (x[11]-x[12])^2+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]-3.59164428710938*x[2]*x[9]-1.92495727539062*x[5]*x[9]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11]-3.59164428710938*x[5]*x[12]+1.92495727539062*x[2]*x[12] >= 2.28720773919491)
@NLconstraint(m, e53,  (x[7]-x[8])^2+ (x[10]-x[11])^2-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]+3.41650390625*x[1]*x[8]+6.832763671875*x[4]*x[8]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]+3.41650390625*x[4]*x[11]-6.832763671875*x[1]*x[11] >= -11.3792535430193)
@NLconstraint(m, e54,  (x[7]-x[9])^2+ (x[10]-x[12])^2-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]+3.41650390625*x[1]*x[9]+6.832763671875*x[4]*x[9]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]+3.41650390625*x[4]*x[12]-6.832763671875*x[1]*x[12] >= -9.33782967521081)
@NLconstraint(m, e55,  (x[8]-x[9])^2+ (x[11]-x[12])^2-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]+6.78566487630208*x[2]*x[9]+2.15081787109374*x[5]*x[9]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11]+6.78566487630208*x[5]*x[12]-2.15081787109374*x[2]*x[12] >= -6.78956912302713)
@NLconstraint(m, e56,  (x[7]-x[8])^2+ (x[10]-x[11])^2+4.42911783854166*x[2]*x[7]+1.365234375*x[5]*x[7]-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]+4.42911783854166*x[5]*x[10]-1.365234375*x[2]*x[10]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11] >= 2.56681236584979)
@NLconstraint(m, e57,  (x[7]-x[9])^2+ (x[10]-x[12])^2+4.944091796875*x[3]*x[7]-2.47216796875*x[6]*x[7]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]+4.944091796875*x[6]*x[10]+2.47216796875*x[3]*x[10]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= 0.000137259629040543)
@NLconstraint(m, e58,  (x[7]-x[8])^2+ (x[10]-x[11])^2-3.59164428710938*x[2]*x[7]+1.92501831054687*x[5]*x[7]+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]-3.59164428710938*x[5]*x[10]-1.92501831054687*x[2]*x[10]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11] >= 2.28704574536021)
@NLconstraint(m, e59,  (x[7]-x[9])^2+ (x[10]-x[12])^2-3.3134765625*x[3]*x[7]-3.31380208333332*x[6]*x[7]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]-3.3134765625*x[6]*x[10]+3.31380208333332*x[3]*x[10]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= 9.93410748328927e-6)
@NLconstraint(m, e60,  (x[7]-x[8])^2+ (x[10]-x[11])^2-3.59164428710938*x[2]*x[7]-1.92495727539062*x[5]*x[7]+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]-3.59164428710938*x[5]*x[10]+1.92495727539062*x[2]*x[10]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11] >= 2.28720773919491)
@NLconstraint(m, e61,  (x[7]-x[9])^2+ (x[10]-x[12])^2-3.313720703125*x[3]*x[7]+3.3134765625*x[6]*x[7]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]-3.313720703125*x[6]*x[10]-3.3134765625*x[3]*x[10]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -4.59088218853765e-5)
@NLconstraint(m, e62,  (x[7]-x[8])^2+ (x[10]-x[11])^2+6.78566487630208*x[2]*x[7]+2.15081787109374*x[5]*x[7]-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]+6.78566487630208*x[5]*x[10]-2.15081787109374*x[2]*x[10]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11] >= -6.78956912302713)
@NLconstraint(m, e63,  (x[7]-x[9])^2+ (x[10]-x[12])^2+6.832763671875*x[3]*x[7]-3.41650390625*x[6]*x[7]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]+6.832763671875*x[6]*x[10]+3.41650390625*x[3]*x[10]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -9.33782967521084)
@NLconstraint(m, e64,  (x[8]-x[9])^2+ (x[11]-x[12])^2+4.944091796875*x[3]*x[8]-2.47216796875*x[6]*x[8]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]+4.944091796875*x[6]*x[11]+2.47216796875*x[3]*x[11]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -2.51337772667414)
@NLconstraint(m, e65,  (x[8]-x[9])^2+ (x[11]-x[12])^2-3.3134765625*x[3]*x[8]-3.31380208333332*x[6]*x[8]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]-3.3134765625*x[6]*x[11]+3.31380208333332*x[3]*x[11]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -2.09278903404874)
@NLconstraint(m, e66,  (x[8]-x[9])^2+ (x[11]-x[12])^2-3.313720703125*x[3]*x[8]+3.3134765625*x[6]*x[8]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]-3.313720703125*x[6]*x[11]-3.3134765625*x[3]*x[11]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -2.0928041934967)
@NLconstraint(m, e67,  (x[8]-x[9])^2+ (x[11]-x[12])^2+6.832763671875*x[3]*x[8]-3.41650390625*x[6]*x[8]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]+6.832763671875*x[6]*x[11]+3.41650390625*x[3]*x[11]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -11.3792535430193)
@NLconstraint(m, e68,  (x[7]-x[8])^2+ (x[10]-x[11])^2-8.8496836622556*(x[1]*x[2]+x[4]*x[5])-9.26143824060756*(x[4]*x[2]-x[5]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]+4.42911783854166*x[2]*x[7]+1.365234375*x[5]*x[7]+2.47216796875*x[1]*x[8]+4.944091796875*x[4]*x[8]-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]+4.42911783854166*x[5]*x[10]-1.365234375*x[2]*x[10]+2.47216796875*x[4]*x[11]-4.944091796875*x[1]*x[11]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11] >= -10.5085687757201)
@NLconstraint(m, e69,  (x[7]-x[9])^2+ (x[10]-x[12])^2-15.2778290808201*(x[4]*x[3]-x[6]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]+4.944091796875*x[3]*x[7]-2.47216796875*x[6]*x[7]+2.47216796875*x[1]*x[9]+4.944091796875*x[4]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]+4.944091796875*x[6]*x[10]+2.47216796875*x[3]*x[10]+2.47216796875*x[4]*x[12]-4.944091796875*x[1]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -12.9432599508762)
@NLconstraint(m, e70,  (x[7]-x[8])^2+ (x[10]-x[11])^2-0.319159638136611*(x[1]*x[2]+x[4]*x[5])+11.2581938318908*(x[4]*x[2]-x[5]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]-3.59164428710938*x[2]*x[7]+1.92501831054687*x[5]*x[7]+2.47216796875*x[1]*x[8]+4.944091796875*x[4]*x[8]+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]-3.59164428710938*x[5]*x[10]-1.92501831054687*x[2]*x[10]+2.47216796875*x[4]*x[11]-4.944091796875*x[1]*x[11]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11] >= -10.0965286766085)
@NLconstraint(m, e71,  (x[7]-x[9])^2+ (x[10]-x[12])^2+12.287606159846*(x[1]*x[3]+x[4]*x[6])+4.09492846330009*(x[4]*x[3]-x[6]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]-3.3134765625*x[3]*x[7]-3.31380208333332*x[6]*x[7]+2.47216796875*x[1]*x[9]+4.944091796875*x[4]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]-3.3134765625*x[6]*x[10]+3.31380208333332*x[3]*x[10]+2.47216796875*x[4]*x[12]-4.944091796875*x[1]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -11.9032468801737)
@NLconstraint(m, e72,  (x[7]-x[8])^2+ (x[10]-x[11])^2+9.19815671816469*(x[1]*x[2]+x[4]*x[5])+6.49930066987874*(x[4]*x[2]-x[5]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]-3.59164428710938*x[2]*x[7]-1.92495727539062*x[5]*x[7]+2.47216796875*x[1]*x[8]+4.944091796875*x[4]*x[8]+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]-3.59164428710938*x[5]*x[10]+1.92495727539062*x[2]*x[10]+2.47216796875*x[4]*x[11]-4.944091796875*x[1]*x[11]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11] >= -10.0964169738617)
@NLconstraint(m, e73,  (x[7]-x[9])^2+ (x[10]-x[12])^2-4.09502905607224*(x[1]*x[3]+x[4]*x[6])+12.2874049842358*(x[4]*x[3]-x[6]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]-3.313720703125*x[3]*x[7]+3.3134765625*x[6]*x[7]+2.47216796875*x[1]*x[9]+4.944091796875*x[4]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]-3.313720703125*x[6]*x[10]-3.3134765625*x[3]*x[10]+2.47216796875*x[4]*x[12]-4.944091796875*x[1]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -11.9032021409273)
@NLconstraint(m, e74,  (x[7]-x[8])^2+ (x[10]-x[11])^2-13.7045721734563*(x[1]*x[2]+x[4]*x[5])-14.1158835018675*(x[4]*x[2]-x[5]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]+6.78566487630208*x[2]*x[7]+2.15081787109374*x[5]*x[7]+2.47216796875*x[1]*x[8]+4.944091796875*x[4]*x[8]-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]+6.78566487630208*x[5]*x[10]-2.15081787109374*x[2]*x[10]+2.47216796875*x[4]*x[11]-4.944091796875*x[1]*x[11]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11] >= -18.8940657255094)
@NLconstraint(m, e75,  (x[7]-x[9])^2+ (x[10]-x[12])^2-0.000115275382995605*(x[1]*x[3]+x[4]*x[6])-21.1139911711216*(x[4]*x[3]-x[6]*x[1])-2.47216796875*x[1]*x[7]-4.944091796875*x[4]*x[7]+6.832763671875*x[3]*x[7]-3.41650390625*x[6]*x[7]+2.47216796875*x[1]*x[9]+4.944091796875*x[4]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]-2.47216796875*x[4]*x[10]+4.944091796875*x[1]*x[10]+6.832763671875*x[6]*x[10]+3.41650390625*x[3]*x[10]+2.47216796875*x[4]*x[12]-4.944091796875*x[1]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -21.1140713179111)
@NLconstraint(m, e76,  (x[8]-x[9])^2+ (x[11]-x[12])^2-9.26143824060756*(x[2]*x[3]+x[5]*x[6])-8.8496836622556*(x[5]*x[3]-x[6]*x[2])-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]+4.944091796875*x[3]*x[8]-2.47216796875*x[6]*x[8]+4.42911783854166*x[2]*x[9]+1.365234375*x[5]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11]+4.944091796875*x[6]*x[11]+2.47216796875*x[3]*x[11]+4.42911783854166*x[5]*x[12]-1.365234375*x[2]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -10.5085687757201)
@NLconstraint(m, e77,  (x[8]-x[9])^2+ (x[11]-x[12])^2+9.59994733333586*(x[2]*x[3]+x[5]*x[6])-5.07677390840314*(x[5]*x[3]-x[6]*x[2])-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]-3.3134765625*x[3]*x[8]-3.31380208333332*x[6]*x[8]+4.42911783854166*x[2]*x[9]+1.365234375*x[5]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11]-3.3134765625*x[6]*x[11]+3.31380208333332*x[3]*x[11]+4.42911783854166*x[5]*x[12]-1.365234375*x[2]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -9.51349006599849)
@NLconstraint(m, e78,  (x[8]-x[9])^2+ (x[11]-x[12])^2+5.07659368713696*(x[2]*x[3]+x[5]*x[6])+9.59989178180694*(x[5]*x[3]-x[6]*x[2])-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]-3.313720703125*x[3]*x[8]+3.3134765625*x[6]*x[8]+4.42911783854166*x[2]*x[9]+1.365234375*x[5]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11]-3.313720703125*x[6]*x[11]-3.3134765625*x[3]*x[11]+4.42911783854166*x[5]*x[12]-1.365234375*x[2]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -9.51344967193072)
@NLconstraint(m, e79,  (x[8]-x[9])^2+ (x[11]-x[12])^2-12.7993934452533*(x[2]*x[3]+x[5]*x[6])-12.2302111188571*(x[5]*x[3]-x[6]*x[2])-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]+6.832763671875*x[3]*x[8]-3.41650390625*x[6]*x[8]+4.42911783854166*x[2]*x[9]+1.365234375*x[5]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11]+6.832763671875*x[6]*x[11]+3.41650390625*x[3]*x[11]+4.42911783854166*x[5]*x[12]-1.365234375*x[2]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -18.7298015952773)
@NLconstraint(m, e80,  (x[7]-x[8])^2+ (x[10]-x[11])^2-5.07677390840314*(x[1]*x[2]+x[4]*x[5])+9.59994733333586*(x[4]*x[2]-x[5]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]+4.42911783854166*x[2]*x[7]+1.365234375*x[5]*x[7]+3.31380208333332*x[1]*x[8]-3.3134765625*x[4]*x[8]-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]+4.42911783854166*x[5]*x[10]-1.365234375*x[2]*x[10]+3.31380208333332*x[4]*x[11]+3.3134765625*x[1]*x[11]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11] >= -9.51349006599849)
@NLconstraint(m, e81,  (x[7]-x[9])^2+ (x[10]-x[12])^2-12.287606159846*(x[1]*x[3]+x[4]*x[6])+4.09492846330009*(x[4]*x[3]-x[6]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]+4.944091796875*x[3]*x[7]-2.47216796875*x[6]*x[7]+3.31380208333332*x[1]*x[9]-3.3134765625*x[4]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]+4.944091796875*x[6]*x[10]+2.47216796875*x[3]*x[10]+3.31380208333332*x[4]*x[12]+3.3134765625*x[1]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -11.9032468801737)
@NLconstraint(m, e82,  (x[7]-x[8])^2+ (x[10]-x[11])^2+9.14025068779784*(x[1]*x[2]+x[4]*x[5])-2.76084973911447*(x[4]*x[2]-x[5]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]-3.59164428710938*x[2]*x[7]+1.92501831054687*x[5]*x[7]+3.31380208333332*x[1]*x[8]-3.3134765625*x[4]*x[8]+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]-3.59164428710938*x[5]*x[10]-1.92501831054687*x[2]*x[10]+3.31380208333332*x[4]*x[11]+3.3134765625*x[1]*x[11]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11] >= -8.86592210666273)
@NLconstraint(m, e83,  (x[7]-x[9])^2+ (x[10]-x[12])^2-10.9802055888705*(x[4]*x[3]-x[6]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]-3.3134765625*x[3]*x[7]-3.31380208333332*x[6]*x[7]+3.31380208333332*x[1]*x[9]-3.3134765625*x[4]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]-3.3134765625*x[6]*x[10]+3.31380208333332*x[3]*x[10]+3.31380208333332*x[4]*x[12]+3.3134765625*x[1]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -10.5091146098242)
@NLconstraint(m, e84,  (x[7]-x[8])^2+ (x[10]-x[11])^2+2.7618487526973*(x[1]*x[2]+x[4]*x[5])-9.13987829784552*(x[4]*x[2]-x[5]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]-3.59164428710938*x[2]*x[7]-1.92495727539062*x[5]*x[7]+3.31380208333332*x[1]*x[8]-3.3134765625*x[4]*x[8]+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]-3.59164428710938*x[5]*x[10]+1.92495727539062*x[2]*x[10]+3.31380208333332*x[4]*x[11]+3.3134765625*x[1]*x[11]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11] >= -8.86582752568127)
@NLconstraint(m, e85,  (x[7]-x[9])^2+ (x[10]-x[12])^2+10.9800707499186*(x[1]*x[3]+x[4]*x[6])+0.000134825706459729*(x[4]*x[3]-x[6]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]-3.313720703125*x[3]*x[7]+3.3134765625*x[6]*x[7]+3.31380208333332*x[1]*x[9]-3.3134765625*x[4]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]-3.313720703125*x[6]*x[10]-3.3134765625*x[3]*x[10]+3.31380208333332*x[4]*x[12]+3.3134765625*x[1]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -10.5090356270472)
@NLconstraint(m, e86,  (x[7]-x[8])^2+ (x[10]-x[11])^2-7.67983289890816*(x[1]*x[2]+x[4]*x[5])+14.8057631353537*(x[4]*x[2]-x[5]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]+6.78566487630208*x[2]*x[7]+2.15081787109374*x[5]*x[7]+3.31380208333332*x[1]*x[8]-3.3134765625*x[4]*x[8]-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]+6.78566487630208*x[5]*x[10]-2.15081787109374*x[2]*x[10]+3.31380208333332*x[4]*x[11]+3.3134765625*x[1]*x[11]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11] >= -17.5684461992026)
@NLconstraint(m, e87,  (x[7]-x[9])^2+ (x[10]-x[12])^2-16.9814660549163*(x[1]*x[3]+x[4]*x[6])+5.65929226080579*(x[4]*x[3]-x[6]*x[1])-3.31380208333332*x[1]*x[7]+3.3134765625*x[4]*x[7]+6.832763671875*x[3]*x[7]-3.41650390625*x[6]*x[7]+3.31380208333332*x[1]*x[9]-3.3134765625*x[4]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]-3.31380208333332*x[4]*x[10]-3.3134765625*x[1]*x[10]+6.832763671875*x[6]*x[10]+3.41650390625*x[3]*x[10]+3.31380208333332*x[4]*x[12]+3.3134765625*x[1]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -19.6766963169972)
@NLconstraint(m, e88,  (x[8]-x[9])^2+ (x[11]-x[12])^2+11.2581938318908*(x[2]*x[3]+x[5]*x[6])-0.319159638136611*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]+4.944091796875*x[3]*x[8]-2.47216796875*x[6]*x[8]-3.59164428710938*x[2]*x[9]+1.92501831054687*x[5]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11]+4.944091796875*x[6]*x[11]+2.47216796875*x[3]*x[11]-3.59164428710938*x[5]*x[12]-1.92501831054687*x[2]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -10.0965286766086)
@NLconstraint(m, e89,  (x[8]-x[9])^2+ (x[11]-x[12])^2-2.76084973911447*(x[2]*x[3]+x[5]*x[6])+9.14025068779784*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]-3.3134765625*x[3]*x[8]-3.31380208333332*x[6]*x[8]-3.59164428710938*x[2]*x[9]+1.92501831054687*x[5]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11]-3.3134765625*x[6]*x[11]+3.31380208333332*x[3]*x[11]-3.59164428710938*x[5]*x[12]-1.92501831054687*x[2]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -8.86592210666274)
@NLconstraint(m, e90,  (x[8]-x[9])^2+ (x[11]-x[12])^2-9.1401045434177*(x[2]*x[3]+x[5]*x[6])-2.76092806831004*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]-3.313720703125*x[3]*x[8]+3.3134765625*x[6]*x[8]-3.59164428710938*x[2]*x[9]+1.92501831054687*x[5]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11]-3.313720703125*x[6]*x[11]-3.3134765625*x[3]*x[11]-3.59164428710938*x[5]*x[12]-1.92501831054687*x[2]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -8.86585893691514)
@NLconstraint(m, e91,  (x[8]-x[9])^2+ (x[11]-x[12])^2+15.5588445924223*(x[2]*x[3]+x[5]*x[6])-0.441164221614581*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]+6.832763671875*x[3]*x[8]-3.41650390625*x[6]*x[8]-3.59164428710938*x[2]*x[9]+1.92501831054687*x[5]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11]+6.832763671875*x[6]*x[11]+3.41650390625*x[3]*x[11]-3.59164428710938*x[5]*x[12]-1.92501831054687*x[2]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -18.0534725074563)
@NLconstraint(m, e92,  (x[7]-x[8])^2+ (x[10]-x[11])^2+9.59989178180694*(x[1]*x[2]+x[4]*x[5])+5.07659368713696*(x[4]*x[2]-x[5]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]+4.42911783854166*x[2]*x[7]+1.365234375*x[5]*x[7]-3.3134765625*x[1]*x[8]-3.313720703125*x[4]*x[8]-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]+4.42911783854166*x[5]*x[10]-1.365234375*x[2]*x[10]-3.3134765625*x[4]*x[11]+3.313720703125*x[1]*x[11]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11] >= -9.51344967193075)
@NLconstraint(m, e93,  (x[7]-x[9])^2+ (x[10]-x[12])^2+4.09502905607224*(x[1]*x[3]+x[4]*x[6])+12.2874049842358*(x[4]*x[3]-x[6]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]+4.944091796875*x[3]*x[7]-2.47216796875*x[6]*x[7]-3.3134765625*x[1]*x[9]-3.313720703125*x[4]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]+4.944091796875*x[6]*x[10]+2.47216796875*x[3]*x[10]-3.3134765625*x[4]*x[12]+3.313720703125*x[1]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -11.9032021409273)
@NLconstraint(m, e94,  (x[7]-x[8])^2+ (x[10]-x[11])^2-2.76092806831004*(x[1]*x[2]+x[4]*x[5])-9.1401045434177*(x[4]*x[2]-x[5]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]-3.59164428710938*x[2]*x[7]+1.92501831054687*x[5]*x[7]-3.3134765625*x[1]*x[8]-3.313720703125*x[4]*x[8]+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]-3.59164428710938*x[5]*x[10]-1.92501831054687*x[2]*x[10]-3.3134765625*x[4]*x[11]+3.313720703125*x[1]*x[11]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11] >= -8.86585893691516)
@NLconstraint(m, e95,  (x[7]-x[9])^2+ (x[10]-x[12])^2-10.9800707499186*(x[1]*x[3]+x[4]*x[6])+0.000134825706459729*(x[4]*x[3]-x[6]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]-3.3134765625*x[3]*x[7]-3.31380208333332*x[6]*x[7]-3.3134765625*x[1]*x[9]-3.313720703125*x[4]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]-3.3134765625*x[6]*x[10]+3.31380208333332*x[3]*x[10]-3.3134765625*x[4]*x[12]+3.313720703125*x[1]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -10.5090356270472)
@NLconstraint(m, e96,  (x[7]-x[8])^2+ (x[10]-x[11])^2-9.13979997113348*(x[1]*x[2]+x[4]*x[5])-2.76170260831715*(x[4]*x[2]-x[5]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]-3.59164428710938*x[2]*x[7]-1.92495727539062*x[5]*x[7]-3.3134765625*x[1]*x[8]-3.313720703125*x[4]*x[8]+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]-3.59164428710938*x[5]*x[10]+1.92495727539062*x[2]*x[10]-3.3134765625*x[4]*x[11]+3.313720703125*x[1]*x[11]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11] >= -8.86576435758938)
@NLconstraint(m, e97,  (x[7]-x[9])^2+ (x[10]-x[12])^2-10.979935914278*(x[4]*x[3]-x[6]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]-3.313720703125*x[3]*x[7]+3.3134765625*x[6]*x[7]-3.3134765625*x[1]*x[9]-3.313720703125*x[4]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]-3.313720703125*x[6]*x[10]-3.3134765625*x[3]*x[10]-3.3134765625*x[4]*x[12]+3.313720703125*x[1]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -10.5089566409588)
@NLconstraint(m, e98,  (x[7]-x[8])^2+ (x[10]-x[11])^2+14.8056756183505*(x[1]*x[2]+x[4]*x[5])+7.67955678949755*(x[4]*x[2]-x[5]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]+6.78566487630208*x[2]*x[7]+2.15081787109374*x[5]*x[7]-3.3134765625*x[1]*x[8]-3.313720703125*x[4]*x[8]-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]+6.78566487630208*x[5]*x[10]-2.15081787109374*x[2]*x[10]-3.3134765625*x[4]*x[11]+3.313720703125*x[1]*x[11]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11] >= -17.5683738416474)
@NLconstraint(m, e99,  (x[7]-x[9])^2+ (x[10]-x[12])^2+5.6594312787056*(x[1]*x[3]+x[4]*x[6])+16.9811880290508*(x[4]*x[3]-x[6]*x[1])+3.3134765625*x[1]*x[7]+3.313720703125*x[4]*x[7]+6.832763671875*x[3]*x[7]-3.41650390625*x[6]*x[7]-3.3134765625*x[1]*x[9]-3.313720703125*x[4]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]+3.3134765625*x[4]*x[10]-3.313720703125*x[1]*x[10]+6.832763671875*x[6]*x[10]+3.41650390625*x[3]*x[10]-3.3134765625*x[4]*x[12]+3.313720703125*x[1]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -19.6766131526232)
@NLconstraint(m, e100,  (x[8]-x[9])^2+ (x[11]-x[12])^2+6.49930066987874*(x[2]*x[3]+x[5]*x[6])+9.19815671816469*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]+4.944091796875*x[3]*x[8]-2.47216796875*x[6]*x[8]-3.59164428710938*x[2]*x[9]-1.92495727539062*x[5]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11]+4.944091796875*x[6]*x[11]+2.47216796875*x[3]*x[11]-3.59164428710938*x[5]*x[12]+1.92495727539062*x[2]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -10.0964169738618)
@NLconstraint(m, e101,  (x[8]-x[9])^2+ (x[11]-x[12])^2-9.13987829784552*(x[2]*x[3]+x[5]*x[6])+2.7618487526973*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]-3.3134765625*x[3]*x[8]-3.31380208333332*x[6]*x[8]-3.59164428710938*x[2]*x[9]-1.92495727539062*x[5]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11]-3.3134765625*x[6]*x[11]+3.31380208333332*x[3]*x[11]-3.59164428710938*x[5]*x[12]+1.92495727539062*x[2]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -8.86582752568128)
@NLconstraint(m, e102,  (x[8]-x[9])^2+ (x[11]-x[12])^2-2.76170260831715*(x[2]*x[3]+x[5]*x[6])-9.13979997113348*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]-3.313720703125*x[3]*x[8]+3.3134765625*x[6]*x[8]-3.59164428710938*x[2]*x[9]-1.92495727539062*x[5]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11]-3.313720703125*x[6]*x[11]-3.3134765625*x[3]*x[11]-3.59164428710938*x[5]*x[12]+1.92495727539062*x[2]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -8.86576435758936)
@NLconstraint(m, e103,  (x[8]-x[9])^2+ (x[11]-x[12])^2+8.98211627826096*(x[2]*x[3]+x[5]*x[6])+12.7118224389851*(x[5]*x[3]-x[6]*x[2])+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]+6.832763671875*x[3]*x[8]-3.41650390625*x[6]*x[8]-3.59164428710938*x[2]*x[9]-1.92495727539062*x[5]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11]+6.832763671875*x[6]*x[11]+3.41650390625*x[3]*x[11]-3.59164428710938*x[5]*x[12]+1.92495727539062*x[2]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -18.0533800172733)
@NLconstraint(m, e104,  (x[7]-x[8])^2+ (x[10]-x[11])^2-12.2302111188571*(x[1]*x[2]+x[4]*x[5])-12.7993934452533*(x[4]*x[2]-x[5]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]+4.42911783854166*x[2]*x[7]+1.365234375*x[5]*x[7]+3.41650390625*x[1]*x[8]+6.832763671875*x[4]*x[8]-4.42911783854166*x[2]*x[8]-1.365234375*x[5]*x[8]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]+4.42911783854166*x[5]*x[10]-1.365234375*x[2]*x[10]+3.41650390625*x[4]*x[11]-6.832763671875*x[1]*x[11]-4.42911783854166*x[5]*x[11]+1.365234375*x[2]*x[11] >= -18.7298015952773)
@NLconstraint(m, e105,  (x[7]-x[9])^2+ (x[10]-x[12])^2+0.000115275382995605*(x[1]*x[3]+x[4]*x[6])-21.1139911711216*(x[4]*x[3]-x[6]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]+4.944091796875*x[3]*x[7]-2.47216796875*x[6]*x[7]+3.41650390625*x[1]*x[9]+6.832763671875*x[4]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]+4.944091796875*x[6]*x[10]+2.47216796875*x[3]*x[10]+3.41650390625*x[4]*x[12]-6.832763671875*x[1]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -21.1140713179111)
@NLconstraint(m, e106,  (x[7]-x[8])^2+ (x[10]-x[11])^2-0.441164221614581*(x[1]*x[2]+x[4]*x[5])+15.5588445924223*(x[4]*x[2]-x[5]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]-3.59164428710938*x[2]*x[7]+1.92501831054687*x[5]*x[7]+3.41650390625*x[1]*x[8]+6.832763671875*x[4]*x[8]+3.59164428710938*x[2]*x[8]-1.92501831054687*x[5]*x[8]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]-3.59164428710938*x[5]*x[10]-1.92501831054687*x[2]*x[10]+3.41650390625*x[4]*x[11]-6.832763671875*x[1]*x[11]+3.59164428710938*x[5]*x[11]+1.92501831054687*x[2]*x[11] >= -18.0534725074563)
@NLconstraint(m, e107,  (x[7]-x[9])^2+ (x[10]-x[12])^2+16.9814660549163*(x[1]*x[3]+x[4]*x[6])+5.65929226080579*(x[4]*x[3]-x[6]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]-3.3134765625*x[3]*x[7]-3.31380208333332*x[6]*x[7]+3.41650390625*x[1]*x[9]+6.832763671875*x[4]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]-3.3134765625*x[6]*x[10]+3.31380208333332*x[3]*x[10]+3.41650390625*x[4]*x[12]-6.832763671875*x[1]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -19.6766963169972)
@NLconstraint(m, e108,  (x[7]-x[8])^2+ (x[10]-x[11])^2+12.7118224389851*(x[1]*x[2]+x[4]*x[5])+8.98211627826096*(x[4]*x[2]-x[5]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]-3.59164428710938*x[2]*x[7]-1.92495727539062*x[5]*x[7]+3.41650390625*x[1]*x[8]+6.832763671875*x[4]*x[8]+3.59164428710938*x[2]*x[8]+1.92495727539062*x[5]*x[8]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]-3.59164428710938*x[5]*x[10]+1.92495727539062*x[2]*x[10]+3.41650390625*x[4]*x[11]-6.832763671875*x[1]*x[11]+3.59164428710938*x[5]*x[11]-1.92495727539062*x[2]*x[11] >= -18.0533800172733)
@NLconstraint(m, e109,  (x[7]-x[9])^2+ (x[10]-x[12])^2-5.6594312787056*(x[1]*x[3]+x[4]*x[6])+16.9811880290508*(x[4]*x[3]-x[6]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]-3.313720703125*x[3]*x[7]+3.3134765625*x[6]*x[7]+3.41650390625*x[1]*x[9]+6.832763671875*x[4]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]-3.313720703125*x[6]*x[10]-3.3134765625*x[3]*x[10]+3.41650390625*x[4]*x[12]-6.832763671875*x[1]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -19.6766131526232)
@NLconstraint(m, e110,  (x[7]-x[8])^2+ (x[10]-x[11])^2-18.9396403854092*(x[1]*x[2]+x[4]*x[5])-19.5082833990455*(x[4]*x[2]-x[5]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]+6.78566487630208*x[2]*x[7]+2.15081787109374*x[5]*x[7]+3.41650390625*x[1]*x[8]+6.832763671875*x[4]*x[8]-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]+6.78566487630208*x[5]*x[10]-2.15081787109374*x[2]*x[10]+3.41650390625*x[4]*x[11]-6.832763671875*x[1]*x[11]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11] >= -26.7443942365091)
@NLconstraint(m, e111,  (x[7]-x[9])^2+ (x[10]-x[12])^2-29.1795791685581*(x[4]*x[3]-x[6]*x[1])-3.41650390625*x[1]*x[7]-6.832763671875*x[4]*x[7]+6.832763671875*x[3]*x[7]-3.41650390625*x[6]*x[7]+3.41650390625*x[1]*x[9]+6.832763671875*x[4]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]-3.41650390625*x[4]*x[10]+6.832763671875*x[1]*x[10]+6.832763671875*x[6]*x[10]+3.41650390625*x[3]*x[10]+3.41650390625*x[4]*x[12]-6.832763671875*x[1]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -28.8389975035191)
@NLconstraint(m, e112,  (x[8]-x[9])^2+ (x[11]-x[12])^2-14.1158835018675*(x[2]*x[3]+x[5]*x[6])-13.7045721734563*(x[5]*x[3]-x[6]*x[2])-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]+4.944091796875*x[3]*x[8]-2.47216796875*x[6]*x[8]+6.78566487630208*x[2]*x[9]+2.15081787109374*x[5]*x[9]-4.944091796875*x[3]*x[9]+2.47216796875*x[6]*x[9]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11]+4.944091796875*x[6]*x[11]+2.47216796875*x[3]*x[11]+6.78566487630208*x[5]*x[12]-2.15081787109374*x[2]*x[12]-4.944091796875*x[6]*x[12]-2.47216796875*x[3]*x[12] >= -18.8940657255094)
@NLconstraint(m, e113,  (x[8]-x[9])^2+ (x[11]-x[12])^2+14.8057631353537*(x[2]*x[3]+x[5]*x[6])-7.67983289890816*(x[5]*x[3]-x[6]*x[2])-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]-3.3134765625*x[3]*x[8]-3.31380208333332*x[6]*x[8]+6.78566487630208*x[2]*x[9]+2.15081787109374*x[5]*x[9]+3.3134765625*x[3]*x[9]+3.31380208333332*x[6]*x[9]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11]-3.3134765625*x[6]*x[11]+3.31380208333332*x[3]*x[11]+6.78566487630208*x[5]*x[12]-2.15081787109374*x[2]*x[12]+3.3134765625*x[6]*x[12]-3.31380208333332*x[3]*x[12] >= -17.5684461992027)
@NLconstraint(m, e114,  (x[8]-x[9])^2+ (x[11]-x[12])^2+7.67955678949755*(x[2]*x[3]+x[5]*x[6])+14.8056756183505*(x[5]*x[3]-x[6]*x[2])-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]-3.313720703125*x[3]*x[8]+3.3134765625*x[6]*x[8]+6.78566487630208*x[2]*x[9]+2.15081787109374*x[5]*x[9]+3.313720703125*x[3]*x[9]-3.3134765625*x[6]*x[9]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11]-3.313720703125*x[6]*x[11]-3.3134765625*x[3]*x[11]+6.78566487630208*x[5]*x[12]-2.15081787109374*x[2]*x[12]+3.313720703125*x[6]*x[12]+3.3134765625*x[3]*x[12] >= -17.5683738416474)
@NLconstraint(m, e115,  (x[8]-x[9])^2+ (x[11]-x[12])^2-19.5082833990455*(x[2]*x[3]+x[5]*x[6])-18.9396403854092*(x[5]*x[3]-x[6]*x[2])-6.78566487630208*x[2]*x[8]-2.15081787109374*x[5]*x[8]+6.832763671875*x[3]*x[8]-3.41650390625*x[6]*x[8]+6.78566487630208*x[2]*x[9]+2.15081787109374*x[5]*x[9]-6.832763671875*x[3]*x[9]+3.41650390625*x[6]*x[9]-6.78566487630208*x[5]*x[11]+2.15081787109374*x[2]*x[11]+6.832763671875*x[6]*x[11]+3.41650390625*x[3]*x[11]+6.78566487630208*x[5]*x[12]-2.15081787109374*x[2]*x[12]-6.832763671875*x[6]*x[12]-3.41650390625*x[3]*x[12] >= -26.7443942365091)
@constraint(m, e116, x[7] == 0.0)
@constraint(m, e117, x[10] == 0.0)
@constraint(m, e118, x[1] == 1.0)
@constraint(m, e119, x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[13])

m = m 		 # model get returned when including this script.