# set the working directory in program
# or set the current directory as working directory in R Studio:
# Session-> Set As working directory->To File Pane Location
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

# import library
library(ggplot2)

# predefined dataset
iris.df = iris

# print the head of the iris dataset
print(head(iris.df))

# scatter plot using ggplot
png(filename = "scatterplot2.png", width = 800, height = 800)
print(ggplot(data = iris.df, aes(x=Sepal.Length, y = Petal.Width, col=factor(Species)))
      + geom_point(size=3.5))
dev.off()

cat("graph saved!")