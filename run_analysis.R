## Only data processing. 

# Step 2- read the files, join similar files
##########################################################  

# read the test and train directory includidng subdirectories; saved the list for future use as variable
train.files <- list.files("./train", full.names=TRUE,recursive = TRUE)
short.name.train<-list.files("./train",recursive = TRUE)
test.files <- list.files("./test",full.names=TRUE,recursive = TRUE )
short.name.test<-list.files("./test",recursive = TRUE )

# read the feature list (names of the variables)
features<-read.csv(file = "features.txt",sep = " ",header = FALSE)

# read the activity label list
activity_labels <- read.table(file="activity_labels.txt", quote="\"", comment.char="")

# reads all the files on the training directory and create a list with the contents
train.list<-lapply(train.files, function(x) {read.csv(file=x, sep="",header=FALSE)})
# creates short names 
names(train.list)<-short.name.train
better.names.train<-substr(short.name.train,regexpr("s/",short.name.train)+2,regexpr("_train",short.name.train)-1)


# reads all the files on the testing directory and create a list with the contents 
test.list<-lapply(test.files, function(x) {read.csv(file=x, sep="",header=FALSE)})
# creates short names 
names(test.list)<-short.name.test
better.names.test<-substr(short.name.test,regexpr("s/",short.name.test)+2,regexpr("_test",short.name.test)-1)

# just in case, remove same names variables, 
rm(list = (ls(pattern = "data")))

# compare the lists based on the names of the files; if the lists are equal, join and create data.frames 
if (setequal(better.names.test,better.names.train)) {
  # join all similar data from the test and training lists and give a name for the objects  
  for (i in 1:length(test.list)) {assign(paste0("data ",better.names.test[i]) , rbind(test.list[[i]],train.list[[i]]))}}
##  COMMENT: the step above completes the 1st required task on the assignment 
##           (1. Merges the training and the test sets to create one data set.)

# Step 3 -  process data
####################################################

# add names to the data X data.frame
colnames(`data X`) <- features[,2]

#add names to the subject data.frame
colnames(`data subject`)<-"subject.id"
##  COMMENT: the step above completes the 4th required task on the assignment 
##          (4. Appropriately labels the data set with descriptive variable names)

# select only mean and std
names.features<-names(`data X`)
mean <- names.features[(grep("mean",names.features[]))]
std <- names.features[(grep("std",names.features[]))]
list.features <- c(mean,std)
sub.selectionx<- `data X`[,list.features]
##  COMMENT: the step above completes the 2nd required task on the assignment 
##          (2. Extracts only the measurements on the mean and standard deviation for each measurement.)

#add names and factors to the y data.frame 
`data y`$V1 <-as.factor(`data y`$V1)
match<-match(levels(`data y`$V1),activity_labels[,1])
future.factors<-as.character(activity_labels[match,2])
levels(`data y`$V1) <- future.factors
colnames(`data y`)<-"activities_(y)"
##  COMMENT: the step above completes the 3rd required task on the assignment 
##          (3. Uses descriptive activity names to name the activities in the data set)

# join subject, y and x features into a new dataframe; calculate the means by using the aggregate function.
feature.selection <-cbind(`data subject`,`data y`,`sub.selectionx`)
tidy.data<-(aggregate(. ~ subject.id + `activities_(y)`, feature.selection, function(x) mean = mean(x)))

## COMMENT: the step above completes the 5th required task on the assingment: From the data set in step 4, creates a second, 
##          (5. independent tidy data set with the average of each variable for each activity and each subject.)

## cross check of the aggreagation can be made with: mean((subset(feature.selection, subject.id==3 & `activities_(y)`=="WALKING"))[,3])
#

# final step - create output as a cvs file for future processing
write.csv(tidy.data, file = paste0("tidy.data",".csv"))
write.table(file = paste0("tidy.data",".txt"),tidy.data,row.names = FALSE)
