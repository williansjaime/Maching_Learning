#Willians 28/1/2019
#Classificacao na pratica com 
#Naive Bayes
#
install.packages("e1071")
library(e1071)
credito = read.csv(file.choose(), sep=",",header = T)
head(credito)
