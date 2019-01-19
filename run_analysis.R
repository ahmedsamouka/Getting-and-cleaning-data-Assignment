## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.





## Reading trainings tables:
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Reading testing tables:
> x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
> y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
> subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Reading feature vector:
> features <- read.table('./UCI HAR Dataset/features.txt')
## Reading activity labels:
> activityLabels = read.table('./UCI HAR Dataset/activity_labels.txt')

## Assigning column names:
> colnames(x_train) <- features[,2] 
> colnames(y_train) <-"activityId"
> colnames(subject_train) <- "subjectId"
> colnames(x_test) <- features[,2] 
> colnames(y_test) <- "activityId" 
> colnames(subject_test) <- "subjectId"
> colnames(activityLabels) <- c('activityId','activityType')

## Merging all data in one set:
> trainmr <- cbind(y_train, subject_train, x_train)
> testmr <- cbind(y_test, subject_test, x_test)
> testntrain <- rbind(mrg_train, mrg_test)
> testntrain <- rbind(trainmr, testmr)

## Extracting only the measurements on the mean and standard deviation for each measurement:
## Reading column names
> colNames <- colnames(testntrain)

## Create vector for defining ID, mean and standard deviation:
> meannstd <- (grepl("activityId" , colNames) | grepl("subjectId" , colNames) | grepl("mean.." , colNames) | grepl("std.." , colNames)  )

##  Making nessesary subset from testntrain:
> setmeannstd <- testntrain[ , meannstd == TRUE]

## Using descriptive activity names to name the activities in the data set
> setactivitynames <- merge(setmeannstd, activityLabels,by='activityId',all.x=TRUE)

## Creating a second, independent tidy data set with the average of each variable for each activity and each subject:
> tidydata <- aggregate(. ~subjectId + activityId, setactivitynames, mean)
> tidydata <- tidydata[order(tidydata$subjectId, tidydata$activityId),]

## Writing second tidy data set in txt file
> write.table(tidydata, "tidydata.txt", row.name=FALSE)