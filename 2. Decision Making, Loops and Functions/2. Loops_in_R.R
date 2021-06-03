# repeat loop
count = 0

repeat{
  print("Happy!!")
  count = count + 1
  if(count >= 5){
    break
  }
}

# for loop

cat("\n")
numbers = 1:5
for(num in numbers){
  print(num)
}