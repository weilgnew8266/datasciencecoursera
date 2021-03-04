pollutantmean <- function(directory, pollutant, id = 1:332){
  ## 'directory' is a character vector of length 1 indicating the 
  ## location of the CSV files
  ## set the directory
  setwd(directory)
  
  ## read the required files into the files_list
  files_list <- list.files(pattern = ".csv") [id]
  
  ## read the data from the csv files
  data_list <- lapply(files_list, read.csv)
  
  ## combine the data list into one data frame
  data <- do.call(rbind, data_list)
  
  ## calculate the mean value
  
  ## mean_value = mean(x, trim = 0, na.rm = FALSE, ...)
  ## mean_value <- mean(!is.na(paste0("data$",pollutant)))
  
  mean_value <- mean(data[,pollutant], na.rm = TRUE)
  
  ## set the directory back to original level
  setwd("..")
  
  return (mean_value)
}