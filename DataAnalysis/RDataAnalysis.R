dataNativeNokia <- read.csv(file = 'nativeNokiaFinal.csv')
dataWebNokia <- read.csv(file = 'WebNokiaFinal.csv')

#Data value Visualization
head(dataNativeNokia)
head(dataWebNokia)

#R Auto summary statistics
summary(dataNativeNokia)
summary(dataWebNokia)

#Comparison of Mean Joule energy for Gmail in Web and Native form

summary(dataNativeNokia["gmail"])
summary(dataWebNokia["gmail"])
