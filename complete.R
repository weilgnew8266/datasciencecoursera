complete <- function(directory, id = 1:332){
  
  ## 'directory' is a character vector of length 1 indicating the 
  ## location of the CSV files
  ## set the directory
  setwd(directory)
  
  ## read the required files into the files_list
  files_list <- list.files(pattern = ".csv") [id]
  
  ## read the data from the csv files
  data_list <- lapply(files_list, read.csv)
  
  complete_list = complete.cases
  
  
  
  
  
}


