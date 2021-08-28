setwd("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

setwd("./train")
train_set <- fread("X_train.txt")

setwd("..")

setwd("./test")
test_set <- fread("X_test.txt")
