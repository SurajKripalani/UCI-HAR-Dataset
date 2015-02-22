# UCI-HAR-Dataset
The run_analysis function reads data collected from the accelerometers from the 
Samsung Galaxy S smartphone training and test data sets to 1) create 
one merged data set, 2) extracts only measurements on mean and 
standard deviation for each measurement, 3) uses descriptive activity 
names to name activities in the data set and 4) appropriately labels 
the data with descriptive variable names. 5) Finally, it uses the data 
set from step 4 to create a second, independent tidy data set with the 
average of each variable for each activity and each subject. The
function creates a file "output.txt" with this data set in the current
directory and returns the data set.
The function requires all data files used to be downloaded from the 
link below and to be run in the "UCI HAR Dataset" directory which 
contains the data files.
Data set link: 
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20
HAR%20Dataset.zip"
A full description of the project is available at the site where the 
data was obtained:
"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Usi
ng+Smartphones" 
