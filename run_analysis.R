# read helper txt file
features<-read.table('features.txt') #read features.txt as a data frame
featuresVector<-gsub("\\()",'',features$V2) #save the features list as a vector
activity<-read.table('activity_labels.txt',colClasses=c('numeric','character')) #read activity_labels and specify [,2] as character instead of factor
subject_train<-read.table('./train/subject_train.txt',col.names='SubjectNumber') #read subject_train into a data frame
subject_test<-read.table('./test/subject_test.txt',col.names='SubjectNumber') #read subject_train into a data frame
subject_merge<-rbind(subject_train,subject_test) #merge subject_train and subject_test

# read x labeled txt files, label, and merge
x_train<-read.table('./train/x_train.txt',col.names=featuresVector) #read x_train and name the column using featuresVector
x_test<-read.table('./test/x_test.txt',col.names=featuresVector) #read x_test and name the column using featuresVector
x_merge<-rbind(x_train,x_test) #merge x_train and x_test
list<-grep('(mean|std)',featuresVector,value=FALSE) #create a column number list where the data are mean/std
x_merge<-x_merge[,c(list)] #apply the filter list above to subset x_train with only mean/std data

# read y labeled txt files, label, and merge
y_train<-read.table('./train/y_train.txt',col.names='Activity')#read y_train and name the column 'Activity'
y_test<-read.table('./test/y_test.txt',col.names='Activity')#read y_train and name the column 'Activity'
y_merge<-rbind(y_train,y_test) #merge y_train and y_test
for (n in seq(1,nrow(activity))) { #for n in 1-6
    y_merge$Activity=ifelse(y_merge$Activity==n, activity[n,2], y_merge$Activity) #rename 1-6 to their respective activities
}

# create the final data frame
x_merge<-cbind(subject_merge,y_merge,x_merge) #merge three data frames together

# creating small independent data set
library(reshape2)
list3<-names(x_merge)[c(seq(3,81))] #need to recreate column names list since R is shortening them
x_melt<-melt(x_merge, id.vars=c('SubjectNumber','Activity'),measure.vars=c(list3)) #make the dF tall and skinny, values variables are defined in list3
finalData<-dcast(x_melt, SubjectNumber + Activity~variable, mean) #averaging all data points by subject number and activity
write.table(finalData, file='Tidy Data.txt') #export the tidy data set into a txt file and place it at the same directory