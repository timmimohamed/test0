library(ggplot2)
library(sp)
library(rgdal)
mapReg <- function() {
  print("Azul, Morocco!")
  shapeData <- spTransform(readOGR(dsn="." ,layer = 'https://github.com/timmimohamed/test0/regions'), CRS("+proj=longlat +ellps=GRS80"))
  plot(shapeData)
}
