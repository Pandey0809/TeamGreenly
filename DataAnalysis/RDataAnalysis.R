library(tidyverse)
library(ggplot2)
#Load data set, These Data set contain aggregated Joule value of each
# run for both native and web version for Nokia Device
dataNativeNokia <- read.csv(file = 'nativeNokiaFinal.csv')
dataWebNokia <- read.csv(file = 'WebNokiaFinal.csv')

#Data values  
head(dataNativeNokia)
head(dataWebNokia)

#We have a extra column X at the starting which needs to be droped
#Data set preparation for visualization
dataNativeNokia$X<- NULL
dataWebNokia$X<- NULL
col_order <- c("facebook", "google_maps", "facebook_messenger","tiktok",
               "gmail", "netflix","spotify","twitter","google_keep","youtube")
dataNativeNokia <- dataNativeNokia[, col_order]
dataWebNokia <- dataWebNokia[, col_order]

#Data values after dropping X 
head(dataNativeNokia)
head(dataWebNokia)


#R Auto summary statistics
summary(dataNativeNokia)
summary(dataWebNokia)

#Comparison of Mean Joule energy for Gmail in Web and Native form

summary(dataNativeNokia["gmail"])
summary(dataWebNokia["gmail"])

#boxplot for gmail
boxplot(dataNativeNokia["gmail"])
boxplot(dataWebNokia["gmail"])

#boxplot for full datasets
NativePlot <- ggplot(stack(dataNativeNokia), aes(x = ind, y = values,fill=ind)) +     geom_boxplot() + scale_fill_manual(values=c("#211c75",
                                                                                                          "#dd5b20",
                                                                                                          "#b13838",
                                                                                                          "#909f18",
                                                                                                          "#f75e5e",
                                                                                                          "#bf60dc","#42a67d","#4d6df4","#812c81","#ee720f"))
print(Nativeplot + labs( title = "Native Apps on Nokia Device",y = "Value in Joules", x = "Application"))
Webplot <- ggplot(stack(dataWebNokia), aes(x = ind, y = values,fill=ind)) +    geom_boxplot() + scale_fill_manual(values=c("#211c75",
                                                                                                       "#dd5b20",
                                                                                                       "#b13838",
                                                                                                       "#909f18",
                                                                                                       "#f75e5e",
                                                                                                       "#bf60dc","#42a67d","#4d6df4","#812c81","#ee720f"))
print(Webplot + labs( title = "Web Apps on Chrome, On Nokia Device",y = "Value in Joules", x = "Application"))
#adding legends, color to the box plot and aligning the apps in order



