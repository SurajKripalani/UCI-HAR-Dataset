run_analysis <- function() {
        # This function reads data collected from the accelerometers from the 
        # Samsung Galaxy S smartphone training and test data sets to 1) create 
        # one merged data set, 2) extracts only measurements on mean and 
        # standard deviation for each measurement, 3) uses descriptive activity 
        # names to name activities in the data set and 4) appropriately labels 
        # the data with descriptive variable names. 5) Finally, it uses the data 
        # set from step 4 to create a second, independent tidy data set with the 
        # average of each variable for each activity and each subject. The
        # function creates a file "output.txt" with this data set in the current
        # directory and returns the data set.
        # The function requires all data files used to be downloaded from the 
        # link below and to be run in the "UCI HAR Dataset" directory which 
        # contains the data files.
        # Data set link: 
        # "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20
        # HAR%20Dataset.zip"
        # A full description of the project is available at the site where the 
        # data was obtained:
        # "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Usi
        # ng+Smartphones" 
        
        # Check to see if the features.txt file is available in the current
        # directory to see if the data set has been downloaded and stop the
        # function if the file doesn't exist
        if (!file.exists("features.txt")) {
                stop ("invalid current directory: files not found")
        }
        
        # Creating data tables for the training data set and appropriately
        # naming columns
        features <- read.table("features.txt")
        colnames(features) <- c("Index", "ColName")
        X_train <- read.table("./train/X_train.txt")
        colnames(X_train) <- features$ColName
        y_train <- read.table("./train/y_train.txt")
        colnames(y_train) <- ("training_labels")
        subject_train <- read.table("./train/subject_train.txt")
        colnames(subject_train) <- "subject"
        
        # Merging the training data sets into a single data set
        train_data <- cbind(subject_train, y_train, X_train)

        # Creating data tables for the test data set and appropriately
        # naming columns
        X_test <- read.table("./test/X_test.txt")
        colnames(X_test) <- features$ColName
        y_test <- read.table("./test/y_test.txt")
        colnames(y_test) <- ("training_labels")
        subject_test <- read.table("./test/subject_test.txt")
        colnames(subject_test) <- "subject"
        
        # Merging the test data sets into a single data set
        test_data <- cbind(subject_test, y_test, X_test)
        
        # Merging the training and test data sets into a single data set
        merged_data <- rbind(train_data,test_data)
        
        # Extracting only the measurements on the mean and standard deviation 
        # for each measurement
        cols_mean <- grep ("mean()", colnames(merged_data))
        cols_std <- grep ("std()", colnames(merged_data))
        cols_filter <- sort(c(1,2,cols_mean,cols_std))
        merged_data <- merged_data[,cols_filter]
        
        # Creating an independent tidy data set with the average of each 
        # variable for each activity and each subject 
        output_avg <- merged_data %>% group_by(subject, training_labels) %>% 
                summarise_each(funs(mean))
        
        # Writing the output data to a txt file
        write.table(output_avg, file="output.txt",row.names=FALSE)
        
        # Returning the output data set
        return (output_avg)
        
}