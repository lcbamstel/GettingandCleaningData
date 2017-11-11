Codebook
================

Human Activity Recognition Using Smartphones
============================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

-   tBodyAcc-XYZ
-   tGravityAcc-XYZ
-   tBodyAccJerk-XYZ
-   tBodyGyro-XYZ
-   tBodyGyroJerk-XYZ
-   tBodyAccMag
-   tGravityAccMag
-   tBodyAccJerkMag
-   tBodyGyroMag
-   tBodyGyroJerkMag
-   fBodyAcc-XYZ
-   fBodyAccJerk-XYZ
-   fBodyGyro-XYZ
-   fBodyAccMag
-   fBodyAccJerkMag
-   fBodyGyroMag
-   fBodyGyroJerkMag

Variables
---------

From the set of variables that were estimated from these variables the following were used for the data analysis:

-   mean()
-   std()

Analysis
--------

As per Coursera programming asignment (see README.md), the analysed data is grouped per subject and per activity. Then the mean() function was applied. So the resulting data is a mean value for each variable for a particular subject per activity type.

Table of variables
------------------

| variables                   | class   | range                                                                           |
|:----------------------------|:--------|:--------------------------------------------------------------------------------|
| subject                     | integer | 1 / 30                                                                          |
| activity                    | factor  | LAYING / SITTING / STANDING / WALKING / WALKING\_DOWNSTAIRS / WALKING\_UPSTAIRS |
| tBodyAcc-mean()-X           | numeric | 0.221598 / 0.301461                                                             |
| tBodyAcc-mean()-Y           | numeric | -0.040514 / -0.00130829                                                         |
| tBodyAcc-mean()-Z           | numeric | -0.152514 / -0.0753785                                                          |
| tBodyAcc-std()-X            | numeric | -0.996069 / 0.626917                                                            |
| tBodyAcc-std()-Y            | numeric | -0.990241 / 0.616937                                                            |
| tBodyAcc-std()-Z            | numeric | -0.987659 / 0.609018                                                            |
| tGravityAcc-mean()-X        | numeric | -0.680043 / 0.974509                                                            |
| tGravityAcc-mean()-Y        | numeric | -0.479895 / 0.956594                                                            |
| tGravityAcc-mean()-Z        | numeric | -0.495089 / 0.957873                                                            |
| tGravityAcc-std()-X         | numeric | -0.996764 / -0.829555                                                           |
| tGravityAcc-std()-Y         | numeric | -0.994248 / -0.643578                                                           |
| tGravityAcc-std()-Z         | numeric | -0.990957 / -0.610161                                                           |
| tBodyAccJerk-mean()-X       | numeric | 0.0426881 / 0.130193                                                            |
| tBodyAccJerk-mean()-Y       | numeric | -0.0386872 / 0.0568186                                                          |
| tBodyAccJerk-mean()-Z       | numeric | -0.0674584 / 0.0380534                                                          |
| tBodyAccJerk-std()-X        | numeric | -0.994605 / 0.544273                                                            |
| tBodyAccJerk-std()-Y        | numeric | -0.989514 / 0.355307                                                            |
| tBodyAccJerk-std()-Z        | numeric | -0.993288 / 0.0310157                                                           |
| tBodyGyro-mean()-X          | numeric | -0.205775 / 0.192704                                                            |
| tBodyGyro-mean()-Y          | numeric | -0.204205 / 0.0274708                                                           |
| tBodyGyro-mean()-Z          | numeric | -0.0724546 / 0.179102                                                           |
| tBodyGyro-std()-X           | numeric | -0.994277 / 0.267657                                                            |
| tBodyGyro-std()-Y           | numeric | -0.99421 / 0.476519                                                             |
| tBodyGyro-std()-Z           | numeric | -0.985538 / 0.564876                                                            |
| tBodyGyroJerk-mean()-X      | numeric | -0.157213 / -0.0220916                                                          |
| tBodyGyroJerk-mean()-Y      | numeric | -0.076809 / -0.0132023                                                          |
| tBodyGyroJerk-mean()-Z      | numeric | -0.0924999 / -0.00694066                                                        |
| tBodyGyroJerk-std()-X       | numeric | -0.996543 / 0.179149                                                            |
| tBodyGyroJerk-std()-Y       | numeric | -0.997082 / 0.295946                                                            |
| tBodyGyroJerk-std()-Z       | numeric | -0.995381 / 0.193206                                                            |
| tBodyAccMag-mean()          | numeric | -0.986493 / 0.644604                                                            |
| tBodyAccMag-std()           | numeric | -0.986465 / 0.428406                                                            |
| tGravityAccMag-mean()       | numeric | -0.986493 / 0.644604                                                            |
| tGravityAccMag-std()        | numeric | -0.986465 / 0.428406                                                            |
| tBodyAccJerkMag-mean()      | numeric | -0.992815 / 0.43449                                                             |
| tBodyAccJerkMag-std()       | numeric | -0.994647 / 0.450612                                                            |
| tBodyGyroMag-mean()         | numeric | -0.980741 / 0.418005                                                            |
| tBodyGyroMag-std()          | numeric | -0.981373 / 0.299976                                                            |
| tBodyGyroJerkMag-mean()     | numeric | -0.997323 / 0.0875817                                                           |
| tBodyGyroJerkMag-std()      | numeric | -0.997666 / 0.250173                                                            |
| fBodyAcc-mean()-X           | numeric | -0.99525 / 0.537012                                                             |
| fBodyAcc-mean()-Y           | numeric | -0.989034 / 0.524188                                                            |
| fBodyAcc-mean()-Z           | numeric | -0.989474 / 0.280736                                                            |
| fBodyAcc-std()-X            | numeric | -0.996605 / 0.658507                                                            |
| fBodyAcc-std()-Y            | numeric | -0.99068 / 0.560191                                                             |
| fBodyAcc-std()-Z            | numeric | -0.987225 / 0.687124                                                            |
| fBodyAccJerk-mean()-X       | numeric | -0.994631 / 0.474317                                                            |
| fBodyAccJerk-mean()-Y       | numeric | -0.989399 / 0.276717                                                            |
| fBodyAccJerk-mean()-Z       | numeric | -0.992018 / 0.157776                                                            |
| fBodyAccJerk-std()-X        | numeric | -0.995074 / 0.476804                                                            |
| fBodyAccJerk-std()-Y        | numeric | -0.990468 / 0.349771                                                            |
| fBodyAccJerk-std()-Z        | numeric | -0.993108 / -0.00623648                                                         |
| fBodyGyro-mean()-X          | numeric | -0.993123 / 0.474962                                                            |
| fBodyGyro-mean()-Y          | numeric | -0.994025 / 0.328817                                                            |
| fBodyGyro-mean()-Z          | numeric | -0.985958 / 0.492414                                                            |
| fBodyGyro-std()-X           | numeric | -0.994652 / 0.196613                                                            |
| fBodyGyro-std()-Y           | numeric | -0.994353 / 0.646234                                                            |
| fBodyGyro-std()-Z           | numeric | -0.986725 / 0.522454                                                            |
| fBodyAccMag-mean()          | numeric | -0.986801 / 0.586638                                                            |
| fBodyAccMag-std()           | numeric | -0.987648 / 0.178685                                                            |
| fBodyBodyAccJerkMag-mean()  | numeric | -0.993998 / 0.538405                                                            |
| fBodyBodyAccJerkMag-std()   | numeric | -0.994367 / 0.316346                                                            |
| fBodyBodyGyroMag-mean()     | numeric | -0.986535 / 0.20398                                                             |
| fBodyBodyGyroMag-std()      | numeric | -0.981469 / 0.23666                                                             |
| fBodyBodyGyroJerkMag-mean() | numeric | -0.997617 / 0.146619                                                            |
| fBodyBodyGyroJerkMag-std()  | numeric | -0.997585 / 0.287835                                                            |

References
----------

1.  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human             Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector               Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,             Spain. Dec 2012

2.  [https://github.com/uludagy/GettingandCleaningData/blob/master/codeBook.md](https://github.com        /uludagy/GettingandCleaningData/blob/master/codeBook.md)

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
