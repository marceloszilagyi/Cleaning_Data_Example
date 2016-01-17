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

Variable list
-------------

1.  subject.id"  
2.  activities_(y)   
3.  tBodyAcc-mean()-X"  
4.  tBodyAcc-mean()-Y"  
5.  tBodyAcc-mean()-Z"  
6.  tGravityAcc-mean()-X"  
7.  tGravityAcc-mean()-Y"  
8.  tGravityAcc-mean()-Z"  
9.  tBodyAccJerk-mean()-X"  
10. tBodyAccJerk-mean()-Y"  
11. tBodyAccJerk-mean()-Z"  
12. tBodyGyro-mean()-X"  
13. tBodyGyro-mean()-Y"  
14. tBodyGyro-mean()-Z"  
15. tBodyGyroJerk-mean()-X"  
16. tBodyGyroJerk-mean()-Y"  
17. tBodyGyroJerk-mean()-Z"  
18. tBodyAccMag-mean()"  
19. tGravityAccMag-mean()"  
20. tBodyAccJerkMag-mean()"  
21. tBodyGyroMag-mean()"  
22. tBodyGyroJerkMag-mean()"  
23. fBodyAcc-mean()-X"  
24. fBodyAcc-mean()-Y"  
25. fBodyAcc-mean()-Z"  
26. fBodyAcc-meanFreq()-X"  
27. fBodyAcc-meanFreq()-Y"  
28. fBodyAcc-meanFreq()-Z"  
29. fBodyAccJerk-mean()-X"  
30. fBodyAccJerk-mean()-Y"  
31. fBodyAccJerk-mean()-Z"  
32. fBodyAccJerk-meanFreq()-X"  
33. fBodyAccJerk-meanFreq()-Y"  
34. fBodyAccJerk-meanFreq()-Z"  
35. fBodyGyro-mean()-X"  
36. fBodyGyro-mean()-Y"  
37. fBodyGyro-mean()-Z"  
38. fBodyGyro-meanFreq()-X"  
39. fBodyGyro-meanFreq()-Y"  
40. fBodyGyro-meanFreq()-Z"  
41. fBodyAccMag-mean()"  
42. fBodyAccMag-meanFreq()"  
43. fBodyBodyAccJerkMag-mean()"  
44. fBodyBodyAccJerkMag-meanFreq(  
45. fBodyBodyGyroMag-mean()"  
46. fBodyBodyGyroMag-meanFreq()"  
47. fBodyBodyGyroJerkMag-mean()"  
48. fBodyBodyGyroJerkMag-meanFreq  
49. tBodyAcc-std()-X"  
50. tBodyAcc-std()-Y"  
51. tBodyAcc-std()-Z"  
52. tGravityAcc-std()-X"  
53. tGravityAcc-std()-Y"  
54. tGravityAcc-std()-Z"  
55. tBodyAccJerk-std()-X"  
56. tBodyAccJerk-std()-Y"  
57. tBodyAccJerk-std()-Z"  
58. tBodyGyro-std()-X"  
59. tBodyGyro-std()-Y"  
60. tBodyGyro-std()-Z"  
61. tBodyGyroJerk-std()-X"  
62. tBodyGyroJerk-std()-Y"  
63. tBodyGyroJerk-std()-Z"  
64. tBodyAccMag-std()"  
65. tGravityAccMag-std()"  
66. tBodyAccJerkMag-std()"  
67. tBodyGyroMag-std()"  
68. tBodyGyroJerkMag-std()"  
69. fBodyAcc-std()-X"  
70. fBodyAcc-std()-Y"  
71. fBodyAcc-std()-Z"  
72. fBodyAccJerk-std()-X"  
73. fBodyAccJerk-std()-Y"  
74. fBodyAccJerk-std()-Z"  
75. fBodyGyro-std()-X"  
76. fBodyGyro-std()-Y"  
77. fBodyGyro-std()-Z"  
78. fBodyAccMag-std()"  
79. fBodyBodyAccJerkMag-std()"  
80. fBodyBodyGyroMag-std()"  
81. fBodyBodyGyroJerkMag-std()"  

