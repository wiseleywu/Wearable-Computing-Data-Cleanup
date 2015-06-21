# Wearable-Computing-Data-Cleanup
This document explains steps performed within the R script to transform 'Human Activity Recognition Using Smartphones Dataset' raw data into a tidy data set. This file assumes you have placed the R script within the directory 'UCI HAR Dataset' extracted from the zip file obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Read Helper Text File
```
features<-read.table('features.txt')
featuresVector<-gsub("\\()",'',features$V2)
activity<-read.table('activity_labels.txt',colClasses=c('numeric','character'))
subject_train<-read.table('./train/subject_train.txt',col.names='SubjectNumber')
subject_test<-read.table('./test/subject_test.txt',col.names='SubjectNumber')
subject_merge<-rbind(subject_train,subject_test)
```
1. Read 'features.txt' to a data frame called 'features'
2. Create a new vector called featuresVector from the second column of 'features' data frame, using gsub to remove parenthesis from the feature names since they will not be properly displayed properly as a column names later on
3. Read 'activity_labels.txt' to a data frame called 'activity', specifying first column as numeric vector and second column as character vector. This will ease renaming activities within the actual data set in the future
4. Read 'subject_train.txt' to a data frame called 'subject_train', specifying the column name as 'SubjectNumber'
5. Read 'subject_test.txt' to a data frame called 'subject_test', specifying the column name as 'SubjectNumber'
6. Merge 'subject_train' and 'subject_test' data frame into a new one called 'subject_merge' using rbind, this will keep the row in order

##Process X-labeled Text Files
```
x_train<-read.table('./train/x_train.txt',col.names=featuresVector)
x_test<-read.table('./test/x_test.txt',col.names=featuresVector)
x_merge<-rbind(x_train,x_test)
list<-intersect(grep("mean|std",featuresVector,value=FALSE),grep("meanFreq",featuresVector,value=FALSE,invert=TRUE))
x_merge<-x_merge[,c(list)]
```
