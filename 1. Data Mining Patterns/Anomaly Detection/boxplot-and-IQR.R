# How to read a boxplot
# https://i1.wp.com/flowingdata.com/wp-content/uploads/2008/02/box-plot-explained.gif?w=1090
# http://www.wellbeingatschool.org.nz/information-sheet/understanding-and-interpreting-box-plots

y <- rnorm(100)
boxplot(y)
print(boxplot.stats(y)$out)