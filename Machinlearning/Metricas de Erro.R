#Willians 05/02/2018
#Metricas de Erro
#Claculo para estimar a diferença entre o previsto e o realizado
library(forecast)
previsto = c(3.4, 4.18, 3, 2.99, 4.51, 5.18, 8.18)
realizado = c(3, 4, 3, 3, 4.5, 4, 4.5)
mae = accuracy(previsto,realizado)
plan = table(previsto, realizado) #mostrar os dados em tabela
plan
