# matrix 1
mat1 = matrix(data=c(1:9), nrow=3, byrow=TRUE)

#matrix 2
mat2 = matrix(data=c(5:13), nrow=3, byrow=TRUE)

print(mat1)
print(mat2)

# addition of two matrices
cat("\nAddition:\n")
add_mat = mat1 + mat2
print(add_mat)

# subtraction of two matrices
sub_mat = mat2 - mat1
cat("\nSubtraction:\n")
print(sub_mat)

# matrix multiplication of two matrices
mmul_mat = mat2 %*% mat1
cat("\nMatrix Multiplication:\n")
print(mmul_mat)

# element-wise multiplication of two matrices
emul_mat = mat2 * mat1
cat("\nElement-wise Multiplication:\n")
print(emul_mat)

# element-wise division of two matrices
div_mat = mat2 / mat1
cat("\nElement-wise Division:\n")
print(div_mat)