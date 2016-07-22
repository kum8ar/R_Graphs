map <- qmap('Liverpool', zoom = 12, maptype = 'hybrid')
map
map + geom_point(data = crimes, aes(x = Longitude, y = Latitude), color="red", size=3, alpha=0.5)
