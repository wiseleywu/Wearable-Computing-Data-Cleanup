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
1. Read 'x_train.txt' to a data frame called 'x_train', name the columns using featuresVector which contains all the variable names
2. Read 'x_test.txt' to a data frame called 'x_test', name the columns using featuresVector which contains all the variable names
3. Merge 'x_train' and 'x_test' data frame into a new one called 'x_merge' using rbind, this will keep the row in order
4. Create a list of number of columns to be kept within x_merge using two grep functions (combined with intersect): first one picks out variable names from featuresVector that contain either 'mean' or 'std', the second one filter out variable names from featuresVector that contain 'meanFreq' (using invert=TRUE to invert the result)
5. Subset 'x_merge' using the list of column number created from the step above

##Process Y-labeled Text Files
```
y_train<-read.table('./train/y_train.txt',col.names='Activity')
y_test<-read.table('./test/y_test.txt',col.names='Activity')
y_merge<-rbind(y_train,y_test)
for (n in seq(1,nrow(activity))) { #for n in 1-6
    y_merge$Activity=ifelse(y_merge$Activity==n, activity[n,2], y_merge$Activity) 
}
```
1. Read 'y_train.txt' to a data frame called 'y_train', name the columns 'Activity' (this is not the activity data frame)
2. Read 'y_test.txt' to a data frame called 'y_test', name the columns 'Activity' (this is not the activity data frame)
3. Merge 'y_train' and 'y_test' data frame into a new one called 'y_merge' using rbind, this will keep the row in order
4. The for loop repeats six times (n=1-6). Each loop performs an if/else clause, where if y_merge$Activity (the only column available with number 1 to 6) equals to n, it will replace the number with the activity corespond to the n (pull from Activity data frame, where first column is number and second column is the activity)

##Crete the Final Data Frame and Small Independent Data Set
```
x_merge<-cbind(subject_merge,y_merge,x_merge)
library(reshape2)
list3<-names(x_merge)[seq(3,ncol(x_merge))]
x_melt<-melt(x_merge, id.vars=c('SubjectNumber','Activity'),measure.vars=c(list3))
finalData<-dcast(x_melt, SubjectNumber + Activity~variable, mean)
write.table(finalData, file='TidyData.txt',row.names=FALSE)
```
1. Combine 'subject_merge', 'y_merge', 'x_merge' into one data frame using cbind, in the order listed. THis will be the final data frame
2. load library 'reshape2' for function 'melt' and 'dcast'
3. Create a list of measured variable names from the final data frame (excluding subject number and activity)
4. Convert the final data frame into a tall and skinny data set, where subject number and acitivty are the id variables, and the rest being the measure variables (as captured in list3)
5. Create the small independent data set by combining all data points sharing the same id variables into one data point by averaging all of them
6. Write the small independent data set into a text file called 'TidyData.txt', with row.names=FALSE
