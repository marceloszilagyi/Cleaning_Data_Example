Contents
======

Theres are 3 files in this submission

1. Codebook.md - describes the variables contained in the tidy.data dataframe. 

2. tidydata.R - a script that downloads the files from the internet and process all the tasks to deliver the tidy.data and creates a small tidy.data csv file. All the processing will be done on a new subdirectory called "FUCI100". 

3. run_analysis.R  - script that only process all the tasks to deliver the tidy.data and creates a small tidy.data csv file. This script is better in the case the files are already downloaded from the site. The script and working directory need to be set to "~/UCI HAR Dataset". Output in CSV for better reading. 

There is **no** need to process both scripts. 

These scripts leverage lappy to read files in batch: train.files, function(x) {read.csv(file=x, sep="",header=FALSE)} and the aggregate function to calcuate the mean and standard deviation by activity and subject: aggregate(. ~ subject.id + `activities_(y)`, feature.selection, function(x) mean = mean(x))

