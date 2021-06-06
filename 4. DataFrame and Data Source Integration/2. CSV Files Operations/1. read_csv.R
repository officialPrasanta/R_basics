# set the current directory as working directory in R Studio: More-> Set As working directory

# read the csv file

csv_path = "diabetes.csv"
dataset = read.csv(csv_path)
print(dataset)

#check if the dataset is dataframe or not
cat("\nIs Data Frame? : ", is.data.frame(dataset), "\n")

# check the maximum level of diabetes
max_glucose_level = max(dataset$Glucose)
cat("Max of Glucose : ", max_glucose_level, "\n")

# get the diabetic positive sub-dataset
diabetic_positive_df = subset(dataset, Outcome == 1)
cat("Diabetic Positive Sub-dataset : \n")
print(diabetic_positive_df)

# get the diabetic positive sub-dataset and has maximum glucose level
diabetic_positive_df = subset(dataset, Outcome == 1 && Glucose > max_glucose_level)
cat("Diabetic Positive Sub-dataset : \n")
print(diabetic_positive_df)
