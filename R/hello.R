# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

library(ggplot2)
library(sp)
azul <- function() {
  print("Azul tifawine, Amadal!")
  download.file("https://raw.githubusercontent.com/timmimohamed/test0/master/reg_fes_meknes.csv", destfile =paste0(getwd(),"/","test.csv"),method="wininet")
}
