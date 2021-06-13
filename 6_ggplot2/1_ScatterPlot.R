# box plot

# set the working directory in program
# or set the current directory as working directory in R Studio:
# Session-> Set As working directory->To File Pane Location
working_dir = getwd()
print(working_dir)

tryCatch(
  expr = {
    current_dir = "./6_ggplot2"
    setwd(current_dir)
  },
  error = function(e){ 
  }
)
library(ggplot2)

df = read.csv(file='air_quality_index.csv', fileEncoding = 'UTF-8-BOM')
print(head(df))

# no. of rows
cat('\nno. of rows: ', nrow(df))

# is nan value avaliable?
cat('\nno. of NaN values: ', sum(is.na(df)))

# get a summary
cat("\nsummary:\n")
print(summary(df))

# converting data as date type

df$DATE = as.Date(df$DATE, format = "%d/%m/%y")

# check if DATE column has changed or not
if(class(df$DATE) == "Date"){
  cat("DATE column has been changed")
}else{
  cat("DATE column does not change")
}

# plot the scatter plot with ggplot2
ggplot(data=df, aes=c(x="CITY", y="VALUES")) + geom_point()