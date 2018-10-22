#Read in the data files for training and test datasets
    bodyData_Train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
    activityData_Train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
    subjectData_Train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

    bodyData_Test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
    activityData_Test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
    subjectData_Test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)

#Merge training and test data set to form one dataset
    bodyData <- rbind(bodyData_Train,bodyData_Test)
    activityData <- rbind(activityData_Train, activityData_Test)
    subjectData <- rbind(subjectData_Train,subjectData_Test)

#Label activities and features
    activityLabel <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
    featureHeadings <- read.table("UCI HAR Dataset/features.txt", header = FALSE)

#Add appropriate headings for variables
    names(activityData) <- "activity"
    names(subjectData) <- "subject"
    names(bodyData) <- featureHeadings[,2]
    
#Merge to create main dataset
    mainDf <- cbind(activityData,subjectData,bodyData)
    
#Keep only mean and std columns
    selectedColumns <- grep("activity|subject|*mean()*|*std()*", colnames(mainDf))
    mainDfSubset <- mainDf[,selectedColumns]
    
#Rename variables
    names(mainDfSubset) <- gsub("^f","frequency", names(mainDfSubset))
    names(mainDfSubset) <- gsub("^t","time", names(mainDfSubset))
    names(mainDfSubset) <- gsub("Acc","Acceleration", names(mainDfSubset))
    names(mainDfSubset) <- gsub("Gyro","Gyroscope", names(mainDfSubset))
    names(mainDfSubset) <- gsub("BodyBody","Body", names(mainDfSubset))
    
#Factorize activity variable
    mainDfSubset[,1] <- factor(mainDfSubset[,1], levels = activityLabel[,1], labels = activityLabel[,2])
    
#Write data
    write.table(mainDfSubset, "tidy_data.txt", row.names = FALSE)

    





