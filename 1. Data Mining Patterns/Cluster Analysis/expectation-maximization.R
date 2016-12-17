if(!is.element("mclust", installed.packages()[, 1])){
	install.packages("mclust")
}

library("mclust")

data <- iris
fit <- Mclust(data)

print(fit)
print(summary(fit))

plot(fit)