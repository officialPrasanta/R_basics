# function syntax :
# function.name = function(arg1, arg2, ....){
#   Function Body
#   Return value
# }

# demo function 1
print_name = function(name){
 cat("Hello", name)
}

# call a function
print_name("Prasanta")

cat("\n\n")

# function 1 - fibonnaci series
cat("Fibonnaci Series:\n")
print_fib_numbers = function(range){
  a = 0; b = 1; i = 1
  while(i <= range){
    cat(a, " ")
    add = a + b
    a = b
    b = add
    i = i + 1
  }
}

print_fib_numbers(range = 10)

cat("\n\n")

# recursion
print_factorial = function(num){
  if(num == 1){
    return(num)
  }
  return(num*print_factorial(num-1))
}

cat("factorial: ", print_factorial(5))