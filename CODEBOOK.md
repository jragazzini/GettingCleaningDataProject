This codebook describes the data found in the file 
"finalData.txt" stored in this repo.  The data was 
created in R Studio using raw data files from
http://archive.ics.uci.edu/ml/datasets/Human
+Activity+Recognition+Using+Smartphones

The values shown in this dataset represent the average
of the measured raw data for each participant in the study
for each of the assigned activities.

A list of the contained parameters is shown below.  A discription
is included for the new parameters added to the data set which
were not present in the original data set as delivered from the 
source cited above.

"1" "subject" - integer from 1 to 30 describing which participant
these values describe.  Data is structured to include the "training"
participants first (participants # 1, 3, 5, 6, 7, 8, 11, 14, 15, 16,
17, 19, 21, 22, 23, 25, 26, 27, 28, 29, 30)  followed by the "test"
participants second (participants # 2, 4, 9, 10, 12, 13, 18, 20, 24).

"2" "activity" - character data from factor levels of laying, sitting,
standing, walking, walking_downstairs, walking_upstairs.  These 
values are converted from the 1-6 data included in the original 
dataset.  

"3" "tBodyAcc-mean()-X" - The measurements listed below reflect a 
summarization of a subset of the original raw dataset.  The column 
names reproduced in this dataset include only the column names 
describing the mean and standard deviation measuremnts.  The values 
for each parameter represent the mean of all of the collected data 
for a given participant performing a given activity.

"4" "tBodyAcc-mean()-Y"
"5" "tBodyAcc-mean()-Z"
"6" "tBodyAcc-std()-X"
"7" "tBodyAcc-std()-Y"
"8" "tBodyAcc-std()-Z"
"9" "tGravityAcc-mean()-X"
"10" "tGravityAcc-mean()-Y"
"11" "tGravityAcc-mean()-Z"
"12" "tGravityAcc-std()-X"
"13" "tGravityAcc-std()-Y"
"14" "tGravityAcc-std()-Z"
"15" "tBodyAccJerk-mean()-X"
"16" "tBodyAccJerk-mean()-Y"
"17" "tBodyAccJerk-mean()-Z"
"18" "tBodyAccJerk-std()-X"
"19" "tBodyAccJerk-std()-Y"
"20" "tBodyAccJerk-std()-Z"
"21" "tBodyGyro-mean()-X"
"22" "tBodyGyro-mean()-Y"
"23" "tBodyGyro-mean()-Z"
"24" "tBodyGyro-std()-X"
"25" "tBodyGyro-std()-Y"
"26" "tBodyGyro-std()-Z"
"27" "tBodyGyroJerk-mean()-X"
"28" "tBodyGyroJerk-mean()-Y"
"29" "tBodyGyroJerk-mean()-Z"
"30" "tBodyGyroJerk-std()-X"
"31" "tBodyGyroJerk-std()-Y"
"32" "tBodyGyroJerk-std()-Z"
"33" "tBodyAccMag-mean()"
"34" "tBodyAccMag-std()"
"35" "tGravityAccMag-mean()"
"36" "tGravityAccMag-std()"
"37" "tBodyAccJerkMag-mean()"
"38" "tBodyAccJerkMag-std()"
"39" "tBodyGyroMag-mean()"
"40" "tBodyGyroMag-std()"
"41" "tBodyGyroJerkMag-mean()"
"42" "tBodyGyroJerkMag-std()"
"43" "fBodyAcc-mean()-X"
"44" "fBodyAcc-mean()-Y"
"45" "fBodyAcc-mean()-Z"
"46" "fBodyAcc-std()-X"
"47" "fBodyAcc-std()-Y"
"48" "fBodyAcc-std()-Z"
"49" "fBodyAccJerk-mean()-X"
"50" "fBodyAccJerk-mean()-Y"
"51" "fBodyAccJerk-mean()-Z"
"52" "fBodyAccJerk-std()-X"
"53" "fBodyAccJerk-std()-Y"
"54" "fBodyAccJerk-std()-Z"
"55" "fBodyGyro-mean()-X"
"56" "fBodyGyro-mean()-Y"
"57" "fBodyGyro-mean()-Z"
"58" "fBodyGyro-std()-X"
"59" "fBodyGyro-std()-Y"
"60" "fBodyGyro-std()-Z"
"61" "fBodyAccMag-mean()"
"62" "fBodyAccMag-std()"
"63" "fBodyBodyAccJerkMag-mean()"
"64" "fBodyBodyAccJerkMag-std()"
"65" "fBodyBodyGyroMag-mean()"
"66" "fBodyBodyGyroMag-std()"
"67" "fBodyBodyGyroJerkMag-mean()"
"68" "fBodyBodyGyroJerkMag-std()"
