library(cluster)

df=c(8,3,4,9,8,5,7,8,7,4)  
k=2

km = kmeans(df, k)

clusplot(df,km$cluster)


data(iris)
dat <- iris[, -5] # without known classification 

# Kmeans clustre analysis
clus <- kmeans(dat, centers=3)
clusplot(dat,clus$cluster)

clustering <- kmeans(df, centers = 2, nstart = 20)
mykmed = pam(df,k,metric = 'euclidean',stand = FALSE)

