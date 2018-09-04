library(ggplot2)
library(sp)
library(rgdal)
mapReg <- function() {
  print("Azul, Morocco!")
  shapeData <- spTransform(readOGR(dsn="." ,layer = 'regions'), CRS("+proj=longlat +ellps=GRS80"))
  plot(shapeData)
}
