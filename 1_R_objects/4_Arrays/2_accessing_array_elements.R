# creating array

sin_value = sin(c(1:24)*pi/180)
# dimnames
row_names = c('row1', 'row2', 'row3')
col_names = c('col1', 'col2', 'col3', 'col4')
matrix_names = c('matrix1', 'matrix2')
arr = array(data=sin_value, dim = c(3, 4, 2), dimnames = list(row_names, col_names, matrix_names))

print(arr)

#print the element at first row and first col of first matrix
cat("\n\n1st row & 1st col of 1st matrix: ", arr[1, 1, 1])

#print the element at first row and first col of second matrix
cat("\n\n1st row & 1st col of 2nd matrix: ", arr[1, 1, 2])

#print the elements at first row of first matrix
cat("\n\n1st row of 1st matrix:", arr[1,, 1])

#print the elements at (row1:row3, col2:col3) of second matrix
cat("\n\nelements at (1:3, 2:3) of 2nd matrix:\n")
print(arr[1:3,2:3, 2])