# aperm(a, perm, ...)
# a is array
# perm is permutation
#         it decides position of row and column and nmat dimensions of an given array
#         for transposition, the "row" will be "column" and "column" will be "row" in the output array
#         so considering position of row and column (1, 2) -> (2, 1)

# USE Ctrl + Shift + C to comment out the lines not observing

# arr0
cat("\n\n")
arr0 = array(1:9, c(3, 3))
print(arr0)
cat("transposition of arr0: \n")
tarr0 = aperm(arr0, c(2, 1))
print(tarr0)

# arr1
cat("\n\n")
arr1 = array(1:24, c(3, 4, 2))
print(arr1)
cat("transposition of arr1: \n")
tarr1 = aperm(arr1, c(2, 1, 3))   #row->2 col->1, nmat->3
print(tarr1)

# arr2
cat("\n\n")
arr2 = array(1:13, dim=c(5, 3, 3))
print(arr2)
cat("transposition of arr2: \n")
tarr2 = aperm(arr2, c(2, 1, 3))   #row->2 col->1, nmat->3
print(tarr2)

# arr3
# a four dimensional array
cat("\n\n")
arr3 = array(1:72, dim=c(3, 3, 4, 2))
print(arr3)
# transpose row and column of four dimensional array
cat("transposition of arr3: \n")
tarr3 = aperm(arr3, c(2, 1, 3, 4))
print(tarr3)