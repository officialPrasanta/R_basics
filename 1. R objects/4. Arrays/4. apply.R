# Apply function in R

# create an array

my_arr = array(data = (1:30)*pi/180, dim =c(3, 5, 2))
print(my_arr)

# apply() function syntax:
# apply(X, MARGIN, FUN, ...)
    # X: array or matrix or list
    # MARGIN defines the row or col or (row and col)
    # row: 1 col: 2 and (row, col): (1, 2)
    # FUN is the function to be applied on MARGIN
    # ... is the argument of the FUNCTION

print(apply(my_arr, 1, sin))