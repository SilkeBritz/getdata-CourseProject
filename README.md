getdata-CourseProject
=====================

 R script for Course Project "Getting and Cleaning Data"



Headers

# H1
## H2
### H3
#### H4
##### H5
###### H6


Emphasis

Emphasis, aka italics, with *asterisks* or _underscores_.

Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two tildes. ~~Scratch this.~~


1. First ordered list item
2. Another item
⋅⋅* Unordered sub-list. 
1. Actual numbers don't matter, just that it's a number
⋅⋅1. Ordered sub-list
4. And another item.
 
Inline `code` has `back-ticks around` it.






Tidy Dataset

data set as a txt file created with write.table() using row.name=FALSE
explaining how to read it into R (for instance using read.table)
set the option of not writing the line numbers as that can look a bit ugly when reading it back in
1. Each variable forms a column
2. Each observation forms a row
3. Each table/file stores data about one kind of observation (e.g. people/hospitals).

one table for each "kind" of variable
If you have multiple tables, they should include a column in the table that allows them to be linked

- Include a row at the top of each file with variable names.
- Make variable names human readable AgeAtDiagnosis instead of AgeDx
- In general data should be saved in one file per table.



given the variables descriptive names, explain why the names are descriptive
document the starting expectations of the script


1. Merges the training and the test sets to create one data set.
alle Dateien in einem Ordner (Working Directory)
Dateinamen sind individuell, kein Probleme
Einlesen TXT-dateien 
	read.table is easiest as everything is separated by spaces
combine Train  (activity, data, subject)
combine Test (activity, data, subject)
	cbind()
combine Train + Test
	rbind()
Spaltenüberschriften „Features“
	Umwandeln in Zeile
	rbind
(=> eine Tabelle)

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
alle die mean oder std im Variablen-Namen haben
Suche nach std (33x) ODER mean (46x)
Vektor mit den entsprechenden Spaltennummern 
Subsetting Tabelle entsprechend dem Vektor  PLUS Subject und Activity

3. Uses descriptive activity names to name the activities in the data set
merge mit Activity.txt
Cleanup: Spalte mit Activitiy Zahlen löschen
Spaltenüberschrift anpassen

4. Appropriately labels the data set with descriptive variable names. 
BodyBody zu Body
t (wenn Body folgt) zu Beginn in „time“ (Time)
f (wenn Body folgt) zu Beginn in „freq“ (Frequency)

Aufbau der Variablen: NAME-STDoderMEAN-ACHSE (XYZ) (if appropriate)
nicht zu lang, abbrevations like „Acc“ for Acceleration
Erklärung der Abkürzung im Codebook 

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Reshape with „melt()“ for tall, skinny dataset
final data 
Tabelle mit 30 Subjects mit je 6 Aktivitäten = 180 Zeilen
sortiert nach Activities für jedes Subject mean-Value aller Mean- und Std-Values

tidy data set from step #5, that needs to be attached, is space delimited
