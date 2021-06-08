# bar plot

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

# read the csv file
csv_path = "fruit_productions.csv"
dataset = read.csv(csv_path)
cat("\ndataset:\n")
print(dataset)

# create column for dataset 
dataset$total_prod = dataset[["mulberry_prod"]] + dataset[["avocardo_prod"]] + dataset[["kiwi_prod"]]
cat("\nNew dataset:\n")
print(dataset)

# create bar plot

# 1. Names arg for each bar
names = dataset[["location"]]

# 2. numeric vector or matrix that would be used as numeric value
x = dataset[["total_prod"]]   #vector

# 3. x-label and y-label

xlabel = "Location"
ylabel ="total Production"

# 4. give a name to the bar chart
png(filename = "2_Bar_Plot/bar_chart.png", width = 480, height = 600)
# 5. set margin
par(mar=c(3, 4.5, 4, 3))


# 6. plot the graph
bar = barplot(height = x,
        names.arg = names,
        xlab = xlabel,
        ylab = ylabel,
        ylim = c(0, max(x)+15),
        space=0.7,
        main = "Location vs Production",
        col="#E1F8DC", border = "#000000")

# 7. add the height tag for each bar
text(bar, dataset$total_prod+8.0 , paste("n: ", dataset$total_prod, sep="") ,cex=1) 

# save the file
dev.off()
