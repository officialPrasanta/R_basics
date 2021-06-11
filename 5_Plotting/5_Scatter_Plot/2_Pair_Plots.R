# pair plot
# scatter plot showing correlation

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

# pre-installed dataset
iris.dataset = iris
# print head 3
cat("Head: \n")
print(head(iris.dataset, n=3))

# print tail 3
cat("Tail: \n")
print(tail(iris.dataset, n=3))


# file name
png(file = "5_Scatter_Plot/pair_plot.png", width = 800, height = 600)

# legend names

species = as.vector(unique(iris.dataset$Species))

pairs(iris.dataset[1:4], col = c("red", "green3", "blue")[unclass(iris$Species)])
# set graphical parameters

par(xpd=TRUE)     # xpd->TRUE: all plotting is clipped to the figure region
legend("bottomright", legend=species, fill=c("red", "green3", "blue"))
dev.off()