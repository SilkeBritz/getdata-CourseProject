CODEBOOK
========

#Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


#Data set

##Variables

###ID variables 
**Activities:**
- LAYING
- SITTING
- STANDING
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS

**Subject**
- 30 volunteers, range 1 to 30

###Measure variables 
- general structure of the variables: DESCRIPTION- STD or MEAN - AXIS
- the labels should not be to long for a better readability (abbreviations like "Acc" for Accelaration are being used) 
- for this reason the labels also contains up and lower case (camel case)

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time_Acc-XYZ and time_Gyro-XYZ. These time domain) signals (prefix "time_" to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (**time_BodyAcc-XYZ** and **time_GravityAcc-XYZ**) using another low pass Butterworth filter with a corner frequency of 0.3 Hz: 

**time_BodyAcc-XYZ**
•	time_BodyAcc-mean()-X
•	time_BodyAcc-mean()-Y
•	time_BodyAcc-mean()-Z
•	time_BodyAcc-std()-X
•	time_BodyAcc-std()-Y
•	time_BodyAcc-std()-Z

**time_GravityAcc-XYZ**
•	time_GravityAcc-mean()-X
•	time_GravityAcc-mean()-Y
•	time_GravityAcc-mean()-Z
•	time_GravityAcc-std()-X
•	time_GravityAcc-std()-Y
•	time_GravityAcc-std()-Z


The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (**time_BodyAccJerk-XYZ**,  and
**time_BodyGyroJerk-XYZ**). 


**time_BodyAccJerk-XYZ**
•	time_BodyAccJerk-mean()-X
•	time_BodyAccJerk-mean()-Y
•	time_BodyAccJerk-mean()-Z
•	time_BodyAccJerk-std()-X
•	time_BodyAccJerk-std()-Y
•	time_BodyAccJerk-std()-Z

**time_BodyGyro-XYZ**
•	time_BodyGyro-mean()-X
•	time_BodyGyro-mean()-Y
•	time_BodyGyro-mean()-Z
•	time_BodyGyro-std()-X
•	time_BodyGyro-std()-Y
•	time_BodyGyro-std()-Z

**time_BodyGyroJerk-XYZ**
•	time_BodyGyroJerk-mean()-X
•	time_BodyGyroJerk-mean()-Y
•	time_BodyGyroJerk-mean()-Z
•	time_BodyGyroJerk-std()-X
•	time_BodyGyroJerk-std()-Y
•	time_BodyGyroJerk-std()-Z


The magnitude of these three-dimensional signals were calculated using the Euclidean norm (**time_BodyAccMag**, **time_GravityAccMag**, **time_BodyAccJerkMag**, **time_BodyGyroMag**, **time_BodyGyroJerkMag**):

**time_BodyAccMag**
•	time_BodyAccMag-mean()
•	time_BodyAccMag-std()

**time_GravityAccMag**
•	time_GravityAccMag-mean()
•	time_GravityAccMag-std()

**time_BodyAccJerkMag**
•	time_BodyAccJerkMag-mean()
•	time_BodyAccJerkMag-std()

**time_BodyGyroMag**
•	time_BodyGyroMag-mean()
•	time_BodyGyroMag-std()

**time_BodyGyroJerkMag**
•	time_BodyGyroJerkMag-mean()
•	time_BodyGyroJerkMag-std()


 The "freq_" to indicate frequency domain signals).
 A Fast Fourier Transform (FFT) was applied to some of these signals producing: 
 
**freq_BodyAcc-XYZ** - measurements on the mean and standard deviation for
•	freq_BodyAcc-mean()-X
•	freq_BodyAcc-mean()-Y
•	freq_BodyAcc-mean()-Z
•	freq_BodyAcc-std()-X
•	freq_BodyAcc-std()-Y
•	freq_BodyAcc-std()-Z
•	freq_BodyAcc-meanFreq()-X
•	freq_BodyAcc-meanFreq()-Y
•	freq_BodyAcc-meanFreq()-Z

**freq_BodyAccJerk-XYZ** - measurements on the mean and standard deviation for
•	freq_BodyAccJerk-mean()-X
•	freq_BodyAccJerk-mean()-Y
•	freq_BodyAccJerk-mean()-Z
•	freq_BodyAccJerk-std()-X
•	freq_BodyAccJerk-std()-Y
•	freq_BodyAccJerk-std()-Z
•	freq_BodyAccJerk-meanFreq()-X
•	freq_BodyAccJerk-meanFreq()-Y
•	freq_BodyAccJerk-meanFreq()-Z

**freq_BodyGyro-XYZ** - measurements on the mean and standard deviation for
•	freq_BodyGyro-mean()-X
•	freq_BodyGyro-mean()-Y
•	freq_BodyGyro-mean()-Z
•	freq_BodyGyro-std()-X
•	freq_BodyGyro-std()-Y
•	freq_BodyGyro-std()-Z
•	freq_BodyGyro-meanFreq()-X
•	freq_BodyGyro-meanFreq()-Y
•	freq_BodyGyro-meanFreq()-Z

**freq_BodyAccMag** - measurements on the mean and standard deviation for
•	freq_BodyAccMag-mean()
•	freq_BodyAccMag-std()
•	freq_BodyAccMag-meanFreq()

**freq_BodyAccJerkMag** - measurements on the mean and standard deviation for
•	freq_BodyAccJerkMag-mean()
•	freq_BodyAccJerkMag-std()
•	freq_BodyAccJerkMag-meanFreq()

**freq_BodyGyroMag** - measurements on the mean and standard deviation for
• freq_BodyGyroMag-mean()
•	freq_BodyGyroMag-std()
•	freq_BodyGyroMag-meanFreq()

**freq_BodyGyroJerkMag** - measurements on the mean and standard deviation for
•	freq_BodyGyroJerkMag-mean()
•	freq_BodyGyroJerkMag-std()
•	freq_BodyGyroJerkMag-meanFreq()
