setwd("C:/Users/drmil/Documents/R_scripts/Lab1")
file <- read.csv(file = "lab1_e1.csv")

StrToNum <- function(column){
  if (length(grep('[a-z]', column, ignore.case = T)) == 0)
    column <- as.double(gsub(" ", "", column))
  return(column)
}

fix_data <- function(dataframe){
  data.frame(lapply(dataframe, StrToNum))
}

main <- function(){
  fixed_data <- fix_data(file)
  print(fixed_data)
}

main()
