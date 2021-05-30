vec = c(1:10)
months = month.abb[1:5]
inn_matrix = matrix(log2(1:9), nrow = 3, byrow = TRUE)
my_list = list(vec, months, inn_matrix)
print(my_list)

# list to vector

res_vector = unlist(my_list)
print(res_vector)