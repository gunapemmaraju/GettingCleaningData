# GettingCleaningData - Coursera 
## Course Project
___________________

### Project Introduction 
This Project works on the "Human Activity Recognition Using Smartphones Data Set" 
which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The goal of the project is to create a script named, run_analysis.R, which does the below steps.

1: Merges the training and the test sets to create one data set.
2: Extracts only the measurements on the mean and standard deviation for each measurement. 
3: Uses descriptive activity names to name the activities in the data set
4: Appropriately labels the data set with descriptive variable names. 
5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This list of steps and, more details about the project can be found at : https://class.coursera.org/getdata-006 under the Project section.

### Pre-requisites
a) This script and the "UCI HAR Dataset" directory should be in the same parent directory (say DIR)
b) The parent directory (DIR) should be set as the working director. 
If any of these assumptions are invalid. The code can easily be modified to accomodate the same. 

### Design approach and details of steps
The main approach has been to see if manual looping can be avoided in favor of, apply functions and subsetting.
Further I have avoided using the plyr package. Mainly because I wanted to use this exercise to understand the "apply" functions well.

The code proceeds along the steps mentioned in the Project Introduction section. 
The comments in the code mark the beginning of each of the steps. 

Brief details of the work done in each of the steps, are mentioned below.

###Step1:
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
e) If any of these assumptions are invalid. The code can easily be modified to accomodate the same. 

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


