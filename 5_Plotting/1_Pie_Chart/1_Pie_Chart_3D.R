# get the library
library(plotrix)

# set the working directory in program
# or set the current directory as working directory in R Studio: 
# session-> Set As working directory->To File Pane Location

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

#create column for dataset 
dataset$total_prod = dataset[["mulberry_prod"]] + dataset[["avocardo_prod"]] + dataset[["kiwi_prod"]]
cat("\nNew dataset:\n")
print(dataset)


# create 3D pie chart

# 1. take location col as vector form to generate the labels
pie_labels = dataset[["location"]]

# 2. take the data vector to be plot in pie chart
x = dataset[["total_prod"]]

# 3. get the percentage of total-prod
percent = round(x*100/sum(x), 2)

# 4. give a name to the pie chart
png(filename = "1_Pie_Chart/pie_chart_3D.png")

# 5. plot the chart
pie3D(x=x,
    labels = percent,
    main = "Total Production Pie Chart(in Q)",
    explode=0.1,
    col = rainbow(length(x)))

# 6. legend
legend("topright", legend = pie_labels, fill = rainbow(length(x)), cex = 0.9)

# save the file
dev.off()