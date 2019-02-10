#Willians 07/2/2019
#Regras de associacao
#
#usar o pacote arules
install.packages("arules")
library(arules)
#carregar o arquivo txt
transacoes = read.transactions(file.choose(), format="basket", sep=",")
transacoes
#Exibir as transaçoes no formato igual do texto
inspect(transacoes)
image(transacoes)
#minerar as regrar que encontra no arquivo/ limitar com suporte e confiaça
regras = apriori(transacoes, parameter = list(supp=0.5, conf=0.5))
regras
inspect(regras)

#PESQUISAR SOBRE ESSE PACOTE
install.packages("arulesViz")
#Para rodar os plots a baixo
library(arulesViz)
plot(regras)
plot(regras, method="graph", control = list(type ="items"))


