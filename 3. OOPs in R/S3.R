# In R there are three class system: S3, S4 and Reference Class
# In S3 system the method doesn't belongs to the class and we can't create our own method in S3 system
# rather we can use generic methods 

# Defining NOT-IN operator
`%!in%` = Negate(`%in%`)


prod = list(fruit_name = "",
             unit="",
             location=c(NULL),
             production_vector = c(NULL))

# Give class Name
class(prod) = "production"

# create constructor: function with same class name
production = function(fruit_name, unit, location, production_vector) {
  predefined_units = c("ton", "matric ton", "kg", "pound")
  # check if user-given unit is matched with predefined_units or not
  if(unit %!in% predefined_units){
    stop("Unit is not matched")
  }
  if(length(production_vector) != length(location)){
    stop("vector size unmatched")
  }
  
  class_val = list(fruit_name = fruit_name, unit = unit, location=location, production_vector = production_vector)
  # class can be set using class() or attr() function
  attr(class_val, "class") = "production"
  class_val
}

mulberry_production <- production(fruit_name = "Mulberry",
                                  unit="ton",
                                  location=c("Kanchan", "Pahas", "Derby","Tarlee", "Kirby", "Edamann"),
                                  production_vector = c(87, 98, 116, 97, 132, 90))

# user defined method using generic method-print()
print.production = function(obj){
  cat("fruit name: ", obj$fruit_name, "\n")
  cat("unit : ", obj$unit, "\n")
  cat("locations: \n")
  print(obj$location)
  cat("productions: \n")
  print(obj$production_vector)
  
}
# display the object value
print(mulberry_production)