library(rpart)
##Load Data
mydata = read.csv(file.choose())
print(head(mydata))
summary(mydata)
#Decision Tree using rpart Function
tree <- rpart(play~., mydata, method = "class", minsplit=2, minbucket=1)
print(tree)
rpart.plot::rpart.plot(tree)

##----------------Random Forest------------------
library(randomForest)
fit <- randomForest(play~.,data=mydata)
print(fit)
plot(fit)

