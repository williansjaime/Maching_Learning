#Willians 04/2/2019
#selecao de atrinutos
#A seleçao de atributos deixa o codigo mais leve
#e seleciona os atributos com maior potencial de impacto

library("e1071")
credito = read.csv(file.choose(), sep = ",", header = T)
amostra = sample(2,1000,replace=T,prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]
modelo = svm(class ~ ., creditotreino)
modelo
predicao = predict(modelo, creditoteste)
predicao
confusao = table(creditoteste$class, predicao)
confusao
#verifica a taxa de acerto usando todos os atributos
taxaacerto = (confusao[1] + confusao[4])/sum(confusao)
taxaacerto

#selecao de atributos manualmente
#pacote para selecao de atributos
install.packages("FSelector", dependencies = T)
library(FSelector)
#Metodo para selecionar atributos
random.forest.importance(class ~ ., credito)

#Escrever modelo com atributos selecionados 
modelo = svm(class ~ checking_status + duration + credit_history + purpose, creditotreino)
predicao = predict(modelo, creditoteste)
confusao = table(creditoteste$class, predicao)
confusao
taxaacerto2 = (confusao[1] + confusao[4])/sum(confusao)
taxaacerto2
taxaacerto
taxaacerto2 - taxaacerto
