###Codebook for run_analysis.R 
============================

####About the original dataset:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. Training and test data were first merged together to create one data set, then the measurements on the mean and standard deviation were extracted for each measurement (79 variables extracted from the original 561), and then the measurements were averaged for each subject and activity, resulting in the final data set.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).


####Variables in the "tidydataset":
 [1] "Activity"                                         
 [2] "Subject"                                         
 [3] "TimeBodyAccelerometerMean...X"                   
 [4] "TimeBodyAccelerometerMean...Y"                   
 [5] "TimeBodyAccelerometerMean...Z"                   
 [6] "TimeBodyAccelerometerStd...X"                    
 [7] "TimeBodyAccelerometerStd...Y"                    
 [8] "TimeBodyAccelerometerStd...Z"                    
 [9] "TimeGravityAccelerometerMean...X"                
[10] "TimeGravityAccelerometerMean...Y"                
[11] "TimeGravityAccelerometerMean...Z"                
[12] "TimeGravityAccelerometerStd...X"                 
[13] "TimeGravityAccelerometerStd...Y"                 
[14] "TimeGravityAccelerometerStd...Z"                 
[15] "TimeBodyAccelerometerJerkMean...X"               
[16] "TimeBodyAccelerometerJerkMean...Y"               
[17] "TimeBodyAccelerometerJerkMean...Z"               
[18] "TimeBodyAccelerometerJerkStd...X"                
[19] "TimeBodyAccelerometerJerkStd...Y"                
[20] "TimeBodyAccelerometerJerkStd...Z"                
[21] "TimeBodyGyroscopeMean...X"                       
[22] "TimeBodyGyroscopeMean...Y"                       
[23] "TimeBodyGyroscopeMean...Z"                       
[24] "TimeBodyGyroscopeStd...X"                        
[25] "TimeBodyGyroscopeStd...Y"                        
[26] "TimeBodyGyroscopeStd...Z"                        
[27] "TimeBodyGyroscopeJerkMean...X"                   
[28] "TimeBodyGyroscopeJerkMean...Y"                   
[29] "TimeBodyGyroscopeJerkMean...Z"                   
[30] "TimeBodyGyroscopeJerkStd...X"                    
[31] "TimeBodyGyroscopeJerkStd...Y"                    
[32] "TimeBodyGyroscopeJerkStd...Z"                    
[33] "TimeBodyAccelerometerMagnitudeMean.."            
[34] "TimeBodyAccelerometerMagnitudeStd.."             
[35] "TimeGravityAccelerometerMagnitudeMean.."         
[36] "TimeGravityAccelerometerMagnitudeStd.."          
[37] "TimeBodyAccelerometerJerkMagnitudeMean.."        
[38] "TimeBodyAccelerometerJerkMagnitudeStd.."         
[39] "TimeBodyGyroscopeMagnitudeMean.."                
[40] "TimeBodyGyroscopeMagnitudeStd.."                 
[41] "TimeBodyGyroscopeJerkMagnitudeMean.."            
[42] "TimeBodyGyroscopeJerkMagnitudeStd.."             
[43] "FrequencyBodyAccelerometerMean...X"              
[44] "FrequencyBodyAccelerometerMean...Y"              
[45] "FrequencyBodyAccelerometerMean...Z"              
[46] "FrequencyBodyAccelerometerStd...X"               
[47] "FrequencyBodyAccelerometerStd...Y"               
[48] "FrequencyBodyAccelerometerStd...Z"               
[49] "FrequencyBodyAccelerometer.Mean...X"             
[50] "FrequencyBodyAccelerometer.Mean...Y"             
[51] "FrequencyBodyAccelerometer.Mean...Z"             
[52] "FrequencyBodyAccelerometerJerkMean...X"          
[53] "FrequencyBodyAccelerometerJerkMean...Y"          
[54] "FrequencyBodyAccelerometerJerkMean...Z"          
[55] "FrequencyBodyAccelerometerJerkStd...X"           
[56] "FrequencyBodyAccelerometerJerkStd...Y"           
[57] "FrequencyBodyAccelerometerJerkStd...Z"           
[58] "FrequencyBodyAccelerometerJerk.Mean...X"         
[59] "FrequencyBodyAccelerometerJerk.Mean...Y"         
[60] "FrequencyBodyAccelerometerJerk.Mean...Z"         
[61] "FrequencyBodyGyroscopeMean...X"                  
[62] "FrequencyBodyGyroscopeMean...Y"                  
[63] "FrequencyBodyGyroscopeMean...Z"                  
[64] "FrequencyBodyGyroscopeStd...X"                   
[65] "FrequencyBodyGyroscopeStd...Y"                   
[66] "FrequencyBodyGyroscopeStd...Z"                   
[67] "FrequencyBodyGyroscope.Mean...X"                 
[68] "FrequencyBodyGyroscope.Mean...Y"                 
[69] "FrequencyBodyGyroscope.Mean...Z"                 
[70] "FrequencyBodyAccelerometerMagnitudeMean.."       
[71] "FrequencyBodyAccelerometerMagnitudeStd.."        
[72] "FrequencyBodyAccelerometerMagnitude.Mean.."      
[73] "FrequencyBodyAccelerometerJerkMagnitudeMean.."   
[74] "FrequencyBodyAccelerometerJerkMagnitudeStd.."    
[75] "FrequencyBodyAccelerometerJerkMagnitude.Mean.."  
[76] "FrequencyBodyGyroscopeMagnitudeMean.."           
[77] "FrequencyBodyGyroscopeMagnitudeStd.."            
[78] "FrequencyBodyGyroscopeMagnitude.Mean.."          
[79] "FrequencyBodyGyroscopeJerkMagnitudeMean.."       
[80] "FrequencyBodyGyroscopeJerkMagnitudeStd.."        
[81] "FrequencyBodyGyroscopeJerkMagnitude.Mean.."      
[82] "Angle.TimeBodyAccelerometerMean.gravity."        
[83] "Angle.TimeBodyAccelerometerJerkMean.gravityMean."
[84] "Angle.TimeBodyGyroscopeMean.gravityMean."        
[85] "Angle.TimeBodyGyroscopeJerkMean.gravityMean."    
[86] "Angle.X.gravityMean."                            
[87] "Angle.Y.gravityMean."                            
[88] "Angle.Z.gravityMean."   

####Explanation of run_analysis.R code to get to "tidydataset.txt"
Note: this code uses dplyr package.
1- first the code downloads the original dataset in a new directory named "gettingandcleaningdata"
2- then unzips its content in the same directory.
3- the code then reads all the relevant files and merges "test" and "train" subsets.
    X contains all features measured, columns are already named
    Y contains information about the activity type as a numeric 1:6
    S contains subject's identifiers
4- columns for Y and S are renamed "Activity" and "Subject" respectively
5- mean and standard deviation (std) measurements are extracted from X and data from X,Y and S are merged into a single relevant dataset named "data"
6- "Activity" column in "data" contains numeric identifier of the activity performed. numeric values are converted to descriptive activity names.
7- column names for the different measurements are substituted by descriptive variable names
8- a tidy data set with the average of each variable for each activity and each subject is generate and saved as "tidydataset.txt"
              