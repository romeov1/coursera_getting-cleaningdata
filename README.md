Coursera "Getting and Cleaning Data" final assignment

This repository contains 4 files:  
1. this "README.md" file with general information about this repository  
2. "CodeBook.md" that describes variables, data and data manipulation performed  
3. "run_analysis.R", an R code that performs the analysis of the dataset accordingly to the codebook  
4. "tidydataset.txt", that contains the tidy data obtained by performing the analysis coded in "run_analysis.R"  

For this project data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone (found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) were cleaned to generate a tidy dataset that shows mean and standard deviation for each measurement in the original dataset.  

"run_analysis.R" does the following:  
a) Dowloads and unzips the dataset  
b) Merges the training and the test sets to create one data set  
c) Extracts only the measurements on the mean and standard deviation for each measurement  
d) Uses descriptive activity names to name the activities in the data set  
e) Appropriately labels the data set with descriptive variable names  
f) Creates "tidydataset.txt" with the average of each variable for each activity and each subject  

To re-perform the analysis just run the code "run_analysis.R".    
Please refer to CodeBook.md for additional information.   
