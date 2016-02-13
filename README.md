# Getting and Cleaning Data Course Project

This repository contains the following files.

| File Name | Description |
| --------- | ----------- |
| README.md | This file. |
| CodeBook.md | It contains the description of the variables, the data and the transformations done to generate a clean and tidy dataset. |
| run_analysis.R | This file contains the code for downloading the dataset and generating a tidy dataset from it. |
| tidydata.txt | The tidy dataset is present in this file. |

## Overview

This project involves working with data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the data is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The project does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For more information, refer CodeBook.md.
