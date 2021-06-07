a_vec = c("This vector")
a_str = "A string" # similar to c("A string")
numeric_no = 23    # similar to c(23)
bool = TRUE        # similar to c(TRUE)
complex_no = 3+1i  # similar to c(3+1i)
integer_no = 20L   # similar to c(20L)


#print data-type

print(paste(a_vec, "is a: ",  class(a_vec), " class"))
print(paste(a_str, "is a: ",  class(a_str), " class"))

print(paste(numeric_no, "is a: ", class(numeric_no), " class"))

print(paste(bool, "is a: ", class(bool), " class"))

print(paste(complex_no, "is a: ", class(complex_no), " class"))

print(paste(integer_no, "is a: ", class(integer_no), " class"))


