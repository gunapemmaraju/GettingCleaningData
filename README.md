# GettingCleaningData - Coursera 
## Course Project
===================

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

###Sep1:
In this step, 
a) The X Values of test and train are combined
b) The Y Values of test and train are combined
c) the Subject lists of tests and train are combined. And It is given a column name of Subject.
Note that at these point, X,Y and Subject lista re kept separate. To aid in analysis later

###Step2

