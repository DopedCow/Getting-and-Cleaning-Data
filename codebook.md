#Code Book
## Getting-and-Cleaning-Data
_Course Project_ for **Getting and Cleaning Data** course as part of **Data Science Specialization** on Coursera (from Johns Hopkins University).

A full description of the data set used is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Transformations
A data set containing all the features is created and filtered so it only contains labels related to mean and standard deviation. Labels related to mean frequency are also omitted.

All data sets related to training are joined into one. The same goes for all related to test. Subsequently the two are joined into one data set. The headings are replaced by the names from the features data set.

## Data Fields in clean.txt

* `Subject` - The ID of the test subject
* `Activity` - The type of activity performed when the corresponding measurements were taken
* `tBodyAccMeanX`
* `tBodyAccMeanY`
* `tBodyAccMeanZ`
* `tBodyAccStDevX`
* `tBodyAccStDevY`
* `tBodyAccStDevZ`
* `tGravityAccMeanX`
* `tGravityAccMeanY`
* `tGravityAccMeanZ`
* `tGravityAccStDevX`
* `tGravityAccStDevY`
* `tGravityAccStDevZ`
* `tBodyAccJerkMeanX`
* `tBodyAccJerkMeanY`
* `tBodyAccJerkMeanZ`
* `tBodyAccJerkStDevX`
* `tBodyAccJerkStDevY`
* `tBodyAccJerkStDevZ`
* `tBodyGyroMeanX`
* `tBodyGyroMeanY`
* `tBodyGyroMeanZ`
* `tBodyGyroStDevX`
* `tBodyGyroStDevY`
* `tBodyGyroStDevZ`
* `tBodyGyroJerkMeanX`
* `tBodyGyroJerkMeanY`
* `tBodyGyroJerkMeanZ`
* `tBodyGyroJerkStDevX`
* `tBodyGyroJerkStDevY`
* `tBodyGyroJerkStDevZ`
* `tBodyAccMagMean`
* `tBodyAccMagStDev`
* `tGravityAccMagMean`
* `tGravityAccMagStDev`
* `tBodyAccJerkMagMean`
* `tBodyAccJerkMagStDev`
* `tBodyGyroMagMean`
* `tBodyGyroMagStDev`
* `tBodyGyroJerkMagMean`
* `tBodyGyroJerkMagStDev`
* `fBodyAccMeanX`
* `fBodyAccMeanY`
* `fBodyAccMeanZ`
* `fBodyAccStDevX`
* `fBodyAccStDevY`
* `fBodyAccStDevZ`
* `fBodyAccJerkMeanX`
* `fBodyAccJerkMeanY`
* `fBodyAccJerkMeanZ`
* `fBodyAccJerkStDevX`
* `fBodyAccJerkStDevY`
* `fBodyAccJerkStDevZ`
* `fBodyGyroMeanX`
* `fBodyGyroMeanY`
* `fBodyGyroMeanZ`
* `fBodyGyroStDevX`
* `fBodyGyroStDevY`
* `fBodyGyroStDevZ`
* `fBodyAccMagMean`
* `fBodyAccMagStDev`
* `fBodyBodyAccJerkMagMean`
* `fBodyBodyAccJerkMagStDev`
* `fBodyBodyGyroMagMean`
* `fBodyBodyGyroMagStDev`
* `fBodyBodyGyroJerkMagMean`
* `fBodyBodyGyroJerkMagStDev`

**Activity Labels**
* 1: `WALKING`
* 2: `WALKING_UPSTAIRS`
* 3: `WALKING_DOWNSTAIRS`
* 4: `SITTING`
* 5: `STANDING`
* 6: `LAYING`