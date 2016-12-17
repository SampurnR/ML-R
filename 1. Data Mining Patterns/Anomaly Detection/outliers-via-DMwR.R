if (!is.element("DMwR", installed.packages()[,1])){
	install.packages("DMwR")
}

library("DMwR")

no_species_df <- iris[, 1:4]

scores <- lofactor(no_species_df, k = 3)
#print(scores)
print(which(scores > 1.5))

plot(density(scores))