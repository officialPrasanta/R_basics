# merging two data frame

#information
area = c("Kanchan", "Pahas", "Derby", "Tarlee", "Kirby", "Edamann")
rainfall = c(1950, 1090, 2000, 1950, 1700, 1150)
temp = c(81.6, 68.6, 87.3, 91.0, 81.9, 70.4)

#production
mulberry = c(87, 98, 116, 97, 132, 90)
avocardo = c(117, 108, 96, 107, 92, 98)
kiwi = c(101, 88, 126, 127, 112, 78)
len = length(mulberry)
productions_matrix=matrix(data = c(mulberry, avocardo, kiwi), 
                          nrow = len,
                          byrow = FALSE)
colnames(productions_matrix) = c("mulberry", "avocardo", "kiwi")

# dataframe 1
climate_df = data.frame(town=area,
                        rainfall = rainfall,
                        temp = temp)
cat("\nCliment Dataframe: \n")
print(climate_df)

# dataframe 2
productions_df = data.frame(location=area,
                           production=productions_matrix)
cat("\nProduction Dataframe: \n")
print(productions_df)

# merge the dataframe 1 and dataframe 2
productions.all = merge(x=climate_df,
                        y=productions_df,
                        by.x = "town",
                        by.y = "location")
cat("\nWhole Dataframe: \n")
print(productions.all)
