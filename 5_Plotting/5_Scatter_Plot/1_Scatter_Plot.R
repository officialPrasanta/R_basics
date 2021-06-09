# call predefined dataset

iris.dataset = iris
# print top 5
print(iris.dataset[1:5, ])

# file name
png(file = "5_Scatter_Plot/scatter_plot.png", width = 800, height = 600)

# create scatter plot
plot(x = iris.dataset$Sepal.Length,
     y = iris.dataset$Petal.Length,
     xlab = "Sepal Length",
     ylab = "Petal Length",
     main = "Sepal Length vs Petal Length",
     col = factor(iris.dataset$Species),
     cex = 1.5)

# legend
legend(x = "bottomright",
       legend = c("setosa", "versiocolor", "virginica"),
       fill = unique(iris.dataset$Species))

# save the file
dev.off()