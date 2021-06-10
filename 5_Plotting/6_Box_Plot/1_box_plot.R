# box plot

# set the working directory in program
# or set the current directory as working directory in R Studio: More-> Set As working directory

working_dir = getwd()
print(working_dir)

tryCatch(
  expr = {
    current_dir = "./5_Plotting"
    setwd(current_dir)
  },
  error = function(e){ 
  }
)

# pre-installed dataset
iris.subset = iris[c("Sepal.Width","Species")]
# print head 3
cat("Head: \n")
print(head(iris.subset, n=3))

# print tail 3
cat("Tail: \n")
print(tail(iris.subset, n=3))


# file name
png(file = "6_Box_Plot/boxplot.png", width = 800, height = 600)

boxplot(Sepal.Width~Species,
        data = iris.subset,
        xlab = "Sepal Width",
        ylab = "Species",
        main = "Sepal Width distribution in each Species")

dev.off()