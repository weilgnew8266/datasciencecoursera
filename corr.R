corr <- function(directory = "specdata", threshold = 0){
  
  ## 'directory' is a character vector of length 1 indicating the 
  ## location of the CSV files
  ## set the directory
  setwd(directory)
  
  ## create a vector to store the correlation data
  cor_complete <- c()
  
  ## read the required files into the files_list
  files_list <- list.files(pattern = ".csv") [1:332]
  
  ## read the data from the csv files
  data_list <- lapply(files_list, read.csv)
  
  for (id in 1:332){
    ## determine the complete case 
    complete_list <- complete.cases(data_list[[id]])
    complete_list_sum <-sum(complete_list)
    if (complete_list_sum > threshold) {
      temp_corr_data <- cor (data_list[[id]]$nitrate[complete_list], data_list[[id]]$sulfate[complete_list]) 
      cor_complete <- c(cor_complete, temp_corr_data)
    }
  }
  
  setwd("..")
  return (cor_complete)
  
}
