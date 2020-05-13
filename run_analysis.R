### Goal: write R script called run_analysis.R that does the following:
##1-Merges the training and the test sets to create one data set.
##2-Extracts only the measurements on the mean and standard deviation for each measurement.
##3-Uses descriptive activity names to name the activities in the dataset
##4-Appropriately labels the data set with descriptive variable names.
##5-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##load dplyr
  library(dplyr)
  
## download and unzip files in new directory
  if(!file.exists("./gettingandcleaningdata")){dir.create("./gettingandcleaningdata")}
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl, destfile = "./gettingandcleaningdata/dataset.zip")
  unzip(zipfile = "./gettingandcleaningdata/dataset.zip", exdir = "./gettingandcleaningdata")
  
##1-Merge the training and the test sets to create one data set.
  #read relevant data
    Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
    Ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
    Stest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
    Ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
    Strain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    features <- read.table("./UCI HAR Dataset/features.txt")
    activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  #merge "test" and "train" subsets
      X <- rbind(Xtest, Xtrain)
      Y <- rbind(Ytest,Ytrain)
      S <- rbind(Stest,Strain)
  #rename columns
        colnames(S) <- "Subject"
        colnames(Y) <- "Activity"
        colnames(X) <- features[,2]

##2-Extract only the measurements on the mean and standard deviation for each measurement.
          msdata <- X[,grep(".*Mean.*|.*Std.*", names(X), ignore.case=TRUE)]
  # merge subsets in columns to generate a single dataset of interest
            data <- cbind(S,Y,msdata)

##3-rename activities in the dataset
            data$Activity <- as.character(data$Activity)
            for (i in 1:6){data$Activity[data$Activity == i] <- as.character(activitylabels[i,2])}

##4-relabel the data set with descriptive variable names.
            names(data) <- gsub("^t", "Time", names(data))  
            names(data) <- gsub("Freq", "Frequency", names(data))
            names(data) <- gsub("^f", "Frequency", names(data))
            names(data) <- gsub("Acc", "Accelerometer", names(data))
            names(data) <- gsub("Gyro", "Gyroscope", names(data))
            names(data) <- gsub("Mag", "Magnitude", names(data))
            names(data) <- gsub("BodyBody", "Body", names(data))
            names(data) <- gsub("meanFrequency", "Mean", names(data))
            names(data) <- gsub("angle", "Angle",names(data))
            names(data) <- gsub("tBody","TimeBody", names(data))
            names(data) <- gsub("),",",", names(data))
            names(data) <- gsub("-mean", "Mean",names(data))
            names(data) <- gsub("-std", "Std",names(data))

##5-create tidy data set with the average of each variable for each activity and each subject.
              tidydataset <- data %>% group_by(Activity, Subject) %>% summarise_all(mean)
  #save the new dataset in a new file
              write.table(tidydataset, "tidydataset.txt", row.name = FALSE)
