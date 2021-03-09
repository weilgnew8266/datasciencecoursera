complete <- function(directory, id = 1:332){
  
  ## 'directory' is a character vector of length 1 indicating the 
  ## location of the CSV files
  ## set the directory
  setwd(directory)
  
  ## read the required files into the files_list
  files_list <- list.files(pattern = ".csv") [id]
  
  ## read the data from the csv files
  data_list <- lapply(files_list, read.csv)
  
  ## determine the complete case for each data list 
  complete_list <- lapply(data_list, complete.cases)
  
  ## Compute the sum of the complete cases for each data list
  complete_list_sum <-lapply (complete_list, sum)
  
  ## create a data frame to store the number of complete cases for each ID
  complete_data <- data.frame("id" = id, "nobs" = unlist(complete_list_sum))
  
  ## return to the original directory
  setwd("..")
  
  return(complete_data)
  
}


