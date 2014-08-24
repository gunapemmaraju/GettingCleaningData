GettingCleaningData:
===================

# Codebook for the output file, tidy.txt

## About the project
This Project works on the "Human Activity Recognition Using Smartphones Data Set" 
Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This feature list, and more details about the project can be found at : https://class.coursera.org/getdata-006 under the Project section.

## Features Introduction
To introduce the features, I am pasting the relevant information from the features_info.txt at the above mentioned course project website.

*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation*

## Variable details
The data has 35 rows. Each consisting of the below 68 columns

1 Subject
This is the ID of the Subject. A number between 1 and 30.

2 Activity
The Activity done by the subject, for which the averages are being computed
These one of
-WALKING
-WALKING_UPSTAIRS
-WALKING_DOWNSTAIRS
-SITTING
-STANDING
-LAYING

**For each of the below 66 variables. The column is the `Average` of the appropriate variables mentioned in the feature introduction section.
It is assumed that the variable is not needed to be expanded again. However, if this assumption is invalid, the variable name can again be 
re-mentioned below**
 
3 AvgtBodyAcc.mean...X
4 AvgtBodyAcc.mean...Y
5 AvgtBodyAcc.mean...Z
6 AvgtBodyAcc.std...X
7 AvgtBodyAcc.std...Y
8 AvgtBodyAcc.std...Z
9 AvgtGravityAcc.mean...X
10 AvgtGravityAcc.mean...Y
11 AvgtGravityAcc.mean...Z
12 AvgtGravityAcc.std...X
13 AvgtGravityAcc.std...Y
14 AvgtGravityAcc.std...Z
15 AvgtBodyAccJerk.mean...X
16 AvgtBodyAccJerk.mean...Y
17 AvgtBodyAccJerk.mean...Z
18 AvgtBodyAccJerk.std...X
19 AvgtBodyAccJerk.std...Y
20 AvgtBodyAccJerk.std...Z
21 AvgtBodyGyro.mean...X
22 AvgtBodyGyro.mean...Y
23 AvgtBodyGyro.mean...Z
24 AvgtBodyGyro.std...X
25 AvgtBodyGyro.std...Y
26 AvgtBodyGyro.std...Z
27 AvgtBodyGyroJerk.mean...X
28 AvgtBodyGyroJerk.mean...Y
29 AvgtBodyGyroJerk.mean...Z
30 AvgtBodyGyroJerk.std...X
31 AvgtBodyGyroJerk.std...Y
32 AvgtBodyGyroJerk.std...Z
33 AvgtBodyAccMag.mean..
34 AvgtBodyAccMag.std..
35 AvgtGravityAccMag.mean..
36 AvgtGravityAccMag.std..
37 AvgtBodyAccJerkMag.mean..
38 AvgtBodyAccJerkMag.std..
39 AvgtBodyGyroMag.mean..
40 AvgtBodyGyroMag.std..
41 AvgtBodyGyroJerkMag.mean..
42 AvgtBodyGyroJerkMag.std..
43 AvgfBodyAcc.mean...X
44 AvgfBodyAcc.mean...Y
45 AvgfBodyAcc.mean...Z
46 AvgfBodyAcc.std...X
47 AvgfBodyAcc.std...Y
48 AvgfBodyAcc.std...Z
49 AvgfBodyAccJerk.mean...X
50 AvgfBodyAccJerk.mean...Y
51 AvgfBodyAccJerk.mean...Z
52 AvgfBodyAccJerk.std...X
53 AvgfBodyAccJerk.std...Y
54 AvgfBodyAccJerk.std...Z
55 AvgfBodyGyro.mean...X
56 AvgfBodyGyro.mean...Y
57 AvgfBodyGyro.mean...Z
58 AvgfBodyGyro.std...X
59 AvgfBodyGyro.std...Y
60 AvgfBodyGyro.std...Z
61 AvgfBodyAccMag.mean..
62 AvgfBodyAccMag.std..
63 AvgfBodyBodyAccJerkMag.mean..
64 AvgfBodyBodyAccJerkMag.std..
65 AvgfBodyBodyGyroMag.mean..
66 AvgfBodyBodyGyroMag.std..
67 AvgfBodyBodyGyroJerkMag.mean..
68 AvgfBodyBodyGyroJerkMag.std..



