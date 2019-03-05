Contents
======

Theres are 3 files in this submission

1. Codebook.md - describes the variables contained in the tidy.data dataframe. 

2. tidydata.R - a script that downloads the files from the internet and process all the tasks to deliver the tidy.data and creates a small tidy.data csv file. All the processing will be done on a new subdirectory called "FUCI100". 

3. run_analysis.R  - script that only process all the tasks to deliver the tidy.data and creates a small tidy.data csv file. This script is better in the case the files are already downloaded from the site. The script and working directory need to be set to "~/UCI HAR Dataset". Output in CSV for better reading. 

There is **no** need to process both scripts. 

These scripts leverage lappy to read files in batch: 

Codebook
========

The file "tidy.data.csv" contains 81 variables: all variables are **means** of the by activity and the subject.   For example, the result of "tBodyAcc-mean()-X" is a "mean of means" for each subject/activity. Likewise, the "tBodyAcc-std()-X" values are means of standard deviations for the subject "i"" performing activity "j".  

Description of the variables
---------------------------

There are 30 subjects and 6 possible activities: walking, walking upstairs, walking downstairs, sitting, laying. Thus the *tidy.data* dataset contains 30x6 = 180 observations/cases.   

The tidy.data set has 81 coluns/variables. 2 variables identify the subject and the activitity performed.  
1.  subject.id"  - 30 subjects, identified from the value 1 to value 30  (interger variable)  
2.  activities_(y) - 6 activities: walking, walking upstairs, walking downstairs, sitting, laying (factor variable)

There are 46 variables that are means of means and 33 variables that are standard deviations of means.

Variables are named based on the following logic:

1. Denote type of variable: based on  time "t", or a fast Fourier transform, "f" (e.g.: **t**GravityAcc-mean()-X , **f**BodyBodyAccJerkMag-mean())  

2. Identify the type of effect Body or Gravity effect. (e.g.:t**Body**Acc-mean()-X, t**Gravity**Acc-std()-Z)  

3. Assign the sensor signals: accelerometer -  Acc or  gyroscope - Gyro (e.g.:tBody**Gyro**-mean()-X, fBody**Acc**Jerk-meanFreq()-X )  

4. In some variables, the acceleration rate (Jerk), magnitude (Mag) and the combined result - the acceleration magnitude (JerkMag), e.g.: fBodyAcc**Jerk**-mean()-X, fBodyAcc**Mag**-mean(), tBodyGyro**JerkMag**-mean()  

5. The calculation performed on the variable (mean -  mean(), standard deviation - std() or weighted average of the frequency components to obtain a mean frequency, meanFreq() ), e.g.: tGravityAcc-**mean()**-Z, tBodyAccJerkMag-**std()**  

6. Finally, when possible, the direction (X, Y, Z) of the variable, e.g.: tGravityAcc-std()-**X**, fBodyGyro-std()-**Y**, fBodyAcc-std()-**Z**  

All variables are are normalized and constrained within the range [-1,1]. 
