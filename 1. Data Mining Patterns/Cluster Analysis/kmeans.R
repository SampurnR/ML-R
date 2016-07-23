set.seed(42)
# generate a set of 200 random numbers (100 pairs) in a normal distribution
x <- rbind(matrix(rnorm(100, sd = 0.3), ncol =  2), matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2))

# kmeans on x with 10 clusters
fit <- kmeans(x, 10)
print(fit)

# playing further with kmeans
# testing value of sum of squares with respect to the number of clusters
results <-  matrix(nrow = 14, ncol = 2, dimnames = list(2:15, c("clusters", "sumsquares")))

for(i in 2:15){
	fit <- kmeans(x, i)
	results[i-1, 1] <- i
	results[i-1, 2] <- fit$totss
}
print(plot(results))