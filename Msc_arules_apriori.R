library(arules)
library(arulesViz)
library(RColorBrewer)
data("Groceries")
summary("Groceries")
head(Groceries, 3)
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))
summary(rules)
inspect(head(sort(rules,by="support"),10)) 
confidentRules<-rules[quality(rules)$confidence>0.5] 


plot(confidentRules,method="matrix",measure=c("lift","confidence"),control=list(reorder="none"))
plot(rules, method = "graph", measure = "confidence", shading = "lift")
