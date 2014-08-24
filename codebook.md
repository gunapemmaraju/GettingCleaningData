GettingCleaningData - Coursera
===================

# Codebook for Course Project

## About the project
This Project works on the "Human Activity Recognition Using Smartphones Data Set" <br>
Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Project Goal

The goal of the project is to create a script named, run_analysis.R, which does the below steps.

1: Merges the training and the test sets to create one data set.

2: Extracts only the measurements on the mean and standard deviation for each measurement. 

3: Uses descriptive activity names to name the activities in the data set

4: Appropriately labels the data set with descriptive variable names. 

5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This list of steps, feature details, and more details about the project can be found at : https://class.coursera.org/getdata-006 under the Project section.

## Features Introduction
To introduce the features, the relevant information from the features_info.txt at the above mentioned course project website is pasted below.

<i>
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
</i>
<i>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
</i>
<i>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
</i>

<i>
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
</i>

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

<i>The set of variables that were estimated from these signals are: 

<i>`mean()`: Mean value

<i>`std()`: Standard deviation

</i>



## Design approach,  and brief details of the steps followed
The main approach has been to see if manual looping can be avoided in favor of, apply functions and subsetting.
Further I have avoided using the plyr package. Mainly because I wanted to use this exercise to understand the "apply" functions well.

The code proceeds along the steps mentioned in the Project Introduction section. 
The comments in the code mark the beginning of each of the steps. 

Brief details of the work done in each of the steps, are mentioned below.

###Step1
In this step, 

a) The X Values of test and train are combined

b) The Y Values of test and train are combined

c) the Subject lists of tests and train are combined. And It is given a column name of Subject.
Note that at these point, X,Y and Subject data are kept separate. To aid in analysis later

###Step2
In this Step

a) the features.txt file is loaded. And then the required variables names (and their corresponding index numbers) are extracted. 

b) Here the assumption made is that only the variables which are computed mean and computed std are required.

c) These are identified by looking for the strings mean() or std() in the variable names

d) Note that because of the assumption made in (b), variables like "fBodyAcc-meanFreq()-X" are excluded. Because it is assumed that 
these are not computed means.

e) Also note that additional vectors obtained by averaging the signals in a signal window sample are not considered. Mainly because 
it didn't look like they were estimated means. 

f) If any of these assumptions are invalid. The code can easily be modified to accomodate the same. 

### Step3
In this Step

a) The activity labels data is loaded

b) The Y data is merged with the activity labels data to get the activity labels data, and then the activity ids are dropped

c) Finally appropriate column name is given to the activity labels

###Step4
In this Step

a) The Column names of X are changed to be the variable names.

b) The extracted features lables in Step2 are used for this.

###Step5
In this Step

a) The Subject, Y and X data are cbind'ed

b) The values data frame is split using the split function, into groups that belong to an activity, subject combination

c) sapply is used to compute the required column means for each of the groups, and combining them into one single data grid.

d) The RowNames are modified to reflect that they are an AVERAGE.

e) This data is transposed (to meet the tidy data requirement that each row should be for a particular observation, and each column should be
a variable.

f) The Subject and activity names are extracted for each group, and these are made the first two columns.

g) The resulting dataframe is written into a tidy.txt output file.

###Conclusions
1. The tidy dataset has been created as required.
2. Certain assumptions have been made about the requirements, but none of them are too rigid. And code can easily be changed to accomodate
and differences
3. All the steps have been documented in this readme file, also the code contains brief comments
4. The codebook is in a file named, codebook.md. And this can be used to quickly understand what the variables are about. 




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

**For each of the below 66 `numeric` variables. The column is the `Average` of the appropriate variables mentioned in the feature introduction section.
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

