set.seed(42)
# loading required libraries
library(cluster)

# creating the data matrix
Object <- 1:9
x <- c(1, 2, 1, 2, 1, 3, 2, 2, 3)
y <- c(10, 11, 10, 12, 4, 5, 6, 5, 6)
# binding as data frame
x <- cbind.data.frame(Object, x, y)

# k-medoids analysis
result <- pam(x = x, k = 2, diss = FALSE, metric = "euclidean")
print(result)

# Medoids:
#      ID Object x  y
# [1,]  2      2 2 11
# [2,]  7      7 2  6
# Clustering vector:
# [1] 1 1 1 1 2 2 2 2 2
# Objective function:
#    build     swap 
# 1.564722 1.564722 

# Available components:
#  [1] "medoids"    "id.med"     "clustering" "objective"  "isolation"  "clusinfo"   "silinfo"    "diss"       "call"       "data"  

plot <- plot(result$data, col = result$clustering)
print(plot)