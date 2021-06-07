# creating array
# syntax: a <-array(data, dim, dimnames)

arr = array(data = c(1:18), dim = c(3, 3, 2))
print(arr)


# corecing to array

vec = c(1:24) # a vector

arr1 = as.array(vec)
#set dimension of arr1
dim(arr1) = c(4, 3, 2)
print(arr1)

#check if the class array or not
print(is.array(arr1))