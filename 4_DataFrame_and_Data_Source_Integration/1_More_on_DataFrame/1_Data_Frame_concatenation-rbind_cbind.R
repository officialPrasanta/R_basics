#information

town_in_north = c("Kanchan", "Pahas", "Derby")
town_in_south = c("Tarlee", "Kirby", "Edamann")

# temperature and rainfall col in north
temp_in_north = c(81.6, 68.6, 87.3)
rainfall_in_north = c(1950, 1090, 2000)

#temperature and rainfall col in south
temp_in_south = c( 91.0, 81.9, 70.4)
rainfall_in_south = c(1950, 1700, 1150)

# production in north
mulberry = c(87, 98, 116)
avocardo = c(117, 108, 96)
kiwi = c(101, 88, 126)

# production in south
mulberry = c(97, 132, 90)
avocardo = c(107, 92, 98)
kiwi = c(127, 112, 78)


# create DataFrame for north locations
productions.north = cbind(town_in_north, temp_in_north, rainfall_in_north, mulberry, avocardo, kiwi)

# print the dataframe
cat("\nProduction DataFrame-North:\n\n")
print(productions.north)

# create DataFrame for south locations
productions.south = cbind(town_in_south, temp_in_south, rainfall_in_south, mulberry, avocardo, kiwi)

# print the dataframe
cat("\nProduction DataFrame-South:\n\n")
print(productions.south)

# change header of the dataframe-production.north
colnames(productions.north) = c("town", "temp", "rainfall", "mulberry", "avocardo", "kiwi")

# concatenate the north and south dataframe

productions.all = rbind(productions.north, productions.south, deparse.level = 0)
