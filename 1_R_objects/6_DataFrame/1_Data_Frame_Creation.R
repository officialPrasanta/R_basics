#information
town = c("Kanchan", "Pahas", "Derby", "Tarlee", "Kirby", "Edamann")

# production
mulberry = c(87, 98, 116, 97, 132, 90)
avocardo = c(117, 108, 96, 107, 92, 98)
kiwi = c(101, 88, 126, 127, 112, 78)

#temperature and rainfall col
temp = c(81.6, 68.6, 87.3, 91.0, 81.9, 70.4)
rainfall = c(1950, 1090, 2000, 1950, 1700, 1150)

# create DataFrame

productions.data = data.frame(
  location=town,
  temperature = temp,
  rainfall = rainfall,
  mulberry_prod = mulberry,
  avocardo_prod = avocardo,
  kiwi_prod = kiwi
)

# print dataframe
cat("\nDataFrame:\n\n")
print(productions.data)

# print summary
cat("\n\nSummary Report:\n\n")
print(summary(productions.data))