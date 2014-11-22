getting_and_cleaning_data_project
=================================
Ping Yan
==================================================================

raw dataset is provided, if you have run the code in the code book successfully, you should be able to have the following table:

x - the merging data set of x train and x test with the dim of 10299 * 561
y - the merge data set of y train and y test with the dim of 10299 * 1
subject - the merge data set of subtrain and subtest with the dim of 10299 * 1
q - the list table contain all the list in x that have mean() and std()
xnew - subset table of x that only has mean and std measurement
xnew2 - pre-final table have subject, activity label with dim of 10299 * 81
summary - final table with the average of each variable for each activity and each subject.


Notes:
==========================================

- the directory in the code book should be changed to fit its real directory in your computer.Otherwise, data can not be accessed. 
- the raw dataset could be download by https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The raw dataset includes the following files that is used in the project:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
