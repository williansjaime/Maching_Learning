#Willians 06/2/2019
#Agrupamento FUZZY C-MEans
# uma instacia pode pertencer a mais de um grupo
#pode esta em mais de um grupo segundo uma probabilidade
 library(e1071)
cluster = cmeans(iris[,1:4], center= 3) 
cluster
# matris de confusao
table(iris$Species, cluster$cluster)

#Willians 06/2/2019
#Agrupamento K-medoids
# uma instacia pode pertencer a mais de um grupo
#pode esta em mais de um grupo segundo uma probabilidade
install.packages("cluster", dependencies = T)
library(cluster)
cluster = pam(iris[,1:4], k=3)
cluster
plot(cluster)

table(iris$Species, cluster$clustering)
