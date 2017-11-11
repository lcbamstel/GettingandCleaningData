Readme
================

Introduction
------------

This readme file contains information on all files and their purpose in this project. This project was created for the Coursera "Getting and Cleaning Data Course Project"

Objective
---------

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:

1.  a tidy data set as described below,
2.  a link to a Github repository with your script for performing the analysis, and
3.  a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

You should create one R script called run\_analysis.R that does the following.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Files in this project
---------------------

-   run\_analysis.R
-   codebook.md
-   readme.md

### run\_analysis.R

This is the main script in this project. The script will download the .zip archive if necessary from the link above. The training and test sets are merged. It will then combine all data files to create a tidy dataset, with descriptive column names and activity names. Finally the data is grouped by subject and activity and summarized using mean (as per step 5), using the following code:

``` r
xTotal %>% group_by(subject,activity) %>% summarise_all(mean)
```

### Codebook.md

The codebook contains information about all variables, their class and range. It was created using Rmarkdown in Rstudio. The following function was used to create the dataset for the table containing all variables:

``` r
codebook <- function(dataset){
    data.frame(row.names = NULL,
               variables = names(dataset),
               class = sapply(dataset, class),
               range = sapply(dataset, function(x)
                   if(class(x) == "factor")
                       paste(levels(x), collapse = " / ")
                   else
                       paste(signif(min(x), digits = 6), signif(max(x), digits = 6), sep=" / "))
    )
}
```

### README.md

This file explains how all of the scripts work and how they are connected.

Reading the data
----------------

Use the following R code to read the analysed\_data.txt file created by the run\_analysis.R script:

``` r
read.table("analysed_data.txt", fileEncoding = "UTF-8", check.names = FALSE)
```

References
----------

1.  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human             Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector               Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,             Spain. Dec 2012

2.  [https://github.com/uludagy/GettingandCleaningData/blob/master/codeBook.md](https://github.com        /uludagy/GettingandCleaningData/blob/master/codeBook.md)

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
