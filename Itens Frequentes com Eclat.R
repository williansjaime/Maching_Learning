#Willians 10/2/2019
#Itens frequentes com Eclat
#
#usar o pacote arules
library(arules)
transacoe = read.transactions(file.choose(), format="basket", sep=",")
image(transacoe)
#gerar minera��o de  regras 
regras = eclat(transacoe, parameter = list(supp = 0.1, maxlen=15))
inspect(regras)
#visualisar regras em plot
plot(regras, method="graph", control = list(type = "items"))

