coordinates = c(2, 1, 3)  # a vector
axes = c("x-axis", "y-axis", "z-axis") # another vector

print(paste(coordinates, ": ", axes))

# print class

print(class(coordinates))
print(class(axes))

# multi-class vector
multi_vec = c(2L, "this", 3.14)
print(multi_vec)
print(class(multi_vec))

# null vector
null_vector = c()
print(null_vector)

# vector inside a vector
e = c(c(1,2, 3), 'Joe')
print(e)