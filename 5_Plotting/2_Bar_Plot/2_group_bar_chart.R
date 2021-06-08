# group bar plot

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

# 2.matrix to be used as heights
production_col = colnames(dataset[c(4:6)])
productions = t(data.matrix(dataset[production_col]))   # transposed matrix
print(productions)

# 3. colors
colours = c("#026873", "#F2BC79", "#D97014")
# 3. x-label and y-label
xlabel = "Location"
ylabel ="Production"

# 4. give a name to the group bar
png(filename = "2_Bar_Plot/group_bar_chart.png", width = 600, height = 800)
# 5. set margin
par(mar=c(3, 4.5, 3, 2.5))


# 6. plot the graph
bar = barplot(height = productions,
              names.arg = names,
              xlab = xlabel,
              ylab = ylabel,
              ylim = c(0, max(colSums(productions))+50),
              space=0.7,
              main = "Location vs Production",
              col=colours, border = "#000000")

# 7. add legend
legend("topright", production_col, cex = 1, fill = colours)

# 8. add the height tag for each bar
text(bar, dataset$total_prod+10.0 , dataset$total_prod ,cex=1)

# save the file
dev.off()

