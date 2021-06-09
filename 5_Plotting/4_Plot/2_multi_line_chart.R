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

# plot a line plot

# 1. get the points and xlabel
production_col = colnames(dataset[c(4:7)])          # vector 1
total.productions = dataset[["total_prod"]]         # vector 2
location = dataset[["location"]]                    # vector 3
mulberry.production = dataset[["mulberry_prod"]]    # vector 4
avocardo.production = dataset[["avocardo_prod"]]    # vector 5
kiwi.production = dataset[["kiwi_prod"]]            # vector 6

cx = seq(1, 3.5, 0.5)

# 2. filename.
png(file = "4_Plot/multi_line_chart.png", width = 800, height = 600)

# 3. plot the line plot
plot(y = total.productions,
     x = cx,
     xaxt = "n",
     type = "o",
     ylim = c(50, max(total.productions)),
     col="brown",
     xlab = "location",
     ylab = "production")
lines(y = mulberry.production, x = cx, type = "o", col="red")
lines(y = avocardo.production, x = cx, type = "o", col="green")
lines(y = kiwi.production, x = cx, type = "o", col="blue")
axis(1, at = seq(1, 3.5, .5), labels = location)

# 4. add legend
legend("topright", production_col, cex = 1, fill =c("red", "green", "blue", "brown"))

dev.off()