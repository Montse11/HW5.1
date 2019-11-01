library(microbenchmark)

setwd("C:/Users/monts/Desktop/HW5.1")
source("llr_functions.R")

library(reshape2)
data(french_fries)
french_fries = french_fries[complete.cases(french_fries),]
z = seq(0, 15, length.out = 300)
#fits = llr(z = z, x = french_fries$potato, y = french_fries$buttery, omega = 2)


microbenchmark(
  fits = llr(z = z, x = french_fries$potato, y = french_fries$buttery, omega = 2),
  times = 1L
)

