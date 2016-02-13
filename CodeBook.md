## Description

This file contains the description of the dataset, variables used , and the tranformations done to generate the required tidy data set.

### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
2. Triaxial Angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables.
4. Its activity label. 
5. An identifier of the subject who carried out the experiment.

#### Downloading Data

The data is downloaded from this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and loaded in R Studio.

#### Merging the training and test dataset
The train data is formed by cbinding train_x, train_y and subject_train. Similarly, the test data is formed. The two are merged and stored in mergedata using rbind.

#### Extracting mean and SD 
features_select contains the features only related to mean and standard deviation of each measurement which is then used to subset the appropriate columns and create the subdata data set.

#### Descriptive activity names
labels are read from labels.txt and then used to appropriately label the activity column of the dataset.

#### Data with average value
Using the reshape2 package, subadata is melted and the tidy data set is so formed that it contains the average value of each variable for each activity and subject which is in turn written in tidydata.txt.
