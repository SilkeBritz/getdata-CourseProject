getdata-CourseProject
=====================

 R script for Course Project "Getting and Cleaning Data"
 
 

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
