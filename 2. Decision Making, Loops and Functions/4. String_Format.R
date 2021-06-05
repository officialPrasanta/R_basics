# format function syntax:
# res = format(x, digits, nsmall, scientific, width, justify = c("left", "right", "centre", "none"))
# 
# x: data
# digits: digits to be printed
# nsmall: min. number of digits to be printed to the right of the decimal point
# scientific: if set TRUE then give scientific notation
# width: minimum blanks padding to be displayed in the beginning.
# justify: justify the content

# output everything as a string.
res = format(c(100, 200))
print(res)
cat("class of ", res, "is: ", class(res), "\n\n")

# Total number of digits to be displayed and last digit is rounded off.
res = format(12.12345, digits = 5)
print(res)

# Display numbers in scientific notation.
res = format(299700000, scientific = TRUE)
print(paste("Speed of Light: ",res))

# The min. number of digits to be printed to the right of the decimal point
res = format(12.12, nsmall = 5)
print(res)

# Numbers are padded with blank in the beginning for width.
res = format(13.71, width = 8 )
print(res)

# Left justified string.
res = format("Hello World", width = 20 , justify = "l")
print(res)

# Center justified string.
res = format("Hello World", width = 20, justify = "c")
print(res)