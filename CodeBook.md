---
Descriptions of variables:
1. features: Table to store the names of the 561 data parameters read from the "features.txt" file.
2. colnames(features): Set to ("Index", "ColName")
3. X_train: Table to store the training data set from the "./train/X_train.txt"
file.
4. colnames(X_train): Set to the names saved in the features table 
(i.e. features$ColName)
5. y_train: Table to store the activity/training labels for the training data 
set from "./train/y_train.txt"
6. colnames(y_train): Set to ("training_labels")
7. subject_train: Table to store the subjects from the 
"./train/subject_train.txt" file
8. colnames(subject_train): Set to "subject"
9. train_data: Table to store the merged data sets of subject_train, y_train and X_train
10. X_test: Table to store the test data set from the "./test/X_test.txt" file
11. colnames(X_test): Set to the names saved in the features table
(i.e. features$ColName)
12. y_test: Table to store the activity/training labels for the training data 
set from "./train/y_train.txt"
13. colnames(y_test): Set to "training_labels"
14. subject_test: Table to store the subjects from the 
"./test/subject_test.txt" file
15. colnames(subject_test): Set to "subject"
16. test_data: Table to store the merged data sets of subject_test, y_test and X_test        
17. merged_data: Table to store the merged data sets of train_data and test_data 
18. cols_mean: Vector used to store the column names that include "mean()" 
19. cols_std: Vector used to store the column names that include "std()" 
20. cols_filter: Vector used to store the list of column numbers to  filter merged_data. i.e. (1, 2, cols_mean and cols_filter)
21. merged_data: Updated to include only the cols_filter columns 
22. output_avg: Table used to store the means of each column in merged data
grouped by subject and training_labels
23. "output.txt":  Output file written as a table from output_avg
---
