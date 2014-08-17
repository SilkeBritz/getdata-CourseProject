CODEBOOK
========


Was code book submitted to GitHub that modifies and updates the
codebooks available to you with the data to indicate all the variables
and summaries you calculated, along with units, and any other relevant
information? the codebook should be a good description of the data in
your tidy data set,

 Due to the length of the variable names I
have used camel case to make them more readable basic format of that
book is  •	variable name •	variable field width •	variable
definition •	range of values

the codebook accurately describes the contents of the file Data
Description, Summary Choices, and Study Design (?, copy/paste)

Aufbau der Variablen: NAME-STDoderMEAN-ACHSE (XYZ) (if appropriate)
nicht zu lang, abbrevations like „Acc“ for Acceleration Erklärung der
Abkürzung im Codebook



Feature Selection =================

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals time_Acc-XYZ and time_Gyro-XYZ. These time domain)
signals (prefix "time_" to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (time_BodyAcc-XYZ and time_GravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (time_BodyAccJerk-XYZ and
time_BodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (time_BodyAccMag,
time_GravityAccMag, time_BodyAccJerkMag, time_BodyGyroMag, time_BodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing freq_BodyAcc-XYZ, freq_BodyAccJerk-XYZ, freq_BodyGyro-XYZ,
freq_BodyAccJerkMag, freq_BodyGyroMag, freq_BodyGyroJerkMag. (Note the "freq_" to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z
directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ
tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag
tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ
fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean 
value std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window
sample. These are used on the angle() variable:

gravityMean 
time_ BodyAccMean tBodyAccJerkMean tBodyGyroMean
tBodyGyroJerkMean



###List of ID variables 
**Activities:**
- LAYING
- SITTING
- STANDING
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS

**Subject**
- 30 subjects, 1 to 30


###List of measure variables 
time_BodyAcc-mean()-X 
time_BodyAcc-mean()-Y
time_BodyAcc-mean()-Z 

time_BodyAcc-std()-X 
time_BodyAcc-std()-Y
time_BodyAcc-std()-Z 

time_GravityAcc-mean()-X 
time_GravityAcc-mean()-Y
time_GravityAcc-mean()-Z 

time_GravityAcc-std()-X 
time_GravityAcc-std()-Y
time_GravityAcc-std()-Z 

time_BodyAccJerk-mean()-X
time_BodyAccJerk-mean()-Y 
time_BodyAccJerk-mean()-Z

time_BodyAccJerk-std()-X 
time_BodyAccJerk-std()-Y
time_BodyAccJerk-std()-Z 

time_BodyGyro-mean()-X 
time_BodyGyro-mean()-Y
time_BodyGyro-mean()-Z 

time_BodyGyro-std()-X 
time_BodyGyro-std()-Y
time_BodyGyro-std()-Z 

time_BodyGyroJerk-mean()-X
time_BodyGyroJerk-mean()-Y 
time_BodyGyroJerk-mean()-Z

time_BodyGyroJerk-std()-X 
time_BodyGyroJerk-std()-Y
time_BodyGyroJerk-std()-Z 

time_BodyAccMag-mean() 

time_BodyAccMag-std()

time_GravityAccMag-mean() 

time_GravityAccMag-std()

time_BodyAccJerkMag-mean() 

time_BodyAccJerkMag-std()

time_BodyGyroMag-mean() 

time_BodyGyroMag-std()

time_BodyGyroJerkMag-mean() 

time_BodyGyroJerkMag-std()

freq_BodyAcc-mean()-X f
freq_BodyAcc-mean()-Y 
freq_BodyAcc-mean()-Z

freq_BodyAcc-std()-X 
freq_BodyAcc-std()-Y 
freq_BodyAcc-std()-Z

freq_BodyAcc-meanFreq()-X 
freq_BodyAcc-meanFreq()-Y
freq_BodyAcc-meanFreq()-Z 

freq_BodyAccJerk-mean()-X





Headers

# H1
## H2
### H3
#### H4
##### H5
###### H6
###### 
###### 
Emphasis

Emphasis, aka italics, with *asterisks* or _underscores_.

Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two tildes. ~~Scratch this.~~


1. First ordered list item 2. Another item ⋅⋅* Unordered sub-list. 1.
Actual numbers don't matter, just that it's a number ⋅⋅1. Ordered
sub-list 4. And another item.

Inline `code` has `back-ticks around` it.
