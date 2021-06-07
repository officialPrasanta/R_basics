myList = list(A=matrix(data=c(1:9), nrow=3, byrow = TRUE), B=c(1:7), C=20)
cat("Whole list: \n")
print(myList)

# accessing elements

# accessing the matrix
cat("Inner matrix: \n")
print(myList['A'])
# Or
cat("\nOr: \n")
print(myList[1])
# Or
cat("\nOr: \n")
print(myList$A)

# accessing the single value
cat("Inner vector: \n")
print(myList['B'])
# Or
cat("\nOr: \n")
print(myList[2])
# Or
cat("\nOr: \n")
print(myList$B)


# accessing the element at (2, 2) of the matrix
cat("Inner matrix element at (2, 2): \n")
print(myList$A[2, 2])
