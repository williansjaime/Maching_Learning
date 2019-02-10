#Willians 06/2/2019
#Agrupamento Kmeans
#usado para agrupar varios conjuntos de dados
# 
#
dim(iris)
head(iris) #mostrar os dados

cluster= kmeans(iris[1:4],center = 3)
cluster

# verificar o quanto o agrupamento em kmeans tem em relaçao
#ao verdadeiro
table(iris$Species, cluster$cluster) # usaria o cluster se essas especies nao tivessem divididas
# em grupos

plot(iris[,1:4], col=cluster$cluster)
