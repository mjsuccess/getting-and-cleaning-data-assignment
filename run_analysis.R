##Getting and Cleaning Data - Week 4 Assignment
##Author: Jason Miller
##Date created: 13 Feb 2016

# Clean up my workspace
rm(list=ls())

#set directory to where my data is
# - NB: USERS MUST SET DIRECTORY REFERENCE TO APPROPRIATE LOCATION ON THEIR SYSTEM - 
setwd("C:/Users/J Miller/Desktop/Data Science Course/Getting and cleaning data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

#read in all data and information
testlabels <- read.table("./test/y_test.txt", col.names="label")
testsubjects <- read.table("./test/subject_test.txt", col.names="subject")
testdata <- read.table("./test/X_test.txt")
trainlabels <- read.table("./train/y_train.txt", col.names="label")
trainsubjects <- read.table("./train/subject_train.txt", col.names="subject")
traindata <- read.table("./train/X_train.txt")

features <- read.table("features.txt")
activityType = read.table("activity_labels.txt")
subjectTrain = read.table("./train/subject_train.txt")

#put labels on data sets
colnames(testdata) <- features[,2]
colnames(traindata) <- features[,2]

#combine data files
temp1 = cbind(testsubjects, testlabels, testdata)
temp2 = cbind(trainsubjects, trainlabels, traindata)
alldata = rbind(temp1,temp2)
rm(temp1,temp2); #remove temp data files

featuresmeanstd <- features[grep("mean\\(\\)|std\\(\\)", features[,2]), ]
datameanstd = alldata[,c(1,2,featuresmeanstd[,1]+2)]
datameanstd$label <- activityType[datameanstd$label, 2]

colNames = colnames(datameanstd)
colNames = tolower(gsub("[^[:alpha:]]", "", colNames))
colNames = gsub("^t","time",colNames)
colNames = gsub("^f","freq",colNames)
colNames = gsub("mag","magnitude",colNames)
colNames = gsub("mag","magnitude",colNames)
colnames(datameanstd) = colNames

tidydata <- aggregate(datameanstd[,3:ncol(datameanstd)],by=list(subject = datameanstd$subject, 
                        label = datameanstd$label), FUN = mean)

write.table(tidydata,"tidyData.txt",sep="\t")
