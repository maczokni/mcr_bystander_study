library(ggplot2)

test_1 <- read.csv("../../data/Stoyan Kurtev - 001_Anonymous 14-02-22 15h56m.csv")

names(test_1) <- test_1[27,]

test_1 <- test_1[28:nrow(test_1),]

# Possible columns of interest: 

# The column Channel 10 (ECG100C) is the raw heart date
# The column Channel 9 (EDA100C) is the raw GSR
# "Heart_Rate" is ?
# "GSR Raw (microSiemens)"
#  "GSR Interpolated (microSiemens)(GSRPEAK=IsPeak)(GSRONSET=GsrOnset)(GSROFFSET=GsrOffset)"
# "Tonic signal (microSiemens)"
# "Phasic signal (microSiemens)"
# "Peak detected (binary)"                                                                 
# "Peak amplitude (microSiemens)"                                                          
# "Peak times"                                                                             
# "Signal interpolation (binary)" 

names(test_1)



