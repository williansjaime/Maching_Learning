#Willians 21/1/2019
# Classificação na pratica com Naive Bayes 
#Dois pacotes para classificação e1071 e klaR
install.packages("e1071", dependencies=TRUE)
library(e1071)
#Buscar e verificar o arquivo credito
credito = read.csv(file.choose(), sep=",", header=T)
head(credito)
dim(credito)
#Separar a amostra de treino e de teste para o modelo
amostra = sample(2,1000,replace=T,prob=c(0.7,0.3))
amostra
#Separar os dados que vao ser de teste e treino
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]

dim(creditotreino)
dim(creditoteste)
modelo = naiveBayes( class ~ . , creditotreino )
modelo
class(modelo)
#gerar e testar o modelo
predicao = predict(modelo , creditoteste )
predicao
confusao =  table(creditoteste$class , predicao)
confusao
taxaacerto = (confusao[1] + confusao[4] / sum(confusao))
taxaacerto

taxaerro = (confusao[2] + confusao[3] / sum(confusao))
> taxaerro



