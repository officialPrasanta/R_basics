# matrix creation

fib_mat = matrix(c(
                1, 1, 2,
                3, 5, 8,
                13, 21, 34
            ), nrow = 3, byrow = TRUE)

cat("determinant: ", det(fib_mat)) 

# fib_mat is a singular matrix so it does not have any inverse matrix

# inverse of matrix
mat = matrix(c(
  29, 1, 2,
  1, 5, 1,
  7, 1, 34
), nrow = 3, byrow = TRUE)

if(det(mat)){
  cat("\n\ninverse of a matrix:\n")
  print(solve(mat))
}

# transpose of a matrix

tmat = t(mat)
cat("\n\ntranspose of a matrix:\n")
print(tmat)