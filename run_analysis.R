# Read in measurement features file.
features<-read.table("UCI HAR Dataset/features.txt", header=FALSE)

#########################
# Read multiple training 
#########################
xTrain<-read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)
yTrain<-read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)
subTrain<-read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)

# Subject ids
colnames(subTrain)<-c("subjectId")

# Activity labels
colnames(yTrain)<-c("Activity")
# Replace numerical activity labels with descriptive names from activity_labels.txt
yTrain$Activity<-as.character(yTrain$Activity)
yTrain$Activity<-gsub("1", "WALKING", yTrain$Activity)
yTrain$Activity<-gsub("2", "WALKINGUPSTAIRS", yTrain$Activity)
yTrain$Activity<-gsub("3", "WALKINGDOWNSTAIRS", yTrain$Activity)
yTrain$Activity<-gsub("4", "SITTING", yTrain$Activity)
yTrain$Activity<-gsub("5", "STANDING", yTrain$Activity)
yTrain$Activity<-gsub("6", "LAYING", yTrain$Activity)

# Set column names to the feature names from features.txt
colnames(xTrain)<-features[,2]
# Select columns corresponding to either the mean or standard deviation of measurements.
xTrain2<-xTrain[,c(grep("mean", colnames(xTrain)), grep("std", colnames(xTrain)))]
# Generate descriptive variable names
cnames<-names(xTrain2)
# Remove "-, (, )" characters
cnames<-gsub("[-\\(\\)]", "", cnames)
# Replace "mean" with "Mean"
cnames<-gsub("mean", "Mean", cnames)
# Replace "std" with "Std" 
cnames<-gsub("std", "Std", cnames)
# Fix Body duplicatation in some names
cnames<-gsub("BodyBody", "Body", cnames)
# Expand several abbreviations to meaningful words in variable names
cnames<-gsub("^t", "time", cnames)
cnames<-gsub("^f", "freq", cnames)
cnames<-gsub("Acc", "Accelerometer", cnames)
cnames<-gsub("Gyro", "Gyroscope", cnames)
cnames<-gsub("Mag", "Magnitude", cnames)
cnames<-gsub("X$", "Xaxis", cnames)
cnames<-gsub("Y$", "Yaxis", cnames)
cnames<-gsub("Z$", "Zaxis", cnames)
names(xTrain2)<-cnames

# Combine training data
trainData<-cbind(subTrain, yTrain, xTrain2)

##########################
# Read multiple test data
##########################
xTest<-read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE)
yTest<-read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE)
subTest<-read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)

# Subject ids
colnames(subTest)<-c("subjectId")

# Activity labels
colnames(yTest)<-c("Activity")
# Replace numerical activity labels with descriptive names from activity_labels.txt
yTest$Activity<-as.character(yTest$Activity)
yTest$Activity<-gsub("1", "WALKING", yTest$Activity)
yTest$Activity<-gsub("2", "WALKINGUPSTAIRS", yTest$Activity)
yTest$Activity<-gsub("3", "WALKINGDOWNSTAIRS", yTest$Activity)
yTest$Activity<-gsub("4", "SITTING", yTest$Activity)
yTest$Activity<-gsub("5", "STANDING", yTest$Activity)
yTest$Activity<-gsub("6", "LAYING", yTest$Activity)

# Set column names to the feature names from features.txt
colnames(xTest)<-features[,2]
# Select columns corresponding to either the mean or standard deviation of measurements. 
# It was deliberately chosen to take those columns that contained "mean" and "std", however
# "mean()" and "std()" could have been chosen and would have yielded different amounts of 
# columns.
xTest2<-xTest[,c(grep("mean", colnames(xTest)), grep("std", colnames(xTest)))]
# Generate descriptive variable names
cnames<-names(xTest2)
# Remove "-, (, )" characters
cnames<-gsub("[-\\(\\)]", "", cnames)
# Replace "mean" with "Mean"
cnames<-gsub("mean", "Mean", cnames)
# Replace "std" with "Std" 
cnames<-gsub("std", "Std", cnames)
# Fix Body duplicatation in some names
cnames<-gsub("BodyBody", "Body", cnames)
# Expand several abbreviations to meaningful words in variable names
cnames<-gsub("^t", "time", cnames)
cnames<-gsub("^f", "freq", cnames)
cnames<-gsub("Acc", "Accelerometer", cnames)
cnames<-gsub("Gyro", "Gyroscope", cnames)
cnames<-gsub("Mag", "Magnitude", cnames)
cnames<-gsub("X$", "Xaxis", cnames)
cnames<-gsub("Y$", "Yaxis", cnames)
cnames<-gsub("Z$", "Zaxis", cnames)
names(xTest2)<-cnames

# Combine testing data
testData<-cbind(subTest, yTest, xTest2)


#####################################
# Combine testing and training data
#####################################
tidyData1<-rbind(trainData, testData)


##########
# Step 4:
##########
# Generate second tidy data set taking the mean measurements for each subjectid and activity

library(dplyr)
# Group by subjectid and activity
id_act<-group_by(tidyData1, subjectId, Activity)
# Take the mean of the subject and activity groups
tidyData2<-summarise_each(id_act, funs(mean))
# Append "_Mean" to column names
cnames<-names(tidyData2)
names(tidyData2)<-c(cnames[1:2], paste(cnames[3:81], "Mean", sep="_"))
