# create a matrix

data = c(log2(1:15))
table = matrix(data, nrow=5, byrow=TRUE)

print(table)

# accessing the element at 1st row 1st column 
cat("\ntable[1, 1]:", table[1, 1], "\n")

# accessing the element at last row last column 
cat("\ntable[length(table)]:", table[length(table)], "\n")

# access the element at k-th row k-th column
cat("\ntable[4, 2]:", table[4, 2], "\n")

# accessing the whole row
cat("\ntable[3, ]: ", table[3, ], "\n")

# accessing the whole column
cat("\ntable[, 3]: ", table[, 3], "\n")
