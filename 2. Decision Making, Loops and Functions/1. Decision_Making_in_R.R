# Decision Making

a_matrix = matrix(data = 1:9, nrow = 3, byrow = TRUE)
a_list = list(c(1:9), a_matrix)

if(is.list(a_list)){
  print("A pretty list")
}else{
  print("Pity!!")
}
cat("\n")

words = c("This", "is", "R Programming")

if("R Programming" %in% words){
  print("Happy!!")
}else{
  print("Woe!!")
}