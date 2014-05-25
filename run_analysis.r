## setwd("C:/LocalFiles/R_Working_Dir/GCDdata/DataFolder")

## Read column names of large dataset
features <- read.table("features.txt")

## search for which columns contain "mean" and "std" but not "Freq"
has.mean <- grepl("-mean", features[ ,2], ignore.case=TRUE)
has.std <- grepl("-std", features[ ,2], ignore.case=TRUE)
has.Freq <- grepl("Freq", features[ ,2], ignore.case=TRUE)

want.column <- ((has.mean | has.std) & !has.Freq)


## Read large dataset of measurements
x.train <- read.table("train/X_train.txt")
x.test <- read.table("test/X_test.txt")

## apply appropriate column names
colnames(x.train) <- features[ ,2]
colnames(x.test) <- features[ ,2]

## Read dataset with activity identifiers for each data point
y.train <- read.table("train/y_train.txt")
y.test <- read.table("test/y_test.txt")

## loop through activity identifier and replace with activity names
train.num <- nrow(y.train)
test.num <- nrow(y.test)
train.name <- vector(mode="character", length=train.num)
test.name <- vector(mode="character", length=test.num)

## Read reference list of activity names
activity.list <- read.table("activity_labels.txt")

for (i in 1:train.num) {
  i.name <- as.character(activity.list[y.train[i,1], 2])
  train.name[i] <- i.name
}

for (i in 1:test.num) {
  i.name <- as.character(activity.list[y.test[i,1], 2])
  test.name[i] <- i.name
}

train.name <- as.data.frame(train.name)
test.name <- as.data.frame(test.name)

## Apply column name to activity names
colnames(train.name) <- "activity"
colnames(test.name) <- "activity"

## Read data set containing participant number for each data point
subject.train <- read.table("train/subject_train.txt")
subject.test <- read.table("test/subject_test.txt")

## Apply column name to participant numbers
colnames(subject.train) <- "subject"
colnames(subject.test) <- "subject"

## Subset raw test data containing "mean" and "std" columns only
subset.train <- x.train[ ,want.column]
subset.test <- x.test[ ,want.column]

## combine raw data, participant number, and activity name
slim.train <- cbind(subset.train, subject.train, train.name)
slim.test <- cbind(subset.test, subject.test, test.name)

## return only the mean data for each activity performed by each participant
aggregated.train<-aggregate(.~subject+activity, data=slim.train, FUN=mean)
aggregated.test<-aggregate(.~subject+activity, data=slim.test, FUN=mean)

## combine train and test data into one dataframe
final.data <- rbind(aggregated.train, aggregated.test)

write.table(final.data, file="finalData.txt")
