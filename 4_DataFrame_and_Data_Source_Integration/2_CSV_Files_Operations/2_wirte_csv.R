# set working directory to current directory

working_dir = getwd()
print(working_dir)

tryCatch(
  expr = {
    current_dir = "./4_DataFrame_and_Data_Source_Integration/2_CSV_Files_Operations"
    setwd(current_dir)
  },
  error = function(e){ 
  }
)

# read the csv file
csv_path = "diabetes.csv"
dataset = read.csv(csv_path)
print(dataset)

# create subset

sub.dataset = dataset[c("Glucose", "Insulin", "Age", "Outcome")]
print(sub.dataset)

# write the sub dataset

write.csv(sub.dataset,"output.csv")