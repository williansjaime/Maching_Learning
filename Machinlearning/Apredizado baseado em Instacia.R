#Willians 04/2/2019
#Aprendizagem baseado em instancia 
#nesse aprendizagem não nescessita de modelo
#ele seleciona os atributos e faz uma previsão baseado em dados historicos
install.packages("class", dependencies = T)
library(class)
head(iris)
summary(iris)
amostra = sample(2,150,replace=T, prob = c(0.7,0.3))
iristreino = iris[amostra==1,]
classificar = iris[amostra==2,]
dim(iristreino)
dim(classificar)
#
previsao = knn(iristreino[,1:4],classificar[,1:4],iristreino[,5],k=1)
table(classificar[,5], previsao)
