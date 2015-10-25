# Getting-and-Cleaning-Data
_Course Project_ for **Getting and Cleaning Data** course as part of **Data Science Specialization** on Coursera (from Johns Hopkins University).

A full description of the data set used is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

This readme describes how the run_analysis.R file works.

- The script assumes that the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip has been placed in the same directory.
- Point R Studio to use the directory with run_analysis as working directory
- Run the script by sourcing run_analysis.R in RStudio.
- The script will read the relevant data files and merge them while filtering information not related to men or standard deviation out (see comments in script for further details).
- The script will generate a long format file called 'clean.txt'.
- Use the 'codebook.md' file for information on the variables in 'clean.txt'.
