library(dplyr)
library(janitor)
# library(ggplot2)
library(RHRV)

pilot_data <- read.delim("../../data/reka solymosi - pilot_001.txt", header = T, sep = "\t", skip = 7) %>% 
  filter(!is.na(min)) %>% clean_names() %>% select(-x)


# ggplot(pilot_data, aes(x = min, y = ch9)) + 
#   geom_point() + 
#   geom_line() + 
#   theme_minimal()

hr_data <- pilot_data %>% select(ch9)
write.table(hr_data, file = 'hr.txt', col.names=FALSE,row.names=FALSE,quote=FALSE)

hrv.data <- CreateHRVData()
hrv.data <- SetVerbose(hrv.data, TRUE )

hrv.data <- LoadBeatAscii(hrv.data, "hr.txt")

hrv.data <- BuildNIHR(hrv.data)

hrv.data <- FilterNIHR(hrv.data)

hrv.data <- InterpolateNIHR(hrv.data, freqhr = 4)

PlotNIHR(hrv.data, main = "niHR")


plot(pilot_data$ch9)

