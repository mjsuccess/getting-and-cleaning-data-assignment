# getting-and-cleaning-data-assignment
### Week 4 Assignment, Getting and Cleaning Data course

## Overview
The goal of this project is to prepare tidy data that can be used for later analysis. It demonstrates a process of reading data, simple manipulation and cleaning. The data used is data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

While the data is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Files in this project
*README.md - A description of the project
*Codebook.md - A file describing variables, the data and transformations
*run_analysis.R - An R script that reads, modifies, cleans and finally outputs a clean file

## Process of Cleaning
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement.
*Uses descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive variable names.
*From the data set in the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Note
This code reads data from a local file which is referenced in line 10 of run_analysis.R and which must be amended to reference the location of your date before use.
