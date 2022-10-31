#Load data set, These Data set contain aggregated Joule value of each
# run for both native and web version for Nokia Device
dataNativeNokia <- read.csv(file = 'nativeNokiaFinal.csv')
dataWebNokia <- read.csv(file = 'WebNokiaFinal.csv')

#Data values  
head(dataNativeNokia)
head(dataWebNokia)

#We have a extra column X at the starting which needs to be droped
dataNativeNokia$X<- NULL
dataWebNokia$X<- NULL

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
ggplot(stack(dataNativeNokia), aes(x = ind, y = values)) +     geom_boxplot()
ggplot(stack(dataWebNokia), aes(x = ind, y = values)) +    geom_boxplot()