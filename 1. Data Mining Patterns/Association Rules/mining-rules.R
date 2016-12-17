if (!is.element("arules", installed.packages()[,1])){
	install.packages("arules")
}

library(arules)

data <- read.csv('/home/sampurn/projects/ML-R/1. Data Mining Patterns/Association Rules/groceries.csv')
rules <- apriori(data)
print(rules)
print(inspect(rules))