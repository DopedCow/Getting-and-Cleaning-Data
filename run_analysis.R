# Getting & Cleaning Data
# Course Project

# Read data into data frames assuming data set is present in current folder!
# Read labels for activities
activity <- read.csv('UCI HAR Dataset/activity_labels.txt', sep='', header = FALSE)

# Read features and reduce data frame to hold only those concerned with mean and
# standard deviation while remembering to remove the 'meanFreq' cases. Use
# toupper() to make case insensitive. Finish off by making names more readable.
features <- read.csv('UCI HAR Dataset/features.txt', sep='', header = FALSE)
features_desired <- grep('.*-STD.*|.*-MEAN.*', toupper(features[,2]))
rmfreq <- grep('.*MEANFREQ.*', toupper(features[, 2]))
features_desired <- features_desired[!is.element(features_desired, rmfreq)]
features <- features[features_desired, ]
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'StDev', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

# Read training data into one data frame
train <- read.csv('UCI HAR Dataset/train/X_train.txt', sep='', header = FALSE)
train[,562] <- read.csv('UCI HAR Dataset/train/Y_train.txt', sep='',
                        header = FALSE)
train[,563] <- read.csv('UCI HAR Dataset/train/subject_train.txt', sep='',
                        header = FALSE)

# Read test data into one data frame
test <- read.csv('UCI HAR Dataset/test/X_test.txt', sep='', header=FALSE)
test[,562] <- read.csv('UCI HAR Dataset/test/Y_test.txt', sep='',
                       header = FALSE)
test[,563] <- read.csv('UCI HAR Dataset/test/subject_test.txt', sep='',
                       header = FALSE)

# Merge training and test set into one data set and provide better column names.
features_desired <- c(features_desired, 562, 563) # remember last two columns
complete <- rbind(train, test)
complete <- complete[ ,features_desired]
colnames(complete) <- c(features$V2, "Activity", "Subject")

# 5. Create tidy data set with average of each variable in each activity and subject
current = 1
for (label in activity$V2) {
    complete$Activity <- gsub(current, label, complete$Activity)
    current <- current + 1
}
complete$Activity <- as.factor(complete$Activity)
complete$Subject <- as.factor(complete$Subject)

clean <- aggregate(complete, by=list(Activity=complete$Activity,
                                     Subject=complete$Subject),
                   FUN=mean, na.rm = TRUE)
clean <- clean[ ,1:66] # loose the last two columns
write.table(clean, file = 'clean.txt', row.names = FALSE)