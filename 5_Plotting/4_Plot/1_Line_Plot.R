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

# create column for dataset 
dataset$total_prod = dataset[["mulberry_prod"]] + dataset[["avocardo_prod"]] + dataset[["kiwi_prod"]]
cat("\nNew dataset:\n")
print(dataset)

# plot a line plot

# 1. get the points and xlabel
total.productions = dataset[["total_prod"]]   #vector
location = dataset[["location"]]
cx = seq(1, 3.5, 0.5)
# 2. filename.
png(file = "4_Plot/line_chart_label_colored.png")

# 3. plot the line plot
plot(y = total.productions,
     x = cx,
     xaxt = "n",
     type = "o",
     ylim = c(200, max(total.productions)),
     xlab = "location",
     ylab = "total production")
axis(1, at = seq(1, 3.5, .5), labels = location)

dev.off()