install.packages("ggmap")
library(ggmap)
library(ggplot2)
qmap('Liverpool')
qmap('Coppell') 
# Use city name
qmap('75019') # Pincode to search location
qmap('Avaya, Coppell')

qmap('Avaya, Coppell', zoom =16)
qmap('Avaya, Coppell', zoom =16, maptype = 'satellite')
qmap('Avaya, Coppell', zoom =16, maptype = 'hybrid')
getwd()
setwd("C:/Users/kumar587/Desktop/R Data")
data(UKDataService)
download.file("https://raw.githubusercontent.com/nickbearman/r-google-map-making-20140708/master/police-uk-2014-04-merseyside-street.csv", "police-uk-2014-04-merseyside-street.csv", method = "internal")
head(Crimeuk14     )
crimes <-Crimeuk14  
library(sp)
coords <- cbind(Longitude = as.numeric(as.character(crimes$Longitude)), Latitude = as.numeric(as.character(crimes$Latitude)))
crime.pts <- SpatialPointsDataFrame(coords, crimes[, -(5:6)], proj4string = CRS("+init=epsg:4326"))

plot(crime.pts, pch = ".", col = "darkred")
