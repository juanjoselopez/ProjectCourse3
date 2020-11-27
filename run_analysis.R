## R version 3.6.1 (2019-07-05)
## Final Project Course 3 - Data Science Specialization
## By Juan Jose E. Lopez

library(dplyr)

##  Getting Data

#  Kind of Features
feature <- read.table("./UCI HAR Dataset/features.txt",header = F)
#str(feature)
names(feature) <- c("idFeature", "featureName")
feature[,1] <- as.factor(feature[,1])
feature[,2] <- as.character(feature[,2])
#Activity Names
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = F)
#str(activityLabels)
names(activityLabels) <- c("idActivity", "activityName")
activityLabels[,1] <- as.factor(activityLabels[,1])

#  Training Data
subTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=F)
subTrain[,1] <- as.factor(subTrain[,1])
names(subTrain) <- "idSujeto"
#str(subTrain)
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header=F)
#str(xTrain)
names(xTrain) <- as.vector(feature[,2])
yTrain  <- read.table("./UCI HAR Dataset/train/y_train.txt", header=F)
#str(yTrain)
yTrain[,1] <- as.factor(yTrain[,1])
names(yTrain) <- "idActivity"

#  Test Data
subTest <- read.table("./UCI HAR Dataset/test/subject_test.txt",header = F)
subTest[,1] <- as.factor(subTest[,1])
#str(subTest)
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt",header = F)
#str(xTest)
names(xTest) <- as.vector(feature[,2])
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt",header = F)
#str(yTest)
yTest[,1] <- as.factor(yTest[,1])
names(yTest) <- "idActivity"

##  Merging Datasets and Names

#  Labels
yTrainm <- inner_join(yTrain,activityLabels)
yTestm <- inner_join(yTest,activityLabels)
yMerged <- rbind(yTrainm,yTestm)
xMerged <- rbind(xTrain,xTest)
#xMean <- grepl("[Mm]ean",names(xMerged))
#table(xMean)
#xStd <- grepl("[Ms]td",names(xMerged))
#table(xStd)
xMean <- grep("[Mm]ean",names(xMerged))
xStd <- grep("[Ss]td",names(xMerged))
xIndex <- vctrs::vec_c(xMean,xStd)
#names(xMerged[,xIndex])
xMerged <- xMerged[,xIndex]
names(xMerged)  <- tolower(names(xMerged))
names(xMerged) <- gsub("-","",names(xMerged))
names(xMerged) <- gsub("\\()","",names(xMerged))
names(xMerged) <- gsub("[Mm]ean","MEAN",names(xMerged))
names(xMerged) <- gsub("[Ss]td","STD",names(xMerged))
names(xMerged)
dataMerged <- cbind(yMerged,xMerged)
head(dataMerged)

##  Exporting First Task

write.table(dataMerged, file = "tidy.txt",row.names=FALSE)
write.csv(dataMerged, file = "tidy.csv",row.names=FALSE)