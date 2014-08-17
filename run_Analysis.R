run_Analysis <- function() {
        
        #for detailed comments please refer to the readme.md
        
        
        #STEP 1
        
        #Column Names
        row <- read.table("features.txt") 
        row <- as.vector(row[,2])
        
        #Test Data
        xtest <- read.table("X_test.txt")
        colnames(xtest) <- (row)
        ytest <- read.table("y_test.txt")          
        colnames (ytest) <- ("Activities")
        subjecttest <- read.table("subject_test.txt")         
        colnames (subjecttest) <- ("Subject")
        test <- cbind(subjecttest, ytest)
        test <- cbind(test, xtest)
        
        #Train Data
        xtrain <- read.table("X_train.txt")   
        colnames(xtrain) <- (row)
        ytrain <- read.table("y_train.txt")
        colnames (ytrain) <- ("Activities")
        subjecttrain <- read.table("subject_train.txt")
        colnames (subjecttrain) <- ("Subject")
        train <- cbind(subjecttrain, ytrain)
        train <- cbind(train, xtrain)
        
        #Complete Data
        data <- rbind(train,test)
        
        
        #STEP 2
        
        #Identify Columns
        selection <- grep("std|mean", names(data))
        
        #Subset Data
        data <- data[,c(1, 2, selection)]
        
        
        #STEP 3
        
        #Column Names
        activities <- read.table("activity_labels.txt")
        
        #Merge 
        data <- merge(activities, data, by.x="V1", by.y="Activities", all=TRUE)
        
        #CleanUp
        data <- data[,-1]
        names(data) <- sub("V2","Activities", names(data),)
        
        
        #STEP 4
        
        names(data) <- gsub("BodyBody","Body",(names(data)))
        names(data) <- gsub("^t","time_",(names(data)))
        names(data) <- gsub("^f","freq_",(names(data)))
        
        
        #STEP 5
        
        # Reshape 
        data_melt <- melt(data,id=c("Activities","Subject"), measure=c(names(data[,-(1:2)])))
        data_final <- dcast(data_melt, Activities + Subject ~ variable, mean)
        
        #Output
        write.table(data_final, file="data_final.txt", row.name=FALSE)
        
}