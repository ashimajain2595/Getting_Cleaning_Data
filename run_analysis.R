filename <- "getdata_dataset.zip"

# Download and unzip  dataset
if (!file.exists(filename)){
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename)
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Read the train dataset
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Read the test dataset
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

traindata <- cbind(subject_train, Y_train, X_train)
testdata <- cbind(subject_test, Y_test, X_test)
mergeddata <- rbind(traindata, testdata)

features <- read.table("UCI HAR Dataset/features.txt")
labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Extract features related to mean and standard deviation 
features_sel <- grep(".*mean.*|.*std.*", features[,2])
features_select <- features_sel + 2
features_select <- c(1,2, features_select)
subdata <- mergeddata[,features_select]

# Changing the variable names
names(subdata) <- c("subject", "activity", as.character(features[features_sel,2]))

# Labelling the activity
subdata$activity<-as.character(labels[subdata$activity,2])

library(reshape2)

# Average of each activity for every activity and subject
datamelt <- melt(subdata, id=c("subject", "activity"))
tidydata <- dcast(datamelt, subject + activity ~ variable, mean)

write.table(tidydata, "tidy_data.txt", row.names = FALSE, quote = FALSE)
