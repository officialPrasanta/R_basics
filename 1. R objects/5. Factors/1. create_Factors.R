# creating a factor

# cricket world cup winners from 1975 to 2019
winners = factor(c("WI", "WI", "IND", "AUS", "PAK", "SL", "AUS", "AUS", "AUS", "IND", "AUS", "ENG"))
print(winners)

# print the class
cat("\n\nClass: ")
print(class(winners))

# get the levels
cat("\n\nLevels: ")
print(levels(winners))

# accessing the elements of factors
cat("\n\nAccessing Elements: ")
print(winners[c(1: 3)])
cat("\n\n\n")


# modify factors
booleans = factor(c(TRUE, FALSE, TRUE, TRUE))
print(booleans)

booleans[4] = FALSE
print(booleans)