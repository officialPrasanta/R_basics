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

# while loop
cat("\n")
stmnt = c("Happy","while loop")
count = 0

while (count < 7) {
  print(stmnt)
  count = count + 1
}


# next statement

cat("\n\n")
alphabets = letters[1:10]
print(alphabets)
cat("\n")

for(val in alphabets){
  if(val == "d"){
    next
  }
 cat(val, ' ')
}