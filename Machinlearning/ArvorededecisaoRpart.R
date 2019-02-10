#Willians 28/1/2019
#Arvore de Decisao
#
#

install.packages("rpart",dependencies = T)
library(rpart)
#Carregar um arquivo de credito
credito = read.csv(file.choose(), sep = ",", header = T)
amostra = sample(2,1000,replace=T,prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]
arvore = rpart(class ~ ., data = creditotreino, method="class")
#imprime a arvore no estilo texto
print(arvore)
#fazer um plot da arvore
plot(arvore)
#colocar a informacao das folhas
text(arvore, use.n = T, all = T, cex=.8)
#realizar previsao com arvore
#mostra a probabilidade de esta em bom ou mal pagador
teste = predict(arvore, newdata = creditoteste)
teste
cred = cbind(creditoteste, teste)
fix(cred)
cred['Result'] = ifelse(cred$bad>= 0.5, "bad", "good")
fix(cred)
#matriz de confusao
confusao = table(cred$class, cred$Result)
confusao
taxaacerto = (confusao[1] + confusao[4])/sum(confusao)
taxaacerto
taxaerro = (confusao[2] + confusao[3])/sum(confusao)
taxaerro
