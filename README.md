getdata-CourseProject - Explanation R script runAnalysis.R
=====================

# Precondition
All files have to be in same folder - your 'working directory'.
Since the names of the files are unique, that won't cause a problem. 

## File List
- R script: 'run_Analysis.R' 
- List of all features: 'features.txt'
- List of all activities with class labels: 'activity_labels.txt'
- Subjects test set: 'subject_test.txt'
- Test set: 'X_test.txt'
- Test labels 'y_test.txt'
- Subjects train set: 'subject_train.txt'
- Training set: 'X_train.txt'
- Training labels: 'y_train.txt'

# STEP 1

##Task: Merge the training and the test sets to create one data set.

###Column Names
- read the features.txt as  vector

###Test Data
- read the test set
- add the column names from features.txt
- read the test labels
- add column name "Activities"
- read the subjects test set
- add column name "Subject"
- combine the three files in tow steps 

###Train Data
- read the train set
- add the column names from features.txt
- read the train labels
- add column name "Activities"
- read the subjects train set
- add column name "Subject"
- combine the three files in tow steps via 'cbind()'

### Complete Data
- combine test and train data via 'rbind()' to one data set

# STEP 2

##Task: Extract only the measurements on the mean and standard deviation for each measurement. 

###Identify Columns
- create a vector with column numbers for all measurements with "mean" oder "std" in the variable name
- 79 results: 33x "std" and 46x "mean"

###Subset Data
- extract the  measurements
- including the columns "Subject" and "Activities"

# STEP 3
## Task: Use descriptive activity names to name the activities in the data set.

###Column Names
- read the activity list including class labels

###Merge
- merge the activity list with the data set
- with the order (first activity list, then data set) and the argument 'all=TRUE' every appearance of the corresponding number is considered

###CleanUp
- delete the column with the activity numbers
- replace the column name "V2" with the more descriptive "Activities" 

# STEP 4

##Task: Appropriately label the data set with descriptive variable names. 
- general structure of the variables: DESCRIPTION- STD or MEAN - AXIS
- the labels should not be to long for a better readability (abbreviations like "Acc" for Accelaration are being used) 
- for this reason the labels also contains up and lower case (camel case)
- see CODEBOOK.md for detailed informationen about the variable and their names

### Adjustments to the variable names
- "BodyBody" to "Body"
- "tBody" to "time_Body"
- "fBody" to "freq_Body"

# STEP 5

##Task: Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

###Reshape
- reshape the data set with 'melt()' produces a tall, skinny dataset
- produce the final dataset with the mean values via 'dcast()'

###Output
- the final data **"data_final.txt"** set has for every 30 subject each with 6 activities a row (180 rows) a mean value for each mean and std variable
- ordered by "Activities" then by "Subject" 
- the data set is space delimited, can be read with 'read.table'


###Tidy Dataset
1. Each variable forms a column
2. Each observation forms a row
3. Data is be saved in one file per table
4. A row at the top of the file with variable names is included.
5. Variable names are human readable.