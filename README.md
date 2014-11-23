getting_and_cleaning_data_project
=================================
Ping Yan
==================================================================
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

main idea of this project:
=============================
create a tidy data set that has independent tidy data set with the average of each variable for each activity and each subject. Activity name is in the activity_labels file. subject name is in the subtrain and subtest table. specific name of feature should be find in the summary dataset, which is the final result of the run analysis.R
