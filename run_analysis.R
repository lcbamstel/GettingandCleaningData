library(dplyr)
library(stringr)
library(readr)

# Download zip archive containing data if required. Unzip the package and remove
# the .zip file after unzip.

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!(dir.exists(file.path("UCI HAR Dataset")))){
        download.file(url, destfile = "project.zip")
        unzip(zipfile = "project.zip")
        file.remove("project.zip")}
        

# Read the required files into dataframes
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Combine training and test data
xTotal <- rbind(xTrain,xTest)
# Clean up
rm(xTrain,xTest)

# Assign variable names to dataset
names(xTotal) <- features[,2]

# Select the variable names if they contain std() or mean()
# then subset the dataset to extract only these columns from xTotal

meanStdFeatures <- grep("[s][t][d][(][)]|[m][e][a][n][(][)]", features[,2])
xTotal <- xTotal[,meanStdFeatures]
# Clean up
rm(features,meanStdFeatures)


# Combine activity data (y)
activityData <- rbind(yTrain,yTest)
# Add descriptive activity names
activityData <- activityData %>% mutate(activity = activity[V1,2])
# Add to dataset
xTotal <- cbind(activity = activityData[,2],xTotal)
# Clean up
rm(activityData,activity,yTrain,yTest)

# Combine subject data and add descriptive column name
subjectData <- rbind(subjectTrain,subjectTest)

# Add to dataset
xTotal <- cbind(subject = subjectData[,1],xTotal)
# Clean up
rm(subjectData,subjectTest,subjectTrain)

# As per Instructions:
# From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.
analysed_data <- xTotal %>% group_by(subject,activity) %>% summarise_all(mean)

# Clean up
rm(xTotal)

# Write table to .txt file
write.table(analysed_data, "analysed_data.txt", col.names = TRUE, fileEncoding = "UTF-8")

# Clean up
rm(analysed_data)


