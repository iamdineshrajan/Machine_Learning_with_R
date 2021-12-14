library(cluster)

df=c(10,7,28,20,35)  
k=2
# Dissimilarity matrix
d <- dist(df, method = "euclidean")
hc = hclust(d)
# Plot the obtained dendrogram
plot(hc)


data(iris)
dat <- iris[, -5] # without known classification 

# Dissimilarity matrix

d <- dist(dat, method = "euclidean")
hc = hclust(d)

# Plot the obtained dendrogram
plot(hc)
