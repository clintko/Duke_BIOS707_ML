### load required package
library(tidyverse)
library(randomForest)

### load RData
setwd("C:\\Users\\clint\\GitRepo\\Duke_BIOS707_ML\\PS5")
load("fun_predict_kk319.RData")

### predict the genotype label Mouse test dataset
yhat = fun_predict_kk319(MouseData.Test)

### get the true test label
y_test = factor(
    MouseData.Test$Genotype, 
    levels = c("Control", "Ts65Dn"))
y_test  = as.numeric(y_test) - 1

### check the performance
print(sum((y_test - yhat)^2))

