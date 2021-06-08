# Create data for the graph

pixels <-  c(207, 255, 245, 223, 177, 177, 87, 97, 177, 207, 123, 123, 207, 207, 255, 255, 87, 56, 56, 177, 245, 223, 245)

# Give name to the chart
png(file = "3_Histogram/histogram.png")

# Create the histogram.
hist(pixels,xlab = "Weight",col = "#A5BFBE",border = "#3D3D40")

# Save the file.
dev.off()