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

# Create data for the graph
pixels <-  c(207, 255, 245, 223, 177, 177, 87, 97, 177, 207, 123, 123, 207, 207, 255, 255, 87, 56, 56, 177, 245, 223, 245)

# Give name to the chart
png(file = "3_Histogram/histogram.png")

# Create the histogram.
hist(pixels,xlab = "Weight",col = "#A5BFBE",border = "#3D3D40")

# Save the file.
dev.off()