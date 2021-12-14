library(cluster)

x <- rbind(matrix(rnorm(10, sd = 0.3), ncol = 2),
           matrix(rnorm(10, mean = 1, sd = 0.3), ncol = 2))
colnames(x) <- c("x", "y")
summary(x)
k=3
kmed=pam(x, k, metric = "euclidean", stand = FALSE)
clusplot(kmed)

data <- iris[, 1:4]  # iris data 
pam <- pam(data,4) # do k med clust

clusplot(pam)# plot
