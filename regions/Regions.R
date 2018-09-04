
#Lire le contenu d'un shapefile avec la librairie sp
library(rgdal)
library(sp)
setwd("C:/Users/TIMMI/Desktop/Projet federateur/Mon_Projet/Regions")


shp1 <- readOGR(dsn="." ,layer = 'regions')
plot(shp1)


#Lire le contenu d'un shapefile avec la librairie {sf}
library(sf)

shp2 <- st_read(dsn = '.',layer = 'regions')
plot(shp2)


#https://abcdr.thinkr.fr/comment-lire-le-contenu-dun-shapefile-avec-r/


#How I use shapefiles in R with ggplot2 and RGDAL
library(rgdal)     # R wrapper around GDAL/OGR
library(ggplot2)   # for general plotting
library(ggmaps)    # for fortifying shapefiles

shapefile <- readOGR(dsn = ".", "regions")

# Next the shapefile has to be converted to a dataframe for use in ggplot2
shapefile_df <- fortify(shapefile)

# Now the shapefile can be plotted as either a geom_path or a geom_polygon.
# Paths handle clipping better. Polygons can be filled.
# You need the aesthetics long, lat, and group.
map <- ggplot() +
  geom_path(data = shapefile_df, 
            aes(x = long, y = lat, group = group),
            color = 'gray', fill = 'white', size = .2)

print(map) 

