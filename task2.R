setwd("C:/Users/drmil/Documents/R_scripts/Lab1")
load("lab1_e2.Rdata")
options(warn=-1)

MergeDF <- function(dataframes){
  new_dataframe <- Reduce(function(x, y) merge(x, y, by='id'), dataframes)
  return(new_dataframe)
}

get_id <- function(dataframes){
  new_dataframe <- MergeDF(dataframes)
  dataframe_without_id <- new_dataframe[, -1]
  result <- data.frame(id=new_dataframe$id, mean_temp=rowMeans(dataframe_without_id))
  return(result)
}
  
main <- function(){
  result <- get_id(all_data)
  print(result)
}
  
main()
