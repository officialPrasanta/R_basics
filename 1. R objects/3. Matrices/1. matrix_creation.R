coordinates1 = c(3, 3, 0)
coordinates2 = c(5, 2, -3)
coordinates3 = c(8, 3, 5)

# creating a matrix    # Syntax: m = matrix(data, nrow, ncol, byrow=TRUE, dimnames)

triangle = matrix(c(coordinates1, coordinates2, coordinates3), nrow = 3, ncol = 3, byrow = TRUE)
print(triangle)


# example dimnames

production = matrix(c(190, 150, 97, 88, 110, 130, 72, 140, 168), nrow = 3, ncol = 3, byrow = TRUE)
row_names = month.abb[1:3]
col_names = c("Kanchan", "Pahas", "Midland")
dimnames(production) = list(row_names, col_names)

print(production)
